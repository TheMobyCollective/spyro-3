#ifndef __STDUTIL_H
#define __STDUTIL_H

#include "common.h"

// Maybe vectors etc. should be defined in here?

// fBuildOT	8004e664
extern void func_8004E71C(void*, int); // fAddWorldOT
// fAddHudOT	8004e758


// consolidate these
extern void memset(int*, int, int);  // memset // func_8004E790
extern void func_8004E790(void*, int, int); // memset


// fMemsetLine	8004e7ac
extern void func_8004E7D4(int *dest, int *src, int len); // memcpy
extern void func_8004E828(int*, int*, int); // memcpy reverse
extern int func_8004E880(int, int, int);
// fSinLerp	8004e9e4
// fCosLerp	8004ea2c
// fGetUsedBits	8004ea74
// FUN_8004ea90	8004ea90
// FUN_8004ecf4	8004ecf4
// fMulVectorByMatrix	8004ed6c
// fVectorLength	8004ede8
// FUN_8004ef04	8004ef04
// FUN_8004ef74	8004ef74
// ScaleVectorRational	8004f08c
// ScaleUpVectorExp	8004f0e8
// ScaleDownVectorExp	8004f110
// fZeroVector	8004f168
extern void func_8004F178(Vector3D*, Vector3D*); // fSetVector
extern void func_8004F194(Vector3D*, Vector3D*, Vector3D*); // fAddVector
// fSubVector	8004f1c8
// FUN_8004f1fc	8004f1fc
// fScaleDownVector	8004f228
extern int func_8004F264(int, int); // subtract absolute
// fSubtractFromAngle4096	8004f284
// fSubtractFromAngle256	8004f2a4
// FUN_8004f2c8	8004f2c8
extern int func_8004F2EC(int, int, int, int);
// fGetOctagonalDistance	8004f334
// FUN_8004f388	8004f388
// fRTPSVectorByCamera	8004f408
// FUN_8004f4bc	8004f4bc
void func_8004F504(Vector3D16*, Vector3D16*); // fDivVectorBy4AndMakeShort // TODO: latter argument should be Vector3D*!
// fMultVectorBy4AndMakeInt	8004f52c
// fSetVectorFromShortVector	8004f554
// fSetShortVectorFromVector	8004f570
void func_8004F58C(Vector3D16*, Vector3D16*); // fSetShortVector
// fAddShortVector	8004f5a8
// fUnpackCollisionTriangle	8004f5dc
// fGetClock	8004f6a0
// fCrashTheGame	8004f6b4
// FUN_8004f6c4	8004f6c4
// FUN_8004f820	8004f820

#endif