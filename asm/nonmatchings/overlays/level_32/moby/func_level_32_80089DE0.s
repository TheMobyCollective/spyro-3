.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_730_level_32
/* 6DF1310 80089DE0 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 6DF1314 80089DE4 3000B0AF */  sw         $s0, 0x30($sp)
/* 6DF1318 80089DE8 21808000 */  addu       $s0, $a0, $zero
/* 6DF131C 80089DEC 3800BFAF */  sw         $ra, 0x38($sp)
/* 6DF1320 80089DF0 3400B1AF */  sw         $s1, 0x34($sp)
/* 6DF1324 80089DF4 0C00028E */  lw         $v0, 0xC($s0)
/* 6DF1328 80089DF8 0000118E */  lw         $s1, 0x0($s0)
/* 6DF132C 80089DFC 00044228 */  slti       $v0, $v0, 0x400
/* 6DF1330 80089E00 0F004014 */  bnez       $v0, .Llevel_32_80089E40
/* 6DF1334 80089E04 00000000 */   nop
/* 6DF1338 80089E08 1000028E */  lw         $v0, 0x10($s0)
/* 6DF133C 80089E0C 00000000 */  nop
/* 6DF1340 80089E10 00044228 */  slti       $v0, $v0, 0x400
/* 6DF1344 80089E14 0A004014 */  bnez       $v0, .Llevel_32_80089E40
/* 6DF1348 80089E18 00000000 */   nop
/* 6DF134C 80089E1C 1400028E */  lw         $v0, 0x14($s0)
/* 6DF1350 80089E20 00000000 */  nop
/* 6DF1354 80089E24 00044228 */  slti       $v0, $v0, 0x400
/* 6DF1358 80089E28 05004014 */  bnez       $v0, .Llevel_32_80089E40
/* 6DF135C 80089E2C 21202002 */   addu      $a0, $s1, $zero
/* 6DF1360 80089E30 69D6000C */  jal        func_800359A4
/* 6DF1364 80089E34 04000524 */   addiu     $a1, $zero, 0x4
/* 6DF1368 80089E38 05004010 */  beqz       $v0, .Llevel_32_80089E50
/* 6DF136C 80089E3C 00000000 */   nop
.Llevel_32_80089E40:
/* 6DF1370 80089E40 C656010C */  jal        func_80055B18
/* 6DF1374 80089E44 21200002 */   addu      $a0, $s0, $zero
/* 6DF1378 80089E48 DE270208 */  j          .Llevel_32_80089F78
/* 6DF137C 80089E4C 00000000 */   nop
.Llevel_32_80089E50:
/* 6DF1380 80089E50 0000228E */  lw         $v0, 0x0($s1)
/* 6DF1384 80089E54 0680053C */  lui        $a1, %hi(D_800658A0)
/* 6DF1388 80089E58 A058A524 */  addiu      $a1, $a1, %lo(D_800658A0)
/* 6DF138C 80089E5C C0100200 */  sll        $v0, $v0, 3
/* 6DF1390 80089E60 F8014230 */  andi       $v0, $v0, 0x1F8
/* 6DF1394 80089E64 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DF1398 80089E68 21082200 */  addu       $at, $at, $v0
/* 6DF139C 80089E6C A0582294 */  lhu        $v0, %lo(D_800658A0)($at)
/* 6DF13A0 80089E70 36000386 */  lh         $v1, 0x36($s0)
/* 6DF13A4 80089E74 00140200 */  sll        $v0, $v0, 16
/* 6DF13A8 80089E78 C3250200 */  sra        $a0, $v0, 23
/* 6DF13AC 80089E7C DA020224 */  addiu      $v0, $zero, 0x2DA
/* 6DF13B0 80089E80 03006210 */  beq        $v1, $v0, .Llevel_32_80089E90
/* 6DF13B4 80089E84 450004A2 */   sb        $a0, 0x45($s0)
/* 6DF13B8 80089E88 40008224 */  addiu      $v0, $a0, 0x40
/* 6DF13BC 80089E8C 450002A2 */  sb         $v0, 0x45($s0)
.Llevel_32_80089E90:
/* 6DF13C0 80089E90 0000228E */  lw         $v0, 0x0($s1)
/* 6DF13C4 80089E94 00000000 */  nop
/* 6DF13C8 80089E98 C0100200 */  sll        $v0, $v0, 3
/* 6DF13CC 80089E9C F8014230 */  andi       $v0, $v0, 0x1F8
/* 6DF13D0 80089EA0 21104500 */  addu       $v0, $v0, $a1
/* 6DF13D4 80089EA4 00004394 */  lhu        $v1, 0x0($v0)
/* 6DF13D8 80089EA8 46000292 */  lbu        $v0, 0x46($s0)
/* 6DF13DC 80089EAC 001C0300 */  sll        $v1, $v1, 16
/* 6DF13E0 80089EB0 40100200 */  sll        $v0, $v0, 1
/* 6DF13E4 80089EB4 0680013C */  lui        $at, %hi(D_80065920)
/* 6DF13E8 80089EB8 21082200 */  addu       $at, $at, $v0
/* 6DF13EC 80089EBC 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 6DF13F0 80089EC0 031E0300 */  sra        $v1, $v1, 24
/* 6DF13F4 80089EC4 18004300 */  mult       $v0, $v1
/* 6DF13F8 80089EC8 12380000 */  mflo       $a3
/* 6DF13FC 80089ECC 03130700 */  sra        $v0, $a3, 12
/* 6DF1400 80089ED0 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DF1404 80089ED4 46000292 */  lbu        $v0, 0x46($s0)
/* 6DF1408 80089ED8 00000000 */  nop
/* 6DF140C 80089EDC 40100200 */  sll        $v0, $v0, 1
/* 6DF1410 80089EE0 21104500 */  addu       $v0, $v0, $a1
/* 6DF1414 80089EE4 00004284 */  lh         $v0, 0x0($v0)
/* 6DF1418 80089EE8 00000000 */  nop
/* 6DF141C 80089EEC 18004300 */  mult       $v0, $v1
/* 6DF1420 80089EF0 1000A627 */  addiu      $a2, $sp, 0x10
/* 6DF1424 80089EF4 0C001026 */  addiu      $s0, $s0, 0xC
/* 6DF1428 80089EF8 1800A0AF */  sw         $zero, 0x18($sp)
/* 6DF142C 80089EFC 12380000 */  mflo       $a3
/* 6DF1430 80089F00 03130700 */  sra        $v0, $a3, 12
/* 6DF1434 80089F04 1400A2AF */  sw         $v0, 0x14($sp)
/* 6DF1438 80089F08 0000228E */  lw         $v0, 0x0($s1)
/* 6DF143C 80089F0C 21200002 */  addu       $a0, $s0, $zero
/* 6DF1440 80089F10 C0100200 */  sll        $v0, $v0, 3
/* 6DF1444 80089F14 F8014230 */  andi       $v0, $v0, 0x1F8
/* 6DF1448 80089F18 0680013C */  lui        $at, %hi(D_80065920)
/* 6DF144C 80089F1C 21082200 */  addu       $at, $at, $v0
/* 6DF1450 80089F20 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 6DF1454 80089F24 21280002 */  addu       $a1, $s0, $zero
/* 6DF1458 80089F28 00140200 */  sll        $v0, $v0, 16
/* 6DF145C 80089F2C 03160200 */  sra        $v0, $v0, 24
/* 6DF1460 80089F30 02004104 */  bgez       $v0, .Llevel_32_80089F3C
/* 6DF1464 80089F34 00000000 */   nop
/* 6DF1468 80089F38 23100200 */  negu       $v0, $v0
.Llevel_32_80089F3C:
/* 6DF146C 80089F3C 23100200 */  negu       $v0, $v0
/* 6DF1470 80089F40 653C010C */  jal        func_8004F194
/* 6DF1474 80089F44 1800A2AF */   sw        $v0, 0x18($sp)
/* 6DF1478 80089F48 21200002 */  addu       $a0, $s0, $zero
/* 6DF147C 80089F4C 21288000 */  addu       $a1, $a0, $zero
/* 6DF1480 80089F50 04003026 */  addiu      $s0, $s1, 0x4
/* 6DF1484 80089F54 653C010C */  jal        func_8004F194
/* 6DF1488 80089F58 21300002 */   addu      $a2, $s0, $zero
/* 6DF148C 80089F5C 21200002 */  addu       $a0, $s0, $zero
/* 6DF1490 80089F60 21280002 */  addu       $a1, $s0, $zero
/* 6DF1494 80089F64 7F3C010C */  jal        func_8004F1FC
/* 6DF1498 80089F68 C0000624 */   addiu     $a2, $zero, 0xC0
/* 6DF149C 80089F6C 21200002 */  addu       $a0, $s0, $zero
/* 6DF14A0 80089F70 443C010C */  jal        func_8004F110
/* 6DF14A4 80089F74 08000524 */   addiu     $a1, $zero, 0x8
.Llevel_32_80089F78:
/* 6DF14A8 80089F78 3800BF8F */  lw         $ra, 0x38($sp)
/* 6DF14AC 80089F7C 3400B18F */  lw         $s1, 0x34($sp)
/* 6DF14B0 80089F80 3000B08F */  lw         $s0, 0x30($sp)
/* 6DF14B4 80089F84 4000BD27 */  addiu      $sp, $sp, 0x40
/* 6DF14B8 80089F88 0800E003 */  jr         $ra
/* 6DF14BC 80089F8C 00000000 */   nop
.size MobyUpdate_730_level_32, . - MobyUpdate_730_level_32
