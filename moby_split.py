import operator
import re

# Work in progress script to split out each of the mobys into their own files

# What do I need to do first:
## update the moby_update table to take account of duplicate mobys and sort out the nullptrs, add a comment to it that it might be able to be done with defsym / --allow-multiple-definition instead
### finish research into mobys with duplicate code
### check non-fragments for duplicates
## normalise the include folders (e.g. should these go in overlays?) based on spyro-1 and check references to the files in here are still accurate
## look over the TODOs in here
## move include/moby/mobytag.h to include/moby_props.h and update any file references
## move include/moby/moby_spawn.h to include/overlays/moby_spawn.h and update any file references
## start moving mobytag names to MobyXXXProps
## moby includes should go in include/overlays/moby/XXX.inc.h, this means moving the ones in include/overlays/moby_update and updating any file references
## can I generate speech.c? See how difficult this would be

instructions = """\
Each of the following will need to be updated manually:
- Update overlays.ld to include g_MobyUpdate_level_{level} (under the line with .level_{level}_end)
- Update overlays.ld to replace the LEVEL(level_{level}) line with the output ld snippet
- Update include/level/{level}.h to include the output HAS_MOBY defines
- Update progress/level_{level}.md to replace the contents of the moby section to the output progress snippet
- Update asm/data/overlays/level_{level}/level.data.s to remove the moby table (leave in the dialogue table)
- Check for any RODATA lines in src/overlays/level_{level}/moby.c and copy these into the respective moby's file
- Delete src/overlays/level_{level}/moby.c
"""

mobyUpdateFile = """\
#include "common.h"
#include "level/{level}.h"
#include "overlays/moby_update.inc.h"
"""

mobyFile = """\
#include "common.h"
#include "moby_props.h"
#include "level/{level}.h"

//#include "overlays/moby/{mobyclass}.inc.h"
INCLUDE_ASM("asm/nonmatchings/overlays/level_{level}/moby", {func});
"""

hasMobyString = "#define HAS_MOBY_{mobyclass}"

progressString = "- [ ] MobyUpdate_{mobyclass}_level_{level}"

mobyTextLdString = """\
        build/src/overlays/level_{level}/moby{mobyclass}.o(.text*);
"""

mobyRodataLdString = """\
        build/src/overlays/level_{level}/moby{mobyclass}.o(.rodata);
        build/src/overlays/level_{level}/moby{mobyclass}.o(.rodata.jtbl);
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
        level_{level}_text_start = .;
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
            # for most mobys, the one created first is likely the one with the lowest class
            # however it's likely that 275 was created later to occupy a gap in the classes, i.e. it was based on 752
            # it doesn't matter either way
            if mobys[i - 1]['mobyclass'] == 275:
                mobys[i - 1]['mobyclass'] = 752
            mobys.pop(i)
    # TODO this moby class may not always be correct (e.g. if the level doesn't have the lowest), maybe refer to a dictionary with the intended values for each one after the reduction

def output_progress_snippet(mobys, levelId):
    # Mobys must be reduced first
    for moby in mobys:
        print(progressString.format(level = levelId, mobyclass = moby['mobyclass']))

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
            f.write(mobyFile.format(level = levelId, mobyclass = moby['mobyclass'], func = moby['func']))

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
        with open("asm/nonmatchings/overlays/level_{level}/moby/{func}.s".format(level = levelId, func = moby['func']), "r") as f:
            data = f.read()
            data_new = data.replace(moby['func'], "MobyUpdate_{mobyclass}_level_{level}".format(level = levelId, mobyclass = moby['mobyclass']))
        with open("asm/nonmatchings/overlays/level_{level}/moby/{func}.s".format(level = levelId, func = moby['func']), "w") as f:
            f.write(data_new)

# TODO argparsing
## What inputs do I expect:
## level ID (argparse or something to that effect would be useful)
## a flag to stop before creating or editing any files would be nice
# import sys
# sys.argv is an array of the arguments
# sys.argv[1] for first non-command argument
# OR use argparse
levelId = 10

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

# TODO add a return here if in --no-file-updates mode

print("/*** WRITING NEW FILES ***/")
output_moby_update_file(levelId)
output_moby_files(mobys, levelId)
update_moby_asms(mobys, levelId)

print("/*** Success! ***/")
