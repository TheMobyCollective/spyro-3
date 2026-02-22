.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_8008C2D4
/* 6DF3804 8008C2D4 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 6DF3808 8008C2D8 2400B1AF */  sw         $s1, 0x24($sp)
/* 6DF380C 8008C2DC 21888000 */  addu       $s1, $a0, $zero
/* 6DF3810 8008C2E0 3400B5AF */  sw         $s5, 0x34($sp)
/* 6DF3814 8008C2E4 0780153C */  lui        $s5, %hi(D_80070328 + 0x50)
/* 6DF3818 8008C2E8 7803B526 */  addiu      $s5, $s5, %lo(D_80070328 + 0x50)
/* 6DF381C 8008C2EC 06000324 */  addiu      $v1, $zero, 0x6
/* 6DF3820 8008C2F0 4000BFAF */  sw         $ra, 0x40($sp)
/* 6DF3824 8008C2F4 3C00B7AF */  sw         $s7, 0x3C($sp)
/* 6DF3828 8008C2F8 3800B6AF */  sw         $s6, 0x38($sp)
/* 6DF382C 8008C2FC 3000B4AF */  sw         $s4, 0x30($sp)
/* 6DF3830 8008C300 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 6DF3834 8008C304 2800B2AF */  sw         $s2, 0x28($sp)
/* 6DF3838 8008C308 2000B0AF */  sw         $s0, 0x20($sp)
/* 6DF383C 8008C30C 0000A28E */  lw         $v0, 0x0($s5)
/* 6DF3840 8008C310 0000328E */  lw         $s2, 0x0($s1)
/* 6DF3844 8008C314 06004310 */  beq        $v0, $v1, .Llevel_32_8008C330
/* 6DF3848 8008C318 00000000 */   nop
/* 6DF384C 8008C31C 0780023C */  lui        $v0, %hi(D_80070328 + 0x244)
/* 6DF3850 8008C320 6C05428C */  lw         $v0, %lo(D_80070328 + 0x244)($v0)
/* 6DF3854 8008C324 00000000 */  nop
/* 6DF3858 8008C328 07004010 */  beqz       $v0, .Llevel_32_8008C348
/* 6DF385C 8008C32C 02001424 */   addiu     $s4, $zero, 0x2
.Llevel_32_8008C330:
/* 6DF3860 8008C330 48002292 */  lbu        $v0, 0x48($s1)
/* 6DF3864 8008C334 00000000 */  nop
/* 6DF3868 8008C338 24014010 */  beqz       $v0, .Llevel_32_8008C7CC
/* 6DF386C 8008C33C 02000224 */   addiu     $v0, $zero, 0x2
/* 6DF3870 8008C340 F3310208 */  j          .Llevel_32_8008C7CC
/* 6DF3874 8008C344 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_32_8008C348:
/* 6DF3878 8008C348 48002292 */  lbu        $v0, 0x48($s1)
/* 6DF387C 8008C34C 00000000 */  nop
/* 6DF3880 8008C350 03005414 */  bne        $v0, $s4, .Llevel_32_8008C360
/* 6DF3884 8008C354 1000A427 */   addiu     $a0, $sp, 0x10
/* 6DF3888 8008C358 01000224 */  addiu      $v0, $zero, 0x1
/* 6DF388C 8008C35C 480022A2 */  sb         $v0, 0x48($s1)
.Llevel_32_8008C360:
/* 6DF3890 8008C360 B0FFB726 */  addiu      $s7, $s5, -0x50
/* 6DF3894 8008C364 2128E002 */  addu       $a1, $s7, $zero
/* 6DF3898 8008C368 0800428E */  lw         $v0, 0x8($s2)
/* 6DF389C 8008C36C 0C003326 */  addiu      $s3, $s1, 0xC
/* 6DF38A0 8008C370 21306002 */  addu       $a2, $s3, $zero
/* 6DF38A4 8008C374 723C010C */  jal        func_8004F1C8
/* 6DF38A8 8008C378 7F005030 */   andi      $s0, $v0, 0x7F
/* 6DF38AC 8008C37C 1000A427 */  addiu      $a0, $sp, 0x10
/* 6DF38B0 8008C380 7A3B010C */  jal        func_8004EDE8
/* 6DF38B4 8008C384 21280000 */   addu      $a1, $zero, $zero
/* 6DF38B8 8008C388 63000012 */  beqz       $s0, .Llevel_32_8008C518
/* 6DF38BC 8008C38C 21B04000 */   addu      $s6, $v0, $zero
/* 6DF38C0 8008C390 01000424 */  addiu      $a0, $zero, 0x1
/* 6DF38C4 8008C394 35000416 */  bne        $s0, $a0, .Llevel_32_8008C46C
/* 6DF38C8 8008C398 00000000 */   nop
/* 6DF38CC 8008C39C 49002392 */  lbu        $v1, 0x49($s1)
/* 6DF38D0 8008C3A0 00000000 */  nop
/* 6DF38D4 8008C3A4 1F007010 */  beq        $v1, $s0, .Llevel_32_8008C424
/* 6DF38D8 8008C3A8 02006228 */   slti      $v0, $v1, 0x2
/* 6DF38DC 8008C3AC 05004010 */  beqz       $v0, .Llevel_32_8008C3C4
/* 6DF38E0 8008C3B0 00000000 */   nop
/* 6DF38E4 8008C3B4 09006010 */  beqz       $v1, .Llevel_32_8008C3DC
/* 6DF38E8 8008C3B8 00000000 */   nop
/* 6DF38EC 8008C3BC 9C310208 */  j          .Llevel_32_8008C670
/* 6DF38F0 8008C3C0 00000000 */   nop
.Llevel_32_8008C3C4:
/* 6DF38F4 8008C3C4 1E007410 */  beq        $v1, $s4, .Llevel_32_8008C440
/* 6DF38F8 8008C3C8 03000224 */   addiu     $v0, $zero, 0x3
/* 6DF38FC 8008C3CC 23006210 */  beq        $v1, $v0, .Llevel_32_8008C45C
/* 6DF3900 8008C3D0 00000000 */   nop
/* 6DF3904 8008C3D4 9C310208 */  j          .Llevel_32_8008C670
/* 6DF3908 8008C3D8 00000000 */   nop
.Llevel_32_8008C3DC:
/* 6DF390C 8008C3DC 0400428E */  lw         $v0, 0x4($s2)
/* 6DF3910 8008C3E0 00000000 */  nop
/* 6DF3914 8008C3E4 00044224 */  addiu      $v0, $v0, 0x400
/* 6DF3918 8008C3E8 2A10C202 */  slt        $v0, $s6, $v0
/* 6DF391C 8008C3EC A0004010 */  beqz       $v0, .Llevel_32_8008C670
/* 6DF3920 8008C3F0 00000000 */   nop
/* 6DF3924 8008C3F4 1800A28F */  lw         $v0, 0x18($sp)
/* 6DF3928 8008C3F8 00000000 */  nop
/* 6DF392C 8008C3FC 02004104 */  bgez       $v0, .Llevel_32_8008C408
/* 6DF3930 8008C400 00000000 */   nop
/* 6DF3934 8008C404 23100200 */  negu       $v0, $v0
.Llevel_32_8008C408:
/* 6DF3938 8008C408 00044228 */  slti       $v0, $v0, 0x400
/* 6DF393C 8008C40C 98004010 */  beqz       $v0, .Llevel_32_8008C670
/* 6DF3940 8008C410 3C000224 */   addiu     $v0, $zero, 0x3C
/* 6DF3944 8008C414 0C0042AE */  sw         $v0, 0xC($s2)
/* 6DF3948 8008C418 01000224 */  addiu      $v0, $zero, 0x1
/* 6DF394C 8008C41C 9C310208 */  j          .Llevel_32_8008C670
/* 6DF3950 8008C420 490022A2 */   sb        $v0, 0x49($s1)
.Llevel_32_8008C424:
/* 6DF3954 8008C424 0C004426 */  addiu      $a0, $s2, 0xC
/* 6DF3958 8008C428 69D6000C */  jal        func_800359A4
/* 6DF395C 8008C42C 04000524 */   addiu     $a1, $zero, 0x4
/* 6DF3960 8008C430 8F004010 */  beqz       $v0, .Llevel_32_8008C670
/* 6DF3964 8008C434 02000224 */   addiu     $v0, $zero, 0x2
/* 6DF3968 8008C438 45310208 */  j          .Llevel_32_8008C514
/* 6DF396C 8008C43C 00000000 */   nop
.Llevel_32_8008C440:
/* 6DF3970 8008C440 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 6DF3974 8008C444 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 6DF3978 8008C448 13000224 */  addiu      $v0, $zero, 0x13
/* 6DF397C 8008C44C 88006214 */  bne        $v1, $v0, .Llevel_32_8008C670
/* 6DF3980 8008C450 3C000224 */   addiu     $v0, $zero, 0x3C
/* 6DF3984 8008C454 59310208 */  j          .Llevel_32_8008C564
/* 6DF3988 8008C458 00000000 */   nop
.Llevel_32_8008C45C:
/* 6DF398C 8008C45C 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 6DF3990 8008C460 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 6DF3994 8008C464 5E310208 */  j          .Llevel_32_8008C578
/* 6DF3998 8008C468 13000224 */   addiu     $v0, $zero, 0x13
.Llevel_32_8008C46C:
/* 6DF399C 8008C46C 03000224 */  addiu      $v0, $zero, 0x3
/* 6DF39A0 8008C470 4B000216 */  bne        $s0, $v0, .Llevel_32_8008C5A0
/* 6DF39A4 8008C474 00000000 */   nop
/* 6DF39A8 8008C478 49002392 */  lbu        $v1, 0x49($s1)
/* 6DF39AC 8008C47C 00000000 */  nop
/* 6DF39B0 8008C480 1C006410 */  beq        $v1, $a0, .Llevel_32_8008C4F4
/* 6DF39B4 8008C484 02006228 */   slti      $v0, $v1, 0x2
/* 6DF39B8 8008C488 05004010 */  beqz       $v0, .Llevel_32_8008C4A0
/* 6DF39BC 8008C48C 00000000 */   nop
/* 6DF39C0 8008C490 09006010 */  beqz       $v1, .Llevel_32_8008C4B8
/* 6DF39C4 8008C494 00000000 */   nop
/* 6DF39C8 8008C498 9C310208 */  j          .Llevel_32_8008C670
/* 6DF39CC 8008C49C 00000000 */   nop
.Llevel_32_8008C4A0:
/* 6DF39D0 8008C4A0 20007410 */  beq        $v1, $s4, .Llevel_32_8008C524
/* 6DF39D4 8008C4A4 13000224 */   addiu     $v0, $zero, 0x13
/* 6DF39D8 8008C4A8 32007010 */  beq        $v1, $s0, .Llevel_32_8008C574
/* 6DF39DC 8008C4AC 00000000 */   nop
/* 6DF39E0 8008C4B0 9C310208 */  j          .Llevel_32_8008C670
/* 6DF39E4 8008C4B4 00000000 */   nop
.Llevel_32_8008C4B8:
/* 6DF39E8 8008C4B8 0400428E */  lw         $v0, 0x4($s2)
/* 6DF39EC 8008C4BC 00000000 */  nop
/* 6DF39F0 8008C4C0 00084224 */  addiu      $v0, $v0, 0x800
/* 6DF39F4 8008C4C4 2A105600 */  slt        $v0, $v0, $s6
/* 6DF39F8 8008C4C8 69004010 */  beqz       $v0, .Llevel_32_8008C670
/* 6DF39FC 8008C4CC 0020C22A */   slti      $v0, $s6, 0x2000
/* 6DF3A00 8008C4D0 67004010 */  beqz       $v0, .Llevel_32_8008C670
/* 6DF3A04 8008C4D4 00000000 */   nop
/* 6DF3A08 8008C4D8 1800A28F */  lw         $v0, 0x18($sp)
/* 6DF3A0C 8008C4DC 00000000 */  nop
/* 6DF3A10 8008C4E0 02004104 */  bgez       $v0, .Llevel_32_8008C4EC
/* 6DF3A14 8008C4E4 00000000 */   nop
/* 6DF3A18 8008C4E8 23100200 */  negu       $v0, $v0
.Llevel_32_8008C4EC:
/* 6DF3A1C 8008C4EC 41310208 */  j          .Llevel_32_8008C504
/* 6DF3A20 8008C4F0 00044228 */   slti      $v0, $v0, 0x400
.Llevel_32_8008C4F4:
/* 6DF3A24 8008C4F4 0400428E */  lw         $v0, 0x4($s2)
/* 6DF3A28 8008C4F8 00000000 */  nop
/* 6DF3A2C 8008C4FC 00084224 */  addiu      $v0, $v0, 0x800
/* 6DF3A30 8008C500 2A105600 */  slt        $v0, $v0, $s6
.Llevel_32_8008C504:
/* 6DF3A34 8008C504 5A004010 */  beqz       $v0, .Llevel_32_8008C670
/* 6DF3A38 8008C508 3C000224 */   addiu     $v0, $zero, 0x3C
/* 6DF3A3C 8008C50C 0C0042AE */  sw         $v0, 0xC($s2)
/* 6DF3A40 8008C510 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_32_8008C514:
/* 6DF3A44 8008C514 490022A2 */  sb         $v0, 0x49($s1)
.Llevel_32_8008C518:
/* 6DF3A48 8008C518 01000224 */  addiu      $v0, $zero, 0x1
/* 6DF3A4C 8008C51C 9C310208 */  j          .Llevel_32_8008C670
/* 6DF3A50 8008C520 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_32_8008C524:
/* 6DF3A54 8008C524 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 6DF3A58 8008C528 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 6DF3A5C 8008C52C 00000000 */  nop
/* 6DF3A60 8008C530 0B006210 */  beq        $v1, $v0, .Llevel_32_8008C560
/* 6DF3A64 8008C534 0128C22A */   slti      $v0, $s6, 0x2801
/* 6DF3A68 8008C538 0A004010 */  beqz       $v0, .Llevel_32_8008C564
/* 6DF3A6C 8008C53C 3C000224 */   addiu     $v0, $zero, 0x3C
/* 6DF3A70 8008C540 0780023C */  lui        $v0, %hi(D_80070328 + 8)
/* 6DF3A74 8008C544 3003428C */  lw         $v0, %lo(D_80070328 + 8)($v0)
/* 6DF3A78 8008C548 1400238E */  lw         $v1, 0x14($s1)
/* 6DF3A7C 8008C54C 00000000 */  nop
/* 6DF3A80 8008C550 23104300 */  subu       $v0, $v0, $v1
/* 6DF3A84 8008C554 010C4228 */  slti       $v0, $v0, 0xC01
/* 6DF3A88 8008C558 45004014 */  bnez       $v0, .Llevel_32_8008C670
/* 6DF3A8C 8008C55C 00000000 */   nop
.Llevel_32_8008C560:
/* 6DF3A90 8008C560 3C000224 */  addiu      $v0, $zero, 0x3C
.Llevel_32_8008C564:
/* 6DF3A94 8008C564 0C0042AE */  sw         $v0, 0xC($s2)
/* 6DF3A98 8008C568 03000224 */  addiu      $v0, $zero, 0x3
/* 6DF3A9C 8008C56C 9C310208 */  j          .Llevel_32_8008C670
/* 6DF3AA0 8008C570 490022A2 */   sb        $v0, 0x49($s1)
.Llevel_32_8008C574:
/* 6DF3AA4 8008C574 F8FFA38E */  lw         $v1, -0x8($s5)
.Llevel_32_8008C578:
/* 6DF3AA8 8008C578 00000000 */  nop
/* 6DF3AAC 8008C57C 3C006210 */  beq        $v1, $v0, .Llevel_32_8008C670
/* 6DF3AB0 8008C580 0C004426 */   addiu     $a0, $s2, 0xC
/* 6DF3AB4 8008C584 69D6000C */  jal        func_800359A4
/* 6DF3AB8 8008C588 04000524 */   addiu     $a1, $zero, 0x4
/* 6DF3ABC 8008C58C 38004010 */  beqz       $v0, .Llevel_32_8008C670
/* 6DF3AC0 8008C590 00000000 */   nop
/* 6DF3AC4 8008C594 490020A2 */  sb         $zero, 0x49($s1)
/* 6DF3AC8 8008C598 9C310208 */  j          .Llevel_32_8008C670
/* 6DF3ACC 8008C59C 480020A2 */   sb        $zero, 0x48($s1)
.Llevel_32_8008C5A0:
/* 6DF3AD0 8008C5A0 04000224 */  addiu      $v0, $zero, 0x4
/* 6DF3AD4 8008C5A4 1C000216 */  bne        $s0, $v0, .Llevel_32_8008C618
/* 6DF3AD8 8008C5A8 05000224 */   addiu     $v0, $zero, 0x5
/* 6DF3ADC 8008C5AC 0780023C */  lui        $v0, %hi(D_8006C7B4)
/* 6DF3AE0 8008C5B0 B4C74290 */  lbu        $v0, %lo(D_8006C7B4)($v0)
/* 6DF3AE4 8008C5B4 00000000 */  nop
/* 6DF3AE8 8008C5B8 01004230 */  andi       $v0, $v0, 0x1
/* 6DF3AEC 8008C5BC 0A004014 */  bnez       $v0, .Llevel_32_8008C5E8
/* 6DF3AF0 8008C5C0 21206002 */   addu      $a0, $s3, $zero
/* 6DF3AF4 8008C5C4 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 6DF3AF8 8008C5C8 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 6DF3AFC 8008C5CC 0780013C */  lui        $at, %hi(D_80070300)
/* 6DF3B00 8008C5D0 21082200 */  addu       $at, $at, $v0
/* 6DF3B04 8008C5D4 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 6DF3B08 8008C5D8 00000000 */  nop
/* 6DF3B0C 8008C5DC 01004230 */  andi       $v0, $v0, 0x1
/* 6DF3B10 8008C5E0 23004010 */  beqz       $v0, .Llevel_32_8008C670
/* 6DF3B14 8008C5E4 00000000 */   nop
.Llevel_32_8008C5E8:
/* 6DF3B18 8008C5E8 CD3C010C */  jal        func_8004F334
/* 6DF3B1C 8008C5EC 2128E002 */   addu      $a1, $s7, $zero
/* 6DF3B20 8008C5F0 01084228 */  slti       $v0, $v0, 0x801
/* 6DF3B24 8008C5F4 1E004014 */  bnez       $v0, .Llevel_32_8008C670
/* 6DF3B28 8008C5F8 00000000 */   nop
/* 6DF3B2C 8008C5FC 0780023C */  lui        $v0, %hi(D_8006C640)
/* 6DF3B30 8008C600 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 6DF3B34 8008C604 00000000 */  nop
/* 6DF3B38 8008C608 19004018 */  blez       $v0, .Llevel_32_8008C670
/* 6DF3B3C 8008C60C 00000000 */   nop
/* 6DF3B40 8008C610 98310208 */  j          .Llevel_32_8008C660
/* 6DF3B44 8008C614 00000000 */   nop
.Llevel_32_8008C618:
/* 6DF3B48 8008C618 15000216 */  bne        $s0, $v0, .Llevel_32_8008C670
/* 6DF3B4C 8008C61C FFFF0224 */   addiu     $v0, $zero, -0x1
/* 6DF3B50 8008C620 1400438E */  lw         $v1, 0x14($s2)
/* 6DF3B54 8008C624 00000000 */  nop
/* 6DF3B58 8008C628 11006210 */  beq        $v1, $v0, .Llevel_32_8008C670
/* 6DF3B5C 8008C62C 40100300 */   sll       $v0, $v1, 1
/* 6DF3B60 8008C630 21104300 */  addu       $v0, $v0, $v1
/* 6DF3B64 8008C634 80100200 */  sll        $v0, $v0, 2
/* 6DF3B68 8008C638 23104300 */  subu       $v0, $v0, $v1
/* 6DF3B6C 8008C63C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 6DF3B70 8008C640 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 6DF3B74 8008C644 C0100200 */  sll        $v0, $v0, 3
/* 6DF3B78 8008C648 21104300 */  addu       $v0, $v0, $v1
/* 6DF3B7C 8008C64C 48004290 */  lbu        $v0, 0x48($v0)
/* 6DF3B80 8008C650 00000000 */  nop
/* 6DF3B84 8008C654 8000422C */  sltiu      $v0, $v0, 0x80
/* 6DF3B88 8008C658 05004014 */  bnez       $v0, .Llevel_32_8008C670
/* 6DF3B8C 8008C65C 00000000 */   nop
.Llevel_32_8008C660:
/* 6DF3B90 8008C660 0800428E */  lw         $v0, 0x8($s2)
/* 6DF3B94 8008C664 00000000 */  nop
/* 6DF3B98 8008C668 80004230 */  andi       $v0, $v0, 0x80
/* 6DF3B9C 8008C66C 080042AE */  sw         $v0, 0x8($s2)
.Llevel_32_8008C670:
/* 6DF3BA0 8008C670 48002292 */  lbu        $v0, 0x48($s1)
/* 6DF3BA4 8008C674 00000000 */  nop
/* 6DF3BA8 8008C678 4A004010 */  beqz       $v0, .Llevel_32_8008C7A4
/* 6DF3BAC 8008C67C 00000000 */   nop
/* 6DF3BB0 8008C680 1000458E */  lw         $a1, 0x10($s2)
/* 6DF3BB4 8008C684 F0EF000C */  jal        func_8003BFC0
/* 6DF3BB8 8008C688 21202002 */   addu      $a0, $s1, $zero
/* 6DF3BBC 8008C68C 08004014 */  bnez       $v0, .Llevel_32_8008C6B0
/* 6DF3BC0 8008C690 21282002 */   addu      $a1, $s1, $zero
/* 6DF3BC4 8008C694 0780023C */  lui        $v0, %hi(D_8006C654)
/* 6DF3BC8 8008C698 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 6DF3BCC 8008C69C 00000000 */  nop
/* 6DF3BD0 8008C6A0 1D004490 */  lbu        $a0, 0x1D($v0)
/* 6DF3BD4 8008C6A4 D4EE000C */  jal        PlaySound
/* 6DF3BD8 8008C6A8 04000624 */   addiu     $a2, $zero, 0x4
/* 6DF3BDC 8008C6AC 100042AE */  sw         $v0, 0x10($s2)
.Llevel_32_8008C6B0:
/* 6DF3BE0 8008C6B0 0780023C */  lui        $v0, %hi(D_8006C640)
/* 6DF3BE4 8008C6B4 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 6DF3BE8 8008C6B8 00000000 */  nop
/* 6DF3BEC 8008C6BC 01004230 */  andi       $v0, $v0, 0x1
/* 6DF3BF0 8008C6C0 09004014 */  bnez       $v0, .Llevel_32_8008C6E8
/* 6DF3BF4 8008C6C4 01000424 */   addiu     $a0, $zero, 0x1
/* 6DF3BF8 8008C6C8 06000524 */  addiu      $a1, $zero, 0x6
/* 6DF3BFC 8008C6CC 21302002 */  addu       $a2, $s1, $zero
/* 6DF3C00 8008C6D0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DF3C04 8008C6D4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DF3C08 8008C6D8 00000000 */  nop
/* 6DF3C0C 8008C6DC 09F84000 */  jalr       $v0
/* 6DF3C10 8008C6E0 21380000 */   addu      $a3, $zero, $zero
/* 6DF3C14 8008C6E4 01000424 */  addiu      $a0, $zero, 0x1
.Llevel_32_8008C6E8:
/* 6DF3C18 8008C6E8 52000524 */  addiu      $a1, $zero, 0x52
/* 6DF3C1C 8008C6EC 21302002 */  addu       $a2, $s1, $zero
/* 6DF3C20 8008C6F0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DF3C24 8008C6F4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DF3C28 8008C6F8 00000000 */  nop
/* 6DF3C2C 8008C6FC 09F84000 */  jalr       $v0
/* 6DF3C30 8008C700 21380000 */   addu      $a3, $zero, $zero
/* 6DF3C34 8008C704 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 6DF3C38 8008C708 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 6DF3C3C 8008C70C 13000224 */  addiu      $v0, $zero, 0x13
/* 6DF3C40 8008C710 2E006210 */  beq        $v1, $v0, .Llevel_32_8008C7CC
/* 6DF3C44 8008C714 00000000 */   nop
/* 6DF3C48 8008C718 0400428E */  lw         $v0, 0x4($s2)
/* 6DF3C4C 8008C71C 00000000 */  nop
/* 6DF3C50 8008C720 2A10C202 */  slt        $v0, $s6, $v0
/* 6DF3C54 8008C724 29004010 */  beqz       $v0, .Llevel_32_8008C7CC
/* 6DF3C58 8008C728 00000000 */   nop
/* 6DF3C5C 8008C72C 0780023C */  lui        $v0, %hi(D_8006E344)
/* 6DF3C60 8008C730 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 6DF3C64 8008C734 00000000 */  nop
/* 6DF3C68 8008C738 24004014 */  bnez       $v0, .Llevel_32_8008C7CC
/* 6DF3C6C 8008C73C 00000000 */   nop
/* 6DF3C70 8008C740 1800A38F */  lw         $v1, 0x18($sp)
/* 6DF3C74 8008C744 00000000 */  nop
/* 6DF3C78 8008C748 01FC6228 */  slti       $v0, $v1, -0x3FF
/* 6DF3C7C 8008C74C 1F004014 */  bnez       $v0, .Llevel_32_8008C7CC
/* 6DF3C80 8008C750 00000000 */   nop
/* 6DF3C84 8008C754 0000448E */  lw         $a0, 0x0($s2)
/* 6DF3C88 8008C758 00000000 */  nop
/* 6DF3C8C 8008C75C 2A106400 */  slt        $v0, $v1, $a0
/* 6DF3C90 8008C760 1A004010 */  beqz       $v0, .Llevel_32_8008C7CC
/* 6DF3C94 8008C764 00000000 */   nop
/* 6DF3C98 8008C768 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 6DF3C9C 8008C76C 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 6DF3CA0 8008C770 1400228E */  lw         $v0, 0x14($s1)
/* 6DF3CA4 8008C774 000C6324 */  addiu      $v1, $v1, 0xC00
/* 6DF3CA8 8008C778 21104400 */  addu       $v0, $v0, $a0
/* 6DF3CAC 8008C77C 2A186200 */  slt        $v1, $v1, $v0
/* 6DF3CB0 8008C780 12006010 */  beqz       $v1, .Llevel_32_8008C7CC
/* 6DF3CB4 8008C784 0010023C */   lui       $v0, (0x10000020 >> 16)
/* 6DF3CB8 8008C788 20004234 */  ori        $v0, $v0, (0x10000020 & 0xFFFF)
/* 6DF3CBC 8008C78C 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 6DF3CC0 8008C790 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 6DF3CC4 8008C794 0780013C */  lui        $at, %hi(D_80070328 + 0x218)
/* 6DF3CC8 8008C798 400531AC */  sw         $s1, %lo(D_80070328 + 0x218)($at)
/* 6DF3CCC 8008C79C F3310208 */  j          .Llevel_32_8008C7CC
/* 6DF3CD0 8008C7A0 00000000 */   nop
.Llevel_32_8008C7A4:
/* 6DF3CD4 8008C7A4 1000458E */  lw         $a1, 0x10($s2)
/* 6DF3CD8 8008C7A8 F0EF000C */  jal        func_8003BFC0
/* 6DF3CDC 8008C7AC 21202002 */   addu      $a0, $s1, $zero
/* 6DF3CE0 8008C7B0 06004010 */  beqz       $v0, .Llevel_32_8008C7CC
/* 6DF3CE4 8008C7B4 00000000 */   nop
/* 6DF3CE8 8008C7B8 1000448E */  lw         $a0, 0x10($s2)
/* 6DF3CEC 8008C7BC 9CEF000C */  jal        func_8003BE70
/* 6DF3CF0 8008C7C0 00000000 */   nop
/* 6DF3CF4 8008C7C4 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 6DF3CF8 8008C7C8 100042AE */  sw         $v0, 0x10($s2)
.Llevel_32_8008C7CC:
/* 6DF3CFC 8008C7CC 4000BF8F */  lw         $ra, 0x40($sp)
/* 6DF3D00 8008C7D0 3C00B78F */  lw         $s7, 0x3C($sp)
/* 6DF3D04 8008C7D4 3800B68F */  lw         $s6, 0x38($sp)
/* 6DF3D08 8008C7D8 3400B58F */  lw         $s5, 0x34($sp)
/* 6DF3D0C 8008C7DC 3000B48F */  lw         $s4, 0x30($sp)
/* 6DF3D10 8008C7E0 2C00B38F */  lw         $s3, 0x2C($sp)
/* 6DF3D14 8008C7E4 2800B28F */  lw         $s2, 0x28($sp)
/* 6DF3D18 8008C7E8 2400B18F */  lw         $s1, 0x24($sp)
/* 6DF3D1C 8008C7EC 2000B08F */  lw         $s0, 0x20($sp)
/* 6DF3D20 8008C7F0 4800BD27 */  addiu      $sp, $sp, 0x48
/* 6DF3D24 8008C7F4 0800E003 */  jr         $ra
/* 6DF3D28 8008C7F8 00000000 */   nop
.size func_level_32_8008C2D4, . - func_level_32_8008C2D4
