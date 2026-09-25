#include "common.h"
#include "ovl_header.h"
#include "camera.h"
#include "spu.h"
#include "stdutil.h"
#include "spyro.h"

extern int func_80018368(Vector3D*, Vector3D*);
extern int func_80019138(Vector3D*, int, int, int, int, int);
extern void func_8001BA30(Vector3D*, int, int, int, int, Moby*);

extern int D_8006C58C; // level index    
extern char D_80067968[40][4]; // WalkingSoundIdPerSurface... maybe a struct array?
extern int D_8006C648; // deltaTime
extern short g_Sin[0x100];
extern short g_Cos[0x100];
extern Unk_8006d048 D_8006D048;
extern CollisionData g_CollisionData;

///////////////////////////////////////////////////////////////////////////////

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8003E83C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8003E968);

// Apply surface effects
// There's a bunch of surface functions here
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8003F194);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8003F6F4);

// Run surface type function
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8003FD58);

/**
 * ???() - func_800408B8() - MATCHING
 * https://decomp.me/scratch/AKVO1
 */
int func_800408B8(SHORTMATRIX* arg0, Vector3D* arg1, Vector3D* arg2) {
    func_8004ED6C(arg0, arg1, arg1);
    func_8004F194(arg1, arg1, &g_Spyro.position);
    func_8004ED6C(0, arg2, arg2);
    func_8004F194(arg2, arg2, &g_Spyro.position);
    if (func_80018368(arg1, arg2)) return func_80040954(g_CollisionData.D_80071924);
    return -1;
}

/**
 * ???() - func_80040954() - MATCHING
 * Roughly equivalent to func_80057380 from spyro-1
 * Checks if the surface is a special surface, and returns its type
 * D_8006D048 struct updated
 * https://decomp.me/scratch/cwjZ4
 */
int func_80040954(int surfaceFlags) {
    int idx = surfaceFlags & 0x3F;

    // Flags are 0x3F when not touching a special surface
    if (idx == 0x3F) return -1;

    return D_8006D048.m_SurfaceData[idx]->m_Type;
}

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80040994);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80040BCC);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80040D10);

/**
 * ???() - func_80040F48() - MATCHING
 * Just needs variable cleanups / labelling
 * https://decomp.me/scratch/kqmRi
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80040F48);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800410F8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80041404);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80041580);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800416F4);

/**
 * ???() - func_800417FC() - MATCHING
 * https://decomp.me/scratch/AVQkF
 */
void func_800417FC(int arg0, int arg1) {
    if (g_Spyro.horizontalSpeed > g_Spyro.unk8[0]) {
        g_Spyro.unk8[0] += arg0;
        MAX(g_Spyro.unk8[0], g_Spyro.horizontalSpeed);
    }
    else {
        g_Spyro.unk8[0] -= arg1;
        MIN(g_Spyro.unk8[0], g_Spyro.horizontalSpeed);
    }
}

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80041848);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80041930);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80041AE8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80041B64);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80041C20);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80042A44);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80042F64);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80043194);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80043728);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800438F4);

/**
 * ???() - func_80043A38() - MATCHING
 * https://decomp.me/scratch/euWaA
 */
void func_80043A38(int arg0) {
    func_8004F178(&g_Spyro.unk9g, &g_Spyro.unk9e);
    func_8004EF04(&g_Spyro.unk9g, arg0);
    g_Spyro.unk9g.x = -g_Spyro.unk9g.x;
    g_Spyro.unk9g.y = -g_Spyro.unk9g.y;
    g_Spyro.unk9g.z = -g_Spyro.unk9g.z;
}

/**
 * ???() - func_80043ABC() - MATCHING
 * Aligns Spyro's angles to something
 * https://decomp.me/scratch/APNca
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80043ABC);

/**
 * ???() - func_80043E00() - MATCHING
 * Aligns Spyro's angles to something
 * https://decomp.me/scratch/rKluO
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80043E00);

/**
 * AlignSpyroToLadder() - func_80043F3C() - MATCHING
 * https://decomp.me/scratch/Y8ufi
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80043F3C);

/**
 * ???() - func_800441F0() - MATCHING
 * https://decomp.me/scratch/31veX
 */
void func_800441F0() {
    func_8004F168(&g_Spyro.unk7a[3]);
    func_8004F168(&g_Spyro.unk7a[1]);
    func_8004F168(&g_Spyro.unk7a[2]);
    g_Spyro.horizontalSpeed = 0;
    g_Spyro.unk8[0] = 0;
}

/**
 * ???() - func_80044240() - MATCHING
 * https://decomp.me/scratch/K5K7t
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80044240);

/**
 * ???() - func_800443A4() - MATCHING
 * https://decomp.me/scratch/dIIES
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800443A4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800443EC);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80044514);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800445F8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80044C28);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80044CF0);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800451C4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800458F8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80045D70);

/**
 * ???() - func_80046FF8() - MATCHING
 * https://decomp.me/scratch/sv50A
 */
void func_80046FF8() {
    int temp_a1;

    SUB_ANGLE(temp_a1, g_Spyro.unk13g[2], g_Spyro.unk13f[3]);
    
    g_Spyro.unk13h[1] += ((temp_a1 << 7) - g_Spyro.unk13h[1] * 0x10) >> 6;
    g_Spyro.unk13f[3] += g_Spyro.unk13h[1] >> 6;
    
    SUB_ANGLE(temp_a1, g_Spyro.unk13g[3], g_Spyro.unk13g[0]);
    
    g_Spyro.unk13h[2] += ((temp_a1 << 7) - g_Spyro.unk13h[2] * 0x10) >> 6;
    g_Spyro.unk13g[0] += g_Spyro.unk13h[2] >> 6;
    
    SUB_ANGLE(temp_a1, g_Spyro.unk13h[0], g_Spyro.unk13g[1]);
    
    g_Spyro.headRotation.roll = g_Spyro.unk13f[3] >> 4;
    g_Spyro.headRotation.pitch = g_Spyro.unk13g[0] >> 4;
    
    g_Spyro.unk13h[3] += ((temp_a1 << 7) - g_Spyro.unk13h[3] * 0x10) >> 6;
    g_Spyro.unk13g[1] += g_Spyro.unk13h[3] >> 6;
    
    g_Spyro.headRotation.yaw = g_Spyro.unk13g[1] >> 4;
}

/**
 * ???() - func_80047138() - MATCHING
 * https://decomp.me/scratch/GR7Ts
 */
void func_80047138() {
    g_Spyro.headAnimation.id = g_Spyro.bodyAnimation.id;
    g_Spyro.headAnimation.nextId = g_Spyro.bodyAnimation.nextId;
    g_Spyro.headAnimation.frame = g_Spyro.bodyAnimation.frame;
    g_Spyro.headAnimation.nextFrame = g_Spyro.bodyAnimation.nextFrame;
    g_Spyro.unk3[1] = g_Spyro.unk3[0];
}

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80047190);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800473E4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80047C7C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80047D00);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80047E6C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80048210);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80048444);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800486FC);

/**
 * ???() - func_80048948() - MATCHING
 * https://decomp.me/scratch/ntJS9
 */
void func_80048948() {
    g_Spyro.unk22[5] = -1;
    g_Spyro.damageFlags = 0;
    if (g_Spyro.movementState != MOVEMENT_STATE_HURT) {
        g_Spyro.unk22[0] -= D_8006C648;
        MIN(g_Spyro.unk22[0], 0);
    }
    if (g_Spyro.unk20a != 0) {
        g_Spyro.critterMobyPtr->damageFlags = 0;
    }
}

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800489CC);

/**
 * ???() - func_800491F4() - MATCHING
 * https://decomp.me/scratch/UFazy
 */
void func_800491F4() {
    Vector3D v;
    int temp_v0;

    func_8004F1C8(&v, &g_Camera.nextCameraPosCartesian, &g_Spyro.position);
    temp_v0 = func_8004E880(v.x, v.y, 0);
    v.x = (g_Cos[temp_v0] * g_Spyro.unk4a) >> 0xC;
    v.y = (g_Sin[temp_v0] * g_Spyro.unk4a) >> 0xC;
    v.z = 0;
    func_8004F194(&v, &v, &g_Spyro.position);
    if (!func_80013E38(&g_Camera.nextCameraPosCartesian, &v, 0)) {
       g_Spyro.unk3[2] = 0;
    }
    else {
        g_Spyro.unk3[2] = 5;
    }
}

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800492DC);

/**
 * ???() - func_80049484() - MATCHING
 * https://decomp.me/scratch/2shai
 */
void func_80049484(Vector3D* arg0) {
    func_80049ACC(0xC1, arg0);
}

/**
 * ???() - func_800494A8() - MATCHING
 * https://decomp.me/scratch/URYjq
 */
void func_800494A8() {
    Vector3D v;
    func_8004F178(&v, &g_Spyro.position);
    v.z -= g_Spyro.unk4a;
    func_8001BA30(&v, 0x80, 1, 0, 0x80000, g_Spyro.critterMobyPtr);
    if ((func_80019138(&v, 0x80, 1, 0, 0x80000, 0) != 0) && (func_80040954(g_CollisionData.D_80071924) == 3)) {
        D_8006D048.m_SurfaceData[g_CollisionData.D_80071924 & 0x3F]->unk4 |= 0x80000;
    }
}

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80049590);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80049688);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800498C0);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80049ACC);

// has overlay version in "animation.c"
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80049D70);

// has overlay version in "animation.c"
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8004B324);

/**
 * PlaySpyroSounds() - func_8004BA6C() - MATCHING
 * Exe version of the PlaySpyroSounds from overlay
 * https://decomp.me/scratch/yR0vS
 */
void PlaySpyroSounds() {
    int animationId;
    int animationFrame;

    if (g_Spyro.unk20a != 0) {
        animationId = g_Spyro.critterMobyPtr->animationState.id;
        switch (g_Spyro.critterMode) {
        case CRITTER_SHEILA:
            animationId += ANIMATION_STATE_SHEILA_IDLE;
            break;
        case CRITTER_BENTLEY:
            animationId += ANIMATION_STATE_BENTLEY_IDLE;
            break;
        case CRITTER_SGT_BYRD:
            animationId += ANIMATION_STATE_SGT_BYRD_IDLE;
            break;
        case CRITTER_AGENT_9:
            animationId += ANIMATION_STATE_AGENT_9_IDLE;
            break;
        case CRITTER_BENTLEY_BOXING:
            animationId += ANIMATION_STATE_BENTLEY_BOXING_IDLE;
            break;
        case CRITTER_SUBS:
            animationId += ANIMATION_STATE_SUB_IDLE;
            break;
        case CRITTER_SPARX:
            animationId += ANIMATION_STATE_SPARX_IDLE;
            break;
        case CRITTER_HUNTER_4:
            animationId += ANIMATION_STATE_HUNTER_4_FLY;
            break;
        case CRITTER_HUNTER_3:
            animationId += ANIMATION_STATE_HUNTER_3_IDLE;
            break;
        case CRITTER_HUNTER_1:
            animationId += ANIMATION_STATE_HUNTER_1_PLANE;
            break;
        }
        animationFrame = g_Spyro.critterMobyPtr->animationState.frame;
    }
    else {
        animationId = g_Spyro.bodyAnimation.id;
        animationFrame = g_Spyro.bodyAnimation.frame;
    }
    
    if (g_Spyro.movementState == MOVEMENT_STATE_SWIM_UNDERWATER || g_Spyro.movementState == MOVEMENT_STATE_SWIM_CHARGE) {
        if (func_8003BF6C(g_SoundTablePtr->underwater, g_Spyro.unk22[4]) == 0) {
            g_Spyro.unk22[4] = PlaySound(g_SoundTablePtr->underwater, 0, 4);
        }
    }
    else if (func_8003BF6C(g_SoundTablePtr->underwater, g_Spyro.unk22[4]) != 0) {
        func_8003BE70(g_Spyro.unk22[4]);
        g_Spyro.unk22[4] = -1;
    }
    
    if (g_Spyro.unk22[6] != animationFrame) {
        switch (animationId) {
        case ANIMATION_STATE_TIPTOE:
            if (animationFrame == 5 || animationFrame == 13) {
                int surface = g_Spyro.unk11[2] >> 6;
                func_8003BB10(0, D_80067968[D_8006C58C][surface], 0);
                g_Spyro.unk22[6] = animationFrame;
            }
            break;
        case ANIMATION_STATE_RUN:
            if (animationFrame == 7 || animationFrame == 9 || animationFrame == 17 || animationFrame == 0) {
                int surface = g_Spyro.unk11[2] >> 6;
                func_8003BB10(0, D_80067968[D_8006C58C][surface], 0);
                g_Spyro.unk22[6] = animationFrame;
            }
            break;
        case ANIMATION_STATE_BONK:
            {
                int handler;
                if (animationFrame == 2 || animationFrame == 5) {
                    handler = PlaySound(g_SoundTablePtr->spyroStop, 0, 0);
                    g_Spyro.unk22[6] = animationFrame;
                    if (handler >= 0 && animationFrame == 5) {
                        func_8003C140(handler, 0xC00);
                        func_8003C0B0(handler, 0xE00);
                    }
                }
                break;
            }
        case ANIMATION_STATE_HURT:
            {
                int handler;
                if (animationFrame == 11 || animationFrame == 14) {
                    handler = PlaySound(g_SoundTablePtr->spyroStop, 0, 0);
                    g_Spyro.unk22[6] = animationFrame;
                    if (handler >= 0) {
                        if (animationFrame == 14) {
                            func_8003C140(handler, 0xC00);
                            func_8003C0B0(handler, 0xE00);
                        }
                    }
                }
                break;
            }
        case 2:
            if (animationFrame == 2 || animationFrame == 12) {
                int surface = g_Spyro.unk11[2] >> 6;
                func_8003BB10(0, D_80067968[D_8006C58C][surface], 0);
                g_Spyro.unk22[6] = animationFrame;
            }
            break;
        case ANIMATION_STATE_DEATH_FALL_OVER:
            {
                int handler;
                if (animationFrame == 12 || animationFrame == 20) {
                    handler = PlaySound(g_SoundTablePtr->spyroStop, 0, 0);
                    g_Spyro.unk22[6] = animationFrame;
                    if (handler >= 0) {
                        if (animationFrame == 20) {
                            func_8003C140(handler, 0xC00);
                            func_8003C0B0(handler, 0xE00);
                        }
                    }
                }
                break;
            }
        default:
            if (g_PlaySpyroSounds != 0) {
                g_PlaySpyroSounds();
            }
            break;
        }
    }
    
    if (animationFrame != g_Spyro.unk22[6]) {
        g_Spyro.unk22[6] = -1;
    }
}

/**
 * AlignSpyroRotation() - func_8004BDF0() - MATCHING
 * Exe version of the align Spyro rotation function from overlay
 * Maybe UpdateSpyroRotation would be preferable
 * https://decomp.me/scratch/wthTK
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8004BDF0);

/**
 * UpdateMovementState() - func_8004BEF8() - MATCHING
 * Ready to add, but there's some oddities in here
 * Maybe UpdateSpyroState, also needs a bit of cleanup, and notably needs the movement physics union
 * Takes desired animation state as an input so maybe even SetSpyroAnimationState?
 * https://decomp.me/scratch/RSA1r
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8004BEF8);

// has overlay version in "animation.c"
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8004CCA0);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8004E4E4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8004E56C);
