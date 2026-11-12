.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_27
/* 63F488C 8008035C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 63F4890 80080360 1000BFAF */  sw         $ra, 0x10($sp)
/* 63F4894 80080364 C5E5000C */  jal        func_80039714
/* 63F4898 80080368 00000000 */   nop
/* 63F489C 8008036C 1000BF8F */  lw         $ra, 0x10($sp)
/* 63F48A0 80080370 1800BD27 */  addiu      $sp, $sp, 0x18
/* 63F48A4 80080374 0800E003 */  jr         $ra
/* 63F48A8 80080378 00000000 */   nop
.size MobyUpdate_290_level_27, . - MobyUpdate_290_level_27
