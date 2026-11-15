#include "common.h"
#include "ovl_header.h"
#include "moby_props.h"
#include "mobyutil.h"
#include "stdutil.h"

extern void func_80055B18(Moby*); // kill moby
extern short g_Cos[0x100]; // 80065920

/**
 * MobyUpdate_245() - MATCHING
 * https://decomp.me/scratch/ZwoM1
 */

void MOBYUPDATE(245) (Moby* pMoby) {
    Vector3D v;
    MobyVars245* pVars = (MobyVars245*)pMoby->mobyTag;
    
    if (func_800359A4(&pVars->unkC, 4)) {
        func_80055B18(pMoby);
        return;
    }
    func_8004F178(&v, &pVars->unk0);
    v.z += 32;
    func_8004EF04(&v, 8);
    func_8004F1C8(&pVars->unk0, &pVars->unk0, &v);
    func_8004F194(&pMoby->position, &pMoby->position, &pVars->unk0);
    pMoby->angle.roll = g_Cos[(char)(pVars->unkC * 4)] >> 7;
}
