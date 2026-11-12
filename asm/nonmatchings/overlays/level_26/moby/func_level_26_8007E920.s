.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_149_level_26
/* 622E650 8007E920 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 622E654 8007E924 3800B2AF */  sw         $s2, 0x38($sp)
/* 622E658 8007E928 21908000 */  addu       $s2, $a0, $zero
/* 622E65C 8007E92C 4000BFAF */  sw         $ra, 0x40($sp)
/* 622E660 8007E930 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 622E664 8007E934 3400B1AF */  sw         $s1, 0x34($sp)
/* 622E668 8007E938 3000B0AF */  sw         $s0, 0x30($sp)
/* 622E66C 8007E93C 3C004292 */  lbu        $v0, 0x3C($s2)
/* 622E670 8007E940 00000000 */  nop
/* 622E674 8007E944 05004010 */  beqz       $v0, .Llevel_26_8007E95C
/* 622E678 8007E948 00000000 */   nop
/* 622E67C 8007E94C C5E5000C */  jal        func_80039714
/* 622E680 8007E950 00000000 */   nop
/* 622E684 8007E954 D1FA0108 */  j          .Llevel_26_8007EB44
/* 622E688 8007E958 00000000 */   nop
.Llevel_26_8007E95C:
/* 622E68C 8007E95C 48005392 */  lbu        $s3, 0x48($s2)
/* 622E690 8007E960 0000518E */  lw         $s1, 0x0($s2)
/* 622E694 8007E964 05006012 */  beqz       $s3, .Llevel_26_8007E97C
/* 622E698 8007E968 01000224 */   addiu     $v0, $zero, 0x1
/* 622E69C 8007E96C 56006212 */  beq        $s3, $v0, .Llevel_26_8007EAC8
/* 622E6A0 8007E970 21204002 */   addu      $a0, $s2, $zero
/* 622E6A4 8007E974 D1FA0108 */  j          .Llevel_26_8007EB44
/* 622E6A8 8007E978 00000000 */   nop
.Llevel_26_8007E97C:
/* 622E6AC 8007E97C 2000A427 */  addiu      $a0, $sp, 0x20
/* 622E6B0 8007E980 0C005326 */  addiu      $s3, $s2, 0xC
/* 622E6B4 8007E984 5E3C010C */  jal        func_8004F178
/* 622E6B8 8007E988 21286002 */   addu      $a1, $s3, $zero
/* 622E6BC 8007E98C 21206002 */  addu       $a0, $s3, $zero
/* 622E6C0 8007E990 21286002 */  addu       $a1, $s3, $zero
/* 622E6C4 8007E994 653C010C */  jal        func_8004F194
/* 622E6C8 8007E998 21302002 */   addu      $a2, $s1, $zero
/* 622E6CC 8007E99C 21202002 */  addu       $a0, $s1, $zero
/* 622E6D0 8007E9A0 0800228E */  lw         $v0, 0x8($s1)
/* 622E6D4 8007E9A4 01000524 */  addiu      $a1, $zero, 0x1
/* 622E6D8 8007E9A8 F6FF4224 */  addiu      $v0, $v0, -0xA
/* 622E6DC 8007E9AC 7A3B010C */  jal        func_8004EDE8
/* 622E6E0 8007E9B0 080022AE */   sw        $v0, 0x8($s1)
/* 622E6E4 8007E9B4 0C00428E */  lw         $v0, 0xC($s2)
/* 622E6E8 8007E9B8 00000000 */  nop
/* 622E6EC 8007E9BC 00044228 */  slti       $v0, $v0, 0x400
/* 622E6F0 8007E9C0 5E004014 */  bnez       $v0, .Llevel_26_8007EB3C
/* 622E6F4 8007E9C4 00000000 */   nop
/* 622E6F8 8007E9C8 1000428E */  lw         $v0, 0x10($s2)
/* 622E6FC 8007E9CC 00000000 */  nop
/* 622E700 8007E9D0 00044228 */  slti       $v0, $v0, 0x400
/* 622E704 8007E9D4 59004014 */  bnez       $v0, .Llevel_26_8007EB3C
/* 622E708 8007E9D8 00000000 */   nop
/* 622E70C 8007E9DC 1400428E */  lw         $v0, 0x14($s2)
/* 622E710 8007E9E0 00000000 */  nop
/* 622E714 8007E9E4 00044228 */  slti       $v0, $v0, 0x400
/* 622E718 8007E9E8 54004014 */  bnez       $v0, .Llevel_26_8007EB3C
/* 622E71C 8007E9EC 2000A427 */   addiu     $a0, $sp, 0x20
/* 622E720 8007E9F0 DA60000C */  jal        func_80018368
/* 622E724 8007E9F4 21286002 */   addu      $a1, $s3, $zero
/* 622E728 8007E9F8 06004010 */  beqz       $v0, .Llevel_26_8007EA14
/* 622E72C 8007E9FC 21206002 */   addu      $a0, $s3, $zero
/* 622E730 8007EA00 21288000 */  addu       $a1, $a0, $zero
/* 622E734 8007EA04 723C010C */  jal        func_8004F1C8
/* 622E738 8007EA08 21302002 */   addu      $a2, $s1, $zero
/* 622E73C 8007EA0C ABFA0108 */  j          .Llevel_26_8007EAAC
/* 622E740 8007EA10 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_26_8007EA14:
/* 622E744 8007EA14 64000524 */  addiu      $a1, $zero, 0x64
/* 622E748 8007EA18 A270000C */  jal        func_8001C288
/* 622E74C 8007EA1C 07000624 */   addiu     $a2, $zero, 0x7
/* 622E750 8007EA20 09004010 */  beqz       $v0, .Llevel_26_8007EA48
/* 622E754 8007EA24 21206002 */   addu      $a0, $s3, $zero
/* 622E758 8007EA28 0000248E */  lw         $a0, 0x0($s1)
/* 622E75C 8007EA2C 0400258E */  lw         $a1, 0x4($s1)
/* 622E760 8007EA30 203A010C */  jal        func_8004E880
/* 622E764 8007EA34 21300000 */   addu      $a2, $zero, $zero
/* 622E768 8007EA38 0780013C */  lui        $at, %hi(D_80070328 + 0x298)
/* 622E76C 8007EA3C C00522AC */  sw         $v0, %lo(D_80070328 + 0x298)($at)
/* 622E770 8007EA40 ABFA0108 */  j          .Llevel_26_8007EAAC
/* 622E774 8007EA44 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_26_8007EA48:
/* 622E778 8007EA48 2C010524 */  addiu      $a1, $zero, 0x12C
/* 622E77C 8007EA4C 01000624 */  addiu      $a2, $zero, 0x1
/* 622E780 8007EA50 8000023C */  lui        $v0, (0x800000 >> 16)
/* 622E784 8007EA54 1000A2AF */  sw         $v0, 0x10($sp)
/* 622E788 8007EA58 0C00228E */  lw         $v0, 0xC($s1)
/* 622E78C 8007EA5C 21380000 */  addu       $a3, $zero, $zero
/* 622E790 8007EA60 8C6E000C */  jal        func_8001BA30
/* 622E794 8007EA64 1400A2AF */   sw        $v0, 0x14($sp)
/* 622E798 8007EA68 21804000 */  addu       $s0, $v0, $zero
/* 622E79C 8007EA6C 0B000012 */  beqz       $s0, .Llevel_26_8007EA9C
/* 622E7A0 8007EA70 21206002 */   addu      $a0, $s3, $zero
/* 622E7A4 8007EA74 0000248E */  lw         $a0, 0x0($s1)
/* 622E7A8 8007EA78 0400258E */  lw         $a1, 0x4($s1)
/* 622E7AC 8007EA7C 203A010C */  jal        func_8004E880
/* 622E7B0 8007EA80 21300000 */   addu      $a2, $zero, $zero
/* 622E7B4 8007EA84 510002A2 */  sb         $v0, 0x51($s0)
/* 622E7B8 8007EA88 FF004230 */  andi       $v0, $v0, 0xFF
/* 622E7BC 8007EA8C 07004014 */  bnez       $v0, .Llevel_26_8007EAAC
/* 622E7C0 8007EA90 01000224 */   addiu     $v0, $zero, 0x1
/* 622E7C4 8007EA94 ABFA0108 */  j          .Llevel_26_8007EAAC
/* 622E7C8 8007EA98 510002A2 */   sb        $v0, 0x51($s0)
.Llevel_26_8007EA9C:
/* 622E7CC 8007EA9C 6564000C */  jal        func_80019194
/* 622E7D0 8007EAA0 7D000524 */   addiu     $a1, $zero, 0x7D
/* 622E7D4 8007EAA4 02004010 */  beqz       $v0, .Llevel_26_8007EAB0
/* 622E7D8 8007EAA8 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_26_8007EAAC:
/* 622E7DC 8007EAAC 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_26_8007EAB0:
/* 622E7E0 8007EAB0 4ED7000C */  jal        func_80035D38
/* 622E7E4 8007EAB4 21204002 */   addu      $a0, $s2, $zero
/* 622E7E8 8007EAB8 A758010C */  jal        func_8005629C
/* 622E7EC 8007EABC 21204002 */   addu      $a0, $s2, $zero
/* 622E7F0 8007EAC0 D1FA0108 */  j          .Llevel_26_8007EB44
/* 622E7F4 8007EAC4 00000000 */   nop
.Llevel_26_8007EAC8:
/* 622E7F8 8007EAC8 21280000 */  addu       $a1, $zero, $zero
/* 622E7FC 8007EACC AFEE000C */  jal        func_8003BABC
/* 622E800 8007EAD0 21300000 */   addu      $a2, $zero, $zero
/* 622E804 8007EAD4 05000424 */  addiu      $a0, $zero, 0x5
/* 622E808 8007EAD8 21304002 */  addu       $a2, $s2, $zero
/* 622E80C 8007EADC 02000724 */  addiu      $a3, $zero, 0x2
/* 622E810 8007EAE0 03000224 */  addiu      $v0, $zero, 0x3
/* 622E814 8007EAE4 40001124 */  addiu      $s1, $zero, 0x40
/* 622E818 8007EAE8 36004586 */  lh         $a1, 0x36($s2)
/* 622E81C 8007EAEC 00011024 */  addiu      $s0, $zero, 0x100
/* 622E820 8007EAF0 1000A2AF */  sw         $v0, 0x10($sp)
/* 622E824 8007EAF4 1400B1AF */  sw         $s1, 0x14($sp)
/* 622E828 8007EAF8 7AE4000C */  jal        func_800391E8
/* 622E82C 8007EAFC 1800B0AF */   sw        $s0, 0x18($sp)
/* 622E830 8007EB00 01000424 */  addiu      $a0, $zero, 0x1
/* 622E834 8007EB04 21304002 */  addu       $a2, $s2, $zero
/* 622E838 8007EB08 01000724 */  addiu      $a3, $zero, 0x1
/* 622E83C 8007EB0C 1400428E */  lw         $v0, 0x14($s2)
/* 622E840 8007EB10 36004586 */  lh         $a1, 0x36($s2)
/* 622E844 8007EB14 00024224 */  addiu      $v0, $v0, 0x200
/* 622E848 8007EB18 140042AE */  sw         $v0, 0x14($s2)
/* 622E84C 8007EB1C 1000B3AF */  sw         $s3, 0x10($sp)
/* 622E850 8007EB20 1400B1AF */  sw         $s1, 0x14($sp)
/* 622E854 8007EB24 7AE4000C */  jal        func_800391E8
/* 622E858 8007EB28 1800B0AF */   sw        $s0, 0x18($sp)
/* 622E85C 8007EB2C 03004010 */  beqz       $v0, .Llevel_26_8007EB3C
/* 622E860 8007EB30 0C004424 */   addiu     $a0, $v0, 0xC
/* 622E864 8007EB34 5E3C010C */  jal        func_8004F178
/* 622E868 8007EB38 0C004526 */   addiu     $a1, $s2, 0xC
.Llevel_26_8007EB3C:
/* 622E86C 8007EB3C C656010C */  jal        func_80055B18
/* 622E870 8007EB40 21204002 */   addu      $a0, $s2, $zero
.Llevel_26_8007EB44:
/* 622E874 8007EB44 4000BF8F */  lw         $ra, 0x40($sp)
/* 622E878 8007EB48 3C00B38F */  lw         $s3, 0x3C($sp)
/* 622E87C 8007EB4C 3800B28F */  lw         $s2, 0x38($sp)
/* 622E880 8007EB50 3400B18F */  lw         $s1, 0x34($sp)
/* 622E884 8007EB54 3000B08F */  lw         $s0, 0x30($sp)
/* 622E888 8007EB58 4800BD27 */  addiu      $sp, $sp, 0x48
/* 622E88C 8007EB5C 0800E003 */  jr         $ra
/* 622E890 8007EB60 00000000 */   nop
.size MobyUpdate_149_level_26, . - MobyUpdate_149_level_26
