.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1002_level_24
/* 5DF6378 8007B648 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 5DF637C 8007B64C 21108000 */  addu       $v0, $a0, $zero
/* 5DF6380 8007B650 0780053C */  lui        $a1, %hi(D_80070328)
/* 5DF6384 8007B654 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 5DF6388 8007B658 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 5DF638C 8007B65C 1800B2AF */  sw         $s2, 0x18($sp)
/* 5DF6390 8007B660 1400B1AF */  sw         $s1, 0x14($sp)
/* 5DF6394 8007B664 1000B0AF */  sw         $s0, 0x10($sp)
/* 5DF6398 8007B668 0000528C */  lw         $s2, 0x0($v0)
/* 5DF639C 8007B66C 5E3C010C */  jal        func_8004F178
/* 5DF63A0 8007B670 0C004424 */   addiu     $a0, $v0, 0xC
/* 5DF63A4 8007B674 04000524 */  addiu      $a1, $zero, 0x4
/* 5DF63A8 8007B678 69D6000C */  jal        func_800359A4
/* 5DF63AC 8007B67C 04004426 */   addiu     $a0, $s2, 0x4
/* 5DF63B0 8007B680 4D004010 */  beqz       $v0, .Llevel_24_8007B7B8
/* 5DF63B4 8007B684 00000000 */   nop
/* 5DF63B8 8007B688 0780113C */  lui        $s1, %hi(D_8006C550)
/* 5DF63BC 8007B68C 50C5318E */  lw         $s1, %lo(D_8006C550)($s1)
/* 5DF63C0 8007B690 0780023C */  lui        $v0, %hi(D_8006C704)
/* 5DF63C4 8007B694 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 5DF63C8 8007B698 0800438E */  lw         $v1, 0x8($s2)
/* 5DF63CC 8007B69C 2B102202 */  sltu       $v0, $s1, $v0
/* 5DF63D0 8007B6A0 45004010 */  beqz       $v0, .Llevel_24_8007B7B8
/* 5DF63D4 8007B6A4 040043AE */   sw        $v1, 0x4($s2)
/* 5DF63D8 8007B6A8 45003026 */  addiu      $s0, $s1, 0x45
.Llevel_24_8007B6AC:
/* 5DF63DC 8007B6AC F1FF0386 */  lh         $v1, -0xF($s0)
/* 5DF63E0 8007B6B0 0000428E */  lw         $v0, 0x0($s2)
/* 5DF63E4 8007B6B4 00000000 */  nop
/* 5DF63E8 8007B6B8 39006214 */  bne        $v1, $v0, .Llevel_24_8007B7A0
/* 5DF63EC 8007B6BC 00000000 */   nop
/* 5DF63F0 8007B6C0 03000292 */  lbu        $v0, 0x3($s0)
/* 5DF63F4 8007B6C4 00000000 */  nop
/* 5DF63F8 8007B6C8 8000422C */  sltiu      $v0, $v0, 0x80
/* 5DF63FC 8007B6CC 34004014 */  bnez       $v0, .Llevel_24_8007B7A0
/* 5DF6400 8007B6D0 00000000 */   nop
/* 5DF6404 8007B6D4 0E000292 */  lbu        $v0, 0xE($s0)
/* 5DF6408 8007B6D8 0780033C */  lui        $v1, %hi(D_8006C7C4)
/* 5DF640C 8007B6DC C4C7638C */  lw         $v1, %lo(D_8006C7C4)($v1)
/* 5DF6410 8007B6E0 00000000 */  nop
/* 5DF6414 8007B6E4 07106200 */  srav       $v0, $v0, $v1
/* 5DF6418 8007B6E8 01004230 */  andi       $v0, $v0, 0x1
/* 5DF641C 8007B6EC 2C004010 */  beqz       $v0, .Llevel_24_8007B7A0
/* 5DF6420 8007B6F0 00000000 */   nop
/* 5DF6424 8007B6F4 0000258E */  lw         $a1, 0x0($s1)
/* 5DF6428 8007B6F8 0780043C */  lui        $a0, %hi(D_80070328)
/* 5DF642C 8007B6FC 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 5DF6430 8007B700 CD3C010C */  jal        func_8004F334
/* 5DF6434 8007B704 00000000 */   nop
/* 5DF6438 8007B708 01604228 */  slti       $v0, $v0, 0x6001
/* 5DF643C 8007B70C 24004014 */  bnez       $v0, .Llevel_24_8007B7A0
/* 5DF6440 8007B710 00000000 */   nop
/* 5DF6444 8007B714 0000258E */  lw         $a1, 0x0($s1)
/* 5DF6448 8007B718 5E3C010C */  jal        func_8004F178
/* 5DF644C 8007B71C 0C002426 */   addiu     $a0, $s1, 0xC
/* 5DF6450 8007B720 0957010C */  jal        func_80055C24
/* 5DF6454 8007B724 21202002 */   addu      $a0, $s1, $zero
/* 5DF6458 8007B728 F1FF0286 */  lh         $v0, -0xF($s0)
/* 5DF645C 8007B72C D3FF00AE */  sw         $zero, -0x2D($s0)
/* 5DF6460 8007B730 0C0000A2 */  sb         $zero, 0xC($s0)
/* 5DF6464 8007B734 030000A2 */  sb         $zero, 0x3($s0)
/* 5DF6468 8007B738 FDFF00A2 */  sb         $zero, -0x3($s0)
/* 5DF646C 8007B73C 80100200 */  sll        $v0, $v0, 2
/* 5DF6470 8007B740 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 5DF6474 8007B744 21082200 */  addu       $at, $at, $v0
/* 5DF6478 8007B748 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 5DF647C 8007B74C 00000000 */  nop
/* 5DF6480 8007B750 3C00428C */  lw         $v0, 0x3C($v0)
/* 5DF6484 8007B754 21202002 */  addu       $a0, $s1, $zero
/* 5DF6488 8007B758 00004390 */  lbu        $v1, 0x0($v0)
/* 5DF648C 8007B75C 01000224 */  addiu      $v0, $zero, 0x1
/* 5DF6490 8007B760 F7FF00A2 */  sb         $zero, -0x9($s0)
/* 5DF6494 8007B764 F8FF00A2 */  sb         $zero, -0x8($s0)
/* 5DF6498 8007B768 F9FF00A2 */  sb         $zero, -0x7($s0)
/* 5DF649C 8007B76C FAFF02A2 */  sb         $v0, -0x6($s0)
/* 5DF64A0 8007B770 FFFF00A2 */  sb         $zero, -0x1($s0)
/* 5DF64A4 8007B774 000000A2 */  sb         $zero, 0x0($s0)
/* 5DF64A8 8007B778 0200632C */  sltiu      $v1, $v1, 0x2
/* 5DF64AC 8007B77C 01006338 */  xori       $v1, $v1, 0x1
/* 5DF64B0 8007B780 23180300 */  negu       $v1, $v1
/* 5DF64B4 8007B784 30006330 */  andi       $v1, $v1, 0x30
/* 5DF64B8 8007B788 4ED7000C */  jal        func_80035D38
/* 5DF64BC 8007B78C FBFF03A2 */   sb        $v1, -0x5($s0)
/* 5DF64C0 8007B790 A758010C */  jal        func_8005629C
/* 5DF64C4 8007B794 21202002 */   addu      $a0, $s1, $zero
/* 5DF64C8 8007B798 EEED0108 */  j          .Llevel_24_8007B7B8
/* 5DF64CC 8007B79C 00000000 */   nop
.Llevel_24_8007B7A0:
/* 5DF64D0 8007B7A0 0780023C */  lui        $v0, %hi(D_8006C704)
/* 5DF64D4 8007B7A4 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 5DF64D8 8007B7A8 58003126 */  addiu      $s1, $s1, 0x58
/* 5DF64DC 8007B7AC 2B102202 */  sltu       $v0, $s1, $v0
/* 5DF64E0 8007B7B0 BEFF4014 */  bnez       $v0, .Llevel_24_8007B6AC
/* 5DF64E4 8007B7B4 58001026 */   addiu     $s0, $s0, 0x58
.Llevel_24_8007B7B8:
/* 5DF64E8 8007B7B8 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 5DF64EC 8007B7BC 1800B28F */  lw         $s2, 0x18($sp)
/* 5DF64F0 8007B7C0 1400B18F */  lw         $s1, 0x14($sp)
/* 5DF64F4 8007B7C4 1000B08F */  lw         $s0, 0x10($sp)
/* 5DF64F8 8007B7C8 2000BD27 */  addiu      $sp, $sp, 0x20
/* 5DF64FC 8007B7CC 0800E003 */  jr         $ra
/* 5DF6500 8007B7D0 00000000 */   nop
.size MobyUpdate_1002_level_24, . - MobyUpdate_1002_level_24
