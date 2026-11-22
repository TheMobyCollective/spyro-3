.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_131_level_42
/* 847F800 8007AAD0 80FFBD27 */  addiu      $sp, $sp, -0x80
/* 847F804 8007AAD4 7000B2AF */  sw         $s2, 0x70($sp)
/* 847F808 8007AAD8 21908000 */  addu       $s2, $a0, $zero
/* 847F80C 8007AADC 0300033C */  lui        $v1, (0x3D400 >> 16)
/* 847F810 8007AAE0 00D46334 */  ori        $v1, $v1, (0x3D400 & 0xFFFF)
/* 847F814 8007AAE4 7800BFAF */  sw         $ra, 0x78($sp)
/* 847F818 8007AAE8 7400B3AF */  sw         $s3, 0x74($sp)
/* 847F81C 8007AAEC 6C00B1AF */  sw         $s1, 0x6C($sp)
/* 847F820 8007AAF0 6800B0AF */  sw         $s0, 0x68($sp)
/* 847F824 8007AAF4 0C00458E */  lw         $a1, 0xC($s2)
/* 847F828 8007AAF8 0000538E */  lw         $s3, 0x0($s2)
/* 847F82C 8007AAFC 2A106500 */  slt        $v0, $v1, $a1
/* 847F830 8007AB00 77014014 */  bnez       $v0, .Llevel_42_8007B0E0
/* 847F834 8007AB04 00000000 */   nop
/* 847F838 8007AB08 1000448E */  lw         $a0, 0x10($s2)
/* 847F83C 8007AB0C 00000000 */  nop
/* 847F840 8007AB10 2A106400 */  slt        $v0, $v1, $a0
/* 847F844 8007AB14 72014014 */  bnez       $v0, .Llevel_42_8007B0E0
/* 847F848 8007AB18 0100023C */   lui       $v0, (0x1E000 >> 16)
/* 847F84C 8007AB1C 1400438E */  lw         $v1, 0x14($s2)
/* 847F850 8007AB20 00E04234 */  ori        $v0, $v0, (0x1E000 & 0xFFFF)
/* 847F854 8007AB24 2A104300 */  slt        $v0, $v0, $v1
/* 847F858 8007AB28 6D014014 */  bnez       $v0, .Llevel_42_8007B0E0
/* 847F85C 8007AB2C 0008A228 */   slti      $v0, $a1, 0x800
/* 847F860 8007AB30 6B014014 */  bnez       $v0, .Llevel_42_8007B0E0
/* 847F864 8007AB34 00088228 */   slti      $v0, $a0, 0x800
/* 847F868 8007AB38 69014014 */  bnez       $v0, .Llevel_42_8007B0E0
/* 847F86C 8007AB3C 00086228 */   slti      $v0, $v1, 0x800
/* 847F870 8007AB40 67014014 */  bnez       $v0, .Llevel_42_8007B0E0
/* 847F874 8007AB44 01000224 */   addiu     $v0, $zero, 0x1
/* 847F878 8007AB48 48004392 */  lbu        $v1, 0x48($s2)
/* 847F87C 8007AB4C 00000000 */  nop
/* 847F880 8007AB50 CD006210 */  beq        $v1, $v0, .Llevel_42_8007AE88
/* 847F884 8007AB54 02006228 */   slti      $v0, $v1, 0x2
/* 847F888 8007AB58 05004010 */  beqz       $v0, .Llevel_42_8007AB70
/* 847F88C 8007AB5C 00000000 */   nop
/* 847F890 8007AB60 0A006010 */  beqz       $v1, .Llevel_42_8007AB8C
/* 847F894 8007AB64 00000000 */   nop
/* 847F898 8007AB68 65EC0108 */  j          .Llevel_42_8007B194
/* 847F89C 8007AB6C 00000000 */   nop
.Llevel_42_8007AB70:
/* 847F8A0 8007AB70 02000224 */  addiu      $v0, $zero, 0x2
/* 847F8A4 8007AB74 55016210 */  beq        $v1, $v0, .Llevel_42_8007B0CC
/* 847F8A8 8007AB78 03000224 */   addiu     $v0, $zero, 0x3
/* 847F8AC 8007AB7C CD006210 */  beq        $v1, $v0, .Llevel_42_8007AEB4
/* 847F8B0 8007AB80 00000000 */   nop
/* 847F8B4 8007AB84 65EC0108 */  j          .Llevel_42_8007B194
/* 847F8B8 8007AB88 00000000 */   nop
.Llevel_42_8007AB8C:
/* 847F8BC 8007AB8C 49004292 */  lbu        $v0, 0x49($s2)
/* 847F8C0 8007AB90 00000000 */  nop
/* 847F8C4 8007AB94 08004014 */  bnez       $v0, .Llevel_42_8007ABB8
/* 847F8C8 8007AB98 10006426 */   addiu     $a0, $s3, 0x10
/* 847F8CC 8007AB9C 21204002 */  addu       $a0, $s2, $zero
/* 847F8D0 8007ABA0 21280000 */  addu       $a1, $zero, $zero
/* 847F8D4 8007ABA4 AFEE000C */  jal        func_8003BABC
/* 847F8D8 8007ABA8 21300000 */   addu      $a2, $zero, $zero
/* 847F8DC 8007ABAC 01000224 */  addiu      $v0, $zero, 0x1
/* 847F8E0 8007ABB0 490042A2 */  sb         $v0, 0x49($s2)
/* 847F8E4 8007ABB4 10006426 */  addiu      $a0, $s3, 0x10
.Llevel_42_8007ABB8:
/* 847F8E8 8007ABB8 2800B027 */  addiu      $s0, $sp, 0x28
/* 847F8EC 8007ABBC 21280002 */  addu       $a1, $s0, $zero
/* 847F8F0 8007ABC0 0E006286 */  lh         $v0, 0xE($s3)
/* 847F8F4 8007ABC4 21300000 */  addu       $a2, $zero, $zero
/* 847F8F8 8007ABC8 40180200 */  sll        $v1, $v0, 1
/* 847F8FC 8007ABCC 0E004224 */  addiu      $v0, $v0, 0xE
/* 847F900 8007ABD0 0680013C */  lui        $at, %hi(D_80065920)
/* 847F904 8007ABD4 21082300 */  addu       $at, $at, $v1
/* 847F908 8007ABD8 20592784 */  lh         $a3, %lo(D_80065920)($at)
/* 847F90C 8007ABDC 0680013C */  lui        $at, %hi(D_800658A0)
/* 847F910 8007ABE0 21082300 */  addu       $at, $at, $v1
/* 847F914 8007ABE4 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 847F918 8007ABE8 FF004230 */  andi       $v0, $v0, 0xFF
/* 847F91C 8007ABEC 0E0062A6 */  sh         $v0, 0xE($s3)
/* 847F920 8007ABF0 26020224 */  addiu      $v0, $zero, 0x226
/* 847F924 8007ABF4 000062AE */  sw         $v0, 0x0($s3)
/* 847F928 8007ABF8 00110700 */  sll        $v0, $a3, 4
/* 847F92C 8007ABFC 23104700 */  subu       $v0, $v0, $a3
/* 847F930 8007AC00 C3120200 */  sra        $v0, $v0, 11
/* 847F934 8007AC04 040062AE */  sw         $v0, 0x4($s3)
/* 847F938 8007AC08 00110300 */  sll        $v0, $v1, 4
/* 847F93C 8007AC0C 23104300 */  subu       $v0, $v0, $v1
/* 847F940 8007AC10 C3120200 */  sra        $v0, $v0, 11
/* 847F944 8007AC14 A43A010C */  jal        func_8004EA90
/* 847F948 8007AC18 080062AE */   sw        $v0, 0x8($s3)
/* 847F94C 8007AC1C 21200002 */  addu       $a0, $s0, $zero
/* 847F950 8007AC20 21286002 */  addu       $a1, $s3, $zero
/* 847F954 8007AC24 5B3B010C */  jal        func_8004ED6C
/* 847F958 8007AC28 21306002 */   addu      $a2, $s3, $zero
/* 847F95C 8007AC2C 1800A427 */  addiu      $a0, $sp, 0x18
/* 847F960 8007AC30 0C005026 */  addiu      $s0, $s2, 0xC
/* 847F964 8007AC34 5E3C010C */  jal        func_8004F178
/* 847F968 8007AC38 21280002 */   addu      $a1, $s0, $zero
/* 847F96C 8007AC3C 21200002 */  addu       $a0, $s0, $zero
/* 847F970 8007AC40 21280002 */  addu       $a1, $s0, $zero
/* 847F974 8007AC44 653C010C */  jal        func_8004F194
/* 847F978 8007AC48 21306002 */   addu      $a2, $s3, $zero
/* 847F97C 8007AC4C 1800A427 */  addiu      $a0, $sp, 0x18
/* 847F980 8007AC50 21280002 */  addu       $a1, $s0, $zero
/* 847F984 8007AC54 02000624 */  addiu      $a2, $zero, 0x2
/* 847F988 8007AC58 21380000 */  addu       $a3, $zero, $zero
/* 847F98C 8007AC5C 0780113C */  lui        $s1, %hi(D_80071934)
/* 847F990 8007AC60 34193126 */  addiu      $s1, $s1, %lo(D_80071934)
/* 847F994 8007AC64 000020AE */  sw         $zero, 0x0($s1)
/* 847F998 8007AC68 C360000C */  jal        func_8001830C
/* 847F99C 8007AC6C 1000A0AF */   sw        $zero, 0x10($sp)
/* 847F9A0 8007AC70 02004010 */  beqz       $v0, .Llevel_42_8007AC7C
/* 847F9A4 8007AC74 01000224 */   addiu     $v0, $zero, 0x1
/* 847F9A8 8007AC78 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_42_8007AC7C:
/* 847F9AC 8007AC7C 0000228E */  lw         $v0, 0x0($s1)
/* 847F9B0 8007AC80 00000000 */  nop
/* 847F9B4 8007AC84 02004010 */  beqz       $v0, .Llevel_42_8007AC90
/* 847F9B8 8007AC88 01000224 */   addiu     $v0, $zero, 0x1
/* 847F9BC 8007AC8C 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_42_8007AC90:
/* 847F9C0 8007AC90 21200002 */  addu       $a0, $s0, $zero
/* 847F9C4 8007AC94 2C010524 */  addiu      $a1, $zero, 0x12C
/* 847F9C8 8007AC98 21300000 */  addu       $a2, $zero, $zero
/* 847F9CC 8007AC9C 21380000 */  addu       $a3, $zero, $zero
/* 847F9D0 8007ACA0 9400023C */  lui        $v0, (0x940000 >> 16)
/* 847F9D4 8007ACA4 1000A2AF */  sw         $v0, 0x10($sp)
/* 847F9D8 8007ACA8 8C6E000C */  jal        func_8001BA30
/* 847F9DC 8007ACAC 1400B2AF */   sw        $s2, 0x14($sp)
/* 847F9E0 8007ACB0 21804000 */  addu       $s0, $v0, $zero
/* 847F9E4 8007ACB4 0C000012 */  beqz       $s0, .Llevel_42_8007ACE8
/* 847F9E8 8007ACB8 00000000 */   nop
/* 847F9EC 8007ACBC 0000648E */  lw         $a0, 0x0($s3)
/* 847F9F0 8007ACC0 0400658E */  lw         $a1, 0x4($s3)
/* 847F9F4 8007ACC4 203A010C */  jal        func_8004E880
/* 847F9F8 8007ACC8 21300000 */   addu      $a2, $zero, $zero
/* 847F9FC 8007ACCC 510002A2 */  sb         $v0, 0x51($s0)
/* 847FA00 8007ACD0 FF004230 */  andi       $v0, $v0, 0xFF
/* 847FA04 8007ACD4 03004014 */  bnez       $v0, .Llevel_42_8007ACE4
/* 847FA08 8007ACD8 01000224 */   addiu     $v0, $zero, 0x1
/* 847FA0C 8007ACDC 510002A2 */  sb         $v0, 0x51($s0)
/* 847FA10 8007ACE0 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_42_8007ACE4:
/* 847FA14 8007ACE4 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_42_8007ACE8:
/* 847FA18 8007ACE8 0C005026 */  addiu      $s0, $s2, 0xC
/* 847FA1C 8007ACEC 21200002 */  addu       $a0, $s0, $zero
/* 847FA20 8007ACF0 90010524 */  addiu      $a1, $zero, 0x190
/* 847FA24 8007ACF4 02000624 */  addiu      $a2, $zero, 0x2
/* 847FA28 8007ACF8 21380000 */  addu       $a3, $zero, $zero
/* 847FA2C 8007ACFC 9500023C */  lui        $v0, (0x950000 >> 16)
/* 847FA30 8007AD00 1000A2AF */  sw         $v0, 0x10($sp)
/* 847FA34 8007AD04 4E64000C */  jal        func_80019138
/* 847FA38 8007AD08 1400B2AF */   sw        $s2, 0x14($sp)
/* 847FA3C 8007AD0C 1800A427 */  addiu      $a0, $sp, 0x18
/* 847FA40 8007AD10 21280002 */  addu       $a1, $s0, $zero
/* 847FA44 8007AD14 0780113C */  lui        $s1, %hi(D_80071934)
/* 847FA48 8007AD18 34193126 */  addiu      $s1, $s1, %lo(D_80071934)
/* 847FA4C 8007AD1C 5E3C010C */  jal        func_8004F178
/* 847FA50 8007AD20 000020AE */   sw        $zero, 0x0($s1)
/* 847FA54 8007AD24 21200002 */  addu       $a0, $s0, $zero
/* 847FA58 8007AD28 1800A527 */  addiu      $a1, $sp, 0x18
/* 847FA5C 8007AD2C 02000624 */  addiu      $a2, $zero, 0x2
/* 847FA60 8007AD30 2000A28F */  lw         $v0, 0x20($sp)
/* 847FA64 8007AD34 21380000 */  addu       $a3, $zero, $zero
/* 847FA68 8007AD38 00FC4224 */  addiu      $v0, $v0, -0x400
/* 847FA6C 8007AD3C 2000A2AF */  sw         $v0, 0x20($sp)
/* 847FA70 8007AD40 C360000C */  jal        func_8001830C
/* 847FA74 8007AD44 1000A0AF */   sw        $zero, 0x10($sp)
/* 847FA78 8007AD48 0000228E */  lw         $v0, 0x0($s1)
/* 847FA7C 8007AD4C 00000000 */  nop
/* 847FA80 8007AD50 02004010 */  beqz       $v0, .Llevel_42_8007AD5C
/* 847FA84 8007AD54 01000224 */   addiu     $v0, $zero, 0x1
/* 847FA88 8007AD58 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_42_8007AD5C:
/* 847FA8C 8007AD5C 5555023C */  lui        $v0, (0x55555556 >> 16)
/* 847FA90 8007AD60 0780043C */  lui        $a0, %hi(D_8006C640)
/* 847FA94 8007AD64 40C6848C */  lw         $a0, %lo(D_8006C640)($a0)
/* 847FA98 8007AD68 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
/* 847FA9C 8007AD6C 18008200 */  mult       $a0, $v0
/* 847FAA0 8007AD70 C31F0400 */  sra        $v1, $a0, 31
/* 847FAA4 8007AD74 10480000 */  mfhi       $t1
/* 847FAA8 8007AD78 23182301 */  subu       $v1, $t1, $v1
/* 847FAAC 8007AD7C 40100300 */  sll        $v0, $v1, 1
/* 847FAB0 8007AD80 21104300 */  addu       $v0, $v0, $v1
/* 847FAB4 8007AD84 36008214 */  bne        $a0, $v0, .Llevel_42_8007AE60
/* 847FAB8 8007AD88 00000000 */   nop
/* 847FABC 8007AD8C 0780023C */  lui        $v0, %hi(D_8006C578)
/* 847FAC0 8007AD90 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 847FAC4 8007AD94 0780033C */  lui        $v1, %hi(D_8006C574)
/* 847FAC8 8007AD98 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 847FACC 8007AD9C 00000000 */  nop
/* 847FAD0 8007ADA0 23104300 */  subu       $v0, $v0, $v1
/* 847FAD4 8007ADA4 15004228 */  slti       $v0, $v0, 0x15
/* 847FAD8 8007ADA8 2D004014 */  bnez       $v0, .Llevel_42_8007AE60
/* 847FADC 8007ADAC 00000000 */   nop
/* 847FAE0 8007ADB0 36004486 */  lh         $a0, 0x36($s2)
/* 847FAE4 8007ADB4 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 847FAE8 8007ADB8 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 847FAEC 8007ADBC 00000000 */  nop
/* 847FAF0 8007ADC0 09F84000 */  jalr       $v0
/* 847FAF4 8007ADC4 21284002 */   addu      $a1, $s2, $zero
/* 847FAF8 8007ADC8 21804000 */  addu       $s0, $v0, $zero
/* 847FAFC 8007ADCC 24000012 */  beqz       $s0, .Llevel_42_8007AE60
/* 847FB00 8007ADD0 21206002 */   addu      $a0, $s3, $zero
/* 847FB04 8007ADD4 7A3B010C */  jal        func_8004EDE8
/* 847FB08 8007ADD8 21280000 */   addu      $a1, $zero, $zero
/* 847FB0C 8007ADDC 21204000 */  addu       $a0, $v0, $zero
/* 847FB10 8007ADE0 0800658E */  lw         $a1, 0x8($s3)
/* 847FB14 8007ADE4 203A010C */  jal        func_8004E880
/* 847FB18 8007ADE8 21300000 */   addu      $a2, $zero, $zero
/* 847FB1C 8007ADEC 450002A2 */  sb         $v0, 0x45($s0)
/* 847FB20 8007ADF0 0000648E */  lw         $a0, 0x0($s3)
/* 847FB24 8007ADF4 0400658E */  lw         $a1, 0x4($s3)
/* 847FB28 8007ADF8 203A010C */  jal        func_8004E880
/* 847FB2C 8007ADFC 21300000 */   addu      $a2, $zero, $zero
/* 847FB30 8007AE00 460002A2 */  sb         $v0, 0x46($s0)
/* 847FB34 8007AE04 36000286 */  lh         $v0, 0x36($s0)
/* 847FB38 8007AE08 01000324 */  addiu      $v1, $zero, 0x1
/* 847FB3C 8007AE0C 480003A2 */  sb         $v1, 0x48($s0)
/* 847FB40 8007AE10 420000A2 */  sb         $zero, 0x42($s0)
/* 847FB44 8007AE14 80100200 */  sll        $v0, $v0, 2
/* 847FB48 8007AE18 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 847FB4C 8007AE1C 21082200 */  addu       $at, $at, $v0
/* 847FB50 8007AE20 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 847FB54 8007AE24 00000000 */  nop
/* 847FB58 8007AE28 4000428C */  lw         $v0, 0x40($v0)
/* 847FB5C 8007AE2C 00000000 */  nop
/* 847FB60 8007AE30 00004290 */  lbu        $v0, 0x0($v0)
/* 847FB64 8007AE34 3C0003A2 */  sb         $v1, 0x3C($s0)
/* 847FB68 8007AE38 3D0003A2 */  sb         $v1, 0x3D($s0)
/* 847FB6C 8007AE3C 3F0003A2 */  sb         $v1, 0x3F($s0)
/* 847FB70 8007AE40 02000324 */  addiu      $v1, $zero, 0x2
/* 847FB74 8007AE44 3E0000A2 */  sb         $zero, 0x3E($s0)
/* 847FB78 8007AE48 480003A2 */  sb         $v1, 0x48($s0)
/* 847FB7C 8007AE4C 0200422C */  sltiu      $v0, $v0, 0x2
/* 847FB80 8007AE50 01004238 */  xori       $v0, $v0, 0x1
/* 847FB84 8007AE54 23100200 */  negu       $v0, $v0
/* 847FB88 8007AE58 30004230 */  andi       $v0, $v0, 0x30
/* 847FB8C 8007AE5C 400002A2 */  sb         $v0, 0x40($s0)
.Llevel_42_8007AE60:
/* 847FB90 8007AE60 48004292 */  lbu        $v0, 0x48($s2)
/* 847FB94 8007AE64 00000000 */  nop
/* 847FB98 8007AE68 CA004014 */  bnez       $v0, .Llevel_42_8007B194
/* 847FB9C 8007AE6C 0C006426 */   addiu     $a0, $s3, 0xC
/* 847FBA0 8007AE70 69D6000C */  jal        func_800359A4
/* 847FBA4 8007AE74 02000524 */   addiu     $a1, $zero, 0x2
/* 847FBA8 8007AE78 C6004010 */  beqz       $v0, .Llevel_42_8007B194
/* 847FBAC 8007AE7C 00000000 */   nop
/* 847FBB0 8007AE80 38EC0108 */  j          .Llevel_42_8007B0E0
/* 847FBB4 8007AE84 00000000 */   nop
.Llevel_42_8007AE88:
/* 847FBB8 8007AE88 21204002 */  addu       $a0, $s2, $zero
/* 847FBBC 8007AE8C 01000524 */  addiu      $a1, $zero, 0x1
/* 847FBC0 8007AE90 AFEE000C */  jal        func_8003BABC
/* 847FBC4 8007AE94 21300000 */   addu      $a2, $zero, $zero
/* 847FBC8 8007AE98 28000224 */  addiu      $v0, $zero, 0x28
/* 847FBCC 8007AE9C 410040A2 */  sb         $zero, 0x41($s2)
/* 847FBD0 8007AEA0 4C0040A2 */  sb         $zero, 0x4C($s2)
/* 847FBD4 8007AEA4 4D0040A2 */  sb         $zero, 0x4D($s2)
/* 847FBD8 8007AEA8 0C0062A6 */  sh         $v0, 0xC($s3)
/* 847FBDC 8007AEAC 03000224 */  addiu      $v0, $zero, 0x3
/* 847FBE0 8007AEB0 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_42_8007AEB4:
/* 847FBE4 8007AEB4 0C006286 */  lh         $v0, 0xC($s3)
/* 847FBE8 8007AEB8 00000000 */  nop
/* 847FBEC 8007AEBC 0B004228 */  slti       $v0, $v0, 0xB
/* 847FBF0 8007AEC0 4D004014 */  bnez       $v0, .Llevel_42_8007AFF8
/* 847FBF4 8007AEC4 13006426 */   addiu     $a0, $s3, 0x13
/* 847FBF8 8007AEC8 21800000 */  addu       $s0, $zero, $zero
/* 847FBFC 8007AECC 4000B127 */  addiu      $s1, $sp, 0x40
/* 847FC00 8007AED0 21200000 */  addu       $a0, $zero, $zero
.Llevel_42_8007AED4:
/* 847FC04 8007AED4 F7D8000C */  jal        func_800363DC
/* 847FC08 8007AED8 96000524 */   addiu     $a1, $zero, 0x96
/* 847FC0C 8007AEDC 21200000 */  addu       $a0, $zero, $zero
/* 847FC10 8007AEE0 96000524 */  addiu      $a1, $zero, 0x96
/* 847FC14 8007AEE4 F7D8000C */  jal        func_800363DC
/* 847FC18 8007AEE8 5000A2AF */   sw        $v0, 0x50($sp)
/* 847FC1C 8007AEEC CEFF0424 */  addiu      $a0, $zero, -0x32
/* 847FC20 8007AEF0 50000524 */  addiu      $a1, $zero, 0x50
/* 847FC24 8007AEF4 DBD8000C */  jal        func_8003636C
/* 847FC28 8007AEF8 5400A2AF */   sw        $v0, 0x54($sp)
/* 847FC2C 8007AEFC 21202002 */  addu       $a0, $s1, $zero
/* 847FC30 8007AF00 0C004526 */  addiu      $a1, $s2, 0xC
/* 847FC34 8007AF04 5E3C010C */  jal        func_8004F178
/* 847FC38 8007AF08 5800A2AF */   sw        $v0, 0x58($sp)
/* 847FC3C 8007AF0C 21200000 */  addu       $a0, $zero, $zero
/* 847FC40 8007AF10 F7D8000C */  jal        func_800363DC
/* 847FC44 8007AF14 64000524 */   addiu     $a1, $zero, 0x64
/* 847FC48 8007AF18 21200000 */  addu       $a0, $zero, $zero
/* 847FC4C 8007AF1C 64000524 */  addiu      $a1, $zero, 0x64
/* 847FC50 8007AF20 4000A38F */  lw         $v1, 0x40($sp)
/* 847FC54 8007AF24 01001026 */  addiu      $s0, $s0, 0x1
/* 847FC58 8007AF28 21186200 */  addu       $v1, $v1, $v0
/* 847FC5C 8007AF2C F7D8000C */  jal        func_800363DC
/* 847FC60 8007AF30 4000A3AF */   sw        $v1, 0x40($sp)
/* 847FC64 8007AF34 21200000 */  addu       $a0, $zero, $zero
/* 847FC68 8007AF38 4400A38F */  lw         $v1, 0x44($sp)
/* 847FC6C 8007AF3C 64000524 */  addiu      $a1, $zero, 0x64
/* 847FC70 8007AF40 21186200 */  addu       $v1, $v1, $v0
/* 847FC74 8007AF44 F7D8000C */  jal        func_800363DC
/* 847FC78 8007AF48 4400A3AF */   sw        $v1, 0x44($sp)
/* 847FC7C 8007AF4C 01000424 */  addiu      $a0, $zero, 0x1
/* 847FC80 8007AF50 27000524 */  addiu      $a1, $zero, 0x27
/* 847FC84 8007AF54 21302002 */  addu       $a2, $s1, $zero
/* 847FC88 8007AF58 5000A727 */  addiu      $a3, $sp, 0x50
/* 847FC8C 8007AF5C 4800A38F */  lw         $v1, 0x48($sp)
/* 847FC90 8007AF60 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 847FC94 8007AF64 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 847FC98 8007AF68 21186200 */  addu       $v1, $v1, $v0
/* 847FC9C 8007AF6C 09F80001 */  jalr       $t0
/* 847FCA0 8007AF70 4800A3AF */   sw        $v1, 0x48($sp)
/* 847FCA4 8007AF74 0400022A */  slti       $v0, $s0, 0x4
/* 847FCA8 8007AF78 D6FF4014 */  bnez       $v0, .Llevel_42_8007AED4
/* 847FCAC 8007AF7C 21200000 */   addu      $a0, $zero, $zero
/* 847FCB0 8007AF80 0C006286 */  lh         $v0, 0xC($s3)
/* 847FCB4 8007AF84 00000000 */  nop
/* 847FCB8 8007AF88 0B004228 */  slti       $v0, $v0, 0xB
/* 847FCBC 8007AF8C 1A004014 */  bnez       $v0, .Llevel_42_8007AFF8
/* 847FCC0 8007AF90 13006426 */   addiu     $a0, $s3, 0x13
/* 847FCC4 8007AF94 0780023C */  lui        $v0, %hi(D_8006C578)
/* 847FCC8 8007AF98 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 847FCCC 8007AF9C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 847FCD0 8007AFA0 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 847FCD4 8007AFA4 00000000 */  nop
/* 847FCD8 8007AFA8 23104300 */  subu       $v0, $v0, $v1
/* 847FCDC 8007AFAC 15004228 */  slti       $v0, $v0, 0x15
/* 847FCE0 8007AFB0 11004014 */  bnez       $v0, .Llevel_42_8007AFF8
/* 847FCE4 8007AFB4 00000000 */   nop
/* 847FCE8 8007AFB8 1D020424 */  addiu      $a0, $zero, 0x21D
/* 847FCEC 8007AFBC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 847FCF0 8007AFC0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 847FCF4 8007AFC4 00000000 */  nop
/* 847FCF8 8007AFC8 09F84000 */  jalr       $v0
/* 847FCFC 8007AFCC 21284002 */   addu      $a1, $s2, $zero
/* 847FD00 8007AFD0 21184000 */  addu       $v1, $v0, $zero
/* 847FD04 8007AFD4 07006010 */  beqz       $v1, .Llevel_42_8007AFF4
/* 847FD08 8007AFD8 08000224 */   addiu     $v0, $zero, 0x8
/* 847FD0C 8007AFDC 470062A0 */  sb         $v0, 0x47($v1)
/* 847FD10 8007AFE0 30000224 */  addiu      $v0, $zero, 0x30
/* 847FD14 8007AFE4 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 847FD18 8007AFE8 4E0062A0 */  sb         $v0, 0x4E($v1)
/* 847FD1C 8007AFEC 7F000224 */  addiu      $v0, $zero, 0x7F
/* 847FD20 8007AFF0 4F0062A0 */  sb         $v0, 0x4F($v1)
.Llevel_42_8007AFF4:
/* 847FD24 8007AFF4 13006426 */  addiu      $a0, $s3, 0x13
.Llevel_42_8007AFF8:
/* 847FD28 8007AFF8 69D6000C */  jal        func_800359A4
/* 847FD2C 8007AFFC 01000524 */   addiu     $a1, $zero, 0x1
/* 847FD30 8007B000 1A004010 */  beqz       $v0, .Llevel_42_8007B06C
/* 847FD34 8007B004 00000000 */   nop
/* 847FD38 8007B008 0780023C */  lui        $v0, %hi(D_8006C578)
/* 847FD3C 8007B00C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 847FD40 8007B010 0780033C */  lui        $v1, %hi(D_8006C574)
/* 847FD44 8007B014 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 847FD48 8007B018 00000000 */  nop
/* 847FD4C 8007B01C 23104300 */  subu       $v0, $v0, $v1
/* 847FD50 8007B020 15004228 */  slti       $v0, $v0, 0x15
/* 847FD54 8007B024 11004014 */  bnez       $v0, .Llevel_42_8007B06C
/* 847FD58 8007B028 E2010424 */   addiu     $a0, $zero, 0x1E2
/* 847FD5C 8007B02C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 847FD60 8007B030 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 847FD64 8007B034 00000000 */  nop
/* 847FD68 8007B038 09F84000 */  jalr       $v0
/* 847FD6C 8007B03C 21284002 */   addu      $a1, $s2, $zero
/* 847FD70 8007B040 21184000 */  addu       $v1, $v0, $zero
/* 847FD74 8007B044 05006010 */  beqz       $v1, .Llevel_42_8007B05C
/* 847FD78 8007B048 08000224 */   addiu     $v0, $zero, 0x8
/* 847FD7C 8007B04C 470062A0 */  sb         $v0, 0x47($v1)
/* 847FD80 8007B050 20000224 */  addiu      $v0, $zero, 0x20
/* 847FD84 8007B054 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 847FD88 8007B058 4E0062A0 */  sb         $v0, 0x4E($v1)
.Llevel_42_8007B05C:
/* 847FD8C 8007B05C 02000424 */  addiu      $a0, $zero, 0x2
/* 847FD90 8007B060 DBD8000C */  jal        func_8003636C
/* 847FD94 8007B064 04000524 */   addiu     $a1, $zero, 0x4
/* 847FD98 8007B068 130062A2 */  sb         $v0, 0x13($s3)
.Llevel_42_8007B06C:
/* 847FD9C 8007B06C 0C005026 */  addiu      $s0, $s2, 0xC
/* 847FDA0 8007B070 21200002 */  addu       $a0, $s0, $zero
/* 847FDA4 8007B074 D0070524 */  addiu      $a1, $zero, 0x7D0
/* 847FDA8 8007B078 21300000 */  addu       $a2, $zero, $zero
/* 847FDAC 8007B07C 21380000 */  addu       $a3, $zero, $zero
/* 847FDB0 8007B080 9400023C */  lui        $v0, (0x940000 >> 16)
/* 847FDB4 8007B084 1000A2AF */  sw         $v0, 0x10($sp)
/* 847FDB8 8007B088 8C6E000C */  jal        func_8001BA30
/* 847FDBC 8007B08C 1400B2AF */   sw        $s2, 0x14($sp)
/* 847FDC0 8007B090 21200002 */  addu       $a0, $s0, $zero
/* 847FDC4 8007B094 D0070524 */  addiu      $a1, $zero, 0x7D0
/* 847FDC8 8007B098 02000624 */  addiu      $a2, $zero, 0x2
/* 847FDCC 8007B09C 21380000 */  addu       $a3, $zero, $zero
/* 847FDD0 8007B0A0 9500023C */  lui        $v0, (0x950000 >> 16)
/* 847FDD4 8007B0A4 1000A2AF */  sw         $v0, 0x10($sp)
/* 847FDD8 8007B0A8 4E64000C */  jal        func_80019138
/* 847FDDC 8007B0AC 1400B2AF */   sw        $s2, 0x14($sp)
/* 847FDE0 8007B0B0 0C006426 */  addiu      $a0, $s3, 0xC
/* 847FDE4 8007B0B4 69D6000C */  jal        func_800359A4
/* 847FDE8 8007B0B8 02000524 */   addiu     $a1, $zero, 0x2
/* 847FDEC 8007B0BC 35004010 */  beqz       $v0, .Llevel_42_8007B194
/* 847FDF0 8007B0C0 00000000 */   nop
/* 847FDF4 8007B0C4 38EC0108 */  j          .Llevel_42_8007B0E0
/* 847FDF8 8007B0C8 00000000 */   nop
.Llevel_42_8007B0CC:
/* 847FDFC 8007B0CC 0C006426 */  addiu      $a0, $s3, 0xC
/* 847FE00 8007B0D0 69D6000C */  jal        func_800359A4
/* 847FE04 8007B0D4 02000524 */   addiu     $a1, $zero, 0x2
/* 847FE08 8007B0D8 05004010 */  beqz       $v0, .Llevel_42_8007B0F0
/* 847FE0C 8007B0DC 00000000 */   nop
.Llevel_42_8007B0E0:
/* 847FE10 8007B0E0 C656010C */  jal        func_80055B18
/* 847FE14 8007B0E4 21204002 */   addu      $a0, $s2, $zero
/* 847FE18 8007B0E8 65EC0108 */  j          .Llevel_42_8007B194
/* 847FE1C 8007B0EC 00000000 */   nop
.Llevel_42_8007B0F0:
/* 847FE20 8007B0F0 0C006386 */  lh         $v1, 0xC($s3)
/* 847FE24 8007B0F4 00000000 */  nop
/* 847FE28 8007B0F8 80100300 */  sll        $v0, $v1, 2
/* 847FE2C 8007B0FC 21104300 */  addu       $v0, $v0, $v1
/* 847FE30 8007B100 80100200 */  sll        $v0, $v0, 2
/* 847FE34 8007B104 00040324 */  addiu      $v1, $zero, 0x400
/* 847FE38 8007B108 23186200 */  subu       $v1, $v1, $v0
/* 847FE3C 8007B10C 00400224 */  addiu      $v0, $zero, 0x4000
/* 847FE40 8007B110 1A004300 */  div        $zero, $v0, $v1
/* 847FE44 8007B114 02006014 */  bnez       $v1, .Llevel_42_8007B120
/* 847FE48 8007B118 00000000 */   nop
/* 847FE4C 8007B11C 0D000700 */  break      7
.Llevel_42_8007B120:
/* 847FE50 8007B120 FFFF0124 */  addiu      $at, $zero, -0x1
/* 847FE54 8007B124 04006114 */  bne        $v1, $at, .Llevel_42_8007B138
/* 847FE58 8007B128 0080013C */   lui       $at, (0x80000000 >> 16)
/* 847FE5C 8007B12C 02004114 */  bne        $v0, $at, .Llevel_42_8007B138
/* 847FE60 8007B130 00000000 */   nop
/* 847FE64 8007B134 0D000600 */  break      6
.Llevel_42_8007B138:
/* 847FE68 8007B138 12100000 */  mflo       $v0
/* 847FE6C 8007B13C 00000000 */  nop
/* 847FE70 8007B140 4F0042A2 */  sb         $v0, 0x4F($s2)
/* 847FE74 8007B144 FF004230 */  andi       $v0, $v0, 0xFF
/* 847FE78 8007B148 8000422C */  sltiu      $v0, $v0, 0x80
/* 847FE7C 8007B14C 02004014 */  bnez       $v0, .Llevel_42_8007B158
/* 847FE80 8007B150 7F000224 */   addiu     $v0, $zero, 0x7F
/* 847FE84 8007B154 4F0042A2 */  sb         $v0, 0x4F($s2)
.Llevel_42_8007B158:
/* 847FE88 8007B158 4F004292 */  lbu        $v0, 0x4F($s2)
/* 847FE8C 8007B15C 00000000 */  nop
/* 847FE90 8007B160 1200422C */  sltiu      $v0, $v0, 0x12
/* 847FE94 8007B164 02004010 */  beqz       $v0, .Llevel_42_8007B170
/* 847FE98 8007B168 12000224 */   addiu     $v0, $zero, 0x12
/* 847FE9C 8007B16C 4F0042A2 */  sb         $v0, 0x4F($s2)
.Llevel_42_8007B170:
/* 847FEA0 8007B170 0C006296 */  lhu        $v0, 0xC($s3)
/* 847FEA4 8007B174 00000000 */  nop
/* 847FEA8 8007B178 540042A2 */  sb         $v0, 0x54($s2)
/* 847FEAC 8007B17C 0C006296 */  lhu        $v0, 0xC($s3)
/* 847FEB0 8007B180 00000000 */  nop
/* 847FEB4 8007B184 550042A2 */  sb         $v0, 0x55($s2)
/* 847FEB8 8007B188 0C006296 */  lhu        $v0, 0xC($s3)
/* 847FEBC 8007B18C 00000000 */  nop
/* 847FEC0 8007B190 560042A2 */  sb         $v0, 0x56($s2)
.Llevel_42_8007B194:
/* 847FEC4 8007B194 7800BF8F */  lw         $ra, 0x78($sp)
/* 847FEC8 8007B198 7400B38F */  lw         $s3, 0x74($sp)
/* 847FECC 8007B19C 7000B28F */  lw         $s2, 0x70($sp)
/* 847FED0 8007B1A0 6C00B18F */  lw         $s1, 0x6C($sp)
/* 847FED4 8007B1A4 6800B08F */  lw         $s0, 0x68($sp)
/* 847FED8 8007B1A8 8000BD27 */  addiu      $sp, $sp, 0x80
/* 847FEDC 8007B1AC 0800E003 */  jr         $ra
/* 847FEE0 8007B1B0 00000000 */   nop
.size MobyUpdate_131_level_42, . - MobyUpdate_131_level_42
