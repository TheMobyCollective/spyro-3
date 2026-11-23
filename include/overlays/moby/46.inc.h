#include "common.h"
#include "ovl_header.h"
#include "moby_props.h"
#include "globals.h"
#include "mobyutil.h"
#include "savepoint.h"

extern void func_80055B18(Moby*); // fDeleteMoby
extern void func_80055D24(Moby*, int); // fUpdateMobyCollision

/**
 * MobyUpdate_46() - MATCHING
 * Code shared by multiple fodder mobys
 * Lost Fleet hermit crab (46)
 * Sheila's Alp duck (113)
 * Cloud Spires duck (228)
 * Icy Peak duck (302)
 * https://decomp.me/scratch/VQHj5
 */

void MOBYUPDATE(46) (Moby* pMoby) {
    MobyVars46* pVars = (MobyVars46*)pMoby->mobyTag;
    
    if ((pMoby->state != 3) && (pMoby->damageFlags != 0)) {
        if (pMoby->mobyClass == 46) {
            func_80038BF8(pMoby, &pVars->unk18, 8, 3);
            pVars->unk18.unk6 = 200;
            pVars->unk18.unk4 += 100;
        } else {
            func_80038BF8(pMoby, &pVars->unk18, 0, 3);
            pVars->unk18.unk6 = 150;
        }
        SpawnMoby(16, pMoby);
        pMoby->unknownCollision = 0;
    }

    switch (pMoby->state) {
    case 0:
    case 1:
        if (D_8006C770 != 0) {
            pVars->unk30 = func_8003636C(90, 300);
            pMoby->state = 2;
            func_80034F40(pMoby, 2);
        }
        break;
    case 2:
        func_80037168(pMoby, &pVars->unk0, 87);
        if (func_800359A4(&pVars->unk30, 4) != 0) {
            if (pVars->unk34 != 0) {
                pVars->unk34--;
                pMoby->state = 0;
                func_80034F40(pMoby, 0);
            }
            else {
                pVars->unk34 = func_8003636C(2, 4);
                pMoby->state = 1;
                func_80034F40(pMoby, 1);
            }
        }
        break;
    case 3:
        if (func_80035194(pMoby, &pVars->unk18) == 256) {
            func_80055D24(pMoby, 4);
            func_8003BA00(pMoby);
            func_800369B8(pMoby, 0x20);
            func_80055B18(pMoby);
        }
        break;
    }
}