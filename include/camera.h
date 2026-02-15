#ifndef __CAMERA_H
#define __CAMERA_H

#include "common.h"

typedef struct {
	int azimuth;
	int elevation;
	unsigned int radius; // spherical radius
} SphericalPosition;

typedef struct {
	SphericalPosition pos;
	int yaw;
	int pitch;
} CameraPosition;

enum CameraState {
	CAMERA_NORMAL = 0x0,          // behind spyro
	CAMERA_MOVING = 0x1,
	CAMERA_CHARGING = 0x2,
	CAMERA_SUPERFLY = 0x3,        // also 45 Hunter
	CAMERA_UNDERWATER = 0x4,
	// ?
	CAMERA_PAUSED_ROTATION = 0x6,
	CAMERA_FIRST_PERSON = 0x7,
	CAMERA_CENTRE = 0x8,          // i.e. with L1 or R1, also used when Agent 9 strafing
	CAMERA_CUTSCENE = 0x9,        // also falling into the abyss
	CAMERA_SPEEDWAY_TOTALS = 0xA,
	CAMERA_FADE_OUT = 0xB,
	CAMERA_CHASE = 0xC,           // e.g. sun seeds; like focused but stronger?
	CAMERA_FOCUSED = 0xD,         // e.g. focused on a moby or a path; like chase but weaker?
	CAMERA_CANNON = 0xE,
	CAMERA_CRASH = 0xF,           // 42 Sheila
	CAMERA_UP = 0x10,             // 42 ladder room, when the camera looks upwards
	CAMERA_ZOOM_OUT = 0x11,       // e.g. Bianca entrance
	CAMERA_DIALOGUE = 0x12,       // also eggs
	CAMERA_SHEILA_CASTLE = 0x13,  // definitely elsewhere too, change this name later
	// ?
	CAMERA_DROWNING = 0x15,
	// ?
	CAMERA_WHIRLWIND = 0x17,
	// ?
	CAMERA_HUNTER_BOAT = 0x19,    // Level 35
	// ?
	// ?
	// ?
	CAMERA_HUNTER_FLY = 0x1D,     // Level 25
	CAMERA_SGT_BYRD_FLY = 0x1E,   // I had this lablled as "CAMERA_FLYING" before?
	CAMERA_AGENT_9_POV = 0x1F,    // first person, also the Dino Mines cam
	CAMERA_SUBMARINE = 0x20,      // also the manta ray
	CAMERA_OVERHEAD = 0x21,       // e.g. Sheila fireflies
	CAMERA_BOXING = 0x22,
	CAMERA_SUBLEVEL_ENTRY = 0x23,
	CAMERA_SKATEBOARD = 0x24,
	CAMERA_SPARX_OVERHEAD = 0x25,
	CAMERA_SGT_BYRD_TARGET = 0x26,// e.g. when holding a weight and pressing triangle
	CAMERA_AGENT_9_STRAFE = 0x27, // only when moving with dpad/stick whilst strafing
	CAMERA_AGENT_9_DOOM = 0x28,   // Fireworks Factory, until triangle is pressed
};

typedef struct {
	CameraPosition pos[9]; // not sure what they all do yet!
} CameraPositionArray;

typedef struct {
	int unk0;
	int unk4;
	int unk8;
	int unkc;
	int unk10;
	int unk14;
	int unk18;
	int unk1c;
	int unk20;
	int unk24;
	Vector3D nextCameraPosCartesian;
	Vector3D currentCameraPosCartesian;
	int unk40;
	short unk44;
	short unk46;
	short unk48;
	short unk4a;
	int cameraState; // refer to CameraState enum; set to int so it's signed
	int unk50; // 8006E048
	int stateTimer; // time in current camera state
	int unk58;
	char unk5c[4];
	Vector3D unk60;
	int unk6c;
	Vector3D unk70;
	CameraPositionArray unk7c;
	int unk130;
	int unk134;
	int unk138;
	int unk13c;
	char unk140[8];
	int unk148[8];
	int unk168; // 0x70 from this point might be its own struct
	Moby* unk16c;
	CameraPosition unk170; // "target relative camera pos during gameplay" ???
	Vector3D unk184;
	CameraPosition unk190;
	int unk1a4;
	int unk1a8;
	int unk1ac[2];
	int unk1b4;
	Vector3D unk1b8;
	int unk1c4[12];
	short unk1f4[4];
} Camera;

// bss
extern Camera camera;  // 8006dff8 - possible sub-struct at camera.unk168??

void func_8001204C(); // update camera
void func_80012168();
void func_8001241C();
void func_80012530();
void func_80012AC8();
void func_80012B34();
void func_80012BA8(CameraPosition*);
void func_80012D18();
void func_800130DC();
void func_800135A4(CameraPosition*, CameraPosition*, int); // set camera position
void func_800135F8(Vector3D*, SphericalPosition*, Vector3D*); // spherical to cartesian, with origin
int func_800136F0(CameraPosition*, Vector3D*, Vector3D*);
void func_800138A0(CameraPosition*, CameraPosition*);
void func_80013900(CameraPosition*);
void func_80013918(int);
void func_800139A4();
void func_80013ACC(Moby*, int);
void func_80013AE4(Vector3D*, Vector3D*);
void func_80013B7C(int);
void func_80013CC4(int, int);
void func_80013D44(Vector3D*, int, Vector3D*, int);
int func_80013E38(Vector3D*, Vector3D*, int);
void func_8001405C();
void func_800142AC();
void func_800142E0();
void func_80014354();
void func_80014450();
void func_800144B4();
void func_80016568();
void func_80016764(int);
void func_80017028();

// 80068f7c "CameraPositionData", an array of 65 camera positions
// Overlay camera functions suggest that these are probably not a single array, as that seems to break things
// All this likely comes from spyro.c actually

extern CameraPosition D_80068F7C; // cam0
extern CameraPosition D_80068F90;
// cams 2 - 6
extern CameraPosition D_80069008; // D_80068F7C.cam7
// cams 8 - 13
extern CameraPosition D_80069094[2]; // cam14,15 // 0: left, 1: right // Certainly an array, could be up to 5 long?
// cams 16 - 18
extern CameraPosition D_800690F8[2]; // cam19,20 // 0: left, 1: right // Certainly an array, could be up to 5 long?
// cams 21 - 23
extern CameraPosition D_8006915C[2]; // cam24,25 // 0: left, 1: right // Certainly an array, unclear length
// cams 26 - 36
extern CameraPosition D_80069260; // D_80068F7C.cam37
// cams 38 - 39
extern CameraPosition D_8006929C[5]; // D_80068F7C.cam40
// cams 45 - 46
extern CameraPosition D_80069328[5]; // D_80068F7C.cam47
// cams 52 - 53
extern CameraPosition D_800693B4; // D_80068F7C.cam54
extern CameraPosition D_800693C8; // D_80068F7C.cam55
// cams 56 - 64

// bss
extern CameraPosition D_800719F0;

#endif