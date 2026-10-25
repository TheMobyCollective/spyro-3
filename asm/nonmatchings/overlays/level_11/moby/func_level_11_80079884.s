.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1002_level_11
/* 3E1DDB4 80079884 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3E1DDB8 80079888 21108000 */  addu       $v0, $a0, $zero
/* 3E1DDBC 8007988C 0780053C */  lui        $a1, %hi(D_80070328)
/* 3E1DDC0 80079890 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 3E1DDC4 80079894 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 3E1DDC8 80079898 1800B2AF */  sw         $s2, 0x18($sp)
/* 3E1DDCC 8007989C 1400B1AF */  sw         $s1, 0x14($sp)
/* 3E1DDD0 800798A0 1000B0AF */  sw         $s0, 0x10($sp)
/* 3E1DDD4 800798A4 0000528C */  lw         $s2, 0x0($v0)
/* 3E1DDD8 800798A8 5E3C010C */  jal        func_8004F178
/* 3E1DDDC 800798AC 0C004424 */   addiu     $a0, $v0, 0xC
/* 3E1DDE0 800798B0 04000524 */  addiu      $a1, $zero, 0x4
/* 3E1DDE4 800798B4 69D6000C */  jal        func_800359A4
/* 3E1DDE8 800798B8 04004426 */   addiu     $a0, $s2, 0x4
/* 3E1DDEC 800798BC 4D004010 */  beqz       $v0, .Llevel_11_800799F4
/* 3E1DDF0 800798C0 00000000 */   nop
/* 3E1DDF4 800798C4 0780113C */  lui        $s1, %hi(D_8006C550)
/* 3E1DDF8 800798C8 50C5318E */  lw         $s1, %lo(D_8006C550)($s1)
/* 3E1DDFC 800798CC 0780023C */  lui        $v0, %hi(D_8006C704)
/* 3E1DE00 800798D0 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 3E1DE04 800798D4 0800438E */  lw         $v1, 0x8($s2)
/* 3E1DE08 800798D8 2B102202 */  sltu       $v0, $s1, $v0
/* 3E1DE0C 800798DC 45004010 */  beqz       $v0, .Llevel_11_800799F4
/* 3E1DE10 800798E0 040043AE */   sw        $v1, 0x4($s2)
/* 3E1DE14 800798E4 45003026 */  addiu      $s0, $s1, 0x45
.Llevel_11_800798E8:
/* 3E1DE18 800798E8 F1FF0386 */  lh         $v1, -0xF($s0)
/* 3E1DE1C 800798EC 0000428E */  lw         $v0, 0x0($s2)
/* 3E1DE20 800798F0 00000000 */  nop
/* 3E1DE24 800798F4 39006214 */  bne        $v1, $v0, .Llevel_11_800799DC
/* 3E1DE28 800798F8 00000000 */   nop
/* 3E1DE2C 800798FC 03000292 */  lbu        $v0, 0x3($s0)
/* 3E1DE30 80079900 00000000 */  nop
/* 3E1DE34 80079904 8000422C */  sltiu      $v0, $v0, 0x80
/* 3E1DE38 80079908 34004014 */  bnez       $v0, .Llevel_11_800799DC
/* 3E1DE3C 8007990C 00000000 */   nop
/* 3E1DE40 80079910 0E000292 */  lbu        $v0, 0xE($s0)
/* 3E1DE44 80079914 0780033C */  lui        $v1, %hi(D_8006C7C4)
/* 3E1DE48 80079918 C4C7638C */  lw         $v1, %lo(D_8006C7C4)($v1)
/* 3E1DE4C 8007991C 00000000 */  nop
/* 3E1DE50 80079920 07106200 */  srav       $v0, $v0, $v1
/* 3E1DE54 80079924 01004230 */  andi       $v0, $v0, 0x1
/* 3E1DE58 80079928 2C004010 */  beqz       $v0, .Llevel_11_800799DC
/* 3E1DE5C 8007992C 00000000 */   nop
/* 3E1DE60 80079930 0000258E */  lw         $a1, 0x0($s1)
/* 3E1DE64 80079934 0780043C */  lui        $a0, %hi(D_80070328)
/* 3E1DE68 80079938 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 3E1DE6C 8007993C CD3C010C */  jal        func_8004F334
/* 3E1DE70 80079940 00000000 */   nop
/* 3E1DE74 80079944 01604228 */  slti       $v0, $v0, 0x6001
/* 3E1DE78 80079948 24004014 */  bnez       $v0, .Llevel_11_800799DC
/* 3E1DE7C 8007994C 00000000 */   nop
/* 3E1DE80 80079950 0000258E */  lw         $a1, 0x0($s1)
/* 3E1DE84 80079954 5E3C010C */  jal        func_8004F178
/* 3E1DE88 80079958 0C002426 */   addiu     $a0, $s1, 0xC
/* 3E1DE8C 8007995C 0957010C */  jal        func_80055C24
/* 3E1DE90 80079960 21202002 */   addu      $a0, $s1, $zero
/* 3E1DE94 80079964 F1FF0286 */  lh         $v0, -0xF($s0)
/* 3E1DE98 80079968 D3FF00AE */  sw         $zero, -0x2D($s0)
/* 3E1DE9C 8007996C 0C0000A2 */  sb         $zero, 0xC($s0)
/* 3E1DEA0 80079970 030000A2 */  sb         $zero, 0x3($s0)
/* 3E1DEA4 80079974 FDFF00A2 */  sb         $zero, -0x3($s0)
/* 3E1DEA8 80079978 80100200 */  sll        $v0, $v0, 2
/* 3E1DEAC 8007997C 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 3E1DEB0 80079980 21082200 */  addu       $at, $at, $v0
/* 3E1DEB4 80079984 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 3E1DEB8 80079988 00000000 */  nop
/* 3E1DEBC 8007998C 3C00428C */  lw         $v0, 0x3C($v0)
/* 3E1DEC0 80079990 21202002 */  addu       $a0, $s1, $zero
/* 3E1DEC4 80079994 00004390 */  lbu        $v1, 0x0($v0)
/* 3E1DEC8 80079998 01000224 */  addiu      $v0, $zero, 0x1
/* 3E1DECC 8007999C F7FF00A2 */  sb         $zero, -0x9($s0)
/* 3E1DED0 800799A0 F8FF00A2 */  sb         $zero, -0x8($s0)
/* 3E1DED4 800799A4 F9FF00A2 */  sb         $zero, -0x7($s0)
/* 3E1DED8 800799A8 FAFF02A2 */  sb         $v0, -0x6($s0)
/* 3E1DEDC 800799AC FFFF00A2 */  sb         $zero, -0x1($s0)
/* 3E1DEE0 800799B0 000000A2 */  sb         $zero, 0x0($s0)
/* 3E1DEE4 800799B4 0200632C */  sltiu      $v1, $v1, 0x2
/* 3E1DEE8 800799B8 01006338 */  xori       $v1, $v1, 0x1
/* 3E1DEEC 800799BC 23180300 */  negu       $v1, $v1
/* 3E1DEF0 800799C0 30006330 */  andi       $v1, $v1, 0x30
/* 3E1DEF4 800799C4 4ED7000C */  jal        func_80035D38
/* 3E1DEF8 800799C8 FBFF03A2 */   sb        $v1, -0x5($s0)
/* 3E1DEFC 800799CC A758010C */  jal        func_8005629C
/* 3E1DF00 800799D0 21202002 */   addu      $a0, $s1, $zero
/* 3E1DF04 800799D4 7DE60108 */  j          .Llevel_11_800799F4
/* 3E1DF08 800799D8 00000000 */   nop
.Llevel_11_800799DC:
/* 3E1DF0C 800799DC 0780023C */  lui        $v0, %hi(D_8006C704)
/* 3E1DF10 800799E0 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 3E1DF14 800799E4 58003126 */  addiu      $s1, $s1, 0x58
/* 3E1DF18 800799E8 2B102202 */  sltu       $v0, $s1, $v0
/* 3E1DF1C 800799EC BEFF4014 */  bnez       $v0, .Llevel_11_800798E8
/* 3E1DF20 800799F0 58001026 */   addiu     $s0, $s0, 0x58
.Llevel_11_800799F4:
/* 3E1DF24 800799F4 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 3E1DF28 800799F8 1800B28F */  lw         $s2, 0x18($sp)
/* 3E1DF2C 800799FC 1400B18F */  lw         $s1, 0x14($sp)
/* 3E1DF30 80079A00 1000B08F */  lw         $s0, 0x10($sp)
/* 3E1DF34 80079A04 2000BD27 */  addiu      $sp, $sp, 0x20
/* 3E1DF38 80079A08 0800E003 */  jr         $ra
/* 3E1DF3C 80079A0C 00000000 */   nop
.size MobyUpdate_1002_level_11, . - MobyUpdate_1002_level_11
