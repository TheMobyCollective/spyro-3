.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_170_level_10
/* 3ADE6DC 800799AC 0780023C */  lui        $v0, %hi(D_8006E040)
/* 3ADE6E0 800799B0 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 3ADE6E4 800799B4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3ADE6E8 800799B8 1000B0AF */  sw         $s0, 0x10($sp)
/* 3ADE6EC 800799BC 21808000 */  addu       $s0, $a0, $zero
/* 3ADE6F0 800799C0 1800BFAF */  sw         $ra, 0x18($sp)
/* 3ADE6F4 800799C4 1400B1AF */  sw         $s1, 0x14($sp)
/* 3ADE6F8 800799C8 00140200 */  sll        $v0, $v0, 16
/* 3ADE6FC 800799CC 03150200 */  sra        $v0, $v0, 20
/* 3ADE700 800799D0 80FF4224 */  addiu      $v0, $v0, -0x80
/* 3ADE704 800799D4 460002A2 */  sb         $v0, 0x46($s0)
/* 3ADE708 800799D8 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 3ADE70C 800799DC 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 3ADE710 800799E0 0000118E */  lw         $s1, 0x0($s0)
/* 3ADE714 800799E4 02110200 */  srl        $v0, $v0, 4
/* 3ADE718 800799E8 450002A2 */  sb         $v0, 0x45($s0)
/* 3ADE71C 800799EC 00002392 */  lbu        $v1, 0x0($s1)
/* 3ADE720 800799F0 01000224 */  addiu      $v0, $zero, 0x1
/* 3ADE724 800799F4 3C006214 */  bne        $v1, $v0, .Llevel_10_80079AE8
/* 3ADE728 800799F8 00000000 */   nop
/* 3ADE72C 800799FC 0400238E */  lw         $v1, 0x4($s1)
/* 3ADE730 80079A00 00000000 */  nop
/* 3ADE734 80079A04 48006290 */  lbu        $v0, 0x48($v1)
/* 3ADE738 80079A08 00000000 */  nop
/* 3ADE73C 80079A0C 8000422C */  sltiu      $v0, $v0, 0x80
/* 3ADE740 80079A10 06004010 */  beqz       $v0, .Llevel_10_80079A2C
/* 3ADE744 80079A14 00000000 */   nop
/* 3ADE748 80079A18 36006384 */  lh         $v1, 0x36($v1)
/* 3ADE74C 80079A1C 01002292 */  lbu        $v0, 0x1($s1)
/* 3ADE750 80079A20 00000000 */  nop
/* 3ADE754 80079A24 05006210 */  beq        $v1, $v0, .Llevel_10_80079A3C
/* 3ADE758 80079A28 78000224 */   addiu     $v0, $zero, 0x78
.Llevel_10_80079A2C:
/* 3ADE75C 80079A2C C656010C */  jal        func_80055B18
/* 3ADE760 80079A30 21200002 */   addu      $a0, $s0, $zero
/* 3ADE764 80079A34 BAE60108 */  j          .Llevel_10_80079AE8
/* 3ADE768 80079A38 00000000 */   nop
.Llevel_10_80079A3C:
/* 3ADE76C 80079A3C 21006214 */  bne        $v1, $v0, .Llevel_10_80079AC4
/* 3ADE770 80079A40 00000000 */   nop
/* 3ADE774 80079A44 0780033C */  lui        $v1, %hi(D_8006C648)
/* 3ADE778 80079A48 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 3ADE77C 80079A4C 4F000292 */  lbu        $v0, 0x4F($s0)
/* 3ADE780 80079A50 80180300 */  sll        $v1, $v1, 2
/* 3ADE784 80079A54 23104300 */  subu       $v0, $v0, $v1
/* 3ADE788 80079A58 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 3ADE78C 80079A5C FF004230 */  andi       $v0, $v0, 0xFF
/* 3ADE790 80079A60 1A00422C */  sltiu      $v0, $v0, 0x1A
/* 3ADE794 80079A64 02004010 */  beqz       $v0, .Llevel_10_80079A70
/* 3ADE798 80079A68 1A000224 */   addiu     $v0, $zero, 0x1A
/* 3ADE79C 80079A6C 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_10_80079A70:
/* 3ADE7A0 80079A70 0780023C */  lui        $v0, %hi(D_80070328 + 0x50)
/* 3ADE7A4 80079A74 7803428C */  lw         $v0, %lo(D_80070328 + 0x50)($v0)
/* 3ADE7A8 80079A78 00000000 */  nop
/* 3ADE7AC 80079A7C F5FF4224 */  addiu      $v0, $v0, -0xB
/* 3ADE7B0 80079A80 0200422C */  sltiu      $v0, $v0, 0x2
/* 3ADE7B4 80079A84 07004010 */  beqz       $v0, .Llevel_10_80079AA4
/* 3ADE7B8 80079A88 00000000 */   nop
/* 3ADE7BC 80079A8C 0400228E */  lw         $v0, 0x4($s1)
/* 3ADE7C0 80079A90 00000000 */  nop
/* 3ADE7C4 80079A94 4D004290 */  lbu        $v0, 0x4D($v0)
/* 3ADE7C8 80079A98 00000000 */  nop
/* 3ADE7CC 80079A9C 09004014 */  bnez       $v0, .Llevel_10_80079AC4
/* 3ADE7D0 80079AA0 00000000 */   nop
.Llevel_10_80079AA4:
/* 3ADE7D4 80079AA4 0400228E */  lw         $v0, 0x4($s1)
/* 3ADE7D8 80079AA8 00000000 */  nop
/* 3ADE7DC 80079AAC 0000428C */  lw         $v0, 0x0($v0)
/* 3ADE7E0 80079AB0 21200002 */  addu       $a0, $s0, $zero
/* 3ADE7E4 80079AB4 C656010C */  jal        func_80055B18
/* 3ADE7E8 80079AB8 0A0040A0 */   sb        $zero, 0xA($v0)
/* 3ADE7EC 80079ABC BAE60108 */  j          .Llevel_10_80079AE8
/* 3ADE7F0 80079AC0 00000000 */   nop
.Llevel_10_80079AC4:
/* 3ADE7F4 80079AC4 0400258E */  lw         $a1, 0x4($s1)
/* 3ADE7F8 80079AC8 0C000426 */  addiu      $a0, $s0, 0xC
/* 3ADE7FC 80079ACC 5E3C010C */  jal        func_8004F178
/* 3ADE800 80079AD0 0C00A524 */   addiu     $a1, $a1, 0xC
/* 3ADE804 80079AD4 02002386 */  lh         $v1, 0x2($s1)
/* 3ADE808 80079AD8 1400028E */  lw         $v0, 0x14($s0)
/* 3ADE80C 80079ADC 00000000 */  nop
/* 3ADE810 80079AE0 21104300 */  addu       $v0, $v0, $v1
/* 3ADE814 80079AE4 140002AE */  sw         $v0, 0x14($s0)
.Llevel_10_80079AE8:
/* 3ADE818 80079AE8 1800BF8F */  lw         $ra, 0x18($sp)
/* 3ADE81C 80079AEC 1400B18F */  lw         $s1, 0x14($sp)
/* 3ADE820 80079AF0 1000B08F */  lw         $s0, 0x10($sp)
/* 3ADE824 80079AF4 2000BD27 */  addiu      $sp, $sp, 0x20
/* 3ADE828 80079AF8 0800E003 */  jr         $ra
/* 3ADE82C 80079AFC 00000000 */   nop
.size MobyUpdate_170_level_10, . - MobyUpdate_170_level_10
