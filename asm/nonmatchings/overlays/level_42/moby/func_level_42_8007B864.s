.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_142_level_42
/* 8480594 8007B864 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 8480598 8007B868 1000BFAF */  sw         $ra, 0x10($sp)
/* 848059C 8007B86C C5E5000C */  jal        func_80039714
/* 84805A0 8007B870 00000000 */   nop
/* 84805A4 8007B874 1000BF8F */  lw         $ra, 0x10($sp)
/* 84805A8 8007B878 1800BD27 */  addiu      $sp, $sp, 0x18
/* 84805AC 8007B87C 0800E003 */  jr         $ra
/* 84805B0 8007B880 00000000 */   nop
.size MobyUpdate_142_level_42, . - MobyUpdate_142_level_42
