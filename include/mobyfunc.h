#ifndef __MOBYFUNC_H
#define __MOBYFUNC_H

// Signatures not confirmed, possible that some of these will be incorrect (especially chars -> ints)
extern int func_8002D0D8(int);
extern long long func_8002D2C4();
extern void func_8002D9BC();
extern void func_8002DDA8(); // DrawMobyShadows
extern void func_8002E2D0(); // my notes say this should have to int inputs - this is used in func_800369B8, maybe check how func_800369B8 is used
extern void func_8002E748(char* string, int screenX, int screenY, int textColour, int* drawLims); // DrawText
extern void func_8002E970(char*, int, int, int, int);
extern int func_8002EBB0(void*); // GetStringLength
extern int func_8002EC50(char, char, int);
extern void func_8002ECA8();
extern int func_8002F040(char);
extern int func_8002F098();
extern int func_8002F540(int, char, int);
extern void func_8002F5B4();
extern void func_8002FB68();
extern void func_8002FEE0(int**);
extern void func_80030258(void*);
extern void func_8003032C();

#endif