#ifndef __LOADERS_H
#define __LOADERS_H

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

extern void func_8002AE00();
// other functions use structs so we need some includes
extern void func_8002D044();
extern void* func_8002B810(void*);
extern void func_8002CA50();

extern LoadingData loadingData; // D_800722b8; probably defined in loaders.c

#endif