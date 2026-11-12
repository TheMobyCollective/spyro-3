.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_25
/* 6015AB4 8007F584 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6015AB8 8007F588 1000BFAF */  sw         $ra, 0x10($sp)
/* 6015ABC 8007F58C C5E5000C */  jal        func_80039714
/* 6015AC0 8007F590 00000000 */   nop
/* 6015AC4 8007F594 1000BF8F */  lw         $ra, 0x10($sp)
/* 6015AC8 8007F598 1800BD27 */  addiu      $sp, $sp, 0x18
/* 6015ACC 8007F59C 0800E003 */  jr         $ra
/* 6015AD0 8007F5A0 00000000 */   nop
.size MobyUpdate_290_level_25, . - MobyUpdate_290_level_25
