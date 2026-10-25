.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_728_level_11
/* 3E1E22C 80079CFC A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 3E1E230 80079D00 4800B2AF */  sw         $s2, 0x48($sp)
/* 3E1E234 80079D04 21908000 */  addu       $s2, $a0, $zero
/* 3E1E238 80079D08 5000BFAF */  sw         $ra, 0x50($sp)
/* 3E1E23C 80079D0C 4C00B3AF */  sw         $s3, 0x4C($sp)
/* 3E1E240 80079D10 4400B1AF */  sw         $s1, 0x44($sp)
/* 3E1E244 80079D14 4000B0AF */  sw         $s0, 0x40($sp)
/* 3E1E248 80079D18 0000448E */  lw         $a0, 0x0($s2)
/* 3E1E24C 80079D1C 00000000 */  nop
/* 3E1E250 80079D20 0000838C */  lw         $v1, 0x0($a0)
/* 3E1E254 80079D24 00000000 */  nop
/* 3E1E258 80079D28 40100300 */  sll        $v0, $v1, 1
/* 3E1E25C 80079D2C 21104300 */  addu       $v0, $v0, $v1
/* 3E1E260 80079D30 80100200 */  sll        $v0, $v0, 2
/* 3E1E264 80079D34 23104300 */  subu       $v0, $v0, $v1
/* 3E1E268 80079D38 0780033C */  lui        $v1, %hi(D_8006C550)
/* 3E1E26C 80079D3C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 3E1E270 80079D40 C0100200 */  sll        $v0, $v0, 3
/* 3E1E274 80079D44 21986200 */  addu       $s3, $v1, $v0
/* 3E1E278 80079D48 48006292 */  lbu        $v0, 0x48($s3)
/* 3E1E27C 80079D4C 00000000 */  nop
/* 3E1E280 80079D50 8000422C */  sltiu      $v0, $v0, 0x80
/* 3E1E284 80079D54 05004014 */  bnez       $v0, .Llevel_11_80079D6C
/* 3E1E288 80079D58 00000000 */   nop
/* 3E1E28C 80079D5C C656010C */  jal        func_80055B18
/* 3E1E290 80079D60 21204002 */   addu      $a0, $s2, $zero
/* 3E1E294 80079D64 D2E70108 */  j          .Llevel_11_80079F48
/* 3E1E298 80079D68 00000000 */   nop
.Llevel_11_80079D6C:
/* 3E1E29C 80079D6C 48004392 */  lbu        $v1, 0x48($s2)
/* 3E1E2A0 80079D70 00000000 */  nop
/* 3E1E2A4 80079D74 05006010 */  beqz       $v1, .Llevel_11_80079D8C
/* 3E1E2A8 80079D78 01000224 */   addiu     $v0, $zero, 0x1
/* 3E1E2AC 80079D7C 60006210 */  beq        $v1, $v0, .Llevel_11_80079F00
/* 3E1E2B0 80079D80 00000000 */   nop
/* 3E1E2B4 80079D84 D2E70108 */  j          .Llevel_11_80079F48
/* 3E1E2B8 80079D88 00000000 */   nop
.Llevel_11_80079D8C:
/* 3E1E2BC 80079D8C 3D006392 */  lbu        $v1, 0x3D($s3)
/* 3E1E2C0 80079D90 0400828C */  lw         $v0, 0x4($a0)
/* 3E1E2C4 80079D94 00000000 */  nop
/* 3E1E2C8 80079D98 0B006210 */  beq        $v1, $v0, .Llevel_11_80079DC8
/* 3E1E2CC 80079D9C 2000B127 */   addiu     $s1, $sp, 0x20
/* 3E1E2D0 80079DA0 0800828C */  lw         $v0, 0x8($a0)
/* 3E1E2D4 80079DA4 00000000 */  nop
/* 3E1E2D8 80079DA8 07006210 */  beq        $v1, $v0, .Llevel_11_80079DC8
/* 3E1E2DC 80079DAC 01000224 */   addiu     $v0, $zero, 0x1
/* 3E1E2E0 80079DB0 080040AE */  sw         $zero, 0x8($s2)
/* 3E1E2E4 80079DB4 410040A2 */  sb         $zero, 0x41($s2)
/* 3E1E2E8 80079DB8 4C0040A2 */  sb         $zero, 0x4C($s2)
/* 3E1E2EC 80079DBC 4D0040A2 */  sb         $zero, 0x4D($s2)
/* 3E1E2F0 80079DC0 D2E70108 */  j          .Llevel_11_80079F48
/* 3E1E2F4 80079DC4 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_11_80079DC8:
/* 3E1E2F8 80079DC8 21202002 */  addu       $a0, $s1, $zero
/* 3E1E2FC 80079DCC 46007092 */  lbu        $s0, 0x46($s3)
/* 3E1E300 80079DD0 0C006526 */  addiu      $a1, $s3, 0xC
/* 3E1E304 80079DD4 5E3C010C */  jal        func_8004F178
/* 3E1E308 80079DD8 C0FF1026 */   addiu     $s0, $s0, -0x40
/* 3E1E30C 80079DDC FF001032 */  andi       $s0, $s0, 0xFF
/* 3E1E310 80079DE0 40801000 */  sll        $s0, $s0, 1
/* 3E1E314 80079DE4 0680013C */  lui        $at, %hi(D_80065920)
/* 3E1E318 80079DE8 21083000 */  addu       $at, $at, $s0
/* 3E1E31C 80079DEC 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 3E1E320 80079DF0 00000000 */  nop
/* 3E1E324 80079DF4 00110300 */  sll        $v0, $v1, 4
/* 3E1E328 80079DF8 21104300 */  addu       $v0, $v0, $v1
/* 3E1E32C 80079DFC 80100200 */  sll        $v0, $v0, 2
/* 3E1E330 80079E00 21104300 */  addu       $v0, $v0, $v1
/* 3E1E334 80079E04 80100200 */  sll        $v0, $v0, 2
/* 3E1E338 80079E08 23104300 */  subu       $v0, $v0, $v1
/* 3E1E33C 80079E0C 2000A38F */  lw         $v1, 0x20($sp)
/* 3E1E340 80079E10 C3120200 */  sra        $v0, $v0, 11
/* 3E1E344 80079E14 21186200 */  addu       $v1, $v1, $v0
/* 3E1E348 80079E18 2000A3AF */  sw         $v1, 0x20($sp)
/* 3E1E34C 80079E1C 0680013C */  lui        $at, %hi(D_800658A0)
/* 3E1E350 80079E20 21083000 */  addu       $at, $at, $s0
/* 3E1E354 80079E24 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 3E1E358 80079E28 21206002 */  addu       $a0, $s3, $zero
/* 3E1E35C 80079E2C 00110300 */  sll        $v0, $v1, 4
/* 3E1E360 80079E30 21104300 */  addu       $v0, $v0, $v1
/* 3E1E364 80079E34 80100200 */  sll        $v0, $v0, 2
/* 3E1E368 80079E38 21104300 */  addu       $v0, $v0, $v1
/* 3E1E36C 80079E3C 80100200 */  sll        $v0, $v0, 2
/* 3E1E370 80079E40 23104300 */  subu       $v0, $v0, $v1
/* 3E1E374 80079E44 2400A38F */  lw         $v1, 0x24($sp)
/* 3E1E378 80079E48 C3120200 */  sra        $v0, $v0, 11
/* 3E1E37C 80079E4C 21186200 */  addu       $v1, $v1, $v0
/* 3E1E380 80079E50 2400A3AF */  sw         $v1, 0x24($sp)
/* 3E1E384 80079E54 38006386 */  lh         $v1, 0x38($s3)
/* 3E1E388 80079E58 1400628E */  lw         $v0, 0x14($s3)
/* 3E1E38C 80079E5C 04000524 */  addiu      $a1, $zero, 0x4
/* 3E1E390 80079E60 23104300 */  subu       $v0, $v0, $v1
/* 3E1E394 80079E64 4957010C */  jal        func_80055D24
/* 3E1E398 80079E68 2800A2AF */   sw        $v0, 0x28($sp)
/* 3E1E39C 80079E6C 21206002 */  addu       $a0, $s3, $zero
/* 3E1E3A0 80079E70 02000524 */  addiu      $a1, $zero, 0x2
/* 3E1E3A4 80079E74 C557010C */  jal        func_80055F14
/* 3E1E3A8 80079E78 1000A627 */   addiu     $a2, $sp, 0x10
/* 3E1E3AC 80079E7C 0C004426 */  addiu      $a0, $s2, 0xC
/* 3E1E3B0 80079E80 5E3C010C */  jal        func_8004F178
/* 3E1E3B4 80079E84 21282002 */   addu      $a1, $s1, $zero
/* 3E1E3B8 80079E88 3000B027 */  addiu      $s0, $sp, 0x30
/* 3E1E3BC 80079E8C 21200002 */  addu       $a0, $s0, $zero
/* 3E1E3C0 80079E90 21282002 */  addu       $a1, $s1, $zero
/* 3E1E3C4 80079E94 723C010C */  jal        func_8004F1C8
/* 3E1E3C8 80079E98 1000A627 */   addiu     $a2, $sp, 0x10
/* 3E1E3CC 80079E9C 21200002 */  addu       $a0, $s0, $zero
/* 3E1E3D0 80079EA0 46006292 */  lbu        $v0, 0x46($s3)
/* 3E1E3D4 80079EA4 21280000 */  addu       $a1, $zero, $zero
/* 3E1E3D8 80079EA8 7A004224 */  addiu      $v0, $v0, 0x7A
/* 3E1E3DC 80079EAC 7A3B010C */  jal        func_8004EDE8
/* 3E1E3E0 80079EB0 460042A2 */   sb        $v0, 0x46($s2)
/* 3E1E3E4 80079EB4 21804000 */  addu       $s0, $v0, $zero
/* 3E1E3E8 80079EB8 3000A48F */  lw         $a0, 0x30($sp)
/* 3E1E3EC 80079EBC 3400A58F */  lw         $a1, 0x34($sp)
/* 3E1E3F0 80079EC0 203A010C */  jal        func_8004E880
/* 3E1E3F4 80079EC4 21300000 */   addu      $a2, $zero, $zero
/* 3E1E3F8 80079EC8 46006592 */  lbu        $a1, 0x46($s3)
/* 3E1E3FC 80079ECC 993C010C */  jal        func_8004F264
/* 3E1E400 80079ED0 21204000 */   addu      $a0, $v0, $zero
/* 3E1E404 80079ED4 40004228 */  slti       $v0, $v0, 0x40
/* 3E1E408 80079ED8 03004010 */  beqz       $v0, .Llevel_11_80079EE8
/* 3E1E40C 80079EDC 21200002 */   addu      $a0, $s0, $zero
/* 3E1E410 80079EE0 23801000 */  negu       $s0, $s0
/* 3E1E414 80079EE4 21200002 */  addu       $a0, $s0, $zero
.Llevel_11_80079EE8:
/* 3E1E418 80079EE8 3800A58F */  lw         $a1, 0x38($sp)
/* 3E1E41C 80079EEC 203A010C */  jal        func_8004E880
/* 3E1E420 80079EF0 21300000 */   addu      $a2, $zero, $zero
/* 3E1E424 80079EF4 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 3E1E428 80079EF8 D2E70108 */  j          .Llevel_11_80079F48
/* 3E1E42C 80079EFC 450042A2 */   sb        $v0, 0x45($s2)
.Llevel_11_80079F00:
/* 3E1E430 80079F00 3D006392 */  lbu        $v1, 0x3D($s3)
/* 3E1E434 80079F04 0400828C */  lw         $v0, 0x4($a0)
/* 3E1E438 80079F08 00000000 */  nop
/* 3E1E43C 80079F0C 05006210 */  beq        $v1, $v0, .Llevel_11_80079F24
/* 3E1E440 80079F10 00000000 */   nop
/* 3E1E444 80079F14 0800828C */  lw         $v0, 0x8($a0)
/* 3E1E448 80079F18 00000000 */  nop
/* 3E1E44C 80079F1C 0A006214 */  bne        $v1, $v0, .Llevel_11_80079F48
/* 3E1E450 80079F20 00000000 */   nop
.Llevel_11_80079F24:
/* 3E1E454 80079F24 21204002 */  addu       $a0, $s2, $zero
/* 3E1E458 80079F28 01000524 */  addiu      $a1, $zero, 0x1
/* 3E1E45C 80079F2C 01000324 */  addiu      $v1, $zero, 0x1
/* 3E1E460 80079F30 28000224 */  addiu      $v0, $zero, 0x28
/* 3E1E464 80079F34 410043A2 */  sb         $v1, 0x41($s2)
/* 3E1E468 80079F38 4C0042A2 */  sb         $v0, 0x4C($s2)
/* 3E1E46C 80079F3C 4957010C */  jal        func_80055D24
/* 3E1E470 80079F40 4D0043A2 */   sb        $v1, 0x4D($s2)
/* 3E1E474 80079F44 480040A2 */  sb         $zero, 0x48($s2)
.Llevel_11_80079F48:
/* 3E1E478 80079F48 5000BF8F */  lw         $ra, 0x50($sp)
/* 3E1E47C 80079F4C 4C00B38F */  lw         $s3, 0x4C($sp)
/* 3E1E480 80079F50 4800B28F */  lw         $s2, 0x48($sp)
/* 3E1E484 80079F54 4400B18F */  lw         $s1, 0x44($sp)
/* 3E1E488 80079F58 4000B08F */  lw         $s0, 0x40($sp)
/* 3E1E48C 80079F5C 5800BD27 */  addiu      $sp, $sp, 0x58
/* 3E1E490 80079F60 0800E003 */  jr         $ra
/* 3E1E494 80079F64 00000000 */   nop
.size MobyUpdate_728_level_11, . - MobyUpdate_728_level_11
