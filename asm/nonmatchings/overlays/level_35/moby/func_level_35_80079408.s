.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_340_level_35
/* 76FC138 80079408 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 76FC13C 8007940C 1000BFAF */  sw         $ra, 0x10($sp)
/* 76FC140 80079410 C5E5000C */  jal        func_80039714
/* 76FC144 80079414 00000000 */   nop
/* 76FC148 80079418 1000BF8F */  lw         $ra, 0x10($sp)
/* 76FC14C 8007941C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 76FC150 80079420 0800E003 */  jr         $ra
/* 76FC154 80079424 00000000 */   nop
.size MobyUpdate_340_level_35, . - MobyUpdate_340_level_35
