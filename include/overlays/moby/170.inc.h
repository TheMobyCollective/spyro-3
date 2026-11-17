#include "common.h"
#include "ovl_header.h"
#include "moby_props.h"
#include "globals.h"
#include "camera.h"
#include "spyro.h"
#include "stdutil.h"

extern void func_80055B18(Moby*); // fDeleteMoby

/**
 * MobyUpdate_170() - MATCHING
 * https://decomp.me/scratch/azKar
 */

void MOBYUPDATE(170) (Moby* pMoby) {
    MobyVars170* pVars = (MobyVars170*)pMoby->mobyTag;

    pMoby->angle.yaw = (g_Camera.unk48 >> 4) - 0x80;
    pMoby->angle.pitch = g_Camera.unk46 >> 4;
    if (pVars->unk0 == 1) {
        if (pVars->unk4->state >= 0x80 || pVars->unk4->mobyClass != pVars->unk1) {
            func_80055B18(pMoby);
            return;
        }
        if (pVars->unk4->mobyClass == 120) {
            pMoby->size -= (D_8006C648 * 4);
            MIN(pMoby->size, 26);
            if ((g_Spyro.movementState != MOVEMENT_STATE_SWIM_UNDERWATER && g_Spyro.movementState != MOVEMENT_STATE_SWIM_CHARGE) || !pVars->unk4->drawn) {
                MobyTag_120* pSparxVars = (MobyTag_120*)pVars->unk4->mobyTag;
                pSparxVars->unkA = 0;
                func_80055B18(pMoby);
                return;
            }
        }
        func_8004F178(&pMoby->position, &pVars->unk4->position);
        pMoby->position.z += pVars->unk2;
    }
}
