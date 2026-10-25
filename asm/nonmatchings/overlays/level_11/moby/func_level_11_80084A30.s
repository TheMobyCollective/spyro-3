.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_412_level_11
/* 3E28F60 80084A30 0780023C */  lui        $v0, %hi(D_8006C770)
/* 3E28F64 80084A34 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 3E28F68 80084A38 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3E28F6C 80084A3C 03004010 */  beqz       $v0, .Llevel_11_80084A4C
/* 3E28F70 80084A40 1000BFAF */   sw        $ra, 0x10($sp)
/* 3E28F74 80084A44 C656010C */  jal        func_80055B18
/* 3E28F78 80084A48 00000000 */   nop
.Llevel_11_80084A4C:
/* 3E28F7C 80084A4C 1000BF8F */  lw         $ra, 0x10($sp)
/* 3E28F80 80084A50 1800BD27 */  addiu      $sp, $sp, 0x18
/* 3E28F84 80084A54 0800E003 */  jr         $ra
/* 3E28F88 80084A58 00000000 */   nop
.size MobyUpdate_412_level_11, . - MobyUpdate_412_level_11
