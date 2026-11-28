#include "common.h"
#include "ovl_header.h"
#include "moby_props.h"
#include "globals.h"
#include "camera.h"
#include "spyro.h"
#include "stdutil.h"
#include "mobyutil.h"

extern Sparx sparx; // 8006580c
extern short g_Sin[0x100]; // sin
extern short g_Cos[0x100]; // cos

extern int rand();
extern void func_80055B18(Moby*); // fDeleteMoby

/**
 * MobyUpdate_209() - MATCHING
 * https://decomp.me/scratch/WCxo4
 */

void MOBYUPDATE(209) (Moby* pMoby) {
    int i;

    if (pMoby->substate == 0) {
        pMoby->substate = rand();
    }
    
    if ((sparx.breakContainers >= 2) && (func_8004F334(&pMoby->position, &g_Spyro.position) < sparx.gemCollectRadius)) {
        int var_v1 = (g_Spyro.position.z - 356) - pMoby->position.z;
        if ((ABS(var_v1) < sparx.unk2) && (D_8006C65C != nullptr) && (func_80013E38(&D_8006C65C->position, &pMoby->position, 0) != 0)) {
            MobyTag_120* temp_s0_2 = (MobyTag_120*)D_8006C65C->mobyTag;
            if (temp_s0_2->unk14 != nullptr) {
                if ((temp_s0_2->unk14 != pMoby) && (temp_s0_2->unk0 > 0)) {
                    temp_s0_2->unk0 = 0;
                }
            }
            else {
                D_8006C65C->substate = 9;
                temp_s0_2->unk14 = pMoby;
                temp_s0_2->unk0 = 0;
                if (!func_8003BFC0(D_8006C65C, temp_s0_2->unk2)) {
                    temp_s0_2->unk2 = func_8003BABC(D_8006C65C, 0, 0);
                }
            }
        }
    }
    
    if (pMoby->damageFlags & 0x101B0000) {
        func_8003BABC(pMoby, 0, 0);
        pMoby->substate = 100;
        
        for (i = 0; i < 12; i++) {
            Moby* temp_v0_2;
            int anim = 1; // weird
            
            if (D_8006C578 - D_8006C574 < 21) break;
            temp_v0_2 = SpawnMoby(310, pMoby);
            if (temp_v0_2 != nullptr) {
                if (i < 6) {
                    temp_v0_2->substate = 9;
                } else {
                    temp_v0_2->animationState.id = anim;
                    temp_v0_2->substate = 0;
                }
            }
        }
        
        for (i = 0; i < 8; i++) {
            Vector3D v1;
            Vector3D v2;
            func_8004F178(&v1, &pMoby->position);
            v1.x += 0x80 - (rand() & 0xFF);
            v1.y += 0x80 - (rand() & 0xFF);
            v1.z += rand() & 0x1FF;
            v2.x = 0x40 - (rand() & 0x7F);
            v2.y = 0x40 - (rand() & 0x7F);
            v2.z = 0x10 - (rand() & 0x1F);
            SpawnParticle(1, 39, &v1, &v2);
            SpawnParticle(2, 70, &v1, (Vector3D*)24);
        }
        
        func_80036A68(pMoby, 0, (Vector3D*)0, (Vector3D*)0);
        func_80055B18(pMoby);
        return;
    }
    pMoby->angle.roll =  ((unsigned short)g_Cos[((D_8006C644 * 2) + pMoby->substate) & 0xFF] << 0x10) >> 25;
    pMoby->angle.pitch = ((unsigned short)g_Sin[((D_8006C644 * 2) + pMoby->substate) & 0xFF] << 0x10) >> 25;
}