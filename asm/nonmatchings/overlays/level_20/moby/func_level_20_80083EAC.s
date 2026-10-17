.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_20
/* 50D3BDC 80083EAC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 50D3BE0 80083EB0 1000BFAF */  sw         $ra, 0x10($sp)
/* 50D3BE4 80083EB4 C5E5000C */  jal        func_80039714
/* 50D3BE8 80083EB8 00000000 */   nop
/* 50D3BEC 80083EBC 1000BF8F */  lw         $ra, 0x10($sp)
/* 50D3BF0 80083EC0 1800BD27 */  addiu      $sp, $sp, 0x18
/* 50D3BF4 80083EC4 0800E003 */  jr         $ra
/* 50D3BF8 80083EC8 00000000 */   nop
.size MobyUpdate_290_level_20, . - MobyUpdate_290_level_20
