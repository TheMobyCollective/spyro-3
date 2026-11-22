.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_219_level_46
/* 8F554F0 80082FC0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 8F554F4 80082FC4 1000BFAF */  sw         $ra, 0x10($sp)
/* 8F554F8 80082FC8 C5E5000C */  jal        func_80039714
/* 8F554FC 80082FCC 00000000 */   nop
/* 8F55500 80082FD0 1000BF8F */  lw         $ra, 0x10($sp)
/* 8F55504 80082FD4 1800BD27 */  addiu      $sp, $sp, 0x18
/* 8F55508 80082FD8 0800E003 */  jr         $ra
/* 8F5550C 80082FDC 00000000 */   nop
.size MobyUpdate_219_level_46, . - MobyUpdate_219_level_46
