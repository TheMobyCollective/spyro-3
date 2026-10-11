#ifndef __STR_H
#define __STR_H

#include "common.h"
#include "libspu.h"

typedef struct {
	unsigned char minute;
	unsigned char second;
	unsigned char sector;
	unsigned char track;
} CdlLOC; // LibCD

typedef struct {
	int unk0; // holds startLba or 0?
	int startLba;
	int endLba;
	int track;
	int* volumePtr;
} XaAudioData;

typedef struct {
	int wadSector; // 8006e470
	int size; // 8006e474
	CdlLOC readLoc; // 8006e478
	void *outBuf; // 8006e47c 
	volatile int isReading; // 8006e480 // has to be volatile like in Spyro 1 to match  
	int readTime; // 8006e484 
	int maxReadTime; // 8006e488 
} CDState;

typedef struct {
	int dat_8006e48c; // 8006e48c, possibly number of tracks (e..g 8 when playing music)
	int dat_8006e490; // 8006e490
	int dat_8006e494; // 8006e494 // MusicFadeTarget?
	int dat_8006e498; // 8006e498 // volatile in s1? Not volatile in s3 as breaks func_8004FA24
	int musicEnabled; // 8006e49c
	int dat_8006e4a0; // 8006e4a0
	int dat_8006e4a4; // 8006e4a4
	int dat_8006e4a8; // 8006e4a8
	int musicVolume; // 8006e4ac // actual xa music volume, as opposed to the menu value
	int speechVolume; // 8006e4b0 // as above, for dialogue?
	int dat_8006e4b4; // 8006e4b4
	
    XaAudioData dat_8006e4b8; // 8006e4b8 // active/selected stream?
    XaAudioData musicData; // 8006e4cc // pending music stream?
    XaAudioData dat_8006e4e0; // 8006e4e0 // active/selected speech stream?
    XaAudioData speechData; // 8006e4f4 // pending speech stream?

} StreamingData;

// Similar in purpose to CdMusic in Spyro 1; layout is different.
typedef struct {
    unsigned char commandParam[8];   // 0x10 ControlF parameter
    char syncData[8];                // 0x18 CdSync result buffer
    CdlLOC cdPos;                     // 0x20 CD position
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