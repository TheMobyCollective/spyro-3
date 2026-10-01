.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_40_80082D2C
/* 7E6E25C 80082D2C B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 7E6E260 80082D30 3400B3AF */  sw         $s3, 0x34($sp)
/* 7E6E264 80082D34 21988000 */  addu       $s3, $a0, $zero
/* 7E6E268 80082D38 3800B4AF */  sw         $s4, 0x38($sp)
/* 7E6E26C 80082D3C 21A0A000 */  addu       $s4, $a1, $zero
/* 7E6E270 80082D40 4400B7AF */  sw         $s7, 0x44($sp)
/* 7E6E274 80082D44 21B8C000 */  addu       $s7, $a2, $zero
/* 7E6E278 80082D48 2800B0AF */  sw         $s0, 0x28($sp)
/* 7E6E27C 80082D4C 2180E000 */  addu       $s0, $a3, $zero
/* 7E6E280 80082D50 4000B6AF */  sw         $s6, 0x40($sp)
/* 7E6E284 80082D54 6400B68F */  lw         $s6, 0x64($sp)
/* 7E6E288 80082D58 21300000 */  addu       $a2, $zero, $zero
/* 7E6E28C 80082D5C 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 7E6E290 80082D60 4800BEAF */  sw         $fp, 0x48($sp)
/* 7E6E294 80082D64 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 7E6E298 80082D68 3000B2AF */  sw         $s2, 0x30($sp)
/* 7E6E29C 80082D6C 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 7E6E2A0 80082D70 0C00638E */  lw         $v1, 0xC($s3)
/* 7E6E2A4 80082D74 0000848E */  lw         $a0, 0x0($s4)
/* 7E6E2A8 80082D78 1000628E */  lw         $v0, 0x10($s3)
/* 7E6E2AC 80082D7C 0400858E */  lw         $a1, 0x4($s4)
/* 7E6E2B0 80082D80 6000B18F */  lw         $s1, 0x60($sp)
/* 7E6E2B4 80082D84 7000BE8F */  lw         $fp, 0x70($sp)
/* 7E6E2B8 80082D88 23206400 */  subu       $a0, $v1, $a0
/* 7E6E2BC 80082D8C 203A010C */  jal        func_8004E880
/* 7E6E2C0 80082D90 23284500 */   subu      $a1, $v0, $a1
/* 7E6E2C4 80082D94 21904000 */  addu       $s2, $v0, $zero
/* 7E6E2C8 80082D98 21200002 */  addu       $a0, $s0, $zero
/* 7E6E2CC 80082D9C 4FD8000C */  jal        SubAngle8
/* 7E6E2D0 80082DA0 FF004532 */   andi      $a1, $s2, 0xFF
/* 7E6E2D4 80082DA4 0C006426 */  addiu      $a0, $s3, 0xC
/* 7E6E2D8 80082DA8 21288002 */  addu       $a1, $s4, $zero
/* 7E6E2DC 80082DAC CD3C010C */  jal        func_8004F334
/* 7E6E2E0 80082DB0 21A84000 */   addu      $s5, $v0, $zero
/* 7E6E2E4 80082DB4 21184000 */  addu       $v1, $v0, $zero
/* 7E6E2E8 80082DB8 0200A106 */  bgez       $s5, .Llevel_40_80082DC4
/* 7E6E2EC 80082DBC 2110A002 */   addu      $v0, $s5, $zero
/* 7E6E2F0 80082DC0 23100200 */  negu       $v0, $v0
.Llevel_40_80082DC4:
/* 7E6E2F4 80082DC4 2A105100 */  slt        $v0, $v0, $s1
/* 7E6E2F8 80082DC8 07004010 */  beqz       $v0, .Llevel_40_80082DE8
/* 7E6E2FC 80082DCC 23107700 */   subu      $v0, $v1, $s7
/* 7E6E300 80082DD0 03004104 */  bgez       $v0, .Llevel_40_80082DE0
/* 7E6E304 80082DD4 C8004228 */   slti      $v0, $v0, 0xC8
/* 7E6E308 80082DD8 2310E302 */  subu       $v0, $s7, $v1
/* 7E6E30C 80082DDC C8004228 */  slti       $v0, $v0, 0xC8
.Llevel_40_80082DE0:
/* 7E6E310 80082DE0 89004014 */  bnez       $v0, .Llevel_40_80083008
/* 7E6E314 80082DE4 00000000 */   nop
.Llevel_40_80082DE8:
/* 7E6E318 80082DE8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 7E6E31C 80082DEC 1200C213 */  beq        $fp, $v0, .Llevel_40_80082E38
/* 7E6E320 80082DF0 00000000 */   nop
/* 7E6E324 80082DF4 FF005032 */  andi       $s0, $s2, 0xFF
/* 7E6E328 80082DF8 21200002 */  addu       $a0, $s0, $zero
/* 7E6E32C 80082DFC 993C010C */  jal        func_8004F264
/* 7E6E330 80082E00 2128C003 */   addu      $a1, $fp, $zero
/* 7E6E334 80082E04 05004228 */  slti       $v0, $v0, 0x5
/* 7E6E338 80082E08 0B004010 */  beqz       $v0, .Llevel_40_80082E38
/* 7E6E33C 80082E0C 2120C003 */   addu      $a0, $fp, $zero
/* 7E6E340 80082E10 4FD8000C */  jal        SubAngle8
/* 7E6E344 80082E14 21280002 */   addu      $a1, $s0, $zero
/* 7E6E348 80082E18 0300A106 */  bgez       $s5, .Llevel_40_80082E28
/* 7E6E34C 80082E1C 00000000 */   nop
/* 7E6E350 80082E20 1A004004 */  bltz       $v0, .Llevel_40_80082E8C
/* 7E6E354 80082E24 00000000 */   nop
.Llevel_40_80082E28:
/* 7E6E358 80082E28 0300A01A */  blez       $s5, .Llevel_40_80082E38
/* 7E6E35C 80082E2C 00000000 */   nop
/* 7E6E360 80082E30 7800401C */  bgtz       $v0, .Llevel_40_80083014
/* 7E6E364 80082E34 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_40_80082E38:
/* 7E6E368 80082E38 7400A88F */  lw         $t0, 0x74($sp)
/* 7E6E36C 80082E3C FF000224 */  addiu      $v0, $zero, 0xFF
/* 7E6E370 80082E40 14000211 */  beq        $t0, $v0, .Llevel_40_80082E94
/* 7E6E374 80082E44 FF005032 */   andi      $s0, $s2, 0xFF
/* 7E6E378 80082E48 7400A58F */  lw         $a1, 0x74($sp)
/* 7E6E37C 80082E4C 993C010C */  jal        func_8004F264
/* 7E6E380 80082E50 21200002 */   addu      $a0, $s0, $zero
/* 7E6E384 80082E54 05004228 */  slti       $v0, $v0, 0x5
/* 7E6E388 80082E58 0E004010 */  beqz       $v0, .Llevel_40_80082E94
/* 7E6E38C 80082E5C 00000000 */   nop
/* 7E6E390 80082E60 7400A48F */  lw         $a0, 0x74($sp)
/* 7E6E394 80082E64 4FD8000C */  jal        SubAngle8
/* 7E6E398 80082E68 21280002 */   addu      $a1, $s0, $zero
/* 7E6E39C 80082E6C 0300A106 */  bgez       $s5, .Llevel_40_80082E7C
/* 7E6E3A0 80082E70 00000000 */   nop
/* 7E6E3A4 80082E74 05004004 */  bltz       $v0, .Llevel_40_80082E8C
/* 7E6E3A8 80082E78 00000000 */   nop
.Llevel_40_80082E7C:
/* 7E6E3AC 80082E7C 0500A01A */  blez       $s5, .Llevel_40_80082E94
/* 7E6E3B0 80082E80 00000000 */   nop
/* 7E6E3B4 80082E84 03004018 */  blez       $v0, .Llevel_40_80082E94
/* 7E6E3B8 80082E88 00000000 */   nop
.Llevel_40_80082E8C:
/* 7E6E3BC 80082E8C 050C0208 */  j          .Llevel_40_80083014
/* 7E6E3C0 80082E90 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_40_80082E94:
/* 7E6E3C4 80082E94 0300A106 */  bgez       $s5, .Llevel_40_80082EA4
/* 7E6E3C8 80082E98 00000000 */   nop
/* 7E6E3CC 80082E9C AA0B0208 */  j          .Llevel_40_80082EA8
/* 7E6E3D0 80082EA0 03005226 */   addiu     $s2, $s2, 0x3
.Llevel_40_80082EA4:
/* 7E6E3D4 80082EA4 FDFF5226 */  addiu      $s2, $s2, -0x3
.Llevel_40_80082EA8:
/* 7E6E3D8 80082EA8 FF004332 */  andi       $v1, $s2, 0xFF
/* 7E6E3DC 80082EAC 40180300 */  sll        $v1, $v1, 1
/* 7E6E3E0 80082EB0 0680013C */  lui        $at, %hi(D_80065920)
/* 7E6E3E4 80082EB4 21082300 */  addu       $at, $at, $v1
/* 7E6E3E8 80082EB8 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 7E6E3EC 80082EBC 00000000 */  nop
/* 7E6E3F0 80082EC0 18005700 */  mult       $v0, $s7
/* 7E6E3F4 80082EC4 0000878E */  lw         $a3, 0x0($s4)
/* 7E6E3F8 80082EC8 12400000 */  mflo       $t0
/* 7E6E3FC 80082ECC 03130800 */  sra        $v0, $t0, 12
/* 7E6E400 80082ED0 2138E200 */  addu       $a3, $a3, $v0
/* 7E6E404 80082ED4 1800A7AF */  sw         $a3, 0x18($sp)
/* 7E6E408 80082ED8 0680013C */  lui        $at, %hi(D_800658A0)
/* 7E6E40C 80082EDC 21082300 */  addu       $at, $at, $v1
/* 7E6E410 80082EE0 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 7E6E414 80082EE4 00000000 */  nop
/* 7E6E418 80082EE8 18005700 */  mult       $v0, $s7
/* 7E6E41C 80082EEC 21300000 */  addu       $a2, $zero, $zero
/* 7E6E420 80082EF0 0400858E */  lw         $a1, 0x4($s4)
/* 7E6E424 80082EF4 12400000 */  mflo       $t0
/* 7E6E428 80082EF8 03130800 */  sra        $v0, $t0, 12
/* 7E6E42C 80082EFC 2128A200 */  addu       $a1, $a1, $v0
/* 7E6E430 80082F00 1C00A5AF */  sw         $a1, 0x1C($sp)
/* 7E6E434 80082F04 0C00648E */  lw         $a0, 0xC($s3)
/* 7E6E438 80082F08 1000628E */  lw         $v0, 0x10($s3)
/* 7E6E43C 80082F0C 2320E400 */  subu       $a0, $a3, $a0
/* 7E6E440 80082F10 203A010C */  jal        func_8004E880
/* 7E6E444 80082F14 2328A200 */   subu      $a1, $a1, $v0
/* 7E6E448 80082F18 21804000 */  addu       $s0, $v0, $zero
/* 7E6E44C 80082F1C 0780033C */  lui        $v1, %hi(D_8006C648)
/* 7E6E450 80082F20 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 7E6E454 80082F24 03000224 */  addiu      $v0, $zero, 0x3
/* 7E6E458 80082F28 04006214 */  bne        $v1, $v0, .Llevel_40_80082F3C
/* 7E6E45C 80082F2C 04000224 */   addiu     $v0, $zero, 0x4
/* 7E6E460 80082F30 43101600 */  sra        $v0, $s6, 1
/* 7E6E464 80082F34 D20B0208 */  j          .Llevel_40_80082F48
/* 7E6E468 80082F38 21B0C202 */   addu      $s6, $s6, $v0
.Llevel_40_80082F3C:
/* 7E6E46C 80082F3C 02006214 */  bne        $v1, $v0, .Llevel_40_80082F48
/* 7E6E470 80082F40 00000000 */   nop
/* 7E6E474 80082F44 40B01600 */  sll        $s6, $s6, 1
.Llevel_40_80082F48:
/* 7E6E478 80082F48 8000A88F */  lw         $t0, 0x80($sp)
/* 7E6E47C 80082F4C 00000000 */  nop
/* 7E6E480 80082F50 08000231 */  andi       $v0, $t0, 0x8
/* 7E6E484 80082F54 1A004010 */  beqz       $v0, .Llevel_40_80082FC0
/* 7E6E488 80082F58 21300000 */   addu      $a2, $zero, $zero
/* 7E6E48C 80082F5C 0000838E */  lw         $v1, 0x0($s4)
/* 7E6E490 80082F60 0C00648E */  lw         $a0, 0xC($s3)
/* 7E6E494 80082F64 0400828E */  lw         $v0, 0x4($s4)
/* 7E6E498 80082F68 1000658E */  lw         $a1, 0x10($s3)
/* 7E6E49C 80082F6C 23206400 */  subu       $a0, $v1, $a0
/* 7E6E4A0 80082F70 203A010C */  jal        func_8004E880
/* 7E6E4A4 80082F74 23284500 */   subu      $a1, $v0, $a1
/* 7E6E4A8 80082F78 21206002 */  addu       $a0, $s3, $zero
/* 7E6E4AC 80082F7C 21284000 */  addu       $a1, $v0, $zero
/* 7E6E4B0 80082F80 6800A68F */  lw         $a2, 0x68($sp)
/* 7E6E4B4 80082F84 21380000 */  addu       $a3, $zero, $zero
/* 7E6E4B8 80082F88 1000A0AF */  sw         $zero, 0x10($sp)
/* 7E6E4BC 80082F8C 17D6000C */  jal        func_8003585C
/* 7E6E4C0 80082F90 1400A0AF */   sw        $zero, 0x14($sp)
/* 7E6E4C4 80082F94 21206002 */  addu       $a0, $s3, $zero
/* 7E6E4C8 80082F98 7800A78F */  lw         $a3, 0x78($sp)
/* 7E6E4CC 80082F9C 7C00A88F */  lw         $t0, 0x7C($sp)
/* 7E6E4D0 80082FA0 21280002 */  addu       $a1, $s0, $zero
/* 7E6E4D4 80082FA4 1000A8AF */  sw         $t0, 0x10($sp)
/* 7E6E4D8 80082FA8 8000A88F */  lw         $t0, 0x80($sp)
/* 7E6E4DC 80082FAC 2130C002 */  addu       $a2, $s6, $zero
/* 7E6E4E0 80082FB0 B8D7000C */  jal        func_80035EE0
/* 7E6E4E4 80082FB4 1400A8AF */   sw        $t0, 0x14($sp)
/* 7E6E4E8 80082FB8 000C0208 */  j          .Llevel_40_80083000
/* 7E6E4EC 80082FBC 00000000 */   nop
.Llevel_40_80082FC0:
/* 7E6E4F0 80082FC0 21206002 */  addu       $a0, $s3, $zero
/* 7E6E4F4 80082FC4 21280002 */  addu       $a1, $s0, $zero
/* 7E6E4F8 80082FC8 6800A68F */  lw         $a2, 0x68($sp)
/* 7E6E4FC 80082FCC 6C00A78F */  lw         $a3, 0x6C($sp)
/* 7E6E500 80082FD0 01000224 */  addiu      $v0, $zero, 0x1
/* 7E6E504 80082FD4 1000A2AF */  sw         $v0, 0x10($sp)
/* 7E6E508 80082FD8 17D6000C */  jal        func_8003585C
/* 7E6E50C 80082FDC 1400A0AF */   sw        $zero, 0x14($sp)
/* 7E6E510 80082FE0 09004010 */  beqz       $v0, .Llevel_40_80083008
/* 7E6E514 80082FE4 21206002 */   addu      $a0, $s3, $zero
/* 7E6E518 80082FE8 8000A88F */  lw         $t0, 0x80($sp)
/* 7E6E51C 80082FEC 7800A68F */  lw         $a2, 0x78($sp)
/* 7E6E520 80082FF0 7C00A78F */  lw         $a3, 0x7C($sp)
/* 7E6E524 80082FF4 2128C002 */  addu       $a1, $s6, $zero
/* 7E6E528 80082FF8 77D7000C */  jal        func_80035DDC
/* 7E6E52C 80082FFC 1000A8AF */   sw        $t0, 0x10($sp)
.Llevel_40_80083000:
/* 7E6E530 80083000 04004014 */  bnez       $v0, .Llevel_40_80083014
/* 7E6E534 80083004 23100200 */   negu      $v0, $v0
.Llevel_40_80083008:
/* 7E6E538 80083008 0200A106 */  bgez       $s5, .Llevel_40_80083014
/* 7E6E53C 8008300C 2110A002 */   addu      $v0, $s5, $zero
/* 7E6E540 80083010 23100200 */  negu       $v0, $v0
.Llevel_40_80083014:
/* 7E6E544 80083014 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 7E6E548 80083018 4800BE8F */  lw         $fp, 0x48($sp)
/* 7E6E54C 8008301C 4400B78F */  lw         $s7, 0x44($sp)
/* 7E6E550 80083020 4000B68F */  lw         $s6, 0x40($sp)
/* 7E6E554 80083024 3C00B58F */  lw         $s5, 0x3C($sp)
/* 7E6E558 80083028 3800B48F */  lw         $s4, 0x38($sp)
/* 7E6E55C 8008302C 3400B38F */  lw         $s3, 0x34($sp)
/* 7E6E560 80083030 3000B28F */  lw         $s2, 0x30($sp)
/* 7E6E564 80083034 2C00B18F */  lw         $s1, 0x2C($sp)
/* 7E6E568 80083038 2800B08F */  lw         $s0, 0x28($sp)
/* 7E6E56C 8008303C 5000BD27 */  addiu      $sp, $sp, 0x50
/* 7E6E570 80083040 0800E003 */  jr         $ra
/* 7E6E574 80083044 00000000 */   nop
.size func_level_40_80082D2C, . - func_level_40_80082D2C
