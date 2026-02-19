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
	CutsceneWads cutscene[21]; // based on func_80058778, 0th is title!
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


/*** Spyro definitions moved to spyro.h ***/


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


/*** Pause? ***/

typedef struct {
	int frameCount; // 8006fbc4
	int dat_8006fbc8; // pause scenario / loadstate? 8006fbc8
	int cursorPos; // 8006fbcc
	int menuType; // 8006fbd0
	int dat_8006fbd4; // 8006fbd4

	// Could be in a different struct, unclear
    int dat_8006fbd8; // 8006fbd8
    int dat_8006fbdc; // 8006fbdc
    int dat_8006fbe0; // 8006fbe0
    int dat_8006fbe4; // 8006fbe4
	int dat_8006fbe8; // 8006fbe8
	int dat_8006fbec; // 8006fbec
	int dat_8006fbf0; // 8006fbf0
	int dat_8006fbf4; // 8006fbf4
	int* dat_8006fbf8; // 8006fbf8, some kind of pointer seems to be used in Atlas
} PauseData; // 8006fbc4; may need renaming

typedef struct {
	// Probably in a different struct, to get struct usage to match properly
	DRAWENV dat_8006fbfc; // 8006fbfc
	DISPENV dat_8006fc58; // 8006fc58
	int dat_8006fc6c; // 8006fc6c
	DRAWENV dat_8006fc70; // 8006fc70
	DISPENV dat_8006fccc; // 8006fccc
	int dat_8006fce0; // 8006fce0 // a ptr used in some memcpys / loading, so perhaps unrelated?
} PauseData2; // temporary name, unclear what this is for (display / drawing seemingly)


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

typedef struct {
    Vector3D16 pos;
    short swimming;
} PortalSpawn;

typedef struct {
    Vector3D pos;
    int angle;
} FullPosition;

typedef struct {
	int unk0;
	int unk4;
	int unk8;
	int unkC;
	int unk10;
	int unk14;
	int unk18;
	int unk1C;
	int* unk20; // TextureComponent*?
	int unk24;
	void* unk28; // CollisionHeader*?
	int unk2C;
	int unk30;
	int unk34;
	int unk38;
	int unk3C;
} Unk_8006d048;

typedef struct {
    unsigned char unk0;
    unsigned char unk1;
    short unk2;
    unsigned char unk4;
    unsigned char unk5;
    short unk6;
} SpriteData; // there'll be a better place for this somewhere, and probably a better name too


#endif
