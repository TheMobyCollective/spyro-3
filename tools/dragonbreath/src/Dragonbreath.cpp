#define _CRT_SECURE_NO_WARNINGS
#include "../include/argparse/argparse.hpp"
#include <iostream>
#include <fstream>
#include "../include/wad.h"
#include "../include/crc.h"

enum CheckType {
	LEVEL,
	SECONDARY,
	LOADING,
	TITLE
};

/********************************************
*                   Other                   *
********************************************/

bool fileExists(const char* fileName) {
	std::ifstream infile(fileName);
	return infile.good();
}

/********************************************
*              Args and addrs               *
********************************************/

typedef struct {
	int quietMode; // 1 is quiet, 2 is silent (unused right now)
	bool decrypt;
	bool encrypt;
	bool fixSums;
	bool restoreChecks;
	bool breakSums;
	bool overwrite;
	bool overwriteExe;
	CheckType checkType;
} ArgFlags;
ArgFlags argFlags;

typedef struct {
	unsigned int exeTextStart; // or start of exe function scan
	unsigned int exeTextEnd; // or end of exe function scan
	unsigned int ovlStart;
	unsigned int ovlTextStart;
	unsigned int ovlTextEnd;
	unsigned int ovlKey;
	unsigned int exeChkAddr;
	unsigned int chkAddr;
	unsigned int level;
} Addrs;
Addrs addrs;

/********************************************
*                   Fixes                   *
********************************************/

void fixStandardCheck(char* exeBuffer, char* ovlBuffer, int scanOffset) {
	char* exeText = exeBuffer + (addrs.exeTextStart - 0x8000F800);
	int exeTextLen = addrs.exeTextEnd - addrs.exeTextStart;
	char * ovlText = ovlBuffer + (addrs.ovlTextStart - addrs.ovlStart);
	int ovlTextLen = addrs.ovlTextEnd - addrs.ovlTextStart;
	int ovlChkOffset = addrs.chkAddr - addrs.ovlTextStart;
	
	int exeCrc = crc16_table(exeText + scanOffset, exeTextLen - scanOffset, 0, 0, 3);
 	fix_crc_pos_fast(ovlText, ovlTextLen, ovlChkOffset, exeCrc);
}

void fixLevelCheck(char* exeBuffer, char* ovlBuffer) {
	fixStandardCheck(exeBuffer, ovlBuffer, 2 + addrs.level);
}

void fixLoadingCheck(char* exeBuffer, char* ovlBuffer) {
	fixStandardCheck(exeBuffer, ovlBuffer, 1);
}

void fixTitleCheck(char* exeBuffer, char* ovlBuffer) {
	char* exeText = exeBuffer + (addrs.exeTextStart - 0x8000F800);
	int exeTextLen = addrs.exeTextEnd - addrs.exeTextStart;
	int exeChkOffset = addrs.exeChkAddr - addrs.exeTextStart;
	char * ovlText = ovlBuffer + (addrs.ovlTextStart - addrs.ovlStart);
	int ovlTextLen = addrs.ovlTextEnd - addrs.ovlTextStart;
	int ovlChkOffset = addrs.chkAddr - addrs.ovlTextStart;
	
 	fix_crc_pos_fast(ovlText, ovlTextLen, ovlChkOffset, 0);
	int ovlCrc = crc16_table(ovlText, ovlTextLen, 0, 0, 3);
 	fix_crc_pos_fast(exeText, exeTextLen, exeChkOffset, ovlCrc);
}

void fixSecondaryCheck(char* exeBuffer, char* ovlBuffer) {
	// text start and end are just for the function in question this time!
	char* exeText = exeBuffer + (addrs.exeTextStart - 0x8000F800);
	int exeTextLen = addrs.exeTextEnd - addrs.exeTextStart;
	int* ovlChk = (int*)(ovlBuffer + (addrs.chkAddr - addrs.ovlStart));

	int funcCrc = crc16_table(exeText, exeTextLen, 0, 0, 0);
	*ovlChk = ((funcCrc & 0xFFFF) << 4) | (addrs.ovlStart & 0xFFF0000F);
}

unsigned int GetChecksumAddress(char* ovlBuffer) {
	int* ovlText = (int*)(ovlBuffer + (addrs.ovlTextStart - addrs.ovlStart));
	int ovlTextLen = (addrs.ovlTextEnd - addrs.ovlTextStart) / 4;
	unsigned int offset = 0;

	while (offset < ovlTextLen) {
		if (ovlText[offset] == 0x03e00008) { // jr ra, instruction afterwards is usually a nop but maybe not always
			if ((ovlText[offset + 2] >> 24) == 8) {
				offset += 2;
				offset *= 4;
				offset += addrs.ovlTextStart;
				if (!argFlags.quietMode) printf("WARNING: no check address given, assuming 0x%X.\n", offset);
				return offset;
			}
		}
		offset++;
	}
    return -1;
}

/********************************************
*                 Encryption                *
********************************************/

// Can be used to either encrypt or decrypt the overlay
void ApplyEncryptionKey(char* ovl) {
	int offset = 0x1000;
	while (offset < addrs.ovlKey - addrs.ovlStart) {
		*(int*)&ovl[offset] ^= addrs.ovlKey;
		offset += 4;
	}
}

/********************************************
*                  Messages                 *
********************************************/

void printSuccess(CheckType type, unsigned int wadIndex, std::string exePath, std::string wadPath) {
	if (wadIndex != -1) {
		if (type == LEVEL)     printf("Fixed checksum (wad %d).\n", wadIndex);
		if (type == SECONDARY) printf("Fixed secondary checksum (wad %d).\n", wadIndex);
		if (type == LOADING)   printf("Fixed checksum (wad %d).\n", wadIndex);
		if (type == TITLE)     printf("Fixed checksums (%s, wad %d).\n", exePath, wadIndex);
	}
	else {
		if (type == LEVEL)     printf("Fixed checksum (%s).\n", wadPath.c_str());
		if (type == SECONDARY) printf("Fixed secondary checksum (%s).\n", wadPath.c_str());
		if (type == LOADING)   printf("Fixed checksum (%s).\n", wadPath.c_str());
		if (type == TITLE)     printf("Fixed checksums (%s, %s).\n", exePath, wadPath.c_str());
	}
}

/********************************************
*                   Main                    *
********************************************/

std::string version = "1.1.0";

int main(int argc, char* argv[]) {

	const char* date = __DATE__;
	const char* time = __TIME__;
	
	argparse::ArgumentParser program("program_name");

	program.add_argument("filepaths")
		.help("Paths to the EXE and OVL/WAD files, respectively")
		.nargs(2);
	program.add_argument("-w")
		.help("The wad index to use, if passing in a full WAD.WAD file")
		.default_value(-1)
		.scan<'u', unsigned int>();
	program.add_argument("-c")
		.help("Type of overlay / check to update")
		.default_value(std::string{"level"})
		.choices("level", "secondary", "loading", "title");
	program.add_argument("-d")
		.help("Decrypt the selected overlay before scanning")
		.default_value(false)
		.implicit_value(true)
		.store_into(argFlags.decrypt);
	program.add_argument("-e")
		.help("Encrypt the selected overlay after scanning")
		.default_value(false)
		.implicit_value(true)
		.store_into(argFlags.encrypt);
	program.add_argument("-E")
		.help("The start and end addresses of the exe range to scan (if providing a level index, ensure this is the start of .text)")
		.required()
		.nargs(2)
		.scan<'x', unsigned int>();
	program.add_argument("-O")
		.help("The start and end addresses of the overlay range to scan")
		.required()
		.nargs(2)
		.scan<'x', unsigned int>();
	program.add_argument("-C")
		.help("The address of the overlay check value to update")
		.default_value<unsigned int>(0xFFFFFFFF)
		.scan<'x', unsigned int>();
	program.add_argument("-X")
		.help("The address of the exe check value to update")
		.default_value<unsigned int>(0xFFFFFFFF)
		.scan<'x', unsigned int>();
	program.add_argument("-s")
		.help("The address of start of the overlay")
		.required()
		.scan<'x', unsigned int>();
	program.add_argument("-L")
		.help("Level index of overlay (if none provided, ensure start of scan is correctly offset)")
		.default_value<unsigned int>(0)
		.scan<'u', unsigned int>()
		.store_into(addrs.level);
	program.add_argument("-q")
		.help("Outputs are minimal")
		.default_value(false)
		.implicit_value(true);
	program.add_argument("-Q")
		.help("Outputs are absent")
		.default_value(false)
		.implicit_value(true);
	
	// -b for making it use bitwise instead of tablewise would be nice

	// Mutually exclusive group for alternative process modes, use none if the checksums should be processed normally
	auto &group = program.add_mutually_exclusive_group(false);
	group.add_argument("-r")
		.help("Restore checksums to original uncorrected value")
		.default_value(false)
		.implicit_value(true);
	group.add_argument("-R")
		.help("Restore checksums prior to correction")
		.default_value(false)
		.implicit_value(true);
	group.add_argument("-B")
		.help("Break the checksum and trigger the antipiracy")
		.default_value(false)
		.implicit_value(true);
	group.add_argument("-D")
		.help("Decrypt / Encrypt only")
		.default_value(false)
		.implicit_value(true);

	auto &writemodes = program.add_mutually_exclusive_group(true);
	writemodes.add_argument("-W")
		.help("Overwrite overlay file")
		.default_value(false)
		.implicit_value(true)
		.store_into(argFlags.overwrite);
	writemodes.add_argument("-o")
		.help("Write overlay out to a given file path");

	auto &writemodesE = program.add_mutually_exclusive_group(false); // none needed, except in title mode
	writemodesE.add_argument("-Z")
		.help("Overwrite exe file")
		.default_value(false)
		.implicit_value(true)
		.store_into(argFlags.overwriteExe);
	writemodesE.add_argument("-z")
		.help("Write exe out to a given file path");

	try {
		program.parse_args(argc, argv);
	}
	catch (const std::exception& err) {
		std::cerr << err.what() << std::endl;
		std::cerr << program;
		std::exit(1);
	}

	argFlags.quietMode = 0;
	if      (program.get<bool>("-Q")) argFlags.quietMode = 2;
	else if (program.get<bool>("-q")) argFlags.quietMode = 1;

	argFlags.fixSums       = true;
	argFlags.restoreChecks = false;
	argFlags.breakSums     = false;
	if  (program.get<bool>("-r")) {
		argFlags.fixSums = false;
		argFlags.restoreChecks = true;
	}
	else if (program.get<bool>("-R")) argFlags.restoreChecks = true;
	else if (program.get<bool>("-B")) argFlags.breakSums = true;
	else if (program.get<bool>("-D")) argFlags.fixSums = false; // De/Encryption handled by -d/-e

	auto filePaths = program.get<std::vector<std::string>>("filepaths"); // exe, ovl/wad
	auto exeRange = program.get<std::vector<unsigned int>>("-E");
	auto ovlRange = program.get<std::vector<unsigned int>>("-O");
	unsigned int wadIndex = program.get<int>("-w");

	addrs.exeTextStart = exeRange[0];
	addrs.exeTextEnd   = exeRange[1];
	addrs.ovlTextStart = ovlRange[0];
	addrs.ovlTextEnd   = ovlRange[1];
	addrs.ovlStart   = program.get<unsigned int>("-s");
	addrs.chkAddr    = program.get<unsigned int>("-C");
	addrs.exeChkAddr = program.get<unsigned int>("-X");

	std::string outpath = "";
	if (!argFlags.overwrite) {
		outpath = program.get<std::string>("-o");
	}

	std::string outpathExe = "";
	if (argFlags.checkType == TITLE && !argFlags.overwriteExe) {
		try {
			outpathExe = program.get<std::string>("-z");
		} catch(std::logic_error) {
			printf("ERROR: output exe filename (-z) or overwrite exe mode (-Z) must be provided if check type \"title\" is chosen.\n");
			std::cerr << program;
			std::exit(1);
		}
	}

	auto inputchecktype = program.get<std::string>("-c");
	if      (inputchecktype == "level")     argFlags.checkType = LEVEL;
	else if (inputchecktype == "secondary") argFlags.checkType = SECONDARY;
	else if (inputchecktype == "loading")   argFlags.checkType = LOADING;
	else if (inputchecktype == "title")     argFlags.checkType = TITLE;

	if ((addrs.chkAddr == 0xFFFFFFFF) && argFlags.checkType == SECONDARY) {
		printf("ERROR: address of overlay check value (-C) must be provided if check type \"secondary\" is chosen.\n");
		std::cerr << program;
		std::exit(1);
	}
	if ((addrs.exeChkAddr == 0xFFFFFFFF) && argFlags.checkType == TITLE) {
		printf("ERROR: address of exe check value (-X) must be provided if check type \"title\" is chosen.\n");
		std::cerr << program;
		std::exit(1);
	}

	// -z or -Z must be given if in title mode
	// Not sure if this can even be caught at this point
	if (argFlags.checkType == TITLE && !argFlags.overwriteExe && outpathExe == "") {
		printf("ERROR: output exe filename (-z) or overwrite exe mode (-Z) must be provided if check type \"title\" is chosen.\n");
		std::cerr << program;
		std::exit(1);
	}

	// Check EXE
	if (!fileExists(filePaths[0].c_str())) {
		printf("ERROR: EXE not present.\n");
		std::cerr << program;
		std::exit(1);
	}

	// Check WAD
	if (!fileExists(filePaths[1].c_str())) {
		printf("ERROR: overlay / wad file not present.\n");
		std::cerr << program;
		std::exit(1);
	}

	auto wad = Wad(filePaths[1].c_str());
	if (!wad.isValid() && (wadIndex != -1)) {
		printf("ERROR: invalid WAD.WAD provided.\n");
		std::cerr << program;
		std::exit(1);
	}
	if ((wadIndex != -1) && (wadIndex >= 256)) {
		printf("ERROR: invalid wad index provided.\n");
		std::cerr << program;
		std::exit(1);
	}

	// open the exe
	std::fstream openExe;
	openExe.open(filePaths[0].c_str(), std::ios_base::in | std::ios_base::out | std::ios_base::binary);
	openExe.unsetf(std::ios::skipws);

	std::streampos exeSize;
	openExe.seekg(0, std::ios::end);
	exeSize = openExe.tellg();
	openExe.seekg(0, std::ios::beg);

	char* exe = (char*)malloc(exeSize);
	openExe.read(exe, exeSize);

	// open the wad
	std::fstream openWad;
	openWad.open(filePaths[1].c_str(), std::ios_base::in | std::ios_base::out | std::ios_base::binary);
	char* ovl;
	int ovlLen;
	if (wadIndex == -1) { // individual file mode
		std::streampos ovlSize;
		openWad.seekg(0, std::ios::end);
		ovlSize = openWad.tellg();
		openWad.seekg(0, std::ios::beg);

		ovlLen = ovlSize;
		ovl = (char*)malloc(ovlLen);
		openWad.read(ovl, ovlLen);
	} else {
		ovlLen = wad.data[wadIndex].length;
		ovl = (char*)malloc(ovlLen);
		openWad.seekg(wad.data[wadIndex].offset, std::ios::beg);
		openWad.read(ovl, ovlLen);
	}
	addrs.ovlKey = ((unsigned int*)ovl)[1];

	// better check the address inputs make sense
	if (!((0x80010000 < addrs.exeTextStart)
	    &&(addrs.exeTextStart + addrs.level + 2 < addrs.exeTextEnd)
		&&(addrs.exeTextEnd < 0x8000F800 + exeSize)
		&&(addrs.exeTextEnd < addrs.ovlStart)
		&&(addrs.ovlStart < addrs.ovlTextStart)
		&&(addrs.ovlTextStart < addrs.ovlTextEnd)
		&&(addrs.ovlTextEnd <= addrs.ovlStart + ovlLen)
		&&(addrs.ovlStart + ovlLen < 0x80200000))) {
		printf("ERROR: bad scan addresses provided.\n");
		std::cerr << program;
		std::exit(1);
	}

	if ((addrs.chkAddr != 0xFFFFFFFF) && !((addrs.ovlStart < addrs.chkAddr) && (addrs.chkAddr + 4 <= addrs.ovlStart + ovlLen)
	   && (argFlags.checkType == SECONDARY || ((addrs.ovlTextStart <= addrs.chkAddr) && (addrs.chkAddr + 4 <= addrs.ovlTextEnd))))) {
		printf("ERROR: bad overlay check address provided.\n");
		std::cerr << program;
		std::exit(1);
	}

	if ((addrs.exeChkAddr != 0xFFFFFFFF) && !((addrs.exeTextStart <= addrs.exeChkAddr) && (addrs.exeChkAddr + 4 <= addrs.exeTextEnd))) {
		printf("ERROR: bad exe check address provided.\n");
		std::cerr << program;
		std::exit(1);
	}

	if (!((addrs.ovlStart < addrs.ovlKey) && (addrs.ovlKey <= addrs.ovlStart + ovlLen))) {
		printf("ERROR: bad overlay provided.\n");
		std::cerr << program;
		std::exit(1);
	}

	// warn if level is not provided but it's supposed to be given
	if (!program.is_used("-L") && argFlags.checkType == LEVEL) {
		printf("WARNING: no value provided for level number (-L), assuming 0.\n");
	}

	if (!argFlags.quietMode) {
		std::cout << "Dragonbreath" << " (v" << version << " - " << date << " " << time << ")" << std::endl;
		std::cout << "By Hwd405" << std::endl;
		std::cout << "------------" << std::endl;
	}

	// prepare crc
	make_crc_table();
	make_crc_revtable();

	// optionally decrypt the overlay
	if (argFlags.decrypt) ApplyEncryptionKey(ovl);

	// if no checksum is provided, search for it
	if (addrs.chkAddr == 0xFFFFFFFF) {
		addrs.chkAddr = GetChecksumAddress(ovl);
		if (addrs.chkAddr == 0xFFFFFFFF) {
			openExe.close();
			openWad.close();
			printf("ERROR: overlay check address could not be identified. Please provide one.\n");
			std::cerr << program;
			std::exit(1);
		}
	}

	// if restore / restore-correct, restore now
	if (argFlags.restoreChecks) {
		restore_check(ovl, ovlLen, addrs.chkAddr - addrs.ovlStart, addrs.chkAddr);
		if (argFlags.checkType == TITLE) {
			*(int*)(exe + (addrs.exeChkAddr - 0x8000F800)) = 0x03e00008;
		}
	}

	if (argFlags.fixSums) {
		if      (argFlags.checkType == LEVEL)     fixLevelCheck(exe, ovl);
		else if (argFlags.checkType == SECONDARY) fixSecondaryCheck(exe, ovl);
		else if (argFlags.checkType == LOADING)   fixLoadingCheck(exe, ovl);
		else if (argFlags.checkType == TITLE)     fixTitleCheck(exe, ovl);
		if (!argFlags.quietMode) printSuccess(argFlags.checkType, wadIndex, filePaths[0], filePaths[1]);
	}
	
	// else if break mode, iterate the check until it's definitely breaking
	if (argFlags.breakSums) {
		// TODO... not that important
		// just repeatedly run a crc and modify the checksum until it's nonzero
	}

	// encrypt if necessary
	if (argFlags.encrypt) ApplyEncryptionKey(ovl);

	// load into file (either the loaded one or a new one)
	if (outpath != "") {
		std::fstream openFile;
		openFile.open(outpath.c_str(), std::fstream::in | std::fstream::out | std::fstream::trunc | std::ios_base::binary);
		openFile.unsetf(std::ios::skipws);
		openFile.seekp(0);
		openFile.write(ovl, ovlLen);
		openFile.close();
		if (!argFlags.quietMode && wadIndex != -1) printf("WARNING: wad index given but output path also given. Output file created and input unmodified.\n");
	} else if (argFlags.overwrite) {
		if (wadIndex != -1) {
			openWad.seekp(wad.data[wadIndex].offset);
			openWad.write(ovl, ovlLen);
		} else {
			openWad.seekp(0);
			openWad.write(ovl, ovlLen);
		}
	}

	if (argFlags.checkType == TITLE) {
		if (!argFlags.overwriteExe) {
			std::fstream openFile;
			openFile.open(outpathExe.c_str(), std::fstream::in | std::fstream::out | std::fstream::trunc | std::ios_base::binary);
			openFile.unsetf(std::ios::skipws);
			openFile.seekp(0);
			openFile.write(exe, exeSize);
			openFile.close();
		} else {
			openExe.seekp(0);
			openExe.write(exe, exeSize);
		}
	}

	// Close files
	free(exe);
	free(ovl);
	openExe.close();
	openWad.close();

	// Ta da!
	if (!argFlags.quietMode) printf("Files updated and saved.\n");

	return 0;

}
