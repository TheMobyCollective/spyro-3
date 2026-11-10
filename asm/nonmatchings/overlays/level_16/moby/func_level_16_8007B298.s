.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_133_level_16
/* 4B9C7C8 8007B298 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 4B9C7CC 8007B29C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 4B9C7D0 8007B2A0 21888000 */  addu       $s1, $a0, $zero
/* 4B9C7D4 8007B2A4 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 4B9C7D8 8007B2A8 2800B4AF */  sw         $s4, 0x28($sp)
/* 4B9C7DC 8007B2AC 2400B3AF */  sw         $s3, 0x24($sp)
/* 4B9C7E0 8007B2B0 2000B2AF */  sw         $s2, 0x20($sp)
/* 4B9C7E4 8007B2B4 1800B0AF */  sw         $s0, 0x18($sp)
/* 4B9C7E8 8007B2B8 1800228E */  lw         $v0, 0x18($s1)
/* 4B9C7EC 8007B2BC 0000338E */  lw         $s3, 0x0($s1)
/* 4B9C7F0 8007B2C0 3B004010 */  beqz       $v0, .Llevel_16_8007B3B0
/* 4B9C7F4 8007B2C4 02000224 */   addiu     $v0, $zero, 0x2
/* 4B9C7F8 8007B2C8 48002392 */  lbu        $v1, 0x48($s1)
/* 4B9C7FC 8007B2CC 00000000 */  nop
/* 4B9C800 8007B2D0 37006210 */  beq        $v1, $v0, .Llevel_16_8007B3B0
/* 4B9C804 8007B2D4 00000000 */   nop
/* 4B9C808 8007B2D8 51002292 */  lbu        $v0, 0x51($s1)
/* 4B9C80C 8007B2DC 00000000 */  nop
/* 4B9C810 8007B2E0 10004014 */  bnez       $v0, .Llevel_16_8007B324
/* 4B9C814 8007B2E4 21300000 */   addu      $a2, $zero, $zero
/* 4B9C818 8007B2E8 0C00238E */  lw         $v1, 0xC($s1)
/* 4B9C81C 8007B2EC 0780043C */  lui        $a0, %hi(D_80070328)
/* 4B9C820 8007B2F0 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 4B9C824 8007B2F4 1000228E */  lw         $v0, 0x10($s1)
/* 4B9C828 8007B2F8 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 4B9C82C 8007B2FC 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 4B9C830 8007B300 23206400 */  subu       $a0, $v1, $a0
/* 4B9C834 8007B304 203A010C */  jal        func_8004E880
/* 4B9C838 8007B308 23284500 */   subu      $a1, $v0, $a1
/* 4B9C83C 8007B30C 21204000 */  addu       $a0, $v0, $zero
/* 4B9C840 8007B310 20000624 */  addiu      $a2, $zero, 0x20
/* 4B9C844 8007B314 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 4B9C848 8007B318 3603A590 */  lbu        $a1, %lo(D_80070328 + 0xE)($a1)
/* 4B9C84C 8007B31C 3ED8000C */  jal        func_800360F8
/* 4B9C850 8007B320 40000724 */   addiu     $a3, $zero, 0x40
.Llevel_16_8007B324:
/* 4B9C854 8007B324 390062A2 */  sb         $v0, 0x39($s3)
/* 4B9C858 8007B328 1800228E */  lw         $v0, 0x18($s1)
/* 4B9C85C 8007B32C 0100033C */  lui        $v1, (0x10000 >> 16)
/* 4B9C860 8007B330 24104300 */  and        $v0, $v0, $v1
/* 4B9C864 8007B334 02004014 */  bnez       $v0, .Llevel_16_8007B340
/* 4B9C868 8007B338 18010224 */   addiu     $v0, $zero, 0x118
/* 4B9C86C 8007B33C 90010224 */  addiu      $v0, $zero, 0x190
.Llevel_16_8007B340:
/* 4B9C870 8007B340 2C0062A6 */  sh         $v0, 0x2C($s3)
/* 4B9C874 8007B344 32000224 */  addiu      $v0, $zero, 0x32
/* 4B9C878 8007B348 0780033C */  lui        $v1, %hi(D_8006E164)
/* 4B9C87C 8007B34C 64E16324 */  addiu      $v1, $v1, %lo(D_8006E164)
/* 4B9C880 8007B350 2E0062A6 */  sh         $v0, 0x2E($s3)
/* 4B9C884 8007B354 0000628C */  lw         $v0, 0x0($v1)
/* 4B9C888 8007B358 00000000 */  nop
/* 4B9C88C 8007B35C 04005114 */  bne        $v0, $s1, .Llevel_16_8007B370
/* 4B9C890 8007B360 00000000 */   nop
/* 4B9C894 8007B364 0780013C */  lui        $at, %hi(D_8006E160)
/* 4B9C898 8007B368 60E120AC */  sw         $zero, %lo(D_8006E160)($at)
/* 4B9C89C 8007B36C 000060AC */  sw         $zero, 0x0($v1)
.Llevel_16_8007B370:
/* 4B9C8A0 8007B370 48002292 */  lbu        $v0, 0x48($s1)
/* 4B9C8A4 8007B374 00000000 */  nop
/* 4B9C8A8 8007B378 04004010 */  beqz       $v0, .Llevel_16_8007B38C
/* 4B9C8AC 8007B37C 21202002 */   addu      $a0, $s1, $zero
/* 4B9C8B0 8007B380 2000628E */  lw         $v0, 0x20($s3)
/* 4B9C8B4 8007B384 00000000 */  nop
/* 4B9C8B8 8007B388 000040AC */  sw         $zero, 0x0($v0)
.Llevel_16_8007B38C:
/* 4B9C8BC 8007B38C 21280000 */  addu       $a1, $zero, $zero
/* 4B9C8C0 8007B390 21300000 */  addu       $a2, $zero, $zero
/* 4B9C8C4 8007B394 9ADA000C */  jal        func_80036A68
/* 4B9C8C8 8007B398 21380000 */   addu      $a3, $zero, $zero
/* 4B9C8CC 8007B39C 02000224 */  addiu      $v0, $zero, 0x2
/* 4B9C8D0 8007B3A0 480022A2 */  sb         $v0, 0x48($s1)
/* 4B9C8D4 8007B3A4 21202002 */  addu       $a0, $s1, $zero
/* 4B9C8D8 8007B3A8 D0D3000C */  jal        func_80034F40
/* 4B9C8DC 8007B3AC 02000524 */   addiu     $a1, $zero, 0x2
.Llevel_16_8007B3B0:
/* 4B9C8E0 8007B3B0 48003292 */  lbu        $s2, 0x48($s1)
/* 4B9C8E4 8007B3B4 02000224 */  addiu      $v0, $zero, 0x2
/* 4B9C8E8 8007B3B8 C1004212 */  beq        $s2, $v0, .Llevel_16_8007B6C0
/* 4B9C8EC 8007B3BC 0300422A */   slti      $v0, $s2, 0x3
/* 4B9C8F0 8007B3C0 07004010 */  beqz       $v0, .Llevel_16_8007B3E0
/* 4B9C8F4 8007B3C4 00000000 */   nop
/* 4B9C8F8 8007B3C8 0F004012 */  beqz       $s2, .Llevel_16_8007B408
/* 4B9C8FC 8007B3CC 01000224 */   addiu     $v0, $zero, 0x1
/* 4B9C900 8007B3D0 4F004212 */  beq        $s2, $v0, .Llevel_16_8007B510
/* 4B9C904 8007B3D4 21202002 */   addu      $a0, $s1, $zero
/* 4B9C908 8007B3D8 92EE0108 */  j          .Llevel_16_8007BA48
/* 4B9C90C 8007B3DC 00000000 */   nop
.Llevel_16_8007B3E0:
/* 4B9C910 8007B3E0 04000224 */  addiu      $v0, $zero, 0x4
/* 4B9C914 8007B3E4 43014212 */  beq        $s2, $v0, .Llevel_16_8007B8F4
/* 4B9C918 8007B3E8 0400422A */   slti      $v0, $s2, 0x4
/* 4B9C91C 8007B3EC C5004014 */  bnez       $v0, .Llevel_16_8007B704
/* 4B9C920 8007B3F0 21202002 */   addu      $a0, $s1, $zero
/* 4B9C924 8007B3F4 63000224 */  addiu      $v0, $zero, 0x63
/* 4B9C928 8007B3F8 61014212 */  beq        $s2, $v0, .Llevel_16_8007B980
/* 4B9C92C 8007B3FC 21300000 */   addu      $a2, $zero, $zero
/* 4B9C930 8007B400 91EE0108 */  j          .Llevel_16_8007BA44
/* 4B9C934 8007B404 00000000 */   nop
.Llevel_16_8007B408:
/* 4B9C938 8007B408 21202002 */  addu       $a0, $s1, $zero
/* 4B9C93C 8007B40C 0A000524 */  addiu      $a1, $zero, 0xA
/* 4B9C940 8007B410 21300000 */  addu       $a2, $zero, $zero
/* 4B9C944 8007B414 CFD5000C */  jal        func_8003573C
/* 4B9C948 8007B418 21380000 */   addu      $a3, $zero, $zero
/* 4B9C94C 8007B41C 2000628E */  lw         $v0, 0x20($s3)
/* 4B9C950 8007B420 00000000 */  nop
/* 4B9C954 8007B424 0000428C */  lw         $v0, 0x0($v0)
/* 4B9C958 8007B428 00000000 */  nop
/* 4B9C95C 8007B42C 86014014 */  bnez       $v0, .Llevel_16_8007BA48
/* 4B9C960 8007B430 21202002 */   addu      $a0, $s1, $zero
/* 4B9C964 8007B434 38002386 */  lh         $v1, 0x38($s1)
/* 4B9C968 8007B438 1400228E */  lw         $v0, 0x14($s1)
/* 4B9C96C 8007B43C 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 4B9C970 8007B440 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 4B9C974 8007B444 23184300 */  subu       $v1, $v0, $v1
/* 4B9C978 8007B448 23106400 */  subu       $v0, $v1, $a0
/* 4B9C97C 8007B44C 05004004 */  bltz       $v0, .Llevel_16_8007B464
/* 4B9C980 8007B450 20034228 */   slti      $v0, $v0, 0x320
/* 4B9C984 8007B454 07004014 */  bnez       $v0, .Llevel_16_8007B474
/* 4B9C988 8007B458 21202002 */   addu      $a0, $s1, $zero
/* 4B9C98C 8007B45C 92EE0108 */  j          .Llevel_16_8007BA48
/* 4B9C990 8007B460 00000000 */   nop
.Llevel_16_8007B464:
/* 4B9C994 8007B464 23108300 */  subu       $v0, $a0, $v1
/* 4B9C998 8007B468 20034228 */  slti       $v0, $v0, 0x320
/* 4B9C99C 8007B46C 76014010 */  beqz       $v0, .Llevel_16_8007BA48
/* 4B9C9A0 8007B470 21202002 */   addu      $a0, $s1, $zero
.Llevel_16_8007B474:
/* 4B9C9A4 8007B474 0780103C */  lui        $s0, %hi(D_80070328 + 0xB8)
/* 4B9C9A8 8007B478 E0031026 */  addiu      $s0, $s0, %lo(D_80070328 + 0xB8)
/* 4B9C9AC 8007B47C 0000028E */  lw         $v0, 0x0($s0)
/* 4B9C9B0 8007B480 00000000 */  nop
/* 4B9C9B4 8007B484 6F014014 */  bnez       $v0, .Llevel_16_8007BA44
/* 4B9C9B8 8007B488 21300000 */   addu      $a2, $zero, $zero
/* 4B9C9BC 8007B48C 0C00238E */  lw         $v1, 0xC($s1)
/* 4B9C9C0 8007B490 0780043C */  lui        $a0, %hi(D_8006E020)
/* 4B9C9C4 8007B494 20E0848C */  lw         $a0, %lo(D_8006E020)($a0)
/* 4B9C9C8 8007B498 1000228E */  lw         $v0, 0x10($s1)
/* 4B9C9CC 8007B49C 0780053C */  lui        $a1, %hi(D_8006E024)
/* 4B9C9D0 8007B4A0 24E0A58C */  lw         $a1, %lo(D_8006E024)($a1)
/* 4B9C9D4 8007B4A4 23206400 */  subu       $a0, $v1, $a0
/* 4B9C9D8 8007B4A8 203A010C */  jal        func_8004E880
/* 4B9C9DC 8007B4AC 23284500 */   subu      $a1, $v0, $a1
/* 4B9C9E0 8007B4B0 0780043C */  lui        $a0, %hi(D_8006E040)
/* 4B9C9E4 8007B4B4 40E08494 */  lhu        $a0, %lo(D_8006E040)($a0)
/* 4B9C9E8 8007B4B8 21284000 */  addu       $a1, $v0, $zero
/* 4B9C9EC 8007B4BC 00240400 */  sll        $a0, $a0, 16
/* 4B9C9F0 8007B4C0 993C010C */  jal        func_8004F264
/* 4B9C9F4 8007B4C4 03250400 */   sra       $a0, $a0, 20
/* 4B9C9F8 8007B4C8 18004228 */  slti       $v0, $v0, 0x18
/* 4B9C9FC 8007B4CC 5D014010 */  beqz       $v0, .Llevel_16_8007BA44
/* 4B9CA00 8007B4D0 0C002426 */   addiu     $a0, $s1, 0xC
/* 4B9CA04 8007B4D4 CD3C010C */  jal        func_8004F334
/* 4B9CA08 8007B4D8 48FF0526 */   addiu     $a1, $s0, -0xB8
/* 4B9CA0C 8007B4DC 2400638E */  lw         $v1, 0x24($s3)
/* 4B9CA10 8007B4E0 00000000 */  nop
/* 4B9CA14 8007B4E4 2A104300 */  slt        $v0, $v0, $v1
/* 4B9CA18 8007B4E8 56014010 */  beqz       $v0, .Llevel_16_8007BA44
/* 4B9CA1C 8007B4EC 21202002 */   addu      $a0, $s1, $zero
/* 4B9CA20 8007B4F0 0D000524 */  addiu      $a1, $zero, 0xD
/* 4B9CA24 8007B4F4 2000628E */  lw         $v0, 0x20($s3)
/* 4B9CA28 8007B4F8 01000324 */  addiu      $v1, $zero, 0x1
/* 4B9CA2C 8007B4FC B34E000C */  jal        func_80013ACC
/* 4B9CA30 8007B500 000043AC */   sw        $v1, 0x0($v0)
/* 4B9CA34 8007B504 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9CA38 8007B508 94EE0108 */  j          .Llevel_16_8007BA50
/* 4B9CA3C 8007B50C 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_16_8007B510:
/* 4B9CA40 8007B510 3D002292 */  lbu        $v0, 0x3D($s1)
/* 4B9CA44 8007B514 00000000 */  nop
/* 4B9CA48 8007B518 0E005210 */  beq        $v0, $s2, .Llevel_16_8007B554
/* 4B9CA4C 8007B51C 04001424 */   addiu     $s4, $zero, 0x4
/* 4B9CA50 8007B520 21202002 */  addu       $a0, $s1, $zero
/* 4B9CA54 8007B524 0780013C */  lui        $at, %hi(D_8006C770)
/* 4B9CA58 8007B528 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 4B9CA5C 8007B52C 3D002392 */  lbu        $v1, 0x3D($s1)
/* 4B9CA60 8007B530 3F002592 */  lbu        $a1, 0x3F($s1)
/* 4B9CA64 8007B534 72000224 */  addiu      $v0, $zero, 0x72
/* 4B9CA68 8007B538 400022A2 */  sb         $v0, 0x40($s1)
/* 4B9CA6C 8007B53C 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9CA70 8007B540 3D0022A2 */  sb         $v0, 0x3D($s1)
/* 4B9CA74 8007B544 3F0020A2 */  sb         $zero, 0x3F($s1)
/* 4B9CA78 8007B548 3C0023A2 */  sb         $v1, 0x3C($s1)
/* 4B9CA7C 8007B54C CDD5000C */  jal        func_80035734
/* 4B9CA80 8007B550 3E0025A2 */   sb        $a1, 0x3E($s1)
.Llevel_16_8007B554:
/* 4B9CA84 8007B554 21300000 */  addu       $a2, $zero, $zero
/* 4B9CA88 8007B558 0780103C */  lui        $s0, %hi(D_80070328)
/* 4B9CA8C 8007B55C 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 4B9CA90 8007B560 0000038E */  lw         $v1, 0x0($s0)
/* 4B9CA94 8007B564 0C00248E */  lw         $a0, 0xC($s1)
/* 4B9CA98 8007B568 0780023C */  lui        $v0, %hi(D_80070328 + 4)
/* 4B9CA9C 8007B56C 2C03428C */  lw         $v0, %lo(D_80070328 + 4)($v0)
/* 4B9CAA0 8007B570 1000258E */  lw         $a1, 0x10($s1)
/* 4B9CAA4 8007B574 23206400 */  subu       $a0, $v1, $a0
/* 4B9CAA8 8007B578 203A010C */  jal        func_8004E880
/* 4B9CAAC 8007B57C 23284500 */   subu      $a1, $v0, $a1
/* 4B9CAB0 8007B580 0C002426 */  addiu      $a0, $s1, 0xC
/* 4B9CAB4 8007B584 21280002 */  addu       $a1, $s0, $zero
/* 4B9CAB8 8007B588 CD3C010C */  jal        func_8004F334
/* 4B9CABC 8007B58C 21804000 */   addu      $s0, $v0, $zero
/* 4B9CAC0 8007B590 B80B4228 */  slti       $v0, $v0, 0xBB8
/* 4B9CAC4 8007B594 02004010 */  beqz       $v0, .Llevel_16_8007B5A0
/* 4B9CAC8 8007B598 21202002 */   addu      $a0, $s1, $zero
/* 4B9CACC 8007B59C 08001424 */  addiu      $s4, $zero, 0x8
.Llevel_16_8007B5A0:
/* 4B9CAD0 8007B5A0 FF000532 */  andi       $a1, $s0, 0xFF
/* 4B9CAD4 8007B5A4 21308002 */  addu       $a2, $s4, $zero
/* 4B9CAD8 8007B5A8 1E000724 */  addiu      $a3, $zero, 0x1E
/* 4B9CADC 8007B5AC 1000B2AF */  sw         $s2, 0x10($sp)
/* 4B9CAE0 8007B5B0 17D6000C */  jal        func_8003585C
/* 4B9CAE4 8007B5B4 1400A0AF */   sw        $zero, 0x14($sp)
/* 4B9CAE8 8007B5B8 09004010 */  beqz       $v0, .Llevel_16_8007B5E0
/* 4B9CAEC 8007B5BC 05020224 */   addiu     $v0, $zero, 0x205
/* 4B9CAF0 8007B5C0 1000A2AF */  sw         $v0, 0x10($sp)
/* 4B9CAF4 8007B5C4 21202002 */  addu       $a0, $s1, $zero
/* 4B9CAF8 8007B5C8 C8000524 */  addiu      $a1, $zero, 0xC8
/* 4B9CAFC 8007B5CC 2C010624 */  addiu      $a2, $zero, 0x12C
/* 4B9CB00 8007B5D0 77D7000C */  jal        func_80035DDC
/* 4B9CB04 8007B5D4 2C010724 */   addiu     $a3, $zero, 0x12C
/* 4B9CB08 8007B5D8 57004014 */  bnez       $v0, .Llevel_16_8007B738
/* 4B9CB0C 8007B5DC 00000000 */   nop
.Llevel_16_8007B5E0:
/* 4B9CB10 8007B5E0 0780023C */  lui        $v0, %hi(D_80070328 + 0xB8)
/* 4B9CB14 8007B5E4 E003428C */  lw         $v0, %lo(D_80070328 + 0xB8)($v0)
/* 4B9CB18 8007B5E8 00000000 */  nop
/* 4B9CB1C 8007B5EC 0D004014 */  bnez       $v0, .Llevel_16_8007B624
/* 4B9CB20 8007B5F0 0C003026 */   addiu     $s0, $s1, 0xC
/* 4B9CB24 8007B5F4 38002386 */  lh         $v1, 0x38($s1)
/* 4B9CB28 8007B5F8 1400228E */  lw         $v0, 0x14($s1)
/* 4B9CB2C 8007B5FC 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 4B9CB30 8007B600 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 4B9CB34 8007B604 23184300 */  subu       $v1, $v0, $v1
/* 4B9CB38 8007B608 23106400 */  subu       $v0, $v1, $a0
/* 4B9CB3C 8007B60C 03004104 */  bgez       $v0, .Llevel_16_8007B61C
/* 4B9CB40 8007B610 21034228 */   slti      $v0, $v0, 0x321
/* 4B9CB44 8007B614 23108300 */  subu       $v0, $a0, $v1
/* 4B9CB48 8007B618 21034228 */  slti       $v0, $v0, 0x321
.Llevel_16_8007B61C:
/* 4B9CB4C 8007B61C 46004010 */  beqz       $v0, .Llevel_16_8007B738
/* 4B9CB50 8007B620 0C003026 */   addiu     $s0, $s1, 0xC
.Llevel_16_8007B624:
/* 4B9CB54 8007B624 21200002 */  addu       $a0, $s0, $zero
/* 4B9CB58 8007B628 CD3C010C */  jal        func_8004F334
/* 4B9CB5C 8007B62C 21286002 */   addu      $a1, $s3, $zero
/* 4B9CB60 8007B630 01304228 */  slti       $v0, $v0, 0x3001
/* 4B9CB64 8007B634 40004010 */  beqz       $v0, .Llevel_16_8007B738
/* 4B9CB68 8007B638 01000224 */   addiu     $v0, $zero, 0x1
/* 4B9CB6C 8007B63C 0780033C */  lui        $v1, %hi(D_8006E344)
/* 4B9CB70 8007B640 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 4B9CB74 8007B644 00000000 */  nop
/* 4B9CB78 8007B648 3B006210 */  beq        $v1, $v0, .Llevel_16_8007B738
/* 4B9CB7C 8007B64C 21200002 */   addu      $a0, $s0, $zero
/* 4B9CB80 8007B650 0780103C */  lui        $s0, %hi(D_80070328)
/* 4B9CB84 8007B654 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 4B9CB88 8007B658 CD3C010C */  jal        func_8004F334
/* 4B9CB8C 8007B65C 21280002 */   addu      $a1, $s0, $zero
/* 4B9CB90 8007B660 D0074228 */  slti       $v0, $v0, 0x7D0
/* 4B9CB94 8007B664 F7004010 */  beqz       $v0, .Llevel_16_8007BA44
/* 4B9CB98 8007B668 21300000 */   addu      $a2, $zero, $zero
/* 4B9CB9C 8007B66C 0000038E */  lw         $v1, 0x0($s0)
/* 4B9CBA0 8007B670 0C00248E */  lw         $a0, 0xC($s1)
/* 4B9CBA4 8007B674 0780023C */  lui        $v0, %hi(D_80070328 + 4)
/* 4B9CBA8 8007B678 2C03428C */  lw         $v0, %lo(D_80070328 + 4)($v0)
/* 4B9CBAC 8007B67C 1000258E */  lw         $a1, 0x10($s1)
/* 4B9CBB0 8007B680 23206400 */  subu       $a0, $v1, $a0
/* 4B9CBB4 8007B684 203A010C */  jal        func_8004E880
/* 4B9CBB8 8007B688 23284500 */   subu      $a1, $v0, $a1
/* 4B9CBBC 8007B68C 46002492 */  lbu        $a0, 0x46($s1)
/* 4B9CBC0 8007B690 993C010C */  jal        func_8004F264
/* 4B9CBC4 8007B694 21284000 */   addu      $a1, $v0, $zero
/* 4B9CBC8 8007B698 14004228 */  slti       $v0, $v0, 0x14
/* 4B9CBCC 8007B69C E9004010 */  beqz       $v0, .Llevel_16_8007BA44
/* 4B9CBD0 8007B6A0 21202002 */   addu      $a0, $s1, $zero
/* 4B9CBD4 8007B6A4 03000524 */  addiu      $a1, $zero, 0x3
/* 4B9CBD8 8007B6A8 64000224 */  addiu      $v0, $zero, 0x64
/* 4B9CBDC 8007B6AC 100062AE */  sw         $v0, 0x10($s3)
/* 4B9CBE0 8007B6B0 03000224 */  addiu      $v0, $zero, 0x3
/* 4B9CBE4 8007B6B4 1C0060AE */  sw         $zero, 0x1C($s3)
/* 4B9CBE8 8007B6B8 8FEE0108 */  j          .Llevel_16_8007BA3C
/* 4B9CBEC 8007B6BC 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_16_8007B6C0:
/* 4B9CBF0 8007B6C0 21202002 */  addu       $a0, $s1, $zero
/* 4B9CBF4 8007B6C4 65D4000C */  jal        func_80035194
/* 4B9CBF8 8007B6C8 28006526 */   addiu     $a1, $s3, 0x28
/* 4B9CBFC 8007B6CC 0780023C */  lui        $v0, %hi(D_8006C770)
/* 4B9CC00 8007B6D0 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 4B9CC04 8007B6D4 00000000 */  nop
/* 4B9CC08 8007B6D8 DA004010 */  beqz       $v0, .Llevel_16_8007BA44
/* 4B9CC0C 8007B6DC 21202002 */   addu      $a0, $s1, $zero
/* 4B9CC10 8007B6E0 4957010C */  jal        func_80055D24
/* 4B9CC14 8007B6E4 04000524 */   addiu     $a1, $zero, 0x4
/* 4B9CC18 8007B6E8 21202002 */  addu       $a0, $s1, $zero
/* 4B9CC1C 8007B6EC 6EDA000C */  jal        func_800369B8
/* 4B9CC20 8007B6F0 18000524 */   addiu     $a1, $zero, 0x18
/* 4B9CC24 8007B6F4 C656010C */  jal        func_80055B18
/* 4B9CC28 8007B6F8 21202002 */   addu      $a0, $s1, $zero
/* 4B9CC2C 8007B6FC 94EE0108 */  j          .Llevel_16_8007BA50
/* 4B9CC30 8007B700 00000000 */   nop
.Llevel_16_8007B704:
/* 4B9CC34 8007B704 04000524 */  addiu      $a1, $zero, 0x4
/* 4B9CC38 8007B708 21300000 */  addu       $a2, $zero, $zero
/* 4B9CC3C 8007B70C CFD5000C */  jal        func_8003573C
/* 4B9CC40 8007B710 21380000 */   addu      $a3, $zero, $zero
/* 4B9CC44 8007B714 21202002 */  addu       $a0, $s1, $zero
/* 4B9CC48 8007B718 2C010624 */  addiu      $a2, $zero, 0x12C
/* 4B9CC4C 8007B71C 05000224 */  addiu      $v0, $zero, 0x5
/* 4B9CC50 8007B720 1000A2AF */  sw         $v0, 0x10($sp)
/* 4B9CC54 8007B724 1000658E */  lw         $a1, 0x10($s3)
/* 4B9CC58 8007B728 77D7000C */  jal        func_80035DDC
/* 4B9CC5C 8007B72C 2C010724 */   addiu     $a3, $zero, 0x12C
/* 4B9CC60 8007B730 0D004010 */  beqz       $v0, .Llevel_16_8007B768
/* 4B9CC64 8007B734 00000000 */   nop
.Llevel_16_8007B738:
/* 4B9CC68 8007B738 2000628E */  lw         $v0, 0x20($s3)
/* 4B9CC6C 8007B73C 0780033C */  lui        $v1, %hi(D_8006E164)
/* 4B9CC70 8007B740 64E16324 */  addiu      $v1, $v1, %lo(D_8006E164)
/* 4B9CC74 8007B744 000040AC */  sw         $zero, 0x0($v0)
/* 4B9CC78 8007B748 0000628C */  lw         $v0, 0x0($v1)
/* 4B9CC7C 8007B74C 00000000 */  nop
/* 4B9CC80 8007B750 89005114 */  bne        $v0, $s1, .Llevel_16_8007B978
/* 4B9CC84 8007B754 63000224 */   addiu     $v0, $zero, 0x63
/* 4B9CC88 8007B758 0780013C */  lui        $at, %hi(D_8006E160)
/* 4B9CC8C 8007B75C 60E120AC */  sw         $zero, %lo(D_8006E160)($at)
/* 4B9CC90 8007B760 5EEE0108 */  j          .Llevel_16_8007B978
/* 4B9CC94 8007B764 000060AC */   sw        $zero, 0x0($v1)
.Llevel_16_8007B768:
/* 4B9CC98 8007B768 A157010C */  jal        func_80055E84
/* 4B9CC9C 8007B76C 21202002 */   addu      $a0, $s1, $zero
/* 4B9CCA0 8007B770 09004228 */  slti       $v0, $v0, 0x9
/* 4B9CCA4 8007B774 07004014 */  bnez       $v0, .Llevel_16_8007B794
/* 4B9CCA8 8007B778 00000000 */   nop
/* 4B9CCAC 8007B77C 1000638E */  lw         $v1, 0x10($s3)
/* 4B9CCB0 8007B780 00000000 */  nop
/* 4B9CCB4 8007B784 51006228 */  slti       $v0, $v1, 0x51
/* 4B9CCB8 8007B788 02004014 */  bnez       $v0, .Llevel_16_8007B794
/* 4B9CCBC 8007B78C FBFF6224 */   addiu     $v0, $v1, -0x5
/* 4B9CCC0 8007B790 100062AE */  sw         $v0, 0x10($s3)
.Llevel_16_8007B794:
/* 4B9CCC4 8007B794 0780053C */  lui        $a1, %hi(D_80070328)
/* 4B9CCC8 8007B798 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 4B9CCCC 8007B79C CD3C010C */  jal        func_8004F334
/* 4B9CCD0 8007B7A0 0C002426 */   addiu     $a0, $s1, 0xC
/* 4B9CCD4 8007B7A4 B0044228 */  slti       $v0, $v0, 0x4B0
/* 4B9CCD8 8007B7A8 49004010 */  beqz       $v0, .Llevel_16_8007B8D0
/* 4B9CCDC 8007B7AC 00000000 */   nop
/* 4B9CCE0 8007B7B0 38002386 */  lh         $v1, 0x38($s1)
/* 4B9CCE4 8007B7B4 1400228E */  lw         $v0, 0x14($s1)
/* 4B9CCE8 8007B7B8 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 4B9CCEC 8007B7BC 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 4B9CCF0 8007B7C0 23184300 */  subu       $v1, $v0, $v1
/* 4B9CCF4 8007B7C4 23106400 */  subu       $v0, $v1, $a0
/* 4B9CCF8 8007B7C8 05004004 */  bltz       $v0, .Llevel_16_8007B7E0
/* 4B9CCFC 8007B7CC 84034228 */   slti      $v0, $v0, 0x384
/* 4B9CD00 8007B7D0 3F004010 */  beqz       $v0, .Llevel_16_8007B8D0
/* 4B9CD04 8007B7D4 00000000 */   nop
/* 4B9CD08 8007B7D8 FCED0108 */  j          .Llevel_16_8007B7F0
/* 4B9CD0C 8007B7DC 00000000 */   nop
.Llevel_16_8007B7E0:
/* 4B9CD10 8007B7E0 23108300 */  subu       $v0, $a0, $v1
/* 4B9CD14 8007B7E4 84034228 */  slti       $v0, $v0, 0x384
/* 4B9CD18 8007B7E8 39004010 */  beqz       $v0, .Llevel_16_8007B8D0
/* 4B9CD1C 8007B7EC 00000000 */   nop
.Llevel_16_8007B7F0:
/* 4B9CD20 8007B7F0 1C00628E */  lw         $v0, 0x1C($s3)
/* 4B9CD24 8007B7F4 00000000 */  nop
/* 4B9CD28 8007B7F8 30004014 */  bnez       $v0, .Llevel_16_8007B8BC
/* 4B9CD2C 8007B7FC 47000224 */   addiu     $v0, $zero, 0x47
/* 4B9CD30 8007B800 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 4B9CD34 8007B804 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 4B9CD38 8007B808 00000000 */  nop
/* 4B9CD3C 8007B80C 2B006210 */  beq        $v1, $v0, .Llevel_16_8007B8BC
/* 4B9CD40 8007B810 0010033C */   lui       $v1, (0x10000400 >> 16)
/* 4B9CD44 8007B814 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9CD48 8007B818 1C0062AE */  sw         $v0, 0x1C($s3)
/* 4B9CD4C 8007B81C 0780023C */  lui        $v0, %hi(D_80070328 + 0x24)
/* 4B9CD50 8007B820 4C03428C */  lw         $v0, %lo(D_80070328 + 0x24)($v0)
/* 4B9CD54 8007B824 00046334 */  ori        $v1, $v1, (0x10000400 & 0xFFFF)
/* 4B9CD58 8007B828 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 4B9CD5C 8007B82C 340523AC */  sw         $v1, %lo(D_80070328 + 0x20C)($at)
/* 4B9CD60 8007B830 01004234 */  ori        $v0, $v0, 0x1
/* 4B9CD64 8007B834 0780013C */  lui        $at, %hi(D_80070328 + 0x24)
/* 4B9CD68 8007B838 4C0322AC */  sw         $v0, %lo(D_80070328 + 0x24)($at)
/* 4B9CD6C 8007B83C 46002292 */  lbu        $v0, 0x46($s1)
/* 4B9CD70 8007B840 00000000 */  nop
/* 4B9CD74 8007B844 40100200 */  sll        $v0, $v0, 1
/* 4B9CD78 8007B848 0680013C */  lui        $at, %hi(D_80065920)
/* 4B9CD7C 8007B84C 21082200 */  addu       $at, $at, $v0
/* 4B9CD80 8007B850 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 4B9CD84 8007B854 00000000 */  nop
/* 4B9CD88 8007B858 80100300 */  sll        $v0, $v1, 2
/* 4B9CD8C 8007B85C 21104300 */  addu       $v0, $v0, $v1
/* 4B9CD90 8007B860 00190200 */  sll        $v1, $v0, 4
/* 4B9CD94 8007B864 21104300 */  addu       $v0, $v0, $v1
/* 4B9CD98 8007B868 C3120200 */  sra        $v0, $v0, 11
/* 4B9CD9C 8007B86C 0780013C */  lui        $at, %hi(D_80070328 + 0x21C)
/* 4B9CDA0 8007B870 440522AC */  sw         $v0, %lo(D_80070328 + 0x21C)($at)
/* 4B9CDA4 8007B874 46002292 */  lbu        $v0, 0x46($s1)
/* 4B9CDA8 8007B878 00000000 */  nop
/* 4B9CDAC 8007B87C 40100200 */  sll        $v0, $v0, 1
/* 4B9CDB0 8007B880 0680013C */  lui        $at, %hi(D_800658A0)
/* 4B9CDB4 8007B884 21082200 */  addu       $at, $at, $v0
/* 4B9CDB8 8007B888 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 4B9CDBC 8007B88C 32000224 */  addiu      $v0, $zero, 0x32
/* 4B9CDC0 8007B890 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 4B9CDC4 8007B894 4C0522AC */  sw         $v0, %lo(D_80070328 + 0x224)($at)
/* 4B9CDC8 8007B898 80100300 */  sll        $v0, $v1, 2
/* 4B9CDCC 8007B89C 21104300 */  addu       $v0, $v0, $v1
/* 4B9CDD0 8007B8A0 00190200 */  sll        $v1, $v0, 4
/* 4B9CDD4 8007B8A4 21104300 */  addu       $v0, $v0, $v1
/* 4B9CDD8 8007B8A8 C3120200 */  sra        $v0, $v0, 11
/* 4B9CDDC 8007B8AC 0780013C */  lui        $at, %hi(D_80070328 + 0x220)
/* 4B9CDE0 8007B8B0 480522AC */  sw         $v0, %lo(D_80070328 + 0x220)($at)
/* 4B9CDE4 8007B8B4 34EE0108 */  j          .Llevel_16_8007B8D0
/* 4B9CDE8 8007B8B8 00000000 */   nop
.Llevel_16_8007B8BC:
/* 4B9CDEC 8007B8BC 1C00638E */  lw         $v1, 0x1C($s3)
/* 4B9CDF0 8007B8C0 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9CDF4 8007B8C4 02006214 */  bne        $v1, $v0, .Llevel_16_8007B8D0
/* 4B9CDF8 8007B8C8 02000224 */   addiu     $v0, $zero, 0x2
/* 4B9CDFC 8007B8CC 1C0062AE */  sw         $v0, 0x1C($s3)
.Llevel_16_8007B8D0:
/* 4B9CE00 8007B8D0 0780023C */  lui        $v0, %hi(D_8006C770)
/* 4B9CE04 8007B8D4 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 4B9CE08 8007B8D8 00000000 */  nop
/* 4B9CE0C 8007B8DC 59004010 */  beqz       $v0, .Llevel_16_8007BA44
/* 4B9CE10 8007B8E0 04000224 */   addiu     $v0, $zero, 0x4
/* 4B9CE14 8007B8E4 480022A2 */  sb         $v0, 0x48($s1)
/* 4B9CE18 8007B8E8 21202002 */  addu       $a0, $s1, $zero
/* 4B9CE1C 8007B8EC D0D3000C */  jal        func_80034F40
/* 4B9CE20 8007B8F0 04000524 */   addiu     $a1, $zero, 0x4
.Llevel_16_8007B8F4:
/* 4B9CE24 8007B8F4 0780023C */  lui        $v0, %hi(D_8006C770)
/* 4B9CE28 8007B8F8 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 4B9CE2C 8007B8FC 00000000 */  nop
/* 4B9CE30 8007B900 51004010 */  beqz       $v0, .Llevel_16_8007BA48
/* 4B9CE34 8007B904 21202002 */   addu      $a0, $s1, $zero
/* 4B9CE38 8007B908 2000628E */  lw         $v0, 0x20($s3)
/* 4B9CE3C 8007B90C 0780033C */  lui        $v1, %hi(D_8006E164)
/* 4B9CE40 8007B910 64E16324 */  addiu      $v1, $v1, %lo(D_8006E164)
/* 4B9CE44 8007B914 000040AC */  sw         $zero, 0x0($v0)
/* 4B9CE48 8007B918 0000628C */  lw         $v0, 0x0($v1)
/* 4B9CE4C 8007B91C 00000000 */  nop
/* 4B9CE50 8007B920 04005114 */  bne        $v0, $s1, .Llevel_16_8007B934
/* 4B9CE54 8007B924 00000000 */   nop
/* 4B9CE58 8007B928 0780013C */  lui        $at, %hi(D_8006E160)
/* 4B9CE5C 8007B92C 60E120AC */  sw         $zero, %lo(D_8006E160)($at)
/* 4B9CE60 8007B930 000060AC */  sw         $zero, 0x0($v1)
.Llevel_16_8007B934:
/* 4B9CE64 8007B934 3D002392 */  lbu        $v1, 0x3D($s1)
/* 4B9CE68 8007B938 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9CE6C 8007B93C 0D006210 */  beq        $v1, $v0, .Llevel_16_8007B974
/* 4B9CE70 8007B940 21202002 */   addu      $a0, $s1, $zero
/* 4B9CE74 8007B944 0780013C */  lui        $at, %hi(D_8006C770)
/* 4B9CE78 8007B948 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 4B9CE7C 8007B94C 3D002392 */  lbu        $v1, 0x3D($s1)
/* 4B9CE80 8007B950 3F002592 */  lbu        $a1, 0x3F($s1)
/* 4B9CE84 8007B954 72000224 */  addiu      $v0, $zero, 0x72
/* 4B9CE88 8007B958 400022A2 */  sb         $v0, 0x40($s1)
/* 4B9CE8C 8007B95C 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9CE90 8007B960 3D0022A2 */  sb         $v0, 0x3D($s1)
/* 4B9CE94 8007B964 3F0020A2 */  sb         $zero, 0x3F($s1)
/* 4B9CE98 8007B968 3C0023A2 */  sb         $v1, 0x3C($s1)
/* 4B9CE9C 8007B96C CDD5000C */  jal        func_80035734
/* 4B9CEA0 8007B970 3E0025A2 */   sb        $a1, 0x3E($s1)
.Llevel_16_8007B974:
/* 4B9CEA4 8007B974 63000224 */  addiu      $v0, $zero, 0x63
.Llevel_16_8007B978:
/* 4B9CEA8 8007B978 94EE0108 */  j          .Llevel_16_8007BA50
/* 4B9CEAC 8007B97C 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_16_8007B980:
/* 4B9CEB0 8007B980 0000638E */  lw         $v1, 0x0($s3)
/* 4B9CEB4 8007B984 0C00248E */  lw         $a0, 0xC($s1)
/* 4B9CEB8 8007B988 0400628E */  lw         $v0, 0x4($s3)
/* 4B9CEBC 8007B98C 1000258E */  lw         $a1, 0x10($s1)
/* 4B9CEC0 8007B990 23206400 */  subu       $a0, $v1, $a0
/* 4B9CEC4 8007B994 203A010C */  jal        func_8004E880
/* 4B9CEC8 8007B998 23284500 */   subu      $a1, $v0, $a1
/* 4B9CECC 8007B99C 21202002 */  addu       $a0, $s1, $zero
/* 4B9CED0 8007B9A0 21284000 */  addu       $a1, $v0, $zero
/* 4B9CED4 8007B9A4 04000624 */  addiu      $a2, $zero, 0x4
/* 4B9CED8 8007B9A8 14000724 */  addiu      $a3, $zero, 0x14
/* 4B9CEDC 8007B9AC 01001024 */  addiu      $s0, $zero, 0x1
/* 4B9CEE0 8007B9B0 1000B0AF */  sw         $s0, 0x10($sp)
/* 4B9CEE4 8007B9B4 17D6000C */  jal        func_8003585C
/* 4B9CEE8 8007B9B8 1400A0AF */   sw        $zero, 0x14($sp)
/* 4B9CEEC 8007B9BC 07004010 */  beqz       $v0, .Llevel_16_8007B9DC
/* 4B9CEF0 8007B9C0 05000224 */   addiu     $v0, $zero, 0x5
/* 4B9CEF4 8007B9C4 1000A2AF */  sw         $v0, 0x10($sp)
/* 4B9CEF8 8007B9C8 21202002 */  addu       $a0, $s1, $zero
/* 4B9CEFC 8007B9CC 5A000524 */  addiu      $a1, $zero, 0x5A
/* 4B9CF00 8007B9D0 21300000 */  addu       $a2, $zero, $zero
/* 4B9CF04 8007B9D4 77D7000C */  jal        func_80035DDC
/* 4B9CF08 8007B9D8 21380000 */   addu      $a3, $zero, $zero
.Llevel_16_8007B9DC:
/* 4B9CF0C 8007B9DC 3D002292 */  lbu        $v0, 0x3D($s1)
/* 4B9CF10 8007B9E0 00000000 */  nop
/* 4B9CF14 8007B9E4 0D005010 */  beq        $v0, $s0, .Llevel_16_8007BA1C
/* 4B9CF18 8007B9E8 21202002 */   addu      $a0, $s1, $zero
/* 4B9CF1C 8007B9EC 0780013C */  lui        $at, %hi(D_8006C770)
/* 4B9CF20 8007B9F0 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 4B9CF24 8007B9F4 3D002392 */  lbu        $v1, 0x3D($s1)
/* 4B9CF28 8007B9F8 3F002592 */  lbu        $a1, 0x3F($s1)
/* 4B9CF2C 8007B9FC 72000224 */  addiu      $v0, $zero, 0x72
/* 4B9CF30 8007BA00 400022A2 */  sb         $v0, 0x40($s1)
/* 4B9CF34 8007BA04 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9CF38 8007BA08 3D0022A2 */  sb         $v0, 0x3D($s1)
/* 4B9CF3C 8007BA0C 3F0020A2 */  sb         $zero, 0x3F($s1)
/* 4B9CF40 8007BA10 3C0023A2 */  sb         $v1, 0x3C($s1)
/* 4B9CF44 8007BA14 CDD5000C */  jal        func_80035734
/* 4B9CF48 8007BA18 3E0025A2 */   sb        $a1, 0x3E($s1)
.Llevel_16_8007BA1C:
/* 4B9CF4C 8007BA1C 0C002426 */  addiu      $a0, $s1, 0xC
/* 4B9CF50 8007BA20 CD3C010C */  jal        func_8004F334
/* 4B9CF54 8007BA24 21286002 */   addu      $a1, $s3, $zero
/* 4B9CF58 8007BA28 80004228 */  slti       $v0, $v0, 0x80
/* 4B9CF5C 8007BA2C 05004010 */  beqz       $v0, .Llevel_16_8007BA44
/* 4B9CF60 8007BA30 21202002 */   addu      $a0, $s1, $zero
/* 4B9CF64 8007BA34 480020A2 */  sb         $zero, 0x48($s1)
/* 4B9CF68 8007BA38 21280000 */  addu       $a1, $zero, $zero
.Llevel_16_8007BA3C:
/* 4B9CF6C 8007BA3C D0D3000C */  jal        func_80034F40
/* 4B9CF70 8007BA40 00000000 */   nop
.Llevel_16_8007BA44:
/* 4B9CF74 8007BA44 21202002 */  addu       $a0, $s1, $zero
.Llevel_16_8007BA48:
/* 4B9CF78 8007BA48 4957010C */  jal        func_80055D24
/* 4B9CF7C 8007BA4C 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_16_8007BA50:
/* 4B9CF80 8007BA50 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 4B9CF84 8007BA54 2800B48F */  lw         $s4, 0x28($sp)
/* 4B9CF88 8007BA58 2400B38F */  lw         $s3, 0x24($sp)
/* 4B9CF8C 8007BA5C 2000B28F */  lw         $s2, 0x20($sp)
/* 4B9CF90 8007BA60 1C00B18F */  lw         $s1, 0x1C($sp)
/* 4B9CF94 8007BA64 1800B08F */  lw         $s0, 0x18($sp)
/* 4B9CF98 8007BA68 3000BD27 */  addiu      $sp, $sp, 0x30
/* 4B9CF9C 8007BA6C 0800E003 */  jr         $ra
/* 4B9CFA0 8007BA70 00000000 */   nop
.size MobyUpdate_133_level_16, . - MobyUpdate_133_level_16
