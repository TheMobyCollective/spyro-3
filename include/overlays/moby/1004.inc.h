#include "common.h"
#include "ovl_header.h"
#include "moby_props.h"
#include "globals.h"

extern int rand(); // rand

/**
 * MobyUpdate_1004() - MATCHING
 * Rain particle spawner
 * https://decomp.me/scratch/aJAZ5
 */

void MOBYUPDATE(1004) (Moby* pMoby) {
    MobyVars1004* pVars = (MobyVars1004*)pMoby->mobyTag;
    if (pVars->unk0 == 0 || pMoby->substate != 0) {
        #if LEVEL_ID == 12
        if (D_8006C5C8 == 2) {
            SpawnParticle(3, 69, (Vector3D*)nullptr, (Vector3D*)nullptr);
        }
        else {
            SpawnParticle(2, 69, (Vector3D*)nullptr, (Vector3D*)nullptr);
        }
        #elif LEVEL_ID == 23
        SpawnParticle((rand() & 1) + 1, 69, (Vector3D*)nullptr, (Vector3D*)nullptr);
        #endif
    }
}