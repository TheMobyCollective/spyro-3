#include "common.h"
#include "hud.h"
#include "spu.h"

extern int D_8006C648; // deltaTime
extern int D_8006C64C;
extern SoundTable* g_SoundTablePtr; // D_8006C654
extern int func_8002EBB0(int*);                            /* extern */
///////////////////////////////////////////////////

INCLUDE_ASM("asm/nonmatchings/hud", func_80027934);

/**
 * ???() - func_8002798C - MATCHING 
 * https://decomp.me/scratch/IDonA
 */
void func_8002798C(HudEntry* arg0) {
    int temp_v0;
    int var_a0;
    int var_v0;
    int var_v1;
    short temp_a2;
    unsigned short temp_v1;
    int var_v0_2;

    if (arg0->unk40 != arg0->unk42) {
        temp_a2 = arg0->unk46 + D_8006C648;
        arg0->unk46 = temp_a2;
        arg0->unk44 = 0xB4;
        if (arg0->unk3F == 0) {
            temp_v0 = arg0->unk40 - arg0->unk42;
            var_v1 = temp_v0 >= 0 ? temp_v0 : -temp_v0; 
            if ((var_v1 >= 0x28) ||
                ((((var_v1 < 0xA) == 0)) && ( ((temp_a2 < 4) == 0))) ||
                (temp_a2 >= 6)) {

                if (var_v1 >= 0x140) {
                    var_a0 = 6;
                } else {
                    var_a0 = 1;
                    if (var_v1 >= 0x28) {
                        var_a0 = 3;
                    }
                }
                temp_v1 = arg0->unk40;
                var_v0_2 = temp_v1 <= arg0->unk42 ? temp_v1 + var_a0 : temp_v1 - var_a0;
                arg0->unk40 = var_v0_2;
                arg0->unk46 = 0U;
            }
        }
    }
}

/**
 * ???() - func_80027A60 - MATCHING
 * https://decomp.me/scratch/kBxS7
*/
void func_80027A60(HudEntry* arg0) {
    int var_v0;

    if (arg0->unk28 != 0) {
        var_v0 = *arg0->unk28;
        MIN(var_v0,0);
        arg0->unk42 = var_v0;
        if (arg0->unk26 < (unsigned short) var_v0) {
            arg0->unk42 = arg0->unk26;
        }
    }
    func_8002798C(arg0);
}


/**
* ???() - func_80027AC0 - MATCHING
* https://decomp.me/scratch/Aloso
*/
void func_80027AC0(HudEntry* arg0) {
    int var_v0;

    if (arg0->unk28 != 0) {
        var_v0 = *arg0->unk28;
        MIN(var_v0,0);
        arg0->unk42 = var_v0;
        if (arg0->unk26 < (unsigned short) var_v0) {
            arg0->unk42 = arg0->unk26;
        }
    }
    arg0->unk40 = arg0->unk42;
}


/**
 * ???() - func_80027B0C - MATCHING
 * https://decomp.me/scratch/456ru
 */ 
void func_80027B0C(HudEntry* arg0) {
    int temp_s1;

    temp_s1 = arg0->unk40;
    func_80027A60(arg0);
    if (temp_s1 <  arg0->unk40) {
        PlaySound((int) g_SoundTablePtr->extraLife, 0, 0); //playSound(int,*Moby,char)
    }
}

INCLUDE_ASM("asm/nonmatchings/hud", func_80027B70);

INCLUDE_ASM("asm/nonmatchings/hud", func_80027D60);

INCLUDE_ASM("asm/nonmatchings/hud", func_80027E40);

INCLUDE_ASM("asm/nonmatchings/hud", func_80027EE4);

/**
 * ???() - func_80027F88 - MATCHING
 * https://decomp.me/scratch/DupJT
 */
void func_80027F88(HudEntry* arg0) {
    func_80027D60(arg0);
    arg0->unk3C = (unsigned short) arg0->unk3C + func_8002EBB0(arg0->unk28);
}


/**
 * UpdateHudSpriteFromClass()? - func_80027FCC() - MATCHING
 * https://decomp.me/scratch/dYesf
 */
void func_80027FCC(HudEntry* hud, int spriteClass) {
    int i;

    i = func_80027934(spriteClass);
    hud->unk24 = D_8006C738[i].spriteClass;
    hud->unk1C.index = i;
    hud->unk1C.animationType = D_8006C738[i].animationType;
    hud->unk1C.frame = D_8006C738[i].frame;
}

/**
 * SetHud() - func_8002803C()
 * WIP
 * https://decomp.me/scratch/VNAQB
 */
INCLUDE_ASM("asm/nonmatchings/hud", func_8002803C);

/**
 * ???() - func_80028154() - MATCHING
 * Clears a HUD with a specific value in its struct, unclear what this value is right now
 * https://decomp.me/scratch/sn1q6
 */
int func_80028154(int arg0) {
    int i;

    for (i = 0; i < 8; i++) {
        if (g_HudEntries[i].unk1A == arg0) {
            break;
        }
    }
    
    if (i < 8) {
        func_8002803C(i, -1, 0, 0, 0, 0, 0);
        return 1;
    }
    return 0;
}

/**
 * ???() - func_800281D0() - MATCHING
 * https://decomp.me/scratch/y73dG
 */
void func_800281D0(int arg0, int arg1) {
    int i;

    for (i = 0; i < 8; i++) {
        if (g_HudEntries[i].unk1A == arg0) {
            break;
        }
    }
    
    if (i < 8) {
        func_80027FCC(&g_HudEntries[i], arg1);
        g_HudEntries[i].unk4 = g_HudEntries[i].unk24;
    }
}

/**
 * ???() - func_80028264() - MATCHING
 * https://decomp.me/scratch/4We6S
 */
void func_80028264(HudEntry* arg0) {
    func_80027FCC(arg0, arg0->unk4);
    arg0->unk38 = arg0->unk3A;
    arg0->unk2C = arg0->unkC;
    arg0->unk30 = arg0->unk10;
    arg0->unk34 = arg0->unk14;
    arg0->unk28 = arg0->unk8;
    arg0->unk26 = arg0->unk6;
    if (arg0->unk2C != 0) {
        arg0->unk2C(arg0);
    }
    arg0->unk19 = 0;
}

/**
 * ResetHuds() - func_800282D8() - MATCHING
 * https://decomp.me/scratch/69F5F
 */
void func_800282D8() {
    int i;
    
    for (i = 0; i < 8; i++) {
        func_8002803C(i, -1, 0, 0, 0, 0, 1);
        g_HudEntries[i].unk3F = 0x32;
        func_80028264(&g_HudEntries[i]);
    }
}

INCLUDE_ASM("asm/nonmatchings/hud", func_80028378);

INCLUDE_ASM("asm/nonmatchings/hud", func_800285A4);

INCLUDE_ASM("asm/nonmatchings/hud", func_800289C8);

INCLUDE_ASM("asm/nonmatchings/hud", func_80028D30);

INCLUDE_ASM("asm/nonmatchings/hud", func_800291B8);

INCLUDE_ASM("asm/nonmatchings/hud", func_800293C4);

/**
 * ???() - func_80029674() - MATCHING
 * https://decomp.me/scratch/ek230
 */
int func_80029674(HudEntry* arg0, int* arg1, int* arg2) {
    int temp_t1;
    int temp_v1;
    int temp_a3;

    // Needs an extra variable to return to match
    int ret = 0;
    
    temp_t1 = arg0->unk3C;
    temp_v1 = arg0->unk3D;
    temp_a3 = D_8006C64C;
    
    if (!(arg0->unk18 & 1)) {
        if (arg0->unk18 & 2) {
            *arg2 -= temp_a3;
        } else {
            *arg2 -= (temp_v1 >> 1);
        }
    } else {
        *arg2 += temp_a3;
    }
    
    if (!(arg0->unk18 & 4)) {
        if (arg0->unk18 & 8) {
            *arg1 -= temp_t1;
        } else {
            *arg1 -= (temp_t1 >> 1);
        }
    }
    return ret;
}

INCLUDE_ASM("asm/nonmatchings/hud", func_80029708);

INCLUDE_ASM("asm/nonmatchings/hud", func_8002982C);

INCLUDE_ASM("asm/nonmatchings/hud", func_80029904);

INCLUDE_ASM("asm/nonmatchings/hud", func_80029A00);

INCLUDE_ASM("asm/nonmatchings/hud", func_80029AA0);

INCLUDE_ASM("asm/nonmatchings/hud", func_80029BB0);

INCLUDE_ASM("asm/nonmatchings/hud", func_80029CF8);

INCLUDE_ASM("asm/nonmatchings/hud", func_80029E48);

/**
 * ???() - func_8002A580 - WIP
 * https://decomp.me/scratch/gamSH
 */
INCLUDE_ASM("asm/nonmatchings/hud", func_8002A580);

/**
 * ???() - func_8002A6B4 - MATCHING
 * https://decomp.me/scratch/CXdDl
 */
void func_8002A6B4(void) {
    PlaySound(g_SoundTablePtr->pauseEnter, 0, 0);
}

/**
 * ???() - func_8002A6E4 - MATCHING
 * https://decomp.me/scratch/Mck3B
 */
void func_8002A6E4(void) {
    PlaySound(g_SoundTablePtr->pauseExit, 0, 0);
}

/**
 * ???() - func_8002A714 - MATCHING
 * https://decomp.me/scratch/omnBk
 */
void func_8002A714(void) {
    int temp = PlaySound((int) g_SoundTablePtr->pauseMove, 0, 0); 
    if (temp >= 0) {
        func_8003C140(temp, 0x640);
    }
}

/**
 * ???() - func_8002A754 - MATCHING
 * https://decomp.me/scratch/0JDAC
 */
void func_8002A754(void) {
    int temp = PlaySound((int) g_SoundTablePtr->changeVolume, 0, 0); 
    if (temp >= 0) {
        func_8003C140(temp, 0xC00); 
    }
}


