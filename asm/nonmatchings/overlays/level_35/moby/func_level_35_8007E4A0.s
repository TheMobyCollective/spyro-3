.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_35
/* 77011D0 8007E4A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 77011D4 8007E4A4 1000BFAF */  sw         $ra, 0x10($sp)
/* 77011D8 8007E4A8 C5E5000C */  jal        func_80039714
/* 77011DC 8007E4AC 00000000 */   nop
/* 77011E0 8007E4B0 1000BF8F */  lw         $ra, 0x10($sp)
/* 77011E4 8007E4B4 1800BD27 */  addiu      $sp, $sp, 0x18
/* 77011E8 8007E4B8 0800E003 */  jr         $ra
/* 77011EC 8007E4BC 00000000 */   nop
.size MobyUpdate_290_level_35, . - MobyUpdate_290_level_35
