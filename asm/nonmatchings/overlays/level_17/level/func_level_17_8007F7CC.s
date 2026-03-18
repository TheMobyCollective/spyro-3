.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_17_8007F7CC
/* 4D0CCFC 8007F7CC 78FFBD27 */  addiu      $sp, $sp, -0x88
/* 4D0CD00 8007F7D0 7400B5AF */  sw         $s5, 0x74($sp)
/* 4D0CD04 8007F7D4 21A88000 */  addu       $s5, $a0, $zero
/* 4D0CD08 8007F7D8 6800B2AF */  sw         $s2, 0x68($sp)
/* 4D0CD0C 8007F7DC 2190C000 */  addu       $s2, $a2, $zero
/* 4D0CD10 8007F7E0 1000A427 */  addiu      $a0, $sp, 0x10
/* 4D0CD14 8007F7E4 8400BFAF */  sw         $ra, 0x84($sp)
/* 4D0CD18 8007F7E8 8000BEAF */  sw         $fp, 0x80($sp)
/* 4D0CD1C 8007F7EC 7C00B7AF */  sw         $s7, 0x7C($sp)
/* 4D0CD20 8007F7F0 7800B6AF */  sw         $s6, 0x78($sp)
/* 4D0CD24 8007F7F4 7000B4AF */  sw         $s4, 0x70($sp)
/* 4D0CD28 8007F7F8 6C00B3AF */  sw         $s3, 0x6C($sp)
/* 4D0CD2C 8007F7FC 6400B1AF */  sw         $s1, 0x64($sp)
/* 4D0CD30 8007F800 6000B0AF */  sw         $s0, 0x60($sp)
/* 4D0CD34 8007F804 4000A5AF */  sw         $a1, 0x40($sp)
/* 4D0CD38 8007F808 5A3C010C */  jal        func_8004F168
/* 4D0CD3C 8007F80C 4800A7AF */   sw        $a3, 0x48($sp)
/* 4D0CD40 8007F810 0A00A01A */  blez       $s5, .Llevel_17_8007F83C
/* 4D0CD44 8007F814 21980000 */   addu      $s3, $zero, $zero
/* 4D0CD48 8007F818 4800B08F */  lw         $s0, 0x48($sp)
.Llevel_17_8007F81C:
/* 4D0CD4C 8007F81C 1000A427 */  addiu      $a0, $sp, 0x10
/* 4D0CD50 8007F820 21288000 */  addu       $a1, $a0, $zero
/* 4D0CD54 8007F824 653C010C */  jal        func_8004F194
/* 4D0CD58 8007F828 21300002 */   addu      $a2, $s0, $zero
/* 4D0CD5C 8007F82C 01007326 */  addiu      $s3, $s3, 0x1
/* 4D0CD60 8007F830 2A107502 */  slt        $v0, $s3, $s5
/* 4D0CD64 8007F834 F9FF4014 */  bnez       $v0, .Llevel_17_8007F81C
/* 4D0CD68 8007F838 0C001026 */   addiu     $s0, $s0, 0xC
.Llevel_17_8007F83C:
/* 4D0CD6C 8007F83C 1000A68F */  lw         $a2, 0x10($sp)
/* 4D0CD70 8007F840 00000000 */  nop
/* 4D0CD74 8007F844 1A00D500 */  div        $zero, $a2, $s5
/* 4D0CD78 8007F848 0200A016 */  bnez       $s5, .Llevel_17_8007F854
/* 4D0CD7C 8007F84C 00000000 */   nop
/* 4D0CD80 8007F850 0D000700 */  break      7
.Llevel_17_8007F854:
/* 4D0CD84 8007F854 FFFF0124 */  addiu      $at, $zero, -0x1
/* 4D0CD88 8007F858 0400A116 */  bne        $s5, $at, .Llevel_17_8007F86C
/* 4D0CD8C 8007F85C 0080013C */   lui       $at, (0x80000000 >> 16)
/* 4D0CD90 8007F860 0200C114 */  bne        $a2, $at, .Llevel_17_8007F86C
/* 4D0CD94 8007F864 00000000 */   nop
/* 4D0CD98 8007F868 0D000600 */  break      6
.Llevel_17_8007F86C:
/* 4D0CD9C 8007F86C 12300000 */  mflo       $a2
/* 4D0CDA0 8007F870 1400A38F */  lw         $v1, 0x14($sp)
/* 4D0CDA4 8007F874 00000000 */  nop
/* 4D0CDA8 8007F878 1A007500 */  div        $zero, $v1, $s5
/* 4D0CDAC 8007F87C 0200A016 */  bnez       $s5, .Llevel_17_8007F888
/* 4D0CDB0 8007F880 00000000 */   nop
/* 4D0CDB4 8007F884 0D000700 */  break      7
.Llevel_17_8007F888:
/* 4D0CDB8 8007F888 FFFF0124 */  addiu      $at, $zero, -0x1
/* 4D0CDBC 8007F88C 0400A116 */  bne        $s5, $at, .Llevel_17_8007F8A0
/* 4D0CDC0 8007F890 0080013C */   lui       $at, (0x80000000 >> 16)
/* 4D0CDC4 8007F894 02006114 */  bne        $v1, $at, .Llevel_17_8007F8A0
/* 4D0CDC8 8007F898 00000000 */   nop
/* 4D0CDCC 8007F89C 0D000600 */  break      6
.Llevel_17_8007F8A0:
/* 4D0CDD0 8007F8A0 12180000 */  mflo       $v1
/* 4D0CDD4 8007F8A4 1800A28F */  lw         $v0, 0x18($sp)
/* 4D0CDD8 8007F8A8 00000000 */  nop
/* 4D0CDDC 8007F8AC 1A005500 */  div        $zero, $v0, $s5
/* 4D0CDE0 8007F8B0 0200A016 */  bnez       $s5, .Llevel_17_8007F8BC
/* 4D0CDE4 8007F8B4 00000000 */   nop
/* 4D0CDE8 8007F8B8 0D000700 */  break      7
.Llevel_17_8007F8BC:
/* 4D0CDEC 8007F8BC FFFF0124 */  addiu      $at, $zero, -0x1
/* 4D0CDF0 8007F8C0 0400A116 */  bne        $s5, $at, .Llevel_17_8007F8D4
/* 4D0CDF4 8007F8C4 0080013C */   lui       $at, (0x80000000 >> 16)
/* 4D0CDF8 8007F8C8 02004114 */  bne        $v0, $at, .Llevel_17_8007F8D4
/* 4D0CDFC 8007F8CC 00000000 */   nop
/* 4D0CE00 8007F8D0 0D000600 */  break      6
.Llevel_17_8007F8D4:
/* 4D0CE04 8007F8D4 12100000 */  mflo       $v0
/* 4D0CE08 8007F8D8 04000524 */  addiu      $a1, $zero, 0x4
/* 4D0CE0C 8007F8DC 21980000 */  addu       $s3, $zero, $zero
/* 4D0CE10 8007F8E0 21204002 */  addu       $a0, $s2, $zero
/* 4D0CE14 8007F8E4 1000A6AF */  sw         $a2, 0x10($sp)
/* 4D0CE18 8007F8E8 1400A3AF */  sw         $v1, 0x14($sp)
/* 4D0CE1C 8007F8EC 4957010C */  jal        func_80055D24
/* 4D0CE20 8007F8F0 1800A2AF */   sw        $v0, 0x18($sp)
/* 4D0CE24 8007F8F4 6401A01A */  blez       $s5, .Llevel_17_8007FE88
/* 4D0CE28 8007F8F8 2000B427 */   addiu     $s4, $sp, 0x20
/* 4D0CE2C 8007F8FC 06801E3C */  lui        $fp, %hi(D_80065920)
/* 4D0CE30 8007F900 2059DE27 */  addiu      $fp, $fp, %lo(D_80065920)
/* 4D0CE34 8007F904 0680173C */  lui        $s7, %hi(D_800658A0)
/* 4D0CE38 8007F908 A058F726 */  addiu      $s7, $s7, %lo(D_800658A0)
/* 4D0CE3C 8007F90C 0780163C */  lui        $s6, %hi(D_80070328)
/* 4D0CE40 8007F910 2803D626 */  addiu      $s6, $s6, %lo(D_80070328)
.Llevel_17_8007F914:
/* 4D0CE44 8007F914 0780023C */  lui        $v0, %hi(D_8006C578)
/* 4D0CE48 8007F918 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 4D0CE4C 8007F91C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 4D0CE50 8007F920 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 4D0CE54 8007F924 00000000 */  nop
/* 4D0CE58 8007F928 23104300 */  subu       $v0, $v0, $v1
/* 4D0CE5C 8007F92C 15004228 */  slti       $v0, $v0, 0x15
/* 4D0CE60 8007F930 55014014 */  bnez       $v0, .Llevel_17_8007FE88
/* 4D0CE64 8007F934 00000000 */   nop
/* 4D0CE68 8007F938 4000A48F */  lw         $a0, 0x40($sp)
/* 4D0CE6C 8007F93C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 4D0CE70 8007F940 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 4D0CE74 8007F944 00000000 */  nop
/* 4D0CE78 8007F948 09F84000 */  jalr       $v0
/* 4D0CE7C 8007F94C 21284002 */   addu      $a1, $s2, $zero
/* 4D0CE80 8007F950 21884000 */  addu       $s1, $v0, $zero
/* 4D0CE84 8007F954 48012012 */  beqz       $s1, .Llevel_17_8007FE78
/* 4D0CE88 8007F958 21208002 */   addu      $a0, $s4, $zero
/* 4D0CE8C 8007F95C 40281300 */  sll        $a1, $s3, 1
/* 4D0CE90 8007F960 2128B300 */  addu       $a1, $a1, $s3
/* 4D0CE94 8007F964 80280500 */  sll        $a1, $a1, 2
/* 4D0CE98 8007F968 4800A88F */  lw         $t0, 0x48($sp)
/* 4D0CE9C 8007F96C 0000308E */  lw         $s0, 0x0($s1)
/* 4D0CEA0 8007F970 5E3C010C */  jal        func_8004F178
/* 4D0CEA4 8007F974 21280501 */   addu      $a1, $t0, $a1
/* 4D0CEA8 8007F978 20004426 */  addiu      $a0, $s2, 0x20
/* 4D0CEAC 8007F97C 21288002 */  addu       $a1, $s4, $zero
/* 4D0CEB0 8007F980 5B3B010C */  jal        func_8004ED6C
/* 4D0CEB4 8007F984 21308002 */   addu      $a2, $s4, $zero
/* 4D0CEB8 8007F988 2000A28F */  lw         $v0, 0x20($sp)
/* 4D0CEBC 8007F98C 1000A38F */  lw         $v1, 0x10($sp)
/* 4D0CEC0 8007F990 0C002426 */  addiu      $a0, $s1, 0xC
/* 4D0CEC4 8007F994 23104300 */  subu       $v0, $v0, $v1
/* 4D0CEC8 8007F998 83100200 */  sra        $v0, $v0, 2
/* 4D0CECC 8007F99C 000002A6 */  sh         $v0, 0x0($s0)
/* 4D0CED0 8007F9A0 2400A28F */  lw         $v0, 0x24($sp)
/* 4D0CED4 8007F9A4 1400A38F */  lw         $v1, 0x14($sp)
/* 4D0CED8 8007F9A8 21288002 */  addu       $a1, $s4, $zero
/* 4D0CEDC 8007F9AC 23104300 */  subu       $v0, $v0, $v1
/* 4D0CEE0 8007F9B0 83100200 */  sra        $v0, $v0, 2
/* 4D0CEE4 8007F9B4 020002A6 */  sh         $v0, 0x2($s0)
/* 4D0CEE8 8007F9B8 2800A28F */  lw         $v0, 0x28($sp)
/* 4D0CEEC 8007F9BC 1800A38F */  lw         $v1, 0x18($sp)
/* 4D0CEF0 8007F9C0 0C004626 */  addiu      $a2, $s2, 0xC
/* 4D0CEF4 8007F9C4 23104300 */  subu       $v0, $v0, $v1
/* 4D0CEF8 8007F9C8 83100200 */  sra        $v0, $v0, 2
/* 4D0CEFC 8007F9CC 653C010C */  jal        func_8004F194
/* 4D0CF00 8007F9D0 040002A6 */   sh        $v0, 0x4($s0)
/* 4D0CF04 8007F9D4 36004386 */  lh         $v1, 0x36($s2)
/* 4D0CF08 8007F9D8 FE000224 */  addiu      $v0, $zero, 0xFE
/* 4D0CF0C 8007F9DC 1F006214 */  bne        $v1, $v0, .Llevel_17_8007FA5C
/* 4D0CF10 8007F9E0 84000224 */   addiu     $v0, $zero, 0x84
/* 4D0CF14 8007F9E4 1400238E */  lw         $v1, 0x14($s1)
/* 4D0CF18 8007F9E8 14000224 */  addiu      $v0, $zero, 0x14
/* 4D0CF1C 8007F9EC 4F0022A2 */  sb         $v0, 0x4F($s1)
/* 4D0CF20 8007F9F0 E8036324 */  addiu      $v1, $v1, 0x3E8
/* 4D0CF24 8007F9F4 140023AE */  sw         $v1, 0x14($s1)
/* 4D0CF28 8007F9F8 51004292 */  lbu        $v0, 0x51($s2)
/* 4D0CF2C 8007F9FC 00000000 */  nop
/* 4D0CF30 8007FA00 40100200 */  sll        $v0, $v0, 1
/* 4D0CF34 8007FA04 21105E00 */  addu       $v0, $v0, $fp
/* 4D0CF38 8007FA08 00004384 */  lh         $v1, 0x0($v0)
/* 4D0CF3C 8007FA0C 00000000 */  nop
/* 4D0CF40 8007FA10 80100300 */  sll        $v0, $v1, 2
/* 4D0CF44 8007FA14 21104300 */  addu       $v0, $v0, $v1
/* 4D0CF48 8007FA18 00000396 */  lhu        $v1, 0x0($s0)
/* 4D0CF4C 8007FA1C 03120200 */  sra        $v0, $v0, 8
/* 4D0CF50 8007FA20 21186200 */  addu       $v1, $v1, $v0
/* 4D0CF54 8007FA24 000003A6 */  sh         $v1, 0x0($s0)
/* 4D0CF58 8007FA28 51004292 */  lbu        $v0, 0x51($s2)
/* 4D0CF5C 8007FA2C FA000424 */  addiu      $a0, $zero, 0xFA
/* 4D0CF60 8007FA30 40100200 */  sll        $v0, $v0, 1
/* 4D0CF64 8007FA34 21105700 */  addu       $v0, $v0, $s7
/* 4D0CF68 8007FA38 00004384 */  lh         $v1, 0x0($v0)
/* 4D0CF6C 8007FA3C 5E010524 */  addiu      $a1, $zero, 0x15E
/* 4D0CF70 8007FA40 80100300 */  sll        $v0, $v1, 2
/* 4D0CF74 8007FA44 21104300 */  addu       $v0, $v0, $v1
/* 4D0CF78 8007FA48 02000396 */  lhu        $v1, 0x2($s0)
/* 4D0CF7C 8007FA4C 03120200 */  sra        $v0, $v0, 8
/* 4D0CF80 8007FA50 21186200 */  addu       $v1, $v1, $v0
/* 4D0CF84 8007FA54 FFFE0108 */  j          .Llevel_17_8007FBFC
/* 4D0CF88 8007FA58 020003A6 */   sh        $v1, 0x2($s0)
.Llevel_17_8007FA5C:
/* 4D0CF8C 8007FA5C 14006214 */  bne        $v1, $v0, .Llevel_17_8007FAB0
/* 4D0CF90 8007FA60 E7030224 */   addiu     $v0, $zero, 0x3E7
/* 4D0CF94 8007FA64 00000386 */  lh         $v1, 0x0($s0)
/* 4D0CF98 8007FA68 00000000 */  nop
/* 4D0CF9C 8007FA6C 40100300 */  sll        $v0, $v1, 1
/* 4D0CFA0 8007FA70 21104300 */  addu       $v0, $v0, $v1
/* 4D0CFA4 8007FA74 C21F0200 */  srl        $v1, $v0, 31
/* 4D0CFA8 8007FA78 21104300 */  addu       $v0, $v0, $v1
/* 4D0CFAC 8007FA7C 02000386 */  lh         $v1, 0x2($s0)
/* 4D0CFB0 8007FA80 43100200 */  sra        $v0, $v0, 1
/* 4D0CFB4 8007FA84 000002A6 */  sh         $v0, 0x0($s0)
/* 4D0CFB8 8007FA88 40100300 */  sll        $v0, $v1, 1
/* 4D0CFBC 8007FA8C 21104300 */  addu       $v0, $v0, $v1
/* 4D0CFC0 8007FA90 C21F0200 */  srl        $v1, $v0, 31
/* 4D0CFC4 8007FA94 21104300 */  addu       $v0, $v0, $v1
/* 4D0CFC8 8007FA98 04000386 */  lh         $v1, 0x4($s0)
/* 4D0CFCC 8007FA9C 43100200 */  sra        $v0, $v0, 1
/* 4D0CFD0 8007FAA0 020002A6 */  sh         $v0, 0x2($s0)
/* 4D0CFD4 8007FAA4 40180300 */  sll        $v1, $v1, 1
/* 4D0CFD8 8007FAA8 78FF0108 */  j          .Llevel_17_8007FDE0
/* 4D0CFDC 8007FAAC 040003A6 */   sh        $v1, 0x4($s0)
.Llevel_17_8007FAB0:
/* 4D0CFE0 8007FAB0 30006214 */  bne        $v1, $v0, .Llevel_17_8007FB74
/* 4D0CFE4 8007FAB4 2A000224 */   addiu     $v0, $zero, 0x2A
/* 4D0CFE8 8007FAB8 0780053C */  lui        $a1, %hi(D_80070328 + 0x48)
/* 4D0CFEC 8007FABC 7003A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0x48)
/* 4D0CFF0 8007FAC0 0000A38C */  lw         $v1, 0x0($a1)
/* 4D0CFF4 8007FAC4 00000000 */  nop
/* 4D0CFF8 8007FAC8 13006214 */  bne        $v1, $v0, .Llevel_17_8007FB18
/* 4D0CFFC 8007FACC 21200000 */   addu      $a0, $zero, $zero
/* 4D0D000 8007FAD0 21208002 */  addu       $a0, $s4, $zero
/* 4D0D004 8007FAD4 5E3C010C */  jal        func_8004F178
/* 4D0D008 8007FAD8 4400A524 */   addiu     $a1, $a1, 0x44
/* 4D0D00C 8007FADC 21208002 */  addu       $a0, $s4, $zero
/* 4D0D010 8007FAE0 7A3B010C */  jal        func_8004EDE8
/* 4D0D014 8007FAE4 21280000 */   addu      $a1, $zero, $zero
/* 4D0D018 8007FAE8 21208002 */  addu       $a0, $s4, $zero
/* 4D0D01C 8007FAEC 21284000 */  addu       $a1, $v0, $zero
/* 4D0D020 8007FAF0 233C010C */  jal        func_8004F08C
/* 4D0D024 8007FAF4 2C010624 */   addiu     $a2, $zero, 0x12C
/* 4D0D028 8007FAF8 2000A38F */  lw         $v1, 0x20($sp)
/* 4D0D02C 8007FAFC 00000296 */  lhu        $v0, 0x0($s0)
/* 4D0D030 8007FB00 00000000 */  nop
/* 4D0D034 8007FB04 21104300 */  addu       $v0, $v0, $v1
/* 4D0D038 8007FB08 000002A6 */  sh         $v0, 0x0($s0)
/* 4D0D03C 8007FB0C 2400A38F */  lw         $v1, 0x24($sp)
/* 4D0D040 8007FB10 74FF0108 */  j          .Llevel_17_8007FDD0
/* 4D0D044 8007FB14 00000000 */   nop
.Llevel_17_8007FB18:
/* 4D0D048 8007FB18 21288002 */  addu       $a1, $s4, $zero
/* 4D0D04C 8007FB1C 21308002 */  addu       $a2, $s4, $zero
/* 4D0D050 8007FB20 8C000224 */  addiu      $v0, $zero, 0x8C
/* 4D0D054 8007FB24 2000A2AF */  sw         $v0, 0x20($sp)
/* 4D0D058 8007FB28 2400A0AF */  sw         $zero, 0x24($sp)
/* 4D0D05C 8007FB2C 5B3B010C */  jal        func_8004ED6C
/* 4D0D060 8007FB30 2800A0AF */   sw        $zero, 0x28($sp)
/* 4D0D064 8007FB34 2000A38F */  lw         $v1, 0x20($sp)
/* 4D0D068 8007FB38 00000296 */  lhu        $v0, 0x0($s0)
/* 4D0D06C 8007FB3C 00000000 */  nop
/* 4D0D070 8007FB40 21104300 */  addu       $v0, $v0, $v1
/* 4D0D074 8007FB44 000002A6 */  sh         $v0, 0x0($s0)
/* 4D0D078 8007FB48 2400A38F */  lw         $v1, 0x24($sp)
/* 4D0D07C 8007FB4C 02000296 */  lhu        $v0, 0x2($s0)
/* 4D0D080 8007FB50 00000000 */  nop
/* 4D0D084 8007FB54 21104300 */  addu       $v0, $v0, $v1
/* 4D0D088 8007FB58 020002A6 */  sh         $v0, 0x2($s0)
/* 4D0D08C 8007FB5C 2800A38F */  lw         $v1, 0x28($sp)
/* 4D0D090 8007FB60 04000296 */  lhu        $v0, 0x4($s0)
/* 4D0D094 8007FB64 00000000 */  nop
/* 4D0D098 8007FB68 21104300 */  addu       $v0, $v0, $v1
/* 4D0D09C 8007FB6C 78FF0108 */  j          .Llevel_17_8007FDE0
/* 4D0D0A0 8007FB70 040002A6 */   sh        $v0, 0x4($s0)
.Llevel_17_8007FB74:
/* 4D0D0A4 8007FB74 51004492 */  lbu        $a0, 0x51($s2)
/* 4D0D0A8 8007FB78 00000000 */  nop
/* 4D0D0AC 8007FB7C 26008010 */  beqz       $a0, .Llevel_17_8007FC18
/* 4D0D0B0 8007FB80 1000033C */   lui       $v1, (0x100000 >> 16)
/* 4D0D0B4 8007FB84 1800428E */  lw         $v0, 0x18($s2)
/* 4D0D0B8 8007FB88 00000000 */  nop
/* 4D0D0BC 8007FB8C 24104300 */  and        $v0, $v0, $v1
/* 4D0D0C0 8007FB90 21004010 */  beqz       $v0, .Llevel_17_8007FC18
/* 4D0D0C4 8007FB94 40100400 */   sll       $v0, $a0, 1
/* 4D0D0C8 8007FB98 21105E00 */  addu       $v0, $v0, $fp
/* 4D0D0CC 8007FB9C 00004384 */  lh         $v1, 0x0($v0)
/* 4D0D0D0 8007FBA0 00000000 */  nop
/* 4D0D0D4 8007FBA4 80100300 */  sll        $v0, $v1, 2
/* 4D0D0D8 8007FBA8 21104300 */  addu       $v0, $v0, $v1
/* 4D0D0DC 8007FBAC 00190200 */  sll        $v1, $v0, 4
/* 4D0D0E0 8007FBB0 23186200 */  subu       $v1, $v1, $v0
/* 4D0D0E4 8007FBB4 00000296 */  lhu        $v0, 0x0($s0)
/* 4D0D0E8 8007FBB8 C31A0300 */  sra        $v1, $v1, 11
/* 4D0D0EC 8007FBBC 21104300 */  addu       $v0, $v0, $v1
/* 4D0D0F0 8007FBC0 000002A6 */  sh         $v0, 0x0($s0)
/* 4D0D0F4 8007FBC4 51004292 */  lbu        $v0, 0x51($s2)
/* 4D0D0F8 8007FBC8 28000424 */  addiu      $a0, $zero, 0x28
/* 4D0D0FC 8007FBCC 40100200 */  sll        $v0, $v0, 1
/* 4D0D100 8007FBD0 21105700 */  addu       $v0, $v0, $s7
/* 4D0D104 8007FBD4 00004384 */  lh         $v1, 0x0($v0)
/* 4D0D108 8007FBD8 46000524 */  addiu      $a1, $zero, 0x46
/* 4D0D10C 8007FBDC 80100300 */  sll        $v0, $v1, 2
/* 4D0D110 8007FBE0 21104300 */  addu       $v0, $v0, $v1
/* 4D0D114 8007FBE4 00190200 */  sll        $v1, $v0, 4
/* 4D0D118 8007FBE8 23186200 */  subu       $v1, $v1, $v0
/* 4D0D11C 8007FBEC 02000296 */  lhu        $v0, 0x2($s0)
/* 4D0D120 8007FBF0 C31A0300 */  sra        $v1, $v1, 11
/* 4D0D124 8007FBF4 21104300 */  addu       $v0, $v0, $v1
/* 4D0D128 8007FBF8 020002A6 */  sh         $v0, 0x2($s0)
.Llevel_17_8007FBFC:
/* 4D0D12C 8007FBFC DBD8000C */  jal        func_8003636C
/* 4D0D130 8007FC00 00000000 */   nop
/* 4D0D134 8007FC04 04000396 */  lhu        $v1, 0x4($s0)
/* 4D0D138 8007FC08 00000000 */  nop
/* 4D0D13C 8007FC0C 21186200 */  addu       $v1, $v1, $v0
/* 4D0D140 8007FC10 78FF0108 */  j          .Llevel_17_8007FDE0
/* 4D0D144 8007FC14 040003A6 */   sh        $v1, 0x4($s0)
.Llevel_17_8007FC18:
/* 4D0D148 8007FC18 1800438E */  lw         $v1, 0x18($s2)
/* 4D0D14C 8007FC1C 0400023C */  lui        $v0, (0x40000 >> 16)
/* 4D0D150 8007FC20 24106200 */  and        $v0, $v1, $v0
/* 4D0D154 8007FC24 0C004010 */  beqz       $v0, .Llevel_17_8007FC58
/* 4D0D158 8007FC28 00000000 */   nop
/* 4D0D15C 8007FC2C 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 4D0D160 8007FC30 B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 4D0D164 8007FC34 00000396 */  lhu        $v1, 0x0($s0)
/* 4D0D168 8007FC38 43110200 */  sra        $v0, $v0, 5
/* 4D0D16C 8007FC3C 21186200 */  addu       $v1, $v1, $v0
/* 4D0D170 8007FC40 000003A6 */  sh         $v1, 0x0($s0)
/* 4D0D174 8007FC44 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 4D0D178 8007FC48 B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 4D0D17C 8007FC4C 02000396 */  lhu        $v1, 0x2($s0)
/* 4D0D180 8007FC50 4AFF0108 */  j          .Llevel_17_8007FD28
/* 4D0D184 8007FC54 43110200 */   sra       $v0, $v0, 5
.Llevel_17_8007FC58:
/* 4D0D188 8007FC58 0002023C */  lui        $v0, (0x2000000 >> 16)
/* 4D0D18C 8007FC5C 24106200 */  and        $v0, $v1, $v0
/* 4D0D190 8007FC60 1C004010 */  beqz       $v0, .Llevel_17_8007FCD4
/* 4D0D194 8007FC64 21300000 */   addu      $a2, $zero, $zero
/* 4D0D198 8007FC68 0C00238E */  lw         $v1, 0xC($s1)
/* 4D0D19C 8007FC6C 0000C48E */  lw         $a0, 0x0($s6)
/* 4D0D1A0 8007FC70 1000228E */  lw         $v0, 0x10($s1)
/* 4D0D1A4 8007FC74 0400C58E */  lw         $a1, 0x4($s6)
/* 4D0D1A8 8007FC78 23206400 */  subu       $a0, $v1, $a0
/* 4D0D1AC 8007FC7C 203A010C */  jal        func_8004E880
/* 4D0D1B0 8007FC80 23284500 */   subu      $a1, $v0, $a1
/* 4D0D1B4 8007FC84 40100200 */  sll        $v0, $v0, 1
/* 4D0D1B8 8007FC88 21105E00 */  addu       $v0, $v0, $fp
/* 4D0D1BC 8007FC8C 00004284 */  lh         $v0, 0x0($v0)
/* 4D0D1C0 8007FC90 21300000 */  addu       $a2, $zero, $zero
/* 4D0D1C4 8007FC94 03110200 */  sra        $v0, $v0, 4
/* 4D0D1C8 8007FC98 3000A2AF */  sw         $v0, 0x30($sp)
/* 4D0D1CC 8007FC9C 0C00238E */  lw         $v1, 0xC($s1)
/* 4D0D1D0 8007FCA0 0000C48E */  lw         $a0, 0x0($s6)
/* 4D0D1D4 8007FCA4 1000228E */  lw         $v0, 0x10($s1)
/* 4D0D1D8 8007FCA8 0400C58E */  lw         $a1, 0x4($s6)
/* 4D0D1DC 8007FCAC 23206400 */  subu       $a0, $v1, $a0
/* 4D0D1E0 8007FCB0 203A010C */  jal        func_8004E880
/* 4D0D1E4 8007FCB4 23284500 */   subu      $a1, $v0, $a1
/* 4D0D1E8 8007FCB8 40100200 */  sll        $v0, $v0, 1
/* 4D0D1EC 8007FCBC 21105700 */  addu       $v0, $v0, $s7
/* 4D0D1F0 8007FCC0 00004284 */  lh         $v0, 0x0($v0)
/* 4D0D1F4 8007FCC4 3000A38F */  lw         $v1, 0x30($sp)
/* 4D0D1F8 8007FCC8 3800A0AF */  sw         $zero, 0x38($sp)
/* 4D0D1FC 8007FCCC 6EFF0108 */  j          .Llevel_17_8007FDB8
/* 4D0D200 8007FCD0 03110200 */   sra       $v0, $v0, 4
.Llevel_17_8007FCD4:
/* 4D0D204 8007FCD4 0200023C */  lui        $v0, (0x20000 >> 16)
/* 4D0D208 8007FCD8 24106200 */  and        $v0, $v1, $v0
/* 4D0D20C 8007FCDC 15004010 */  beqz       $v0, .Llevel_17_8007FD34
/* 4D0D210 8007FCE0 04000224 */   addiu     $v0, $zero, 0x4
/* 4D0D214 8007FCE4 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 4D0D218 8007FCE8 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 4D0D21C 8007FCEC 00000000 */  nop
/* 4D0D220 8007FCF0 03006210 */  beq        $v1, $v0, .Llevel_17_8007FD00
/* 4D0D224 8007FCF4 0C000224 */   addiu     $v0, $zero, 0xC
/* 4D0D228 8007FCF8 0E006214 */  bne        $v1, $v0, .Llevel_17_8007FD34
/* 4D0D22C 8007FCFC 00000000 */   nop
.Llevel_17_8007FD00:
/* 4D0D230 8007FD00 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 4D0D234 8007FD04 B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 4D0D238 8007FD08 00000396 */  lhu        $v1, 0x0($s0)
/* 4D0D23C 8007FD0C 83110200 */  sra        $v0, $v0, 6
/* 4D0D240 8007FD10 21186200 */  addu       $v1, $v1, $v0
/* 4D0D244 8007FD14 000003A6 */  sh         $v1, 0x0($s0)
/* 4D0D248 8007FD18 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 4D0D24C 8007FD1C B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 4D0D250 8007FD20 02000396 */  lhu        $v1, 0x2($s0)
/* 4D0D254 8007FD24 83110200 */  sra        $v0, $v0, 6
.Llevel_17_8007FD28:
/* 4D0D258 8007FD28 21186200 */  addu       $v1, $v1, $v0
/* 4D0D25C 8007FD2C 78FF0108 */  j          .Llevel_17_8007FDE0
/* 4D0D260 8007FD30 020003A6 */   sh        $v1, 0x2($s0)
.Llevel_17_8007FD34:
/* 4D0D264 8007FD34 36004386 */  lh         $v1, 0x36($s2)
/* 4D0D268 8007FD38 84000224 */  addiu      $v0, $zero, 0x84
/* 4D0D26C 8007FD3C 28006210 */  beq        $v1, $v0, .Llevel_17_8007FDE0
/* 4D0D270 8007FD40 00000000 */   nop
/* 4D0D274 8007FD44 51004292 */  lbu        $v0, 0x51($s2)
/* 4D0D278 8007FD48 00000000 */  nop
/* 4D0D27C 8007FD4C 0A004014 */  bnez       $v0, .Llevel_17_8007FD78
/* 4D0D280 8007FD50 40200200 */   sll       $a0, $v0, 1
/* 4D0D284 8007FD54 21300000 */  addu       $a2, $zero, $zero
/* 4D0D288 8007FD58 0C00238E */  lw         $v1, 0xC($s1)
/* 4D0D28C 8007FD5C 0000C48E */  lw         $a0, 0x0($s6)
/* 4D0D290 8007FD60 1000228E */  lw         $v0, 0x10($s1)
/* 4D0D294 8007FD64 0400C58E */  lw         $a1, 0x4($s6)
/* 4D0D298 8007FD68 23206400 */  subu       $a0, $v1, $a0
/* 4D0D29C 8007FD6C 203A010C */  jal        func_8004E880
/* 4D0D2A0 8007FD70 23284500 */   subu      $a1, $v0, $a1
/* 4D0D2A4 8007FD74 40200200 */  sll        $a0, $v0, 1
.Llevel_17_8007FD78:
/* 4D0D2A8 8007FD78 21109E00 */  addu       $v0, $a0, $fp
/* 4D0D2AC 8007FD7C 00004284 */  lh         $v0, 0x0($v0)
/* 4D0D2B0 8007FD80 21209700 */  addu       $a0, $a0, $s7
/* 4D0D2B4 8007FD84 C0180200 */  sll        $v1, $v0, 3
/* 4D0D2B8 8007FD88 21186200 */  addu       $v1, $v1, $v0
/* 4D0D2BC 8007FD8C 80180300 */  sll        $v1, $v1, 2
/* 4D0D2C0 8007FD90 23186200 */  subu       $v1, $v1, $v0
/* 4D0D2C4 8007FD94 831A0300 */  sra        $v1, $v1, 10
/* 4D0D2C8 8007FD98 3000A3AF */  sw         $v1, 0x30($sp)
/* 4D0D2CC 8007FD9C 00008484 */  lh         $a0, 0x0($a0)
/* 4D0D2D0 8007FDA0 3800A0AF */  sw         $zero, 0x38($sp)
/* 4D0D2D4 8007FDA4 C0100400 */  sll        $v0, $a0, 3
/* 4D0D2D8 8007FDA8 21104400 */  addu       $v0, $v0, $a0
/* 4D0D2DC 8007FDAC 80100200 */  sll        $v0, $v0, 2
/* 4D0D2E0 8007FDB0 23104400 */  subu       $v0, $v0, $a0
/* 4D0D2E4 8007FDB4 83120200 */  sra        $v0, $v0, 10
.Llevel_17_8007FDB8:
/* 4D0D2E8 8007FDB8 3400A2AF */  sw         $v0, 0x34($sp)
/* 4D0D2EC 8007FDBC 00000296 */  lhu        $v0, 0x0($s0)
/* 4D0D2F0 8007FDC0 00000000 */  nop
/* 4D0D2F4 8007FDC4 21104300 */  addu       $v0, $v0, $v1
/* 4D0D2F8 8007FDC8 000002A6 */  sh         $v0, 0x0($s0)
/* 4D0D2FC 8007FDCC 3400A38F */  lw         $v1, 0x34($sp)
.Llevel_17_8007FDD0:
/* 4D0D300 8007FDD0 02000296 */  lhu        $v0, 0x2($s0)
/* 4D0D304 8007FDD4 00000000 */  nop
/* 4D0D308 8007FDD8 21104300 */  addu       $v0, $v0, $v1
/* 4D0D30C 8007FDDC 020002A6 */  sh         $v0, 0x2($s0)
.Llevel_17_8007FDE0:
/* 4D0D310 8007FDE0 44004292 */  lbu        $v0, 0x44($s2)
/* 4D0D314 8007FDE4 00000000 */  nop
/* 4D0D318 8007FDE8 440022A2 */  sb         $v0, 0x44($s1)
/* 4D0D31C 8007FDEC 45004292 */  lbu        $v0, 0x45($s2)
/* 4D0D320 8007FDF0 00000000 */  nop
/* 4D0D324 8007FDF4 450022A2 */  sb         $v0, 0x45($s1)
/* 4D0D328 8007FDF8 46004292 */  lbu        $v0, 0x46($s2)
/* 4D0D32C 8007FDFC 9171010C */  jal        rand
/* 4D0D330 8007FE00 460022A2 */   sb        $v0, 0x46($s1)
/* 4D0D334 8007FE04 06004230 */  andi       $v0, $v0, 0x6
/* 4D0D338 8007FE08 FDFF4224 */  addiu      $v0, $v0, -0x3
/* 4D0D33C 8007FE0C 9171010C */  jal        rand
/* 4D0D340 8007FE10 060002A6 */   sh        $v0, 0x6($s0)
/* 4D0D344 8007FE14 06004230 */  andi       $v0, $v0, 0x6
/* 4D0D348 8007FE18 FDFF4224 */  addiu      $v0, $v0, -0x3
/* 4D0D34C 8007FE1C 9171010C */  jal        rand
/* 4D0D350 8007FE20 080002A6 */   sh        $v0, 0x8($s0)
/* 4D0D354 8007FE24 1E000424 */  addiu      $a0, $zero, 0x1E
/* 4D0D358 8007FE28 06004230 */  andi       $v0, $v0, 0x6
/* 4D0D35C 8007FE2C FDFF4224 */  addiu      $v0, $v0, -0x3
/* 4D0D360 8007FE30 0A0002A6 */  sh         $v0, 0xA($s0)
/* 4D0D364 8007FE34 1400428E */  lw         $v0, 0x14($s2)
/* 4D0D368 8007FE38 32000524 */  addiu      $a1, $zero, 0x32
/* 4D0D36C 8007FE3C C0FF4224 */  addiu      $v0, $v0, -0x40
/* 4D0D370 8007FE40 DBD8000C */  jal        func_8003636C
/* 4D0D374 8007FE44 0E0002A6 */   sh        $v0, 0xE($s0)
/* 4D0D378 8007FE48 9800A88F */  lw         $t0, 0x98($sp)
/* 4D0D37C 8007FE4C 21202002 */  addu       $a0, $s1, $zero
/* 4D0D380 8007FE50 0C0002A6 */  sh         $v0, 0xC($s0)
/* 4D0D384 8007FE54 08000224 */  addiu      $v0, $zero, 0x8
/* 4D0D388 8007FE58 100002A6 */  sh         $v0, 0x10($s0)
/* 4D0D38C 8007FE5C 21281301 */  addu       $a1, $t0, $s3
/* 4D0D390 8007FE60 9C00A897 */  lhu        $t0, 0x9C($sp)
/* 4D0D394 8007FE64 E0D3000C */  jal        func_80034F80
/* 4D0D398 8007FE68 120008A6 */   sh        $t0, 0x12($s0)
/* 4D0D39C 8007FE6C 01000224 */  addiu      $v0, $zero, 0x1
/* 4D0D3A0 8007FE70 140002AE */  sw         $v0, 0x14($s0)
/* 4D0D3A4 8007FE74 080020AE */  sw         $zero, 0x8($s1)
.Llevel_17_8007FE78:
/* 4D0D3A8 8007FE78 01007326 */  addiu      $s3, $s3, 0x1
/* 4D0D3AC 8007FE7C 2A107502 */  slt        $v0, $s3, $s5
/* 4D0D3B0 8007FE80 A4FE4014 */  bnez       $v0, .Llevel_17_8007F914
/* 4D0D3B4 8007FE84 00000000 */   nop
.Llevel_17_8007FE88:
/* 4D0D3B8 8007FE88 8400BF8F */  lw         $ra, 0x84($sp)
/* 4D0D3BC 8007FE8C 8000BE8F */  lw         $fp, 0x80($sp)
/* 4D0D3C0 8007FE90 7C00B78F */  lw         $s7, 0x7C($sp)
/* 4D0D3C4 8007FE94 7800B68F */  lw         $s6, 0x78($sp)
/* 4D0D3C8 8007FE98 7400B58F */  lw         $s5, 0x74($sp)
/* 4D0D3CC 8007FE9C 7000B48F */  lw         $s4, 0x70($sp)
/* 4D0D3D0 8007FEA0 6C00B38F */  lw         $s3, 0x6C($sp)
/* 4D0D3D4 8007FEA4 6800B28F */  lw         $s2, 0x68($sp)
/* 4D0D3D8 8007FEA8 6400B18F */  lw         $s1, 0x64($sp)
/* 4D0D3DC 8007FEAC 6000B08F */  lw         $s0, 0x60($sp)
/* 4D0D3E0 8007FEB0 8800BD27 */  addiu      $sp, $sp, 0x88
/* 4D0D3E4 8007FEB4 0800E003 */  jr         $ra
/* 4D0D3E8 8007FEB8 00000000 */   nop
.size func_level_17_8007F7CC, . - func_level_17_8007F7CC
