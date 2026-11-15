.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_33
/* 71B7004 8007F2D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 71B7008 8007F2D8 1000BFAF */  sw         $ra, 0x10($sp)
/* 71B700C 8007F2DC C5E5000C */  jal        func_80039714
/* 71B7010 8007F2E0 00000000 */   nop
/* 71B7014 8007F2E4 1000BF8F */  lw         $ra, 0x10($sp)
/* 71B7018 8007F2E8 1800BD27 */  addiu      $sp, $sp, 0x18
/* 71B701C 8007F2EC 0800E003 */  jr         $ra
/* 71B7020 8007F2F0 00000000 */   nop
.size MobyUpdate_290_level_33, . - MobyUpdate_290_level_33
