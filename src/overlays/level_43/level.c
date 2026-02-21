#include "camera.h"
#include "common.h"
#include "hud.h"
#include "mobyutil.h"
#include "spyro.h"
#include "stdutil.h"
#include "ovl_header.h"

extern Camera g_Camera;

INCLUDE_ASM("asm/nonmatchings/overlays/level_43/level", func_level_43_8008B598);

/*
 * ???() - func_level_43_8008B8B4 - MATCHING
 * https://decomp.me/scratch/QyTEy
 */
extern void func_level_43_8008B8B4(Moby* moby, int arg1) {
    spyro.unk20a = 1;
    spyro.unk20b = arg1;
    spyro.critterMobyPtr = moby;
    if (((g_Camera.cameraState == CAMERA_FIRST_PERSON) && ((unsigned int) g_Camera.unk50 >= 2U)) || (spyro.unk17b & 0x2000)) {
        moby->lowDrawDistance = 0;
        moby->drawn = 0;
        return;
    }
    moby->lowDrawDistance = 0x10;
}

INCLUDE_ASM("asm/nonmatchings/overlays/level_43/level", func_level_43_8008B92C);

INCLUDE_ASM("asm/nonmatchings/overlays/level_43/level", func_level_43_8008BE00);

INCLUDE_ASM("asm/nonmatchings/overlays/level_43/level", func_level_43_8008BF10);

INCLUDE_ASM("asm/nonmatchings/overlays/level_43/level", func_level_43_8008C498);

/*
 * ???() - func_level_43_8008C5AC - MATCHING
 * https://decomp.me/scratch/Jm37m
 */
int func_level_43_8008C5AC(Vector3D* vec, int arg1, Moby* moby) {
    int ret;
    
    ret = (spyro.unk17c == 2);
    spyro.unk17a = 0x10000040;
    spyro.unk17d = moby;
    func_8004F178(&spyro.unk19, vec);
    spyro.unk20[0] = arg1;
    return ret;
}

INCLUDE_ASM("asm/nonmatchings/overlays/level_43/level", func_level_43_8008C620);

INCLUDE_ASM("asm/nonmatchings/overlays/level_43/level", func_level_43_8008CD10);

INCLUDE_ASM("asm/nonmatchings/overlays/level_43/level", func_level_43_8008CE08);

INCLUDE_ASM("asm/nonmatchings/overlays/level_43/level", func_level_43_8008CFE0);

INCLUDE_ASM("asm/nonmatchings/overlays/level_43/level", func_level_43_8008D264);

INCLUDE_ASM("asm/nonmatchings/overlays/level_43/level", func_level_43_8008D58C);

INCLUDE_ASM("asm/nonmatchings/overlays/level_43/level", func_level_43_8008D73C);

INCLUDE_ASM("asm/nonmatchings/overlays/level_43/level", func_level_43_8008D96C);

INCLUDE_ASM("asm/nonmatchings/overlays/level_43/level", func_level_43_8008DB04);

/* ???() - func_level_43_8008DDE4 
//https://decomp.me/scratch/2DGL7
//*/
void func_level_43_8008DDE4(HudEntry* arg0) {
    int sp18;
    int sp1C;
    int sp20;
    int sp24;
    int sp28;
    unsigned char temp_v0;

    sp18 = (int) arg0->unk0;
    sp1C = (int) arg0->unk2;
    temp_v0 = arg0->unk3F;
    if (temp_v0 != 0) {
        sp20 = (int) (temp_v0 + 0xA) >> 1;
    } else {
        sp20 = 0;
    }
    func_80029674(arg0, &sp18, &sp1C);
    sp24 = sp18;
    sp28 = sp1C;
    func_80029708(arg0, &sp20, &sp24, &sp28);
    func_800293C4(arg0->unk40, arg0->unk26, sp18, sp1C, sp20);
}

