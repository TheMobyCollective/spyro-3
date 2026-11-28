#include "common.h"
#include "ovl_header.h"
#include "moby_props.h"
#include "globals.h"
#include "mobyutil.h"

extern void func_80055B18(Moby*); // fDeleteMoby

/**
 * MobyUpdate_541() - MATCHING
 * https://decomp.me/scratch/F3OvV
 */

void MOBYUPDATE(541) (Moby* pMoby) {
    int temp_v0;
    MobyVars541* pVars = (MobyVars541*)pMoby->mobyTag;
    
    if (func_800359A4(&pVars->unk0, 4) != 0) {
        func_80055B18(pMoby);
    }
    
    temp_v0 = 0x10 - pVars->unk0;
    MIN(temp_v0, 0);
    pMoby->colour.a = temp_v0 + 0x30;
    
    pMoby->size -= D_8006C648 * 6;
    if (pMoby->size >= 0x80) {
        pMoby->size = 0;
    }
    MIN(pMoby->size, 0x18);
}