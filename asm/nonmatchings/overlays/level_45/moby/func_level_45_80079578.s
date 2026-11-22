.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_340_level_45
/* 8D35AA8 80079578 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 8D35AAC 8007957C 1000BFAF */  sw         $ra, 0x10($sp)
/* 8D35AB0 80079580 C5E5000C */  jal        func_80039714
/* 8D35AB4 80079584 00000000 */   nop
/* 8D35AB8 80079588 1000BF8F */  lw         $ra, 0x10($sp)
/* 8D35ABC 8007958C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 8D35AC0 80079590 0800E003 */  jr         $ra
/* 8D35AC4 80079594 00000000 */   nop
.size MobyUpdate_340_level_45, . - MobyUpdate_340_level_45
