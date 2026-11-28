#include "common.h"
#include "ovl_header.h"
#include "moby_props.h"
#include "globals.h"
#include "mobyutil.h"

extern void func_80055B18(Moby*); // fDeleteMoby

/**
 * MobyUpdate_482() - MATCHING
 * https://decomp.me/scratch/vrEat
 */

void MOBYUPDATE(482) (Moby* pMoby) {
    MobyVars482* pVars = (MobyVars482*)pMoby->mobyTag;
    
    if (func_800359A4(&pVars->unk0, 4) != 0) {
        func_80055B18(pMoby);
    }
    
    pMoby->colour.r = pVars->unk0 * 8;
    pMoby->colour.g = pVars->unk0 * 4;
    pMoby->size -= (D_8006C648 * 3);
    
    if (pMoby->size >= 0x80) {
        pMoby->size = 0;
    }
    MIN(pMoby->size, 14);
}