.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_44
/* 8B50164 8007CC34 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 8B50168 8007CC38 1000BFAF */  sw         $ra, 0x10($sp)
/* 8B5016C 8007CC3C C5E5000C */  jal        func_80039714
/* 8B50170 8007CC40 00000000 */   nop
/* 8B50174 8007CC44 1000BF8F */  lw         $ra, 0x10($sp)
/* 8B50178 8007CC48 1800BD27 */  addiu      $sp, $sp, 0x18
/* 8B5017C 8007CC4C 0800E003 */  jr         $ra
/* 8B50180 8007CC50 00000000 */   nop
.size MobyUpdate_290_level_44, . - MobyUpdate_290_level_44
