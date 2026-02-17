#include "common.h"
#include "camera.h"
#include "spyro.h"

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_80085498);

/**
 * UpdateActiveCritter() - func_level_11_800857B4() - MATCHING
 * Likely reused across levels, indicating a file reuse
 * https://decomp.me/scratch/iqPAq
 */
void func_level_11_800857B4(Moby* critter, int arg1) {
    spyro.unk20a = 1;
    spyro.unk20b = arg1;
    spyro.critterMobyPtr = critter;
    if (((camera.cameraState == CAMERA_FIRST_PERSON) && (camera.unk50 >= 2U)) || (spyro.unk17b & 0x2000)) {
        critter->lowDrawDistance = 0;
        critter->drawn = 0;
        return;
    }
    critter->lowDrawDistance = 0x10;
}

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_8008582C);

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_80085CB0);

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_80085D24);

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_80085D78);

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_80086468);

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_800869E8);

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_80086A90);

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_80086B88);

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_80087118);

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_80087780);

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_80087A04);

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_800880C4);

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_8008811C);

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_80088190);

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_80088240);

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_800884AC);

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_800885CC);

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_80088640);

INCLUDE_RODATA("asm/nonmatchings/overlays/level_11/level", D_level_11_80074A00);

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_80088678);

INCLUDE_ASM("asm/nonmatchings/overlays/level_11/level", func_level_11_800888C4);
