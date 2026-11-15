.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_142_level_37
/* 7AA45CC 8007889C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 7AA45D0 800788A0 1000BFAF */  sw         $ra, 0x10($sp)
/* 7AA45D4 800788A4 C5E5000C */  jal        func_80039714
/* 7AA45D8 800788A8 00000000 */   nop
/* 7AA45DC 800788AC 1000BF8F */  lw         $ra, 0x10($sp)
/* 7AA45E0 800788B0 1800BD27 */  addiu      $sp, $sp, 0x18
/* 7AA45E4 800788B4 0800E003 */  jr         $ra
/* 7AA45E8 800788B8 00000000 */   nop
.size MobyUpdate_142_level_37, . - MobyUpdate_142_level_37
