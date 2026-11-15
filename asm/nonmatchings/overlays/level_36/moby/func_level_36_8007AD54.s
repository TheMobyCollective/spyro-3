.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_122_level_36
/* 78DB284 8007AD54 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 78DB288 8007AD58 2000B0AF */  sw         $s0, 0x20($sp)
/* 78DB28C 8007AD5C 21808000 */  addu       $s0, $a0, $zero
/* 78DB290 8007AD60 2800BFAF */  sw         $ra, 0x28($sp)
/* 78DB294 8007AD64 2400B1AF */  sw         $s1, 0x24($sp)
/* 78DB298 8007AD68 48000292 */  lbu        $v0, 0x48($s0)
/* 78DB29C 8007AD6C 0000118E */  lw         $s1, 0x0($s0)
/* 78DB2A0 8007AD70 0200422C */  sltiu      $v0, $v0, 0x2
/* 78DB2A4 8007AD74 65004010 */  beqz       $v0, .Llevel_36_8007AF0C
/* 78DB2A8 8007AD78 32000224 */   addiu     $v0, $zero, 0x32
/* 78DB2AC 8007AD7C 49000392 */  lbu        $v1, 0x49($s0)
/* 78DB2B0 8007AD80 00000000 */  nop
/* 78DB2B4 8007AD84 03006214 */  bne        $v1, $v0, .Llevel_36_8007AD94
/* 78DB2B8 8007AD88 10000224 */   addiu     $v0, $zero, 0x10
/* 78DB2BC 8007AD8C 370022A2 */  sb         $v0, 0x37($s1)
/* 78DB2C0 8007AD90 490000A2 */  sb         $zero, 0x49($s0)
.Llevel_36_8007AD94:
/* 78DB2C4 8007AD94 1800038E */  lw         $v1, 0x18($s0)
/* 78DB2C8 8007AD98 0200023C */  lui        $v0, (0x20000 >> 16)
/* 78DB2CC 8007AD9C 24106200 */  and        $v0, $v1, $v0
/* 78DB2D0 8007ADA0 25004010 */  beqz       $v0, .Llevel_36_8007AE38
/* 78DB2D4 8007ADA4 21200002 */   addu      $a0, $s0, $zero
/* 78DB2D8 8007ADA8 28002526 */  addiu      $a1, $s1, 0x28
/* 78DB2DC 8007ADAC 01000624 */  addiu      $a2, $zero, 0x1
/* 78DB2E0 8007ADB0 FEE2000C */  jal        func_80038BF8
/* 78DB2E4 8007ADB4 02000724 */   addiu     $a3, $zero, 0x2
/* 78DB2E8 8007ADB8 58020224 */  addiu      $v0, $zero, 0x258
/* 78DB2EC 8007ADBC 2C0022A6 */  sh         $v0, 0x2C($s1)
/* 78DB2F0 8007ADC0 51000292 */  lbu        $v0, 0x51($s0)
/* 78DB2F4 8007ADC4 00000000 */  nop
/* 78DB2F8 8007ADC8 12004014 */  bnez       $v0, .Llevel_36_8007AE14
/* 78DB2FC 8007ADCC 10000424 */   addiu     $a0, $zero, 0x10
/* 78DB300 8007ADD0 21300000 */  addu       $a2, $zero, $zero
/* 78DB304 8007ADD4 0C00038E */  lw         $v1, 0xC($s0)
/* 78DB308 8007ADD8 0780043C */  lui        $a0, %hi(D_80070328)
/* 78DB30C 8007ADDC 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 78DB310 8007ADE0 1000028E */  lw         $v0, 0x10($s0)
/* 78DB314 8007ADE4 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 78DB318 8007ADE8 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 78DB31C 8007ADEC 23206400 */  subu       $a0, $v1, $a0
/* 78DB320 8007ADF0 203A010C */  jal        func_8004E880
/* 78DB324 8007ADF4 23284500 */   subu      $a1, $v0, $a1
/* 78DB328 8007ADF8 21204000 */  addu       $a0, $v0, $zero
/* 78DB32C 8007ADFC 20000624 */  addiu      $a2, $zero, 0x20
/* 78DB330 8007AE00 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 78DB334 8007AE04 3603A590 */  lbu        $a1, %lo(D_80070328 + 0xE)($a1)
/* 78DB338 8007AE08 3ED8000C */  jal        func_800360F8
/* 78DB33C 8007AE0C 40000724 */   addiu     $a3, $zero, 0x40
/* 78DB340 8007AE10 10000424 */  addiu      $a0, $zero, 0x10
.Llevel_36_8007AE14:
/* 78DB344 8007AE14 21280002 */  addu       $a1, $s0, $zero
/* 78DB348 8007AE18 390022A2 */  sb         $v0, 0x39($s1)
/* 78DB34C 8007AE1C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 78DB350 8007AE20 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 78DB354 8007AE24 00010324 */  addiu      $v1, $zero, 0x100
/* 78DB358 8007AE28 09F84000 */  jalr       $v0
/* 78DB35C 8007AE2C 2E0023A6 */   sh        $v1, 0x2E($s1)
/* 78DB360 8007AE30 BCEB0108 */  j          .Llevel_36_8007AEF0
/* 78DB364 8007AE34 21200002 */   addu      $a0, $s0, $zero
.Llevel_36_8007AE38:
/* 78DB368 8007AE38 42006010 */  beqz       $v1, .Llevel_36_8007AF44
/* 78DB36C 8007AE3C 28002526 */   addiu     $a1, $s1, 0x28
/* 78DB370 8007AE40 01000624 */  addiu      $a2, $zero, 0x1
/* 78DB374 8007AE44 FEE2000C */  jal        func_80038BF8
/* 78DB378 8007AE48 02000724 */   addiu     $a3, $zero, 0x2
/* 78DB37C 8007AE4C C8000224 */  addiu      $v0, $zero, 0xC8
/* 78DB380 8007AE50 2C0022A6 */  sh         $v0, 0x2C($s1)
/* 78DB384 8007AE54 51000292 */  lbu        $v0, 0x51($s0)
/* 78DB388 8007AE58 00000000 */  nop
/* 78DB38C 8007AE5C 12004014 */  bnez       $v0, .Llevel_36_8007AEA8
/* 78DB390 8007AE60 10000424 */   addiu     $a0, $zero, 0x10
/* 78DB394 8007AE64 21300000 */  addu       $a2, $zero, $zero
/* 78DB398 8007AE68 0C00038E */  lw         $v1, 0xC($s0)
/* 78DB39C 8007AE6C 0780043C */  lui        $a0, %hi(D_80070328)
/* 78DB3A0 8007AE70 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 78DB3A4 8007AE74 1000028E */  lw         $v0, 0x10($s0)
/* 78DB3A8 8007AE78 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 78DB3AC 8007AE7C 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 78DB3B0 8007AE80 23206400 */  subu       $a0, $v1, $a0
/* 78DB3B4 8007AE84 203A010C */  jal        func_8004E880
/* 78DB3B8 8007AE88 23284500 */   subu      $a1, $v0, $a1
/* 78DB3BC 8007AE8C 21204000 */  addu       $a0, $v0, $zero
/* 78DB3C0 8007AE90 20000624 */  addiu      $a2, $zero, 0x20
/* 78DB3C4 8007AE94 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 78DB3C8 8007AE98 3603A590 */  lbu        $a1, %lo(D_80070328 + 0xE)($a1)
/* 78DB3CC 8007AE9C 3ED8000C */  jal        func_800360F8
/* 78DB3D0 8007AEA0 40000724 */   addiu     $a3, $zero, 0x40
/* 78DB3D4 8007AEA4 10000424 */  addiu      $a0, $zero, 0x10
.Llevel_36_8007AEA8:
/* 78DB3D8 8007AEA8 21280002 */  addu       $a1, $s0, $zero
/* 78DB3DC 8007AEAC 390022A2 */  sb         $v0, 0x39($s1)
/* 78DB3E0 8007AEB0 0780033C */  lui        $v1, %hi(SpawnMoby)
/* 78DB3E4 8007AEB4 E042638C */  lw         $v1, %lo(SpawnMoby)($v1)
/* 78DB3E8 8007AEB8 00010224 */  addiu      $v0, $zero, 0x100
/* 78DB3EC 8007AEBC 09F86000 */  jalr       $v1
/* 78DB3F0 8007AEC0 2E0022A6 */   sh        $v0, 0x2E($s1)
/* 78DB3F4 8007AEC4 1800028E */  lw         $v0, 0x18($s0)
/* 78DB3F8 8007AEC8 1000033C */  lui        $v1, (0x100000 >> 16)
/* 78DB3FC 8007AECC 24104300 */  and        $v0, $v0, $v1
/* 78DB400 8007AED0 07004010 */  beqz       $v0, .Llevel_36_8007AEF0
/* 78DB404 8007AED4 21200002 */   addu      $a0, $s0, $zero
/* 78DB408 8007AED8 2C002296 */  lhu        $v0, 0x2C($s1)
/* 78DB40C 8007AEDC 2E002396 */  lhu        $v1, 0x2E($s1)
/* 78DB410 8007AEE0 C8004224 */  addiu      $v0, $v0, 0xC8
/* 78DB414 8007AEE4 00016324 */  addiu      $v1, $v1, 0x100
/* 78DB418 8007AEE8 2C0022A6 */  sh         $v0, 0x2C($s1)
/* 78DB41C 8007AEEC 2E0023A6 */  sh         $v1, 0x2E($s1)
.Llevel_36_8007AEF0:
/* 78DB420 8007AEF0 02000524 */  addiu      $a1, $zero, 0x2
/* 78DB424 8007AEF4 02000224 */  addiu      $v0, $zero, 0x2
/* 78DB428 8007AEF8 080000AE */  sw         $zero, 0x8($s0)
/* 78DB42C 8007AEFC D0D3000C */  jal        func_80034F40
/* 78DB430 8007AF00 480002A2 */   sb        $v0, 0x48($s0)
/* 78DB434 8007AF04 D1EB0108 */  j          .Llevel_36_8007AF44
/* 78DB438 8007AF08 00000000 */   nop
.Llevel_36_8007AF0C:
/* 78DB43C 8007AF0C 1800028E */  lw         $v0, 0x18($s0)
/* 78DB440 8007AF10 1000033C */  lui        $v1, (0x100000 >> 16)
/* 78DB444 8007AF14 24104300 */  and        $v0, $v0, $v1
/* 78DB448 8007AF18 0A004010 */  beqz       $v0, .Llevel_36_8007AF44
/* 78DB44C 8007AF1C 01000424 */   addiu     $a0, $zero, 0x1
/* 78DB450 8007AF20 03000524 */  addiu      $a1, $zero, 0x3
/* 78DB454 8007AF24 0C000626 */  addiu      $a2, $s0, 0xC
/* 78DB458 8007AF28 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 78DB45C 8007AF2C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 78DB460 8007AF30 1000A727 */  addiu      $a3, $sp, 0x10
/* 78DB464 8007AF34 1000A0AF */  sw         $zero, 0x10($sp)
/* 78DB468 8007AF38 1400A0AF */  sw         $zero, 0x14($sp)
/* 78DB46C 8007AF3C 09F84000 */  jalr       $v0
/* 78DB470 8007AF40 1800A0AF */   sw        $zero, 0x18($sp)
.Llevel_36_8007AF44:
/* 78DB474 8007AF44 48000392 */  lbu        $v1, 0x48($s0)
/* 78DB478 8007AF48 01000224 */  addiu      $v0, $zero, 0x1
/* 78DB47C 8007AF4C 1B006210 */  beq        $v1, $v0, .Llevel_36_8007AFBC
/* 78DB480 8007AF50 02006228 */   slti      $v0, $v1, 0x2
/* 78DB484 8007AF54 05004010 */  beqz       $v0, .Llevel_36_8007AF6C
/* 78DB488 8007AF58 00000000 */   nop
/* 78DB48C 8007AF5C 08006010 */  beqz       $v1, .Llevel_36_8007AF80
/* 78DB490 8007AF60 00000000 */   nop
/* 78DB494 8007AF64 0BEC0108 */  j          .Llevel_36_8007B02C
/* 78DB498 8007AF68 00000000 */   nop
.Llevel_36_8007AF6C:
/* 78DB49C 8007AF6C 05006228 */  slti       $v0, $v1, 0x5
/* 78DB4A0 8007AF70 2E004010 */  beqz       $v0, .Llevel_36_8007B02C
/* 78DB4A4 8007AF74 21200002 */   addu      $a0, $s0, $zero
/* 78DB4A8 8007AF78 FDEB0108 */  j          .Llevel_36_8007AFF4
/* 78DB4AC 8007AF7C 00000000 */   nop
.Llevel_36_8007AF80:
/* 78DB4B0 8007AF80 0780023C */  lui        $v0, %hi(D_8006C770)
/* 78DB4B4 8007AF84 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 78DB4B8 8007AF88 00000000 */  nop
/* 78DB4BC 8007AF8C 27004010 */  beqz       $v0, .Llevel_36_8007B02C
/* 78DB4C0 8007AF90 5A000424 */   addiu     $a0, $zero, 0x5A
/* 78DB4C4 8007AF94 DBD8000C */  jal        func_8003636C
/* 78DB4C8 8007AF98 2C010524 */   addiu     $a1, $zero, 0x12C
/* 78DB4CC 8007AF9C 21200002 */  addu       $a0, $s0, $zero
/* 78DB4D0 8007AFA0 01000524 */  addiu      $a1, $zero, 0x1
/* 78DB4D4 8007AFA4 180022AE */  sw         $v0, 0x18($s1)
/* 78DB4D8 8007AFA8 01000224 */  addiu      $v0, $zero, 0x1
/* 78DB4DC 8007AFAC D0D3000C */  jal        func_80034F40
/* 78DB4E0 8007AFB0 480082A0 */   sb        $v0, 0x48($a0)
/* 78DB4E4 8007AFB4 0BEC0108 */  j          .Llevel_36_8007B02C
/* 78DB4E8 8007AFB8 00000000 */   nop
.Llevel_36_8007AFBC:
/* 78DB4EC 8007AFBC 21200002 */  addu       $a0, $s0, $zero
/* 78DB4F0 8007AFC0 21282002 */  addu       $a1, $s1, $zero
/* 78DB4F4 8007AFC4 5ADC000C */  jal        func_80037168
/* 78DB4F8 8007AFC8 57000624 */   addiu     $a2, $zero, 0x57
/* 78DB4FC 8007AFCC 18002426 */  addiu      $a0, $s1, 0x18
/* 78DB500 8007AFD0 69D6000C */  jal        func_800359A4
/* 78DB504 8007AFD4 04000524 */   addiu     $a1, $zero, 0x4
/* 78DB508 8007AFD8 14004010 */  beqz       $v0, .Llevel_36_8007B02C
/* 78DB50C 8007AFDC 21200002 */   addu      $a0, $s0, $zero
/* 78DB510 8007AFE0 480000A2 */  sb         $zero, 0x48($s0)
/* 78DB514 8007AFE4 D0D3000C */  jal        func_80034F40
/* 78DB518 8007AFE8 21280000 */   addu      $a1, $zero, $zero
/* 78DB51C 8007AFEC 0BEC0108 */  j          .Llevel_36_8007B02C
/* 78DB520 8007AFF0 00000000 */   nop
.Llevel_36_8007AFF4:
/* 78DB524 8007AFF4 65D4000C */  jal        func_80035194
/* 78DB528 8007AFF8 28002526 */   addiu     $a1, $s1, 0x28
/* 78DB52C 8007AFFC 00010324 */  addiu      $v1, $zero, 0x100
/* 78DB530 8007B000 0A004314 */  bne        $v0, $v1, .Llevel_36_8007B02C
/* 78DB534 8007B004 21200002 */   addu      $a0, $s0, $zero
/* 78DB538 8007B008 4957010C */  jal        func_80055D24
/* 78DB53C 8007B00C 04000524 */   addiu     $a1, $zero, 0x4
/* 78DB540 8007B010 21200002 */  addu       $a0, $s0, $zero
/* 78DB544 8007B014 6EDA000C */  jal        func_800369B8
/* 78DB548 8007B018 18000524 */   addiu     $a1, $zero, 0x18
/* 78DB54C 8007B01C 32000224 */  addiu      $v0, $zero, 0x32
/* 78DB550 8007B020 490002A2 */  sb         $v0, 0x49($s0)
/* 78DB554 8007B024 C656010C */  jal        func_80055B18
/* 78DB558 8007B028 21200002 */   addu      $a0, $s0, $zero
.Llevel_36_8007B02C:
/* 78DB55C 8007B02C 2800BF8F */  lw         $ra, 0x28($sp)
/* 78DB560 8007B030 2400B18F */  lw         $s1, 0x24($sp)
/* 78DB564 8007B034 2000B08F */  lw         $s0, 0x20($sp)
/* 78DB568 8007B038 3000BD27 */  addiu      $sp, $sp, 0x30
/* 78DB56C 8007B03C 0800E003 */  jr         $ra
/* 78DB570 8007B040 00000000 */   nop
.size MobyUpdate_122_level_36, . - MobyUpdate_122_level_36
