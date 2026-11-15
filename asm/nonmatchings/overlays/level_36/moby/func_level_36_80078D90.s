.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1002_level_36
/* 78D92C0 80078D90 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 78D92C4 80078D94 21108000 */  addu       $v0, $a0, $zero
/* 78D92C8 80078D98 0780053C */  lui        $a1, %hi(D_80070328)
/* 78D92CC 80078D9C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 78D92D0 80078DA0 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 78D92D4 80078DA4 1800B2AF */  sw         $s2, 0x18($sp)
/* 78D92D8 80078DA8 1400B1AF */  sw         $s1, 0x14($sp)
/* 78D92DC 80078DAC 1000B0AF */  sw         $s0, 0x10($sp)
/* 78D92E0 80078DB0 0000528C */  lw         $s2, 0x0($v0)
/* 78D92E4 80078DB4 5E3C010C */  jal        func_8004F178
/* 78D92E8 80078DB8 0C004424 */   addiu     $a0, $v0, 0xC
/* 78D92EC 80078DBC 04000524 */  addiu      $a1, $zero, 0x4
/* 78D92F0 80078DC0 69D6000C */  jal        func_800359A4
/* 78D92F4 80078DC4 04004426 */   addiu     $a0, $s2, 0x4
/* 78D92F8 80078DC8 4D004010 */  beqz       $v0, .Llevel_36_80078F00
/* 78D92FC 80078DCC 00000000 */   nop
/* 78D9300 80078DD0 0780113C */  lui        $s1, %hi(D_8006C550)
/* 78D9304 80078DD4 50C5318E */  lw         $s1, %lo(D_8006C550)($s1)
/* 78D9308 80078DD8 0780023C */  lui        $v0, %hi(D_8006C704)
/* 78D930C 80078DDC 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 78D9310 80078DE0 0800438E */  lw         $v1, 0x8($s2)
/* 78D9314 80078DE4 2B102202 */  sltu       $v0, $s1, $v0
/* 78D9318 80078DE8 45004010 */  beqz       $v0, .Llevel_36_80078F00
/* 78D931C 80078DEC 040043AE */   sw        $v1, 0x4($s2)
/* 78D9320 80078DF0 45003026 */  addiu      $s0, $s1, 0x45
.Llevel_36_80078DF4:
/* 78D9324 80078DF4 F1FF0386 */  lh         $v1, -0xF($s0)
/* 78D9328 80078DF8 0000428E */  lw         $v0, 0x0($s2)
/* 78D932C 80078DFC 00000000 */  nop
/* 78D9330 80078E00 39006214 */  bne        $v1, $v0, .Llevel_36_80078EE8
/* 78D9334 80078E04 00000000 */   nop
/* 78D9338 80078E08 03000292 */  lbu        $v0, 0x3($s0)
/* 78D933C 80078E0C 00000000 */  nop
/* 78D9340 80078E10 8000422C */  sltiu      $v0, $v0, 0x80
/* 78D9344 80078E14 34004014 */  bnez       $v0, .Llevel_36_80078EE8
/* 78D9348 80078E18 00000000 */   nop
/* 78D934C 80078E1C 0E000292 */  lbu        $v0, 0xE($s0)
/* 78D9350 80078E20 0780033C */  lui        $v1, %hi(D_8006C7C4)
/* 78D9354 80078E24 C4C7638C */  lw         $v1, %lo(D_8006C7C4)($v1)
/* 78D9358 80078E28 00000000 */  nop
/* 78D935C 80078E2C 07106200 */  srav       $v0, $v0, $v1
/* 78D9360 80078E30 01004230 */  andi       $v0, $v0, 0x1
/* 78D9364 80078E34 2C004010 */  beqz       $v0, .Llevel_36_80078EE8
/* 78D9368 80078E38 00000000 */   nop
/* 78D936C 80078E3C 0000258E */  lw         $a1, 0x0($s1)
/* 78D9370 80078E40 0780043C */  lui        $a0, %hi(D_80070328)
/* 78D9374 80078E44 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 78D9378 80078E48 CD3C010C */  jal        func_8004F334
/* 78D937C 80078E4C 00000000 */   nop
/* 78D9380 80078E50 01604228 */  slti       $v0, $v0, 0x6001
/* 78D9384 80078E54 24004014 */  bnez       $v0, .Llevel_36_80078EE8
/* 78D9388 80078E58 00000000 */   nop
/* 78D938C 80078E5C 0000258E */  lw         $a1, 0x0($s1)
/* 78D9390 80078E60 5E3C010C */  jal        func_8004F178
/* 78D9394 80078E64 0C002426 */   addiu     $a0, $s1, 0xC
/* 78D9398 80078E68 0957010C */  jal        func_80055C24
/* 78D939C 80078E6C 21202002 */   addu      $a0, $s1, $zero
/* 78D93A0 80078E70 F1FF0286 */  lh         $v0, -0xF($s0)
/* 78D93A4 80078E74 D3FF00AE */  sw         $zero, -0x2D($s0)
/* 78D93A8 80078E78 0C0000A2 */  sb         $zero, 0xC($s0)
/* 78D93AC 80078E7C 030000A2 */  sb         $zero, 0x3($s0)
/* 78D93B0 80078E80 FDFF00A2 */  sb         $zero, -0x3($s0)
/* 78D93B4 80078E84 80100200 */  sll        $v0, $v0, 2
/* 78D93B8 80078E88 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 78D93BC 80078E8C 21082200 */  addu       $at, $at, $v0
/* 78D93C0 80078E90 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 78D93C4 80078E94 00000000 */  nop
/* 78D93C8 80078E98 3C00428C */  lw         $v0, 0x3C($v0)
/* 78D93CC 80078E9C 21202002 */  addu       $a0, $s1, $zero
/* 78D93D0 80078EA0 00004390 */  lbu        $v1, 0x0($v0)
/* 78D93D4 80078EA4 01000224 */  addiu      $v0, $zero, 0x1
/* 78D93D8 80078EA8 F7FF00A2 */  sb         $zero, -0x9($s0)
/* 78D93DC 80078EAC F8FF00A2 */  sb         $zero, -0x8($s0)
/* 78D93E0 80078EB0 F9FF00A2 */  sb         $zero, -0x7($s0)
/* 78D93E4 80078EB4 FAFF02A2 */  sb         $v0, -0x6($s0)
/* 78D93E8 80078EB8 FFFF00A2 */  sb         $zero, -0x1($s0)
/* 78D93EC 80078EBC 000000A2 */  sb         $zero, 0x0($s0)
/* 78D93F0 80078EC0 0200632C */  sltiu      $v1, $v1, 0x2
/* 78D93F4 80078EC4 01006338 */  xori       $v1, $v1, 0x1
/* 78D93F8 80078EC8 23180300 */  negu       $v1, $v1
/* 78D93FC 80078ECC 30006330 */  andi       $v1, $v1, 0x30
/* 78D9400 80078ED0 4ED7000C */  jal        func_80035D38
/* 78D9404 80078ED4 FBFF03A2 */   sb        $v1, -0x5($s0)
/* 78D9408 80078ED8 A758010C */  jal        func_8005629C
/* 78D940C 80078EDC 21202002 */   addu      $a0, $s1, $zero
/* 78D9410 80078EE0 C0E30108 */  j          .Llevel_36_80078F00
/* 78D9414 80078EE4 00000000 */   nop
.Llevel_36_80078EE8:
/* 78D9418 80078EE8 0780023C */  lui        $v0, %hi(D_8006C704)
/* 78D941C 80078EEC 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 78D9420 80078EF0 58003126 */  addiu      $s1, $s1, 0x58
/* 78D9424 80078EF4 2B102202 */  sltu       $v0, $s1, $v0
/* 78D9428 80078EF8 BEFF4014 */  bnez       $v0, .Llevel_36_80078DF4
/* 78D942C 80078EFC 58001026 */   addiu     $s0, $s0, 0x58
.Llevel_36_80078F00:
/* 78D9430 80078F00 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 78D9434 80078F04 1800B28F */  lw         $s2, 0x18($sp)
/* 78D9438 80078F08 1400B18F */  lw         $s1, 0x14($sp)
/* 78D943C 80078F0C 1000B08F */  lw         $s0, 0x10($sp)
/* 78D9440 80078F10 2000BD27 */  addiu      $sp, $sp, 0x20
/* 78D9444 80078F14 0800E003 */  jr         $ra
/* 78D9448 80078F18 00000000 */   nop
.size MobyUpdate_1002_level_36, . - MobyUpdate_1002_level_36
