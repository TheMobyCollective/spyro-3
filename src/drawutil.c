#include "common.h"
#include "drawutil.h"
#include "spyro.h"
#include "stdutil.h"

extern char D_80067570[16][12]; // might be an array of structs, not sure
extern PauseData pauseData; // 8006fbc4

//fDrawSpyroAndMobys
int func_8002D2C4();
void func_8002D9BC();
void func_8002DDA8();
void func_80030478();
void func_80031124();
void func_80033C5C();
void  func_8003CDA0();
int func_80040954(s32);
void func_8004E7AC(s32, s32, s32);
extern int D_8006C4F8;
extern int D_8006C668;
extern int D_8006E344;
extern char D_80071834;

////////////////////////////////////////////////////////////////////////////////////

// I'm using the REORDER_HACK in here which should just equal the normal INCLUDE_ASM right now
// At time of writing this is a file that would fail when changing to -G8 so this is just saving me time later

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_8001EBAC);

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_8001EC24);

/**
 * 8001ec5c fDrawSpyroAndMobys() - MATCHING
 * https://decomp.me/scratch/8b74e
 */
long long func_8001EC5C() {
    int tempUnk4;
    int surfaceType;
    char tempAnimProgress;

    func_8004E7AC(D_8006C668 - 12288, 0, 3072);
    func_80030478();
    func_80031124();
    func_80033C5C();
    func_8002DDA8();

    if (spyro.unk22[1] == 0)
    {
        if (D_8006E344 != 13 || D_8006C4F8 == 2)
        {
            tempUnk4 = spyro.unk4[1];
            if (tempUnk4 != 0) 
            {
                tempAnimProgress = spyro.unk3[2];
                spyro.position.z -= tempUnk4 * 2;
                
                surfaceType = func_80040954(spyro.unk11[2]);
                if (surfaceType == 4) {
                    spyro.unk3[2] = 250;
                } else {
                    spyro.unk3[2] = 244;
                }
                func_8003CDA0();
                
                spyro.position.z += spyro.unk4[1] * 2;
                spyro.unk4[1] = 0;
                spyro.unk3[2] = tempAnimProgress;
            }
            
            func_8003CDA0();
            func_8002D9BC();
            if (D_80071834 != 0) 
            {
                func_8002D2C4();
            }
                
            spyro.unk4[1] = tempUnk4;
            
        }
    }
    
    if (D_8006E344 == 6 && D_80071834 != 0) 
    {
        func_8002D2C4();
    }
}

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_8001EDEC);

/**
 * ???() - func_8001FABC()
 * https://decomp.me/scratch/RfQhe
 */
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_8001FABC);

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_8001FB10);

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

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_8001FF44);

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_800200A0);

/**
 * ???() - func_80020168()
 * https://decomp.me/scratch/qLRGj
 */
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_80020168);

/**
 * DrawStringCentered() - func_800202DC() - MATCHING
 * Implementing may mean changing some function signatures
 * https://decomp.me/scratch/iAe5h
 */
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_800202DC);

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_80020344);

/**
 * DrawStringRightAligned() - func_800203C4() - MATCHING
 * Implementing may mean changing some function signatures
 * https://decomp.me/scratch/YCZcN
 */
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_800203C4);

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_80020428);

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
 * ???() - func_80020DAC()
 * Pretty close, just a bit left
 * https://decomp.me/scratch/DkMBr
 */
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_80020DAC);
