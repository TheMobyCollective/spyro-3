.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1015_level_14
/* 47CB740 8008C210 48FFBD27 */  addiu      $sp, $sp, -0xB8
/* 47CB744 8008C214 B000BEAF */  sw         $fp, 0xB0($sp)
/* 47CB748 8008C218 21F08000 */  addu       $fp, $a0, $zero
/* 47CB74C 8008C21C B400BFAF */  sw         $ra, 0xB4($sp)
/* 47CB750 8008C220 AC00B7AF */  sw         $s7, 0xAC($sp)
/* 47CB754 8008C224 A800B6AF */  sw         $s6, 0xA8($sp)
/* 47CB758 8008C228 A400B5AF */  sw         $s5, 0xA4($sp)
/* 47CB75C 8008C22C A000B4AF */  sw         $s4, 0xA0($sp)
/* 47CB760 8008C230 9C00B3AF */  sw         $s3, 0x9C($sp)
/* 47CB764 8008C234 9800B2AF */  sw         $s2, 0x98($sp)
/* 47CB768 8008C238 9400B1AF */  sw         $s1, 0x94($sp)
/* 47CB76C 8008C23C 9000B0AF */  sw         $s0, 0x90($sp)
/* 47CB770 8008C240 0000CF8F */  lw         $t7, 0x0($fp)
/* 47CB774 8008C244 00000000 */  nop
/* 47CB778 8008C248 3800AFAF */  sw         $t7, 0x38($sp)
/* 47CB77C 8008C24C 1000E28D */  lw         $v0, 0x10($t7)
/* 47CB780 8008C250 00000000 */  nop
/* 47CB784 8008C254 0000428C */  lw         $v0, 0x0($v0)
/* 47CB788 8008C258 00000000 */  nop
/* 47CB78C 8008C25C 4000A2AF */  sw         $v0, 0x40($sp)
/* 47CB790 8008C260 4100C0A3 */  sb         $zero, 0x41($fp)
/* 47CB794 8008C264 4C00C0A3 */  sb         $zero, 0x4C($fp)
/* 47CB798 8008C268 4D00C0A3 */  sb         $zero, 0x4D($fp)
/* 47CB79C 8008C26C 1400E285 */  lh         $v0, 0x14($t7)
/* 47CB7A0 8008C270 00000000 */  nop
/* 47CB7A4 8008C274 7F004014 */  bnez       $v0, .Llevel_14_8008C474
/* 47CB7A8 8008C278 21A80000 */   addu      $s5, $zero, $zero
/* 47CB7AC 8008C27C 0C00C427 */  addiu      $a0, $fp, 0xC
/* 47CB7B0 8008C280 00040524 */  addiu      $a1, $zero, 0x400
/* 47CB7B4 8008C284 A270000C */  jal        func_8001C288
/* 47CB7B8 8008C288 07000624 */   addiu     $a2, $zero, 0x7
/* 47CB7BC 8008C28C 6A004010 */  beqz       $v0, .Llevel_14_8008C438
/* 47CB7C0 8008C290 21300000 */   addu      $a2, $zero, $zero
/* 47CB7C4 8008C294 0780033C */  lui        $v1, %hi(D_80070328)
/* 47CB7C8 8008C298 2803638C */  lw         $v1, %lo(D_80070328)($v1)
/* 47CB7CC 8008C29C 0C00C48F */  lw         $a0, 0xC($fp)
/* 47CB7D0 8008C2A0 0780023C */  lui        $v0, %hi(D_80070328 + 4)
/* 47CB7D4 8008C2A4 2C03428C */  lw         $v0, %lo(D_80070328 + 4)($v0)
/* 47CB7D8 8008C2A8 1000C58F */  lw         $a1, 0x10($fp)
/* 47CB7DC 8008C2AC 23206400 */  subu       $a0, $v1, $a0
/* 47CB7E0 8008C2B0 203A010C */  jal        func_8004E880
/* 47CB7E4 8008C2B4 23284500 */   subu      $a1, $v0, $a1
/* 47CB7E8 8008C2B8 21284000 */  addu       $a1, $v0, $zero
/* 47CB7EC 8008C2BC 0780013C */  lui        $at, %hi(D_80070328 + 0x298)
/* 47CB7F0 8008C2C0 C00525AC */  sw         $a1, %lo(D_80070328 + 0x298)($at)
/* 47CB7F4 8008C2C4 4800C393 */  lbu        $v1, 0x48($fp)
/* 47CB7F8 8008C2C8 14000224 */  addiu      $v0, $zero, 0x14
/* 47CB7FC 8008C2CC 5B006214 */  bne        $v1, $v0, .Llevel_14_8008C43C
/* 47CB800 8008C2D0 0C00C427 */   addiu     $a0, $fp, 0xC
/* 47CB804 8008C2D4 0780033C */  lui        $v1, %hi(D_8006C5BC)
/* 47CB808 8008C2D8 BCC5638C */  lw         $v1, %lo(D_8006C5BC)($v1)
/* 47CB80C 8008C2DC 2C000224 */  addiu      $v0, $zero, 0x2C
/* 47CB810 8008C2E0 2E006214 */  bne        $v1, $v0, .Llevel_14_8008C39C
/* 47CB814 8008C2E4 0010023C */   lui       $v0, (0x10000400 >> 16)
/* 47CB818 8008C2E8 0780033C */  lui        $v1, %hi(D_8006C5C8)
/* 47CB81C 8008C2EC C8C5638C */  lw         $v1, %lo(D_8006C5C8)($v1)
/* 47CB820 8008C2F0 02000224 */  addiu      $v0, $zero, 0x2
/* 47CB824 8008C2F4 29006214 */  bne        $v1, $v0, .Llevel_14_8008C39C
/* 47CB828 8008C2F8 0010023C */   lui       $v0, (0x10000400 >> 16)
/* 47CB82C 8008C2FC 0010043C */  lui        $a0, (0x10000480 >> 16)
/* 47CB830 8008C300 80048434 */  ori        $a0, $a0, (0x10000480 & 0xFFFF)
/* 47CB834 8008C304 0780023C */  lui        $v0, %hi(D_80070328 + 0x20C)
/* 47CB838 8008C308 3405428C */  lw         $v0, %lo(D_80070328 + 0x20C)($v0)
/* 47CB83C 8008C30C 39000324 */  addiu      $v1, $zero, 0x39
/* 47CB840 8008C310 0780013C */  lui        $at, %hi(D_80070328 + 0x23C)
/* 47CB844 8008C314 640523AC */  sw         $v1, %lo(D_80070328 + 0x23C)($at)
/* 47CB848 8008C318 25104400 */  or         $v0, $v0, $a0
/* 47CB84C 8008C31C 40200500 */  sll        $a0, $a1, 1
/* 47CB850 8008C320 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 47CB854 8008C324 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 47CB858 8008C328 0680013C */  lui        $at, %hi(D_80065920)
/* 47CB85C 8008C32C 21082400 */  addu       $at, $at, $a0
/* 47CB860 8008C330 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 47CB864 8008C334 00000000 */  nop
/* 47CB868 8008C338 80100300 */  sll        $v0, $v1, 2
/* 47CB86C 8008C33C 21104300 */  addu       $v0, $v0, $v1
/* 47CB870 8008C340 00190200 */  sll        $v1, $v0, 4
/* 47CB874 8008C344 23186200 */  subu       $v1, $v1, $v0
/* 47CB878 8008C348 031B0300 */  sra        $v1, $v1, 12
/* 47CB87C 8008C34C 1800A3AF */  sw         $v1, 0x18($sp)
/* 47CB880 8008C350 0680013C */  lui        $at, %hi(D_800658A0)
/* 47CB884 8008C354 21082400 */  addu       $at, $at, $a0
/* 47CB888 8008C358 A0582484 */  lh         $a0, %lo(D_800658A0)($at)
/* 47CB88C 8008C35C 32000224 */  addiu      $v0, $zero, 0x32
/* 47CB890 8008C360 2000A0AF */  sw         $zero, 0x20($sp)
/* 47CB894 8008C364 0780013C */  lui        $at, %hi(D_80070328 + 0x21C)
/* 47CB898 8008C368 440523AC */  sw         $v1, %lo(D_80070328 + 0x21C)($at)
/* 47CB89C 8008C36C 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 47CB8A0 8008C370 4C0522AC */  sw         $v0, %lo(D_80070328 + 0x224)($at)
/* 47CB8A4 8008C374 80180400 */  sll        $v1, $a0, 2
/* 47CB8A8 8008C378 21186400 */  addu       $v1, $v1, $a0
/* 47CB8AC 8008C37C 00110300 */  sll        $v0, $v1, 4
/* 47CB8B0 8008C380 23104300 */  subu       $v0, $v0, $v1
/* 47CB8B4 8008C384 03130200 */  sra        $v0, $v0, 12
/* 47CB8B8 8008C388 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 47CB8BC 8008C38C 0780013C */  lui        $at, %hi(D_80070328 + 0x220)
/* 47CB8C0 8008C390 480522AC */  sw         $v0, %lo(D_80070328 + 0x220)($at)
/* 47CB8C4 8008C394 0F310208 */  j          .Llevel_14_8008C43C
/* 47CB8C8 8008C398 0C00C427 */   addiu     $a0, $fp, 0xC
.Llevel_14_8008C39C:
/* 47CB8CC 8008C39C 0780043C */  lui        $a0, %hi(D_80070328 + 0x298)
/* 47CB8D0 8008C3A0 C005848C */  lw         $a0, %lo(D_80070328 + 0x298)($a0)
/* 47CB8D4 8008C3A4 00044234 */  ori        $v0, $v0, (0x10000400 & 0xFFFF)
/* 47CB8D8 8008C3A8 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 47CB8DC 8008C3AC 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 47CB8E0 8008C3B0 40200400 */  sll        $a0, $a0, 1
/* 47CB8E4 8008C3B4 0680013C */  lui        $at, %hi(D_80065920)
/* 47CB8E8 8008C3B8 21082400 */  addu       $at, $at, $a0
/* 47CB8EC 8008C3BC 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 47CB8F0 8008C3C0 00000000 */  nop
/* 47CB8F4 8008C3C4 80180200 */  sll        $v1, $v0, 2
/* 47CB8F8 8008C3C8 21186200 */  addu       $v1, $v1, $v0
/* 47CB8FC 8008C3CC 00110300 */  sll        $v0, $v1, 4
/* 47CB900 8008C3D0 23104300 */  subu       $v0, $v0, $v1
/* 47CB904 8008C3D4 03130200 */  sra        $v0, $v0, 12
/* 47CB908 8008C3D8 0780013C */  lui        $at, %hi(D_80070328 + 0x21C)
/* 47CB90C 8008C3DC 440522AC */  sw         $v0, %lo(D_80070328 + 0x21C)($at)
/* 47CB910 8008C3E0 0680013C */  lui        $at, %hi(D_800658A0)
/* 47CB914 8008C3E4 21082400 */  addu       $at, $at, $a0
/* 47CB918 8008C3E8 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 47CB91C 8008C3EC 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 47CB920 8008C3F0 4C0520AC */  sw         $zero, %lo(D_80070328 + 0x224)($at)
/* 47CB924 8008C3F4 80180200 */  sll        $v1, $v0, 2
/* 47CB928 8008C3F8 21186200 */  addu       $v1, $v1, $v0
/* 47CB92C 8008C3FC 00110300 */  sll        $v0, $v1, 4
/* 47CB930 8008C400 23104300 */  subu       $v0, $v0, $v1
/* 47CB934 8008C404 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 47CB938 8008C408 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 47CB93C 8008C40C 03130200 */  sra        $v0, $v0, 12
/* 47CB940 8008C410 0780013C */  lui        $at, %hi(D_80070328 + 0x220)
/* 47CB944 8008C414 480522AC */  sw         $v0, %lo(D_80070328 + 0x220)($at)
/* 47CB948 8008C418 1400C28F */  lw         $v0, 0x14($fp)
/* 47CB94C 8008C41C 00000000 */  nop
/* 47CB950 8008C420 2A104300 */  slt        $v0, $v0, $v1
/* 47CB954 8008C424 02004014 */  bnez       $v0, .Llevel_14_8008C430
/* 47CB958 8008C428 CEFF0224 */   addiu     $v0, $zero, -0x32
/* 47CB95C 8008C42C 32000224 */  addiu      $v0, $zero, 0x32
.Llevel_14_8008C430:
/* 47CB960 8008C430 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 47CB964 8008C434 4C0522AC */  sw         $v0, %lo(D_80070328 + 0x224)($at)
.Llevel_14_8008C438:
/* 47CB968 8008C438 0C00C427 */  addiu      $a0, $fp, 0xC
.Llevel_14_8008C43C:
/* 47CB96C 8008C43C DC050524 */  addiu      $a1, $zero, 0x5DC
/* 47CB970 8008C440 01000624 */  addiu      $a2, $zero, 0x1
/* 47CB974 8008C444 21380000 */  addu       $a3, $zero, $zero
/* 47CB978 8008C448 0400023C */  lui        $v0, (0x40000 >> 16)
/* 47CB97C 8008C44C 1000A2AF */  sw         $v0, 0x10($sp)
/* 47CB980 8008C450 8C6E000C */  jal        func_8001BA30
/* 47CB984 8008C454 1400BEAF */   sw        $fp, 0x14($sp)
/* 47CB988 8008C458 05004010 */  beqz       $v0, .Llevel_14_8008C470
/* 47CB98C 8008C45C 21200000 */   addu      $a0, $zero, $zero
/* 47CB990 8008C460 21280000 */  addu       $a1, $zero, $zero
/* 47CB994 8008C464 203A010C */  jal        func_8004E880
/* 47CB998 8008C468 21300000 */   addu      $a2, $zero, $zero
/* 47CB99C 8008C46C 5100C2A3 */  sb         $v0, 0x51($fp)
.Llevel_14_8008C470:
/* 47CB9A0 8008C470 21A80000 */  addu       $s5, $zero, $zero
.Llevel_14_8008C474:
/* 47CB9A4 8008C474 21980000 */  addu       $s3, $zero, $zero
/* 47CB9A8 8008C478 01001224 */  addiu      $s2, $zero, 0x1
/* 47CB9AC 8008C47C 3800AF8F */  lw         $t7, 0x38($sp)
/* 47CB9B0 8008C480 14000424 */  addiu      $a0, $zero, 0x14
/* 47CB9B4 8008C484 0400EE8D */  lw         $t6, 0x4($t7)
/* 47CB9B8 8008C488 0200EF85 */  lh         $t7, 0x2($t7)
/* 47CB9BC 8008C48C 0406D725 */  addiu      $s7, $t6, 0x604
/* 47CB9C0 8008C490 5800AFAF */  sw         $t7, 0x58($sp)
/* 47CB9C4 8008C494 5800A397 */  lhu        $v1, 0x58($sp)
/* 47CB9C8 8008C498 4406CF25 */  addiu      $t7, $t6, 0x644
/* 47CB9CC 8008C49C 4800AFAF */  sw         $t7, 0x48($sp)
/* 47CB9D0 8008C4A0 3800AF8F */  lw         $t7, 0x38($sp)
/* 47CB9D4 8008C4A4 4800C293 */  lbu        $v0, 0x48($fp)
/* 47CB9D8 8008C4A8 0000EF85 */  lh         $t7, 0x0($t7)
/* 47CB9DC 8008C4AC 0F004410 */  beq        $v0, $a0, .Llevel_14_8008C4EC
/* 47CB9E0 8008C4B0 5000AFAF */   sw        $t7, 0x50($sp)
/* 47CB9E4 8008C4B4 3800AF8F */  lw         $t7, 0x38($sp)
/* 47CB9E8 8008C4B8 5E016224 */  addiu      $v0, $v1, 0x15E
/* 47CB9EC 8008C4BC 0200E2A5 */  sh         $v0, 0x2($t7)
/* 47CB9F0 8008C4C0 4800C293 */  lbu        $v0, 0x48($fp)
/* 47CB9F4 8008C4C4 00000000 */  nop
/* 47CB9F8 8008C4C8 09004410 */  beq        $v0, $a0, .Llevel_14_8008C4F0
/* 47CB9FC 8008C4CC 21B00000 */   addu      $s6, $zero, $zero
/* 47CBA00 8008C4D0 1600E285 */  lh         $v0, 0x16($t7)
/* 47CBA04 8008C4D4 00000000 */  nop
/* 47CBA08 8008C4D8 21184000 */  addu       $v1, $v0, $zero
/* 47CBA0C 8008C4DC 3A074228 */  slti       $v0, $v0, 0x73A
/* 47CBA10 8008C4E0 03004010 */  beqz       $v0, .Llevel_14_8008C4F0
/* 47CBA14 8008C4E4 FA006224 */   addiu     $v0, $v1, 0xFA
/* 47CBA18 8008C4E8 1600E2A5 */  sh         $v0, 0x16($t7)
.Llevel_14_8008C4EC:
/* 47CBA1C 8008C4EC 21B00000 */  addu       $s6, $zero, $zero
.Llevel_14_8008C4F0:
/* 47CBA20 8008C4F0 06800D3C */  lui        $t5, %hi(D_80065920)
/* 47CBA24 8008C4F4 2059AD25 */  addiu      $t5, $t5, %lo(D_80065920)
/* 47CBA28 8008C4F8 06800C3C */  lui        $t4, %hi(D_800658A0)
/* 47CBA2C 8008C4FC A0588C25 */  addiu      $t4, $t4, %lo(D_800658A0)
.Llevel_14_8008C500:
/* 47CBA30 8008C500 21800000 */  addu       $s0, $zero, $zero
/* 47CBA34 8008C504 80001424 */  addiu      $s4, $zero, 0x80
/* 47CBA38 8008C508 40101500 */  sll        $v0, $s5, 1
/* 47CBA3C 8008C50C 21105500 */  addu       $v0, $v0, $s5
/* 47CBA40 8008C510 80100200 */  sll        $v0, $v0, 2
/* 47CBA44 8008C514 21884E00 */  addu       $s1, $v0, $t6
/* 47CBA48 8008C518 4600C293 */  lbu        $v0, 0x46($fp)
/* 47CBA4C 8008C51C C0181600 */  sll        $v1, $s6, 3
/* 47CBA50 8008C520 21104300 */  addu       $v0, $v0, $v1
/* 47CBA54 8008C524 FF004230 */  andi       $v0, $v0, 0xFF
/* 47CBA58 8008C528 40100200 */  sll        $v0, $v0, 1
/* 47CBA5C 8008C52C 21584D00 */  addu       $t3, $v0, $t5
/* 47CBA60 8008C530 21504C00 */  addu       $t2, $v0, $t4
.Llevel_14_8008C534:
/* 47CBA64 8008C534 5000A48F */  lw         $a0, 0x50($sp)
/* 47CBA68 8008C538 02006016 */  bnez       $s3, .Llevel_14_8008C544
/* 47CBA6C 8008C53C 5555023C */   lui       $v0, (0x55555556 >> 16)
/* 47CBA70 8008C540 5800A48F */  lw         $a0, 0x58($sp)
.Llevel_14_8008C544:
/* 47CBA74 8008C544 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
/* 47CBA78 8008C548 01006326 */  addiu      $v1, $s3, 0x1
/* 47CBA7C 8008C54C 18006200 */  mult       $v1, $v0
/* 47CBA80 8008C550 C3170300 */  sra        $v0, $v1, 31
/* 47CBA84 8008C554 10780000 */  mfhi       $t7
/* 47CBA88 8008C558 2398E201 */  subu       $s3, $t7, $v0
/* 47CBA8C 8008C55C 40101300 */  sll        $v0, $s3, 1
/* 47CBA90 8008C560 21105300 */  addu       $v0, $v0, $s3
/* 47CBA94 8008C564 04004016 */  bnez       $s2, .Llevel_14_8008C578
/* 47CBA98 8008C568 23986200 */   subu      $s3, $v1, $v0
/* 47CBA9C 8008C56C 3800AF8F */  lw         $t7, 0x38($sp)
/* 47CBAA0 8008C570 00000000 */  nop
/* 47CBAA4 8008C574 1600E485 */  lh         $a0, 0x16($t7)
.Llevel_14_8008C578:
/* 47CBAA8 8008C578 21108D02 */  addu       $v0, $s4, $t5
/* 47CBAAC 8008C57C 1800A0AF */  sw         $zero, 0x18($sp)
/* 47CBAB0 8008C580 00004284 */  lh         $v0, 0x0($v0)
/* 47CBAB4 8008C584 00000000 */  nop
/* 47CBAB8 8008C588 18004400 */  mult       $v0, $a0
/* 47CBABC 8008C58C 21108C02 */  addu       $v0, $s4, $t4
/* 47CBAC0 8008C590 12180000 */  mflo       $v1
/* 47CBAC4 8008C594 031B0300 */  sra        $v1, $v1, 12
/* 47CBAC8 8008C598 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 47CBACC 8008C59C 00004284 */  lh         $v0, 0x0($v0)
/* 47CBAD0 8008C5A0 00000000 */  nop
/* 47CBAD4 8008C5A4 18004400 */  mult       $v0, $a0
/* 47CBAD8 8008C5A8 12400000 */  mflo       $t0
/* 47CBADC 8008C5AC 03130800 */  sra        $v0, $t0, 12
/* 47CBAE0 8008C5B0 2000A2AF */  sw         $v0, 0x20($sp)
/* 47CBAE4 8008C5B4 00004485 */  lh         $a0, 0x0($t2)
/* 47CBAE8 8008C5B8 00000000 */  nop
/* 47CBAEC 8008C5BC 18006400 */  mult       $v1, $a0
/* 47CBAF0 8008C5C0 01004726 */  addiu      $a3, $s2, 0x1
/* 47CBAF4 8008C5C4 12180000 */  mflo       $v1
/* 47CBAF8 8008C5C8 6666023C */  lui        $v0, (0x66666667 >> 16)
/* 47CBAFC 8008C5CC 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
/* 47CBB00 8008C5D0 1800E200 */  mult       $a3, $v0
/* 47CBB04 8008C5D4 03430300 */  sra        $t0, $v1, 12
/* 47CBB08 8008C5D8 00006385 */  lh         $v1, 0x0($t3)
/* 47CBB0C 8008C5DC 23100800 */  negu       $v0, $t0
/* 47CBB10 8008C5E0 000022AE */  sw         $v0, 0x0($s1)
/* 47CBB14 8008C5E4 10480000 */  mfhi       $t1
/* 47CBB18 8008C5E8 1C00A28F */  lw         $v0, 0x1C($sp)
/* 47CBB1C 8008C5EC 00000000 */  nop
/* 47CBB20 8008C5F0 18004300 */  mult       $v0, $v1
/* 47CBB24 8008C5F4 12400000 */  mflo       $t0
/* 47CBB28 8008C5F8 1800A28F */  lw         $v0, 0x18($sp)
/* 47CBB2C 8008C5FC 00000000 */  nop
/* 47CBB30 8008C600 18004400 */  mult       $v0, $a0
/* 47CBB34 8008C604 0C00C527 */  addiu      $a1, $fp, 0xC
/* 47CBB38 8008C608 21302002 */  addu       $a2, $s1, $zero
/* 47CBB3C 8008C60C 0100B526 */  addiu      $s5, $s5, 0x1
/* 47CBB40 8008C610 01001026 */  addiu      $s0, $s0, 0x1
/* 47CBB44 8008C614 20009426 */  addiu      $s4, $s4, 0x20
/* 47CBB48 8008C618 83180900 */  sra        $v1, $t1, 2
/* 47CBB4C 8008C61C 21202002 */  addu       $a0, $s1, $zero
/* 47CBB50 8008C620 C3170700 */  sra        $v0, $a3, 31
/* 47CBB54 8008C624 23906200 */  subu       $s2, $v1, $v0
/* 47CBB58 8008C628 03430800 */  sra        $t0, $t0, 12
/* 47CBB5C 8008C62C 12C00000 */  mflo       $t8
/* 47CBB60 8008C630 03131800 */  sra        $v0, $t8, 12
/* 47CBB64 8008C634 21104800 */  addu       $v0, $v0, $t0
/* 47CBB68 8008C638 040022AE */  sw         $v0, 0x4($s1)
/* 47CBB6C 8008C63C 80101200 */  sll        $v0, $s2, 2
/* 47CBB70 8008C640 21105200 */  addu       $v0, $v0, $s2
/* 47CBB74 8008C644 40100200 */  sll        $v0, $v0, 1
/* 47CBB78 8008C648 2000A38F */  lw         $v1, 0x20($sp)
/* 47CBB7C 8008C64C 2390E200 */  subu       $s2, $a3, $v0
/* 47CBB80 8008C650 080023AE */  sw         $v1, 0x8($s1)
/* 47CBB84 8008C654 7800AAAF */  sw         $t2, 0x78($sp)
/* 47CBB88 8008C658 7C00ABAF */  sw         $t3, 0x7C($sp)
/* 47CBB8C 8008C65C 8000ACAF */  sw         $t4, 0x80($sp)
/* 47CBB90 8008C660 8400ADAF */  sw         $t5, 0x84($sp)
/* 47CBB94 8008C664 653C010C */  jal        func_8004F194
/* 47CBB98 8008C668 8800AEAF */   sw        $t6, 0x88($sp)
/* 47CBB9C 8008C66C 0800022A */  slti       $v0, $s0, 0x8
/* 47CBBA0 8008C670 7800AA8F */  lw         $t2, 0x78($sp)
/* 47CBBA4 8008C674 7C00AB8F */  lw         $t3, 0x7C($sp)
/* 47CBBA8 8008C678 8000AC8F */  lw         $t4, 0x80($sp)
/* 47CBBAC 8008C67C 8400AD8F */  lw         $t5, 0x84($sp)
/* 47CBBB0 8008C680 8800AE8F */  lw         $t6, 0x88($sp)
/* 47CBBB4 8008C684 ABFF4014 */  bnez       $v0, .Llevel_14_8008C534
/* 47CBBB8 8008C688 0C003126 */   addiu     $s1, $s1, 0xC
/* 47CBBBC 8008C68C 0100D626 */  addiu      $s6, $s6, 0x1
/* 47CBBC0 8008C690 1000C22A */  slti       $v0, $s6, 0x10
/* 47CBBC4 8008C694 9AFF4014 */  bnez       $v0, .Llevel_14_8008C500
/* 47CBBC8 8008C698 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 47CBBCC 8008C69C 0006C2AD */  sw         $v0, 0x600($t6)
/* 47CBBD0 8008C6A0 3800AF8F */  lw         $t7, 0x38($sp)
/* 47CBBD4 8008C6A4 00000000 */  nop
/* 47CBBD8 8008C6A8 1400E385 */  lh         $v1, 0x14($t7)
/* 47CBBDC 8008C6AC 00000000 */  nop
/* 47CBBE0 8008C6B0 07006228 */  slti       $v0, $v1, 0x7
/* 47CBBE4 8008C6B4 10004014 */  bnez       $v0, .Llevel_14_8008C6F8
/* 47CBBE8 8008C6B8 04006228 */   slti      $v0, $v1, 0x4
/* 47CBBEC 8008C6BC FAFF6224 */  addiu      $v0, $v1, -0x6
/* 47CBBF0 8008C6C0 80180200 */  sll        $v1, $v0, 2
/* 47CBBF4 8008C6C4 21186200 */  addu       $v1, $v1, $v0
/* 47CBBF8 8008C6C8 40180300 */  sll        $v1, $v1, 1
/* 47CBBFC 8008C6CC 40000224 */  addiu      $v0, $zero, 0x40
/* 47CBC00 8008C6D0 23104300 */  subu       $v0, $v0, $v1
/* 47CBC04 8008C6D4 02004104 */  bgez       $v0, .Llevel_14_8008C6E0
/* 47CBC08 8008C6D8 00000000 */   nop
/* 47CBC0C 8008C6DC 21100000 */  addu       $v0, $zero, $zero
.Llevel_14_8008C6E0:
/* 47CBC10 8008C6E0 0000E2A2 */  sb         $v0, 0x0($s7)
/* 47CBC14 8008C6E4 43100200 */  sra        $v0, $v0, 1
/* 47CBC18 8008C6E8 0100E2A2 */  sb         $v0, 0x1($s7)
/* 47CBC1C 8008C6EC FF004230 */  andi       $v0, $v0, 0xFF
/* 47CBC20 8008C6F0 D3310208 */  j          .Llevel_14_8008C74C
/* 47CBC24 8008C6F4 42100200 */   srl       $v0, $v0, 1
.Llevel_14_8008C6F8:
/* 47CBC28 8008C6F8 09004014 */  bnez       $v0, .Llevel_14_8008C720
/* 47CBC2C 8008C6FC 80000224 */   addiu     $v0, $zero, 0x80
/* 47CBC30 8008C700 FDFF6224 */  addiu      $v0, $v1, -0x3
/* 47CBC34 8008C704 00110200 */  sll        $v0, $v0, 4
/* 47CBC38 8008C708 80000324 */  addiu      $v1, $zero, 0x80
/* 47CBC3C 8008C70C 23106200 */  subu       $v0, $v1, $v0
/* 47CBC40 8008C710 0000E2A2 */  sb         $v0, 0x0($s7)
/* 47CBC44 8008C714 0100E2A2 */  sb         $v0, 0x1($s7)
/* 47CBC48 8008C718 D4310208 */  j          .Llevel_14_8008C750
/* 47CBC4C 8008C71C 0200E0A2 */   sb        $zero, 0x2($s7)
.Llevel_14_8008C720:
/* 47CBC50 8008C720 0000E2A2 */  sb         $v0, 0x0($s7)
/* 47CBC54 8008C724 0100E2A2 */  sb         $v0, 0x1($s7)
/* 47CBC58 8008C728 3800AF8F */  lw         $t7, 0x38($sp)
/* 47CBC5C 8008C72C 00000000 */  nop
/* 47CBC60 8008C730 1400E285 */  lh         $v0, 0x14($t7)
/* 47CBC64 8008C734 80000324 */  addiu      $v1, $zero, 0x80
/* 47CBC68 8008C738 40110200 */  sll        $v0, $v0, 5
/* 47CBC6C 8008C73C 23106200 */  subu       $v0, $v1, $v0
/* 47CBC70 8008C740 02004104 */  bgez       $v0, .Llevel_14_8008C74C
/* 47CBC74 8008C744 00000000 */   nop
/* 47CBC78 8008C748 21100000 */  addu       $v0, $zero, $zero
.Llevel_14_8008C74C:
/* 47CBC7C 8008C74C 0200E2A2 */  sb         $v0, 0x2($s7)
.Llevel_14_8008C750:
/* 47CBC80 8008C750 3800AF8F */  lw         $t7, 0x38($sp)
/* 47CBC84 8008C754 00000000 */  nop
/* 47CBC88 8008C758 1400E385 */  lh         $v1, 0x14($t7)
/* 47CBC8C 8008C75C 00000000 */  nop
/* 47CBC90 8008C760 06006228 */  slti       $v0, $v1, 0x6
/* 47CBC94 8008C764 04004014 */  bnez       $v0, .Llevel_14_8008C778
/* 47CBC98 8008C768 FF000224 */   addiu     $v0, $zero, 0xFF
/* 47CBC9C 8008C76C 10000224 */  addiu      $v0, $zero, 0x10
/* 47CBCA0 8008C770 23104300 */  subu       $v0, $v0, $v1
/* 47CBCA4 8008C774 C0100200 */  sll        $v0, $v0, 3
.Llevel_14_8008C778:
/* 47CBCA8 8008C778 0400E2A2 */  sb         $v0, 0x4($s7)
/* 47CBCAC 8008C77C 0500E2A2 */  sb         $v0, 0x5($s7)
/* 47CBCB0 8008C780 0600E0A2 */  sb         $zero, 0x6($s7)
/* 47CBCB4 8008C784 21800000 */  addu       $s0, $zero, $zero
/* 47CBCB8 8008C788 21A80000 */  addu       $s5, $zero, $zero
/* 47CBCBC 8008C78C 21B00000 */  addu       $s6, $zero, $zero
/* 47CBCC0 8008C790 5555083C */  lui        $t0, (0x55555556 >> 16)
/* 47CBCC4 8008C794 56550835 */  ori        $t0, $t0, (0x55555556 & 0xFFFF)
/* 47CBCC8 8008C798 4800A78F */  lw         $a3, 0x48($sp)
.Llevel_14_8008C79C:
/* 47CBCCC 8008C79C 18000802 */  mult       $s0, $t0
/* 47CBCD0 8008C7A0 10580000 */  mfhi       $t3
/* 47CBCD4 8008C7A4 01000626 */  addiu      $a2, $s0, 0x1
/* 47CBCD8 8008C7A8 00000000 */  nop
/* 47CBCDC 8008C7AC 1800C800 */  mult       $a2, $t0
/* 47CBCE0 8008C7B0 0100B526 */  addiu      $s5, $s5, 0x1
/* 47CBCE4 8008C7B4 09000426 */  addiu      $a0, $s0, 0x9
/* 47CBCE8 8008C7B8 08000526 */  addiu      $a1, $s0, 0x8
/* 47CBCEC 8008C7BC C31F1000 */  sra        $v1, $s0, 31
/* 47CBCF0 8008C7C0 10500000 */  mfhi       $t2
/* 47CBCF4 8008C7C4 0000F0A0 */  sb         $s0, 0x0($a3)
/* 47CBCF8 8008C7C8 0100E6A0 */  sb         $a2, 0x1($a3)
/* 47CBCFC 8008C7CC 18008800 */  mult       $a0, $t0
/* 47CBD00 8008C7D0 0200E4A0 */  sb         $a0, 0x2($a3)
/* 47CBD04 8008C7D4 0300E5A0 */  sb         $a1, 0x3($a3)
/* 47CBD08 8008C7D8 23186301 */  subu       $v1, $t3, $v1
/* 47CBD0C 8008C7DC 40100300 */  sll        $v0, $v1, 1
/* 47CBD10 8008C7E0 21104300 */  addu       $v0, $v0, $v1
/* 47CBD14 8008C7E4 23100202 */  subu       $v0, $s0, $v0
/* 47CBD18 8008C7E8 2180C000 */  addu       $s0, $a2, $zero
/* 47CBD1C 8008C7EC 0100422C */  sltiu      $v0, $v0, 0x1
/* 47CBD20 8008C7F0 C31F1000 */  sra        $v1, $s0, 31
/* 47CBD24 8008C7F4 0400E2A0 */  sb         $v0, 0x4($a3)
/* 47CBD28 8008C7F8 23184301 */  subu       $v1, $t2, $v1
/* 47CBD2C 8008C7FC 10480000 */  mfhi       $t1
/* 47CBD30 8008C800 40100300 */  sll        $v0, $v1, 1
/* 47CBD34 8008C804 21104300 */  addu       $v0, $v0, $v1
/* 47CBD38 8008C808 1800A800 */  mult       $a1, $t0
/* 47CBD3C 8008C80C 23100202 */  subu       $v0, $s0, $v0
/* 47CBD40 8008C810 0100422C */  sltiu      $v0, $v0, 0x1
/* 47CBD44 8008C814 C31F0400 */  sra        $v1, $a0, 31
/* 47CBD48 8008C818 0500E2A0 */  sb         $v0, 0x5($a3)
/* 47CBD4C 8008C81C 23182301 */  subu       $v1, $t1, $v1
/* 47CBD50 8008C820 40100300 */  sll        $v0, $v1, 1
/* 47CBD54 8008C824 21104300 */  addu       $v0, $v0, $v1
/* 47CBD58 8008C828 23208200 */  subu       $a0, $a0, $v0
/* 47CBD5C 8008C82C 0100842C */  sltiu      $a0, $a0, 0x1
/* 47CBD60 8008C830 C31F0500 */  sra        $v1, $a1, 31
/* 47CBD64 8008C834 0600E4A0 */  sb         $a0, 0x6($a3)
/* 47CBD68 8008C838 10500000 */  mfhi       $t2
/* 47CBD6C 8008C83C 23184301 */  subu       $v1, $t2, $v1
/* 47CBD70 8008C840 40100300 */  sll        $v0, $v1, 1
/* 47CBD74 8008C844 21104300 */  addu       $v0, $v0, $v1
/* 47CBD78 8008C848 2328A200 */  subu       $a1, $a1, $v0
/* 47CBD7C 8008C84C 0100A52C */  sltiu      $a1, $a1, 0x1
/* 47CBD80 8008C850 0700A22A */  slti       $v0, $s5, 0x7
/* 47CBD84 8008C854 03004014 */  bnez       $v0, .Llevel_14_8008C864
/* 47CBD88 8008C858 0700E5A0 */   sb        $a1, 0x7($a3)
/* 47CBD8C 8008C85C 01001026 */  addiu      $s0, $s0, 0x1
/* 47CBD90 8008C860 21A80000 */  addu       $s5, $zero, $zero
.Llevel_14_8008C864:
/* 47CBD94 8008C864 0100D626 */  addiu      $s6, $s6, 0x1
/* 47CBD98 8008C868 6900C22A */  slti       $v0, $s6, 0x69
/* 47CBD9C 8008C86C CBFF4014 */  bnez       $v0, .Llevel_14_8008C79C
/* 47CBDA0 8008C870 0800E724 */   addiu     $a3, $a3, 0x8
/* 47CBDA4 8008C874 4800AF8F */  lw         $t7, 0x48($sp)
/* 47CBDA8 8008C878 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 47CBDAC 8008C87C 4803E2AD */  sw         $v0, 0x348($t7)
/* 47CBDB0 8008C880 3800AF8F */  lw         $t7, 0x38($sp)
/* 47CBDB4 8008C884 00000000 */  nop
/* 47CBDB8 8008C888 0800E28D */  lw         $v0, 0x8($t7)
/* 47CBDBC 8008C88C 00000000 */  nop
/* 47CBDC0 8008C890 0B004014 */  bnez       $v0, .Llevel_14_8008C8C0
/* 47CBDC4 8008C894 2120C001 */   addu      $a0, $t6, $zero
/* 47CBDC8 8008C898 2128E002 */  addu       $a1, $s7, $zero
/* 47CBDCC 8008C89C 4800A68F */  lw         $a2, 0x48($sp)
/* 47CBDD0 8008C8A0 4000AF8F */  lw         $t7, 0x40($sp)
/* 47CBDD4 8008C8A4 01000224 */  addiu      $v0, $zero, 0x1
/* 47CBDD8 8008C8A8 1000A2AF */  sw         $v0, 0x10($sp)
/* 47CBDDC 8008C8AC C042010C */  jal        func_80050B00
/* 47CBDE0 8008C8B0 0C00E725 */   addiu     $a3, $t7, 0xC
/* 47CBDE4 8008C8B4 3800AF8F */  lw         $t7, 0x38($sp)
/* 47CBDE8 8008C8B8 00000000 */  nop
/* 47CBDEC 8008C8BC 0800E2AD */  sw         $v0, 0x8($t7)
.Llevel_14_8008C8C0:
/* 47CBDF0 8008C8C0 4800C393 */  lbu        $v1, 0x48($fp)
/* 47CBDF4 8008C8C4 14000224 */  addiu      $v0, $zero, 0x14
/* 47CBDF8 8008C8C8 44006210 */  beq        $v1, $v0, .Llevel_14_8008C9DC
/* 47CBDFC 8008C8CC 00000000 */   nop
/* 47CBE00 8008C8D0 3800AF8F */  lw         $t7, 0x38($sp)
/* 47CBE04 8008C8D4 00000000 */  nop
/* 47CBE08 8008C8D8 1400E285 */  lh         $v0, 0x14($t7)
/* 47CBE0C 8008C8DC 00000000 */  nop
/* 47CBE10 8008C8E0 80180200 */  sll        $v1, $v0, 2
/* 47CBE14 8008C8E4 21206200 */  addu       $a0, $v1, $v0
/* 47CBE18 8008C8E8 07004228 */  slti       $v0, $v0, 0x7
/* 47CBE1C 8008C8EC 03004014 */  bnez       $v0, .Llevel_14_8008C8FC
/* 47CBE20 8008C8F0 50000324 */   addiu     $v1, $zero, 0x50
/* 47CBE24 8008C8F4 77320208 */  j          .Llevel_14_8008C9DC
/* 47CBE28 8008C8F8 0C00E0AD */   sw        $zero, 0xC($t7)
.Llevel_14_8008C8FC:
/* 47CBE2C 8008C8FC C0200400 */  sll        $a0, $a0, 3
/* 47CBE30 8008C900 1800A0AF */  sw         $zero, 0x18($sp)
/* 47CBE34 8008C904 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 47CBE38 8008C908 2000A3AF */  sw         $v1, 0x20($sp)
/* 47CBE3C 8008C90C 0680013C */  lui        $at, %hi(D_800658A0)
/* 47CBE40 8008C910 21082400 */  addu       $at, $at, $a0
/* 47CBE44 8008C914 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 47CBE48 8008C918 00000000 */  nop
/* 47CBE4C 8008C91C 18004300 */  mult       $v0, $v1
/* 47CBE50 8008C920 12400000 */  mflo       $t0
/* 47CBE54 8008C924 0680013C */  lui        $at, %hi(D_80065920)
/* 47CBE58 8008C928 21082400 */  addu       $at, $at, $a0
/* 47CBE5C 8008C92C 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 47CBE60 8008C930 00000000 */  nop
/* 47CBE64 8008C934 18004300 */  mult       $v0, $v1
/* 47CBE68 8008C938 04000524 */  addiu      $a1, $zero, 0x4
/* 47CBE6C 8008C93C 2120C003 */  addu       $a0, $fp, $zero
/* 47CBE70 8008C940 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 47CBE74 8008C944 031B0800 */  sra        $v1, $t0, 12
/* 47CBE78 8008C948 23100300 */  negu       $v0, $v1
/* 47CBE7C 8008C94C 2800A2AF */  sw         $v0, 0x28($sp)
/* 47CBE80 8008C950 12300000 */  mflo       $a2
/* 47CBE84 8008C954 031B0600 */  sra        $v1, $a2, 12
/* 47CBE88 8008C958 4957010C */  jal        func_80055D24
/* 47CBE8C 8008C95C 3000A3AF */   sw        $v1, 0x30($sp)
/* 47CBE90 8008C960 2000C427 */  addiu      $a0, $fp, 0x20
/* 47CBE94 8008C964 2800B027 */  addiu      $s0, $sp, 0x28
/* 47CBE98 8008C968 21280002 */  addu       $a1, $s0, $zero
/* 47CBE9C 8008C96C 5B3B010C */  jal        func_8004ED6C
/* 47CBEA0 8008C970 21300002 */   addu      $a2, $s0, $zero
/* 47CBEA4 8008C974 01000424 */  addiu      $a0, $zero, 0x1
/* 47CBEA8 8008C978 0D000524 */  addiu      $a1, $zero, 0xD
/* 47CBEAC 8008C97C 0C00C627 */  addiu      $a2, $fp, 0xC
/* 47CBEB0 8008C980 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 47CBEB4 8008C984 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 47CBEB8 8008C988 00000000 */  nop
/* 47CBEBC 8008C98C 09F84000 */  jalr       $v0
/* 47CBEC0 8008C990 21380002 */   addu      $a3, $s0, $zero
/* 47CBEC4 8008C994 3800AF8F */  lw         $t7, 0x38($sp)
/* 47CBEC8 8008C998 00000000 */  nop
/* 47CBECC 8008C99C 0C00E38D */  lw         $v1, 0xC($t7)
/* 47CBED0 8008C9A0 00000000 */  nop
/* 47CBED4 8008C9A4 05006010 */  beqz       $v1, .Llevel_14_8008C9BC
/* 47CBED8 8008C9A8 21204000 */   addu      $a0, $v0, $zero
/* 47CBEDC 8008C9AC FF000224 */  addiu      $v0, $zero, 0xFF
/* 47CBEE0 8008C9B0 0C0082A0 */  sb         $v0, 0xC($a0)
/* 47CBEE4 8008C9B4 0D0082A0 */  sb         $v0, 0xD($a0)
/* 47CBEE8 8008C9B8 0E0082A0 */  sb         $v0, 0xE($a0)
.Llevel_14_8008C9BC:
/* 47CBEEC 8008C9BC 07008010 */  beqz       $a0, .Llevel_14_8008C9DC
/* 47CBEF0 8008C9C0 BE000224 */   addiu     $v0, $zero, 0xBE
/* 47CBEF4 8008C9C4 3800AF8F */  lw         $t7, 0x38($sp)
/* 47CBEF8 8008C9C8 00000000 */  nop
/* 47CBEFC 8008C9CC 0C00E4AD */  sw         $a0, 0xC($t7)
/* 47CBF00 8008C9D0 0A0082A0 */  sb         $v0, 0xA($a0)
/* 47CBF04 8008C9D4 FF000224 */  addiu      $v0, $zero, 0xFF
/* 47CBF08 8008C9D8 0E0082A0 */  sb         $v0, 0xE($a0)
.Llevel_14_8008C9DC:
/* 47CBF0C 8008C9DC 3800AF8F */  lw         $t7, 0x38($sp)
/* 47CBF10 8008C9E0 00000000 */  nop
/* 47CBF14 8008C9E4 1400E295 */  lhu        $v0, 0x14($t7)
/* 47CBF18 8008C9E8 00000000 */  nop
/* 47CBF1C 8008C9EC 01004224 */  addiu      $v0, $v0, 0x1
/* 47CBF20 8008C9F0 1400E2A5 */  sh         $v0, 0x14($t7)
/* 47CBF24 8008C9F4 4800C393 */  lbu        $v1, 0x48($fp)
/* 47CBF28 8008C9F8 14000224 */  addiu      $v0, $zero, 0x14
/* 47CBF2C 8008C9FC 08006210 */  beq        $v1, $v0, .Llevel_14_8008CA20
/* 47CBF30 8008CA00 00000000 */   nop
/* 47CBF34 8008CA04 0000E285 */  lh         $v0, 0x0($t7)
/* 47CBF38 8008CA08 00000000 */  nop
/* 47CBF3C 8008CA0C 21184000 */  addu       $v1, $v0, $zero
/* 47CBF40 8008CA10 58024228 */  slti       $v0, $v0, 0x258
/* 47CBF44 8008CA14 02004010 */  beqz       $v0, .Llevel_14_8008CA20
/* 47CBF48 8008CA18 64006224 */   addiu     $v0, $v1, 0x64
/* 47CBF4C 8008CA1C 0000E2A5 */  sh         $v0, 0x0($t7)
.Llevel_14_8008CA20:
/* 47CBF50 8008CA20 3800AF8F */  lw         $t7, 0x38($sp)
/* 47CBF54 8008CA24 00000000 */  nop
/* 47CBF58 8008CA28 1400E485 */  lh         $a0, 0x14($t7)
/* 47CBF5C 8008CA2C 00000000 */  nop
/* 47CBF60 8008CA30 0B008228 */  slti       $v0, $a0, 0xB
/* 47CBF64 8008CA34 05004014 */  bnez       $v0, .Llevel_14_8008CA4C
/* 47CBF68 8008CA38 10008228 */   slti      $v0, $a0, 0x10
/* 47CBF6C 8008CA3C 4800C393 */  lbu        $v1, 0x48($fp)
/* 47CBF70 8008CA40 14000224 */  addiu      $v0, $zero, 0x14
/* 47CBF74 8008CA44 0E006210 */  beq        $v1, $v0, .Llevel_14_8008CA80
/* 47CBF78 8008CA48 10008228 */   slti      $v0, $a0, 0x10
.Llevel_14_8008CA4C:
/* 47CBF7C 8008CA4C 05004014 */  bnez       $v0, .Llevel_14_8008CA64
/* 47CBF80 8008CA50 14000224 */   addiu     $v0, $zero, 0x14
/* 47CBF84 8008CA54 4800C393 */  lbu        $v1, 0x48($fp)
/* 47CBF88 8008CA58 00000000 */  nop
/* 47CBF8C 8008CA5C 14006214 */  bne        $v1, $v0, .Llevel_14_8008CAB0
/* 47CBF90 8008CA60 00000000 */   nop
.Llevel_14_8008CA64:
/* 47CBF94 8008CA64 21780000 */  addu       $t7, $zero, $zero
/* 47CBF98 8008CA68 2300E011 */  beqz       $t7, .Llevel_14_8008CAF8
/* 47CBF9C 8008CA6C 14000224 */   addiu     $v0, $zero, 0x14
/* 47CBFA0 8008CA70 4800C393 */  lbu        $v1, 0x48($fp)
/* 47CBFA4 8008CA74 00000000 */  nop
/* 47CBFA8 8008CA78 0D006214 */  bne        $v1, $v0, .Llevel_14_8008CAB0
/* 47CBFAC 8008CA7C 00000000 */   nop
.Llevel_14_8008CA80:
/* 47CBFB0 8008CA80 3A00C393 */  lbu        $v1, 0x3A($fp)
/* 47CBFB4 8008CA84 00000000 */  nop
/* 47CBFB8 8008CA88 40100300 */  sll        $v0, $v1, 1
/* 47CBFBC 8008CA8C 21104300 */  addu       $v0, $v0, $v1
/* 47CBFC0 8008CA90 80100200 */  sll        $v0, $v0, 2
/* 47CBFC4 8008CA94 23104300 */  subu       $v0, $v0, $v1
/* 47CBFC8 8008CA98 0780033C */  lui        $v1, %hi(D_8006C550)
/* 47CBFCC 8008CA9C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 47CBFD0 8008CAA0 C0100200 */  sll        $v0, $v0, 3
/* 47CBFD4 8008CAA4 21104300 */  addu       $v0, $v0, $v1
/* 47CBFD8 8008CAA8 0A000324 */  addiu      $v1, $zero, 0xA
/* 47CBFDC 8008CAAC 490043A0 */  sb         $v1, 0x49($v0)
.Llevel_14_8008CAB0:
/* 47CBFE0 8008CAB0 3800AF8F */  lw         $t7, 0x38($sp)
/* 47CBFE4 8008CAB4 00000000 */  nop
/* 47CBFE8 8008CAB8 0800E48D */  lw         $a0, 0x8($t7)
/* 47CBFEC 8008CABC 00000000 */  nop
/* 47CBFF0 8008CAC0 04008010 */  beqz       $a0, .Llevel_14_8008CAD4
/* 47CBFF4 8008CAC4 00000000 */   nop
/* 47CBFF8 8008CAC8 E242010C */  jal        func_80050B88
/* 47CBFFC 8008CACC 00000000 */   nop
/* 47CC000 8008CAD0 3800AF8F */  lw         $t7, 0x38($sp)
.Llevel_14_8008CAD4:
/* 47CC004 8008CAD4 00000000 */  nop
/* 47CC008 8008CAD8 0C00E48D */  lw         $a0, 0xC($t7)
/* 47CC00C 8008CADC 00000000 */  nop
/* 47CC010 8008CAE0 03008010 */  beqz       $a0, .Llevel_14_8008CAF0
/* 47CC014 8008CAE4 00000000 */   nop
/* 47CC018 8008CAE8 E242010C */  jal        func_80050B88
/* 47CC01C 8008CAEC 00000000 */   nop
.Llevel_14_8008CAF0:
/* 47CC020 8008CAF0 C656010C */  jal        func_80055B18
/* 47CC024 8008CAF4 2120C003 */   addu      $a0, $fp, $zero
.Llevel_14_8008CAF8:
/* 47CC028 8008CAF8 B400BF8F */  lw         $ra, 0xB4($sp)
/* 47CC02C 8008CAFC B000BE8F */  lw         $fp, 0xB0($sp)
/* 47CC030 8008CB00 AC00B78F */  lw         $s7, 0xAC($sp)
/* 47CC034 8008CB04 A800B68F */  lw         $s6, 0xA8($sp)
/* 47CC038 8008CB08 A400B58F */  lw         $s5, 0xA4($sp)
/* 47CC03C 8008CB0C A000B48F */  lw         $s4, 0xA0($sp)
/* 47CC040 8008CB10 9C00B38F */  lw         $s3, 0x9C($sp)
/* 47CC044 8008CB14 9800B28F */  lw         $s2, 0x98($sp)
/* 47CC048 8008CB18 9400B18F */  lw         $s1, 0x94($sp)
/* 47CC04C 8008CB1C 9000B08F */  lw         $s0, 0x90($sp)
/* 47CC050 8008CB20 B800BD27 */  addiu      $sp, $sp, 0xB8
/* 47CC054 8008CB24 0800E003 */  jr         $ra
/* 47CC058 8008CB28 00000000 */   nop
.size MobyUpdate_1015_level_14, . - MobyUpdate_1015_level_14
