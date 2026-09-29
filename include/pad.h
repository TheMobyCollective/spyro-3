#ifndef __PAD_H
#define __PAD_H

#define PAD_L2 (1 << 0)
#define PAD_R2 (1 << 1)
#define PAD_L1 (1 << 2)
#define PAD_R1 (1 << 3)

#define PAD_TRIANGLE (1 << 4)
#define PAD_CIRCLE (1 << 5)
#define PAD_CROSS (1 << 6)
#define PAD_SQUARE (1 << 7)

#define PAD_SELECT (1 << 8)
#define PAD_START (1 << 11)

#define PAD_L3 (1 << 9)
#define PAD_R3 (1 << 10)

#define PAD_UP (1 << 12)
#define PAD_RIGHT (1 << 13)
#define PAD_DOWN (1 << 14)
#define PAD_LEFT (1 << 15)

#define PAD_DPAD (PAD_UP | PAD_RIGHT | PAD_DOWN | PAD_LEFT)
#define PAD_ICONS (PAD_TRIANGLE | PAD_CIRCLE | PAD_CROSS | PAD_SQUARE)
#define PAD_SHOULDERBUTTONS (PAD_L2 | PAD_R2 | PAD_L1 | PAD_R1)
#define PAD_BUTTONS (PAD_DPAD | PAD_ICONS | PAD_SHOULDERBUTTONS)

// deprecate this?
enum PadInput { // TODO - update these to inclue PAD_INPUT_ / turn into defines instead
	PAD_INPUT_NULL = 0x0,
	L2 = 0x1,
	R2 = 0x2,
	L1 = 0x4,
	R1 = 0x8,
	TRI = 0x10,
	CIR = 0x20,
	X = 0x40,
	SQU = 0x80,
	SEL = 0x100,
	STA = 0x800,
	U = 0x1000,
	R = 0x2000,
	D = 0x4000,
	L = 0x8000,
};

enum ControllerType {
    CONTROLLER_TYPE_DISCONNECTED = 0,
    CONTROLLER_TYPE_INVALID = 1,
    CONTROLLER_TYPE_DPAD = 2,
    CONTROLLER_TYPE_STICK = 3,
};

typedef struct {
    unsigned char rx;
    unsigned char ry;
    unsigned char lx;
    unsigned char ly;
} StickState;

typedef struct {
	enum PadInput held; // currently held
	enum PadInput pressed; // newly pressed
	enum PadInput released; // newly released
	StickState stick;
} PadState;

typedef struct {
    unsigned char status;
    unsigned char size_type;
    unsigned char input[2]; // button state, 2 bytes and inverted rather than a full four bytes
    StickState stick;
} PsyqPad; // from libpad // note that instances of this might have 7 ints afterwards? maybe add the padding later
// note that any padding updates here will need checks for any ptr arithmetic, as the demo inputs in WADs are only 2 ints wide

typedef struct { // e.g. 8006e508
	unsigned char controllerType; //  0 - ControllerType enum
	unsigned char unk1b;          //  1
	unsigned char unk1c;          //  2
	unsigned char unk1d;          //  3
	unsigned char vibrationMode;  //  4
	char unk2[3];                 //  5,  6,  7
	StickState unk2a;             //  8
    StickState unk2b[4];          //  C, 10, 14, 18
	int unk3[4];                  // 1C, 20, 24, 28
	char buttonPressed;           // 2C
	char dpadPressed;             // 2D
	char unk4;                    // 2E
	char unk4a;                   // 2F
	PadState state;               // 30
	PadState store[4];            // 40, 50, 60, 70
} Pad;

// bss
extern Pad pad; // 8006e508
extern Pad g_Pad; // 8006e508

extern PsyqPad demoPadState; // 80071438, actually length 0x24 so there may be more here
extern PadState D_80071500[4]; // D_80071500
extern PsyqPad D_800718DC; // 7 ints after this?
extern PadState D_80071FD8[4]; // 80071fd8
extern Pad pad2; // 80072018

// functions
//func_80039E34
//func_80039E88
void func_8003A010(Pad*);
void func_8003A2B0();
void func_8003A40C();
void func_8003A584();
void func_8003A908(Pad*);
void func_8003A964(Pad*, Pad*);
void func_8003A9EC();

#endif