.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_34
/* 74DBE94 80080164 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 74DBE98 80080168 1000BFAF */  sw         $ra, 0x10($sp)
/* 74DBE9C 8008016C C5E5000C */  jal        func_80039714
/* 74DBEA0 80080170 00000000 */   nop
/* 74DBEA4 80080174 1000BF8F */  lw         $ra, 0x10($sp)
/* 74DBEA8 80080178 1800BD27 */  addiu      $sp, $sp, 0x18
/* 74DBEAC 8008017C 0800E003 */  jr         $ra
/* 74DBEB0 80080180 00000000 */   nop
.size MobyUpdate_290_level_34, . - MobyUpdate_290_level_34
