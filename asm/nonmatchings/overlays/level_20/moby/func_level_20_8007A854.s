.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1002_level_20
/* 50CA584 8007A854 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 50CA588 8007A858 21108000 */  addu       $v0, $a0, $zero
/* 50CA58C 8007A85C 0780053C */  lui        $a1, %hi(D_80070328)
/* 50CA590 8007A860 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 50CA594 8007A864 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 50CA598 8007A868 1800B2AF */  sw         $s2, 0x18($sp)
/* 50CA59C 8007A86C 1400B1AF */  sw         $s1, 0x14($sp)
/* 50CA5A0 8007A870 1000B0AF */  sw         $s0, 0x10($sp)
/* 50CA5A4 8007A874 0000528C */  lw         $s2, 0x0($v0)
/* 50CA5A8 8007A878 5E3C010C */  jal        func_8004F178
/* 50CA5AC 8007A87C 0C004424 */   addiu     $a0, $v0, 0xC
/* 50CA5B0 8007A880 04000524 */  addiu      $a1, $zero, 0x4
/* 50CA5B4 8007A884 69D6000C */  jal        func_800359A4
/* 50CA5B8 8007A888 04004426 */   addiu     $a0, $s2, 0x4
/* 50CA5BC 8007A88C 4D004010 */  beqz       $v0, .Llevel_20_8007A9C4
/* 50CA5C0 8007A890 00000000 */   nop
/* 50CA5C4 8007A894 0780113C */  lui        $s1, %hi(D_8006C550)
/* 50CA5C8 8007A898 50C5318E */  lw         $s1, %lo(D_8006C550)($s1)
/* 50CA5CC 8007A89C 0780023C */  lui        $v0, %hi(D_8006C704)
/* 50CA5D0 8007A8A0 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 50CA5D4 8007A8A4 0800438E */  lw         $v1, 0x8($s2)
/* 50CA5D8 8007A8A8 2B102202 */  sltu       $v0, $s1, $v0
/* 50CA5DC 8007A8AC 45004010 */  beqz       $v0, .Llevel_20_8007A9C4
/* 50CA5E0 8007A8B0 040043AE */   sw        $v1, 0x4($s2)
/* 50CA5E4 8007A8B4 45003026 */  addiu      $s0, $s1, 0x45
.Llevel_20_8007A8B8:
/* 50CA5E8 8007A8B8 F1FF0386 */  lh         $v1, -0xF($s0)
/* 50CA5EC 8007A8BC 0000428E */  lw         $v0, 0x0($s2)
/* 50CA5F0 8007A8C0 00000000 */  nop
/* 50CA5F4 8007A8C4 39006214 */  bne        $v1, $v0, .Llevel_20_8007A9AC
/* 50CA5F8 8007A8C8 00000000 */   nop
/* 50CA5FC 8007A8CC 03000292 */  lbu        $v0, 0x3($s0)
/* 50CA600 8007A8D0 00000000 */  nop
/* 50CA604 8007A8D4 8000422C */  sltiu      $v0, $v0, 0x80
/* 50CA608 8007A8D8 34004014 */  bnez       $v0, .Llevel_20_8007A9AC
/* 50CA60C 8007A8DC 00000000 */   nop
/* 50CA610 8007A8E0 0E000292 */  lbu        $v0, 0xE($s0)
/* 50CA614 8007A8E4 0780033C */  lui        $v1, %hi(D_8006C7C4)
/* 50CA618 8007A8E8 C4C7638C */  lw         $v1, %lo(D_8006C7C4)($v1)
/* 50CA61C 8007A8EC 00000000 */  nop
/* 50CA620 8007A8F0 07106200 */  srav       $v0, $v0, $v1
/* 50CA624 8007A8F4 01004230 */  andi       $v0, $v0, 0x1
/* 50CA628 8007A8F8 2C004010 */  beqz       $v0, .Llevel_20_8007A9AC
/* 50CA62C 8007A8FC 00000000 */   nop
/* 50CA630 8007A900 0000258E */  lw         $a1, 0x0($s1)
/* 50CA634 8007A904 0780043C */  lui        $a0, %hi(D_80070328)
/* 50CA638 8007A908 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 50CA63C 8007A90C CD3C010C */  jal        func_8004F334
/* 50CA640 8007A910 00000000 */   nop
/* 50CA644 8007A914 01604228 */  slti       $v0, $v0, 0x6001
/* 50CA648 8007A918 24004014 */  bnez       $v0, .Llevel_20_8007A9AC
/* 50CA64C 8007A91C 00000000 */   nop
/* 50CA650 8007A920 0000258E */  lw         $a1, 0x0($s1)
/* 50CA654 8007A924 5E3C010C */  jal        func_8004F178
/* 50CA658 8007A928 0C002426 */   addiu     $a0, $s1, 0xC
/* 50CA65C 8007A92C 0957010C */  jal        func_80055C24
/* 50CA660 8007A930 21202002 */   addu      $a0, $s1, $zero
/* 50CA664 8007A934 F1FF0286 */  lh         $v0, -0xF($s0)
/* 50CA668 8007A938 D3FF00AE */  sw         $zero, -0x2D($s0)
/* 50CA66C 8007A93C 0C0000A2 */  sb         $zero, 0xC($s0)
/* 50CA670 8007A940 030000A2 */  sb         $zero, 0x3($s0)
/* 50CA674 8007A944 FDFF00A2 */  sb         $zero, -0x3($s0)
/* 50CA678 8007A948 80100200 */  sll        $v0, $v0, 2
/* 50CA67C 8007A94C 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 50CA680 8007A950 21082200 */  addu       $at, $at, $v0
/* 50CA684 8007A954 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 50CA688 8007A958 00000000 */  nop
/* 50CA68C 8007A95C 3C00428C */  lw         $v0, 0x3C($v0)
/* 50CA690 8007A960 21202002 */  addu       $a0, $s1, $zero
/* 50CA694 8007A964 00004390 */  lbu        $v1, 0x0($v0)
/* 50CA698 8007A968 01000224 */  addiu      $v0, $zero, 0x1
/* 50CA69C 8007A96C F7FF00A2 */  sb         $zero, -0x9($s0)
/* 50CA6A0 8007A970 F8FF00A2 */  sb         $zero, -0x8($s0)
/* 50CA6A4 8007A974 F9FF00A2 */  sb         $zero, -0x7($s0)
/* 50CA6A8 8007A978 FAFF02A2 */  sb         $v0, -0x6($s0)
/* 50CA6AC 8007A97C FFFF00A2 */  sb         $zero, -0x1($s0)
/* 50CA6B0 8007A980 000000A2 */  sb         $zero, 0x0($s0)
/* 50CA6B4 8007A984 0200632C */  sltiu      $v1, $v1, 0x2
/* 50CA6B8 8007A988 01006338 */  xori       $v1, $v1, 0x1
/* 50CA6BC 8007A98C 23180300 */  negu       $v1, $v1
/* 50CA6C0 8007A990 30006330 */  andi       $v1, $v1, 0x30
/* 50CA6C4 8007A994 4ED7000C */  jal        func_80035D38
/* 50CA6C8 8007A998 FBFF03A2 */   sb        $v1, -0x5($s0)
/* 50CA6CC 8007A99C A758010C */  jal        func_8005629C
/* 50CA6D0 8007A9A0 21202002 */   addu      $a0, $s1, $zero
/* 50CA6D4 8007A9A4 71EA0108 */  j          .Llevel_20_8007A9C4
/* 50CA6D8 8007A9A8 00000000 */   nop
.Llevel_20_8007A9AC:
/* 50CA6DC 8007A9AC 0780023C */  lui        $v0, %hi(D_8006C704)
/* 50CA6E0 8007A9B0 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 50CA6E4 8007A9B4 58003126 */  addiu      $s1, $s1, 0x58
/* 50CA6E8 8007A9B8 2B102202 */  sltu       $v0, $s1, $v0
/* 50CA6EC 8007A9BC BEFF4014 */  bnez       $v0, .Llevel_20_8007A8B8
/* 50CA6F0 8007A9C0 58001026 */   addiu     $s0, $s0, 0x58
.Llevel_20_8007A9C4:
/* 50CA6F4 8007A9C4 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 50CA6F8 8007A9C8 1800B28F */  lw         $s2, 0x18($sp)
/* 50CA6FC 8007A9CC 1400B18F */  lw         $s1, 0x14($sp)
/* 50CA700 8007A9D0 1000B08F */  lw         $s0, 0x10($sp)
/* 50CA704 8007A9D4 2000BD27 */  addiu      $sp, $sp, 0x20
/* 50CA708 8007A9D8 0800E003 */  jr         $ra
/* 50CA70C 8007A9DC 00000000 */   nop
.size MobyUpdate_1002_level_20, . - MobyUpdate_1002_level_20
