#ifndef __CHEAT_H
#define __CHEAT_H

// 15 on non-retail builds
#define CHEAT_COUNT 12

typedef struct {
	unsigned char invincible;
	unsigned char squidboard;
	unsigned char cameraMode;
	unsigned char superflame;
	char warpToLevel; // probably
	unsigned char previousLevel;
	unsigned char bigHeadMode;
	unsigned char flatMode;
	int spyroWidth;
	int spyroHeight;
	int spyroLength;
	unsigned char bodyColour;
	unsigned char extraHitpoint;
	unsigned char warpToArea;
	unsigned char dialogueTestIndex;
} CheatFlags;

enum Cheat {
    // INVINCIBLE, // Dev only
    // COMPLETE_ATLAS, // Dev only
    CHEAT_SPEECH_TEST,
    CHEAT_CREDITS,
    // SUPERFLAME, // Dev only
    CHEAT_LEVEL_WARP,
    CHEAT_SQUIDBOARD,
    CHEAT_BIG_HEAD,
    CHEAT_FLAT_MODE,
    CHEAT_COLOUR,
    CHEAT_EXTRA_HIT,
    CHEAT_OVERRIDE_ACT,
    CHEAT_GLOBAL_ACT,
    CHEAT_MAX_LIVES,
    CHEAT_TREASURE_FINDER, // Final only
};

void func_80017A04();    // ClearCheatInputs
void func_80017A40();    // CheckCheatInputs
void func_80017B7C(int); // ActivateCheat

// data
extern int g_CheatCodes[CHEAT_COUNT][16]; // enum PadInput

// sdata
extern int pauseMenuButtonPresses; // 8006C5CC; "cheatInputs"?

// bss
extern CheatFlags g_CheatFlags; // 8006FB90
extern int g_CheatBuffer[16]; // 800713F8

#endif