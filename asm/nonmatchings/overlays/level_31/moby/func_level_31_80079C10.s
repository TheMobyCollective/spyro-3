.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1002_level_31
/* 6A94940 80079C10 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 6A94944 80079C14 21108000 */  addu       $v0, $a0, $zero
/* 6A94948 80079C18 0780053C */  lui        $a1, %hi(D_80070328)
/* 6A9494C 80079C1C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 6A94950 80079C20 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 6A94954 80079C24 1800B2AF */  sw         $s2, 0x18($sp)
/* 6A94958 80079C28 1400B1AF */  sw         $s1, 0x14($sp)
/* 6A9495C 80079C2C 1000B0AF */  sw         $s0, 0x10($sp)
/* 6A94960 80079C30 0000528C */  lw         $s2, 0x0($v0)
/* 6A94964 80079C34 5E3C010C */  jal        func_8004F178
/* 6A94968 80079C38 0C004424 */   addiu     $a0, $v0, 0xC
/* 6A9496C 80079C3C 04000524 */  addiu      $a1, $zero, 0x4
/* 6A94970 80079C40 69D6000C */  jal        func_800359A4
/* 6A94974 80079C44 04004426 */   addiu     $a0, $s2, 0x4
/* 6A94978 80079C48 4D004010 */  beqz       $v0, .Llevel_31_80079D80
/* 6A9497C 80079C4C 00000000 */   nop
/* 6A94980 80079C50 0780113C */  lui        $s1, %hi(D_8006C550)
/* 6A94984 80079C54 50C5318E */  lw         $s1, %lo(D_8006C550)($s1)
/* 6A94988 80079C58 0780023C */  lui        $v0, %hi(D_8006C704)
/* 6A9498C 80079C5C 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 6A94990 80079C60 0800438E */  lw         $v1, 0x8($s2)
/* 6A94994 80079C64 2B102202 */  sltu       $v0, $s1, $v0
/* 6A94998 80079C68 45004010 */  beqz       $v0, .Llevel_31_80079D80
/* 6A9499C 80079C6C 040043AE */   sw        $v1, 0x4($s2)
/* 6A949A0 80079C70 45003026 */  addiu      $s0, $s1, 0x45
.Llevel_31_80079C74:
/* 6A949A4 80079C74 F1FF0386 */  lh         $v1, -0xF($s0)
/* 6A949A8 80079C78 0000428E */  lw         $v0, 0x0($s2)
/* 6A949AC 80079C7C 00000000 */  nop
/* 6A949B0 80079C80 39006214 */  bne        $v1, $v0, .Llevel_31_80079D68
/* 6A949B4 80079C84 00000000 */   nop
/* 6A949B8 80079C88 03000292 */  lbu        $v0, 0x3($s0)
/* 6A949BC 80079C8C 00000000 */  nop
/* 6A949C0 80079C90 8000422C */  sltiu      $v0, $v0, 0x80
/* 6A949C4 80079C94 34004014 */  bnez       $v0, .Llevel_31_80079D68
/* 6A949C8 80079C98 00000000 */   nop
/* 6A949CC 80079C9C 0E000292 */  lbu        $v0, 0xE($s0)
/* 6A949D0 80079CA0 0780033C */  lui        $v1, %hi(D_8006C7C4)
/* 6A949D4 80079CA4 C4C7638C */  lw         $v1, %lo(D_8006C7C4)($v1)
/* 6A949D8 80079CA8 00000000 */  nop
/* 6A949DC 80079CAC 07106200 */  srav       $v0, $v0, $v1
/* 6A949E0 80079CB0 01004230 */  andi       $v0, $v0, 0x1
/* 6A949E4 80079CB4 2C004010 */  beqz       $v0, .Llevel_31_80079D68
/* 6A949E8 80079CB8 00000000 */   nop
/* 6A949EC 80079CBC 0000258E */  lw         $a1, 0x0($s1)
/* 6A949F0 80079CC0 0780043C */  lui        $a0, %hi(D_80070328)
/* 6A949F4 80079CC4 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 6A949F8 80079CC8 CD3C010C */  jal        func_8004F334
/* 6A949FC 80079CCC 00000000 */   nop
/* 6A94A00 80079CD0 01604228 */  slti       $v0, $v0, 0x6001
/* 6A94A04 80079CD4 24004014 */  bnez       $v0, .Llevel_31_80079D68
/* 6A94A08 80079CD8 00000000 */   nop
/* 6A94A0C 80079CDC 0000258E */  lw         $a1, 0x0($s1)
/* 6A94A10 80079CE0 5E3C010C */  jal        func_8004F178
/* 6A94A14 80079CE4 0C002426 */   addiu     $a0, $s1, 0xC
/* 6A94A18 80079CE8 0957010C */  jal        func_80055C24
/* 6A94A1C 80079CEC 21202002 */   addu      $a0, $s1, $zero
/* 6A94A20 80079CF0 F1FF0286 */  lh         $v0, -0xF($s0)
/* 6A94A24 80079CF4 D3FF00AE */  sw         $zero, -0x2D($s0)
/* 6A94A28 80079CF8 0C0000A2 */  sb         $zero, 0xC($s0)
/* 6A94A2C 80079CFC 030000A2 */  sb         $zero, 0x3($s0)
/* 6A94A30 80079D00 FDFF00A2 */  sb         $zero, -0x3($s0)
/* 6A94A34 80079D04 80100200 */  sll        $v0, $v0, 2
/* 6A94A38 80079D08 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 6A94A3C 80079D0C 21082200 */  addu       $at, $at, $v0
/* 6A94A40 80079D10 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 6A94A44 80079D14 00000000 */  nop
/* 6A94A48 80079D18 3C00428C */  lw         $v0, 0x3C($v0)
/* 6A94A4C 80079D1C 21202002 */  addu       $a0, $s1, $zero
/* 6A94A50 80079D20 00004390 */  lbu        $v1, 0x0($v0)
/* 6A94A54 80079D24 01000224 */  addiu      $v0, $zero, 0x1
/* 6A94A58 80079D28 F7FF00A2 */  sb         $zero, -0x9($s0)
/* 6A94A5C 80079D2C F8FF00A2 */  sb         $zero, -0x8($s0)
/* 6A94A60 80079D30 F9FF00A2 */  sb         $zero, -0x7($s0)
/* 6A94A64 80079D34 FAFF02A2 */  sb         $v0, -0x6($s0)
/* 6A94A68 80079D38 FFFF00A2 */  sb         $zero, -0x1($s0)
/* 6A94A6C 80079D3C 000000A2 */  sb         $zero, 0x0($s0)
/* 6A94A70 80079D40 0200632C */  sltiu      $v1, $v1, 0x2
/* 6A94A74 80079D44 01006338 */  xori       $v1, $v1, 0x1
/* 6A94A78 80079D48 23180300 */  negu       $v1, $v1
/* 6A94A7C 80079D4C 30006330 */  andi       $v1, $v1, 0x30
/* 6A94A80 80079D50 4ED7000C */  jal        func_80035D38
/* 6A94A84 80079D54 FBFF03A2 */   sb        $v1, -0x5($s0)
/* 6A94A88 80079D58 A758010C */  jal        func_8005629C
/* 6A94A8C 80079D5C 21202002 */   addu      $a0, $s1, $zero
/* 6A94A90 80079D60 60E70108 */  j          .Llevel_31_80079D80
/* 6A94A94 80079D64 00000000 */   nop
.Llevel_31_80079D68:
/* 6A94A98 80079D68 0780023C */  lui        $v0, %hi(D_8006C704)
/* 6A94A9C 80079D6C 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 6A94AA0 80079D70 58003126 */  addiu      $s1, $s1, 0x58
/* 6A94AA4 80079D74 2B102202 */  sltu       $v0, $s1, $v0
/* 6A94AA8 80079D78 BEFF4014 */  bnez       $v0, .Llevel_31_80079C74
/* 6A94AAC 80079D7C 58001026 */   addiu     $s0, $s0, 0x58
.Llevel_31_80079D80:
/* 6A94AB0 80079D80 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 6A94AB4 80079D84 1800B28F */  lw         $s2, 0x18($sp)
/* 6A94AB8 80079D88 1400B18F */  lw         $s1, 0x14($sp)
/* 6A94ABC 80079D8C 1000B08F */  lw         $s0, 0x10($sp)
/* 6A94AC0 80079D90 2000BD27 */  addiu      $sp, $sp, 0x20
/* 6A94AC4 80079D94 0800E003 */  jr         $ra
/* 6A94AC8 80079D98 00000000 */   nop
.size MobyUpdate_1002_level_31, . - MobyUpdate_1002_level_31
