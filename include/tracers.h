#ifndef __TRACERS_H
#define __TRACERS_H

typedef struct {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
} Unknown_80070260; // seems to be five pointers rather than ints, and it's related to tracers

// .bss 8006c7f8
extern Unknown_80070260 D_80070260[8];

// func_80050844
extern void func_800509E8(int* ptr);
extern void func_800509F0();
extern Unknown_80070260* func_80050B00(int arg0, int arg1, int arg2, int arg3, int arg4);
extern void func_80050B88(int* arg0);

#endif