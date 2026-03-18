.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_46_8008A9C8
/* 8F5CEF8 8008A9C8 78FFBD27 */  addiu      $sp, $sp, -0x88
/* 8F5CEFC 8008A9CC 7400B5AF */  sw         $s5, 0x74($sp)
/* 8F5CF00 8008A9D0 21A88000 */  addu       $s5, $a0, $zero
/* 8F5CF04 8008A9D4 6800B2AF */  sw         $s2, 0x68($sp)
/* 8F5CF08 8008A9D8 2190C000 */  addu       $s2, $a2, $zero
/* 8F5CF0C 8008A9DC 1000A427 */  addiu      $a0, $sp, 0x10
/* 8F5CF10 8008A9E0 8400BFAF */  sw         $ra, 0x84($sp)
/* 8F5CF14 8008A9E4 8000BEAF */  sw         $fp, 0x80($sp)
/* 8F5CF18 8008A9E8 7C00B7AF */  sw         $s7, 0x7C($sp)
/* 8F5CF1C 8008A9EC 7800B6AF */  sw         $s6, 0x78($sp)
/* 8F5CF20 8008A9F0 7000B4AF */  sw         $s4, 0x70($sp)
/* 8F5CF24 8008A9F4 6C00B3AF */  sw         $s3, 0x6C($sp)
/* 8F5CF28 8008A9F8 6400B1AF */  sw         $s1, 0x64($sp)
/* 8F5CF2C 8008A9FC 6000B0AF */  sw         $s0, 0x60($sp)
/* 8F5CF30 8008AA00 4000A5AF */  sw         $a1, 0x40($sp)
/* 8F5CF34 8008AA04 5A3C010C */  jal        func_8004F168
/* 8F5CF38 8008AA08 4800A7AF */   sw        $a3, 0x48($sp)
/* 8F5CF3C 8008AA0C 0A00A01A */  blez       $s5, .Llevel_46_8008AA38
/* 8F5CF40 8008AA10 21980000 */   addu      $s3, $zero, $zero
/* 8F5CF44 8008AA14 4800B08F */  lw         $s0, 0x48($sp)
.Llevel_46_8008AA18:
/* 8F5CF48 8008AA18 1000A427 */  addiu      $a0, $sp, 0x10
/* 8F5CF4C 8008AA1C 21288000 */  addu       $a1, $a0, $zero
/* 8F5CF50 8008AA20 653C010C */  jal        func_8004F194
/* 8F5CF54 8008AA24 21300002 */   addu      $a2, $s0, $zero
/* 8F5CF58 8008AA28 01007326 */  addiu      $s3, $s3, 0x1
/* 8F5CF5C 8008AA2C 2A107502 */  slt        $v0, $s3, $s5
/* 8F5CF60 8008AA30 F9FF4014 */  bnez       $v0, .Llevel_46_8008AA18
/* 8F5CF64 8008AA34 0C001026 */   addiu     $s0, $s0, 0xC
.Llevel_46_8008AA38:
/* 8F5CF68 8008AA38 1000A68F */  lw         $a2, 0x10($sp)
/* 8F5CF6C 8008AA3C 00000000 */  nop
/* 8F5CF70 8008AA40 1A00D500 */  div        $zero, $a2, $s5
/* 8F5CF74 8008AA44 0200A016 */  bnez       $s5, .Llevel_46_8008AA50
/* 8F5CF78 8008AA48 00000000 */   nop
/* 8F5CF7C 8008AA4C 0D000700 */  break      7
.Llevel_46_8008AA50:
/* 8F5CF80 8008AA50 FFFF0124 */  addiu      $at, $zero, -0x1
/* 8F5CF84 8008AA54 0400A116 */  bne        $s5, $at, .Llevel_46_8008AA68
/* 8F5CF88 8008AA58 0080013C */   lui       $at, (0x80000000 >> 16)
/* 8F5CF8C 8008AA5C 0200C114 */  bne        $a2, $at, .Llevel_46_8008AA68
/* 8F5CF90 8008AA60 00000000 */   nop
/* 8F5CF94 8008AA64 0D000600 */  break      6
.Llevel_46_8008AA68:
/* 8F5CF98 8008AA68 12300000 */  mflo       $a2
/* 8F5CF9C 8008AA6C 1400A38F */  lw         $v1, 0x14($sp)
/* 8F5CFA0 8008AA70 00000000 */  nop
/* 8F5CFA4 8008AA74 1A007500 */  div        $zero, $v1, $s5
/* 8F5CFA8 8008AA78 0200A016 */  bnez       $s5, .Llevel_46_8008AA84
/* 8F5CFAC 8008AA7C 00000000 */   nop
/* 8F5CFB0 8008AA80 0D000700 */  break      7
.Llevel_46_8008AA84:
/* 8F5CFB4 8008AA84 FFFF0124 */  addiu      $at, $zero, -0x1
/* 8F5CFB8 8008AA88 0400A116 */  bne        $s5, $at, .Llevel_46_8008AA9C
/* 8F5CFBC 8008AA8C 0080013C */   lui       $at, (0x80000000 >> 16)
/* 8F5CFC0 8008AA90 02006114 */  bne        $v1, $at, .Llevel_46_8008AA9C
/* 8F5CFC4 8008AA94 00000000 */   nop
/* 8F5CFC8 8008AA98 0D000600 */  break      6
.Llevel_46_8008AA9C:
/* 8F5CFCC 8008AA9C 12180000 */  mflo       $v1
/* 8F5CFD0 8008AAA0 1800A28F */  lw         $v0, 0x18($sp)
/* 8F5CFD4 8008AAA4 00000000 */  nop
/* 8F5CFD8 8008AAA8 1A005500 */  div        $zero, $v0, $s5
/* 8F5CFDC 8008AAAC 0200A016 */  bnez       $s5, .Llevel_46_8008AAB8
/* 8F5CFE0 8008AAB0 00000000 */   nop
/* 8F5CFE4 8008AAB4 0D000700 */  break      7
.Llevel_46_8008AAB8:
/* 8F5CFE8 8008AAB8 FFFF0124 */  addiu      $at, $zero, -0x1
/* 8F5CFEC 8008AABC 0400A116 */  bne        $s5, $at, .Llevel_46_8008AAD0
/* 8F5CFF0 8008AAC0 0080013C */   lui       $at, (0x80000000 >> 16)
/* 8F5CFF4 8008AAC4 02004114 */  bne        $v0, $at, .Llevel_46_8008AAD0
/* 8F5CFF8 8008AAC8 00000000 */   nop
/* 8F5CFFC 8008AACC 0D000600 */  break      6
.Llevel_46_8008AAD0:
/* 8F5D000 8008AAD0 12100000 */  mflo       $v0
/* 8F5D004 8008AAD4 04000524 */  addiu      $a1, $zero, 0x4
/* 8F5D008 8008AAD8 21980000 */  addu       $s3, $zero, $zero
/* 8F5D00C 8008AADC 21204002 */  addu       $a0, $s2, $zero
/* 8F5D010 8008AAE0 1000A6AF */  sw         $a2, 0x10($sp)
/* 8F5D014 8008AAE4 1400A3AF */  sw         $v1, 0x14($sp)
/* 8F5D018 8008AAE8 4957010C */  jal        func_80055D24
/* 8F5D01C 8008AAEC 1800A2AF */   sw        $v0, 0x18($sp)
/* 8F5D020 8008AAF0 6401A01A */  blez       $s5, .Llevel_46_8008B084
/* 8F5D024 8008AAF4 2000B427 */   addiu     $s4, $sp, 0x20
/* 8F5D028 8008AAF8 06801E3C */  lui        $fp, %hi(D_80065920)
/* 8F5D02C 8008AAFC 2059DE27 */  addiu      $fp, $fp, %lo(D_80065920)
/* 8F5D030 8008AB00 0680173C */  lui        $s7, %hi(D_800658A0)
/* 8F5D034 8008AB04 A058F726 */  addiu      $s7, $s7, %lo(D_800658A0)
/* 8F5D038 8008AB08 0780163C */  lui        $s6, %hi(D_80070328)
/* 8F5D03C 8008AB0C 2803D626 */  addiu      $s6, $s6, %lo(D_80070328)
.Llevel_46_8008AB10:
/* 8F5D040 8008AB10 0780023C */  lui        $v0, %hi(D_8006C578)
/* 8F5D044 8008AB14 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 8F5D048 8008AB18 0780033C */  lui        $v1, %hi(D_8006C574)
/* 8F5D04C 8008AB1C 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 8F5D050 8008AB20 00000000 */  nop
/* 8F5D054 8008AB24 23104300 */  subu       $v0, $v0, $v1
/* 8F5D058 8008AB28 15004228 */  slti       $v0, $v0, 0x15
/* 8F5D05C 8008AB2C 55014014 */  bnez       $v0, .Llevel_46_8008B084
/* 8F5D060 8008AB30 00000000 */   nop
/* 8F5D064 8008AB34 4000A48F */  lw         $a0, 0x40($sp)
/* 8F5D068 8008AB38 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8F5D06C 8008AB3C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8F5D070 8008AB40 00000000 */  nop
/* 8F5D074 8008AB44 09F84000 */  jalr       $v0
/* 8F5D078 8008AB48 21284002 */   addu      $a1, $s2, $zero
/* 8F5D07C 8008AB4C 21884000 */  addu       $s1, $v0, $zero
/* 8F5D080 8008AB50 48012012 */  beqz       $s1, .Llevel_46_8008B074
/* 8F5D084 8008AB54 21208002 */   addu      $a0, $s4, $zero
/* 8F5D088 8008AB58 40281300 */  sll        $a1, $s3, 1
/* 8F5D08C 8008AB5C 2128B300 */  addu       $a1, $a1, $s3
/* 8F5D090 8008AB60 80280500 */  sll        $a1, $a1, 2
/* 8F5D094 8008AB64 4800A88F */  lw         $t0, 0x48($sp)
/* 8F5D098 8008AB68 0000308E */  lw         $s0, 0x0($s1)
/* 8F5D09C 8008AB6C 5E3C010C */  jal        func_8004F178
/* 8F5D0A0 8008AB70 21280501 */   addu      $a1, $t0, $a1
/* 8F5D0A4 8008AB74 20004426 */  addiu      $a0, $s2, 0x20
/* 8F5D0A8 8008AB78 21288002 */  addu       $a1, $s4, $zero
/* 8F5D0AC 8008AB7C 5B3B010C */  jal        func_8004ED6C
/* 8F5D0B0 8008AB80 21308002 */   addu      $a2, $s4, $zero
/* 8F5D0B4 8008AB84 2000A28F */  lw         $v0, 0x20($sp)
/* 8F5D0B8 8008AB88 1000A38F */  lw         $v1, 0x10($sp)
/* 8F5D0BC 8008AB8C 0C002426 */  addiu      $a0, $s1, 0xC
/* 8F5D0C0 8008AB90 23104300 */  subu       $v0, $v0, $v1
/* 8F5D0C4 8008AB94 83100200 */  sra        $v0, $v0, 2
/* 8F5D0C8 8008AB98 000002A6 */  sh         $v0, 0x0($s0)
/* 8F5D0CC 8008AB9C 2400A28F */  lw         $v0, 0x24($sp)
/* 8F5D0D0 8008ABA0 1400A38F */  lw         $v1, 0x14($sp)
/* 8F5D0D4 8008ABA4 21288002 */  addu       $a1, $s4, $zero
/* 8F5D0D8 8008ABA8 23104300 */  subu       $v0, $v0, $v1
/* 8F5D0DC 8008ABAC 83100200 */  sra        $v0, $v0, 2
/* 8F5D0E0 8008ABB0 020002A6 */  sh         $v0, 0x2($s0)
/* 8F5D0E4 8008ABB4 2800A28F */  lw         $v0, 0x28($sp)
/* 8F5D0E8 8008ABB8 1800A38F */  lw         $v1, 0x18($sp)
/* 8F5D0EC 8008ABBC 0C004626 */  addiu      $a2, $s2, 0xC
/* 8F5D0F0 8008ABC0 23104300 */  subu       $v0, $v0, $v1
/* 8F5D0F4 8008ABC4 83100200 */  sra        $v0, $v0, 2
/* 8F5D0F8 8008ABC8 653C010C */  jal        func_8004F194
/* 8F5D0FC 8008ABCC 040002A6 */   sh        $v0, 0x4($s0)
/* 8F5D100 8008ABD0 36004386 */  lh         $v1, 0x36($s2)
/* 8F5D104 8008ABD4 FE000224 */  addiu      $v0, $zero, 0xFE
/* 8F5D108 8008ABD8 1F006214 */  bne        $v1, $v0, .Llevel_46_8008AC58
/* 8F5D10C 8008ABDC 84000224 */   addiu     $v0, $zero, 0x84
/* 8F5D110 8008ABE0 1400238E */  lw         $v1, 0x14($s1)
/* 8F5D114 8008ABE4 14000224 */  addiu      $v0, $zero, 0x14
/* 8F5D118 8008ABE8 4F0022A2 */  sb         $v0, 0x4F($s1)
/* 8F5D11C 8008ABEC E8036324 */  addiu      $v1, $v1, 0x3E8
/* 8F5D120 8008ABF0 140023AE */  sw         $v1, 0x14($s1)
/* 8F5D124 8008ABF4 51004292 */  lbu        $v0, 0x51($s2)
/* 8F5D128 8008ABF8 00000000 */  nop
/* 8F5D12C 8008ABFC 40100200 */  sll        $v0, $v0, 1
/* 8F5D130 8008AC00 21105E00 */  addu       $v0, $v0, $fp
/* 8F5D134 8008AC04 00004384 */  lh         $v1, 0x0($v0)
/* 8F5D138 8008AC08 00000000 */  nop
/* 8F5D13C 8008AC0C 80100300 */  sll        $v0, $v1, 2
/* 8F5D140 8008AC10 21104300 */  addu       $v0, $v0, $v1
/* 8F5D144 8008AC14 00000396 */  lhu        $v1, 0x0($s0)
/* 8F5D148 8008AC18 03120200 */  sra        $v0, $v0, 8
/* 8F5D14C 8008AC1C 21186200 */  addu       $v1, $v1, $v0
/* 8F5D150 8008AC20 000003A6 */  sh         $v1, 0x0($s0)
/* 8F5D154 8008AC24 51004292 */  lbu        $v0, 0x51($s2)
/* 8F5D158 8008AC28 FA000424 */  addiu      $a0, $zero, 0xFA
/* 8F5D15C 8008AC2C 40100200 */  sll        $v0, $v0, 1
/* 8F5D160 8008AC30 21105700 */  addu       $v0, $v0, $s7
/* 8F5D164 8008AC34 00004384 */  lh         $v1, 0x0($v0)
/* 8F5D168 8008AC38 5E010524 */  addiu      $a1, $zero, 0x15E
/* 8F5D16C 8008AC3C 80100300 */  sll        $v0, $v1, 2
/* 8F5D170 8008AC40 21104300 */  addu       $v0, $v0, $v1
/* 8F5D174 8008AC44 02000396 */  lhu        $v1, 0x2($s0)
/* 8F5D178 8008AC48 03120200 */  sra        $v0, $v0, 8
/* 8F5D17C 8008AC4C 21186200 */  addu       $v1, $v1, $v0
/* 8F5D180 8008AC50 7E2B0208 */  j          .Llevel_46_8008ADF8
/* 8F5D184 8008AC54 020003A6 */   sh        $v1, 0x2($s0)
.Llevel_46_8008AC58:
/* 8F5D188 8008AC58 14006214 */  bne        $v1, $v0, .Llevel_46_8008ACAC
/* 8F5D18C 8008AC5C E7030224 */   addiu     $v0, $zero, 0x3E7
/* 8F5D190 8008AC60 00000386 */  lh         $v1, 0x0($s0)
/* 8F5D194 8008AC64 00000000 */  nop
/* 8F5D198 8008AC68 40100300 */  sll        $v0, $v1, 1
/* 8F5D19C 8008AC6C 21104300 */  addu       $v0, $v0, $v1
/* 8F5D1A0 8008AC70 C21F0200 */  srl        $v1, $v0, 31
/* 8F5D1A4 8008AC74 21104300 */  addu       $v0, $v0, $v1
/* 8F5D1A8 8008AC78 02000386 */  lh         $v1, 0x2($s0)
/* 8F5D1AC 8008AC7C 43100200 */  sra        $v0, $v0, 1
/* 8F5D1B0 8008AC80 000002A6 */  sh         $v0, 0x0($s0)
/* 8F5D1B4 8008AC84 40100300 */  sll        $v0, $v1, 1
/* 8F5D1B8 8008AC88 21104300 */  addu       $v0, $v0, $v1
/* 8F5D1BC 8008AC8C C21F0200 */  srl        $v1, $v0, 31
/* 8F5D1C0 8008AC90 21104300 */  addu       $v0, $v0, $v1
/* 8F5D1C4 8008AC94 04000386 */  lh         $v1, 0x4($s0)
/* 8F5D1C8 8008AC98 43100200 */  sra        $v0, $v0, 1
/* 8F5D1CC 8008AC9C 020002A6 */  sh         $v0, 0x2($s0)
/* 8F5D1D0 8008ACA0 40180300 */  sll        $v1, $v1, 1
/* 8F5D1D4 8008ACA4 F72B0208 */  j          .Llevel_46_8008AFDC
/* 8F5D1D8 8008ACA8 040003A6 */   sh        $v1, 0x4($s0)
.Llevel_46_8008ACAC:
/* 8F5D1DC 8008ACAC 30006214 */  bne        $v1, $v0, .Llevel_46_8008AD70
/* 8F5D1E0 8008ACB0 2A000224 */   addiu     $v0, $zero, 0x2A
/* 8F5D1E4 8008ACB4 0780053C */  lui        $a1, %hi(D_80070328 + 0x48)
/* 8F5D1E8 8008ACB8 7003A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0x48)
/* 8F5D1EC 8008ACBC 0000A38C */  lw         $v1, 0x0($a1)
/* 8F5D1F0 8008ACC0 00000000 */  nop
/* 8F5D1F4 8008ACC4 13006214 */  bne        $v1, $v0, .Llevel_46_8008AD14
/* 8F5D1F8 8008ACC8 21200000 */   addu      $a0, $zero, $zero
/* 8F5D1FC 8008ACCC 21208002 */  addu       $a0, $s4, $zero
/* 8F5D200 8008ACD0 5E3C010C */  jal        func_8004F178
/* 8F5D204 8008ACD4 4400A524 */   addiu     $a1, $a1, 0x44
/* 8F5D208 8008ACD8 21208002 */  addu       $a0, $s4, $zero
/* 8F5D20C 8008ACDC 7A3B010C */  jal        func_8004EDE8
/* 8F5D210 8008ACE0 21280000 */   addu      $a1, $zero, $zero
/* 8F5D214 8008ACE4 21208002 */  addu       $a0, $s4, $zero
/* 8F5D218 8008ACE8 21284000 */  addu       $a1, $v0, $zero
/* 8F5D21C 8008ACEC 233C010C */  jal        func_8004F08C
/* 8F5D220 8008ACF0 2C010624 */   addiu     $a2, $zero, 0x12C
/* 8F5D224 8008ACF4 2000A38F */  lw         $v1, 0x20($sp)
/* 8F5D228 8008ACF8 00000296 */  lhu        $v0, 0x0($s0)
/* 8F5D22C 8008ACFC 00000000 */  nop
/* 8F5D230 8008AD00 21104300 */  addu       $v0, $v0, $v1
/* 8F5D234 8008AD04 000002A6 */  sh         $v0, 0x0($s0)
/* 8F5D238 8008AD08 2400A38F */  lw         $v1, 0x24($sp)
/* 8F5D23C 8008AD0C F32B0208 */  j          .Llevel_46_8008AFCC
/* 8F5D240 8008AD10 00000000 */   nop
.Llevel_46_8008AD14:
/* 8F5D244 8008AD14 21288002 */  addu       $a1, $s4, $zero
/* 8F5D248 8008AD18 21308002 */  addu       $a2, $s4, $zero
/* 8F5D24C 8008AD1C 8C000224 */  addiu      $v0, $zero, 0x8C
/* 8F5D250 8008AD20 2000A2AF */  sw         $v0, 0x20($sp)
/* 8F5D254 8008AD24 2400A0AF */  sw         $zero, 0x24($sp)
/* 8F5D258 8008AD28 5B3B010C */  jal        func_8004ED6C
/* 8F5D25C 8008AD2C 2800A0AF */   sw        $zero, 0x28($sp)
/* 8F5D260 8008AD30 2000A38F */  lw         $v1, 0x20($sp)
/* 8F5D264 8008AD34 00000296 */  lhu        $v0, 0x0($s0)
/* 8F5D268 8008AD38 00000000 */  nop
/* 8F5D26C 8008AD3C 21104300 */  addu       $v0, $v0, $v1
/* 8F5D270 8008AD40 000002A6 */  sh         $v0, 0x0($s0)
/* 8F5D274 8008AD44 2400A38F */  lw         $v1, 0x24($sp)
/* 8F5D278 8008AD48 02000296 */  lhu        $v0, 0x2($s0)
/* 8F5D27C 8008AD4C 00000000 */  nop
/* 8F5D280 8008AD50 21104300 */  addu       $v0, $v0, $v1
/* 8F5D284 8008AD54 020002A6 */  sh         $v0, 0x2($s0)
/* 8F5D288 8008AD58 2800A38F */  lw         $v1, 0x28($sp)
/* 8F5D28C 8008AD5C 04000296 */  lhu        $v0, 0x4($s0)
/* 8F5D290 8008AD60 00000000 */  nop
/* 8F5D294 8008AD64 21104300 */  addu       $v0, $v0, $v1
/* 8F5D298 8008AD68 F72B0208 */  j          .Llevel_46_8008AFDC
/* 8F5D29C 8008AD6C 040002A6 */   sh        $v0, 0x4($s0)
.Llevel_46_8008AD70:
/* 8F5D2A0 8008AD70 51004492 */  lbu        $a0, 0x51($s2)
/* 8F5D2A4 8008AD74 00000000 */  nop
/* 8F5D2A8 8008AD78 26008010 */  beqz       $a0, .Llevel_46_8008AE14
/* 8F5D2AC 8008AD7C 1000033C */   lui       $v1, (0x100000 >> 16)
/* 8F5D2B0 8008AD80 1800428E */  lw         $v0, 0x18($s2)
/* 8F5D2B4 8008AD84 00000000 */  nop
/* 8F5D2B8 8008AD88 24104300 */  and        $v0, $v0, $v1
/* 8F5D2BC 8008AD8C 21004010 */  beqz       $v0, .Llevel_46_8008AE14
/* 8F5D2C0 8008AD90 40100400 */   sll       $v0, $a0, 1
/* 8F5D2C4 8008AD94 21105E00 */  addu       $v0, $v0, $fp
/* 8F5D2C8 8008AD98 00004384 */  lh         $v1, 0x0($v0)
/* 8F5D2CC 8008AD9C 00000000 */  nop
/* 8F5D2D0 8008ADA0 80100300 */  sll        $v0, $v1, 2
/* 8F5D2D4 8008ADA4 21104300 */  addu       $v0, $v0, $v1
/* 8F5D2D8 8008ADA8 00190200 */  sll        $v1, $v0, 4
/* 8F5D2DC 8008ADAC 23186200 */  subu       $v1, $v1, $v0
/* 8F5D2E0 8008ADB0 00000296 */  lhu        $v0, 0x0($s0)
/* 8F5D2E4 8008ADB4 C31A0300 */  sra        $v1, $v1, 11
/* 8F5D2E8 8008ADB8 21104300 */  addu       $v0, $v0, $v1
/* 8F5D2EC 8008ADBC 000002A6 */  sh         $v0, 0x0($s0)
/* 8F5D2F0 8008ADC0 51004292 */  lbu        $v0, 0x51($s2)
/* 8F5D2F4 8008ADC4 28000424 */  addiu      $a0, $zero, 0x28
/* 8F5D2F8 8008ADC8 40100200 */  sll        $v0, $v0, 1
/* 8F5D2FC 8008ADCC 21105700 */  addu       $v0, $v0, $s7
/* 8F5D300 8008ADD0 00004384 */  lh         $v1, 0x0($v0)
/* 8F5D304 8008ADD4 46000524 */  addiu      $a1, $zero, 0x46
/* 8F5D308 8008ADD8 80100300 */  sll        $v0, $v1, 2
/* 8F5D30C 8008ADDC 21104300 */  addu       $v0, $v0, $v1
/* 8F5D310 8008ADE0 00190200 */  sll        $v1, $v0, 4
/* 8F5D314 8008ADE4 23186200 */  subu       $v1, $v1, $v0
/* 8F5D318 8008ADE8 02000296 */  lhu        $v0, 0x2($s0)
/* 8F5D31C 8008ADEC C31A0300 */  sra        $v1, $v1, 11
/* 8F5D320 8008ADF0 21104300 */  addu       $v0, $v0, $v1
/* 8F5D324 8008ADF4 020002A6 */  sh         $v0, 0x2($s0)
.Llevel_46_8008ADF8:
/* 8F5D328 8008ADF8 DBD8000C */  jal        func_8003636C
/* 8F5D32C 8008ADFC 00000000 */   nop
/* 8F5D330 8008AE00 04000396 */  lhu        $v1, 0x4($s0)
/* 8F5D334 8008AE04 00000000 */  nop
/* 8F5D338 8008AE08 21186200 */  addu       $v1, $v1, $v0
/* 8F5D33C 8008AE0C F72B0208 */  j          .Llevel_46_8008AFDC
/* 8F5D340 8008AE10 040003A6 */   sh        $v1, 0x4($s0)
.Llevel_46_8008AE14:
/* 8F5D344 8008AE14 1800438E */  lw         $v1, 0x18($s2)
/* 8F5D348 8008AE18 0400023C */  lui        $v0, (0x40000 >> 16)
/* 8F5D34C 8008AE1C 24106200 */  and        $v0, $v1, $v0
/* 8F5D350 8008AE20 0C004010 */  beqz       $v0, .Llevel_46_8008AE54
/* 8F5D354 8008AE24 00000000 */   nop
/* 8F5D358 8008AE28 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 8F5D35C 8008AE2C B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 8F5D360 8008AE30 00000396 */  lhu        $v1, 0x0($s0)
/* 8F5D364 8008AE34 43110200 */  sra        $v0, $v0, 5
/* 8F5D368 8008AE38 21186200 */  addu       $v1, $v1, $v0
/* 8F5D36C 8008AE3C 000003A6 */  sh         $v1, 0x0($s0)
/* 8F5D370 8008AE40 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 8F5D374 8008AE44 B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 8F5D378 8008AE48 02000396 */  lhu        $v1, 0x2($s0)
/* 8F5D37C 8008AE4C C92B0208 */  j          .Llevel_46_8008AF24
/* 8F5D380 8008AE50 43110200 */   sra       $v0, $v0, 5
.Llevel_46_8008AE54:
/* 8F5D384 8008AE54 0002023C */  lui        $v0, (0x2000000 >> 16)
/* 8F5D388 8008AE58 24106200 */  and        $v0, $v1, $v0
/* 8F5D38C 8008AE5C 1C004010 */  beqz       $v0, .Llevel_46_8008AED0
/* 8F5D390 8008AE60 21300000 */   addu      $a2, $zero, $zero
/* 8F5D394 8008AE64 0C00238E */  lw         $v1, 0xC($s1)
/* 8F5D398 8008AE68 0000C48E */  lw         $a0, 0x0($s6)
/* 8F5D39C 8008AE6C 1000228E */  lw         $v0, 0x10($s1)
/* 8F5D3A0 8008AE70 0400C58E */  lw         $a1, 0x4($s6)
/* 8F5D3A4 8008AE74 23206400 */  subu       $a0, $v1, $a0
/* 8F5D3A8 8008AE78 203A010C */  jal        func_8004E880
/* 8F5D3AC 8008AE7C 23284500 */   subu      $a1, $v0, $a1
/* 8F5D3B0 8008AE80 40100200 */  sll        $v0, $v0, 1
/* 8F5D3B4 8008AE84 21105E00 */  addu       $v0, $v0, $fp
/* 8F5D3B8 8008AE88 00004284 */  lh         $v0, 0x0($v0)
/* 8F5D3BC 8008AE8C 21300000 */  addu       $a2, $zero, $zero
/* 8F5D3C0 8008AE90 03110200 */  sra        $v0, $v0, 4
/* 8F5D3C4 8008AE94 3000A2AF */  sw         $v0, 0x30($sp)
/* 8F5D3C8 8008AE98 0C00238E */  lw         $v1, 0xC($s1)
/* 8F5D3CC 8008AE9C 0000C48E */  lw         $a0, 0x0($s6)
/* 8F5D3D0 8008AEA0 1000228E */  lw         $v0, 0x10($s1)
/* 8F5D3D4 8008AEA4 0400C58E */  lw         $a1, 0x4($s6)
/* 8F5D3D8 8008AEA8 23206400 */  subu       $a0, $v1, $a0
/* 8F5D3DC 8008AEAC 203A010C */  jal        func_8004E880
/* 8F5D3E0 8008AEB0 23284500 */   subu      $a1, $v0, $a1
/* 8F5D3E4 8008AEB4 40100200 */  sll        $v0, $v0, 1
/* 8F5D3E8 8008AEB8 21105700 */  addu       $v0, $v0, $s7
/* 8F5D3EC 8008AEBC 00004284 */  lh         $v0, 0x0($v0)
/* 8F5D3F0 8008AEC0 3000A38F */  lw         $v1, 0x30($sp)
/* 8F5D3F4 8008AEC4 3800A0AF */  sw         $zero, 0x38($sp)
/* 8F5D3F8 8008AEC8 ED2B0208 */  j          .Llevel_46_8008AFB4
/* 8F5D3FC 8008AECC 03110200 */   sra       $v0, $v0, 4
.Llevel_46_8008AED0:
/* 8F5D400 8008AED0 0200023C */  lui        $v0, (0x20000 >> 16)
/* 8F5D404 8008AED4 24106200 */  and        $v0, $v1, $v0
/* 8F5D408 8008AED8 15004010 */  beqz       $v0, .Llevel_46_8008AF30
/* 8F5D40C 8008AEDC 04000224 */   addiu     $v0, $zero, 0x4
/* 8F5D410 8008AEE0 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 8F5D414 8008AEE4 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 8F5D418 8008AEE8 00000000 */  nop
/* 8F5D41C 8008AEEC 03006210 */  beq        $v1, $v0, .Llevel_46_8008AEFC
/* 8F5D420 8008AEF0 0C000224 */   addiu     $v0, $zero, 0xC
/* 8F5D424 8008AEF4 0E006214 */  bne        $v1, $v0, .Llevel_46_8008AF30
/* 8F5D428 8008AEF8 00000000 */   nop
.Llevel_46_8008AEFC:
/* 8F5D42C 8008AEFC 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 8F5D430 8008AF00 B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 8F5D434 8008AF04 00000396 */  lhu        $v1, 0x0($s0)
/* 8F5D438 8008AF08 83110200 */  sra        $v0, $v0, 6
/* 8F5D43C 8008AF0C 21186200 */  addu       $v1, $v1, $v0
/* 8F5D440 8008AF10 000003A6 */  sh         $v1, 0x0($s0)
/* 8F5D444 8008AF14 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 8F5D448 8008AF18 B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 8F5D44C 8008AF1C 02000396 */  lhu        $v1, 0x2($s0)
/* 8F5D450 8008AF20 83110200 */  sra        $v0, $v0, 6
.Llevel_46_8008AF24:
/* 8F5D454 8008AF24 21186200 */  addu       $v1, $v1, $v0
/* 8F5D458 8008AF28 F72B0208 */  j          .Llevel_46_8008AFDC
/* 8F5D45C 8008AF2C 020003A6 */   sh        $v1, 0x2($s0)
.Llevel_46_8008AF30:
/* 8F5D460 8008AF30 36004386 */  lh         $v1, 0x36($s2)
/* 8F5D464 8008AF34 84000224 */  addiu      $v0, $zero, 0x84
/* 8F5D468 8008AF38 28006210 */  beq        $v1, $v0, .Llevel_46_8008AFDC
/* 8F5D46C 8008AF3C 00000000 */   nop
/* 8F5D470 8008AF40 51004292 */  lbu        $v0, 0x51($s2)
/* 8F5D474 8008AF44 00000000 */  nop
/* 8F5D478 8008AF48 0A004014 */  bnez       $v0, .Llevel_46_8008AF74
/* 8F5D47C 8008AF4C 40200200 */   sll       $a0, $v0, 1
/* 8F5D480 8008AF50 21300000 */  addu       $a2, $zero, $zero
/* 8F5D484 8008AF54 0C00238E */  lw         $v1, 0xC($s1)
/* 8F5D488 8008AF58 0000C48E */  lw         $a0, 0x0($s6)
/* 8F5D48C 8008AF5C 1000228E */  lw         $v0, 0x10($s1)
/* 8F5D490 8008AF60 0400C58E */  lw         $a1, 0x4($s6)
/* 8F5D494 8008AF64 23206400 */  subu       $a0, $v1, $a0
/* 8F5D498 8008AF68 203A010C */  jal        func_8004E880
/* 8F5D49C 8008AF6C 23284500 */   subu      $a1, $v0, $a1
/* 8F5D4A0 8008AF70 40200200 */  sll        $a0, $v0, 1
.Llevel_46_8008AF74:
/* 8F5D4A4 8008AF74 21109E00 */  addu       $v0, $a0, $fp
/* 8F5D4A8 8008AF78 00004284 */  lh         $v0, 0x0($v0)
/* 8F5D4AC 8008AF7C 21209700 */  addu       $a0, $a0, $s7
/* 8F5D4B0 8008AF80 C0180200 */  sll        $v1, $v0, 3
/* 8F5D4B4 8008AF84 21186200 */  addu       $v1, $v1, $v0
/* 8F5D4B8 8008AF88 80180300 */  sll        $v1, $v1, 2
/* 8F5D4BC 8008AF8C 23186200 */  subu       $v1, $v1, $v0
/* 8F5D4C0 8008AF90 831A0300 */  sra        $v1, $v1, 10
/* 8F5D4C4 8008AF94 3000A3AF */  sw         $v1, 0x30($sp)
/* 8F5D4C8 8008AF98 00008484 */  lh         $a0, 0x0($a0)
/* 8F5D4CC 8008AF9C 3800A0AF */  sw         $zero, 0x38($sp)
/* 8F5D4D0 8008AFA0 C0100400 */  sll        $v0, $a0, 3
/* 8F5D4D4 8008AFA4 21104400 */  addu       $v0, $v0, $a0
/* 8F5D4D8 8008AFA8 80100200 */  sll        $v0, $v0, 2
/* 8F5D4DC 8008AFAC 23104400 */  subu       $v0, $v0, $a0
/* 8F5D4E0 8008AFB0 83120200 */  sra        $v0, $v0, 10
.Llevel_46_8008AFB4:
/* 8F5D4E4 8008AFB4 3400A2AF */  sw         $v0, 0x34($sp)
/* 8F5D4E8 8008AFB8 00000296 */  lhu        $v0, 0x0($s0)
/* 8F5D4EC 8008AFBC 00000000 */  nop
/* 8F5D4F0 8008AFC0 21104300 */  addu       $v0, $v0, $v1
/* 8F5D4F4 8008AFC4 000002A6 */  sh         $v0, 0x0($s0)
/* 8F5D4F8 8008AFC8 3400A38F */  lw         $v1, 0x34($sp)
.Llevel_46_8008AFCC:
/* 8F5D4FC 8008AFCC 02000296 */  lhu        $v0, 0x2($s0)
/* 8F5D500 8008AFD0 00000000 */  nop
/* 8F5D504 8008AFD4 21104300 */  addu       $v0, $v0, $v1
/* 8F5D508 8008AFD8 020002A6 */  sh         $v0, 0x2($s0)
.Llevel_46_8008AFDC:
/* 8F5D50C 8008AFDC 44004292 */  lbu        $v0, 0x44($s2)
/* 8F5D510 8008AFE0 00000000 */  nop
/* 8F5D514 8008AFE4 440022A2 */  sb         $v0, 0x44($s1)
/* 8F5D518 8008AFE8 45004292 */  lbu        $v0, 0x45($s2)
/* 8F5D51C 8008AFEC 00000000 */  nop
/* 8F5D520 8008AFF0 450022A2 */  sb         $v0, 0x45($s1)
/* 8F5D524 8008AFF4 46004292 */  lbu        $v0, 0x46($s2)
/* 8F5D528 8008AFF8 9171010C */  jal        rand
/* 8F5D52C 8008AFFC 460022A2 */   sb        $v0, 0x46($s1)
/* 8F5D530 8008B000 06004230 */  andi       $v0, $v0, 0x6
/* 8F5D534 8008B004 FDFF4224 */  addiu      $v0, $v0, -0x3
/* 8F5D538 8008B008 9171010C */  jal        rand
/* 8F5D53C 8008B00C 060002A6 */   sh        $v0, 0x6($s0)
/* 8F5D540 8008B010 06004230 */  andi       $v0, $v0, 0x6
/* 8F5D544 8008B014 FDFF4224 */  addiu      $v0, $v0, -0x3
/* 8F5D548 8008B018 9171010C */  jal        rand
/* 8F5D54C 8008B01C 080002A6 */   sh        $v0, 0x8($s0)
/* 8F5D550 8008B020 1E000424 */  addiu      $a0, $zero, 0x1E
/* 8F5D554 8008B024 06004230 */  andi       $v0, $v0, 0x6
/* 8F5D558 8008B028 FDFF4224 */  addiu      $v0, $v0, -0x3
/* 8F5D55C 8008B02C 0A0002A6 */  sh         $v0, 0xA($s0)
/* 8F5D560 8008B030 1400428E */  lw         $v0, 0x14($s2)
/* 8F5D564 8008B034 32000524 */  addiu      $a1, $zero, 0x32
/* 8F5D568 8008B038 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 8F5D56C 8008B03C DBD8000C */  jal        func_8003636C
/* 8F5D570 8008B040 0E0002A6 */   sh        $v0, 0xE($s0)
/* 8F5D574 8008B044 9800A88F */  lw         $t0, 0x98($sp)
/* 8F5D578 8008B048 21202002 */  addu       $a0, $s1, $zero
/* 8F5D57C 8008B04C 0C0002A6 */  sh         $v0, 0xC($s0)
/* 8F5D580 8008B050 08000224 */  addiu      $v0, $zero, 0x8
/* 8F5D584 8008B054 100002A6 */  sh         $v0, 0x10($s0)
/* 8F5D588 8008B058 21281301 */  addu       $a1, $t0, $s3
/* 8F5D58C 8008B05C 9C00A897 */  lhu        $t0, 0x9C($sp)
/* 8F5D590 8008B060 E0D3000C */  jal        func_80034F80
/* 8F5D594 8008B064 120008A6 */   sh        $t0, 0x12($s0)
/* 8F5D598 8008B068 01000224 */  addiu      $v0, $zero, 0x1
/* 8F5D59C 8008B06C 140002AE */  sw         $v0, 0x14($s0)
/* 8F5D5A0 8008B070 080020AE */  sw         $zero, 0x8($s1)
.Llevel_46_8008B074:
/* 8F5D5A4 8008B074 01007326 */  addiu      $s3, $s3, 0x1
/* 8F5D5A8 8008B078 2A107502 */  slt        $v0, $s3, $s5
/* 8F5D5AC 8008B07C A4FE4014 */  bnez       $v0, .Llevel_46_8008AB10
/* 8F5D5B0 8008B080 00000000 */   nop
.Llevel_46_8008B084:
/* 8F5D5B4 8008B084 8400BF8F */  lw         $ra, 0x84($sp)
/* 8F5D5B8 8008B088 8000BE8F */  lw         $fp, 0x80($sp)
/* 8F5D5BC 8008B08C 7C00B78F */  lw         $s7, 0x7C($sp)
/* 8F5D5C0 8008B090 7800B68F */  lw         $s6, 0x78($sp)
/* 8F5D5C4 8008B094 7400B58F */  lw         $s5, 0x74($sp)
/* 8F5D5C8 8008B098 7000B48F */  lw         $s4, 0x70($sp)
/* 8F5D5CC 8008B09C 6C00B38F */  lw         $s3, 0x6C($sp)
/* 8F5D5D0 8008B0A0 6800B28F */  lw         $s2, 0x68($sp)
/* 8F5D5D4 8008B0A4 6400B18F */  lw         $s1, 0x64($sp)
/* 8F5D5D8 8008B0A8 6000B08F */  lw         $s0, 0x60($sp)
/* 8F5D5DC 8008B0AC 8800BD27 */  addiu      $sp, $sp, 0x88
/* 8F5D5E0 8008B0B0 0800E003 */  jr         $ra
/* 8F5D5E4 8008B0B4 00000000 */   nop
.size func_level_46_8008A9C8, . - func_level_46_8008A9C8
