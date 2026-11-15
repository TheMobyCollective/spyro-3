#include "common.h"
#include "ovl_header.h"
#include "moby_props.h"
#include "globals.h"

extern void func_80055B18(Moby*); // kill moby
extern short g_Cos[0x100]; // 80065920

/**
 * MobyUpdate_265() - MATCHING
 * Portal text letters
 * https://decomp.me/scratch/f6rLY
 */

void MOBYUPDATE(265) (Moby* pMoby) {
    MobyVars265* pVars = (MobyVars265*)pMoby->mobyTag;
    
    if (pMoby->state != pVars->unk0->state) {
        func_80055B18(pMoby);
        return;
    }
    if (pMoby->animationState.id == 0) {
        pMoby->angle.yaw += 6;
        return;
    }
    pMoby->angle.yaw = pVars->unk4 + ((g_Cos[(char)((pVars->unk5 + D_8006C644) * 4)] * 3) >> 9);
}
