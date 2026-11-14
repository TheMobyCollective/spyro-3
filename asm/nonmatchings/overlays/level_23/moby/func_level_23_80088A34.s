.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_127_level_23
/* 5AA4F64 80088A34 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5AA4F68 80088A38 1000BFAF */  sw         $ra, 0x10($sp)
/* 5AA4F6C 80088A3C 49008290 */  lbu        $v0, 0x49($a0)
/* 5AA4F70 80088A40 00000000 */  nop
/* 5AA4F74 80088A44 05004014 */  bnez       $v0, .Llevel_23_80088A5C
/* 5AA4F78 80088A48 01000224 */   addiu     $v0, $zero, 0x1
/* 5AA4F7C 80088A4C 48008590 */  lbu        $a1, 0x48($a0)
/* 5AA4F80 80088A50 490082A0 */  sb         $v0, 0x49($a0)
/* 5AA4F84 80088A54 E0D3000C */  jal        func_80034F80
/* 5AA4F88 80088A58 470082A0 */   sb        $v0, 0x47($a0)
.Llevel_23_80088A5C:
/* 5AA4F8C 80088A5C 1000BF8F */  lw         $ra, 0x10($sp)
/* 5AA4F90 80088A60 1800BD27 */  addiu      $sp, $sp, 0x18
/* 5AA4F94 80088A64 0800E003 */  jr         $ra
/* 5AA4F98 80088A68 00000000 */   nop
.size MobyUpdate_127_level_23, . - MobyUpdate_127_level_23
