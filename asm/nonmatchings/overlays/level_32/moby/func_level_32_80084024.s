.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_142_level_32
/* 6DEB554 80084024 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6DEB558 80084028 1000BFAF */  sw         $ra, 0x10($sp)
/* 6DEB55C 8008402C C5E5000C */  jal        func_80039714
/* 6DEB560 80084030 00000000 */   nop
/* 6DEB564 80084034 1000BF8F */  lw         $ra, 0x10($sp)
/* 6DEB568 80084038 1800BD27 */  addiu      $sp, $sp, 0x18
/* 6DEB56C 8008403C 0800E003 */  jr         $ra
/* 6DEB570 80084040 00000000 */   nop
.size MobyUpdate_142_level_32, . - MobyUpdate_142_level_32
