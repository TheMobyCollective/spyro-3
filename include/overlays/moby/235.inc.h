#include "common.h"
#include "ovl_header.h"
#include "moby_props.h"
#include "globals.h"
#include "mobyutil.h"

Moby* func_800391E8(int, int, Moby*, int, int, int, int); // spawn egg fragments?

/**
 * MobyUpdate_235() - MATCHING
 * https://decomp.me/scratch/FERsW
 */

void MOBYUPDATE(235) (Moby* pMoby) {
    MobyVars235* pVars = (MobyVars235*)pMoby->mobyTag;
    if ((pMoby->substate == 0) && (pVars->unkC <= 0)) {
        int i;
        pMoby->substate = 0x70;

        for (i = 0; i < 4; i++) {
            Moby* pFragment;
            if (D_8006C578 - D_8006C574 <= 20) break;
            pFragment = func_800391E8(1, pMoby->mobyClass, pMoby, 0, 2, 0x40, 0x100);
            if (pFragment != nullptr) {
                pFragment->substate = 1;
                pFragment->size = 0x7F;
            }
        }
    }
    func_80039714(pMoby);
}