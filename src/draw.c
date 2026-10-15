#include "common.h"
#include "camera.h"
#include "cyclorama.h"
#include "draw.h"
#include "drawutil.h"
#include "hud.h"
#include "mobyfunc.h"
#include "pad.h"
#include "tracers.h"

// loading overlay functions
void func_loading_80075B74();
void func_loading_80076EE8();
void func_loading_80077964();

// credits overlay functions
void func_credits_80076118();

// partsdraw
void func_8003AA38();

// sbss
extern int D_8006C514;
extern int D_8006C598;
extern int D_8006C5B8;
extern int D_8006C658;
extern int D_8006C6D4;
extern int D_8006C76C;
extern int D_8006C7C0;
extern int D_8006C7E4;

// data
extern const char* D_80069DE0[]; // "DEMO MODE"

// bss
extern PauseData pauseData; // 8006fbc4
extern Unk_8006d048 D_8006D048;
extern PsyqPad demoPadState;
extern DB g_DB[2];

typedef struct {
    int unk0;
    int unk4;
    Colour unk8;
    void* unkC; // layout Skybox
} Unk_8006e334;
extern Unk_8006e334 D_8006E334;

/////////////////////////////////////////////////////////////

/**
 * ???() - func_8001D274() - MATCHING 
 * https://decomp.me/scratch/trvA1
 */
void func_8001D274() {
    if (g_Camera.unk40 != 0) {
        g_DB[0].m_DrawEnv.r0 = (D_8006E334.unk8.r + ( D_8006D048.unk34 >> 4)) >> 1;
        g_DB[0].m_DrawEnv.g0 = (D_8006E334.unk8.r + ( D_8006D048.unk38 >> 4)) >> 1;
        g_DB[0].m_DrawEnv.b0 = (D_8006E334.unk8.r + ( D_8006D048.unk3C >> 4)) >> 1;
        g_DB[1].m_DrawEnv.r0 = (D_8006E334.unk8.r + ( D_8006D048.unk34 >> 4)) >> 1;
        g_DB[1].m_DrawEnv.g0 = (D_8006E334.unk8.r + ( D_8006D048.unk38 >> 4)) >> 1;
        g_DB[1].m_DrawEnv.b0 = (D_8006E334.unk8.r + ( D_8006D048.unk3C >> 4)) >> 1;
    } else {
        g_DB[0].m_DrawEnv.r0 = D_8006E334.unk8.r;
        g_DB[0].m_DrawEnv.g0 = D_8006E334.unk8.g;
        g_DB[0].m_DrawEnv.b0 = D_8006E334.unk8.b;
        g_DB[1].m_DrawEnv.r0 = D_8006E334.unk8.r;
        g_DB[1].m_DrawEnv.g0 = D_8006E334.unk8.g;
        g_DB[1].m_DrawEnv.b0 = D_8006E334.unk8.b;
    }
    
    func_8001E460(0x3D);
    
    if (D_8006C658 == 1) {
        int strLen;
        if (demoPadState.status == 0
        && (demoPadState.input[0] != 0xFF || demoPadState.input[1] != demoPadState.input[0])) {
            D_8006C7E4 = D_8006C658;
        }
        strLen = func_8002EBB0((void*)D_80069DE0[D_8006C76C]) >> 1;
        func_8001FE48(0xF9 - strLen, 0x104 + strLen, 0x32, 0x3F);
        DrawStringCentered((void*)D_80069DE0[D_8006C76C], 0x100, 0x34, 1);
    }
}

/**
 * DrawDuringDialogue() - func_8001D424()
 * Lots to do, also differs in 1.1
 * https://decomp.me/scratch/0c0gC
 */
INCLUDE_ASM("asm/nonmatchings/draw", func_8001D424);

/**
 * ???() - func_8001DC3C() - MATCHING 
 * https://decomp.me/scratch/D8Vxh
 */
void func_8001DC3C() {
    func_8001E460(0x3D);
}

/**
 * ???() - func_8001DC5C() - MATCHING 
 * https://decomp.me/scratch/kuPho
 */
void func_8001DC5C() {
    switch (pauseData.dat_8006fbc8) {
    case 0:
    case 4:
        if (D_8006C598 == 0xFF) {
            func_8001EBAC();
        }
        func_8001E460(61);
        break;
    case 1:
    case 2:
        g_DB[0].m_DrawEnv.r0 = 0;
        g_DB[0].m_DrawEnv.g0 = 0;
        g_DB[0].m_DrawEnv.b0 = 0;
        g_DB[1].m_DrawEnv.r0 = 0;
        g_DB[1].m_DrawEnv.g0 = 0;
        g_DB[1].m_DrawEnv.b0 = 0;
        break;
    case 3:
        func_800200A0(2, D_8006C598, D_8006C598, D_8006C598);
        break;
    }
}

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
 * Takes a flag bitmask
 * https://decomp.me/scratch/k2213
 */
void func_8001E460(int arg0) {
    int i;

    if (arg0 & 1) {
        func_8001EC5C();
    }
    
    func_8002A580();
    
    if (arg0 & 4) {
        func_8001EC24();
    }
    
    if (arg0 & 0x10) {
        func_8002ECA8();
        func_8002F098();
        func_8002F5B4();
        func_8002FB68();
        for (i = 0; i < 8; i++) {
            if (D_80070260[i].unk0 != 0) {
                func_8002FEE0(&D_80070260[i]);
            }
        }
    }
    
    if (arg0 & 0x20) {
        func_80029E48();
    }
    
    if (arg0 & 8) {
        if (D_8006C5B8 != 0) {
            func_8001C368();
        }
        func_8001EDEC();
    }
    
    if (arg0 & 0x10) {
        func_8003AA38();
    }
    
    if (D_8006C598 != 0) {
        func_800200A0(2, D_8006C598, D_8006C598, D_8006C598);
    }
    if (D_8006C7C0 != 0) {
        func_800200A0(1, D_8006C7C0, D_8006C7C0, D_8006C7C0);
    }
    if (D_8006C6D4 != 0) {
        func_800200A0(1, D_8006C6D4, 0, 0);
        D_8006C6D4 = D_8006C6D4 - 0x20;
        MIN(D_8006C6D4, 0);
    }
    func_8001FF44();
    /*
    Jul27: // abStack56 is a 32 byte buffer
    sprintf((char *)abStack56,"%d %d %d",GlobalDifficultyScore,GlobalDifficulty,LocalDifficulty);
    FUN_8002eaac(abStack56,0x194,0x12,0,0); // not sure what this corresponds to in Sep14
    */
}

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
