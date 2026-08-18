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

// Levels 10 to 12 confirmed in decomp.me so far, none confirmed with a build
// https://decomp.me/scratch/HatAh
// https://decomp.me/scratch/WDEnn
// https://decomp.me/scratch/CMQIW

// The following levels will have no cases:
// 16, 18, 28, 38, 40, 48
// Issues:
// * 16 is currently defined as a swimming level, this is likely not considered the case

// The following levels are likely similar but probably not all identical (103 lines, likely single cases):
// 10, 12, 14, 17, 25, 27, 35, 45, 47

// The following levels are likely similar or identical (112 lines, likely two cases):
// 26, 36, 46

// The following levels are likely similar or identical (119 lines, likely two cases):
// 11, 32, 37
// 11 and 32 are both swimming / skateboarding levels and are thus candidates for perfect matches
// 37 is probably different

// 131 lines
// 13, 22, 24, 41

// 136 lines
// 21, 50

// 190 lines
// 30, 43, 44

// Remaining levels are unique

#if (LEVEL_ID == 10) || (LEVEL_ID == 11) || (LEVEL_ID == 14) || (LEVEL_ID == 15) \
 || (LEVEL_ID == 16) || (LEVEL_ID == 20) || (LEVEL_ID == 21) || (LEVEL_ID == 23) \
 || (LEVEL_ID == 24) || (LEVEL_ID == 25) || (LEVEL_ID == 30) || (LEVEL_ID == 32) \
 || (LEVEL_ID == 35) || (LEVEL_ID == 41) || (LEVEL_ID == 43) || (LEVEL_ID == 44) \
 || (LEVEL_ID == 45)
    #define IS_SWIMMING_LEVEL
#endif

#if (LEVEL_ID == 11) || (LEVEL_ID == 22) || (LEVEL_ID == 32) || (LEVEL_ID == 50)
    #define IS_SKATEBOARDING_LEVEL
#endif

// Assuming level 26, but this may be different in practice
#if (LEVEL_ID == 12) || (LEVEL_ID == 13) || (LEVEL_ID == 17) || (LEVEL_ID == 26) \
 || (LEVEL_ID == 27) || (LEVEL_ID == 30) || (LEVEL_ID == 33) || (LEVEL_ID == 37) \
 || (LEVEL_ID == 42) || (LEVEL_ID == 47)
    #define IS_FIRE_LAVA_LEVEL
#endif

// WIP - taken from decomp.me on August 18th 2026
void NAME_OVERLAY_FUNCTION(UnnamedOverlayFunction_Animation3) (void) {
    int animationId;
    int animationFrame;

    if (spyro.unk20a != 0) {
        // convert critter animation ID to Spyro equivalent? At least relative to swim
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

    // For some levels this will be empty which should result in the whole function being empty
    switch (animationId) {

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
    
    #ifdef IS_FIRE_LAVA_LEVEL
    case ANIMATION_STATE_DEATH_BURN:
        if (animationFrame == 13) {
            PlaySound(g_SoundTablePtr->lavaDeath, 0, 0);
            spyro.unk22[6] = animationFrame;
        }
        break;
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
