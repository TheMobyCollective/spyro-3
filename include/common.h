#ifndef COMMON_H
#define COMMON_H

#include "include_asm.h"

#define ABS(x) ((x) >= 0 ? (x) : -(x))
#define DOTPRODUCT(v1, v2) ((v1.x * v2.x) + (v1.y * v2.y) + (v1.z * v2.z))
#define MIN(x, min) if(x < min) x = min
#define MAX(x, max) if(x > max) x = max
#define MAX_SIGNED(x, max) if (x > max) x -= 2*max
// #define CLAMP(x, min, max) ((x) < (min) ? (min) : ((x) > (max) ? (max) : (x))) // CLAMP not surrently in use


// Maybe move this out when PauseData is moved out of here
#include "libgpu.h"


/*** Maths ***/

typedef struct {
	int x, y, z;
} Vector3D;

typedef struct {
	short x, y, z;
} Vector3D16;

typedef struct { /* Similar to the one in libgte */
  short m[3][3]; /* 3x3 rotation matrix */
  short _pad;    /* padding */
} SHORTMATRIX;


/*** WAD ***/

typedef struct {
	int offset;
	int size;
} DataHeader;

typedef struct {
	DataHeader lvl;
	DataHeader ovl;
	DataHeader mdls;
} CutsceneWads;

typedef struct {
	DataHeader lvl;
	DataHeader ovl;
} LevelWads;

typedef struct {
	DataHeader spyroMdls;
	DataHeader titleOvl;
	DataHeader unk0;
	DataHeader universalLogo;
	DataHeader unk1;
	DataHeader insomniacLogo;
	DataHeader titleLvl;
	DataHeader unk2;
	DataHeader titleMdls;
	CutsceneWads cutscene[20];
	DataHeader loadOvl; // common
	DataHeader loadImg[6];
	DataHeader cutsceneImg[20];
	DataHeader loadCycloramas;
	LevelWads lvl[40];
	DataHeader gameOverImg;
	DataHeader atlasOvl;
	DataHeader optionsOvl;
	DataHeader atlasImgs;
	DataHeader epilogueImgs;
	DataHeader creditsOvl;
	DataHeader creditsLvl[12];
	DataHeader unused;
} WadHeader;

typedef struct {
    DataHeader env;    // models?
    DataHeader layout;
} AreaHeader;

typedef struct {
    DataHeader vramSpu;              // 80072098
    DataHeader scene;                // 800720A0 env?
    AreaHeader area[4];              // 800720A8 could be a struct within levelwadheader instead
    int nothing1[4];                 // 800720E8 padding1
    DataHeader dragonModels[6];      // 800720F8
    int nothing2[4];                 // 80072128 padding2
    unsigned int modelOffsets[64];   // 80072138
    unsigned short modelClasses[64]; // 80072238
} LevelWadHeader; // 0x220


/*** Pad definitions moved to pad.h ***/


/*** Savepoint definitions moved to savepoint.h ***/


/*** Sound effects ***/

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
} SoundTable; // TODO - may want a struct with a union of this, the spu data entries count, and the spu data [1] array
// see func_8002C9F4 - an attempt was made but it wasn't immediately successful

typedef struct {
	char unk0;
	char unk1;
	char unk2;
	char unk3;
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
} SpuData;


/*** Moby ***/

typedef struct {
	unsigned char roll, pitch, yaw;
} Angle;

typedef struct {
	unsigned char id;
	unsigned char nextId;
	unsigned char frame;
	unsigned char nextFrame;
} Animation;

typedef struct {
    unsigned char r, g, b, a;
} Colour;

typedef struct Moby {
	void *mobyTag;                   // 0x00 void* (4 byte)
	struct Moby *nextCollision;      // 0x04 Moby* (4 byte)
	unsigned int unknownCollision;   // 0x08
	Vector3D position;               // 0x0C
	int damageFlags;                 // 0x18 // enum TODO
	int unknown;                     // 0x1C
	SHORTMATRIX rotationMatrix;      // 0x20 // formerly "unsigned char unknown1[20]"
	unsigned short collisionBlock;   // 0x34
	short mobyClass;                 // 0x36
	short distanceToGround;          // 0x38, used as mobyClass in cutscenes
	unsigned char linkedMoby;        // 0x3A
	unsigned char unknown2;          // 0x3B
	Animation animationState;        // 0x3C
	unsigned char animationProgress; // 0x40
	unsigned char unknown3[2];       // 0x41
	unsigned char animationRun;      // 0x43
	Angle angle;                     // 0x44
	unsigned char unknown4;          // 0x47
	unsigned char state;             // 0x48
	unsigned char substate;          // 0x49
	unsigned char updateDistance;    // 0x4A, 0xFF if the moby should be updated anywhere
	unsigned char unknown5;          // 0x4B, seems to be 1 if the Moby is to be updated
	unsigned char lowDrawDistance;   // 0x4C, if 0 moby is invisible
	unsigned char drawn;             // 0x4D, 0-2
	unsigned char highDrawDistance;  // 0x4E
	unsigned char size;              // 0x4F // increasing scales down
	unsigned char gemValue;          // 0x50
	unsigned char unkb;              // 0x51
	unsigned char subtype;           // 0x52
	char difficultyFlags;            // 0x53
	Colour colour;                   // 0x54
} Moby;


/*** Progress ***/

typedef struct {
	unsigned char lvl10_HunterStart;
	unsigned char lvl10_Bianca;
	unsigned char lvl10_TikiEnteredPortal;
	unsigned char addMoneybagsGemsToTotal; // unused under normal means
	unsigned char lvl31_Bentley;
	unsigned char lvl11_Sheila;
	unsigned char lvl13_SgtByrd;
	unsigned char lvl24_Bentley;
	unsigned char lvl23_Sheila;
	unsigned char lvl14_Sheila;
	unsigned char lvl10_HunterLake;
	unsigned char lvl10_SealEnteredPortal;
	unsigned char lvl33_Agent9;
	unsigned char lvl16_Sheila;
	unsigned char lvl80_TheDancingBear;
	unsigned char lvl20_Bianca;
	unsigned char lvl34_SgtByrd;
	unsigned char lvl78_ByrdJamesByrd;
	unsigned char lvl79_ADuplicitousLarcenousUrsine;
	unsigned char lvl10_HunterFirstLedge;
	unsigned char lvl00_MoneybagsSpokenTo;
	unsigned char lvl20_EnchantedTowersOpen;
	unsigned char lvl10_BalloonUsable;
	unsigned char lvl20_WhirligigUsable;
	unsigned char lvl30_RocketUsable;
	unsigned char unk25;
	unsigned char lvl77_NoHardFeelings;
	unsigned char lvl43_Agent9;
	unsigned char lvl17_BuzzDefeated;
	unsigned char lvl27_SpikeDefeated;
	unsigned char lvl37_ScorchDefeated;
	unsigned char lvl47_SorceressDefeated;
	unsigned char lvl41_Bentley;
	unsigned char lvl44_Agent9;
	unsigned char lvl42_Sheila;
	unsigned char lvl30_Bianca;
	unsigned char lvl40_Bianca;
	unsigned char lvl10_CrawdadFarmComplete;
	unsigned char lvl20_SpiderTownComplete;
	unsigned char lvl30_StarfishReefComplete;
	unsigned char lvl40_BugbotFactoryComplete;
	unsigned char lvl18_CrawdadFarmTutorialComplete;
	unsigned char lvl00_HunterTrapped;
	unsigned char lvl40_BiancaSorceressDoor;
	unsigned char lvl40_SuperBonusRoundPortalOpen;
	unsigned char lvl50_Bianca;
	unsigned char lvl50_SkateboardingComplete;
	unsigned char lvl50_Submarines[7];
	unsigned char lvl50_UFOs[7];
	unsigned char lvl50_Thieves[5];
	unsigned char lvl46_Agent9ExtraDialogue; // unused under normal means
	unsigned char lvl10_ZoeAP;
	unsigned char lvl63_BiancaStrikesBack;
	unsigned char lvl65_SpikeIsBorn;
	unsigned char lvl67_AMonsterToEndAllMonsters;
	unsigned char lvl62_TheSecondWarning;
	unsigned char lvl64_HuntersTussle;
	unsigned char lvl66_AnApologyAndLunch;
	unsigned char lvl68_TheEscape;
	unsigned char lvl74_TheEnd;
} ProgressFlags;


/*** Sparx ***/

typedef struct {
	int maxHitpoints; // D_8006580C
	int gemCollectRadius; // not strictly correctly labelled
	int unk1;
	int unk2;
	int breakContainers; // D_8006581C
	int treasureFinder; // D_80065820
	int colour;
	int targetedMobyDistance;
	int butterflyCount;
	Moby* targetedMoby; // Moby*
} Sparx;


/*** Updates, gamestates ***/

enum UpdateFlags {
	UPDATE_ENV = 0x1,
	UPDATE_MOBYS = 0x2,
	UPDATE_SPYRO = 0x8,
	UPDATE_CAMERA = 0x10,
	UPDATE_PARTS = 0x20,
	UPDATE_HUD = 0x40, 
};

enum Gamestate {
	GAMESTATE_GAMEPLAY,
	GAMESTATE_SPEECH,
	GAMESTATE_SPEEDWAY_MENU,
	GAMESTATE_FADE_IN,
	GAMESTATE_PAUSE,
	GAMESTATE_LOADING_IMG,
	GAMESTATE_CUTSCENE,
	GAMESTATE_LOADING_GLIDE,
	GAMESTATE_LOADING_FALL, // S2 leftover
	GAMESTATE_GAME_OVER,
	GAMESTATE_CREDITS,
	GAMESTATE_TITLE_SCREEN,
	GAMESTATE_LOADING_VEHICLE,
	GAMESTATE_LOADING_SUBLEVEL,
	GAMESTATE_UNK_0E,
	GAMESTATE_EGG_COLLECT,
	GAMESTATE_BULLET_TIME,
	GAMESTATE_UNK_11,
	GAMESTATE_SKATEBOARD_MENU,
	GAMESTATE_INIT_CREDITS_CHEAT,
};

typedef struct {
    enum Gamestate state;
    int unk1;
    int unk2;
} Game; // This is why the Gamestate is in bss; seems to be traced back to S1
extern Game game;


/*** Tags / Props ***/

typedef struct {
	unsigned char typ; // dialogue type
	char unk1a; // seems to trigger auto-talking when small enough?
	unsigned char nextMsg; // next one to use
	unsigned char lastMsg; // lastMsgId, e.g. 1 means there are 2 messages
	unsigned char prevMsg; // i.e. last played
	char autoTalk; // if set to nonzero, will change to 0 and start talking to Spyro when he's in range
	char talkTextHeight;
	char talkable; // i.e. 1 if close enough to talk to, and in talkable gameplay
	char unk2b[4]; // at least one byte here does seem to be used
	char* name; // should be array of length LANGUAGE_COUNT
	char* msg[1]; // length varies per class, and is multiplied in PAL
} SpeechProps; // start of moby tag for dialogue mobys


/*** Speech ***/

typedef struct {	
	unsigned char typ;
	unsigned char msg;
	short channel;
	unsigned short len; // LBA
    short unk; // padding
	int offset; // LBA
} SpeechData;


/*** Camera definitions moved to camera.h ***/


/*** Spyro ***/

enum AnimationState {
	ANIMATION_STATE_STAND = 0x0,
	ANIMATION_STATE_TIPTOE = 0x1,
	ANIMATION_STATE_WALK = 0x2,
	ANIMATION_STATE_RUN = 0x3,
	ANIMATION_STATE_SKID = 0x4,
	ANIMATION_STATE_SKID_TURN = 0x5,
	ANIMATION_STATE_JUMP = 0x6,
	ANIMATION_STATE_FALL = 0x7,
	ANIMATION_STATE_FLAME = 0x8,
	ANIMATION_STATE_SHOCKED = 0x9,
	ANIMATION_STATE_ICE_STAND = 0xa,
	ANIMATION_STATE_ICE_SKATE = 0xb,
	ANIMATION_STATE_ICE_SKID = 0xc,
	ANIMATION_STATE_CHARGE = 0xd,
	ANIMATION_STATE_BONK = 0xe,
	ANIMATION_STATE_LEDGE = 0xf,
	ANIMATION_STATE_HURT = 0x10, // ?
	ANIMATION_STATE_GLIDE = 0x11,
	ANIMATION_STATE_HOVER = 0x12,
	ANIMATION_STATE_WHIRLWIND = 0x13,
	ANIMATION_STATE_IDLE_LOOK_AROUND = 0x14,
	ANIMATION_STATE_FALL_OFF_SKATEBOARD = 0x15,
	ANIMATION_STATE_CHARGE_JUMP = 0x16,
	ANIMATION_STATE_UNK_17 = 0x17,
	ANIMATION_STATE_UNK_18 = 0x18,
	ANIMATION_STATE_SUPERCHARGE_JUMP = 0x19,
	ANIMATION_STATE_SQUASH = 0x1a,
	ANIMATION_STATE_UNK_1B = 0x1b,
	ANIMATION_STATE_LAVA_HOP = 0x1c,
	ANIMATION_STATE_UNK_1D = 0x1d,
	ANIMATION_STATE_SINK = 0x1e,
	ANIMATION_STATE_DEATH_FALL_OVER = 0x1f,
	ANIMATION_STATE_DEATH_SQUASH = 0x20,
	ANIMATION_STATE_SUPERFLY = 0x21,
	ANIMATION_STATE_SUPERFLY_RAISE_HEIGHT = 0x22,
	ANIMATION_STATE_UNK_23 = 0x23,
	ANIMATION_STATE_SKATEBOARD = 0x24,
	ANIMATION_STATE_SKATEBOARD_VERTICAL_JUMP = 0x25,
	ANIMATION_STATE_UNK_26 = 0x26,
	ANIMATION_STATE_UNK_27 = 0x27,
	ANIMATION_STATE_SWIM_UNDERWATER = 0x28,
	ANIMATION_STATE_SWIM_TURN_UNDERWATER = 0x29,
	ANIMATION_STATE_SWIM_CHARGE_UNDERWATER = 0x2a,
	ANIMATION_STATE_SWIM_MOVE_SURFACE = 0x2b,
	ANIMATION_STATE_SWIM_STAY_SURFACE = 0x2c,
	ANIMATION_STATE_UNK_2D = 0x2d,
	ANIMATION_STATE_HEADBASH = 0x2e,
	ANIMATION_STATE_LADDER_HOLD = 0x2f,
	ANIMATION_STATE_SKATEBOARD_HORIZONTAL_JUMP = 0x30,
	ANIMATION_STATE_SLIDE = 0x31,
	ANIMATION_STATE_LADDER_CLIMB = 0x32,
	ANIMATION_STATE_UNK_33 = 0x33,
	ANIMATION_STATE_UNK_34 = 0x34,
	ANIMATION_STATE_UNK_35 = 0x35,
	ANIMATION_STATE_UNK_36 = 0x36,
	ANIMATION_STATE_UNK_37 = 0x37,
	ANIMATION_STATE_UNK_38 = 0x38,
	ANIMATION_STATE_UNK_39 = 0x39,
	ANIMATION_STATE_DEATH_BURN = 0x3a,
	ANIMATION_STATE_UNK_3B = 0x3b,
	ANIMATION_STATE_UNK_3C = 0x3c,
	ANIMATION_STATE_SUPERCHARGE = 0x3d,
	ANIMATION_STATE_UNK_3E = 0x3e,
	ANIMATION_STATE_UNK_3F = 0x3f,
};

enum MovementState {
	MOVEMENT_STATE_STAND = 0x0,
	MOVEMENT_STATE_WALK = 0x1,
	MOVEMENT_STATE_JUMP_HOVER = 0x2,
	MOVEMENT_STATE_FALL = 0x3,
	MOVEMENT_STATE_CHARGE = 0x4,
	MOVEMENT_STATE_GLIDE = 0x5,
	MOVEMENT_STATE_SUPERFLY = 0x6,
	MOVEMENT_STATE_HURT = 0x7,
	MOVEMENT_STATE_DEATH = 0x8,
	MOVEMENT_STATE_SUPERCHARGE = 0x9,
	MOVEMENT_STATE_SWIM_SURFACE = 0xa,
	MOVEMENT_STATE_SWIM_UNDERWATER = 0xb,
	MOVEMENT_STATE_SWIM_CHARGE = 0xc,
	MOVEMENT_STATE_LADDER = 0xd,
	MOVEMENT_STATE_WHIRLWIND = 0xe,
	MOVEMENT_STATE_HEADBASH = 0xf,
	MOVEMENT_STATE_ICE_SKATE = 0x10,
	MOVEMENT_STATE_SLIDE = 0x11,
	MOVEMENT_STATE_UNK_12 = 0x12,
	MOVEMENT_STATE_SKATEBOARD = 0x13,
};

enum Critter {
	CRITTER_SPYRO = 0x0,
	CRITTER_SHEILA = 0x1,
	CRITTER_BENTLEY = 0x2,
	CRITTER_SGT_BYRD = 0x3,
	CRITTER_AGENT_9 = 0x4,
	CRITTER_BENTLEY_BOXING = 0x5,
	CRITTER_SUBS = 0x6,
	CRITTER_SPARX = 0x7,
	CRITTER_HUNTER_4 = 0x8,
	CRITTER_HUNTER_3 = 0x9,
	CRITTER_HUNTER_1 = 0xa,
};

typedef struct {
	Vector3D position;         // 0
	Angle bodyRotation;        // C
	char padding1;             // padding?
	Angle headRotation;        // 10
    char padding2;             // padding?
	Animation bodyAnimation;   // 14
	Animation headAnimation;   // 18
	char unk3[4];              // 1C, possibly animation progress
	Colour cheatColour;        // 20
	int damageFlags;           // 24, enum todo
	int unk4[7];               // 28
	int unk4a;                 // 44 distance to feet, e.g. different for critters
	enum AnimationState animationState; // 48
	int	unk5;                  // 4C
	enum MovementState movementState;   // 50
	int animationStateFrames;  // 54, frames in current animationState
	int unk6b;                 // 58
	struct {
		int roll;              // 5C, overall roll, goes up to +-0x100
		int pitch;             // 60, overall pitch / elevation / incline, goes up to +-0x100
		int yaw;               // 64, overall yaw / azimuth, goes up to +-0x100
	} rotation;
	int unk7[3];               // 68
	Vector3D unk7a[4];         // 74, something speed related
	int unk7b;                 // A4, seemingly another yaw variable, a copy of rotation.yaw
	int unk7c;                 // A8
	int horizontalSpeed;       // AC, possibly target horizontal speed actually
	int unk8[2];               // B0, more horizontal speed variables (possibly two actual speeds, maybe one for prev frame)
	int ticksSinceLastSurfaceTouch; // B8, floor specifically
	int unk9a;                 // BC, surface touch
	int unk9b;                 // C0
	int unk9c;                 // C4
	int unk9d;                 // C8, some sort of speed variable
	int unk9e;                 // CC
	int unk9f;                 // D0
	int unk9g;                 // D4, related to unk9d
	int unk9h[9];              // D8
	char unk10[8];             // FC
	int unk11[8];              // 104
	Vector3D unk12;            // 124, copy of Spyro's position, for some reason
	int unk13a[3];             // 130
    Moby* unk13b;              // 13C
	int unk13ca;               // 140
	int unk13cb;               // 144
	short unk13cc;             // 148
	short unk13cd;             // 14A
	int unk13ce;               // 14C
	int unk13d[4];             // 150
	int unk13e[4];             // 160
	int unk13f[4];             // 170, spit state in the first int, just like the other spit state variable; 178 is the timer since last flame
	int unk13g[4];             // 180
	int unk13h[4];             // 190
	unsigned int unk14[5];     // 1A0
	char grounded;             // 1B4
	char unk15b;               // 1B5
	char unk15c;               // 1B6
	char unk15d;               // 1B7
	char unk15e;               // 1B8
	char idle;                 // 1B9
	char unk15g;               // 1BA
	char unk15h;               // 1BB
	int superflyTimer;         // 1BC
	int unk16a[4];             // 1C0
	int superflameTimer;       // 1D0, internally called super-spit
	int unk16b[3];             // 1D4
	int unk16c[3];             // 1E0
	enum AnimationState unknownAnimationStateVariable; // ? 1EC
	int unk17q;                // 1F0, sometimes 4 for some reason
	int unk17r;                // 1F4
	int unk17s;                // 1F8, some sort of z rotation (yaw?)
	int spitState;             // 1FC, 3 when holding something and 4 when spitting, 1 when flaming, etc. - maybe a head animation thing, matches other spit state variable
	int unk17t;                // 200
	int unk17u;                // 204
	int unk17v;                // 208
    int unk17a;                // 20C
    int unk17b;                // 210
    int unk17c;                // 214
    Moby* unk17d;              // 218, whirlwind moby pointer
    int unk17e;                // 21C
    int unk17f;                // 220
    int unk17g;                // 224
	Angle unk18;               // 228
	char padding3;             // 22B
	Vector3D unk19;            // 22C
	int unk20[3];              // 238
	int unk20a;                // 244 1 if currently a critter, seems to be used to hide Spyro
	int unk20b;                // 248 related to critters
	enum Critter critterMode;  // 24C i.e. the player
	Moby* critterMobyPtr;      // 250
	int unk21[11];             // [0] 254, 258, 25C, 260; [4] 264, 268, 26C, 270; [8] 274, 278, 27C
	int currentHealth;         // 280
	int	unk22[25];             // [1] makes spyro invisible, [15] changes a lot and is -1 when Spyro is airborne
} Spyro;


/*** Streaming / CD / Loading ***/

typedef struct {
	unsigned char minute;
	unsigned char second;
	unsigned char sector;
	unsigned char track;
} CdLoc; // LibCD, should actually be spelled CdlLOC

typedef struct {
	int unk0; // holds startLba or 0?
	int startLba;
	int endLba;
	int track;
	int* volumePtr;
} XaAudioData;

typedef struct {
	int wadSector; // 8006e470
	int dat_8006e474; // 8006e474
	CdLoc dat_8006e478; // 8006e478
	int dat_8006e47c; // 8006e47c
	int dat_8006e480; // 8006e480
	int dat_8006e484; // 8006e484
	int dat_8006e488; // 8006e488

	// possible sub-struct here due to some assembly oddities, but seems to compile fine without it? Probably nothing
	int dat_8006e48c; // 8006e48c, possibly number of tracks (e..g 8 when playing music)
	int dat_8006e490; // 8006e490
	int dat_8006e494; // 8006e494
	int dat_8006e498; // 8006e498 // volatile in s1?
	int musicEnabled; // 8006e49c
	int dat_8006e4a0; // 8006e4a0
	int dat_8006e4a4; // 8006e4a4
	int dat_8006e4a8; // 8006e4a8
	int musicVolume; // 8006e4ac // actual xa music volume, as opposed to the menu value
	int speechVolume; // 8006e4b0 // as above, for dialogue?
	int dat_8006e4b4; // 8006e4b4
	
    XaAudioData dat_8006e4b8; // 8006e4b8
    XaAudioData musicData; // 8006e4cc
    XaAudioData dat_8006e4e0; // 8006e4e0
    XaAudioData speechData; // 8006e4f4 - dialogue

} StreamingData;

typedef struct {
	int* D_800722b8; // ovlStartPtr
	int* D_800722bc; // lvlWadHeaderPtr?
	int* D_800722c0; // scenePtr
	int* D_800722c4; // envPtr
	int* D_800722c8; // layoutPtr
	int* D_800722cc; // demoInputsPtr
	int* D_800722d0;
	int* D_800722d4;
	int* D_800722d8;
	int* D_800722dc;
	int* D_800722e0; // ptr
	int* D_800722e4;
} LoadingData;


/*** Pause? ***/

typedef struct {
	int frameCount; // 8006fbc4
	int dat_8006fbc8; // pause scenario / loadstate? 8006fbc8
	int cursorPos; // 8006fbcc
	int menuType; // 8006fbd0
	int dat_8006fbd4; // 8006fbd4

	// Could be in a different struct
    int dat_8006fbd8; // 8006fbd8
    int dat_8006fbdc; // 8006fbdc
    int dat_8006fbe0; // 8006fbe0
    int dat_8006fbe4; // 8006fbe4
	int dat_8006fbe8; // 8006fbe8
	int dat_8006fbec; // 8006fbec
	int dat_8006fbf0; // 8006fbf0
	int dat_8006fbf4; // 8006fbf4
	int* dat_8006fbf8; // 8006fbf8, some kind of pointer seems to be used in Atlas

	// Probably in a different struct, to get struct usage to match properly
	DRAWENV dat_8006fbfc; // 8006fbfc
	DISPENV dat_8006fc58; // 8006fc58
	int dat_8006fc6c; // 8006fc6c
	DRAWENV dat_8006fc70; // 8006fc70
	DISPENV dat_8006fccc; // 8006fccc
	int dat_8006fce0; // 8006fce0
} PauseData; // 8006fbc4; may need renaming


/*** Speedways ***/

typedef struct {
    int speedwayIndex; // 8006FA38
    int gameMode;
    int dat_8006fa40;
    int dat_8006fa44;
    int dat_8006fa48;
    int dat_8006fa4c;
    int dat_8006fa50;
    int dat_8006fa54;
	int timeAttackMobys[4];
	int dat_8006fa68;
	int dat_8006fa6c;
	int currentSkateScore;
	int speedwayFramesElapsed;
	int lapNumber;
	int racePos;
	int dat_8006fa80;
	short dat_8006fa84;
	short dat_8006fa86;
	short dat_8006fa88;
	short dat_8006fa8a;
	int dat_8006fa8c;
	short dat_8006fa90;
	char dat_8006fa92;
	char dat_8006fa93;
	short dat_8006fa94;
	short dat_8006fa96;
	short dat_8006fa98;
	char dat_8006fa9a;
	char dat_8006fa9b;
	short dat_8006fa9c;
	short dat_8006fa9e;
	char dat_8006faa0[0xF0]; // unk
} SpeedwayData; // The bss one - not the speedway data in .data


/*** Parts ***/

typedef struct {
	char unk0; // possible class
	unsigned char unk1;
	char unk2;
	char unk3;
	short unk4; // ShortVector3D?
	short unk6;
	short unk8;
	char unkA;
	char unkB;
	char unkC;
	char unkD;
	char unkE;
	char unkF;
	short unk10;
	short unk12; // ShortVector3D?
	short unk14;
	short unk16;
	short unk18; // ShortVector3D?
	short unk1A;
	short unk1C;
	short unk1E;
} Particle;


/*** Talking ***/

typedef struct {
	char model; // animation state
	char zAngle;
	char zOffset;
	char colour;
} TalkTextData;


/*** Paths ***/

typedef struct {
	Vector3D pos;
	int unk;
} PathNode;

typedef struct {
	char nodeCount;
	char curNode;
	char unk[10];
	PathNode* nodes;
} PathTag;


/*** Collision? ***/

typedef struct {
	Vector3D D_80071900; // 80071900
	Vector3D targetedPosition; // 8007190c
	Vector3D D_80071918; // 80071918
	int D_80071924; // 80071924
	int D_80071928; // 80071928
	int D_8007192C; // 8007192c
	int D_80071930; // 80071930
	int D_80071934; // 80071934
} CollisionData;


/*** Various ***/

typedef struct {
    char unk0; // ?
    char unk1; // ?
    char unk2; // ?
    char unk3; // ?
    short unk4;
    short unk6;
    char unk8; // ?
    char unk9; // ?
    char unkA; // ?
    char unkB; // ?
    char unkC; // ?
    char unkD; // ?
    char unkE;
    char unkF;
    char unk10;
    char unk11;
    char unk12;
    char unk13;
    char unk14;
    char unk15;
    char unk16;
    char unk17;
} EnemyTag;

typedef struct {
    int collectionMobyClasses[4];
    int trialComplete;
    int trialRecord;
    int unk1; // 4200 in level 15
    int unk2; // incorrectly loaded
    int unk3; // 4200 in level 15, seemingly not used?
    int raceComplete; // incorrectly not loaded or saved?
    int raceRecord; // in frames, 60fps
} SpeedwayRecord;

typedef struct {
    short value, paid;
} GemToll;

// This could also be an array with an enum as the argument
typedef struct {
    GemToll level_12;
    GemToll level_23;
    GemToll level_10;
    GemToll level_21;
    GemToll level_13;
    GemToll level_34;
    GemToll level_20;
    GemToll level_30;
    GemToll level_42;
    GemToll level_40;
    GemToll level_31;
    GemToll level_41;
} MoneybagsData;


#endif
