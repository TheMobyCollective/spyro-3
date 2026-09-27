#include "common.h"
#include "spu.h"

INCLUDE_ASM("asm/nonmatchings/spu", func_8003BABC);

INCLUDE_ASM("asm/nonmatchings/spu", func_8003BB10);

/** 
 * PlaySound() - func_8003BB50()
 * TODO
 */
INCLUDE_ASM("asm/nonmatchings/spu", PlaySound);

INCLUDE_ASM("asm/nonmatchings/spu", func_8003BE70);

INCLUDE_ASM("asm/nonmatchings/spu", func_8003BEDC);

INCLUDE_ASM("asm/nonmatchings/spu", func_8003BF6C);

/**
 * ???() - func_8003BFC0() - MATCHING
 * https://decomp.me/scratch/STI55
 */
int func_8003BFC0(Moby* arg0, int arg1) {
    if (arg1 >= 0 && g_ActiveSounds[arg1].unk28 == arg0) {
        if (g_ActiveSounds[arg1].unk0 == 1 || g_ActiveSounds[arg1].unk0 == 2) {
            return 1;
        } 
    }
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/spu", func_8003C014);

/**
 * ???() - func_8003C0B0() - MATCHING
 * Source of the bluto glitch, as there's no -1 check in here
 * If you pause during the start of the boat charge sound, and release charge while paused, it buffer underflows and writes to 8006fcd0
 * https://decomp.me/scratch/NVzfz
 */
void func_8003C0B0(int handle, int arg1) {
    g_ActiveSounds[handle].unk18 = (arg1 * ((g_SpuDefinitionsPtr[g_ActiveSounds[handle].unk1].unkC + g_SpuDefinitionsPtr[g_ActiveSounds[handle].unk1].unkE) / 2)) >> 12;
    g_ActiveSounds[handle].unk2 |= 8;
}

INCLUDE_ASM("asm/nonmatchings/spu", func_8003C140);

INCLUDE_ASM("asm/nonmatchings/spu", func_8003C184);

INCLUDE_ASM("asm/nonmatchings/spu", func_8003C428);

INCLUDE_ASM("asm/nonmatchings/spu", func_8003C79C);

INCLUDE_ASM("asm/nonmatchings/spu", func_8003C994);

INCLUDE_ASM("asm/nonmatchings/spu", func_8003CB00);

INCLUDE_ASM("asm/nonmatchings/spu", func_8003CCF0);
