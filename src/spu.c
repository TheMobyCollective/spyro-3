#include "common.h"
#include "spu.h"

// libspu types - libspu to add properly, these types were also added in a PR (TODO!!)
typedef struct {
    short left;
    short right;
} SpuVolume;

typedef struct {
    SpuVolume volume;
    int reverb;
    int mix;
} SpuExtAttr;

typedef struct {
    unsigned long mask;
    SpuVolume mvol;
    SpuVolume mvolmode;
    SpuVolume mvolx;
    SpuExtAttr cd;
    SpuExtAttr ext;
} SpuCommonAttr;

typedef struct {
	unsigned long voice;
	unsigned long mask;
	SpuVolume volume;
	SpuVolume volmode;
	SpuVolume volumex;
	unsigned short pitch;
	unsigned short note;
	unsigned short sample_note;
	short envx;
	unsigned long addr;
	unsigned long loop_addr;
	long a_mode;
	long s_mode;
	long r_mode;
	unsigned short ar;
	unsigned short dr;
	unsigned short sr;
	unsigned short rr;
	unsigned short sl;
	unsigned short adsr1;
	unsigned short adsr2;
} SpuVoiceAttr;

// psyq functions
void SpuSetTransferMode(int);      // SpuSetTransferMode
void SpuSetCommonAttr(SpuCommonAttr*); // SpuSetCommonAttr
void SpuSetKey(int, int); // SpuSetKey
void SpuInit();         // SpuInit
void SpuSetVoiceAttr(SpuVoiceAttr*); // SpuSetVoiceAttr

//////////////////////////////////////////////////////////////

extern Model* D_8006EE2C[768]; // probably moby model pointers
extern int D_8006C630;

//////////////////////////////////////////////////////////////

/**
 * ???() - func_8003BABC() - MATCHING
 * https://decomp.me/scratch/kKchg
 */
int func_8003BABC(Moby* arg0, int arg1, int arg2) {
    if (D_8006EE2C[arg0->mobyClass]->m_Sounds[arg1] != 0xFF) {
        return PlaySound(D_8006EE2C[arg0->mobyClass]->m_Sounds[arg1], arg0, arg2);
    }
    return -1;
}

/**
 * ???() - func_8003BB10() - MATCHING
 * https://decomp.me/scratch/tr67c
 */
int func_8003BB10(Moby* arg0, int arg1, int arg2) {    
    if (D_8006C708[arg1] != 0xFF) {
        return PlaySound(D_8006C708[arg1], arg0, arg2);
    }
    return -1;
}

/** 
 * PlaySound() - func_8003BB50()
 * TODO
 */
INCLUDE_ASM("asm/nonmatchings/spu", PlaySound);

/**
 * ???() - func_8003BE70() - MATCHING
 * https://decomp.me/scratch/TvzFy
 */
void func_8003BE70(int handle) {
    if (g_ActiveSounds[handle].unk0 == 1) {
        g_ActiveSounds[handle].unk0 = 5;
    }
    else if (g_ActiveSounds[handle].unk0 == 2) {
        g_ActiveSounds[handle].unk0 = 3;
        g_ActiveSounds[handle].unk4 = 0;
    }
}

/**
 * ???() - func_8003BEDC() - MATCHING
 * https://decomp.me/scratch/aupaf
 */
void func_8003BEDC() {
    int handle;
    D_8006C630 = 1;
    for (handle = 0; handle < 0x18; handle++) {
        if ((g_ActiveSounds[handle].unk0 == 1 || g_ActiveSounds[handle].unk0 == 2) && !(g_ActiveSounds[handle].unk2 & 0x40)) {
            func_8003BE70(handle);
        }
    }
}

/**
 * ???() - func_8003BF6C() - MATCHING
 * https://decomp.me/scratch/HNDde
 */
int func_8003BF6C(int arg0, int handle) {
    if (handle >= 0 && g_ActiveSounds[handle].unk1 == arg0) {
        if (g_ActiveSounds[handle].unk0 == 1 || g_ActiveSounds[handle].unk0 == 2) {
            return 1;
        }
    }
    return 0;
}

/**
 * ???() - func_8003BFC0() - MATCHING
 * https://decomp.me/scratch/STI55
 */
int func_8003BFC0(Moby* arg0, int handle) {
    if (handle >= 0 && g_ActiveSounds[handle].unk28 == arg0) {
        if (g_ActiveSounds[handle].unk0 == 1 || g_ActiveSounds[handle].unk0 == 2) {
            return 1;
        } 
    }
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/spu", func_8003C014);

/**
 * ???() - func_8003C0B0() - MATCHING
 * Source of the bluto glitch, as there's no -1 check in here
 * If you pause during the start of the boat charge sound, and release charge while paused, it buffer underflows and writes to 8006fcd0
 * https://decomp.me/scratch/NVzfz
 */
void func_8003C0B0(int handle, int arg1) {
    g_ActiveSounds[handle].unk18 = (arg1 * ((g_SpuDefinitionsPtr[g_ActiveSounds[handle].unk1].unkC + g_SpuDefinitionsPtr[g_ActiveSounds[handle].unk1].unkE) / 2)) >> 12;
    g_ActiveSounds[handle].unk2 |= 8;
}

/**
 * ???() - func_8003C140() - MATCHING
 * https://decomp.me/scratch/PnDAX
 */
void func_8003C140(int handle, int arg1) {
    g_ActiveSounds[handle].unkC = arg1;
    g_ActiveSounds[handle].unk2 |= 0x10;
}

INCLUDE_ASM("asm/nonmatchings/spu", func_8003C184);

INCLUDE_ASM("asm/nonmatchings/spu", func_8003C428);

INCLUDE_ASM("asm/nonmatchings/spu", func_8003C79C);

INCLUDE_ASM("asm/nonmatchings/spu", func_8003C994);

INCLUDE_ASM("asm/nonmatchings/spu", func_8003CB00);

/**
 * ???() - SpuInitialize() - MATCHING
 * SpuInitialize in spyro-1
 * https://decomp.me/scratch/3TUaM
 */
void SpuInitialize() {
    SpuCommonAttr commonAttr;
    SpuVoiceAttr voiceAttr;
    SpuInit();
    commonAttr.mask = 3;
    commonAttr.mvol.right = 0x3CCC;
    commonAttr.mvol.left = 0x3CCC;
    SpuSetCommonAttr(&commonAttr);
    voiceAttr.mask = 0xFF13;
    voiceAttr.volume.left = 0x2FFF;
    voiceAttr.volume.right = 0x2FFF;
    voiceAttr.pitch = 0x400;
    voiceAttr.a_mode = 1;
    voiceAttr.s_mode = 1;
    voiceAttr.voice = 0xFFFFFF;
    voiceAttr.r_mode = 3;
    voiceAttr.ar = 0;
    voiceAttr.dr = 0;
    voiceAttr.sr = 0;
    voiceAttr.rr = 0;
    voiceAttr.sl = 0xF;
    SpuSetVoiceAttr(&voiceAttr);
    SpuSetKey(0, 0xFFFFFF);
    SpuSetTransferMode(0);
}
