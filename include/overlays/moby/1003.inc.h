#include "common.h"
#include "ovl_header.h"
#include "spyro.h"

/**
 * MobyUpdate_1003() - MATCHING
 * Snow particle spawner
 * https://decomp.me/scratch/JOJzl
 */

#if LEVEL_ID == 50
    #define BASE_SNOW_RATE 2
#else
    #define BASE_SNOW_RATE 1
#endif

void MOBYUPDATE(1003) (Moby* pMoby) {
    #if LEVEL_ID == 21
    if ((g_Spyro.animationState == ANIMATION_STATE_SWIM_UNDERWATER)
     || (g_Spyro.animationState == ANIMATION_STATE_SWIM_TURN_UNDERWATER)
     || (g_Spyro.animationState == ANIMATION_STATE_SWIM_CHARGE_UNDERWATER)) {
        return;
    }
    #endif
    if (pMoby->substate == 0) {
        SpawnParticle(64 * BASE_SNOW_RATE, 14, (Vector3D*)1, (Vector3D*)nullptr);
        pMoby->substate = 1;
    }
    else {
        SpawnParticle(BASE_SNOW_RATE, 14, (Vector3D*)nullptr, (Vector3D*)nullptr);
    }
}