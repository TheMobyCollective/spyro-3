.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_174_level_46
/* 8F4EFD4 8007CAA4 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 8F4EFD8 8007CAA8 5400B1AF */  sw         $s1, 0x54($sp)
/* 8F4EFDC 8007CAAC 21888000 */  addu       $s1, $a0, $zero
/* 8F4EFE0 8007CAB0 6800BFAF */  sw         $ra, 0x68($sp)
/* 8F4EFE4 8007CAB4 6400B5AF */  sw         $s5, 0x64($sp)
/* 8F4EFE8 8007CAB8 6000B4AF */  sw         $s4, 0x60($sp)
/* 8F4EFEC 8007CABC 5C00B3AF */  sw         $s3, 0x5C($sp)
/* 8F4EFF0 8007CAC0 5800B2AF */  sw         $s2, 0x58($sp)
/* 8F4EFF4 8007CAC4 5000B0AF */  sw         $s0, 0x50($sp)
/* 8F4EFF8 8007CAC8 4C002292 */  lbu        $v0, 0x4C($s1)
/* 8F4EFFC 8007CACC 0000338E */  lw         $s3, 0x0($s1)
/* 8F4F000 8007CAD0 28004010 */  beqz       $v0, .Llevel_46_8007CB74
/* 8F4F004 8007CAD4 00000000 */   nop
/* 8F4F008 8007CAD8 48002292 */  lbu        $v0, 0x48($s1)
/* 8F4F00C 8007CADC 00000000 */  nop
/* 8F4F010 8007CAE0 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 8F4F014 8007CAE4 0200422C */  sltiu      $v0, $v0, 0x2
/* 8F4F018 8007CAE8 22004010 */  beqz       $v0, .Llevel_46_8007CB74
/* 8F4F01C 8007CAEC 04000224 */   addiu     $v0, $zero, 0x4
/* 8F4F020 8007CAF0 0780033C */  lui        $v1, %hi(D_80070328 + 0x24C)
/* 8F4F024 8007CAF4 7405638C */  lw         $v1, %lo(D_80070328 + 0x24C)($v1)
/* 8F4F028 8007CAF8 00000000 */  nop
/* 8F4F02C 8007CAFC 1D006214 */  bne        $v1, $v0, .Llevel_46_8007CB74
/* 8F4F030 8007CB00 21300000 */   addu      $a2, $zero, $zero
/* 8F4F034 8007CB04 0C00238E */  lw         $v1, 0xC($s1)
/* 8F4F038 8007CB08 0780043C */  lui        $a0, %hi(D_8006E020)
/* 8F4F03C 8007CB0C 20E0848C */  lw         $a0, %lo(D_8006E020)($a0)
/* 8F4F040 8007CB10 1000228E */  lw         $v0, 0x10($s1)
/* 8F4F044 8007CB14 0780053C */  lui        $a1, %hi(D_8006E024)
/* 8F4F048 8007CB18 24E0A58C */  lw         $a1, %lo(D_8006E024)($a1)
/* 8F4F04C 8007CB1C 23206400 */  subu       $a0, $v1, $a0
/* 8F4F050 8007CB20 203A010C */  jal        func_8004E880
/* 8F4F054 8007CB24 23284500 */   subu      $a1, $v0, $a1
/* 8F4F058 8007CB28 0780043C */  lui        $a0, %hi(D_8006E040)
/* 8F4F05C 8007CB2C 40E08494 */  lhu        $a0, %lo(D_8006E040)($a0)
/* 8F4F060 8007CB30 21284000 */  addu       $a1, $v0, $zero
/* 8F4F064 8007CB34 00240400 */  sll        $a0, $a0, 16
/* 8F4F068 8007CB38 993C010C */  jal        func_8004F264
/* 8F4F06C 8007CB3C 03250400 */   sra       $a0, $a0, 20
/* 8F4F070 8007CB40 18004228 */  slti       $v0, $v0, 0x18
/* 8F4F074 8007CB44 09004010 */  beqz       $v0, .Llevel_46_8007CB6C
/* 8F4F078 8007CB48 1F000224 */   addiu     $v0, $zero, 0x1F
/* 8F4F07C 8007CB4C 0780033C */  lui        $v1, %hi(D_8006E044)
/* 8F4F080 8007CB50 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 8F4F084 8007CB54 00000000 */  nop
/* 8F4F088 8007CB58 05006214 */  bne        $v1, $v0, .Llevel_46_8007CB70
/* 8F4F08C 8007CB5C 10000224 */   addiu     $v0, $zero, 0x10
/* 8F4F090 8007CB60 4C002292 */  lbu        $v0, 0x4C($s1)
/* 8F4F094 8007CB64 DDF20108 */  j          .Llevel_46_8007CB74
/* 8F4F098 8007CB68 4E0022A2 */   sb        $v0, 0x4E($s1)
.Llevel_46_8007CB6C:
/* 8F4F09C 8007CB6C 10000224 */  addiu      $v0, $zero, 0x10
.Llevel_46_8007CB70:
/* 8F4F0A0 8007CB70 4E0022A2 */  sb         $v0, 0x4E($s1)
.Llevel_46_8007CB74:
/* 8F4F0A4 8007CB74 48002392 */  lbu        $v1, 0x48($s1)
/* 8F4F0A8 8007CB78 02000224 */  addiu      $v0, $zero, 0x2
/* 8F4F0AC 8007CB7C A1006210 */  beq        $v1, $v0, .Llevel_46_8007CE04
/* 8F4F0B0 8007CB80 03006228 */   slti      $v0, $v1, 0x3
/* 8F4F0B4 8007CB84 05004010 */  beqz       $v0, .Llevel_46_8007CB9C
/* 8F4F0B8 8007CB88 00000000 */   nop
/* 8F4F0BC 8007CB8C 0A006010 */  beqz       $v1, .Llevel_46_8007CBB8
/* 8F4F0C0 8007CB90 AE000424 */   addiu     $a0, $zero, 0xAE
/* 8F4F0C4 8007CB94 96F30108 */  j          .Llevel_46_8007CE58
/* 8F4F0C8 8007CB98 03000224 */   addiu     $v0, $zero, 0x3
.Llevel_46_8007CB9C:
/* 8F4F0CC 8007CB9C 03000224 */  addiu      $v0, $zero, 0x3
/* 8F4F0D0 8007CBA0 35006210 */  beq        $v1, $v0, .Llevel_46_8007CC78
/* 8F4F0D4 8007CBA4 07000224 */   addiu     $v0, $zero, 0x7
/* 8F4F0D8 8007CBA8 2F006210 */  beq        $v1, $v0, .Llevel_46_8007CC68
/* 8F4F0DC 8007CBAC 00000000 */   nop
/* 8F4F0E0 8007CBB0 94F30108 */  j          .Llevel_46_8007CE50
/* 8F4F0E4 8007CBB4 00000000 */   nop
.Llevel_46_8007CBB8:
/* 8F4F0E8 8007CBB8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8F4F0EC 8007CBBC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8F4F0F0 8007CBC0 00000000 */  nop
/* 8F4F0F4 8007CBC4 09F84000 */  jalr       $v0
/* 8F4F0F8 8007CBC8 21282002 */   addu      $a1, $s1, $zero
/* 8F4F0FC 8007CBCC 21904000 */  addu       $s2, $v0, $zero
/* 8F4F100 8007CBD0 22004012 */  beqz       $s2, .Llevel_46_8007CC5C
/* 8F4F104 8007CBD4 21202002 */   addu      $a0, $s1, $zero
/* 8F4F108 8007CBD8 0000508E */  lw         $s0, 0x0($s2)
/* 8F4F10C 8007CBDC 4957010C */  jal        func_80055D24
/* 8F4F110 8007CBE0 04000524 */   addiu     $a1, $zero, 0x4
/* 8F4F114 8007CBE4 20002426 */  addiu      $a0, $s1, 0x20
/* 8F4F118 8007CBE8 2000A527 */  addiu      $a1, $sp, 0x20
/* 8F4F11C 8007CBEC 2130A000 */  addu       $a2, $a1, $zero
/* 8F4F120 8007CBF0 9CFF0224 */  addiu      $v0, $zero, -0x64
/* 8F4F124 8007CBF4 2000A2AF */  sw         $v0, 0x20($sp)
/* 8F4F128 8007CBF8 2400A0AF */  sw         $zero, 0x24($sp)
/* 8F4F12C 8007CBFC 5B3B010C */  jal        func_8004ED6C
/* 8F4F130 8007CC00 2800A0AF */   sw        $zero, 0x28($sp)
/* 8F4F134 8007CC04 0C004426 */  addiu      $a0, $s2, 0xC
/* 8F4F138 8007CC08 21288000 */  addu       $a1, $a0, $zero
/* 8F4F13C 8007CC0C 653C010C */  jal        func_8004F194
/* 8F4F140 8007CC10 2000A627 */   addiu     $a2, $sp, 0x20
/* 8F4F144 8007CC14 21204002 */  addu       $a0, $s2, $zero
/* 8F4F148 8007CC18 02000224 */  addiu      $v0, $zero, 0x2
/* 8F4F14C 8007CC1C 470042A2 */  sb         $v0, 0x47($s2)
/* 8F4F150 8007CC20 1400228E */  lw         $v0, 0x14($s1)
/* 8F4F154 8007CC24 01000524 */  addiu      $a1, $zero, 0x1
/* 8F4F158 8007CC28 F4014224 */  addiu      $v0, $v0, 0x1F4
/* 8F4F15C 8007CC2C 140022AE */  sw         $v0, 0x14($s1)
/* 8F4F160 8007CC30 E0D3000C */  jal        func_80034F80
/* 8F4F164 8007CC34 100072AE */   sw        $s2, 0x10($s3)
/* 8F4F168 8007CC38 21200002 */  addu       $a0, $s0, $zero
/* 8F4F16C 8007CC3C 5E3C010C */  jal        func_8004F178
/* 8F4F170 8007CC40 0C002526 */   addiu     $a1, $s1, 0xC
/* 8F4F174 8007CC44 0800028E */  lw         $v0, 0x8($s0)
/* 8F4F178 8007CC48 0C0011AE */  sw         $s1, 0xC($s0)
/* 8F4F17C 8007CC4C 00084224 */  addiu      $v0, $v0, 0x800
/* 8F4F180 8007CC50 080002AE */  sw         $v0, 0x8($s0)
/* 8F4F184 8007CC54 03000224 */  addiu      $v0, $zero, 0x3
/* 8F4F188 8007CC58 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_46_8007CC5C:
/* 8F4F18C 8007CC5C 02000224 */  addiu      $v0, $zero, 0x2
/* 8F4F190 8007CC60 94F30108 */  j          .Llevel_46_8007CE50
/* 8F4F194 8007CC64 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_46_8007CC68:
/* 8F4F198 8007CC68 C5E5000C */  jal        func_80039714
/* 8F4F19C 8007CC6C 21202002 */   addu      $a0, $s1, $zero
/* 8F4F1A0 8007CC70 D2F30108 */  j          .Llevel_46_8007CF48
/* 8F4F1A4 8007CC74 00000000 */   nop
.Llevel_46_8007CC78:
/* 8F4F1A8 8007CC78 1800228E */  lw         $v0, 0x18($s1)
/* 8F4F1AC 8007CC7C 0000328E */  lw         $s2, 0x0($s1)
/* 8F4F1B0 8007CC80 B1004010 */  beqz       $v0, .Llevel_46_8007CF48
/* 8F4F1B4 8007CC84 00000000 */   nop
/* 8F4F1B8 8007CC88 180020AE */  sw         $zero, 0x18($s1)
/* 8F4F1BC 8007CC8C 0C00448E */  lw         $a0, 0xC($s2)
/* 8F4F1C0 8007CC90 00000000 */  nop
/* 8F4F1C4 8007CC94 07008010 */  beqz       $a0, .Llevel_46_8007CCB4
/* 8F4F1C8 8007CC98 0100033C */   lui       $v1, (0x10000 >> 16)
/* 8F4F1CC 8007CC9C 1800828C */  lw         $v0, 0x18($a0)
/* 8F4F1D0 8007CCA0 00000000 */  nop
/* 8F4F1D4 8007CCA4 25104300 */  or         $v0, $v0, $v1
/* 8F4F1D8 8007CCA8 180082AC */  sw         $v0, 0x18($a0)
/* 8F4F1DC 8007CCAC D2F30108 */  j          .Llevel_46_8007CF48
/* 8F4F1E0 8007CCB0 0C0040AE */   sw        $zero, 0xC($s2)
.Llevel_46_8007CCB4:
/* 8F4F1E4 8007CCB4 51002292 */  lbu        $v0, 0x51($s1)
/* 8F4F1E8 8007CCB8 00000000 */  nop
/* 8F4F1EC 8007CCBC 80004224 */  addiu      $v0, $v0, 0x80
/* 8F4F1F0 8007CCC0 FF004230 */  andi       $v0, $v0, 0xFF
/* 8F4F1F4 8007CCC4 40100200 */  sll        $v0, $v0, 1
/* 8F4F1F8 8007CCC8 0680013C */  lui        $at, %hi(D_80065920)
/* 8F4F1FC 8007CCCC 21082200 */  addu       $at, $at, $v0
/* 8F4F200 8007CCD0 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 8F4F204 8007CCD4 40011024 */  addiu      $s0, $zero, 0x140
/* 8F4F208 8007CCD8 18007000 */  mult       $v1, $s0
/* 8F4F20C 8007CCDC 12400000 */  mflo       $t0
/* 8F4F210 8007CCE0 031B0800 */  sra        $v1, $t0, 12
/* 8F4F214 8007CCE4 4000A3AF */  sw         $v1, 0x40($sp)
/* 8F4F218 8007CCE8 0680013C */  lui        $at, %hi(D_800658A0)
/* 8F4F21C 8007CCEC 21082200 */  addu       $at, $at, $v0
/* 8F4F220 8007CCF0 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 8F4F224 8007CCF4 00000000 */  nop
/* 8F4F228 8007CCF8 18005000 */  mult       $v0, $s0
/* 8F4F22C 8007CCFC 21204002 */  addu       $a0, $s2, $zero
/* 8F4F230 8007CD00 21284002 */  addu       $a1, $s2, $zero
/* 8F4F234 8007CD04 4000A627 */  addiu      $a2, $sp, 0x40
/* 8F4F238 8007CD08 4800A0AF */  sw         $zero, 0x48($sp)
/* 8F4F23C 8007CD0C 12400000 */  mflo       $t0
/* 8F4F240 8007CD10 03130800 */  sra        $v0, $t0, 12
/* 8F4F244 8007CD14 653C010C */  jal        func_8004F194
/* 8F4F248 8007CD18 4400A2AF */   sw        $v0, 0x44($sp)
/* 8F4F24C 8007CD1C 3000B027 */  addiu      $s0, $sp, 0x30
/* 8F4F250 8007CD20 21200002 */  addu       $a0, $s0, $zero
/* 8F4F254 8007CD24 21284002 */  addu       $a1, $s2, $zero
/* 8F4F258 8007CD28 723C010C */  jal        func_8004F1C8
/* 8F4F25C 8007CD2C 0C002626 */   addiu     $a2, $s1, 0xC
/* 8F4F260 8007CD30 21200002 */  addu       $a0, $s0, $zero
/* 8F4F264 8007CD34 7A3B010C */  jal        func_8004EDE8
/* 8F4F268 8007CD38 21280000 */   addu      $a1, $zero, $zero
/* 8F4F26C 8007CD3C C1034228 */  slti       $v0, $v0, 0x3C1
/* 8F4F270 8007CD40 1D004014 */  bnez       $v0, .Llevel_46_8007CDB8
/* 8F4F274 8007CD44 21202002 */   addu      $a0, $s1, $zero
/* 8F4F278 8007CD48 21800000 */  addu       $s0, $zero, $zero
/* 8F4F27C 8007CD4C 01001524 */  addiu      $s5, $zero, 0x1
/* 8F4F280 8007CD50 C8001424 */  addiu      $s4, $zero, 0xC8
/* 8F4F284 8007CD54 00011324 */  addiu      $s3, $zero, 0x100
/* 8F4F288 8007CD58 40001224 */  addiu      $s2, $zero, 0x40
/* 8F4F28C 8007CD5C 01000424 */  addiu      $a0, $zero, 0x1
.Llevel_46_8007CD60:
/* 8F4F290 8007CD60 AE000524 */  addiu      $a1, $zero, 0xAE
/* 8F4F294 8007CD64 21302002 */  addu       $a2, $s1, $zero
/* 8F4F298 8007CD68 01000724 */  addiu      $a3, $zero, 0x1
/* 8F4F29C 8007CD6C 1000B5AF */  sw         $s5, 0x10($sp)
/* 8F4F2A0 8007CD70 1400B4AF */  sw         $s4, 0x14($sp)
/* 8F4F2A4 8007CD74 7AE4000C */  jal        func_800391E8
/* 8F4F2A8 8007CD78 1800B3AF */   sw        $s3, 0x18($sp)
/* 8F4F2AC 8007CD7C 21184000 */  addu       $v1, $v0, $zero
/* 8F4F2B0 8007CD80 03006010 */  beqz       $v1, .Llevel_46_8007CD90
/* 8F4F2B4 8007CD84 07000224 */   addiu     $v0, $zero, 0x7
/* 8F4F2B8 8007CD88 4F0072A0 */  sb         $s2, 0x4F($v1)
/* 8F4F2BC 8007CD8C 480062A0 */  sb         $v0, 0x48($v1)
.Llevel_46_8007CD90:
/* 8F4F2C0 8007CD90 01001026 */  addiu      $s0, $s0, 0x1
/* 8F4F2C4 8007CD94 0300022A */  slti       $v0, $s0, 0x3
/* 8F4F2C8 8007CD98 F1FF4014 */  bnez       $v0, .Llevel_46_8007CD60
/* 8F4F2CC 8007CD9C 01000424 */   addiu     $a0, $zero, 0x1
/* 8F4F2D0 8007CDA0 21202002 */  addu       $a0, $s1, $zero
/* 8F4F2D4 8007CDA4 02000524 */  addiu      $a1, $zero, 0x2
/* 8F4F2D8 8007CDA8 AFEE000C */  jal        func_8003BABC
/* 8F4F2DC 8007CDAC 21300000 */   addu      $a2, $zero, $zero
/* 8F4F2E0 8007CDB0 D0F30108 */  j          .Llevel_46_8007CF40
/* 8F4F2E4 8007CDB4 00000000 */   nop
.Llevel_46_8007CDB8:
/* 8F4F2E8 8007CDB8 01000524 */  addiu      $a1, $zero, 0x1
/* 8F4F2EC 8007CDBC AFEE000C */  jal        func_8003BABC
/* 8F4F2F0 8007CDC0 21300000 */   addu      $a2, $zero, $zero
/* 8F4F2F4 8007CDC4 00080424 */  addiu      $a0, $zero, 0x800
/* 8F4F2F8 8007CDC8 21300000 */  addu       $a2, $zero, $zero
/* 8F4F2FC 8007CDCC 0000438E */  lw         $v1, 0x0($s2)
/* 8F4F300 8007CDD0 0C00258E */  lw         $a1, 0xC($s1)
/* 8F4F304 8007CDD4 0400508E */  lw         $s0, 0x4($s2)
/* 8F4F308 8007CDD8 1000228E */  lw         $v0, 0x10($s1)
/* 8F4F30C 8007CDDC 23286500 */  subu       $a1, $v1, $a1
/* 8F4F310 8007CDE0 203A010C */  jal        func_8004E880
/* 8F4F314 8007CDE4 23800202 */   subu      $s0, $s0, $v0
/* 8F4F318 8007CDE8 00080424 */  addiu      $a0, $zero, 0x800
/* 8F4F31C 8007CDEC 21280002 */  addu       $a1, $s0, $zero
/* 8F4F320 8007CDF0 21300000 */  addu       $a2, $zero, $zero
/* 8F4F324 8007CDF4 203A010C */  jal        func_8004E880
/* 8F4F328 8007CDF8 450022A2 */   sb        $v0, 0x45($s1)
/* 8F4F32C 8007CDFC D2F30108 */  j          .Llevel_46_8007CF48
/* 8F4F330 8007CE00 440022A2 */   sb        $v0, 0x44($s1)
.Llevel_46_8007CE04:
/* 8F4F334 8007CE04 1000638E */  lw         $v1, 0x10($s3)
/* 8F4F338 8007CE08 00000000 */  nop
/* 8F4F33C 8007CE0C 10006010 */  beqz       $v1, .Llevel_46_8007CE50
/* 8F4F340 8007CE10 00000000 */   nop
/* 8F4F344 8007CE14 1400228E */  lw         $v0, 0x14($s1)
/* 8F4F348 8007CE18 00000000 */  nop
/* 8F4F34C 8007CE1C 0CFE4224 */  addiu      $v0, $v0, -0x1F4
/* 8F4F350 8007CE20 140062AC */  sw         $v0, 0x14($v1)
/* 8F4F354 8007CE24 1800228E */  lw         $v0, 0x18($s1)
/* 8F4F358 8007CE28 00000000 */  nop
/* 8F4F35C 8007CE2C 08004010 */  beqz       $v0, .Llevel_46_8007CE50
/* 8F4F360 8007CE30 21202002 */   addu      $a0, $s1, $zero
/* 8F4F364 8007CE34 01000524 */  addiu      $a1, $zero, 0x1
/* 8F4F368 8007CE38 1000628E */  lw         $v0, 0x10($s3)
/* 8F4F36C 8007CE3C 21300000 */  addu       $a2, $zero, $zero
/* 8F4F370 8007CE40 0000428C */  lw         $v0, 0x0($v0)
/* 8F4F374 8007CE44 21380000 */  addu       $a3, $zero, $zero
/* 8F4F378 8007CE48 9ADA000C */  jal        func_80036A68
/* 8F4F37C 8007CE4C 0C0040AC */   sw        $zero, 0xC($v0)
.Llevel_46_8007CE50:
/* 8F4F380 8007CE50 48002392 */  lbu        $v1, 0x48($s1)
/* 8F4F384 8007CE54 03000224 */  addiu      $v0, $zero, 0x3
.Llevel_46_8007CE58:
/* 8F4F388 8007CE58 3B006210 */  beq        $v1, $v0, .Llevel_46_8007CF48
/* 8F4F38C 8007CE5C 00000000 */   nop
/* 8F4F390 8007CE60 1800228E */  lw         $v0, 0x18($s1)
/* 8F4F394 8007CE64 00000000 */  nop
/* 8F4F398 8007CE68 37004010 */  beqz       $v0, .Llevel_46_8007CF48
/* 8F4F39C 8007CE6C 00000000 */   nop
/* 8F4F3A0 8007CE70 0800628E */  lw         $v0, 0x8($s3)
/* 8F4F3A4 8007CE74 00000000 */  nop
/* 8F4F3A8 8007CE78 03004010 */  beqz       $v0, .Llevel_46_8007CE88
/* 8F4F3AC 8007CE7C 00000000 */   nop
/* 8F4F3B0 8007CE80 D2F30108 */  j          .Llevel_46_8007CF48
/* 8F4F3B4 8007CE84 180020AE */   sw        $zero, 0x18($s1)
.Llevel_46_8007CE88:
/* 8F4F3B8 8007CE88 0400628E */  lw         $v0, 0x4($s3)
/* 8F4F3BC 8007CE8C 00000000 */  nop
/* 8F4F3C0 8007CE90 12004010 */  beqz       $v0, .Llevel_46_8007CEDC
/* 8F4F3C4 8007CE94 04000424 */   addiu     $a0, $zero, 0x4
/* 8F4F3C8 8007CE98 0000428C */  lw         $v0, 0x0($v0)
/* 8F4F3CC 8007CE9C 00000000 */  nop
/* 8F4F3D0 8007CEA0 000040AC */  sw         $zero, 0x0($v0)
/* 8F4F3D4 8007CEA4 0400638E */  lw         $v1, 0x4($s3)
/* 8F4F3D8 8007CEA8 05000224 */  addiu      $v0, $zero, 0x5
/* 8F4F3DC 8007CEAC 490062A0 */  sb         $v0, 0x49($v1)
/* 8F4F3E0 8007CEB0 0400648E */  lw         $a0, 0x4($s3)
/* 8F4F3E4 8007CEB4 D0D3000C */  jal        func_80034F40
/* 8F4F3E8 8007CEB8 04000524 */   addiu     $a1, $zero, 0x4
/* 8F4F3EC 8007CEBC 0400648E */  lw         $a0, 0x4($s3)
/* 8F4F3F0 8007CEC0 00000000 */  nop
/* 8F4F3F4 8007CEC4 48008390 */  lbu        $v1, 0x48($a0)
/* 8F4F3F8 8007CEC8 1D000224 */  addiu      $v0, $zero, 0x1D
/* 8F4F3FC 8007CECC 02006210 */  beq        $v1, $v0, .Llevel_46_8007CED8
/* 8F4F400 8007CED0 04000224 */   addiu     $v0, $zero, 0x4
/* 8F4F404 8007CED4 480082A0 */  sb         $v0, 0x48($a0)
.Llevel_46_8007CED8:
/* 8F4F408 8007CED8 04000424 */  addiu      $a0, $zero, 0x4
.Llevel_46_8007CEDC:
/* 8F4F40C 8007CEDC DB000524 */  addiu      $a1, $zero, 0xDB
/* 8F4F410 8007CEE0 21302002 */  addu       $a2, $s1, $zero
/* 8F4F414 8007CEE4 21380000 */  addu       $a3, $zero, $zero
/* 8F4F418 8007CEE8 C8000224 */  addiu      $v0, $zero, 0xC8
/* 8F4F41C 8007CEEC 1400A2AF */  sw         $v0, 0x14($sp)
/* 8F4F420 8007CEF0 00010224 */  addiu      $v0, $zero, 0x100
/* 8F4F424 8007CEF4 1000A0AF */  sw         $zero, 0x10($sp)
/* 8F4F428 8007CEF8 7AE4000C */  jal        func_800391E8
/* 8F4F42C 8007CEFC 1800A2AF */   sw        $v0, 0x18($sp)
/* 8F4F430 8007CF00 21202002 */  addu       $a0, $s1, $zero
/* 8F4F434 8007CF04 21280000 */  addu       $a1, $zero, $zero
/* 8F4F438 8007CF08 AFEE000C */  jal        func_8003BABC
/* 8F4F43C 8007CF0C 21300000 */   addu      $a2, $zero, $zero
/* 8F4F440 8007CF10 21202002 */  addu       $a0, $s1, $zero
/* 8F4F444 8007CF14 4957010C */  jal        func_80055D24
/* 8F4F448 8007CF18 04000524 */   addiu     $a1, $zero, 0x4
/* 8F4F44C 8007CF1C 3A002392 */  lbu        $v1, 0x3A($s1)
/* 8F4F450 8007CF20 FF000224 */  addiu      $v0, $zero, 0xFF
/* 8F4F454 8007CF24 03006214 */  bne        $v1, $v0, .Llevel_46_8007CF34
/* 8F4F458 8007CF28 00000000 */   nop
/* 8F4F45C 8007CF2C 80EE000C */  jal        func_8003BA00
/* 8F4F460 8007CF30 21202002 */   addu      $a0, $s1, $zero
.Llevel_46_8007CF34:
/* 8F4F464 8007CF34 21202002 */  addu       $a0, $s1, $zero
/* 8F4F468 8007CF38 6EDA000C */  jal        func_800369B8
/* 8F4F46C 8007CF3C 28000524 */   addiu     $a1, $zero, 0x28
.Llevel_46_8007CF40:
/* 8F4F470 8007CF40 C656010C */  jal        func_80055B18
/* 8F4F474 8007CF44 21202002 */   addu      $a0, $s1, $zero
.Llevel_46_8007CF48:
/* 8F4F478 8007CF48 6800BF8F */  lw         $ra, 0x68($sp)
/* 8F4F47C 8007CF4C 6400B58F */  lw         $s5, 0x64($sp)
/* 8F4F480 8007CF50 6000B48F */  lw         $s4, 0x60($sp)
/* 8F4F484 8007CF54 5C00B38F */  lw         $s3, 0x5C($sp)
/* 8F4F488 8007CF58 5800B28F */  lw         $s2, 0x58($sp)
/* 8F4F48C 8007CF5C 5400B18F */  lw         $s1, 0x54($sp)
/* 8F4F490 8007CF60 5000B08F */  lw         $s0, 0x50($sp)
/* 8F4F494 8007CF64 7000BD27 */  addiu      $sp, $sp, 0x70
/* 8F4F498 8007CF68 0800E003 */  jr         $ra
/* 8F4F49C 8007CF6C 00000000 */   nop
.size MobyUpdate_174_level_46, . - MobyUpdate_174_level_46
