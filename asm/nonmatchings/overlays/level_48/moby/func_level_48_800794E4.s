.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_48
/* 926C214 800794E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 926C218 800794E8 1000BFAF */  sw         $ra, 0x10($sp)
/* 926C21C 800794EC C5E5000C */  jal        func_80039714
/* 926C220 800794F0 00000000 */   nop
/* 926C224 800794F4 1000BF8F */  lw         $ra, 0x10($sp)
/* 926C228 800794F8 1800BD27 */  addiu      $sp, $sp, 0x18
/* 926C22C 800794FC 0800E003 */  jr         $ra
/* 926C230 80079500 00000000 */   nop
.size MobyUpdate_290_level_48, . - MobyUpdate_290_level_48
