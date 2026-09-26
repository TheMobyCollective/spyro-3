#ifndef __STDUTIL_H
#define __STDUTIL_H

#include "common.h"

// Maybe vectors etc. should be defined in here?

// fBuildOT	8004e664
extern void func_8004E71C(void*, int); // fAddWorldOT
extern void func_8004E758(void*); //fAddHudOT


// consolidate these
extern void memset(int*, int, int);  // memset // func_8004E790
extern void func_8004E790(void*, int, int); // memset


// fMemsetLine	8004e7ac
extern void func_8004E7D4(int *dest, int *src, int len); // memcpy
extern void func_8004E828(int*, int*, int); // memcpy reverse
extern int func_8004E880(int, int, int);
extern int func_8004E9E4(int); // fSinLerp
extern int func_8004EA2C(int); // fCosLerp
// fGetUsedBits	8004ea74
extern void func_8004EA90(Angle*, SHORTMATRIX*, int*); // arg0 seems to be used as an int in this function // 8004ea90
// FUN_8004ecf4	8004ecf4
extern void func_8004ED6C(SHORTMATRIX*, Vector3D*, Vector3D*); // fMulVectorByMatrix
extern int func_8004EDE8(Vector3D*, int); // fVectorLength
extern void func_8004EF04(Vector3D*, int); // does something using the vector length?
extern long long func_8004EF74(Vector3D*, Vector3D*, Vector3D*); // apparently a long long, but what do I know?
extern void func_8004F08C(Vector3D*, int, int); // ScaleVectorRational
// ScaleUpVectorExp	8004f0e8
extern void func_8004F110(Vector3D*, int); // ScaleDownVectorExp
extern void func_8004F168(Vector3D*); // fZeroVector
extern void func_8004F178(Vector3D*, Vector3D*); // fSetVector
extern void func_8004F194(Vector3D*, Vector3D*, Vector3D*); // fAddVector
extern void func_8004F1C8(Vector3D*, Vector3D*, Vector3D*); // fSubVector
extern void func_8004F1FC(Vector3D*, Vector3D*, int); // 8004f1fc
extern void func_8004F228(Vector3D*, Vector3D*, int); // scale down vector (third parameter is the denominator)
extern int func_8004F264(int, int); // subtract absolute
// fSubtractFromAngle4096	8004f284
// fSubtractFromAngle256	8004f2a4
// FUN_8004f2c8	8004f2c8
extern int func_8004F2EC(int, int, int, int);
extern int func_8004F334(Vector3D*, Vector3D*); // distance in octagonal metric
extern int func_8004F388(int); // 8004f388
// fRTPSVectorByCamera	8004f408
// FUN_8004f4bc	8004f4bc
extern void func_8004F504(Vector3D16*, Vector3D16*); // fDivVectorBy4AndMakeShort // TODO: latter argument should be Vector3D*!
extern void func_8004F52C(Vector3D*, Vector3D16*); // multiply short vector by 4
// fSetVectorFromShortVector	8004f554
// fSetShortVectorFromVector	8004f570
extern void func_8004F58C(Vector3D16*, Vector3D16*); // fSetShortVector
// fAddShortVector	8004f5a8
extern void func_8004F5DC(int, Vector3D*); // unpack collision triangle, triIndex / points
// fGetClock	8004f6a0
// fCrashTheGame	8004f6b4
// FUN_8004f6c4	8004f6c4
// FUN_8004f820	8004f820

#endif