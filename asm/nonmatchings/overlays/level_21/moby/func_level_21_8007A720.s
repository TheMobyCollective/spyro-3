.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_170_level_21
/* 53F6C50 8007A720 0780023C */  lui        $v0, %hi(D_8006E040)
/* 53F6C54 8007A724 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 53F6C58 8007A728 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 53F6C5C 8007A72C 1000B0AF */  sw         $s0, 0x10($sp)
/* 53F6C60 8007A730 21808000 */  addu       $s0, $a0, $zero
/* 53F6C64 8007A734 1800BFAF */  sw         $ra, 0x18($sp)
/* 53F6C68 8007A738 1400B1AF */  sw         $s1, 0x14($sp)
/* 53F6C6C 8007A73C 00140200 */  sll        $v0, $v0, 16
/* 53F6C70 8007A740 03150200 */  sra        $v0, $v0, 20
/* 53F6C74 8007A744 80FF4224 */  addiu      $v0, $v0, -0x80
/* 53F6C78 8007A748 460002A2 */  sb         $v0, 0x46($s0)
/* 53F6C7C 8007A74C 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 53F6C80 8007A750 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 53F6C84 8007A754 0000118E */  lw         $s1, 0x0($s0)
/* 53F6C88 8007A758 02110200 */  srl        $v0, $v0, 4
/* 53F6C8C 8007A75C 450002A2 */  sb         $v0, 0x45($s0)
/* 53F6C90 8007A760 00002392 */  lbu        $v1, 0x0($s1)
/* 53F6C94 8007A764 01000224 */  addiu      $v0, $zero, 0x1
/* 53F6C98 8007A768 3C006214 */  bne        $v1, $v0, .Llevel_21_8007A85C
/* 53F6C9C 8007A76C 00000000 */   nop
/* 53F6CA0 8007A770 0400238E */  lw         $v1, 0x4($s1)
/* 53F6CA4 8007A774 00000000 */  nop
/* 53F6CA8 8007A778 48006290 */  lbu        $v0, 0x48($v1)
/* 53F6CAC 8007A77C 00000000 */  nop
/* 53F6CB0 8007A780 8000422C */  sltiu      $v0, $v0, 0x80
/* 53F6CB4 8007A784 06004010 */  beqz       $v0, .Llevel_21_8007A7A0
/* 53F6CB8 8007A788 00000000 */   nop
/* 53F6CBC 8007A78C 36006384 */  lh         $v1, 0x36($v1)
/* 53F6CC0 8007A790 01002292 */  lbu        $v0, 0x1($s1)
/* 53F6CC4 8007A794 00000000 */  nop
/* 53F6CC8 8007A798 05006210 */  beq        $v1, $v0, .Llevel_21_8007A7B0
/* 53F6CCC 8007A79C 78000224 */   addiu     $v0, $zero, 0x78
.Llevel_21_8007A7A0:
/* 53F6CD0 8007A7A0 C656010C */  jal        func_80055B18
/* 53F6CD4 8007A7A4 21200002 */   addu      $a0, $s0, $zero
/* 53F6CD8 8007A7A8 17EA0108 */  j          .Llevel_21_8007A85C
/* 53F6CDC 8007A7AC 00000000 */   nop
.Llevel_21_8007A7B0:
/* 53F6CE0 8007A7B0 21006214 */  bne        $v1, $v0, .Llevel_21_8007A838
/* 53F6CE4 8007A7B4 00000000 */   nop
/* 53F6CE8 8007A7B8 0780033C */  lui        $v1, %hi(D_8006C648)
/* 53F6CEC 8007A7BC 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 53F6CF0 8007A7C0 4F000292 */  lbu        $v0, 0x4F($s0)
/* 53F6CF4 8007A7C4 80180300 */  sll        $v1, $v1, 2
/* 53F6CF8 8007A7C8 23104300 */  subu       $v0, $v0, $v1
/* 53F6CFC 8007A7CC 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 53F6D00 8007A7D0 FF004230 */  andi       $v0, $v0, 0xFF
/* 53F6D04 8007A7D4 1A00422C */  sltiu      $v0, $v0, 0x1A
/* 53F6D08 8007A7D8 02004010 */  beqz       $v0, .Llevel_21_8007A7E4
/* 53F6D0C 8007A7DC 1A000224 */   addiu     $v0, $zero, 0x1A
/* 53F6D10 8007A7E0 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_21_8007A7E4:
/* 53F6D14 8007A7E4 0780023C */  lui        $v0, %hi(D_80070328 + 0x50)
/* 53F6D18 8007A7E8 7803428C */  lw         $v0, %lo(D_80070328 + 0x50)($v0)
/* 53F6D1C 8007A7EC 00000000 */  nop
/* 53F6D20 8007A7F0 F5FF4224 */  addiu      $v0, $v0, -0xB
/* 53F6D24 8007A7F4 0200422C */  sltiu      $v0, $v0, 0x2
/* 53F6D28 8007A7F8 07004010 */  beqz       $v0, .Llevel_21_8007A818
/* 53F6D2C 8007A7FC 00000000 */   nop
/* 53F6D30 8007A800 0400228E */  lw         $v0, 0x4($s1)
/* 53F6D34 8007A804 00000000 */  nop
/* 53F6D38 8007A808 4D004290 */  lbu        $v0, 0x4D($v0)
/* 53F6D3C 8007A80C 00000000 */  nop
/* 53F6D40 8007A810 09004014 */  bnez       $v0, .Llevel_21_8007A838
/* 53F6D44 8007A814 00000000 */   nop
.Llevel_21_8007A818:
/* 53F6D48 8007A818 0400228E */  lw         $v0, 0x4($s1)
/* 53F6D4C 8007A81C 00000000 */  nop
/* 53F6D50 8007A820 0000428C */  lw         $v0, 0x0($v0)
/* 53F6D54 8007A824 21200002 */  addu       $a0, $s0, $zero
/* 53F6D58 8007A828 C656010C */  jal        func_80055B18
/* 53F6D5C 8007A82C 0A0040A0 */   sb        $zero, 0xA($v0)
/* 53F6D60 8007A830 17EA0108 */  j          .Llevel_21_8007A85C
/* 53F6D64 8007A834 00000000 */   nop
.Llevel_21_8007A838:
/* 53F6D68 8007A838 0400258E */  lw         $a1, 0x4($s1)
/* 53F6D6C 8007A83C 0C000426 */  addiu      $a0, $s0, 0xC
/* 53F6D70 8007A840 5E3C010C */  jal        func_8004F178
/* 53F6D74 8007A844 0C00A524 */   addiu     $a1, $a1, 0xC
/* 53F6D78 8007A848 02002386 */  lh         $v1, 0x2($s1)
/* 53F6D7C 8007A84C 1400028E */  lw         $v0, 0x14($s0)
/* 53F6D80 8007A850 00000000 */  nop
/* 53F6D84 8007A854 21104300 */  addu       $v0, $v0, $v1
/* 53F6D88 8007A858 140002AE */  sw         $v0, 0x14($s0)
.Llevel_21_8007A85C:
/* 53F6D8C 8007A85C 1800BF8F */  lw         $ra, 0x18($sp)
/* 53F6D90 8007A860 1400B18F */  lw         $s1, 0x14($sp)
/* 53F6D94 8007A864 1000B08F */  lw         $s0, 0x10($sp)
/* 53F6D98 8007A868 2000BD27 */  addiu      $sp, $sp, 0x20
/* 53F6D9C 8007A86C 0800E003 */  jr         $ra
/* 53F6DA0 8007A870 00000000 */   nop
.size MobyUpdate_170_level_21, . - MobyUpdate_170_level_21
