#ifndef __SPYRO_H
#define __SPYRO_H

#include "common.h"

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

extern Spyro spyro;

#endif