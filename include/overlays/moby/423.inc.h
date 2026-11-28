#include "common.h"
#include "ovl_header.h"
#include "mobyutil.h"

extern void func_80055B18(Moby*); // fDeleteMoby
extern void func_80055D24(Moby*, int); // fUpdateMobyCollision

/**
 * MobyUpdate_423() - MATCHING
 * https://decomp.me/scratch/c75M1
 */

void MOBYUPDATE(423) (Moby* pMoby) {
    if (pMoby->state == 50) {
        func_80055B18(pMoby);
    } else if (func_80039714(pMoby)) {
        func_80055D24(pMoby, 4);
        func_800369B8(pMoby, 0x20);
        SpawnParticle(8, 70, &pMoby->position, (Vector3D*)0x10);
        func_80055B18(pMoby);
    }
}