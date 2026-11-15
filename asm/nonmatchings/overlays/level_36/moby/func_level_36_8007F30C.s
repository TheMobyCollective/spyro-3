.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_36
/* 78DF83C 8007F30C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 78DF840 8007F310 1000BFAF */  sw         $ra, 0x10($sp)
/* 78DF844 8007F314 C5E5000C */  jal        func_80039714
/* 78DF848 8007F318 00000000 */   nop
/* 78DF84C 8007F31C 1000BF8F */  lw         $ra, 0x10($sp)
/* 78DF850 8007F320 1800BD27 */  addiu      $sp, $sp, 0x18
/* 78DF854 8007F324 0800E003 */  jr         $ra
/* 78DF858 8007F328 00000000 */   nop
.size MobyUpdate_290_level_36, . - MobyUpdate_290_level_36
