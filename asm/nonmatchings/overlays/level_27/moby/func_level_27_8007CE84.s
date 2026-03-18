.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_27_8007CE84
/* 63F13B4 8007CE84 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 63F13B8 8007CE88 3800B2AF */  sw         $s2, 0x38($sp)
/* 63F13BC 8007CE8C 21908000 */  addu       $s2, $a0, $zero
/* 63F13C0 8007CE90 4000BFAF */  sw         $ra, 0x40($sp)
/* 63F13C4 8007CE94 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 63F13C8 8007CE98 3400B1AF */  sw         $s1, 0x34($sp)
/* 63F13CC 8007CE9C 3000B0AF */  sw         $s0, 0x30($sp)
/* 63F13D0 8007CEA0 48004392 */  lbu        $v1, 0x48($s2)
/* 63F13D4 8007CEA4 0000538E */  lw         $s3, 0x0($s2)
/* 63F13D8 8007CEA8 05006010 */  beqz       $v1, .Llevel_27_8007CEC0
/* 63F13DC 8007CEAC 01000224 */   addiu     $v0, $zero, 0x1
/* 63F13E0 8007CEB0 27006210 */  beq        $v1, $v0, .Llevel_27_8007CF50
/* 63F13E4 8007CEB4 0C004426 */   addiu     $a0, $s2, 0xC
/* 63F13E8 8007CEB8 3EF40108 */  j          .Llevel_27_8007D0F8
/* 63F13EC 8007CEBC 00000000 */   nop
.Llevel_27_8007CEC0:
/* 63F13F0 8007CEC0 21880000 */  addu       $s1, $zero, $zero
/* 63F13F4 8007CEC4 1000A427 */  addiu      $a0, $sp, 0x10
.Llevel_27_8007CEC8:
/* 63F13F8 8007CEC8 5E3C010C */  jal        func_8004F178
/* 63F13FC 8007CECC 0C004526 */   addiu     $a1, $s2, 0xC
/* 63F1400 8007CED0 21200000 */  addu       $a0, $zero, $zero
/* 63F1404 8007CED4 F7D8000C */  jal        func_800363DC
/* 63F1408 8007CED8 14000524 */   addiu     $a1, $zero, 0x14
/* 63F140C 8007CEDC 21200000 */  addu       $a0, $zero, $zero
/* 63F1410 8007CEE0 14000524 */  addiu      $a1, $zero, 0x14
/* 63F1414 8007CEE4 F7D8000C */  jal        func_800363DC
/* 63F1418 8007CEE8 2000A2AF */   sw        $v0, 0x20($sp)
/* 63F141C 8007CEEC 14000424 */  addiu      $a0, $zero, 0x14
/* 63F1420 8007CEF0 28000524 */  addiu      $a1, $zero, 0x28
/* 63F1424 8007CEF4 DBD8000C */  jal        func_8003636C
/* 63F1428 8007CEF8 2400A2AF */   sw        $v0, 0x24($sp)
/* 63F142C 8007CEFC 01000424 */  addiu      $a0, $zero, 0x1
/* 63F1430 8007CF00 21280000 */  addu       $a1, $zero, $zero
/* 63F1434 8007CF04 1000A627 */  addiu      $a2, $sp, 0x10
/* 63F1438 8007CF08 2000A727 */  addiu      $a3, $sp, 0x20
/* 63F143C 8007CF0C 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 63F1440 8007CF10 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 63F1444 8007CF14 01003126 */  addiu      $s1, $s1, 0x1
/* 63F1448 8007CF18 09F86000 */  jalr       $v1
/* 63F144C 8007CF1C 2800A2AF */   sw        $v0, 0x28($sp)
/* 63F1450 8007CF20 0300222A */  slti       $v0, $s1, 0x3
/* 63F1454 8007CF24 E8FF4014 */  bnez       $v0, .Llevel_27_8007CEC8
/* 63F1458 8007CF28 1000A427 */   addiu     $a0, $sp, 0x10
/* 63F145C 8007CF2C 21206002 */  addu       $a0, $s3, $zero
/* 63F1460 8007CF30 69D6000C */  jal        func_800359A4
/* 63F1464 8007CF34 04000524 */   addiu     $a1, $zero, 0x4
/* 63F1468 8007CF38 6F004010 */  beqz       $v0, .Llevel_27_8007D0F8
/* 63F146C 8007CF3C F0000224 */   addiu     $v0, $zero, 0xF0
/* 63F1470 8007CF40 000062AE */  sw         $v0, 0x0($s3)
/* 63F1474 8007CF44 01000224 */  addiu      $v0, $zero, 0x1
/* 63F1478 8007CF48 3EF40108 */  j          .Llevel_27_8007D0F8
/* 63F147C 8007CF4C 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_27_8007CF50:
/* 63F1480 8007CF50 0780103C */  lui        $s0, %hi(D_8006E020)
/* 63F1484 8007CF54 20E01026 */  addiu      $s0, $s0, %lo(D_8006E020)
/* 63F1488 8007CF58 CD3C010C */  jal        func_8004F334
/* 63F148C 8007CF5C 21280002 */   addu      $a1, $s0, $zero
/* 63F1490 8007CF60 A4064228 */  slti       $v0, $v0, 0x6A4
/* 63F1494 8007CF64 62004014 */  bnez       $v0, .Llevel_27_8007D0F0
/* 63F1498 8007CF68 21300000 */   addu      $a2, $zero, $zero
/* 63F149C 8007CF6C 0C00438E */  lw         $v1, 0xC($s2)
/* 63F14A0 8007CF70 0000048E */  lw         $a0, 0x0($s0)
/* 63F14A4 8007CF74 1000428E */  lw         $v0, 0x10($s2)
/* 63F14A8 8007CF78 0780053C */  lui        $a1, %hi(D_8006E024)
/* 63F14AC 8007CF7C 24E0A58C */  lw         $a1, %lo(D_8006E024)($a1)
/* 63F14B0 8007CF80 23206400 */  subu       $a0, $v1, $a0
/* 63F14B4 8007CF84 203A010C */  jal        func_8004E880
/* 63F14B8 8007CF88 23284500 */   subu      $a1, $v0, $a1
/* 63F14BC 8007CF8C 0780043C */  lui        $a0, %hi(D_8006E040)
/* 63F14C0 8007CF90 40E08494 */  lhu        $a0, %lo(D_8006E040)($a0)
/* 63F14C4 8007CF94 21284000 */  addu       $a1, $v0, $zero
/* 63F14C8 8007CF98 00240400 */  sll        $a0, $a0, 16
/* 63F14CC 8007CF9C 993C010C */  jal        func_8004F264
/* 63F14D0 8007CFA0 03250400 */   sra       $a0, $a0, 20
/* 63F14D4 8007CFA4 28004228 */  slti       $v0, $v0, 0x28
/* 63F14D8 8007CFA8 31004010 */  beqz       $v0, .Llevel_27_8007D070
/* 63F14DC 8007CFAC 1000A427 */   addiu     $a0, $sp, 0x10
/* 63F14E0 8007CFB0 21880000 */  addu       $s1, $zero, $zero
.Llevel_27_8007CFB4:
/* 63F14E4 8007CFB4 5E3C010C */  jal        func_8004F178
/* 63F14E8 8007CFB8 0C004526 */   addiu     $a1, $s2, 0xC
/* 63F14EC 8007CFBC 21200000 */  addu       $a0, $zero, $zero
/* 63F14F0 8007CFC0 F7D8000C */  jal        func_800363DC
/* 63F14F4 8007CFC4 1E000524 */   addiu     $a1, $zero, 0x1E
/* 63F14F8 8007CFC8 21200000 */  addu       $a0, $zero, $zero
/* 63F14FC 8007CFCC 1E000524 */  addiu      $a1, $zero, 0x1E
/* 63F1500 8007CFD0 1000A38F */  lw         $v1, 0x10($sp)
/* 63F1504 8007CFD4 01003126 */  addiu      $s1, $s1, 0x1
/* 63F1508 8007CFD8 21186200 */  addu       $v1, $v1, $v0
/* 63F150C 8007CFDC F7D8000C */  jal        func_800363DC
/* 63F1510 8007CFE0 1000A3AF */   sw        $v1, 0x10($sp)
/* 63F1514 8007CFE4 21200000 */  addu       $a0, $zero, $zero
/* 63F1518 8007CFE8 1400A38F */  lw         $v1, 0x14($sp)
/* 63F151C 8007CFEC 28000524 */  addiu      $a1, $zero, 0x28
/* 63F1520 8007CFF0 21186200 */  addu       $v1, $v1, $v0
/* 63F1524 8007CFF4 F7D8000C */  jal        func_800363DC
/* 63F1528 8007CFF8 1400A3AF */   sw        $v1, 0x14($sp)
/* 63F152C 8007CFFC 21200000 */  addu       $a0, $zero, $zero
/* 63F1530 8007D000 1800A38F */  lw         $v1, 0x18($sp)
/* 63F1534 8007D004 18000524 */  addiu      $a1, $zero, 0x18
/* 63F1538 8007D008 21186200 */  addu       $v1, $v1, $v0
/* 63F153C 8007D00C F7D8000C */  jal        func_800363DC
/* 63F1540 8007D010 1800A3AF */   sw        $v1, 0x18($sp)
/* 63F1544 8007D014 21200000 */  addu       $a0, $zero, $zero
/* 63F1548 8007D018 18000524 */  addiu      $a1, $zero, 0x18
/* 63F154C 8007D01C F7D8000C */  jal        func_800363DC
/* 63F1550 8007D020 2000A2AF */   sw        $v0, 0x20($sp)
/* 63F1554 8007D024 6E000424 */  addiu      $a0, $zero, 0x6E
/* 63F1558 8007D028 AA000524 */  addiu      $a1, $zero, 0xAA
/* 63F155C 8007D02C DBD8000C */  jal        func_8003636C
/* 63F1560 8007D030 2400A2AF */   sw        $v0, 0x24($sp)
/* 63F1564 8007D034 01000424 */  addiu      $a0, $zero, 0x1
/* 63F1568 8007D038 0D000524 */  addiu      $a1, $zero, 0xD
/* 63F156C 8007D03C 1000A627 */  addiu      $a2, $sp, 0x10
/* 63F1570 8007D040 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 63F1574 8007D044 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 63F1578 8007D048 2000A727 */  addiu      $a3, $sp, 0x20
/* 63F157C 8007D04C 09F86000 */  jalr       $v1
/* 63F1580 8007D050 2800A2AF */   sw        $v0, 0x28($sp)
/* 63F1584 8007D054 9171010C */  jal        rand
/* 63F1588 8007D058 21804000 */   addu      $s0, $v0, $zero
/* 63F158C 8007D05C 03004230 */  andi       $v0, $v0, 0x3
/* 63F1590 8007D060 0B0002A2 */  sb         $v0, 0xB($s0)
/* 63F1594 8007D064 0600222A */  slti       $v0, $s1, 0x6
/* 63F1598 8007D068 D2FF4014 */  bnez       $v0, .Llevel_27_8007CFB4
/* 63F159C 8007D06C 1000A427 */   addiu     $a0, $sp, 0x10
.Llevel_27_8007D070:
/* 63F15A0 8007D070 0780053C */  lui        $a1, %hi(D_80070328)
/* 63F15A4 8007D074 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 63F15A8 8007D078 CD3C010C */  jal        func_8004F334
/* 63F15AC 8007D07C 0C004426 */   addiu     $a0, $s2, 0xC
/* 63F15B0 8007D080 C2014228 */  slti       $v0, $v0, 0x1C2
/* 63F15B4 8007D084 07004010 */  beqz       $v0, .Llevel_27_8007D0A4
/* 63F15B8 8007D088 00000000 */   nop
/* 63F15BC 8007D08C 0780023C */  lui        $v0, %hi(D_80070328 + 0x24)
/* 63F15C0 8007D090 4C03428C */  lw         $v0, %lo(D_80070328 + 0x24)($v0)
/* 63F15C4 8007D094 00000000 */  nop
/* 63F15C8 8007D098 0E004234 */  ori        $v0, $v0, 0xE
/* 63F15CC 8007D09C 0780013C */  lui        $at, %hi(D_80070328 + 0x24)
/* 63F15D0 8007D0A0 4C0322AC */  sw         $v0, %lo(D_80070328 + 0x24)($at)
.Llevel_27_8007D0A4:
/* 63F15D4 8007D0A4 0780023C */  lui        $v0, %hi(D_8006C550)
/* 63F15D8 8007D0A8 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 63F15DC 8007D0AC 00000000 */  nop
/* 63F15E0 8007D0B0 48004390 */  lbu        $v1, 0x48($v0)
/* 63F15E4 8007D0B4 0B000224 */  addiu      $v0, $zero, 0xB
/* 63F15E8 8007D0B8 08006214 */  bne        $v1, $v0, .Llevel_27_8007D0DC
/* 63F15EC 8007D0BC 00000000 */   nop
/* 63F15F0 8007D0C0 0000628E */  lw         $v0, 0x0($s3)
/* 63F15F4 8007D0C4 00000000 */  nop
/* 63F15F8 8007D0C8 1F004228 */  slti       $v0, $v0, 0x1F
/* 63F15FC 8007D0CC 04004014 */  bnez       $v0, .Llevel_27_8007D0E0
/* 63F1600 8007D0D0 21206002 */   addu      $a0, $s3, $zero
/* 63F1604 8007D0D4 1E000224 */  addiu      $v0, $zero, 0x1E
/* 63F1608 8007D0D8 000062AE */  sw         $v0, 0x0($s3)
.Llevel_27_8007D0DC:
/* 63F160C 8007D0DC 21206002 */  addu       $a0, $s3, $zero
.Llevel_27_8007D0E0:
/* 63F1610 8007D0E0 69D6000C */  jal        func_800359A4
/* 63F1614 8007D0E4 04000524 */   addiu     $a1, $zero, 0x4
/* 63F1618 8007D0E8 03004010 */  beqz       $v0, .Llevel_27_8007D0F8
/* 63F161C 8007D0EC 00000000 */   nop
.Llevel_27_8007D0F0:
/* 63F1620 8007D0F0 C656010C */  jal        func_80055B18
/* 63F1624 8007D0F4 21204002 */   addu      $a0, $s2, $zero
.Llevel_27_8007D0F8:
/* 63F1628 8007D0F8 4000BF8F */  lw         $ra, 0x40($sp)
/* 63F162C 8007D0FC 3C00B38F */  lw         $s3, 0x3C($sp)
/* 63F1630 8007D100 3800B28F */  lw         $s2, 0x38($sp)
/* 63F1634 8007D104 3400B18F */  lw         $s1, 0x34($sp)
/* 63F1638 8007D108 3000B08F */  lw         $s0, 0x30($sp)
/* 63F163C 8007D10C 4800BD27 */  addiu      $sp, $sp, 0x48
/* 63F1640 8007D110 0800E003 */  jr         $ra
/* 63F1644 8007D114 00000000 */   nop
.size func_level_27_8007CE84, . - func_level_27_8007CE84
