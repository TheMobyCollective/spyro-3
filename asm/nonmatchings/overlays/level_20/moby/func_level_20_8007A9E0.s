.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_170_level_20
/* 50CA710 8007A9E0 0780023C */  lui        $v0, %hi(D_8006E040)
/* 50CA714 8007A9E4 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 50CA718 8007A9E8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 50CA71C 8007A9EC 1000B0AF */  sw         $s0, 0x10($sp)
/* 50CA720 8007A9F0 21808000 */  addu       $s0, $a0, $zero
/* 50CA724 8007A9F4 1800BFAF */  sw         $ra, 0x18($sp)
/* 50CA728 8007A9F8 1400B1AF */  sw         $s1, 0x14($sp)
/* 50CA72C 8007A9FC 00140200 */  sll        $v0, $v0, 16
/* 50CA730 8007AA00 03150200 */  sra        $v0, $v0, 20
/* 50CA734 8007AA04 80FF4224 */  addiu      $v0, $v0, -0x80
/* 50CA738 8007AA08 460002A2 */  sb         $v0, 0x46($s0)
/* 50CA73C 8007AA0C 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 50CA740 8007AA10 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 50CA744 8007AA14 0000118E */  lw         $s1, 0x0($s0)
/* 50CA748 8007AA18 02110200 */  srl        $v0, $v0, 4
/* 50CA74C 8007AA1C 450002A2 */  sb         $v0, 0x45($s0)
/* 50CA750 8007AA20 00002392 */  lbu        $v1, 0x0($s1)
/* 50CA754 8007AA24 01000224 */  addiu      $v0, $zero, 0x1
/* 50CA758 8007AA28 3C006214 */  bne        $v1, $v0, .Llevel_20_8007AB1C
/* 50CA75C 8007AA2C 00000000 */   nop
/* 50CA760 8007AA30 0400238E */  lw         $v1, 0x4($s1)
/* 50CA764 8007AA34 00000000 */  nop
/* 50CA768 8007AA38 48006290 */  lbu        $v0, 0x48($v1)
/* 50CA76C 8007AA3C 00000000 */  nop
/* 50CA770 8007AA40 8000422C */  sltiu      $v0, $v0, 0x80
/* 50CA774 8007AA44 06004010 */  beqz       $v0, .Llevel_20_8007AA60
/* 50CA778 8007AA48 00000000 */   nop
/* 50CA77C 8007AA4C 36006384 */  lh         $v1, 0x36($v1)
/* 50CA780 8007AA50 01002292 */  lbu        $v0, 0x1($s1)
/* 50CA784 8007AA54 00000000 */  nop
/* 50CA788 8007AA58 05006210 */  beq        $v1, $v0, .Llevel_20_8007AA70
/* 50CA78C 8007AA5C 78000224 */   addiu     $v0, $zero, 0x78
.Llevel_20_8007AA60:
/* 50CA790 8007AA60 C656010C */  jal        func_80055B18
/* 50CA794 8007AA64 21200002 */   addu      $a0, $s0, $zero
/* 50CA798 8007AA68 C7EA0108 */  j          .Llevel_20_8007AB1C
/* 50CA79C 8007AA6C 00000000 */   nop
.Llevel_20_8007AA70:
/* 50CA7A0 8007AA70 21006214 */  bne        $v1, $v0, .Llevel_20_8007AAF8
/* 50CA7A4 8007AA74 00000000 */   nop
/* 50CA7A8 8007AA78 0780033C */  lui        $v1, %hi(D_8006C648)
/* 50CA7AC 8007AA7C 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 50CA7B0 8007AA80 4F000292 */  lbu        $v0, 0x4F($s0)
/* 50CA7B4 8007AA84 80180300 */  sll        $v1, $v1, 2
/* 50CA7B8 8007AA88 23104300 */  subu       $v0, $v0, $v1
/* 50CA7BC 8007AA8C 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 50CA7C0 8007AA90 FF004230 */  andi       $v0, $v0, 0xFF
/* 50CA7C4 8007AA94 1A00422C */  sltiu      $v0, $v0, 0x1A
/* 50CA7C8 8007AA98 02004010 */  beqz       $v0, .Llevel_20_8007AAA4
/* 50CA7CC 8007AA9C 1A000224 */   addiu     $v0, $zero, 0x1A
/* 50CA7D0 8007AAA0 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_20_8007AAA4:
/* 50CA7D4 8007AAA4 0780023C */  lui        $v0, %hi(D_80070328 + 0x50)
/* 50CA7D8 8007AAA8 7803428C */  lw         $v0, %lo(D_80070328 + 0x50)($v0)
/* 50CA7DC 8007AAAC 00000000 */  nop
/* 50CA7E0 8007AAB0 F5FF4224 */  addiu      $v0, $v0, -0xB
/* 50CA7E4 8007AAB4 0200422C */  sltiu      $v0, $v0, 0x2
/* 50CA7E8 8007AAB8 07004010 */  beqz       $v0, .Llevel_20_8007AAD8
/* 50CA7EC 8007AABC 00000000 */   nop
/* 50CA7F0 8007AAC0 0400228E */  lw         $v0, 0x4($s1)
/* 50CA7F4 8007AAC4 00000000 */  nop
/* 50CA7F8 8007AAC8 4D004290 */  lbu        $v0, 0x4D($v0)
/* 50CA7FC 8007AACC 00000000 */  nop
/* 50CA800 8007AAD0 09004014 */  bnez       $v0, .Llevel_20_8007AAF8
/* 50CA804 8007AAD4 00000000 */   nop
.Llevel_20_8007AAD8:
/* 50CA808 8007AAD8 0400228E */  lw         $v0, 0x4($s1)
/* 50CA80C 8007AADC 00000000 */  nop
/* 50CA810 8007AAE0 0000428C */  lw         $v0, 0x0($v0)
/* 50CA814 8007AAE4 21200002 */  addu       $a0, $s0, $zero
/* 50CA818 8007AAE8 C656010C */  jal        func_80055B18
/* 50CA81C 8007AAEC 0A0040A0 */   sb        $zero, 0xA($v0)
/* 50CA820 8007AAF0 C7EA0108 */  j          .Llevel_20_8007AB1C
/* 50CA824 8007AAF4 00000000 */   nop
.Llevel_20_8007AAF8:
/* 50CA828 8007AAF8 0400258E */  lw         $a1, 0x4($s1)
/* 50CA82C 8007AAFC 0C000426 */  addiu      $a0, $s0, 0xC
/* 50CA830 8007AB00 5E3C010C */  jal        func_8004F178
/* 50CA834 8007AB04 0C00A524 */   addiu     $a1, $a1, 0xC
/* 50CA838 8007AB08 02002386 */  lh         $v1, 0x2($s1)
/* 50CA83C 8007AB0C 1400028E */  lw         $v0, 0x14($s0)
/* 50CA840 8007AB10 00000000 */  nop
/* 50CA844 8007AB14 21104300 */  addu       $v0, $v0, $v1
/* 50CA848 8007AB18 140002AE */  sw         $v0, 0x14($s0)
.Llevel_20_8007AB1C:
/* 50CA84C 8007AB1C 1800BF8F */  lw         $ra, 0x18($sp)
/* 50CA850 8007AB20 1400B18F */  lw         $s1, 0x14($sp)
/* 50CA854 8007AB24 1000B08F */  lw         $s0, 0x10($sp)
/* 50CA858 8007AB28 2000BD27 */  addiu      $sp, $sp, 0x20
/* 50CA85C 8007AB2C 0800E003 */  jr         $ra
/* 50CA860 8007AB30 00000000 */   nop
.size MobyUpdate_170_level_20, . - MobyUpdate_170_level_20
