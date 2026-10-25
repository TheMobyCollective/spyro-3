.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1002_level_10
/* 3ADE550 80079820 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3ADE554 80079824 21108000 */  addu       $v0, $a0, $zero
/* 3ADE558 80079828 0780053C */  lui        $a1, %hi(D_80070328)
/* 3ADE55C 8007982C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 3ADE560 80079830 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 3ADE564 80079834 1800B2AF */  sw         $s2, 0x18($sp)
/* 3ADE568 80079838 1400B1AF */  sw         $s1, 0x14($sp)
/* 3ADE56C 8007983C 1000B0AF */  sw         $s0, 0x10($sp)
/* 3ADE570 80079840 0000528C */  lw         $s2, 0x0($v0)
/* 3ADE574 80079844 5E3C010C */  jal        func_8004F178
/* 3ADE578 80079848 0C004424 */   addiu     $a0, $v0, 0xC
/* 3ADE57C 8007984C 04000524 */  addiu      $a1, $zero, 0x4
/* 3ADE580 80079850 69D6000C */  jal        func_800359A4
/* 3ADE584 80079854 04004426 */   addiu     $a0, $s2, 0x4
/* 3ADE588 80079858 4D004010 */  beqz       $v0, .Llevel_10_80079990
/* 3ADE58C 8007985C 00000000 */   nop
/* 3ADE590 80079860 0780113C */  lui        $s1, %hi(D_8006C550)
/* 3ADE594 80079864 50C5318E */  lw         $s1, %lo(D_8006C550)($s1)
/* 3ADE598 80079868 0780023C */  lui        $v0, %hi(D_8006C704)
/* 3ADE59C 8007986C 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 3ADE5A0 80079870 0800438E */  lw         $v1, 0x8($s2)
/* 3ADE5A4 80079874 2B102202 */  sltu       $v0, $s1, $v0
/* 3ADE5A8 80079878 45004010 */  beqz       $v0, .Llevel_10_80079990
/* 3ADE5AC 8007987C 040043AE */   sw        $v1, 0x4($s2)
/* 3ADE5B0 80079880 45003026 */  addiu      $s0, $s1, 0x45
.Llevel_10_80079884:
/* 3ADE5B4 80079884 F1FF0386 */  lh         $v1, -0xF($s0)
/* 3ADE5B8 80079888 0000428E */  lw         $v0, 0x0($s2)
/* 3ADE5BC 8007988C 00000000 */  nop
/* 3ADE5C0 80079890 39006214 */  bne        $v1, $v0, .Llevel_10_80079978
/* 3ADE5C4 80079894 00000000 */   nop
/* 3ADE5C8 80079898 03000292 */  lbu        $v0, 0x3($s0)
/* 3ADE5CC 8007989C 00000000 */  nop
/* 3ADE5D0 800798A0 8000422C */  sltiu      $v0, $v0, 0x80
/* 3ADE5D4 800798A4 34004014 */  bnez       $v0, .Llevel_10_80079978
/* 3ADE5D8 800798A8 00000000 */   nop
/* 3ADE5DC 800798AC 0E000292 */  lbu        $v0, 0xE($s0)
/* 3ADE5E0 800798B0 0780033C */  lui        $v1, %hi(D_8006C7C4)
/* 3ADE5E4 800798B4 C4C7638C */  lw         $v1, %lo(D_8006C7C4)($v1)
/* 3ADE5E8 800798B8 00000000 */  nop
/* 3ADE5EC 800798BC 07106200 */  srav       $v0, $v0, $v1
/* 3ADE5F0 800798C0 01004230 */  andi       $v0, $v0, 0x1
/* 3ADE5F4 800798C4 2C004010 */  beqz       $v0, .Llevel_10_80079978
/* 3ADE5F8 800798C8 00000000 */   nop
/* 3ADE5FC 800798CC 0000258E */  lw         $a1, 0x0($s1)
/* 3ADE600 800798D0 0780043C */  lui        $a0, %hi(D_80070328)
/* 3ADE604 800798D4 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 3ADE608 800798D8 CD3C010C */  jal        func_8004F334
/* 3ADE60C 800798DC 00000000 */   nop
/* 3ADE610 800798E0 01604228 */  slti       $v0, $v0, 0x6001
/* 3ADE614 800798E4 24004014 */  bnez       $v0, .Llevel_10_80079978
/* 3ADE618 800798E8 00000000 */   nop
/* 3ADE61C 800798EC 0000258E */  lw         $a1, 0x0($s1)
/* 3ADE620 800798F0 5E3C010C */  jal        func_8004F178
/* 3ADE624 800798F4 0C002426 */   addiu     $a0, $s1, 0xC
/* 3ADE628 800798F8 0957010C */  jal        func_80055C24
/* 3ADE62C 800798FC 21202002 */   addu      $a0, $s1, $zero
/* 3ADE630 80079900 F1FF0286 */  lh         $v0, -0xF($s0)
/* 3ADE634 80079904 D3FF00AE */  sw         $zero, -0x2D($s0)
/* 3ADE638 80079908 0C0000A2 */  sb         $zero, 0xC($s0)
/* 3ADE63C 8007990C 030000A2 */  sb         $zero, 0x3($s0)
/* 3ADE640 80079910 FDFF00A2 */  sb         $zero, -0x3($s0)
/* 3ADE644 80079914 80100200 */  sll        $v0, $v0, 2
/* 3ADE648 80079918 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 3ADE64C 8007991C 21082200 */  addu       $at, $at, $v0
/* 3ADE650 80079920 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 3ADE654 80079924 00000000 */  nop
/* 3ADE658 80079928 3C00428C */  lw         $v0, 0x3C($v0)
/* 3ADE65C 8007992C 21202002 */  addu       $a0, $s1, $zero
/* 3ADE660 80079930 00004390 */  lbu        $v1, 0x0($v0)
/* 3ADE664 80079934 01000224 */  addiu      $v0, $zero, 0x1
/* 3ADE668 80079938 F7FF00A2 */  sb         $zero, -0x9($s0)
/* 3ADE66C 8007993C F8FF00A2 */  sb         $zero, -0x8($s0)
/* 3ADE670 80079940 F9FF00A2 */  sb         $zero, -0x7($s0)
/* 3ADE674 80079944 FAFF02A2 */  sb         $v0, -0x6($s0)
/* 3ADE678 80079948 FFFF00A2 */  sb         $zero, -0x1($s0)
/* 3ADE67C 8007994C 000000A2 */  sb         $zero, 0x0($s0)
/* 3ADE680 80079950 0200632C */  sltiu      $v1, $v1, 0x2
/* 3ADE684 80079954 01006338 */  xori       $v1, $v1, 0x1
/* 3ADE688 80079958 23180300 */  negu       $v1, $v1
/* 3ADE68C 8007995C 30006330 */  andi       $v1, $v1, 0x30
/* 3ADE690 80079960 4ED7000C */  jal        func_80035D38
/* 3ADE694 80079964 FBFF03A2 */   sb        $v1, -0x5($s0)
/* 3ADE698 80079968 A758010C */  jal        func_8005629C
/* 3ADE69C 8007996C 21202002 */   addu      $a0, $s1, $zero
/* 3ADE6A0 80079970 64E60108 */  j          .Llevel_10_80079990
/* 3ADE6A4 80079974 00000000 */   nop
.Llevel_10_80079978:
/* 3ADE6A8 80079978 0780023C */  lui        $v0, %hi(D_8006C704)
/* 3ADE6AC 8007997C 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 3ADE6B0 80079980 58003126 */  addiu      $s1, $s1, 0x58
/* 3ADE6B4 80079984 2B102202 */  sltu       $v0, $s1, $v0
/* 3ADE6B8 80079988 BEFF4014 */  bnez       $v0, .Llevel_10_80079884
/* 3ADE6BC 8007998C 58001026 */   addiu     $s0, $s0, 0x58
.Llevel_10_80079990:
/* 3ADE6C0 80079990 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 3ADE6C4 80079994 1800B28F */  lw         $s2, 0x18($sp)
/* 3ADE6C8 80079998 1400B18F */  lw         $s1, 0x14($sp)
/* 3ADE6CC 8007999C 1000B08F */  lw         $s0, 0x10($sp)
/* 3ADE6D0 800799A0 2000BD27 */  addiu      $sp, $sp, 0x20
/* 3ADE6D4 800799A4 0800E003 */  jr         $ra
/* 3ADE6D8 800799A8 00000000 */   nop
.size MobyUpdate_1002_level_10, . - MobyUpdate_1002_level_10
