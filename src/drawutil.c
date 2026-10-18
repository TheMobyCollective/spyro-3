#include "common.h"
#include "libgpu.h"
#include "drawutil.h"
#include "loaders.h"
#include "mobyfunc.h"
#include "stdutil.h"

extern void VSync(int);
extern void func_8004E7AC(int, int, int);

extern DB* D_8006C600; // current DB?
extern int D_8006C634;
extern void* D_8006C664;
extern int D_8006C668;
extern int D_8006C7D4;
extern int D_8006C7DC;

extern char D_80067570[16][12]; // might be an array of structs, not sure
extern PauseData pauseData; // 8006fbc4
extern DB g_DB[2];

////////////////////////////////////////////////////////////////////////////////////

// I'm using the REORDER_HACK in here which should just equal the normal INCLUDE_ASM right now
// At time of writing this is a file that would fail when changing to -G8 so this is just saving me time later

/**
 * ???() - func_8001EBAC() - MATCHING
 * https://decomp.me/scratch/v2ehU
 */
void func_8001EBAC() {
    RECT rect;

    DrawSync(0);
    VSync(0);
    rect.x = 0;
    rect.y = 0;
    rect.w = 512;
    rect.h = 240;
    ClearImage(&rect, 0, 0, 0);
    rect.y = 228;
    ClearImage(&rect, 0, 0, 0);
    DrawSync(0);
}

/**
 * ???() - func_8001EC24() - MATCHING
 * https://decomp.me/scratch/mFO0V
 */
void func_8001EC24() {
    func_8004E7AC(D_8006C668 - 0x3000, 0, 0x1C00);
    func_80022378();
}

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_8001EC5C);

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_8001EDEC);

/**
 * ???() - func_8001FABC() - MATCHING
 * https://decomp.me/scratch/3KSwA
 */
void func_8001FABC(int tpage) {
    DR_MODE* temp_s0 = D_8006C664;
    SetDrawMode(temp_s0, 1, 0, tpage, 0);
    func_8004E758(temp_s0);
    D_8006C664 = temp_s0 + 1;
}

/**
 * ???() - func_8001FB10() - MATCHING
 * Seems to be related to fading the screen to black
 * https://decomp.me/scratch/G2dBH
 */
void func_8001FB10(int arg0) {
    DrawSync(0);
    D_8006C7DC = arg0;
    loadingData.D_800722d4 =  loadingData.D_800722d8 - arg0;
    loadingData.D_800722d0 = (loadingData.D_800722d8 - arg0) - arg0;
    g_DB[0].dat_8006fc6c   = (loadingData.D_800722d8 - arg0) - arg0;
    g_DB[1].dat_8006fc6c   =  loadingData.D_800722d8 - arg0;
}

/**
 * ???() - func_8001FB74() - MATCHING
 * Draw line under NPC name
 * https://decomp.me/scratch/9NQVn
 */
void func_8001FB74(int x0, int y0, int x1, int y1) {

    LINE_G2* line;

    line = D_8006C664;
    
    line->tag = 0x04000000;
    line->code = 0x50;
    setXY2(line, x0, y0, x1, y1);
    setRGB0(line, 180, 154, 17);
    setRGB1(line, 180, 154, 17);
    
    func_8004E758(line);
    
    line++;
    D_8006C664 = line;
    
    line->tag = 0x04000000;
    line->code = 0x50;
    setXY2(line, x0 + 1, y0 + 1, x1 + 1, y1 + 1);
    setRGB0(line, 128, 82, 0);
    setRGB1(line, 128, 82, 0);
    
    func_8004E758(line);
    D_8006C664 = line + 1;
}

/**
 * ???() - func_8001FC90() - MATCHING
 * https://decomp.me/scratch/8lG9w
 */
void func_8001FC90(int x0, int x1, int y0, int y1) {
    POLY_F4* p;

    p = D_8006C664;
    p->tag = 0x05000000;

    *(int*)&p->r0 = 0x2A080808;
    
    p->x0 = x0;
    p->x1 = x1;
    p->x2 = x0;
    p->x3 = x1;
    p->y0 = y0;
    p->y1 = y0;
    p->y2 = y1;
    p->y3 = y1;
    
    func_8004E758(p);
    D_8006C664 = p + 1;
}

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_8001FD00);

/**
 * ???() - func_8001FE48() - MATCHING
 * https://decomp.me/scratch/bNzDh
 */
void func_8001FE48(int arg0, int arg1, int arg2, int arg3) {
    func_8001FABC(0x18);
    func_8001FC90(arg0 + 3, arg1 - 3,    arg2,        arg2 + 1);
    func_8001FC90(arg0 + 1, arg1 - 1,    arg2 + 1,    arg2 + 2);
    func_8001FC90(arg0,     arg1,        arg2 + 2,    arg3 - 2);
    func_8001FC90(arg0 + 1, arg1 - 1,    arg3 - 2,    arg3 - 1);
    func_8001FC90(arg0 + 3, arg1 - 3,    arg3 - 1,    arg3);
}

/**
 * ???() - func_8001FF44() - MATCHING
 * TODO - ready to add
 * https://decomp.me/scratch/Gqcxj
 */
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_8001FF44);

/**
 * ???() - func_800200A0() - MATCHING
 * TODO - ready to add
 * https://decomp.me/scratch/GZGND
 */
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_800200A0);

/**
 * ???() - func_80020168() - MATCHING
 * https://decomp.me/scratch/RZQZO
 */
void func_80020168() {
    RECT sp10;
    int i;
    
    DrawSync(0);
    VSync(0);
    
    sp10.x = 0;
    sp10.y = (D_8006C600 != &g_DB[0]) ? 240 : 12;
    sp10.w = 512;
    sp10.h = 216;
    
    MoveImage(&sp10, 0, (D_8006C600 == &g_DB[0]) ? 240 : 12);
    DrawSync(0);
    
    g_DB[0].m_DrawEnv.isbg = 0;
    g_DB[1].m_DrawEnv.isbg = 0;
    for (i = 0; i < 16; i++) {
        DB* env = (D_8006C600 != &g_DB[0]) ? &g_DB[0] : &g_DB[1];
        D_8006C600 = env;
        D_8006C7D4 = D_8006C634 + 0x1000;
        D_8006C664 = env->dat_8006fc6c;
        
        if (i == 0) {
            func_800200A0(2, 16, 16, 16);
        }
        else {
            func_800200A0(2, 32, 32, 32);
        }
        
        DrawSync(0);
        VSync(0);
        PutDispEnv(&D_8006C600->m_DispEnv);
        PutDrawEnv(&D_8006C600->m_DrawEnv);
        DrawOTag(func_8004E664(0x580));
    }
    func_8001EBAC();
    g_DB[0].m_DrawEnv.isbg = 1;
    g_DB[1].m_DrawEnv.isbg = 1;
}

/**
 * DrawStringCentered() - func_800202DC() - MATCHING
 * https://decomp.me/scratch/iAe5h
 */
void DrawStringCentered(char* arg0, int arg1, int arg2, int arg3) {
    int x = arg1;
    x -= (func_8002EBB0(arg0) >> 1);
    func_8002E748(arg0, x, arg2, arg3, 0);
}

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_80020344);

/**
 * DrawStringRightAligned() - func_800203C4() - MATCHING
 * https://decomp.me/scratch/YCZcN
 */
void DrawStringRightAligned(char* arg0, int arg1, int arg2, int arg3) {
    int x = arg1;
    x -= func_8002EBB0(arg0);
    func_8002E748(arg0, x, arg2, arg3, 0);
}

/**
 * ???() - func_80020428() - MATCHING
 * TODO - ready to add
 * https://decomp.me/scratch/Gcvhv
 */
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_80020428);

/**
 * ???() - func_80020530() - MATCHING
 * TODO - ready to add
 * https://decomp.me/scratch/i0k7F
 */
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_80020530);

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_80020790);

/**
 * ???() - func_80020D70() - MATCHING
 * https://decomp.me/scratch/iZDl3
 */
void func_80020D70() {
    func_80020530((char*)&D_80067570[pauseData.menuType]);
}

/**
 * DrawStringRowCentered() - func_80020DAC() - MATCHING
 * https://decomp.me/scratch/0lU0I
 */
void DrawStringRowCentered(char** arg0, int arg1, int arg2, int arg3) {
    int i;
    int var_s3;
    int var_s2 = 0;
    char **p = arg0;

    while (*p[var_s2] != 0) var_s2++;

    var_s3 = arg2 - var_s2 * 7;
    for (i = 0; i < var_s2; i++) {
        DrawStringCentered(arg0[i], arg1, var_s3, arg3);
        var_s3 += 14;
    }
}
