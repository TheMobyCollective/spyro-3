import sys
import operator
import re
import argparse
import os.path

instructions = """\
Each of the following will need to be updated manually:
- Find any references to specific instances of the moby update array (e.g. in AP code) and replace with level_{level}_data_start
- Update overlays.ld to include g_MobyUpdate_level_{level} (under the line with .level_{level}_end)
- Update overlays.ld to replace the LEVEL(level_{level}) line with the output ld snippet
- Update include/level/{level}.h to include the output HAS_MOBY defines
- Update progress/level_{level}.md to replace the contents of the moby section to the output progress snippet
  - Do not delete the final function in the moby section, as this is MobySpawn
- Update asm/data/overlays/level_{level}/level.data.s to remove the moby table (leave in the dialogue table)
  - You may need to check that the size underneath the dialogue table is using the dialogue table's symbol
- Check for any RODATA lines in src/overlays/level_{level}/moby.c and copy these into the respective moby's file
- Check for any comments and implemented mobys in src/overlays/level_{level}/moby.c and copy them into their intended files
  - This may require renaming some moby functions to their new names, using the MOBYUPDATE macro
- Delete src/overlays/level_{level}/moby.c
"""

mobyUpdateFile = """\
#include "common.h"
#include "level/{level}.h"

#include "overlays/moby_update.inc.h"
"""

mobyFile = """\
#include "common.h"
#include "level/{level}.h"

//#include "overlays/moby/{mobyclass}.inc.h"
INCLUDE_ASM("asm/nonmatchings/overlays/level_{level}/moby", {func});
"""

hasMobyString = "#define HAS_MOBY_{mobyclass}"

progressString = "- [ ] MobyUpdate_{mobyclass}_level_{level}"

mobyTextLdString = """\
        build/src/overlays/level_{level}/moby{mobyclass}.o(.text*);\
"""

mobyRodataLdString = """\
        build/src/overlays/level_{level}/moby{mobyclass}.o(.rodata);
        build/src/overlays/level_{level}/moby{mobyclass}.o(.rodata.jtbl);\
"""

# mobyRodata goes before this
ldSnippetString1 = """\
        build/src/overlays/level_{level}/moby_spawn.o(.rodata);
        build/src/overlays/level_{level}/moby_spawn.o(.rodata.jtbl);
        build/src/overlays/level_{level}/level.o(.rodata);
        build/src/overlays/level_{level}/level.o(.rodata.jtbl);
        build/src/overlays/level_{level}/parts_update.o(.rodata);
        build/src/overlays/level_{level}/parts_update.o(.rodata.jtbl);
        build/src/overlays/level_{level}/parts_spawn.o(.rodata);
        build/src/overlays/level_{level}/parts_spawn.o(.rodata.jtbl);
        build/src/overlays/level_{level}/animation.o(.rodata);
        build/src/overlays/level_{level}/animation.o(.rodata.jtbl);
        build/src/overlays/level_{level}/camera.o(.rodata);
        build/src/overlays/level_{level}/camera.o(.rodata.jtbl);
        level_{level}_text_start = .;\
"""
# mobyText goes before this
ldSnippetString2 = """\
        build/src/overlays/level_{level}/moby_update.o(.text*);
        build/src/overlays/level_{level}/moby_spawn.o(.text*);
        build/src/overlays/level_{level}/level.o(.text*);
        build/src/overlays/level_{level}/parts_update.o(.text*);
        build/src/overlays/level_{level}/parts_spawn.o(.text*);
        build/asm/overlays/level_{level}/check.o(.text*);
        build/src/overlays/level_{level}/animation.o(.text*);
        build/src/overlays/level_{level}/camera.o(.text*);
        level_{level}_data_start = .;
        build/src/overlays/level_{level}/moby_update.o(.data*);
        build/asm/data/overlays/level_{level}/level.data.o(.data*);
        .level_{level}_end = .;
        . = ALIGN(., 2048);
"""

identicalMobys = {
    # Bamboo Terrace large Rhynocs
    17: 4,

    # Butterflies
    211: 16,

    # Skateboards and skateboard spawners
    251: 54,
    461: 54,
    660: 54,

    # Pushable blocks
    79: 75,

    # Ice blocks
    324: 121,

    # Seashell Shore fragments - the tree fragments (191) aren't here in final, but they are in April, and moby code ordering
    # suggests they're the same despite us not having a build with both in the same level
    # (i.e. they're both sandwiched between 100 and 257)
    633: 191,

    # Portal icons - 195 was added late in development, 265 came first
    195: 265, 

    # Gem containers
    202: 201,
    203: 201,

    # Lost Fleet walls
    214: 213,

    # Electrical forcefields
    616: 318,

    # Signs
    408: 325,
    544: 325,
    683: 325,
    684: 325,
    685: 325,

    # Sand blocks
    450: 421,
    470: 421,
    471: 421,
    472: 421,
    473: 421,

    # Sunrise Spring Home NPCs
    434: 432,
    435: 432,
    436: 432,
    527: 432,

    # Midday Garden Home NPCs, including non-caged Byrd
    662: 661,
    663: 661,
    664: 661,
    669: 661,

    # Evening Lake Home NPCs, excluding Bentley
    675: 674,
    676: 674,
    677: 674,

    # A handful of fragment mobys have code identical to the Lost Fleet / SBR crab fragments.
    # (29, 56, 162, 215, 327, 467, 491, 504, 648, 715, 748)
    # However, Lost Fleet notably has two separate mobys with this code at different addresses.
    # We will assume the crab fragments are the same, as are the group used in Desert Ruins.
    491: 327,
    504: 467,
    648: 467,
    748: 467,

    # These fragments have been observed in multiple levels and have always been seen to overlap.
    # An assumption will be made that they are all one group, even though the Haunted ones are never
    # in a level with the others.
    424: 423,
    451: 423,
    474: 423,
    476: 423,
    481: 423,
    619: 423,

    # These fragments are all the same, appear in two proveably identical groups, and all have consecutive classes.
    # We won't include identical mobys from other levels that aren't consecutive (235, 288, 698)
    736: 735,
    737: 735,
    738: 735,

    # Many fragment mobys have code identical to 501 (egg shell).
    # (107, 142, 145, 146, 219, 278, 290, 293, 294, 296, 340, 444, 501, 530, 558, 559, 570, 612)
    # However, only 290 and 570 are observed to use the same address as 501, and the rest do not.
    # 142 / 145 / 146 use the same address, as do 293 / 294.
    # Most of the rest of these mobys are used in different levels, so it's unclear if
    # they're just identical code or if they're literally the same update function.
    # I have for the mostpart assumed they're separate, but it's possible that some of these were
    # using the same moby update functions.
    145: 142,
    146: 142,
    501: 290,
    570: 290,
    294: 293,

    # Dino Mines fragments - class 752 was probably the one made first in this case, due to the class-wrap.
    275: 752,

    # Common fragments
    307: 306,
    308: 306,
    309: 306,
    310: 306,
    568: 306,
    630: 306,
    631: 306,

    # Enchanted Towers fragments - not sure these are even used
    569: 564,

    # Dino Mines fragments
    749: 744,
}

def get_mobys(levelId):
    mobys = []
    firstLine = 0
    foundFirstLine = False
    with open("asm/data/overlays/level_{level}/level.data.s".format(level = levelId)) as data:
        for i, line in enumerate(data):
            if foundFirstLine:
                if i > 1024 + firstLine: # i is expected to be small so this is fine
                    break
                if re.search(r"D_.*$", line):
                    print("WARNING: found data on line {line} of file, this will be ignored.\n".format(line = i))
                match = re.search(r"func_.*$", line)
                if match:
                    func = match.group()
                    moby = { 'mobyclass': i - firstLine, 'function': func, 'address': int(func[-8:], 16) }
                    mobys.append(moby)
            elif 'dlabel' in line:
                firstLine = i + 1
                foundFirstLine = True
    return mobys

def sort_mobys_by_address(mobys):
    mobys.sort(key=operator.itemgetter('address'))

def sort_mobys_by_class(mobys):
    mobys.sort(key=operator.itemgetter('mobyclass'))

def reduce_mobys(mobys):
    sort_mobys_by_class(mobys) # for stability, so matches will be class-ordered
    sort_mobys_by_address(mobys)
    length = len(mobys)
    for i in reversed(range(length)): # since we'll be popping items
        if i == 0:
            break
        if mobys[i]['address'] == mobys[i - 1]['address']:
            mobys.pop(i)
    for moby in mobys:
        if moby['mobyclass'] in identicalMobys:
            moby['mobyclass'] = identicalMobys[moby['mobyclass']]

def output_progress_snippet(mobys, levelId):
    # Mobys must be reduced first
    for moby in mobys:
        print(progressString.format(level = levelId, mobyclass = moby['mobyclass']))
    print("<!-- moby_spawn -->")

def output_ld_snippet(mobys, levelId):
    # Mobys must be reduced first
    for moby in mobys:
        print(mobyRodataLdString.format(level = levelId, mobyclass = moby['mobyclass']))
    print(ldSnippetString1.format(level = levelId))
    for moby in mobys:
        print(mobyTextLdString.format(level = levelId, mobyclass = moby['mobyclass']))
    print(ldSnippetString2.format(level = levelId))

def output_moby_files(mobys, levelId):
    # Mobys must be reduced first
    for moby in mobys:
        with open("src/overlays/level_{level}/moby{mobyclass}.c".format(level = levelId, mobyclass = moby['mobyclass']), "w") as f:
            f.write(mobyFile.format(level = levelId, mobyclass = moby['mobyclass'], func = moby['function']))

def output_header_snippet(mobys):
    # Mobys must NOT be reduced first
    for moby in mobys:
        print(hasMobyString.format(mobyclass = moby['mobyclass']))

def output_moby_update_file(levelId):
    with open("src/overlays/level_{level}/moby_update.c".format(level = levelId), "w") as f:
        f.write(mobyUpdateFile.format(level = levelId))

def output_instructions(levelId):
    print(instructions.format(level = levelId))

def update_moby_asms(mobys, levelId):
    # Mobys must be reduced first
    for moby in mobys:
        filename = "asm/nonmatchings/overlays/level_{level}/moby/{func}.s".format(level = levelId, func = moby['function'])
        if os.path.exists(filename): # account for already implemented mobys with removed asm
            with open(filename, "r") as f:
                data = f.read()
                data_new = data.replace(moby['function'], "MobyUpdate_{mobyclass}_level_{level}".format(level = levelId, mobyclass = moby['mobyclass']))
            with open(filename, "w") as f:
                f.write(data_new)

def main():
    parser = argparse.ArgumentParser(prog='Moby Splitter')
    parser.add_argument('levelId')
    parser.add_argument('-n', '--no-file-updates', action='store_true')
    args = vars(parser.parse_args())
    levelId = args['levelId']
    noFileUpdates = args['no_file_updates']

    mobys = get_mobys(levelId)

    print("/*** MANUAL EDITS ***/")
    output_instructions(levelId)

    print("/*** HAS_MOBY DEFINES ***/")
    sort_mobys_by_address(mobys)
    output_header_snippet(mobys)

    print("/*** PROGRESS SNIPPET ***/")
    reduce_mobys(mobys)
    output_progress_snippet(mobys, levelId)

    print("/*** LD SNIPPET ***/")
    output_ld_snippet(mobys, levelId)

    if (noFileUpdates):
        sys.exit()

    print("/*** WRITING NEW FILES ***/")
    output_moby_update_file(levelId)
    output_moby_files(mobys, levelId)
    update_moby_asms(mobys, levelId)

    print("/*** Success! ***/")

if __name__ == "__main__":
    main()
