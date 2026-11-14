.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1009_level_23
/* 5AA727C 8008AD4C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 5AA7280 8008AD50 2000B0AF */  sw         $s0, 0x20($sp)
/* 5AA7284 8008AD54 21808000 */  addu       $s0, $a0, $zero
/* 5AA7288 8008AD58 2800BFAF */  sw         $ra, 0x28($sp)
/* 5AA728C 8008AD5C 2400B1AF */  sw         $s1, 0x24($sp)
/* 5AA7290 8008AD60 49000292 */  lbu        $v0, 0x49($s0)
/* 5AA7294 8008AD64 0000118E */  lw         $s1, 0x0($s0)
/* 5AA7298 8008AD68 04004014 */  bnez       $v0, .Llevel_23_8008AD7C
/* 5AA729C 8008AD6C 01000224 */   addiu     $v0, $zero, 0x1
/* 5AA72A0 8008AD70 490002A2 */  sb         $v0, 0x49($s0)
/* 5AA72A4 8008AD74 4957010C */  jal        func_80055D24
/* 5AA72A8 8008AD78 04000524 */   addiu     $a1, $zero, 0x4
.Llevel_23_8008AD7C:
/* 5AA72AC 8008AD7C 0C00228E */  lw         $v0, 0xC($s1)
/* 5AA72B0 8008AD80 00000000 */  nop
/* 5AA72B4 8008AD84 3B004014 */  bnez       $v0, .Llevel_23_8008AE74
/* 5AA72B8 8008AD88 0C002426 */   addiu     $a0, $s1, 0xC
/* 5AA72BC 8008AD8C 0780053C */  lui        $a1, %hi(D_80070328 + 0x48)
/* 5AA72C0 8008AD90 7003A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0x48)
/* 5AA72C4 8008AD94 0000A38C */  lw         $v1, 0x0($a1)
/* 5AA72C8 8008AD98 07000224 */  addiu      $v0, $zero, 0x7
/* 5AA72CC 8008AD9C 31006214 */  bne        $v1, $v0, .Llevel_23_8008AE64
/* 5AA72D0 8008ADA0 0C000426 */   addiu     $a0, $s0, 0xC
/* 5AA72D4 8008ADA4 CD3C010C */  jal        func_8004F334
/* 5AA72D8 8008ADA8 B8FFA524 */   addiu     $a1, $a1, -0x48
/* 5AA72DC 8008ADAC 00044228 */  slti       $v0, $v0, 0x400
/* 5AA72E0 8008ADB0 2C004010 */  beqz       $v0, .Llevel_23_8008AE64
/* 5AA72E4 8008ADB4 00000000 */   nop
/* 5AA72E8 8008ADB8 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 5AA72EC 8008ADBC 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 5AA72F0 8008ADC0 1400028E */  lw         $v0, 0x14($s0)
/* 5AA72F4 8008ADC4 00000000 */  nop
/* 5AA72F8 8008ADC8 2A104300 */  slt        $v0, $v0, $v1
/* 5AA72FC 8008ADCC 25004010 */  beqz       $v0, .Llevel_23_8008AE64
/* 5AA7300 8008ADD0 00000000 */   nop
/* 5AA7304 8008ADD4 0780043C */  lui        $a0, %hi(D_8006E040)
/* 5AA7308 8008ADD8 40E08494 */  lhu        $a0, %lo(D_8006E040)($a0)
/* 5AA730C 8008ADDC 46000592 */  lbu        $a1, 0x46($s0)
/* 5AA7310 8008ADE0 00240400 */  sll        $a0, $a0, 16
/* 5AA7314 8008ADE4 993C010C */  jal        func_8004F264
/* 5AA7318 8008ADE8 03250400 */   sra       $a0, $a0, 20
/* 5AA731C 8008ADEC 40004228 */  slti       $v0, $v0, 0x40
/* 5AA7320 8008ADF0 1C004010 */  beqz       $v0, .Llevel_23_8008AE64
/* 5AA7324 8008ADF4 2C010224 */   addiu     $v0, $zero, 0x12C
/* 5AA7328 8008ADF8 0000238E */  lw         $v1, 0x0($s1)
/* 5AA732C 8008ADFC 20000426 */  addiu      $a0, $s0, 0x20
/* 5AA7330 8008AE00 0C0022AE */  sw         $v0, 0xC($s1)
/* 5AA7334 8008AE04 1000A3AF */  sw         $v1, 0x10($sp)
/* 5AA7338 8008AE08 0400228E */  lw         $v0, 0x4($s1)
/* 5AA733C 8008AE0C 1000A527 */  addiu      $a1, $sp, 0x10
/* 5AA7340 8008AE10 1400A2AF */  sw         $v0, 0x14($sp)
/* 5AA7344 8008AE14 0800228E */  lw         $v0, 0x8($s1)
/* 5AA7348 8008AE18 2130A000 */  addu       $a2, $a1, $zero
/* 5AA734C 8008AE1C 5B3B010C */  jal        func_8004ED6C
/* 5AA7350 8008AE20 1800A2AF */   sw        $v0, 0x18($sp)
/* 5AA7354 8008AE24 0010063C */  lui        $a2, (0x10000400 >> 16)
/* 5AA7358 8008AE28 0004C634 */  ori        $a2, $a2, (0x10000400 & 0xFFFF)
/* 5AA735C 8008AE2C 0780023C */  lui        $v0, %hi(D_80070328 + 0x20C)
/* 5AA7360 8008AE30 3405428C */  lw         $v0, %lo(D_80070328 + 0x20C)($v0)
/* 5AA7364 8008AE34 1000A38F */  lw         $v1, 0x10($sp)
/* 5AA7368 8008AE38 1400A48F */  lw         $a0, 0x14($sp)
/* 5AA736C 8008AE3C 1800A58F */  lw         $a1, 0x18($sp)
/* 5AA7370 8008AE40 25104600 */  or         $v0, $v0, $a2
/* 5AA7374 8008AE44 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 5AA7378 8008AE48 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 5AA737C 8008AE4C 0780013C */  lui        $at, %hi(D_80070328 + 0x21C)
/* 5AA7380 8008AE50 440523AC */  sw         $v1, %lo(D_80070328 + 0x21C)($at)
/* 5AA7384 8008AE54 0780013C */  lui        $at, %hi(D_80070328 + 0x220)
/* 5AA7388 8008AE58 480524AC */  sw         $a0, %lo(D_80070328 + 0x220)($at)
/* 5AA738C 8008AE5C 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 5AA7390 8008AE60 4C0525AC */  sw         $a1, %lo(D_80070328 + 0x224)($at)
.Llevel_23_8008AE64:
/* 5AA7394 8008AE64 0C00228E */  lw         $v0, 0xC($s1)
/* 5AA7398 8008AE68 00000000 */  nop
/* 5AA739C 8008AE6C 03004010 */  beqz       $v0, .Llevel_23_8008AE7C
/* 5AA73A0 8008AE70 0C002426 */   addiu     $a0, $s1, 0xC
.Llevel_23_8008AE74:
/* 5AA73A4 8008AE74 69D6000C */  jal        func_800359A4
/* 5AA73A8 8008AE78 04000524 */   addiu     $a1, $zero, 0x4
.Llevel_23_8008AE7C:
/* 5AA73AC 8008AE7C 2800BF8F */  lw         $ra, 0x28($sp)
/* 5AA73B0 8008AE80 2400B18F */  lw         $s1, 0x24($sp)
/* 5AA73B4 8008AE84 2000B08F */  lw         $s0, 0x20($sp)
/* 5AA73B8 8008AE88 3000BD27 */  addiu      $sp, $sp, 0x30
/* 5AA73BC 8008AE8C 0800E003 */  jr         $ra
/* 5AA73C0 8008AE90 00000000 */   nop
.size MobyUpdate_1009_level_23, . - MobyUpdate_1009_level_23
