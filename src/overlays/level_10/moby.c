#include "common.h"
#include "spyro.h"

/*
// Maybe all of this (except level ID) in a separate file for useful macros
#define LEVEL_ID 10

// String things
#define STRINGLIT( x ) # x
#define EXPAND( x ) STRINGLIT( x )
#define STRINGQUOTE( x ) EXPAND( EXPAND( x ) )
#define CONCAT2(a, b) a##b
#define CONCAT(a, b) CONCAT2(a, b)

// Overlay functions
#define MOBYUPDATE(a) CONCAT(MobyUpdate_ ## a ## _L, LEVEL_ID)
#define MOBYUPDATE2(a) void MOBYUPDATE(a) (Moby* pMoby)
#define SUFFIX(a) CONCAT(a ## _L, LEVEL_ID)
// #define MOBYUPDATEL(a, b) CONCAT(MobyUpdate_ ## a ## _L, b)
// #define MOBYUPDATE(a) MOBYUPDATEL(a, LEVEL_ID)
// MOBYUPDATE and MOBYUPDATE2 seem to work well as functions
*/

// For fragment mobys
extern void func_80039714(Moby*); // fUpdateFragmentMoby

// 942
typedef struct {
    Vector3D position;
    int xWidth;
    int yWidth;
    int angle;
} BoxTag;
extern int func_80036220(Vector3D*, BoxTag*, int, int); // isInBox; second arg should be a box tag actually

// For 486
extern void func_8004F194(Vector3D*, Vector3D*, Vector3D*); // fAddVector
extern void func_80055B18(Moby*); // fDeleteMoby
extern short D_800658A0[0x100]; // sin
extern short D_80065920[0x100]; // cos
extern Moby* D_8006C550; // moby array ptr

typedef struct {
    Moby* unk0;
    int unk4;
} MobyTag_486;

// Placeholder for now, used in 486
typedef struct {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
    int unk14;
    int unk18;
    int unk1C;
    int unk20;
    int unk24;
    int unk28;
    int unk2C;
    int unk30;
    int unk34;
    int unk38;
    int unk3C;
    int unk40;
} MobyTag_514;

////////////////////////////////////////////////////////////////////////////////////

/**
 * MobyUpdate_1() - func_level_10_80074C50()
 * Gem
 * A good one to use to update the context
 * https://decomp.me/scratch/zKX9n
 * https://decomp.me/scratch/Birmk (newer)
 * https://decomp.me/scratch/6CkM7 (newest)
 */
INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_80074C50);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_800758AC);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_80075F38);

/**
 * MobyUpdate_200() - func_level_10_80077488() - MATCHING
 * Gem Basket
 * Ready to add, but seems to use a non-struct version of the overlay header
 * Will need to start defining the function pointers individually in ovl_header.h
 * https://decomp.me/scratch/HOd1q
 */
INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_80077488);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_80077748);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_80077C68);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_80077FE8);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_800782EC);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_80079088);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_800794B8);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_80079820);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_800799AC);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_80079B00);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_80079D58);

/**
 * MobyUpdate_459() - func_level_10_80079EE4() - MATCHING
 * 
 * https://decomp.me/scratch/ebfYd
 */
INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_80079EE4);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_80079FBC);

/**
 * MobyUpdate_265() - func_level_10_8007A840() - MATCHING
 * Portal text letters
 * Note that this uses "cos" as a label for the cos table
 * Not sure if this will work in practice as it's supposedly a built-in function, may need a new label
 * https://decomp.me/scratch/f6rLY
 */
INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_8007A840);

/**
 * MobyUpdate_559() - func_level_10_8007A8F0() - MATCHING
 * Breakable rock fragment
 * https://decomp.me/scratch/ebfYd
 */
void func_level_10_8007A8F0(Moby* moby) {
    func_80039714(moby);
}

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_8007A910);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_8007C7C0);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_8007D4F0);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_8007D62C);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_8007D7BC);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_8007DF18);

/**
 * MobyUpdate_486() - func_level_10_8007ED9C()
 * Balloon strings
 * https://decomp.me/scratch/2DEqI
 */
void func_level_10_8007ED9C(Moby* moby) {
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

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_8007EEBC);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_8007F0BC);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_8007F944);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_80080330);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_800805A0);

/**
 * MobyUpdate_942() - func_level_10_80080D88() - MATCHING
 * Superfly deactivator
 * https://decomp.me/scratch/TSST1
 */
void func_level_10_80080D88(Moby* moby) {
    BoxTag* mobyTag;

    mobyTag = (BoxTag*)moby->mobyTag;
    if (func_80036220(&spyro.position, mobyTag, 0, 0)) {
        spyro.superflyTimer = 0;
    }
}

/**
 * MobyUpdate_983() - func_level_10_80080DC8() - MATCHING
 * 
 * https://decomp.me/scratch/Mln7L
 */
INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_80080DC8);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_80080E80);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_80081AA0);

/**
 * MobyUpdate_1023() - func_level_10_80081CAC()
 * Whirlwind
 * Uses an if statement rather than a switch statement
 * Haven't fully figured out the placement of the else statement yet, seems complicated
 * https://decomp.me/scratch/0cVy2
 * https://decomp.me/scratch/GQsha (newer)
 */
INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_80081CAC);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_800821F8);

/**
 * MobyUpdate_501() - func_level_10_8008334C() - MATCHING
 * Egg fragment
 * https://decomp.me/scratch/rqdZK
 */
void func_level_10_8008334C(Moby* moby) {
    func_80039714(moby);
}

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_8008336C);

INCLUDE_ASM("asm/nonmatchings/overlays/level_10/moby", func_level_10_8008356C);
