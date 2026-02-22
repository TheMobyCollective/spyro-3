.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_11_8007B388
/* 3E1F8B8 8007B388 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 3E1F8BC 8007B38C 2400B1AF */  sw         $s1, 0x24($sp)
/* 3E1F8C0 8007B390 21888000 */  addu       $s1, $a0, $zero
/* 3E1F8C4 8007B394 3400B5AF */  sw         $s5, 0x34($sp)
/* 3E1F8C8 8007B398 0780153C */  lui        $s5, %hi(D_80070328 + 0x50)
/* 3E1F8CC 8007B39C 7803B526 */  addiu      $s5, $s5, %lo(D_80070328 + 0x50)
/* 3E1F8D0 8007B3A0 06000324 */  addiu      $v1, $zero, 0x6
/* 3E1F8D4 8007B3A4 4000BFAF */  sw         $ra, 0x40($sp)
/* 3E1F8D8 8007B3A8 3C00B7AF */  sw         $s7, 0x3C($sp)
/* 3E1F8DC 8007B3AC 3800B6AF */  sw         $s6, 0x38($sp)
/* 3E1F8E0 8007B3B0 3000B4AF */  sw         $s4, 0x30($sp)
/* 3E1F8E4 8007B3B4 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 3E1F8E8 8007B3B8 2800B2AF */  sw         $s2, 0x28($sp)
/* 3E1F8EC 8007B3BC 2000B0AF */  sw         $s0, 0x20($sp)
/* 3E1F8F0 8007B3C0 0000A28E */  lw         $v0, 0x0($s5)
/* 3E1F8F4 8007B3C4 0000328E */  lw         $s2, 0x0($s1)
/* 3E1F8F8 8007B3C8 06004310 */  beq        $v0, $v1, .Llevel_11_8007B3E4
/* 3E1F8FC 8007B3CC 00000000 */   nop
/* 3E1F900 8007B3D0 0780023C */  lui        $v0, %hi(D_80070328 + 0x244)
/* 3E1F904 8007B3D4 6C05428C */  lw         $v0, %lo(D_80070328 + 0x244)($v0)
/* 3E1F908 8007B3D8 00000000 */  nop
/* 3E1F90C 8007B3DC 07004010 */  beqz       $v0, .Llevel_11_8007B3FC
/* 3E1F910 8007B3E0 02001424 */   addiu     $s4, $zero, 0x2
.Llevel_11_8007B3E4:
/* 3E1F914 8007B3E4 48002292 */  lbu        $v0, 0x48($s1)
/* 3E1F918 8007B3E8 00000000 */  nop
/* 3E1F91C 8007B3EC 24014010 */  beqz       $v0, .Llevel_11_8007B880
/* 3E1F920 8007B3F0 02000224 */   addiu     $v0, $zero, 0x2
/* 3E1F924 8007B3F4 20EE0108 */  j          .Llevel_11_8007B880
/* 3E1F928 8007B3F8 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_11_8007B3FC:
/* 3E1F92C 8007B3FC 48002292 */  lbu        $v0, 0x48($s1)
/* 3E1F930 8007B400 00000000 */  nop
/* 3E1F934 8007B404 03005414 */  bne        $v0, $s4, .Llevel_11_8007B414
/* 3E1F938 8007B408 1000A427 */   addiu     $a0, $sp, 0x10
/* 3E1F93C 8007B40C 01000224 */  addiu      $v0, $zero, 0x1
/* 3E1F940 8007B410 480022A2 */  sb         $v0, 0x48($s1)
.Llevel_11_8007B414:
/* 3E1F944 8007B414 B0FFB726 */  addiu      $s7, $s5, -0x50
/* 3E1F948 8007B418 2128E002 */  addu       $a1, $s7, $zero
/* 3E1F94C 8007B41C 0800428E */  lw         $v0, 0x8($s2)
/* 3E1F950 8007B420 0C003326 */  addiu      $s3, $s1, 0xC
/* 3E1F954 8007B424 21306002 */  addu       $a2, $s3, $zero
/* 3E1F958 8007B428 723C010C */  jal        func_8004F1C8
/* 3E1F95C 8007B42C 7F005030 */   andi      $s0, $v0, 0x7F
/* 3E1F960 8007B430 1000A427 */  addiu      $a0, $sp, 0x10
/* 3E1F964 8007B434 7A3B010C */  jal        func_8004EDE8
/* 3E1F968 8007B438 21280000 */   addu      $a1, $zero, $zero
/* 3E1F96C 8007B43C 63000012 */  beqz       $s0, .Llevel_11_8007B5CC
/* 3E1F970 8007B440 21B04000 */   addu      $s6, $v0, $zero
/* 3E1F974 8007B444 01000424 */  addiu      $a0, $zero, 0x1
/* 3E1F978 8007B448 35000416 */  bne        $s0, $a0, .Llevel_11_8007B520
/* 3E1F97C 8007B44C 00000000 */   nop
/* 3E1F980 8007B450 49002392 */  lbu        $v1, 0x49($s1)
/* 3E1F984 8007B454 00000000 */  nop
/* 3E1F988 8007B458 1F007010 */  beq        $v1, $s0, .Llevel_11_8007B4D8
/* 3E1F98C 8007B45C 02006228 */   slti      $v0, $v1, 0x2
/* 3E1F990 8007B460 05004010 */  beqz       $v0, .Llevel_11_8007B478
/* 3E1F994 8007B464 00000000 */   nop
/* 3E1F998 8007B468 09006010 */  beqz       $v1, .Llevel_11_8007B490
/* 3E1F99C 8007B46C 00000000 */   nop
/* 3E1F9A0 8007B470 C9ED0108 */  j          .Llevel_11_8007B724
/* 3E1F9A4 8007B474 00000000 */   nop
.Llevel_11_8007B478:
/* 3E1F9A8 8007B478 1E007410 */  beq        $v1, $s4, .Llevel_11_8007B4F4
/* 3E1F9AC 8007B47C 03000224 */   addiu     $v0, $zero, 0x3
/* 3E1F9B0 8007B480 23006210 */  beq        $v1, $v0, .Llevel_11_8007B510
/* 3E1F9B4 8007B484 00000000 */   nop
/* 3E1F9B8 8007B488 C9ED0108 */  j          .Llevel_11_8007B724
/* 3E1F9BC 8007B48C 00000000 */   nop
.Llevel_11_8007B490:
/* 3E1F9C0 8007B490 0400428E */  lw         $v0, 0x4($s2)
/* 3E1F9C4 8007B494 00000000 */  nop
/* 3E1F9C8 8007B498 00044224 */  addiu      $v0, $v0, 0x400
/* 3E1F9CC 8007B49C 2A10C202 */  slt        $v0, $s6, $v0
/* 3E1F9D0 8007B4A0 A0004010 */  beqz       $v0, .Llevel_11_8007B724
/* 3E1F9D4 8007B4A4 00000000 */   nop
/* 3E1F9D8 8007B4A8 1800A28F */  lw         $v0, 0x18($sp)
/* 3E1F9DC 8007B4AC 00000000 */  nop
/* 3E1F9E0 8007B4B0 02004104 */  bgez       $v0, .Llevel_11_8007B4BC
/* 3E1F9E4 8007B4B4 00000000 */   nop
/* 3E1F9E8 8007B4B8 23100200 */  negu       $v0, $v0
.Llevel_11_8007B4BC:
/* 3E1F9EC 8007B4BC 00044228 */  slti       $v0, $v0, 0x400
/* 3E1F9F0 8007B4C0 98004010 */  beqz       $v0, .Llevel_11_8007B724
/* 3E1F9F4 8007B4C4 3C000224 */   addiu     $v0, $zero, 0x3C
/* 3E1F9F8 8007B4C8 0C0042AE */  sw         $v0, 0xC($s2)
/* 3E1F9FC 8007B4CC 01000224 */  addiu      $v0, $zero, 0x1
/* 3E1FA00 8007B4D0 C9ED0108 */  j          .Llevel_11_8007B724
/* 3E1FA04 8007B4D4 490022A2 */   sb        $v0, 0x49($s1)
.Llevel_11_8007B4D8:
/* 3E1FA08 8007B4D8 0C004426 */  addiu      $a0, $s2, 0xC
/* 3E1FA0C 8007B4DC 69D6000C */  jal        func_800359A4
/* 3E1FA10 8007B4E0 04000524 */   addiu     $a1, $zero, 0x4
/* 3E1FA14 8007B4E4 8F004010 */  beqz       $v0, .Llevel_11_8007B724
/* 3E1FA18 8007B4E8 02000224 */   addiu     $v0, $zero, 0x2
/* 3E1FA1C 8007B4EC 72ED0108 */  j          .Llevel_11_8007B5C8
/* 3E1FA20 8007B4F0 00000000 */   nop
.Llevel_11_8007B4F4:
/* 3E1FA24 8007B4F4 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 3E1FA28 8007B4F8 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 3E1FA2C 8007B4FC 13000224 */  addiu      $v0, $zero, 0x13
/* 3E1FA30 8007B500 88006214 */  bne        $v1, $v0, .Llevel_11_8007B724
/* 3E1FA34 8007B504 3C000224 */   addiu     $v0, $zero, 0x3C
/* 3E1FA38 8007B508 86ED0108 */  j          .Llevel_11_8007B618
/* 3E1FA3C 8007B50C 00000000 */   nop
.Llevel_11_8007B510:
/* 3E1FA40 8007B510 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 3E1FA44 8007B514 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 3E1FA48 8007B518 8BED0108 */  j          .Llevel_11_8007B62C
/* 3E1FA4C 8007B51C 13000224 */   addiu     $v0, $zero, 0x13
.Llevel_11_8007B520:
/* 3E1FA50 8007B520 03000224 */  addiu      $v0, $zero, 0x3
/* 3E1FA54 8007B524 4B000216 */  bne        $s0, $v0, .Llevel_11_8007B654
/* 3E1FA58 8007B528 00000000 */   nop
/* 3E1FA5C 8007B52C 49002392 */  lbu        $v1, 0x49($s1)
/* 3E1FA60 8007B530 00000000 */  nop
/* 3E1FA64 8007B534 1C006410 */  beq        $v1, $a0, .Llevel_11_8007B5A8
/* 3E1FA68 8007B538 02006228 */   slti      $v0, $v1, 0x2
/* 3E1FA6C 8007B53C 05004010 */  beqz       $v0, .Llevel_11_8007B554
/* 3E1FA70 8007B540 00000000 */   nop
/* 3E1FA74 8007B544 09006010 */  beqz       $v1, .Llevel_11_8007B56C
/* 3E1FA78 8007B548 00000000 */   nop
/* 3E1FA7C 8007B54C C9ED0108 */  j          .Llevel_11_8007B724
/* 3E1FA80 8007B550 00000000 */   nop
.Llevel_11_8007B554:
/* 3E1FA84 8007B554 20007410 */  beq        $v1, $s4, .Llevel_11_8007B5D8
/* 3E1FA88 8007B558 13000224 */   addiu     $v0, $zero, 0x13
/* 3E1FA8C 8007B55C 32007010 */  beq        $v1, $s0, .Llevel_11_8007B628
/* 3E1FA90 8007B560 00000000 */   nop
/* 3E1FA94 8007B564 C9ED0108 */  j          .Llevel_11_8007B724
/* 3E1FA98 8007B568 00000000 */   nop
.Llevel_11_8007B56C:
/* 3E1FA9C 8007B56C 0400428E */  lw         $v0, 0x4($s2)
/* 3E1FAA0 8007B570 00000000 */  nop
/* 3E1FAA4 8007B574 00084224 */  addiu      $v0, $v0, 0x800
/* 3E1FAA8 8007B578 2A105600 */  slt        $v0, $v0, $s6
/* 3E1FAAC 8007B57C 69004010 */  beqz       $v0, .Llevel_11_8007B724
/* 3E1FAB0 8007B580 0020C22A */   slti      $v0, $s6, 0x2000
/* 3E1FAB4 8007B584 67004010 */  beqz       $v0, .Llevel_11_8007B724
/* 3E1FAB8 8007B588 00000000 */   nop
/* 3E1FABC 8007B58C 1800A28F */  lw         $v0, 0x18($sp)
/* 3E1FAC0 8007B590 00000000 */  nop
/* 3E1FAC4 8007B594 02004104 */  bgez       $v0, .Llevel_11_8007B5A0
/* 3E1FAC8 8007B598 00000000 */   nop
/* 3E1FACC 8007B59C 23100200 */  negu       $v0, $v0
.Llevel_11_8007B5A0:
/* 3E1FAD0 8007B5A0 6EED0108 */  j          .Llevel_11_8007B5B8
/* 3E1FAD4 8007B5A4 00044228 */   slti      $v0, $v0, 0x400
.Llevel_11_8007B5A8:
/* 3E1FAD8 8007B5A8 0400428E */  lw         $v0, 0x4($s2)
/* 3E1FADC 8007B5AC 00000000 */  nop
/* 3E1FAE0 8007B5B0 00084224 */  addiu      $v0, $v0, 0x800
/* 3E1FAE4 8007B5B4 2A105600 */  slt        $v0, $v0, $s6
.Llevel_11_8007B5B8:
/* 3E1FAE8 8007B5B8 5A004010 */  beqz       $v0, .Llevel_11_8007B724
/* 3E1FAEC 8007B5BC 3C000224 */   addiu     $v0, $zero, 0x3C
/* 3E1FAF0 8007B5C0 0C0042AE */  sw         $v0, 0xC($s2)
/* 3E1FAF4 8007B5C4 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_11_8007B5C8:
/* 3E1FAF8 8007B5C8 490022A2 */  sb         $v0, 0x49($s1)
.Llevel_11_8007B5CC:
/* 3E1FAFC 8007B5CC 01000224 */  addiu      $v0, $zero, 0x1
/* 3E1FB00 8007B5D0 C9ED0108 */  j          .Llevel_11_8007B724
/* 3E1FB04 8007B5D4 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_11_8007B5D8:
/* 3E1FB08 8007B5D8 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 3E1FB0C 8007B5DC 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 3E1FB10 8007B5E0 00000000 */  nop
/* 3E1FB14 8007B5E4 0B006210 */  beq        $v1, $v0, .Llevel_11_8007B614
/* 3E1FB18 8007B5E8 0128C22A */   slti      $v0, $s6, 0x2801
/* 3E1FB1C 8007B5EC 0A004010 */  beqz       $v0, .Llevel_11_8007B618
/* 3E1FB20 8007B5F0 3C000224 */   addiu     $v0, $zero, 0x3C
/* 3E1FB24 8007B5F4 0780023C */  lui        $v0, %hi(D_80070328 + 8)
/* 3E1FB28 8007B5F8 3003428C */  lw         $v0, %lo(D_80070328 + 8)($v0)
/* 3E1FB2C 8007B5FC 1400238E */  lw         $v1, 0x14($s1)
/* 3E1FB30 8007B600 00000000 */  nop
/* 3E1FB34 8007B604 23104300 */  subu       $v0, $v0, $v1
/* 3E1FB38 8007B608 010C4228 */  slti       $v0, $v0, 0xC01
/* 3E1FB3C 8007B60C 45004014 */  bnez       $v0, .Llevel_11_8007B724
/* 3E1FB40 8007B610 00000000 */   nop
.Llevel_11_8007B614:
/* 3E1FB44 8007B614 3C000224 */  addiu      $v0, $zero, 0x3C
.Llevel_11_8007B618:
/* 3E1FB48 8007B618 0C0042AE */  sw         $v0, 0xC($s2)
/* 3E1FB4C 8007B61C 03000224 */  addiu      $v0, $zero, 0x3
/* 3E1FB50 8007B620 C9ED0108 */  j          .Llevel_11_8007B724
/* 3E1FB54 8007B624 490022A2 */   sb        $v0, 0x49($s1)
.Llevel_11_8007B628:
/* 3E1FB58 8007B628 F8FFA38E */  lw         $v1, -0x8($s5)
.Llevel_11_8007B62C:
/* 3E1FB5C 8007B62C 00000000 */  nop
/* 3E1FB60 8007B630 3C006210 */  beq        $v1, $v0, .Llevel_11_8007B724
/* 3E1FB64 8007B634 0C004426 */   addiu     $a0, $s2, 0xC
/* 3E1FB68 8007B638 69D6000C */  jal        func_800359A4
/* 3E1FB6C 8007B63C 04000524 */   addiu     $a1, $zero, 0x4
/* 3E1FB70 8007B640 38004010 */  beqz       $v0, .Llevel_11_8007B724
/* 3E1FB74 8007B644 00000000 */   nop
/* 3E1FB78 8007B648 490020A2 */  sb         $zero, 0x49($s1)
/* 3E1FB7C 8007B64C C9ED0108 */  j          .Llevel_11_8007B724
/* 3E1FB80 8007B650 480020A2 */   sb        $zero, 0x48($s1)
.Llevel_11_8007B654:
/* 3E1FB84 8007B654 04000224 */  addiu      $v0, $zero, 0x4
/* 3E1FB88 8007B658 1C000216 */  bne        $s0, $v0, .Llevel_11_8007B6CC
/* 3E1FB8C 8007B65C 05000224 */   addiu     $v0, $zero, 0x5
/* 3E1FB90 8007B660 0780023C */  lui        $v0, %hi(D_8006C7B4)
/* 3E1FB94 8007B664 B4C74290 */  lbu        $v0, %lo(D_8006C7B4)($v0)
/* 3E1FB98 8007B668 00000000 */  nop
/* 3E1FB9C 8007B66C 01004230 */  andi       $v0, $v0, 0x1
/* 3E1FBA0 8007B670 0A004014 */  bnez       $v0, .Llevel_11_8007B69C
/* 3E1FBA4 8007B674 21206002 */   addu      $a0, $s3, $zero
/* 3E1FBA8 8007B678 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 3E1FBAC 8007B67C 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 3E1FBB0 8007B680 0780013C */  lui        $at, %hi(D_80070300)
/* 3E1FBB4 8007B684 21082200 */  addu       $at, $at, $v0
/* 3E1FBB8 8007B688 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 3E1FBBC 8007B68C 00000000 */  nop
/* 3E1FBC0 8007B690 01004230 */  andi       $v0, $v0, 0x1
/* 3E1FBC4 8007B694 23004010 */  beqz       $v0, .Llevel_11_8007B724
/* 3E1FBC8 8007B698 00000000 */   nop
.Llevel_11_8007B69C:
/* 3E1FBCC 8007B69C CD3C010C */  jal        func_8004F334
/* 3E1FBD0 8007B6A0 2128E002 */   addu      $a1, $s7, $zero
/* 3E1FBD4 8007B6A4 01084228 */  slti       $v0, $v0, 0x801
/* 3E1FBD8 8007B6A8 1E004014 */  bnez       $v0, .Llevel_11_8007B724
/* 3E1FBDC 8007B6AC 00000000 */   nop
/* 3E1FBE0 8007B6B0 0780023C */  lui        $v0, %hi(D_8006C640)
/* 3E1FBE4 8007B6B4 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 3E1FBE8 8007B6B8 00000000 */  nop
/* 3E1FBEC 8007B6BC 19004018 */  blez       $v0, .Llevel_11_8007B724
/* 3E1FBF0 8007B6C0 00000000 */   nop
/* 3E1FBF4 8007B6C4 C5ED0108 */  j          .Llevel_11_8007B714
/* 3E1FBF8 8007B6C8 00000000 */   nop
.Llevel_11_8007B6CC:
/* 3E1FBFC 8007B6CC 15000216 */  bne        $s0, $v0, .Llevel_11_8007B724
/* 3E1FC00 8007B6D0 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 3E1FC04 8007B6D4 1400438E */  lw         $v1, 0x14($s2)
/* 3E1FC08 8007B6D8 00000000 */  nop
/* 3E1FC0C 8007B6DC 11006210 */  beq        $v1, $v0, .Llevel_11_8007B724
/* 3E1FC10 8007B6E0 40100300 */   sll       $v0, $v1, 1
/* 3E1FC14 8007B6E4 21104300 */  addu       $v0, $v0, $v1
/* 3E1FC18 8007B6E8 80100200 */  sll        $v0, $v0, 2
/* 3E1FC1C 8007B6EC 23104300 */  subu       $v0, $v0, $v1
/* 3E1FC20 8007B6F0 0780033C */  lui        $v1, %hi(D_8006C550)
/* 3E1FC24 8007B6F4 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 3E1FC28 8007B6F8 C0100200 */  sll        $v0, $v0, 3
/* 3E1FC2C 8007B6FC 21104300 */  addu       $v0, $v0, $v1
/* 3E1FC30 8007B700 48004290 */  lbu        $v0, 0x48($v0)
/* 3E1FC34 8007B704 00000000 */  nop
/* 3E1FC38 8007B708 8000422C */  sltiu      $v0, $v0, 0x80
/* 3E1FC3C 8007B70C 05004014 */  bnez       $v0, .Llevel_11_8007B724
/* 3E1FC40 8007B710 00000000 */   nop
.Llevel_11_8007B714:
/* 3E1FC44 8007B714 0800428E */  lw         $v0, 0x8($s2)
/* 3E1FC48 8007B718 00000000 */  nop
/* 3E1FC4C 8007B71C 80004230 */  andi       $v0, $v0, 0x80
/* 3E1FC50 8007B720 080042AE */  sw         $v0, 0x8($s2)
.Llevel_11_8007B724:
/* 3E1FC54 8007B724 48002292 */  lbu        $v0, 0x48($s1)
/* 3E1FC58 8007B728 00000000 */  nop
/* 3E1FC5C 8007B72C 4A004010 */  beqz       $v0, .Llevel_11_8007B858
/* 3E1FC60 8007B730 00000000 */   nop
/* 3E1FC64 8007B734 1000458E */  lw         $a1, 0x10($s2)
/* 3E1FC68 8007B738 F0EF000C */  jal        func_8003BFC0
/* 3E1FC6C 8007B73C 21202002 */   addu      $a0, $s1, $zero
/* 3E1FC70 8007B740 08004014 */  bnez       $v0, .Llevel_11_8007B764
/* 3E1FC74 8007B744 21282002 */   addu      $a1, $s1, $zero
/* 3E1FC78 8007B748 0780023C */  lui        $v0, %hi(D_8006C654)
/* 3E1FC7C 8007B74C 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 3E1FC80 8007B750 00000000 */  nop
/* 3E1FC84 8007B754 1D004490 */  lbu        $a0, 0x1D($v0)
/* 3E1FC88 8007B758 D4EE000C */  jal        PlaySound
/* 3E1FC8C 8007B75C 04000624 */   addiu     $a2, $zero, 0x4
/* 3E1FC90 8007B760 100042AE */  sw         $v0, 0x10($s2)
.Llevel_11_8007B764:
/* 3E1FC94 8007B764 0780023C */  lui        $v0, %hi(D_8006C640)
/* 3E1FC98 8007B768 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 3E1FC9C 8007B76C 00000000 */  nop
/* 3E1FCA0 8007B770 01004230 */  andi       $v0, $v0, 0x1
/* 3E1FCA4 8007B774 09004014 */  bnez       $v0, .Llevel_11_8007B79C
/* 3E1FCA8 8007B778 01000424 */   addiu     $a0, $zero, 0x1
/* 3E1FCAC 8007B77C 06000524 */  addiu      $a1, $zero, 0x6
/* 3E1FCB0 8007B780 21302002 */  addu       $a2, $s1, $zero
/* 3E1FCB4 8007B784 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 3E1FCB8 8007B788 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 3E1FCBC 8007B78C 00000000 */  nop
/* 3E1FCC0 8007B790 09F84000 */  jalr       $v0
/* 3E1FCC4 8007B794 21380000 */   addu      $a3, $zero, $zero
/* 3E1FCC8 8007B798 01000424 */  addiu      $a0, $zero, 0x1
.Llevel_11_8007B79C:
/* 3E1FCCC 8007B79C 52000524 */  addiu      $a1, $zero, 0x52
/* 3E1FCD0 8007B7A0 21302002 */  addu       $a2, $s1, $zero
/* 3E1FCD4 8007B7A4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 3E1FCD8 8007B7A8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 3E1FCDC 8007B7AC 00000000 */  nop
/* 3E1FCE0 8007B7B0 09F84000 */  jalr       $v0
/* 3E1FCE4 8007B7B4 21380000 */   addu      $a3, $zero, $zero
/* 3E1FCE8 8007B7B8 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 3E1FCEC 8007B7BC 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 3E1FCF0 8007B7C0 13000224 */  addiu      $v0, $zero, 0x13
/* 3E1FCF4 8007B7C4 2E006210 */  beq        $v1, $v0, .Llevel_11_8007B880
/* 3E1FCF8 8007B7C8 00000000 */   nop
/* 3E1FCFC 8007B7CC 0400428E */  lw         $v0, 0x4($s2)
/* 3E1FD00 8007B7D0 00000000 */  nop
/* 3E1FD04 8007B7D4 2A10C202 */  slt        $v0, $s6, $v0
/* 3E1FD08 8007B7D8 29004010 */  beqz       $v0, .Llevel_11_8007B880
/* 3E1FD0C 8007B7DC 00000000 */   nop
/* 3E1FD10 8007B7E0 0780023C */  lui        $v0, %hi(D_8006E344)
/* 3E1FD14 8007B7E4 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 3E1FD18 8007B7E8 00000000 */  nop
/* 3E1FD1C 8007B7EC 24004014 */  bnez       $v0, .Llevel_11_8007B880
/* 3E1FD20 8007B7F0 00000000 */   nop
/* 3E1FD24 8007B7F4 1800A38F */  lw         $v1, 0x18($sp)
/* 3E1FD28 8007B7F8 00000000 */  nop
/* 3E1FD2C 8007B7FC 01FC6228 */  slti       $v0, $v1, -0x3FF
/* 3E1FD30 8007B800 1F004014 */  bnez       $v0, .Llevel_11_8007B880
/* 3E1FD34 8007B804 00000000 */   nop
/* 3E1FD38 8007B808 0000448E */  lw         $a0, 0x0($s2)
/* 3E1FD3C 8007B80C 00000000 */  nop
/* 3E1FD40 8007B810 2A106400 */  slt        $v0, $v1, $a0
/* 3E1FD44 8007B814 1A004010 */  beqz       $v0, .Llevel_11_8007B880
/* 3E1FD48 8007B818 00000000 */   nop
/* 3E1FD4C 8007B81C 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 3E1FD50 8007B820 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 3E1FD54 8007B824 1400228E */  lw         $v0, 0x14($s1)
/* 3E1FD58 8007B828 000C6324 */  addiu      $v1, $v1, 0xC00
/* 3E1FD5C 8007B82C 21104400 */  addu       $v0, $v0, $a0
/* 3E1FD60 8007B830 2A186200 */  slt        $v1, $v1, $v0
/* 3E1FD64 8007B834 12006010 */  beqz       $v1, .Llevel_11_8007B880
/* 3E1FD68 8007B838 0010023C */   lui       $v0, (0x10000020 >> 16)
/* 3E1FD6C 8007B83C 20004234 */  ori        $v0, $v0, (0x10000020 & 0xFFFF)
/* 3E1FD70 8007B840 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 3E1FD74 8007B844 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 3E1FD78 8007B848 0780013C */  lui        $at, %hi(D_80070328 + 0x218)
/* 3E1FD7C 8007B84C 400531AC */  sw         $s1, %lo(D_80070328 + 0x218)($at)
/* 3E1FD80 8007B850 20EE0108 */  j          .Llevel_11_8007B880
/* 3E1FD84 8007B854 00000000 */   nop
.Llevel_11_8007B858:
/* 3E1FD88 8007B858 1000458E */  lw         $a1, 0x10($s2)
/* 3E1FD8C 8007B85C F0EF000C */  jal        func_8003BFC0
/* 3E1FD90 8007B860 21202002 */   addu      $a0, $s1, $zero
/* 3E1FD94 8007B864 06004010 */  beqz       $v0, .Llevel_11_8007B880
/* 3E1FD98 8007B868 00000000 */   nop
/* 3E1FD9C 8007B86C 1000448E */  lw         $a0, 0x10($s2)
/* 3E1FDA0 8007B870 9CEF000C */  jal        func_8003BE70
/* 3E1FDA4 8007B874 00000000 */   nop
/* 3E1FDA8 8007B878 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3E1FDAC 8007B87C 100042AE */  sw         $v0, 0x10($s2)
.Llevel_11_8007B880:
/* 3E1FDB0 8007B880 4000BF8F */  lw         $ra, 0x40($sp)
/* 3E1FDB4 8007B884 3C00B78F */  lw         $s7, 0x3C($sp)
/* 3E1FDB8 8007B888 3800B68F */  lw         $s6, 0x38($sp)
/* 3E1FDBC 8007B88C 3400B58F */  lw         $s5, 0x34($sp)
/* 3E1FDC0 8007B890 3000B48F */  lw         $s4, 0x30($sp)
/* 3E1FDC4 8007B894 2C00B38F */  lw         $s3, 0x2C($sp)
/* 3E1FDC8 8007B898 2800B28F */  lw         $s2, 0x28($sp)
/* 3E1FDCC 8007B89C 2400B18F */  lw         $s1, 0x24($sp)
/* 3E1FDD0 8007B8A0 2000B08F */  lw         $s0, 0x20($sp)
/* 3E1FDD4 8007B8A4 4800BD27 */  addiu      $sp, $sp, 0x48
/* 3E1FDD8 8007B8A8 0800E003 */  jr         $ra
/* 3E1FDDC 8007B8AC 00000000 */   nop
.size func_level_11_8007B388, . - func_level_11_8007B388
