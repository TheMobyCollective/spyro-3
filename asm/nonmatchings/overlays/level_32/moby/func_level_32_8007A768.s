.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1002_level_32
/* 6DE1C98 8007A768 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 6DE1C9C 8007A76C 21108000 */  addu       $v0, $a0, $zero
/* 6DE1CA0 8007A770 0780053C */  lui        $a1, %hi(D_80070328)
/* 6DE1CA4 8007A774 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 6DE1CA8 8007A778 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 6DE1CAC 8007A77C 1800B2AF */  sw         $s2, 0x18($sp)
/* 6DE1CB0 8007A780 1400B1AF */  sw         $s1, 0x14($sp)
/* 6DE1CB4 8007A784 1000B0AF */  sw         $s0, 0x10($sp)
/* 6DE1CB8 8007A788 0000528C */  lw         $s2, 0x0($v0)
/* 6DE1CBC 8007A78C 5E3C010C */  jal        func_8004F178
/* 6DE1CC0 8007A790 0C004424 */   addiu     $a0, $v0, 0xC
/* 6DE1CC4 8007A794 04000524 */  addiu      $a1, $zero, 0x4
/* 6DE1CC8 8007A798 69D6000C */  jal        func_800359A4
/* 6DE1CCC 8007A79C 04004426 */   addiu     $a0, $s2, 0x4
/* 6DE1CD0 8007A7A0 4D004010 */  beqz       $v0, .Llevel_32_8007A8D8
/* 6DE1CD4 8007A7A4 00000000 */   nop
/* 6DE1CD8 8007A7A8 0780113C */  lui        $s1, %hi(D_8006C550)
/* 6DE1CDC 8007A7AC 50C5318E */  lw         $s1, %lo(D_8006C550)($s1)
/* 6DE1CE0 8007A7B0 0780023C */  lui        $v0, %hi(D_8006C704)
/* 6DE1CE4 8007A7B4 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 6DE1CE8 8007A7B8 0800438E */  lw         $v1, 0x8($s2)
/* 6DE1CEC 8007A7BC 2B102202 */  sltu       $v0, $s1, $v0
/* 6DE1CF0 8007A7C0 45004010 */  beqz       $v0, .Llevel_32_8007A8D8
/* 6DE1CF4 8007A7C4 040043AE */   sw        $v1, 0x4($s2)
/* 6DE1CF8 8007A7C8 45003026 */  addiu      $s0, $s1, 0x45
.Llevel_32_8007A7CC:
/* 6DE1CFC 8007A7CC F1FF0386 */  lh         $v1, -0xF($s0)
/* 6DE1D00 8007A7D0 0000428E */  lw         $v0, 0x0($s2)
/* 6DE1D04 8007A7D4 00000000 */  nop
/* 6DE1D08 8007A7D8 39006214 */  bne        $v1, $v0, .Llevel_32_8007A8C0
/* 6DE1D0C 8007A7DC 00000000 */   nop
/* 6DE1D10 8007A7E0 03000292 */  lbu        $v0, 0x3($s0)
/* 6DE1D14 8007A7E4 00000000 */  nop
/* 6DE1D18 8007A7E8 8000422C */  sltiu      $v0, $v0, 0x80
/* 6DE1D1C 8007A7EC 34004014 */  bnez       $v0, .Llevel_32_8007A8C0
/* 6DE1D20 8007A7F0 00000000 */   nop
/* 6DE1D24 8007A7F4 0E000292 */  lbu        $v0, 0xE($s0)
/* 6DE1D28 8007A7F8 0780033C */  lui        $v1, %hi(D_8006C7C4)
/* 6DE1D2C 8007A7FC C4C7638C */  lw         $v1, %lo(D_8006C7C4)($v1)
/* 6DE1D30 8007A800 00000000 */  nop
/* 6DE1D34 8007A804 07106200 */  srav       $v0, $v0, $v1
/* 6DE1D38 8007A808 01004230 */  andi       $v0, $v0, 0x1
/* 6DE1D3C 8007A80C 2C004010 */  beqz       $v0, .Llevel_32_8007A8C0
/* 6DE1D40 8007A810 00000000 */   nop
/* 6DE1D44 8007A814 0000258E */  lw         $a1, 0x0($s1)
/* 6DE1D48 8007A818 0780043C */  lui        $a0, %hi(D_80070328)
/* 6DE1D4C 8007A81C 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 6DE1D50 8007A820 CD3C010C */  jal        func_8004F334
/* 6DE1D54 8007A824 00000000 */   nop
/* 6DE1D58 8007A828 01604228 */  slti       $v0, $v0, 0x6001
/* 6DE1D5C 8007A82C 24004014 */  bnez       $v0, .Llevel_32_8007A8C0
/* 6DE1D60 8007A830 00000000 */   nop
/* 6DE1D64 8007A834 0000258E */  lw         $a1, 0x0($s1)
/* 6DE1D68 8007A838 5E3C010C */  jal        func_8004F178
/* 6DE1D6C 8007A83C 0C002426 */   addiu     $a0, $s1, 0xC
/* 6DE1D70 8007A840 0957010C */  jal        func_80055C24
/* 6DE1D74 8007A844 21202002 */   addu      $a0, $s1, $zero
/* 6DE1D78 8007A848 F1FF0286 */  lh         $v0, -0xF($s0)
/* 6DE1D7C 8007A84C D3FF00AE */  sw         $zero, -0x2D($s0)
/* 6DE1D80 8007A850 0C0000A2 */  sb         $zero, 0xC($s0)
/* 6DE1D84 8007A854 030000A2 */  sb         $zero, 0x3($s0)
/* 6DE1D88 8007A858 FDFF00A2 */  sb         $zero, -0x3($s0)
/* 6DE1D8C 8007A85C 80100200 */  sll        $v0, $v0, 2
/* 6DE1D90 8007A860 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 6DE1D94 8007A864 21082200 */  addu       $at, $at, $v0
/* 6DE1D98 8007A868 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 6DE1D9C 8007A86C 00000000 */  nop
/* 6DE1DA0 8007A870 3C00428C */  lw         $v0, 0x3C($v0)
/* 6DE1DA4 8007A874 21202002 */  addu       $a0, $s1, $zero
/* 6DE1DA8 8007A878 00004390 */  lbu        $v1, 0x0($v0)
/* 6DE1DAC 8007A87C 01000224 */  addiu      $v0, $zero, 0x1
/* 6DE1DB0 8007A880 F7FF00A2 */  sb         $zero, -0x9($s0)
/* 6DE1DB4 8007A884 F8FF00A2 */  sb         $zero, -0x8($s0)
/* 6DE1DB8 8007A888 F9FF00A2 */  sb         $zero, -0x7($s0)
/* 6DE1DBC 8007A88C FAFF02A2 */  sb         $v0, -0x6($s0)
/* 6DE1DC0 8007A890 FFFF00A2 */  sb         $zero, -0x1($s0)
/* 6DE1DC4 8007A894 000000A2 */  sb         $zero, 0x0($s0)
/* 6DE1DC8 8007A898 0200632C */  sltiu      $v1, $v1, 0x2
/* 6DE1DCC 8007A89C 01006338 */  xori       $v1, $v1, 0x1
/* 6DE1DD0 8007A8A0 23180300 */  negu       $v1, $v1
/* 6DE1DD4 8007A8A4 30006330 */  andi       $v1, $v1, 0x30
/* 6DE1DD8 8007A8A8 4ED7000C */  jal        func_80035D38
/* 6DE1DDC 8007A8AC FBFF03A2 */   sb        $v1, -0x5($s0)
/* 6DE1DE0 8007A8B0 A758010C */  jal        func_8005629C
/* 6DE1DE4 8007A8B4 21202002 */   addu      $a0, $s1, $zero
/* 6DE1DE8 8007A8B8 36EA0108 */  j          .Llevel_32_8007A8D8
/* 6DE1DEC 8007A8BC 00000000 */   nop
.Llevel_32_8007A8C0:
/* 6DE1DF0 8007A8C0 0780023C */  lui        $v0, %hi(D_8006C704)
/* 6DE1DF4 8007A8C4 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 6DE1DF8 8007A8C8 58003126 */  addiu      $s1, $s1, 0x58
/* 6DE1DFC 8007A8CC 2B102202 */  sltu       $v0, $s1, $v0
/* 6DE1E00 8007A8D0 BEFF4014 */  bnez       $v0, .Llevel_32_8007A7CC
/* 6DE1E04 8007A8D4 58001026 */   addiu     $s0, $s0, 0x58
.Llevel_32_8007A8D8:
/* 6DE1E08 8007A8D8 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 6DE1E0C 8007A8DC 1800B28F */  lw         $s2, 0x18($sp)
/* 6DE1E10 8007A8E0 1400B18F */  lw         $s1, 0x14($sp)
/* 6DE1E14 8007A8E4 1000B08F */  lw         $s0, 0x10($sp)
/* 6DE1E18 8007A8E8 2000BD27 */  addiu      $sp, $sp, 0x20
/* 6DE1E1C 8007A8EC 0800E003 */  jr         $ra
/* 6DE1E20 8007A8F0 00000000 */   nop
.size MobyUpdate_1002_level_32, . - MobyUpdate_1002_level_32
