#include "common.h"
#include "drawutil.h"

extern char D_80067570[16][12]; // might be an array of structs, not sure
extern PauseData pauseData; // 8006fbc4

////////////////////////////////////////////////////////////////////////////////////

// I'm using the REORDER_HACK in here which should just equal the normal INCLUDE_ASM right now
// At time of writing this is a file that would fail when changing to -G8 so this is just saving me time later

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_8001EBAC);

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_8001EC24);

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_8001EC5C);

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_8001EDEC);

/**
 * ???() - func_8001FABC()
 * https://decomp.me/scratch/RfQhe
 */
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_8001FABC);

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_8001FB10);

/**
 * ???() - func_8001FB74()
 * https://decomp.me/scratch/9NQVn
 */
void func_8001FB74(int arg0, int arg1, int arg2, int arg3) {

    LINE_G2* line;

    line = D_8006C664;
    
    line->tag = 0x04000000;
    line->code = 0x50;
    line->x0 = arg0;
    line->y0 = arg1;
    line->x1 = arg2;
    line->y1 = arg3;
    line->r0 = 180;
    line->g0 = 154;
    line->b0 = 17;
    line->r1 = 180;
    line->g1 = 154;
    line->b1 = 17; 
    
    func_8004E758(line);
    
    line++;
    D_8006C664 = line;
    
    line->tag = 0x04000000;
    line->code = 0x50;
    line->x0 = arg0 + 1;
    line->y0 = arg1 + 1;
    line->x1 = arg2 + 1;
    line->y1 = arg3 + 1;
    line->r0 = 128;
    line->g0 = 82;
    line->b0 = 0;
    line->r1 = 128;
    line->g1 = 82;
    line->b1 = 0;
    
    func_8004E758(line);
    D_8006C664 = line + 1;
}

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_8001FC90);

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_8001FD00);

INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/drawutil", func_8001FE48);

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
