#include "common.h"
#include "ovl_header.h"
#include "moby_props.h"
#include "globals.h"

extern void func_80055B18(Moby*); // fDeleteMoby

/**
 * MobyUpdate_426() - MATCHING
 * https://decomp.me/scratch/yErzq
 */

void MOBYUPDATE(426) (Moby* pMoby) {
    Colour col;
    int temp_a1;
    MobyVars426* pVars = (MobyVars426*)pMoby->mobyTag;
    
    pVars->unk0 += D_8006C648;
    if (pVars->unk0 >= 30) {
        func_80055B18(pMoby);
        return;
    }
    
    temp_a1 = ((30 - pVars->unk0) << 8) / 30;
    col.r = (temp_a1 * pVars->unk4[pMoby->substate].r) >> 8;
    col.g = (temp_a1 * pVars->unk4[pMoby->substate].g) >> 8;
    col.b = (temp_a1 * pVars->unk4[pMoby->substate].b) >> 8;
    pMoby->size = temp_a1;
    pMoby->angle.yaw = (pMoby->substate << 8) / 6;
    pMoby->colour.r = col.r;
    pMoby->colour.g = col.g;
    pMoby->colour.b = col.b;
    pMoby->colour.a = 0;
    pMoby->lowDrawDistance = 0x10;
}