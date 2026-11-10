.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_340_level_15
/* 49B51B0 8007AC80 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 49B51B4 8007AC84 1000BFAF */  sw         $ra, 0x10($sp)
/* 49B51B8 8007AC88 C5E5000C */  jal        func_80039714
/* 49B51BC 8007AC8C 00000000 */   nop
/* 49B51C0 8007AC90 1000BF8F */  lw         $ra, 0x10($sp)
/* 49B51C4 8007AC94 1800BD27 */  addiu      $sp, $sp, 0x18
/* 49B51C8 8007AC98 0800E003 */  jr         $ra
/* 49B51CC 8007AC9C 00000000 */   nop
.size MobyUpdate_340_level_15, . - MobyUpdate_340_level_15
