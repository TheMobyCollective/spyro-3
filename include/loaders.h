#ifndef __LOADERS_H
#define __LOADERS_H

#include "common.h"

typedef struct {
	int* D_800722b8; // ovlStartPtr
	int* D_800722bc; // lvlWadHeaderPtr?
	int* D_800722c0; // scenePtr
	int* D_800722c4; // envPtr
	char* D_800722c8; // layoutPtr // LevelWadHeader*? void*?
	char* D_800722cc; // demoInputsPtr
	int* D_800722d0;
	int* D_800722d4;
	int* D_800722d8;
	int* D_800722dc;
	int* D_800722e0; // ptr
	int* D_800722e4;
} LoadingData;

void func_8002AE00();
void func_8002AE34(int*, int*);
void func_8002AF9C(int*, int, int*);
int func_8002B31C(int*, int*);
void func_8002B5EC(void*); // my notes say pointer is "MobySoundData?*" whatever that is
void func_8002B6C8();
void func_8002B768(Particle*);
void* func_8002B810(void*);
void func_8002C9F4(char*, int);
void func_8002CA50();
void func_8002D044();

extern LoadingData loadingData; // D_800722b8; probably defined in loaders.c

#endif