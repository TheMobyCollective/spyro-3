.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_8_level_24
/* 5DF9788 8007EA58 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 5DF978C 8007EA5C 5000B4AF */  sw         $s4, 0x50($sp)
/* 5DF9790 8007EA60 21A08000 */  addu       $s4, $a0, $zero
/* 5DF9794 8007EA64 6000BFAF */  sw         $ra, 0x60($sp)
/* 5DF9798 8007EA68 5C00B7AF */  sw         $s7, 0x5C($sp)
/* 5DF979C 8007EA6C 5800B6AF */  sw         $s6, 0x58($sp)
/* 5DF97A0 8007EA70 5400B5AF */  sw         $s5, 0x54($sp)
/* 5DF97A4 8007EA74 4C00B3AF */  sw         $s3, 0x4C($sp)
/* 5DF97A8 8007EA78 4800B2AF */  sw         $s2, 0x48($sp)
/* 5DF97AC 8007EA7C 4400B1AF */  sw         $s1, 0x44($sp)
/* 5DF97B0 8007EA80 4000B0AF */  sw         $s0, 0x40($sp)
/* 5DF97B4 8007EA84 0000938E */  lw         $s3, 0x0($s4)
/* 5DF97B8 8007EA88 00000000 */  nop
/* 5DF97BC 8007EA8C 12006386 */  lh         $v1, 0x12($s3)
/* 5DF97C0 8007EA90 01000224 */  addiu      $v0, $zero, 0x1
/* 5DF97C4 8007EA94 02006214 */  bne        $v1, $v0, .Llevel_24_8007EAA0
/* 5DF97C8 8007EA98 00011024 */   addiu     $s0, $zero, 0x100
/* 5DF97CC 8007EA9C 80001024 */  addiu      $s0, $zero, 0x80
.Llevel_24_8007EAA0:
/* 5DF97D0 8007EAA0 0C008426 */  addiu      $a0, $s4, 0xC
/* 5DF97D4 8007EAA4 21280002 */  addu       $a1, $s0, $zero
/* 5DF97D8 8007EAA8 01000624 */  addiu      $a2, $zero, 0x1
/* 5DF97DC 8007EAAC 21380000 */  addu       $a3, $zero, $zero
/* 5DF97E0 8007EAB0 1000A0AF */  sw         $zero, 0x10($sp)
/* 5DF97E4 8007EAB4 4E64000C */  jal        func_80019138
/* 5DF97E8 8007EAB8 1400A0AF */   sw        $zero, 0x14($sp)
/* 5DF97EC 8007EABC 41004010 */  beqz       $v0, .Llevel_24_8007EBC4
/* 5DF97F0 8007EAC0 00010224 */   addiu     $v0, $zero, 0x100
/* 5DF97F4 8007EAC4 0D000212 */  beq        $s0, $v0, .Llevel_24_8007EAFC
/* 5DF97F8 8007EAC8 00000000 */   nop
/* 5DF97FC 8007EACC 0780023C */  lui        $v0, %hi(D_80071918)
/* 5DF9800 8007EAD0 1819428C */  lw         $v0, %lo(D_80071918)($v0)
/* 5DF9804 8007EAD4 00000000 */  nop
/* 5DF9808 8007EAD8 64004228 */  slti       $v0, $v0, 0x64
/* 5DF980C 8007EADC 08004010 */  beqz       $v0, .Llevel_24_8007EB00
/* 5DF9810 8007EAE0 00000000 */   nop
/* 5DF9814 8007EAE4 0780023C */  lui        $v0, %hi(D_8007191C)
/* 5DF9818 8007EAE8 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 5DF981C 8007EAEC 00000000 */  nop
/* 5DF9820 8007EAF0 64004228 */  slti       $v0, $v0, 0x64
/* 5DF9824 8007EAF4 02004010 */  beqz       $v0, .Llevel_24_8007EB00
/* 5DF9828 8007EAF8 00000000 */   nop
.Llevel_24_8007EAFC:
/* 5DF982C 8007EAFC 0C0060A6 */  sh         $zero, 0xC($s3)
.Llevel_24_8007EB00:
/* 5DF9830 8007EB00 0780103C */  lui        $s0, %hi(D_80071918)
/* 5DF9834 8007EB04 18191026 */  addiu      $s0, $s0, %lo(D_80071918)
/* 5DF9838 8007EB08 21200002 */  addu       $a0, $s0, $zero
/* 5DF983C 8007EB0C C13B010C */  jal        func_8004EF04
/* 5DF9840 8007EB10 00100524 */   addiu     $a1, $zero, 0x1000
/* 5DF9844 8007EB14 00006386 */  lh         $v1, 0x0($s3)
/* 5DF9848 8007EB18 0000028E */  lw         $v0, 0x0($s0)
/* 5DF984C 8007EB1C 00000000 */  nop
/* 5DF9850 8007EB20 18006200 */  mult       $v1, $v0
/* 5DF9854 8007EB24 02006386 */  lh         $v1, 0x2($s3)
/* 5DF9858 8007EB28 12280000 */  mflo       $a1
/* 5DF985C 8007EB2C 0780023C */  lui        $v0, %hi(D_8007191C)
/* 5DF9860 8007EB30 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 5DF9864 8007EB34 00000000 */  nop
/* 5DF9868 8007EB38 18006200 */  mult       $v1, $v0
/* 5DF986C 8007EB3C 04006386 */  lh         $v1, 0x4($s3)
/* 5DF9870 8007EB40 12200000 */  mflo       $a0
/* 5DF9874 8007EB44 0780023C */  lui        $v0, %hi(D_80071920)
/* 5DF9878 8007EB48 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 5DF987C 8007EB4C 00000000 */  nop
/* 5DF9880 8007EB50 18006200 */  mult       $v1, $v0
/* 5DF9884 8007EB54 2110A400 */  addu       $v0, $a1, $a0
/* 5DF9888 8007EB58 12180000 */  mflo       $v1
/* 5DF988C 8007EB5C 21104300 */  addu       $v0, $v0, $v1
/* 5DF9890 8007EB60 C33A0200 */  sra        $a3, $v0, 11
/* 5DF9894 8007EB64 1800E104 */  bgez       $a3, .Llevel_24_8007EBC8
/* 5DF9898 8007EB68 0C006426 */   addiu     $a0, $s3, 0xC
/* 5DF989C 8007EB6C 21200002 */  addu       $a0, $s0, $zero
/* 5DF98A0 8007EB70 00100524 */  addiu      $a1, $zero, 0x1000
/* 5DF98A4 8007EB74 43330200 */  sra        $a2, $v0, 13
/* 5DF98A8 8007EB78 233C010C */  jal        func_8004F08C
/* 5DF98AC 8007EB7C 2330C700 */   subu      $a2, $a2, $a3
/* 5DF98B0 8007EB80 0000038E */  lw         $v1, 0x0($s0)
/* 5DF98B4 8007EB84 00006296 */  lhu        $v0, 0x0($s3)
/* 5DF98B8 8007EB88 00000000 */  nop
/* 5DF98BC 8007EB8C 21104300 */  addu       $v0, $v0, $v1
/* 5DF98C0 8007EB90 000062A6 */  sh         $v0, 0x0($s3)
/* 5DF98C4 8007EB94 0780033C */  lui        $v1, %hi(D_8007191C)
/* 5DF98C8 8007EB98 1C19638C */  lw         $v1, %lo(D_8007191C)($v1)
/* 5DF98CC 8007EB9C 02006296 */  lhu        $v0, 0x2($s3)
/* 5DF98D0 8007EBA0 00000000 */  nop
/* 5DF98D4 8007EBA4 21104300 */  addu       $v0, $v0, $v1
/* 5DF98D8 8007EBA8 020062A6 */  sh         $v0, 0x2($s3)
/* 5DF98DC 8007EBAC 0780033C */  lui        $v1, %hi(D_80071920)
/* 5DF98E0 8007EBB0 2019638C */  lw         $v1, %lo(D_80071920)($v1)
/* 5DF98E4 8007EBB4 04006296 */  lhu        $v0, 0x4($s3)
/* 5DF98E8 8007EBB8 00000000 */  nop
/* 5DF98EC 8007EBBC 21104300 */  addu       $v0, $v0, $v1
/* 5DF98F0 8007EBC0 040062A6 */  sh         $v0, 0x4($s3)
.Llevel_24_8007EBC4:
/* 5DF98F4 8007EBC4 0C006426 */  addiu      $a0, $s3, 0xC
.Llevel_24_8007EBC8:
/* 5DF98F8 8007EBC8 69D6000C */  jal        func_800359A4
/* 5DF98FC 8007EBCC 02000524 */   addiu     $a1, $zero, 0x2
/* 5DF9900 8007EBD0 A5004010 */  beqz       $v0, .Llevel_24_8007EE68
/* 5DF9904 8007EBD4 00000000 */   nop
/* 5DF9908 8007EBD8 12006286 */  lh         $v0, 0x12($s3)
/* 5DF990C 8007EBDC 00000000 */  nop
/* 5DF9910 8007EBE0 9B004014 */  bnez       $v0, .Llevel_24_8007EE50
/* 5DF9914 8007EBE4 21208002 */   addu      $a0, $s4, $zero
/* 5DF9918 8007EBE8 0780053C */  lui        $a1, %hi(D_80071918)
/* 5DF991C 8007EBEC 1819A524 */  addiu      $a1, $a1, %lo(D_80071918)
/* 5DF9920 8007EBF0 5E3C010C */  jal        func_8004F178
/* 5DF9924 8007EBF4 1800A427 */   addiu     $a0, $sp, 0x18
/* 5DF9928 8007EBF8 1800A427 */  addiu      $a0, $sp, 0x18
/* 5DF992C 8007EBFC 7A3B010C */  jal        func_8004EDE8
/* 5DF9930 8007EC00 01000524 */   addiu     $a1, $zero, 0x1
/* 5DF9934 8007EC04 1800A427 */  addiu      $a0, $sp, 0x18
/* 5DF9938 8007EC08 21284000 */  addu       $a1, $v0, $zero
/* 5DF993C 8007EC0C 233C010C */  jal        func_8004F08C
/* 5DF9940 8007EC10 82000624 */   addiu     $a2, $zero, 0x82
/* 5DF9944 8007EC14 0C008426 */  addiu      $a0, $s4, 0xC
/* 5DF9948 8007EC18 21288000 */  addu       $a1, $a0, $zero
/* 5DF994C 8007EC1C 653C010C */  jal        func_8004F194
/* 5DF9950 8007EC20 1800A627 */   addiu     $a2, $sp, 0x18
/* 5DF9954 8007EC24 21900000 */  addu       $s2, $zero, $zero
/* 5DF9958 8007EC28 2800B527 */  addiu      $s5, $sp, 0x28
/* 5DF995C 8007EC2C 01001724 */  addiu      $s7, $zero, 0x1
/* 5DF9960 8007EC30 14001624 */  addiu      $s6, $zero, 0x14
.Llevel_24_8007EC34:
/* 5DF9964 8007EC34 0780023C */  lui        $v0, %hi(D_8006C578)
/* 5DF9968 8007EC38 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 5DF996C 8007EC3C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 5DF9970 8007EC40 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 5DF9974 8007EC44 00000000 */  nop
/* 5DF9978 8007EC48 23104300 */  subu       $v0, $v0, $v1
/* 5DF997C 8007EC4C 15004228 */  slti       $v0, $v0, 0x15
/* 5DF9980 8007EC50 7E004014 */  bnez       $v0, .Llevel_24_8007EE4C
/* 5DF9984 8007EC54 08000424 */   addiu     $a0, $zero, 0x8
/* 5DF9988 8007EC58 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5DF998C 8007EC5C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5DF9990 8007EC60 00000000 */  nop
/* 5DF9994 8007EC64 09F84000 */  jalr       $v0
/* 5DF9998 8007EC68 21288002 */   addu      $a1, $s4, $zero
/* 5DF999C 8007EC6C 21884000 */  addu       $s1, $v0, $zero
/* 5DF99A0 8007EC70 72002012 */  beqz       $s1, .Llevel_24_8007EE3C
/* 5DF99A4 8007EC74 00000000 */   nop
/* 5DF99A8 8007EC78 0000308E */  lw         $s0, 0x0($s1)
/* 5DF99AC 8007EC7C 00000000 */  nop
/* 5DF99B0 8007EC80 120017A6 */  sh         $s7, 0x12($s0)
/* 5DF99B4 8007EC84 00006286 */  lh         $v0, 0x0($s3)
/* 5DF99B8 8007EC88 00000000 */  nop
/* 5DF99BC 8007EC8C 1800A2AF */  sw         $v0, 0x18($sp)
/* 5DF99C0 8007EC90 02006286 */  lh         $v0, 0x2($s3)
/* 5DF99C4 8007EC94 00000000 */  nop
/* 5DF99C8 8007EC98 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 5DF99CC 8007EC9C FFFF4226 */  addiu      $v0, $s2, -0x1
/* 5DF99D0 8007ECA0 40110200 */  sll        $v0, $v0, 5
/* 5DF99D4 8007ECA4 04006386 */  lh         $v1, 0x4($s3)
/* 5DF99D8 8007ECA8 FF004430 */  andi       $a0, $v0, 0xFF
/* 5DF99DC 8007ECAC 21106000 */  addu       $v0, $v1, $zero
/* 5DF99E0 8007ECB0 32006328 */  slti       $v1, $v1, 0x32
/* 5DF99E4 8007ECB4 02006010 */  beqz       $v1, .Llevel_24_8007ECC0
/* 5DF99E8 8007ECB8 00000000 */   nop
/* 5DF99EC 8007ECBC 32000224 */  addiu      $v0, $zero, 0x32
.Llevel_24_8007ECC0:
/* 5DF99F0 8007ECC0 040002A6 */  sh         $v0, 0x4($s0)
/* 5DF99F4 8007ECC4 0680053C */  lui        $a1, %hi(D_80065920)
/* 5DF99F8 8007ECC8 2059A524 */  addiu      $a1, $a1, %lo(D_80065920)
/* 5DF99FC 8007ECCC 40200400 */  sll        $a0, $a0, 1
/* 5DF9A00 8007ECD0 21288500 */  addu       $a1, $a0, $a1
/* 5DF9A04 8007ECD4 0000A384 */  lh         $v1, 0x0($a1)
/* 5DF9A08 8007ECD8 1800A28F */  lw         $v0, 0x18($sp)
/* 5DF9A0C 8007ECDC 00000000 */  nop
/* 5DF9A10 8007ECE0 18004300 */  mult       $v0, $v1
/* 5DF9A14 8007ECE4 0680023C */  lui        $v0, %hi(D_800658A0)
/* 5DF9A18 8007ECE8 A0584224 */  addiu      $v0, $v0, %lo(D_800658A0)
/* 5DF9A1C 8007ECEC 21208200 */  addu       $a0, $a0, $v0
/* 5DF9A20 8007ECF0 00008384 */  lh         $v1, 0x0($a0)
/* 5DF9A24 8007ECF4 12300000 */  mflo       $a2
/* 5DF9A28 8007ECF8 1C00A28F */  lw         $v0, 0x1C($sp)
/* 5DF9A2C 8007ECFC 00000000 */  nop
/* 5DF9A30 8007ED00 18004300 */  mult       $v0, $v1
/* 5DF9A34 8007ED04 12180000 */  mflo       $v1
/* 5DF9A38 8007ED08 2310C300 */  subu       $v0, $a2, $v1
/* 5DF9A3C 8007ED0C 03130200 */  sra        $v0, $v0, 12
/* 5DF9A40 8007ED10 000002A6 */  sh         $v0, 0x0($s0)
/* 5DF9A44 8007ED14 00008384 */  lh         $v1, 0x0($a0)
/* 5DF9A48 8007ED18 1800A28F */  lw         $v0, 0x18($sp)
/* 5DF9A4C 8007ED1C 00000000 */  nop
/* 5DF9A50 8007ED20 18004300 */  mult       $v0, $v1
/* 5DF9A54 8007ED24 0000A384 */  lh         $v1, 0x0($a1)
/* 5DF9A58 8007ED28 12300000 */  mflo       $a2
/* 5DF9A5C 8007ED2C 1C00A28F */  lw         $v0, 0x1C($sp)
/* 5DF9A60 8007ED30 00000000 */  nop
/* 5DF9A64 8007ED34 18004300 */  mult       $v0, $v1
/* 5DF9A68 8007ED38 2120A002 */  addu       $a0, $s5, $zero
/* 5DF9A6C 8007ED3C 12180000 */  mflo       $v1
/* 5DF9A70 8007ED40 2110C300 */  addu       $v0, $a2, $v1
/* 5DF9A74 8007ED44 00000386 */  lh         $v1, 0x0($s0)
/* 5DF9A78 8007ED48 03130200 */  sra        $v0, $v0, 12
/* 5DF9A7C 8007ED4C 020002A6 */  sh         $v0, 0x2($s0)
/* 5DF9A80 8007ED50 2800A3AF */  sw         $v1, 0x28($sp)
/* 5DF9A84 8007ED54 02000286 */  lh         $v0, 0x2($s0)
/* 5DF9A88 8007ED58 21280000 */  addu       $a1, $zero, $zero
/* 5DF9A8C 8007ED5C 3000A0AF */  sw         $zero, 0x30($sp)
/* 5DF9A90 8007ED60 7A3B010C */  jal        func_8004EDE8
/* 5DF9A94 8007ED64 2C00A2AF */   sw        $v0, 0x2C($sp)
/* 5DF9A98 8007ED68 C9004228 */  slti       $v0, $v0, 0xC9
/* 5DF9A9C 8007ED6C 0F004014 */  bnez       $v0, .Llevel_24_8007EDAC
/* 5DF9AA0 8007ED70 B4000224 */   addiu     $v0, $zero, 0xB4
/* 5DF9AA4 8007ED74 2120A002 */  addu       $a0, $s5, $zero
/* 5DF9AA8 8007ED78 7A3B010C */  jal        func_8004EDE8
/* 5DF9AAC 8007ED7C 21280000 */   addu      $a1, $zero, $zero
/* 5DF9AB0 8007ED80 2120A002 */  addu       $a0, $s5, $zero
/* 5DF9AB4 8007ED84 21284000 */  addu       $a1, $v0, $zero
/* 5DF9AB8 8007ED88 233C010C */  jal        func_8004F08C
/* 5DF9ABC 8007ED8C C8000624 */   addiu     $a2, $zero, 0xC8
/* 5DF9AC0 8007ED90 2800A28F */  lw         $v0, 0x28($sp)
/* 5DF9AC4 8007ED94 00000000 */  nop
/* 5DF9AC8 8007ED98 000002A6 */  sh         $v0, 0x0($s0)
/* 5DF9ACC 8007ED9C 2C00A28F */  lw         $v0, 0x2C($sp)
/* 5DF9AD0 8007EDA0 00000000 */  nop
/* 5DF9AD4 8007EDA4 020002A6 */  sh         $v0, 0x2($s0)
/* 5DF9AD8 8007EDA8 B4000224 */  addiu      $v0, $zero, 0xB4
.Llevel_24_8007EDAC:
/* 5DF9ADC 8007EDAC 4F0022A2 */  sb         $v0, 0x4F($s1)
/* 5DF9AE0 8007EDB0 3F000224 */  addiu      $v0, $zero, 0x3F
/* 5DF9AE4 8007EDB4 4C0022A2 */  sb         $v0, 0x4C($s1)
/* 5DF9AE8 8007EDB8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 5DF9AEC 8007EDBC 10005712 */  beq        $s2, $s7, .Llevel_24_8007EE00
/* 5DF9AF0 8007EDC0 4A0022A2 */   sb        $v0, 0x4A($s1)
/* 5DF9AF4 8007EDC4 0200422A */  slti       $v0, $s2, 0x2
/* 5DF9AF8 8007EDC8 05004010 */  beqz       $v0, .Llevel_24_8007EDE0
/* 5DF9AFC 8007EDCC 00000000 */   nop
/* 5DF9B00 8007EDD0 08004012 */  beqz       $s2, .Llevel_24_8007EDF4
/* 5DF9B04 8007EDD4 9B010224 */   addiu     $v0, $zero, 0x19B
/* 5DF9B08 8007EDD8 8CFB0108 */  j          .Llevel_24_8007EE30
/* 5DF9B0C 8007EDDC 0C002426 */   addiu     $a0, $s1, 0xC
.Llevel_24_8007EDE0:
/* 5DF9B10 8007EDE0 02000224 */  addiu      $v0, $zero, 0x2
/* 5DF9B14 8007EDE4 0B004212 */  beq        $s2, $v0, .Llevel_24_8007EE14
/* 5DF9B18 8007EDE8 0CFE0224 */   addiu     $v0, $zero, -0x1F4
/* 5DF9B1C 8007EDEC 8CFB0108 */  j          .Llevel_24_8007EE30
/* 5DF9B20 8007EDF0 0C002426 */   addiu     $a0, $s1, 0xC
.Llevel_24_8007EDF4:
/* 5DF9B24 8007EDF4 1800A2AF */  sw         $v0, 0x18($sp)
/* 5DF9B28 8007EDF8 87FB0108 */  j          .Llevel_24_8007EE1C
/* 5DF9B2C 8007EDFC 19000224 */   addiu     $v0, $zero, 0x19
.Llevel_24_8007EE00:
/* 5DF9B30 8007EE00 D4FE0224 */  addiu      $v0, $zero, -0x12C
/* 5DF9B34 8007EE04 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 5DF9B38 8007EE08 02000224 */  addiu      $v0, $zero, 0x2
/* 5DF9B3C 8007EE0C 89FB0108 */  j          .Llevel_24_8007EE24
/* 5DF9B40 8007EE10 1800A0AF */   sw        $zero, 0x18($sp)
.Llevel_24_8007EE14:
/* 5DF9B44 8007EE14 1800A2AF */  sw         $v0, 0x18($sp)
/* 5DF9B48 8007EE18 6C010224 */  addiu      $v0, $zero, 0x16C
.Llevel_24_8007EE1C:
/* 5DF9B4C 8007EE1C 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 5DF9B50 8007EE20 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_24_8007EE24:
/* 5DF9B54 8007EE24 2000B6AF */  sw         $s6, 0x20($sp)
/* 5DF9B58 8007EE28 3C0022A2 */  sb         $v0, 0x3C($s1)
/* 5DF9B5C 8007EE2C 0C002426 */  addiu      $a0, $s1, 0xC
.Llevel_24_8007EE30:
/* 5DF9B60 8007EE30 21288000 */  addu       $a1, $a0, $zero
/* 5DF9B64 8007EE34 653C010C */  jal        func_8004F194
/* 5DF9B68 8007EE38 1800A627 */   addiu     $a2, $sp, 0x18
.Llevel_24_8007EE3C:
/* 5DF9B6C 8007EE3C 01005226 */  addiu      $s2, $s2, 0x1
/* 5DF9B70 8007EE40 0300422A */  slti       $v0, $s2, 0x3
/* 5DF9B74 8007EE44 7BFF4014 */  bnez       $v0, .Llevel_24_8007EC34
/* 5DF9B78 8007EE48 00000000 */   nop
.Llevel_24_8007EE4C:
/* 5DF9B7C 8007EE4C 21208002 */  addu       $a0, $s4, $zero
.Llevel_24_8007EE50:
/* 5DF9B80 8007EE50 6EDA000C */  jal        func_800369B8
/* 5DF9B84 8007EE54 28000524 */   addiu     $a1, $zero, 0x28
/* 5DF9B88 8007EE58 C656010C */  jal        func_80055B18
/* 5DF9B8C 8007EE5C 21208002 */   addu      $a0, $s4, $zero
/* 5DF9B90 8007EE60 C2FB0108 */  j          .Llevel_24_8007EF08
/* 5DF9B94 8007EE64 00000000 */   nop
.Llevel_24_8007EE68:
/* 5DF9B98 8007EE68 00006386 */  lh         $v1, 0x0($s3)
/* 5DF9B9C 8007EE6C 0C00828E */  lw         $v0, 0xC($s4)
/* 5DF9BA0 8007EE70 00000000 */  nop
/* 5DF9BA4 8007EE74 21104300 */  addu       $v0, $v0, $v1
/* 5DF9BA8 8007EE78 0C0082AE */  sw         $v0, 0xC($s4)
/* 5DF9BAC 8007EE7C 02006386 */  lh         $v1, 0x2($s3)
/* 5DF9BB0 8007EE80 1000828E */  lw         $v0, 0x10($s4)
/* 5DF9BB4 8007EE84 00000000 */  nop
/* 5DF9BB8 8007EE88 21104300 */  addu       $v0, $v0, $v1
/* 5DF9BBC 8007EE8C 100082AE */  sw         $v0, 0x10($s4)
/* 5DF9BC0 8007EE90 04006296 */  lhu        $v0, 0x4($s3)
/* 5DF9BC4 8007EE94 00000000 */  nop
/* 5DF9BC8 8007EE98 F6FF4224 */  addiu      $v0, $v0, -0xA
/* 5DF9BCC 8007EE9C 040062A6 */  sh         $v0, 0x4($s3)
/* 5DF9BD0 8007EEA0 00140200 */  sll        $v0, $v0, 16
/* 5DF9BD4 8007EEA4 03140200 */  sra        $v0, $v0, 16
/* 5DF9BD8 8007EEA8 38FF4228 */  slti       $v0, $v0, -0xC8
/* 5DF9BDC 8007EEAC 02004010 */  beqz       $v0, .Llevel_24_8007EEB8
/* 5DF9BE0 8007EEB0 38FF0224 */   addiu     $v0, $zero, -0xC8
/* 5DF9BE4 8007EEB4 040062A6 */  sh         $v0, 0x4($s3)
.Llevel_24_8007EEB8:
/* 5DF9BE8 8007EEB8 04006386 */  lh         $v1, 0x4($s3)
/* 5DF9BEC 8007EEBC 1400828E */  lw         $v0, 0x14($s4)
/* 5DF9BF0 8007EEC0 00000000 */  nop
/* 5DF9BF4 8007EEC4 21104300 */  addu       $v0, $v0, $v1
/* 5DF9BF8 8007EEC8 140082AE */  sw         $v0, 0x14($s4)
/* 5DF9BFC 8007EECC 44008292 */  lbu        $v0, 0x44($s4)
/* 5DF9C00 8007EED0 06006392 */  lbu        $v1, 0x6($s3)
/* 5DF9C04 8007EED4 00000000 */  nop
/* 5DF9C08 8007EED8 21104300 */  addu       $v0, $v0, $v1
/* 5DF9C0C 8007EEDC 440082A2 */  sb         $v0, 0x44($s4)
/* 5DF9C10 8007EEE0 45008292 */  lbu        $v0, 0x45($s4)
/* 5DF9C14 8007EEE4 08006392 */  lbu        $v1, 0x8($s3)
/* 5DF9C18 8007EEE8 00000000 */  nop
/* 5DF9C1C 8007EEEC 21104300 */  addu       $v0, $v0, $v1
/* 5DF9C20 8007EEF0 450082A2 */  sb         $v0, 0x45($s4)
/* 5DF9C24 8007EEF4 46008292 */  lbu        $v0, 0x46($s4)
/* 5DF9C28 8007EEF8 0A006392 */  lbu        $v1, 0xA($s3)
/* 5DF9C2C 8007EEFC 00000000 */  nop
/* 5DF9C30 8007EF00 21104300 */  addu       $v0, $v0, $v1
/* 5DF9C34 8007EF04 460082A2 */  sb         $v0, 0x46($s4)
.Llevel_24_8007EF08:
/* 5DF9C38 8007EF08 6000BF8F */  lw         $ra, 0x60($sp)
/* 5DF9C3C 8007EF0C 5C00B78F */  lw         $s7, 0x5C($sp)
/* 5DF9C40 8007EF10 5800B68F */  lw         $s6, 0x58($sp)
/* 5DF9C44 8007EF14 5400B58F */  lw         $s5, 0x54($sp)
/* 5DF9C48 8007EF18 5000B48F */  lw         $s4, 0x50($sp)
/* 5DF9C4C 8007EF1C 4C00B38F */  lw         $s3, 0x4C($sp)
/* 5DF9C50 8007EF20 4800B28F */  lw         $s2, 0x48($sp)
/* 5DF9C54 8007EF24 4400B18F */  lw         $s1, 0x44($sp)
/* 5DF9C58 8007EF28 4000B08F */  lw         $s0, 0x40($sp)
/* 5DF9C5C 8007EF2C 6800BD27 */  addiu      $sp, $sp, 0x68
/* 5DF9C60 8007EF30 0800E003 */  jr         $ra
/* 5DF9C64 8007EF34 00000000 */   nop
.size MobyUpdate_8_level_24, . - MobyUpdate_8_level_24
