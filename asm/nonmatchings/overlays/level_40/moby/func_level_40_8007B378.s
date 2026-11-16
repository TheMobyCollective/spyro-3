.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_264_level_40
/* 7E668A8 8007B378 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 7E668AC 8007B37C 2000B0AF */  sw         $s0, 0x20($sp)
/* 7E668B0 8007B380 21808000 */  addu       $s0, $a0, $zero
/* 7E668B4 8007B384 2800BFAF */  sw         $ra, 0x28($sp)
/* 7E668B8 8007B388 2400B1AF */  sw         $s1, 0x24($sp)
/* 7E668BC 8007B38C 48000292 */  lbu        $v0, 0x48($s0)
/* 7E668C0 8007B390 0000118E */  lw         $s1, 0x0($s0)
/* 7E668C4 8007B394 0200422C */  sltiu      $v0, $v0, 0x2
/* 7E668C8 8007B398 2B004010 */  beqz       $v0, .Llevel_40_8007B448
/* 7E668CC 8007B39C 0200023C */   lui       $v0, (0x20000 >> 16)
/* 7E668D0 8007B3A0 1800038E */  lw         $v1, 0x18($s0)
/* 7E668D4 8007B3A4 00000000 */  nop
/* 7E668D8 8007B3A8 24106200 */  and        $v0, $v1, $v0
/* 7E668DC 8007B3AC 03004014 */  bnez       $v0, .Llevel_40_8007B3BC
/* 7E668E0 8007B3B0 58020224 */   addiu     $v0, $zero, 0x258
/* 7E668E4 8007B3B4 24006010 */  beqz       $v1, .Llevel_40_8007B448
/* 7E668E8 8007B3B8 5E010224 */   addiu     $v0, $zero, 0x15E
.Llevel_40_8007B3BC:
/* 7E668EC 8007B3BC 300022A6 */  sh         $v0, 0x30($s1)
/* 7E668F0 8007B3C0 51000292 */  lbu        $v0, 0x51($s0)
/* 7E668F4 8007B3C4 00000000 */  nop
/* 7E668F8 8007B3C8 12004014 */  bnez       $v0, .Llevel_40_8007B414
/* 7E668FC 8007B3CC 10000424 */   addiu     $a0, $zero, 0x10
/* 7E66900 8007B3D0 21300000 */  addu       $a2, $zero, $zero
/* 7E66904 8007B3D4 0C00038E */  lw         $v1, 0xC($s0)
/* 7E66908 8007B3D8 0780043C */  lui        $a0, %hi(D_80070328)
/* 7E6690C 8007B3DC 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 7E66910 8007B3E0 1000028E */  lw         $v0, 0x10($s0)
/* 7E66914 8007B3E4 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 7E66918 8007B3E8 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 7E6691C 8007B3EC 23206400 */  subu       $a0, $v1, $a0
/* 7E66920 8007B3F0 203A010C */  jal        func_8004E880
/* 7E66924 8007B3F4 23284500 */   subu      $a1, $v0, $a1
/* 7E66928 8007B3F8 21204000 */  addu       $a0, $v0, $zero
/* 7E6692C 8007B3FC 20000624 */  addiu      $a2, $zero, 0x20
/* 7E66930 8007B400 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 7E66934 8007B404 3603A590 */  lbu        $a1, %lo(D_80070328 + 0xE)($a1)
/* 7E66938 8007B408 3ED8000C */  jal        func_800360F8
/* 7E6693C 8007B40C 40000724 */   addiu     $a3, $zero, 0x40
/* 7E66940 8007B410 10000424 */  addiu      $a0, $zero, 0x10
.Llevel_40_8007B414:
/* 7E66944 8007B414 21280002 */  addu       $a1, $s0, $zero
/* 7E66948 8007B418 3D0022A2 */  sb         $v0, 0x3D($s1)
/* 7E6694C 8007B41C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7E66950 8007B420 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7E66954 8007B424 00010324 */  addiu      $v1, $zero, 0x100
/* 7E66958 8007B428 09F84000 */  jalr       $v0
/* 7E6695C 8007B42C 320023A6 */   sh        $v1, 0x32($s1)
/* 7E66960 8007B430 21200002 */  addu       $a0, $s0, $zero
/* 7E66964 8007B434 02000524 */  addiu      $a1, $zero, 0x2
/* 7E66968 8007B438 02000224 */  addiu      $v0, $zero, 0x2
/* 7E6696C 8007B43C 080000AE */  sw         $zero, 0x8($s0)
/* 7E66970 8007B440 D0D3000C */  jal        func_80034F40
/* 7E66974 8007B444 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_40_8007B448:
/* 7E66978 8007B448 48000392 */  lbu        $v1, 0x48($s0)
/* 7E6697C 8007B44C 01000224 */  addiu      $v0, $zero, 0x1
/* 7E66980 8007B450 1B006210 */  beq        $v1, $v0, .Llevel_40_8007B4C0
/* 7E66984 8007B454 02006228 */   slti      $v0, $v1, 0x2
/* 7E66988 8007B458 05004010 */  beqz       $v0, .Llevel_40_8007B470
/* 7E6698C 8007B45C 00000000 */   nop
/* 7E66990 8007B460 08006010 */  beqz       $v1, .Llevel_40_8007B484
/* 7E66994 8007B464 00000000 */   nop
/* 7E66998 8007B468 8DED0108 */  j          .Llevel_40_8007B634
/* 7E6699C 8007B46C 00000000 */   nop
.Llevel_40_8007B470:
/* 7E669A0 8007B470 02000224 */  addiu      $v0, $zero, 0x2
/* 7E669A4 8007B474 61006210 */  beq        $v1, $v0, .Llevel_40_8007B5FC
/* 7E669A8 8007B478 21200002 */   addu      $a0, $s0, $zero
/* 7E669AC 8007B47C 8DED0108 */  j          .Llevel_40_8007B634
/* 7E669B0 8007B480 00000000 */   nop
.Llevel_40_8007B484:
/* 7E669B4 8007B484 0780023C */  lui        $v0, %hi(D_8006C770)
/* 7E669B8 8007B488 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 7E669BC 8007B48C 00000000 */  nop
/* 7E669C0 8007B490 68004010 */  beqz       $v0, .Llevel_40_8007B634
/* 7E669C4 8007B494 5A000424 */   addiu     $a0, $zero, 0x5A
/* 7E669C8 8007B498 DBD8000C */  jal        func_8003636C
/* 7E669CC 8007B49C 2C010524 */   addiu     $a1, $zero, 0x12C
/* 7E669D0 8007B4A0 21200002 */  addu       $a0, $s0, $zero
/* 7E669D4 8007B4A4 01000524 */  addiu      $a1, $zero, 0x1
/* 7E669D8 8007B4A8 180022AE */  sw         $v0, 0x18($s1)
/* 7E669DC 8007B4AC 01000224 */  addiu      $v0, $zero, 0x1
/* 7E669E0 8007B4B0 D0D3000C */  jal        func_80034F40
/* 7E669E4 8007B4B4 480082A0 */   sb        $v0, 0x48($a0)
/* 7E669E8 8007B4B8 8DED0108 */  j          .Llevel_40_8007B634
/* 7E669EC 8007B4BC 00000000 */   nop
.Llevel_40_8007B4C0:
/* 7E669F0 8007B4C0 2800228E */  lw         $v0, 0x28($s1)
/* 7E669F4 8007B4C4 00000000 */  nop
/* 7E669F8 8007B4C8 3F004010 */  beqz       $v0, .Llevel_40_8007B5C8
/* 7E669FC 8007B4CC 21200002 */   addu      $a0, $s0, $zero
/* 7E66A00 8007B4D0 0E002292 */  lbu        $v0, 0xE($s1)
/* 7E66A04 8007B4D4 00000000 */  nop
/* 7E66A08 8007B4D8 28004014 */  bnez       $v0, .Llevel_40_8007B57C
/* 7E66A0C 8007B4DC 21282002 */   addu      $a1, $s1, $zero
/* 7E66A10 8007B4E0 0C00028E */  lw         $v0, 0xC($s0)
/* 7E66A14 8007B4E4 0000238E */  lw         $v1, 0x0($s1)
/* 7E66A18 8007B4E8 00000000 */  nop
/* 7E66A1C 8007B4EC 2A106200 */  slt        $v0, $v1, $v0
/* 7E66A20 8007B4F0 06004010 */  beqz       $v0, .Llevel_40_8007B50C
/* 7E66A24 8007B4F4 00000000 */   nop
/* 7E66A28 8007B4F8 12002292 */  lbu        $v0, 0x12($s1)
/* 7E66A2C 8007B4FC 00000000 */  nop
/* 7E66A30 8007B500 00110200 */  sll        $v0, $v0, 4
/* 7E66A34 8007B504 47ED0108 */  j          .Llevel_40_8007B51C
/* 7E66A38 8007B508 23106200 */   subu      $v0, $v1, $v0
.Llevel_40_8007B50C:
/* 7E66A3C 8007B50C 12002292 */  lbu        $v0, 0x12($s1)
/* 7E66A40 8007B510 00000000 */  nop
/* 7E66A44 8007B514 00110200 */  sll        $v0, $v0, 4
/* 7E66A48 8007B518 21106200 */  addu       $v0, $v1, $v0
.Llevel_40_8007B51C:
/* 7E66A4C 8007B51C 1000A2AF */  sw         $v0, 0x10($sp)
/* 7E66A50 8007B520 0400228E */  lw         $v0, 0x4($s1)
/* 7E66A54 8007B524 00000000 */  nop
/* 7E66A58 8007B528 1400A2AF */  sw         $v0, 0x14($sp)
/* 7E66A5C 8007B52C 0800228E */  lw         $v0, 0x8($s1)
/* 7E66A60 8007B530 00000000 */  nop
/* 7E66A64 8007B534 1800A2AF */  sw         $v0, 0x18($sp)
/* 7E66A68 8007B538 21300000 */  addu       $a2, $zero, $zero
/* 7E66A6C 8007B53C 1000A38F */  lw         $v1, 0x10($sp)
/* 7E66A70 8007B540 0C00048E */  lw         $a0, 0xC($s0)
/* 7E66A74 8007B544 1400A28F */  lw         $v0, 0x14($sp)
/* 7E66A78 8007B548 1000058E */  lw         $a1, 0x10($s0)
/* 7E66A7C 8007B54C 23206400 */  subu       $a0, $v1, $a0
/* 7E66A80 8007B550 203A010C */  jal        func_8004E880
/* 7E66A84 8007B554 23284500 */   subu      $a1, $v0, $a1
/* 7E66A88 8007B558 14002492 */  lbu        $a0, 0x14($s1)
/* 7E66A8C 8007B55C 15002592 */  lbu        $a1, 0x15($s1)
/* 7E66A90 8007B560 DBD8000C */  jal        func_8003636C
/* 7E66A94 8007B564 130022A2 */   sb        $v0, 0x13($s1)
/* 7E66A98 8007B568 0F0022A2 */  sb         $v0, 0xF($s1)
/* 7E66A9C 8007B56C 01000224 */  addiu      $v0, $zero, 0x1
/* 7E66AA0 8007B570 0E0022A2 */  sb         $v0, 0xE($s1)
/* 7E66AA4 8007B574 21200002 */  addu       $a0, $s0, $zero
/* 7E66AA8 8007B578 21282002 */  addu       $a1, $s1, $zero
.Llevel_40_8007B57C:
/* 7E66AAC 8007B57C 5ADC000C */  jal        func_80037168
/* 7E66AB0 8007B580 57000624 */   addiu     $a2, $zero, 0x57
/* 7E66AB4 8007B584 1000028E */  lw         $v0, 0x10($s0)
/* 7E66AB8 8007B588 0400238E */  lw         $v1, 0x4($s1)
/* 7E66ABC 8007B58C 00000000 */  nop
/* 7E66AC0 8007B590 23204300 */  subu       $a0, $v0, $v1
/* 7E66AC4 8007B594 01018228 */  slti       $v0, $a0, 0x101
/* 7E66AC8 8007B598 03004014 */  bnez       $v0, .Llevel_40_8007B5A8
/* 7E66ACC 8007B59C 00FF8228 */   slti      $v0, $a0, -0x100
/* 7E66AD0 8007B5A0 6CED0108 */  j          .Llevel_40_8007B5B0
/* 7E66AD4 8007B5A4 00016224 */   addiu     $v0, $v1, 0x100
.Llevel_40_8007B5A8:
/* 7E66AD8 8007B5A8 02004010 */  beqz       $v0, .Llevel_40_8007B5B4
/* 7E66ADC 8007B5AC 00FF6224 */   addiu     $v0, $v1, -0x100
.Llevel_40_8007B5B0:
/* 7E66AE0 8007B5B0 100002AE */  sw         $v0, 0x10($s0)
.Llevel_40_8007B5B4:
/* 7E66AE4 8007B5B4 21200002 */  addu       $a0, $s0, $zero
/* 7E66AE8 8007B5B8 4957010C */  jal        func_80055D24
/* 7E66AEC 8007B5BC 04000524 */   addiu     $a1, $zero, 0x4
/* 7E66AF0 8007B5C0 76ED0108 */  j          .Llevel_40_8007B5D8
/* 7E66AF4 8007B5C4 18002426 */   addiu     $a0, $s1, 0x18
.Llevel_40_8007B5C8:
/* 7E66AF8 8007B5C8 21282002 */  addu       $a1, $s1, $zero
/* 7E66AFC 8007B5CC 5ADC000C */  jal        func_80037168
/* 7E66B00 8007B5D0 57000624 */   addiu     $a2, $zero, 0x57
/* 7E66B04 8007B5D4 18002426 */  addiu      $a0, $s1, 0x18
.Llevel_40_8007B5D8:
/* 7E66B08 8007B5D8 69D6000C */  jal        func_800359A4
/* 7E66B0C 8007B5DC 04000524 */   addiu     $a1, $zero, 0x4
/* 7E66B10 8007B5E0 14004010 */  beqz       $v0, .Llevel_40_8007B634
/* 7E66B14 8007B5E4 21200002 */   addu      $a0, $s0, $zero
/* 7E66B18 8007B5E8 480000A2 */  sb         $zero, 0x48($s0)
/* 7E66B1C 8007B5EC D0D3000C */  jal        func_80034F40
/* 7E66B20 8007B5F0 21280000 */   addu      $a1, $zero, $zero
/* 7E66B24 8007B5F4 8DED0108 */  j          .Llevel_40_8007B634
/* 7E66B28 8007B5F8 00000000 */   nop
.Llevel_40_8007B5FC:
/* 7E66B2C 8007B5FC 65D4000C */  jal        func_80035194
/* 7E66B30 8007B600 2C002526 */   addiu     $a1, $s1, 0x2C
/* 7E66B34 8007B604 0780023C */  lui        $v0, %hi(D_8006C770)
/* 7E66B38 8007B608 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 7E66B3C 8007B60C 00000000 */  nop
/* 7E66B40 8007B610 08004010 */  beqz       $v0, .Llevel_40_8007B634
/* 7E66B44 8007B614 21200002 */   addu      $a0, $s0, $zero
/* 7E66B48 8007B618 4957010C */  jal        func_80055D24
/* 7E66B4C 8007B61C 04000524 */   addiu     $a1, $zero, 0x4
/* 7E66B50 8007B620 21200002 */  addu       $a0, $s0, $zero
/* 7E66B54 8007B624 6EDA000C */  jal        func_800369B8
/* 7E66B58 8007B628 18000524 */   addiu     $a1, $zero, 0x18
/* 7E66B5C 8007B62C C656010C */  jal        func_80055B18
/* 7E66B60 8007B630 21200002 */   addu      $a0, $s0, $zero
.Llevel_40_8007B634:
/* 7E66B64 8007B634 2800BF8F */  lw         $ra, 0x28($sp)
/* 7E66B68 8007B638 2400B18F */  lw         $s1, 0x24($sp)
/* 7E66B6C 8007B63C 2000B08F */  lw         $s0, 0x20($sp)
/* 7E66B70 8007B640 3000BD27 */  addiu      $sp, $sp, 0x30
/* 7E66B74 8007B644 0800E003 */  jr         $ra
/* 7E66B78 8007B648 00000000 */   nop
.size MobyUpdate_264_level_40, . - MobyUpdate_264_level_40
