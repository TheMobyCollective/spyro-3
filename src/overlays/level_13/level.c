#include "common.h"
#include "camera.h"
#include "spyro.h"

INCLUDE_ASM("asm/nonmatchings/overlays/level_13/level", func_level_13_80084E28);

/**
 * UpdateActiveCritter() - func_level_13_80085144() - MATCHING
 * Likely reused across levels, indicating a file reuse
 * https://decomp.me/scratch/iqPAq
 */
void func_level_13_80085144(Moby* critter, int arg1) {
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

INCLUDE_ASM("asm/nonmatchings/overlays/level_13/level", func_level_13_800851BC);

INCLUDE_ASM("asm/nonmatchings/overlays/level_13/level", func_level_13_80085640);

INCLUDE_ASM("asm/nonmatchings/overlays/level_13/level", func_level_13_80085750);

INCLUDE_ASM("asm/nonmatchings/overlays/level_13/level", func_level_13_800857C4);

INCLUDE_ASM("asm/nonmatchings/overlays/level_13/level", func_level_13_80085EB4);

INCLUDE_ASM("asm/nonmatchings/overlays/level_13/level", func_level_13_80085F8C);

INCLUDE_ASM("asm/nonmatchings/overlays/level_13/level", func_level_13_800865F4);

INCLUDE_ASM("asm/nonmatchings/overlays/level_13/level", func_level_13_80086728);
