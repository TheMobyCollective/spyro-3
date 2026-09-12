#include "common.h"
#include "ovl_header.h"

// externs

//psyq
extern int func_8005D96C(int sectors, unsigned long *buf, int mode); // CdRead 
extern int func_8005E0BC(unsigned char com, unsigned char *param, unsigned char *result); // CdControl
extern int func_8005DB1C(void); // CdInit
extern int func_8005E074(int mode, unsigned char *result); // CdSync
extern int func_8005E1F8(unsigned char com, unsigned char *param); //CdControlF
extern int func_8005E018(void); // CdStatus 
extern int func_8005E038(void); // CdLastCom
extern int func_8005DB08(void* func); // CdReadCallback
extern int func_8005F570(CdLoc *pos); //CdPosToInt
extern CdLoc *CdIntToPos(int intLba, CdLoc *pos);

void func_8004FA24(void); // CDMusicUpdate
void func_80050504(unsigned char arg0); // CDReadDone
int func_800503F8(void); // CDLoadTime

// sdata
extern int speechLba; // 8006C3F4 - should be 90000
extern int D_8006C674; // 8006C674 - moby speech index to play (entry in speech list)
extern int language; // 8006C76C

// bss
extern CDState cdState; // 8006e470
extern StreamingData streamingData; // 8006e48c if CDState and StreamingData are split

////////////////////////////////////////////////////////////////////////////////////

/**
 * ???() - func_8004F8EC() - MATCHING
 * https://decomp.me/scratch/y8iwN
 */
void func_8004F8EC() {
    int* temp_v0;
    int* temp_v1;

    streamingData.dat_8006e48c = 0;
    streamingData.musicEnabled = 1;
    streamingData.dat_8006e490 = 0;
    streamingData.dat_8006e494 = 0;
    streamingData.dat_8006e498 = 0;
    
    streamingData.musicVolume = 0x5FFF;
    streamingData.speechVolume = 0x7FFF;
    temp_v0 = &streamingData.musicVolume;
    temp_v1 = &streamingData.speechVolume;
    streamingData.dat_8006e4b4 = 0;
    
    streamingData.dat_8006e4b8.unk0 = 0;
    streamingData.musicData.unk0 = 0;
    streamingData.dat_8006e4e0.unk0 = 0;
    streamingData.speechData.unk0 = 0;
    
    streamingData.dat_8006e4b8.volumePtr = temp_v0;
    streamingData.musicData.volumePtr = temp_v0;
    streamingData.dat_8006e4e0.volumePtr = temp_v1;
    streamingData.speechData.volumePtr = temp_v1;
}

/**
 * ???() - func_8004F984() - MATCHING
 * Seems to be a music init function
 * https://decomp.me/scratch/OgH2g
 */
void func_8004F984(int startLba, int endLba, int track) {
    streamingData.musicData.unk0 = startLba;
    streamingData.musicData.startLba = startLba;
    streamingData.musicData.endLba = endLba;
    streamingData.musicData.track = track;
    streamingData.dat_8006e48c = 8;
    streamingData.musicEnabled = 0;
}

/**
 * ???() - func_8004F9C0() - MATCHING
 * Seems to be a dialogue init function
 * https://decomp.me/scratch/FCfLr
 */
void func_8004F9C0(int startLba, int endLba, int track) {
    if (*streamingData.speechData.volumePtr > 0) {
        streamingData.speechData.unk0 = startLba;
        streamingData.speechData.startLba = startLba;
        streamingData.speechData.endLba = endLba;
        streamingData.speechData.track = track;
        if (streamingData.dat_8006e48c != 5) {
            streamingData.dat_8006e48c = 8;
        }
        streamingData.musicEnabled = 0;
    }
}

/**
 * ???() - func_8004FA24()
 * TODO
 */
INCLUDE_ASM("asm/nonmatchings/str", func_8004FA24);

/**
 * CDLoadTime() - func_800503F8() - MATCHING
 * Equivalent to CDLoadTime in Spyro 1
 * https://decomp.me/scratch/jQNst
 */
int func_800503F8(void) {
    unsigned char modeFlags;

    if (streamingData.dat_8006e48c != 0) {
        streamingData.musicEnabled = 1;
        func_8004FA24();
        return 1;
    } 
    
    if (cdState.isReading != 0) {
        if (cdState.readTime < cdState.maxReadTime) {
            return 1;
        }

        modeFlags = 0x80;

        // Reinitialize the CD subsystem
        func_8005DB1C();
        
        // Set the mode to double speed?
        func_8005E0BC(0xE, &modeFlags, 0);
        func_8005DB08(&func_80050504);

        // Wait for the CD subsystem to be ready after the reinitialization
        while (func_8005E074(1, 0) != 2) {
            ;
        }

        func_8005E0BC(2, (void *)&cdState.readLoc, 0);

        cdState.readTime = 0; // Reset the disc read time
        
        // Start the read
        func_8005D96C(cdState.size, cdState.outBuf, 0x80);

        return 1;
    }

    return func_8005E074(1, 0) != 2;
}

/**
 * CDReadDone() - func_80050504() - MATCHING
 * Equivalent to CDReadDone from Spyro 1
 * https://decomp.me/scratch/p8Iac
 */
void func_80050504(unsigned char intr) {
    if (cdState.isReading != 0) {
        if (intr == 2) {
            cdState.isReading = 0;
            return;
        }
        func_8005E0BC(2, (void *)&cdState.readLoc, 0);
        cdState.readTime = 0; // Disc read time reset
        func_8005D96C(cdState.size, cdState.outBuf, 0x80);
    }
}

/**
 * CDLoadSync() - func_80050578() - MATCHING
 * Equivalent to CDLoadSync from Spyro 1
 * https://decomp.me/scratch/nBflt
 */
void func_80050578(int sector, void *buf, int len, int sectorOffset) { 
    unsigned char modeFlags;

    modeFlags = 0x80;
    
    do { 
    } while (func_800503F8()); 
    
    // Set the mode to double speed? 
    func_8005E0BC(0xE, &modeFlags, 0);

    CdIntToPos(sector + (sectorOffset / 2048), &cdState.readLoc);   
    func_8005E0BC(2, &cdState.readLoc.minute, 0);  
    
    cdState.size = (len + 2047) / 2048;
    cdState.isReading = 1;
    cdState.outBuf = buf;
    cdState.maxReadTime = cdState.size + 0x78;
    cdState.readTime = 0;

    // Start the read
    func_8005D96C(cdState.size, cdState.outBuf, 0x80);
    
    do {
    } while (func_800503F8()); 
}

/**
 * CDLoadAsync() - func_80050680() - MATCHING
 * Equivalent to CDLoadAsync from Spyro 1
 * https://decomp.me/scratch/yt19k
 */
int func_80050680(int sector, void *buf, int len, int sectorOffset) {
    unsigned char modeFlags;

    modeFlags = 0x80;

    if (func_800503F8() == 0) {
        
        // Set the mode to double speed? 
        func_8005E0BC(0xE, &modeFlags, 0);

        CdIntToPos(sector + (sectorOffset / 2048), &cdState.readLoc);
        func_8005E0BC(2, &cdState.readLoc.minute, 0);

        cdState.size = (len + 2047) / 2048;
        cdState.isReading = 1;
        cdState.outBuf = buf;
        cdState.maxReadTime = cdState.size + 0x78;
        cdState.readTime = 0;

        // Start the read
        func_8005D96C(cdState.size, cdState.outBuf, 0x80);

        return 1;
    }

    return 0;
}

/**
 * FindMobyDialogue() - func_8005077C() - MATCHING
 * https://decomp.me/scratch/05p9Q
 */
int func_8005077C(SpeechProps* tag) {
    int speechStart;
    int i;
    SpeechData* speechData;

    speechData = ovlHeader.speechData[language];
    if (speechData != 0) {
        i = 0;
        while (speechData[i].typ != 0xFF) {
            if ((speechData[i].typ == tag->typ) && (speechData[i].msg == tag->nextMsg)) {
                speechStart = speechLba + speechData[i].offset;
                func_8004F9C0(speechStart, speechStart + speechData[i].len, speechData[i].channel);
                D_8006C674 = i;
                return 1;
            }
            i++;
        }
    }
    return 0;
}
