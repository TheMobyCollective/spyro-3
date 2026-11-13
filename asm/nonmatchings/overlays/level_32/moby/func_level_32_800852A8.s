.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_213_level_32
/* 6DEC7D8 800852A8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 6DEC7DC 800852AC 1800B2AF */  sw         $s2, 0x18($sp)
/* 6DEC7E0 800852B0 21908000 */  addu       $s2, $a0, $zero
/* 6DEC7E4 800852B4 01000324 */  addiu      $v1, $zero, 0x1
/* 6DEC7E8 800852B8 2000BFAF */  sw         $ra, 0x20($sp)
/* 6DEC7EC 800852BC 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 6DEC7F0 800852C0 1400B1AF */  sw         $s1, 0x14($sp)
/* 6DEC7F4 800852C4 1000B0AF */  sw         $s0, 0x10($sp)
/* 6DEC7F8 800852C8 48004292 */  lbu        $v0, 0x48($s2)
/* 6DEC7FC 800852CC 0000448E */  lw         $a0, 0x0($s2)
/* 6DEC800 800852D0 61004310 */  beq        $v0, $v1, .Llevel_32_80085458
/* 6DEC804 800852D4 00000000 */   nop
/* 6DEC808 800852D8 0780023C */  lui        $v0, %hi(D_8006C7B4)
/* 6DEC80C 800852DC B4C74290 */  lbu        $v0, %lo(D_8006C7B4)($v0)
/* 6DEC810 800852E0 00000000 */  nop
/* 6DEC814 800852E4 01004230 */  andi       $v0, $v0, 0x1
/* 6DEC818 800852E8 5B004014 */  bnez       $v0, .Llevel_32_80085458
/* 6DEC81C 800852EC 00000000 */   nop
/* 6DEC820 800852F0 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 6DEC824 800852F4 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 6DEC828 800852F8 0780013C */  lui        $at, %hi(D_80070300)
/* 6DEC82C 800852FC 21082200 */  addu       $at, $at, $v0
/* 6DEC830 80085300 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 6DEC834 80085304 00000000 */  nop
/* 6DEC838 80085308 01004230 */  andi       $v0, $v0, 0x1
/* 6DEC83C 8008530C 52004014 */  bnez       $v0, .Llevel_32_80085458
/* 6DEC840 80085310 0400033C */   lui       $v1, (0x40000 >> 16)
/* 6DEC844 80085314 1800428E */  lw         $v0, 0x18($s2)
/* 6DEC848 80085318 00000000 */  nop
/* 6DEC84C 8008531C 24104300 */  and        $v0, $v0, $v1
/* 6DEC850 80085320 4F004010 */  beqz       $v0, .Llevel_32_80085460
/* 6DEC854 80085324 21980000 */   addu      $s3, $zero, $zero
/* 6DEC858 80085328 0000828C */  lw         $v0, 0x0($a0)
/* 6DEC85C 8008532C 00000000 */  nop
/* 6DEC860 80085330 460042A2 */  sb         $v0, 0x46($s2)
.Llevel_32_80085334:
/* 6DEC864 80085334 21200000 */  addu       $a0, $zero, $zero
/* 6DEC868 80085338 DBD8000C */  jal        func_8003636C
/* 6DEC86C 8008533C 02000524 */   addiu     $a1, $zero, 0x2
/* 6DEC870 80085340 D7000424 */  addiu      $a0, $zero, 0xD7
/* 6DEC874 80085344 21284002 */  addu       $a1, $s2, $zero
/* 6DEC878 80085348 0780033C */  lui        $v1, %hi(SpawnMoby)
/* 6DEC87C 8008534C E042638C */  lw         $v1, %lo(SpawnMoby)($v1)
/* 6DEC880 80085350 00000000 */  nop
/* 6DEC884 80085354 09F86000 */  jalr       $v1
/* 6DEC888 80085358 21884000 */   addu      $s1, $v0, $zero
/* 6DEC88C 8008535C 21804000 */  addu       $s0, $v0, $zero
/* 6DEC890 80085360 2F000012 */  beqz       $s0, .Llevel_32_80085420
/* 6DEC894 80085364 00000000 */   nop
/* 6DEC898 80085368 3C000292 */  lbu        $v0, 0x3C($s0)
/* 6DEC89C 8008536C 00000000 */  nop
/* 6DEC8A0 80085370 16005110 */  beq        $v0, $s1, .Llevel_32_800853CC
/* 6DEC8A4 80085374 0C000426 */   addiu     $a0, $s0, 0xC
/* 6DEC8A8 80085378 36000286 */  lh         $v0, 0x36($s0)
/* 6DEC8AC 8008537C 420000A2 */  sb         $zero, 0x42($s0)
/* 6DEC8B0 80085380 80100200 */  sll        $v0, $v0, 2
/* 6DEC8B4 80085384 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 6DEC8B8 80085388 21082200 */  addu       $at, $at, $v0
/* 6DEC8BC 8008538C 2CEE238C */  lw         $v1, %lo(D_8006EE2C)($at)
/* 6DEC8C0 80085390 80101100 */  sll        $v0, $s1, 2
/* 6DEC8C4 80085394 21104300 */  addu       $v0, $v0, $v1
/* 6DEC8C8 80085398 3C00428C */  lw         $v0, 0x3C($v0)
/* 6DEC8CC 8008539C 00000000 */  nop
/* 6DEC8D0 800853A0 00004290 */  lbu        $v0, 0x0($v0)
/* 6DEC8D4 800853A4 01000324 */  addiu      $v1, $zero, 0x1
/* 6DEC8D8 800853A8 3C0011A2 */  sb         $s1, 0x3C($s0)
/* 6DEC8DC 800853AC 3D0011A2 */  sb         $s1, 0x3D($s0)
/* 6DEC8E0 800853B0 3E0000A2 */  sb         $zero, 0x3E($s0)
/* 6DEC8E4 800853B4 3F0003A2 */  sb         $v1, 0x3F($s0)
/* 6DEC8E8 800853B8 0200422C */  sltiu      $v0, $v0, 0x2
/* 6DEC8EC 800853BC 01004238 */  xori       $v0, $v0, 0x1
/* 6DEC8F0 800853C0 23100200 */  negu       $v0, $v0
/* 6DEC8F4 800853C4 30004230 */  andi       $v0, $v0, 0x30
/* 6DEC8F8 800853C8 400002A2 */  sb         $v0, 0x40($s0)
.Llevel_32_800853CC:
/* 6DEC8FC 800853CC 5E3C010C */  jal        func_8004F178
/* 6DEC900 800853D0 0C004526 */   addiu     $a1, $s2, 0xC
/* 6DEC904 800853D4 21200000 */  addu       $a0, $zero, $zero
/* 6DEC908 800853D8 F7D8000C */  jal        func_800363DC
/* 6DEC90C 800853DC 84030524 */   addiu     $a1, $zero, 0x384
/* 6DEC910 800853E0 21200000 */  addu       $a0, $zero, $zero
/* 6DEC914 800853E4 0C00038E */  lw         $v1, 0xC($s0)
/* 6DEC918 800853E8 84030524 */  addiu      $a1, $zero, 0x384
/* 6DEC91C 800853EC 21186200 */  addu       $v1, $v1, $v0
/* 6DEC920 800853F0 F7D8000C */  jal        func_800363DC
/* 6DEC924 800853F4 0C0003AE */   sw        $v1, 0xC($s0)
/* 6DEC928 800853F8 21200000 */  addu       $a0, $zero, $zero
/* 6DEC92C 800853FC 1000038E */  lw         $v1, 0x10($s0)
/* 6DEC930 80085400 84030524 */  addiu      $a1, $zero, 0x384
/* 6DEC934 80085404 21186200 */  addu       $v1, $v1, $v0
/* 6DEC938 80085408 F7D8000C */  jal        func_800363DC
/* 6DEC93C 8008540C 100003AE */   sw        $v1, 0x10($s0)
/* 6DEC940 80085410 1400038E */  lw         $v1, 0x14($s0)
/* 6DEC944 80085414 00000000 */  nop
/* 6DEC948 80085418 21186200 */  addu       $v1, $v1, $v0
/* 6DEC94C 8008541C 140003AE */  sw         $v1, 0x14($s0)
.Llevel_32_80085420:
/* 6DEC950 80085420 01007326 */  addiu      $s3, $s3, 0x1
/* 6DEC954 80085424 0A00622A */  slti       $v0, $s3, 0xA
/* 6DEC958 80085428 C2FF4014 */  bnez       $v0, .Llevel_32_80085334
/* 6DEC95C 8008542C 21204002 */   addu      $a0, $s2, $zero
/* 6DEC960 80085430 01000524 */  addiu      $a1, $zero, 0x1
/* 6DEC964 80085434 C4EE000C */  jal        func_8003BB10
/* 6DEC968 80085438 21300000 */   addu      $a2, $zero, $zero
/* 6DEC96C 8008543C 01000224 */  addiu      $v0, $zero, 0x1
/* 6DEC970 80085440 480042A2 */  sb         $v0, 0x48($s2)
/* 6DEC974 80085444 48004426 */  addiu      $a0, $s2, 0x48
/* 6DEC978 80085448 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 6DEC97C 8008544C F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 6DEC980 80085450 EDED000C */  jal        func_8003B7B4
/* 6DEC984 80085454 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_32_80085458:
/* 6DEC988 80085458 C656010C */  jal        func_80055B18
/* 6DEC98C 8008545C 21204002 */   addu      $a0, $s2, $zero
.Llevel_32_80085460:
/* 6DEC990 80085460 2000BF8F */  lw         $ra, 0x20($sp)
/* 6DEC994 80085464 1C00B38F */  lw         $s3, 0x1C($sp)
/* 6DEC998 80085468 1800B28F */  lw         $s2, 0x18($sp)
/* 6DEC99C 8008546C 1400B18F */  lw         $s1, 0x14($sp)
/* 6DEC9A0 80085470 1000B08F */  lw         $s0, 0x10($sp)
/* 6DEC9A4 80085474 2800BD27 */  addiu      $sp, $sp, 0x28
/* 6DEC9A8 80085478 0800E003 */  jr         $ra
/* 6DEC9AC 8008547C 00000000 */   nop
.size MobyUpdate_213_level_32, . - MobyUpdate_213_level_32
