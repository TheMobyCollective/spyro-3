#include "common.h"
#include "cheat.h"
#include "pad.h"
#include "spu.h"

// update
extern void func_80054CD8();
// psyq
extern void func_8005956C(int); // VSync

// data 80064f9c
extern Sparx sparx; // 8006580c

// sdata 8006c3b0
extern int localDifficultyOverride; // D_8006C404
extern int D_8006C5BC;
extern SoundTable* soundTablePtr; // D_8006C654
extern short D_8006C67C;
extern int D_8006C784;
extern int D_8006C7A8;

// bss 8006c7f8
extern StreamingData streamingData;

// static inlines
// might be useful in other functions, so should be in the header
// but this should wait until D_8006C5BC is headerised
static inline void InitiateLevelWarp(char pLevelId) {
  g_CheatFlags.warpToLevel = pLevelId;
  if (pLevelId >= 60) {
    g_CheatFlags.previousLevel = D_8006C5BC;
  }
}

///////////////////////////////////////////////////////////////////////

/**
 * ClearCheatBuffer() - func_80017A04() - MATCHING 
 * https://decomp.me/scratch/46inF
 */
void ClearCheatBuffer() {
    int i;

    for (i = 15; i >= 0; i--) g_CheatBuffer[i] = 0;
    pauseMenuButtonPresses = 0;
    g_CheatFlags.warpToLevel = 0;
    g_CheatFlags.previousLevel = 0;
}

/**
 * ProcessCheatBuffer() - func_80017A40() - MATCHING
 * https://decomp.me/scratch/vNMlZ
 */
void ProcessCheatBuffer() { // cheat codes
    int cheatIndex;
    int inputCodeOffset;
    int matchingInputs;
    int codeLen;

    if (pad.state.pressed == PAD_INPUT_NULL) return;

    cheatIndex = 0;
    g_CheatBuffer[pauseMenuButtonPresses] = pad.state.pressed;
    pauseMenuButtonPresses++;
    
    for (cheatIndex = 0; cheatIndex < CHEAT_COUNT; cheatIndex++) {
        
        // Get the length of the current code
        codeLen = 0;
		while (g_CheatCodes[cheatIndex][codeLen] != PAD_INPUT_NULL) codeLen++;

        // Get the input # of the start of the last n inputs, for code of size n
        inputCodeOffset = pauseMenuButtonPresses - codeLen;
        if (inputCodeOffset < 0) inputCodeOffset += 0x10;

        // Find how many inputs match the cheat code
        for (matchingInputs = 0; matchingInputs < codeLen; matchingInputs++) {
            if (g_CheatBuffer[inputCodeOffset] != g_CheatCodes[cheatIndex][matchingInputs]) {
                matchingInputs = -1;
                break;
            }
            inputCodeOffset++;
            if (inputCodeOffset >= 0x10) inputCodeOffset -= 0x10;
        }

        // Activate cheat code or move to next one
        if (matchingInputs == codeLen) {
            ActivateCheat(cheatIndex);
            break;
        }
    }
    
    if (pauseMenuButtonPresses >= 0x10) pauseMenuButtonPresses = 0;
}

/**
 * ActivateCheat() - func_80017B7C() - MATCHING
 * Required a static inline to match
 * https://decomp.me/scratch/PVtES
 */
void ActivateCheat(int cheat) {
    int var_s0;
    int var_s0_2;
    int var_s1;
    int var_s2;
    int temp_s0;
    unsigned char temp_v0;

    switch (cheat) {

    case CHEAT_SPEECH_TEST:
        if (g_CheatFlags.dialogueTestIndex != 0) {
            g_CheatFlags.dialogueTestIndex = 0;
            streamingData.musicEnabled = 1;
        } else {
            g_CheatFlags.dialogueTestIndex = 1;
            streamingData.musicEnabled = 0;
        }
        PlaySound(soundTablePtr->gemCollect, 0, 0);
        return;

    case CHEAT_CREDITS:
        D_8006C67C = (short) D_8006C5BC;
        PlaySound(soundTablePtr->gemCollect, 0, 0);
        func_80054CD8();
        return;

    case CHEAT_LEVEL_WARP:
        if (sparx.breakContainers < 2) { // Sparx thingy
            return;
        }
        
        var_s1 = -1;
        var_s2 = -1;

        PlaySound(soundTablePtr->gemCollect, 0, 0); // D_8006C654->unk1
        do {
            func_8005956C(0); // VSync
            func_8003A584();
            func_8003C184();
            if      (pad.state.pressed & CIR) var_s1 = 0;
            else if (pad.state.pressed & X)   var_s1 = 1;
            else if (pad.state.pressed & SQU) var_s1 = 2;
            else if (pad.state.pressed & TRI) var_s1 = 3;
            else if (pad.state.pressed & R)   var_s1 = 4;
            else if (pad.state.pressed & D)   var_s1 = 5;
            else if (pad.state.pressed & L)   var_s1 = 6;
            else if (pad.state.pressed & U)   var_s1 = 7;
            else if (pad.state.pressed & R1)  var_s1 = 8;
            else if (pad.state.pressed & L1)  var_s1 = 9;
        } while (var_s1 < 0);

        PlaySound(soundTablePtr->pauseMove, 0, 0);
        while (var_s2 < 0) {
            func_8005956C(0); // VSync
            func_8003A584();
            func_8003C184();
            if      (pad.state.pressed & CIR) var_s2 = 0;
            else if (pad.state.pressed & X)   var_s2 = 1;
            else if (pad.state.pressed & SQU) var_s2 = 2;
            else if (pad.state.pressed & TRI) var_s2 = 3;
            else if (pad.state.pressed & R)   var_s2 = 4;
            else if (pad.state.pressed & D)   var_s2 = 5;
            else if (pad.state.pressed & L)   var_s2 = 6;
            else if (pad.state.pressed & U)   var_s2 = 7;
            else if (pad.state.pressed & R1)  var_s2 = 8;
            else if (pad.state.pressed & L1)  var_s2 = 9;
        }

        temp_s0 = var_s1 * 10 + var_s2;
        PlaySound(soundTablePtr->pauseExit, 0, 0);
        InitiateLevelWarp(temp_s0);
        return;

    case CHEAT_SQUIDBOARD:
        g_CheatFlags.squidboard = !g_CheatFlags.squidboard;
        PlaySound(soundTablePtr->gemCollect, 0, 0);
        return;
        
    case CHEAT_BIG_HEAD:
        g_CheatFlags.spyroWidth = 0x2000;
        g_CheatFlags.spyroHeight = 0x2000;
        g_CheatFlags.spyroLength = 0x2000;
        g_CheatFlags.flatMode = 0;
        g_CheatFlags.bigHeadMode = 1 - g_CheatFlags.bigHeadMode;
        PlaySound(soundTablePtr->gemCollect, 0, 0);
        return;
        
    case CHEAT_FLAT_MODE:
        g_CheatFlags.spyroWidth = 0x200;
        g_CheatFlags.spyroHeight = 0x1000;
        g_CheatFlags.spyroLength = 0x1000;
        g_CheatFlags.bigHeadMode = 0;
        g_CheatFlags.flatMode = 1 - g_CheatFlags.flatMode;
        PlaySound(soundTablePtr->gemCollect, 0, 0);
        return;
        
    case CHEAT_COLOUR:
        g_CheatFlags.bodyColour = 0;
        PlaySound(soundTablePtr->pauseExit, 0, 0); //
        do {
            func_8005956C(0); // VSync
            func_8003A584();
            func_8003C184();
        } while (pad.state.pressed == 0);

        if      ((pad.state.pressed & 0x20) != 0)   g_CheatFlags.bodyColour = 1;
        else if ((pad.state.pressed & 0x40) != 0)   g_CheatFlags.bodyColour = 2;
        else if ((pad.state.pressed & 0x80) != 0)   g_CheatFlags.bodyColour = 3;
        else if ((pad.state.pressed & 0x10) != 0)   g_CheatFlags.bodyColour = 4;
        else if ((pad.state.pressed & 0x1000) != 0) g_CheatFlags.bodyColour = 5;
        else if ((pad.state.pressed & 0x4000) != 0) g_CheatFlags.bodyColour = 6;
        
        PlaySound(soundTablePtr->gemCollect, 0, 0);
        return;
        
    case CHEAT_EXTRA_HIT:
        if (sparx.maxHitpoints < 3) {
            return;
        }
        temp_v0 = 1 - g_CheatFlags.extraHitpoint;
        g_CheatFlags.extraHitpoint = temp_v0;
        sparx.maxHitpoints = (char)temp_v0 ? 4 : 3;
        PlaySound(soundTablePtr->gemCollect, 0, 0);
        return;
        
    case CHEAT_OVERRIDE_ACT:
        var_s0 = -1;
        PlaySound(soundTablePtr->gemCollect, 0, 0);
        do {
            func_8005956C(0);
            func_8003A584();
            func_8003C184();
            if      (pad.state.pressed & 0x20) var_s0 = 0;
            else if (pad.state.pressed & 0x40) var_s0 = 1;
            else if (pad.state.pressed & 0x80) var_s0 = 2;
            else if (pad.state.pressed & 0x10) var_s0 = 3;
        } while (var_s0 < 0);
        if (var_s0 >= 3) {
            var_s0 = -1;
        }
        localDifficultyOverride = var_s0;
        if       (var_s0 == -1) PlaySound(soundTablePtr->gemCollect, 0, 0);
        else if  (var_s0 == 0)  PlaySound(soundTablePtr->pauseExit, 0, 0);
        else if  (var_s0 == 1)  PlaySound(soundTablePtr->pauseEnter, 0, 0);
        else if  (var_s0 == 2)  PlaySound(soundTablePtr->flame, 0, 0);
        return;
        
    case CHEAT_GLOBAL_ACT:
        var_s0_2 = -1;
        PlaySound(soundTablePtr->gemCollect, 0, 0);
        do {
            func_8005956C(0); // VSync
            func_8003A584();
            func_8003C184();
            if      (pad.state.pressed & 0x20) var_s0_2 = 0;
            else if (pad.state.pressed & 0x40) var_s0_2 = 1;
            else if (pad.state.pressed & 0x80) var_s0_2 = 2;
        } while (var_s0_2 < 0);

		switch(var_s0_2) {
		case 0:
            D_8006C7A8 = 30;
            break;
		case 1:
            D_8006C7A8 = 0;
            break;
		case 2:
            D_8006C7A8 = -40;
            break;
		}
        
        if       (var_s0_2 == 0)  PlaySound(soundTablePtr->pauseExit, 0, 0);
        else if  (var_s0_2 == 1)  PlaySound(soundTablePtr->pauseEnter, 0, 0);
        else if  (var_s0_2 == 2)  PlaySound(soundTablePtr->flame, 0, 0);
        
        return;
        
    case CHEAT_MAX_LIVES:
        D_8006C784 = 99;
        PlaySound(soundTablePtr->gemCollect, 0, 0);
        return;
        
    case CHEAT_TREASURE_FINDER:
        sparx.treasureFinder = 1;
        PlaySound(soundTablePtr->gemCollect, 0, 0);
        return;
    }
}
