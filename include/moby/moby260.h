#ifndef __MOBY260_H
#define __MOBY260_H

#include "common.h"
#include "camera.h"
#include "ovl_header.h"
// for the tag, assuming I don't move it back in here:
#include "moby/mobytag.h"

// functions
extern int func_80019194(Vector3D*, int);
extern int func_8001A358(Vector3D*, int);
extern int func_8004E880(int, int, int);
extern void func_8004EF04(Vector3D*, int);
extern void func_8004F08C(Vector3D*, int, int);
extern void func_8004F178(Vector3D*, Vector3D*); // fSetVector
extern void func_8004F194(Vector3D*, Vector3D*, Vector3D*); // fAddVector
extern void func_80055B18(Moby*); // fDeleteMoby
extern void func_8005629C(Moby*);

// .data 80064f9c
extern short D_800658A0[0x100]; // sin
extern short D_80065920[0x100]; // cos

// .sdata 8006c3b0
extern int D_8006C644; // a frame timer of some sort

// .bss 8006c7f8
extern CollisionData D_80071900; // 80071900 // maybe "ray data"?

// Class 260
// DO NOT USE - in practice this doesn't seem to compile to the same thing
static inline void MobyUpdate_260(Moby* arg0) {
    Vector3D sp10;
    int temp_v0_3;
    unsigned char temp_v0_5;
    unsigned char var_a0;
    Vector3D* temp_a0;
    Vector3D* temp_s1;
    MobyTag_260* mobyTag;

    mobyTag = (MobyTag_260*)arg0->mobyTag;
    if (arg0->substate == 0) {
        if (mobyTag->unk4 > 0) {
            arg0->angle.yaw++;
            mobyTag->unkC.z = mobyTag->unkC.z - 6;
            if (mobyTag->unkC.z < -0x80) {
                mobyTag->unkC.z = -0x80;
            }
            arg0->position.x += mobyTag->unkC.x;
            arg0->position.y += mobyTag->unkC.y;
            arg0->position.z += mobyTag->unkC.z;
            temp_s1 = &arg0->position;
            if (arg0->position.z >= 0x400) {
                func_8001A358(temp_s1, 0x2000);
                func_8005629C(arg0);
                if (func_80019194(temp_s1, 0x100) != 0) {
                    func_8004F178(temp_s1, &D_80071900.targetedPosition);
                    func_8004EF04(&D_80071900.D_80071918, 0x1000);
                    temp_v0_3 = DOTPRODUCT(mobyTag->unkC, D_80071900.D_80071918) >> 0xB;
                    if (temp_v0_3 < 0) {
                        func_8004F08C(&D_80071900.D_80071918, 0x1000, -temp_v0_3);
                        func_8004F194(&mobyTag->unkC, &mobyTag->unkC, &D_80071900.D_80071918);
                    }
                }
                mobyTag->unk4--;
                return;
            }
            func_80055B18(arg0);
            return;
        }
        SpawnParticle(0xA, 0x47, &arg0->position, 0);
        func_80055B18(arg0);
        return;
    }
    if (mobyTag->unk0->state != 0) {
        func_80055B18(arg0);
        return;
    }
    
    var_a0 = func_8004E880(camera.nextCameraPosCartesian.x - arg0->position.x, camera.nextCameraPosCartesian.y - arg0->position.y, 0);
    arg0->angle.yaw = (D_800658A0[(unsigned char)(D_8006C644 * 4)] >> 0x7) + (unsigned char)(var_a0 + 0x80);
    if (arg0->substate == 2) {
        var_a0 += 0x80;
    }
    
    sp10.x = 0;
    sp10.y = 0;
    if (arg0->substate != 3) {
        sp10.x =  D_800658A0[var_a0] / 28;
        sp10.y = -D_80065920[var_a0] / 28;
    }
    sp10.z = 0x520;
    func_8004F194(&arg0->position, &mobyTag->unk0->position, &sp10);
}

#endif