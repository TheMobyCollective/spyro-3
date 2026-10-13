#include "common.h"
#include "draw.h"

// drawutil
void func_800200A0(int, int, int, int);

// loading overlay functions
void func_loading_80075B74();
void func_loading_80076EE8();
void func_loading_80077964();

// credits overlay functions
void func_credits_80076118();

// Other
extern PauseData pauseData; // 8006fbc4

// sbss
extern int D_8006C514;
extern int D_8006C598;

/////////////////////////////////////////////////////////////

void DrawStringCentered(const char* arg0, int arg1, int arg2, int arg3);
void func_8001E460(int arg0);
void func_8001FE48(int arg0, int arg1, int arg2, int arg3);
int func_8002EBB0(int arg);
extern const char* D_80069DE0[];
extern int D_8006C658;
extern int D_8006C76C;
extern int D_8006C7E4;
extern int D_8006D07C;
extern int D_8006D080;
extern int D_8006D084;
extern int D_8006E038;
extern unsigned char D_8006E33C;
extern unsigned char D_8006E33D;
extern unsigned char D_8006E33E;
extern unsigned char D_8006FC15;
extern unsigned char D_8006FC16;
extern unsigned char D_8006FC17;
extern unsigned char D_8006FC89;
extern unsigned char D_8006FC8A;
extern unsigned char D_8006FC8B;
extern unsigned char D_80071438;
extern unsigned char D_8007143A;
extern unsigned char D_8007143B;

void func_8001D274(int arg1) {
    int temp_a0;
    int temp_v0;
    int var_a1;
    int temp_v0_2;

    if (D_8006E038 != 0) {
        temp_a0 = (int) (D_8006E33C + ((int) D_8006D07C >> 4)) >> 1;
        temp_v0 = (int) (D_8006E33C + ((int) D_8006D080 >> 4)) >> 1;
        var_a1 = (int) (D_8006E33C + ((int) D_8006D084 >> 4)) >> 1;
        D_8006FC15 = (unsigned char) temp_a0;
        D_8006FC16 = (unsigned char) temp_v0;
        D_8006FC17 = (unsigned char) var_a1;
        D_8006FC89 = (unsigned char) temp_a0;
        D_8006FC8A = (unsigned char) temp_v0;
        D_8006FC8B = (unsigned char) var_a1;
    } else {
        D_8006FC15 = D_8006E33C;
        D_8006FC16 = D_8006E33D;
        D_8006FC17 = D_8006E33E;
        D_8006FC89 = D_8006E33C;
        D_8006FC8A = D_8006E33D;
        D_8006FC8B = D_8006E33E;
    }
    func_8001E460(0x3D);
    if (D_8006C658 == 1) {
        if ((D_80071438 == 0) && ((D_8007143A != 0xFF) || (D_8007143B != D_8007143A))) {
            D_8006C7E4 = D_8006C658;
        }
        
        temp_v0_2 = func_8002EBB0((int)D_80069DE0[D_8006C76C]) >> 1;
        func_8001FE48(0xF9 - temp_v0_2, temp_v0_2 + 0x104, 0x32, 0x3F);
        DrawStringCentered(D_80069DE0[D_8006C76C], 0x100, 0x34, 1);
    }
}

/**
 * DrawDuringDialogue() - func_8001D424()
 * Lots to do, also differs in 1.1
 * https://decomp.me/scratch/0c0gC
 */
INCLUDE_ASM("asm/nonmatchings/draw", func_8001D424);

INCLUDE_ASM("asm/nonmatchings/draw", func_8001DC3C);

INCLUDE_ASM("asm/nonmatchings/draw", func_8001DC5C);

INCLUDE_ASM("asm/nonmatchings/draw", func_8001DD1C);

/**
 * ???() - func_8001E2A8() - MATCHING
 * https://decomp.me/scratch/Don2Z
 */
void func_8001E2A8() {
    func_8001E460(0x1D);
}

/**
 * ???() - func_8001E2C8() - MATCHING
 * https://decomp.me/scratch/Ded5J
 */
void func_8001E2C8() {
    switch (pauseData.dat_8006fbc8) {
    case 0:
    case 5:
        func_8001E460(0xD);
        break;
    case 1:
    case 2:
    case 3:
    case 4:
        func_loading_80075B74();
        break;
    }
}

/**
 * ???() - func_8001E32C() - MATCHING
 * https://decomp.me/scratch/6HI31
 */
void func_8001E32C() {
    if (pauseData.dat_8006fbc8 == 0) {
        func_8001E460(0x3D);
        return;
    }
    if (pauseData.dat_8006fbc8 < 3) {
        func_loading_80076EE8();
    }
}

/**
 * ???() - func_8001E374() - MATCHING
 * https://decomp.me/scratch/V7eXK
 */
void func_8001E374() {
    func_credits_80076118();
}

/**
 * ???() - func_8001E394() - MATCHING
 * https://decomp.me/scratch/Szw3a
 */
void func_8001E394() {
    switch (pauseData.dat_8006fbc8) {
    case 0:
    case 5:
        func_8001E460(0x3D);
        break;
    case 1:
    case 2:
    case 3:
    case 4:
        func_loading_80077964();
        break;
    }
}

/**
 * ???() - func_8001E3F8() - MATCHING
 * https://decomp.me/scratch/qdEH2
 */
void func_8001E3F8() {
    switch (D_8006C514) {
    case 0:
    case 1:
    case 8:
    case 9:
        func_8001E460(0x3D);
        break;
    default:
        func_800200A0(2, D_8006C598, D_8006C598, D_8006C598);
        break;
    }
}

/**
 * ???() - func_8001E460() - MATCHING
 * Ready to add
 * https://decomp.me/scratch/k2213
 */
INCLUDE_ASM("asm/nonmatchings/draw", func_8001E460);

/**
 * ???() - func_8001E618() - MATCHING
 * https://decomp.me/scratch/6OYTK
 */
void func_8001E618() {
    func_8001E460(0x3D);
}

/**
 * Draw() - func_8001E638()
 */
INCLUDE_ASM("asm/nonmatchings/draw", Draw);
