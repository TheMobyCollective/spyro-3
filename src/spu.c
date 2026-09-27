#include "common.h"
#include "spu.h"

extern Model* D_8006EE2C[768]; // probably moby model pointers
extern int D_8006C630;

//////////////////////////////////////////////////////////////

/**
 * ???() - func_8003BABC() - MATCHING
 * https://decomp.me/scratch/kKchg
 */
int func_8003BABC(Moby* arg0, int arg1, int arg2) {
    if (D_8006EE2C[arg0->mobyClass]->m_Sounds[arg1] != 0xFF) {
        return PlaySound(D_8006EE2C[arg0->mobyClass]->m_Sounds[arg1], arg0, arg2);
    }
    return -1;
}

/**
 * ???() - func_8003BB10() - MATCHING
 * https://decomp.me/scratch/tr67c
 */
int func_8003BB10(Moby* arg0, int arg1, int arg2) {    
    if (D_8006C708[arg1] != 0xFF) {
        return PlaySound(D_8006C708[arg1], arg0, arg2);
    }
    return -1;
}

/** 
 * PlaySound() - func_8003BB50()
 * TODO
 */
INCLUDE_ASM("asm/nonmatchings/spu", PlaySound);

/**
 * ???() - func_8003BE70() - MATCHING
 * https://decomp.me/scratch/TvzFy
 */
void func_8003BE70(int handle) {
    if (g_ActiveSounds[handle].unk0 == 1) {
        g_ActiveSounds[handle].unk0 = 5;
    }
    else if (g_ActiveSounds[handle].unk0 == 2) {
        g_ActiveSounds[handle].unk0 = 3;
        g_ActiveSounds[handle].unk4 = 0;
    }
}

/**
 * ???() - func_8003BEDC() - MATCHING
 * https://decomp.me/scratch/aupaf
 */
void func_8003BEDC() {
    int handle;
    D_8006C630 = 1;
    for (handle = 0; handle < 0x18; handle++) {
        if ((g_ActiveSounds[handle].unk0 == 1 || g_ActiveSounds[handle].unk0 == 2) && !(g_ActiveSounds[handle].unk2 & 0x40)) {
            func_8003BE70(handle);
        }
    }
}

/**
 * ???() - func_8003BF6C() - MATCHING
 * https://decomp.me/scratch/HNDde
 */
int func_8003BF6C(int arg0, int handle) {
    if (handle >= 0 && g_ActiveSounds[handle].unk1 == arg0) {
        if (g_ActiveSounds[handle].unk0 == 1 || g_ActiveSounds[handle].unk0 == 2) {
            return 1;
        }
    }
    return 0;
}

/**
 * ???() - func_8003BFC0() - MATCHING
 * https://decomp.me/scratch/STI55
 */
int func_8003BFC0(Moby* arg0, int handle) {
    if (handle >= 0 && g_ActiveSounds[handle].unk28 == arg0) {
        if (g_ActiveSounds[handle].unk0 == 1 || g_ActiveSounds[handle].unk0 == 2) {
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

/**
 * ???() - func_8003C140() - MATCHING
 * https://decomp.me/scratch/PnDAX
 */
void func_8003C140(int handle, int arg1) {
    g_ActiveSounds[handle].unkC = arg1;
    g_ActiveSounds[handle].unk2 |= 0x10;
}

INCLUDE_ASM("asm/nonmatchings/spu", func_8003C184);

INCLUDE_ASM("asm/nonmatchings/spu", func_8003C428);

INCLUDE_ASM("asm/nonmatchings/spu", func_8003C79C);

INCLUDE_ASM("asm/nonmatchings/spu", func_8003C994);

INCLUDE_ASM("asm/nonmatchings/spu", func_8003CB00);

INCLUDE_ASM("asm/nonmatchings/spu", func_8003CCF0);
