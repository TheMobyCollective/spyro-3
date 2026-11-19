#include "common.h"
#include "ovl_header.h"
#include "mobyutil.h"

/**
 * MobyUpdate_359() - MATCHING
 * https://decomp.me/scratch/edIq1
 */

void MOBYUPDATE(359) (Moby* pMoby) {
    if (pMoby->animationState.id != 0) {
        func_80039714(pMoby);
    }
}
