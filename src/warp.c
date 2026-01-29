#include "warp.h"
#include "common.h"
#include "drawutil.h"

//////////////////////////////////////////////////////////////////////////////////////////
// Externs

// types
// ?
typedef struct {
    unsigned int tag;
    unsigned char r0, g0, b0, code;
    short x0, y0;
    unsigned char u0, v0;
    unsigned short clut;
    short w, h;
} SPRT; // psyq

// Some sort of sprite data, probably used for the text box
// doesn't seem to be the same as the sprite definitions used elsewhere (w/ the class)
typedef struct {
    unsigned char unk0;
    unsigned char unk1;
    short unk2;
    unsigned char unk4;
    unsigned char unk5;
    short unk6;
} SpriteData;

// text
// hud
extern int* func_800289C8(SpriteData*, short, short); // first arg is probably a struct of size 8
// spu
extern void func_8003BEDC();
// stdutil
extern void func_8004E71C(void*, int); // fAddWorldOT
// psyq
extern int func_8005956C(int); // VSync
extern void func_8005C564(DR_MODE*, int, int, int, int); // SetDrawMode - type and args to check
extern DRAWENV* func_8005E500(DRAWENV*, int, int, int, int); // SetDefDrawEnv
extern DISPENV* func_8005E5C0(DISPENV*, int, int, int, int); // SetDefDispEnv
extern void func_loading_80075114(short);

// sbss
extern int loadStage; // 8006C518
extern int D_8006C534;
extern int D_8006C548;
extern int levelIndex; // 8006C58C
extern int currentLevel; // 8006C5BC
extern int D_8006C60C;
extern int isDemoMode; // 8006C658
extern void* D_8006C664;
extern short D_8006C694;
extern short D_8006C698;
extern int D_8006C73C;
extern int language; // 8006C76C

// bss
extern Game game;
extern StreamingData streamingData;
extern SpeedwayData speedwayData;
extern PauseData pauseData; // 8006FBC4

//////////////////////////////////////////////////////////////////////////////////////////

// TODO: Fix the awful string hack
// TODO: Match the functions from the bottom up
// TODO: Replace externs with header includes

//////////////////////////////////////////////////////////////////////////////////////////

const char* g_LoadingScreenStrings[24] = {
    "THE ADVENTURE CONTINUES\0", // \0 Ends with a 00 00 as a bandaid solution for the weird jtbl alignment :(
    "Our Hero Takes A Rest...",
    "An Evil Plot Unfolds...",
    "A Powerful Villain Emerges...",
    "A Desperate Rescue Begins...",
    "Bianca Strikes Back",
    "Spike Is Born",
    "A Monster To End All Monsters",
    "The Second Warning",
    "Hunter's Tussle",
    "An Apology, And Lunch",
    "The Escape!",
    "No Hard Feelings",
    "Byrd, James Byrd",
    "A Duplicitous, Larcenous Ursine",
    "The Dancing Bear",
    "Deja Vu?",
    "A Familiar Face",
    "Billy In The Wall",
    "One Less Noble Warrior",
    "THE END",
    "Entering Demo Mode",
    "Exiting Demo Mode",
    "THE ADVENTURE BEGINS"
};

// For PAL
const char** g_LoadingScreenStringTables[] = {
    g_LoadingScreenStrings
};

/**
 * WarpToLevel() - func_800584BC() - MATCHING
 * TODO - READY TO IMPLEMENT, but may have issues
 * Due to the strings in this file, I'll need to match from the bottom up!
 * https://decomp.me/scratch/bz7v4
 */
INCLUDE_ASM("asm/nonmatchings/warp", func_800584BC);
#if 0
void func_800584BC(int pType, int pLevelId) {
    if (game.state == GAMESTATE_CREDITS) D_8006C548 = 1;
    else D_8006C548 = 0;
    
    if (!isDemoMode) speedwayData.dat_8006fa40 = 0;

    switch(pType) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
        if (isDemoMode) {
            pauseData.dat_8006fbd4 = 21;
        }
        else {
            if ((pLevelId == 10) && (D_8006C534 != 0)) {
                pauseData.dat_8006fbd4 = 23;
                D_8006C534 = 0;
            } else {
                pauseData.dat_8006fbd4 = 0;
            }
        }
        break;
    case 5:
        if (isDemoMode) pauseData.dat_8006fbd4 = 22;
        else pauseData.dat_8006fbd4 = 1;
        break;
    case 6:
        switch (pLevelId) {
        case 0x3D:
            pauseData.dat_8006fbd4 = 2;
            break;
        case 0x4B:
            pauseData.dat_8006fbd4 = 3;
            break;
        case 0x4C:
            pauseData.dat_8006fbd4 = 4;
            break;
        case 0x3F:
            pauseData.dat_8006fbd4 = 5;
            break;
        case 0x41:
            pauseData.dat_8006fbd4 = 6;
            break;
        case 0x43:
            pauseData.dat_8006fbd4 = 7;
            break;
        case 0x3E:
            pauseData.dat_8006fbd4 = 8;
            break;
        case 0x40:
            pauseData.dat_8006fbd4 = 9;
            break;
        case 0x42:
            pauseData.dat_8006fbd4 = 10;
            break;
        case 0x44:
            pauseData.dat_8006fbd4 = 11;
            break;
        case 0x4D:
            pauseData.dat_8006fbd4 = 12;
            break;
        case 0x4E:
            pauseData.dat_8006fbd4 = 13;
            break;
        case 0x4F:
            pauseData.dat_8006fbd4 = 14;
            break;
        case 0x50:
            pauseData.dat_8006fbd4 = 15;
            break;
        case 0x45:
            pauseData.dat_8006fbd4 = 16;
            break;
        case 0x46:
            pauseData.dat_8006fbd4 = 17;
            break;
        case 0x47:
            pauseData.dat_8006fbd4 = 18;
            break;
        case 0x49:
            pauseData.dat_8006fbd4 = 19;
            break;
        case 0x4A:
            pauseData.dat_8006fbd4 = 20;
            break;
        }
        break;
    }

    if (pType == 0) {
        if (pLevelId >= 50) {
            pType = 3;
        } else {
            pType = (pLevelId / 10) - 1;
        }
    }
    else if (pType == 6) {
        pType = pLevelId - 55;
    }

    game.state = 5;
    pauseData.dat_8006fbc8 = 0;
    pauseData.frameCount = 0;
    pauseData.cursorPos = pType;
    loadStage = 0;
    D_8006C60C = levelIndex;
    
    if (currentLevel < 60 || currentLevel >= 77) {
        D_8006C73C = currentLevel;
    }
    
    currentLevel = pLevelId;
    pauseData.dat_8006fbfc.r0 = 8;
    pauseData.dat_8006fbfc.g0 = 8;
    pauseData.dat_8006fbfc.b0 = 8;
    pauseData.dat_8006fc70.r0 = 8;
    pauseData.dat_8006fc70.g0 = 8;
    pauseData.dat_8006fc70.b0 = 8;
    func_8001FB10(0x14000);
    func_8003BEDC();
    streamingData.musicEnabled = 1;
}
#endif

/**
 * UpdateLoadingImage() - func_80058778() - MATCHING
 * Worth cleaning a bit and sorting out the warnings
 * https://decomp.me/scratch/TOylz
 */
INCLUDE_ASM("asm/nonmatchings/warp", func_80058778);

/**
 * DrawLoadingImage() - func_80059038() - MATCHING
 * Matches if pauseData is split into two structs, investigate where this boundary is and what the implications for other functions are
 * https://decomp.me/scratch/0Jp0a
 */
INCLUDE_ASM("asm/nonmatchings/warp", func_80059038);

/**
 * ???() - func_80059358() - MATCHING
 * Possibly relating to the warp loading screen / fading
 * https://decomp.me/scratch/8RQLn
 */
void func_80059358(int arg0, int arg1) {
    int i;
    struct {
        DR_MODE drMode;
        SPRT sprite;
    } *temp_s0;

    for (i = 0; i < 4; i++) {
        temp_s0 = D_8006C664;
        func_8005C564(&(temp_s0->drMode), 1, 0, 264 + 2 * i, 0);
        func_8004E71C((void*)temp_s0, arg1);
        temp_s0->sprite.tag = 0x04000000;
        temp_s0->sprite.code = 100;
        temp_s0->sprite.x0 = i << 7;
        temp_s0->sprite.y0 = 12;
        temp_s0->sprite.w = 128;
        temp_s0->sprite.r0 = arg0;
        temp_s0->sprite.g0 = arg0;
        temp_s0->sprite.b0 = arg0;
        temp_s0->sprite.u0 = 0;
        temp_s0->sprite.v0 = 0;
        temp_s0->sprite.h = 216;
        func_8004E71C((void*)&(temp_s0->sprite.tag), arg1);
        D_8006C664 = temp_s0 + 1;
    }
}
