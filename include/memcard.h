#ifndef __MEMCARD_H
#define __MEMCARD_H

#include "common.h"
#include "pad.h"
#include "cheat.h"

/*** For the inline functions ***/

// stdutil
extern void func_8004E790(void*, int, int); // memset
extern void func_8004E7D4(int*, int*, int); // memcpy
extern int func_8004F6A0(); // getClock

// psyq
extern int func_8005C644(); // rand

// data
extern SpeedwayRecord speedwayRecords[4]; // 8006575C
extern unsigned char D_80066BC8[20]; // skill points
extern MoneybagsData D_80066EAC; // moneybagsData

// sdata
extern int D_8006C3F8; // sound effect volume
extern int D_8006C3FC; // music volume
extern int D_8006C400; // speaker setting
extern int currentLevel; // 8006C5BC
extern int D_8006C5D0; // ?
extern int D_8006C70C; // death count
extern int D_8006C710; // ?
extern int D_8006C784; // life count
extern int D_8006C7A8; // difficulty value
extern int D_8006C7B0; // voices on

// bss
extern unsigned char D_80070300[40]; // eggs collected bitmask array
extern unsigned char D_8007145C[40]; // "dialogue bitmask array", maybe it's talismans or something
extern ProgressFlags progressFlags; // 80071570
extern unsigned char D_800715BC[40][6]; // high act thresholds met
extern unsigned char D_800716AC[40][6]; // act performance per egg
extern int D_800718CC[4]; // skateboard course records
extern int D_80071A10[40]; // gems collected array, [39] is gems retrieved from Moneybags
extern unsigned char D_80071AB0[40][32]; // collection bitmasks
extern unsigned char D_80071FB0[40]; // visited levels

/*** Loading, saving, memory card definitions ***/

typedef struct {
    int saveId;                        // 0, for checking if the memory card has changed? Changed every save
    unsigned char fileId;              // 4, for checking if the memory card has changed? Preserved per save file
    unsigned char currentLevel;        // 5
    unsigned char lives;               // 6
    char pad1;                         // 7, seems to be unused
    unsigned char visitedLevels[40];   // 8
    unsigned char collections[40][32]; // 30, bitmasks e.g. for gems etc., 8 ints per level
    unsigned short gemTotals[40];      // 530
    unsigned char eggs[40];            // 580, bitmasks for eggs
    MoneybagsData moneybagsData;       // 5A8 // size 0x30
    ProgressFlags progressFlags;       // 5D8
    char dialogueBitmaskArray[40];     // 624, is this even used?
    int unk_8006c5d0;                  // 64C
    int deathCount;                    // 650, not sure if this is ever actually used
    int unk_8006c710;                  // 654
    int difficulty;                    // 658, the value, rather than the easy/medium/hard
    unsigned char actMetThresholds[40][6];   // 65C, high difficulty thresholds per egg
    unsigned char actPerformance[40][6];     // 74C, for the ACT
    unsigned char speedwayTrialsComplete[4]; // 83C
    int speedwayTrialRecords[4];             // 840
    unsigned char speedwayRacesComplete[4];  // 850
    int speedwayRaceRecords[4];        // 854
    int skateRecords[4];               // 864
    unsigned char skillPoints[20];     // 874
    char pad2;                         // 888, ?? unused??
    unsigned char activeCam;           // 889, active if 1
    unsigned char vibrationOn;         // 88A, on if 1
    unsigned char voicesOn;            // 88B, on if 1
    unsigned char soundVolume;         // 88C
    unsigned char musicVolume;         // 88D
    unsigned char stereoSpeaker;       // 88E, stereo if 1
    char pad3[109];                    // 88F, ???
    int checksum;                      // 8FC
} SaveFile;

static inline int ChecksumSaveData(unsigned char* data) {
    int sum;
    int i;

    sum = 0;
    for (i = 0; i < (sizeof(SaveFile) - 4); i++) sum += data[i];
    return sum;
}

static inline void SaveGame(SaveFile* save, int noUpdate) {
    int i;
    unsigned char id;

    id = save->fileId;
    func_8004E790(save, 0, 0x900);
    save->fileId = id;
    save->saveId = (func_8004F6A0() + (func_8005C644() << 0x10));
    
    if (!noUpdate) {
        save->currentLevel = (char) currentLevel;
        save->lives = (char) D_8006C784;
        func_8004E7D4((int*)save->visitedLevels, (int*)D_80071FB0, 40);
        func_8004E7D4((int*)save->collections, (int*)D_80071AB0, 0x500); // 0x500 = 40 * 32
        
        for (i = 0; i < 0x28; i++) {
            save->gemTotals[i] = D_80071A10[i];
            save->eggs[i] = D_80070300[i];
        }
        
        save->unk_8006c5d0 = D_8006C5D0;
        save->deathCount = D_8006C70C;
        save->unk_8006c710 = D_8006C710;
        save->difficulty = D_8006C7A8;
        
        func_8004E7D4((int*)save->actMetThresholds, (int*)D_800715BC, 0xF0); // 0xF0 = 40 * 6
        func_8004E7D4((int*)save->actPerformance, (int*)D_800716AC, 0xF0);
        func_8004E7D4((int*)&save->moneybagsData, (int*)&D_80066EAC, 0x30); // sizeof(MoneybagsData)
        func_8004E7D4((int*)&save->progressFlags, (int*)&progressFlags, 0x4C); // sizeof(ProgressFlags)
        func_8004E7D4((int*)save->dialogueBitmaskArray, (int*)D_8007145C, 40);
        func_8004E7D4((int*)save->skillPoints, (int*)D_80066BC8, 20); // 20 skill points
        
        for(i = 0; i < 4; i++) {
            save->speedwayTrialsComplete[i] = speedwayRecords[i].trialComplete;
            save->speedwayTrialRecords[i] = speedwayRecords[i].trialRecord;
            save->speedwayRacesComplete[i] = speedwayRecords[i].unk2; // seems to be in error
            save->speedwayRaceRecords[i] = speedwayRecords[i].raceRecord;
        }
        
        for(i = 0; i < 4; i++) {
            save->skateRecords[i] = D_800718CC[i];
        }
        
        save->activeCam = g_CheatFlags.cameraMode;
        save->vibrationOn = pad.vibrationMode;
        save->voicesOn = (char) D_8006C7B0;
        save->soundVolume = (char) D_8006C3F8;
        save->musicVolume = (char) D_8006C3FC;
        save->stereoSpeaker = (char) D_8006C400;
        
    }
    //save->checksum = func_title_80078BF4((char*)save);
}


#endif