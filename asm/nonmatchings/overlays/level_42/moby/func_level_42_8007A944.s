.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1002_level_42
/* 847F674 8007A944 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 847F678 8007A948 21108000 */  addu       $v0, $a0, $zero
/* 847F67C 8007A94C 0780053C */  lui        $a1, %hi(D_80070328)
/* 847F680 8007A950 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 847F684 8007A954 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 847F688 8007A958 1800B2AF */  sw         $s2, 0x18($sp)
/* 847F68C 8007A95C 1400B1AF */  sw         $s1, 0x14($sp)
/* 847F690 8007A960 1000B0AF */  sw         $s0, 0x10($sp)
/* 847F694 8007A964 0000528C */  lw         $s2, 0x0($v0)
/* 847F698 8007A968 5E3C010C */  jal        func_8004F178
/* 847F69C 8007A96C 0C004424 */   addiu     $a0, $v0, 0xC
/* 847F6A0 8007A970 04000524 */  addiu      $a1, $zero, 0x4
/* 847F6A4 8007A974 69D6000C */  jal        func_800359A4
/* 847F6A8 8007A978 04004426 */   addiu     $a0, $s2, 0x4
/* 847F6AC 8007A97C 4D004010 */  beqz       $v0, .Llevel_42_8007AAB4
/* 847F6B0 8007A980 00000000 */   nop
/* 847F6B4 8007A984 0780113C */  lui        $s1, %hi(D_8006C550)
/* 847F6B8 8007A988 50C5318E */  lw         $s1, %lo(D_8006C550)($s1)
/* 847F6BC 8007A98C 0780023C */  lui        $v0, %hi(D_8006C704)
/* 847F6C0 8007A990 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 847F6C4 8007A994 0800438E */  lw         $v1, 0x8($s2)
/* 847F6C8 8007A998 2B102202 */  sltu       $v0, $s1, $v0
/* 847F6CC 8007A99C 45004010 */  beqz       $v0, .Llevel_42_8007AAB4
/* 847F6D0 8007A9A0 040043AE */   sw        $v1, 0x4($s2)
/* 847F6D4 8007A9A4 45003026 */  addiu      $s0, $s1, 0x45
.Llevel_42_8007A9A8:
/* 847F6D8 8007A9A8 F1FF0386 */  lh         $v1, -0xF($s0)
/* 847F6DC 8007A9AC 0000428E */  lw         $v0, 0x0($s2)
/* 847F6E0 8007A9B0 00000000 */  nop
/* 847F6E4 8007A9B4 39006214 */  bne        $v1, $v0, .Llevel_42_8007AA9C
/* 847F6E8 8007A9B8 00000000 */   nop
/* 847F6EC 8007A9BC 03000292 */  lbu        $v0, 0x3($s0)
/* 847F6F0 8007A9C0 00000000 */  nop
/* 847F6F4 8007A9C4 8000422C */  sltiu      $v0, $v0, 0x80
/* 847F6F8 8007A9C8 34004014 */  bnez       $v0, .Llevel_42_8007AA9C
/* 847F6FC 8007A9CC 00000000 */   nop
/* 847F700 8007A9D0 0E000292 */  lbu        $v0, 0xE($s0)
/* 847F704 8007A9D4 0780033C */  lui        $v1, %hi(D_8006C7C4)
/* 847F708 8007A9D8 C4C7638C */  lw         $v1, %lo(D_8006C7C4)($v1)
/* 847F70C 8007A9DC 00000000 */  nop
/* 847F710 8007A9E0 07106200 */  srav       $v0, $v0, $v1
/* 847F714 8007A9E4 01004230 */  andi       $v0, $v0, 0x1
/* 847F718 8007A9E8 2C004010 */  beqz       $v0, .Llevel_42_8007AA9C
/* 847F71C 8007A9EC 00000000 */   nop
/* 847F720 8007A9F0 0000258E */  lw         $a1, 0x0($s1)
/* 847F724 8007A9F4 0780043C */  lui        $a0, %hi(D_80070328)
/* 847F728 8007A9F8 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 847F72C 8007A9FC CD3C010C */  jal        func_8004F334
/* 847F730 8007AA00 00000000 */   nop
/* 847F734 8007AA04 01604228 */  slti       $v0, $v0, 0x6001
/* 847F738 8007AA08 24004014 */  bnez       $v0, .Llevel_42_8007AA9C
/* 847F73C 8007AA0C 00000000 */   nop
/* 847F740 8007AA10 0000258E */  lw         $a1, 0x0($s1)
/* 847F744 8007AA14 5E3C010C */  jal        func_8004F178
/* 847F748 8007AA18 0C002426 */   addiu     $a0, $s1, 0xC
/* 847F74C 8007AA1C 0957010C */  jal        func_80055C24
/* 847F750 8007AA20 21202002 */   addu      $a0, $s1, $zero
/* 847F754 8007AA24 F1FF0286 */  lh         $v0, -0xF($s0)
/* 847F758 8007AA28 D3FF00AE */  sw         $zero, -0x2D($s0)
/* 847F75C 8007AA2C 0C0000A2 */  sb         $zero, 0xC($s0)
/* 847F760 8007AA30 030000A2 */  sb         $zero, 0x3($s0)
/* 847F764 8007AA34 FDFF00A2 */  sb         $zero, -0x3($s0)
/* 847F768 8007AA38 80100200 */  sll        $v0, $v0, 2
/* 847F76C 8007AA3C 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 847F770 8007AA40 21082200 */  addu       $at, $at, $v0
/* 847F774 8007AA44 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 847F778 8007AA48 00000000 */  nop
/* 847F77C 8007AA4C 3C00428C */  lw         $v0, 0x3C($v0)
/* 847F780 8007AA50 21202002 */  addu       $a0, $s1, $zero
/* 847F784 8007AA54 00004390 */  lbu        $v1, 0x0($v0)
/* 847F788 8007AA58 01000224 */  addiu      $v0, $zero, 0x1
/* 847F78C 8007AA5C F7FF00A2 */  sb         $zero, -0x9($s0)
/* 847F790 8007AA60 F8FF00A2 */  sb         $zero, -0x8($s0)
/* 847F794 8007AA64 F9FF00A2 */  sb         $zero, -0x7($s0)
/* 847F798 8007AA68 FAFF02A2 */  sb         $v0, -0x6($s0)
/* 847F79C 8007AA6C FFFF00A2 */  sb         $zero, -0x1($s0)
/* 847F7A0 8007AA70 000000A2 */  sb         $zero, 0x0($s0)
/* 847F7A4 8007AA74 0200632C */  sltiu      $v1, $v1, 0x2
/* 847F7A8 8007AA78 01006338 */  xori       $v1, $v1, 0x1
/* 847F7AC 8007AA7C 23180300 */  negu       $v1, $v1
/* 847F7B0 8007AA80 30006330 */  andi       $v1, $v1, 0x30
/* 847F7B4 8007AA84 4ED7000C */  jal        func_80035D38
/* 847F7B8 8007AA88 FBFF03A2 */   sb        $v1, -0x5($s0)
/* 847F7BC 8007AA8C A758010C */  jal        func_8005629C
/* 847F7C0 8007AA90 21202002 */   addu      $a0, $s1, $zero
/* 847F7C4 8007AA94 ADEA0108 */  j          .Llevel_42_8007AAB4
/* 847F7C8 8007AA98 00000000 */   nop
.Llevel_42_8007AA9C:
/* 847F7CC 8007AA9C 0780023C */  lui        $v0, %hi(D_8006C704)
/* 847F7D0 8007AAA0 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 847F7D4 8007AAA4 58003126 */  addiu      $s1, $s1, 0x58
/* 847F7D8 8007AAA8 2B102202 */  sltu       $v0, $s1, $v0
/* 847F7DC 8007AAAC BEFF4014 */  bnez       $v0, .Llevel_42_8007A9A8
/* 847F7E0 8007AAB0 58001026 */   addiu     $s0, $s0, 0x58
.Llevel_42_8007AAB4:
/* 847F7E4 8007AAB4 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 847F7E8 8007AAB8 1800B28F */  lw         $s2, 0x18($sp)
/* 847F7EC 8007AABC 1400B18F */  lw         $s1, 0x14($sp)
/* 847F7F0 8007AAC0 1000B08F */  lw         $s0, 0x10($sp)
/* 847F7F4 8007AAC4 2000BD27 */  addiu      $sp, $sp, 0x20
/* 847F7F8 8007AAC8 0800E003 */  jr         $ra
/* 847F7FC 8007AACC 00000000 */   nop
.size MobyUpdate_1002_level_42, . - MobyUpdate_1002_level_42
