.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_534_level_14
/* 47CA61C 8008B0EC 70FFBD27 */  addiu      $sp, $sp, -0x90
/* 47CA620 8008B0F0 8000B2AF */  sw         $s2, 0x80($sp)
/* 47CA624 8008B0F4 21908000 */  addu       $s2, $a0, $zero
/* 47CA628 8008B0F8 8800B4AF */  sw         $s4, 0x88($sp)
/* 47CA62C 8008B0FC 21A00000 */  addu       $s4, $zero, $zero
/* 47CA630 8008B100 7C00B1AF */  sw         $s1, 0x7C($sp)
/* 47CA634 8008B104 01000324 */  addiu      $v1, $zero, 0x1
/* 47CA638 8008B108 8C00BFAF */  sw         $ra, 0x8C($sp)
/* 47CA63C 8008B10C 8400B3AF */  sw         $s3, 0x84($sp)
/* 47CA640 8008B110 7800B0AF */  sw         $s0, 0x78($sp)
/* 47CA644 8008B114 48004292 */  lbu        $v0, 0x48($s2)
/* 47CA648 8008B118 0000538E */  lw         $s3, 0x0($s2)
/* 47CA64C 8008B11C 3C004314 */  bne        $v0, $v1, .Llevel_14_8008B210
/* 47CA650 8008B120 21880000 */   addu      $s1, $zero, $zero
/* 47CA654 8008B124 96000224 */  addiu      $v0, $zero, 0x96
/* 47CA658 8008B128 4000A0AF */  sw         $zero, 0x40($sp)
/* 47CA65C 8008B12C 4400A2AF */  sw         $v0, 0x44($sp)
/* 47CA660 8008B130 4800A0AF */  sw         $zero, 0x48($sp)
/* 47CA664 8008B134 0000628E */  lw         $v0, 0x0($s3)
/* 47CA668 8008B138 05001424 */  addiu      $s4, $zero, 0x5
/* 47CA66C 8008B13C 03005414 */  bne        $v0, $s4, .Llevel_14_8008B14C
/* 47CA670 8008B140 21204002 */   addu      $a0, $s2, $zero
/* 47CA674 8008B144 BC020224 */  addiu      $v0, $zero, 0x2BC
/* 47CA678 8008B148 4400A2AF */  sw         $v0, 0x44($sp)
.Llevel_14_8008B14C:
/* 47CA67C 8008B14C 4957010C */  jal        func_80055D24
/* 47CA680 8008B150 04000524 */   addiu     $a1, $zero, 0x4
/* 47CA684 8008B154 20004426 */  addiu      $a0, $s2, 0x20
/* 47CA688 8008B158 4000B127 */  addiu      $s1, $sp, 0x40
/* 47CA68C 8008B15C 21282002 */  addu       $a1, $s1, $zero
/* 47CA690 8008B160 5B3B010C */  jal        func_8004ED6C
/* 47CA694 8008B164 21302002 */   addu      $a2, $s1, $zero
/* 47CA698 8008B168 0C005026 */  addiu      $s0, $s2, 0xC
/* 47CA69C 8008B16C 21200002 */  addu       $a0, $s0, $zero
/* 47CA6A0 8008B170 21280002 */  addu       $a1, $s0, $zero
/* 47CA6A4 8008B174 653C010C */  jal        func_8004F194
/* 47CA6A8 8008B178 21302002 */   addu      $a2, $s1, $zero
/* 47CA6AC 8008B17C 01000424 */  addiu      $a0, $zero, 0x1
/* 47CA6B0 8008B180 0D000524 */  addiu      $a1, $zero, 0xD
/* 47CA6B4 8008B184 21300002 */  addu       $a2, $s0, $zero
/* 47CA6B8 8008B188 4000A0AF */  sw         $zero, 0x40($sp)
/* 47CA6BC 8008B18C 4400A0AF */  sw         $zero, 0x44($sp)
/* 47CA6C0 8008B190 0000638E */  lw         $v1, 0x0($s3)
/* 47CA6C4 8008B194 21382002 */  addu       $a3, $s1, $zero
/* 47CA6C8 8008B198 23188302 */  subu       $v1, $s4, $v1
/* 47CA6CC 8008B19C 40100300 */  sll        $v0, $v1, 1
/* 47CA6D0 8008B1A0 21104300 */  addu       $v0, $v0, $v1
/* 47CA6D4 8008B1A4 40100200 */  sll        $v0, $v0, 1
/* 47CA6D8 8008B1A8 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 47CA6DC 8008B1AC E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 47CA6E0 8008B1B0 23100200 */  negu       $v0, $v0
/* 47CA6E4 8008B1B4 09F86000 */  jalr       $v1
/* 47CA6E8 8008B1B8 4800A2AF */   sw        $v0, 0x48($sp)
/* 47CA6EC 8008B1BC 21204000 */  addu       $a0, $v0, $zero
/* 47CA6F0 8008B1C0 0C008010 */  beqz       $a0, .Llevel_14_8008B1F4
/* 47CA6F4 8008B1C4 00000000 */   nop
/* 47CA6F8 8008B1C8 0000628E */  lw         $v0, 0x0($s3)
/* 47CA6FC 8008B1CC 00000000 */  nop
/* 47CA700 8008B1D0 23108202 */  subu       $v0, $s4, $v0
/* 47CA704 8008B1D4 40180200 */  sll        $v1, $v0, 1
/* 47CA708 8008B1D8 21186200 */  addu       $v1, $v1, $v0
/* 47CA70C 8008B1DC 80180300 */  sll        $v1, $v1, 2
/* 47CA710 8008B1E0 23186200 */  subu       $v1, $v1, $v0
/* 47CA714 8008B1E4 40180300 */  sll        $v1, $v1, 1
/* 47CA718 8008B1E8 78000224 */  addiu      $v0, $zero, 0x78
/* 47CA71C 8008B1EC 23104300 */  subu       $v0, $v0, $v1
/* 47CA720 8008B1F0 0A0082A0 */  sb         $v0, 0xA($a0)
.Llevel_14_8008B1F4:
/* 47CA724 8008B1F4 0000628E */  lw         $v0, 0x0($s3)
/* 47CA728 8008B1F8 00000000 */  nop
/* 47CA72C 8008B1FC FFFF4224 */  addiu      $v0, $v0, -0x1
/* 47CA730 8008B200 5C01401C */  bgtz       $v0, .Llevel_14_8008B774
/* 47CA734 8008B204 000062AE */   sw        $v0, 0x0($s3)
/* 47CA738 8008B208 DB2D0208 */  j          .Llevel_14_8008B76C
/* 47CA73C 8008B20C 00000000 */   nop
.Llevel_14_8008B210:
/* 47CA740 8008B210 2000A427 */  addiu      $a0, $sp, 0x20
/* 47CA744 8008B214 0C005026 */  addiu      $s0, $s2, 0xC
/* 47CA748 8008B218 5E3C010C */  jal        func_8004F178
/* 47CA74C 8008B21C 21280002 */   addu      $a1, $s0, $zero
/* 47CA750 8008B220 21200000 */  addu       $a0, $zero, $zero
/* 47CA754 8008B224 F7D8000C */  jal        func_800363DC
/* 47CA758 8008B228 32000524 */   addiu     $a1, $zero, 0x32
/* 47CA75C 8008B22C 21200000 */  addu       $a0, $zero, $zero
/* 47CA760 8008B230 2000A38F */  lw         $v1, 0x20($sp)
/* 47CA764 8008B234 32000524 */  addiu      $a1, $zero, 0x32
/* 47CA768 8008B238 21186200 */  addu       $v1, $v1, $v0
/* 47CA76C 8008B23C F7D8000C */  jal        func_800363DC
/* 47CA770 8008B240 2000A3AF */   sw        $v1, 0x20($sp)
/* 47CA774 8008B244 21200000 */  addu       $a0, $zero, $zero
/* 47CA778 8008B248 2400A38F */  lw         $v1, 0x24($sp)
/* 47CA77C 8008B24C 32000524 */  addiu      $a1, $zero, 0x32
/* 47CA780 8008B250 21186200 */  addu       $v1, $v1, $v0
/* 47CA784 8008B254 F7D8000C */  jal        func_800363DC
/* 47CA788 8008B258 2400A3AF */   sw        $v1, 0x24($sp)
/* 47CA78C 8008B25C 21200000 */  addu       $a0, $zero, $zero
/* 47CA790 8008B260 2800A38F */  lw         $v1, 0x28($sp)
/* 47CA794 8008B264 0A000524 */  addiu      $a1, $zero, 0xA
/* 47CA798 8008B268 21186200 */  addu       $v1, $v1, $v0
/* 47CA79C 8008B26C F7D8000C */  jal        func_800363DC
/* 47CA7A0 8008B270 2800A3AF */   sw        $v1, 0x28($sp)
/* 47CA7A4 8008B274 21200000 */  addu       $a0, $zero, $zero
/* 47CA7A8 8008B278 0A000524 */  addiu      $a1, $zero, 0xA
/* 47CA7AC 8008B27C F7D8000C */  jal        func_800363DC
/* 47CA7B0 8008B280 3000A2AF */   sw        $v0, 0x30($sp)
/* 47CA7B4 8008B284 05000424 */  addiu      $a0, $zero, 0x5
/* 47CA7B8 8008B288 08000524 */  addiu      $a1, $zero, 0x8
/* 47CA7BC 8008B28C DBD8000C */  jal        func_8003636C
/* 47CA7C0 8008B290 3400A2AF */   sw        $v0, 0x34($sp)
/* 47CA7C4 8008B294 01000424 */  addiu      $a0, $zero, 0x1
/* 47CA7C8 8008B298 0D000524 */  addiu      $a1, $zero, 0xD
/* 47CA7CC 8008B29C 2000A627 */  addiu      $a2, $sp, 0x20
/* 47CA7D0 8008B2A0 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 47CA7D4 8008B2A4 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 47CA7D8 8008B2A8 3000A727 */  addiu      $a3, $sp, 0x30
/* 47CA7DC 8008B2AC 09F86000 */  jalr       $v1
/* 47CA7E0 8008B2B0 3800A2AF */   sw        $v0, 0x38($sp)
/* 47CA7E4 8008B2B4 21184000 */  addu       $v1, $v0, $zero
/* 47CA7E8 8008B2B8 02006010 */  beqz       $v1, .Llevel_14_8008B2C4
/* 47CA7EC 8008B2BC 1E000224 */   addiu     $v0, $zero, 0x1E
/* 47CA7F0 8008B2C0 0A0062A0 */  sb         $v0, 0xA($v1)
.Llevel_14_8008B2C4:
/* 47CA7F4 8008B2C4 2000A427 */  addiu      $a0, $sp, 0x20
/* 47CA7F8 8008B2C8 5E3C010C */  jal        func_8004F178
/* 47CA7FC 8008B2CC 21280002 */   addu      $a1, $s0, $zero
/* 47CA800 8008B2D0 21204002 */  addu       $a0, $s2, $zero
/* 47CA804 8008B2D4 2C010524 */  addiu      $a1, $zero, 0x12C
/* 47CA808 8008B2D8 21300000 */  addu       $a2, $zero, $zero
/* 47CA80C 8008B2DC 21380000 */  addu       $a3, $zero, $zero
/* 47CA810 8008B2E0 77D7000C */  jal        func_80035DDC
/* 47CA814 8008B2E4 1000A0AF */   sw        $zero, 0x10($sp)
/* 47CA818 8008B2E8 1400428E */  lw         $v0, 0x14($s2)
/* 47CA81C 8008B2EC 0400638E */  lw         $v1, 0x4($s3)
/* 47CA820 8008B2F0 00000000 */  nop
/* 47CA824 8008B2F4 21104300 */  addu       $v0, $v0, $v1
/* 47CA828 8008B2F8 140042AE */  sw         $v0, 0x14($s2)
/* 47CA82C 8008B2FC 0400628E */  lw         $v0, 0x4($s3)
/* 47CA830 8008B300 00000000 */  nop
/* 47CA834 8008B304 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 47CA838 8008B308 040062AE */  sw         $v0, 0x4($s3)
/* 47CA83C 8008B30C 0C00428E */  lw         $v0, 0xC($s2)
/* 47CA840 8008B310 00000000 */  nop
/* 47CA844 8008B314 00044228 */  slti       $v0, $v0, 0x400
/* 47CA848 8008B318 14014014 */  bnez       $v0, .Llevel_14_8008B76C
/* 47CA84C 8008B31C 00000000 */   nop
/* 47CA850 8008B320 1000428E */  lw         $v0, 0x10($s2)
/* 47CA854 8008B324 00000000 */  nop
/* 47CA858 8008B328 00044228 */  slti       $v0, $v0, 0x400
/* 47CA85C 8008B32C 0F014014 */  bnez       $v0, .Llevel_14_8008B76C
/* 47CA860 8008B330 00000000 */   nop
/* 47CA864 8008B334 1400428E */  lw         $v0, 0x14($s2)
/* 47CA868 8008B338 00000000 */  nop
/* 47CA86C 8008B33C 00044228 */  slti       $v0, $v0, 0x400
/* 47CA870 8008B340 0A014014 */  bnez       $v0, .Llevel_14_8008B76C
/* 47CA874 8008B344 21206002 */   addu      $a0, $s3, $zero
/* 47CA878 8008B348 69D6000C */  jal        func_800359A4
/* 47CA87C 8008B34C 04000524 */   addiu     $a1, $zero, 0x4
/* 47CA880 8008B350 03004010 */  beqz       $v0, .Llevel_14_8008B360
/* 47CA884 8008B354 00000000 */   nop
/* 47CA888 8008B358 1E2D0208 */  j          .Llevel_14_8008B478
/* 47CA88C 8008B35C 01001124 */   addiu     $s1, $zero, 0x1
.Llevel_14_8008B360:
/* 47CA890 8008B360 0800648E */  lw         $a0, 0x8($s3)
/* 47CA894 8008B364 00000000 */  nop
/* 47CA898 8008B368 43008010 */  beqz       $a0, .Llevel_14_8008B478
/* 47CA89C 8008B36C FE000224 */   addiu     $v0, $zero, 0xFE
/* 47CA8A0 8008B370 36008384 */  lh         $v1, 0x36($a0)
/* 47CA8A4 8008B374 00000000 */  nop
/* 47CA8A8 8008B378 3F006214 */  bne        $v1, $v0, .Llevel_14_8008B478
/* 47CA8AC 8008B37C 6800A627 */   addiu     $a2, $sp, 0x68
/* 47CA8B0 8008B380 46009090 */  lbu        $s0, 0x46($a0)
/* 47CA8B4 8008B384 00000000 */  nop
/* 47CA8B8 8008B388 40281000 */  sll        $a1, $s0, 1
/* 47CA8BC 8008B38C 0680013C */  lui        $at, %hi(D_80065920)
/* 47CA8C0 8008B390 21082500 */  addu       $at, $at, $a1
/* 47CA8C4 8008B394 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 47CA8C8 8008B398 5000A427 */  addiu      $a0, $sp, 0x50
/* 47CA8CC 8008B39C 80180200 */  sll        $v1, $v0, 2
/* 47CA8D0 8008B3A0 21186200 */  addu       $v1, $v1, $v0
/* 47CA8D4 8008B3A4 00110300 */  sll        $v0, $v1, 4
/* 47CA8D8 8008B3A8 23104300 */  subu       $v0, $v0, $v1
/* 47CA8DC 8008B3AC 80100200 */  sll        $v0, $v0, 2
/* 47CA8E0 8008B3B0 23100200 */  negu       $v0, $v0
/* 47CA8E4 8008B3B4 03130200 */  sra        $v0, $v0, 12
/* 47CA8E8 8008B3B8 6800A2AF */  sw         $v0, 0x68($sp)
/* 47CA8EC 8008B3BC 0680013C */  lui        $at, %hi(D_800658A0)
/* 47CA8F0 8008B3C0 21082500 */  addu       $at, $at, $a1
/* 47CA8F4 8008B3C4 A0582584 */  lh         $a1, %lo(D_800658A0)($at)
/* 47CA8F8 8008B3C8 78050224 */  addiu      $v0, $zero, 0x578
/* 47CA8FC 8008B3CC 7000A2AF */  sw         $v0, 0x70($sp)
/* 47CA900 8008B3D0 80180500 */  sll        $v1, $a1, 2
/* 47CA904 8008B3D4 21186500 */  addu       $v1, $v1, $a1
/* 47CA908 8008B3D8 00110300 */  sll        $v0, $v1, 4
/* 47CA90C 8008B3DC 23104300 */  subu       $v0, $v0, $v1
/* 47CA910 8008B3E0 80100200 */  sll        $v0, $v0, 2
/* 47CA914 8008B3E4 23100200 */  negu       $v0, $v0
/* 47CA918 8008B3E8 03130200 */  sra        $v0, $v0, 12
/* 47CA91C 8008B3EC 6C00A2AF */  sw         $v0, 0x6C($sp)
/* 47CA920 8008B3F0 0800658E */  lw         $a1, 0x8($s3)
/* 47CA924 8008B3F4 653C010C */  jal        func_8004F194
/* 47CA928 8008B3F8 0C00A524 */   addiu     $a1, $a1, 0xC
/* 47CA92C 8008B3FC 100E0224 */  addiu      $v0, $zero, 0xE10
/* 47CA930 8008B400 5C00A2AF */  sw         $v0, 0x5C($sp)
/* 47CA934 8008B404 84030224 */  addiu      $v0, $zero, 0x384
/* 47CA938 8008B408 6000A2AF */  sw         $v0, 0x60($sp)
/* 47CA93C 8008B40C 6400B0AF */  sw         $s0, 0x64($sp)
/* 47CA940 8008B410 0800648E */  lw         $a0, 0x8($s3)
/* 47CA944 8008B414 00000000 */  nop
/* 47CA948 8008B418 48008390 */  lbu        $v1, 0x48($a0)
/* 47CA94C 8008B41C 1B000224 */  addiu      $v0, $zero, 0x1B
/* 47CA950 8008B420 08006214 */  bne        $v1, $v0, .Llevel_14_8008B444
/* 47CA954 8008B424 B80B0724 */   addiu     $a3, $zero, 0xBB8
/* 47CA958 8008B428 49008290 */  lbu        $v0, 0x49($a0)
/* 47CA95C 8008B42C 00000000 */  nop
/* 47CA960 8008B430 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 47CA964 8008B434 0200422C */  sltiu      $v0, $v0, 0x2
/* 47CA968 8008B438 03004010 */  beqz       $v0, .Llevel_14_8008B448
/* 47CA96C 8008B43C 0C004426 */   addiu     $a0, $s2, 0xC
/* 47CA970 8008B440 DC050724 */  addiu      $a3, $zero, 0x5DC
.Llevel_14_8008B444:
/* 47CA974 8008B444 0C004426 */  addiu      $a0, $s2, 0xC
.Llevel_14_8008B448:
/* 47CA978 8008B448 5000A527 */  addiu      $a1, $sp, 0x50
/* 47CA97C 8008B44C 88D8000C */  jal        func_80036220
/* 47CA980 8008B450 21300000 */   addu      $a2, $zero, $zero
/* 47CA984 8008B454 08004010 */  beqz       $v0, .Llevel_14_8008B478
/* 47CA988 8008B458 1000023C */   lui       $v0, (0x100000 >> 16)
/* 47CA98C 8008B45C 0800638E */  lw         $v1, 0x8($s3)
/* 47CA990 8008B460 00000000 */  nop
/* 47CA994 8008B464 180062AC */  sw         $v0, 0x18($v1)
/* 47CA998 8008B468 0800638E */  lw         $v1, 0x8($s3)
/* 47CA99C 8008B46C 46004292 */  lbu        $v0, 0x46($s2)
/* 47CA9A0 8008B470 01001124 */  addiu      $s1, $zero, 0x1
/* 47CA9A4 8008B474 510062A0 */  sb         $v0, 0x51($v1)
.Llevel_14_8008B478:
/* 47CA9A8 8008B478 0C004426 */  addiu      $a0, $s2, 0xC
/* 47CA9AC 8008B47C C8000524 */  addiu      $a1, $zero, 0xC8
/* 47CA9B0 8008B480 03000624 */  addiu      $a2, $zero, 0x3
/* 47CA9B4 8008B484 21380000 */  addu       $a3, $zero, $zero
/* 47CA9B8 8008B488 1000A0AF */  sw         $zero, 0x10($sp)
/* 47CA9BC 8008B48C 8C6E000C */  jal        func_8001BA30
/* 47CA9C0 8008B490 1400B2AF */   sw        $s2, 0x14($sp)
/* 47CA9C4 8008B494 21204000 */  addu       $a0, $v0, $zero
/* 47CA9C8 8008B498 09008010 */  beqz       $a0, .Llevel_14_8008B4C0
/* 47CA9CC 8008B49C FE000224 */   addiu     $v0, $zero, 0xFE
/* 47CA9D0 8008B4A0 36008384 */  lh         $v1, 0x36($a0)
/* 47CA9D4 8008B4A4 00000000 */  nop
/* 47CA9D8 8008B4A8 05006210 */  beq        $v1, $v0, .Llevel_14_8008B4C0
/* 47CA9DC 8008B4AC 1000023C */   lui       $v0, (0x100000 >> 16)
/* 47CA9E0 8008B4B0 180082AC */  sw         $v0, 0x18($a0)
/* 47CA9E4 8008B4B4 46004292 */  lbu        $v0, 0x46($s2)
/* 47CA9E8 8008B4B8 01001124 */  addiu      $s1, $zero, 0x1
/* 47CA9EC 8008B4BC 510082A0 */  sb         $v0, 0x51($a0)
.Llevel_14_8008B4C0:
/* 47CA9F0 8008B4C0 0A002016 */  bnez       $s1, .Llevel_14_8008B4EC
/* 47CA9F4 8008B4C4 0C004426 */   addiu     $a0, $s2, 0xC
/* 47CA9F8 8008B4C8 FA000524 */  addiu      $a1, $zero, 0xFA
/* 47CA9FC 8008B4CC 01000624 */  addiu      $a2, $zero, 0x1
/* 47CAA00 8008B4D0 21380000 */  addu       $a3, $zero, $zero
/* 47CAA04 8008B4D4 1000A0AF */  sw         $zero, 0x10($sp)
/* 47CAA08 8008B4D8 4E64000C */  jal        func_80019138
/* 47CAA0C 8008B4DC 1400A0AF */   sw        $zero, 0x14($sp)
/* 47CAA10 8008B4E0 21A04000 */  addu       $s4, $v0, $zero
/* 47CAA14 8008B4E4 A3008012 */  beqz       $s4, .Llevel_14_8008B774
/* 47CAA18 8008B4E8 00000000 */   nop
.Llevel_14_8008B4EC:
/* 47CAA1C 8008B4EC 12008012 */  beqz       $s4, .Llevel_14_8008B538
/* 47CAA20 8008B4F0 0C004426 */   addiu     $a0, $s2, 0xC
/* 47CAA24 8008B4F4 F4010524 */  addiu      $a1, $zero, 0x1F4
/* 47CAA28 8008B4F8 03000624 */  addiu      $a2, $zero, 0x3
/* 47CAA2C 8008B4FC 21380000 */  addu       $a3, $zero, $zero
/* 47CAA30 8008B500 1000A0AF */  sw         $zero, 0x10($sp)
/* 47CAA34 8008B504 8C6E000C */  jal        func_8001BA30
/* 47CAA38 8008B508 1400B2AF */   sw        $s2, 0x14($sp)
/* 47CAA3C 8008B50C 21204000 */  addu       $a0, $v0, $zero
/* 47CAA40 8008B510 09008010 */  beqz       $a0, .Llevel_14_8008B538
/* 47CAA44 8008B514 FE000224 */   addiu     $v0, $zero, 0xFE
/* 47CAA48 8008B518 36008384 */  lh         $v1, 0x36($a0)
/* 47CAA4C 8008B51C 00000000 */  nop
/* 47CAA50 8008B520 05006210 */  beq        $v1, $v0, .Llevel_14_8008B538
/* 47CAA54 8008B524 1000023C */   lui       $v0, (0x100000 >> 16)
/* 47CAA58 8008B528 180082AC */  sw         $v0, 0x18($a0)
/* 47CAA5C 8008B52C 46004292 */  lbu        $v0, 0x46($s2)
/* 47CAA60 8008B530 00000000 */  nop
/* 47CAA64 8008B534 510082A0 */  sb         $v0, 0x51($a0)
.Llevel_14_8008B538:
/* 47CAA68 8008B538 0780023C */  lui        $v0, %hi(D_8006C578)
/* 47CAA6C 8008B53C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 47CAA70 8008B540 0780033C */  lui        $v1, %hi(D_8006C574)
/* 47CAA74 8008B544 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 47CAA78 8008B548 00000000 */  nop
/* 47CAA7C 8008B54C 23104300 */  subu       $v0, $v0, $v1
/* 47CAA80 8008B550 15004228 */  slti       $v0, $v0, 0x15
/* 47CAA84 8008B554 23004014 */  bnez       $v0, .Llevel_14_8008B5E4
/* 47CAA88 8008B558 21800000 */   addu      $s0, $zero, $zero
/* 47CAA8C 8008B55C 02001124 */  addiu      $s1, $zero, 0x2
.Llevel_14_8008B560:
/* 47CAA90 8008B560 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 47CAA94 8008B564 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 47CAA98 8008B568 00000000 */  nop
/* 47CAA9C 8008B56C 013C4228 */  slti       $v0, $v0, 0x3C01
/* 47CAAA0 8008B570 1C004014 */  bnez       $v0, .Llevel_14_8008B5E4
/* 47CAAA4 8008B574 01000424 */   addiu     $a0, $zero, 0x1
/* 47CAAA8 8008B578 54000524 */  addiu      $a1, $zero, 0x54
/* 47CAAAC 8008B57C 21304002 */  addu       $a2, $s2, $zero
/* 47CAAB0 8008B580 21380000 */  addu       $a3, $zero, $zero
/* 47CAAB4 8008B584 C8000224 */  addiu      $v0, $zero, 0xC8
/* 47CAAB8 8008B588 1400A2AF */  sw         $v0, 0x14($sp)
/* 47CAABC 8008B58C 00010224 */  addiu      $v0, $zero, 0x100
/* 47CAAC0 8008B590 1000B1AF */  sw         $s1, 0x10($sp)
/* 47CAAC4 8008B594 7AE4000C */  jal        func_800391E8
/* 47CAAC8 8008B598 1800A2AF */   sw        $v0, 0x18($sp)
/* 47CAACC 8008B59C 21184000 */  addu       $v1, $v0, $zero
/* 47CAAD0 8008B5A0 03006010 */  beqz       $v1, .Llevel_14_8008B5B0
/* 47CAAD4 8008B5A4 1C000224 */   addiu     $v0, $zero, 0x1C
/* 47CAAD8 8008B5A8 480071A0 */  sb         $s1, 0x48($v1)
/* 47CAADC 8008B5AC 4F0062A0 */  sb         $v0, 0x4F($v1)
.Llevel_14_8008B5B0:
/* 47CAAE0 8008B5B0 01001026 */  addiu      $s0, $s0, 0x1
/* 47CAAE4 8008B5B4 0500022A */  slti       $v0, $s0, 0x5
/* 47CAAE8 8008B5B8 0B004010 */  beqz       $v0, .Llevel_14_8008B5E8
/* 47CAAEC 8008B5BC 21300000 */   addu      $a2, $zero, $zero
/* 47CAAF0 8008B5C0 0780023C */  lui        $v0, %hi(D_8006C578)
/* 47CAAF4 8008B5C4 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 47CAAF8 8008B5C8 0780033C */  lui        $v1, %hi(D_8006C574)
/* 47CAAFC 8008B5CC 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 47CAB00 8008B5D0 00000000 */  nop
/* 47CAB04 8008B5D4 23104300 */  subu       $v0, $v0, $v1
/* 47CAB08 8008B5D8 15004228 */  slti       $v0, $v0, 0x15
/* 47CAB0C 8008B5DC E0FF4010 */  beqz       $v0, .Llevel_14_8008B560
/* 47CAB10 8008B5E0 00000000 */   nop
.Llevel_14_8008B5E4:
/* 47CAB14 8008B5E4 21300000 */  addu       $a2, $zero, $zero
.Llevel_14_8008B5E8:
/* 47CAB18 8008B5E8 0780033C */  lui        $v1, %hi(D_80070328)
/* 47CAB1C 8008B5EC 2803638C */  lw         $v1, %lo(D_80070328)($v1)
/* 47CAB20 8008B5F0 0C00448E */  lw         $a0, 0xC($s2)
/* 47CAB24 8008B5F4 0780023C */  lui        $v0, %hi(D_80070328 + 4)
/* 47CAB28 8008B5F8 2C03428C */  lw         $v0, %lo(D_80070328 + 4)($v0)
/* 47CAB2C 8008B5FC 1000458E */  lw         $a1, 0x10($s2)
/* 47CAB30 8008B600 23206400 */  subu       $a0, $v1, $a0
/* 47CAB34 8008B604 203A010C */  jal        func_8004E880
/* 47CAB38 8008B608 23284500 */   subu      $a1, $v0, $a1
/* 47CAB3C 8008B60C 21200000 */  addu       $a0, $zero, $zero
/* 47CAB40 8008B610 7F000524 */  addiu      $a1, $zero, 0x7F
/* 47CAB44 8008B614 DBD8000C */  jal        func_8003636C
/* 47CAB48 8008B618 460042A2 */   sb        $v0, 0x46($s2)
/* 47CAB4C 8008B61C 0780033C */  lui        $v1, %hi(D_8006C578)
/* 47CAB50 8008B620 78C5638C */  lw         $v1, %lo(D_8006C578)($v1)
/* 47CAB54 8008B624 0780043C */  lui        $a0, %hi(D_8006C574)
/* 47CAB58 8008B628 74C5848C */  lw         $a0, %lo(D_8006C574)($a0)
/* 47CAB5C 8008B62C 00000000 */  nop
/* 47CAB60 8008B630 23186400 */  subu       $v1, $v1, $a0
/* 47CAB64 8008B634 15006328 */  slti       $v1, $v1, 0x15
/* 47CAB68 8008B638 28006014 */  bnez       $v1, .Llevel_14_8008B6DC
/* 47CAB6C 8008B63C 21800000 */   addu      $s0, $zero, $zero
/* 47CAB70 8008B640 21884000 */  addu       $s1, $v0, $zero
.Llevel_14_8008B644:
/* 47CAB74 8008B644 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 47CAB78 8008B648 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 47CAB7C 8008B64C 00000000 */  nop
/* 47CAB80 8008B650 013C4228 */  slti       $v0, $v0, 0x3C01
/* 47CAB84 8008B654 21004014 */  bnez       $v0, .Llevel_14_8008B6DC
/* 47CAB88 8008B658 16020424 */   addiu     $a0, $zero, 0x216
/* 47CAB8C 8008B65C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 47CAB90 8008B660 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 47CAB94 8008B664 00000000 */  nop
/* 47CAB98 8008B668 09F84000 */  jalr       $v0
/* 47CAB9C 8008B66C 21284002 */   addu      $a1, $s2, $zero
/* 47CABA0 8008B670 21204000 */  addu       $a0, $v0, $zero
/* 47CABA4 8008B674 0C008010 */  beqz       $a0, .Llevel_14_8008B6A8
/* 47CABA8 8008B678 01000224 */   addiu     $v0, $zero, 0x1
/* 47CABAC 8008B67C 410080A0 */  sb         $zero, 0x41($a0)
/* 47CABB0 8008B680 4C0080A0 */  sb         $zero, 0x4C($a0)
/* 47CABB4 8008B684 4D0080A0 */  sb         $zero, 0x4D($a0)
/* 47CABB8 8008B688 46004392 */  lbu        $v1, 0x46($s2)
/* 47CABBC 8008B68C 480082A0 */  sb         $v0, 0x48($a0)
/* 47CABC0 8008B690 460083A0 */  sb         $v1, 0x46($a0)
/* 47CABC4 8008B694 0000838C */  lw         $v1, 0x0($a0)
/* 47CABC8 8008B698 05000224 */  addiu      $v0, $zero, 0x5
/* 47CABCC 8008B69C 440091A0 */  sb         $s1, 0x44($a0)
/* 47CABD0 8008B6A0 080080AC */  sw         $zero, 0x8($a0)
/* 47CABD4 8008B6A4 000062AC */  sw         $v0, 0x0($v1)
.Llevel_14_8008B6A8:
/* 47CABD8 8008B6A8 01001026 */  addiu      $s0, $s0, 0x1
/* 47CABDC 8008B6AC 0500022A */  slti       $v0, $s0, 0x5
/* 47CABE0 8008B6B0 0A004010 */  beqz       $v0, .Llevel_14_8008B6DC
/* 47CABE4 8008B6B4 33003126 */   addiu     $s1, $s1, 0x33
/* 47CABE8 8008B6B8 0780023C */  lui        $v0, %hi(D_8006C578)
/* 47CABEC 8008B6BC 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 47CABF0 8008B6C0 0780033C */  lui        $v1, %hi(D_8006C574)
/* 47CABF4 8008B6C4 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 47CABF8 8008B6C8 00000000 */  nop
/* 47CABFC 8008B6CC 23104300 */  subu       $v0, $v0, $v1
/* 47CAC00 8008B6D0 15004228 */  slti       $v0, $v0, 0x15
/* 47CAC04 8008B6D4 DBFF4010 */  beqz       $v0, .Llevel_14_8008B644
/* 47CAC08 8008B6D8 00000000 */   nop
.Llevel_14_8008B6DC:
/* 47CAC0C 8008B6DC 0A000424 */  addiu      $a0, $zero, 0xA
/* 47CAC10 8008B6E0 46000524 */  addiu      $a1, $zero, 0x46
/* 47CAC14 8008B6E4 0C004626 */  addiu      $a2, $s2, 0xC
/* 47CAC18 8008B6E8 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 47CAC1C 8008B6EC E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 47CAC20 8008B6F0 00000000 */  nop
/* 47CAC24 8008B6F4 09F84000 */  jalr       $v0
/* 47CAC28 8008B6F8 10000724 */   addiu     $a3, $zero, 0x10
/* 47CAC2C 8008B6FC 0780023C */  lui        $v0, %hi(D_8006C578)
/* 47CAC30 8008B700 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 47CAC34 8008B704 0780033C */  lui        $v1, %hi(D_8006C574)
/* 47CAC38 8008B708 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 47CAC3C 8008B70C 00000000 */  nop
/* 47CAC40 8008B710 23104300 */  subu       $v0, $v0, $v1
/* 47CAC44 8008B714 15004228 */  slti       $v0, $v0, 0x15
/* 47CAC48 8008B718 11004014 */  bnez       $v0, .Llevel_14_8008B760
/* 47CAC4C 8008B71C 21204002 */   addu      $a0, $s2, $zero
/* 47CAC50 8008B720 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 47CAC54 8008B724 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 47CAC58 8008B728 00000000 */  nop
/* 47CAC5C 8008B72C 013C4228 */  slti       $v0, $v0, 0x3C01
/* 47CAC60 8008B730 0C004014 */  bnez       $v0, .Llevel_14_8008B764
/* 47CAC64 8008B734 01000524 */   addiu     $a1, $zero, 0x1
/* 47CAC68 8008B738 64000424 */  addiu      $a0, $zero, 0x64
/* 47CAC6C 8008B73C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 47CAC70 8008B740 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 47CAC74 8008B744 00000000 */  nop
/* 47CAC78 8008B748 09F84000 */  jalr       $v0
/* 47CAC7C 8008B74C 21284002 */   addu      $a1, $s2, $zero
/* 47CAC80 8008B750 02004010 */  beqz       $v0, .Llevel_14_8008B75C
/* 47CAC84 8008B754 00000000 */   nop
/* 47CAC88 8008B758 480040A0 */  sb         $zero, 0x48($v0)
.Llevel_14_8008B75C:
/* 47CAC8C 8008B75C 21204002 */  addu       $a0, $s2, $zero
.Llevel_14_8008B760:
/* 47CAC90 8008B760 01000524 */  addiu      $a1, $zero, 0x1
.Llevel_14_8008B764:
/* 47CAC94 8008B764 AFEE000C */  jal        func_8003BABC
/* 47CAC98 8008B768 21300000 */   addu      $a2, $zero, $zero
.Llevel_14_8008B76C:
/* 47CAC9C 8008B76C C656010C */  jal        func_80055B18
/* 47CACA0 8008B770 21204002 */   addu      $a0, $s2, $zero
.Llevel_14_8008B774:
/* 47CACA4 8008B774 8C00BF8F */  lw         $ra, 0x8C($sp)
/* 47CACA8 8008B778 8800B48F */  lw         $s4, 0x88($sp)
/* 47CACAC 8008B77C 8400B38F */  lw         $s3, 0x84($sp)
/* 47CACB0 8008B780 8000B28F */  lw         $s2, 0x80($sp)
/* 47CACB4 8008B784 7C00B18F */  lw         $s1, 0x7C($sp)
/* 47CACB8 8008B788 7800B08F */  lw         $s0, 0x78($sp)
/* 47CACBC 8008B78C 9000BD27 */  addiu      $sp, $sp, 0x90
/* 47CACC0 8008B790 0800E003 */  jr         $ra
/* 47CACC4 8008B794 00000000 */   nop
.size MobyUpdate_534_level_14, . - MobyUpdate_534_level_14
