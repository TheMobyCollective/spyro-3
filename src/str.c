#include "common.h"
#include "str.h"
#include "ovl_header.h"

// psyq
// will need LibCD implemented soon, also there are constants in there that should be used in here (see spyro-1)
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

// sdata
extern int speechLba; // 8006C3F4 - should be 90000
extern int D_8006C674; // 8006C674 - moby speech index to play (entry in speech list)
extern int language; // 8006C76C

////////////////////////////////////////////////////////////////////////////////////

/**
 * ???() - func_8004F8EC() - MATCHING
 * https://decomp.me/scratch/9qGVs
 */
void func_8004F8EC() {
    streamingData.dat_8006e48c = 0;
    streamingData.musicEnabled = 1;
    streamingData.dat_8006e490 = 0;
    streamingData.dat_8006e494 = 0;
    streamingData.dat_8006e498 = 0;
    
    streamingData.musicVolume = 0x5FFF;
    streamingData.speechVolume = 0x7FFF;
    streamingData.dat_8006e4b4 = 0;
    
    streamingData.dat_8006e4b8.unk0 = 0;
    streamingData.musicData.unk0 = 0;
    streamingData.dat_8006e4e0.unk0 = 0;
    streamingData.speechData.unk0 = 0;
    
    streamingData.dat_8006e4b8.volumePtr = &streamingData.musicVolume;
    streamingData.musicData.volumePtr = &streamingData.musicVolume;
    streamingData.dat_8006e4e0.volumePtr = &streamingData.speechVolume;
    streamingData.speechData.volumePtr = &streamingData.speechVolume;
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
 * CDMusicUpdate() - func_8004FA24()
 * Might be matching?
 * https://decomp.me/scratch/yE81A
 */
INCLUDE_ASM("asm/nonmatchings/str", func_8004FA24);

/**
 * CDLoadTime() - func_800503F8() - MATCHING
 * https://decomp.me/scratch/jQNst
 */
int CDLoadTime() {
    char modeFlags;

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
        func_8005DB08(&CDReadDone);

        // Wait for the CD subsystem to be ready after the reinitialization
        while (func_8005E074(1, 0) != 2);

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
 * https://decomp.me/scratch/p8Iac
 */
void CDReadDone(char intr) {
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
 * https://decomp.me/scratch/nBflt
 */
void CDLoadSync(int sector, void *buf, int len, int sectorOffset) { 
    unsigned char modeFlags;

    modeFlags = 0x80;
    
    while (CDLoadTime()); 
    
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
    
    while (CDLoadTime()); 
}

/**
 * CDLoadAsync() - func_80050680() - MATCHING
 * https://decomp.me/scratch/yt19k
 */
int CDLoadAsync(int sector, void *buf, int len, int sectorOffset) {
    char modeFlags;

    modeFlags = 0x80;

    if (CDLoadTime() == 0) {
        
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
int FindMobyDialogue(SpeechProps* tag) {
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
