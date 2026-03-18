.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_11_8007DD68
/* 3E22298 8007DD68 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 3E2229C 8007DD6C 2000B0AF */  sw         $s0, 0x20($sp)
/* 3E222A0 8007DD70 21808000 */  addu       $s0, $a0, $zero
/* 3E222A4 8007DD74 04000324 */  addiu      $v1, $zero, 0x4
/* 3E222A8 8007DD78 2800BFAF */  sw         $ra, 0x28($sp)
/* 3E222AC 8007DD7C 2400B1AF */  sw         $s1, 0x24($sp)
/* 3E222B0 8007DD80 48000292 */  lbu        $v0, 0x48($s0)
/* 3E222B4 8007DD84 0000118E */  lw         $s1, 0x0($s0)
/* 3E222B8 8007DD88 47004310 */  beq        $v0, $v1, .Llevel_11_8007DEA8
/* 3E222BC 8007DD8C 0100023C */   lui       $v0, (0x10000 >> 16)
/* 3E222C0 8007DD90 1800038E */  lw         $v1, 0x18($s0)
/* 3E222C4 8007DD94 00000000 */  nop
/* 3E222C8 8007DD98 24106200 */  and        $v0, $v1, $v0
/* 3E222CC 8007DD9C 1D004010 */  beqz       $v0, .Llevel_11_8007DE14
/* 3E222D0 8007DDA0 FA000224 */   addiu     $v0, $zero, 0xFA
/* 3E222D4 8007DDA4 200022AE */  sw         $v0, 0x20($s1)
/* 3E222D8 8007DDA8 51000292 */  lbu        $v0, 0x51($s0)
/* 3E222DC 8007DDAC 00000000 */  nop
/* 3E222E0 8007DDB0 12004014 */  bnez       $v0, .Llevel_11_8007DDFC
/* 3E222E4 8007DDB4 10000424 */   addiu     $a0, $zero, 0x10
/* 3E222E8 8007DDB8 21300000 */  addu       $a2, $zero, $zero
/* 3E222EC 8007DDBC 0C00038E */  lw         $v1, 0xC($s0)
/* 3E222F0 8007DDC0 0780043C */  lui        $a0, %hi(D_80070328)
/* 3E222F4 8007DDC4 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 3E222F8 8007DDC8 1000028E */  lw         $v0, 0x10($s0)
/* 3E222FC 8007DDCC 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 3E22300 8007DDD0 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 3E22304 8007DDD4 23206400 */  subu       $a0, $v1, $a0
/* 3E22308 8007DDD8 203A010C */  jal        func_8004E880
/* 3E2230C 8007DDDC 23284500 */   subu      $a1, $v0, $a1
/* 3E22310 8007DDE0 21204000 */  addu       $a0, $v0, $zero
/* 3E22314 8007DDE4 20000624 */  addiu      $a2, $zero, 0x20
/* 3E22318 8007DDE8 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 3E2231C 8007DDEC 3603A590 */  lbu        $a1, %lo(D_80070328 + 0xE)($a1)
/* 3E22320 8007DDF0 3ED8000C */  jal        func_800360F8
/* 3E22324 8007DDF4 40000724 */   addiu     $a3, $zero, 0x40
/* 3E22328 8007DDF8 10000424 */  addiu      $a0, $zero, 0x10
.Llevel_11_8007DDFC:
/* 3E2232C 8007DDFC 21280002 */  addu       $a1, $s0, $zero
/* 3E22330 8007DE00 1C0022AE */  sw         $v0, 0x1C($s1)
/* 3E22334 8007DE04 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 3E22338 8007DE08 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 3E2233C 8007DE0C A2F70108 */  j          .Llevel_11_8007DE88
/* 3E22340 8007DE10 8C000324 */   addiu     $v1, $zero, 0x8C
.Llevel_11_8007DE14:
/* 3E22344 8007DE14 24006010 */  beqz       $v1, .Llevel_11_8007DEA8
/* 3E22348 8007DE18 2C010224 */   addiu     $v0, $zero, 0x12C
/* 3E2234C 8007DE1C 200022AE */  sw         $v0, 0x20($s1)
/* 3E22350 8007DE20 51000292 */  lbu        $v0, 0x51($s0)
/* 3E22354 8007DE24 00000000 */  nop
/* 3E22358 8007DE28 12004014 */  bnez       $v0, .Llevel_11_8007DE74
/* 3E2235C 8007DE2C 10000424 */   addiu     $a0, $zero, 0x10
/* 3E22360 8007DE30 21300000 */  addu       $a2, $zero, $zero
/* 3E22364 8007DE34 0C00038E */  lw         $v1, 0xC($s0)
/* 3E22368 8007DE38 0780043C */  lui        $a0, %hi(D_80070328)
/* 3E2236C 8007DE3C 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 3E22370 8007DE40 1000028E */  lw         $v0, 0x10($s0)
/* 3E22374 8007DE44 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 3E22378 8007DE48 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 3E2237C 8007DE4C 23206400 */  subu       $a0, $v1, $a0
/* 3E22380 8007DE50 203A010C */  jal        func_8004E880
/* 3E22384 8007DE54 23284500 */   subu      $a1, $v0, $a1
/* 3E22388 8007DE58 21204000 */  addu       $a0, $v0, $zero
/* 3E2238C 8007DE5C 20000624 */  addiu      $a2, $zero, 0x20
/* 3E22390 8007DE60 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 3E22394 8007DE64 3603A590 */  lbu        $a1, %lo(D_80070328 + 0xE)($a1)
/* 3E22398 8007DE68 3ED8000C */  jal        func_800360F8
/* 3E2239C 8007DE6C 40000724 */   addiu     $a3, $zero, 0x40
/* 3E223A0 8007DE70 10000424 */  addiu      $a0, $zero, 0x10
.Llevel_11_8007DE74:
/* 3E223A4 8007DE74 21280002 */  addu       $a1, $s0, $zero
/* 3E223A8 8007DE78 1C0022AE */  sw         $v0, 0x1C($s1)
/* 3E223AC 8007DE7C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 3E223B0 8007DE80 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 3E223B4 8007DE84 78000324 */  addiu      $v1, $zero, 0x78
.Llevel_11_8007DE88:
/* 3E223B8 8007DE88 240023AE */  sw         $v1, 0x24($s1)
/* 3E223BC 8007DE8C 09F84000 */  jalr       $v0
/* 3E223C0 8007DE90 080000AE */   sw        $zero, 0x8($s0)
/* 3E223C4 8007DE94 21200002 */  addu       $a0, $s0, $zero
/* 3E223C8 8007DE98 04000524 */  addiu      $a1, $zero, 0x4
/* 3E223CC 8007DE9C 04000224 */  addiu      $v0, $zero, 0x4
/* 3E223D0 8007DEA0 D0D3000C */  jal        func_80034F40
/* 3E223D4 8007DEA4 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_11_8007DEA8:
/* 3E223D8 8007DEA8 48000392 */  lbu        $v1, 0x48($s0)
/* 3E223DC 8007DEAC 01000624 */  addiu      $a2, $zero, 0x1
/* 3E223E0 8007DEB0 49006610 */  beq        $v1, $a2, .Llevel_11_8007DFD8
/* 3E223E4 8007DEB4 02006228 */   slti      $v0, $v1, 0x2
/* 3E223E8 8007DEB8 05004010 */  beqz       $v0, .Llevel_11_8007DED0
/* 3E223EC 8007DEBC 00000000 */   nop
/* 3E223F0 8007DEC0 08006010 */  beqz       $v1, .Llevel_11_8007DEE4
/* 3E223F4 8007DEC4 00000000 */   nop
/* 3E223F8 8007DEC8 2AF80108 */  j          .Llevel_11_8007E0A8
/* 3E223FC 8007DECC 00000000 */   nop
.Llevel_11_8007DED0:
/* 3E22400 8007DED0 04000224 */  addiu      $v0, $zero, 0x4
/* 3E22404 8007DED4 5D006210 */  beq        $v1, $v0, .Llevel_11_8007E04C
/* 3E22408 8007DED8 21200002 */   addu      $a0, $s0, $zero
/* 3E2240C 8007DEDC 2AF80108 */  j          .Llevel_11_8007E0A8
/* 3E22410 8007DEE0 00000000 */   nop
.Llevel_11_8007DEE4:
/* 3E22414 8007DEE4 4D000292 */  lbu        $v0, 0x4D($s0)
/* 3E22418 8007DEE8 00000000 */  nop
/* 3E2241C 8007DEEC 6E004010 */  beqz       $v0, .Llevel_11_8007E0A8
/* 3E22420 8007DEF0 00000000 */   nop
/* 3E22424 8007DEF4 0780053C */  lui        $a1, %hi(D_80070328)
/* 3E22428 8007DEF8 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 3E2242C 8007DEFC CD3C010C */  jal        func_8004F334
/* 3E22430 8007DF00 0C000426 */   addiu     $a0, $s0, 0xC
/* 3E22434 8007DF04 00404228 */  slti       $v0, $v0, 0x4000
/* 3E22438 8007DF08 67004010 */  beqz       $v0, .Llevel_11_8007E0A8
/* 3E2243C 8007DF0C 00000000 */   nop
/* 3E22440 8007DF10 0780023C */  lui        $v0, %hi(D_8006C770)
/* 3E22444 8007DF14 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 3E22448 8007DF18 00000000 */  nop
/* 3E2244C 8007DF1C 1A004010 */  beqz       $v0, .Llevel_11_8007DF88
/* 3E22450 8007DF20 00000000 */   nop
/* 3E22454 8007DF24 2800228E */  lw         $v0, 0x28($s1)
/* 3E22458 8007DF28 00000000 */  nop
/* 3E2245C 8007DF2C 10004014 */  bnez       $v0, .Llevel_11_8007DF70
/* 3E22460 8007DF30 21200002 */   addu      $a0, $s0, $zero
/* 3E22464 8007DF34 9171010C */  jal        rand
/* 3E22468 8007DF38 00000000 */   nop
/* 3E2246C 8007DF3C 01004230 */  andi       $v0, $v0, 0x1
/* 3E22470 8007DF40 03004010 */  beqz       $v0, .Llevel_11_8007DF50
/* 3E22474 8007DF44 21200002 */   addu      $a0, $s0, $zero
/* 3E22478 8007DF48 D5F70108 */  j          .Llevel_11_8007DF54
/* 3E2247C 8007DF4C 02000524 */   addiu     $a1, $zero, 0x2
.Llevel_11_8007DF50:
/* 3E22480 8007DF50 03000524 */  addiu      $a1, $zero, 0x3
.Llevel_11_8007DF54:
/* 3E22484 8007DF54 D0D3000C */  jal        func_80034F40
/* 3E22488 8007DF58 00000000 */   nop
/* 3E2248C 8007DF5C 02000424 */  addiu      $a0, $zero, 0x2
/* 3E22490 8007DF60 DBD8000C */  jal        func_8003636C
/* 3E22494 8007DF64 03000524 */   addiu     $a1, $zero, 0x3
/* 3E22498 8007DF68 E2F70108 */  j          .Llevel_11_8007DF88
/* 3E2249C 8007DF6C 280022AE */   sw        $v0, 0x28($s1)
.Llevel_11_8007DF70:
/* 3E224A0 8007DF70 D0D3000C */  jal        func_80034F40
/* 3E224A4 8007DF74 21280000 */   addu      $a1, $zero, $zero
/* 3E224A8 8007DF78 2800228E */  lw         $v0, 0x28($s1)
/* 3E224AC 8007DF7C 00000000 */  nop
/* 3E224B0 8007DF80 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 3E224B4 8007DF84 280022AE */  sw         $v0, 0x28($s1)
.Llevel_11_8007DF88:
/* 3E224B8 8007DF88 18002426 */  addiu      $a0, $s1, 0x18
/* 3E224BC 8007DF8C 69D6000C */  jal        func_800359A4
/* 3E224C0 8007DF90 04000524 */   addiu     $a1, $zero, 0x4
/* 3E224C4 8007DF94 44004010 */  beqz       $v0, .Llevel_11_8007E0A8
/* 3E224C8 8007DF98 00000000 */   nop
/* 3E224CC 8007DF9C 0780023C */  lui        $v0, %hi(D_8006C770)
/* 3E224D0 8007DFA0 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 3E224D4 8007DFA4 00000000 */  nop
/* 3E224D8 8007DFA8 3F004010 */  beqz       $v0, .Llevel_11_8007E0A8
/* 3E224DC 8007DFAC 03000424 */   addiu     $a0, $zero, 0x3
/* 3E224E0 8007DFB0 DBD8000C */  jal        func_8003636C
/* 3E224E4 8007DFB4 07000524 */   addiu     $a1, $zero, 0x7
/* 3E224E8 8007DFB8 21200002 */  addu       $a0, $s0, $zero
/* 3E224EC 8007DFBC 01000524 */  addiu      $a1, $zero, 0x1
/* 3E224F0 8007DFC0 180022AE */  sw         $v0, 0x18($s1)
/* 3E224F4 8007DFC4 01000224 */  addiu      $v0, $zero, 0x1
/* 3E224F8 8007DFC8 D0D3000C */  jal        func_80034F40
/* 3E224FC 8007DFCC 480082A0 */   sb        $v0, 0x48($a0)
/* 3E22500 8007DFD0 2AF80108 */  j          .Llevel_11_8007E0A8
/* 3E22504 8007DFD4 00000000 */   nop
.Llevel_11_8007DFD8:
/* 3E22508 8007DFD8 A157010C */  jal        func_80055E84
/* 3E2250C 8007DFDC 21200002 */   addu      $a0, $s0, $zero
/* 3E22510 8007DFE0 F7FF4224 */  addiu      $v0, $v0, -0x9
/* 3E22514 8007DFE4 1300422C */  sltiu      $v0, $v0, 0x13
/* 3E22518 8007DFE8 04004010 */  beqz       $v0, .Llevel_11_8007DFFC
/* 3E2251C 8007DFEC 21200002 */   addu      $a0, $s0, $zero
/* 3E22520 8007DFF0 21282002 */  addu       $a1, $s1, $zero
/* 3E22524 8007DFF4 5ADC000C */  jal        func_80037168
/* 3E22528 8007DFF8 01000624 */   addiu     $a2, $zero, 0x1
.Llevel_11_8007DFFC:
/* 3E2252C 8007DFFC 0780023C */  lui        $v0, %hi(D_8006C770)
/* 3E22530 8007E000 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 3E22534 8007E004 00000000 */  nop
/* 3E22538 8007E008 27004010 */  beqz       $v0, .Llevel_11_8007E0A8
/* 3E2253C 8007E00C 00000000 */   nop
/* 3E22540 8007E010 1800228E */  lw         $v0, 0x18($s1)
/* 3E22544 8007E014 00000000 */  nop
/* 3E22548 8007E018 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 3E2254C 8007E01C 2200401C */  bgtz       $v0, .Llevel_11_8007E0A8
/* 3E22550 8007E020 180022AE */   sw        $v0, 0x18($s1)
/* 3E22554 8007E024 1E000424 */  addiu      $a0, $zero, 0x1E
/* 3E22558 8007E028 DBD8000C */  jal        func_8003636C
/* 3E2255C 8007E02C 5A000524 */   addiu     $a1, $zero, 0x5A
/* 3E22560 8007E030 21200002 */  addu       $a0, $s0, $zero
/* 3E22564 8007E034 21280000 */  addu       $a1, $zero, $zero
/* 3E22568 8007E038 180022AE */  sw         $v0, 0x18($s1)
/* 3E2256C 8007E03C D0D3000C */  jal        func_80034F40
/* 3E22570 8007E040 480080A0 */   sb        $zero, 0x48($a0)
/* 3E22574 8007E044 2AF80108 */  j          .Llevel_11_8007E0A8
/* 3E22578 8007E048 00000000 */   nop
.Llevel_11_8007E04C:
/* 3E2257C 8007E04C 20002526 */  addiu      $a1, $s1, 0x20
/* 3E22580 8007E050 0C000224 */  addiu      $v0, $zero, 0xC
/* 3E22584 8007E054 1000A2AF */  sw         $v0, 0x10($sp)
/* 3E22588 8007E058 10000224 */  addiu      $v0, $zero, 0x10
/* 3E2258C 8007E05C 1400A2AF */  sw         $v0, 0x14($sp)
/* 3E22590 8007E060 40010224 */  addiu      $v0, $zero, 0x140
/* 3E22594 8007E064 1800A2AF */  sw         $v0, 0x18($sp)
/* 3E22598 8007E068 1C00A6AF */  sw         $a2, 0x1C($sp)
/* 3E2259C 8007E06C 1C00268E */  lw         $a2, 0x1C($s1)
/* 3E225A0 8007E070 0CD4000C */  jal        func_80035030
/* 3E225A4 8007E074 24002726 */   addiu     $a3, $s1, 0x24
/* 3E225A8 8007E078 0780023C */  lui        $v0, %hi(D_8006C770)
/* 3E225AC 8007E07C 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 3E225B0 8007E080 00000000 */  nop
/* 3E225B4 8007E084 08004010 */  beqz       $v0, .Llevel_11_8007E0A8
/* 3E225B8 8007E088 21200002 */   addu      $a0, $s0, $zero
/* 3E225BC 8007E08C 4957010C */  jal        func_80055D24
/* 3E225C0 8007E090 04000524 */   addiu     $a1, $zero, 0x4
/* 3E225C4 8007E094 21200002 */  addu       $a0, $s0, $zero
/* 3E225C8 8007E098 6EDA000C */  jal        func_800369B8
/* 3E225CC 8007E09C 18000524 */   addiu     $a1, $zero, 0x18
/* 3E225D0 8007E0A0 C656010C */  jal        func_80055B18
/* 3E225D4 8007E0A4 21200002 */   addu      $a0, $s0, $zero
.Llevel_11_8007E0A8:
/* 3E225D8 8007E0A8 2800BF8F */  lw         $ra, 0x28($sp)
/* 3E225DC 8007E0AC 2400B18F */  lw         $s1, 0x24($sp)
/* 3E225E0 8007E0B0 2000B08F */  lw         $s0, 0x20($sp)
/* 3E225E4 8007E0B4 3000BD27 */  addiu      $sp, $sp, 0x30
/* 3E225E8 8007E0B8 0800E003 */  jr         $ra
/* 3E225EC 8007E0BC 00000000 */   nop
.size func_level_11_8007DD68, . - func_level_11_8007DD68
