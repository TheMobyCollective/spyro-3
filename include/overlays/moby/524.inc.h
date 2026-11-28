#include "common.h"
#include "ovl_header.h"

extern void func_80055B18(Moby*); // fDeleteMoby

/**
 * MobyUpdate_524() - MATCHING
 * https://decomp.me/scratch/hPZwb
 */

void MOBYUPDATE(524) (Moby* pMoby) {
    switch (pMoby->state) {
    case 0:
        pMoby->angle.pitch = 0x40;
        pMoby->state = 1;
        break;
        
    case 1:
        if (pMoby->damageFlags & 0x800000) {
            pMoby->state = 2;
        }
        break;
        
    case 2:
        func_80055B18(pMoby);
        break;
    }
}