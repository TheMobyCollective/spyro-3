.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1014_level_32
/* 6DF183C 8008A30C A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 6DF1840 8008A310 4C00B5AF */  sw         $s5, 0x4C($sp)
/* 6DF1844 8008A314 21A88000 */  addu       $s5, $a0, $zero
/* 6DF1848 8008A318 5400BFAF */  sw         $ra, 0x54($sp)
/* 6DF184C 8008A31C 5000B6AF */  sw         $s6, 0x50($sp)
/* 6DF1850 8008A320 4800B4AF */  sw         $s4, 0x48($sp)
/* 6DF1854 8008A324 4400B3AF */  sw         $s3, 0x44($sp)
/* 6DF1858 8008A328 4000B2AF */  sw         $s2, 0x40($sp)
/* 6DF185C 8008A32C 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 6DF1860 8008A330 3800B0AF */  sw         $s0, 0x38($sp)
/* 6DF1864 8008A334 0000B28E */  lw         $s2, 0x0($s5)
/* 6DF1868 8008A338 04000524 */  addiu      $a1, $zero, 0x4
/* 6DF186C 8008A33C 69D6000C */  jal        func_800359A4
/* 6DF1870 8008A340 08004426 */   addiu     $a0, $s2, 0x8
/* 6DF1874 8008A344 0400428E */  lw         $v0, 0x4($s2)
/* 6DF1878 8008A348 00000000 */  nop
/* 6DF187C 8008A34C 0A004010 */  beqz       $v0, .Llevel_32_8008A378
/* 6DF1880 8008A350 00000000 */   nop
/* 6DF1884 8008A354 48004390 */  lbu        $v1, 0x48($v0)
/* 6DF1888 8008A358 01000224 */  addiu      $v0, $zero, 0x1
/* 6DF188C 8008A35C 6D006214 */  bne        $v1, $v0, .Llevel_32_8008A514
/* 6DF1890 8008A360 3C000424 */   addiu     $a0, $zero, 0x3C
/* 6DF1894 8008A364 78000524 */  addiu      $a1, $zero, 0x78
/* 6DF1898 8008A368 DBD8000C */  jal        func_8003636C
/* 6DF189C 8008A36C 040040AE */   sw        $zero, 0x4($s2)
/* 6DF18A0 8008A370 45290208 */  j          .Llevel_32_8008A514
/* 6DF18A4 8008A374 080042AE */   sw        $v0, 0x8($s2)
.Llevel_32_8008A378:
/* 6DF18A8 8008A378 0800428E */  lw         $v0, 0x8($s2)
/* 6DF18AC 8008A37C 00000000 */  nop
/* 6DF18B0 8008A380 64004014 */  bnez       $v0, .Llevel_32_8008A514
/* 6DF18B4 8008A384 00000000 */   nop
/* 6DF18B8 8008A388 1000448E */  lw         $a0, 0x10($s2)
/* 6DF18BC 8008A38C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6DF18C0 8008A390 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6DF18C4 8008A394 00000000 */  nop
/* 6DF18C8 8008A398 09F84000 */  jalr       $v0
/* 6DF18CC 8008A39C 2128A002 */   addu      $a1, $s5, $zero
/* 6DF18D0 8008A3A0 21984000 */  addu       $s3, $v0, $zero
/* 6DF18D4 8008A3A4 5B006012 */  beqz       $s3, .Llevel_32_8008A514
/* 6DF18D8 8008A3A8 FFFF1424 */   addiu     $s4, $zero, -0x1
/* 6DF18DC 8008A3AC 21206002 */  addu       $a0, $s3, $zero
/* 6DF18E0 8008A3B0 01000524 */  addiu      $a1, $zero, 0x1
/* 6DF18E4 8008A3B4 21300000 */  addu       $a2, $zero, $zero
/* 6DF18E8 8008A3B8 0000768E */  lw         $s6, 0x0($s3)
/* 6DF18EC 8008A3BC 01000224 */  addiu      $v0, $zero, 0x1
/* 6DF18F0 8008A3C0 4B0062A2 */  sb         $v0, 0x4B($s3)
/* 6DF18F4 8008A3C4 26000224 */  addiu      $v0, $zero, 0x26
/* 6DF18F8 8008A3C8 4C0062A2 */  sb         $v0, 0x4C($s3)
/* 6DF18FC 8008A3CC AFEE000C */  jal        func_8003BABC
/* 6DF1900 8008A3D0 4E0062A2 */   sb        $v0, 0x4E($s3)
/* 6DF1904 8008A3D4 1C00628E */  lw         $v0, 0x1C($s3)
/* 6DF1908 8008A3D8 0080033C */  lui        $v1, (0x80000000 >> 16)
/* 6DF190C 8008A3DC 25104300 */  or         $v0, $v0, $v1
/* 6DF1910 8008A3E0 1C0062AE */  sw         $v0, 0x1C($s3)
/* 6DF1914 8008A3E4 0000438E */  lw         $v1, 0x0($s2)
/* 6DF1918 8008A3E8 21800000 */  addu       $s0, $zero, $zero
/* 6DF191C 8008A3EC 00006284 */  lh         $v0, 0x0($v1)
/* 6DF1920 8008A3F0 00000000 */  nop
/* 6DF1924 8008A3F4 14004018 */  blez       $v0, .Llevel_32_8008A448
/* 6DF1928 8008A3F8 21880000 */   addu      $s1, $zero, $zero
.Llevel_32_8008A3FC:
/* 6DF192C 8008A3FC 0780043C */  lui        $a0, %hi(D_80070328)
/* 6DF1930 8008A400 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 6DF1934 8008A404 0C00628C */  lw         $v0, 0xC($v1)
/* 6DF1938 8008A408 00291000 */  sll        $a1, $s0, 4
/* 6DF193C 8008A40C CD3C010C */  jal        func_8004F334
/* 6DF1940 8008A410 21284500 */   addu      $a1, $v0, $a1
/* 6DF1944 8008A414 21184000 */  addu       $v1, $v0, $zero
/* 6DF1948 8008A418 2A108302 */  slt        $v0, $s4, $v1
/* 6DF194C 8008A41C 03004010 */  beqz       $v0, .Llevel_32_8008A42C
/* 6DF1950 8008A420 00000000 */   nop
/* 6DF1954 8008A424 21A06000 */  addu       $s4, $v1, $zero
/* 6DF1958 8008A428 21880002 */  addu       $s1, $s0, $zero
.Llevel_32_8008A42C:
/* 6DF195C 8008A42C 0000438E */  lw         $v1, 0x0($s2)
/* 6DF1960 8008A430 00000000 */  nop
/* 6DF1964 8008A434 00006284 */  lh         $v0, 0x0($v1)
/* 6DF1968 8008A438 01001026 */  addiu      $s0, $s0, 0x1
/* 6DF196C 8008A43C 2A100202 */  slt        $v0, $s0, $v0
/* 6DF1970 8008A440 EEFF4014 */  bnez       $v0, .Llevel_32_8008A3FC
/* 6DF1974 8008A444 00000000 */   nop
.Llevel_32_8008A448:
/* 6DF1978 8008A448 0000428E */  lw         $v0, 0x0($s2)
/* 6DF197C 8008A44C 1800A427 */  addiu      $a0, $sp, 0x18
/* 6DF1980 8008A450 0C00428C */  lw         $v0, 0xC($v0)
/* 6DF1984 8008A454 00291100 */  sll        $a1, $s1, 4
/* 6DF1988 8008A458 5E3C010C */  jal        func_8004F178
/* 6DF198C 8008A45C 21284500 */   addu      $a1, $v0, $a1
/* 6DF1990 8008A460 0C007026 */  addiu      $s0, $s3, 0xC
/* 6DF1994 8008A464 21200002 */  addu       $a0, $s0, $zero
/* 6DF1998 8008A468 5E3C010C */  jal        func_8004F178
/* 6DF199C 8008A46C 0C00A526 */   addiu     $a1, $s5, 0xC
/* 6DF19A0 8008A470 21300000 */  addu       $a2, $zero, $zero
/* 6DF19A4 8008A474 1800A38F */  lw         $v1, 0x18($sp)
/* 6DF19A8 8008A478 0C00A48E */  lw         $a0, 0xC($s5)
/* 6DF19AC 8008A47C 1C00A28F */  lw         $v0, 0x1C($sp)
/* 6DF19B0 8008A480 1000A58E */  lw         $a1, 0x10($s5)
/* 6DF19B4 8008A484 23206400 */  subu       $a0, $v1, $a0
/* 6DF19B8 8008A488 203A010C */  jal        func_8004E880
/* 6DF19BC 8008A48C 23284500 */   subu      $a1, $v0, $a1
/* 6DF19C0 8008A490 40100200 */  sll        $v0, $v0, 1
/* 6DF19C4 8008A494 0680013C */  lui        $at, %hi(D_80065920)
/* 6DF19C8 8008A498 21082200 */  addu       $at, $at, $v0
/* 6DF19CC 8008A49C 20592484 */  lh         $a0, %lo(D_80065920)($at)
/* 6DF19D0 8008A4A0 0C00438E */  lw         $v1, 0xC($s2)
/* 6DF19D4 8008A4A4 00000000 */  nop
/* 6DF19D8 8008A4A8 18008300 */  mult       $a0, $v1
/* 6DF19DC 8008A4AC 12400000 */  mflo       $t0
/* 6DF19E0 8008A4B0 031B0800 */  sra        $v1, $t0, 12
/* 6DF19E4 8008A4B4 0000C3AE */  sw         $v1, 0x0($s6)
/* 6DF19E8 8008A4B8 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DF19EC 8008A4BC 21082200 */  addu       $at, $at, $v0
/* 6DF19F0 8008A4C0 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6DF19F4 8008A4C4 0C00428E */  lw         $v0, 0xC($s2)
/* 6DF19F8 8008A4C8 00000000 */  nop
/* 6DF19FC 8008A4CC 18006200 */  mult       $v1, $v0
/* 6DF1A00 8008A4D0 1800A527 */  addiu      $a1, $sp, 0x18
/* 6DF1A04 8008A4D4 F6FF0724 */  addiu      $a3, $zero, -0xA
/* 6DF1A08 8008A4D8 0800C0AE */  sw         $zero, 0x8($s6)
/* 6DF1A0C 8008A4DC 12400000 */  mflo       $t0
/* 6DF1A10 8008A4E0 03130800 */  sra        $v0, $t0, 12
/* 6DF1A14 8008A4E4 0400C2AE */  sw         $v0, 0x4($s6)
/* 6DF1A18 8008A4E8 2800A227 */  addiu      $v0, $sp, 0x28
/* 6DF1A1C 8008A4EC 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DF1A20 8008A4F0 0C00468E */  lw         $a2, 0xC($s2)
/* 6DF1A24 8008A4F4 79D9000C */  jal        func_800365E4
/* 6DF1A28 8008A4F8 21200002 */   addu      $a0, $s0, $zero
/* 6DF1A2C 8008A4FC 0800C2AE */  sw         $v0, 0x8($s6)
/* 6DF1A30 8008A500 01000224 */  addiu      $v0, $zero, 0x1
/* 6DF1A34 8008A504 1400C2A2 */  sb         $v0, 0x14($s6)
/* 6DF1A38 8008A508 06000224 */  addiu      $v0, $zero, 0x6
/* 6DF1A3C 8008A50C 480062A2 */  sb         $v0, 0x48($s3)
/* 6DF1A40 8008A510 040053AE */  sw         $s3, 0x4($s2)
.Llevel_32_8008A514:
/* 6DF1A44 8008A514 5400BF8F */  lw         $ra, 0x54($sp)
/* 6DF1A48 8008A518 5000B68F */  lw         $s6, 0x50($sp)
/* 6DF1A4C 8008A51C 4C00B58F */  lw         $s5, 0x4C($sp)
/* 6DF1A50 8008A520 4800B48F */  lw         $s4, 0x48($sp)
/* 6DF1A54 8008A524 4400B38F */  lw         $s3, 0x44($sp)
/* 6DF1A58 8008A528 4000B28F */  lw         $s2, 0x40($sp)
/* 6DF1A5C 8008A52C 3C00B18F */  lw         $s1, 0x3C($sp)
/* 6DF1A60 8008A530 3800B08F */  lw         $s0, 0x38($sp)
/* 6DF1A64 8008A534 5800BD27 */  addiu      $sp, $sp, 0x58
/* 6DF1A68 8008A538 0800E003 */  jr         $ra
/* 6DF1A6C 8008A53C 00000000 */   nop
.size MobyUpdate_1014_level_32, . - MobyUpdate_1014_level_32
