#include "common.h"
#include "spyro.h"
INCLUDE_ASM("asm/nonmatchings/overlays/level_42/level", func_level_42_80084AB8);

extern int D_8006E044;
extern unsigned int D_8006E048;
extern Spyro spyro;

/*
 * ???() - func_level_42_80084DD4 - MATCHED
 * https://decomp.me/scratch/atGPB
 */
void func_level_42_80084DD4(Moby* arg0, int arg1) {
    spyro.unk20a = 1;
    spyro.unk20b = arg1;
    spyro.critterMobyPtr = arg0;
    if (((D_8006E044 == 7) && ((unsigned int) D_8006E048 >= 2U)) || (spyro.unk17b & 0x2000)) {
        arg0->lowDrawDistance = 0;
        arg0->drawn = 0;
        return;
    }
    arg0->lowDrawDistance = 0x10;
}


INCLUDE_ASM("asm/nonmatchings/overlays/level_42/level", func_level_42_80084E4C);

INCLUDE_ASM("asm/nonmatchings/overlays/level_42/level", func_level_42_800852D0);

INCLUDE_ASM("asm/nonmatchings/overlays/level_42/level", func_level_42_80085344);

INCLUDE_ASM("asm/nonmatchings/overlays/level_42/level", func_level_42_80085A34);

INCLUDE_ASM("asm/nonmatchings/overlays/level_42/level", func_level_42_80085B0C);

INCLUDE_ASM("asm/nonmatchings/overlays/level_42/level", func_level_42_80085F48);

INCLUDE_ASM("asm/nonmatchings/overlays/level_42/level", func_level_42_80086350);
