.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_14_8007B1BC
/* 47BA6EC 8007B1BC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 47BA6F0 8007B1C0 1800B2AF */  sw         $s2, 0x18($sp)
/* 47BA6F4 8007B1C4 21908000 */  addu       $s2, $a0, $zero
/* 47BA6F8 8007B1C8 1000B0AF */  sw         $s0, 0x10($sp)
/* 47BA6FC 8007B1CC 01001024 */  addiu      $s0, $zero, 0x1
/* 47BA700 8007B1D0 2000BFAF */  sw         $ra, 0x20($sp)
/* 47BA704 8007B1D4 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 47BA708 8007B1D8 1400B1AF */  sw         $s1, 0x14($sp)
/* 47BA70C 8007B1DC 48004392 */  lbu        $v1, 0x48($s2)
/* 47BA710 8007B1E0 0000518E */  lw         $s1, 0x0($s2)
/* 47BA714 8007B1E4 58007010 */  beq        $v1, $s0, .Llevel_14_8007B348
/* 47BA718 8007B1E8 02006228 */   slti      $v0, $v1, 0x2
/* 47BA71C 8007B1EC 05004010 */  beqz       $v0, .Llevel_14_8007B204
/* 47BA720 8007B1F0 00000000 */   nop
/* 47BA724 8007B1F4 0A006010 */  beqz       $v1, .Llevel_14_8007B220
/* 47BA728 8007B1F8 00000000 */   nop
/* 47BA72C 8007B1FC 33ED0108 */  j          .Llevel_14_8007B4CC
/* 47BA730 8007B200 00000000 */   nop
.Llevel_14_8007B204:
/* 47BA734 8007B204 02000224 */  addiu      $v0, $zero, 0x2
/* 47BA738 8007B208 70006210 */  beq        $v1, $v0, .Llevel_14_8007B3CC
/* 47BA73C 8007B20C 03000224 */   addiu     $v0, $zero, 0x3
/* 47BA740 8007B210 75006210 */  beq        $v1, $v0, .Llevel_14_8007B3E8
/* 47BA744 8007B214 00000000 */   nop
/* 47BA748 8007B218 33ED0108 */  j          .Llevel_14_8007B4CC
/* 47BA74C 8007B21C 00000000 */   nop
.Llevel_14_8007B220:
/* 47BA750 8007B220 0000238E */  lw         $v1, 0x0($s1)
/* 47BA754 8007B224 00000000 */  nop
/* 47BA758 8007B228 40100300 */  sll        $v0, $v1, 1
/* 47BA75C 8007B22C 21104300 */  addu       $v0, $v0, $v1
/* 47BA760 8007B230 80100200 */  sll        $v0, $v0, 2
/* 47BA764 8007B234 23104300 */  subu       $v0, $v0, $v1
/* 47BA768 8007B238 0780033C */  lui        $v1, %hi(D_8006C550)
/* 47BA76C 8007B23C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 47BA770 8007B240 C0100200 */  sll        $v0, $v0, 3
/* 47BA774 8007B244 21284300 */  addu       $a1, $v0, $v1
/* 47BA778 8007B248 4800A290 */  lbu        $v0, 0x48($a1)
/* 47BA77C 8007B24C 00000000 */  nop
/* 47BA780 8007B250 80004230 */  andi       $v0, $v0, 0x80
/* 47BA784 8007B254 1B004010 */  beqz       $v0, .Llevel_14_8007B2C4
/* 47BA788 8007B258 04003026 */   addiu     $s0, $s1, 0x4
/* 47BA78C 8007B25C 21200002 */  addu       $a0, $s0, $zero
/* 47BA790 8007B260 5E3C010C */  jal        func_8004F178
/* 47BA794 8007B264 0C00A524 */   addiu     $a1, $a1, 0xC
/* 47BA798 8007B268 21204002 */  addu       $a0, $s2, $zero
/* 47BA79C 8007B26C 01000524 */  addiu      $a1, $zero, 0x1
/* 47BA7A0 8007B270 21300002 */  addu       $a2, $s0, $zero
/* 47BA7A4 8007B274 0C005326 */  addiu      $s3, $s2, 0xC
/* 47BA7A8 8007B278 9ADA000C */  jal        func_80036A68
/* 47BA7AC 8007B27C 21386002 */   addu      $a3, $s3, $zero
/* 47BA7B0 8007B280 21884000 */  addu       $s1, $v0, $zero
/* 47BA7B4 8007B284 91002012 */  beqz       $s1, .Llevel_14_8007B4CC
/* 47BA7B8 8007B288 0C003026 */   addiu     $s0, $s1, 0xC
/* 47BA7BC 8007B28C 21200002 */  addu       $a0, $s0, $zero
/* 47BA7C0 8007B290 5E3C010C */  jal        func_8004F178
/* 47BA7C4 8007B294 21286002 */   addu      $a1, $s3, $zero
/* 47BA7C8 8007B298 21200002 */  addu       $a0, $s0, $zero
/* 47BA7CC 8007B29C D668000C */  jal        func_8001A358
/* 47BA7D0 8007B2A0 00040524 */   addiu     $a1, $zero, 0x400
/* 47BA7D4 8007B2A4 02004010 */  beqz       $v0, .Llevel_14_8007B2B0
/* 47BA7D8 8007B2A8 00000000 */   nop
/* 47BA7DC 8007B2AC 140022AE */  sw         $v0, 0x14($s1)
.Llevel_14_8007B2B0:
/* 47BA7E0 8007B2B0 50004292 */  lbu        $v0, 0x50($s2)
/* 47BA7E4 8007B2B4 21204002 */  addu       $a0, $s2, $zero
/* 47BA7E8 8007B2B8 480020A2 */  sb         $zero, 0x48($s1)
/* 47BA7EC 8007B2BC 31ED0108 */  j          .Llevel_14_8007B4C4
/* 47BA7F0 8007B2C0 500022A2 */   sb        $v0, 0x50($s1)
.Llevel_14_8007B2C4:
/* 47BA7F4 8007B2C4 04002426 */  addiu      $a0, $s1, 0x4
/* 47BA7F8 8007B2C8 0C005026 */  addiu      $s0, $s2, 0xC
/* 47BA7FC 8007B2CC 5E3C010C */  jal        func_8004F178
/* 47BA800 8007B2D0 21280002 */   addu      $a1, $s0, $zero
/* 47BA804 8007B2D4 21200002 */  addu       $a0, $s0, $zero
/* 47BA808 8007B2D8 0000238E */  lw         $v1, 0x0($s1)
/* 47BA80C 8007B2DC 0780053C */  lui        $a1, %hi(D_8006C550)
/* 47BA810 8007B2E0 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 47BA814 8007B2E4 40100300 */  sll        $v0, $v1, 1
/* 47BA818 8007B2E8 21104300 */  addu       $v0, $v0, $v1
/* 47BA81C 8007B2EC 80100200 */  sll        $v0, $v0, 2
/* 47BA820 8007B2F0 23104300 */  subu       $v0, $v0, $v1
/* 47BA824 8007B2F4 C0100200 */  sll        $v0, $v0, 3
/* 47BA828 8007B2F8 2128A200 */  addu       $a1, $a1, $v0
/* 47BA82C 8007B2FC 5E3C010C */  jal        func_8004F178
/* 47BA830 8007B300 0C00A524 */   addiu     $a1, $a1, 0xC
/* 47BA834 8007B304 1400228E */  lw         $v0, 0x14($s1)
/* 47BA838 8007B308 00000000 */  nop
/* 47BA83C 8007B30C 0000438C */  lw         $v1, 0x0($v0)
/* 47BA840 8007B310 00000000 */  nop
/* 47BA844 8007B314 490043A2 */  sb         $v1, 0x49($s2)
/* 47BA848 8007B318 FF006330 */  andi       $v1, $v1, 0xFF
/* 47BA84C 8007B31C 00110300 */  sll        $v0, $v1, 4
/* 47BA850 8007B320 1400248E */  lw         $a0, 0x14($s1)
/* 47BA854 8007B324 23104300 */  subu       $v0, $v0, $v1
/* 47BA858 8007B328 100022AE */  sw         $v0, 0x10($s1)
/* 47BA85C 8007B32C 0000828C */  lw         $v0, 0x0($a0)
/* 47BA860 8007B330 00000000 */  nop
/* 47BA864 8007B334 01004224 */  addiu      $v0, $v0, 0x1
/* 47BA868 8007B338 000082AC */  sw         $v0, 0x0($a0)
/* 47BA86C 8007B33C 01000224 */  addiu      $v0, $zero, 0x1
/* 47BA870 8007B340 33ED0108 */  j          .Llevel_14_8007B4CC
/* 47BA874 8007B344 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_14_8007B348:
/* 47BA878 8007B348 0000238E */  lw         $v1, 0x0($s1)
/* 47BA87C 8007B34C 00000000 */  nop
/* 47BA880 8007B350 40100300 */  sll        $v0, $v1, 1
/* 47BA884 8007B354 21104300 */  addu       $v0, $v0, $v1
/* 47BA888 8007B358 80100200 */  sll        $v0, $v0, 2
/* 47BA88C 8007B35C 23104300 */  subu       $v0, $v0, $v1
/* 47BA890 8007B360 0780033C */  lui        $v1, %hi(D_8006C550)
/* 47BA894 8007B364 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 47BA898 8007B368 C0100200 */  sll        $v0, $v0, 3
/* 47BA89C 8007B36C 21284300 */  addu       $a1, $v0, $v1
/* 47BA8A0 8007B370 3600A384 */  lh         $v1, 0x36($a1)
/* 47BA8A4 8007B374 CE000224 */  addiu      $v0, $zero, 0xCE
/* 47BA8A8 8007B378 03006214 */  bne        $v1, $v0, .Llevel_14_8007B388
/* 47BA8AC 8007B37C 0C004426 */   addiu     $a0, $s2, 0xC
/* 47BA8B0 8007B380 5E3C010C */  jal        func_8004F178
/* 47BA8B4 8007B384 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_14_8007B388:
/* 47BA8B8 8007B388 0000238E */  lw         $v1, 0x0($s1)
/* 47BA8BC 8007B38C 00000000 */  nop
/* 47BA8C0 8007B390 40100300 */  sll        $v0, $v1, 1
/* 47BA8C4 8007B394 21104300 */  addu       $v0, $v0, $v1
/* 47BA8C8 8007B398 80100200 */  sll        $v0, $v0, 2
/* 47BA8CC 8007B39C 23104300 */  subu       $v0, $v0, $v1
/* 47BA8D0 8007B3A0 0780033C */  lui        $v1, %hi(D_8006C550)
/* 47BA8D4 8007B3A4 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 47BA8D8 8007B3A8 C0100200 */  sll        $v0, $v0, 3
/* 47BA8DC 8007B3AC 21104300 */  addu       $v0, $v0, $v1
/* 47BA8E0 8007B3B0 48004290 */  lbu        $v0, 0x48($v0)
/* 47BA8E4 8007B3B4 00000000 */  nop
/* 47BA8E8 8007B3B8 80004230 */  andi       $v0, $v0, 0x80
/* 47BA8EC 8007B3BC 43004010 */  beqz       $v0, .Llevel_14_8007B4CC
/* 47BA8F0 8007B3C0 02000224 */   addiu     $v0, $zero, 0x2
/* 47BA8F4 8007B3C4 33ED0108 */  j          .Llevel_14_8007B4CC
/* 47BA8F8 8007B3C8 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_14_8007B3CC:
/* 47BA8FC 8007B3CC 10002426 */  addiu      $a0, $s1, 0x10
/* 47BA900 8007B3D0 69D6000C */  jal        func_800359A4
/* 47BA904 8007B3D4 04000524 */   addiu     $a1, $zero, 0x4
/* 47BA908 8007B3D8 3C004010 */  beqz       $v0, .Llevel_14_8007B4CC
/* 47BA90C 8007B3DC 03000224 */   addiu     $v0, $zero, 0x3
/* 47BA910 8007B3E0 33ED0108 */  j          .Llevel_14_8007B4CC
/* 47BA914 8007B3E4 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_14_8007B3E8:
/* 47BA918 8007B3E8 0000238E */  lw         $v1, 0x0($s1)
/* 47BA91C 8007B3EC 00000000 */  nop
/* 47BA920 8007B3F0 40100300 */  sll        $v0, $v1, 1
/* 47BA924 8007B3F4 21104300 */  addu       $v0, $v0, $v1
/* 47BA928 8007B3F8 80100200 */  sll        $v0, $v0, 2
/* 47BA92C 8007B3FC 23104300 */  subu       $v0, $v0, $v1
/* 47BA930 8007B400 0780033C */  lui        $v1, %hi(D_8006C550)
/* 47BA934 8007B404 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 47BA938 8007B408 C0100200 */  sll        $v0, $v0, 3
/* 47BA93C 8007B40C 21204300 */  addu       $a0, $v0, $v1
/* 47BA940 8007B410 50008390 */  lbu        $v1, 0x50($a0)
/* 47BA944 8007B414 FF000224 */  addiu      $v0, $zero, 0xFF
/* 47BA948 8007B418 15006214 */  bne        $v1, $v0, .Llevel_14_8007B470
/* 47BA94C 8007B41C 00000000 */   nop
/* 47BA950 8007B420 80EE000C */  jal        func_8003BA00
/* 47BA954 8007B424 00000000 */   nop
/* 47BA958 8007B428 0000238E */  lw         $v1, 0x0($s1)
/* 47BA95C 8007B42C 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 47BA960 8007B430 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 47BA964 8007B434 0780043C */  lui        $a0, %hi(D_80071AB0)
/* 47BA968 8007B438 B01A8424 */  addiu      $a0, $a0, %lo(D_80071AB0)
/* 47BA96C 8007B43C 21186200 */  addu       $v1, $v1, $v0
/* 47BA970 8007B440 1F006530 */  andi       $a1, $v1, 0x1F
/* 47BA974 8007B444 43190300 */  sra        $v1, $v1, 5
/* 47BA978 8007B448 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 47BA97C 8007B44C 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 47BA980 8007B450 80180300 */  sll        $v1, $v1, 2
/* 47BA984 8007B454 40110200 */  sll        $v0, $v0, 5
/* 47BA988 8007B458 21104400 */  addu       $v0, $v0, $a0
/* 47BA98C 8007B45C 21186200 */  addu       $v1, $v1, $v0
/* 47BA990 8007B460 0000628C */  lw         $v0, 0x0($v1)
/* 47BA994 8007B464 0428B000 */  sllv       $a1, $s0, $a1
/* 47BA998 8007B468 25104500 */  or         $v0, $v0, $a1
/* 47BA99C 8007B46C 000062AC */  sw         $v0, 0x0($v1)
.Llevel_14_8007B470:
/* 47BA9A0 8007B470 21204002 */  addu       $a0, $s2, $zero
/* 47BA9A4 8007B474 01000524 */  addiu      $a1, $zero, 0x1
/* 47BA9A8 8007B478 0C004626 */  addiu      $a2, $s2, 0xC
/* 47BA9AC 8007B47C 9ADA000C */  jal        func_80036A68
/* 47BA9B0 8007B480 04002726 */   addiu     $a3, $s1, 0x4
/* 47BA9B4 8007B484 11004010 */  beqz       $v0, .Llevel_14_8007B4CC
/* 47BA9B8 8007B488 21284002 */   addu      $a1, $s2, $zero
/* 47BA9BC 8007B48C 0780023C */  lui        $v0, %hi(D_8006C654)
/* 47BA9C0 8007B490 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 47BA9C4 8007B494 00000000 */  nop
/* 47BA9C8 8007B498 1A004490 */  lbu        $a0, 0x1A($v0)
/* 47BA9CC 8007B49C D4EE000C */  jal        PlaySound
/* 47BA9D0 8007B4A0 21300000 */   addu      $a2, $zero, $zero
/* 47BA9D4 8007B4A4 06004004 */  bltz       $v0, .Llevel_14_8007B4C0
/* 47BA9D8 8007B4A8 21204000 */   addu      $a0, $v0, $zero
/* 47BA9DC 8007B4AC 49004592 */  lbu        $a1, 0x49($s2)
/* 47BA9E0 8007B4B0 00000000 */  nop
/* 47BA9E4 8007B4B4 002A0500 */  sll        $a1, $a1, 8
/* 47BA9E8 8007B4B8 2CF0000C */  jal        func_8003C0B0
/* 47BA9EC 8007B4BC 0010A524 */   addiu     $a1, $a1, 0x1000
.Llevel_14_8007B4C0:
/* 47BA9F0 8007B4C0 21204002 */  addu       $a0, $s2, $zero
.Llevel_14_8007B4C4:
/* 47BA9F4 8007B4C4 C656010C */  jal        func_80055B18
/* 47BA9F8 8007B4C8 00000000 */   nop
.Llevel_14_8007B4CC:
/* 47BA9FC 8007B4CC 2000BF8F */  lw         $ra, 0x20($sp)
/* 47BAA00 8007B4D0 1C00B38F */  lw         $s3, 0x1C($sp)
/* 47BAA04 8007B4D4 1800B28F */  lw         $s2, 0x18($sp)
/* 47BAA08 8007B4D8 1400B18F */  lw         $s1, 0x14($sp)
/* 47BAA0C 8007B4DC 1000B08F */  lw         $s0, 0x10($sp)
/* 47BAA10 8007B4E0 2800BD27 */  addiu      $sp, $sp, 0x28
/* 47BAA14 8007B4E4 0800E003 */  jr         $ra
/* 47BAA18 8007B4E8 00000000 */   nop
.size func_level_14_8007B1BC, . - func_level_14_8007B1BC
