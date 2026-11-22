.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_47
/* 9118DD4 800798A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9118DD8 800798A8 1000BFAF */  sw         $ra, 0x10($sp)
/* 9118DDC 800798AC C5E5000C */  jal        func_80039714
/* 9118DE0 800798B0 00000000 */   nop
/* 9118DE4 800798B4 1000BF8F */  lw         $ra, 0x10($sp)
/* 9118DE8 800798B8 1800BD27 */  addiu      $sp, $sp, 0x18
/* 9118DEC 800798BC 0800E003 */  jr         $ra
/* 9118DF0 800798C0 00000000 */   nop
.size MobyUpdate_290_level_47, . - MobyUpdate_290_level_47
