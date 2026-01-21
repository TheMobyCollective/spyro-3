#include "common.h"

/**
 * ???() - func_80050844()
 * TODO
 */
INCLUDE_ASM("asm/nonmatchings/unknown", func_80050844);

/**
 * ???() - func_800509E8()
 * https://decomp.me/scratch/VCBgx
 */
void func_800509E8(int* ptr) {
    *ptr = 0;
}

/**
 * UpdateTracers() - func_800509F0() - MATCHING
 * Has some placeholder struct names
 * https://decomp.me/scratch/jf4s5
 */
INCLUDE_ASM("asm/nonmatchings/update", func_800509F0);

/**
 * ???() - func_80050B00() - MATCHING
 * Has an unknown struct of size 0x14 which seems to consist of pointers
 * Might be a set / add particle function
 * https://decomp.me/scratch/LIHxH
 */
INCLUDE_ASM("asm/nonmatchings/update", func_80050B00);

/**
 * ???() - func_80050B88() - MATCHING
 * Just dereferences a pointer??
 * https://decomp.me/scratch/wl5A8
 */
INCLUDE_ASM("asm/nonmatchings/update", func_80050B88);
