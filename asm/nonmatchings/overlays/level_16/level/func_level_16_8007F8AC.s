.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_16_8007F8AC
/* 4BA0DDC 8007F8AC B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 4BA0DE0 8007F8B0 3400B3AF */  sw         $s3, 0x34($sp)
/* 4BA0DE4 8007F8B4 21988000 */  addu       $s3, $a0, $zero
/* 4BA0DE8 8007F8B8 3800B4AF */  sw         $s4, 0x38($sp)
/* 4BA0DEC 8007F8BC 21A0A000 */  addu       $s4, $a1, $zero
/* 4BA0DF0 8007F8C0 4400B7AF */  sw         $s7, 0x44($sp)
/* 4BA0DF4 8007F8C4 21B8C000 */  addu       $s7, $a2, $zero
/* 4BA0DF8 8007F8C8 2800B0AF */  sw         $s0, 0x28($sp)
/* 4BA0DFC 8007F8CC 2180E000 */  addu       $s0, $a3, $zero
/* 4BA0E00 8007F8D0 4000B6AF */  sw         $s6, 0x40($sp)
/* 4BA0E04 8007F8D4 6400B68F */  lw         $s6, 0x64($sp)
/* 4BA0E08 8007F8D8 21300000 */  addu       $a2, $zero, $zero
/* 4BA0E0C 8007F8DC 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 4BA0E10 8007F8E0 4800BEAF */  sw         $fp, 0x48($sp)
/* 4BA0E14 8007F8E4 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 4BA0E18 8007F8E8 3000B2AF */  sw         $s2, 0x30($sp)
/* 4BA0E1C 8007F8EC 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 4BA0E20 8007F8F0 0C00638E */  lw         $v1, 0xC($s3)
/* 4BA0E24 8007F8F4 0000848E */  lw         $a0, 0x0($s4)
/* 4BA0E28 8007F8F8 1000628E */  lw         $v0, 0x10($s3)
/* 4BA0E2C 8007F8FC 0400858E */  lw         $a1, 0x4($s4)
/* 4BA0E30 8007F900 6000B18F */  lw         $s1, 0x60($sp)
/* 4BA0E34 8007F904 7000BE8F */  lw         $fp, 0x70($sp)
/* 4BA0E38 8007F908 23206400 */  subu       $a0, $v1, $a0
/* 4BA0E3C 8007F90C 203A010C */  jal        func_8004E880
/* 4BA0E40 8007F910 23284500 */   subu      $a1, $v0, $a1
/* 4BA0E44 8007F914 21904000 */  addu       $s2, $v0, $zero
/* 4BA0E48 8007F918 21200002 */  addu       $a0, $s0, $zero
/* 4BA0E4C 8007F91C 4FD8000C */  jal        SubAngle8
/* 4BA0E50 8007F920 FF004532 */   andi      $a1, $s2, 0xFF
/* 4BA0E54 8007F924 0C006426 */  addiu      $a0, $s3, 0xC
/* 4BA0E58 8007F928 21288002 */  addu       $a1, $s4, $zero
/* 4BA0E5C 8007F92C CD3C010C */  jal        func_8004F334
/* 4BA0E60 8007F930 21A84000 */   addu      $s5, $v0, $zero
/* 4BA0E64 8007F934 21184000 */  addu       $v1, $v0, $zero
/* 4BA0E68 8007F938 0200A106 */  bgez       $s5, .Llevel_16_8007F944
/* 4BA0E6C 8007F93C 2110A002 */   addu      $v0, $s5, $zero
/* 4BA0E70 8007F940 23100200 */  negu       $v0, $v0
.Llevel_16_8007F944:
/* 4BA0E74 8007F944 2A105100 */  slt        $v0, $v0, $s1
/* 4BA0E78 8007F948 07004010 */  beqz       $v0, .Llevel_16_8007F968
/* 4BA0E7C 8007F94C 23107700 */   subu      $v0, $v1, $s7
/* 4BA0E80 8007F950 03004104 */  bgez       $v0, .Llevel_16_8007F960
/* 4BA0E84 8007F954 C8004228 */   slti      $v0, $v0, 0xC8
/* 4BA0E88 8007F958 2310E302 */  subu       $v0, $s7, $v1
/* 4BA0E8C 8007F95C C8004228 */  slti       $v0, $v0, 0xC8
.Llevel_16_8007F960:
/* 4BA0E90 8007F960 89004014 */  bnez       $v0, .Llevel_16_8007FB88
/* 4BA0E94 8007F964 00000000 */   nop
.Llevel_16_8007F968:
/* 4BA0E98 8007F968 FF000224 */  addiu      $v0, $zero, 0xFF
/* 4BA0E9C 8007F96C 1200C213 */  beq        $fp, $v0, .Llevel_16_8007F9B8
/* 4BA0EA0 8007F970 00000000 */   nop
/* 4BA0EA4 8007F974 FF005032 */  andi       $s0, $s2, 0xFF
/* 4BA0EA8 8007F978 21200002 */  addu       $a0, $s0, $zero
/* 4BA0EAC 8007F97C 993C010C */  jal        func_8004F264
/* 4BA0EB0 8007F980 2128C003 */   addu      $a1, $fp, $zero
/* 4BA0EB4 8007F984 05004228 */  slti       $v0, $v0, 0x5
/* 4BA0EB8 8007F988 0B004010 */  beqz       $v0, .Llevel_16_8007F9B8
/* 4BA0EBC 8007F98C 2120C003 */   addu      $a0, $fp, $zero
/* 4BA0EC0 8007F990 4FD8000C */  jal        SubAngle8
/* 4BA0EC4 8007F994 21280002 */   addu      $a1, $s0, $zero
/* 4BA0EC8 8007F998 0300A106 */  bgez       $s5, .Llevel_16_8007F9A8
/* 4BA0ECC 8007F99C 00000000 */   nop
/* 4BA0ED0 8007F9A0 1A004004 */  bltz       $v0, .Llevel_16_8007FA0C
/* 4BA0ED4 8007F9A4 00000000 */   nop
.Llevel_16_8007F9A8:
/* 4BA0ED8 8007F9A8 0300A01A */  blez       $s5, .Llevel_16_8007F9B8
/* 4BA0EDC 8007F9AC 00000000 */   nop
/* 4BA0EE0 8007F9B0 7800401C */  bgtz       $v0, .Llevel_16_8007FB94
/* 4BA0EE4 8007F9B4 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_16_8007F9B8:
/* 4BA0EE8 8007F9B8 7400A88F */  lw         $t0, 0x74($sp)
/* 4BA0EEC 8007F9BC FF000224 */  addiu      $v0, $zero, 0xFF
/* 4BA0EF0 8007F9C0 14000211 */  beq        $t0, $v0, .Llevel_16_8007FA14
/* 4BA0EF4 8007F9C4 FF005032 */   andi      $s0, $s2, 0xFF
/* 4BA0EF8 8007F9C8 7400A58F */  lw         $a1, 0x74($sp)
/* 4BA0EFC 8007F9CC 993C010C */  jal        func_8004F264
/* 4BA0F00 8007F9D0 21200002 */   addu      $a0, $s0, $zero
/* 4BA0F04 8007F9D4 05004228 */  slti       $v0, $v0, 0x5
/* 4BA0F08 8007F9D8 0E004010 */  beqz       $v0, .Llevel_16_8007FA14
/* 4BA0F0C 8007F9DC 00000000 */   nop
/* 4BA0F10 8007F9E0 7400A48F */  lw         $a0, 0x74($sp)
/* 4BA0F14 8007F9E4 4FD8000C */  jal        SubAngle8
/* 4BA0F18 8007F9E8 21280002 */   addu      $a1, $s0, $zero
/* 4BA0F1C 8007F9EC 0300A106 */  bgez       $s5, .Llevel_16_8007F9FC
/* 4BA0F20 8007F9F0 00000000 */   nop
/* 4BA0F24 8007F9F4 05004004 */  bltz       $v0, .Llevel_16_8007FA0C
/* 4BA0F28 8007F9F8 00000000 */   nop
.Llevel_16_8007F9FC:
/* 4BA0F2C 8007F9FC 0500A01A */  blez       $s5, .Llevel_16_8007FA14
/* 4BA0F30 8007FA00 00000000 */   nop
/* 4BA0F34 8007FA04 03004018 */  blez       $v0, .Llevel_16_8007FA14
/* 4BA0F38 8007FA08 00000000 */   nop
.Llevel_16_8007FA0C:
/* 4BA0F3C 8007FA0C E5FE0108 */  j          .Llevel_16_8007FB94
/* 4BA0F40 8007FA10 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_16_8007FA14:
/* 4BA0F44 8007FA14 0300A106 */  bgez       $s5, .Llevel_16_8007FA24
/* 4BA0F48 8007FA18 00000000 */   nop
/* 4BA0F4C 8007FA1C 8AFE0108 */  j          .Llevel_16_8007FA28
/* 4BA0F50 8007FA20 03005226 */   addiu     $s2, $s2, 0x3
.Llevel_16_8007FA24:
/* 4BA0F54 8007FA24 FDFF5226 */  addiu      $s2, $s2, -0x3
.Llevel_16_8007FA28:
/* 4BA0F58 8007FA28 FF004332 */  andi       $v1, $s2, 0xFF
/* 4BA0F5C 8007FA2C 40180300 */  sll        $v1, $v1, 1
/* 4BA0F60 8007FA30 0680013C */  lui        $at, %hi(D_80065920)
/* 4BA0F64 8007FA34 21082300 */  addu       $at, $at, $v1
/* 4BA0F68 8007FA38 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 4BA0F6C 8007FA3C 00000000 */  nop
/* 4BA0F70 8007FA40 18005700 */  mult       $v0, $s7
/* 4BA0F74 8007FA44 0000878E */  lw         $a3, 0x0($s4)
/* 4BA0F78 8007FA48 12400000 */  mflo       $t0
/* 4BA0F7C 8007FA4C 03130800 */  sra        $v0, $t0, 12
/* 4BA0F80 8007FA50 2138E200 */  addu       $a3, $a3, $v0
/* 4BA0F84 8007FA54 1800A7AF */  sw         $a3, 0x18($sp)
/* 4BA0F88 8007FA58 0680013C */  lui        $at, %hi(D_800658A0)
/* 4BA0F8C 8007FA5C 21082300 */  addu       $at, $at, $v1
/* 4BA0F90 8007FA60 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 4BA0F94 8007FA64 00000000 */  nop
/* 4BA0F98 8007FA68 18005700 */  mult       $v0, $s7
/* 4BA0F9C 8007FA6C 21300000 */  addu       $a2, $zero, $zero
/* 4BA0FA0 8007FA70 0400858E */  lw         $a1, 0x4($s4)
/* 4BA0FA4 8007FA74 12400000 */  mflo       $t0
/* 4BA0FA8 8007FA78 03130800 */  sra        $v0, $t0, 12
/* 4BA0FAC 8007FA7C 2128A200 */  addu       $a1, $a1, $v0
/* 4BA0FB0 8007FA80 1C00A5AF */  sw         $a1, 0x1C($sp)
/* 4BA0FB4 8007FA84 0C00648E */  lw         $a0, 0xC($s3)
/* 4BA0FB8 8007FA88 1000628E */  lw         $v0, 0x10($s3)
/* 4BA0FBC 8007FA8C 2320E400 */  subu       $a0, $a3, $a0
/* 4BA0FC0 8007FA90 203A010C */  jal        func_8004E880
/* 4BA0FC4 8007FA94 2328A200 */   subu      $a1, $a1, $v0
/* 4BA0FC8 8007FA98 21804000 */  addu       $s0, $v0, $zero
/* 4BA0FCC 8007FA9C 0780033C */  lui        $v1, %hi(D_8006C648)
/* 4BA0FD0 8007FAA0 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 4BA0FD4 8007FAA4 03000224 */  addiu      $v0, $zero, 0x3
/* 4BA0FD8 8007FAA8 04006214 */  bne        $v1, $v0, .Llevel_16_8007FABC
/* 4BA0FDC 8007FAAC 04000224 */   addiu     $v0, $zero, 0x4
/* 4BA0FE0 8007FAB0 43101600 */  sra        $v0, $s6, 1
/* 4BA0FE4 8007FAB4 B2FE0108 */  j          .Llevel_16_8007FAC8
/* 4BA0FE8 8007FAB8 21B0C202 */   addu      $s6, $s6, $v0
.Llevel_16_8007FABC:
/* 4BA0FEC 8007FABC 02006214 */  bne        $v1, $v0, .Llevel_16_8007FAC8
/* 4BA0FF0 8007FAC0 00000000 */   nop
/* 4BA0FF4 8007FAC4 40B01600 */  sll        $s6, $s6, 1
.Llevel_16_8007FAC8:
/* 4BA0FF8 8007FAC8 8000A88F */  lw         $t0, 0x80($sp)
/* 4BA0FFC 8007FACC 00000000 */  nop
/* 4BA1000 8007FAD0 08000231 */  andi       $v0, $t0, 0x8
/* 4BA1004 8007FAD4 1A004010 */  beqz       $v0, .Llevel_16_8007FB40
/* 4BA1008 8007FAD8 21300000 */   addu      $a2, $zero, $zero
/* 4BA100C 8007FADC 0000838E */  lw         $v1, 0x0($s4)
/* 4BA1010 8007FAE0 0C00648E */  lw         $a0, 0xC($s3)
/* 4BA1014 8007FAE4 0400828E */  lw         $v0, 0x4($s4)
/* 4BA1018 8007FAE8 1000658E */  lw         $a1, 0x10($s3)
/* 4BA101C 8007FAEC 23206400 */  subu       $a0, $v1, $a0
/* 4BA1020 8007FAF0 203A010C */  jal        func_8004E880
/* 4BA1024 8007FAF4 23284500 */   subu      $a1, $v0, $a1
/* 4BA1028 8007FAF8 21206002 */  addu       $a0, $s3, $zero
/* 4BA102C 8007FAFC 21284000 */  addu       $a1, $v0, $zero
/* 4BA1030 8007FB00 6800A68F */  lw         $a2, 0x68($sp)
/* 4BA1034 8007FB04 21380000 */  addu       $a3, $zero, $zero
/* 4BA1038 8007FB08 1000A0AF */  sw         $zero, 0x10($sp)
/* 4BA103C 8007FB0C 17D6000C */  jal        func_8003585C
/* 4BA1040 8007FB10 1400A0AF */   sw        $zero, 0x14($sp)
/* 4BA1044 8007FB14 21206002 */  addu       $a0, $s3, $zero
/* 4BA1048 8007FB18 7800A78F */  lw         $a3, 0x78($sp)
/* 4BA104C 8007FB1C 7C00A88F */  lw         $t0, 0x7C($sp)
/* 4BA1050 8007FB20 21280002 */  addu       $a1, $s0, $zero
/* 4BA1054 8007FB24 1000A8AF */  sw         $t0, 0x10($sp)
/* 4BA1058 8007FB28 8000A88F */  lw         $t0, 0x80($sp)
/* 4BA105C 8007FB2C 2130C002 */  addu       $a2, $s6, $zero
/* 4BA1060 8007FB30 B8D7000C */  jal        func_80035EE0
/* 4BA1064 8007FB34 1400A8AF */   sw        $t0, 0x14($sp)
/* 4BA1068 8007FB38 E0FE0108 */  j          .Llevel_16_8007FB80
/* 4BA106C 8007FB3C 00000000 */   nop
.Llevel_16_8007FB40:
/* 4BA1070 8007FB40 21206002 */  addu       $a0, $s3, $zero
/* 4BA1074 8007FB44 21280002 */  addu       $a1, $s0, $zero
/* 4BA1078 8007FB48 6800A68F */  lw         $a2, 0x68($sp)
/* 4BA107C 8007FB4C 6C00A78F */  lw         $a3, 0x6C($sp)
/* 4BA1080 8007FB50 01000224 */  addiu      $v0, $zero, 0x1
/* 4BA1084 8007FB54 1000A2AF */  sw         $v0, 0x10($sp)
/* 4BA1088 8007FB58 17D6000C */  jal        func_8003585C
/* 4BA108C 8007FB5C 1400A0AF */   sw        $zero, 0x14($sp)
/* 4BA1090 8007FB60 09004010 */  beqz       $v0, .Llevel_16_8007FB88
/* 4BA1094 8007FB64 21206002 */   addu      $a0, $s3, $zero
/* 4BA1098 8007FB68 8000A88F */  lw         $t0, 0x80($sp)
/* 4BA109C 8007FB6C 7800A68F */  lw         $a2, 0x78($sp)
/* 4BA10A0 8007FB70 7C00A78F */  lw         $a3, 0x7C($sp)
/* 4BA10A4 8007FB74 2128C002 */  addu       $a1, $s6, $zero
/* 4BA10A8 8007FB78 77D7000C */  jal        func_80035DDC
/* 4BA10AC 8007FB7C 1000A8AF */   sw        $t0, 0x10($sp)
.Llevel_16_8007FB80:
/* 4BA10B0 8007FB80 04004014 */  bnez       $v0, .Llevel_16_8007FB94
/* 4BA10B4 8007FB84 23100200 */   negu      $v0, $v0
.Llevel_16_8007FB88:
/* 4BA10B8 8007FB88 0200A106 */  bgez       $s5, .Llevel_16_8007FB94
/* 4BA10BC 8007FB8C 2110A002 */   addu      $v0, $s5, $zero
/* 4BA10C0 8007FB90 23100200 */  negu       $v0, $v0
.Llevel_16_8007FB94:
/* 4BA10C4 8007FB94 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 4BA10C8 8007FB98 4800BE8F */  lw         $fp, 0x48($sp)
/* 4BA10CC 8007FB9C 4400B78F */  lw         $s7, 0x44($sp)
/* 4BA10D0 8007FBA0 4000B68F */  lw         $s6, 0x40($sp)
/* 4BA10D4 8007FBA4 3C00B58F */  lw         $s5, 0x3C($sp)
/* 4BA10D8 8007FBA8 3800B48F */  lw         $s4, 0x38($sp)
/* 4BA10DC 8007FBAC 3400B38F */  lw         $s3, 0x34($sp)
/* 4BA10E0 8007FBB0 3000B28F */  lw         $s2, 0x30($sp)
/* 4BA10E4 8007FBB4 2C00B18F */  lw         $s1, 0x2C($sp)
/* 4BA10E8 8007FBB8 2800B08F */  lw         $s0, 0x28($sp)
/* 4BA10EC 8007FBBC 5000BD27 */  addiu      $sp, $sp, 0x50
/* 4BA10F0 8007FBC0 0800E003 */  jr         $ra
/* 4BA10F4 8007FBC4 00000000 */   nop
.size func_level_16_8007F8AC, . - func_level_16_8007F8AC
