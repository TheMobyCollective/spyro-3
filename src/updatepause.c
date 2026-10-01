#include "common.h"
#include "str.h"

extern WadHeader wadHeader; // 8006d8d8
extern DB g_DB[2];

extern struct {
	int DAT_80070104; // 80070104
	int DAT_80070108; // 80070108
	int DAT_8007010c; // 8007010c
	int DAT_80070110; // 80070110
	char DAT_80070114; // 80070114
	char DAT_80070115; // 80070115
	short DAT_80070116; // 80070116, maybe char?
	int DAT_80070118; // 80070118
	int DAT_8007011c; // 8007011c
	int DAT_80070120; // 80070120
	Vector3D DAT_80070124; // 80070124, type is a guess
	char DAT_80070130; // 80070130
	char DAT_80070131; // 80070131
	char DAT_80070132; // 80070132
	char DAT_80070133; // 80070133
	short DAT_80070134; // 80070134
	short DAT_80070136; // 80070136
	int DAT_80070138; // 80070138
	int DAT_8007013c; // 8007013c
	int DAT_80070140; // 80070140
	int DAT_80070144; // 80070144
	int DAT_80070148; // 80070148
	short DAT_8007014c; // 8007014c
	char DAT_8007014e; // 8007014e
	char DAT_8007014f; // 8007014f
	int DAT_80070150; // 80070150
	int DAT_80070154; // 80070154
	short DAT_80070158; // 80070158
	short loadLevel; // 8007015a; i.e. to load via vehicle
	int DAT_8007015c; // 8007015c
} D_80070104; // haven't currently typed this, copied from another file
// there's also possibly more afterwards from 80070160 to 80070260, but this might be separate

//////////////////////////////////////////////////////////////

INCLUDE_ASM("asm/nonmatchings/updatepause", func_800565A0);

INCLUDE_ASM("asm/nonmatchings/updatepause", func_8005663C);

INCLUDE_ASM("asm/nonmatchings/updatepause", func_8005693C);

INCLUDE_ASM("asm/nonmatchings/updatepause", func_800569C0);

/**
 * ???() - func_80056A3C() - MATCHING
 * https://decomp.me/scratch/gSiXU
 */
void func_80056A3C() {
    CDLoadAsync(cdState.wadSector, (char*)g_DB[1].dat_8006fc6c + 0x8000, wadHeader.optionsOvl.size, wadHeader.optionsOvl.offset);
    D_80070104.DAT_80070138 = wadHeader.optionsOvl.size;
}

INCLUDE_ASM("asm/nonmatchings/updatepause", func_80056A98);

INCLUDE_ASM("asm/nonmatchings/updatepause", func_80056CF0);

INCLUDE_ASM("asm/nonmatchings/updatepause", func_80056ECC);

INCLUDE_ASM("asm/nonmatchings/updatepause", func_80057154);

INCLUDE_ASM("asm/nonmatchings/updatepause", func_80057340);

INCLUDE_ASM("asm/nonmatchings/updatepause", func_80057834);

/**
 * ???() - func_80058408() - MATCHING
 * Ready to add, but there's a weird struct in here
 * Primitive example is in here too
 * https://decomp.me/scratch/5iaVQ
 */
INCLUDE_ASM("asm/nonmatchings/updatepause", func_80058408);
