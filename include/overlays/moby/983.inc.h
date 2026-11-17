#include "common.h"
#include "ovl_header.h"
#include "moby_props.h"
#include "globals.h"
#include "spyro.h"
#include "mobyutil.h"

extern void func_80055B18(Moby*); // fDeleteMoby

/**
 * MobyUpdate_983() - MATCHING
 * https://decomp.me/scratch/muFir
 */

void MOBYUPDATE(983) (Moby* pMoby) {
    MobyVars983* pVars = (MobyVars983*)pMoby->mobyTag;
    
    if (D_8006C550[pVars->unk18].state & 0x80) {
        func_80055B18(pMoby);
    }
    else if ((g_Spyro.movementState == 5 || g_Spyro.movementState == 6) && (func_80036220(&g_Spyro.position, &pVars->box, 0, 0) != 0)) {
        g_Spyro.unk17a = 0x10000080;
        g_Spyro.unk20[1] = 0x12;
    }
}
