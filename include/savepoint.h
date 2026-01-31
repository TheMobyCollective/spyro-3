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

void func_8003B634(Savepoint* save, Vector3D* spawnPos, int arg2);

#endif