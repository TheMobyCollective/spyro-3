#ifndef __ANIMATION_INC_H
#define __ANIMATION_INC_H

// Should have a level ID passed into this

#include "ovl_header.h"
#include "spu.h"
#include "spyro.h"

// ovl_header.h will need to be updated to give the pointers to the functions in here more appropriate names

//////////////////////////////////////////////////////////////////////////////////
// Function 1 TODO

//////////////////////////////////////////////////////////////////////////////////
// Function 2 TODO

//////////////////////////////////////////////////////////////////////////////////
// Function 3 (Spyro and critter animation sounds)

// Some cases excluded due to repetition
// 10 https://decomp.me/scratch/HatAh
// 11 https://decomp.me/scratch/WDEnn
// 12 https://decomp.me/scratch/CMQIW
// 13 https://decomp.me/scratch/7MBYI
// 14 https://decomp.me/scratch/9jeXH
// 15 https://decomp.me/scratch/YLLhe
// 20 https://decomp.me/scratch/T3LWL
// 21 https://decomp.me/scratch/3l0K5
// 22 https://decomp.me/scratch/7dyJm
// 23 https://decomp.me/scratch/CVnqu
// 24 https://decomp.me/scratch/L1Ee8
// 26 https://decomp.me/scratch/Qb1Vq
// 30 https://decomp.me/scratch/hozW3
// 31 https://decomp.me/scratch/sqMbR
// 33 https://decomp.me/scratch/MOhh8
// 34 https://decomp.me/scratch/wzKHC
// 36 https://decomp.me/scratch/YkTJ2
// 37 https://decomp.me/scratch/qSPZb
// 42 https://decomp.me/scratch/akoSs
// 46 https://decomp.me/scratch/iinKq
// 50 https://decomp.me/scratch/E3MhZ // most recent, include this one as an example
// Worth checking all for notable comments when this is implemented



// Does not include 16, possibly because it's Sheila
// Does include 37 for some reason
#if (LEVEL_ID == 10) || (LEVEL_ID == 11) || (LEVEL_ID == 14) || (LEVEL_ID == 15) \
 || (LEVEL_ID == 20) || (LEVEL_ID == 21) || (LEVEL_ID == 23) || (LEVEL_ID == 24) \
 || (LEVEL_ID == 25) || (LEVEL_ID == 30) || (LEVEL_ID == 32) || (LEVEL_ID == 35) \
 || (LEVEL_ID == 37) || (LEVEL_ID == 41) || (LEVEL_ID == 42) || (LEVEL_ID == 43) \
 || (LEVEL_ID == 44) || (LEVEL_ID == 45) || (LEVEL_ID == 50)
    #define IS_SWIMMING_LEVEL
#endif

// Includes 33 for some reason
#if (LEVEL_ID == 11) || (LEVEL_ID == 22) || (LEVEL_ID == 32) || (LEVEL_ID == 33) \
 || (LEVEL_ID == 50)
    #define IS_SKATEBOARDING_LEVEL
#endif

// Does not include 26 or 30 - in 30, the fire makes Spyro do a different animation
#if (LEVEL_ID == 12) || (LEVEL_ID == 13) || (LEVEL_ID == 17) || (LEVEL_ID == 27) \
 || (LEVEL_ID == 33) || (LEVEL_ID == 37) || (LEVEL_ID == 42) || (LEVEL_ID == 47) \
 || (LEVEL_ID == 50)
    #define IS_FIRE_LAVA_LEVEL
#endif

#if (LEVEL_ID == 20) || (LEVEL_ID == 21) || (LEVEL_ID == 31)
    #define IS_ICE_LEVEL
#endif

#if (LEVEL_ID == 20) || (LEVEL_ID == 23) || (LEVEL_ID == 30) || (LEVEL_ID == 33) \
 || (LEVEL_ID == 34) || (LEVEL_ID == 42) || (LEVEL_ID == 43) || (LEVEL_ID == 44)
    #define IS_LADDER_LEVEL
#endif

#if (LEVEL_ID == 13) || (LEVEL_ID == 22) || (LEVEL_ID == 26) || (LEVEL_ID == 34)
    #define IS_SGT_BYRD_LEVEL
#endif

// 31 not included, boxing Bentley is considered separate and doesn't have any special sounds
#if (LEVEL_ID == 24) || (LEVEL_ID == 36) || (LEVEL_ID == 41)
    #define IS_BENTLEY_LEVEL
#endif

// 30 included for some reason? That makes it identical to 43's and 44's
#if (LEVEL_ID == 30) || (LEVEL_ID == 33) || (LEVEL_ID == 43) || (LEVEL_ID == 44) \
 || (LEVEL_ID == 46)
    #define IS_AGENT_9_LEVEL
#endif

// Unsure on name - maybe PlaySpecialWalkSounds?
void NAME_OVERLAY_FUNCTION(PlaySpecialAnimationSounds) (void) {
    int animationId;
    int animationFrame;

    if (spyro.unk20a != 0) {
        animationId = spyro.critterMobyPtr->animationState.id;
        switch (spyro.critterMode) {
        case CRITTER_SHEILA:
            animationId += 0x41;
            break;
        case CRITTER_BENTLEY:
            animationId += 0x55;
            break;
        case CRITTER_SGT_BYRD:
            animationId += 0x64;
            break;
        case CRITTER_AGENT_9:
            animationId += 0x73;
            break;
        case CRITTER_BENTLEY_BOXING:
            animationId += 0x87;
            break;
        case CRITTER_SUBS:
            animationId += 0x96;
            break;
        case CRITTER_SPARX:
            animationId += 0x98;
            break;
        case CRITTER_HUNTER_4:
            animationId += 0xA0;
            break;
        case CRITTER_HUNTER_3:
            animationId += 0xA5;
            break;
        }
        animationFrame = spyro.critterMobyPtr->animationState.frame;
    } else {
        animationId = spyro.bodyAnimation.id;
        animationFrame = spyro.bodyAnimation.frame;
    }
    
    switch (animationId) {

    #ifdef IS_ICE_LEVEL
    case ANIMATION_STATE_ICE_SKATE:
        {
            int handler;
            if (spyro.bodyAnimation.frame == 1 || spyro.bodyAnimation.frame == 6) {
                handler = PlaySound(g_SoundTablePtr->iceSkate, 0, 0);
                spyro.unk22[6] = spyro.bodyAnimation.frame;
                if (handler >= 0) {
                    if (spyro.bodyAnimation.frame == 6) {
                        func_8003C0B0(handler, 0x1190);
                    }
                }
            }
            break;
        }
    #endif
        
    #ifdef IS_SKATEBOARDING_LEVEL
    case ANIMATION_STATE_FALL_OFF_SKATEBOARD:
        if (animationFrame == 24) {
            PlaySound(g_SoundTablePtr->spyroSkid, 0, 0);
            spyro.unk22[6] = animationFrame;
        }
        break;
    #endif
        
    #ifdef IS_SWIMMING_LEVEL
    case ANIMATION_STATE_SWIM_MOVE_SURFACE:
        if (animationFrame == 1) {
            PlaySound(g_SoundTablePtr->waterPaddle, 0, 0);
            spyro.unk22[6] = animationFrame;
        }
        break;
    #endif

    #ifdef IS_LADDER_LEVEL
    case ANIMATION_STATE_LADDER_CLIMB:
        {
            int handler;
            if (animationFrame == 3 || animationFrame == 10) {
                handler = PlaySound(g_SoundTablePtr->spyroLand, 0, 0);
                spyro.unk22[6] = animationFrame;
                if (handler >= 0) {
                    if (animationFrame == 10) {
                        func_8003C0B0(handler, 0x1200);
                    }
                }
            }
            break;
        }
    case ANIMATION_STATE_UNK_33:
    case ANIMATION_STATE_UNK_34:
        {
            int handler;
            if (animationFrame == 1 || animationFrame == 3) {
                handler = PlaySound(g_SoundTablePtr->spyroLand, 0, 0);
                spyro.unk22[6] = animationFrame;
                if (handler >= 0 && animationFrame == 1) {
                    func_8003C140(handler, 0xC00);
                    func_8003C0B0(handler, 0x1200);
                }
            }
            break;
        }
    #endif

    #ifdef IS_FIRE_LAVA_LEVEL
    case ANIMATION_STATE_DEATH_BURN:
        if (animationFrame == 13) {
            PlaySound(g_SoundTablePtr->lavaDeath, 0, 0);
            spyro.unk22[6] = animationFrame;
        }
        break;
    #endif

    #ifdef IS_BENTLEY_LEVEL
    case 0x56:
        {
            int handler;
            if (animationFrame == 2 || animationFrame == 11) {
                handler = func_8003BABC(spyro.critterMobyPtr, 1, 0);
                spyro.unk22[6] = animationFrame;
                if (handler >= 0 && animationFrame == 11) {
                    func_8003C0B0(handler, 0x1200);
                }
            }
            break;
        }
    #endif    

    #ifdef IS_SGT_BYRD_LEVEL
    case 0x65:
        {
            int handler;
            if (animationFrame == 2 || animationFrame == 7) {
                handler = func_8003BABC(spyro.critterMobyPtr, 0, 0);
                spyro.unk22[6] = animationFrame;
                if (handler >= 0 && animationFrame == 7) {
                    func_8003C0B0(handler, 0x1200);
                }
            }
            break;
        }
    #endif

    #ifdef IS_AGENT_9_LEVEL
    case 0x74:
        {
            int handler;
            if (animationFrame == 10 || animationFrame == 19) {
                handler = func_8003BABC(spyro.critterMobyPtr, 0, 0);
                spyro.unk22[6] = animationFrame;
                if (handler >= 0) {
                    if (animationFrame == 19) {
                        func_8003C0B0(handler, 0x1200);
                    }
                }
            }
            break;
        }
    #endif
        
    }
}

//////////////////////////////////////////////////////////////////////////////////
// Function 4 TODO

// Levels 10 to 12 confirmed in decomp.me so far, none confirmed with a build
// https://decomp.me/scratch/4KNXz
// https://decomp.me/scratch/GJ9gX
// https://decomp.me/scratch/pcTDp

//////////////////////////////////////////////////////////////////////////////////
// Function 5 TODO

//////////////////////////////////////////////////////////////////////////////////
// Function 6 TODO

#endif
