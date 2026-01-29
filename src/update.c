#include "common.h"
#include "environment.h"
#include "tracers.h"
#include "savepoint.h"
#include "camera.h"
#include "pad.h"
#include "spu.h"
#include "stdutil.h"
#include "warp.h"
#include "ovl_header.h"

// hud
extern int func_800285A4(int); // UpdateHud

// mobyupdate
extern void func_8003038C(); // UpdateMobys

// spyroupdate
extern void func_8003E83C(); // UpdateSpyro

// str
extern void func_8004FA24();

// updatepause
extern void func_80057834(); // pause updates

//extern void func_title_8007566C(); // title screen updates // "ovlHeader+0x139C"

// data
extern unsigned char levelIndexToHomeworldLevelId[40]; // 800671A0

// sdata
extern int loadStage; // 8006C518
extern int levelIndex; // 8006C58C
extern int D_8006C598;
extern Moby* D_8006C5F8; // dunno what this is but it's a Moby, probably bullet time related
extern int deltaTime; // 8006C648
extern short D_8006C67C;
extern int D_8006C718;
extern int D_8006C7C8;

// bss
extern Savepoint unsavedData; // 8006C7F8
extern Savepoint savedData; // 8006D088
extern Game game; // 8006E344 - game.state
extern StreamingData streamingData; // 8006e470
extern PauseData pauseData; // 8006fbc4

////////////////////////////////////////////////////////////////////////////////////

INCLUDE_ASM("asm/nonmatchings/update", func_80050B90);

INCLUDE_ASM("asm/nonmatchings/update", func_80050F18);

INCLUDE_ASM("asm/nonmatchings/update", func_800512E4);

INCLUDE_ASM("asm/nonmatchings/update", func_800518F8);

// Different in 1.1
INCLUDE_ASM("asm/nonmatchings/update", func_80051A60);

/**
 * ???() - func_800527C4()
 * Does something with egg / dragon data, has placeholder struct and one register switch hasn't been fixed yet
 * https://decomp.me/scratch/i3rjG
 */
INCLUDE_ASM("asm/nonmatchings/update", func_800527C4);

INCLUDE_ASM("asm/nonmatchings/update", func_80052854);

INCLUDE_ASM("asm/nonmatchings/update", func_8005289C);

INCLUDE_ASM("asm/nonmatchings/update", func_80052918);

INCLUDE_ASM("asm/nonmatchings/update", func_80052A84);

INCLUDE_RODATA("asm/nonmatchings/update", D_80010C9C);

INCLUDE_ASM("asm/nonmatchings/update", func_80053374);

/**
 * InitStateFadeIn() - func_80053944() - MATCHING
 * https://decomp.me/scratch/zZDVz
 */
void func_80053944(void) {
    pauseData.dat_8006fbc8 = 0;
    pauseData.frameCount = 0;
    pauseData.menuType = 0;
    pauseData.dat_8006fbd4 = 0;
    game.state = GAMESTATE_FADE_IN;
    func_8003BEDC();
    streamingData.musicEnabled = 1;
}

/**
 * ???() - func_8005399C() - MATCHING
 * Worth reviewing for the structs etc.
 * https://decomp.me/scratch/MKuo7
 */
void func_8005399C(void) {
    func_80053944(); // init state fade in
    pauseData.dat_8006fbc8 = 2;
    pauseData.frameCount = 1;
    D_8006C598 = 0xFF;
    D_8006C718 = 1;
    func_8004E790(&savedData, 0, 0x850);
    func_8004E790(&unsavedData, 0, 0x850);
}

INCLUDE_ASM("asm/nonmatchings/update", func_80053A10);

/**
 * GoToLevel() - func_80053F50()
 * It's getting there, mostly register shit now
 * Actually pretty portal focused rather than going to levels in general
 * This is a function that is different in 1.1
 * https://decomp.me/scratch/0zqbG
 */
INCLUDE_ASM("asm/nonmatchings/update", func_80053F50);

INCLUDE_ASM("asm/nonmatchings/update", func_80054450);

/**
 * InitGameOver() - func_80054AF8() - MATCHING
 * https://decomp.me/scratch/G5jiI
 */
void func_80054AF8(void) {
    game.state = GAMESTATE_GAME_OVER;
    pauseData.dat_8006fbc8 = 0;
    D_8006C598 = 0;
    D_8006C7C8 = levelIndexToHomeworldLevelId[levelIndex];
    loadStage = 0;
    func_8003BEDC();
    streamingData.musicEnabled = 1;
}

INCLUDE_ASM("asm/nonmatchings/update", func_80054B64);

/**
 * ???() - func_80054CD8() - MATCHING
 * Worth reviewing for the structs etc.
 * https://decomp.me/scratch/kCgmm
 */
INCLUDE_ASM("asm/nonmatchings/update", func_80054CD8);

INCLUDE_ASM("asm/nonmatchings/update", func_80054D84);

INCLUDE_ASM("asm/nonmatchings/update", func_80054E5C);

/**
 * ???() - func_80054F94() - MATCHING
 * Worth reviewing for the structs etc.
 * https://decomp.me/scratch/haRsG
 */
INCLUDE_ASM("asm/nonmatchings/update", func_80054F94);

/**
 * ???() - func_80055020() - MATCHING
 * Seems to be functionally matching now
 * HAS A GAMESTATE STRUCT - probably how it needs to be done
 * https://decomp.me/scratch/bm0hn
 */
INCLUDE_ASM("asm/nonmatchings/update", func_80055020);

/**
 * UpdateUsingFlags() - func_80055294() - MATCHING
 * https://decomp.me/scratch/JW1UB
 */
void func_80055294(int flags) {

    if (flags & UPDATE_ENV) {
        func_80020E74(deltaTime);
        func_80021FF4();
        func_80022158();
        func_80022260();
    }
    if (flags & UPDATE_MOBYS) {
        func_8003038C();
    }
    if (flags & UPDATE_SPYRO) {
        func_8003E83C();
    }
    if (flags & UPDATE_PARTS) {
        if (UpdateParticles != 0) {
            (*UpdateParticles)(deltaTime);
        }
        func_800509F0();
    }
    if (flags & UPDATE_CAMERA) {
        func_8001204C();
    }
    func_800285A4(flags & UPDATE_HUD);
}

/**
 * InitBulletTime() - func_80055364() - MATCHING
 * https://decomp.me/scratch/kHnWT
 */
void func_80055364(Moby* moby) {
    game.state = GAMESTATE_BULLET_TIME;
    D_8006C5F8 = moby;
}

/**
 * ExitBulletTime() - func_80055380() - MATCHING
 * https://decomp.me/scratch/TqcH3
 */
void func_80055380(void) {
    game.state = GAMESTATE_GAMEPLAY;
    D_8006C5F8 = 0;
}

/**
 * UpdateBulletTime() - func_80055398() - MATCHING
 * https://decomp.me/scratch/BtdFp
 */
void func_80055398(void) {
    void (*mobyUpdate)(Moby*);
    void (**mobyUpdateFuncs)(Moby*) = ovlHeader.MobyUpdate;

    if (mobyUpdateFuncs != 0) {
        mobyUpdate = mobyUpdateFuncs[D_8006C5F8->mobyClass];
        if (mobyUpdate != 0) {
            mobyUpdate(D_8006C5F8);
        }
    }
    func_8001204C();
    func_800285A4(0);
}

/**
 * Update() - func_80055400() - MATCHING
 * C code isn't in currently as a script is needed to add the jtbl to the asm
 * https://decomp.me/scratch/aLTcr
 */
INCLUDE_ASM("asm/nonmatchings/update", Update);

/* externed functions, only to be used as notes
void func_80050F18(); // gameplay updates
void func_80051A60(); // speech updates
void func_8005289C(); // egg collect updates
void func_80053374(); // sublevel loading updates
void func_80053A10(); // fade-in updates
void func_80054450(); // loading glide updates
void func_80054B64(); // game over updates
void func_80054CD8(); // init credits cheat updates
void func_80054D84(); // credits updates
void func_80055020(); // loading vehicle updates
void func_80055294(enum UpdateFlags updateFlags); // update with flags
void func_80055398(); // bullet time updates
*/

/*
void Update(void) {
    enum UpdateFlags var_a0;

    D_8006C718 = 0;
    func_8003A584();
    func_8004FA24();
    switch (game.state) {
    case GAMESTATE_GAMEPLAY:
    case GAMESTATE_UNK_0E:
        func_80050F18();
        break;
    case GAMESTATE_SPEECH:
        func_80051A60();
        break;
    case GAMESTATE_EGG_COLLECT:
        func_8005289C();
        break;
    case GAMESTATE_SPEEDWAY_MENU:
        var_a0 = 0x10;
        if (camera.unk50 == 2) {
            (*ovlHeader.UpdateSpeedwayMenu)(var_a0); // 0x10 // UpdateSpeedwayMenu
            var_a0 = 0x11;
        }
        func_80055294(var_a0);
        break;
    case GAMESTATE_FADE_IN:
        func_80053A10();
        break;
    case GAMESTATE_PAUSE:
        func_80057834();
        break;
    case GAMESTATE_LOADING_IMG:
        func_80058778();
        break;
    case GAMESTATE_CUTSCENE:
        (*ovlHeader.UpdateCutscene)(); // UpdateCutscene
        break;
    case GAMESTATE_LOADING_GLIDE:
        func_80054450();
        break;
    case GAMESTATE_GAME_OVER:
        func_80054B64();
        break;
    case GAMESTATE_CREDITS:
        func_80054D84();
        break;
    case GAMESTATE_INIT_CREDITS_CHEAT:
        func_80054CD8();
        D_8006C67C = -1;
        break;
    case GAMESTATE_TITLE_SCREEN:
        func_title_8007566C();
        break;
    case GAMESTATE_LOADING_VEHICLE:
        func_80055020();
        break;
    case GAMESTATE_LOADING_SUBLEVEL:
        func_80053374();
        break;
    case GAMESTATE_BULLET_TIME:
        func_80055398();
        break;
    case GAMESTATE_SKATEBOARD_MENU:
        (*ovlHeader.UpdateSkateMenu)(); // UpdateSkateMenu
        var_a0 = 0x3B;
        func_80055294(var_a0);
        break;
    }
    func_8003C184();
}
*/
