.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1002_level_44
/* 8B4D484 80079F54 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 8B4D488 80079F58 21108000 */  addu       $v0, $a0, $zero
/* 8B4D48C 80079F5C 0780053C */  lui        $a1, %hi(D_80070328)
/* 8B4D490 80079F60 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 8B4D494 80079F64 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 8B4D498 80079F68 1800B2AF */  sw         $s2, 0x18($sp)
/* 8B4D49C 80079F6C 1400B1AF */  sw         $s1, 0x14($sp)
/* 8B4D4A0 80079F70 1000B0AF */  sw         $s0, 0x10($sp)
/* 8B4D4A4 80079F74 0000528C */  lw         $s2, 0x0($v0)
/* 8B4D4A8 80079F78 5E3C010C */  jal        func_8004F178
/* 8B4D4AC 80079F7C 0C004424 */   addiu     $a0, $v0, 0xC
/* 8B4D4B0 80079F80 04000524 */  addiu      $a1, $zero, 0x4
/* 8B4D4B4 80079F84 69D6000C */  jal        func_800359A4
/* 8B4D4B8 80079F88 04004426 */   addiu     $a0, $s2, 0x4
/* 8B4D4BC 80079F8C 4D004010 */  beqz       $v0, .Llevel_44_8007A0C4
/* 8B4D4C0 80079F90 00000000 */   nop
/* 8B4D4C4 80079F94 0780113C */  lui        $s1, %hi(D_8006C550)
/* 8B4D4C8 80079F98 50C5318E */  lw         $s1, %lo(D_8006C550)($s1)
/* 8B4D4CC 80079F9C 0780023C */  lui        $v0, %hi(D_8006C704)
/* 8B4D4D0 80079FA0 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 8B4D4D4 80079FA4 0800438E */  lw         $v1, 0x8($s2)
/* 8B4D4D8 80079FA8 2B102202 */  sltu       $v0, $s1, $v0
/* 8B4D4DC 80079FAC 45004010 */  beqz       $v0, .Llevel_44_8007A0C4
/* 8B4D4E0 80079FB0 040043AE */   sw        $v1, 0x4($s2)
/* 8B4D4E4 80079FB4 45003026 */  addiu      $s0, $s1, 0x45
.Llevel_44_80079FB8:
/* 8B4D4E8 80079FB8 F1FF0386 */  lh         $v1, -0xF($s0)
/* 8B4D4EC 80079FBC 0000428E */  lw         $v0, 0x0($s2)
/* 8B4D4F0 80079FC0 00000000 */  nop
/* 8B4D4F4 80079FC4 39006214 */  bne        $v1, $v0, .Llevel_44_8007A0AC
/* 8B4D4F8 80079FC8 00000000 */   nop
/* 8B4D4FC 80079FCC 03000292 */  lbu        $v0, 0x3($s0)
/* 8B4D500 80079FD0 00000000 */  nop
/* 8B4D504 80079FD4 8000422C */  sltiu      $v0, $v0, 0x80
/* 8B4D508 80079FD8 34004014 */  bnez       $v0, .Llevel_44_8007A0AC
/* 8B4D50C 80079FDC 00000000 */   nop
/* 8B4D510 80079FE0 0E000292 */  lbu        $v0, 0xE($s0)
/* 8B4D514 80079FE4 0780033C */  lui        $v1, %hi(D_8006C7C4)
/* 8B4D518 80079FE8 C4C7638C */  lw         $v1, %lo(D_8006C7C4)($v1)
/* 8B4D51C 80079FEC 00000000 */  nop
/* 8B4D520 80079FF0 07106200 */  srav       $v0, $v0, $v1
/* 8B4D524 80079FF4 01004230 */  andi       $v0, $v0, 0x1
/* 8B4D528 80079FF8 2C004010 */  beqz       $v0, .Llevel_44_8007A0AC
/* 8B4D52C 80079FFC 00000000 */   nop
/* 8B4D530 8007A000 0000258E */  lw         $a1, 0x0($s1)
/* 8B4D534 8007A004 0780043C */  lui        $a0, %hi(D_80070328)
/* 8B4D538 8007A008 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 8B4D53C 8007A00C CD3C010C */  jal        func_8004F334
/* 8B4D540 8007A010 00000000 */   nop
/* 8B4D544 8007A014 01604228 */  slti       $v0, $v0, 0x6001
/* 8B4D548 8007A018 24004014 */  bnez       $v0, .Llevel_44_8007A0AC
/* 8B4D54C 8007A01C 00000000 */   nop
/* 8B4D550 8007A020 0000258E */  lw         $a1, 0x0($s1)
/* 8B4D554 8007A024 5E3C010C */  jal        func_8004F178
/* 8B4D558 8007A028 0C002426 */   addiu     $a0, $s1, 0xC
/* 8B4D55C 8007A02C 0957010C */  jal        func_80055C24
/* 8B4D560 8007A030 21202002 */   addu      $a0, $s1, $zero
/* 8B4D564 8007A034 F1FF0286 */  lh         $v0, -0xF($s0)
/* 8B4D568 8007A038 D3FF00AE */  sw         $zero, -0x2D($s0)
/* 8B4D56C 8007A03C 0C0000A2 */  sb         $zero, 0xC($s0)
/* 8B4D570 8007A040 030000A2 */  sb         $zero, 0x3($s0)
/* 8B4D574 8007A044 FDFF00A2 */  sb         $zero, -0x3($s0)
/* 8B4D578 8007A048 80100200 */  sll        $v0, $v0, 2
/* 8B4D57C 8007A04C 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 8B4D580 8007A050 21082200 */  addu       $at, $at, $v0
/* 8B4D584 8007A054 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 8B4D588 8007A058 00000000 */  nop
/* 8B4D58C 8007A05C 3C00428C */  lw         $v0, 0x3C($v0)
/* 8B4D590 8007A060 21202002 */  addu       $a0, $s1, $zero
/* 8B4D594 8007A064 00004390 */  lbu        $v1, 0x0($v0)
/* 8B4D598 8007A068 01000224 */  addiu      $v0, $zero, 0x1
/* 8B4D59C 8007A06C F7FF00A2 */  sb         $zero, -0x9($s0)
/* 8B4D5A0 8007A070 F8FF00A2 */  sb         $zero, -0x8($s0)
/* 8B4D5A4 8007A074 F9FF00A2 */  sb         $zero, -0x7($s0)
/* 8B4D5A8 8007A078 FAFF02A2 */  sb         $v0, -0x6($s0)
/* 8B4D5AC 8007A07C FFFF00A2 */  sb         $zero, -0x1($s0)
/* 8B4D5B0 8007A080 000000A2 */  sb         $zero, 0x0($s0)
/* 8B4D5B4 8007A084 0200632C */  sltiu      $v1, $v1, 0x2
/* 8B4D5B8 8007A088 01006338 */  xori       $v1, $v1, 0x1
/* 8B4D5BC 8007A08C 23180300 */  negu       $v1, $v1
/* 8B4D5C0 8007A090 30006330 */  andi       $v1, $v1, 0x30
/* 8B4D5C4 8007A094 4ED7000C */  jal        func_80035D38
/* 8B4D5C8 8007A098 FBFF03A2 */   sb        $v1, -0x5($s0)
/* 8B4D5CC 8007A09C A758010C */  jal        func_8005629C
/* 8B4D5D0 8007A0A0 21202002 */   addu      $a0, $s1, $zero
/* 8B4D5D4 8007A0A4 31E80108 */  j          .Llevel_44_8007A0C4
/* 8B4D5D8 8007A0A8 00000000 */   nop
.Llevel_44_8007A0AC:
/* 8B4D5DC 8007A0AC 0780023C */  lui        $v0, %hi(D_8006C704)
/* 8B4D5E0 8007A0B0 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 8B4D5E4 8007A0B4 58003126 */  addiu      $s1, $s1, 0x58
/* 8B4D5E8 8007A0B8 2B102202 */  sltu       $v0, $s1, $v0
/* 8B4D5EC 8007A0BC BEFF4014 */  bnez       $v0, .Llevel_44_80079FB8
/* 8B4D5F0 8007A0C0 58001026 */   addiu     $s0, $s0, 0x58
.Llevel_44_8007A0C4:
/* 8B4D5F4 8007A0C4 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 8B4D5F8 8007A0C8 1800B28F */  lw         $s2, 0x18($sp)
/* 8B4D5FC 8007A0CC 1400B18F */  lw         $s1, 0x14($sp)
/* 8B4D600 8007A0D0 1000B08F */  lw         $s0, 0x10($sp)
/* 8B4D604 8007A0D4 2000BD27 */  addiu      $sp, $sp, 0x20
/* 8B4D608 8007A0D8 0800E003 */  jr         $ra
/* 8B4D60C 8007A0DC 00000000 */   nop
.size MobyUpdate_1002_level_44, . - MobyUpdate_1002_level_44
