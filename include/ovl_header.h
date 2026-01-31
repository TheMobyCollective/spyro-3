#ifndef __OVL_HEADER_H
#define __OVL_HEADER_H

#include "common.h"

// Needs e.g. #define LEVEL_ID 25 to use some of these

// String things
#define PRIMITIVE_CAT3(a, b, c) a##b##c
#define CAT3(a, b, c) PRIMITIVE_CAT3(a, b, c)

#define PRIMITIVE_CAT(a, b) a##b
#define CONCAT(a, b) PRIMITIVE_CAT(a, b)

#define STRINGLIT( x ) # x
#define EXPAND( x ) STRINGLIT( x )
#define STRINGQUOTE( x ) EXPAND( EXPAND( x ) )

// Useful
// e.g. NAME_OVERLAY_FUNCTION(CameraUpdate) CameraUpdate_level_25
#define NAME_OVERLAY_FUNCTION(func) CAT3(func, _level_, LEVEL_ID)
#define NAME_OVERLAY_FUNCTION_LEVEL(func, level) CAT3(func, _level_, level)

// Should be equivalent to NAME_OVERLAY_FUNCTION(MobyUpdate_CLASS)
// e.g. MOBYUPDATE(10) MobyUpdate_10_level_25
#define MOBYUPDATE(a) CONCAT(MobyUpdate_ ## a ## _level_, LEVEL_ID)

// Not used
#define MOBYUPDATE2(a) void MOBYUPDATE(a) (Moby* pMoby)
#define SUFFIX(a) CONCAT(a ## _level_, LEVEL_ID)

// Recommend using NAME_OVERLAY_FUNCTION(func) and MOBYUPDATE(a)

///////////////////////////////////////////////////////////////////////////////////////////////
// Ovl Header Struct
// TODO - maybe remove this because it's probably not a struct, based on some matching issues
typedef struct { // possibly NOT a struct, may want to define each of these separately in a header file
	unsigned int ovlId;
	char* ovlEnd;
	void (**MobyUpdate)(Moby* moby); // functions named MobyUpdate_$CLASS according to Sep04 printfs
	SpeechData* speechData[1]; // there are LANGUAGE_COUNT of these together! TODO add build param
	Moby* (*SpawnMoby)(int class, Moby* moby); // TODO - should be a function pointer, not sure about the in/outputs
	char* (*SpawnParticle)(int unk1, int unk2, Vector3D* unk3, Vector3D* unk4);
    char* (*UpdateParticles)(int delta);
    void* unk1b[6]; // TODO - animation related, in all levels and cutscenes
    void* unk1c[4]; // TODO - camera related, in all levels and cutscenes
	void* unk2a[7]; // TODO - level-specific; [0] called by Sparx / butterflies, [1] SetCritter / UpdateActiveCritter
	int (*unk2b)(Vector3D*, int, int); // TODO - level-specific
	int (*unk2c)(Vector3D*); // TODO - level-specific
	void* unk2d[6]; // TODO - level-specific
    int (*unk2da)(short*); // sprite related
    void (*unk2db)(void*); // void (*unk2db)(HudStruct*) actually, maybe int output
    void (*unk2dc)(void*); // void (*unk2dc)(HudStruct*) actually, maybe int output
	void (*SpawnFragments)(int fragmentCount, int fragmentClass, Moby* spawningMoby, Vector3D* offsetVecs, int unk2, short unk3);
	void* unk2dd[5]; // TODO - level-specific
	void* unk3[2]; // TODO, speedway related
	void (*UpdateSpeedwayMenu)(enum UpdateFlags updateFlags); // D_8007437C - Speedway menu update
	void* unk4[10]; // TODO, speedway related
	void* unk5[47]; // TODO
	void* unk6[2]; // TODO cutscene related
	void (*UpdateCutscene)(); // D_8007446C - Cutscene update
	void* unk7[3]; // TODO, cutscene related
	void* unk8; // Skateboarding menu init state
	void* unk9; // Skateboarding set record
	void (*UpdateSkateMenu)(); // D_80074484 - Skateboarding menu update
	void* unka; // Skateboarding menu draw?
	void* unkb; // TODO
} OvlHeader;

extern OvlHeader ovlHeader; // 800742D0, psyqId (ovlId) is at this location

///////////////////////////////////////////////////////////////////////////////////////////////
// Pointers - everything from the struct except for the psyqId
extern char* ovlEnd; // 800742D4
extern void (**MobyUpdate)(Moby* moby); // 800742D8, functions named MobyUpdate_$CLASS according to Sep04 printfs
extern SpeechData* speechData[1]; // 800742DC, there are LANGUAGE_COUNT of these together! TODO add build param
extern Moby* (*SpawnMoby)(int class, Moby* moby); // 800742E0
extern char* (*SpawnParticle)(int unk1, int unk2, Vector3D* unk3, Vector3D* unk4); // 800742E4, types TODO
extern char* (*UpdateParticles)(int delta); // 800742E8, types TODO

// Animation related, in all levels and cutscenes
extern void (*unk_ovlheader_800742EC)(void); // 800742EC, types TODO, likely Update animation state
extern void (*unk_ovlheader_800742F0)(void); // 800742F0, types TODO, likely Update animation state(?)
extern void (*unk_ovlheader_800742F4)(void); // 800742F4, types TODO, likely Update critter animation state
extern void (*unk_ovlheader_800742F8)(void); // 800742F8, types TODO, likely Update animation state(?)
extern void (*unk_ovlheader_800742FC)(void); // 800742FC, types TODO, likely Update movement state(?)
extern void (*unk_ovlheader_80074300)(void); // 80074300, types TODO, likely Update animation state(?)

// Camera related, in all levels and cutscenes
extern void (*unk_ovlheader_80074304)(void); // 80074304, types TODO, likely Update camera
extern void (*unk_ovlheader_80074308)(void); // 80074308, types TODO, likely Camera related
extern void (*unk_ovlheader_8007430C)(void); // 8007430C, types TODO, likely Camera related
extern void (*unk_ovlheader_80074310)(void); // 80074310, types TODO, likely Camera related

// Less common ones / level-specific
extern void (*unk_ovlheader_80074314)(void); // 80074314, types TODO, called by Sparx / butterflies
extern void (*unk_ovlheader_80074318)(void); // 80074318, types TODO, likely Update active critter
extern void (*unk_ovlheader_8007431C)(void); // 8007431C, types TODO, likely Update movement state(?)
extern void (*unk_ovlheader_80074320)(void); // 80074320, types TODO
extern void (*unk_ovlheader_80074324)(void); // 80074324, types TODO
extern void (*unk_ovlheader_80074328)(void); // 80074328, types TODO
extern void (*unk_ovlheader_8007432C)(void); // 8007432C, types TODO
extern int (*unk_ovlheader_80074330)(Vector3D*, int, int); // 80074330, level-specific
extern int (*unk_ovlheader_80074334)(Vector3D*); // 80074334, level-specific
extern void (*unk_ovlheader_80074338)(void); // 80074338, types TODO, level-specific
extern void (*unk_ovlheader_8007433C)(void); // 8007433C, types TODO, level-specific
extern void (*unk_ovlheader_80074340)(void); // 80074340, types TODO, level-specific
extern void (*unk_ovlheader_80074344)(void); // 80074344, types TODO, level-specific
extern void (*unk_ovlheader_80074348)(void); // 80074348, types TODO, level-specific
extern void (*unk_ovlheader_8007434C)(void); // 8007434C, types TODO, level-specific
extern int (*unk_ovlheader_80074350)(short*); // 80074350, sprite related
extern void (*unk_ovlheader_80074354)(void*); // 80074354, types TODO - void (*unk2db)(HudStruct*) actually, maybe int output
extern void (*unk_ovlheader_80074358)(void*); // 80074358, types TODO - void (*unk2dc)(HudStruct*) actually, maybe int output
extern void (*SpawnFragments)(int fragmentCount, int fragmentClass, Moby* spawningMoby, Vector3D* offsetVecs, int unk2, short unk3); // 8007435C
extern void (*unk_ovlheader_80074360)(void); // 80074360, types TODO, UNOBSERVED
extern void (*unk_ovlheader_80074364)(void); // 80074364, types TODO
extern void (*unk_ovlheader_80074368)(void); // 80074368, types TODO
extern void (*unk_ovlheader_8007436C)(void); // 8007436C, types TODO
extern void (*unk_ovlheader_80074370)(void); // 80074370, types TODO, likely (Update HUD sprites) timer related

// Speedways
extern void (*unk_ovlheader_80074374)(void); // 80074374, types TODO, ends speedway game, referenced in other levels in code related to swimming, as this also ends the game
extern void (*unk_ovlheader_80074378)(void); // 80074378, types TODO
extern void (*UpdateSpeedwayMenu)(enum UpdateFlags updateFlags); // 8007437C
extern void (*unk_ovlheader_80074380)(void); // 80074380, types TODO
extern void (*unk_ovlheader_80074384)(void); // 80074384, types TODO
extern void (*unk_ovlheader_80074388)(void); // 80074388, types TODO
extern void (*unk_ovlheader_8007438C)(void); // 8007438C, types TODO
extern void (*unk_ovlheader_80074390)(void); // 80074390, types TODO
extern void (*unk_ovlheader_80074394)(void); // 80074394, types TODO
extern void (*unk_ovlheader_80074398)(void); // 80074398, types TODO
extern void (*unk_ovlheader_8007439C)(void); // 8007439C, types TODO
extern void (*unk_ovlheader_800743A0)(void); // 800743A0, types TODO, likely Moby is in sphere (moby, centre, radius)
extern void (*unk_ovlheader_800743A4)(void); // 800743A4, types TODO, likely Get closest node (with upper and lower bounds, unlike the one in mobyutil)

// ?
extern void (*unk_ovlheader_800743A8)(void); // 800743A8, types TODO
extern void (*unk_ovlheader_800743AC)(void); // 800743AC, types TODO
extern void (*unk_ovlheader_800743B0)(void); // 800743B0, types TODO
extern void (*unk_ovlheader_800743B4)(void); // 800743B4, types TODO

// Powerup levels
extern void (*unk_ovlheader_800743B8)(void); // 800743B8, types TODO
extern void (*unk_ovlheader_800743BC)(void); // 800743BC, types TODO
extern void (*unk_ovlheader_800743C0)(void); // 800743C0, types TODO

// ?
extern void (*unk_ovlheader_800743C4)(void); // 800743C4, types TODO
extern void (*unk_ovlheader_800743C8)(void); // 800743C8, types TODO
extern void (*unk_ovlheader_800743CC)(void); // 800743CC, types TODO
extern void (*unk_ovlheader_800743D0)(void); // 800743D0, types TODO, UNOBSERVED
extern void (*unk_ovlheader_800743D4)(void); // 800743D4, types TODO, UNOBSERVED
extern void (*unk_ovlheader_800743D8)(void); // 800743D8, types TODO
extern void (*unk_ovlheader_800743DC)(void); // 800743DC, types TODO
extern void (*unk_ovlheader_800743E0)(void); // 800743E0, types TODO
extern void (*unk_ovlheader_800743E4)(Vector3D*,int,int,Vector3D*); // 800743E4
extern void (*unk_ovlheader_800743E8)(void); // 800743E8, types TODO
extern void (*unk_ovlheader_800743EC)(void); // 800743EC, types TODO
extern void (*unk_ovlheader_800743F0)(void); // 800743F0, types TODO
extern void (*unk_ovlheader_800743F4)(void); // 800743F4, types TODO
extern void (*unk_ovlheader_800743F8)(void); // 800743F8, types TODO, UNOBSERVED
extern void (*unk_ovlheader_800743FC)(void); // 800743FC, types TODO, UNOBSERVED
extern void (*unk_ovlheader_80074400)(void); // 80074400, types TODO, UNOBSERVED
extern void (*unk_ovlheader_80074404)(void); // 80074404, types TODO, UNOBSERVED
extern void (*unk_ovlheader_80074408)(void); // 80074408, types TODO, UNOBSERVED
extern void (*unk_ovlheader_8007440C)(void); // 8007440C, types TODO
extern void (*unk_ovlheader_80074410)(void); // 80074410, types TODO
extern void (*unk_ovlheader_80074414)(void); // 80074414, types TODO
extern void (*unk_ovlheader_80074418)(void); // 80074418, types TODO
extern void (*unk_ovlheader_8007441C)(void); // 8007441C, types TODO, UNOBSERVED
extern void (*unk_ovlheader_80074420)(void); // 80074420, types TODO
extern void (*unk_ovlheader_80074424)(void); // 80074424, types TODO
extern void (*unk_ovlheader_80074428)(void); // 80074428, types TODO
extern void (*unk_ovlheader_8007442C)(void); // 8007442C, types TODO
extern void (*unk_ovlheader_80074430)(void); // 80074430, types TODO
extern void (*unk_ovlheader_80074434)(void); // 80074434, types TODO
extern void (*unk_ovlheader_80074438)(void); // 80074438, types TODO, UNOBSERVED, except as a secondary check

// Skateboarding
extern void (*unk_ovlheader_8007443C)(void); // 8007443C, types TODO
extern void (*unk_ovlheader_80074440)(void); // 80074440, types TODO
extern void (*unk_ovlheader_80074444)(void); // 80074444, types TODO
extern void (*unk_ovlheader_80074448)(void); // 80074448, types TODO
extern void (*unk_ovlheader_8007444C)(void); // 8007444C, types TODO
extern void (*unk_ovlheader_80074450)(void); // 80074450, types TODO

// ?
extern void (*unk_ovlheader_80074454)(void); // 80074454, types TODO
extern void (*unk_ovlheader_80074458)(void); // 80074458, types TODO
extern void (*unk_ovlheader_8007445C)(void); // 8007445C, types TODO
extern void (*unk_ovlheader_80074460)(void); // 80074460, types TODO

// Cutscenes
extern void (*unk_ovlheader_80074464)(int); // 80074464, types TODO
extern void (*unk_ovlheader_80074468)(void); // 80074468, types TODO
extern void (*UpdateCutscene)(); // 8007446C, likely Cutscene update
extern void (*unk_ovlheader_80074470)(void); // 80074470, types TODO
extern void (*unk_ovlheader_80074474)(void); // 80074474, types TODO
extern void (*unk_ovlheader_80074478)(void); // 80074478, types TODO

// Skateboarding again
extern void (*unk_ovlheader_8007447C)(void); // 8007447C, types TODO, likely Skateboarding menu init state
extern void (*unk_ovlheader_80074480)(void); // 80074480, types TODO, likely Skateboaring set record
extern void (*UpdateSkateMenu)(); // 80074484, likely Skateboarding menu update
extern void (*unk_ovlheader_80074488)(void); // 80074488, types TODO, likely Skateboarding menu draw?

// Level 43
extern void (*unk_ovlheader_8007448C)(void); // 8007448C, types TODO

#endif