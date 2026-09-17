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

//spu
extern void func_8005E630(SpuCommonAttr *attr); // SpuSetCommonAttr

// sdata
extern int speechLba; // 8006C3F4 - should be 90000
extern int D_8006C674; // 8006C674 - moby speech index to play (entry in speech list)
extern int language; // 8006C76C

// Globals referenced by func_8004FA24
extern int *D_8006E504; // matches - 4 bytes
extern int *D_8006E4DC; // matches - 4 bytes
extern int *D_8006E4C8; // matches - 4 bytes
extern int D_8006E4C0; // matches - 8-byte BSS object; only low 32 bits observed here

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
 * CDMusicUpdate() - func_8004FA24() - MATCHING
 * https://decomp.me/scratch/yE81A
 */
void func_8004FA24(void) {    
    int cdSyncResult;
    int cdStatus;
    
    CdMusic cdMusic;

    XaAudioData *currentAudio = nullptr;

    int *currentVolumePtr;
    int *cdCommandStatePtr;
    
    cdSyncResult = func_8005E074(1, cdMusic.syncData);
    cdStatus = func_8005E018();

    switch (streamingData.dat_8006e4b4) {
    case 0:
        if (streamingData.speechData.unk0 == 0) {
            streamingData.dat_8006e498 = 0;
        }
        break;

    case 1:
        if (streamingData.speechData.unk0 == 0)
            streamingData.dat_8006e498 = 0;

        currentAudio = &streamingData.dat_8006e4b8;

        if (streamingData.dat_8006e48c >= 6 &&
            streamingData.dat_8006e48c <= 7 &&
            streamingData.speechData.unk0 != 0) {
            streamingData.dat_8006e48c = 8;
        }
        break;

    case 2:
        if (streamingData.dat_8006e498 == 1) {
            streamingData.dat_8006e48c = 8;
            streamingData.dat_8006e498 = 0;
        }    
        currentAudio = &streamingData.dat_8006e4e0;    
        break;    
    }    
    
    if (streamingData.musicEnabled == 0) {
        if (streamingData.dat_8006e4a0 != 0 &&
            streamingData.dat_8006e48c == 8) {
            streamingData.dat_8006e48c = 6;
            streamingData.dat_8006e4a0 = 0;
        }
    }

    if (streamingData.musicEnabled != 0) {
        if (currentAudio != nullptr &&
            streamingData.dat_8006e4a0 == 0) {
            streamingData.dat_8006e48c = 8;
            streamingData.dat_8006e4a0 = 1;
            goto block_1fc;
        }
    }

    if (streamingData.musicEnabled != 0) {
        if (currentAudio == nullptr &&
            streamingData.dat_8006e4a0 == 0 &&
            streamingData.dat_8006e48c != 0) {
            streamingData.dat_8006e4b4 = 0;
            streamingData.dat_8006e48c = 9;
        }
    }
    
/* Shared CD status/error handling path. */
block_1fc:
    if (cdStatus & 0x10) {
        if (streamingData.dat_8006e48c == 8) {
            streamingData.dat_8006e494 = 0;
            streamingData.dat_8006e4b4 = 0;
            goto block_258;
        } else if (streamingData.dat_8006e48c != 0 &&
                   streamingData.dat_8006e48c != 9) {
            streamingData.dat_8006e494 = 0;
            streamingData.dat_8006e48c = 1;
        }

block_258:
        streamingData.dat_8006e490 = 1;
        func_8005E1F8(1, nullptr);
        return;
    }
    
    if (cdStatus & 0x4) {
        streamingData.dat_8006e494 = 0;
        streamingData.dat_8006e48c = 1;
        goto block_2f4;
    }

    if ((cdStatus & 0x1) != 0 || cdSyncResult == 5) {
        if (streamingData.dat_8006e48c == 8) {
            streamingData.dat_8006e494 = 0;
            streamingData.dat_8006e4b4 = 0;
        } else if (streamingData.dat_8006e48c != 0 &&
            streamingData.dat_8006e48c != 9) {
            streamingData.dat_8006e494 = 0;
            streamingData.dat_8006e48c = 1;
        }

        func_8005E1F8(1, nullptr);
        return;
    }

/* Handle the active CD/music command state. */
block_2f4:
    cdCommandStatePtr = &streamingData.dat_8006e490;
    if (*cdCommandStatePtr == 1) {
        if (cdStatus & 0x2) {

            if (func_8005E038() == 2) {
                func_8005E1F8(0x1B, nullptr);
                return;
            }

            if (cdStatus & 0x40) {
                *cdCommandStatePtr = 0;
                func_8005E1F8(1, nullptr);
                return;
            }

            if (currentAudio != nullptr)
                CdIntToPos(currentAudio->startLba, &cdMusic.cdPos);
            else
                CdIntToPos(0x3E8, &cdMusic.cdPos);

            func_8005E1F8(2, (void *)&cdMusic.cdPos);
            return;
        }

        func_8005E1F8(9, nullptr);
        return;
    }

    
    /* State machine is only entered for cdSyncResult == 2. */
    if (cdSyncResult != 2)
        return;

    switch (streamingData.dat_8006e48c) {
    case 9:
        /* Stop/release current music before selecting next stream. */
        if (streamingData.musicEnabled != 0 &&
            (cdStatus & 0x20)) {
            func_8005E1F8(9, nullptr);           
        } else {
            streamingData.dat_8006e48c = 0;
        }
        /* falls through to state 0 */
    case 0:
        /*  Select pending speech/music stream. */
        if (streamingData.musicEnabled != 0)
            return;

        else if (streamingData.speechData.unk0 != 0) {
            streamingData.dat_8006e4e0 = streamingData.speechData;
            streamingData.dat_8006e4b4 = 2;
            streamingData.speechData.unk0 = 0;
            streamingData.dat_8006e48c = 1;
        }
        else if (streamingData.musicData.unk0 != 0) {
            streamingData.dat_8006e4b8 = streamingData.musicData;
            streamingData.musicData.unk0 = 0;
            goto block_4d0;
        }
        else if (streamingData.dat_8006e4b8.unk0 != 0) {
block_4d0: 
         /* Shared path: activate the pending music stream. */
            streamingData.dat_8006e4b4 = 1;
            streamingData.dat_8006e48c = 1;
        }

        func_8005E1F8(1, nullptr);
        return;

    case 1:
        /* Set up command 0x0E and initialise volume. */
        cdMusic.commandParam[0] = 0xC8;
        func_8005E1F8(0x0E, cdMusic.commandParam);

        cdMusic.attr.cd.volume.right = 0;
        cdMusic.attr.cd.volume.left = 0;            
        cdMusic.attr.mask = SPU_COMMON_CDVOLL | SPU_COMMON_CDVOLR;
        func_8005E630(&cdMusic.attr);
            
        streamingData.dat_8006e4a4 = 10;
        streamingData.dat_8006e48c = 2;
        break;

    case 2:
        /* Position CD at start of XA stream. */
        CdIntToPos(currentAudio->startLba, &cdMusic.cdPos);
        func_8005E1F8(2, (void *)&cdMusic.cdPos);

        streamingData.dat_8006e48c = 3;
        break;

    case 3:
        /* Select XA track. */
        cdMusic.trackParam[0] = 1;
        cdMusic.trackParam[1] = currentAudio->track;

        func_8005E1F8(0x0D, cdMusic.trackParam);

        streamingData.dat_8006e48c = 4;
        break;

    case 4:
        /* Start XA playback. */
        func_8005E1F8(0x1B, nullptr);

        streamingData.dat_8006e4a4 = 300;
        streamingData.dat_8006e48c = 5;
        break;

    case 5:
        /* Wait for XA playback to become ready. */
        if (func_8005E038() == 1 &&
            (cdStatus & 0x60) == 0x20) {

            streamingData.dat_8006e494 = 0;
            streamingData.dat_8006e48c = 6;

        } else {
            streamingData.dat_8006e4a4--;

            if (streamingData.dat_8006e4a4 < 0) {
                streamingData.dat_8006e48c = 2;
                streamingData.dat_8006e4a8--;
            }
        }

        func_8005E1F8(1, nullptr);
        break;

    case 6:
        /* Fade the CD volume toward the stream's target volume. */
        {
            unsigned short volume;
            
            streamingData.dat_8006e494 += *currentAudio->volumePtr / 2;

            if (streamingData.dat_8006e494 >= *currentAudio->volumePtr) {
                streamingData.dat_8006e494 = *currentAudio->volumePtr;
                streamingData.dat_8006e48c = 7;
            }

            volume = streamingData.dat_8006e494;

            cdMusic.attr.mask = SPU_COMMON_CDVOLL | SPU_COMMON_CDVOLR;            
            cdMusic.attr.cd.volume.right = volume;
            cdMusic.attr.cd.volume.left = volume;

            func_8005E630(&cdMusic.attr);
        }

        func_8005E1F8(0x11, nullptr);
        break;

    case 7:
        /* Monitor the active XA stream and maintain its volume. */
        {
            int trackPosition;

            if (streamingData.dat_8006e494 != *currentAudio->volumePtr) {
                streamingData.dat_8006e494 = *currentAudio->volumePtr;
                cdMusic.attr.cd.volume.right = streamingData.dat_8006e494;
                cdMusic.attr.cd.volume.left = streamingData.dat_8006e494;
                cdMusic.attr.mask = SPU_COMMON_CDVOLL | SPU_COMMON_CDVOLR;

                func_8005E630(&cdMusic.attr);
            }

            if (func_8005E038() == 0x11) {
                trackPosition =
                    func_8005F570((CdLoc *)&cdMusic.syncData[5]);

                if (currentAudio->unk0 < trackPosition)
                    currentAudio->startLba = trackPosition;

                if (currentAudio->endLba - 0x13 < trackPosition ||
                    *currentAudio->volumePtr == 0) {
                    streamingData.dat_8006e48c = 8;
                }
            }
        }

        func_8005E1F8(0x11, nullptr);
        break;

    case 8:
        /* Fade current XA stream volume down and select next stream at zero. */
        if (currentAudio != nullptr) {
            int volume = *currentAudio->volumePtr;
            /* Preserve the local pointer alias used by the original compiler. */
            currentVolumePtr = &streamingData.dat_8006e494;

            if (volume < 0)
                volume += 7;

            *currentVolumePtr -= volume >> 3;
        } else {
            streamingData.dat_8006e494 = 0;
        }

        if (streamingData.dat_8006e494 > 0)
            goto applyVolume;

        streamingData.dat_8006e494 = 0;

        if (streamingData.musicEnabled != 0) {
            streamingData.dat_8006e4b4 = 0;
            streamingData.dat_8006e48c = 9;
            streamingData.dat_8006e4a0 = 0;
            goto applyVolume;
        }

        if (streamingData.speechData.unk0 != 0 &&
            *D_8006E504 > 0) {
            streamingData.dat_8006e4e0 = streamingData.speechData;
            streamingData.dat_8006e4b4 = 2;
            streamingData.speechData.unk0 = 0;
            streamingData.dat_8006e48c = 1;
            goto applyVolume;
        }

        if (streamingData.musicData.unk0 != 0 &&
            *D_8006E4DC > 0) {
            streamingData.dat_8006e4b8 = streamingData.musicData;
            streamingData.musicData.unk0 = 0;
            streamingData.dat_8006e4b4 = 1;            
            streamingData.dat_8006e48c = 1;
            goto applyVolume;
        }
        
        if (streamingData.dat_8006e4b8.unk0 != 0 &&
            *D_8006E4C8 > 0 ) {
            if (streamingData.dat_8006e4b8.startLba <
                    streamingData.dat_8006e4b8.unk0 || 
                streamingData.dat_8006e4b8.startLba >
                    D_8006E4C0 - 0x4C) {
                streamingData.dat_8006e4b8.startLba =
                    streamingData.dat_8006e4b8.unk0;
            }
            streamingData.dat_8006e4b4 = 1;
            streamingData.dat_8006e48c = 1;            
        } else {
            streamingData.dat_8006e4b4 = 0;            
            streamingData.dat_8006e48c = 9;
        }   
/* Apply the updated volume and return to the caller. */
applyVolume:
        {           
            unsigned short volume;
            volume = streamingData.dat_8006e494;
            cdMusic.attr.mask = SPU_COMMON_CDVOLL | SPU_COMMON_CDVOLR;
            cdMusic.attr.cd.volume.right = volume;
            cdMusic.attr.cd.volume.left = volume;
            func_8005E630(&cdMusic.attr);         
            break;    
        }
    }
}

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
