#include "common.h"
#include "camera.h"
#include "spyro.h"

INCLUDE_ASM("asm/nonmatchings/overlays/level_14/level", func_level_14_8008D9A4);

/**
 * UpdateActiveCritter() - func_level_14_8008DCC0() - MATCHING
 * Likely reused across levels, indicating a file reuse
 * https://decomp.me/scratch/iqPAq
 */
void func_level_14_8008DCC0(Moby* pCritterMoby, int arg1) {
    spyro.unk20a = 1;
    spyro.unk20b = arg1;
    spyro.critterMobyPtr = pCritterMoby;
    if (((camera.cameraState == CAMERA_FIRST_PERSON) && (camera.unk50 >= 2U)) || (spyro.unk17b & 0x2000)) {
        pCritterMoby->lowDrawDistance = 0;
        pCritterMoby->drawn = 0;
        return;
    }
    pCritterMoby->lowDrawDistance = 0x10;
}

INCLUDE_ASM("asm/nonmatchings/overlays/level_14/level", func_level_14_8008DD38);

INCLUDE_ASM("asm/nonmatchings/overlays/level_14/level", func_level_14_8008E1BC);

INCLUDE_ASM("asm/nonmatchings/overlays/level_14/level", func_level_14_8008E230);

INCLUDE_ASM("asm/nonmatchings/overlays/level_14/level", func_level_14_8008E920);

INCLUDE_ASM("asm/nonmatchings/overlays/level_14/level", func_level_14_8008EEA0);

INCLUDE_ASM("asm/nonmatchings/overlays/level_14/level", func_level_14_8008EF48);

INCLUDE_ASM("asm/nonmatchings/overlays/level_14/level", func_level_14_8008F040);

INCLUDE_ASM("asm/nonmatchings/overlays/level_14/level", func_level_14_8008F5D0);

INCLUDE_ASM("asm/nonmatchings/overlays/level_14/level", func_level_14_8008F6AC);

INCLUDE_ASM("asm/nonmatchings/overlays/level_14/level", func_level_14_8008F74C);

INCLUDE_ASM("asm/nonmatchings/overlays/level_14/level", func_level_14_8008FB88);

INCLUDE_ASM("asm/nonmatchings/overlays/level_14/level", func_level_14_8008FCBC);

INCLUDE_ASM("asm/nonmatchings/overlays/level_14/level", func_level_14_8008FF40);
