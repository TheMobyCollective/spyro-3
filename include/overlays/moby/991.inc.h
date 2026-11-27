#include "common.h"
#include "ovl_header.h"
#include "moby_props.h"
#include "mobyutil.h"
#include "savepoint.h"
#include "spyro.h"
#include "stdutil.h"

extern short g_Sin[0x100]; // sin
extern short g_Cos[0x100]; // cos

/**
 * MobyUpdate_991() - MATCHING
 * https://decomp.me/scratch/xTyTF
 */

void MOBYUPDATE(991) (Moby* pMoby) {
    BoxTag* pVars = (BoxTag*)pMoby->mobyTag;
    
    if (func_80036220(&g_Spyro.position, pVars, 0, 0x400)) {
        Vector3D v;
        char temp_s1;
        int temp_s2;
        MobyVars_Critter* pCritterVars = (MobyVars_Critter*)g_Spyro.critterMobyPtr->mobyTag;
        
        temp_s1 = pCritterVars->unk34 - 0x80;
        v.x = (g_Cos[pCritterVars->unk34] * 13) >> 5;
        v.y = (g_Sin[pCritterVars->unk34] * 13) >> 5;
        v.z = 0;
        func_8004F194(&v, &v, &pCritterVars->unk38);
        temp_s2 = g_Spyro.critterMobyPtr->state;
        g_Spyro.critterMobyPtr->state = 0;
        func_8003B7B4(&g_Spyro.critterMobyPtr->state, 1, &unsavedData);
        g_Spyro.critterMobyPtr->state = temp_s2;
        func_8003B634(&savedData, &v, temp_s1);
        func_8003B74C(&savedData);
    }
}