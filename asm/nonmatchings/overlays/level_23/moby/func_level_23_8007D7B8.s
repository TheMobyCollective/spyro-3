.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_23
/* 5A99CE8 8007D7B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5A99CEC 8007D7BC 1000BFAF */  sw         $ra, 0x10($sp)
/* 5A99CF0 8007D7C0 C5E5000C */  jal        func_80039714
/* 5A99CF4 8007D7C4 00000000 */   nop
/* 5A99CF8 8007D7C8 1000BF8F */  lw         $ra, 0x10($sp)
/* 5A99CFC 8007D7CC 1800BD27 */  addiu      $sp, $sp, 0x18
/* 5A99D00 8007D7D0 0800E003 */  jr         $ra
/* 5A99D04 8007D7D4 00000000 */   nop
.size MobyUpdate_290_level_23, . - MobyUpdate_290_level_23
