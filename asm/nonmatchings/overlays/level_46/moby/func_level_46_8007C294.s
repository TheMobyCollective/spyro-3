.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_84_level_46
/* 8F4E7C4 8007C294 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 8F4E7C8 8007C298 3000B0AF */  sw         $s0, 0x30($sp)
/* 8F4E7CC 8007C29C 21808000 */  addu       $s0, $a0, $zero
/* 8F4E7D0 8007C2A0 3800BFAF */  sw         $ra, 0x38($sp)
/* 8F4E7D4 8007C2A4 3400B1AF */  sw         $s1, 0x34($sp)
/* 8F4E7D8 8007C2A8 48000292 */  lbu        $v0, 0x48($s0)
/* 8F4E7DC 8007C2AC 0000118E */  lw         $s1, 0x0($s0)
/* 8F4E7E0 8007C2B0 36004014 */  bnez       $v0, .Llevel_46_8007C38C
/* 8F4E7E4 8007C2B4 0C000426 */   addiu     $a0, $s0, 0xC
/* 8F4E7E8 8007C2B8 96000524 */  addiu      $a1, $zero, 0x96
/* 8F4E7EC 8007C2BC 03000624 */  addiu      $a2, $zero, 0x3
/* 8F4E7F0 8007C2C0 C468000C */  jal        func_8001A310
/* 8F4E7F4 8007C2C4 21380002 */   addu      $a3, $s0, $zero
/* 8F4E7F8 8007C2C8 30004010 */  beqz       $v0, .Llevel_46_8007C38C
/* 8F4E7FC 8007C2CC 00000000 */   nop
/* 8F4E800 8007C2D0 14002486 */  lh         $a0, 0x14($s1)
/* 8F4E804 8007C2D4 00000000 */  nop
/* 8F4E808 8007C2D8 03008228 */  slti       $v0, $a0, 0x3
/* 8F4E80C 8007C2DC 23004010 */  beqz       $v0, .Llevel_46_8007C36C
/* 8F4E810 8007C2E0 03000324 */   addiu     $v1, $zero, 0x3
/* 8F4E814 8007C2E4 23186400 */  subu       $v1, $v1, $a0
/* 8F4E818 8007C2E8 40100300 */  sll        $v0, $v1, 1
/* 8F4E81C 8007C2EC 21104300 */  addu       $v0, $v0, $v1
/* 8F4E820 8007C2F0 C0100200 */  sll        $v0, $v0, 3
/* 8F4E824 8007C2F4 21104300 */  addu       $v0, $v0, $v1
/* 8F4E828 8007C2F8 14002396 */  lhu        $v1, 0x14($s1)
/* 8F4E82C 8007C2FC 40100200 */  sll        $v0, $v0, 1
/* 8F4E830 8007C300 040022A6 */  sh         $v0, 0x4($s1)
/* 8F4E834 8007C304 01006324 */  addiu      $v1, $v1, 0x1
/* 8F4E838 8007C308 140023A6 */  sh         $v1, 0x14($s1)
/* 8F4E83C 8007C30C 0780023C */  lui        $v0, %hi(D_80071908)
/* 8F4E840 8007C310 0819428C */  lw         $v0, %lo(D_80071908)($v0)
/* 8F4E844 8007C314 5555043C */  lui        $a0, (0x55555556 >> 16)
/* 8F4E848 8007C318 9B004224 */  addiu      $v0, $v0, 0x9B
/* 8F4E84C 8007C31C 140002AE */  sw         $v0, 0x14($s0)
/* 8F4E850 8007C320 00002386 */  lh         $v1, 0x0($s1)
/* 8F4E854 8007C324 56558434 */  ori        $a0, $a0, (0x55555556 & 0xFFFF)
/* 8F4E858 8007C328 40180300 */  sll        $v1, $v1, 1
/* 8F4E85C 8007C32C 18006400 */  mult       $v1, $a0
/* 8F4E860 8007C330 02002286 */  lh         $v0, 0x2($s1)
/* 8F4E864 8007C334 10400000 */  mfhi       $t0
/* 8F4E868 8007C338 40100200 */  sll        $v0, $v0, 1
/* 8F4E86C 8007C33C 00000000 */  nop
/* 8F4E870 8007C340 18004400 */  mult       $v0, $a0
/* 8F4E874 8007C344 C31F0300 */  sra        $v1, $v1, 31
/* 8F4E878 8007C348 96000424 */  addiu      $a0, $zero, 0x96
/* 8F4E87C 8007C34C 23180301 */  subu       $v1, $t0, $v1
/* 8F4E880 8007C350 C3170200 */  sra        $v0, $v0, 31
/* 8F4E884 8007C354 0C0024A6 */  sh         $a0, 0xC($s1)
/* 8F4E888 8007C358 000023A6 */  sh         $v1, 0x0($s1)
/* 8F4E88C 8007C35C 10280000 */  mfhi       $a1
/* 8F4E890 8007C360 2310A200 */  subu       $v0, $a1, $v0
/* 8F4E894 8007C364 E3F00108 */  j          .Llevel_46_8007C38C
/* 8F4E898 8007C368 020022A6 */   sh        $v0, 0x2($s1)
.Llevel_46_8007C36C:
/* 8F4E89C 8007C36C 01000224 */  addiu      $v0, $zero, 0x1
/* 8F4E8A0 8007C370 480002A2 */  sb         $v0, 0x48($s0)
/* 8F4E8A4 8007C374 0780023C */  lui        $v0, %hi(D_80071908)
/* 8F4E8A8 8007C378 0819428C */  lw         $v0, %lo(D_80071908)($v0)
/* 8F4E8AC 8007C37C 00000000 */  nop
/* 8F4E8B0 8007C380 140002AE */  sw         $v0, 0x14($s0)
/* 8F4E8B4 8007C384 64000224 */  addiu      $v0, $zero, 0x64
/* 8F4E8B8 8007C388 0C0022A6 */  sh         $v0, 0xC($s1)
.Llevel_46_8007C38C:
/* 8F4E8BC 8007C38C 48000392 */  lbu        $v1, 0x48($s0)
/* 8F4E8C0 8007C390 01000224 */  addiu      $v0, $zero, 0x1
/* 8F4E8C4 8007C394 71006210 */  beq        $v1, $v0, .Llevel_46_8007C55C
/* 8F4E8C8 8007C398 02006228 */   slti      $v0, $v1, 0x2
/* 8F4E8CC 8007C39C 05004010 */  beqz       $v0, .Llevel_46_8007C3B4
/* 8F4E8D0 8007C3A0 00000000 */   nop
/* 8F4E8D4 8007C3A4 3A006010 */  beqz       $v1, .Llevel_46_8007C490
/* 8F4E8D8 8007C3A8 01000424 */   addiu     $a0, $zero, 0x1
/* 8F4E8DC 8007C3AC 86F10108 */  j          .Llevel_46_8007C618
/* 8F4E8E0 8007C3B0 00000000 */   nop
.Llevel_46_8007C3B4:
/* 8F4E8E4 8007C3B4 02000224 */  addiu      $v0, $zero, 0x2
/* 8F4E8E8 8007C3B8 31006210 */  beq        $v1, $v0, .Llevel_46_8007C480
/* 8F4E8EC 8007C3BC 03000224 */   addiu     $v0, $zero, 0x3
/* 8F4E8F0 8007C3C0 95006214 */  bne        $v1, $v0, .Llevel_46_8007C618
/* 8F4E8F4 8007C3C4 00000000 */   nop
/* 8F4E8F8 8007C3C8 C5E5000C */  jal        func_80039714
/* 8F4E8FC 8007C3CC 21200002 */   addu      $a0, $s0, $zero
/* 8F4E900 8007C3D0 91004010 */  beqz       $v0, .Llevel_46_8007C618
/* 8F4E904 8007C3D4 21880000 */   addu      $s1, $zero, $zero
/* 8F4E908 8007C3D8 21200000 */  addu       $a0, $zero, $zero
.Llevel_46_8007C3DC:
/* 8F4E90C 8007C3DC DBD8000C */  jal        func_8003636C
/* 8F4E910 8007C3E0 00080524 */   addiu     $a1, $zero, 0x800
/* 8F4E914 8007C3E4 21200000 */  addu       $a0, $zero, $zero
/* 8F4E918 8007C3E8 0C00038E */  lw         $v1, 0xC($s0)
/* 8F4E91C 8007C3EC 00080524 */  addiu      $a1, $zero, 0x800
/* 8F4E920 8007C3F0 00FC6324 */  addiu      $v1, $v1, -0x400
/* 8F4E924 8007C3F4 21186200 */  addu       $v1, $v1, $v0
/* 8F4E928 8007C3F8 DBD8000C */  jal        func_8003636C
/* 8F4E92C 8007C3FC 2000A3AF */   sw        $v1, 0x20($sp)
/* 8F4E930 8007C400 21200000 */  addu       $a0, $zero, $zero
/* 8F4E934 8007C404 1000038E */  lw         $v1, 0x10($s0)
/* 8F4E938 8007C408 00080524 */  addiu      $a1, $zero, 0x800
/* 8F4E93C 8007C40C 00FC6324 */  addiu      $v1, $v1, -0x400
/* 8F4E940 8007C410 21186200 */  addu       $v1, $v1, $v0
/* 8F4E944 8007C414 DBD8000C */  jal        func_8003636C
/* 8F4E948 8007C418 2400A3AF */   sw        $v1, 0x24($sp)
/* 8F4E94C 8007C41C 01000424 */  addiu      $a0, $zero, 0x1
/* 8F4E950 8007C420 01000524 */  addiu      $a1, $zero, 0x1
/* 8F4E954 8007C424 2000A627 */  addiu      $a2, $sp, 0x20
/* 8F4E958 8007C428 1400088E */  lw         $t0, 0x14($s0)
/* 8F4E95C 8007C42C E2FF0324 */  addiu      $v1, $zero, -0x1E
/* 8F4E960 8007C430 1800A3AF */  sw         $v1, 0x18($sp)
/* 8F4E964 8007C434 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 8F4E968 8007C438 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 8F4E96C 8007C43C 1000A727 */  addiu      $a3, $sp, 0x10
/* 8F4E970 8007C440 1000A0AF */  sw         $zero, 0x10($sp)
/* 8F4E974 8007C444 1400A0AF */  sw         $zero, 0x14($sp)
/* 8F4E978 8007C448 00FC0825 */  addiu      $t0, $t0, -0x400
/* 8F4E97C 8007C44C 21400201 */  addu       $t0, $t0, $v0
/* 8F4E980 8007C450 09F86000 */  jalr       $v1
/* 8F4E984 8007C454 2800A8AF */   sw        $t0, 0x28($sp)
/* 8F4E988 8007C458 21184000 */  addu       $v1, $v0, $zero
/* 8F4E98C 8007C45C 02006010 */  beqz       $v1, .Llevel_46_8007C468
/* 8F4E990 8007C460 B4000224 */   addiu     $v0, $zero, 0xB4
/* 8F4E994 8007C464 0A0062A0 */  sb         $v0, 0xA($v1)
.Llevel_46_8007C468:
/* 8F4E998 8007C468 01003126 */  addiu      $s1, $s1, 0x1
/* 8F4E99C 8007C46C 0300222A */  slti       $v0, $s1, 0x3
/* 8F4E9A0 8007C470 DAFF4014 */  bnez       $v0, .Llevel_46_8007C3DC
/* 8F4E9A4 8007C474 21200000 */   addu      $a0, $zero, $zero
/* 8F4E9A8 8007C478 86F10108 */  j          .Llevel_46_8007C618
/* 8F4E9AC 8007C47C 00000000 */   nop
.Llevel_46_8007C480:
/* 8F4E9B0 8007C480 C5E5000C */  jal        func_80039714
/* 8F4E9B4 8007C484 21200002 */   addu      $a0, $s0, $zero
/* 8F4E9B8 8007C488 86F10108 */  j          .Llevel_46_8007C618
/* 8F4E9BC 8007C48C 00000000 */   nop
.Llevel_46_8007C490:
/* 8F4E9C0 8007C490 01000524 */  addiu      $a1, $zero, 0x1
/* 8F4E9C4 8007C494 0C000626 */  addiu      $a2, $s0, 0xC
/* 8F4E9C8 8007C498 1000A727 */  addiu      $a3, $sp, 0x10
/* 8F4E9CC 8007C49C 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 8F4E9D0 8007C4A0 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 8F4E9D4 8007C4A4 1E000224 */  addiu      $v0, $zero, 0x1E
/* 8F4E9D8 8007C4A8 1000A0AF */  sw         $zero, 0x10($sp)
/* 8F4E9DC 8007C4AC 1400A0AF */  sw         $zero, 0x14($sp)
/* 8F4E9E0 8007C4B0 09F86000 */  jalr       $v1
/* 8F4E9E4 8007C4B4 1800A2AF */   sw        $v0, 0x18($sp)
/* 8F4E9E8 8007C4B8 00002386 */  lh         $v1, 0x0($s1)
/* 8F4E9EC 8007C4BC 0C00028E */  lw         $v0, 0xC($s0)
/* 8F4E9F0 8007C4C0 00000000 */  nop
/* 8F4E9F4 8007C4C4 21104300 */  addu       $v0, $v0, $v1
/* 8F4E9F8 8007C4C8 0C0002AE */  sw         $v0, 0xC($s0)
/* 8F4E9FC 8007C4CC 02002386 */  lh         $v1, 0x2($s1)
/* 8F4EA00 8007C4D0 1000028E */  lw         $v0, 0x10($s0)
/* 8F4EA04 8007C4D4 00000000 */  nop
/* 8F4EA08 8007C4D8 21104300 */  addu       $v0, $v0, $v1
/* 8F4EA0C 8007C4DC 100002AE */  sw         $v0, 0x10($s0)
/* 8F4EA10 8007C4E0 04002296 */  lhu        $v0, 0x4($s1)
/* 8F4EA14 8007C4E4 00000000 */  nop
/* 8F4EA18 8007C4E8 F6FF4224 */  addiu      $v0, $v0, -0xA
/* 8F4EA1C 8007C4EC 040022A6 */  sh         $v0, 0x4($s1)
/* 8F4EA20 8007C4F0 00140200 */  sll        $v0, $v0, 16
/* 8F4EA24 8007C4F4 03140200 */  sra        $v0, $v0, 16
/* 8F4EA28 8007C4F8 38FF4228 */  slti       $v0, $v0, -0xC8
/* 8F4EA2C 8007C4FC 02004010 */  beqz       $v0, .Llevel_46_8007C508
/* 8F4EA30 8007C500 38FF0224 */   addiu     $v0, $zero, -0xC8
/* 8F4EA34 8007C504 040022A6 */  sh         $v0, 0x4($s1)
.Llevel_46_8007C508:
/* 8F4EA38 8007C508 04002386 */  lh         $v1, 0x4($s1)
/* 8F4EA3C 8007C50C 1400028E */  lw         $v0, 0x14($s0)
/* 8F4EA40 8007C510 00000000 */  nop
/* 8F4EA44 8007C514 21104300 */  addu       $v0, $v0, $v1
/* 8F4EA48 8007C518 140002AE */  sw         $v0, 0x14($s0)
/* 8F4EA4C 8007C51C 44000292 */  lbu        $v0, 0x44($s0)
/* 8F4EA50 8007C520 06002392 */  lbu        $v1, 0x6($s1)
/* 8F4EA54 8007C524 00000000 */  nop
/* 8F4EA58 8007C528 21104300 */  addu       $v0, $v0, $v1
/* 8F4EA5C 8007C52C 440002A2 */  sb         $v0, 0x44($s0)
/* 8F4EA60 8007C530 45000292 */  lbu        $v0, 0x45($s0)
/* 8F4EA64 8007C534 08002392 */  lbu        $v1, 0x8($s1)
/* 8F4EA68 8007C538 0C002426 */  addiu      $a0, $s1, 0xC
/* 8F4EA6C 8007C53C 21104300 */  addu       $v0, $v0, $v1
/* 8F4EA70 8007C540 450002A2 */  sb         $v0, 0x45($s0)
/* 8F4EA74 8007C544 46000292 */  lbu        $v0, 0x46($s0)
/* 8F4EA78 8007C548 0A002392 */  lbu        $v1, 0xA($s1)
/* 8F4EA7C 8007C54C 02000524 */  addiu      $a1, $zero, 0x2
/* 8F4EA80 8007C550 21104300 */  addu       $v0, $v0, $v1
/* 8F4EA84 8007C554 80F10108 */  j          .Llevel_46_8007C600
/* 8F4EA88 8007C558 460002A2 */   sb        $v0, 0x46($s0)
.Llevel_46_8007C55C:
/* 8F4EA8C 8007C55C 16002286 */  lh         $v0, 0x16($s1)
/* 8F4EA90 8007C560 00000000 */  nop
/* 8F4EA94 8007C564 22004014 */  bnez       $v0, .Llevel_46_8007C5F0
/* 8F4EA98 8007C568 16002426 */   addiu     $a0, $s1, 0x16
/* 8F4EA9C 8007C56C 21200000 */  addu       $a0, $zero, $zero
/* 8F4EAA0 8007C570 DBD8000C */  jal        func_8003636C
/* 8F4EAA4 8007C574 14000524 */   addiu     $a1, $zero, 0x14
/* 8F4EAA8 8007C578 21200000 */  addu       $a0, $zero, $zero
/* 8F4EAAC 8007C57C 14000524 */  addiu      $a1, $zero, 0x14
/* 8F4EAB0 8007C580 F6FF4224 */  addiu      $v0, $v0, -0xA
/* 8F4EAB4 8007C584 DBD8000C */  jal        func_8003636C
/* 8F4EAB8 8007C588 1000A2AF */   sw        $v0, 0x10($sp)
/* 8F4EABC 8007C58C 01000424 */  addiu      $a0, $zero, 0x1
/* 8F4EAC0 8007C590 21280000 */  addu       $a1, $zero, $zero
/* 8F4EAC4 8007C594 0C000626 */  addiu      $a2, $s0, 0xC
/* 8F4EAC8 8007C598 1000A727 */  addiu      $a3, $sp, 0x10
/* 8F4EACC 8007C59C F6FF4224 */  addiu      $v0, $v0, -0xA
/* 8F4EAD0 8007C5A0 1400A2AF */  sw         $v0, 0x14($sp)
/* 8F4EAD4 8007C5A4 14000224 */  addiu      $v0, $zero, 0x14
/* 8F4EAD8 8007C5A8 1800A2AF */  sw         $v0, 0x18($sp)
/* 8F4EADC 8007C5AC 1400028E */  lw         $v0, 0x14($s0)
/* 8F4EAE0 8007C5B0 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 8F4EAE4 8007C5B4 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 8F4EAE8 8007C5B8 32004224 */  addiu      $v0, $v0, 0x32
/* 8F4EAEC 8007C5BC 09F86000 */  jalr       $v1
/* 8F4EAF0 8007C5C0 140002AE */   sw        $v0, 0x14($s0)
/* 8F4EAF4 8007C5C4 1400038E */  lw         $v1, 0x14($s0)
/* 8F4EAF8 8007C5C8 00000000 */  nop
/* 8F4EAFC 8007C5CC CEFF6324 */  addiu      $v1, $v1, -0x32
/* 8F4EB00 8007C5D0 140003AE */  sw         $v1, 0x14($s0)
/* 8F4EB04 8007C5D4 21184000 */  addu       $v1, $v0, $zero
/* 8F4EB08 8007C5D8 02006010 */  beqz       $v1, .Llevel_46_8007C5E4
/* 8F4EB0C 8007C5DC 32000224 */   addiu     $v0, $zero, 0x32
/* 8F4EB10 8007C5E0 0A0062A0 */  sb         $v0, 0xA($v1)
.Llevel_46_8007C5E4:
/* 8F4EB14 8007C5E4 05000224 */  addiu      $v0, $zero, 0x5
/* 8F4EB18 8007C5E8 7EF10108 */  j          .Llevel_46_8007C5F8
/* 8F4EB1C 8007C5EC 160022A6 */   sh        $v0, 0x16($s1)
.Llevel_46_8007C5F0:
/* 8F4EB20 8007C5F0 69D6000C */  jal        func_800359A4
/* 8F4EB24 8007C5F4 02000524 */   addiu     $a1, $zero, 0x2
.Llevel_46_8007C5F8:
/* 8F4EB28 8007C5F8 0C002426 */  addiu      $a0, $s1, 0xC
/* 8F4EB2C 8007C5FC 02000524 */  addiu      $a1, $zero, 0x2
.Llevel_46_8007C600:
/* 8F4EB30 8007C600 69D6000C */  jal        func_800359A4
/* 8F4EB34 8007C604 00000000 */   nop
/* 8F4EB38 8007C608 03004010 */  beqz       $v0, .Llevel_46_8007C618
/* 8F4EB3C 8007C60C 00000000 */   nop
/* 8F4EB40 8007C610 C656010C */  jal        func_80055B18
/* 8F4EB44 8007C614 21200002 */   addu      $a0, $s0, $zero
.Llevel_46_8007C618:
/* 8F4EB48 8007C618 3800BF8F */  lw         $ra, 0x38($sp)
/* 8F4EB4C 8007C61C 3400B18F */  lw         $s1, 0x34($sp)
/* 8F4EB50 8007C620 3000B08F */  lw         $s0, 0x30($sp)
/* 8F4EB54 8007C624 4000BD27 */  addiu      $sp, $sp, 0x40
/* 8F4EB58 8007C628 0800E003 */  jr         $ra
/* 8F4EB5C 8007C62C 00000000 */   nop
.size MobyUpdate_84_level_46, . - MobyUpdate_84_level_46
