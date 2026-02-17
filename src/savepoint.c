#include "common.h"
#include "savepoint.h"
#include "stdutil.h"
#include "camera.h"
#include "spyro.h"

// sdata
extern int area; // Current area - 8006C5C8
extern Moby* mobyArrayPtr; // Pointer to the moby array
extern Moby* allocatedMobysPtr; // Pointer into the moby array, pointing at the mobys added after the level was loaded
extern int collectionAreaOffset; // Offset used by the collection bitmask for the current area

// Update
extern void func_80053944(); // an update function

////////////////////////////////////////////////////////////////////////////////////

/**
 * UpdateSavepoint() - func_8003B634() - MATCHING
 * This one had some sign / ifs weirdness resolved with a nice switch statement
 * https://decomp.me/scratch/Trdeq
 */
void func_8003B634(Savepoint* save, Vector3D* spawnPos, int arg2) {
    save->updated = 1;
    
    func_8004F178(&save->spawnPos, spawnPos);
    save->spawnPos.z = save->spawnPos.z + spyro.unk4a;

    save->unk30 = ((arg2 * 0x10) & 0xFFF);
    func_8004E7D4(&save->unk34, &unsavedData.unk34, 4);
    
    func_8004E7D4((int*)save->savedMemory, (int*)unsavedData.savedMemory, 0x800);
    save->savedMemoryCount[0] = unsavedData.savedMemoryCount[0];
    save->savedMemoryCount[1] = unsavedData.savedMemoryCount[1];
    save->savedMemoryCount[2] = unsavedData.savedMemoryCount[2];
    save->savedMemoryCount[3] = unsavedData.savedMemoryCount[3];
    func_8004E7D4((int*)&save->collection, (int*)&unsavedData.collection, 0x20);

    switch((int)spyro.movementState) {
    	case 10:
    		save->swimState = 1;
    		break;
    	case 11:
    	case 12:
    		save->swimState = 2;
    		break;
    	default:
    		save->swimState = 0;
    		break;
    }
    save->unk5 = 0;
}

/**
 * ResetToSavepoint() - func_8003B74C() - MATCHING
 * https://decomp.me/scratch/yDxMA
 */
void func_8003B74C(Savepoint* save) {
    if (save->updated != 0) {
        func_8004E7D4((int*)&unsavedData, (int*)save, 0x850);
    } else {
        func_8004E790(&unsavedData, 0, 0x850);
    }
    func_80053944();
    camera.unk40 = 0;
}

/**
 * StoreSavedMemory() - func_8003B7B4()
 * TODO, the registers aren't right yet
 * https://decomp.me/scratch/T5FoR
 */
INCLUDE_ASM("asm/nonmatchings/savepoint", func_8003B7B4);

/**
 * LoadSavedMemory() - func_8003B918() - MATCHING
 * Might only be used in specific cases (critters?), worth figuring out
 * Used by the antipiracy
 * https://decomp.me/scratch/9YEh7
 */
void func_8003B918(Savepoint* save) {
    int sizeAndPtr;
    int size;
    int setPtr;
    int i;

    for (i = 0; i < save->savedMemoryCount[area]; i++) {
        sizeAndPtr = save->savedMemory[area][i].ptr;
        size = sizeAndPtr >> 0x18; // top byte holds the data size
        setPtr = (sizeAndPtr & 0xFFFFFF) | 0x80000000; // bottom 3 bytes form a pointer
        switch (size) {
        case 1:
            *(char*)setPtr = save->savedMemory[area][i].val;
            break;
        case 2:
            *(short*)setPtr = save->savedMemory[area][i].val;
            break;
        case 4:
            *(int*)setPtr = save->savedMemory[area][i].val;
            break;
        }
    }
}

/**
 * UpdateUnsavedCollection() - func_8003BA00() - MATCHING
 * I could think of a better name, dunno
 * https://decomp.me/scratch/vQFQk
 */
void func_8003BA00(Moby* moby) {
    int temp_v0;
    int temp_v1;

    if (   ((moby->unknown2 < 0x21) || (moby->unknown2 == 0x7E)) // this field is related to the collection bitmask...? might be unsigned
        && ((unsigned int) moby >= (unsigned int) mobyArrayPtr)
        && ((unsigned int) moby <  (unsigned int) allocatedMobysPtr)) {

        temp_v0 = (((unsigned int)moby - (unsigned int)mobyArrayPtr) * -0x45D1745D);
        temp_v0 >>= 3; // get index, equivalent to /0x58
        
        temp_v0 += collectionAreaOffset; // add to the offset for the sublevel
        
        temp_v1 = temp_v0 & 0x1F; // determines bit to set (idk why but I had to do this to get it to match)
        unsavedData.collection[temp_v0 >> 5] |= 1 << temp_v1;
        
    }
}
