.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_38
/* 7C381F0 800794C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 7C381F4 800794C4 1000BFAF */  sw         $ra, 0x10($sp)
/* 7C381F8 800794C8 C5E5000C */  jal        func_80039714
/* 7C381FC 800794CC 00000000 */   nop
/* 7C38200 800794D0 1000BF8F */  lw         $ra, 0x10($sp)
/* 7C38204 800794D4 1800BD27 */  addiu      $sp, $sp, 0x18
/* 7C38208 800794D8 0800E003 */  jr         $ra
/* 7C3820C 800794DC 00000000 */   nop
.size MobyUpdate_290_level_38, . - MobyUpdate_290_level_38
