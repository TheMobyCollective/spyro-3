#ifndef __SAVEPOINT_H
#define __SAVEPOINT_H

#include "common.h"

/*** Savepoint definitions ***/

typedef struct {
    int updated; // since entering?
    int collection[8]; // bitmask
    Vector3D spawnPos; // 0x24
    int unk30;
    int unk34;
    struct {
        int ptr; // upper byte is the data type
        int val;
    } savedMemory[4][64];
    int savedMemoryCount[4];
    int swimState; // 0 standing, 1 surface, 2 dive
    int unk5;
} Savepoint;

extern Savepoint unsavedData; // Checkpoint data that is not yet saved (8006c7f8)
extern Savepoint savedData; // 8006D088

void func_8003B634(Savepoint* save, Vector3D* spawnPos, int arg2); // fSetCheckpoint
void func_8003B74C(Savepoint* save); // fResetToCheckpoint
void func_8003B7B4(void* addr, int len, Savepoint *save); // saved memory
void func_8003B918(Savepoint* save);
void func_8003BA00(Moby* moby); // fUpdateLocalCollectionBitmask

#endif