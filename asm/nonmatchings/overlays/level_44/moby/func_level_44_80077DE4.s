.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_44_80077DE4
/* 8B4B314 80077DE4 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 8B4B318 80077DE8 2400B1AF */  sw         $s1, 0x24($sp)
/* 8B4B31C 80077DEC 21888000 */  addu       $s1, $a0, $zero
/* 8B4B320 80077DF0 3000BFAF */  sw         $ra, 0x30($sp)
/* 8B4B324 80077DF4 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 8B4B328 80077DF8 2800B2AF */  sw         $s2, 0x28($sp)
/* 8B4B32C 80077DFC 2000B0AF */  sw         $s0, 0x20($sp)
/* 8B4B330 80077E00 0000228E */  lw         $v0, 0x0($s1)
/* 8B4B334 80077E04 00000000 */  nop
/* 8B4B338 80077E08 0000428C */  lw         $v0, 0x0($v0)
/* 8B4B33C 80077E0C 00000000 */  nop
/* 8B4B340 80077E10 03004010 */  beqz       $v0, .Llevel_44_80077E20
/* 8B4B344 80077E14 00000000 */   nop
/* 8B4B348 80077E18 05DC000C */  jal        func_80037014
/* 8B4B34C 80077E1C 00000000 */   nop
.Llevel_44_80077E20:
/* 8B4B350 80077E20 0680023C */  lui        $v0, %hi(D_8006581C)
/* 8B4B354 80077E24 1C58428C */  lw         $v0, %lo(D_8006581C)($v0)
/* 8B4B358 80077E28 00000000 */  nop
/* 8B4B35C 80077E2C 42004018 */  blez       $v0, .Llevel_44_80077F38
/* 8B4B360 80077E30 0C003026 */   addiu     $s0, $s1, 0xC
/* 8B4B364 80077E34 0780053C */  lui        $a1, %hi(D_80070328)
/* 8B4B368 80077E38 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 8B4B36C 80077E3C CD3C010C */  jal        func_8004F334
/* 8B4B370 80077E40 21200002 */   addu      $a0, $s0, $zero
/* 8B4B374 80077E44 0680033C */  lui        $v1, %hi(D_80065810)
/* 8B4B378 80077E48 1058638C */  lw         $v1, %lo(D_80065810)($v1)
/* 8B4B37C 80077E4C 00000000 */  nop
/* 8B4B380 80077E50 2A104300 */  slt        $v0, $v0, $v1
/* 8B4B384 80077E54 38004010 */  beqz       $v0, .Llevel_44_80077F38
/* 8B4B388 80077E58 00000000 */   nop
/* 8B4B38C 80077E5C 1400228E */  lw         $v0, 0x14($s1)
/* 8B4B390 80077E60 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 8B4B394 80077E64 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 8B4B398 80077E68 64014224 */  addiu      $v0, $v0, 0x164
/* 8B4B39C 80077E6C 23186200 */  subu       $v1, $v1, $v0
/* 8B4B3A0 80077E70 0680023C */  lui        $v0, %hi(D_80065818)
/* 8B4B3A4 80077E74 1858428C */  lw         $v0, %lo(D_80065818)($v0)
/* 8B4B3A8 80077E78 02006104 */  bgez       $v1, .Llevel_44_80077E84
/* 8B4B3AC 80077E7C 00000000 */   nop
/* 8B4B3B0 80077E80 23180300 */  negu       $v1, $v1
.Llevel_44_80077E84:
/* 8B4B3B4 80077E84 2A186200 */  slt        $v1, $v1, $v0
/* 8B4B3B8 80077E88 2B006010 */  beqz       $v1, .Llevel_44_80077F38
/* 8B4B3BC 80077E8C 00000000 */   nop
/* 8B4B3C0 80077E90 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 8B4B3C4 80077E94 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 8B4B3C8 80077E98 00000000 */  nop
/* 8B4B3CC 80077E9C 26008010 */  beqz       $a0, .Llevel_44_80077F38
/* 8B4B3D0 80077EA0 0C008424 */   addiu     $a0, $a0, 0xC
/* 8B4B3D4 80077EA4 21280002 */  addu       $a1, $s0, $zero
/* 8B4B3D8 80077EA8 8E4F000C */  jal        func_80013E38
/* 8B4B3DC 80077EAC 04000624 */   addiu     $a2, $zero, 0x4
/* 8B4B3E0 80077EB0 21004010 */  beqz       $v0, .Llevel_44_80077F38
/* 8B4B3E4 80077EB4 00000000 */   nop
/* 8B4B3E8 80077EB8 0780033C */  lui        $v1, %hi(D_8006C65C)
/* 8B4B3EC 80077EBC 5CC6638C */  lw         $v1, %lo(D_8006C65C)($v1)
/* 8B4B3F0 80077EC0 00000000 */  nop
/* 8B4B3F4 80077EC4 0000708C */  lw         $s0, 0x0($v1)
/* 8B4B3F8 80077EC8 00000000 */  nop
/* 8B4B3FC 80077ECC 1400028E */  lw         $v0, 0x14($s0)
/* 8B4B400 80077ED0 00000000 */  nop
/* 8B4B404 80077ED4 09004010 */  beqz       $v0, .Llevel_44_80077EFC
/* 8B4B408 80077ED8 00000000 */   nop
/* 8B4B40C 80077EDC 16005110 */  beq        $v0, $s1, .Llevel_44_80077F38
/* 8B4B410 80077EE0 00000000 */   nop
/* 8B4B414 80077EE4 00000286 */  lh         $v0, 0x0($s0)
/* 8B4B418 80077EE8 00000000 */  nop
/* 8B4B41C 80077EEC 12004018 */  blez       $v0, .Llevel_44_80077F38
/* 8B4B420 80077EF0 00000000 */   nop
/* 8B4B424 80077EF4 CEDF0108 */  j          .Llevel_44_80077F38
/* 8B4B428 80077EF8 000000A6 */   sh        $zero, 0x0($s0)
.Llevel_44_80077EFC:
/* 8B4B42C 80077EFC 09000224 */  addiu      $v0, $zero, 0x9
/* 8B4B430 80077F00 490062A0 */  sb         $v0, 0x49($v1)
/* 8B4B434 80077F04 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 8B4B438 80077F08 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 8B4B43C 80077F0C 02000592 */  lbu        $a1, 0x2($s0)
/* 8B4B440 80077F10 140011AE */  sw         $s1, 0x14($s0)
/* 8B4B444 80077F14 F0EF000C */  jal        func_8003BFC0
/* 8B4B448 80077F18 000000A6 */   sh        $zero, 0x0($s0)
/* 8B4B44C 80077F1C 06004014 */  bnez       $v0, .Llevel_44_80077F38
/* 8B4B450 80077F20 21280000 */   addu      $a1, $zero, $zero
/* 8B4B454 80077F24 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 8B4B458 80077F28 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 8B4B45C 80077F2C AFEE000C */  jal        func_8003BABC
/* 8B4B460 80077F30 21300000 */   addu      $a2, $zero, $zero
/* 8B4B464 80077F34 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_44_80077F38:
/* 8B4B468 80077F38 1800228E */  lw         $v0, 0x18($s1)
/* 8B4B46C 80077F3C 00000000 */  nop
/* 8B4B470 80077F40 50004010 */  beqz       $v0, .Llevel_44_80078084
/* 8B4B474 80077F44 21202002 */   addu      $a0, $s1, $zero
/* 8B4B478 80077F48 21280000 */  addu       $a1, $zero, $zero
/* 8B4B47C 80077F4C AFEE000C */  jal        func_8003BABC
/* 8B4B480 80077F50 21300000 */   addu      $a2, $zero, $zero
/* 8B4B484 80077F54 70000224 */  addiu      $v0, $zero, 0x70
/* 8B4B488 80077F58 490022A2 */  sb         $v0, 0x49($s1)
/* 8B4B48C 80077F5C 21800000 */  addu       $s0, $zero, $zero
/* 8B4B490 80077F60 03001324 */  addiu      $s3, $zero, 0x3
/* 8B4B494 80077F64 01001224 */  addiu      $s2, $zero, 0x1
.Llevel_44_80077F68:
/* 8B4B498 80077F68 0780023C */  lui        $v0, %hi(D_8006C578)
/* 8B4B49C 80077F6C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 8B4B4A0 80077F70 0780033C */  lui        $v1, %hi(D_8006C574)
/* 8B4B4A4 80077F74 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 8B4B4A8 80077F78 00000000 */  nop
/* 8B4B4AC 80077F7C 23104300 */  subu       $v0, $v0, $v1
/* 8B4B4B0 80077F80 15004228 */  slti       $v0, $v0, 0x15
/* 8B4B4B4 80077F84 11004014 */  bnez       $v0, .Llevel_44_80077FCC
/* 8B4B4B8 80077F88 32010424 */   addiu     $a0, $zero, 0x132
/* 8B4B4BC 80077F8C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8B4B4C0 80077F90 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8B4B4C4 80077F94 00000000 */  nop
/* 8B4B4C8 80077F98 09F84000 */  jalr       $v0
/* 8B4B4CC 80077F9C 21282002 */   addu      $a1, $s1, $zero
/* 8B4B4D0 80077FA0 21184000 */  addu       $v1, $v0, $zero
/* 8B4B4D4 80077FA4 0500022A */  slti       $v0, $s0, 0x5
/* 8B4B4D8 80077FA8 03004010 */  beqz       $v0, .Llevel_44_80077FB8
/* 8B4B4DC 80077FAC 00000000 */   nop
/* 8B4B4E0 80077FB0 EFDF0108 */  j          .Llevel_44_80077FBC
/* 8B4B4E4 80077FB4 490073A0 */   sb        $s3, 0x49($v1)
.Llevel_44_80077FB8:
/* 8B4B4E8 80077FB8 3C0072A0 */  sb         $s2, 0x3C($v1)
.Llevel_44_80077FBC:
/* 8B4B4EC 80077FBC 01001026 */  addiu      $s0, $s0, 0x1
/* 8B4B4F0 80077FC0 0C00022A */  slti       $v0, $s0, 0xC
/* 8B4B4F4 80077FC4 E8FF4014 */  bnez       $v0, .Llevel_44_80077F68
/* 8B4B4F8 80077FC8 00000000 */   nop
.Llevel_44_80077FCC:
/* 8B4B4FC 80077FCC 21800000 */  addu       $s0, $zero, $zero
.Llevel_44_80077FD0:
/* 8B4B500 80077FD0 1000A427 */  addiu      $a0, $sp, 0x10
/* 8B4B504 80077FD4 5E3C010C */  jal        func_8004F178
/* 8B4B508 80077FD8 0C002526 */   addiu     $a1, $s1, 0xC
/* 8B4B50C 80077FDC 9171010C */  jal        rand
/* 8B4B510 80077FE0 01001026 */   addiu     $s0, $s0, 0x1
/* 8B4B514 80077FE4 1000A38F */  lw         $v1, 0x10($sp)
/* 8B4B518 80077FE8 FF014230 */  andi       $v0, $v0, 0x1FF
/* 8B4B51C 80077FEC 00016324 */  addiu      $v1, $v1, 0x100
/* 8B4B520 80077FF0 23186200 */  subu       $v1, $v1, $v0
/* 8B4B524 80077FF4 9171010C */  jal        rand
/* 8B4B528 80077FF8 1000A3AF */   sw        $v1, 0x10($sp)
/* 8B4B52C 80077FFC 1400A38F */  lw         $v1, 0x14($sp)
/* 8B4B530 80078000 FF014230 */  andi       $v0, $v0, 0x1FF
/* 8B4B534 80078004 00016324 */  addiu      $v1, $v1, 0x100
/* 8B4B538 80078008 23186200 */  subu       $v1, $v1, $v0
/* 8B4B53C 8007800C 9171010C */  jal        rand
/* 8B4B540 80078010 1400A3AF */   sw        $v1, 0x14($sp)
/* 8B4B544 80078014 01000424 */  addiu      $a0, $zero, 0x1
/* 8B4B548 80078018 02000524 */  addiu      $a1, $zero, 0x2
/* 8B4B54C 8007801C 1000A627 */  addiu      $a2, $sp, 0x10
/* 8B4B550 80078020 21380000 */  addu       $a3, $zero, $zero
/* 8B4B554 80078024 FF014230 */  andi       $v0, $v0, 0x1FF
/* 8B4B558 80078028 1800A38F */  lw         $v1, 0x18($sp)
/* 8B4B55C 8007802C 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 8B4B560 80078030 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 8B4B564 80078034 21186200 */  addu       $v1, $v1, $v0
/* 8B4B568 80078038 09F80001 */  jalr       $t0
/* 8B4B56C 8007803C 1800A3AF */   sw        $v1, 0x18($sp)
/* 8B4B570 80078040 04000424 */  addiu      $a0, $zero, 0x4
/* 8B4B574 80078044 46000524 */  addiu      $a1, $zero, 0x46
/* 8B4B578 80078048 1000A627 */  addiu      $a2, $sp, 0x10
/* 8B4B57C 8007804C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8B4B580 80078050 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8B4B584 80078054 00000000 */  nop
/* 8B4B588 80078058 09F84000 */  jalr       $v0
/* 8B4B58C 8007805C 18000724 */   addiu     $a3, $zero, 0x18
/* 8B4B590 80078060 0400022A */  slti       $v0, $s0, 0x4
/* 8B4B594 80078064 DAFF4014 */  bnez       $v0, .Llevel_44_80077FD0
/* 8B4B598 80078068 21202002 */   addu      $a0, $s1, $zero
/* 8B4B59C 8007806C 21280000 */  addu       $a1, $zero, $zero
/* 8B4B5A0 80078070 21300000 */  addu       $a2, $zero, $zero
/* 8B4B5A4 80078074 9ADA000C */  jal        func_80036A68
/* 8B4B5A8 80078078 21380000 */   addu      $a3, $zero, $zero
/* 8B4B5AC 8007807C C656010C */  jal        func_80055B18
/* 8B4B5B0 80078080 21202002 */   addu      $a0, $s1, $zero
.Llevel_44_80078084:
/* 8B4B5B4 80078084 3000BF8F */  lw         $ra, 0x30($sp)
/* 8B4B5B8 80078088 2C00B38F */  lw         $s3, 0x2C($sp)
/* 8B4B5BC 8007808C 2800B28F */  lw         $s2, 0x28($sp)
/* 8B4B5C0 80078090 2400B18F */  lw         $s1, 0x24($sp)
/* 8B4B5C4 80078094 2000B08F */  lw         $s0, 0x20($sp)
/* 8B4B5C8 80078098 3800BD27 */  addiu      $sp, $sp, 0x38
/* 8B4B5CC 8007809C 0800E003 */  jr         $ra
/* 8B4B5D0 800780A0 00000000 */   nop
.size func_level_44_80077DE4, . - func_level_44_80077DE4
