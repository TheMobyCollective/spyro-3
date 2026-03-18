.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_37_8007E1C8
/* 7AA9EF8 8007E1C8 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 7AA9EFC 8007E1CC 5000B2AF */  sw         $s2, 0x50($sp)
/* 7AA9F00 8007E1D0 21908000 */  addu       $s2, $a0, $zero
/* 7AA9F04 8007E1D4 6000BFAF */  sw         $ra, 0x60($sp)
/* 7AA9F08 8007E1D8 5C00B5AF */  sw         $s5, 0x5C($sp)
/* 7AA9F0C 8007E1DC 5800B4AF */  sw         $s4, 0x58($sp)
/* 7AA9F10 8007E1E0 5400B3AF */  sw         $s3, 0x54($sp)
/* 7AA9F14 8007E1E4 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 7AA9F18 8007E1E8 4800B0AF */  sw         $s0, 0x48($sp)
/* 7AA9F1C 8007E1EC 48004392 */  lbu        $v1, 0x48($s2)
/* 7AA9F20 8007E1F0 0000538E */  lw         $s3, 0x0($s2)
/* 7AA9F24 8007E1F4 05006010 */  beqz       $v1, .Llevel_37_8007E20C
/* 7AA9F28 8007E1F8 02000224 */   addiu     $v0, $zero, 0x2
/* 7AA9F2C 8007E1FC 74006210 */  beq        $v1, $v0, .Llevel_37_8007E3D0
/* 7AA9F30 8007E200 2000A427 */   addiu     $a0, $sp, 0x20
/* 7AA9F34 8007E204 B0F90108 */  j          .Llevel_37_8007E6C0
/* 7AA9F38 8007E208 03000224 */   addiu     $v0, $zero, 0x3
.Llevel_37_8007E20C:
/* 7AA9F3C 8007E20C 0780023C */  lui        $v0, %hi(D_8006C550)
/* 7AA9F40 8007E210 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 7AA9F44 8007E214 00000000 */  nop
/* 7AA9F48 8007E218 0000508C */  lw         $s0, 0x0($v0)
/* 7AA9F4C 8007E21C 9171010C */  jal        rand
/* 7AA9F50 8007E220 0C005526 */   addiu     $s5, $s2, 0xC
/* 7AA9F54 8007E224 21A04000 */  addu       $s4, $v0, $zero
/* 7AA9F58 8007E228 40060424 */  addiu      $a0, $zero, 0x640
/* 7AA9F5C 8007E22C DBD8000C */  jal        func_8003636C
/* 7AA9F60 8007E230 04420524 */   addiu     $a1, $zero, 0x4204
/* 7AA9F64 8007E234 E23C010C */  jal        func_8004F388
/* 7AA9F68 8007E238 21204000 */   addu      $a0, $v0, $zero
/* 7AA9F6C 8007E23C 40180200 */  sll        $v1, $v0, 1
/* 7AA9F70 8007E240 21186200 */  addu       $v1, $v1, $v0
/* 7AA9F74 8007E244 C0180300 */  sll        $v1, $v1, 3
/* 7AA9F78 8007E248 21186200 */  addu       $v1, $v1, $v0
/* 7AA9F7C 8007E24C FF008432 */  andi       $a0, $s4, 0xFF
/* 7AA9F80 8007E250 40200400 */  sll        $a0, $a0, 1
/* 7AA9F84 8007E254 0680013C */  lui        $at, %hi(D_80065920)
/* 7AA9F88 8007E258 21082400 */  addu       $at, $at, $a0
/* 7AA9F8C 8007E25C 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 7AA9F90 8007E260 80880300 */  sll        $s1, $v1, 2
/* 7AA9F94 8007E264 18005100 */  mult       $v0, $s1
/* 7AA9F98 8007E268 12400000 */  mflo       $t0
/* 7AA9F9C 8007E26C 03130800 */  sra        $v0, $t0, 12
/* 7AA9FA0 8007E270 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AA9FA4 8007E274 0680013C */  lui        $at, %hi(D_800658A0)
/* 7AA9FA8 8007E278 21082400 */  addu       $at, $at, $a0
/* 7AA9FAC 8007E27C A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 7AA9FB0 8007E280 00000000 */  nop
/* 7AA9FB4 8007E284 18005100 */  mult       $v0, $s1
/* 7AA9FB8 8007E288 1800A0AF */  sw         $zero, 0x18($sp)
/* 7AA9FBC 8007E28C 12400000 */  mflo       $t0
/* 7AA9FC0 8007E290 03130800 */  sra        $v0, $t0, 12
/* 7AA9FC4 8007E294 1400A2AF */  sw         $v0, 0x14($sp)
/* 7AA9FC8 8007E298 3800028E */  lw         $v0, 0x38($s0)
/* 7AA9FCC 8007E29C 1000A427 */  addiu      $a0, $sp, 0x10
/* 7AA9FD0 8007E2A0 0C00468C */  lw         $a2, 0xC($v0)
/* 7AA9FD4 8007E2A4 653C010C */  jal        func_8004F194
/* 7AA9FD8 8007E2A8 21288000 */   addu      $a1, $a0, $zero
/* 7AA9FDC 8007E2AC 1800A28F */  lw         $v0, 0x18($sp)
/* 7AA9FE0 8007E2B0 21300000 */  addu       $a2, $zero, $zero
/* 7AA9FE4 8007E2B4 140062AE */  sw         $v0, 0x14($s3)
/* 7AA9FE8 8007E2B8 1000A38F */  lw         $v1, 0x10($sp)
/* 7AA9FEC 8007E2BC 0C00448E */  lw         $a0, 0xC($s2)
/* 7AA9FF0 8007E2C0 1400A28F */  lw         $v0, 0x14($sp)
/* 7AA9FF4 8007E2C4 1000458E */  lw         $a1, 0x10($s2)
/* 7AA9FF8 8007E2C8 23206400 */  subu       $a0, $v1, $a0
/* 7AA9FFC 8007E2CC 203A010C */  jal        func_8004E880
/* 7AAA000 8007E2D0 23284500 */   subu      $a1, $v0, $a1
/* 7AAA004 8007E2D4 21A04000 */  addu       $s4, $v0, $zero
/* 7AAA008 8007E2D8 2120A002 */  addu       $a0, $s5, $zero
/* 7AAA00C 8007E2DC CD3C010C */  jal        func_8004F334
/* 7AAA010 8007E2E0 1000A527 */   addiu     $a1, $sp, 0x10
/* 7AAA014 8007E2E4 08006386 */  lh         $v1, 0x8($s3)
/* 7AAA018 8007E2E8 00000000 */  nop
/* 7AAA01C 8007E2EC 11006014 */  bnez       $v1, .Llevel_37_8007E334
/* 7AAA020 8007E2F0 21884000 */   addu      $s1, $v0, $zero
/* 7AAA024 8007E2F4 21300000 */  addu       $a2, $zero, $zero
/* 7AAA028 8007E2F8 0780103C */  lui        $s0, %hi(D_80070328)
/* 7AAA02C 8007E2FC 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 7AAA030 8007E300 0000038E */  lw         $v1, 0x0($s0)
/* 7AAA034 8007E304 0C00448E */  lw         $a0, 0xC($s2)
/* 7AAA038 8007E308 0780023C */  lui        $v0, %hi(D_80070328 + 4)
/* 7AAA03C 8007E30C 2C03428C */  lw         $v0, %lo(D_80070328 + 4)($v0)
/* 7AAA040 8007E310 1000458E */  lw         $a1, 0x10($s2)
/* 7AAA044 8007E314 23206400 */  subu       $a0, $v1, $a0
/* 7AAA048 8007E318 203A010C */  jal        func_8004E880
/* 7AAA04C 8007E31C 23284500 */   subu      $a1, $v0, $a1
/* 7AAA050 8007E320 21A04000 */  addu       $s4, $v0, $zero
/* 7AAA054 8007E324 2120A002 */  addu       $a0, $s5, $zero
/* 7AAA058 8007E328 CD3C010C */  jal        func_8004F334
/* 7AAA05C 8007E32C 21280002 */   addu      $a1, $s0, $zero
/* 7AAA060 8007E330 21884000 */  addu       $s1, $v0, $zero
.Llevel_37_8007E334:
/* 7AAA064 8007E334 7C010424 */  addiu      $a0, $zero, 0x17C
/* 7AAA068 8007E338 DBD8000C */  jal        func_8003636C
/* 7AAA06C 8007E33C 62020524 */   addiu     $a1, $zero, 0x262
/* 7AAA070 8007E340 40181100 */  sll        $v1, $s1, 1
/* 7AAA074 8007E344 23180300 */  negu       $v1, $v1
/* 7AAA078 8007E348 0A0062A6 */  sh         $v0, 0xA($s3)
/* 7AAA07C 8007E34C FF008232 */  andi       $v0, $s4, 0xFF
/* 7AAA080 8007E350 02006104 */  bgez       $v1, .Llevel_37_8007E35C
/* 7AAA084 8007E354 120062A6 */   sh        $v0, 0x12($s3)
/* 7AAA088 8007E358 07006324 */  addiu      $v1, $v1, 0x7
.Llevel_37_8007E35C:
/* 7AAA08C 8007E35C C3200300 */  sra        $a0, $v1, 3
/* 7AAA090 8007E360 E23C010C */  jal        func_8004F388
/* 7AAA094 8007E364 23200400 */   negu      $a0, $a0
/* 7AAA098 8007E368 6666033C */  lui        $v1, (0x66666667 >> 16)
/* 7AAA09C 8007E36C 08006496 */  lhu        $a0, 0x8($s3)
/* 7AAA0A0 8007E370 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* 7AAA0A4 8007E374 00240400 */  sll        $a0, $a0, 16
/* 7AAA0A8 8007E378 032C0400 */  sra        $a1, $a0, 16
/* 7AAA0AC 8007E37C 1800A300 */  mult       $a1, $v1
/* 7AAA0B0 8007E380 C0100200 */  sll        $v0, $v0, 3
/* 7AAA0B4 8007E384 100062A6 */  sh         $v0, 0x10($s3)
/* 7AAA0B8 8007E388 C3270400 */  sra        $a0, $a0, 31
/* 7AAA0BC 8007E38C 10400000 */  mfhi       $t0
/* 7AAA0C0 8007E390 43180800 */  sra        $v1, $t0, 1
/* 7AAA0C4 8007E394 23186400 */  subu       $v1, $v1, $a0
/* 7AAA0C8 8007E398 80100300 */  sll        $v0, $v1, 2
/* 7AAA0CC 8007E39C 21104300 */  addu       $v0, $v0, $v1
/* 7AAA0D0 8007E3A0 2328A200 */  subu       $a1, $a1, $v0
/* 7AAA0D4 8007E3A4 002C0500 */  sll        $a1, $a1, 16
/* 7AAA0D8 8007E3A8 0700A014 */  bnez       $a1, .Llevel_37_8007E3C8
/* 7AAA0DC 8007E3AC 00000000 */   nop
/* 7AAA0E0 8007E3B0 9171010C */  jal        rand
/* 7AAA0E4 8007E3B4 00000000 */   nop
/* 7AAA0E8 8007E3B8 21204002 */  addu       $a0, $s2, $zero
/* 7AAA0EC 8007E3BC 01004530 */  andi       $a1, $v0, 0x1
/* 7AAA0F0 8007E3C0 AFEE000C */  jal        func_8003BABC
/* 7AAA0F4 8007E3C4 01000624 */   addiu     $a2, $zero, 0x1
.Llevel_37_8007E3C8:
/* 7AAA0F8 8007E3C8 ADF90108 */  j          .Llevel_37_8007E6B4
/* 7AAA0FC 8007E3CC 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_37_8007E3D0:
/* 7AAA100 8007E3D0 5E3C010C */  jal        func_8004F178
/* 7AAA104 8007E3D4 0C004526 */   addiu     $a1, $s2, 0xC
/* 7AAA108 8007E3D8 0A006286 */  lh         $v0, 0xA($s3)
/* 7AAA10C 8007E3DC 0780043C */  lui        $a0, %hi(D_8006C648)
/* 7AAA110 8007E3E0 48C6848C */  lw         $a0, %lo(D_8006C648)($a0)
/* 7AAA114 8007E3E4 00000000 */  nop
/* 7AAA118 8007E3E8 18004400 */  mult       $v0, $a0
/* 7AAA11C 8007E3EC 1400428E */  lw         $v0, 0x14($s2)
/* 7AAA120 8007E3F0 12400000 */  mflo       $t0
/* 7AAA124 8007E3F4 43180800 */  sra        $v1, $t0, 1
/* 7AAA128 8007E3F8 21104300 */  addu       $v0, $v0, $v1
/* 7AAA12C 8007E3FC 140042AE */  sw         $v0, 0x14($s2)
/* 7AAA130 8007E400 10006286 */  lh         $v0, 0x10($s3)
/* 7AAA134 8007E404 00000000 */  nop
/* 7AAA138 8007E408 30004010 */  beqz       $v0, .Llevel_37_8007E4CC
/* 7AAA13C 8007E40C 21184000 */   addu      $v1, $v0, $zero
/* 7AAA140 8007E410 C0100400 */  sll        $v0, $a0, 3
/* 7AAA144 8007E414 23100200 */  negu       $v0, $v0
/* 7AAA148 8007E418 43100200 */  sra        $v0, $v0, 1
/* 7AAA14C 8007E41C 21106200 */  addu       $v0, $v1, $v0
/* 7AAA150 8007E420 100062A6 */  sh         $v0, 0x10($s3)
/* 7AAA154 8007E424 00140200 */  sll        $v0, $v0, 16
/* 7AAA158 8007E428 02004104 */  bgez       $v0, .Llevel_37_8007E434
/* 7AAA15C 8007E42C 00000000 */   nop
/* 7AAA160 8007E430 100060A6 */  sh         $zero, 0x10($s3)
.Llevel_37_8007E434:
/* 7AAA164 8007E434 10006486 */  lh         $a0, 0x10($s3)
/* 7AAA168 8007E438 0780023C */  lui        $v0, %hi(D_8006C648)
/* 7AAA16C 8007E43C 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 7AAA170 8007E440 00000000 */  nop
/* 7AAA174 8007E444 18008200 */  mult       $a0, $v0
/* 7AAA178 8007E448 12006286 */  lh         $v0, 0x12($s3)
/* 7AAA17C 8007E44C 00000000 */  nop
/* 7AAA180 8007E450 40100200 */  sll        $v0, $v0, 1
/* 7AAA184 8007E454 12400000 */  mflo       $t0
/* 7AAA188 8007E458 0680013C */  lui        $at, %hi(D_80065920)
/* 7AAA18C 8007E45C 21082200 */  addu       $at, $at, $v0
/* 7AAA190 8007E460 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 7AAA194 8007E464 43200800 */  sra        $a0, $t0, 1
/* 7AAA198 8007E468 18004400 */  mult       $v0, $a0
/* 7AAA19C 8007E46C 12400000 */  mflo       $t0
/* 7AAA1A0 8007E470 031B0800 */  sra        $v1, $t0, 12
/* 7AAA1A4 8007E474 3000A3AF */  sw         $v1, 0x30($sp)
/* 7AAA1A8 8007E478 12006286 */  lh         $v0, 0x12($s3)
/* 7AAA1AC 8007E47C 00000000 */  nop
/* 7AAA1B0 8007E480 40100200 */  sll        $v0, $v0, 1
/* 7AAA1B4 8007E484 0680013C */  lui        $at, %hi(D_800658A0)
/* 7AAA1B8 8007E488 21082200 */  addu       $at, $at, $v0
/* 7AAA1BC 8007E48C A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 7AAA1C0 8007E490 00000000 */  nop
/* 7AAA1C4 8007E494 18004400 */  mult       $v0, $a0
/* 7AAA1C8 8007E498 3800A0AF */  sw         $zero, 0x38($sp)
/* 7AAA1CC 8007E49C 12400000 */  mflo       $t0
/* 7AAA1D0 8007E4A0 03130800 */  sra        $v0, $t0, 12
/* 7AAA1D4 8007E4A4 3400A2AF */  sw         $v0, 0x34($sp)
/* 7AAA1D8 8007E4A8 0C00428E */  lw         $v0, 0xC($s2)
/* 7AAA1DC 8007E4AC 00000000 */  nop
/* 7AAA1E0 8007E4B0 21104300 */  addu       $v0, $v0, $v1
/* 7AAA1E4 8007E4B4 0C0042AE */  sw         $v0, 0xC($s2)
/* 7AAA1E8 8007E4B8 1000428E */  lw         $v0, 0x10($s2)
/* 7AAA1EC 8007E4BC 3400A38F */  lw         $v1, 0x34($sp)
/* 7AAA1F0 8007E4C0 00000000 */  nop
/* 7AAA1F4 8007E4C4 21104300 */  addu       $v0, $v0, $v1
/* 7AAA1F8 8007E4C8 100042AE */  sw         $v0, 0x10($s2)
.Llevel_37_8007E4CC:
/* 7AAA1FC 8007E4CC 2000B027 */  addiu      $s0, $sp, 0x20
/* 7AAA200 8007E4D0 21200002 */  addu       $a0, $s0, $zero
/* 7AAA204 8007E4D4 0C005126 */  addiu      $s1, $s2, 0xC
/* 7AAA208 8007E4D8 DA60000C */  jal        func_80018368
/* 7AAA20C 8007E4DC 21282002 */   addu      $a1, $s1, $zero
/* 7AAA210 8007E4E0 05004010 */  beqz       $v0, .Llevel_37_8007E4F8
/* 7AAA214 8007E4E4 21202002 */   addu      $a0, $s1, $zero
/* 7AAA218 8007E4E8 5E3C010C */  jal        func_8004F178
/* 7AAA21C 8007E4EC 21280002 */   addu      $a1, $s0, $zero
/* 7AAA220 8007E4F0 03000224 */  addiu      $v0, $zero, 0x3
/* 7AAA224 8007E4F4 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_37_8007E4F8:
/* 7AAA228 8007E4F8 0C00628E */  lw         $v0, 0xC($s3)
/* 7AAA22C 8007E4FC 00000000 */  nop
/* 7AAA230 8007E500 0F004014 */  bnez       $v0, .Llevel_37_8007E540
/* 7AAA234 8007E504 21200002 */   addu      $a0, $s0, $zero
/* 7AAA238 8007E508 5E3C010C */  jal        func_8004F178
/* 7AAA23C 8007E50C 21282002 */   addu      $a1, $s1, $zero
/* 7AAA240 8007E510 01000424 */  addiu      $a0, $zero, 0x1
/* 7AAA244 8007E514 32000524 */  addiu      $a1, $zero, 0x32
/* 7AAA248 8007E518 1400628E */  lw         $v0, 0x14($s3)
/* 7AAA24C 8007E51C 21300002 */  addu       $a2, $s0, $zero
/* 7AAA250 8007E520 2800A2AF */  sw         $v0, 0x28($sp)
/* 7AAA254 8007E524 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7AAA258 8007E528 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7AAA25C 8007E52C 00000000 */  nop
/* 7AAA260 8007E530 09F84000 */  jalr       $v0
/* 7AAA264 8007E534 21380000 */   addu      $a3, $zero, $zero
/* 7AAA268 8007E538 31004010 */  beqz       $v0, .Llevel_37_8007E600
/* 7AAA26C 8007E53C 0C0062AE */   sw        $v0, 0xC($s3)
.Llevel_37_8007E540:
/* 7AAA270 8007E540 1400428E */  lw         $v0, 0x14($s2)
/* 7AAA274 8007E544 1400638E */  lw         $v1, 0x14($s3)
/* 7AAA278 8007E548 50460424 */  addiu      $a0, $zero, 0x4650
/* 7AAA27C 8007E54C 23184300 */  subu       $v1, $v0, $v1
/* 7AAA280 8007E550 2A108300 */  slt        $v0, $a0, $v1
/* 7AAA284 8007E554 03004010 */  beqz       $v0, .Llevel_37_8007E564
/* 7AAA288 8007E558 23188300 */   subu      $v1, $a0, $v1
/* 7AAA28C 8007E55C 50460324 */  addiu      $v1, $zero, 0x4650
/* 7AAA290 8007E560 23188300 */  subu       $v1, $a0, $v1
.Llevel_37_8007E564:
/* 7AAA294 8007E564 40100300 */  sll        $v0, $v1, 1
/* 7AAA298 8007E568 21104300 */  addu       $v0, $v0, $v1
/* 7AAA29C 8007E56C 00110200 */  sll        $v0, $v0, 4
/* 7AAA2A0 8007E570 23104300 */  subu       $v0, $v0, $v1
/* 7AAA2A4 8007E574 C0100200 */  sll        $v0, $v0, 3
/* 7AAA2A8 8007E578 23104300 */  subu       $v0, $v0, $v1
/* 7AAA2AC 8007E57C 80100200 */  sll        $v0, $v0, 2
/* 7AAA2B0 8007E580 1A004400 */  div        $zero, $v0, $a0
/* 7AAA2B4 8007E584 02008014 */  bnez       $a0, .Llevel_37_8007E590
/* 7AAA2B8 8007E588 00000000 */   nop
/* 7AAA2BC 8007E58C 0D000700 */  break      7
.Llevel_37_8007E590:
/* 7AAA2C0 8007E590 FFFF0124 */  addiu      $at, $zero, -0x1
/* 7AAA2C4 8007E594 04008114 */  bne        $a0, $at, .Llevel_37_8007E5A8
/* 7AAA2C8 8007E598 0080013C */   lui       $at, (0x80000000 >> 16)
/* 7AAA2CC 8007E59C 02004114 */  bne        $v0, $at, .Llevel_37_8007E5A8
/* 7AAA2D0 8007E5A0 00000000 */   nop
/* 7AAA2D4 8007E5A4 0D000600 */  break      6
.Llevel_37_8007E5A8:
/* 7AAA2D8 8007E5A8 12180000 */  mflo       $v1
/* 7AAA2DC 8007E5AC 00000000 */  nop
/* 7AAA2E0 8007E5B0 02006104 */  bgez       $v1, .Llevel_37_8007E5BC
/* 7AAA2E4 8007E5B4 00000000 */   nop
/* 7AAA2E8 8007E5B8 03006324 */  addiu      $v1, $v1, 0x3
.Llevel_37_8007E5BC:
/* 7AAA2EC 8007E5BC 83180300 */  sra        $v1, $v1, 2
/* 7AAA2F0 8007E5C0 00016228 */  slti       $v0, $v1, 0x100
/* 7AAA2F4 8007E5C4 02004014 */  bnez       $v0, .Llevel_37_8007E5D0
/* 7AAA2F8 8007E5C8 3000B027 */   addiu     $s0, $sp, 0x30
/* 7AAA2FC 8007E5CC FF000324 */  addiu      $v1, $zero, 0xFF
.Llevel_37_8007E5D0:
/* 7AAA300 8007E5D0 21200002 */  addu       $a0, $s0, $zero
/* 7AAA304 8007E5D4 0C00628E */  lw         $v0, 0xC($s3)
/* 7AAA308 8007E5D8 21282002 */  addu       $a1, $s1, $zero
/* 7AAA30C 8007E5DC 5E3C010C */  jal        func_8004F178
/* 7AAA310 8007E5E0 0A0043A0 */   sb        $v1, 0xA($v0)
/* 7AAA314 8007E5E4 1400628E */  lw         $v0, 0x14($s3)
/* 7AAA318 8007E5E8 00000000 */  nop
/* 7AAA31C 8007E5EC 3800A2AF */  sw         $v0, 0x38($sp)
/* 7AAA320 8007E5F0 0C00648E */  lw         $a0, 0xC($s3)
/* 7AAA324 8007E5F4 21280002 */  addu       $a1, $s0, $zero
/* 7AAA328 8007E5F8 413D010C */  jal        func_8004F504
/* 7AAA32C 8007E5FC 04008424 */   addiu     $a0, $a0, 0x4
.Llevel_37_8007E600:
/* 7AAA330 8007E600 0780033C */  lui        $v1, %hi(D_8006C648)
/* 7AAA334 8007E604 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 7AAA338 8007E608 00000000 */  nop
/* 7AAA33C 8007E60C C0100300 */  sll        $v0, $v1, 3
/* 7AAA340 8007E610 21104300 */  addu       $v0, $v0, $v1
/* 7AAA344 8007E614 40100200 */  sll        $v0, $v0, 1
/* 7AAA348 8007E618 23100200 */  negu       $v0, $v0
/* 7AAA34C 8007E61C 0A006396 */  lhu        $v1, 0xA($s3)
/* 7AAA350 8007E620 43100200 */  sra        $v0, $v0, 1
/* 7AAA354 8007E624 21186200 */  addu       $v1, $v1, $v0
/* 7AAA358 8007E628 0A0063A6 */  sh         $v1, 0xA($s3)
/* 7AAA35C 8007E62C 49004292 */  lbu        $v0, 0x49($s2)
/* 7AAA360 8007E630 00000000 */  nop
/* 7AAA364 8007E634 10004014 */  bnez       $v0, .Llevel_37_8007E678
/* 7AAA368 8007E638 00000000 */   nop
/* 7AAA36C 8007E63C 0C00428E */  lw         $v0, 0xC($s2)
/* 7AAA370 8007E640 00000000 */  nop
/* 7AAA374 8007E644 00044228 */  slti       $v0, $v0, 0x400
/* 7AAA378 8007E648 0B004014 */  bnez       $v0, .Llevel_37_8007E678
/* 7AAA37C 8007E64C 00000000 */   nop
/* 7AAA380 8007E650 1000428E */  lw         $v0, 0x10($s2)
/* 7AAA384 8007E654 00000000 */  nop
/* 7AAA388 8007E658 00044228 */  slti       $v0, $v0, 0x400
/* 7AAA38C 8007E65C 06004014 */  bnez       $v0, .Llevel_37_8007E678
/* 7AAA390 8007E660 00000000 */   nop
/* 7AAA394 8007E664 1400428E */  lw         $v0, 0x14($s2)
/* 7AAA398 8007E668 00000000 */  nop
/* 7AAA39C 8007E66C 00044228 */  slti       $v0, $v0, 0x400
/* 7AAA3A0 8007E670 09004010 */  beqz       $v0, .Llevel_37_8007E698
/* 7AAA3A4 8007E674 21204002 */   addu      $a0, $s2, $zero
.Llevel_37_8007E678:
/* 7AAA3A8 8007E678 0C00648E */  lw         $a0, 0xC($s3)
/* 7AAA3AC 8007E67C 00000000 */  nop
/* 7AAA3B0 8007E680 29008010 */  beqz       $a0, .Llevel_37_8007E728
/* 7AAA3B4 8007E684 00000000 */   nop
/* 7AAA3B8 8007E688 4159010C */  jal        func_80056504
/* 7AAA3BC 8007E68C 00000000 */   nop
/* 7AAA3C0 8007E690 CAF90108 */  j          .Llevel_37_8007E728
/* 7AAA3C4 8007E694 00000000 */   nop
.Llevel_37_8007E698:
/* 7AAA3C8 8007E698 4957010C */  jal        func_80055D24
/* 7AAA3CC 8007E69C 02000524 */   addiu     $a1, $zero, 0x2
/* 7AAA3D0 8007E6A0 0C004426 */  addiu      $a0, $s2, 0xC
/* 7AAA3D4 8007E6A4 6564000C */  jal        func_80019194
/* 7AAA3D8 8007E6A8 F4010524 */   addiu     $a1, $zero, 0x1F4
/* 7AAA3DC 8007E6AC 02004010 */  beqz       $v0, .Llevel_37_8007E6B8
/* 7AAA3E0 8007E6B0 03000224 */   addiu     $v0, $zero, 0x3
.Llevel_37_8007E6B4:
/* 7AAA3E4 8007E6B4 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_37_8007E6B8:
/* 7AAA3E8 8007E6B8 48004392 */  lbu        $v1, 0x48($s2)
/* 7AAA3EC 8007E6BC 03000224 */  addiu      $v0, $zero, 0x3
.Llevel_37_8007E6C0:
/* 7AAA3F0 8007E6C0 1B006214 */  bne        $v1, $v0, .Llevel_37_8007E730
/* 7AAA3F4 8007E6C4 B8020424 */   addiu     $a0, $zero, 0x2B8
/* 7AAA3F8 8007E6C8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7AAA3FC 8007E6CC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7AAA400 8007E6D0 00000000 */  nop
/* 7AAA404 8007E6D4 09F84000 */  jalr       $v0
/* 7AAA408 8007E6D8 21284002 */   addu      $a1, $s2, $zero
/* 7AAA40C 8007E6DC 0C00638E */  lw         $v1, 0xC($s3)
/* 7AAA410 8007E6E0 00000000 */  nop
/* 7AAA414 8007E6E4 04006010 */  beqz       $v1, .Llevel_37_8007E6F8
/* 7AAA418 8007E6E8 21804000 */   addu      $s0, $v0, $zero
/* 7AAA41C 8007E6EC 1E000224 */  addiu      $v0, $zero, 0x1E
/* 7AAA420 8007E6F0 020062A0 */  sb         $v0, 0x2($v1)
/* 7AAA424 8007E6F4 0C0060AE */  sw         $zero, 0xC($s3)
.Llevel_37_8007E6F8:
/* 7AAA428 8007E6F8 0B000012 */  beqz       $s0, .Llevel_37_8007E728
/* 7AAA42C 8007E6FC 21200002 */   addu      $a0, $s0, $zero
/* 7AAA430 8007E700 21280000 */  addu       $a1, $zero, $zero
/* 7AAA434 8007E704 21300000 */  addu       $a2, $zero, $zero
/* 7AAA438 8007E708 30000224 */  addiu      $v0, $zero, 0x30
/* 7AAA43C 8007E70C 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 7AAA440 8007E710 4E0002A2 */  sb         $v0, 0x4E($s0)
/* 7AAA444 8007E714 01000224 */  addiu      $v0, $zero, 0x1
/* 7AAA448 8007E718 AFEE000C */  jal        func_8003BABC
/* 7AAA44C 8007E71C 4B0002A2 */   sb        $v0, 0x4B($s0)
/* 7AAA450 8007E720 05DC000C */  jal        func_80037014
/* 7AAA454 8007E724 21200002 */   addu      $a0, $s0, $zero
.Llevel_37_8007E728:
/* 7AAA458 8007E728 C656010C */  jal        func_80055B18
/* 7AAA45C 8007E72C 21204002 */   addu      $a0, $s2, $zero
.Llevel_37_8007E730:
/* 7AAA460 8007E730 6000BF8F */  lw         $ra, 0x60($sp)
/* 7AAA464 8007E734 5C00B58F */  lw         $s5, 0x5C($sp)
/* 7AAA468 8007E738 5800B48F */  lw         $s4, 0x58($sp)
/* 7AAA46C 8007E73C 5400B38F */  lw         $s3, 0x54($sp)
/* 7AAA470 8007E740 5000B28F */  lw         $s2, 0x50($sp)
/* 7AAA474 8007E744 4C00B18F */  lw         $s1, 0x4C($sp)
/* 7AAA478 8007E748 4800B08F */  lw         $s0, 0x48($sp)
/* 7AAA47C 8007E74C 6800BD27 */  addiu      $sp, $sp, 0x68
/* 7AAA480 8007E750 0800E003 */  jr         $ra
/* 7AAA484 8007E754 00000000 */   nop
.size func_level_37_8007E1C8, . - func_level_37_8007E1C8
