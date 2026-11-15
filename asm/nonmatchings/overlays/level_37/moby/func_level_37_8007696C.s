.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_326_level_37
/* 7AA269C 8007696C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 7AA26A0 80076970 2000B0AF */  sw         $s0, 0x20($sp)
/* 7AA26A4 80076974 21808000 */  addu       $s0, $a0, $zero
/* 7AA26A8 80076978 2800BFAF */  sw         $ra, 0x28($sp)
/* 7AA26AC 8007697C 2400B1AF */  sw         $s1, 0x24($sp)
/* 7AA26B0 80076980 0000118E */  lw         $s1, 0x0($s0)
/* 7AA26B4 80076984 02000524 */  addiu      $a1, $zero, 0x2
/* 7AA26B8 80076988 69D6000C */  jal        func_800359A4
/* 7AA26BC 8007698C 21202002 */   addu      $a0, $s1, $zero
/* 7AA26C0 80076990 03004010 */  beqz       $v0, .Llevel_37_800769A0
/* 7AA26C4 80076994 00000000 */   nop
/* 7AA26C8 80076998 C656010C */  jal        func_80055B18
/* 7AA26CC 8007699C 21200002 */   addu      $a0, $s0, $zero
.Llevel_37_800769A0:
/* 7AA26D0 800769A0 02002392 */  lbu        $v1, 0x2($s1)
/* 7AA26D4 800769A4 00000000 */  nop
/* 7AA26D8 800769A8 0E006014 */  bnez       $v1, .Llevel_37_800769E4
/* 7AA26DC 800769AC 01000224 */   addiu     $v0, $zero, 0x1
/* 7AA26E0 800769B0 00002286 */  lh         $v0, 0x0($s1)
/* 7AA26E4 800769B4 00000000 */  nop
/* 7AA26E8 800769B8 21184000 */  addu       $v1, $v0, $zero
/* 7AA26EC 800769BC 08004228 */  slti       $v0, $v0, 0x8
/* 7AA26F0 800769C0 04004010 */  beqz       $v0, .Llevel_37_800769D4
/* 7AA26F4 800769C4 00110300 */   sll       $v0, $v1, 4
/* 7AA26F8 800769C8 540002A2 */  sb         $v0, 0x54($s0)
/* 7AA26FC 800769CC 96DA0108 */  j          .Llevel_37_80076A58
/* 7AA2700 800769D0 550000A2 */   sb        $zero, 0x55($s0)
.Llevel_37_800769D4:
/* 7AA2704 800769D4 F8FF6224 */  addiu      $v0, $v1, -0x8
/* 7AA2708 800769D8 00110200 */  sll        $v0, $v0, 4
/* 7AA270C 800769DC 96DA0108 */  j          .Llevel_37_80076A58
/* 7AA2710 800769E0 550002A2 */   sb        $v0, 0x55($s0)
.Llevel_37_800769E4:
/* 7AA2714 800769E4 0E006214 */  bne        $v1, $v0, .Llevel_37_80076A20
/* 7AA2718 800769E8 02000224 */   addiu     $v0, $zero, 0x2
/* 7AA271C 800769EC 00002286 */  lh         $v0, 0x0($s1)
/* 7AA2720 800769F0 00000000 */  nop
/* 7AA2724 800769F4 21184000 */  addu       $v1, $v0, $zero
/* 7AA2728 800769F8 08004228 */  slti       $v0, $v0, 0x8
/* 7AA272C 800769FC 04004010 */  beqz       $v0, .Llevel_37_80076A10
/* 7AA2730 80076A00 00110300 */   sll       $v0, $v1, 4
/* 7AA2734 80076A04 550002A2 */  sb         $v0, 0x55($s0)
/* 7AA2738 80076A08 96DA0108 */  j          .Llevel_37_80076A58
/* 7AA273C 80076A0C 540000A2 */   sb        $zero, 0x54($s0)
.Llevel_37_80076A10:
/* 7AA2740 80076A10 F8FF6224 */  addiu      $v0, $v1, -0x8
/* 7AA2744 80076A14 00110200 */  sll        $v0, $v0, 4
/* 7AA2748 80076A18 96DA0108 */  j          .Llevel_37_80076A58
/* 7AA274C 80076A1C 540002A2 */   sb        $v0, 0x54($s0)
.Llevel_37_80076A20:
/* 7AA2750 80076A20 0D006214 */  bne        $v1, $v0, .Llevel_37_80076A58
/* 7AA2754 80076A24 00000000 */   nop
/* 7AA2758 80076A28 54000292 */  lbu        $v0, 0x54($s0)
/* 7AA275C 80076A2C 56000392 */  lbu        $v1, 0x56($s0)
/* 7AA2760 80076A30 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 7AA2764 80076A34 540002A2 */  sb         $v0, 0x54($s0)
/* 7AA2768 80076A38 55000292 */  lbu        $v0, 0x55($s0)
/* 7AA276C 80076A3C F8FF6324 */  addiu      $v1, $v1, -0x8
/* 7AA2770 80076A40 560003A2 */  sb         $v1, 0x56($s0)
/* 7AA2774 80076A44 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 7AA2778 80076A48 550002A2 */  sb         $v0, 0x55($s0)
/* 7AA277C 80076A4C 00002296 */  lhu        $v0, 0x0($s1)
/* 7AA2780 80076A50 00000000 */  nop
/* 7AA2784 80076A54 570002A2 */  sb         $v0, 0x57($s0)
.Llevel_37_80076A58:
/* 7AA2788 80076A58 03002292 */  lbu        $v0, 0x3($s1)
/* 7AA278C 80076A5C 00000000 */  nop
/* 7AA2790 80076A60 06004014 */  bnez       $v0, .Llevel_37_80076A7C
/* 7AA2794 80076A64 00000000 */   nop
/* 7AA2798 80076A68 00002292 */  lbu        $v0, 0x0($s1)
/* 7AA279C 80076A6C 00000000 */  nop
/* 7AA27A0 80076A70 40100200 */  sll        $v0, $v0, 1
/* 7AA27A4 80076A74 A3DA0108 */  j          .Llevel_37_80076A8C
/* 7AA27A8 80076A78 30004224 */   addiu     $v0, $v0, 0x30
.Llevel_37_80076A7C:
/* 7AA27AC 80076A7C 00002292 */  lbu        $v0, 0x0($s1)
/* 7AA27B0 80076A80 00000000 */  nop
/* 7AA27B4 80076A84 80100200 */  sll        $v0, $v0, 2
/* 7AA27B8 80076A88 34004224 */  addiu      $v0, $v0, 0x34
.Llevel_37_80076A8C:
/* 7AA27BC 80076A8C 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 7AA27C0 80076A90 2800BF8F */  lw         $ra, 0x28($sp)
/* 7AA27C4 80076A94 2400B18F */  lw         $s1, 0x24($sp)
/* 7AA27C8 80076A98 2000B08F */  lw         $s0, 0x20($sp)
/* 7AA27CC 80076A9C 3000BD27 */  addiu      $sp, $sp, 0x30
/* 7AA27D0 80076AA0 0800E003 */  jr         $ra
/* 7AA27D4 80076AA4 00000000 */   nop
.size MobyUpdate_326_level_37, . - MobyUpdate_326_level_37
