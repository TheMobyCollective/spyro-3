.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_383_level_15
/* 49B5818 8007B2E8 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 49B581C 8007B2EC 3800B2AF */  sw         $s2, 0x38($sp)
/* 49B5820 8007B2F0 21908000 */  addu       $s2, $a0, $zero
/* 49B5824 8007B2F4 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 49B5828 8007B2F8 3400B1AF */  sw         $s1, 0x34($sp)
/* 49B582C 8007B2FC 3000B0AF */  sw         $s0, 0x30($sp)
/* 49B5830 8007B300 48004392 */  lbu        $v1, 0x48($s2)
/* 49B5834 8007B304 0000448E */  lw         $a0, 0x0($s2)
/* 49B5838 8007B308 6A006004 */  bltz       $v1, .Llevel_15_8007B4B4
/* 49B583C 8007B30C 02006228 */   slti      $v0, $v1, 0x2
/* 49B5840 8007B310 05004014 */  bnez       $v0, .Llevel_15_8007B328
/* 49B5844 8007B314 02000224 */   addiu     $v0, $zero, 0x2
/* 49B5848 8007B318 0B006210 */  beq        $v1, $v0, .Llevel_15_8007B348
/* 49B584C 8007B31C 00000000 */   nop
/* 49B5850 8007B320 2DED0108 */  j          .Llevel_15_8007B4B4
/* 49B5854 8007B324 00000000 */   nop
.Llevel_15_8007B328:
/* 49B5858 8007B328 0000828C */  lw         $v0, 0x0($a0)
/* 49B585C 8007B32C 00000000 */  nop
/* 49B5860 8007B330 4C004290 */  lbu        $v0, 0x4C($v0)
/* 49B5864 8007B334 00000000 */  nop
/* 49B5868 8007B338 5E004014 */  bnez       $v0, .Llevel_15_8007B4B4
/* 49B586C 8007B33C 4C0042A2 */   sb        $v0, 0x4C($s2)
/* 49B5870 8007B340 2DED0108 */  j          .Llevel_15_8007B4B4
/* 49B5874 8007B344 4D0040A2 */   sb        $zero, 0x4D($s2)
.Llevel_15_8007B348:
/* 49B5878 8007B348 49004492 */  lbu        $a0, 0x49($s2)
/* 49B587C 8007B34C 00000000 */  nop
/* 49B5880 8007B350 05008010 */  beqz       $a0, .Llevel_15_8007B368
/* 49B5884 8007B354 01000224 */   addiu     $v0, $zero, 0x1
/* 49B5888 8007B358 48008210 */  beq        $a0, $v0, .Llevel_15_8007B47C
/* 49B588C 8007B35C 03000224 */   addiu     $v0, $zero, 0x3
/* 49B5890 8007B360 2DED0108 */  j          .Llevel_15_8007B4B4
/* 49B5894 8007B364 00000000 */   nop
.Llevel_15_8007B368:
/* 49B5898 8007B368 0780023C */  lui        $v0, %hi(D_8006FA3C)
/* 49B589C 8007B36C 3CFA428C */  lw         $v0, %lo(D_8006FA3C)($v0)
/* 49B58A0 8007B370 00000000 */  nop
/* 49B58A4 8007B374 05004310 */  beq        $v0, $v1, .Llevel_15_8007B38C
/* 49B58A8 8007B378 7F010424 */   addiu     $a0, $zero, 0x17F
/* 49B58AC 8007B37C C656010C */  jal        func_80055B18
/* 49B58B0 8007B380 21204002 */   addu      $a0, $s2, $zero
/* 49B58B4 8007B384 2DED0108 */  j          .Llevel_15_8007B4B4
/* 49B58B8 8007B388 00000000 */   nop
.Llevel_15_8007B38C:
/* 49B58BC 8007B38C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 49B58C0 8007B390 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 49B58C4 8007B394 00000000 */  nop
/* 49B58C8 8007B398 09F84000 */  jalr       $v0
/* 49B58CC 8007B39C 21284002 */   addu      $a1, $s2, $zero
/* 49B58D0 8007B3A0 21884000 */  addu       $s1, $v0, $zero
/* 49B58D4 8007B3A4 15002012 */  beqz       $s1, .Llevel_15_8007B3FC
/* 49B58D8 8007B3A8 21202002 */   addu      $a0, $s1, $zero
/* 49B58DC 8007B3AC E0D3000C */  jal        func_80034F80
/* 49B58E0 8007B3B0 21280000 */   addu      $a1, $zero, $zero
/* 49B58E4 8007B3B4 480020A2 */  sb         $zero, 0x48($s1)
/* 49B58E8 8007B3B8 21202002 */  addu       $a0, $s1, $zero
/* 49B58EC 8007B3BC 21280000 */  addu       $a1, $zero, $zero
/* 49B58F0 8007B3C0 C557010C */  jal        func_80055F14
/* 49B58F4 8007B3C4 1000A627 */   addiu     $a2, $sp, 0x10
/* 49B58F8 8007B3C8 21204002 */  addu       $a0, $s2, $zero
/* 49B58FC 8007B3CC 21280000 */  addu       $a1, $zero, $zero
/* 49B5900 8007B3D0 2000B027 */  addiu      $s0, $sp, 0x20
/* 49B5904 8007B3D4 C557010C */  jal        func_80055F14
/* 49B5908 8007B3D8 21300002 */   addu      $a2, $s0, $zero
/* 49B590C 8007B3DC 1000A427 */  addiu      $a0, $sp, 0x10
/* 49B5910 8007B3E0 21280002 */  addu       $a1, $s0, $zero
/* 49B5914 8007B3E4 723C010C */  jal        func_8004F1C8
/* 49B5918 8007B3E8 21308000 */   addu      $a2, $a0, $zero
/* 49B591C 8007B3EC 0C002426 */  addiu      $a0, $s1, 0xC
/* 49B5920 8007B3F0 21288000 */  addu       $a1, $a0, $zero
/* 49B5924 8007B3F4 653C010C */  jal        func_8004F194
/* 49B5928 8007B3F8 1000A627 */   addiu     $a2, $sp, 0x10
.Llevel_15_8007B3FC:
/* 49B592C 8007B3FC 7F010424 */  addiu      $a0, $zero, 0x17F
/* 49B5930 8007B400 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 49B5934 8007B404 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 49B5938 8007B408 00000000 */  nop
/* 49B593C 8007B40C 09F84000 */  jalr       $v0
/* 49B5940 8007B410 21284002 */   addu      $a1, $s2, $zero
/* 49B5944 8007B414 21884000 */  addu       $s1, $v0, $zero
/* 49B5948 8007B418 16002012 */  beqz       $s1, .Llevel_15_8007B474
/* 49B594C 8007B41C 21202002 */   addu      $a0, $s1, $zero
/* 49B5950 8007B420 E0D3000C */  jal        func_80034F80
/* 49B5954 8007B424 01000524 */   addiu     $a1, $zero, 0x1
/* 49B5958 8007B428 01000224 */  addiu      $v0, $zero, 0x1
/* 49B595C 8007B42C 480022A2 */  sb         $v0, 0x48($s1)
/* 49B5960 8007B430 21202002 */  addu       $a0, $s1, $zero
/* 49B5964 8007B434 01000524 */  addiu      $a1, $zero, 0x1
/* 49B5968 8007B438 C557010C */  jal        func_80055F14
/* 49B596C 8007B43C 1000A627 */   addiu     $a2, $sp, 0x10
/* 49B5970 8007B440 21204002 */  addu       $a0, $s2, $zero
/* 49B5974 8007B444 01000524 */  addiu      $a1, $zero, 0x1
/* 49B5978 8007B448 2000B027 */  addiu      $s0, $sp, 0x20
/* 49B597C 8007B44C C557010C */  jal        func_80055F14
/* 49B5980 8007B450 21300002 */   addu      $a2, $s0, $zero
/* 49B5984 8007B454 1000A427 */  addiu      $a0, $sp, 0x10
/* 49B5988 8007B458 21280002 */  addu       $a1, $s0, $zero
/* 49B598C 8007B45C 723C010C */  jal        func_8004F1C8
/* 49B5990 8007B460 21308000 */   addu      $a2, $a0, $zero
/* 49B5994 8007B464 0C002426 */  addiu      $a0, $s1, 0xC
/* 49B5998 8007B468 21288000 */  addu       $a1, $a0, $zero
/* 49B599C 8007B46C 653C010C */  jal        func_8004F194
/* 49B59A0 8007B470 1000A627 */   addiu     $a2, $sp, 0x10
.Llevel_15_8007B474:
/* 49B59A4 8007B474 2CED0108 */  j          .Llevel_15_8007B4B0
/* 49B59A8 8007B478 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_15_8007B47C:
/* 49B59AC 8007B47C 0780033C */  lui        $v1, %hi(D_8006FA78)
/* 49B59B0 8007B480 78FA638C */  lw         $v1, %lo(D_8006FA78)($v1)
/* 49B59B4 8007B484 00000000 */  nop
/* 49B59B8 8007B488 0A006214 */  bne        $v1, $v0, .Llevel_15_8007B4B4
/* 49B59BC 8007B48C 00000000 */   nop
/* 49B59C0 8007B490 0780023C */  lui        $v0, %hi(D_8006C640)
/* 49B59C4 8007B494 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 49B59C8 8007B498 00000000 */  nop
/* 49B59CC 8007B49C 0B004228 */  slti       $v0, $v0, 0xB
/* 49B59D0 8007B4A0 04004014 */  bnez       $v0, .Llevel_15_8007B4B4
/* 49B59D4 8007B4A4 3F000224 */   addiu     $v0, $zero, 0x3F
/* 49B59D8 8007B4A8 4C0042A2 */  sb         $v0, 0x4C($s2)
/* 49B59DC 8007B4AC 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_15_8007B4B0:
/* 49B59E0 8007B4B0 490042A2 */  sb         $v0, 0x49($s2)
.Llevel_15_8007B4B4:
/* 49B59E4 8007B4B4 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 49B59E8 8007B4B8 3800B28F */  lw         $s2, 0x38($sp)
/* 49B59EC 8007B4BC 3400B18F */  lw         $s1, 0x34($sp)
/* 49B59F0 8007B4C0 3000B08F */  lw         $s0, 0x30($sp)
/* 49B59F4 8007B4C4 4000BD27 */  addiu      $sp, $sp, 0x40
/* 49B59F8 8007B4C8 0800E003 */  jr         $ra
/* 49B59FC 8007B4CC 00000000 */   nop
.size MobyUpdate_383_level_15, . - MobyUpdate_383_level_15
