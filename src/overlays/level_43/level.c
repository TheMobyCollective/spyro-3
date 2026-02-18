#include "common.h"
#include "mobyutil.h"
#include "stdutil.h"
#include "ovl_header.h"
#include "spyro.h"


INCLUDE_ASM("asm/nonmatchings/overlays/level_43/level", func_level_43_8008B598);

extern int D_8006E044;
extern unsigned int D_8006E048;
extern Spyro spyro;
extern void func_8004F178(Vector3D*, Vector3D*); // fSetVector
extern void func_800293C4(unsigned short, unsigned short, int, int, int);           
extern void func_80029674(void*, int*, int*);                 
extern void func_80029708(void*, int*, int*, int*);

typedef struct {
    short unk0;
    short unk2;
    unsigned char unk4 [0x22]; //pad?
    short unk26;
    unsigned char unk28 [0x17]; //pad?
    unsigned char unk3F;
    int unk40;
} ARG_8008DDE4;


/*
 * ???() - func_level_43_8008B8B4 - MATCHING
 * https://decomp.me/scratch/QyTEy
 */
extern void func_level_43_8008B8B4(Moby* arg0, int arg1) {
    spyro.unk20a = 1;
    spyro.unk20b = arg1;
    spyro.critterMobyPtr = arg0;
    if (((D_8006E044 == 7) && ((unsigned int) D_8006E048 >= 2U)) || (spyro.unk17b & 0x2000)) {
        arg0->lowDrawDistance = 0;
        arg0->drawn = 0;
        return;
    }
    arg0->lowDrawDistance = 0x10;
}


INCLUDE_ASM("asm/nonmatchings/overlays/level_43/level", func_level_43_8008B92C);

INCLUDE_ASM("asm/nonmatchings/overlays/level_43/level", func_level_43_8008BE00);

INCLUDE_ASM("asm/nonmatchings/overlays/level_43/level", func_level_43_8008BF10);

INCLUDE_ASM("asm/nonmatchings/overlays/level_43/level", func_level_43_8008C498);



/*
 * ???() - func_level_43_8008C5AC - MATCHING
 */

int func_level_43_8008C5AC(Vector3D* arg0, int arg1, Moby* arg2) {
    int temp_s0;
    int temp_s1;
    
    temp_s1 = arg1;
    temp_s0 = spyro.unk17c;
    
    spyro.unk17a = 0x10000040;
    spyro.unk17d = arg2;

    temp_s0 = temp_s0 == 2;
    
    func_8004F178(&spyro.unk19, arg0);
    
    spyro.unk20[0] = temp_s1;
    
    return temp_s0;
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






void func_level_43_8008DDE4(ARG_8008DDE4* arg0) {
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

