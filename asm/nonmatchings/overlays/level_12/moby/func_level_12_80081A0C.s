.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_647_level_12
/* 416E73C 80081A0C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 416E740 80081A10 1000B0AF */  sw         $s0, 0x10($sp)
/* 416E744 80081A14 21808000 */  addu       $s0, $a0, $zero
/* 416E748 80081A18 0300023C */  lui        $v0, (0x3E800 >> 16)
/* 416E74C 80081A1C 00E84234 */  ori        $v0, $v0, (0x3E800 & 0xFFFF)
/* 416E750 80081A20 1800BFAF */  sw         $ra, 0x18($sp)
/* 416E754 80081A24 1400B1AF */  sw         $s1, 0x14($sp)
/* 416E758 80081A28 1400038E */  lw         $v1, 0x14($s0)
/* 416E75C 80081A2C 0000118E */  lw         $s1, 0x0($s0)
/* 416E760 80081A30 2A104300 */  slt        $v0, $v0, $v1
/* 416E764 80081A34 31004014 */  bnez       $v0, .Llevel_12_80081AFC
/* 416E768 80081A38 00000000 */   nop
/* 416E76C 80081A3C 48000392 */  lbu        $v1, 0x48($s0)
/* 416E770 80081A40 00000000 */  nop
/* 416E774 80081A44 05006010 */  beqz       $v1, .Llevel_12_80081A5C
/* 416E778 80081A48 01000224 */   addiu     $v0, $zero, 0x1
/* 416E77C 80081A4C 23006210 */  beq        $v1, $v0, .Llevel_12_80081ADC
/* 416E780 80081A50 00000000 */   nop
/* 416E784 80081A54 C1060208 */  j          .Llevel_12_80081B04
/* 416E788 80081A58 00000000 */   nop
.Llevel_12_80081A5C:
/* 416E78C 80081A5C 0C000426 */  addiu      $a0, $s0, 0xC
/* 416E790 80081A60 21288000 */  addu       $a1, $a0, $zero
/* 416E794 80081A64 653C010C */  jal        func_8004F194
/* 416E798 80081A68 21302002 */   addu      $a2, $s1, $zero
/* 416E79C 80081A6C 0800228E */  lw         $v0, 0x8($s1)
/* 416E7A0 80081A70 00000000 */  nop
/* 416E7A4 80081A74 02004224 */  addiu      $v0, $v0, 0x2
/* 416E7A8 80081A78 080022AE */  sw         $v0, 0x8($s1)
/* 416E7AC 80081A7C F1004228 */  slti       $v0, $v0, 0xF1
/* 416E7B0 80081A80 02004014 */  bnez       $v0, .Llevel_12_80081A8C
/* 416E7B4 80081A84 F0000224 */   addiu     $v0, $zero, 0xF0
/* 416E7B8 80081A88 080022AE */  sw         $v0, 0x8($s1)
.Llevel_12_80081A8C:
/* 416E7BC 80081A8C 4F000292 */  lbu        $v0, 0x4F($s0)
/* 416E7C0 80081A90 00000000 */  nop
/* 416E7C4 80081A94 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 416E7C8 80081A98 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 416E7CC 80081A9C FF004230 */  andi       $v0, $v0, 0xFF
/* 416E7D0 80081AA0 1600422C */  sltiu      $v0, $v0, 0x16
/* 416E7D4 80081AA4 02004010 */  beqz       $v0, .Llevel_12_80081AB0
/* 416E7D8 80081AA8 16000224 */   addiu     $v0, $zero, 0x16
/* 416E7DC 80081AAC 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_12_80081AB0:
/* 416E7E0 80081AB0 4D000292 */  lbu        $v0, 0x4D($s0)
/* 416E7E4 80081AB4 00000000 */  nop
/* 416E7E8 80081AB8 05004010 */  beqz       $v0, .Llevel_12_80081AD0
/* 416E7EC 80081ABC 0C002426 */   addiu     $a0, $s1, 0xC
/* 416E7F0 80081AC0 69D6000C */  jal        func_800359A4
/* 416E7F4 80081AC4 04000524 */   addiu     $a1, $zero, 0x4
/* 416E7F8 80081AC8 0E004010 */  beqz       $v0, .Llevel_12_80081B04
/* 416E7FC 80081ACC 00000000 */   nop
.Llevel_12_80081AD0:
/* 416E800 80081AD0 01000224 */  addiu      $v0, $zero, 0x1
/* 416E804 80081AD4 C1060208 */  j          .Llevel_12_80081B04
/* 416E808 80081AD8 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_12_80081ADC:
/* 416E80C 80081ADC 4F000292 */  lbu        $v0, 0x4F($s0)
/* 416E810 80081AE0 00000000 */  nop
/* 416E814 80081AE4 04004224 */  addiu      $v0, $v0, 0x4
/* 416E818 80081AE8 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 416E81C 80081AEC FF004230 */  andi       $v0, $v0, 0xFF
/* 416E820 80081AF0 8000422C */  sltiu      $v0, $v0, 0x80
/* 416E824 80081AF4 03004014 */  bnez       $v0, .Llevel_12_80081B04
/* 416E828 80081AF8 21200002 */   addu      $a0, $s0, $zero
.Llevel_12_80081AFC:
/* 416E82C 80081AFC C656010C */  jal        func_80055B18
/* 416E830 80081B00 00000000 */   nop
.Llevel_12_80081B04:
/* 416E834 80081B04 1800BF8F */  lw         $ra, 0x18($sp)
/* 416E838 80081B08 1400B18F */  lw         $s1, 0x14($sp)
/* 416E83C 80081B0C 1000B08F */  lw         $s0, 0x10($sp)
/* 416E840 80081B10 2000BD27 */  addiu      $sp, $sp, 0x20
/* 416E844 80081B14 0800E003 */  jr         $ra
/* 416E848 80081B18 00000000 */   nop
.size MobyUpdate_647_level_12, . - MobyUpdate_647_level_12
