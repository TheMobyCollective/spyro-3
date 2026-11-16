.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_40
/* 7E6D790 80082260 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 7E6D794 80082264 1000BFAF */  sw         $ra, 0x10($sp)
/* 7E6D798 80082268 C5E5000C */  jal        func_80039714
/* 7E6D79C 8008226C 00000000 */   nop
/* 7E6D7A0 80082270 1000BF8F */  lw         $ra, 0x10($sp)
/* 7E6D7A4 80082274 1800BD27 */  addiu      $sp, $sp, 0x18
/* 7E6D7A8 80082278 0800E003 */  jr         $ra
/* 7E6D7AC 8008227C 00000000 */   nop
.size MobyUpdate_290_level_40, . - MobyUpdate_290_level_40
