#include "common.h"
#include "ovl_header.h"
#include "camera.h"
#include "pad.h"
#include "spu.h"
#include "stdutil.h"
#include "spyro.h"

extern int func_80018368(Vector3D*, Vector3D*);
extern int func_80019138(Vector3D*, int, int, int, int, int);
extern void func_8001BA30(Vector3D*, int, int, int, int, Moby*);

extern void* D_8006C570;
extern int g_CurrentLevel; // 8006C5BC
extern int D_8006C58C; // level index    
extern int D_8006C5C4;
extern char D_80067968[40][4]; // WalkingSoundIdPerSurface... maybe a struct array?
extern int D_8006C648; // deltaTime
extern short g_Sin[0x100];
extern short g_Cos[0x100];
extern Pad D_8006E3D0; // ? not sure what file this should go in, maybe pad
extern Unk_8006d048 D_8006D048;
extern CollisionData g_CollisionData;

typedef struct {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
    //int unk14;
} Unk_8006C558;
extern Unk_8006C558** D_8006C558;

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

/**
 * ???() - func_800416F4()
 * WIP, barely started
 * https://decomp.me/scratch/wClhX
 */
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

/**
 * ???() - func_80041848() - MATCHING
 * https://decomp.me/scratch/hKRCk
 */
void func_80041848() {
    g_Spyro.unk7a[1].x = g_Spyro.unk8[0];
    g_Spyro.unk7a[1].y = 0;
    g_Spyro.unk7a[1].z = 0;
    if ((g_CurrentLevel == 42) && (g_Spyro.critterMode == CRITTER_SHEILA)) { // Desert Ruins Sheila
        g_Spyro.unk7a[1].x = g_Spyro.unk8[0] * func_8004EA2C(g_Spyro.unk7b) >> 0xC;
        g_Spyro.unk7a[1].y = g_Spyro.unk8[0] * func_8004E9E4(g_Spyro.unk7b) >> 0xC;
        g_Spyro.unk7a[1].z = 0;
        return;
    }
    func_8004ED6C(&g_Spyro.mat30, &g_Spyro.unk7a[1], &g_Spyro.unk7a[1]);
}

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80041930);

/**
 * ???() - func_80041AE8() - MATCHING
 * https://decomp.me/scratch/WxLtJ
 */
void func_80041AE8() {
    Vector3D v;

    if (func_8004EDE8(&g_Spyro.unk7a[2], 0) > 384) {
        func_8004F1C8(&v, &g_Spyro.unk7a[3], &g_Spyro.unk7a[2]);
        if (func_8004EDE8(&v, 0) > 192) {
            v.z = 0;
            func_8004F178(&g_Spyro.unk9h, &v);
            g_Spyro.unk10[2] = 1;
        }
    }
}

/**
 * ???() - func_80041B64() - MATCHING
 * https://decomp.me/scratch/KZPXT
 */
void func_80041B64() {
    int temp_a2;
    func_8004F178(&g_Spyro.unk7a[2], &g_Spyro.unk7a[1]);
    if (g_Spyro.unk10[2] != 0) {
        g_Spyro.unk9h.z = 0;
        func_8004EF04(&g_Spyro.unk9h, 0x1000);
        temp_a2 = ((-g_Spyro.unk7a[2].x * g_Spyro.unk9h.x) - (g_Spyro.unk7a[2].y * g_Spyro.unk9h.y)) >> 0xC;
        if (temp_a2 > 0) {
            func_8004F08C(&g_Spyro.unk9h, 0x1000, temp_a2);
            func_8004F194(&g_Spyro.unk7a[2], &g_Spyro.unk7a[2], &g_Spyro.unk9h);
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80041C20);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80042A44);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80042F64);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80043194);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80043728);

/**
 * ???() - func_800438F4()
 * WIP, barely started
 * https://decomp.me/scratch/ZDzxM
 */
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
void func_80043E00(Vector3D* arg0) {
    Angle12 sp10;

    sp10.roll = 0;
    sp10.yaw = func_8004EDE8(arg0, 0); // not really used as a yaw...
    sp10.pitch = func_8004E880(sp10.yaw, arg0->z, 1) + 0x8E;

    SUB_ANGLE(sp10.roll,  sp10.roll,  g_Spyro.rotation.roll);
    SUB_ANGLE(sp10.pitch, sp10.pitch, g_Spyro.rotation.pitch);
    
    g_Spyro.unk7.roll  += ((sp10.roll  << 2) >> 4) - ((g_Spyro.unk7.roll  << 4) >> 6);
    g_Spyro.unk7.pitch += ((sp10.pitch << 2) >> 4) - ((g_Spyro.unk7.pitch << 4) >> 6);
    sp10.roll  = g_Spyro.unk7.roll  >> 2;
    sp10.pitch = g_Spyro.unk7.pitch >> 2;

    ADD_ANGLE(g_Spyro.rotation.roll,  g_Spyro.rotation.roll,  sp10.roll);
    ADD_ANGLE(g_Spyro.rotation.pitch, g_Spyro.rotation.pitch, sp10.pitch);
}

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
void func_80044240() {
    int i;

    if (g_Spyro.unk20a != 0) {
        g_Spyro.bodyAnimation.id = 0;
        g_Spyro.bodyAnimation.nextId = 0;
        g_Spyro.bodyAnimation.frame = 0;
        g_Spyro.bodyAnimation.nextFrame = 0;
        g_Spyro.unk3[0] = (D_8006C558[0][1].unk0 >> 0xE) & 0xF0;
        func_80047138();
        return;
    }

    for (i = 0; i < D_8006C648; i++) {
        if (g_Spyro.unk17q != 0 || g_Spyro.animationState != g_Spyro.unknownAnimationStateVariable) {
            func_800445F8();
        }
        else {
            func_800443EC();
        }
    
        if (g_Spyro.unk13f[0] == g_Spyro.spitState) {
            if (g_Spyro.unk17t == 0) {
                func_80044C28();
            }
            else if (g_Spyro.unk17t == 6) {
                func_80047138();
            }
            else {
                func_80044CF0();
            }
        } else {
            func_80044CF0();
        }
    }
}

/**
 * ???() - func_800443A4() - MATCHING
 * https://decomp.me/scratch/dIIES
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800443A4);

/**
 * ???() - func_800443EC()
 * WIP, barely started
 * https://decomp.me/scratch/wy6M4
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800443EC);

/**
 * ???() - func_80044514()
 * WIP, small function, barely started
 * https://decomp.me/scratch/0whTj
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80044514);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800445F8);

/**
 * ???() - func_80044C28()
 * WIP
 * https://decomp.me/scratch/xvays
 */
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

/**
 * ???() - func_80047C7C() - MATCHING
 * https://decomp.me/scratch/qZUu8
 */
void func_80047C7C() {
    if (g_Spyro.unk17a & 0x2C142) {
        func_8003A964(&D_8006E3D0, &g_Pad);
    }
    else {
        g_Spyro.unk20[2] = 0;
    }
    if (!(g_Spyro.unk17a & 0x140)) {
        g_Spyro.unk17c = 0;
    }
    g_Spyro.unk17b = g_Spyro.unk17a;
    g_Spyro.unk17a = 0;
}

/**
 * ???() - func_80047D00() - MATCHING
 * https://decomp.me/scratch/hyt2h
 */
void func_80047D00(Moby* arg0) {
    Vector3D v;

    g_Spyro.unk17a |= 0x10000040;
    func_8004F1C8(&v, &g_Spyro.position, &arg0->position);
    g_Spyro.unk20[0] = func_8004E880(-v.x, -v.y, 0);
    if (D_8006C5C4 != 0) {
        v.x = (g_Cos[arg0->angle.yaw] * 39) >> 6;
        v.y = (g_Sin[arg0->angle.yaw] * 39) >> 6;
        v.z = 0;
    }
    else {
        v.x = (g_Cos[arg0->angle.yaw] * 13) >> 5;
        v.y = (g_Sin[arg0->angle.yaw] * 13) >> 5;
        v.z = 0;
    }
    func_8004F194(&g_Spyro.unk19, &v, &arg0->position);
    g_Spyro.m_WhirlwindPointer = 0;
}

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

/**
 * ???() - func_80049590()
 * WIP, haven't started yet
 * https://decomp.me/scratch/HD94X
 */
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80049590);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80049688);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800498C0);

/**
 * ???() - func_80049ACC()
 * https://decomp.me/scratch/NWVhg
 */
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
void func_8004BDF0(int arg0) {
    if (g_Spyro.unk17a & 0x8000) return;
        
    D_8006C570 = &pad.store[arg0];
    switch (g_Spyro.animationState) {
    case ANIMATION_STATE_STAND:
    case ANIMATION_STATE_TIPTOE:
    case ANIMATION_STATE_WALK:
    case ANIMATION_STATE_RUN:
    case ANIMATION_STATE_SKID:
    case ANIMATION_STATE_SKID_TURN:
    case ANIMATION_STATE_FLAME:
    case ANIMATION_STATE_CHARGE:
    case ANIMATION_STATE_BONK:
    case ANIMATION_STATE_LEDGE:
    case ANIMATION_STATE_HURT:
    case ANIMATION_STATE_DEATH_FALL_OVER:
        func_80043ABC(&g_Spyro.unk9e);
        break;
    case ANIMATION_STATE_JUMP:
        if (g_Spyro.movementState == MOVEMENT_STATE_LADDER) {
            func_80043F3C(&g_Spyro.unk9h);
        }
        else {
            func_80043ABC(0);
        }
        break;
    case ANIMATION_STATE_FALL:
    case ANIMATION_STATE_HOVER:
    case ANIMATION_STATE_HEADBASH:
        func_80043ABC(0);
        break;
    case ANIMATION_STATE_CHARGE_JUMP:
        func_80043E00(&g_Spyro.unk7a[2]);
        break;
    case ANIMATION_STATE_GLIDE:
    case ANIMATION_STATE_UNK_18:
        break;
    case ANIMATION_STATE_UNK_2D:
    default:
        if (unk_ovlheader_800742F8 != 0) {
            unk_ovlheader_800742F8(arg0);
        }
        break;
    }
    g_Spyro.animationStateFrames += 1;
}

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

/**
 * ???() - func_8004E4E4() - MATCHING
 * https://decomp.me/scratch/oFnZc
 */
int func_8004E4E4(int arg0) {
    int temp_a0;
    int var_a0;

    temp_a0 = g_Spyro.unk9ha[1] - arg0;
    
    if (temp_a0 < 0) {
        var_a0 = 0x1040 - (func_8004F388(-temp_a0) << 7);
    }
    else {
        var_a0 = (func_8004F388(temp_a0) << 6) + 0x1040;
    }
    
    if (g_CurrentLevel == 45) var_a0 += 0xAAA;
    MAX(var_a0, 0x5900);
    MIN(var_a0, 0x800);
    
    return var_a0;
}

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8004E56C);
