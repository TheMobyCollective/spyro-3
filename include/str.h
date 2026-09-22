#ifndef __STR_H
#define __STR_H

#include "common.h"

/* Minimal PSY-Q libspu subset required by func_8004FA24.
 * The Spyro 3 project does not currently include libspu.h.
 */
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

#define SPU_COMMON_CDVOLL (1 << 6)
#define SPU_COMMON_CDVOLR (1 << 7)
/* End of minimal libspu subset. */

// Similar in purpose to CdMusic in Spyro 1; layout is different.
typedef struct {
    unsigned char commandParam[8];   // 0x10 ControlF parameter
    char syncData[8];                // 0x18 CdSync result buffer
    CdLoc cdPos;                     // 0x20 CD position
    unsigned char padding[4];        // 0x24
    unsigned char trackParam[2];     // 0x28 XA track-selection parameters
    unsigned char padding2[6];       // 0x2A
    SpuCommonAttr attr;              // 0x30 SPU CD volume attributes
} CdMusic;

void func_8004F8EC();
void func_8004F984(int startLba, int endLba, int track);
void func_8004F9C0(int startLba, int endLba, int track);
void func_8004FA24(); // CDMusicUpdate
int CDLoadTime();
void CDReadDone(char intr);
void CDLoadSync(int sector, void *buf, int len, int sectorOffset);
int CDLoadAsync(int sector, void *buf, int len, int sectorOffset);
int FindMobyDialogue(SpeechProps* tag);

// bss
extern CDState cdState; // 8006e470
extern StreamingData streamingData; // 8006e48c

#endif