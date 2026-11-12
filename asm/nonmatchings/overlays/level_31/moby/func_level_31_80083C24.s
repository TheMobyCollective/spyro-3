.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_31
/* 6A9E954 80083C24 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6A9E958 80083C28 1000BFAF */  sw         $ra, 0x10($sp)
/* 6A9E95C 80083C2C C5E5000C */  jal        func_80039714
/* 6A9E960 80083C30 00000000 */   nop
/* 6A9E964 80083C34 1000BF8F */  lw         $ra, 0x10($sp)
/* 6A9E968 80083C38 1800BD27 */  addiu      $sp, $sp, 0x18
/* 6A9E96C 80083C3C 0800E003 */  jr         $ra
/* 6A9E970 80083C40 00000000 */   nop
.size MobyUpdate_290_level_31, . - MobyUpdate_290_level_31
