.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_142_level_24
/* 5DF6504 8007B7D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5DF6508 8007B7D8 1000BFAF */  sw         $ra, 0x10($sp)
/* 5DF650C 8007B7DC C5E5000C */  jal        func_80039714
/* 5DF6510 8007B7E0 00000000 */   nop
/* 5DF6514 8007B7E4 1000BF8F */  lw         $ra, 0x10($sp)
/* 5DF6518 8007B7E8 1800BD27 */  addiu      $sp, $sp, 0x18
/* 5DF651C 8007B7EC 0800E003 */  jr         $ra
/* 5DF6520 8007B7F0 00000000 */   nop
.size MobyUpdate_142_level_24, . - MobyUpdate_142_level_24
