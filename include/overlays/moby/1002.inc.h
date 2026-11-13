#include "common.h"
#include "globals.h"
#include "spyro.h"
#include "stdutil.h"
#include "mobyutil.h"
#include "moby_props.h"
#include "ovl_header.h"

extern void func_80055C24(Moby*);
extern void func_8005629C(Moby*);

extern Model* D_8006EE2C[768];

/**
 * MobyUpdate_1002() - MATCHING
 * Fodder respawner
 * https://decomp.me/scratch/ACFrH
 */

void MOBYUPDATE(1002) (Moby* pMoby) {
    MobyVars1002* pVars = (MobyVars1002*)pMoby->mobyTag;
    func_8004F178(&pMoby->position, &g_Spyro.position);
    if (func_800359A4(&pVars->unk4, 4) != 0) {
        Moby* m;
        pVars->unk4 = pVars->unk8;
        for (m = D_8006C550; m < D_8006C704; m++) {
            if ((m->mobyClass == pVars->m_TargetClass) && (m->state >= 0x80) && ((m->difficultyFlags >> D_8006C7C4) & 1) && (func_8004F334(&g_Spyro.position, (Vector3D*)m->mobyTag) > 0x6000)) {
                func_8004F178(&m->position, (Vector3D*)m->mobyTag);
                func_80055C24(m);
                m->damageFlags = 0;
                m->unkb = 0;
                m->state = 0;
                m->unknown3[1] = 0;
                m->animationProgress = D_8006EE2C[m->mobyClass]->m_Animations[0]->m_NumFrames < 2 ? 0 : 0x30;
                m->animationState.id = 0;
                m->animationState.nextId = 0;
                m->animationState.frame = 0;
                m->animationState.nextFrame = 1;
                m->angle.roll = 0;
                m->angle.pitch = 0;
                func_80035D38(m);
                func_8005629C(m);
                return;
            }
        }
    }
}