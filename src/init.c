#include "common.h"
#include "init.h"
#include "drawutil.h"
#include "libgpu.h"
#include "spu.h"
#include "stdutil.h"
#include "str.h"

// psyq
extern void VSync(int);
extern void SetGeomScreen(int);
extern void InitGeom();
extern void SetGeomOffset(int, int);
extern int func_8005DB08(void* param_1);
extern int CdInit();
extern int func_8005E0BC(char param_1, char* param_2, char* param_3);

// rodata
extern int* overlayStartPtr; // 80011254

// sbss
extern DRAWENV* D_8006C600;

// bss
extern WadHeader wadHeader;
extern DB g_DB[2];

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
    CdInit();
    func_8005E0BC(0xE, &sp10[0], 0);
    func_8005DB08(&CDReadDone);
    cdState.wadSector = 0x1F4;
    CDLoadSync(0x1F4, overlayStartPtr, 0x800, 0);
    func_8004E7D4((int*)&wadHeader, overlayStartPtr, 0x620);
}

/**
 * SetupDrawDispEnvs() - func_8002A834() - MATCHING
 * https://decomp.me/scratch/dTBAm
 */
void SetupDrawDispEnvs() {
    VSync(0);
    SetDispMask(0);
    ResetGraph(0);
    SetGraphDebug(0);
    SetDefDrawEnv(&g_DB[0].m_DrawEnv, 0,  12, 512, 216);
    SetDefDrawEnv(&g_DB[1].m_DrawEnv, 0, 240, 512, 216);
    SetDefDispEnv(&g_DB[0].m_DispEnv, 0, 228, 512, 240);
    SetDefDispEnv(&g_DB[1].m_DispEnv, 0,   0, 512, 240);
    g_DB[1].m_DrawEnv.ofs[1] = 228;
    g_DB[0].m_DrawEnv.ofs[0] = 0;
    g_DB[0].m_DrawEnv.ofs[1] = 0;
    g_DB[1].m_DrawEnv.ofs[0] = 0;
    g_DB[1].m_DispEnv.screen.x = 0;
    g_DB[0].m_DispEnv.screen.x = 0;
    g_DB[1].m_DispEnv.screen.y = 0;
    g_DB[0].m_DispEnv.screen.y = 0;
    g_DB[0].m_DrawEnv.isbg = 1;
    g_DB[1].m_DrawEnv.isbg = 1;
    g_DB[0].m_DrawEnv.dtd = 1;
    g_DB[1].m_DrawEnv.dtd = 1;
    func_8001EBAC();
    VSync(0);
    D_8006C600 = &g_DB[1].m_DrawEnv;
    PutDispEnv(&g_DB[1].m_DispEnv);
    PutDrawEnv(D_8006C600);
    SetDispMask(1);
}

/**
 * InitGTE() - func_8002A99C() - MATCHING
 * https://decomp.me/scratch/853Zu
 */
void InitGTE() {
    InitGeom();
    SetGeomOffset(256, 120);
    SetGeomScreen(341);
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
