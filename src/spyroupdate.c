#include "common.h"
#include "ovl_header.h"
#include "spu.h"
#include "spyro.h"

extern int D_8006C58C; // level index    
extern char D_80067968[40][4]; // WalkingSoundIdPerSurface... maybe a struct array?

///////////////////////////////////////////////////////////////////////////////

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8003E83C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8003E968);

// Apply surface effects
// There's a bunch of surface functions here
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8003F194);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8003F6F4);

// Run surface type function
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8003FD58);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800408B8);

/**
 * ???() - func_80040954()
 * Roughly equivalent to func_80057380 from spyro-1
 * Checks if the surface is a special surface, and returns its type
 * D_8006D048 struct updated
 * https://decomp.me/scratch/cwjZ4
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80040954);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80040994);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80040BCC);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80040D10);

/**
 * ???() - func_80040F48() - MATCHING
 * Just needs variable cleanups / labelling
 * https://decomp.me/scratch/kqmRi
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80040F48);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800410F8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80041404);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80041580);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800416F4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800417FC);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80041848);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80041930);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80041AE8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80041B64);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80041C20);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80042A44);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80042F64);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80043194);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80043728);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800438F4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80043A38);

/**
 * ???() - func_80043ABC() - MATCHING
 * Aligns Spyro's angles to something
 * https://decomp.me/scratch/APNca
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80043ABC);

/**
 * ???() - func_80043E00() - MATCHING
 * Aligns Spyro's angles to something
 * https://decomp.me/scratch/rKluO
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80043E00);

/**
 * AlignSpyroToLadder() - func_80043F3C() - MATCHING
 * https://decomp.me/scratch/Y8ufi
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80043F3C);

/**
 * ???() - func_800441F0() - MATCHING
 * https://decomp.me/scratch/31veX
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800441F0);

/**
 * ???() - func_80044240() - MATCHING
 * https://decomp.me/scratch/K5K7t
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80044240);

/**
 * ???() - func_800443A4() - MATCHING
 * https://decomp.me/scratch/dIIES
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800443A4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800443EC);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80044514);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800445F8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80044C28);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80044CF0);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800451C4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800458F8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80045D70);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80046FF8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80047138);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80047190);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800473E4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80047C7C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80047D00);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80047E6C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80048210);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80048444);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800486FC);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80048948);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800489CC);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800491F4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800492DC);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80049484);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800494A8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80049590);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80049688);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800498C0);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80049ACC);

// has overlay version in "animation.c"
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80049D70);

// has overlay version in "animation.c"
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8004B324);

/**
 * PlaySpyroSounds() - func_8004BA6C() - MATCHING
 * Exe version of the PlaySpyroSounds from overlay
 * https://decomp.me/scratch/yR0vS
 */
void PlaySpyroSounds() {
    int animationId;
    int animationFrame;

    if (g_Spyro.unk20a != 0) {
        animationId = g_Spyro.critterMobyPtr->animationState.id;
        switch (g_Spyro.critterMode) {
        case CRITTER_SHEILA:
            animationId += ANIMATION_STATE_SHEILA_IDLE;
            break;
        case CRITTER_BENTLEY:
            animationId += ANIMATION_STATE_BENTLEY_IDLE;
            break;
        case CRITTER_SGT_BYRD:
            animationId += ANIMATION_STATE_SGT_BYRD_IDLE;
            break;
        case CRITTER_AGENT_9:
            animationId += ANIMATION_STATE_AGENT_9_IDLE;
            break;
        case CRITTER_BENTLEY_BOXING:
            animationId += ANIMATION_STATE_BENTLEY_BOXING_IDLE;
            break;
        case CRITTER_SUBS:
            animationId += ANIMATION_STATE_SUB_IDLE;
            break;
        case CRITTER_SPARX:
            animationId += ANIMATION_STATE_SPARX_IDLE;
            break;
        case CRITTER_HUNTER_4:
            animationId += ANIMATION_STATE_HUNTER_4_FLY;
            break;
        case CRITTER_HUNTER_3:
            animationId += ANIMATION_STATE_HUNTER_3_IDLE;
            break;
        case CRITTER_HUNTER_1:
            animationId += ANIMATION_STATE_HUNTER_1_PLANE;
            break;
        }
        animationFrame = g_Spyro.critterMobyPtr->animationState.frame;
    }
    else {
        animationId = g_Spyro.bodyAnimation.id;
        animationFrame = g_Spyro.bodyAnimation.frame;
    }
    
    if (g_Spyro.movementState == MOVEMENT_STATE_SWIM_UNDERWATER || g_Spyro.movementState == MOVEMENT_STATE_SWIM_CHARGE) {
        if (func_8003BF6C(g_SoundTablePtr->underwater, g_Spyro.unk22[4]) == 0) {
            g_Spyro.unk22[4] = PlaySound(g_SoundTablePtr->underwater, 0, 4);
        }
    }
    else if (func_8003BF6C(g_SoundTablePtr->underwater, g_Spyro.unk22[4]) != 0) {
        func_8003BE70(g_Spyro.unk22[4]);
        g_Spyro.unk22[4] = -1;
    }
    
    if (g_Spyro.unk22[6] != animationFrame) {
        switch (animationId) {
        case ANIMATION_STATE_TIPTOE:
            if (animationFrame == 5 || animationFrame == 13) {
                int surface = g_Spyro.unk11[2] >> 6;
                func_8003BB10(0, D_80067968[D_8006C58C][surface], 0);
                g_Spyro.unk22[6] = animationFrame;
            }
            break;
        case ANIMATION_STATE_RUN:
            if (animationFrame == 7 || animationFrame == 9 || animationFrame == 17 || animationFrame == 0) {
                int surface = g_Spyro.unk11[2] >> 6;
                func_8003BB10(0, D_80067968[D_8006C58C][surface], 0);
                g_Spyro.unk22[6] = animationFrame;
            }
            break;
        case ANIMATION_STATE_BONK:
            {
                int handler;
                if (animationFrame == 2 || animationFrame == 5) {
                    handler = PlaySound(g_SoundTablePtr->spyroStop, 0, 0);
                    g_Spyro.unk22[6] = animationFrame;
                    if (handler >= 0 && animationFrame == 5) {
                        func_8003C140(handler, 0xC00);
                        func_8003C0B0(handler, 0xE00);
                    }
                }
                break;
            }
        case ANIMATION_STATE_HURT:
            {
                int handler;
                if (animationFrame == 11 || animationFrame == 14) {
                    handler = PlaySound(g_SoundTablePtr->spyroStop, 0, 0);
                    g_Spyro.unk22[6] = animationFrame;
                    if (handler >= 0) {
                        if (animationFrame == 14) {
                            func_8003C140(handler, 0xC00);
                            func_8003C0B0(handler, 0xE00);
                        }
                    }
                }
                break;
            }
        case 2:
            if (animationFrame == 2 || animationFrame == 12) {
                int surface = g_Spyro.unk11[2] >> 6;
                func_8003BB10(0, D_80067968[D_8006C58C][surface], 0);
                g_Spyro.unk22[6] = animationFrame;
            }
            break;
        case ANIMATION_STATE_DEATH_FALL_OVER:
            {
                int handler;
                if (animationFrame == 12 || animationFrame == 20) {
                    handler = PlaySound(g_SoundTablePtr->spyroStop, 0, 0);
                    g_Spyro.unk22[6] = animationFrame;
                    if (handler >= 0) {
                        if (animationFrame == 20) {
                            func_8003C140(handler, 0xC00);
                            func_8003C0B0(handler, 0xE00);
                        }
                    }
                }
                break;
            }
        default:
            if (g_PlaySpyroSounds != 0) {
                g_PlaySpyroSounds();
            }
            break;
        }
    }
    
    if (animationFrame != g_Spyro.unk22[6]) {
        g_Spyro.unk22[6] = -1;
    }
}

/**
 * AlignSpyroRotation() - func_8004BDF0() - MATCHING
 * Exe version of the align Spyro rotation function from overlay
 * https://decomp.me/scratch/wthTK
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8004BDF0);

/**
 * UpdateMovementState() - func_8004BEF8() - MATCHING
 * Ready to add, but there's some oddities in here
 * https://decomp.me/scratch/RSA1r
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8004BEF8);

// has overlay version in "animation.c"
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8004CCA0);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8004E4E4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8004E56C);
