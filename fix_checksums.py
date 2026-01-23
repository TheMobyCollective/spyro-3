import colorama
import os
import subprocess
colorama.init()

#########################################################################################

# An extra script for running antipiracy checks, compatible with NTSC-U revisions 0 and 1.
# Note that this script is not designed to be run with modified versions of the game
# which have different addresses for things - that's what build.py is for!
# Mods which don't change any addresses are fine, though!

# I'd recommend not using this script with the 1.0 decomp, and it should probably be used in a separate directory too.
# There's other scripts that do what this one does for the decomp, and running this one with decomp scripts could muddle things!

# The WAD.WAD file should be split up using a tool like wadtool: https://github.com/altro50/wadtool
# Put these files in a folder called wad-data/ and modify them as required
# You also need to export everything on the CD image using something like dumpsxiso: https://github.com/Lameguy64/mkpsxiso
# Put these files in a folder called cd-data/ and modify these files, including the executable, as required

# Then, modify the variables below and run this script with `python3 ./fix_checksums.py`

# Package the file together into a disc image by recompiling the WAD.WAD file using wadtool, putting it in cd-data,
# and running mkpsxiso to recompile the disc image. If you want an example of how to do this I'd recommend looking at
# the build_cd.sh script in this repo.

#########################################################################################
# VARIABLES

# Version - set the following to 1 if you're patching revision 1 ("1.1"):
REVISION = 0

# Decrypt - set this if you want to decrypt the level overlays (they're encrypted by default, so if you want to edit them
# you might want to run this script with just decryption on first):
DECRYPT = False
# TODO: is this even needed? Decryption should probably just happen based on detection!

# Correct - set this if you want to correct the antipiracy checksums (e.g. after making modifications):
CORRECT = True

# Encrypt - set this if you want to encrypt the level overlays (they must be encrypted again before re-building the game):
ENCRYPT = True

# Note that this script checks the state of encryption of the overlay before running anything
# If it can't determine whether an overlay is encrypted, it will skip this overlay.

# Names - set to 0 if the wads use the default numbering convention (e.g. 98.wad), 1 if they use the wadtool convention
# (e.g. level_0_sunrise_spring_home_code.ovl), or 2 if they use the decomp convention (level_10.ovl)
NAMING_CONVENTION = 0

# TODO: 1.1 ovlStartPtr
ovlStartPtr = 0x800742D0 if (REVISION == 0) else 0x800742D0

#########################################################################################

def print_error(message):
    print(colorama.Fore.RED + message + colorama.Style.RESET_ALL)

def print_warning(message):
    print(colorama.Fore.YELLOW + message + colorama.Style.RESET_ALL)

def print_info(message):
    print(colorama.Fore.CYAN + message + colorama.Style.RESET_ALL)

def print_success(message):
    print(colorama.Fore.GREEN + message + colorama.Style.RESET_ALL)

# Would be optimal if Dragonbreath did this instead, really.
# This script assumes moby 0 is unused (and thus its code pointer is null) for all levels. If
# decrypted this should be 0, if encrypted it should match the encryption key. If you really want
# to use this pointer for some reason, you could change this to instead check for the upper and
# lower bytes of the check address instead. If encrypted the upmost byte should be 88 and the
# lowest should equal ((check_addr / 4) % 256) ^ (key % 256). Otherwise, they should be 08
# and ((check_addr / 4) % 256) respectively.
def isEncrypted(file):
    with open(file, "rb") as f:
        f.seek(4)
        data = f.read(4)
        key = int.from_bytes(data, "little")
        data = f.read(4)
        mobyPtr = int.from_bytes(data, "little")
        f.seek(mobyPtr - ovlStartPtr,0)
        data = f.read(4)
        value = int.from_bytes(data, "little")
        if value == 0:
            return 0  # Unencrypted
        else if value == key:
            return 1  # Encrypted
        else
            return -1 # Undetermined, skip this file

# when running, if CORRECT is False run en/decrypt only mode in separate methods instead
# if it's encrypt and decrypt but CORRECT is False then don't run anything
# encrypt only: files must be decrypted
# decrypt only: files must be encrypted

# Oof
symbol_map_0 = {
    "main_check": 0x0,
    "main_text_start": 0x0,
    "main_text_end": 0x0,
    "title_check": 0x0,
    "title_text_start": 0x0,
    "title_text_end": 0x0,
    "loading_check": 0x0,
    "loading_text_start": 0x0,
    "loading_text_end": 0x0,
    "level_10_check": 0x0,
    "level_10_text_start": 0x0,
    "level_10_text_end": 0x0,
    "level_11_check": 0x0,
    "level_11_text_start": 0x0,
    "level_11_text_end": 0x0,
    "level_12_check": 0x0,
    "level_12_text_start": 0x0,
    "level_12_text_end": 0x0,
    "level_13_check": 0x0,
    "level_13_text_start": 0x0,
    "level_13_text_end": 0x0,
    "level_14_check": 0x0,
    "level_14_text_start": 0x0,
    "level_14_text_end": 0x0,
    "level_15_check": 0x0,
    "level_15_text_start": 0x0,
    "level_15_text_end": 0x0,
    "level_16_check": 0x0,
    "level_16_text_start": 0x0,
    "level_16_text_end": 0x0,
    "level_17_check": 0x0,
    "level_17_text_start": 0x0,
    "level_17_text_end": 0x0,
    "level_18_check": 0x0,
    "level_18_text_start": 0x0,
    "level_18_text_end": 0x0,
    "level_20_check": 0x0,
    "level_20_text_start": 0x0,
    "level_20_text_end": 0x0,
    "level_21_check": 0x0,
    "level_21_text_start": 0x0,
    "level_21_text_end": 0x0,
    "level_22_check": 0x0,
    "level_22_text_start": 0x0,
    "level_22_text_end": 0x0,
    "level_23_check": 0x0,
    "level_23_text_start": 0x0,
    "level_23_text_end": 0x0,
    "level_24_check": 0x0,
    "level_24_text_start": 0x0,
    "level_24_text_end": 0x0,
    "level_25_check": 0x0,
    "level_25_text_start": 0x0,
    "level_25_text_end": 0x0,
    "level_26_check": 0x0,
    "level_26_text_start": 0x0,
    "level_26_text_end": 0x0,
    "level_27_check": 0x0,
    "level_27_text_start": 0x0,
    "level_27_text_end": 0x0,
    "level_28_check": 0x0,
    "level_28_text_start": 0x0,
    "level_28_text_end": 0x0,
    "level_30_check": 0x0,
    "level_30_text_start": 0x0,
    "level_30_text_end": 0x0,
    "level_31_check": 0x0,
    "level_31_text_start": 0x0,
    "level_31_text_end": 0x0,
    "level_32_check": 0x0,
    "level_32_text_start": 0x0,
    "level_32_text_end": 0x0,
    "level_33_check": 0x0,
    "level_33_text_start": 0x0,
    "level_33_text_end": 0x0,
    "level_34_check": 0x0,
    "level_34_text_start": 0x0,
    "level_34_text_end": 0x0,
    "level_35_check": 0x0,
    "level_35_text_start": 0x0,
    "level_35_text_end": 0x0,
    "level_36_check": 0x0,
    "level_36_text_start": 0x0,
    "level_36_text_end": 0x0,
    "level_37_check": 0x0,
    "level_37_text_start": 0x0,
    "level_37_text_end": 0x0,
    "level_38_check": 0x0,
    "level_38_text_start": 0x0,
    "level_38_text_end": 0x0,
    "level_40_check": 0x0,
    "level_40_text_start": 0x0,
    "level_40_text_end": 0x0,
    "level_41_check": 0x0,
    "level_41_text_start": 0x0,
    "level_41_text_end": 0x0,
    "level_42_check": 0x0,
    "level_42_text_start": 0x0,
    "level_42_text_end": 0x0,
    "level_43_check": 0x0,
    "level_43_text_start": 0x0,
    "level_43_text_end": 0x0,
    "level_44_check": 0x0,
    "level_44_text_start": 0x0,
    "level_44_text_end": 0x0,
    "level_45_check": 0x0,
    "level_45_text_start": 0x0,
    "level_45_text_end": 0x0,
    "level_46_check": 0x0,
    "level_46_text_start": 0x0,
    "level_46_text_end": 0x0,
    "level_47_check": 0x0,
    "level_47_text_start": 0x0,
    "level_47_text_end": 0x0,
    "level_48_check": 0x0,
    "level_48_text_start": 0x0,
    "level_48_text_end": 0x0,
    "level_50_check": 0x0,
    "level_50_text_start": 0x0,
    "level_50_text_end": 0x0,
    "level_16_secondary_check": 0x0,
    "level_16_secondary_start": 0x0,
    "level_16_secondary_end": 0x0,
    "level_17_secondary_check": 0x0,
    "level_17_secondary_start": 0x0,
    "level_17_secondary_end": 0x0,
    "level_26_secondary_check": 0x0,
    "level_26_secondary_start": 0x0,
    "level_26_secondary_end": 0x0,
    "level_27_secondary_check": 0x0,
    "level_27_secondary_start": 0x0,
    "level_27_secondary_end": 0x0,
    "level_36_secondary_check": 0x0,
    "level_36_secondary_start": 0x0,
    "level_36_secondary_end": 0x0,
    "level_37_secondary_check": 0x0,
    "level_37_secondary_start": 0x0,
    "level_37_secondary_end": 0x0,
    "level_46_secondary_check": 0x0,
    "level_46_secondary_start": 0x0,
    "level_46_secondary_end": 0x0,
    "level_47_secondary_check": 0x0,
    "level_47_secondary_start": 0x0,
    "level_47_secondary_end": 0x0,
}





# TODO: lots to remove here

CC         = "./tools/gcc2.7.2/cc1"
GCC         = "mips-linux-gnu-cpp"
AS          = "mips-linux-gnu-as -EL"
LD          = "mips-linux-gnu-ld -EL"
OBJCOPY     = "mips-linux-gnu-objcopy"
MASPSX      = "./tools/maspsx/maspsx.py"

# Antipiracy
COMPILE_DRAGONBREATH = False # Set to True if it's your first time including the antipiracy
FIX_CHECKSUMS = False
DRAGONBREATH = "./tools/dragonbreath/dragonbreath.exe"
# TODO: Probably add something to output whether AP was in the latest build so that a warning can be output when running build_cd!

# Individual file flags
file_flags = {
    "src/warp": "-G8" # Contains strings, will need to be matched from the bottom up
}

# The C_FLAGS and MASPSX_FLAGS *should* be -G8, but this is currently breaking the function ordering
# This would be fixed with the reorder hack but it doesn't work...
# Note that the AS_FLAGS needs -G0 regardless
GCC_FLAGS = "-ffreestanding -Iinclude -Ipsyq/include -MMD -MP -MF" # -D_HAS_MASPSX currently excluded as the reorder hack is broken
C_FLAGS = "-O2 -G0 -fverbose-asm -mips1 -mcpu=3000 -fgnu-linker -mno-abicalls -mgpopt -msoft-float -gcoff -quiet"
AS_FLAGS = "-Iinclude -march=r3000 -mtune=r3000 -G0 -no-pad-sections"
LD_FLAGS = "-T /tmp/psx.ld -Map build/psx.map --no-check-sections -nostdlib" # -T undefined_syms_auto.txt if needed
MASPSX_FLAGS = "-G0 --aspsx-version 2.56 --expand-div"

# TODO: For the PSYQ 4.7 libraries
NEW_PSYQ = ""

# NEW_PSYQ += " -Lpsyq/lib"
# NEW_PSYQ += " --start-group"
# NEW_PSYQ += " -lapi -lc -lc2 -lcard -lcd -lcomb -lds -letc -lgpu -lgs -lgte -lgun -lhmd -lmath -lmcrd -lpad -lsio -lspu"
# NEW_PSYQ += " --end-group"

# Runs os.system but with a check for the return code
def system(command):
    if os.system(command) != 0:
        print_error(f"Command failed: {command}")
        exit(1)

#######################################################################################################
# File maps

# TODO: may need three of these
overlay_map = {
    ".loading": "loading.ovl",
    ".title": "title.ovl",
    ".level_10": "level_10.ovl",
    ".level_11": "level_11.ovl",
    ".level_12": "level_12.ovl",
    ".level_13": "level_13.ovl",
    ".level_14": "level_14.ovl",
    ".level_15": "level_15.ovl",
    ".level_16": "level_16.ovl",
    ".level_17": "level_17.ovl",
    ".level_18": "level_18.ovl",
    ".level_20": "level_20.ovl",
    ".level_21": "level_21.ovl",
    ".level_22": "level_22.ovl",
    ".level_23": "level_23.ovl",
    ".level_24": "level_24.ovl",
    ".level_25": "level_25.ovl",
    ".level_26": "level_26.ovl",
    ".level_27": "level_27.ovl",
    ".level_28": "level_28.ovl",
    ".level_30": "level_30.ovl",
    ".level_31": "level_31.ovl",
    ".level_32": "level_32.ovl",
    ".level_33": "level_33.ovl",
    ".level_34": "level_34.ovl",
    ".level_35": "level_35.ovl",
    ".level_36": "level_36.ovl",
    ".level_37": "level_37.ovl",
    ".level_38": "level_38.ovl",
    ".level_40": "level_40.ovl",
    ".level_41": "level_41.ovl",
    ".level_42": "level_42.ovl",
    ".level_43": "level_43.ovl",
    ".level_44": "level_44.ovl",
    ".level_45": "level_45.ovl",
    ".level_46": "level_46.ovl",
    ".level_47": "level_47.ovl",
    ".level_48": "level_48.ovl",
    ".level_50": "level_50.ovl",
}

#######################################################################################################

def get_address(symbol):
    # TODO: we should use a map to get values directly wherever this is used
    # We do some horrible manipulation to get it in the right format
    addr = subprocess.check_output("grep '" + symbol + "' build/psx.map | head -n 1 | cut -dx -f2 | cut -d' ' -f1", shell=True)
    return str(hex(int(addr, 16)))[2:]

def get_address_offset(symbol, offset):
    # We do some horrible manipulation (again) to get it in the right format
    addr = subprocess.check_output("grep '" + symbol + "' build/psx.map | head -n 1 | cut -dx -f2 | cut -d' ' -f1", shell=True)
    return str(hex(int(addr, 16) + offset))[2:]

def fix_checksums():
    if (COMPILE_DRAGONBREATH):
        print_info("[3.5] Building Dragonbreath")
        os.system('g++ tools/dragonbreath/src/Dragonbreath.cpp -o ' + DRAGONBREATH)
        print_info("Built Dragonbreath.exe") # I should probably put a condition on this

    print_info("[4] Fixing checksums")

    address_map = dict()

    # Get main addresses
    address_map["main_TEXT_START"] = get_address("main_TEXT_START")
    address_map["main_TEXT_END"]   = get_address("main_TEXT_END")
    address_map["ovlHeader"]       = get_address("ovlHeader")

    # Get level addresses
    levels = [10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30, 31, 32, 33, 34, 35, 36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 48, 50]
    for id in range(10, 51):
        if id % 10 == 9:
            continue
        address_map["level_" + str(id) + "_check"]      = get_address("level_" + str(id) + "_check")
        address_map["level_" + str(id) + "_text_start"] = get_address("level_" + str(id) + "_text_start")
        address_map["level_" + str(id) + "_data_start"] = get_address("level_" + str(id) + "_data_start")

    # Get secondary addresses
    secondary_levels = [16, 17, 26, 27, 36, 37, 46, 47]
    function_starts  = ["func_8002CA50", "func_8003A40C", "func_8002CA50", "func_8003A40C", "func_8002CA50", "func_8002AB38", "func_8002CA50", "func_8002AB38"]
    function_ends    = ["func_8002D044", "func_8003A584", "func_8002D044", "func_8003A584", "func_8002D044", "func_8002AE00", "func_8002D044", "func_8002AE00"]
    function_offsets = [0, 0, 1, 0, 2, 0, 3, 0]
    for i in range(8):
        address_map["level_" + str(secondary_levels[i]) + "_secondary_check"] = get_address("level_" + str(secondary_levels[i]) + "_secondary_check")
        address_map["level_" + str(secondary_levels[i]) + "_secondary_start"] = get_address_offset(function_starts[i], function_offsets[i]) # name this differently to avoid clashes
        address_map["level_" + str(secondary_levels[i]) + "_secondary_end"]   = get_address_offset(function_ends[i], function_offsets[i])   # name this differently to avoid clashes

    # Loading and title addresses
    address_map["exe_check"]          = get_address("exe_check")
    address_map["loading_check"]      = get_address("loading_check")
    address_map["loading_text_start"] = get_address("loading_text_start")
    address_map["loading_text_end"]   = get_address("loading_text_end")
    address_map["title_check"]        = get_address("title_check")
    address_map["title_text_start"]   = get_address("title_text_start")
    address_map["title_text_end"]     = get_address("title_text_end")

    # Run dragonbreath
    command = DRAGONBREATH + " ./build/PSX.EXE ./build/wad/"
    common_args = "-W -q -s " + address_map.get("ovlHeader") + " "
    exe_args = "-E " + address_map.get("main_TEXT_START") + " " + address_map.get("main_TEXT_END") + " "

    # Title
    print_info("Updating primary check for title.ovl")
    system(command + "title.ovl -c title " + common_args + exe_args + "-O " + address_map.get("title_text_start") + " " + address_map.get("title_text_end") + " -C " + address_map.get("title_check") + " -X " + address_map.get("exe_check") + " -Z")

    # Loading
    print_info("Updating primary check for loading.ovl")
    system(command + "loading.ovl -c loading " + common_args + exe_args + "-O " + address_map.get("loading_text_start") + " " + address_map.get("loading_text_end") + " -C " + address_map.get("loading_check"))

    # Levels
    for i in range(37):
        print_info("Updating primary check for level_" + str(levels[i]) + ".ovl")
        system(command + "level_" + str(levels[i]) + ".ovl -c level " + common_args + exe_args + "-O " + address_map.get("level_" + str(levels[i]) + "_text_start") + " " + address_map.get("level_" + str(levels[i]) + "_data_start") + " -C " + address_map.get("level_" + str(levels[i]) + "_check") + " -L " + str(i) + " -e")

    # Secondaries
    for i in range(8):
        print_info("Updating secondary check for level_" + str(secondary_levels[i]) + ".ovl")
        system(command + "level_" + str(secondary_levels[i]) + ".ovl -c secondary " + common_args + "-E " + address_map.get("level_" + str(secondary_levels[i]) + "_secondary_start") + " " + address_map.get("level_" + str(secondary_levels[i]) + "_secondary_end") + " -O " + address_map.get("level_" + str(secondary_levels[i]) + "_text_start") + " " + address_map.get("level_" + str(secondary_levels[i]) + "_data_start") + " -C " + address_map.get("level_" + str(secondary_levels[i]) + "_secondary_check"))

    print_success("Build complete.")

# Make sure the build/ and build/wad/ directories exist
#os.makedirs("build/wad", exist_ok=True)

fix_checksums()