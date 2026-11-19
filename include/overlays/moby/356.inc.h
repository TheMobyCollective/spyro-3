#include "common.h"
#include "ovl_header.h"

extern void func_80055B18(Moby*); // fDeleteMoby

/**
 * MobyUpdate_356() - MATCHING
 * https://decomp.me/scratch/thsVJ
 */

void MOBYUPDATE(356) (Moby* pMoby) {
    switch (pMoby->state) {
    case 0:
        pMoby->size -= 8;
        if (pMoby->size <= 0x20) {
            pMoby->size = 0;
            pMoby->state = 1;
        }
        break;
        
    case 1:
        if (pMoby->substate != 0) {
            pMoby->size = 0x21;
            pMoby->state = 2;
        }
        break;
        
    case 2:
        pMoby->size += 8;
        if (pMoby->size >= 0x7F) {
            func_80055B18(pMoby);
        }
        break;
    }
}
