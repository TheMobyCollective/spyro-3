.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_296_level_14
/* 47C34AC 80083F7C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 47C34B0 80083F80 1000BFAF */  sw         $ra, 0x10($sp)
/* 47C34B4 80083F84 C5E5000C */  jal        func_80039714
/* 47C34B8 80083F88 00000000 */   nop
/* 47C34BC 80083F8C 1000BF8F */  lw         $ra, 0x10($sp)
/* 47C34C0 80083F90 1800BD27 */  addiu      $sp, $sp, 0x18
/* 47C34C4 80083F94 0800E003 */  jr         $ra
/* 47C34C8 80083F98 00000000 */   nop
.size MobyUpdate_296_level_14, . - MobyUpdate_296_level_14
