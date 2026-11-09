.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_196_level_13
/* 441D828 8007F2F8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 441D82C 8007F2FC 2000B0AF */  sw         $s0, 0x20($sp)
/* 441D830 8007F300 21808000 */  addu       $s0, $a0, $zero
/* 441D834 8007F304 03000324 */  addiu      $v1, $zero, 0x3
/* 441D838 8007F308 2800BFAF */  sw         $ra, 0x28($sp)
/* 441D83C 8007F30C 2400B1AF */  sw         $s1, 0x24($sp)
/* 441D840 8007F310 48000292 */  lbu        $v0, 0x48($s0)
/* 441D844 8007F314 0000118E */  lw         $s1, 0x0($s0)
/* 441D848 8007F318 54004310 */  beq        $v0, $v1, .Llevel_13_8007F46C
/* 441D84C 8007F31C 0200023C */   lui       $v0, (0x20000 >> 16)
/* 441D850 8007F320 1800038E */  lw         $v1, 0x18($s0)
/* 441D854 8007F324 00000000 */  nop
/* 441D858 8007F328 24106200 */  and        $v0, $v1, $v0
/* 441D85C 8007F32C 20004010 */  beqz       $v0, .Llevel_13_8007F3B0
/* 441D860 8007F330 90010224 */   addiu     $v0, $zero, 0x190
/* 441D864 8007F334 200022AE */  sw         $v0, 0x20($s1)
/* 441D868 8007F338 51000292 */  lbu        $v0, 0x51($s0)
/* 441D86C 8007F33C 00000000 */  nop
/* 441D870 8007F340 12004014 */  bnez       $v0, .Llevel_13_8007F38C
/* 441D874 8007F344 10000424 */   addiu     $a0, $zero, 0x10
/* 441D878 8007F348 21300000 */  addu       $a2, $zero, $zero
/* 441D87C 8007F34C 0C00038E */  lw         $v1, 0xC($s0)
/* 441D880 8007F350 0780043C */  lui        $a0, %hi(D_80070328)
/* 441D884 8007F354 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 441D888 8007F358 1000028E */  lw         $v0, 0x10($s0)
/* 441D88C 8007F35C 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 441D890 8007F360 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 441D894 8007F364 23206400 */  subu       $a0, $v1, $a0
/* 441D898 8007F368 203A010C */  jal        func_8004E880
/* 441D89C 8007F36C 23284500 */   subu      $a1, $v0, $a1
/* 441D8A0 8007F370 21204000 */  addu       $a0, $v0, $zero
/* 441D8A4 8007F374 20000624 */  addiu      $a2, $zero, 0x20
/* 441D8A8 8007F378 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 441D8AC 8007F37C 3603A590 */  lbu        $a1, %lo(D_80070328 + 0xE)($a1)
/* 441D8B0 8007F380 3ED8000C */  jal        func_800360F8
/* 441D8B4 8007F384 40000724 */   addiu     $a3, $zero, 0x40
/* 441D8B8 8007F388 10000424 */  addiu      $a0, $zero, 0x10
.Llevel_13_8007F38C:
/* 441D8BC 8007F38C 21280002 */  addu       $a1, $s0, $zero
/* 441D8C0 8007F390 1C0022AE */  sw         $v0, 0x1C($s1)
/* 441D8C4 8007F394 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 441D8C8 8007F398 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 441D8CC 8007F39C 40000324 */  addiu      $v1, $zero, 0x40
/* 441D8D0 8007F3A0 09F84000 */  jalr       $v0
/* 441D8D4 8007F3A4 240023AE */   sw        $v1, 0x24($s1)
/* 441D8D8 8007F3A8 16FD0108 */  j          .Llevel_13_8007F458
/* 441D8DC 8007F3AC 21200002 */   addu      $a0, $s0, $zero
.Llevel_13_8007F3B0:
/* 441D8E0 8007F3B0 2E006010 */  beqz       $v1, .Llevel_13_8007F46C
/* 441D8E4 8007F3B4 C8000224 */   addiu     $v0, $zero, 0xC8
/* 441D8E8 8007F3B8 200022AE */  sw         $v0, 0x20($s1)
/* 441D8EC 8007F3BC 51000292 */  lbu        $v0, 0x51($s0)
/* 441D8F0 8007F3C0 00000000 */  nop
/* 441D8F4 8007F3C4 12004014 */  bnez       $v0, .Llevel_13_8007F410
/* 441D8F8 8007F3C8 10000424 */   addiu     $a0, $zero, 0x10
/* 441D8FC 8007F3CC 21300000 */  addu       $a2, $zero, $zero
/* 441D900 8007F3D0 0C00038E */  lw         $v1, 0xC($s0)
/* 441D904 8007F3D4 0780043C */  lui        $a0, %hi(D_80070328)
/* 441D908 8007F3D8 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 441D90C 8007F3DC 1000028E */  lw         $v0, 0x10($s0)
/* 441D910 8007F3E0 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 441D914 8007F3E4 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 441D918 8007F3E8 23206400 */  subu       $a0, $v1, $a0
/* 441D91C 8007F3EC 203A010C */  jal        func_8004E880
/* 441D920 8007F3F0 23284500 */   subu      $a1, $v0, $a1
/* 441D924 8007F3F4 21204000 */  addu       $a0, $v0, $zero
/* 441D928 8007F3F8 20000624 */  addiu      $a2, $zero, 0x20
/* 441D92C 8007F3FC 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 441D930 8007F400 3603A590 */  lbu        $a1, %lo(D_80070328 + 0xE)($a1)
/* 441D934 8007F404 3ED8000C */  jal        func_800360F8
/* 441D938 8007F408 40000724 */   addiu     $a3, $zero, 0x40
/* 441D93C 8007F40C 10000424 */  addiu      $a0, $zero, 0x10
.Llevel_13_8007F410:
/* 441D940 8007F410 0780033C */  lui        $v1, %hi(SpawnMoby)
/* 441D944 8007F414 E042638C */  lw         $v1, %lo(SpawnMoby)($v1)
/* 441D948 8007F418 21280002 */  addu       $a1, $s0, $zero
/* 441D94C 8007F41C 1C0022AE */  sw         $v0, 0x1C($s1)
/* 441D950 8007F420 40000224 */  addiu      $v0, $zero, 0x40
/* 441D954 8007F424 09F86000 */  jalr       $v1
/* 441D958 8007F428 240022AE */   sw        $v0, 0x24($s1)
/* 441D95C 8007F42C 1800028E */  lw         $v0, 0x18($s0)
/* 441D960 8007F430 1000033C */  lui        $v1, (0x100000 >> 16)
/* 441D964 8007F434 24104300 */  and        $v0, $v0, $v1
/* 441D968 8007F438 07004010 */  beqz       $v0, .Llevel_13_8007F458
/* 441D96C 8007F43C 21200002 */   addu      $a0, $s0, $zero
/* 441D970 8007F440 2000228E */  lw         $v0, 0x20($s1)
/* 441D974 8007F444 2400238E */  lw         $v1, 0x24($s1)
/* 441D978 8007F448 C8004224 */  addiu      $v0, $v0, 0xC8
/* 441D97C 8007F44C 32006324 */  addiu      $v1, $v1, 0x32
/* 441D980 8007F450 200022AE */  sw         $v0, 0x20($s1)
/* 441D984 8007F454 240023AE */  sw         $v1, 0x24($s1)
.Llevel_13_8007F458:
/* 441D988 8007F458 03000524 */  addiu      $a1, $zero, 0x3
/* 441D98C 8007F45C 03000224 */  addiu      $v0, $zero, 0x3
/* 441D990 8007F460 080000AE */  sw         $zero, 0x8($s0)
/* 441D994 8007F464 D0D3000C */  jal        func_80034F40
/* 441D998 8007F468 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_13_8007F46C:
/* 441D99C 8007F46C 48000392 */  lbu        $v1, 0x48($s0)
/* 441D9A0 8007F470 02000224 */  addiu      $v0, $zero, 0x2
/* 441D9A4 8007F474 15006210 */  beq        $v1, $v0, .Llevel_13_8007F4CC
/* 441D9A8 8007F478 03006228 */   slti      $v0, $v1, 0x3
/* 441D9AC 8007F47C 05004014 */  bnez       $v0, .Llevel_13_8007F494
/* 441D9B0 8007F480 03000224 */   addiu     $v0, $zero, 0x3
/* 441D9B4 8007F484 30006210 */  beq        $v1, $v0, .Llevel_13_8007F548
/* 441D9B8 8007F488 21200002 */   addu      $a0, $s0, $zero
/* 441D9BC 8007F48C 6AFD0108 */  j          .Llevel_13_8007F5A8
/* 441D9C0 8007F490 00000000 */   nop
.Llevel_13_8007F494:
/* 441D9C4 8007F494 44006004 */  bltz       $v1, .Llevel_13_8007F5A8
/* 441D9C8 8007F498 00000000 */   nop
/* 441D9CC 8007F49C 0780023C */  lui        $v0, %hi(D_8006C770)
/* 441D9D0 8007F4A0 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 441D9D4 8007F4A4 00000000 */  nop
/* 441D9D8 8007F4A8 3F004010 */  beqz       $v0, .Llevel_13_8007F5A8
/* 441D9DC 8007F4AC 5A000424 */   addiu     $a0, $zero, 0x5A
/* 441D9E0 8007F4B0 DBD8000C */  jal        func_8003636C
/* 441D9E4 8007F4B4 2C010524 */   addiu     $a1, $zero, 0x12C
/* 441D9E8 8007F4B8 21200002 */  addu       $a0, $s0, $zero
/* 441D9EC 8007F4BC 02000524 */  addiu      $a1, $zero, 0x2
/* 441D9F0 8007F4C0 180022AE */  sw         $v0, 0x18($s1)
/* 441D9F4 8007F4C4 4EFD0108 */  j          .Llevel_13_8007F538
/* 441D9F8 8007F4C8 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_13_8007F4CC:
/* 441D9FC 8007F4CC 21200002 */  addu       $a0, $s0, $zero
/* 441DA00 8007F4D0 21282002 */  addu       $a1, $s1, $zero
/* 441DA04 8007F4D4 5ADC000C */  jal        func_80037168
/* 441DA08 8007F4D8 57000624 */   addiu     $a2, $zero, 0x57
/* 441DA0C 8007F4DC 18002426 */  addiu      $a0, $s1, 0x18
/* 441DA10 8007F4E0 69D6000C */  jal        func_800359A4
/* 441DA14 8007F4E4 04000524 */   addiu     $a1, $zero, 0x4
/* 441DA18 8007F4E8 2F004010 */  beqz       $v0, .Llevel_13_8007F5A8
/* 441DA1C 8007F4EC 00000000 */   nop
/* 441DA20 8007F4F0 2800228E */  lw         $v0, 0x28($s1)
/* 441DA24 8007F4F4 00000000 */  nop
/* 441DA28 8007F4F8 08004010 */  beqz       $v0, .Llevel_13_8007F51C
/* 441DA2C 8007F4FC 21200002 */   addu      $a0, $s0, $zero
/* 441DA30 8007F500 21280000 */  addu       $a1, $zero, $zero
/* 441DA34 8007F504 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 441DA38 8007F508 280022AE */  sw         $v0, 0x28($s1)
/* 441DA3C 8007F50C D0D3000C */  jal        func_80034F40
/* 441DA40 8007F510 480080A0 */   sb        $zero, 0x48($a0)
/* 441DA44 8007F514 6AFD0108 */  j          .Llevel_13_8007F5A8
/* 441DA48 8007F518 00000000 */   nop
.Llevel_13_8007F51C:
/* 441DA4C 8007F51C 02000424 */  addiu      $a0, $zero, 0x2
/* 441DA50 8007F520 DBD8000C */  jal        func_8003636C
/* 441DA54 8007F524 04000524 */   addiu     $a1, $zero, 0x4
/* 441DA58 8007F528 21200002 */  addu       $a0, $s0, $zero
/* 441DA5C 8007F52C 01000524 */  addiu      $a1, $zero, 0x1
/* 441DA60 8007F530 280022AE */  sw         $v0, 0x28($s1)
/* 441DA64 8007F534 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_13_8007F538:
/* 441DA68 8007F538 D0D3000C */  jal        func_80034F40
/* 441DA6C 8007F53C 480082A0 */   sb        $v0, 0x48($a0)
/* 441DA70 8007F540 6AFD0108 */  j          .Llevel_13_8007F5A8
/* 441DA74 8007F544 00000000 */   nop
.Llevel_13_8007F548:
/* 441DA78 8007F548 20002526 */  addiu      $a1, $s1, 0x20
/* 441DA7C 8007F54C 0C000224 */  addiu      $v0, $zero, 0xC
/* 441DA80 8007F550 1000A2AF */  sw         $v0, 0x10($sp)
/* 441DA84 8007F554 10000224 */  addiu      $v0, $zero, 0x10
/* 441DA88 8007F558 1400A2AF */  sw         $v0, 0x14($sp)
/* 441DA8C 8007F55C 40010224 */  addiu      $v0, $zero, 0x140
/* 441DA90 8007F560 1800A2AF */  sw         $v0, 0x18($sp)
/* 441DA94 8007F564 01000224 */  addiu      $v0, $zero, 0x1
/* 441DA98 8007F568 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 441DA9C 8007F56C 1C00268E */  lw         $a2, 0x1C($s1)
/* 441DAA0 8007F570 0CD4000C */  jal        func_80035030
/* 441DAA4 8007F574 24002726 */   addiu     $a3, $s1, 0x24
/* 441DAA8 8007F578 0780023C */  lui        $v0, %hi(D_8006C770)
/* 441DAAC 8007F57C 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 441DAB0 8007F580 00000000 */  nop
/* 441DAB4 8007F584 08004010 */  beqz       $v0, .Llevel_13_8007F5A8
/* 441DAB8 8007F588 21200002 */   addu      $a0, $s0, $zero
/* 441DABC 8007F58C 4957010C */  jal        func_80055D24
/* 441DAC0 8007F590 04000524 */   addiu     $a1, $zero, 0x4
/* 441DAC4 8007F594 21200002 */  addu       $a0, $s0, $zero
/* 441DAC8 8007F598 6EDA000C */  jal        func_800369B8
/* 441DACC 8007F59C 18000524 */   addiu     $a1, $zero, 0x18
/* 441DAD0 8007F5A0 C656010C */  jal        func_80055B18
/* 441DAD4 8007F5A4 21200002 */   addu      $a0, $s0, $zero
.Llevel_13_8007F5A8:
/* 441DAD8 8007F5A8 2800BF8F */  lw         $ra, 0x28($sp)
/* 441DADC 8007F5AC 2400B18F */  lw         $s1, 0x24($sp)
/* 441DAE0 8007F5B0 2000B08F */  lw         $s0, 0x20($sp)
/* 441DAE4 8007F5B4 3000BD27 */  addiu      $sp, $sp, 0x30
/* 441DAE8 8007F5B8 0800E003 */  jr         $ra
/* 441DAEC 8007F5BC 00000000 */   nop
.size MobyUpdate_196_level_13, . - MobyUpdate_196_level_13
