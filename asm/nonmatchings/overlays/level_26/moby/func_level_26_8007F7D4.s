.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_164_level_26
/* 622F504 8007F7D4 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 622F508 8007F7D8 6000B2AF */  sw         $s2, 0x60($sp)
/* 622F50C 8007F7DC 21908000 */  addu       $s2, $a0, $zero
/* 622F510 8007F7E0 01000224 */  addiu      $v0, $zero, 0x1
/* 622F514 8007F7E4 6C00BFAF */  sw         $ra, 0x6C($sp)
/* 622F518 8007F7E8 6800B4AF */  sw         $s4, 0x68($sp)
/* 622F51C 8007F7EC 6400B3AF */  sw         $s3, 0x64($sp)
/* 622F520 8007F7F0 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 622F524 8007F7F4 5800B0AF */  sw         $s0, 0x58($sp)
/* 622F528 8007F7F8 48004392 */  lbu        $v1, 0x48($s2)
/* 622F52C 8007F7FC 0000518E */  lw         $s1, 0x0($s2)
/* 622F530 8007F800 CF006210 */  beq        $v1, $v0, .Llevel_26_8007FB40
/* 622F534 8007F804 02006228 */   slti      $v0, $v1, 0x2
/* 622F538 8007F808 05004010 */  beqz       $v0, .Llevel_26_8007F820
/* 622F53C 8007F80C 00000000 */   nop
/* 622F540 8007F810 0F006010 */  beqz       $v1, .Llevel_26_8007F850
/* 622F544 8007F814 00000000 */   nop
/* 622F548 8007F818 14FF0108 */  j          .Llevel_26_8007FC50
/* 622F54C 8007F81C 00000000 */   nop
.Llevel_26_8007F820:
/* 622F550 8007F820 02000224 */  addiu      $v0, $zero, 0x2
/* 622F554 8007F824 0A016214 */  bne        $v1, $v0, .Llevel_26_8007FC50
/* 622F558 8007F828 21204002 */   addu      $a0, $s2, $zero
/* 622F55C 8007F82C 0800228E */  lw         $v0, 0x8($s1)
/* 622F560 8007F830 12002392 */  lbu        $v1, 0x12($s1)
/* 622F564 8007F834 F4FF4224 */  addiu      $v0, $v0, -0xC
/* 622F568 8007F838 080022AE */  sw         $v0, 0x8($s1)
/* 622F56C 8007F83C 45004292 */  lbu        $v0, 0x45($s2)
/* 622F570 8007F840 04000524 */  addiu      $a1, $zero, 0x4
/* 622F574 8007F844 21104300 */  addu       $v0, $v0, $v1
/* 622F578 8007F848 4957010C */  jal        func_80055D24
/* 622F57C 8007F84C 450042A2 */   sb        $v0, 0x45($s2)
.Llevel_26_8007F850:
/* 622F580 8007F850 0C00428E */  lw         $v0, 0xC($s2)
/* 622F584 8007F854 00000000 */  nop
/* 622F588 8007F858 00044228 */  slti       $v0, $v0, 0x400
/* 622F58C 8007F85C B8004014 */  bnez       $v0, .Llevel_26_8007FB40
/* 622F590 8007F860 00000000 */   nop
/* 622F594 8007F864 1000428E */  lw         $v0, 0x10($s2)
/* 622F598 8007F868 00000000 */  nop
/* 622F59C 8007F86C 00044228 */  slti       $v0, $v0, 0x400
/* 622F5A0 8007F870 B3004014 */  bnez       $v0, .Llevel_26_8007FB40
/* 622F5A4 8007F874 00000000 */   nop
/* 622F5A8 8007F878 1400428E */  lw         $v0, 0x14($s2)
/* 622F5AC 8007F87C 00000000 */  nop
/* 622F5B0 8007F880 00044228 */  slti       $v0, $v0, 0x400
/* 622F5B4 8007F884 AE004014 */  bnez       $v0, .Llevel_26_8007FB40
/* 622F5B8 8007F888 1800A427 */   addiu     $a0, $sp, 0x18
/* 622F5BC 8007F88C 0C005026 */  addiu      $s0, $s2, 0xC
/* 622F5C0 8007F890 5E3C010C */  jal        func_8004F178
/* 622F5C4 8007F894 21280002 */   addu      $a1, $s0, $zero
/* 622F5C8 8007F898 21200002 */  addu       $a0, $s0, $zero
/* 622F5CC 8007F89C 21288000 */  addu       $a1, $a0, $zero
/* 622F5D0 8007F8A0 653C010C */  jal        func_8004F194
/* 622F5D4 8007F8A4 21302002 */   addu      $a2, $s1, $zero
/* 622F5D8 8007F8A8 21204002 */  addu       $a0, $s2, $zero
/* 622F5DC 8007F8AC 21280000 */  addu       $a1, $zero, $zero
/* 622F5E0 8007F8B0 2800B027 */  addiu      $s0, $sp, 0x28
/* 622F5E4 8007F8B4 C557010C */  jal        func_80055F14
/* 622F5E8 8007F8B8 21300002 */   addu      $a2, $s0, $zero
/* 622F5EC 8007F8BC 21204002 */  addu       $a0, $s2, $zero
/* 622F5F0 8007F8C0 01000524 */  addiu      $a1, $zero, 0x1
/* 622F5F4 8007F8C4 3800B327 */  addiu      $s3, $sp, 0x38
/* 622F5F8 8007F8C8 C557010C */  jal        func_80055F14
/* 622F5FC 8007F8CC 21306002 */   addu      $a2, $s3, $zero
/* 622F600 8007F8D0 48004392 */  lbu        $v1, 0x48($s2)
/* 622F604 8007F8D4 02000224 */  addiu      $v0, $zero, 0x2
/* 622F608 8007F8D8 0D006214 */  bne        $v1, $v0, .Llevel_26_8007F910
/* 622F60C 8007F8DC 21A00000 */   addu      $s4, $zero, $zero
/* 622F610 8007F8E0 21200002 */  addu       $a0, $s0, $zero
/* 622F614 8007F8E4 64000524 */  addiu      $a1, $zero, 0x64
/* 622F618 8007F8E8 A270000C */  jal        func_8001C288
/* 622F61C 8007F8EC 21300000 */   addu      $a2, $zero, $zero
/* 622F620 8007F8F0 0E004014 */  bnez       $v0, .Llevel_26_8007F92C
/* 622F624 8007F8F4 21206002 */   addu      $a0, $s3, $zero
/* 622F628 8007F8F8 64000524 */  addiu      $a1, $zero, 0x64
/* 622F62C 8007F8FC A270000C */  jal        func_8001C288
/* 622F630 8007F900 21300000 */   addu      $a2, $zero, $zero
/* 622F634 8007F904 21204000 */  addu       $a0, $v0, $zero
/* 622F638 8007F908 49FE0108 */  j          .Llevel_26_8007F924
/* 622F63C 8007F90C 2BA00400 */   sltu      $s4, $zero, $a0
.Llevel_26_8007F910:
/* 622F640 8007F910 21200002 */  addu       $a0, $s0, $zero
/* 622F644 8007F914 64000524 */  addiu      $a1, $zero, 0x64
/* 622F648 8007F918 A270000C */  jal        func_8001C288
/* 622F64C 8007F91C 07000624 */   addiu     $a2, $zero, 0x7
/* 622F650 8007F920 21204000 */  addu       $a0, $v0, $zero
.Llevel_26_8007F924:
/* 622F654 8007F924 32008010 */  beqz       $a0, .Llevel_26_8007F9F0
/* 622F658 8007F928 11002426 */   addiu     $a0, $s1, 0x11
.Llevel_26_8007F92C:
/* 622F65C 8007F92C 49004292 */  lbu        $v0, 0x49($s2)
/* 622F660 8007F930 00000000 */  nop
/* 622F664 8007F934 01004224 */  addiu      $v0, $v0, 0x1
/* 622F668 8007F938 03008012 */  beqz       $s4, .Llevel_26_8007F948
/* 622F66C 8007F93C 490042A2 */   sb        $v0, 0x49($s2)
/* 622F670 8007F940 53FE0108 */  j          .Llevel_26_8007F94C
/* 622F674 8007F944 F4FF0224 */   addiu     $v0, $zero, -0xC
.Llevel_26_8007F948:
/* 622F678 8007F948 0C000224 */  addiu      $v0, $zero, 0xC
.Llevel_26_8007F94C:
/* 622F67C 8007F94C 120022A6 */  sh         $v0, 0x12($s1)
/* 622F680 8007F950 0000248E */  lw         $a0, 0x0($s1)
/* 622F684 8007F954 0400258E */  lw         $a1, 0x4($s1)
/* 622F688 8007F958 203A010C */  jal        func_8004E880
/* 622F68C 8007F95C 21300000 */   addu      $a2, $zero, $zero
/* 622F690 8007F960 4800B027 */  addiu      $s0, $sp, 0x48
/* 622F694 8007F964 21200002 */  addu       $a0, $s0, $zero
/* 622F698 8007F968 0C004526 */  addiu      $a1, $s2, 0xC
/* 622F69C 8007F96C 0780033C */  lui        $v1, %hi(D_80070328 + 0x298)
/* 622F6A0 8007F970 C0056324 */  addiu      $v1, $v1, %lo(D_80070328 + 0x298)
/* 622F6A4 8007F974 68FD6624 */  addiu      $a2, $v1, -0x298
/* 622F6A8 8007F978 723C010C */  jal        func_8004F1C8
/* 622F6AC 8007F97C 000062AC */   sw        $v0, 0x0($v1)
/* 622F6B0 8007F980 21202002 */  addu       $a0, $s1, $zero
/* 622F6B4 8007F984 21280002 */  addu       $a1, $s0, $zero
/* 622F6B8 8007F988 DD3B010C */  jal        func_8004EF74
/* 622F6BC 8007F98C 21302002 */   addu      $a2, $s1, $zero
/* 622F6C0 8007F990 15004010 */  beqz       $v0, .Llevel_26_8007F9E8
/* 622F6C4 8007F994 02000224 */   addiu     $v0, $zero, 0x2
/* 622F6C8 8007F998 0000238E */  lw         $v1, 0x0($s1)
/* 622F6CC 8007F99C 00000000 */  nop
/* 622F6D0 8007F9A0 40100300 */  sll        $v0, $v1, 1
/* 622F6D4 8007F9A4 21104300 */  addu       $v0, $v0, $v1
/* 622F6D8 8007F9A8 40100200 */  sll        $v0, $v0, 1
/* 622F6DC 8007F9AC 0400238E */  lw         $v1, 0x4($s1)
/* 622F6E0 8007F9B0 C3100200 */  sra        $v0, $v0, 3
/* 622F6E4 8007F9B4 000022AE */  sw         $v0, 0x0($s1)
/* 622F6E8 8007F9B8 40100300 */  sll        $v0, $v1, 1
/* 622F6EC 8007F9BC 21104300 */  addu       $v0, $v0, $v1
/* 622F6F0 8007F9C0 40100200 */  sll        $v0, $v0, 1
/* 622F6F4 8007F9C4 0800238E */  lw         $v1, 0x8($s1)
/* 622F6F8 8007F9C8 C3100200 */  sra        $v0, $v0, 3
/* 622F6FC 8007F9CC 040022AE */  sw         $v0, 0x4($s1)
/* 622F700 8007F9D0 40100300 */  sll        $v0, $v1, 1
/* 622F704 8007F9D4 21104300 */  addu       $v0, $v0, $v1
/* 622F708 8007F9D8 40100200 */  sll        $v0, $v0, 1
/* 622F70C 8007F9DC C3100200 */  sra        $v0, $v0, 3
/* 622F710 8007F9E0 080022AE */  sw         $v0, 0x8($s1)
/* 622F714 8007F9E4 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_26_8007F9E8:
/* 622F718 8007F9E8 480042A2 */  sb         $v0, 0x48($s2)
/* 622F71C 8007F9EC 11002426 */  addiu      $a0, $s1, 0x11
.Llevel_26_8007F9F0:
/* 622F720 8007F9F0 69D6000C */  jal        func_800359A4
/* 622F724 8007F9F4 01000524 */   addiu     $a1, $zero, 0x1
/* 622F728 8007F9F8 44004010 */  beqz       $v0, .Llevel_26_8007FB0C
/* 622F72C 8007F9FC 2800A427 */   addiu     $a0, $sp, 0x28
/* 622F730 8007FA00 96000524 */  addiu      $a1, $zero, 0x96
/* 622F734 8007FA04 01000624 */  addiu      $a2, $zero, 0x1
/* 622F738 8007FA08 21380000 */  addu       $a3, $zero, $zero
/* 622F73C 8007FA0C 0010103C */  lui        $s0, (0x10000000 >> 16)
/* 622F740 8007FA10 1000B0AF */  sw         $s0, 0x10($sp)
/* 622F744 8007FA14 8C6E000C */  jal        func_8001BA30
/* 622F748 8007FA18 1400B2AF */   sw        $s2, 0x14($sp)
/* 622F74C 8007FA1C 21304000 */  addu       $a2, $v0, $zero
/* 622F750 8007FA20 48004392 */  lbu        $v1, 0x48($s2)
/* 622F754 8007FA24 02000224 */  addiu      $v0, $zero, 0x2
/* 622F758 8007FA28 0D006214 */  bne        $v1, $v0, .Llevel_26_8007FA60
/* 622F75C 8007FA2C 00000000 */   nop
/* 622F760 8007FA30 0D00C014 */  bnez       $a2, .Llevel_26_8007FA68
/* 622F764 8007FA34 3800A427 */   addiu     $a0, $sp, 0x38
/* 622F768 8007FA38 96000524 */  addiu      $a1, $zero, 0x96
/* 622F76C 8007FA3C 01000624 */  addiu      $a2, $zero, 0x1
/* 622F770 8007FA40 21380000 */  addu       $a3, $zero, $zero
/* 622F774 8007FA44 1000B0AF */  sw         $s0, 0x10($sp)
/* 622F778 8007FA48 8C6E000C */  jal        func_8001BA30
/* 622F77C 8007FA4C 1400B2AF */   sw        $s2, 0x14($sp)
/* 622F780 8007FA50 21304000 */  addu       $a2, $v0, $zero
/* 622F784 8007FA54 2E00C010 */  beqz       $a2, .Llevel_26_8007FB10
/* 622F788 8007FA58 0C002426 */   addiu     $a0, $s1, 0xC
/* 622F78C 8007FA5C 01001424 */  addiu      $s4, $zero, 0x1
.Llevel_26_8007FA60:
/* 622F790 8007FA60 2B00C010 */  beqz       $a2, .Llevel_26_8007FB10
/* 622F794 8007FA64 0C002426 */   addiu     $a0, $s1, 0xC
.Llevel_26_8007FA68:
/* 622F798 8007FA68 49004292 */  lbu        $v0, 0x49($s2)
/* 622F79C 8007FA6C 00000000 */  nop
/* 622F7A0 8007FA70 01004224 */  addiu      $v0, $v0, 0x1
/* 622F7A4 8007FA74 03008012 */  beqz       $s4, .Llevel_26_8007FA84
/* 622F7A8 8007FA78 490042A2 */   sb        $v0, 0x49($s2)
/* 622F7AC 8007FA7C A2FE0108 */  j          .Llevel_26_8007FA88
/* 622F7B0 8007FA80 F4FF0224 */   addiu     $v0, $zero, -0xC
.Llevel_26_8007FA84:
/* 622F7B4 8007FA84 0C000224 */  addiu      $v0, $zero, 0xC
.Llevel_26_8007FA88:
/* 622F7B8 8007FA88 120022A6 */  sh         $v0, 0x12($s1)
/* 622F7BC 8007FA8C 4800B027 */  addiu      $s0, $sp, 0x48
/* 622F7C0 8007FA90 21200002 */  addu       $a0, $s0, $zero
/* 622F7C4 8007FA94 0C004526 */  addiu      $a1, $s2, 0xC
/* 622F7C8 8007FA98 723C010C */  jal        func_8004F1C8
/* 622F7CC 8007FA9C 0C00C624 */   addiu     $a2, $a2, 0xC
/* 622F7D0 8007FAA0 21202002 */  addu       $a0, $s1, $zero
/* 622F7D4 8007FAA4 21280002 */  addu       $a1, $s0, $zero
/* 622F7D8 8007FAA8 DD3B010C */  jal        func_8004EF74
/* 622F7DC 8007FAAC 21302002 */   addu      $a2, $s1, $zero
/* 622F7E0 8007FAB0 15004010 */  beqz       $v0, .Llevel_26_8007FB08
/* 622F7E4 8007FAB4 02000224 */   addiu     $v0, $zero, 0x2
/* 622F7E8 8007FAB8 0000238E */  lw         $v1, 0x0($s1)
/* 622F7EC 8007FABC 00000000 */  nop
/* 622F7F0 8007FAC0 40100300 */  sll        $v0, $v1, 1
/* 622F7F4 8007FAC4 21104300 */  addu       $v0, $v0, $v1
/* 622F7F8 8007FAC8 40100200 */  sll        $v0, $v0, 1
/* 622F7FC 8007FACC 0400238E */  lw         $v1, 0x4($s1)
/* 622F800 8007FAD0 C3100200 */  sra        $v0, $v0, 3
/* 622F804 8007FAD4 000022AE */  sw         $v0, 0x0($s1)
/* 622F808 8007FAD8 40100300 */  sll        $v0, $v1, 1
/* 622F80C 8007FADC 21104300 */  addu       $v0, $v0, $v1
/* 622F810 8007FAE0 40100200 */  sll        $v0, $v0, 1
/* 622F814 8007FAE4 0800238E */  lw         $v1, 0x8($s1)
/* 622F818 8007FAE8 C3100200 */  sra        $v0, $v0, 3
/* 622F81C 8007FAEC 040022AE */  sw         $v0, 0x4($s1)
/* 622F820 8007FAF0 40100300 */  sll        $v0, $v1, 1
/* 622F824 8007FAF4 21104300 */  addu       $v0, $v0, $v1
/* 622F828 8007FAF8 40100200 */  sll        $v0, $v0, 1
/* 622F82C 8007FAFC C3100200 */  sra        $v0, $v0, 3
/* 622F830 8007FB00 080022AE */  sw         $v0, 0x8($s1)
/* 622F834 8007FB04 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_26_8007FB08:
/* 622F838 8007FB08 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_26_8007FB0C:
/* 622F83C 8007FB0C 0C002426 */  addiu      $a0, $s1, 0xC
.Llevel_26_8007FB10:
/* 622F840 8007FB10 69D6000C */  jal        func_800359A4
/* 622F844 8007FB14 02000524 */   addiu     $a1, $zero, 0x2
/* 622F848 8007FB18 07004014 */  bnez       $v0, .Llevel_26_8007FB38
/* 622F84C 8007FB1C 21204002 */   addu      $a0, $s2, $zero
/* 622F850 8007FB20 49004292 */  lbu        $v0, 0x49($s2)
/* 622F854 8007FB24 00000000 */  nop
/* 622F858 8007FB28 0B00422C */  sltiu      $v0, $v0, 0xB
/* 622F85C 8007FB2C 08004014 */  bnez       $v0, .Llevel_26_8007FB50
/* 622F860 8007FB30 2800A427 */   addiu     $a0, $sp, 0x28
/* 622F864 8007FB34 21204002 */  addu       $a0, $s2, $zero
.Llevel_26_8007FB38:
/* 622F868 8007FB38 6EDA000C */  jal        func_800369B8
/* 622F86C 8007FB3C 18000524 */   addiu     $a1, $zero, 0x18
.Llevel_26_8007FB40:
/* 622F870 8007FB40 C656010C */  jal        func_80055B18
/* 622F874 8007FB44 21204002 */   addu      $a0, $s2, $zero
/* 622F878 8007FB48 14FF0108 */  j          .Llevel_26_8007FC50
/* 622F87C 8007FB4C 00000000 */   nop
.Llevel_26_8007FB50:
/* 622F880 8007FB50 6564000C */  jal        func_80019194
/* 622F884 8007FB54 96000524 */   addiu     $a1, $zero, 0x96
/* 622F888 8007FB58 21204000 */  addu       $a0, $v0, $zero
/* 622F88C 8007FB5C 48004392 */  lbu        $v1, 0x48($s2)
/* 622F890 8007FB60 02000224 */  addiu      $v0, $zero, 0x2
/* 622F894 8007FB64 09006214 */  bne        $v1, $v0, .Llevel_26_8007FB8C
/* 622F898 8007FB68 00000000 */   nop
/* 622F89C 8007FB6C 0E008014 */  bnez       $a0, .Llevel_26_8007FBA8
/* 622F8A0 8007FB70 3800A427 */   addiu     $a0, $sp, 0x38
/* 622F8A4 8007FB74 6564000C */  jal        func_80019194
/* 622F8A8 8007FB78 96000524 */   addiu     $a1, $zero, 0x96
/* 622F8AC 8007FB7C 21204000 */  addu       $a0, $v0, $zero
/* 622F8B0 8007FB80 04008010 */  beqz       $a0, .Llevel_26_8007FB94
/* 622F8B4 8007FB84 00000000 */   nop
/* 622F8B8 8007FB88 01001424 */  addiu      $s4, $zero, 0x1
.Llevel_26_8007FB8C:
/* 622F8BC 8007FB8C 06008014 */  bnez       $a0, .Llevel_26_8007FBA8
/* 622F8C0 8007FB90 00000000 */   nop
.Llevel_26_8007FB94:
/* 622F8C4 8007FB94 1800A427 */  addiu      $a0, $sp, 0x18
/* 622F8C8 8007FB98 DA60000C */  jal        func_80018368
/* 622F8CC 8007FB9C 0C004526 */   addiu     $a1, $s2, 0xC
/* 622F8D0 8007FBA0 27004010 */  beqz       $v0, .Llevel_26_8007FC40
/* 622F8D4 8007FBA4 00000000 */   nop
.Llevel_26_8007FBA8:
/* 622F8D8 8007FBA8 49004292 */  lbu        $v0, 0x49($s2)
/* 622F8DC 8007FBAC 00000000 */  nop
/* 622F8E0 8007FBB0 01004224 */  addiu      $v0, $v0, 0x1
/* 622F8E4 8007FBB4 03008012 */  beqz       $s4, .Llevel_26_8007FBC4
/* 622F8E8 8007FBB8 490042A2 */   sb        $v0, 0x49($s2)
/* 622F8EC 8007FBBC F2FE0108 */  j          .Llevel_26_8007FBC8
/* 622F8F0 8007FBC0 F4FF0224 */   addiu     $v0, $zero, -0xC
.Llevel_26_8007FBC4:
/* 622F8F4 8007FBC4 0C000224 */  addiu      $v0, $zero, 0xC
.Llevel_26_8007FBC8:
/* 622F8F8 8007FBC8 120022A6 */  sh         $v0, 0x12($s1)
/* 622F8FC 8007FBCC 21202002 */  addu       $a0, $s1, $zero
/* 622F900 8007FBD0 0780053C */  lui        $a1, %hi(D_80071918)
/* 622F904 8007FBD4 1819A524 */  addiu      $a1, $a1, %lo(D_80071918)
/* 622F908 8007FBD8 DD3B010C */  jal        func_8004EF74
/* 622F90C 8007FBDC 21302002 */   addu      $a2, $s1, $zero
/* 622F910 8007FBE0 16004010 */  beqz       $v0, .Llevel_26_8007FC3C
/* 622F914 8007FBE4 02000224 */   addiu     $v0, $zero, 0x2
/* 622F918 8007FBE8 0000238E */  lw         $v1, 0x0($s1)
/* 622F91C 8007FBEC 00000000 */  nop
/* 622F920 8007FBF0 40100300 */  sll        $v0, $v1, 1
/* 622F924 8007FBF4 21104300 */  addu       $v0, $v0, $v1
/* 622F928 8007FBF8 40100200 */  sll        $v0, $v0, 1
/* 622F92C 8007FBFC 0400238E */  lw         $v1, 0x4($s1)
/* 622F930 8007FC00 C3100200 */  sra        $v0, $v0, 3
/* 622F934 8007FC04 000022AE */  sw         $v0, 0x0($s1)
/* 622F938 8007FC08 40100300 */  sll        $v0, $v1, 1
/* 622F93C 8007FC0C 21104300 */  addu       $v0, $v0, $v1
/* 622F940 8007FC10 40100200 */  sll        $v0, $v0, 1
/* 622F944 8007FC14 0800238E */  lw         $v1, 0x8($s1)
/* 622F948 8007FC18 C3100200 */  sra        $v0, $v0, 3
/* 622F94C 8007FC1C 040022AE */  sw         $v0, 0x4($s1)
/* 622F950 8007FC20 40100300 */  sll        $v0, $v1, 1
/* 622F954 8007FC24 21104300 */  addu       $v0, $v0, $v1
/* 622F958 8007FC28 40100200 */  sll        $v0, $v0, 1
/* 622F95C 8007FC2C C3100200 */  sra        $v0, $v0, 3
/* 622F960 8007FC30 14004224 */  addiu      $v0, $v0, 0x14
/* 622F964 8007FC34 080022AE */  sw         $v0, 0x8($s1)
/* 622F968 8007FC38 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_26_8007FC3C:
/* 622F96C 8007FC3C 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_26_8007FC40:
/* 622F970 8007FC40 4ED7000C */  jal        func_80035D38
/* 622F974 8007FC44 21204002 */   addu      $a0, $s2, $zero
/* 622F978 8007FC48 A758010C */  jal        func_8005629C
/* 622F97C 8007FC4C 21204002 */   addu      $a0, $s2, $zero
.Llevel_26_8007FC50:
/* 622F980 8007FC50 6C00BF8F */  lw         $ra, 0x6C($sp)
/* 622F984 8007FC54 6800B48F */  lw         $s4, 0x68($sp)
/* 622F988 8007FC58 6400B38F */  lw         $s3, 0x64($sp)
/* 622F98C 8007FC5C 6000B28F */  lw         $s2, 0x60($sp)
/* 622F990 8007FC60 5C00B18F */  lw         $s1, 0x5C($sp)
/* 622F994 8007FC64 5800B08F */  lw         $s0, 0x58($sp)
/* 622F998 8007FC68 7000BD27 */  addiu      $sp, $sp, 0x70
/* 622F99C 8007FC6C 0800E003 */  jr         $ra
/* 622F9A0 8007FC70 00000000 */   nop
.size MobyUpdate_164_level_26, . - MobyUpdate_164_level_26
