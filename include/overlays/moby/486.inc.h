#include "common.h"
#include "moby_props.h"
#include "ovl_header.h"

extern void func_8004F194(Vector3D*, Vector3D*, Vector3D*); // fAddVector
extern void func_80055B18(Moby*); // fDeleteMoby
extern short D_800658A0[0x100]; // sin
extern short D_80065920[0x100]; // cos
extern Moby* D_8006C550; // moby array ptr

/**
 * MobyUpdate_486() - MATCHING
 * Balloon strings
 * https://decomp.me/scratch/2DEqI
 */

 void MOBYUPDATE(486) (Moby* moby) {
    int angle;
    MobyTag_486* mobyTag;
    MobyTag_514* balloonTag;

    mobyTag = (MobyTag_486*)moby->mobyTag;
    if (mobyTag->unk0->state == 7) {
        balloonTag = (MobyTag_514*)D_8006C550[moby->linkedMoby].mobyTag;
        if (balloonTag->unk40 != 0) {
            balloonTag->unk40 = 0;
        }
        func_80055B18(moby);
        return;
    }

    angle = (mobyTag->unk4 + mobyTag->unk0->angle.yaw) & 0xFF;
    moby->angle.yaw = angle;
    moby->position.x = (D_80065920[angle] * 0xBB) >> 0xA;
    moby->position.y = (D_800658A0[angle] * 0xBB) >> 0xA;
    moby->position.z = 0x29A;
    func_8004F194(&moby->position, &moby->position, &mobyTag->unk0->position);
}