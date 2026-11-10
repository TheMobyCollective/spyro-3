.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_110_level_16
/* 4B9FDA8 8007E878 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 4B9FDAC 8007E87C 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 4B9FDB0 8007E880 21888000 */  addu       $s1, $a0, $zero
/* 4B9FDB4 8007E884 0A000324 */  addiu      $v1, $zero, 0xA
/* 4B9FDB8 8007E888 4000BFAF */  sw         $ra, 0x40($sp)
/* 4B9FDBC 8007E88C 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 4B9FDC0 8007E890 3800B4AF */  sw         $s4, 0x38($sp)
/* 4B9FDC4 8007E894 3400B3AF */  sw         $s3, 0x34($sp)
/* 4B9FDC8 8007E898 3000B2AF */  sw         $s2, 0x30($sp)
/* 4B9FDCC 8007E89C 2800B0AF */  sw         $s0, 0x28($sp)
/* 4B9FDD0 8007E8A0 49002292 */  lbu        $v0, 0x49($s1)
/* 4B9FDD4 8007E8A4 0000338E */  lw         $s3, 0x0($s1)
/* 4B9FDD8 8007E8A8 03004314 */  bne        $v0, $v1, .Llevel_16_8007E8B8
/* 4B9FDDC 8007E8AC 02000224 */   addiu     $v0, $zero, 0x2
/* 4B9FDE0 8007E8B0 2FFA0108 */  j          .Llevel_16_8007E8BC
/* 4B9FDE4 8007E8B4 180020AE */   sw        $zero, 0x18($s1)
.Llevel_16_8007E8B8:
/* 4B9FDE8 8007E8B8 490022A2 */  sb         $v0, 0x49($s1)
.Llevel_16_8007E8BC:
/* 4B9FDEC 8007E8BC 1800228E */  lw         $v0, 0x18($s1)
/* 4B9FDF0 8007E8C0 00000000 */  nop
/* 4B9FDF4 8007E8C4 6D004010 */  beqz       $v0, .Llevel_16_8007EA7C
/* 4B9FDF8 8007E8C8 21800000 */   addu      $s0, $zero, $zero
/* 4B9FDFC 8007E8CC 21202002 */  addu       $a0, $s1, $zero
/* 4B9FE00 8007E8D0 21280000 */  addu       $a1, $zero, $zero
/* 4B9FE04 8007E8D4 21300000 */  addu       $a2, $zero, $zero
/* 4B9FE08 8007E8D8 9ADA000C */  jal        func_80036A68
/* 4B9FE0C 8007E8DC 21380000 */   addu      $a3, $zero, $zero
/* 4B9FE10 8007E8E0 21202002 */  addu       $a0, $s1, $zero
/* 4B9FE14 8007E8E4 04000524 */  addiu      $a1, $zero, 0x4
/* 4B9FE18 8007E8E8 21900000 */  addu       $s2, $zero, $zero
/* 4B9FE1C 8007E8EC 01001424 */  addiu      $s4, $zero, 0x1
/* 4B9FE20 8007E8F0 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 4B9FE24 8007E8F4 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 4B9FE28 8007E8F8 02001524 */  addiu      $s5, $zero, 0x2
/* 4B9FE2C 8007E8FC 4957010C */  jal        func_80055D24
/* 4B9FE30 8007E900 460022A2 */   sb        $v0, 0x46($s1)
.Llevel_16_8007E904:
/* 4B9FE34 8007E904 0780023C */  lui        $v0, %hi(D_8006C578)
/* 4B9FE38 8007E908 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 4B9FE3C 8007E90C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 4B9FE40 8007E910 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 4B9FE44 8007E914 00000000 */  nop
/* 4B9FE48 8007E918 23104300 */  subu       $v0, $v0, $v1
/* 4B9FE4C 8007E91C 15004228 */  slti       $v0, $v0, 0x15
/* 4B9FE50 8007E920 37004014 */  bnez       $v0, .Llevel_16_8007EA00
/* 4B9FE54 8007E924 08000424 */   addiu     $a0, $zero, 0x8
/* 4B9FE58 8007E928 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 4B9FE5C 8007E92C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 4B9FE60 8007E930 00000000 */  nop
/* 4B9FE64 8007E934 09F84000 */  jalr       $v0
/* 4B9FE68 8007E938 21282002 */   addu      $a1, $s1, $zero
/* 4B9FE6C 8007E93C 21804000 */  addu       $s0, $v0, $zero
/* 4B9FE70 8007E940 2B000012 */  beqz       $s0, .Llevel_16_8007E9F0
/* 4B9FE74 8007E944 2C000224 */   addiu     $v0, $zero, 0x2C
/* 4B9FE78 8007E948 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 4B9FE7C 8007E94C 3F000224 */  addiu      $v0, $zero, 0x3F
/* 4B9FE80 8007E950 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 4B9FE84 8007E954 FF000224 */  addiu      $v0, $zero, 0xFF
/* 4B9FE88 8007E958 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 4B9FE8C 8007E95C 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 4B9FE90 8007E960 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 4B9FE94 8007E964 11005412 */  beq        $s2, $s4, .Llevel_16_8007E9AC
/* 4B9FE98 8007E968 460002A2 */   sb        $v0, 0x46($s0)
/* 4B9FE9C 8007E96C 0200422A */  slti       $v0, $s2, 0x2
/* 4B9FEA0 8007E970 05004010 */  beqz       $v0, .Llevel_16_8007E988
/* 4B9FEA4 8007E974 00000000 */   nop
/* 4B9FEA8 8007E978 07004012 */  beqz       $s2, .Llevel_16_8007E998
/* 4B9FEAC 8007E97C A6010224 */   addiu     $v0, $zero, 0x1A6
/* 4B9FEB0 8007E980 79FA0108 */  j          .Llevel_16_8007E9E4
/* 4B9FEB4 8007E984 0C000426 */   addiu     $a0, $s0, 0xC
.Llevel_16_8007E988:
/* 4B9FEB8 8007E988 0F005512 */  beq        $s2, $s5, .Llevel_16_8007E9C8
/* 4B9FEBC 8007E98C 0A000224 */   addiu     $v0, $zero, 0xA
/* 4B9FEC0 8007E990 79FA0108 */  j          .Llevel_16_8007E9E4
/* 4B9FEC4 8007E994 0C000426 */   addiu     $a0, $s0, 0xC
.Llevel_16_8007E998:
/* 4B9FEC8 8007E998 1000A2AF */  sw         $v0, 0x10($sp)
/* 4B9FECC 8007E99C 32000224 */  addiu      $v0, $zero, 0x32
/* 4B9FED0 8007E9A0 1400A2AF */  sw         $v0, 0x14($sp)
/* 4B9FED4 8007E9A4 76FA0108 */  j          .Llevel_16_8007E9D8
/* 4B9FED8 8007E9A8 80010224 */   addiu     $v0, $zero, 0x180
.Llevel_16_8007E9AC:
/* 4B9FEDC 8007E9AC 74FF0224 */  addiu      $v0, $zero, -0x8C
/* 4B9FEE0 8007E9B0 1400A2AF */  sw         $v0, 0x14($sp)
/* 4B9FEE4 8007E9B4 00040224 */  addiu      $v0, $zero, 0x400
/* 4B9FEE8 8007E9B8 1000A0AF */  sw         $zero, 0x10($sp)
/* 4B9FEEC 8007E9BC 1800A2AF */  sw         $v0, 0x18($sp)
/* 4B9FEF0 8007E9C0 78FA0108 */  j          .Llevel_16_8007E9E0
/* 4B9FEF4 8007E9C4 3C0015A2 */   sb        $s5, 0x3C($s0)
.Llevel_16_8007E9C8:
/* 4B9FEF8 8007E9C8 1000A2AF */  sw         $v0, 0x10($sp)
/* 4B9FEFC 8007E9CC B8FE0224 */  addiu      $v0, $zero, -0x148
/* 4B9FF00 8007E9D0 1400A2AF */  sw         $v0, 0x14($sp)
/* 4B9FF04 8007E9D4 00020224 */  addiu      $v0, $zero, 0x200
.Llevel_16_8007E9D8:
/* 4B9FF08 8007E9D8 1800A2AF */  sw         $v0, 0x18($sp)
/* 4B9FF0C 8007E9DC 3C0014A2 */  sb         $s4, 0x3C($s0)
.Llevel_16_8007E9E0:
/* 4B9FF10 8007E9E0 0C000426 */  addiu      $a0, $s0, 0xC
.Llevel_16_8007E9E4:
/* 4B9FF14 8007E9E4 21288000 */  addu       $a1, $a0, $zero
/* 4B9FF18 8007E9E8 653C010C */  jal        func_8004F194
/* 4B9FF1C 8007E9EC 1000A627 */   addiu     $a2, $sp, 0x10
.Llevel_16_8007E9F0:
/* 4B9FF20 8007E9F0 01005226 */  addiu      $s2, $s2, 0x1
/* 4B9FF24 8007E9F4 0300422A */  slti       $v0, $s2, 0x3
/* 4B9FF28 8007E9F8 C2FF4014 */  bnez       $v0, .Llevel_16_8007E904
/* 4B9FF2C 8007E9FC 00000000 */   nop
.Llevel_16_8007EA00:
/* 4B9FF30 8007EA00 04000012 */  beqz       $s0, .Llevel_16_8007EA14
/* 4B9FF34 8007EA04 21200002 */   addu      $a0, $s0, $zero
/* 4B9FF38 8007EA08 21280000 */  addu       $a1, $zero, $zero
/* 4B9FF3C 8007EA0C AFEE000C */  jal        func_8003BABC
/* 4B9FF40 8007EA10 21300000 */   addu      $a2, $zero, $zero
.Llevel_16_8007EA14:
/* 4B9FF44 8007EA14 21202002 */  addu       $a0, $s1, $zero
/* 4B9FF48 8007EA18 6EDA000C */  jal        func_800369B8
/* 4B9FF4C 8007EA1C 64000524 */   addiu     $a1, $zero, 0x64
/* 4B9FF50 8007EA20 12006286 */  lh         $v0, 0x12($s3)
/* 4B9FF54 8007EA24 00000000 */  nop
/* 4B9FF58 8007EA28 0F004010 */  beqz       $v0, .Llevel_16_8007EA68
/* 4B9FF5C 8007EA2C FF000224 */   addiu     $v0, $zero, 0xFF
/* 4B9FF60 8007EA30 4A0022A2 */  sb         $v0, 0x4A($s1)
/* 4B9FF64 8007EA34 F4010224 */  addiu      $v0, $zero, 0x1F4
/* 4B9FF68 8007EA38 180020AE */  sw         $zero, 0x18($s1)
/* 4B9FF6C 8007EA3C 100060A6 */  sh         $zero, 0x10($s3)
/* 4B9FF70 8007EA40 0C0062AE */  sw         $v0, 0xC($s3)
/* 4B9FF74 8007EA44 1400228E */  lw         $v0, 0x14($s1)
/* 4B9FF78 8007EA48 4C0020A2 */  sb         $zero, 0x4C($s1)
/* 4B9FF7C 8007EA4C 0780033C */  lui        $v1, %hi(D_8006C7C4)
/* 4B9FF80 8007EA50 C4C7638C */  lw         $v1, %lo(D_8006C7C4)($v1)
/* 4B9FF84 8007EA54 00404224 */  addiu      $v0, $v0, 0x4000
/* 4B9FF88 8007EA58 140022AE */  sw         $v0, 0x14($s1)
/* 4B9FF8C 8007EA5C 02000224 */  addiu      $v0, $zero, 0x2
/* 4B9FF90 8007EA60 05006210 */  beq        $v1, $v0, .Llevel_16_8007EA78
/* 4B9FF94 8007EA64 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_16_8007EA68:
/* 4B9FF98 8007EA68 C656010C */  jal        func_80055B18
/* 4B9FF9C 8007EA6C 21202002 */   addu      $a0, $s1, $zero
/* 4B9FFA0 8007EA70 EDFA0108 */  j          .Llevel_16_8007EBB4
/* 4B9FFA4 8007EA74 00000000 */   nop
.Llevel_16_8007EA78:
/* 4B9FFA8 8007EA78 480022A2 */  sb         $v0, 0x48($s1)
.Llevel_16_8007EA7C:
/* 4B9FFAC 8007EA7C 48002392 */  lbu        $v1, 0x48($s1)
/* 4B9FFB0 8007EA80 02000224 */  addiu      $v0, $zero, 0x2
/* 4B9FFB4 8007EA84 0A006214 */  bne        $v1, $v0, .Llevel_16_8007EAB0
/* 4B9FFB8 8007EA88 01000224 */   addiu     $v0, $zero, 0x1
/* 4B9FFBC 8007EA8C 0C006426 */  addiu      $a0, $s3, 0xC
/* 4B9FFC0 8007EA90 69D6000C */  jal        func_800359A4
/* 4B9FFC4 8007EA94 04000524 */   addiu     $a1, $zero, 0x4
/* 4B9FFC8 8007EA98 46004010 */  beqz       $v0, .Llevel_16_8007EBB4
/* 4B9FFCC 8007EA9C 01000224 */   addiu     $v0, $zero, 0x1
/* 4B9FFD0 8007EAA0 480022A2 */  sb         $v0, 0x48($s1)
/* 4B9FFD4 8007EAA4 20000224 */  addiu      $v0, $zero, 0x20
/* 4B9FFD8 8007EAA8 EDFA0108 */  j          .Llevel_16_8007EBB4
/* 4B9FFDC 8007EAAC 4C0022A2 */   sb        $v0, 0x4C($s1)
.Llevel_16_8007EAB0:
/* 4B9FFE0 8007EAB0 40006214 */  bne        $v1, $v0, .Llevel_16_8007EBB4
/* 4B9FFE4 8007EAB4 00000000 */   nop
/* 4B9FFE8 8007EAB8 10006286 */  lh         $v0, 0x10($s3)
/* 4B9FFEC 8007EABC 1400238E */  lw         $v1, 0x14($s1)
/* 4B9FFF0 8007EAC0 00000000 */  nop
/* 4B9FFF4 8007EAC4 23186200 */  subu       $v1, $v1, $v0
/* 4B9FFF8 8007EAC8 140023AE */  sw         $v1, 0x14($s1)
/* 4B9FFFC 8007EACC 10006286 */  lh         $v0, 0x10($s3)
/* 4BA0000 8007EAD0 00000000 */  nop
/* 4BA0004 8007EAD4 21184000 */  addu       $v1, $v0, $zero
/* 4BA0008 8007EAD8 8A024228 */  slti       $v0, $v0, 0x28A
/* 4BA000C 8007EADC 02004010 */  beqz       $v0, .Llevel_16_8007EAE8
/* 4BA0010 8007EAE0 10006224 */   addiu     $v0, $v1, 0x10
/* 4BA0014 8007EAE4 100062A6 */  sh         $v0, 0x10($s3)
.Llevel_16_8007EAE8:
/* 4BA0018 8007EAE8 1400238E */  lw         $v1, 0x14($s1)
/* 4BA001C 8007EAEC 0800628E */  lw         $v0, 0x8($s3)
/* 4BA0020 8007EAF0 00000000 */  nop
/* 4BA0024 8007EAF4 2A104300 */  slt        $v0, $v0, $v1
/* 4BA0028 8007EAF8 2B004014 */  bnez       $v0, .Llevel_16_8007EBA8
/* 4BA002C 8007EAFC 21300000 */   addu      $a2, $zero, $zero
/* 4BA0030 8007EB00 0C00238E */  lw         $v1, 0xC($s1)
/* 4BA0034 8007EB04 0780043C */  lui        $a0, %hi(D_8006E020)
/* 4BA0038 8007EB08 20E0848C */  lw         $a0, %lo(D_8006E020)($a0)
/* 4BA003C 8007EB0C 1000228E */  lw         $v0, 0x10($s1)
/* 4BA0040 8007EB10 0780053C */  lui        $a1, %hi(D_8006E024)
/* 4BA0044 8007EB14 24E0A58C */  lw         $a1, %lo(D_8006E024)($a1)
/* 4BA0048 8007EB18 23206400 */  subu       $a0, $v1, $a0
/* 4BA004C 8007EB1C 203A010C */  jal        func_8004E880
/* 4BA0050 8007EB20 23284500 */   subu      $a1, $v0, $a1
/* 4BA0054 8007EB24 0780043C */  lui        $a0, %hi(D_8006E040)
/* 4BA0058 8007EB28 40E08494 */  lhu        $a0, %lo(D_8006E040)($a0)
/* 4BA005C 8007EB2C 21284000 */  addu       $a1, $v0, $zero
/* 4BA0060 8007EB30 00240400 */  sll        $a0, $a0, 16
/* 4BA0064 8007EB34 993C010C */  jal        func_8004F264
/* 4BA0068 8007EB38 03250400 */   sra       $a0, $a0, 20
/* 4BA006C 8007EB3C 10004228 */  slti       $v0, $v0, 0x10
/* 4BA0070 8007EB40 0E004010 */  beqz       $v0, .Llevel_16_8007EB7C
/* 4BA0074 8007EB44 21202002 */   addu      $a0, $s1, $zero
/* 4BA0078 8007EB48 0780053C */  lui        $a1, %hi(D_80070328)
/* 4BA007C 8007EB4C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 4BA0080 8007EB50 CD3C010C */  jal        func_8004F334
/* 4BA0084 8007EB54 0C002426 */   addiu     $a0, $s1, 0xC
/* 4BA0088 8007EB58 00284228 */  slti       $v0, $v0, 0x2800
/* 4BA008C 8007EB5C 06004010 */  beqz       $v0, .Llevel_16_8007EB78
/* 4BA0090 8007EB60 14000224 */   addiu     $v0, $zero, 0x14
/* 4BA0094 8007EB64 0780013C */  lui        $at, %hi(D_8006E1D8)
/* 4BA0098 8007EB68 D8E122AC */  sw         $v0, %lo(D_8006E1D8)($at)
/* 4BA009C 8007EB6C 00100224 */  addiu      $v0, $zero, 0x1000
/* 4BA00A0 8007EB70 0780013C */  lui        $at, %hi(D_8006E1D4)
/* 4BA00A4 8007EB74 D4E122AC */  sw         $v0, %lo(D_8006E1D4)($at)
.Llevel_16_8007EB78:
/* 4BA00A8 8007EB78 21202002 */  addu       $a0, $s1, $zero
.Llevel_16_8007EB7C:
/* 4BA00AC 8007EB7C 21280000 */  addu       $a1, $zero, $zero
/* 4BA00B0 8007EB80 AFEE000C */  jal        func_8003BABC
/* 4BA00B4 8007EB84 21300000 */   addu      $a2, $zero, $zero
/* 4BA00B8 8007EB88 21202002 */  addu       $a0, $s1, $zero
/* 4BA00BC 8007EB8C 6EDA000C */  jal        func_800369B8
/* 4BA00C0 8007EB90 28000524 */   addiu     $a1, $zero, 0x28
/* 4BA00C4 8007EB94 0800638E */  lw         $v1, 0x8($s3)
/* 4BA00C8 8007EB98 20000224 */  addiu      $v0, $zero, 0x20
/* 4BA00CC 8007EB9C 480020A2 */  sb         $zero, 0x48($s1)
/* 4BA00D0 8007EBA0 4A0022A2 */  sb         $v0, 0x4A($s1)
/* 4BA00D4 8007EBA4 140023AE */  sw         $v1, 0x14($s1)
.Llevel_16_8007EBA8:
/* 4BA00D8 8007EBA8 21202002 */  addu       $a0, $s1, $zero
/* 4BA00DC 8007EBAC 4957010C */  jal        func_80055D24
/* 4BA00E0 8007EBB0 04000524 */   addiu     $a1, $zero, 0x4
.Llevel_16_8007EBB4:
/* 4BA00E4 8007EBB4 4000BF8F */  lw         $ra, 0x40($sp)
/* 4BA00E8 8007EBB8 3C00B58F */  lw         $s5, 0x3C($sp)
/* 4BA00EC 8007EBBC 3800B48F */  lw         $s4, 0x38($sp)
/* 4BA00F0 8007EBC0 3400B38F */  lw         $s3, 0x34($sp)
/* 4BA00F4 8007EBC4 3000B28F */  lw         $s2, 0x30($sp)
/* 4BA00F8 8007EBC8 2C00B18F */  lw         $s1, 0x2C($sp)
/* 4BA00FC 8007EBCC 2800B08F */  lw         $s0, 0x28($sp)
/* 4BA0100 8007EBD0 4800BD27 */  addiu      $sp, $sp, 0x48
/* 4BA0104 8007EBD4 0800E003 */  jr         $ra
/* 4BA0108 8007EBD8 00000000 */   nop
.size MobyUpdate_110_level_16, . - MobyUpdate_110_level_16
