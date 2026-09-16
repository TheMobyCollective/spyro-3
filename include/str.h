#ifndef __STR_H
#define __STR_H

#include "common.h"

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