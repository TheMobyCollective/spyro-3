.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_38_8007B450
/* 7C3A180 8007B450 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 7C3A184 8007B454 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 7C3A188 8007B458 21888000 */  addu       $s1, $a0, $zero
/* 7C3A18C 8007B45C 6C00BFAF */  sw         $ra, 0x6C($sp)
/* 7C3A190 8007B460 6800B4AF */  sw         $s4, 0x68($sp)
/* 7C3A194 8007B464 6400B3AF */  sw         $s3, 0x64($sp)
/* 7C3A198 8007B468 6000B2AF */  sw         $s2, 0x60($sp)
/* 7C3A19C 8007B46C 5800B0AF */  sw         $s0, 0x58($sp)
/* 7C3A1A0 8007B470 0C00268E */  lw         $a2, 0xC($s1)
/* 7C3A1A4 8007B474 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 7C3A1A8 8007B478 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 7C3A1AC 8007B47C 0000338E */  lw         $s3, 0x0($s1)
/* 7C3A1B0 8007B480 0004C328 */  slti       $v1, $a2, 0x400
/* 7C3A1B4 8007B484 0000478C */  lw         $a3, 0x0($v0)
/* 7C3A1B8 8007B488 B2006014 */  bnez       $v1, .Llevel_38_8007B754
/* 7C3A1BC 8007B48C 00000000 */   nop
/* 7C3A1C0 8007B490 1000258E */  lw         $a1, 0x10($s1)
/* 7C3A1C4 8007B494 00000000 */  nop
/* 7C3A1C8 8007B498 0004A228 */  slti       $v0, $a1, 0x400
/* 7C3A1CC 8007B49C AD004014 */  bnez       $v0, .Llevel_38_8007B754
/* 7C3A1D0 8007B4A0 00000000 */   nop
/* 7C3A1D4 8007B4A4 1400248E */  lw         $a0, 0x14($s1)
/* 7C3A1D8 8007B4A8 00000000 */  nop
/* 7C3A1DC 8007B4AC 00048228 */  slti       $v0, $a0, 0x400
/* 7C3A1E0 8007B4B0 A8004014 */  bnez       $v0, .Llevel_38_8007B754
/* 7C3A1E4 8007B4B4 0300033C */   lui       $v1, (0x3E800 >> 16)
/* 7C3A1E8 8007B4B8 00E86334 */  ori        $v1, $v1, (0x3E800 & 0xFFFF)
/* 7C3A1EC 8007B4BC 2A106600 */  slt        $v0, $v1, $a2
/* 7C3A1F0 8007B4C0 A4004014 */  bnez       $v0, .Llevel_38_8007B754
/* 7C3A1F4 8007B4C4 2A106500 */   slt       $v0, $v1, $a1
/* 7C3A1F8 8007B4C8 A2004014 */  bnez       $v0, .Llevel_38_8007B754
/* 7C3A1FC 8007B4CC 2A106400 */   slt       $v0, $v1, $a0
/* 7C3A200 8007B4D0 A0004014 */  bnez       $v0, .Llevel_38_8007B754
/* 7C3A204 8007B4D4 00000000 */   nop
/* 7C3A208 8007B4D8 4D002292 */  lbu        $v0, 0x4D($s1)
/* 7C3A20C 8007B4DC 00000000 */  nop
/* 7C3A210 8007B4E0 9C004010 */  beqz       $v0, .Llevel_38_8007B754
/* 7C3A214 8007B4E4 1800A427 */   addiu     $a0, $sp, 0x18
/* 7C3A218 8007B4E8 0C003426 */  addiu      $s4, $s1, 0xC
/* 7C3A21C 8007B4EC 3200E294 */  lhu        $v0, 0x32($a3)
/* 7C3A220 8007B4F0 21288002 */  addu       $a1, $s4, $zero
/* 7C3A224 8007B4F4 01004224 */  addiu      $v0, $v0, 0x1
/* 7C3A228 8007B4F8 5E3C010C */  jal        func_8004F178
/* 7C3A22C 8007B4FC 3200E2A4 */   sh        $v0, 0x32($a3)
/* 7C3A230 8007B500 0C00228E */  lw         $v0, 0xC($s1)
/* 7C3A234 8007B504 0000638E */  lw         $v1, 0x0($s3)
/* 7C3A238 8007B508 00000000 */  nop
/* 7C3A23C 8007B50C 21104300 */  addu       $v0, $v0, $v1
/* 7C3A240 8007B510 0C0022AE */  sw         $v0, 0xC($s1)
/* 7C3A244 8007B514 1000228E */  lw         $v0, 0x10($s1)
/* 7C3A248 8007B518 0400638E */  lw         $v1, 0x4($s3)
/* 7C3A24C 8007B51C 00000000 */  nop
/* 7C3A250 8007B520 21104300 */  addu       $v0, $v0, $v1
/* 7C3A254 8007B524 100022AE */  sw         $v0, 0x10($s1)
/* 7C3A258 8007B528 1400228E */  lw         $v0, 0x14($s1)
/* 7C3A25C 8007B52C 0800638E */  lw         $v1, 0x8($s3)
/* 7C3A260 8007B530 48002492 */  lbu        $a0, 0x48($s1)
/* 7C3A264 8007B534 21104300 */  addu       $v0, $v0, $v1
/* 7C3A268 8007B538 82008014 */  bnez       $a0, .Llevel_38_8007B744
/* 7C3A26C 8007B53C 140022AE */   sw        $v0, 0x14($s1)
/* 7C3A270 8007B540 21208002 */  addu       $a0, $s4, $zero
/* 7C3A274 8007B544 32000524 */  addiu      $a1, $zero, 0x32
/* 7C3A278 8007B548 01000624 */  addiu      $a2, $zero, 0x1
/* 7C3A27C 8007B54C 21380000 */  addu       $a3, $zero, $zero
/* 7C3A280 8007B550 0100023C */  lui        $v0, (0x10000 >> 16)
/* 7C3A284 8007B554 1000A2AF */  sw         $v0, 0x10($sp)
/* 7C3A288 8007B558 8C6E000C */  jal        func_8001BA30
/* 7C3A28C 8007B55C 1400B1AF */   sw        $s1, 0x14($sp)
/* 7C3A290 8007B560 21904000 */  addu       $s2, $v0, $zero
/* 7C3A294 8007B564 13004012 */  beqz       $s2, .Llevel_38_8007B5B4
/* 7C3A298 8007B568 21300000 */   addu      $a2, $zero, $zero
/* 7C3A29C 8007B56C 0C00438E */  lw         $v1, 0xC($s2)
/* 7C3A2A0 8007B570 0C00248E */  lw         $a0, 0xC($s1)
/* 7C3A2A4 8007B574 1000428E */  lw         $v0, 0x10($s2)
/* 7C3A2A8 8007B578 1000258E */  lw         $a1, 0x10($s1)
/* 7C3A2AC 8007B57C 23206400 */  subu       $a0, $v1, $a0
/* 7C3A2B0 8007B580 203A010C */  jal        func_8004E880
/* 7C3A2B4 8007B584 23284500 */   subu      $a1, $v0, $a1
/* 7C3A2B8 8007B588 21300000 */  addu       $a2, $zero, $zero
/* 7C3A2BC 8007B58C 0000648E */  lw         $a0, 0x0($s3)
/* 7C3A2C0 8007B590 0400658E */  lw         $a1, 0x4($s3)
/* 7C3A2C4 8007B594 203A010C */  jal        func_8004E880
/* 7C3A2C8 8007B598 21804000 */   addu      $s0, $v0, $zero
/* 7C3A2CC 8007B59C 21200002 */  addu       $a0, $s0, $zero
/* 7C3A2D0 8007B5A0 21284000 */  addu       $a1, $v0, $zero
/* 7C3A2D4 8007B5A4 20000624 */  addiu      $a2, $zero, 0x20
/* 7C3A2D8 8007B5A8 3ED8000C */  jal        func_800360F8
/* 7C3A2DC 8007B5AC 40000724 */   addiu     $a3, $zero, 0x40
/* 7C3A2E0 8007B5B0 510042A2 */  sb         $v0, 0x51($s2)
.Llevel_38_8007B5B4:
/* 7C3A2E4 8007B5B4 0C006426 */  addiu      $a0, $s3, 0xC
/* 7C3A2E8 8007B5B8 69D6000C */  jal        func_800359A4
/* 7C3A2EC 8007B5BC 04000524 */   addiu     $a1, $zero, 0x4
/* 7C3A2F0 8007B5C0 0B004014 */  bnez       $v0, .Llevel_38_8007B5F0
/* 7C3A2F4 8007B5C4 0C002426 */   addiu     $a0, $s1, 0xC
/* 7C3A2F8 8007B5C8 0A004016 */  bnez       $s2, .Llevel_38_8007B5F4
/* 7C3A2FC 8007B5CC 1800A527 */   addiu     $a1, $sp, 0x18
/* 7C3A300 8007B5D0 1000B1AF */  sw         $s1, 0x10($sp)
/* 7C3A304 8007B5D4 1800A427 */  addiu      $a0, $sp, 0x18
/* 7C3A308 8007B5D8 21288002 */  addu       $a1, $s4, $zero
/* 7C3A30C 8007B5DC 21300000 */  addu       $a2, $zero, $zero
/* 7C3A310 8007B5E0 C360000C */  jal        func_8001830C
/* 7C3A314 8007B5E4 0100073C */   lui       $a3, (0x10000 >> 16)
/* 7C3A318 8007B5E8 08004010 */  beqz       $v0, .Llevel_38_8007B60C
/* 7C3A31C 8007B5EC 0C002426 */   addiu     $a0, $s1, 0xC
.Llevel_38_8007B5F0:
/* 7C3A320 8007B5F0 1800A527 */  addiu      $a1, $sp, 0x18
.Llevel_38_8007B5F4:
/* 7C3A324 8007B5F4 000060AE */  sw         $zero, 0x0($s3)
/* 7C3A328 8007B5F8 040060AE */  sw         $zero, 0x4($s3)
/* 7C3A32C 8007B5FC 5E3C010C */  jal        func_8004F178
/* 7C3A330 8007B600 080060AE */   sw        $zero, 0x8($s3)
/* 7C3A334 8007B604 62000224 */  addiu      $v0, $zero, 0x62
/* 7C3A338 8007B608 480022A2 */  sb         $v0, 0x48($s1)
.Llevel_38_8007B60C:
/* 7C3A33C 8007B60C 0000648E */  lw         $a0, 0x0($s3)
/* 7C3A340 8007B610 0400658E */  lw         $a1, 0x4($s3)
/* 7C3A344 8007B614 203A010C */  jal        func_8004E880
/* 7C3A348 8007B618 21300000 */   addu      $a2, $zero, $zero
/* 7C3A34C 8007B61C 21200000 */  addu       $a0, $zero, $zero
/* 7C3A350 8007B620 0E000524 */  addiu      $a1, $zero, 0xE
/* 7C3A354 8007B624 F7D8000C */  jal        func_800363DC
/* 7C3A358 8007B628 21804000 */   addu      $s0, $v0, $zero
/* 7C3A35C 8007B62C 21800202 */  addu       $s0, $s0, $v0
/* 7C3A360 8007B630 21900002 */  addu       $s2, $s0, $zero
/* 7C3A364 8007B634 2800B327 */  addiu      $s3, $sp, 0x28
/* 7C3A368 8007B638 21206002 */  addu       $a0, $s3, $zero
/* 7C3A36C 8007B63C 5E3C010C */  jal        func_8004F178
/* 7C3A370 8007B640 0C002526 */   addiu     $a1, $s1, 0xC
/* 7C3A374 8007B644 FF004432 */  andi       $a0, $s2, 0xFF
/* 7C3A378 8007B648 40200400 */  sll        $a0, $a0, 1
/* 7C3A37C 8007B64C 0680013C */  lui        $at, %hi(D_80065920)
/* 7C3A380 8007B650 21082400 */  addu       $at, $at, $a0
/* 7C3A384 8007B654 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 7C3A388 8007B658 80FF1226 */  addiu      $s2, $s0, -0x80
/* 7C3A38C 8007B65C 00110300 */  sll        $v0, $v1, 4
/* 7C3A390 8007B660 23104300 */  subu       $v0, $v0, $v1
/* 7C3A394 8007B664 C3120200 */  sra        $v0, $v0, 11
/* 7C3A398 8007B668 3800A2AF */  sw         $v0, 0x38($sp)
/* 7C3A39C 8007B66C 0680013C */  lui        $at, %hi(D_800658A0)
/* 7C3A3A0 8007B670 21082400 */  addu       $at, $at, $a0
/* 7C3A3A4 8007B674 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 7C3A3A8 8007B678 FF004432 */  andi       $a0, $s2, 0xFF
/* 7C3A3AC 8007B67C 40200400 */  sll        $a0, $a0, 1
/* 7C3A3B0 8007B680 4000A0AF */  sw         $zero, 0x40($sp)
/* 7C3A3B4 8007B684 00110300 */  sll        $v0, $v1, 4
/* 7C3A3B8 8007B688 23104300 */  subu       $v0, $v0, $v1
/* 7C3A3BC 8007B68C C3120200 */  sra        $v0, $v0, 11
/* 7C3A3C0 8007B690 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 7C3A3C4 8007B694 0680013C */  lui        $at, %hi(D_80065920)
/* 7C3A3C8 8007B698 21082400 */  addu       $at, $at, $a0
/* 7C3A3CC 8007B69C 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 7C3A3D0 8007B6A0 00000000 */  nop
/* 7C3A3D4 8007B6A4 80100300 */  sll        $v0, $v1, 2
/* 7C3A3D8 8007B6A8 21104300 */  addu       $v0, $v0, $v1
/* 7C3A3DC 8007B6AC 2800A38F */  lw         $v1, 0x28($sp)
/* 7C3A3E0 8007B6B0 43120200 */  sra        $v0, $v0, 9
/* 7C3A3E4 8007B6B4 21186200 */  addu       $v1, $v1, $v0
/* 7C3A3E8 8007B6B8 2800A3AF */  sw         $v1, 0x28($sp)
/* 7C3A3EC 8007B6BC 0680013C */  lui        $at, %hi(D_800658A0)
/* 7C3A3F0 8007B6C0 21082400 */  addu       $at, $at, $a0
/* 7C3A3F4 8007B6C4 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 7C3A3F8 8007B6C8 00000000 */  nop
/* 7C3A3FC 8007B6CC 80100300 */  sll        $v0, $v1, 2
/* 7C3A400 8007B6D0 21104300 */  addu       $v0, $v0, $v1
/* 7C3A404 8007B6D4 2C00A38F */  lw         $v1, 0x2C($sp)
/* 7C3A408 8007B6D8 43120200 */  sra        $v0, $v0, 9
/* 7C3A40C 8007B6DC 21186200 */  addu       $v1, $v1, $v0
/* 7C3A410 8007B6E0 9171010C */  jal        rand
/* 7C3A414 8007B6E4 2C00A3AF */   sw        $v1, 0x2C($sp)
/* 7C3A418 8007B6E8 07004230 */  andi       $v0, $v0, 0x7
/* 7C3A41C 8007B6EC 0E004010 */  beqz       $v0, .Llevel_38_8007B728
/* 7C3A420 8007B6F0 01000424 */   addiu     $a0, $zero, 0x1
/* 7C3A424 8007B6F4 0D000524 */  addiu      $a1, $zero, 0xD
/* 7C3A428 8007B6F8 21306002 */  addu       $a2, $s3, $zero
/* 7C3A42C 8007B6FC 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7C3A430 8007B700 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7C3A434 8007B704 00000000 */  nop
/* 7C3A438 8007B708 09F84000 */  jalr       $v0
/* 7C3A43C 8007B70C 3800A727 */   addiu     $a3, $sp, 0x38
/* 7C3A440 8007B710 0A004390 */  lbu        $v1, 0xA($v0)
/* 7C3A444 8007B714 0E000424 */  addiu      $a0, $zero, 0xE
/* 7C3A448 8007B718 020044A0 */  sb         $a0, 0x2($v0)
/* 7C3A44C 8007B71C 38006324 */  addiu      $v1, $v1, 0x38
/* 7C3A450 8007B720 D1ED0108 */  j          .Llevel_38_8007B744
/* 7C3A454 8007B724 0A0043A0 */   sb        $v1, 0xA($v0)
.Llevel_38_8007B728:
/* 7C3A458 8007B728 14000524 */  addiu      $a1, $zero, 0x14
/* 7C3A45C 8007B72C 21306002 */  addu       $a2, $s3, $zero
/* 7C3A460 8007B730 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7C3A464 8007B734 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7C3A468 8007B738 00000000 */  nop
/* 7C3A46C 8007B73C 09F84000 */  jalr       $v0
/* 7C3A470 8007B740 3800A727 */   addiu     $a3, $sp, 0x38
.Llevel_38_8007B744:
/* 7C3A474 8007B744 48002392 */  lbu        $v1, 0x48($s1)
/* 7C3A478 8007B748 62000224 */  addiu      $v0, $zero, 0x62
/* 7C3A47C 8007B74C 03006214 */  bne        $v1, $v0, .Llevel_38_8007B75C
/* 7C3A480 8007B750 00000000 */   nop
.Llevel_38_8007B754:
/* 7C3A484 8007B754 C656010C */  jal        func_80055B18
/* 7C3A488 8007B758 21202002 */   addu      $a0, $s1, $zero
.Llevel_38_8007B75C:
/* 7C3A48C 8007B75C 6C00BF8F */  lw         $ra, 0x6C($sp)
/* 7C3A490 8007B760 6800B48F */  lw         $s4, 0x68($sp)
/* 7C3A494 8007B764 6400B38F */  lw         $s3, 0x64($sp)
/* 7C3A498 8007B768 6000B28F */  lw         $s2, 0x60($sp)
/* 7C3A49C 8007B76C 5C00B18F */  lw         $s1, 0x5C($sp)
/* 7C3A4A0 8007B770 5800B08F */  lw         $s0, 0x58($sp)
/* 7C3A4A4 8007B774 7000BD27 */  addiu      $sp, $sp, 0x70
/* 7C3A4A8 8007B778 0800E003 */  jr         $ra
/* 7C3A4AC 8007B77C 00000000 */   nop
.size func_level_38_8007B450, . - func_level_38_8007B450
