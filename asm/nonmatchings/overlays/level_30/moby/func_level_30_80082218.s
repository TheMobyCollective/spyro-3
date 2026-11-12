.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_30
/* 678AF48 80082218 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 678AF4C 8008221C 1000BFAF */  sw         $ra, 0x10($sp)
/* 678AF50 80082220 C5E5000C */  jal        func_80039714
/* 678AF54 80082224 00000000 */   nop
/* 678AF58 80082228 1000BF8F */  lw         $ra, 0x10($sp)
/* 678AF5C 8008222C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 678AF60 80082230 0800E003 */  jr         $ra
/* 678AF64 80082234 00000000 */   nop
.size MobyUpdate_290_level_30, . - MobyUpdate_290_level_30
