#ifndef __DRAWUTIL_H
#define __DRAWUTIL_H

// drawutil
void func_8001EBAC(); // clear frame buffers
void func_8001EC24(); // 8001ec24 fDrawWorld_C / fDrawWorldGeometry
long long func_8001EC5C(); // 8001ec5c fDrawSpyroAndMobys
void func_8001EDEC(); // 8001edec fDrawSkyboxPortals
void func_8001FABC(int); // 8001fabc FUN_8001fabc
void func_8001FB10(int);
void func_8001FB74(short, short, short, short); // 8001fb74 FUN_8001fb74
void func_8001FC90(short, short, short, short); // 8001fc90 FUN_8001fc90
void func_8001FD00(short, short, short, short); // 8001fd00 FUN_8001fd00
void func_8001FE48(short, short, short, short); // 8001fe48 FUN_8001fe48
void func_8001FF44(); // 8001ff44 fDrawScreenBorder
void func_800200A0(int, char, char, char); // 800200a0 fDrawFullScreenFade
void func_80020168();
void func_800202DC(const char*, int, short, int); // 800202dc fDrawStringCentered
void func_80020344(const char*, int, short, int); // short may be an int
void func_800203C4(const char*, int, short, int); // 800203c4 fDrawStringRightAligned
void func_80020428(int, int, short, int); // 80020428 FUN_80020428
void func_80020530(char*); // 80020530 FUN_80020530
void func_80020790(); // 80020790 fPrepareHelpScreen
void func_80020D70(); // 80020d70 FUN_80020d70
void func_80020DAC(char**, int, int, int); // 80020dac FUN_80020dac

#endif