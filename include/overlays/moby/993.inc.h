#include "common.h"
#include "ovl_header.h"
#include "moby_props.h"
#include "environment.h"

extern void func_80055B18(Moby*); // fDeleteMoby
extern char D_80070300[40]; // eggs collected bitmask array
extern char D_80066FCC[]; // level ID to level index

/**
 * MobyUpdate_993() - MATCHING
 * Checks if primary egg is collected and runs a world animation if so
 * https://decomp.me/scratch/ka1UL
 */

void MOBYUPDATE(993) (Moby* pMoby) {
    MobyVars993* pVars = (MobyVars993*)pMoby->mobyTag;
    
    if (D_80070300[D_80066FCC[pVars->unk0]] & 1) {
        func_80021ED8(pVars->unk4, 0xFC, 0);
    }
    func_80055B18(pMoby);
}