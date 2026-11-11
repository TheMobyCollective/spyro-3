.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1002_level_22
/* 576A8B4 8007AB84 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 576A8B8 8007AB88 21108000 */  addu       $v0, $a0, $zero
/* 576A8BC 8007AB8C 0780053C */  lui        $a1, %hi(D_80070328)
/* 576A8C0 8007AB90 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 576A8C4 8007AB94 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 576A8C8 8007AB98 1800B2AF */  sw         $s2, 0x18($sp)
/* 576A8CC 8007AB9C 1400B1AF */  sw         $s1, 0x14($sp)
/* 576A8D0 8007ABA0 1000B0AF */  sw         $s0, 0x10($sp)
/* 576A8D4 8007ABA4 0000528C */  lw         $s2, 0x0($v0)
/* 576A8D8 8007ABA8 5E3C010C */  jal        func_8004F178
/* 576A8DC 8007ABAC 0C004424 */   addiu     $a0, $v0, 0xC
/* 576A8E0 8007ABB0 04000524 */  addiu      $a1, $zero, 0x4
/* 576A8E4 8007ABB4 69D6000C */  jal        func_800359A4
/* 576A8E8 8007ABB8 04004426 */   addiu     $a0, $s2, 0x4
/* 576A8EC 8007ABBC 4D004010 */  beqz       $v0, .Llevel_22_8007ACF4
/* 576A8F0 8007ABC0 00000000 */   nop
/* 576A8F4 8007ABC4 0780113C */  lui        $s1, %hi(D_8006C550)
/* 576A8F8 8007ABC8 50C5318E */  lw         $s1, %lo(D_8006C550)($s1)
/* 576A8FC 8007ABCC 0780023C */  lui        $v0, %hi(D_8006C704)
/* 576A900 8007ABD0 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 576A904 8007ABD4 0800438E */  lw         $v1, 0x8($s2)
/* 576A908 8007ABD8 2B102202 */  sltu       $v0, $s1, $v0
/* 576A90C 8007ABDC 45004010 */  beqz       $v0, .Llevel_22_8007ACF4
/* 576A910 8007ABE0 040043AE */   sw        $v1, 0x4($s2)
/* 576A914 8007ABE4 45003026 */  addiu      $s0, $s1, 0x45
.Llevel_22_8007ABE8:
/* 576A918 8007ABE8 F1FF0386 */  lh         $v1, -0xF($s0)
/* 576A91C 8007ABEC 0000428E */  lw         $v0, 0x0($s2)
/* 576A920 8007ABF0 00000000 */  nop
/* 576A924 8007ABF4 39006214 */  bne        $v1, $v0, .Llevel_22_8007ACDC
/* 576A928 8007ABF8 00000000 */   nop
/* 576A92C 8007ABFC 03000292 */  lbu        $v0, 0x3($s0)
/* 576A930 8007AC00 00000000 */  nop
/* 576A934 8007AC04 8000422C */  sltiu      $v0, $v0, 0x80
/* 576A938 8007AC08 34004014 */  bnez       $v0, .Llevel_22_8007ACDC
/* 576A93C 8007AC0C 00000000 */   nop
/* 576A940 8007AC10 0E000292 */  lbu        $v0, 0xE($s0)
/* 576A944 8007AC14 0780033C */  lui        $v1, %hi(D_8006C7C4)
/* 576A948 8007AC18 C4C7638C */  lw         $v1, %lo(D_8006C7C4)($v1)
/* 576A94C 8007AC1C 00000000 */  nop
/* 576A950 8007AC20 07106200 */  srav       $v0, $v0, $v1
/* 576A954 8007AC24 01004230 */  andi       $v0, $v0, 0x1
/* 576A958 8007AC28 2C004010 */  beqz       $v0, .Llevel_22_8007ACDC
/* 576A95C 8007AC2C 00000000 */   nop
/* 576A960 8007AC30 0000258E */  lw         $a1, 0x0($s1)
/* 576A964 8007AC34 0780043C */  lui        $a0, %hi(D_80070328)
/* 576A968 8007AC38 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 576A96C 8007AC3C CD3C010C */  jal        func_8004F334
/* 576A970 8007AC40 00000000 */   nop
/* 576A974 8007AC44 01604228 */  slti       $v0, $v0, 0x6001
/* 576A978 8007AC48 24004014 */  bnez       $v0, .Llevel_22_8007ACDC
/* 576A97C 8007AC4C 00000000 */   nop
/* 576A980 8007AC50 0000258E */  lw         $a1, 0x0($s1)
/* 576A984 8007AC54 5E3C010C */  jal        func_8004F178
/* 576A988 8007AC58 0C002426 */   addiu     $a0, $s1, 0xC
/* 576A98C 8007AC5C 0957010C */  jal        func_80055C24
/* 576A990 8007AC60 21202002 */   addu      $a0, $s1, $zero
/* 576A994 8007AC64 F1FF0286 */  lh         $v0, -0xF($s0)
/* 576A998 8007AC68 D3FF00AE */  sw         $zero, -0x2D($s0)
/* 576A99C 8007AC6C 0C0000A2 */  sb         $zero, 0xC($s0)
/* 576A9A0 8007AC70 030000A2 */  sb         $zero, 0x3($s0)
/* 576A9A4 8007AC74 FDFF00A2 */  sb         $zero, -0x3($s0)
/* 576A9A8 8007AC78 80100200 */  sll        $v0, $v0, 2
/* 576A9AC 8007AC7C 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 576A9B0 8007AC80 21082200 */  addu       $at, $at, $v0
/* 576A9B4 8007AC84 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 576A9B8 8007AC88 00000000 */  nop
/* 576A9BC 8007AC8C 3C00428C */  lw         $v0, 0x3C($v0)
/* 576A9C0 8007AC90 21202002 */  addu       $a0, $s1, $zero
/* 576A9C4 8007AC94 00004390 */  lbu        $v1, 0x0($v0)
/* 576A9C8 8007AC98 01000224 */  addiu      $v0, $zero, 0x1
/* 576A9CC 8007AC9C F7FF00A2 */  sb         $zero, -0x9($s0)
/* 576A9D0 8007ACA0 F8FF00A2 */  sb         $zero, -0x8($s0)
/* 576A9D4 8007ACA4 F9FF00A2 */  sb         $zero, -0x7($s0)
/* 576A9D8 8007ACA8 FAFF02A2 */  sb         $v0, -0x6($s0)
/* 576A9DC 8007ACAC FFFF00A2 */  sb         $zero, -0x1($s0)
/* 576A9E0 8007ACB0 000000A2 */  sb         $zero, 0x0($s0)
/* 576A9E4 8007ACB4 0200632C */  sltiu      $v1, $v1, 0x2
/* 576A9E8 8007ACB8 01006338 */  xori       $v1, $v1, 0x1
/* 576A9EC 8007ACBC 23180300 */  negu       $v1, $v1
/* 576A9F0 8007ACC0 30006330 */  andi       $v1, $v1, 0x30
/* 576A9F4 8007ACC4 4ED7000C */  jal        func_80035D38
/* 576A9F8 8007ACC8 FBFF03A2 */   sb        $v1, -0x5($s0)
/* 576A9FC 8007ACCC A758010C */  jal        func_8005629C
/* 576AA00 8007ACD0 21202002 */   addu      $a0, $s1, $zero
/* 576AA04 8007ACD4 3DEB0108 */  j          .Llevel_22_8007ACF4
/* 576AA08 8007ACD8 00000000 */   nop
.Llevel_22_8007ACDC:
/* 576AA0C 8007ACDC 0780023C */  lui        $v0, %hi(D_8006C704)
/* 576AA10 8007ACE0 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 576AA14 8007ACE4 58003126 */  addiu      $s1, $s1, 0x58
/* 576AA18 8007ACE8 2B102202 */  sltu       $v0, $s1, $v0
/* 576AA1C 8007ACEC BEFF4014 */  bnez       $v0, .Llevel_22_8007ABE8
/* 576AA20 8007ACF0 58001026 */   addiu     $s0, $s0, 0x58
.Llevel_22_8007ACF4:
/* 576AA24 8007ACF4 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 576AA28 8007ACF8 1800B28F */  lw         $s2, 0x18($sp)
/* 576AA2C 8007ACFC 1400B18F */  lw         $s1, 0x14($sp)
/* 576AA30 8007AD00 1000B08F */  lw         $s0, 0x10($sp)
/* 576AA34 8007AD04 2000BD27 */  addiu      $sp, $sp, 0x20
/* 576AA38 8007AD08 0800E003 */  jr         $ra
/* 576AA3C 8007AD0C 00000000 */   nop
.size MobyUpdate_1002_level_22, . - MobyUpdate_1002_level_22
