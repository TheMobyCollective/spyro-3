.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_41
/* 8144974 8007EC44 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 8144978 8007EC48 1000BFAF */  sw         $ra, 0x10($sp)
/* 814497C 8007EC4C C5E5000C */  jal        func_80039714
/* 8144980 8007EC50 00000000 */   nop
/* 8144984 8007EC54 1000BF8F */  lw         $ra, 0x10($sp)
/* 8144988 8007EC58 1800BD27 */  addiu      $sp, $sp, 0x18
/* 814498C 8007EC5C 0800E003 */  jr         $ra
/* 8144990 8007EC60 00000000 */   nop
.size MobyUpdate_290_level_41, . - MobyUpdate_290_level_41
