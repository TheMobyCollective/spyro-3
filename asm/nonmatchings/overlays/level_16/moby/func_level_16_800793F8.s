.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_46_level_16
/* 4B9A928 800793F8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4B9A92C 800793FC 1000B0AF */  sw         $s0, 0x10($sp)
/* 4B9A930 80079400 21808000 */  addu       $s0, $a0, $zero
/* 4B9A934 80079404 03000324 */  addiu      $v1, $zero, 0x3
/* 4B9A938 80079408 1800BFAF */  sw         $ra, 0x18($sp)
/* 4B9A93C 8007940C 1400B1AF */  sw         $s1, 0x14($sp)
/* 4B9A940 80079410 48000292 */  lbu        $v0, 0x48($s0)
/* 4B9A944 80079414 0000118E */  lw         $s1, 0x0($s0)
/* 4B9A948 80079418 1F004310 */  beq        $v0, $v1, .Llevel_16_80079498
/* 4B9A94C 8007941C 00000000 */   nop
/* 4B9A950 80079420 1800028E */  lw         $v0, 0x18($s0)
/* 4B9A954 80079424 00000000 */  nop
/* 4B9A958 80079428 1B004010 */  beqz       $v0, .Llevel_16_80079498
/* 4B9A95C 8007942C 2E000224 */   addiu     $v0, $zero, 0x2E
/* 4B9A960 80079430 36000386 */  lh         $v1, 0x36($s0)
/* 4B9A964 80079434 00000000 */  nop
/* 4B9A968 80079438 0A006214 */  bne        $v1, $v0, .Llevel_16_80079464
/* 4B9A96C 8007943C 18002526 */   addiu     $a1, $s1, 0x18
/* 4B9A970 80079440 08000624 */  addiu      $a2, $zero, 0x8
/* 4B9A974 80079444 FEE2000C */  jal        func_80038BF8
/* 4B9A978 80079448 03000724 */   addiu     $a3, $zero, 0x3
/* 4B9A97C 8007944C 1C002296 */  lhu        $v0, 0x1C($s1)
/* 4B9A980 80079450 C8000324 */  addiu      $v1, $zero, 0xC8
/* 4B9A984 80079454 1E0023A6 */  sh         $v1, 0x1E($s1)
/* 4B9A988 80079458 64004224 */  addiu      $v0, $v0, 0x64
/* 4B9A98C 8007945C 1FE50108 */  j          .Llevel_16_8007947C
/* 4B9A990 80079460 1C0022A6 */   sh        $v0, 0x1C($s1)
.Llevel_16_80079464:
/* 4B9A994 80079464 21200002 */  addu       $a0, $s0, $zero
/* 4B9A998 80079468 21300000 */  addu       $a2, $zero, $zero
/* 4B9A99C 8007946C FEE2000C */  jal        func_80038BF8
/* 4B9A9A0 80079470 03000724 */   addiu     $a3, $zero, 0x3
/* 4B9A9A4 80079474 96000224 */  addiu      $v0, $zero, 0x96
/* 4B9A9A8 80079478 1E0022A6 */  sh         $v0, 0x1E($s1)
.Llevel_16_8007947C:
/* 4B9A9AC 8007947C 10000424 */  addiu      $a0, $zero, 0x10
/* 4B9A9B0 80079480 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 4B9A9B4 80079484 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 4B9A9B8 80079488 00000000 */  nop
/* 4B9A9BC 8007948C 09F84000 */  jalr       $v0
/* 4B9A9C0 80079490 21280002 */   addu      $a1, $s0, $zero
/* 4B9A9C4 80079494 080000AE */  sw         $zero, 0x8($s0)
.Llevel_16_80079498:
/* 4B9A9C8 80079498 48000392 */  lbu        $v1, 0x48($s0)
/* 4B9A9CC 8007949C 02000224 */  addiu      $v0, $zero, 0x2
/* 4B9A9D0 800794A0 15006210 */  beq        $v1, $v0, .Llevel_16_800794F8
/* 4B9A9D4 800794A4 03006228 */   slti      $v0, $v1, 0x3
/* 4B9A9D8 800794A8 05004014 */  bnez       $v0, .Llevel_16_800794C0
/* 4B9A9DC 800794AC 03000224 */   addiu     $v0, $zero, 0x3
/* 4B9A9E0 800794B0 30006210 */  beq        $v1, $v0, .Llevel_16_80079574
/* 4B9A9E4 800794B4 21200002 */   addu      $a0, $s0, $zero
/* 4B9A9E8 800794B8 6BE50108 */  j          .Llevel_16_800795AC
/* 4B9A9EC 800794BC 00000000 */   nop
.Llevel_16_800794C0:
/* 4B9A9F0 800794C0 3A006004 */  bltz       $v1, .Llevel_16_800795AC
/* 4B9A9F4 800794C4 00000000 */   nop
/* 4B9A9F8 800794C8 0780023C */  lui        $v0, %hi(D_8006C770)
/* 4B9A9FC 800794CC 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 4B9AA00 800794D0 00000000 */  nop
/* 4B9AA04 800794D4 35004010 */  beqz       $v0, .Llevel_16_800795AC
/* 4B9AA08 800794D8 5A000424 */   addiu     $a0, $zero, 0x5A
/* 4B9AA0C 800794DC DBD8000C */  jal        func_8003636C
/* 4B9AA10 800794E0 2C010524 */   addiu     $a1, $zero, 0x12C
/* 4B9AA14 800794E4 21200002 */  addu       $a0, $s0, $zero
/* 4B9AA18 800794E8 02000524 */  addiu      $a1, $zero, 0x2
/* 4B9AA1C 800794EC 300022AE */  sw         $v0, 0x30($s1)
/* 4B9AA20 800794F0 59E50108 */  j          .Llevel_16_80079564
/* 4B9AA24 800794F4 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_16_800794F8:
/* 4B9AA28 800794F8 21200002 */  addu       $a0, $s0, $zero
/* 4B9AA2C 800794FC 21282002 */  addu       $a1, $s1, $zero
/* 4B9AA30 80079500 5ADC000C */  jal        func_80037168
/* 4B9AA34 80079504 57000624 */   addiu     $a2, $zero, 0x57
/* 4B9AA38 80079508 30002426 */  addiu      $a0, $s1, 0x30
/* 4B9AA3C 8007950C 69D6000C */  jal        func_800359A4
/* 4B9AA40 80079510 04000524 */   addiu     $a1, $zero, 0x4
/* 4B9AA44 80079514 25004010 */  beqz       $v0, .Llevel_16_800795AC
/* 4B9AA48 80079518 00000000 */   nop
/* 4B9AA4C 8007951C 3400228E */  lw         $v0, 0x34($s1)
/* 4B9AA50 80079520 00000000 */  nop
/* 4B9AA54 80079524 08004010 */  beqz       $v0, .Llevel_16_80079548
/* 4B9AA58 80079528 21200002 */   addu      $a0, $s0, $zero
/* 4B9AA5C 8007952C 21280000 */  addu       $a1, $zero, $zero
/* 4B9AA60 80079530 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 4B9AA64 80079534 340022AE */  sw         $v0, 0x34($s1)
/* 4B9AA68 80079538 D0D3000C */  jal        func_80034F40
/* 4B9AA6C 8007953C 480080A0 */   sb        $zero, 0x48($a0)
/* 4B9AA70 80079540 6BE50108 */  j          .Llevel_16_800795AC
/* 4B9AA74 80079544 00000000 */   nop
.Llevel_16_80079548:
/* 4B9AA78 80079548 02000424 */  addiu      $a0, $zero, 0x2
/* 4B9AA7C 8007954C DBD8000C */  jal        func_8003636C
/* 4B9AA80 80079550 04000524 */   addiu     $a1, $zero, 0x4
/* 4B9AA84 80079554 21200002 */  addu       $a0, $s0, $zero
/* 4B9AA88 80079558 01000524 */  addiu      $a1, $zero, 0x1
/* 4B9AA8C 8007955C 340022AE */  sw         $v0, 0x34($s1)
/* 4B9AA90 80079560 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_16_80079564:
/* 4B9AA94 80079564 D0D3000C */  jal        func_80034F40
/* 4B9AA98 80079568 480082A0 */   sb        $v0, 0x48($a0)
/* 4B9AA9C 8007956C 6BE50108 */  j          .Llevel_16_800795AC
/* 4B9AAA0 80079570 00000000 */   nop
.Llevel_16_80079574:
/* 4B9AAA4 80079574 65D4000C */  jal        func_80035194
/* 4B9AAA8 80079578 18002526 */   addiu     $a1, $s1, 0x18
/* 4B9AAAC 8007957C 00010324 */  addiu      $v1, $zero, 0x100
/* 4B9AAB0 80079580 0A004314 */  bne        $v0, $v1, .Llevel_16_800795AC
/* 4B9AAB4 80079584 21200002 */   addu      $a0, $s0, $zero
/* 4B9AAB8 80079588 4957010C */  jal        func_80055D24
/* 4B9AABC 8007958C 04000524 */   addiu     $a1, $zero, 0x4
/* 4B9AAC0 80079590 80EE000C */  jal        func_8003BA00
/* 4B9AAC4 80079594 21200002 */   addu      $a0, $s0, $zero
/* 4B9AAC8 80079598 21200002 */  addu       $a0, $s0, $zero
/* 4B9AACC 8007959C 6EDA000C */  jal        func_800369B8
/* 4B9AAD0 800795A0 20000524 */   addiu     $a1, $zero, 0x20
/* 4B9AAD4 800795A4 C656010C */  jal        func_80055B18
/* 4B9AAD8 800795A8 21200002 */   addu      $a0, $s0, $zero
.Llevel_16_800795AC:
/* 4B9AADC 800795AC 1800BF8F */  lw         $ra, 0x18($sp)
/* 4B9AAE0 800795B0 1400B18F */  lw         $s1, 0x14($sp)
/* 4B9AAE4 800795B4 1000B08F */  lw         $s0, 0x10($sp)
/* 4B9AAE8 800795B8 2000BD27 */  addiu      $sp, $sp, 0x20
/* 4B9AAEC 800795BC 0800E003 */  jr         $ra
/* 4B9AAF0 800795C0 00000000 */   nop
.size MobyUpdate_46_level_16, . - MobyUpdate_46_level_16
