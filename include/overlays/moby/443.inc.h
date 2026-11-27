#include "common.h"
#include "ovl_header.h"
#include "moby_props.h"
#include "globals.h"
#include "mobyutil.h"

extern void func_80055B18(Moby*); // fDeleteMoby
extern char D_80070300[40]; // eggs collected bitmask array

/**
 * MobyUpdate_443() - MATCHING
 * https://decomp.me/scratch/iE6lE
 */

void MOBYUPDATE(443) (Moby* pMoby) {
    MobyVars443* pVars = (MobyVars443*)pMoby->mobyTag;
    
    switch (pMoby->state) {
    case 0:
        if (D_8006C550[pVars->unk8].state & 0x80 || D_8006C7B4 & 1 || D_80070300[g_LevelIndex] & 1) {
            func_80055B18(pMoby);
        }
        break;
        
    case 1:
        if (func_80035A80(pMoby, pVars->unk0, 0x100, 375, 0, 6, 0x40, 0x20004) & 2) {
            func_80055B18(pMoby);
        }
        break;
    }
}