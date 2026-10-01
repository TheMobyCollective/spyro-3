#ifndef __MOBYUTIL_H
#define __MOBYUTIL_H

#include "common.h"

// unk func_80034DAC(unk);
void func_80034F40(Moby* moby, int newId); // DoMobyAnimation
// unk func_80034F80(unk); // SetMobyAnimation
void func_80034FEC(Moby* arg0); // SetDefaultMobyProperties
// unk func_80035030(unk);
int func_80035194(Moby*, void*); // not sure what the second pointer in here is yet
void func_80035734(Moby* moby);
int func_8003573C(Moby* arg0, int arg1, int arg2, int arg3); // aim at Spyro?
int func_8003585C(Moby*, int, int, int, int, int );
int func_800359A4(void*, int); // fCountDownTimer
// unk func_80035A80(unk);
int func_80035D38(Moby* moby); // SnapMobyToGround
// unk func_80035D84(unk); // SnapMobyToGroundRange
int func_80035DDC(Moby* arg0, int arg1, int arg2, int arg3, int arg4); // probably returns the result of moving a moby horizontally?
int func_80035EE0(Moby*, int, int, int, int, int); // probably returns the result of moving a moby horizontally?
int func_80036018(int arg0, int arg1, int arg2);
int func_800360A0(int arg0, int arg1, char arg2);
int func_800360F8(int arg0, int arg1, int arg2, char arg3);
int SubAngle8(int in0, int in1); // subtraction
int SubAngle12(int in0, int in1); // subtraction
int func_8003617C(int arg0, int arg1); // addition
void func_80036188(Angle*);
// unk func_80036220(unk);
int func_8003636C(int low, int high);
int func_800363DC(int low, int high);
// unk func_8003645C(unk);
// unk func_80036518(unk);
// unk func_800365E4(unk);
// unk func_80036708(unk);
// unk func_800368A4(unk);
void func_800369B8();
// unk func_800369D8(unk);
// unk func_80036A68(unk);
void func_80036E60(Moby*); // update gem totals
void func_80037014(Moby* moby);
// unk func_80037058(unk);
// unk func_80037168(unk);
// unk func_80037324(unk);
// unk func_80037768(unk);
// unk func_80037A60(unk);
// unk func_80037BBC(unk);
// unk func_80037F50(unk); // SpawnTalkText
int func_80038000(Moby*, Vector3D*, int, int, int);
// unk func_800382F4(unk);
// unk func_800387AC(unk);
int func_80038B44(int lvlIndex, int gems, int eggs); // CalculateAtlasPercentage
void func_80038BF8(Moby*, EnemyTag*, int, int); // void fSmallEnemyDeath
// unk func_80038F14(unk);
// unk func_800391E8(unk);
// unk func_80039714(unk);
void func_80039974(int dragonNo, int localOffset, int sizeLeft); // load dragon model
// unk func_800399E8(unk);
// unk func_80039B6C(unk); // UpdateMobyReflection()

#endif