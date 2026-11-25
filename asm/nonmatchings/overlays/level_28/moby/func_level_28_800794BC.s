.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_28
/* 65599EC 800794BC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 65599F0 800794C0 1000BFAF */  sw         $ra, 0x10($sp)
/* 65599F4 800794C4 C5E5000C */  jal        func_80039714
/* 65599F8 800794C8 00000000 */   nop
/* 65599FC 800794CC 1000BF8F */  lw         $ra, 0x10($sp)
/* 6559A00 800794D0 1800BD27 */  addiu      $sp, $sp, 0x18
/* 6559A04 800794D4 0800E003 */  jr         $ra
/* 6559A08 800794D8 00000000 */   nop
.size MobyUpdate_290_level_28, . - MobyUpdate_290_level_28
