.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_170_level_11
/* 3E1DF40 80079A10 0780023C */  lui        $v0, %hi(D_8006E040)
/* 3E1DF44 80079A14 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 3E1DF48 80079A18 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3E1DF4C 80079A1C 1000B0AF */  sw         $s0, 0x10($sp)
/* 3E1DF50 80079A20 21808000 */  addu       $s0, $a0, $zero
/* 3E1DF54 80079A24 1800BFAF */  sw         $ra, 0x18($sp)
/* 3E1DF58 80079A28 1400B1AF */  sw         $s1, 0x14($sp)
/* 3E1DF5C 80079A2C 00140200 */  sll        $v0, $v0, 16
/* 3E1DF60 80079A30 03150200 */  sra        $v0, $v0, 20
/* 3E1DF64 80079A34 80FF4224 */  addiu      $v0, $v0, -0x80
/* 3E1DF68 80079A38 460002A2 */  sb         $v0, 0x46($s0)
/* 3E1DF6C 80079A3C 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 3E1DF70 80079A40 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 3E1DF74 80079A44 0000118E */  lw         $s1, 0x0($s0)
/* 3E1DF78 80079A48 02110200 */  srl        $v0, $v0, 4
/* 3E1DF7C 80079A4C 450002A2 */  sb         $v0, 0x45($s0)
/* 3E1DF80 80079A50 00002392 */  lbu        $v1, 0x0($s1)
/* 3E1DF84 80079A54 01000224 */  addiu      $v0, $zero, 0x1
/* 3E1DF88 80079A58 3C006214 */  bne        $v1, $v0, .Llevel_11_80079B4C
/* 3E1DF8C 80079A5C 00000000 */   nop
/* 3E1DF90 80079A60 0400238E */  lw         $v1, 0x4($s1)
/* 3E1DF94 80079A64 00000000 */  nop
/* 3E1DF98 80079A68 48006290 */  lbu        $v0, 0x48($v1)
/* 3E1DF9C 80079A6C 00000000 */  nop
/* 3E1DFA0 80079A70 8000422C */  sltiu      $v0, $v0, 0x80
/* 3E1DFA4 80079A74 06004010 */  beqz       $v0, .Llevel_11_80079A90
/* 3E1DFA8 80079A78 00000000 */   nop
/* 3E1DFAC 80079A7C 36006384 */  lh         $v1, 0x36($v1)
/* 3E1DFB0 80079A80 01002292 */  lbu        $v0, 0x1($s1)
/* 3E1DFB4 80079A84 00000000 */  nop
/* 3E1DFB8 80079A88 05006210 */  beq        $v1, $v0, .Llevel_11_80079AA0
/* 3E1DFBC 80079A8C 78000224 */   addiu     $v0, $zero, 0x78
.Llevel_11_80079A90:
/* 3E1DFC0 80079A90 C656010C */  jal        func_80055B18
/* 3E1DFC4 80079A94 21200002 */   addu      $a0, $s0, $zero
/* 3E1DFC8 80079A98 D3E60108 */  j          .Llevel_11_80079B4C
/* 3E1DFCC 80079A9C 00000000 */   nop
.Llevel_11_80079AA0:
/* 3E1DFD0 80079AA0 21006214 */  bne        $v1, $v0, .Llevel_11_80079B28
/* 3E1DFD4 80079AA4 00000000 */   nop
/* 3E1DFD8 80079AA8 0780033C */  lui        $v1, %hi(D_8006C648)
/* 3E1DFDC 80079AAC 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 3E1DFE0 80079AB0 4F000292 */  lbu        $v0, 0x4F($s0)
/* 3E1DFE4 80079AB4 80180300 */  sll        $v1, $v1, 2
/* 3E1DFE8 80079AB8 23104300 */  subu       $v0, $v0, $v1
/* 3E1DFEC 80079ABC 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 3E1DFF0 80079AC0 FF004230 */  andi       $v0, $v0, 0xFF
/* 3E1DFF4 80079AC4 1A00422C */  sltiu      $v0, $v0, 0x1A
/* 3E1DFF8 80079AC8 02004010 */  beqz       $v0, .Llevel_11_80079AD4
/* 3E1DFFC 80079ACC 1A000224 */   addiu     $v0, $zero, 0x1A
/* 3E1E000 80079AD0 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_11_80079AD4:
/* 3E1E004 80079AD4 0780023C */  lui        $v0, %hi(D_80070328 + 0x50)
/* 3E1E008 80079AD8 7803428C */  lw         $v0, %lo(D_80070328 + 0x50)($v0)
/* 3E1E00C 80079ADC 00000000 */  nop
/* 3E1E010 80079AE0 F5FF4224 */  addiu      $v0, $v0, -0xB
/* 3E1E014 80079AE4 0200422C */  sltiu      $v0, $v0, 0x2
/* 3E1E018 80079AE8 07004010 */  beqz       $v0, .Llevel_11_80079B08
/* 3E1E01C 80079AEC 00000000 */   nop
/* 3E1E020 80079AF0 0400228E */  lw         $v0, 0x4($s1)
/* 3E1E024 80079AF4 00000000 */  nop
/* 3E1E028 80079AF8 4D004290 */  lbu        $v0, 0x4D($v0)
/* 3E1E02C 80079AFC 00000000 */  nop
/* 3E1E030 80079B00 09004014 */  bnez       $v0, .Llevel_11_80079B28
/* 3E1E034 80079B04 00000000 */   nop
.Llevel_11_80079B08:
/* 3E1E038 80079B08 0400228E */  lw         $v0, 0x4($s1)
/* 3E1E03C 80079B0C 00000000 */  nop
/* 3E1E040 80079B10 0000428C */  lw         $v0, 0x0($v0)
/* 3E1E044 80079B14 21200002 */  addu       $a0, $s0, $zero
/* 3E1E048 80079B18 C656010C */  jal        func_80055B18
/* 3E1E04C 80079B1C 0A0040A0 */   sb        $zero, 0xA($v0)
/* 3E1E050 80079B20 D3E60108 */  j          .Llevel_11_80079B4C
/* 3E1E054 80079B24 00000000 */   nop
.Llevel_11_80079B28:
/* 3E1E058 80079B28 0400258E */  lw         $a1, 0x4($s1)
/* 3E1E05C 80079B2C 0C000426 */  addiu      $a0, $s0, 0xC
/* 3E1E060 80079B30 5E3C010C */  jal        func_8004F178
/* 3E1E064 80079B34 0C00A524 */   addiu     $a1, $a1, 0xC
/* 3E1E068 80079B38 02002386 */  lh         $v1, 0x2($s1)
/* 3E1E06C 80079B3C 1400028E */  lw         $v0, 0x14($s0)
/* 3E1E070 80079B40 00000000 */  nop
/* 3E1E074 80079B44 21104300 */  addu       $v0, $v0, $v1
/* 3E1E078 80079B48 140002AE */  sw         $v0, 0x14($s0)
.Llevel_11_80079B4C:
/* 3E1E07C 80079B4C 1800BF8F */  lw         $ra, 0x18($sp)
/* 3E1E080 80079B50 1400B18F */  lw         $s1, 0x14($sp)
/* 3E1E084 80079B54 1000B08F */  lw         $s0, 0x10($sp)
/* 3E1E088 80079B58 2000BD27 */  addiu      $sp, $sp, 0x20
/* 3E1E08C 80079B5C 0800E003 */  jr         $ra
/* 3E1E090 80079B60 00000000 */   nop
.size MobyUpdate_170_level_11, . - MobyUpdate_170_level_11
