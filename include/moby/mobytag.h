#ifndef __MOBYTAG_H
#define __MOBYTAG_H

#include "common.h"

///////////////////////////////////////////////////////////////////////////////
// Common mobys

typedef struct {
    short unk0; // animation frame timer
    unsigned char unk2;
    char unk3; // position / rotation of Sparx
    short unk4; // 4/6/8 seems to be a short vector representing Sparx's relative position to Spyro
    short unk6;
    short unk8;
    char unkA; // ?
    char unkB; // probably the animation type, seems to be 5 or 10 (the latter for close-up)
    char unkC; // ?
    char unkD; // idle timer, jumps to 0x78 whenever Spyro moves
    short unkE; // ?
    int unk10; // seems to be a pointer to somewhere else in bss, maybe some kind of counter? unclear
    Moby* unk14; // captured moby
    int unk18; // maybe unused / padding?
} MobyTag_120; // used by 8006e394

typedef struct {
    Vector3D unk0;
    short unkC;
    short unkE;
    char unk10;
    char unk11;
    char unk12;
    char unk13;
    int unk14;
} MobyTag_16; // also 211

typedef struct {
	char unk0; // ?
	char unk1; // ?
	char unk2;
	char unk3;
	char unk4;
	char unk5; // ?
	char unk6; // ?
	char unk7; // ?
	char unk8; // ?
	char unk9; // ?
	char unkA; // ?
	char unkB; // ?
	char unkC; // ?
	char unkD; // ?
	char unkE; // ?
	char unkF; // ?
	int unk10;
} MobyTag_272;

typedef struct {
    Moby* unk0;
    int unk4;
    int unk8;
    Vector3D unkC;
} MobyTag_260; // oddly similar to a moby, but this is probably coincidental

typedef struct {
	Vector3D16 linearVel;
	Vector3D16 angularVel;
	int timer;
    int unk10;
} MobyTag_Fragment;

///////////////////////////////////////////////////////////////////////////////
// Less common mobys

typedef struct {
	Vector3D unk0; // PLACEHOLDER, unsure of length
} MobyTag_76;

typedef struct {
	int unk0; // mostly guesswork
	int unk4;
	int unk8;
	int unkC;
	int unk10;
	int unk14;
	int unk18;
	int unk1C;
	int unk20;
	int unk24;
	int unk28;
	int unk2C;
	int unk30;
	int unk34;
	int unk38;
	int unk3C;
	int unk40;
	int unk44;
	int unk48;
	int unk4C;
	int unk50;
	int unk54;
	int unk58;
	int unk5C;
} MobyTag_89;

typedef struct {
	int unk0; // mostly guesswork
	int unk4;
	int unk8;
	int unkC;
	int unk10;
	int unk14;
} MobyTag_90;

typedef struct {
	Vector3D unk0;
	int unkC;
} MobyTag_245;

typedef struct {
	short unk0;
	char unk2;
	char unk3;
} MobyTag_326;

typedef struct {
	char unk0; // mostly guesses
	char unk1;
	char unk2;
	char unk3;
	char unk4;
	char unk5;
	char unk6;
	char unk7;
	char unk8;
	char unk9;
	char unkA;
	char unkB;
	char unkC;
	char unkD;
	char unkE;
	char unkF;
	char unk10;
	char unk11;
	char unk12;
	char unk13;
	short unk14;
	char unk16;
	char unk17;
} MobyTag_704;

#endif
