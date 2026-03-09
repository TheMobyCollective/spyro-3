#include "common.h"
#include "stdutil.h"
#include "loaders.h"
#include "spu.h"

// init
extern void func_8002AA34();
// spyroupdate
extern void func_80047190();
// str
extern void func_80050578(int, int*, int, int); // fDiscReadSync

// sdata
extern Particle* D_8006C554; // partsArrayPtr, like first moby ptr?
extern Particle* D_8006C614; // another parts related pointer it seems

// bss
extern WadHeader wadHeader;
extern StreamingData streamingData;
extern SpeedwayData speedwayData; // 8006FA38

// bss - probably need structs or retyping
extern int D_8006DEF8[64]; // unknown ints
extern int D_8006E1F4[80]; // something moby dialogue related apparently?
extern int D_80070260[40]; // something drawing related, seems to be its own struct or array
extern char D_80070610[3456]; // fuck knows, may not even be chars
extern char D_80072430[384]; // fuck knows, may not even be chars

////////////////////////////////////////////////////////////////////////////////////

/**
 * ???() - func_8002AE00() - MATCHING
 * Speedway related (or rather, when not in speedways)
 * https://decomp.me/scratch/py5DN
 */
void func_8002AE00() {
    func_8002D044();
    speedwayData.speedwayIndex = -1;
    func_80047190();
}

INCLUDE_ASM("asm/nonmatchings/loaders", func_8002AE34);

INCLUDE_ASM("asm/nonmatchings/loaders", func_8002AF9C);

INCLUDE_ASM("asm/nonmatchings/loaders", func_8002B31C);

/**
 * ???() - func_8002B5EC()
 * A bit of a mess, not quite there yet
 * Seems to turn some data offsets to pointers
 * https://decomp.me/scratch/ULX4S
 */
INCLUDE_ASM("asm/nonmatchings/loaders", func_8002B5EC);

INCLUDE_ASM("asm/nonmatchings/loaders", func_8002B6C8);

/**
 * ???() - func_8002B768() - MATCHING
 * https://decomp.me/scratch/XKB8s
 */
void func_8002B768(Particle* arg0) {
    D_8006C554 = arg0;
    D_8006C614 = arg0;
    arg0->unk1 = 0xFF;
    *(int*)&D_8006C554[256].unk0 = -1;
    
    memset(D_8006E1F4, 0, 0x140);
    memset(D_8006DEF8, 0, 0x100);
    memset((int*)D_80072430, 0, 0x180);
    memset((int*)D_80070610, 0, 0xD80);
    memset(D_80070260, 0, 0xA0);
}

/**
 * LoadLayout() - func_8002B810()
 * WIP
 * https://decomp.me/scratch/XH66Q
 */
INCLUDE_ASM("asm/nonmatchings/loaders", func_8002B810);

/**
 * ???() - func_8002C9F4() - MATCHING
 * https://decomp.me/scratch/bMIyg
 */
void func_8002C9F4(char* pData, int pPatchAddressesInTable) {
    int soundCount;

    g_SoundTablePtr = (SoundTable*)pData;
    pData += 0x100; // sizeof(SoundTable)

    soundCount = *(int*)pData;
    pData += sizeof(int);
    
    g_SpuDefinitionsPtr = (SoundDefinition*)pData;
    
    if (pPatchAddressesInTable) {
        while (--soundCount >= 0) {
            g_SpuDefinitionsPtr[soundCount].m_Addr += 0x1010;
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/loaders", func_8002CA50);

/**
 * ???() - func_8002D044() - MATCHING
 * Defines streamingData and loadingData
 * Note that some variables in here (modelsEnd and modelsStart) are hardcoded
 * I'm not sure if these are actually relative to something
 * https://decomp.me/scratch/HBeBQ
 */
void func_8002D044() {
    func_80050578(streamingData.wadSector, (int*)0x801AE800, wadHeader.spyroMdls.size, wadHeader.spyroMdls.offset);
    
    loadingData.D_800722e0 = (int*)(0x801FF800 - *(int*)0x801AE800); // D_801AE800; modelsEnd
    func_8004E828(loadingData.D_800722e0, (int*)0x801AF000, *(int*)0x801AE800); // D_801AE800
    
    func_8002B5EC(((int)loadingData.D_800722e0 + *(int*)0x801AE804) - 0x800); // D_801AE804; modelsStart
    func_8002AA34();
}
