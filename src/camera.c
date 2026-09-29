#include "common.h"
#include "camera.h"
#include "cheat.h"
#include "ovl_header.h"
#include "pad.h"
#include "stdutil.h"
#include "spyro.h"
#include "tracers.h"
#include "moby/mobytag.h"

// sbss
extern int D_8006C6D0;

extern void func_8005955C(int); // SetGeomScreen
extern void func_80055D24(Moby*, int); // fUpdateMobyCollision

///////////////////////////////////////////////////////////////////////

/**
 * ???() - func_8001204C() - MATCHING
 * https://decomp.me/scratch/Wbj6B
 */
void func_8001204C() {
    func_80012168();
    func_80017028();
    func_8005955C(g_Camera.unk1c4[5] + 0x155);
    g_Camera.unk1c4[4] = 0;
    if (g_Spyro.critterMode == CRITTER_AGENT_9) {
        MobyTag_99* tag = g_Spyro.critterMobyPtr->mobyTag;
        if ((g_Pad.state.held & PAD_SQUARE) &&
            (g_Spyro.animationState == ANIMATION_STATE_AGENT_9_BOMB_HOLD
                 || (g_Spyro.animationState == ANIMATION_STATE_AGENT_9_BOMB_RAISE
                    && g_Camera.cameraState == CAMERA_AGENT_9_POV))) {
            func_80055D24(g_Spyro.critterMobyPtr, 4);
            if (unk_ovlheader_80074328 != 0) {
                unk_ovlheader_80074328(g_Spyro.critterMobyPtr);
            }
        }
        else {
            if (tag->unk88 != 0) {
                func_80050B88(tag->unk88);
                tag->unk88 = 0;
            }
            if (tag->unk70 != 0) {
                func_80055B18(tag->unk70);
                tag->unk70 = 0;
            }
        }
    }
    g_Camera.unk40 = 0;
}

/**
 * ???() - func_80012168()
 * Close, but not quite there
 * https://decomp.me/scratch/7av0M
 */
INCLUDE_ASM("asm/nonmatchings/camera", func_80012168);

/**
 * ???() - func_8001241C() - MATCHING
 * https://decomp.me/scratch/HotSn
 */
void func_8001241C() {
    if (g_Camera.unk148[2]) {
        g_Camera.unk7c.pos[3].pos.azimuth = g_Camera.unk148[2];
    }
    else {
        SUB_ANGLE(g_Camera.unk7c.pos[3].pos.azimuth, g_Camera.unk7c.pos[1].pos.azimuth, g_Camera.unk7c.pos[2].pos.azimuth);
    }
    g_Camera.unk7c.pos[3].pos.radius = g_Camera.unk7c.pos[1].pos.radius - g_Camera.unk7c.pos[2].pos.radius;
    SUB_ANGLE(g_Camera.unk7c.pos[3].pos.elevation, g_Camera.unk7c.pos[1].pos.elevation, g_Camera.unk7c.pos[2].pos.elevation);
    SUB_ANGLE(g_Camera.unk7c.pos[3].yaw,           g_Camera.unk7c.pos[1].yaw,           g_Camera.unk7c.pos[2].yaw);
    SUB_ANGLE(g_Camera.unk7c.pos[3].pitch,         g_Camera.unk7c.pos[1].pitch,         g_Camera.unk7c.pos[2].pitch);
}

INCLUDE_ASM("asm/nonmatchings/camera", func_80012530);

/**
 * ???() - func_80012AC8() - MATCHING
 * https://decomp.me/scratch/qc25h
 */
void func_80012AC8() {
    func_800135F8(&camera.unk70, &camera.unk7c.pos[2].pos, &camera.unk60);
    func_80012D18();
    camera.unk140[3] = func_800136F0(&camera.unk7c.pos[0], &camera.nextCameraPosCartesian, &camera.unk60);
    func_800130DC();
}

/**
 * ???() - func_80012B34() - MATCHING
 * https://decomp.me/scratch/GhuLg
 */
void func_80012B34() {
    camera.unk44 = 0;
    camera.unk46 = (camera.unk7c.pos[0].pos.elevation + camera.unk7c.pos[2].yaw) & 0xFFF;
    camera.unk48 = ((camera.unk7c.pos[0].pos.azimuth + 0x800) + camera.unk7c.pos[2].pitch) & 0xFFF;
    func_800138A0(&camera.unk7c.pos[0], &camera.unk7c.pos[0]);
}

/**
 * ???() - func_80012BA8()
 * Close but a work in progress
 * https://decomp.me/scratch/mrVQY
 */
INCLUDE_ASM("asm/nonmatchings/camera", func_80012BA8);

INCLUDE_ASM("asm/nonmatchings/camera", func_80012D18);

INCLUDE_ASM("asm/nonmatchings/camera", func_800130DC);

/**
 * SetCameraPosition() - func_800135A4() - MATCHING
 * https://decomp.me/scratch/fNZc2
 */
void func_800135A4(CameraPosition* arg0, CameraPosition* arg1, int arg2) {
    arg0->pos.azimuth = (arg1->pos.azimuth + arg2) & 0xFFF;
    MAX_SIGNED(arg0->pos.azimuth, 0x800);
    arg0->pos.elevation = arg1->pos.elevation;
    arg0->pos.radius = arg1->pos.radius;
    arg0->yaw = arg1->yaw;
    arg0->pitch = arg1->pitch;
}

/**
 * ???() - func_800135F8() - MATCHING
 * Converts a spherical coordinate to a Cartesian vector, and adds to another if given
 * https://decomp.me/scratch/LWgh2
 */
void func_800135F8(Vector3D* arg0, SphericalPosition* arg1, Vector3D* arg2) {
    arg0->x = ((arg1->radius * func_8004EA2C(arg1->elevation)) >> 0xC) * func_8004EA2C(arg1->azimuth) >> 0xC;
    arg0->y = ((arg1->radius * func_8004EA2C(arg1->elevation)) >> 0xC) * func_8004E9E4(arg1->azimuth) >> 0xC;
    arg0->z =  (arg1->radius * func_8004E9E4(arg1->elevation)) >> 0xC;
    if (arg2 != 0) {
        func_8004F194(arg0, arg0, arg2);
    }
}

INCLUDE_ASM("asm/nonmatchings/camera", func_800136F0);

/**
 * ???() - func_800138A0() - MATCHING
 * https://decomp.me/scratch/HAbNC
 */
void func_800138A0(CameraPosition* arg0, CameraPosition* arg1) {
    arg0->yaw = (camera.unk46 - arg1->pos.elevation) & 0xFFF;
    MAX_SIGNED(arg0->yaw, 0x800);
    
    arg0->pitch = ((camera.unk48 - 0x800) - arg1->pos.azimuth) & 0xFFF;
    MAX_SIGNED(arg0->pitch, 0x800);
}

/**
 * ResetCameraPosition() - func_80013900() - MATCHING
 * https://decomp.me/scratch/QcQTl
 */
void func_80013900(CameraPosition* arg0) {
    arg0->pos.azimuth = 0;
    arg0->pos.elevation = 0;
    arg0->pos.radius = 0;
    arg0->yaw = 0;
    arg0->pitch = 0;
}

INCLUDE_ASM("asm/nonmatchings/camera", func_80013918);

INCLUDE_ASM("asm/nonmatchings/camera", func_800139A4);

/**
 * ???() - func_80013ACC() - MATCHING
 * https://decomp.me/scratch/EJWHL
 */
void func_80013ACC(Moby* arg0, int arg1) {
    camera.unk168 = arg1;
    camera.unk16c = arg0;
}

/**
 * ???() - func_80013AE4() - MATCHING
 * https://decomp.me/scratch/daGzw
 */
void func_80013AE4(Vector3D* arg0, Vector3D* arg1) {
    if (camera.cameraState != 9) {
        func_800135A4(&camera.unk190, &camera.unk7c.pos[0], 0);
    }
    camera.unk168 = 9;
    func_8004F178(&camera.unk184, arg1);
    func_800136F0(&camera.unk170, arg0, arg1);
    camera.unk170.yaw = 0;
    camera.unk170.pitch = 0;
}

INCLUDE_ASM("asm/nonmatchings/camera", func_80013B7C);

/**
 * ???() - func_80013CC4() - MATCHING
 * https://decomp.me/scratch/XL6u3
 */
void func_80013CC4(int arg0, int arg1) {
    if (camera.cameraState < 9 || camera.cameraState > 10) {
        func_800135A4(&camera.unk190, &camera.unk7c.pos[0], 0);
    }
    camera.unk168 = 10;
    camera.unk1a4 = arg0;
    camera.unk1a8 = 0;
    camera.unk1b4 = arg1;
}

INCLUDE_ASM("asm/nonmatchings/camera", func_80013D44);

INCLUDE_ASM("asm/nonmatchings/camera", func_80013E38);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001405C);

/**
 * ???() - func_800142AC() - MATCHING
 * https://decomp.me/scratch/zE7uy
 */
void func_800142AC() {
    if (g_CheatFlags.cameraMode != 0) {
        g_Camera.unk58 = 0;
        return;
    }
    g_Camera.unk58 = 7;
}

/**
 * ???() - func_800142E0() - MATCHING
 * https://decomp.me/scratch/ZbiyF
 */
void func_800142E0() {
    func_8004F178(&camera.unk60, &spyro.position);
    if (spyro.unk20a) camera.unk60.z += D_8006C6D0;
    camera.unk6c = spyro.rotation.yaw;
}

/**
 * ???() - func_80014354() - MATCHING
 * https://decomp.me/scratch/Oix8L
 */
void func_80014354() {
    if (camera.unk168 == 0xD) {
        func_800135A4(&camera.unk7c.pos[1], &D_80069058, camera.unk6c);
    } else if (g_Spyro.unk20a != 0) {
        func_800135A4(&camera.unk7c.pos[1], &D_800719A8, camera.unk6c);
    } else if (g_Spyro.movementState == MOVEMENT_STATE_GLIDE) {
        func_800135A4(&camera.unk7c.pos[1], &D_80068FA4, camera.unk6c);
    } else if (g_Spyro.movementState == MOVEMENT_STATE_SUPERFLY) {
        func_800135A4(&camera.unk7c.pos[1], &D_80068FF4, camera.unk6c);
    } else {
        func_800135A4(&camera.unk7c.pos[1], &D_80068F7C, camera.unk6c);
    }
    camera.unk7c.pos[1].yaw = (camera.unk7c.pos[1].yaw - camera.unk1c4[4]) & 0xFFF;
}

/**
 * ???() - func_80014450() - MATCHING
 * https://decomp.me/scratch/L6LBh
 */
void func_80014450() {
    if (spyro.unk20a) func_800135A4(&camera.unk7c.pos[1], &D_800719F0, camera.unk6c);
    else              func_800135A4(&camera.unk7c.pos[1], &D_80068F90, camera.unk6c);
}

INCLUDE_ASM("asm/nonmatchings/camera", func_800144B4);

INCLUDE_ASM("asm/nonmatchings/camera", func_80016568);

INCLUDE_ASM("asm/nonmatchings/camera", func_80016764);

INCLUDE_ASM("asm/nonmatchings/camera", func_80017028);
