#ifndef __SPU_H
#define __SPU_H

#include "common.h"

typedef struct {
	unsigned char gemChime;
	unsigned char gemCollect;
	unsigned char bonk;
	unsigned char flame;
	unsigned char swallow;
	unsigned char spit;
	unsigned char underwater;
	unsigned char waterSurface;
	unsigned char waterDive;
	unsigned char squish;
	unsigned char waterPaddle;
	unsigned char iceSkate;
	unsigned char lavaBurn;
	unsigned char lavaDeath;
	unsigned char drown;
	unsigned char unsquish;
	unsigned char spyroSkid;
	unsigned char spyroLand;
	unsigned char spyroStop;
	unsigned char unk19;
	unsigned char headbash;
	unsigned char spyroHurt;
	unsigned char pauseEnter;
	unsigned char pauseExit;
	unsigned char pauseMove;
	unsigned char underwaterHit;
	unsigned char changeVolume;
	unsigned char supercharge;
	unsigned char unk28;
	unsigned char eggHatching;
	unsigned char timerRunOut;
	unsigned char extraLife;
	unsigned char unk32;
	unsigned char unk33;
	unsigned char jump;
	unsigned char skillPoint;
	unsigned char guidebookPageTurn;
	unsigned char levelCompleteFanfare;
} SoundTable;
// TODO - may want a struct with a union of this, the spu data entries count, and the spu data [1] array
// see func_8002C9F4 - an attempt was made but it wasn't immediately successful

typedef struct {
    int m_Addr;
    unsigned short unk4;
    unsigned short unk6;
    unsigned short unk8;
    unsigned short unkA;
    unsigned short unkC;
    unsigned short unkE;
    char unk10;
    char unk11;
    char unk12;
    char unk13;
} SoundDefinition;

typedef struct {
    char unk0;
    char unk1;
    char unk2;
    char unk3;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
    int unk14;
    int unk18; // pitch?
    int unk1C;
    int unk20;
    int unk24;
    Moby* unk28;
} ActiveSound;

// sdata
extern SoundTable* g_SoundTablePtr; // 8006C654
extern SoundDefinition* g_SpuDefinitionsPtr; // 8006C6A0

// bss
extern ActiveSound g_ActiveSounds[24]; // 8006FCE4

int PlaySound(int localSoundId, Moby *moby, char param_3); // 8003BB50
int func_8003BABC(Moby*, int, int); // PlayMobySound
void func_8003BEDC();
void func_8003C0B0(int, int); // ApplyPitchVariance // Causes Bluto glitch
void func_8003C140(int, int);
void func_8003C184();

#endif
