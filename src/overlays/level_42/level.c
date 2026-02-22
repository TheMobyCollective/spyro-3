#include "common.h"
#include "camera.h"
#include "spyro.h"

INCLUDE_ASM("asm/nonmatchings/overlays/level_42/level", func_level_42_80084AB8);

/**
 * UpdateActiveCritter() - func_level_42_80084DD4() - MATCHING
 * https://decomp.me/scratch/atGPB
 */
void func_level_42_80084DD4(Moby* pCritterMoby, int arg1) {
    spyro.unk20a = 1;
    spyro.unk20b = arg1;
    spyro.critterMobyPtr = pCritterMoby;
    if (((g_Camera.cameraState == CAMERA_FIRST_PERSON) && (g_Camera.unk50 >= 2U)) || (spyro.unk17b & 0x2000)) {
        pCritterMoby->lowDrawDistance = 0;
        pCritterMoby->drawn = 0;
        return;
    }
    pCritterMoby->lowDrawDistance = 0x10;
}


INCLUDE_ASM("asm/nonmatchings/overlays/level_42/level", func_level_42_80084E4C);


/**
 * ???() - func_level_42_800852D0() - MATCHING
 * https://decomp.me/scratch/oWPff
 */
int func_level_42_800852D0(Vector3D* vec, int arg1, Moby* pMoby) {
    int temp_s0;

    temp_s0 = spyro.unk17c == 2;
    spyro.unk17a = 0x10000040;
    spyro.unk17d = pMoby; //whirlwind
    func_8004F178(&spyro.unk19, vec); //fSetVector
    spyro.unk20[0] = arg1;
    return temp_s0;
}

INCLUDE_ASM("asm/nonmatchings/overlays/level_42/level", func_level_42_80085344);

INCLUDE_ASM("asm/nonmatchings/overlays/level_42/level", func_level_42_80085A34);

INCLUDE_ASM("asm/nonmatchings/overlays/level_42/level", func_level_42_80085B0C);

INCLUDE_ASM("asm/nonmatchings/overlays/level_42/level", func_level_42_80085F48);

INCLUDE_ASM("asm/nonmatchings/overlays/level_42/level", func_level_42_80086350);
