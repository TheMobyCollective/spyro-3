.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_42
/* 8487E30 80083100 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 8487E34 80083104 1000BFAF */  sw         $ra, 0x10($sp)
/* 8487E38 80083108 C5E5000C */  jal        func_80039714
/* 8487E3C 8008310C 00000000 */   nop
/* 8487E40 80083110 1000BF8F */  lw         $ra, 0x10($sp)
/* 8487E44 80083114 1800BD27 */  addiu      $sp, $sp, 0x18
/* 8487E48 80083118 0800E003 */  jr         $ra
/* 8487E4C 8008311C 00000000 */   nop
.size MobyUpdate_290_level_42, . - MobyUpdate_290_level_42
