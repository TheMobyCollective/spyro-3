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

// Slightly trickier but should be easier when more of them are done, similar to the below
// 10 https://decomp.me/scratch/zKlCP
// 11 https://decomp.me/scratch/ruiMl - NON-MATCHING - probably needs some case rearrangement, also has some notes about various variables / structs
// 37 https://decomp.me/scratch/IDsIj

// Most recent is 11
// Seems to have some of the strange cases that the function below does, so can probably reuse the same macros (confirm though)

// 11 to finish
// 12 - 36; 38 - 50; 61 - 80 TODO
// cutscenes are likely all the same, probably just an instant return

//////////////////////////////////////////////////////////////////////////////////
// Function 3 (Spyro and critter animation sounds)

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

/**
 * PlaySpecialAnimationSounds() - MATCHING
 * Unsure on name - maybe PlaySpecialWalkSounds?
 * https://decomp.me/scratch/E3MhZ
 */
void NAME_OVERLAY_FUNCTION(PlaySpecialAnimationSounds) (void) {
    int animationId;
    int animationFrame;

    if (spyro.unk20a != 0) {
        animationId = spyro.critterMobyPtr->animationState.id;
        switch (spyro.critterMode) {
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
    case ANIMATION_STATE_LADDER_RIGHT:
    case ANIMATION_STATE_LADDER_LEFT:
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
    case ANIMATION_STATE_BENTLEY_WALK_START:
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
    case ANIMATION_STATE_SGT_BYRD_WALK:
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
    case ANIMATION_STATE_AGENT_9_WALK:
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

// requires changing the Spyro animation state to an int
// also some of these have updated animation states

// Sometimes you need to add in a pair of redundant break cases to make it match
// 10 https://decomp.me/scratch/4KNXz
// 11 https://decomp.me/scratch/GJ9gX
// 12 https://decomp.me/scratch/pcTDp
// 13 https://decomp.me/scratch/M03HV
// 14 https://decomp.me/scratch/ysWCq
// 15 https://decomp.me/scratch/jEIyz
// 16 https://decomp.me/scratch/LsvA9
// 17 https://decomp.me/scratch/yLjTm
// 18 https://decomp.me/scratch/KOGtp

// Most recent is 18 - this has some new case names for the enum
// 20 - 50; 61 - 80 TODO
// Cutscenes are likely all the same; just the pad store

//////////////////////////////////////////////////////////////////////////////////
// Function 5 (set Spyro state)

// 10 https://decomp.me/scratch/0p1lS NON-MATCHING
// 11 https://decomp.me/scratch/yW76j NON-MATCHING WIP
// 12 https://decomp.me/scratch/DGeBR matches but could use some variable clean up and macros

// This one isn't too bad to match, though there's a Sheila case in 10 I'm struggling with

// For these I've split part of the Spyro struct into a union of structs
// If this ends up being the right approach it'll mean a lot of renaming
// These could be movement related structs - see how 8007046C onwards looks in-game

// Based on similar issues in Camera functions, the issue seems to be that
// superfly uses part of Spyro's struct differently!

// 10 - 50; 61 - 80 TODO

//////////////////////////////////////////////////////////////////////////////////
// Function 6 TODO

// 10 https://decomp.me/scratch/Ck2ls NON-MATCHING

// Not an easy match, lots of if statements

// 10 - 50; 61 - 80 TODO

#endif
