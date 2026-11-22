.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_45
/* 8D3A2CC 8007DD9C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 8D3A2D0 8007DDA0 1000BFAF */  sw         $ra, 0x10($sp)
/* 8D3A2D4 8007DDA4 C5E5000C */  jal        func_80039714
/* 8D3A2D8 8007DDA8 00000000 */   nop
/* 8D3A2DC 8007DDAC 1000BF8F */  lw         $ra, 0x10($sp)
/* 8D3A2E0 8007DDB0 1800BD27 */  addiu      $sp, $sp, 0x18
/* 8D3A2E4 8007DDB4 0800E003 */  jr         $ra
/* 8D3A2E8 8007DDB8 00000000 */   nop
.size MobyUpdate_290_level_45, . - MobyUpdate_290_level_45
