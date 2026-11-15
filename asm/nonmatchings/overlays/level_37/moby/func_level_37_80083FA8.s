.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_37
/* 7AAFCD8 80083FA8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 7AAFCDC 80083FAC 1000BFAF */  sw         $ra, 0x10($sp)
/* 7AAFCE0 80083FB0 C5E5000C */  jal        func_80039714
/* 7AAFCE4 80083FB4 00000000 */   nop
/* 7AAFCE8 80083FB8 1000BF8F */  lw         $ra, 0x10($sp)
/* 7AAFCEC 80083FBC 1800BD27 */  addiu      $sp, $sp, 0x18
/* 7AAFCF0 80083FC0 0800E003 */  jr         $ra
/* 7AAFCF4 80083FC4 00000000 */   nop
.size MobyUpdate_290_level_37, . - MobyUpdate_290_level_37
