#include "libgpu.h"
#include "warp.h"
#include "common.h"
#include "drawutil.h"
#include "loaders.h"
#include "savepoint.h"
#include "stdutil.h"
#include "spu.h"
#include "ovl_header.h"

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
// str
extern void func_80050578(int, int*, int, int); // void fLoadFromDisc(int sector,int *dest,int len,int sectorOffset)
// update
extern void func_80052A84();
extern void func_80053944();
extern void func_8005399C();
extern void func_80054E5C();
// psyq
extern int func_8005956C(int); // VSync
extern void func_8005A264(int);
extern int func_8005A478(RECT*, unsigned int);
extern void func_8005C564(DR_MODE*, int, int, int, int); // SetDrawMode - type and args to check
extern DRAWENV* func_8005E500(DRAWENV*, int, int, int, int); // SetDefDrawEnv
extern DISPENV* func_8005E5C0(DISPENV*, int, int, int, int); // SetDefDispEnv
extern void func_loading_80075114(short);
extern int func_loading_80077438();
extern void func_title_80074DEC(int);

// rdata
extern const char* D_80011254;

// data
extern unsigned char D_80066FCC[]; // [ARRAY] LevelIdToLevelIndex
extern unsigned char D_8006703C[]; // LevelIndexToPortalIndex (for portal exits)
extern PortalSpawn D_80067064[];
extern unsigned char D_80067134[]; // portal spawn rotations
extern FullPosition D_80067208[];  // homeworld vehicle / boss exit spawns

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
extern int D_8006C514;
extern int D_8006C4F8;
extern int D_8006C5C8;
extern int D_8006C714;
extern int D_8006C598;
extern int D_8006C718;

// bss
extern Game game;
extern StreamingData streamingData; // 8006E470
extern SpeedwayData speedwayData;
extern PauseData pauseData; // 8006FBC4
extern PauseData2 pauseData2;
extern WadHeader wadHeader;
extern Unk_8006d048 D_8006D048;
extern LevelWadHeader levelWadHeader; // 80072098
extern Savepoint savedData;

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
 * Something's happening around case 6, unfortunately - I don't know why, as it's matching in decomp.me
 * https://decomp.me/scratch/TOylz
 */
INCLUDE_ASM("asm/nonmatchings/warp", func_80058778);
#if 0
void func_80058778() {
    RECT sp10;
    Vector3D sp18;
    Vector3D sp28;
    int world;
    int world_0;
    
    int temp_s0_3;
    int levelId;
    int temp_s2;
    int var_s0;
    int levelIndex;
    int x;

    temp_s2 = pauseData.dat_8006fbc8;
    switch (temp_s2) {
    case 0:
        // TODO - D_80011254 usage below is weird
        if (pauseData.frameCount == 0) {
            func_80050578(streamingData.wadSector, D_80011254 + D_8006C714, wadHeader.loadImg[pauseData.cursorPos].size, wadHeader.loadImg[pauseData.cursorPos].offset);
            sp10.x = 0x200;
            sp10.y = 0;
            sp10.w = 0x200;
            sp10.h = 0xD8;
            func_8005A478(&sp10, D_80011254 + D_8006C714 + 0x1C);
            func_8005A264(0);
        }

        if (pauseData.frameCount >= 0xD) {
            if (pauseData.cursorPos == 5) {
                pauseData.dat_8006fbc8 = pauseData.cursorPos;
            } else {
                pauseData.dat_8006fbc8 = 1;
            }
        }
        break;
    case 1:
        if (loadStage >= 0) {
            func_8002CA50();
        } else if ((isDemoMode != 0) && (D_8006C5C8 != 0)) {
            pauseData.dat_8006fbc8 = 4;
            D_8006C514 = 3;
            D_8006C4F8 = 0;
        } else {
            if (currentLevel >= 0x3C) {
                pauseData.dat_8006fbc8 = 6;
            }
            else {
                pauseData.dat_8006fbc8 = 3;
            }
        }
        break;
    case 4:
        func_80052A84();
        if (D_8006C514 == 7) {
            pauseData.dat_8006fbc8 = 3;
        }
        break;
    case 2:
        if (func_loading_80077438() != 0) {
            pauseData.dat_8006fbc8 = 3;
        }
        break;
    case 3:
        x = pauseData.cursorPos; // only matches if exactly one of the conditions uses this variable??
        if ((x < 5) && (pauseData.cursorPos >= 0)) {
            D_8006C548 = 0;
            if (isDemoMode != 0) {
                func_80053944();
                if (D_8006C5C8 == 0) {
                    pauseData.dat_8006fbc8 = 2;
                }
                else {
                    pauseData.dat_8006fbc8 = 3;
                }
                pauseData.frameCount = 1;
                D_8006C598 = 0xFF;
                D_8006C718 = 1;
            } else {
                world = currentLevel / 10;
                if (currentLevel == (world * 10)) {
                    if ((((D_8006C73C / 10) * 10) == (D_8006C73C - 7)) && (D_8006C73C < 60)) {
                        if (D_8006C73C == (currentLevel + 7)) {
                            world_0 = (world - 1);
                            func_8004F178(&sp18, &D_80067208[world_0].pos);
                            sp18.z -= 0x164;
                            temp_s0_3 = D_80067208[world_0].angle;
                            func_8005399C();
                            func_8003B634(&savedData, &sp18, temp_s0_3);
                            savedData.swimState = 0;
                            break;
                        }
                        func_8005399C();
                        break;
                    }
                    
                    if (   (currentLevel == (currentLevel / 10) * 10)
                        && ((D_8006C73C / 10) * 10 != D_8006C73C - 8 || D_8006C73C == 78)
                        && (currentLevel < D_8006C73C)
                        && (D_8006C73C < currentLevel + 10 || D_8006C73C >= 77)) {
                        if (D_8006C73C >= 0x4D) {
                            levelIndex = D_80066FCC[6 + currentLevel];
                        } else {
                            levelIndex = D_80066FCC[D_8006C73C];
                        }
                        sp28.x = D_80067064[D_8006703C[levelIndex]].pos.x * 4;
                        sp28.y = D_80067064[D_8006703C[levelIndex]].pos.y * 4;
                        sp28.z = D_80067064[D_8006703C[levelIndex]].pos.z * 4 - 0x164;
                        var_s0 = D_80067134[D_8006703C[levelIndex]];
                        if (D_8006C73C >= 0x4D) {
                            var_s0 = (var_s0 + 0x80) & 0xFF;
                        }
                        func_8005399C();
                        func_8003B634(&savedData, &sp28, var_s0);
                        if (D_8006C73C < 0x4D) {
                            savedData.unk5 = 1;
                        }
                        if (D_80067064[D_8006703C[levelIndex]].swimming != 0) {
                            savedData.swimState = 2;
                        } else {
                            savedData.swimState = 0;
                        }
                    } else {
                        func_8005399C();
                    }
                } else {
                    func_8005399C();
                }
            }
        } else {
            switch (currentLevel) {
            case 0x3D:
                unk_ovlheader_80074464(1);
                break;
            case 0x4B:
                unk_ovlheader_80074464(2);
                break;
            case 0x4C:
                unk_ovlheader_80074464(3);
                break;
            case 0x3F:
                unk_ovlheader_80074464(4);
                break;
            case 0x41:
                unk_ovlheader_80074464(5);
                break;
            case 0x43:
                unk_ovlheader_80074464(6);
                break;
            case 0x3E:
                unk_ovlheader_80074464(7);
                break;
            case 0x40:
                unk_ovlheader_80074464(8);
                break;
            case 0x42:
                unk_ovlheader_80074464(9);
                break;
            case 0x44:
                unk_ovlheader_80074464(10);
                break;
            case 0x4D:
                unk_ovlheader_80074464(11);
                break;
            case 0x4E:
                unk_ovlheader_80074464(12);
                break;
            case 0x4F:
                unk_ovlheader_80074464(13);
                break;
            case 0x50:
                unk_ovlheader_80074464(14);
                break;
            case 0x45:
                unk_ovlheader_80074464(15);
                break;
            case 0x46:
                unk_ovlheader_80074464(16);
                break;
            case 0x47:
                unk_ovlheader_80074464(17);
                break;
            case 0x49:
                unk_ovlheader_80074464(18);
                break;
            case 0x4A:
                unk_ovlheader_80074464(19);
                break;
            }
        }
        break;
    case 5:
        func_80050578(streamingData.wadSector, D_80011254, wadHeader.titleOvl.size, wadHeader.titleOvl.offset);
        currentLevel = 0;
        D_8006C714 = wadHeader.titleOvl.size;
        func_8004E790(&D_8006D048, 0, 0x40);
        func_title_80074DEC(0);
        func_80054E5C();
        break;
    case 6: // sigh
        func_80050578(streamingData.wadSector, loadingData.D_800722c8, levelWadHeader.area[0].layout.size, levelWadHeader.area[0].layout.offset + wadHeader.cutscene[levelIndex].lvl.offset);
        loadingData.D_800722cc = func_8002B810(loadingData.D_800722c8);
        pauseData.dat_8006fbc8 = 3;
        break;
    }
    
    if (pauseData.dat_8006fbc8 != temp_s2) {
        pauseData.frameCount = 0;
        return;
    }
    pauseData.frameCount += 1;
}
#endif

/**
 * DrawLoadingImage() - func_80059038() - MATCHING
 * Matches if pauseData is split into two structs, investigate where this boundary is and what the implications for other functions are
 * https://decomp.me/scratch/0Jp0a
 */
void func_80059038() {
    SpriteData spr;
    int var_a0;
    const unsigned char* str;

    switch (pauseData.dat_8006fbc8) {
    case 0:
        if (pauseData.frameCount == 0) {
            func_8001EBAC();
            return;
        }
        
        if (pauseData.frameCount < 8) {
        	var_a0 = pauseData.frameCount * 16;
        } else {
        	var_a0 = 128;
        }
        func_80059358(var_a0, 0);
        
        if (pauseData.frameCount >= 8) {
            str = g_LoadingScreenStringTables[language][pauseData.dat_8006fbd4];
            if ((*str) && (!D_8006C548)) {
                if (currentLevel >= 60) {
                    func_80020344(str, 256, 193, 2); // cutscenes
                } else {
                    func_80020344(str, 256,  27, 2); // levels
                }
            }
        }
        return;
    default:
        return;
    case 1:
    case 4:
        if (pauseData.frameCount == 0) {
            func_8005E500(&pauseData2.dat_8006fc70, 0, 12, 512, 216);
            func_8005E5C0(&pauseData2.dat_8006fc58, 0,  0, 512, 240);
            pauseData2.dat_8006fc70.ofs[1] = 0;
            pauseData2.dat_8006fbfc.isbg = 0;
            pauseData2.dat_8006fc70.isbg = 0;
            pauseData2.dat_8006fbfc.dtd = 0;
            pauseData2.dat_8006fc70.dtd = 0;
            pauseData2.dat_8006fccc.screen.x = D_8006C694;
            pauseData2.dat_8006fc58.screen.x = D_8006C694;
            pauseData2.dat_8006fccc.screen.y = D_8006C698;
            pauseData2.dat_8006fc58.screen.y = D_8006C698;
        }
    case 2:
        spr.unk4 = 255;
        spr.unk1 = 154;
        spr.unk5 = 192;
        spr.unk0 = 0;
        spr.unk2 = 0;
        spr.unk6 = 368;
        func_800289C8(&spr,   0, 182);
        spr.unk6 = 372;
        func_800289C8(&spr, 256, 182);
        if ((loadStage >= 2) && (loadStage < 8) && (D_8006C548 == 0)) {
            func_8005956C(0);
            func_loading_80075114(186);
        }
        return;
    case 3:
        if (pauseData.frameCount == 0) {
            func_8005E500(&pauseData2.dat_8006fc70, 0, 240, 512, 216);
            func_8005E5C0(&pauseData2.dat_8006fc58, 0, 228, 512, 240);
            pauseData2.dat_8006fc70.ofs[1] = 228;
            pauseData2.dat_8006fbfc.isbg = 1;
            pauseData2.dat_8006fc70.isbg = 1;
            pauseData2.dat_8006fbfc.dtd = 1;
            pauseData2.dat_8006fc70.dtd = 1;
            pauseData2.dat_8006fccc.screen.x = D_8006C694;
            pauseData2.dat_8006fc58.screen.x = D_8006C694;
            pauseData2.dat_8006fccc.screen.y = D_8006C698;
            pauseData2.dat_8006fc58.screen.y = D_8006C698;
        }
        func_80020168();
        return;
    }
}

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
