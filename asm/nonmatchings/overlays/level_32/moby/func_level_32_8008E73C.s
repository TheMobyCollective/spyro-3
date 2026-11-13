.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_32
/* 6DF5C6C 8008E73C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6DF5C70 8008E740 1000BFAF */  sw         $ra, 0x10($sp)
/* 6DF5C74 8008E744 C5E5000C */  jal        func_80039714
/* 6DF5C78 8008E748 00000000 */   nop
/* 6DF5C7C 8008E74C 1000BF8F */  lw         $ra, 0x10($sp)
/* 6DF5C80 8008E750 1800BD27 */  addiu      $sp, $sp, 0x18
/* 6DF5C84 8008E754 0800E003 */  jr         $ra
/* 6DF5C88 8008E758 00000000 */   nop
.size MobyUpdate_290_level_32, . - MobyUpdate_290_level_32
