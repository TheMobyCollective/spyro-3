.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_14_8008E230
/* 47CD760 8008E230 78FFBD27 */  addiu      $sp, $sp, -0x88
/* 47CD764 8008E234 7400B5AF */  sw         $s5, 0x74($sp)
/* 47CD768 8008E238 21A88000 */  addu       $s5, $a0, $zero
/* 47CD76C 8008E23C 6800B2AF */  sw         $s2, 0x68($sp)
/* 47CD770 8008E240 2190C000 */  addu       $s2, $a2, $zero
/* 47CD774 8008E244 1000A427 */  addiu      $a0, $sp, 0x10
/* 47CD778 8008E248 8400BFAF */  sw         $ra, 0x84($sp)
/* 47CD77C 8008E24C 8000BEAF */  sw         $fp, 0x80($sp)
/* 47CD780 8008E250 7C00B7AF */  sw         $s7, 0x7C($sp)
/* 47CD784 8008E254 7800B6AF */  sw         $s6, 0x78($sp)
/* 47CD788 8008E258 7000B4AF */  sw         $s4, 0x70($sp)
/* 47CD78C 8008E25C 6C00B3AF */  sw         $s3, 0x6C($sp)
/* 47CD790 8008E260 6400B1AF */  sw         $s1, 0x64($sp)
/* 47CD794 8008E264 6000B0AF */  sw         $s0, 0x60($sp)
/* 47CD798 8008E268 4000A5AF */  sw         $a1, 0x40($sp)
/* 47CD79C 8008E26C 5A3C010C */  jal        func_8004F168
/* 47CD7A0 8008E270 4800A7AF */   sw        $a3, 0x48($sp)
/* 47CD7A4 8008E274 0A00A01A */  blez       $s5, .Llevel_14_8008E2A0
/* 47CD7A8 8008E278 21980000 */   addu      $s3, $zero, $zero
/* 47CD7AC 8008E27C 4800B08F */  lw         $s0, 0x48($sp)
.Llevel_14_8008E280:
/* 47CD7B0 8008E280 1000A427 */  addiu      $a0, $sp, 0x10
/* 47CD7B4 8008E284 21288000 */  addu       $a1, $a0, $zero
/* 47CD7B8 8008E288 653C010C */  jal        func_8004F194
/* 47CD7BC 8008E28C 21300002 */   addu      $a2, $s0, $zero
/* 47CD7C0 8008E290 01007326 */  addiu      $s3, $s3, 0x1
/* 47CD7C4 8008E294 2A107502 */  slt        $v0, $s3, $s5
/* 47CD7C8 8008E298 F9FF4014 */  bnez       $v0, .Llevel_14_8008E280
/* 47CD7CC 8008E29C 0C001026 */   addiu     $s0, $s0, 0xC
.Llevel_14_8008E2A0:
/* 47CD7D0 8008E2A0 1000A68F */  lw         $a2, 0x10($sp)
/* 47CD7D4 8008E2A4 00000000 */  nop
/* 47CD7D8 8008E2A8 1A00D500 */  div        $zero, $a2, $s5
/* 47CD7DC 8008E2AC 0200A016 */  bnez       $s5, .Llevel_14_8008E2B8
/* 47CD7E0 8008E2B0 00000000 */   nop
/* 47CD7E4 8008E2B4 0D000700 */  break      7
.Llevel_14_8008E2B8:
/* 47CD7E8 8008E2B8 FFFF0124 */  addiu      $at, $zero, -0x1
/* 47CD7EC 8008E2BC 0400A116 */  bne        $s5, $at, .Llevel_14_8008E2D0
/* 47CD7F0 8008E2C0 0080013C */   lui       $at, (0x80000000 >> 16)
/* 47CD7F4 8008E2C4 0200C114 */  bne        $a2, $at, .Llevel_14_8008E2D0
/* 47CD7F8 8008E2C8 00000000 */   nop
/* 47CD7FC 8008E2CC 0D000600 */  break      6
.Llevel_14_8008E2D0:
/* 47CD800 8008E2D0 12300000 */  mflo       $a2
/* 47CD804 8008E2D4 1400A38F */  lw         $v1, 0x14($sp)
/* 47CD808 8008E2D8 00000000 */  nop
/* 47CD80C 8008E2DC 1A007500 */  div        $zero, $v1, $s5
/* 47CD810 8008E2E0 0200A016 */  bnez       $s5, .Llevel_14_8008E2EC
/* 47CD814 8008E2E4 00000000 */   nop
/* 47CD818 8008E2E8 0D000700 */  break      7
.Llevel_14_8008E2EC:
/* 47CD81C 8008E2EC FFFF0124 */  addiu      $at, $zero, -0x1
/* 47CD820 8008E2F0 0400A116 */  bne        $s5, $at, .Llevel_14_8008E304
/* 47CD824 8008E2F4 0080013C */   lui       $at, (0x80000000 >> 16)
/* 47CD828 8008E2F8 02006114 */  bne        $v1, $at, .Llevel_14_8008E304
/* 47CD82C 8008E2FC 00000000 */   nop
/* 47CD830 8008E300 0D000600 */  break      6
.Llevel_14_8008E304:
/* 47CD834 8008E304 12180000 */  mflo       $v1
/* 47CD838 8008E308 1800A28F */  lw         $v0, 0x18($sp)
/* 47CD83C 8008E30C 00000000 */  nop
/* 47CD840 8008E310 1A005500 */  div        $zero, $v0, $s5
/* 47CD844 8008E314 0200A016 */  bnez       $s5, .Llevel_14_8008E320
/* 47CD848 8008E318 00000000 */   nop
/* 47CD84C 8008E31C 0D000700 */  break      7
.Llevel_14_8008E320:
/* 47CD850 8008E320 FFFF0124 */  addiu      $at, $zero, -0x1
/* 47CD854 8008E324 0400A116 */  bne        $s5, $at, .Llevel_14_8008E338
/* 47CD858 8008E328 0080013C */   lui       $at, (0x80000000 >> 16)
/* 47CD85C 8008E32C 02004114 */  bne        $v0, $at, .Llevel_14_8008E338
/* 47CD860 8008E330 00000000 */   nop
/* 47CD864 8008E334 0D000600 */  break      6
.Llevel_14_8008E338:
/* 47CD868 8008E338 12100000 */  mflo       $v0
/* 47CD86C 8008E33C 04000524 */  addiu      $a1, $zero, 0x4
/* 47CD870 8008E340 21980000 */  addu       $s3, $zero, $zero
/* 47CD874 8008E344 21204002 */  addu       $a0, $s2, $zero
/* 47CD878 8008E348 1000A6AF */  sw         $a2, 0x10($sp)
/* 47CD87C 8008E34C 1400A3AF */  sw         $v1, 0x14($sp)
/* 47CD880 8008E350 4957010C */  jal        func_80055D24
/* 47CD884 8008E354 1800A2AF */   sw        $v0, 0x18($sp)
/* 47CD888 8008E358 6401A01A */  blez       $s5, .Llevel_14_8008E8EC
/* 47CD88C 8008E35C 2000B427 */   addiu     $s4, $sp, 0x20
/* 47CD890 8008E360 06801E3C */  lui        $fp, %hi(D_80065920)
/* 47CD894 8008E364 2059DE27 */  addiu      $fp, $fp, %lo(D_80065920)
/* 47CD898 8008E368 0680173C */  lui        $s7, %hi(D_800658A0)
/* 47CD89C 8008E36C A058F726 */  addiu      $s7, $s7, %lo(D_800658A0)
/* 47CD8A0 8008E370 0780163C */  lui        $s6, %hi(D_80070328)
/* 47CD8A4 8008E374 2803D626 */  addiu      $s6, $s6, %lo(D_80070328)
.Llevel_14_8008E378:
/* 47CD8A8 8008E378 0780023C */  lui        $v0, %hi(D_8006C578)
/* 47CD8AC 8008E37C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 47CD8B0 8008E380 0780033C */  lui        $v1, %hi(D_8006C574)
/* 47CD8B4 8008E384 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 47CD8B8 8008E388 00000000 */  nop
/* 47CD8BC 8008E38C 23104300 */  subu       $v0, $v0, $v1
/* 47CD8C0 8008E390 15004228 */  slti       $v0, $v0, 0x15
/* 47CD8C4 8008E394 55014014 */  bnez       $v0, .Llevel_14_8008E8EC
/* 47CD8C8 8008E398 00000000 */   nop
/* 47CD8CC 8008E39C 4000A48F */  lw         $a0, 0x40($sp)
/* 47CD8D0 8008E3A0 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 47CD8D4 8008E3A4 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 47CD8D8 8008E3A8 00000000 */  nop
/* 47CD8DC 8008E3AC 09F84000 */  jalr       $v0
/* 47CD8E0 8008E3B0 21284002 */   addu      $a1, $s2, $zero
/* 47CD8E4 8008E3B4 21884000 */  addu       $s1, $v0, $zero
/* 47CD8E8 8008E3B8 48012012 */  beqz       $s1, .Llevel_14_8008E8DC
/* 47CD8EC 8008E3BC 21208002 */   addu      $a0, $s4, $zero
/* 47CD8F0 8008E3C0 40281300 */  sll        $a1, $s3, 1
/* 47CD8F4 8008E3C4 2128B300 */  addu       $a1, $a1, $s3
/* 47CD8F8 8008E3C8 80280500 */  sll        $a1, $a1, 2
/* 47CD8FC 8008E3CC 4800A88F */  lw         $t0, 0x48($sp)
/* 47CD900 8008E3D0 0000308E */  lw         $s0, 0x0($s1)
/* 47CD904 8008E3D4 5E3C010C */  jal        func_8004F178
/* 47CD908 8008E3D8 21280501 */   addu      $a1, $t0, $a1
/* 47CD90C 8008E3DC 20004426 */  addiu      $a0, $s2, 0x20
/* 47CD910 8008E3E0 21288002 */  addu       $a1, $s4, $zero
/* 47CD914 8008E3E4 5B3B010C */  jal        func_8004ED6C
/* 47CD918 8008E3E8 21308002 */   addu      $a2, $s4, $zero
/* 47CD91C 8008E3EC 2000A28F */  lw         $v0, 0x20($sp)
/* 47CD920 8008E3F0 1000A38F */  lw         $v1, 0x10($sp)
/* 47CD924 8008E3F4 0C002426 */  addiu      $a0, $s1, 0xC
/* 47CD928 8008E3F8 23104300 */  subu       $v0, $v0, $v1
/* 47CD92C 8008E3FC 83100200 */  sra        $v0, $v0, 2
/* 47CD930 8008E400 000002A6 */  sh         $v0, 0x0($s0)
/* 47CD934 8008E404 2400A28F */  lw         $v0, 0x24($sp)
/* 47CD938 8008E408 1400A38F */  lw         $v1, 0x14($sp)
/* 47CD93C 8008E40C 21288002 */  addu       $a1, $s4, $zero
/* 47CD940 8008E410 23104300 */  subu       $v0, $v0, $v1
/* 47CD944 8008E414 83100200 */  sra        $v0, $v0, 2
/* 47CD948 8008E418 020002A6 */  sh         $v0, 0x2($s0)
/* 47CD94C 8008E41C 2800A28F */  lw         $v0, 0x28($sp)
/* 47CD950 8008E420 1800A38F */  lw         $v1, 0x18($sp)
/* 47CD954 8008E424 0C004626 */  addiu      $a2, $s2, 0xC
/* 47CD958 8008E428 23104300 */  subu       $v0, $v0, $v1
/* 47CD95C 8008E42C 83100200 */  sra        $v0, $v0, 2
/* 47CD960 8008E430 653C010C */  jal        func_8004F194
/* 47CD964 8008E434 040002A6 */   sh        $v0, 0x4($s0)
/* 47CD968 8008E438 36004386 */  lh         $v1, 0x36($s2)
/* 47CD96C 8008E43C FE000224 */  addiu      $v0, $zero, 0xFE
/* 47CD970 8008E440 1F006214 */  bne        $v1, $v0, .Llevel_14_8008E4C0
/* 47CD974 8008E444 84000224 */   addiu     $v0, $zero, 0x84
/* 47CD978 8008E448 1400238E */  lw         $v1, 0x14($s1)
/* 47CD97C 8008E44C 14000224 */  addiu      $v0, $zero, 0x14
/* 47CD980 8008E450 4F0022A2 */  sb         $v0, 0x4F($s1)
/* 47CD984 8008E454 E8036324 */  addiu      $v1, $v1, 0x3E8
/* 47CD988 8008E458 140023AE */  sw         $v1, 0x14($s1)
/* 47CD98C 8008E45C 51004292 */  lbu        $v0, 0x51($s2)
/* 47CD990 8008E460 00000000 */  nop
/* 47CD994 8008E464 40100200 */  sll        $v0, $v0, 1
/* 47CD998 8008E468 21105E00 */  addu       $v0, $v0, $fp
/* 47CD99C 8008E46C 00004384 */  lh         $v1, 0x0($v0)
/* 47CD9A0 8008E470 00000000 */  nop
/* 47CD9A4 8008E474 80100300 */  sll        $v0, $v1, 2
/* 47CD9A8 8008E478 21104300 */  addu       $v0, $v0, $v1
/* 47CD9AC 8008E47C 00000396 */  lhu        $v1, 0x0($s0)
/* 47CD9B0 8008E480 03120200 */  sra        $v0, $v0, 8
/* 47CD9B4 8008E484 21186200 */  addu       $v1, $v1, $v0
/* 47CD9B8 8008E488 000003A6 */  sh         $v1, 0x0($s0)
/* 47CD9BC 8008E48C 51004292 */  lbu        $v0, 0x51($s2)
/* 47CD9C0 8008E490 FA000424 */  addiu      $a0, $zero, 0xFA
/* 47CD9C4 8008E494 40100200 */  sll        $v0, $v0, 1
/* 47CD9C8 8008E498 21105700 */  addu       $v0, $v0, $s7
/* 47CD9CC 8008E49C 00004384 */  lh         $v1, 0x0($v0)
/* 47CD9D0 8008E4A0 5E010524 */  addiu      $a1, $zero, 0x15E
/* 47CD9D4 8008E4A4 80100300 */  sll        $v0, $v1, 2
/* 47CD9D8 8008E4A8 21104300 */  addu       $v0, $v0, $v1
/* 47CD9DC 8008E4AC 02000396 */  lhu        $v1, 0x2($s0)
/* 47CD9E0 8008E4B0 03120200 */  sra        $v0, $v0, 8
/* 47CD9E4 8008E4B4 21186200 */  addu       $v1, $v1, $v0
/* 47CD9E8 8008E4B8 98390208 */  j          .Llevel_14_8008E660
/* 47CD9EC 8008E4BC 020003A6 */   sh        $v1, 0x2($s0)
.Llevel_14_8008E4C0:
/* 47CD9F0 8008E4C0 14006214 */  bne        $v1, $v0, .Llevel_14_8008E514
/* 47CD9F4 8008E4C4 E7030224 */   addiu     $v0, $zero, 0x3E7
/* 47CD9F8 8008E4C8 00000386 */  lh         $v1, 0x0($s0)
/* 47CD9FC 8008E4CC 00000000 */  nop
/* 47CDA00 8008E4D0 40100300 */  sll        $v0, $v1, 1
/* 47CDA04 8008E4D4 21104300 */  addu       $v0, $v0, $v1
/* 47CDA08 8008E4D8 C21F0200 */  srl        $v1, $v0, 31
/* 47CDA0C 8008E4DC 21104300 */  addu       $v0, $v0, $v1
/* 47CDA10 8008E4E0 02000386 */  lh         $v1, 0x2($s0)
/* 47CDA14 8008E4E4 43100200 */  sra        $v0, $v0, 1
/* 47CDA18 8008E4E8 000002A6 */  sh         $v0, 0x0($s0)
/* 47CDA1C 8008E4EC 40100300 */  sll        $v0, $v1, 1
/* 47CDA20 8008E4F0 21104300 */  addu       $v0, $v0, $v1
/* 47CDA24 8008E4F4 C21F0200 */  srl        $v1, $v0, 31
/* 47CDA28 8008E4F8 21104300 */  addu       $v0, $v0, $v1
/* 47CDA2C 8008E4FC 04000386 */  lh         $v1, 0x4($s0)
/* 47CDA30 8008E500 43100200 */  sra        $v0, $v0, 1
/* 47CDA34 8008E504 020002A6 */  sh         $v0, 0x2($s0)
/* 47CDA38 8008E508 40180300 */  sll        $v1, $v1, 1
/* 47CDA3C 8008E50C 113A0208 */  j          .Llevel_14_8008E844
/* 47CDA40 8008E510 040003A6 */   sh        $v1, 0x4($s0)
.Llevel_14_8008E514:
/* 47CDA44 8008E514 30006214 */  bne        $v1, $v0, .Llevel_14_8008E5D8
/* 47CDA48 8008E518 2A000224 */   addiu     $v0, $zero, 0x2A
/* 47CDA4C 8008E51C 0780053C */  lui        $a1, %hi(D_80070328 + 0x48)
/* 47CDA50 8008E520 7003A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0x48)
/* 47CDA54 8008E524 0000A38C */  lw         $v1, 0x0($a1)
/* 47CDA58 8008E528 00000000 */  nop
/* 47CDA5C 8008E52C 13006214 */  bne        $v1, $v0, .Llevel_14_8008E57C
/* 47CDA60 8008E530 21200000 */   addu      $a0, $zero, $zero
/* 47CDA64 8008E534 21208002 */  addu       $a0, $s4, $zero
/* 47CDA68 8008E538 5E3C010C */  jal        func_8004F178
/* 47CDA6C 8008E53C 4400A524 */   addiu     $a1, $a1, 0x44
/* 47CDA70 8008E540 21208002 */  addu       $a0, $s4, $zero
/* 47CDA74 8008E544 7A3B010C */  jal        func_8004EDE8
/* 47CDA78 8008E548 21280000 */   addu      $a1, $zero, $zero
/* 47CDA7C 8008E54C 21208002 */  addu       $a0, $s4, $zero
/* 47CDA80 8008E550 21284000 */  addu       $a1, $v0, $zero
/* 47CDA84 8008E554 233C010C */  jal        func_8004F08C
/* 47CDA88 8008E558 2C010624 */   addiu     $a2, $zero, 0x12C
/* 47CDA8C 8008E55C 2000A38F */  lw         $v1, 0x20($sp)
/* 47CDA90 8008E560 00000296 */  lhu        $v0, 0x0($s0)
/* 47CDA94 8008E564 00000000 */  nop
/* 47CDA98 8008E568 21104300 */  addu       $v0, $v0, $v1
/* 47CDA9C 8008E56C 000002A6 */  sh         $v0, 0x0($s0)
/* 47CDAA0 8008E570 2400A38F */  lw         $v1, 0x24($sp)
/* 47CDAA4 8008E574 0D3A0208 */  j          .Llevel_14_8008E834
/* 47CDAA8 8008E578 00000000 */   nop
.Llevel_14_8008E57C:
/* 47CDAAC 8008E57C 21288002 */  addu       $a1, $s4, $zero
/* 47CDAB0 8008E580 21308002 */  addu       $a2, $s4, $zero
/* 47CDAB4 8008E584 8C000224 */  addiu      $v0, $zero, 0x8C
/* 47CDAB8 8008E588 2000A2AF */  sw         $v0, 0x20($sp)
/* 47CDABC 8008E58C 2400A0AF */  sw         $zero, 0x24($sp)
/* 47CDAC0 8008E590 5B3B010C */  jal        func_8004ED6C
/* 47CDAC4 8008E594 2800A0AF */   sw        $zero, 0x28($sp)
/* 47CDAC8 8008E598 2000A38F */  lw         $v1, 0x20($sp)
/* 47CDACC 8008E59C 00000296 */  lhu        $v0, 0x0($s0)
/* 47CDAD0 8008E5A0 00000000 */  nop
/* 47CDAD4 8008E5A4 21104300 */  addu       $v0, $v0, $v1
/* 47CDAD8 8008E5A8 000002A6 */  sh         $v0, 0x0($s0)
/* 47CDADC 8008E5AC 2400A38F */  lw         $v1, 0x24($sp)
/* 47CDAE0 8008E5B0 02000296 */  lhu        $v0, 0x2($s0)
/* 47CDAE4 8008E5B4 00000000 */  nop
/* 47CDAE8 8008E5B8 21104300 */  addu       $v0, $v0, $v1
/* 47CDAEC 8008E5BC 020002A6 */  sh         $v0, 0x2($s0)
/* 47CDAF0 8008E5C0 2800A38F */  lw         $v1, 0x28($sp)
/* 47CDAF4 8008E5C4 04000296 */  lhu        $v0, 0x4($s0)
/* 47CDAF8 8008E5C8 00000000 */  nop
/* 47CDAFC 8008E5CC 21104300 */  addu       $v0, $v0, $v1
/* 47CDB00 8008E5D0 113A0208 */  j          .Llevel_14_8008E844
/* 47CDB04 8008E5D4 040002A6 */   sh        $v0, 0x4($s0)
.Llevel_14_8008E5D8:
/* 47CDB08 8008E5D8 51004492 */  lbu        $a0, 0x51($s2)
/* 47CDB0C 8008E5DC 00000000 */  nop
/* 47CDB10 8008E5E0 26008010 */  beqz       $a0, .Llevel_14_8008E67C
/* 47CDB14 8008E5E4 1000033C */   lui       $v1, (0x100000 >> 16)
/* 47CDB18 8008E5E8 1800428E */  lw         $v0, 0x18($s2)
/* 47CDB1C 8008E5EC 00000000 */  nop
/* 47CDB20 8008E5F0 24104300 */  and        $v0, $v0, $v1
/* 47CDB24 8008E5F4 21004010 */  beqz       $v0, .Llevel_14_8008E67C
/* 47CDB28 8008E5F8 40100400 */   sll       $v0, $a0, 1
/* 47CDB2C 8008E5FC 21105E00 */  addu       $v0, $v0, $fp
/* 47CDB30 8008E600 00004384 */  lh         $v1, 0x0($v0)
/* 47CDB34 8008E604 00000000 */  nop
/* 47CDB38 8008E608 80100300 */  sll        $v0, $v1, 2
/* 47CDB3C 8008E60C 21104300 */  addu       $v0, $v0, $v1
/* 47CDB40 8008E610 00190200 */  sll        $v1, $v0, 4
/* 47CDB44 8008E614 23186200 */  subu       $v1, $v1, $v0
/* 47CDB48 8008E618 00000296 */  lhu        $v0, 0x0($s0)
/* 47CDB4C 8008E61C C31A0300 */  sra        $v1, $v1, 11
/* 47CDB50 8008E620 21104300 */  addu       $v0, $v0, $v1
/* 47CDB54 8008E624 000002A6 */  sh         $v0, 0x0($s0)
/* 47CDB58 8008E628 51004292 */  lbu        $v0, 0x51($s2)
/* 47CDB5C 8008E62C 28000424 */  addiu      $a0, $zero, 0x28
/* 47CDB60 8008E630 40100200 */  sll        $v0, $v0, 1
/* 47CDB64 8008E634 21105700 */  addu       $v0, $v0, $s7
/* 47CDB68 8008E638 00004384 */  lh         $v1, 0x0($v0)
/* 47CDB6C 8008E63C 46000524 */  addiu      $a1, $zero, 0x46
/* 47CDB70 8008E640 80100300 */  sll        $v0, $v1, 2
/* 47CDB74 8008E644 21104300 */  addu       $v0, $v0, $v1
/* 47CDB78 8008E648 00190200 */  sll        $v1, $v0, 4
/* 47CDB7C 8008E64C 23186200 */  subu       $v1, $v1, $v0
/* 47CDB80 8008E650 02000296 */  lhu        $v0, 0x2($s0)
/* 47CDB84 8008E654 C31A0300 */  sra        $v1, $v1, 11
/* 47CDB88 8008E658 21104300 */  addu       $v0, $v0, $v1
/* 47CDB8C 8008E65C 020002A6 */  sh         $v0, 0x2($s0)
.Llevel_14_8008E660:
/* 47CDB90 8008E660 DBD8000C */  jal        func_8003636C
/* 47CDB94 8008E664 00000000 */   nop
/* 47CDB98 8008E668 04000396 */  lhu        $v1, 0x4($s0)
/* 47CDB9C 8008E66C 00000000 */  nop
/* 47CDBA0 8008E670 21186200 */  addu       $v1, $v1, $v0
/* 47CDBA4 8008E674 113A0208 */  j          .Llevel_14_8008E844
/* 47CDBA8 8008E678 040003A6 */   sh        $v1, 0x4($s0)
.Llevel_14_8008E67C:
/* 47CDBAC 8008E67C 1800438E */  lw         $v1, 0x18($s2)
/* 47CDBB0 8008E680 0400023C */  lui        $v0, (0x40000 >> 16)
/* 47CDBB4 8008E684 24106200 */  and        $v0, $v1, $v0
/* 47CDBB8 8008E688 0C004010 */  beqz       $v0, .Llevel_14_8008E6BC
/* 47CDBBC 8008E68C 00000000 */   nop
/* 47CDBC0 8008E690 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 47CDBC4 8008E694 B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 47CDBC8 8008E698 00000396 */  lhu        $v1, 0x0($s0)
/* 47CDBCC 8008E69C 43110200 */  sra        $v0, $v0, 5
/* 47CDBD0 8008E6A0 21186200 */  addu       $v1, $v1, $v0
/* 47CDBD4 8008E6A4 000003A6 */  sh         $v1, 0x0($s0)
/* 47CDBD8 8008E6A8 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 47CDBDC 8008E6AC B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 47CDBE0 8008E6B0 02000396 */  lhu        $v1, 0x2($s0)
/* 47CDBE4 8008E6B4 E3390208 */  j          .Llevel_14_8008E78C
/* 47CDBE8 8008E6B8 43110200 */   sra       $v0, $v0, 5
.Llevel_14_8008E6BC:
/* 47CDBEC 8008E6BC 0002023C */  lui        $v0, (0x2000000 >> 16)
/* 47CDBF0 8008E6C0 24106200 */  and        $v0, $v1, $v0
/* 47CDBF4 8008E6C4 1C004010 */  beqz       $v0, .Llevel_14_8008E738
/* 47CDBF8 8008E6C8 21300000 */   addu      $a2, $zero, $zero
/* 47CDBFC 8008E6CC 0C00238E */  lw         $v1, 0xC($s1)
/* 47CDC00 8008E6D0 0000C48E */  lw         $a0, 0x0($s6)
/* 47CDC04 8008E6D4 1000228E */  lw         $v0, 0x10($s1)
/* 47CDC08 8008E6D8 0400C58E */  lw         $a1, 0x4($s6)
/* 47CDC0C 8008E6DC 23206400 */  subu       $a0, $v1, $a0
/* 47CDC10 8008E6E0 203A010C */  jal        func_8004E880
/* 47CDC14 8008E6E4 23284500 */   subu      $a1, $v0, $a1
/* 47CDC18 8008E6E8 40100200 */  sll        $v0, $v0, 1
/* 47CDC1C 8008E6EC 21105E00 */  addu       $v0, $v0, $fp
/* 47CDC20 8008E6F0 00004284 */  lh         $v0, 0x0($v0)
/* 47CDC24 8008E6F4 21300000 */  addu       $a2, $zero, $zero
/* 47CDC28 8008E6F8 03110200 */  sra        $v0, $v0, 4
/* 47CDC2C 8008E6FC 3000A2AF */  sw         $v0, 0x30($sp)
/* 47CDC30 8008E700 0C00238E */  lw         $v1, 0xC($s1)
/* 47CDC34 8008E704 0000C48E */  lw         $a0, 0x0($s6)
/* 47CDC38 8008E708 1000228E */  lw         $v0, 0x10($s1)
/* 47CDC3C 8008E70C 0400C58E */  lw         $a1, 0x4($s6)
/* 47CDC40 8008E710 23206400 */  subu       $a0, $v1, $a0
/* 47CDC44 8008E714 203A010C */  jal        func_8004E880
/* 47CDC48 8008E718 23284500 */   subu      $a1, $v0, $a1
/* 47CDC4C 8008E71C 40100200 */  sll        $v0, $v0, 1
/* 47CDC50 8008E720 21105700 */  addu       $v0, $v0, $s7
/* 47CDC54 8008E724 00004284 */  lh         $v0, 0x0($v0)
/* 47CDC58 8008E728 3000A38F */  lw         $v1, 0x30($sp)
/* 47CDC5C 8008E72C 3800A0AF */  sw         $zero, 0x38($sp)
/* 47CDC60 8008E730 073A0208 */  j          .Llevel_14_8008E81C
/* 47CDC64 8008E734 03110200 */   sra       $v0, $v0, 4
.Llevel_14_8008E738:
/* 47CDC68 8008E738 0200023C */  lui        $v0, (0x20000 >> 16)
/* 47CDC6C 8008E73C 24106200 */  and        $v0, $v1, $v0
/* 47CDC70 8008E740 15004010 */  beqz       $v0, .Llevel_14_8008E798
/* 47CDC74 8008E744 04000224 */   addiu     $v0, $zero, 0x4
/* 47CDC78 8008E748 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 47CDC7C 8008E74C 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 47CDC80 8008E750 00000000 */  nop
/* 47CDC84 8008E754 03006210 */  beq        $v1, $v0, .Llevel_14_8008E764
/* 47CDC88 8008E758 0C000224 */   addiu     $v0, $zero, 0xC
/* 47CDC8C 8008E75C 0E006214 */  bne        $v1, $v0, .Llevel_14_8008E798
/* 47CDC90 8008E760 00000000 */   nop
.Llevel_14_8008E764:
/* 47CDC94 8008E764 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 47CDC98 8008E768 B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 47CDC9C 8008E76C 00000396 */  lhu        $v1, 0x0($s0)
/* 47CDCA0 8008E770 83110200 */  sra        $v0, $v0, 6
/* 47CDCA4 8008E774 21186200 */  addu       $v1, $v1, $v0
/* 47CDCA8 8008E778 000003A6 */  sh         $v1, 0x0($s0)
/* 47CDCAC 8008E77C 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 47CDCB0 8008E780 B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 47CDCB4 8008E784 02000396 */  lhu        $v1, 0x2($s0)
/* 47CDCB8 8008E788 83110200 */  sra        $v0, $v0, 6
.Llevel_14_8008E78C:
/* 47CDCBC 8008E78C 21186200 */  addu       $v1, $v1, $v0
/* 47CDCC0 8008E790 113A0208 */  j          .Llevel_14_8008E844
/* 47CDCC4 8008E794 020003A6 */   sh        $v1, 0x2($s0)
.Llevel_14_8008E798:
/* 47CDCC8 8008E798 36004386 */  lh         $v1, 0x36($s2)
/* 47CDCCC 8008E79C 84000224 */  addiu      $v0, $zero, 0x84
/* 47CDCD0 8008E7A0 28006210 */  beq        $v1, $v0, .Llevel_14_8008E844
/* 47CDCD4 8008E7A4 00000000 */   nop
/* 47CDCD8 8008E7A8 51004292 */  lbu        $v0, 0x51($s2)
/* 47CDCDC 8008E7AC 00000000 */  nop
/* 47CDCE0 8008E7B0 0A004014 */  bnez       $v0, .Llevel_14_8008E7DC
/* 47CDCE4 8008E7B4 40200200 */   sll       $a0, $v0, 1
/* 47CDCE8 8008E7B8 21300000 */  addu       $a2, $zero, $zero
/* 47CDCEC 8008E7BC 0C00238E */  lw         $v1, 0xC($s1)
/* 47CDCF0 8008E7C0 0000C48E */  lw         $a0, 0x0($s6)
/* 47CDCF4 8008E7C4 1000228E */  lw         $v0, 0x10($s1)
/* 47CDCF8 8008E7C8 0400C58E */  lw         $a1, 0x4($s6)
/* 47CDCFC 8008E7CC 23206400 */  subu       $a0, $v1, $a0
/* 47CDD00 8008E7D0 203A010C */  jal        func_8004E880
/* 47CDD04 8008E7D4 23284500 */   subu      $a1, $v0, $a1
/* 47CDD08 8008E7D8 40200200 */  sll        $a0, $v0, 1
.Llevel_14_8008E7DC:
/* 47CDD0C 8008E7DC 21109E00 */  addu       $v0, $a0, $fp
/* 47CDD10 8008E7E0 00004284 */  lh         $v0, 0x0($v0)
/* 47CDD14 8008E7E4 21209700 */  addu       $a0, $a0, $s7
/* 47CDD18 8008E7E8 C0180200 */  sll        $v1, $v0, 3
/* 47CDD1C 8008E7EC 21186200 */  addu       $v1, $v1, $v0
/* 47CDD20 8008E7F0 80180300 */  sll        $v1, $v1, 2
/* 47CDD24 8008E7F4 23186200 */  subu       $v1, $v1, $v0
/* 47CDD28 8008E7F8 831A0300 */  sra        $v1, $v1, 10
/* 47CDD2C 8008E7FC 3000A3AF */  sw         $v1, 0x30($sp)
/* 47CDD30 8008E800 00008484 */  lh         $a0, 0x0($a0)
/* 47CDD34 8008E804 3800A0AF */  sw         $zero, 0x38($sp)
/* 47CDD38 8008E808 C0100400 */  sll        $v0, $a0, 3
/* 47CDD3C 8008E80C 21104400 */  addu       $v0, $v0, $a0
/* 47CDD40 8008E810 80100200 */  sll        $v0, $v0, 2
/* 47CDD44 8008E814 23104400 */  subu       $v0, $v0, $a0
/* 47CDD48 8008E818 83120200 */  sra        $v0, $v0, 10
.Llevel_14_8008E81C:
/* 47CDD4C 8008E81C 3400A2AF */  sw         $v0, 0x34($sp)
/* 47CDD50 8008E820 00000296 */  lhu        $v0, 0x0($s0)
/* 47CDD54 8008E824 00000000 */  nop
/* 47CDD58 8008E828 21104300 */  addu       $v0, $v0, $v1
/* 47CDD5C 8008E82C 000002A6 */  sh         $v0, 0x0($s0)
/* 47CDD60 8008E830 3400A38F */  lw         $v1, 0x34($sp)
.Llevel_14_8008E834:
/* 47CDD64 8008E834 02000296 */  lhu        $v0, 0x2($s0)
/* 47CDD68 8008E838 00000000 */  nop
/* 47CDD6C 8008E83C 21104300 */  addu       $v0, $v0, $v1
/* 47CDD70 8008E840 020002A6 */  sh         $v0, 0x2($s0)
.Llevel_14_8008E844:
/* 47CDD74 8008E844 44004292 */  lbu        $v0, 0x44($s2)
/* 47CDD78 8008E848 00000000 */  nop
/* 47CDD7C 8008E84C 440022A2 */  sb         $v0, 0x44($s1)
/* 47CDD80 8008E850 45004292 */  lbu        $v0, 0x45($s2)
/* 47CDD84 8008E854 00000000 */  nop
/* 47CDD88 8008E858 450022A2 */  sb         $v0, 0x45($s1)
/* 47CDD8C 8008E85C 46004292 */  lbu        $v0, 0x46($s2)
/* 47CDD90 8008E860 9171010C */  jal        rand
/* 47CDD94 8008E864 460022A2 */   sb        $v0, 0x46($s1)
/* 47CDD98 8008E868 06004230 */  andi       $v0, $v0, 0x6
/* 47CDD9C 8008E86C FDFF4224 */  addiu      $v0, $v0, -0x3
/* 47CDDA0 8008E870 9171010C */  jal        rand
/* 47CDDA4 8008E874 060002A6 */   sh        $v0, 0x6($s0)
/* 47CDDA8 8008E878 06004230 */  andi       $v0, $v0, 0x6
/* 47CDDAC 8008E87C FDFF4224 */  addiu      $v0, $v0, -0x3
/* 47CDDB0 8008E880 9171010C */  jal        rand
/* 47CDDB4 8008E884 080002A6 */   sh        $v0, 0x8($s0)
/* 47CDDB8 8008E888 1E000424 */  addiu      $a0, $zero, 0x1E
/* 47CDDBC 8008E88C 06004230 */  andi       $v0, $v0, 0x6
/* 47CDDC0 8008E890 FDFF4224 */  addiu      $v0, $v0, -0x3
/* 47CDDC4 8008E894 0A0002A6 */  sh         $v0, 0xA($s0)
/* 47CDDC8 8008E898 1400428E */  lw         $v0, 0x14($s2)
/* 47CDDCC 8008E89C 32000524 */  addiu      $a1, $zero, 0x32
/* 47CDDD0 8008E8A0 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 47CDDD4 8008E8A4 DBD8000C */  jal        func_8003636C
/* 47CDDD8 8008E8A8 0E0002A6 */   sh        $v0, 0xE($s0)
/* 47CDDDC 8008E8AC 9800A88F */  lw         $t0, 0x98($sp)
/* 47CDDE0 8008E8B0 21202002 */  addu       $a0, $s1, $zero
/* 47CDDE4 8008E8B4 0C0002A6 */  sh         $v0, 0xC($s0)
/* 47CDDE8 8008E8B8 08000224 */  addiu      $v0, $zero, 0x8
/* 47CDDEC 8008E8BC 100002A6 */  sh         $v0, 0x10($s0)
/* 47CDDF0 8008E8C0 21281301 */  addu       $a1, $t0, $s3
/* 47CDDF4 8008E8C4 9C00A897 */  lhu        $t0, 0x9C($sp)
/* 47CDDF8 8008E8C8 E0D3000C */  jal        func_80034F80
/* 47CDDFC 8008E8CC 120008A6 */   sh        $t0, 0x12($s0)
/* 47CDE00 8008E8D0 01000224 */  addiu      $v0, $zero, 0x1
/* 47CDE04 8008E8D4 140002AE */  sw         $v0, 0x14($s0)
/* 47CDE08 8008E8D8 080020AE */  sw         $zero, 0x8($s1)
.Llevel_14_8008E8DC:
/* 47CDE0C 8008E8DC 01007326 */  addiu      $s3, $s3, 0x1
/* 47CDE10 8008E8E0 2A107502 */  slt        $v0, $s3, $s5
/* 47CDE14 8008E8E4 A4FE4014 */  bnez       $v0, .Llevel_14_8008E378
/* 47CDE18 8008E8E8 00000000 */   nop
.Llevel_14_8008E8EC:
/* 47CDE1C 8008E8EC 8400BF8F */  lw         $ra, 0x84($sp)
/* 47CDE20 8008E8F0 8000BE8F */  lw         $fp, 0x80($sp)
/* 47CDE24 8008E8F4 7C00B78F */  lw         $s7, 0x7C($sp)
/* 47CDE28 8008E8F8 7800B68F */  lw         $s6, 0x78($sp)
/* 47CDE2C 8008E8FC 7400B58F */  lw         $s5, 0x74($sp)
/* 47CDE30 8008E900 7000B48F */  lw         $s4, 0x70($sp)
/* 47CDE34 8008E904 6C00B38F */  lw         $s3, 0x6C($sp)
/* 47CDE38 8008E908 6800B28F */  lw         $s2, 0x68($sp)
/* 47CDE3C 8008E90C 6400B18F */  lw         $s1, 0x64($sp)
/* 47CDE40 8008E910 6000B08F */  lw         $s0, 0x60($sp)
/* 47CDE44 8008E914 8800BD27 */  addiu      $sp, $sp, 0x88
/* 47CDE48 8008E918 0800E003 */  jr         $ra
/* 47CDE4C 8008E91C 00000000 */   nop
.size func_level_14_8008E230, . - func_level_14_8008E230
