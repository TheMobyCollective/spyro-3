#include "common.h"
#include "ovl_header.h"
#include "moby_props.h"
#include "globals.h"
#include "spyro.h"
#include "mobyutil.h"
#include "stdutil.h"
#include "camera.h"

extern Sparx sparx; // 8006580c

extern void func_80055B18(Moby*); // kill moby
extern int rand();

/**
 * MobyUpdate_200() - MATCHING
 * Gem Basket
 * https://decomp.me/scratch/jdb3M
 */

void MOBYUPDATE(200) (Moby* pMoby) {

    if (*(int*)pMoby->mobyTag != 0) {
        func_80037014(pMoby);
    }
    
    if ((sparx.breakContainers > 0) && (func_8004F334(&pMoby->position, &g_Spyro.position) < sparx.gemCollectRadius)) {
        if ((ABS(-(pMoby->position.z + 356) + g_Spyro.position.z) < sparx.unk2) && (D_8006C65C != 0) && (func_80013E38(&D_8006C65C->position, &pMoby->position, 4) != 0)) {
            MobyTag_120* pSparxVars = (MobyTag_120*)D_8006C65C->mobyTag;
            if (pSparxVars->unk14) {
                if ((pSparxVars->unk14 != pMoby) && (pSparxVars->unk0 > 0)) pSparxVars->unk0 = 0;
            } else {
                D_8006C65C->substate = 9;
                pSparxVars->unk14 = pMoby;
                pSparxVars->unk0 = 0;
                if (func_8003BFC0(D_8006C65C, pSparxVars->unk2) == 0) {
                    pSparxVars->unk2 = func_8003BABC(D_8006C65C, 0, 0);
                }
            }
        }
    }
    
    if (pMoby->damageFlags != 0) {
        int i;
        
        func_8003BABC(pMoby, 0, 0);
        pMoby->substate = 0x70;

        for (i = 0; i < 12; i++) {
            if ((D_8006C578 - D_8006C574) > 20) {
                Moby* pFrag = SpawnMoby(306, pMoby);
                if (i < 5) {
                    pFrag->substate = 3;
                } else {
                    pFrag->animationState.id = 1;
                }
            } else break;
        }

        for (i = 0; i < 4; i++) {
            Vector3D v;
            func_8004F178(&v, &pMoby->position);
            v.x += 0x100 - (rand() & 0x1FF);
            v.y += 0x100 - (rand() & 0x1FF);
            v.z += rand() & 0x1FF;
            SpawnParticle(1, 2, &v, (Vector3D*)0);
            SpawnParticle(4, 70, &v, (Vector3D*)24);
        }
        
        func_80036A68(pMoby, 0, 0, 0);
        func_80055B18(pMoby);
    }
}
