#ifndef __GLOBALS_H
#define __GLOBALS_H
#include "common.h"
#include "spu.h"

// Globals go here - probably includes part of data and sdata, and likely all of sbss (due to lack of gp_rel usage)

// sbss
// 8006c4f4
// 8006c4f8
// 8006c4fc
// 8006c500
// 8006c504
// 8006c508
// 8006c50c
// 8006c510
extern int D_8006C514;
// ...
extern Moby* D_8006C550; // MobyArrayPointer
// ...
extern int D_8006C580;
// 8006c584
// 8006c588
extern int g_LevelIndex; // 8006C58C
// 8006c590
// 8006c594
extern int D_8006C598;
// 8006c59c
// 8006c5a0
// 8006c5a4
// 8006c5a8
// 8006c5ac
extern int* dragonModelPtr; // 8006C5B0
// 8006c5b4
extern int D_8006C5B8;

// consolidate these
extern int D_8006C5BC; // currentLvl
extern int g_CurrentLevel; // D_8006C5BC

// ...
extern DB* D_8006C600; // current DB?
// ...
extern int D_8006C634;
// ...

// consolidate these
extern int deltaTime; // 8006C648
extern int D_8006C648; // deltaTime

extern int D_8006C64C;
// 8006c650
extern SoundTable* soundTablePtr; // D_8006C654
extern int D_8006C658;
// 8006c65c
extern int D_8006C660; // g_EggTotal
extern void* D_8006C664;
extern int D_8006C668;
// 8006c66c
// 8006c670
// 8006c674
// 8006c678
extern short D_8006C67C;
// ...
extern int D_8006C6D0;
extern int D_8006C6D4;
// ...
extern Moby* D_8006C704; // FirstAllocatedMobyPointer
// 8006c708
// 8006c70c
// 8006c710
// 8006c714
// 8006c718
extern int D_8006C71C; // g_GemTotal
// ...
extern unsigned short** D_8006C730;
// ...
extern int D_8006C74C;
// ...
extern int D_8006C768;
extern int D_8006C76C;
extern int D_8006C770;
// 8006c774
// 8006c778
// 8006c77c
// 8006c780
extern int D_8006C784; // g_Lives
// ...
extern int D_8006C7A8;
// ...
extern int D_8006C7C0;
// ...
extern int D_8006C7D4;
// 8006c7d8
extern int D_8006C7DC;
// ...
extern int D_8006C7E4;
// ...
// < 8006c7f8

#endif