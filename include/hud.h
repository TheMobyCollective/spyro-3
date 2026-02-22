#ifndef __HUD_H
#define __HUD_H

//#include "common.h"

typedef struct {
    unsigned char unk0;
    unsigned char unk1;
    short unk2;
    unsigned char unk4;
    unsigned char unk5;
    short unk6;
} SpriteData; // I don't really know what this is, or if it's even a sprite?

typedef struct {
    short spriteClass;
    char frame;
    char frameCount;
    char animationType;
    char frameDelay;
    char unk6;
    char unk7;
} SpriteDefinition; // e.g. animated HUD sprites, used in the layout

typedef struct {
    short index;
    char animationType;
    char frame;
    char unk1;
    char unk2;
} SpriteAnimationData;

typedef struct {
	short unk0; // x
	short unk2; // y
	short unk4; // spriteClass
	unsigned short unk6; // max
	int* unk8; // display variable
	void (*unkC)(void*);
	void (*unk10)(void*);
	void (*unk14)(void*);
    char unk18; // display mode, i.e. placement and animations
    char unk19; // isOffscreen
    short unk1A;
    SpriteAnimationData unk1C; // SpriteAnimationData SpriteData
    char unk22;
    char unk23;
    short unk24;
    unsigned short unk26;
    int* unk28;
    void (*unk2C)(void*);
    void (*unk30)(void*);
    void (*unk34)(void*);
    short unk38;
    short unk3A;
    char unk3C;
    char unk3D;
    char unk3E;
    char unk3F; // movement progress
    unsigned short unk40;
    unsigned short unk42;
    unsigned short unk44;
    short unk46;
    char unk48 [12];
} HudEntry;

// TODO - these are the same and should have the same label
extern HudEntry D_80067248[9]; // HUD entries
extern HudEntry g_HudEntries[9]; // D_80067248

extern SpriteDefinition* D_8006C738;

int func_80027934(int); // 80027934 fGetSpriteIndex
void func_8002798C(HudEntry*); // 8002798c FUN_8002798c
void func_80027A60(HudEntry*); // 80027a60 FUN_80027a60
void func_80027AC0(HudEntry*); // 80027ac0 FUN_80027ac0
void func_80027B0C(HudEntry*); // 80027b0c fPlayExtraLifeSound
void func_80027B70(); // 80027b70 fSetupHud
void func_80027D60(HudEntry*); // 80027d60 FUN_80027d60
void func_80027E40(HudEntry*); // 80027e40 FUN_80027e40
void func_80027EE4(HudEntry*); // 80027ee4 FUN_80027ee4
void func_80027F88(HudEntry*); // 80027f88 FUN_80027f88
void func_80027FCC(HudEntry*, int); // 80027fcc fUpdateHudFromSpriteDefinitions
int func_8002803C(int, int, void*, void*, void*, int*, int); // 8002803c fSetHud // hudPos, spriteId, soundFuncPtr, unk, fallbackFuncPtr, displayVar, max
int func_80028154(int); // 80028154 FUN_80028154
void func_800281D0(int, int); // 800281d0 FUN_800281d0
void func_80028264(HudEntry*); // 80028264 fSomethingHud?
void func_800282D8(); // 800282d8 FUN_800282d8
int func_80028378(void*, int); // 80028378 fAnimateHudSprite // first ptr is to a struct of size 6, "sprite animation data"?
int func_800285A4(int); // 800285a4 fUpdateHudMovement
int* func_800289C8(SpriteData*, short, short); // 800289c8 FUN_800289c8 // apparently first arg is whatever "SpriteData" is, possibly something that would fit in here?
int* func_80028D30(char*, short, short, int); // 80028d30 FUN_80028d30
int func_800291B8(int, int, short, int); // 800291b8 FUN_800291b8
int func_800293C4(int, int, int, int, int); // 800293c4 FUN_800293c4
int func_80029674(HudEntry*, int*, int*); // 80029674 FUN_80029674
void func_80029708(HudEntry*, int*, int*, int*); // 80029708 FUN_80029708
int func_8002982C(HudEntry*); // 8002982c FUN_8002982c
int func_80029904(HudEntry*); // 80029904 FUN_80029904
void func_80029A00(HudEntry*); // 80029a00 FUN_80029a00
int func_80029AA0(HudEntry*); // 80029aa0 FUN_80029aa0
int func_80029BB0(HudEntry*); // 80029bb0 FUN_80029bb0
int func_80029CF8(HudEntry*); // 80029cf8 FUN_80029cf8
void func_80029E48(); // 80029e48 FUN_80029e48
void func_8002A580(); // 8002a580 somethingReticleRelated
void func_8002A6B4(); // 8002a6b4 fPlayPauseEnterSound
void func_8002A6E4(); // 8002a6e4 fPlayPauseExitSound
void func_8002A714(); // 8002a714 fPlayPauseMoveSound?
void func_8002A754(); // 8002a754 fPlayChangeSoundLevelSound?

#endif
