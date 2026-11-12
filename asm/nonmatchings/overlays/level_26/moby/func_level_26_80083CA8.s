.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_293_level_26
/* 62339D8 80083CA8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 62339DC 80083CAC 1000BFAF */  sw         $ra, 0x10($sp)
/* 62339E0 80083CB0 C5E5000C */  jal        func_80039714
/* 62339E4 80083CB4 00000000 */   nop
/* 62339E8 80083CB8 1000BF8F */  lw         $ra, 0x10($sp)
/* 62339EC 80083CBC 1800BD27 */  addiu      $sp, $sp, 0x18
/* 62339F0 80083CC0 0800E003 */  jr         $ra
/* 62339F4 80083CC4 00000000 */   nop
.size MobyUpdate_293_level_26, . - MobyUpdate_293_level_26
