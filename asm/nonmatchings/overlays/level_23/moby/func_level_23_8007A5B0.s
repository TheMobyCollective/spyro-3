.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1002_level_23
/* 5A96AE0 8007A5B0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 5A96AE4 8007A5B4 21108000 */  addu       $v0, $a0, $zero
/* 5A96AE8 8007A5B8 0780053C */  lui        $a1, %hi(D_80070328)
/* 5A96AEC 8007A5BC 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 5A96AF0 8007A5C0 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 5A96AF4 8007A5C4 1800B2AF */  sw         $s2, 0x18($sp)
/* 5A96AF8 8007A5C8 1400B1AF */  sw         $s1, 0x14($sp)
/* 5A96AFC 8007A5CC 1000B0AF */  sw         $s0, 0x10($sp)
/* 5A96B00 8007A5D0 0000528C */  lw         $s2, 0x0($v0)
/* 5A96B04 8007A5D4 5E3C010C */  jal        func_8004F178
/* 5A96B08 8007A5D8 0C004424 */   addiu     $a0, $v0, 0xC
/* 5A96B0C 8007A5DC 04000524 */  addiu      $a1, $zero, 0x4
/* 5A96B10 8007A5E0 69D6000C */  jal        func_800359A4
/* 5A96B14 8007A5E4 04004426 */   addiu     $a0, $s2, 0x4
/* 5A96B18 8007A5E8 4D004010 */  beqz       $v0, .Llevel_23_8007A720
/* 5A96B1C 8007A5EC 00000000 */   nop
/* 5A96B20 8007A5F0 0780113C */  lui        $s1, %hi(D_8006C550)
/* 5A96B24 8007A5F4 50C5318E */  lw         $s1, %lo(D_8006C550)($s1)
/* 5A96B28 8007A5F8 0780023C */  lui        $v0, %hi(D_8006C704)
/* 5A96B2C 8007A5FC 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 5A96B30 8007A600 0800438E */  lw         $v1, 0x8($s2)
/* 5A96B34 8007A604 2B102202 */  sltu       $v0, $s1, $v0
/* 5A96B38 8007A608 45004010 */  beqz       $v0, .Llevel_23_8007A720
/* 5A96B3C 8007A60C 040043AE */   sw        $v1, 0x4($s2)
/* 5A96B40 8007A610 45003026 */  addiu      $s0, $s1, 0x45
.Llevel_23_8007A614:
/* 5A96B44 8007A614 F1FF0386 */  lh         $v1, -0xF($s0)
/* 5A96B48 8007A618 0000428E */  lw         $v0, 0x0($s2)
/* 5A96B4C 8007A61C 00000000 */  nop
/* 5A96B50 8007A620 39006214 */  bne        $v1, $v0, .Llevel_23_8007A708
/* 5A96B54 8007A624 00000000 */   nop
/* 5A96B58 8007A628 03000292 */  lbu        $v0, 0x3($s0)
/* 5A96B5C 8007A62C 00000000 */  nop
/* 5A96B60 8007A630 8000422C */  sltiu      $v0, $v0, 0x80
/* 5A96B64 8007A634 34004014 */  bnez       $v0, .Llevel_23_8007A708
/* 5A96B68 8007A638 00000000 */   nop
/* 5A96B6C 8007A63C 0E000292 */  lbu        $v0, 0xE($s0)
/* 5A96B70 8007A640 0780033C */  lui        $v1, %hi(D_8006C7C4)
/* 5A96B74 8007A644 C4C7638C */  lw         $v1, %lo(D_8006C7C4)($v1)
/* 5A96B78 8007A648 00000000 */  nop
/* 5A96B7C 8007A64C 07106200 */  srav       $v0, $v0, $v1
/* 5A96B80 8007A650 01004230 */  andi       $v0, $v0, 0x1
/* 5A96B84 8007A654 2C004010 */  beqz       $v0, .Llevel_23_8007A708
/* 5A96B88 8007A658 00000000 */   nop
/* 5A96B8C 8007A65C 0000258E */  lw         $a1, 0x0($s1)
/* 5A96B90 8007A660 0780043C */  lui        $a0, %hi(D_80070328)
/* 5A96B94 8007A664 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 5A96B98 8007A668 CD3C010C */  jal        func_8004F334
/* 5A96B9C 8007A66C 00000000 */   nop
/* 5A96BA0 8007A670 01604228 */  slti       $v0, $v0, 0x6001
/* 5A96BA4 8007A674 24004014 */  bnez       $v0, .Llevel_23_8007A708
/* 5A96BA8 8007A678 00000000 */   nop
/* 5A96BAC 8007A67C 0000258E */  lw         $a1, 0x0($s1)
/* 5A96BB0 8007A680 5E3C010C */  jal        func_8004F178
/* 5A96BB4 8007A684 0C002426 */   addiu     $a0, $s1, 0xC
/* 5A96BB8 8007A688 0957010C */  jal        func_80055C24
/* 5A96BBC 8007A68C 21202002 */   addu      $a0, $s1, $zero
/* 5A96BC0 8007A690 F1FF0286 */  lh         $v0, -0xF($s0)
/* 5A96BC4 8007A694 D3FF00AE */  sw         $zero, -0x2D($s0)
/* 5A96BC8 8007A698 0C0000A2 */  sb         $zero, 0xC($s0)
/* 5A96BCC 8007A69C 030000A2 */  sb         $zero, 0x3($s0)
/* 5A96BD0 8007A6A0 FDFF00A2 */  sb         $zero, -0x3($s0)
/* 5A96BD4 8007A6A4 80100200 */  sll        $v0, $v0, 2
/* 5A96BD8 8007A6A8 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 5A96BDC 8007A6AC 21082200 */  addu       $at, $at, $v0
/* 5A96BE0 8007A6B0 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 5A96BE4 8007A6B4 00000000 */  nop
/* 5A96BE8 8007A6B8 3C00428C */  lw         $v0, 0x3C($v0)
/* 5A96BEC 8007A6BC 21202002 */  addu       $a0, $s1, $zero
/* 5A96BF0 8007A6C0 00004390 */  lbu        $v1, 0x0($v0)
/* 5A96BF4 8007A6C4 01000224 */  addiu      $v0, $zero, 0x1
/* 5A96BF8 8007A6C8 F7FF00A2 */  sb         $zero, -0x9($s0)
/* 5A96BFC 8007A6CC F8FF00A2 */  sb         $zero, -0x8($s0)
/* 5A96C00 8007A6D0 F9FF00A2 */  sb         $zero, -0x7($s0)
/* 5A96C04 8007A6D4 FAFF02A2 */  sb         $v0, -0x6($s0)
/* 5A96C08 8007A6D8 FFFF00A2 */  sb         $zero, -0x1($s0)
/* 5A96C0C 8007A6DC 000000A2 */  sb         $zero, 0x0($s0)
/* 5A96C10 8007A6E0 0200632C */  sltiu      $v1, $v1, 0x2
/* 5A96C14 8007A6E4 01006338 */  xori       $v1, $v1, 0x1
/* 5A96C18 8007A6E8 23180300 */  negu       $v1, $v1
/* 5A96C1C 8007A6EC 30006330 */  andi       $v1, $v1, 0x30
/* 5A96C20 8007A6F0 4ED7000C */  jal        func_80035D38
/* 5A96C24 8007A6F4 FBFF03A2 */   sb        $v1, -0x5($s0)
/* 5A96C28 8007A6F8 A758010C */  jal        func_8005629C
/* 5A96C2C 8007A6FC 21202002 */   addu      $a0, $s1, $zero
/* 5A96C30 8007A700 C8E90108 */  j          .Llevel_23_8007A720
/* 5A96C34 8007A704 00000000 */   nop
.Llevel_23_8007A708:
/* 5A96C38 8007A708 0780023C */  lui        $v0, %hi(D_8006C704)
/* 5A96C3C 8007A70C 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 5A96C40 8007A710 58003126 */  addiu      $s1, $s1, 0x58
/* 5A96C44 8007A714 2B102202 */  sltu       $v0, $s1, $v0
/* 5A96C48 8007A718 BEFF4014 */  bnez       $v0, .Llevel_23_8007A614
/* 5A96C4C 8007A71C 58001026 */   addiu     $s0, $s0, 0x58
.Llevel_23_8007A720:
/* 5A96C50 8007A720 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 5A96C54 8007A724 1800B28F */  lw         $s2, 0x18($sp)
/* 5A96C58 8007A728 1400B18F */  lw         $s1, 0x14($sp)
/* 5A96C5C 8007A72C 1000B08F */  lw         $s0, 0x10($sp)
/* 5A96C60 8007A730 2000BD27 */  addiu      $sp, $sp, 0x20
/* 5A96C64 8007A734 0800E003 */  jr         $ra
/* 5A96C68 8007A738 00000000 */   nop
.size MobyUpdate_1002_level_23, . - MobyUpdate_1002_level_23
