.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_65_level_24
/* 5DF7C9C 8007CF6C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 5DF7CA0 8007CF70 1400B1AF */  sw         $s1, 0x14($sp)
/* 5DF7CA4 8007CF74 21888000 */  addu       $s1, $a0, $zero
/* 5DF7CA8 8007CF78 1800BFAF */  sw         $ra, 0x18($sp)
/* 5DF7CAC 8007CF7C 1000B0AF */  sw         $s0, 0x10($sp)
/* 5DF7CB0 8007CF80 3A002392 */  lbu        $v1, 0x3A($s1)
/* 5DF7CB4 8007CF84 00000000 */  nop
/* 5DF7CB8 8007CF88 40100300 */  sll        $v0, $v1, 1
/* 5DF7CBC 8007CF8C 21104300 */  addu       $v0, $v0, $v1
/* 5DF7CC0 8007CF90 80100200 */  sll        $v0, $v0, 2
/* 5DF7CC4 8007CF94 23104300 */  subu       $v0, $v0, $v1
/* 5DF7CC8 8007CF98 0780033C */  lui        $v1, %hi(D_8006C550)
/* 5DF7CCC 8007CF9C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 5DF7CD0 8007CFA0 C0100200 */  sll        $v0, $v0, 3
/* 5DF7CD4 8007CFA4 21806200 */  addu       $s0, $v1, $v0
/* 5DF7CD8 8007CFA8 3D000392 */  lbu        $v1, 0x3D($s0)
/* 5DF7CDC 8007CFAC 06000224 */  addiu      $v0, $zero, 0x6
/* 5DF7CE0 8007CFB0 05006210 */  beq        $v1, $v0, .Llevel_24_8007CFC8
/* 5DF7CE4 8007CFB4 00000000 */   nop
/* 5DF7CE8 8007CFB8 C656010C */  jal        func_80055B18
/* 5DF7CEC 8007CFBC 00000000 */   nop
/* 5DF7CF0 8007CFC0 FEF30108 */  j          .Llevel_24_8007CFF8
/* 5DF7CF4 8007CFC4 00000000 */   nop
.Llevel_24_8007CFC8:
/* 5DF7CF8 8007CFC8 0C002426 */  addiu      $a0, $s1, 0xC
/* 5DF7CFC 8007CFCC 5E3C010C */  jal        func_8004F178
/* 5DF7D00 8007CFD0 0C000526 */   addiu     $a1, $s0, 0xC
/* 5DF7D04 8007CFD4 44000292 */  lbu        $v0, 0x44($s0)
/* 5DF7D08 8007CFD8 00000000 */  nop
/* 5DF7D0C 8007CFDC 440022A2 */  sb         $v0, 0x44($s1)
/* 5DF7D10 8007CFE0 45000292 */  lbu        $v0, 0x45($s0)
/* 5DF7D14 8007CFE4 00000000 */  nop
/* 5DF7D18 8007CFE8 450022A2 */  sb         $v0, 0x45($s1)
/* 5DF7D1C 8007CFEC 46000292 */  lbu        $v0, 0x46($s0)
/* 5DF7D20 8007CFF0 00000000 */  nop
/* 5DF7D24 8007CFF4 460022A2 */  sb         $v0, 0x46($s1)
.Llevel_24_8007CFF8:
/* 5DF7D28 8007CFF8 1800BF8F */  lw         $ra, 0x18($sp)
/* 5DF7D2C 8007CFFC 1400B18F */  lw         $s1, 0x14($sp)
/* 5DF7D30 8007D000 1000B08F */  lw         $s0, 0x10($sp)
/* 5DF7D34 8007D004 2000BD27 */  addiu      $sp, $sp, 0x20
/* 5DF7D38 8007D008 0800E003 */  jr         $ra
/* 5DF7D3C 8007D00C 00000000 */   nop
.size MobyUpdate_65_level_24, . - MobyUpdate_65_level_24
