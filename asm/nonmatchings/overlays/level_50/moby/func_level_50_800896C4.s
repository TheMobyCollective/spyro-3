.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_50
/* 95DDBF4 800896C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 95DDBF8 800896C8 1000BFAF */  sw         $ra, 0x10($sp)
/* 95DDBFC 800896CC C5E5000C */  jal        func_80039714
/* 95DDC00 800896D0 00000000 */   nop
/* 95DDC04 800896D4 1000BF8F */  lw         $ra, 0x10($sp)
/* 95DDC08 800896D8 1800BD27 */  addiu      $sp, $sp, 0x18
/* 95DDC0C 800896DC 0800E003 */  jr         $ra
/* 95DDC10 800896E0 00000000 */   nop
.size MobyUpdate_290_level_50, . - MobyUpdate_290_level_50
