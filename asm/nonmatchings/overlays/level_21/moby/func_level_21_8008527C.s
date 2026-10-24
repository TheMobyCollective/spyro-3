.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_21
/* 54017AC 8008527C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 54017B0 80085280 1000BFAF */  sw         $ra, 0x10($sp)
/* 54017B4 80085284 C5E5000C */  jal        func_80039714
/* 54017B8 80085288 00000000 */   nop
/* 54017BC 8008528C 1000BF8F */  lw         $ra, 0x10($sp)
/* 54017C0 80085290 1800BD27 */  addiu      $sp, $sp, 0x18
/* 54017C4 80085294 0800E003 */  jr         $ra
/* 54017C8 80085298 00000000 */   nop
.size MobyUpdate_290_level_21, . - MobyUpdate_290_level_21
