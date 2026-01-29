#include "common.h"
#include "stdutil.h"
#include "tracers.h"

/**
 * ???() - func_80050844()
 * Tricky one, nearly there but not ready yet
 * https://decomp.me/scratch/v6QhM
 */
INCLUDE_ASM("asm/nonmatchings/tracers", func_80050844);

/**
 * ???() - func_800509E8() - MATCHING
 * https://decomp.me/scratch/VCBgx
 */
void func_800509E8(int* ptr) {
    *ptr = 0;
}

/**
 * UpdateTracers() - func_800509F0() - MATCHING
 * https://decomp.me/scratch/1ofwG
 */
void func_800509F0() {
    int i;

    for (i = 0; i < 0x20; i++) {
        if (D_80070610[i].unk0) {
            
            D_80070610[i].unk64 += 1;
            if (D_80070610[i].unk64 >= D_80070610[i].unk65) {
                D_80070610[i].unk64 = 0;
            }
            
            if (D_80070610[i].unk67) {
                func_8004F58C(&D_80070610[i].unk4[D_80070610[i].unk64], D_80070610[i].unk0);
            } else {
                func_8004F504(&D_80070610[i].unk4[D_80070610[i].unk64], D_80070610[i].unk0);
            }
            
        }
    }
}

/**
 * ???() - func_80050B00() - MATCHING
 * https://decomp.me/scratch/LIHxH
 */
Unknown_80070260* func_80050B00(int arg0, int arg1, int arg2, int arg3, int arg4) {
    int i;

    for (i = 0; i < 8; i++) {
        if (D_80070260[i].unk0 == 0) {
            D_80070260[i].unk0 = arg0;
            D_80070260[i].unk4 = arg1;
            D_80070260[i].unk8 = arg2;
            D_80070260[i].unkC = arg3;
            D_80070260[i].unk10 = arg4;
            return &D_80070260[i];
        }
    }
    return 0;
}

/**
 * ???() - func_80050B88() - MATCHING
 * https://decomp.me/scratch/wl5A8
 */
void func_80050B88(int* ptr) {
    *ptr = 0;
}
