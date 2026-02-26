#include "common.h"
#include "hud.h"
#include "spu.h"

extern int func_8002EBB0(int*);

// sbss
extern int D_8006C598;
extern int D_8006C64C;
extern int deltaTime; // 8006C648
extern int D_8006C784; // g_Lives
extern int D_8006C660; // g_EggTotal
extern int D_8006C71C; // g_GemTotal
extern int D_8006C74C;

extern int D_8006C768;
extern SpriteData* D_8006C788;
extern int D_8006E344;
extern int D_8006FA3C;
extern int D_800714F4;
extern int D_800714F8;
extern short D_800719CA;
extern char D_80071A04;
extern int D_8006C5BC; // currentLvl


///////////////////////////////////////////////////

/**
 * GetSpriteIndex() - func_80027934() - MATCHING
 * https://decomp.me/scratch/VTcLP
 */
int func_80027934(int spriteClass) {
    int i = 0;

    while (D_8006C738[i].spriteClass != -1) {
        if (D_8006C738[i].spriteClass == spriteClass) break;
        i++;
    }

    return i;
}

/**
 * ???() - func_8002798C() - MATCHING 
 * https://decomp.me/scratch/VjAmr
 */
void func_8002798C(HudEntry* arg0) {
    int temp_v0;
    int var_a0;
    int var_v1;
    short temp_a2;

    if (arg0->unk40 != arg0->unk42) {
        temp_a2 = arg0->unk46 + deltaTime;
        arg0->unk46 = temp_a2;
        arg0->unk44 = 180;
        if (arg0->movementFrame == 0) {
            temp_v0 = arg0->unk40 - arg0->unk42;
            var_v1 = ABS(temp_v0);
            if (var_v1 >= 40 || (var_v1 >= 10 && temp_a2 >= 4) || temp_a2 >= 6) {

                if (var_v1 >= 320) {
                    var_a0 = 6;
                } else if (var_v1 >= 40) {
                    var_a0 = 3;
                } else {
                    var_a0 = 1;
                }

                if (arg0->unk40 <= arg0->unk42) {
                    arg0->unk40 += var_a0;
                } else {
                    arg0->unk40 -= var_a0;
                }
                
                arg0->unk46 = 0;
            }
        }
    }
}

/**
 * ???() - func_80027A60() - MATCHING
 * https://decomp.me/scratch/kBxS7
*/
void func_80027A60(HudEntry* arg0) {
    int var_v0;

    if (arg0->unk28 != 0) {
        var_v0 = *arg0->unk28;
        MIN(var_v0, 0);
        arg0->unk42 = var_v0;
        if (arg0->unk26 < arg0->unk42) {
            arg0->unk42 = arg0->unk26;
        }
    }
    func_8002798C(arg0);
}


/**
* ???() - func_80027AC0() - MATCHING
* https://decomp.me/scratch/AVgBX
*/
void func_80027AC0(HudEntry* arg0) {
    int var_v0;

    if (arg0->unk28 != 0) {
        var_v0 = *arg0->unk28;
        MIN(var_v0,0);
        arg0->unk42 = var_v0;
        if (arg0->unk26 < arg0->unk42) {
            arg0->unk42 = arg0->unk26;
        }
    }
    arg0->unk40 = arg0->unk42;
}


/**
 * ???() - func_80027B0C() - MATCHING
 * https://decomp.me/scratch/456ru
 */ 
void func_80027B0C(HudEntry* arg0) {
    int temp_s1;

    temp_s1 = arg0->unk40;
    func_80027A60(arg0);
    if (temp_s1 < arg0->unk40) {
        PlaySound(g_SoundTablePtr->extraLife, 0, 0);
    }
}

INCLUDE_ASM("asm/nonmatchings/hud", func_80027B70);

/**
 * ???() - func_80027D60() - MATCHING
 * https://decomp.me/scratch/4YB6r
 */
void func_80027D60(HudEntry* arg0) {
    SpriteDefinition* spriteDef;
    
    spriteDef = &D_8006C738[arg0->unk1C.index];
    if (arg0->unk28 != 0 && (int)arg0->unk28 % 4 == 0) {
        arg0->unk42 = *arg0->unk28;
        if (arg0->unk26 < arg0->unk42) {
            arg0->unk42 = arg0->unk26;
        }
        arg0->unk40 = arg0->unk42;
    } else {
        arg0->unk42 = 99;
        arg0->unk40 = 99;
    }
    
    if (!(arg0->unk38 & 0x40)) {
        arg0->unk44 = 180;
    }
    
    if (arg0->unk24 != -1) {
        SpriteData* spriteData = &D_8006C788[spriteDef->frame];
        arg0->unk3C = spriteData->unk4 - spriteData->unk0;
        arg0->unk3D = spriteData->unk5 - spriteData->unk1;
    } else {
        arg0->unk3C = 0;
        arg0->unk3D = 0;
    }
    
    arg0->unk4C = 0;
    arg0->unk50 = 0;
}

/**
 * ???() - func_80027E40() - MATCHING
 * https://decomp.me/scratch/FRzQ8
 */
void func_80027E40(HudEntry* arg0) {
    int var_a0;
    int var_v0;
    SpriteData* temp_s1;

    temp_s1 = &D_8006C788[g_Hud.numberFrame];
    func_80027D60(arg0);
    var_a0 = 0;
    var_v0 = arg0->unk26;
    while (var_v0 > 0) {
        var_v0 /= 10;
        var_a0++;
    }
    arg0->unk3C += (temp_s1->unk4 - temp_s1->unk0) * var_a0 + 10;
}

/**
 * ???() - func_80027EE4() - MATCHING
 * https://decomp.me/scratch/HKno1
 */
void func_80027EE4(HudEntry* arg0) {
    int var_a0;
    int var_v0;
    SpriteData* temp_s1;

    temp_s1 = &D_8006C788[g_Hud.numberFrame];
    func_80027D60(arg0);
    var_a0 = 0;
    var_v0 = arg0->unk26;
    while (var_v0 > 0) {
        var_v0 /= 10;
        var_a0 += 2;
    }
    var_a0++;
    arg0->unk3C += (temp_s1->unk4 - temp_s1->unk0) * var_a0 + 10;
}

/**
 * ???() - func_80027F88() - MATCHING
 * https://decomp.me/scratch/DupJT
 */
void func_80027F88(HudEntry* arg0) {
    func_80027D60(arg0);
    arg0->unk3C += func_8002EBB0(arg0->unk28);
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
    arg0->isOffScreen = 0;
}

/**
 * ResetHuds() - func_800282D8() - MATCHING
 * https://decomp.me/scratch/69F5F
 */
void func_800282D8() {
    int i;
    
    for (i = 0; i < 8; i++) {
        func_8002803C(i, -1, 0, 0, 0, 0, 1);
        g_HudEntries[i].movementFrame = 50;
        func_80028264(&g_HudEntries[i]);
    }
}

INCLUDE_ASM("asm/nonmatchings/hud", func_80028378);

/**
 * ???() - func_800285A4()
 * Matching in decomp.me, check and implement fully
 * Could be the function pointers that I need to do something with
 * https://decomp.me/scratch/NkhCu
 */
INCLUDE_ASM("asm/nonmatchings/hud", func_800285A4);
#if 0
int func_800285A4(int arg0) {
    int var_s3 = 0;
    int i;
    
    if (g_HudEntries[0].unk34 == 0 && g_HudEntries[0].unk14 == 0) {
        func_8002803C(0x40, 3, func_80027E40, func_80027A60, func_80029904, &D_8006C71C, 10000);
    }
    if (g_HudEntries[1].unk34 == 0 && g_HudEntries[1].unk14 == 0) {
        func_8002803C(0x41, 4, func_80027E40, func_80027B0C, func_80029BB0, &D_8006C784, 99);
    }
    if (g_HudEntries[2].unk34 == 0 && g_HudEntries[2].unk14 == 0) {
        func_8002803C(0x42, 5, func_80027E40, func_80027A60, func_80029904, &D_8006C660, 150);
    }
    
    for (i = 0; i < 8; i++) {
        HudEntry* hud = &g_HudEntries[i];
        
        if ((hud->unk38 & 0x10) || (g_Hud.mainHudIsOnScreen != 0)) {
            hud->unk44 = 10;
        }
        
        if (D_8006C598 == 0xFF) {
            hud->movementFrame = 50;
        }
        
        if (g_Hud.DAT_800719d4 != 0 || D_8006C598 == 0xFF || hud->unk44 <= 0 || hud->isOffScreen || !arg0 || (!(D_8006C74C == 0 && D_8006C64C == 0) && !(g_HudEntries[i].unk38 & 0x20)) ) {
            if (hud->movementFrame > 100) {
                hud->movementFrame = 0;
            }
            else if (hud->movementFrame > 50) {
                hud->movementFrame = 100 - hud->movementFrame;
            }
            
            if ((hud->movementFrame < 50) && (hud->movementFrame += deltaTime, hud->movementFrame < 50)) {
                var_s3 = 1;
            } else {
                hud->movementFrame = 50;
                hud->unk44 = 0;
            }
        } else if ( ((D_8006C74C == 0 && D_8006C64C == 0) || g_HudEntries[i].unk38 & 0x20) && (var_s3 = 1, D_8006C598 == 0 || hud->movementFrame != 50) ) {
            if (hud->movementFrame != 0) {
                if (hud->movementFrame < 50) {
                    hud->movementFrame = 100 - hud->movementFrame;
                }
                
                hud->movementFrame = hud->movementFrame + deltaTime;
                
                if (hud->movementFrame >= 110) {
                    hud->movementFrame = 0;
                }
            } else {
                hud->unk44 -= deltaTime;
            }
        }
        
        if ((hud->isOffScreen != 0) && (hud->movementFrame == 50)) {
            func_80028264(hud);
        }
        
        hud->unk1C.frame = func_80028378(&hud->unk1C, 0);
        
        if (arg0 && hud->unk30 != 0) {
            hud->unk30(hud);
        }
    }
    g_Hud.DAT_800719d4 = 0;
    return var_s3;
}
#endif

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
    
    if (!(arg0->displayMode & 1)) {
        if (arg0->displayMode & 2) {
            *arg2 -= temp_a3;
        } else {
            *arg2 -= (temp_v1 >> 1);
        }
    } else {
        *arg2 += temp_a3;
    }
    
    if (!(arg0->displayMode & 4)) {
        if (arg0->displayMode & 8) {
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

/*
 * ???() - func_8009A00 - MATCHING
 * https://decomp.me/scratch/hwKcy
 */
void func_80029A00(HudEntry* hudEntry) {
    int sp10;
    int sp14;
    int sp18;
    int sp1C;
    int sp20;

    sp10 = (int) hudEntry->unk0;
    sp14 = (int) hudEntry->unk2;
    if (hudEntry->movementFrame != 0) {
        sp18 =  (hudEntry->movementFrame + 0xA) >> 1;
    } else {
        sp18 = 0;
    }
    func_80029674(hudEntry, &sp10, &sp14);
    sp1C = sp10;
    sp20 = sp14;
    func_80029708(hudEntry, &sp18, &sp1C, &sp20);
    func_800291B8(hudEntry->unk40, sp10, sp14, sp18);
}

INCLUDE_ASM("asm/nonmatchings/hud", func_80029AA0);

INCLUDE_ASM("asm/nonmatchings/hud", func_80029BB0);

INCLUDE_ASM("asm/nonmatchings/hud", func_80029CF8);

INCLUDE_ASM("asm/nonmatchings/hud", func_80029E48);

/**
 * ???() - func_8002A580()
 * WIP
 * https://decomp.me/scratch/gamSH
 */
// INCLUDE_ASM("asm/nonmatchings/hud", func_8002A580);
void func_8002A580(void) {
    SpriteData* var_a0;
    int var_a1;
    int var_a2;
    if (D_8006E344 == 4) {
        return;
    }
    if (D_8006C5BC == 0x2C && D_80071A04 != 0 && D_8006E344 == 0) {
        var_a1 = D_800714F4 - 0x10;
        var_a2 = D_800714F8 - 0xB;
        var_a0 = (SpriteData*)((short*)D_8006C788 + (D_800719CA * 8));
        func_800289C8(var_a0, var_a1, var_a2);
    }
    else if ((D_8006C5BC == 0x19) && (D_8006FA3C == 3) && ((D_8006E344 == 0) || (D_8006E344 == 4))
    ) {
        var_a1 = D_800714F4 - 0x10;
        var_a2 = D_800714F8 - 0xB;
        var_a0 = (SpriteData*)((short*)D_8006C788 + (D_800719CA * 8));
        func_800289C8(var_a0, var_a1, var_a2);
    } else {
        var_a1 = 0xF0;
        if (D_8006C768 != 0) {
            var_a2 = 0x6D;
            var_a0 = (SpriteData*)((short*)D_8006C788 + (D_800719CA * 8));
            func_800289C8(var_a0, var_a1, var_a2);
        }
    }
}

/**
 * ???() - func_8002A6B4() - MATCHING
 * https://decomp.me/scratch/CXdDl
 */
void func_8002A6B4() {
    PlaySound(g_SoundTablePtr->pauseEnter, 0, 0);
}

/**
 * ???() - func_8002A6E4() - MATCHING
 * https://decomp.me/scratch/Mck3B
 */
void func_8002A6E4() {
    PlaySound(g_SoundTablePtr->pauseExit, 0, 0);
}

/**
 * ???() - func_8002A714() - MATCHING
 * https://decomp.me/scratch/omnBk
 */
void func_8002A714() {
    int sound = PlaySound(g_SoundTablePtr->pauseMove, 0, 0); 
    if (sound >= 0) {
        func_8003C140(sound, 0x640);
    }
}

/**
 * ???() - func_8002A754() - MATCHING
 * https://decomp.me/scratch/0JDAC
 */
void func_8002A754() {
    int sound = PlaySound(g_SoundTablePtr->changeVolume, 0, 0); 
    if (sound >= 0) {
        func_8003C140(sound, 0xC00); 
    }
}
