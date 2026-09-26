from datetime import datetime
import re

proot = 'psyq/include/'
pfiles = [
    'libgpu.h',
]

root = 'include/'
files = [
    'common.h',
    'cyclorama.h',
    'draw.h',
    'camera.h',
    'cheat.h',
    'hud.h',
    'pad.h',
    'savepoint.h',
    'memcard.h',
    'mobyutil.h',
    'tracers.h',
    'warp.h',
    'drawutil.h',
    'stdutil.h',
    'loaders.h',
    'spu.h',
    'spyro.h',
    'str.h',
    'environment.h',
    'ovl_header.h',
    'moby/mobytag.h',
	'init.h',
	'mobydraw.h',
	'mobyfunc.h',
	'mobyupdate.h',
	#'strings.h', # empty right now
]

context = '// Context generated ' + datetime.now().strftime("%Y-%m-%d %H:%M:%S") + '\n\n'

# I might want to just include this in common at some point, but I don't think I like these type names very much
context += """
//////////////////// Extra typedefs ////////////////////

typedef unsigned char u8;
typedef char s8;
typedef unsigned short u16;
typedef short s16;
typedef unsigned int u32;
typedef int s32;

#define CHEAT_COUNT 12
"""

# libraries
for file in pfiles:
    context += '\n//////////////////// ' + file + ' ////////////////////\n\n'
    with open(proot + file, 'r') as f:
        header = f.read()
    header = re.sub(r'^#[^(\r\n]*$[\r\n]*', '', header, flags=re.M)        # removes includes
    header = re.sub(r'^static inline((.|\n)*?)^}', '', header, flags=re.M) # removes static inline functions
    context += header

# src
for file in files:
    context += '\n//////////////////// ' + file + ' ////////////////////\n\n'
    with open(root + file, 'r') as f:
        header = f.read()
    header = re.sub(r'^#[^(\r\n]*$[\r\n]*', '', header, flags=re.M)        # removes includes
    header = re.sub(r'^static inline((.|\n)*?)^}', '', header, flags=re.M) # removes static inline functions
    context += header

# This is sloppy, but it's only until I have some more concrete header files
others = """
/////////////////////////////////////////////// Functions

// Collision
extern int func_80019194(Vector3D*, int);
extern int func_8001A358(Vector3D*, int);

// Update
extern void func_80054F94(int, Moby*); // levelId, moby (possibly vehicle moby), seems to be set state loading vehicle

// UpdateMobys
extern Moby* func_80055A7C(); // get first empty allocated moby
extern void func_80055B18(Moby*); // fDeleteMoby
extern void func_80055C24(Moby*);
extern void func_80055D24(Moby*, int); // fUpdateMobyCollision
extern int func_80055E84(Moby*);
extern void func_80056270(Moby*);
extern void func_8005629C(Moby*);

// Psyq
extern int rand(); // rand

// Variables
extern short D_800658A0[0x100]; // sin
extern short D_80065920[0x100]; // cos
extern Moby* D_8006C550; // moby array ptr
extern int D_8006C5BC; // currentLvl
extern int D_8006C648; // deltaTime
extern Spyro D_80070328; // left without name to make the decompiler find it easier
extern CDState D_8006E470; // cdState
extern StreamingData D_8006E48C; // streamingData
extern SpeedwayData D_8006FA38; // speedwayData (bss)
extern PauseData D_8006FBC4; // pauseData

// ADD IN THE FUNCTION SIGNATURE TO MAKE DECOMPILING EASIER
// extern ? func_????????(?, ?, ?, ?);
"""

context += others

print(context)
