import re
import argparse
import os

level_ids = [ 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30, 31, 32, 33, 34, 35, 36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 48, 50 ]

def delete_file(level, asm_file):
    print("Deleting moby asm file for level {lvl}".format(lvl = level))
    file = "asm/nonmatchings/overlays/level_{lvl}/moby/{asm}.s".format(lvl = level, asm = asm_file)
    if os.path.exists(file):
        os.remove(file)
        return
    print("FAILED ASM DELETE - file does not exist")

def update_c(level, moby):
    print("Updating moby {cls} update file for level {lvl}".format(cls = moby, lvl = level))
    file = "src/overlays/level_{lvl}/moby{cls}.c".format(lvl = level, cls = moby)
    if os.path.exists(file):
        with open(file, "r") as f:
            data = f.read()
            data_new = data.replace("//#include \"overlays/moby/{cls}.inc.h\"".format(cls = moby), "#include \"overlays/moby/{cls}.inc.h\"".format(cls = moby))
            match = re.search(r"INCLUDE_ASM.*func_.*(?=\))", data_new)
            data_new_2 = re.sub("INCLUDE_ASM.*(\r\n|\r|\n)", "", data_new)
        with open(file, "w") as f:
            f.write(data_new_2)
        if match:
            return re.search(r"func_.*(?=\))", match.string).string
        else:
            print("Cannot find file to delete")
            return ""
    print("FAILED C UPDATE - file does not exist")

def update_progress(level, moby):
    print("Updating progress for level {lvl}".format(lvl = level))
    file = "progress/level_{lvl}.md".format(lvl = level)
    if os.path.exists(file):
        with open(file, "r") as f:
            data = f.read()
            match = re.search(r"MobyUpdate_{cls}_".format(cls = moby), data)
            if not match:
                print("Nothing to update - moby not present in progress file")
                return False
            data_new = data.replace(" ] MobyUpdate_{cls}_".format(cls = moby), "x] MobyUpdate_{cls}_".format(cls = moby))
        with open(file, "w") as f:
            f.write(data_new)
        return True
    print("FAILED PROGRESS UPDATE - file does not exist")
    return False

def main():
    parser = argparse.ArgumentParser(prog='Moby Implementer')
    parser.add_argument('mobyClass')
    args = vars(parser.parse_args())
    moby = args['mobyClass']
    for n in range(37):
        level = level_ids[n]
        if update_progress(level, moby):
            asm_file = update_c(level, moby)
            if asm_file != "":
                delete_file(level, asm_file)

if __name__ == "__main__":
    main()
