.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_26
/* 6232C2C 80082EFC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6232C30 80082F00 1000BFAF */  sw         $ra, 0x10($sp)
/* 6232C34 80082F04 C5E5000C */  jal        func_80039714
/* 6232C38 80082F08 00000000 */   nop
/* 6232C3C 80082F0C 1000BF8F */  lw         $ra, 0x10($sp)
/* 6232C40 80082F10 1800BD27 */  addiu      $sp, $sp, 0x18
/* 6232C44 80082F14 0800E003 */  jr         $ra
/* 6232C48 80082F18 00000000 */   nop
.size MobyUpdate_290_level_26, . - MobyUpdate_290_level_26
