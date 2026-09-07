#include "common.h"
#include "init.h"
#include "spu.h"
#include "stdutil.h"

// str
extern void func_80050578(int sector, int* dest, int len, int sectorOffset); // LoadFromDisc
extern void func_80050504(char param_1);

// psyq
extern int func_8005DB08(void* param_1);
extern int func_8005DB1C(); // CdInit
extern int func_8005E0BC(char param_1, char* param_2, char* param_3);
extern void func_8005D384(); // InitGeom
extern void func_8005D35C(int, int); // SetGeomOffset
extern void func_8005955C(int); // SetGeomScreen

// rodata
extern int* overlayStartPtr; // 80011254

// bss
extern StreamingData streamingData;
extern WadHeader wadHeader;

////////////////////////////////////////////////////////////////////////////////////

/**
 * InitSpu() - func_8002A794() - MATCHING
 * https://decomp.me/scratch/7EzZI
 */
void InitSpu() {
    func_8003CCF0();
}

/**
 * InitCdAndWad() - func_8002A7B4() - MATCHING
 * https://decomp.me/scratch/Zz25L
 */
void InitCdAndWad() {
    char sp10[8];

    sp10[0] = 0x80;
    func_8005DB1C();
    func_8005E0BC(0xE, &sp10[0], 0);
    func_8005DB08(&func_80050504);
    streamingData.wadSector = 0x1F4;
    func_80050578(0x1F4, overlayStartPtr, 0x800, 0);
    func_8004E7D4((int*)&wadHeader, overlayStartPtr, 0x620);
}

/**
 * SetupDrawDispEnvs() - func_8002A834()
 * https://decomp.me/scratch/YrgPC
 */
INCLUDE_ASM("asm/nonmatchings/init", func_8002A834);

/**
 * InitGeom?() - func_8002A99C() - MATCHING
 * https://decomp.me/scratch/853Zu
 */
void func_8002A99C() {
    func_8005D384();
    func_8005D35C(0x100, 0x78);
    func_8005955C(0x155);
}

INCLUDE_ASM("asm/nonmatchings/init", func_8002A9D0);

/**
 * ???() - func_8002AA34()
 * Not quite there yet, might just be a reordering job
 * Has some very up to date versions of some structs (pauseData v3)
 * https://decomp.me/scratch/jFcXG
 */
INCLUDE_ASM("asm/nonmatchings/init", func_8002AA34);

/**
 * crc16() - func_8002AAFC() - MATCHING
 * https://decomp.me/scratch/nrPlb
 */
int crc16(unsigned char* data, int in) { // crc16step
  int i = 7;
  int out = in ^ (*data << 8);
  for (i; i >= 0; i--) {
    if (out & 0x8000) {
      out = (out * 2) ^ 0x8005; // 0x8005 = CRC16
    }
    else out *= 2;
  }
  return out;
}

/**
 * Init() - func_8002AB38()
 * Currently non-matching C code
 * (At least some of) the 80074dec and 8007EC9C references in initialise should actually be title_text and title_data
 * Uses macros, just some register bullshit to fix now
 * https://decomp.me/scratch/t8DgR
 */
INCLUDE_ASM("asm/nonmatchings/init", func_8002AB38);
