#ifndef __ENVIRONMENT_H
#define __ENVIRONMENT_H

#include "common.h"

extern void func_80020E74(int); // 80020E74
extern void func_80021A70(); // fInitializeWorldAnimations, 80021A70
extern void func_80021ED8(int, char, char); // fUpdateWorldAnimationFlags, 80021ED8
extern void func_80021F3C(int); // 80021F3C
extern void func_80021F8C(int, char, int); // 80021F8C
extern void func_80021FF4(); // 80021FF4 // Ghidra thinks this might output a char?
extern void func_80022158(); // 80022158
extern void func_80022260(); // 80022260
extern void func_80022378(); // fDrawWorld, 80022378 - may have input variables? unclear

#endif