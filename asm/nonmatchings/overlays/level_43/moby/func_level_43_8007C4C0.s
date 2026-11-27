.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_43
/* 87A19F0 8007C4C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 87A19F4 8007C4C4 1000BFAF */  sw         $ra, 0x10($sp)
/* 87A19F8 8007C4C8 C5E5000C */  jal        func_80039714
/* 87A19FC 8007C4CC 00000000 */   nop
/* 87A1A00 8007C4D0 1000BF8F */  lw         $ra, 0x10($sp)
/* 87A1A04 8007C4D4 1800BD27 */  addiu      $sp, $sp, 0x18
/* 87A1A08 8007C4D8 0800E003 */  jr         $ra
/* 87A1A0C 8007C4DC 00000000 */   nop
.size MobyUpdate_290_level_43, . - MobyUpdate_290_level_43
