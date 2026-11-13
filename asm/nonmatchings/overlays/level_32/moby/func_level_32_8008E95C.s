.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_412_level_32
/* 6DF5E8C 8008E95C 0780023C */  lui        $v0, %hi(D_8006C770)
/* 6DF5E90 8008E960 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 6DF5E94 8008E964 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6DF5E98 8008E968 03004010 */  beqz       $v0, .Llevel_32_8008E978
/* 6DF5E9C 8008E96C 1000BFAF */   sw        $ra, 0x10($sp)
/* 6DF5EA0 8008E970 C656010C */  jal        func_80055B18
/* 6DF5EA4 8008E974 00000000 */   nop
.Llevel_32_8008E978:
/* 6DF5EA8 8008E978 1000BF8F */  lw         $ra, 0x10($sp)
/* 6DF5EAC 8008E97C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 6DF5EB0 8008E980 0800E003 */  jr         $ra
/* 6DF5EB4 8008E984 00000000 */   nop
.size MobyUpdate_412_level_32, . - MobyUpdate_412_level_32
