.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_142_level_50
/* 95D49D4 800804A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 95D49D8 800804A8 1000BFAF */  sw         $ra, 0x10($sp)
/* 95D49DC 800804AC C5E5000C */  jal        func_80039714
/* 95D49E0 800804B0 00000000 */   nop
/* 95D49E4 800804B4 1000BF8F */  lw         $ra, 0x10($sp)
/* 95D49E8 800804B8 1800BD27 */  addiu      $sp, $sp, 0x18
/* 95D49EC 800804BC 0800E003 */  jr         $ra
/* 95D49F0 800804C0 00000000 */   nop
.size MobyUpdate_142_level_50, . - MobyUpdate_142_level_50
