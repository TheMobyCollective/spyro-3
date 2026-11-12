.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_340_level_25
/* 6010B84 8007A654 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6010B88 8007A658 1000BFAF */  sw         $ra, 0x10($sp)
/* 6010B8C 8007A65C C5E5000C */  jal        func_80039714
/* 6010B90 8007A660 00000000 */   nop
/* 6010B94 8007A664 1000BF8F */  lw         $ra, 0x10($sp)
/* 6010B98 8007A668 1800BD27 */  addiu      $sp, $sp, 0x18
/* 6010B9C 8007A66C 0800E003 */  jr         $ra
/* 6010BA0 8007A670 00000000 */   nop
.size MobyUpdate_340_level_25, . - MobyUpdate_340_level_25
