#include "common.h"
#include "ovl_header.h"
#include "globals.h"

extern void func_80055B18(Moby*); // fDeleteMoby

/**
 * MobyUpdate_412() - MATCHING
 * https://decomp.me/scratch/Mc8PA
 */

void MOBYUPDATE(412) (Moby* pMoby) {
    if (D_8006C770) {
        func_80055B18(pMoby);
    }
}