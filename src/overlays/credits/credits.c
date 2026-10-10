#include "libgpu.h"
#include "common.h"

extern void* D_8006C664;

/**
 * ???() - func_credits_800744BC() - MATCHING
 * https://decomp.me/scratch/0F0ce
 */
void func_credits_800744BC(int arg0, char r, char g, char b) {
    struct {
        DR_MODE drMode;
        POLY_F4 f4;
    } *poly = D_8006C664;
    
    SetDrawMode(&poly->drMode, 1, 0, arg0 << 5, nullptr);
    func_8004E71C(&poly->drMode.tag, 8);
    poly->f4.tag = 0x05000000;
    poly->f4.code = 0x28 | 2;
    poly->f4.y0 = 0xC;
    poly->f4.y1 = 0xC;
    poly->f4.x0 = 0;
    poly->f4.x1 = 0x200;
    poly->f4.x2 = 0;
    poly->f4.y2 = 0xE4;
    poly->f4.x3 = 0x200;
    poly->f4.y3 = 0xE4;
    poly->f4.r0 = r;
    poly->f4.g0 = g;
    poly->f4.b0 = b;
    func_8004E71C(&poly->f4.tag, 8);
    D_8006C664 = poly + 1;
}

INCLUDE_ASM("asm/nonmatchings/overlays/credits/credits", func_credits_8007458C);

INCLUDE_ASM("asm/nonmatchings/overlays/credits/credits", func_credits_80074820);

INCLUDE_ASM("asm/nonmatchings/overlays/credits/credits", func_credits_80074BA0);

INCLUDE_ASM("asm/nonmatchings/overlays/credits/credits", func_credits_80076118);
