.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1015_level_23
/* 5AA73C4 8008AE94 48FFBD27 */  addiu      $sp, $sp, -0xB8
/* 5AA73C8 8008AE98 B000BEAF */  sw         $fp, 0xB0($sp)
/* 5AA73CC 8008AE9C 21F08000 */  addu       $fp, $a0, $zero
/* 5AA73D0 8008AEA0 B400BFAF */  sw         $ra, 0xB4($sp)
/* 5AA73D4 8008AEA4 AC00B7AF */  sw         $s7, 0xAC($sp)
/* 5AA73D8 8008AEA8 A800B6AF */  sw         $s6, 0xA8($sp)
/* 5AA73DC 8008AEAC A400B5AF */  sw         $s5, 0xA4($sp)
/* 5AA73E0 8008AEB0 A000B4AF */  sw         $s4, 0xA0($sp)
/* 5AA73E4 8008AEB4 9C00B3AF */  sw         $s3, 0x9C($sp)
/* 5AA73E8 8008AEB8 9800B2AF */  sw         $s2, 0x98($sp)
/* 5AA73EC 8008AEBC 9400B1AF */  sw         $s1, 0x94($sp)
/* 5AA73F0 8008AEC0 9000B0AF */  sw         $s0, 0x90($sp)
/* 5AA73F4 8008AEC4 0000CF8F */  lw         $t7, 0x0($fp)
/* 5AA73F8 8008AEC8 00000000 */  nop
/* 5AA73FC 8008AECC 3800AFAF */  sw         $t7, 0x38($sp)
/* 5AA7400 8008AED0 1000E28D */  lw         $v0, 0x10($t7)
/* 5AA7404 8008AED4 00000000 */  nop
/* 5AA7408 8008AED8 0000428C */  lw         $v0, 0x0($v0)
/* 5AA740C 8008AEDC 00000000 */  nop
/* 5AA7410 8008AEE0 4000A2AF */  sw         $v0, 0x40($sp)
/* 5AA7414 8008AEE4 4100C0A3 */  sb         $zero, 0x41($fp)
/* 5AA7418 8008AEE8 4C00C0A3 */  sb         $zero, 0x4C($fp)
/* 5AA741C 8008AEEC 4D00C0A3 */  sb         $zero, 0x4D($fp)
/* 5AA7420 8008AEF0 1400E285 */  lh         $v0, 0x14($t7)
/* 5AA7424 8008AEF4 00000000 */  nop
/* 5AA7428 8008AEF8 7F004014 */  bnez       $v0, .Llevel_23_8008B0F8
/* 5AA742C 8008AEFC 21A80000 */   addu      $s5, $zero, $zero
/* 5AA7430 8008AF00 0C00C427 */  addiu      $a0, $fp, 0xC
/* 5AA7434 8008AF04 00040524 */  addiu      $a1, $zero, 0x400
/* 5AA7438 8008AF08 A270000C */  jal        func_8001C288
/* 5AA743C 8008AF0C 07000624 */   addiu     $a2, $zero, 0x7
/* 5AA7440 8008AF10 6A004010 */  beqz       $v0, .Llevel_23_8008B0BC
/* 5AA7444 8008AF14 21300000 */   addu      $a2, $zero, $zero
/* 5AA7448 8008AF18 0780033C */  lui        $v1, %hi(D_80070328)
/* 5AA744C 8008AF1C 2803638C */  lw         $v1, %lo(D_80070328)($v1)
/* 5AA7450 8008AF20 0C00C48F */  lw         $a0, 0xC($fp)
/* 5AA7454 8008AF24 0780023C */  lui        $v0, %hi(D_80070328 + 4)
/* 5AA7458 8008AF28 2C03428C */  lw         $v0, %lo(D_80070328 + 4)($v0)
/* 5AA745C 8008AF2C 1000C58F */  lw         $a1, 0x10($fp)
/* 5AA7460 8008AF30 23206400 */  subu       $a0, $v1, $a0
/* 5AA7464 8008AF34 203A010C */  jal        func_8004E880
/* 5AA7468 8008AF38 23284500 */   subu      $a1, $v0, $a1
/* 5AA746C 8008AF3C 21284000 */  addu       $a1, $v0, $zero
/* 5AA7470 8008AF40 0780013C */  lui        $at, %hi(D_80070328 + 0x298)
/* 5AA7474 8008AF44 C00525AC */  sw         $a1, %lo(D_80070328 + 0x298)($at)
/* 5AA7478 8008AF48 4800C393 */  lbu        $v1, 0x48($fp)
/* 5AA747C 8008AF4C 14000224 */  addiu      $v0, $zero, 0x14
/* 5AA7480 8008AF50 5B006214 */  bne        $v1, $v0, .Llevel_23_8008B0C0
/* 5AA7484 8008AF54 0C00C427 */   addiu     $a0, $fp, 0xC
/* 5AA7488 8008AF58 0780033C */  lui        $v1, %hi(D_8006C5BC)
/* 5AA748C 8008AF5C BCC5638C */  lw         $v1, %lo(D_8006C5BC)($v1)
/* 5AA7490 8008AF60 2C000224 */  addiu      $v0, $zero, 0x2C
/* 5AA7494 8008AF64 2E006214 */  bne        $v1, $v0, .Llevel_23_8008B020
/* 5AA7498 8008AF68 0010023C */   lui       $v0, (0x10000400 >> 16)
/* 5AA749C 8008AF6C 0780033C */  lui        $v1, %hi(D_8006C5C8)
/* 5AA74A0 8008AF70 C8C5638C */  lw         $v1, %lo(D_8006C5C8)($v1)
/* 5AA74A4 8008AF74 02000224 */  addiu      $v0, $zero, 0x2
/* 5AA74A8 8008AF78 29006214 */  bne        $v1, $v0, .Llevel_23_8008B020
/* 5AA74AC 8008AF7C 0010023C */   lui       $v0, (0x10000400 >> 16)
/* 5AA74B0 8008AF80 0010043C */  lui        $a0, (0x10000480 >> 16)
/* 5AA74B4 8008AF84 80048434 */  ori        $a0, $a0, (0x10000480 & 0xFFFF)
/* 5AA74B8 8008AF88 0780023C */  lui        $v0, %hi(D_80070328 + 0x20C)
/* 5AA74BC 8008AF8C 3405428C */  lw         $v0, %lo(D_80070328 + 0x20C)($v0)
/* 5AA74C0 8008AF90 39000324 */  addiu      $v1, $zero, 0x39
/* 5AA74C4 8008AF94 0780013C */  lui        $at, %hi(D_80070328 + 0x23C)
/* 5AA74C8 8008AF98 640523AC */  sw         $v1, %lo(D_80070328 + 0x23C)($at)
/* 5AA74CC 8008AF9C 25104400 */  or         $v0, $v0, $a0
/* 5AA74D0 8008AFA0 40200500 */  sll        $a0, $a1, 1
/* 5AA74D4 8008AFA4 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 5AA74D8 8008AFA8 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 5AA74DC 8008AFAC 0680013C */  lui        $at, %hi(D_80065920)
/* 5AA74E0 8008AFB0 21082400 */  addu       $at, $at, $a0
/* 5AA74E4 8008AFB4 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 5AA74E8 8008AFB8 00000000 */  nop
/* 5AA74EC 8008AFBC 80100300 */  sll        $v0, $v1, 2
/* 5AA74F0 8008AFC0 21104300 */  addu       $v0, $v0, $v1
/* 5AA74F4 8008AFC4 00190200 */  sll        $v1, $v0, 4
/* 5AA74F8 8008AFC8 23186200 */  subu       $v1, $v1, $v0
/* 5AA74FC 8008AFCC 031B0300 */  sra        $v1, $v1, 12
/* 5AA7500 8008AFD0 1800A3AF */  sw         $v1, 0x18($sp)
/* 5AA7504 8008AFD4 0680013C */  lui        $at, %hi(D_800658A0)
/* 5AA7508 8008AFD8 21082400 */  addu       $at, $at, $a0
/* 5AA750C 8008AFDC A0582484 */  lh         $a0, %lo(D_800658A0)($at)
/* 5AA7510 8008AFE0 32000224 */  addiu      $v0, $zero, 0x32
/* 5AA7514 8008AFE4 2000A0AF */  sw         $zero, 0x20($sp)
/* 5AA7518 8008AFE8 0780013C */  lui        $at, %hi(D_80070328 + 0x21C)
/* 5AA751C 8008AFEC 440523AC */  sw         $v1, %lo(D_80070328 + 0x21C)($at)
/* 5AA7520 8008AFF0 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 5AA7524 8008AFF4 4C0522AC */  sw         $v0, %lo(D_80070328 + 0x224)($at)
/* 5AA7528 8008AFF8 80180400 */  sll        $v1, $a0, 2
/* 5AA752C 8008AFFC 21186400 */  addu       $v1, $v1, $a0
/* 5AA7530 8008B000 00110300 */  sll        $v0, $v1, 4
/* 5AA7534 8008B004 23104300 */  subu       $v0, $v0, $v1
/* 5AA7538 8008B008 03130200 */  sra        $v0, $v0, 12
/* 5AA753C 8008B00C 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 5AA7540 8008B010 0780013C */  lui        $at, %hi(D_80070328 + 0x220)
/* 5AA7544 8008B014 480522AC */  sw         $v0, %lo(D_80070328 + 0x220)($at)
/* 5AA7548 8008B018 302C0208 */  j          .Llevel_23_8008B0C0
/* 5AA754C 8008B01C 0C00C427 */   addiu     $a0, $fp, 0xC
.Llevel_23_8008B020:
/* 5AA7550 8008B020 0780043C */  lui        $a0, %hi(D_80070328 + 0x298)
/* 5AA7554 8008B024 C005848C */  lw         $a0, %lo(D_80070328 + 0x298)($a0)
/* 5AA7558 8008B028 00044234 */  ori        $v0, $v0, (0x10000400 & 0xFFFF)
/* 5AA755C 8008B02C 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 5AA7560 8008B030 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 5AA7564 8008B034 40200400 */  sll        $a0, $a0, 1
/* 5AA7568 8008B038 0680013C */  lui        $at, %hi(D_80065920)
/* 5AA756C 8008B03C 21082400 */  addu       $at, $at, $a0
/* 5AA7570 8008B040 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 5AA7574 8008B044 00000000 */  nop
/* 5AA7578 8008B048 80180200 */  sll        $v1, $v0, 2
/* 5AA757C 8008B04C 21186200 */  addu       $v1, $v1, $v0
/* 5AA7580 8008B050 00110300 */  sll        $v0, $v1, 4
/* 5AA7584 8008B054 23104300 */  subu       $v0, $v0, $v1
/* 5AA7588 8008B058 03130200 */  sra        $v0, $v0, 12
/* 5AA758C 8008B05C 0780013C */  lui        $at, %hi(D_80070328 + 0x21C)
/* 5AA7590 8008B060 440522AC */  sw         $v0, %lo(D_80070328 + 0x21C)($at)
/* 5AA7594 8008B064 0680013C */  lui        $at, %hi(D_800658A0)
/* 5AA7598 8008B068 21082400 */  addu       $at, $at, $a0
/* 5AA759C 8008B06C A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 5AA75A0 8008B070 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 5AA75A4 8008B074 4C0520AC */  sw         $zero, %lo(D_80070328 + 0x224)($at)
/* 5AA75A8 8008B078 80180200 */  sll        $v1, $v0, 2
/* 5AA75AC 8008B07C 21186200 */  addu       $v1, $v1, $v0
/* 5AA75B0 8008B080 00110300 */  sll        $v0, $v1, 4
/* 5AA75B4 8008B084 23104300 */  subu       $v0, $v0, $v1
/* 5AA75B8 8008B088 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 5AA75BC 8008B08C 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 5AA75C0 8008B090 03130200 */  sra        $v0, $v0, 12
/* 5AA75C4 8008B094 0780013C */  lui        $at, %hi(D_80070328 + 0x220)
/* 5AA75C8 8008B098 480522AC */  sw         $v0, %lo(D_80070328 + 0x220)($at)
/* 5AA75CC 8008B09C 1400C28F */  lw         $v0, 0x14($fp)
/* 5AA75D0 8008B0A0 00000000 */  nop
/* 5AA75D4 8008B0A4 2A104300 */  slt        $v0, $v0, $v1
/* 5AA75D8 8008B0A8 02004014 */  bnez       $v0, .Llevel_23_8008B0B4
/* 5AA75DC 8008B0AC CEFF0224 */   addiu     $v0, $zero, -0x32
/* 5AA75E0 8008B0B0 32000224 */  addiu      $v0, $zero, 0x32
.Llevel_23_8008B0B4:
/* 5AA75E4 8008B0B4 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 5AA75E8 8008B0B8 4C0522AC */  sw         $v0, %lo(D_80070328 + 0x224)($at)
.Llevel_23_8008B0BC:
/* 5AA75EC 8008B0BC 0C00C427 */  addiu      $a0, $fp, 0xC
.Llevel_23_8008B0C0:
/* 5AA75F0 8008B0C0 DC050524 */  addiu      $a1, $zero, 0x5DC
/* 5AA75F4 8008B0C4 01000624 */  addiu      $a2, $zero, 0x1
/* 5AA75F8 8008B0C8 21380000 */  addu       $a3, $zero, $zero
/* 5AA75FC 8008B0CC 0400023C */  lui        $v0, (0x40000 >> 16)
/* 5AA7600 8008B0D0 1000A2AF */  sw         $v0, 0x10($sp)
/* 5AA7604 8008B0D4 8C6E000C */  jal        func_8001BA30
/* 5AA7608 8008B0D8 1400BEAF */   sw        $fp, 0x14($sp)
/* 5AA760C 8008B0DC 05004010 */  beqz       $v0, .Llevel_23_8008B0F4
/* 5AA7610 8008B0E0 21200000 */   addu      $a0, $zero, $zero
/* 5AA7614 8008B0E4 21280000 */  addu       $a1, $zero, $zero
/* 5AA7618 8008B0E8 203A010C */  jal        func_8004E880
/* 5AA761C 8008B0EC 21300000 */   addu      $a2, $zero, $zero
/* 5AA7620 8008B0F0 5100C2A3 */  sb         $v0, 0x51($fp)
.Llevel_23_8008B0F4:
/* 5AA7624 8008B0F4 21A80000 */  addu       $s5, $zero, $zero
.Llevel_23_8008B0F8:
/* 5AA7628 8008B0F8 21980000 */  addu       $s3, $zero, $zero
/* 5AA762C 8008B0FC 01001224 */  addiu      $s2, $zero, 0x1
/* 5AA7630 8008B100 3800AF8F */  lw         $t7, 0x38($sp)
/* 5AA7634 8008B104 14000424 */  addiu      $a0, $zero, 0x14
/* 5AA7638 8008B108 0400EE8D */  lw         $t6, 0x4($t7)
/* 5AA763C 8008B10C 0200EF85 */  lh         $t7, 0x2($t7)
/* 5AA7640 8008B110 0406D725 */  addiu      $s7, $t6, 0x604
/* 5AA7644 8008B114 5800AFAF */  sw         $t7, 0x58($sp)
/* 5AA7648 8008B118 5800A397 */  lhu        $v1, 0x58($sp)
/* 5AA764C 8008B11C 4406CF25 */  addiu      $t7, $t6, 0x644
/* 5AA7650 8008B120 4800AFAF */  sw         $t7, 0x48($sp)
/* 5AA7654 8008B124 3800AF8F */  lw         $t7, 0x38($sp)
/* 5AA7658 8008B128 4800C293 */  lbu        $v0, 0x48($fp)
/* 5AA765C 8008B12C 0000EF85 */  lh         $t7, 0x0($t7)
/* 5AA7660 8008B130 0F004410 */  beq        $v0, $a0, .Llevel_23_8008B170
/* 5AA7664 8008B134 5000AFAF */   sw        $t7, 0x50($sp)
/* 5AA7668 8008B138 3800AF8F */  lw         $t7, 0x38($sp)
/* 5AA766C 8008B13C 5E016224 */  addiu      $v0, $v1, 0x15E
/* 5AA7670 8008B140 0200E2A5 */  sh         $v0, 0x2($t7)
/* 5AA7674 8008B144 4800C293 */  lbu        $v0, 0x48($fp)
/* 5AA7678 8008B148 00000000 */  nop
/* 5AA767C 8008B14C 09004410 */  beq        $v0, $a0, .Llevel_23_8008B174
/* 5AA7680 8008B150 21B00000 */   addu      $s6, $zero, $zero
/* 5AA7684 8008B154 1600E285 */  lh         $v0, 0x16($t7)
/* 5AA7688 8008B158 00000000 */  nop
/* 5AA768C 8008B15C 21184000 */  addu       $v1, $v0, $zero
/* 5AA7690 8008B160 3A074228 */  slti       $v0, $v0, 0x73A
/* 5AA7694 8008B164 03004010 */  beqz       $v0, .Llevel_23_8008B174
/* 5AA7698 8008B168 FA006224 */   addiu     $v0, $v1, 0xFA
/* 5AA769C 8008B16C 1600E2A5 */  sh         $v0, 0x16($t7)
.Llevel_23_8008B170:
/* 5AA76A0 8008B170 21B00000 */  addu       $s6, $zero, $zero
.Llevel_23_8008B174:
/* 5AA76A4 8008B174 06800D3C */  lui        $t5, %hi(D_80065920)
/* 5AA76A8 8008B178 2059AD25 */  addiu      $t5, $t5, %lo(D_80065920)
/* 5AA76AC 8008B17C 06800C3C */  lui        $t4, %hi(D_800658A0)
/* 5AA76B0 8008B180 A0588C25 */  addiu      $t4, $t4, %lo(D_800658A0)
.Llevel_23_8008B184:
/* 5AA76B4 8008B184 21800000 */  addu       $s0, $zero, $zero
/* 5AA76B8 8008B188 80001424 */  addiu      $s4, $zero, 0x80
/* 5AA76BC 8008B18C 40101500 */  sll        $v0, $s5, 1
/* 5AA76C0 8008B190 21105500 */  addu       $v0, $v0, $s5
/* 5AA76C4 8008B194 80100200 */  sll        $v0, $v0, 2
/* 5AA76C8 8008B198 21884E00 */  addu       $s1, $v0, $t6
/* 5AA76CC 8008B19C 4600C293 */  lbu        $v0, 0x46($fp)
/* 5AA76D0 8008B1A0 C0181600 */  sll        $v1, $s6, 3
/* 5AA76D4 8008B1A4 21104300 */  addu       $v0, $v0, $v1
/* 5AA76D8 8008B1A8 FF004230 */  andi       $v0, $v0, 0xFF
/* 5AA76DC 8008B1AC 40100200 */  sll        $v0, $v0, 1
/* 5AA76E0 8008B1B0 21584D00 */  addu       $t3, $v0, $t5
/* 5AA76E4 8008B1B4 21504C00 */  addu       $t2, $v0, $t4
.Llevel_23_8008B1B8:
/* 5AA76E8 8008B1B8 5000A48F */  lw         $a0, 0x50($sp)
/* 5AA76EC 8008B1BC 02006016 */  bnez       $s3, .Llevel_23_8008B1C8
/* 5AA76F0 8008B1C0 5555023C */   lui       $v0, (0x55555556 >> 16)
/* 5AA76F4 8008B1C4 5800A48F */  lw         $a0, 0x58($sp)
.Llevel_23_8008B1C8:
/* 5AA76F8 8008B1C8 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
/* 5AA76FC 8008B1CC 01006326 */  addiu      $v1, $s3, 0x1
/* 5AA7700 8008B1D0 18006200 */  mult       $v1, $v0
/* 5AA7704 8008B1D4 C3170300 */  sra        $v0, $v1, 31
/* 5AA7708 8008B1D8 10780000 */  mfhi       $t7
/* 5AA770C 8008B1DC 2398E201 */  subu       $s3, $t7, $v0
/* 5AA7710 8008B1E0 40101300 */  sll        $v0, $s3, 1
/* 5AA7714 8008B1E4 21105300 */  addu       $v0, $v0, $s3
/* 5AA7718 8008B1E8 04004016 */  bnez       $s2, .Llevel_23_8008B1FC
/* 5AA771C 8008B1EC 23986200 */   subu      $s3, $v1, $v0
/* 5AA7720 8008B1F0 3800AF8F */  lw         $t7, 0x38($sp)
/* 5AA7724 8008B1F4 00000000 */  nop
/* 5AA7728 8008B1F8 1600E485 */  lh         $a0, 0x16($t7)
.Llevel_23_8008B1FC:
/* 5AA772C 8008B1FC 21108D02 */  addu       $v0, $s4, $t5
/* 5AA7730 8008B200 1800A0AF */  sw         $zero, 0x18($sp)
/* 5AA7734 8008B204 00004284 */  lh         $v0, 0x0($v0)
/* 5AA7738 8008B208 00000000 */  nop
/* 5AA773C 8008B20C 18004400 */  mult       $v0, $a0
/* 5AA7740 8008B210 21108C02 */  addu       $v0, $s4, $t4
/* 5AA7744 8008B214 12180000 */  mflo       $v1
/* 5AA7748 8008B218 031B0300 */  sra        $v1, $v1, 12
/* 5AA774C 8008B21C 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 5AA7750 8008B220 00004284 */  lh         $v0, 0x0($v0)
/* 5AA7754 8008B224 00000000 */  nop
/* 5AA7758 8008B228 18004400 */  mult       $v0, $a0
/* 5AA775C 8008B22C 12400000 */  mflo       $t0
/* 5AA7760 8008B230 03130800 */  sra        $v0, $t0, 12
/* 5AA7764 8008B234 2000A2AF */  sw         $v0, 0x20($sp)
/* 5AA7768 8008B238 00004485 */  lh         $a0, 0x0($t2)
/* 5AA776C 8008B23C 00000000 */  nop
/* 5AA7770 8008B240 18006400 */  mult       $v1, $a0
/* 5AA7774 8008B244 01004726 */  addiu      $a3, $s2, 0x1
/* 5AA7778 8008B248 12180000 */  mflo       $v1
/* 5AA777C 8008B24C 6666023C */  lui        $v0, (0x66666667 >> 16)
/* 5AA7780 8008B250 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
/* 5AA7784 8008B254 1800E200 */  mult       $a3, $v0
/* 5AA7788 8008B258 03430300 */  sra        $t0, $v1, 12
/* 5AA778C 8008B25C 00006385 */  lh         $v1, 0x0($t3)
/* 5AA7790 8008B260 23100800 */  negu       $v0, $t0
/* 5AA7794 8008B264 000022AE */  sw         $v0, 0x0($s1)
/* 5AA7798 8008B268 10480000 */  mfhi       $t1
/* 5AA779C 8008B26C 1C00A28F */  lw         $v0, 0x1C($sp)
/* 5AA77A0 8008B270 00000000 */  nop
/* 5AA77A4 8008B274 18004300 */  mult       $v0, $v1
/* 5AA77A8 8008B278 12400000 */  mflo       $t0
/* 5AA77AC 8008B27C 1800A28F */  lw         $v0, 0x18($sp)
/* 5AA77B0 8008B280 00000000 */  nop
/* 5AA77B4 8008B284 18004400 */  mult       $v0, $a0
/* 5AA77B8 8008B288 0C00C527 */  addiu      $a1, $fp, 0xC
/* 5AA77BC 8008B28C 21302002 */  addu       $a2, $s1, $zero
/* 5AA77C0 8008B290 0100B526 */  addiu      $s5, $s5, 0x1
/* 5AA77C4 8008B294 01001026 */  addiu      $s0, $s0, 0x1
/* 5AA77C8 8008B298 20009426 */  addiu      $s4, $s4, 0x20
/* 5AA77CC 8008B29C 83180900 */  sra        $v1, $t1, 2
/* 5AA77D0 8008B2A0 21202002 */  addu       $a0, $s1, $zero
/* 5AA77D4 8008B2A4 C3170700 */  sra        $v0, $a3, 31
/* 5AA77D8 8008B2A8 23906200 */  subu       $s2, $v1, $v0
/* 5AA77DC 8008B2AC 03430800 */  sra        $t0, $t0, 12
/* 5AA77E0 8008B2B0 12C00000 */  mflo       $t8
/* 5AA77E4 8008B2B4 03131800 */  sra        $v0, $t8, 12
/* 5AA77E8 8008B2B8 21104800 */  addu       $v0, $v0, $t0
/* 5AA77EC 8008B2BC 040022AE */  sw         $v0, 0x4($s1)
/* 5AA77F0 8008B2C0 80101200 */  sll        $v0, $s2, 2
/* 5AA77F4 8008B2C4 21105200 */  addu       $v0, $v0, $s2
/* 5AA77F8 8008B2C8 40100200 */  sll        $v0, $v0, 1
/* 5AA77FC 8008B2CC 2000A38F */  lw         $v1, 0x20($sp)
/* 5AA7800 8008B2D0 2390E200 */  subu       $s2, $a3, $v0
/* 5AA7804 8008B2D4 080023AE */  sw         $v1, 0x8($s1)
/* 5AA7808 8008B2D8 7800AAAF */  sw         $t2, 0x78($sp)
/* 5AA780C 8008B2DC 7C00ABAF */  sw         $t3, 0x7C($sp)
/* 5AA7810 8008B2E0 8000ACAF */  sw         $t4, 0x80($sp)
/* 5AA7814 8008B2E4 8400ADAF */  sw         $t5, 0x84($sp)
/* 5AA7818 8008B2E8 653C010C */  jal        func_8004F194
/* 5AA781C 8008B2EC 8800AEAF */   sw        $t6, 0x88($sp)
/* 5AA7820 8008B2F0 0800022A */  slti       $v0, $s0, 0x8
/* 5AA7824 8008B2F4 7800AA8F */  lw         $t2, 0x78($sp)
/* 5AA7828 8008B2F8 7C00AB8F */  lw         $t3, 0x7C($sp)
/* 5AA782C 8008B2FC 8000AC8F */  lw         $t4, 0x80($sp)
/* 5AA7830 8008B300 8400AD8F */  lw         $t5, 0x84($sp)
/* 5AA7834 8008B304 8800AE8F */  lw         $t6, 0x88($sp)
/* 5AA7838 8008B308 ABFF4014 */  bnez       $v0, .Llevel_23_8008B1B8
/* 5AA783C 8008B30C 0C003126 */   addiu     $s1, $s1, 0xC
/* 5AA7840 8008B310 0100D626 */  addiu      $s6, $s6, 0x1
/* 5AA7844 8008B314 1000C22A */  slti       $v0, $s6, 0x10
/* 5AA7848 8008B318 9AFF4014 */  bnez       $v0, .Llevel_23_8008B184
/* 5AA784C 8008B31C FFFF0224 */   addiu     $v0, $zero, -0x1
/* 5AA7850 8008B320 0006C2AD */  sw         $v0, 0x600($t6)
/* 5AA7854 8008B324 3800AF8F */  lw         $t7, 0x38($sp)
/* 5AA7858 8008B328 00000000 */  nop
/* 5AA785C 8008B32C 1400E385 */  lh         $v1, 0x14($t7)
/* 5AA7860 8008B330 00000000 */  nop
/* 5AA7864 8008B334 07006228 */  slti       $v0, $v1, 0x7
/* 5AA7868 8008B338 10004014 */  bnez       $v0, .Llevel_23_8008B37C
/* 5AA786C 8008B33C 04006228 */   slti      $v0, $v1, 0x4
/* 5AA7870 8008B340 FAFF6224 */  addiu      $v0, $v1, -0x6
/* 5AA7874 8008B344 80180200 */  sll        $v1, $v0, 2
/* 5AA7878 8008B348 21186200 */  addu       $v1, $v1, $v0
/* 5AA787C 8008B34C 40180300 */  sll        $v1, $v1, 1
/* 5AA7880 8008B350 40000224 */  addiu      $v0, $zero, 0x40
/* 5AA7884 8008B354 23104300 */  subu       $v0, $v0, $v1
/* 5AA7888 8008B358 02004104 */  bgez       $v0, .Llevel_23_8008B364
/* 5AA788C 8008B35C 00000000 */   nop
/* 5AA7890 8008B360 21100000 */  addu       $v0, $zero, $zero
.Llevel_23_8008B364:
/* 5AA7894 8008B364 0000E2A2 */  sb         $v0, 0x0($s7)
/* 5AA7898 8008B368 43100200 */  sra        $v0, $v0, 1
/* 5AA789C 8008B36C 0100E2A2 */  sb         $v0, 0x1($s7)
/* 5AA78A0 8008B370 FF004230 */  andi       $v0, $v0, 0xFF
/* 5AA78A4 8008B374 F42C0208 */  j          .Llevel_23_8008B3D0
/* 5AA78A8 8008B378 42100200 */   srl       $v0, $v0, 1
.Llevel_23_8008B37C:
/* 5AA78AC 8008B37C 09004014 */  bnez       $v0, .Llevel_23_8008B3A4
/* 5AA78B0 8008B380 80000224 */   addiu     $v0, $zero, 0x80
/* 5AA78B4 8008B384 FDFF6224 */  addiu      $v0, $v1, -0x3
/* 5AA78B8 8008B388 00110200 */  sll        $v0, $v0, 4
/* 5AA78BC 8008B38C 80000324 */  addiu      $v1, $zero, 0x80
/* 5AA78C0 8008B390 23106200 */  subu       $v0, $v1, $v0
/* 5AA78C4 8008B394 0000E2A2 */  sb         $v0, 0x0($s7)
/* 5AA78C8 8008B398 0100E2A2 */  sb         $v0, 0x1($s7)
/* 5AA78CC 8008B39C F52C0208 */  j          .Llevel_23_8008B3D4
/* 5AA78D0 8008B3A0 0200E0A2 */   sb        $zero, 0x2($s7)
.Llevel_23_8008B3A4:
/* 5AA78D4 8008B3A4 0000E2A2 */  sb         $v0, 0x0($s7)
/* 5AA78D8 8008B3A8 0100E2A2 */  sb         $v0, 0x1($s7)
/* 5AA78DC 8008B3AC 3800AF8F */  lw         $t7, 0x38($sp)
/* 5AA78E0 8008B3B0 00000000 */  nop
/* 5AA78E4 8008B3B4 1400E285 */  lh         $v0, 0x14($t7)
/* 5AA78E8 8008B3B8 80000324 */  addiu      $v1, $zero, 0x80
/* 5AA78EC 8008B3BC 40110200 */  sll        $v0, $v0, 5
/* 5AA78F0 8008B3C0 23106200 */  subu       $v0, $v1, $v0
/* 5AA78F4 8008B3C4 02004104 */  bgez       $v0, .Llevel_23_8008B3D0
/* 5AA78F8 8008B3C8 00000000 */   nop
/* 5AA78FC 8008B3CC 21100000 */  addu       $v0, $zero, $zero
.Llevel_23_8008B3D0:
/* 5AA7900 8008B3D0 0200E2A2 */  sb         $v0, 0x2($s7)
.Llevel_23_8008B3D4:
/* 5AA7904 8008B3D4 3800AF8F */  lw         $t7, 0x38($sp)
/* 5AA7908 8008B3D8 00000000 */  nop
/* 5AA790C 8008B3DC 1400E385 */  lh         $v1, 0x14($t7)
/* 5AA7910 8008B3E0 00000000 */  nop
/* 5AA7914 8008B3E4 06006228 */  slti       $v0, $v1, 0x6
/* 5AA7918 8008B3E8 04004014 */  bnez       $v0, .Llevel_23_8008B3FC
/* 5AA791C 8008B3EC FF000224 */   addiu     $v0, $zero, 0xFF
/* 5AA7920 8008B3F0 10000224 */  addiu      $v0, $zero, 0x10
/* 5AA7924 8008B3F4 23104300 */  subu       $v0, $v0, $v1
/* 5AA7928 8008B3F8 C0100200 */  sll        $v0, $v0, 3
.Llevel_23_8008B3FC:
/* 5AA792C 8008B3FC 0400E2A2 */  sb         $v0, 0x4($s7)
/* 5AA7930 8008B400 0500E2A2 */  sb         $v0, 0x5($s7)
/* 5AA7934 8008B404 0600E0A2 */  sb         $zero, 0x6($s7)
/* 5AA7938 8008B408 21800000 */  addu       $s0, $zero, $zero
/* 5AA793C 8008B40C 21A80000 */  addu       $s5, $zero, $zero
/* 5AA7940 8008B410 21B00000 */  addu       $s6, $zero, $zero
/* 5AA7944 8008B414 5555083C */  lui        $t0, (0x55555556 >> 16)
/* 5AA7948 8008B418 56550835 */  ori        $t0, $t0, (0x55555556 & 0xFFFF)
/* 5AA794C 8008B41C 4800A78F */  lw         $a3, 0x48($sp)
.Llevel_23_8008B420:
/* 5AA7950 8008B420 18000802 */  mult       $s0, $t0
/* 5AA7954 8008B424 10580000 */  mfhi       $t3
/* 5AA7958 8008B428 01000626 */  addiu      $a2, $s0, 0x1
/* 5AA795C 8008B42C 00000000 */  nop
/* 5AA7960 8008B430 1800C800 */  mult       $a2, $t0
/* 5AA7964 8008B434 0100B526 */  addiu      $s5, $s5, 0x1
/* 5AA7968 8008B438 09000426 */  addiu      $a0, $s0, 0x9
/* 5AA796C 8008B43C 08000526 */  addiu      $a1, $s0, 0x8
/* 5AA7970 8008B440 C31F1000 */  sra        $v1, $s0, 31
/* 5AA7974 8008B444 10500000 */  mfhi       $t2
/* 5AA7978 8008B448 0000F0A0 */  sb         $s0, 0x0($a3)
/* 5AA797C 8008B44C 0100E6A0 */  sb         $a2, 0x1($a3)
/* 5AA7980 8008B450 18008800 */  mult       $a0, $t0
/* 5AA7984 8008B454 0200E4A0 */  sb         $a0, 0x2($a3)
/* 5AA7988 8008B458 0300E5A0 */  sb         $a1, 0x3($a3)
/* 5AA798C 8008B45C 23186301 */  subu       $v1, $t3, $v1
/* 5AA7990 8008B460 40100300 */  sll        $v0, $v1, 1
/* 5AA7994 8008B464 21104300 */  addu       $v0, $v0, $v1
/* 5AA7998 8008B468 23100202 */  subu       $v0, $s0, $v0
/* 5AA799C 8008B46C 2180C000 */  addu       $s0, $a2, $zero
/* 5AA79A0 8008B470 0100422C */  sltiu      $v0, $v0, 0x1
/* 5AA79A4 8008B474 C31F1000 */  sra        $v1, $s0, 31
/* 5AA79A8 8008B478 0400E2A0 */  sb         $v0, 0x4($a3)
/* 5AA79AC 8008B47C 23184301 */  subu       $v1, $t2, $v1
/* 5AA79B0 8008B480 10480000 */  mfhi       $t1
/* 5AA79B4 8008B484 40100300 */  sll        $v0, $v1, 1
/* 5AA79B8 8008B488 21104300 */  addu       $v0, $v0, $v1
/* 5AA79BC 8008B48C 1800A800 */  mult       $a1, $t0
/* 5AA79C0 8008B490 23100202 */  subu       $v0, $s0, $v0
/* 5AA79C4 8008B494 0100422C */  sltiu      $v0, $v0, 0x1
/* 5AA79C8 8008B498 C31F0400 */  sra        $v1, $a0, 31
/* 5AA79CC 8008B49C 0500E2A0 */  sb         $v0, 0x5($a3)
/* 5AA79D0 8008B4A0 23182301 */  subu       $v1, $t1, $v1
/* 5AA79D4 8008B4A4 40100300 */  sll        $v0, $v1, 1
/* 5AA79D8 8008B4A8 21104300 */  addu       $v0, $v0, $v1
/* 5AA79DC 8008B4AC 23208200 */  subu       $a0, $a0, $v0
/* 5AA79E0 8008B4B0 0100842C */  sltiu      $a0, $a0, 0x1
/* 5AA79E4 8008B4B4 C31F0500 */  sra        $v1, $a1, 31
/* 5AA79E8 8008B4B8 0600E4A0 */  sb         $a0, 0x6($a3)
/* 5AA79EC 8008B4BC 10500000 */  mfhi       $t2
/* 5AA79F0 8008B4C0 23184301 */  subu       $v1, $t2, $v1
/* 5AA79F4 8008B4C4 40100300 */  sll        $v0, $v1, 1
/* 5AA79F8 8008B4C8 21104300 */  addu       $v0, $v0, $v1
/* 5AA79FC 8008B4CC 2328A200 */  subu       $a1, $a1, $v0
/* 5AA7A00 8008B4D0 0100A52C */  sltiu      $a1, $a1, 0x1
/* 5AA7A04 8008B4D4 0700A22A */  slti       $v0, $s5, 0x7
/* 5AA7A08 8008B4D8 03004014 */  bnez       $v0, .Llevel_23_8008B4E8
/* 5AA7A0C 8008B4DC 0700E5A0 */   sb        $a1, 0x7($a3)
/* 5AA7A10 8008B4E0 01001026 */  addiu      $s0, $s0, 0x1
/* 5AA7A14 8008B4E4 21A80000 */  addu       $s5, $zero, $zero
.Llevel_23_8008B4E8:
/* 5AA7A18 8008B4E8 0100D626 */  addiu      $s6, $s6, 0x1
/* 5AA7A1C 8008B4EC 6900C22A */  slti       $v0, $s6, 0x69
/* 5AA7A20 8008B4F0 CBFF4014 */  bnez       $v0, .Llevel_23_8008B420
/* 5AA7A24 8008B4F4 0800E724 */   addiu     $a3, $a3, 0x8
/* 5AA7A28 8008B4F8 4800AF8F */  lw         $t7, 0x48($sp)
/* 5AA7A2C 8008B4FC FFFF0224 */  addiu      $v0, $zero, -0x1
/* 5AA7A30 8008B500 4803E2AD */  sw         $v0, 0x348($t7)
/* 5AA7A34 8008B504 3800AF8F */  lw         $t7, 0x38($sp)
/* 5AA7A38 8008B508 00000000 */  nop
/* 5AA7A3C 8008B50C 0800E28D */  lw         $v0, 0x8($t7)
/* 5AA7A40 8008B510 00000000 */  nop
/* 5AA7A44 8008B514 0B004014 */  bnez       $v0, .Llevel_23_8008B544
/* 5AA7A48 8008B518 2120C001 */   addu      $a0, $t6, $zero
/* 5AA7A4C 8008B51C 2128E002 */  addu       $a1, $s7, $zero
/* 5AA7A50 8008B520 4800A68F */  lw         $a2, 0x48($sp)
/* 5AA7A54 8008B524 4000AF8F */  lw         $t7, 0x40($sp)
/* 5AA7A58 8008B528 01000224 */  addiu      $v0, $zero, 0x1
/* 5AA7A5C 8008B52C 1000A2AF */  sw         $v0, 0x10($sp)
/* 5AA7A60 8008B530 C042010C */  jal        func_80050B00
/* 5AA7A64 8008B534 0C00E725 */   addiu     $a3, $t7, 0xC
/* 5AA7A68 8008B538 3800AF8F */  lw         $t7, 0x38($sp)
/* 5AA7A6C 8008B53C 00000000 */  nop
/* 5AA7A70 8008B540 0800E2AD */  sw         $v0, 0x8($t7)
.Llevel_23_8008B544:
/* 5AA7A74 8008B544 4800C393 */  lbu        $v1, 0x48($fp)
/* 5AA7A78 8008B548 14000224 */  addiu      $v0, $zero, 0x14
/* 5AA7A7C 8008B54C 44006210 */  beq        $v1, $v0, .Llevel_23_8008B660
/* 5AA7A80 8008B550 00000000 */   nop
/* 5AA7A84 8008B554 3800AF8F */  lw         $t7, 0x38($sp)
/* 5AA7A88 8008B558 00000000 */  nop
/* 5AA7A8C 8008B55C 1400E285 */  lh         $v0, 0x14($t7)
/* 5AA7A90 8008B560 00000000 */  nop
/* 5AA7A94 8008B564 80180200 */  sll        $v1, $v0, 2
/* 5AA7A98 8008B568 21206200 */  addu       $a0, $v1, $v0
/* 5AA7A9C 8008B56C 07004228 */  slti       $v0, $v0, 0x7
/* 5AA7AA0 8008B570 03004014 */  bnez       $v0, .Llevel_23_8008B580
/* 5AA7AA4 8008B574 50000324 */   addiu     $v1, $zero, 0x50
/* 5AA7AA8 8008B578 982D0208 */  j          .Llevel_23_8008B660
/* 5AA7AAC 8008B57C 0C00E0AD */   sw        $zero, 0xC($t7)
.Llevel_23_8008B580:
/* 5AA7AB0 8008B580 C0200400 */  sll        $a0, $a0, 3
/* 5AA7AB4 8008B584 1800A0AF */  sw         $zero, 0x18($sp)
/* 5AA7AB8 8008B588 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 5AA7ABC 8008B58C 2000A3AF */  sw         $v1, 0x20($sp)
/* 5AA7AC0 8008B590 0680013C */  lui        $at, %hi(D_800658A0)
/* 5AA7AC4 8008B594 21082400 */  addu       $at, $at, $a0
/* 5AA7AC8 8008B598 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 5AA7ACC 8008B59C 00000000 */  nop
/* 5AA7AD0 8008B5A0 18004300 */  mult       $v0, $v1
/* 5AA7AD4 8008B5A4 12400000 */  mflo       $t0
/* 5AA7AD8 8008B5A8 0680013C */  lui        $at, %hi(D_80065920)
/* 5AA7ADC 8008B5AC 21082400 */  addu       $at, $at, $a0
/* 5AA7AE0 8008B5B0 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 5AA7AE4 8008B5B4 00000000 */  nop
/* 5AA7AE8 8008B5B8 18004300 */  mult       $v0, $v1
/* 5AA7AEC 8008B5BC 04000524 */  addiu      $a1, $zero, 0x4
/* 5AA7AF0 8008B5C0 2120C003 */  addu       $a0, $fp, $zero
/* 5AA7AF4 8008B5C4 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 5AA7AF8 8008B5C8 031B0800 */  sra        $v1, $t0, 12
/* 5AA7AFC 8008B5CC 23100300 */  negu       $v0, $v1
/* 5AA7B00 8008B5D0 2800A2AF */  sw         $v0, 0x28($sp)
/* 5AA7B04 8008B5D4 12300000 */  mflo       $a2
/* 5AA7B08 8008B5D8 031B0600 */  sra        $v1, $a2, 12
/* 5AA7B0C 8008B5DC 4957010C */  jal        func_80055D24
/* 5AA7B10 8008B5E0 3000A3AF */   sw        $v1, 0x30($sp)
/* 5AA7B14 8008B5E4 2000C427 */  addiu      $a0, $fp, 0x20
/* 5AA7B18 8008B5E8 2800B027 */  addiu      $s0, $sp, 0x28
/* 5AA7B1C 8008B5EC 21280002 */  addu       $a1, $s0, $zero
/* 5AA7B20 8008B5F0 5B3B010C */  jal        func_8004ED6C
/* 5AA7B24 8008B5F4 21300002 */   addu      $a2, $s0, $zero
/* 5AA7B28 8008B5F8 01000424 */  addiu      $a0, $zero, 0x1
/* 5AA7B2C 8008B5FC 0D000524 */  addiu      $a1, $zero, 0xD
/* 5AA7B30 8008B600 0C00C627 */  addiu      $a2, $fp, 0xC
/* 5AA7B34 8008B604 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 5AA7B38 8008B608 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 5AA7B3C 8008B60C 00000000 */  nop
/* 5AA7B40 8008B610 09F84000 */  jalr       $v0
/* 5AA7B44 8008B614 21380002 */   addu      $a3, $s0, $zero
/* 5AA7B48 8008B618 3800AF8F */  lw         $t7, 0x38($sp)
/* 5AA7B4C 8008B61C 00000000 */  nop
/* 5AA7B50 8008B620 0C00E38D */  lw         $v1, 0xC($t7)
/* 5AA7B54 8008B624 00000000 */  nop
/* 5AA7B58 8008B628 05006010 */  beqz       $v1, .Llevel_23_8008B640
/* 5AA7B5C 8008B62C 21204000 */   addu      $a0, $v0, $zero
/* 5AA7B60 8008B630 FF000224 */  addiu      $v0, $zero, 0xFF
/* 5AA7B64 8008B634 0C0082A0 */  sb         $v0, 0xC($a0)
/* 5AA7B68 8008B638 0D0082A0 */  sb         $v0, 0xD($a0)
/* 5AA7B6C 8008B63C 0E0082A0 */  sb         $v0, 0xE($a0)
.Llevel_23_8008B640:
/* 5AA7B70 8008B640 07008010 */  beqz       $a0, .Llevel_23_8008B660
/* 5AA7B74 8008B644 BE000224 */   addiu     $v0, $zero, 0xBE
/* 5AA7B78 8008B648 3800AF8F */  lw         $t7, 0x38($sp)
/* 5AA7B7C 8008B64C 00000000 */  nop
/* 5AA7B80 8008B650 0C00E4AD */  sw         $a0, 0xC($t7)
/* 5AA7B84 8008B654 0A0082A0 */  sb         $v0, 0xA($a0)
/* 5AA7B88 8008B658 FF000224 */  addiu      $v0, $zero, 0xFF
/* 5AA7B8C 8008B65C 0E0082A0 */  sb         $v0, 0xE($a0)
.Llevel_23_8008B660:
/* 5AA7B90 8008B660 3800AF8F */  lw         $t7, 0x38($sp)
/* 5AA7B94 8008B664 00000000 */  nop
/* 5AA7B98 8008B668 1400E295 */  lhu        $v0, 0x14($t7)
/* 5AA7B9C 8008B66C 00000000 */  nop
/* 5AA7BA0 8008B670 01004224 */  addiu      $v0, $v0, 0x1
/* 5AA7BA4 8008B674 1400E2A5 */  sh         $v0, 0x14($t7)
/* 5AA7BA8 8008B678 4800C393 */  lbu        $v1, 0x48($fp)
/* 5AA7BAC 8008B67C 14000224 */  addiu      $v0, $zero, 0x14
/* 5AA7BB0 8008B680 08006210 */  beq        $v1, $v0, .Llevel_23_8008B6A4
/* 5AA7BB4 8008B684 00000000 */   nop
/* 5AA7BB8 8008B688 0000E285 */  lh         $v0, 0x0($t7)
/* 5AA7BBC 8008B68C 00000000 */  nop
/* 5AA7BC0 8008B690 21184000 */  addu       $v1, $v0, $zero
/* 5AA7BC4 8008B694 58024228 */  slti       $v0, $v0, 0x258
/* 5AA7BC8 8008B698 02004010 */  beqz       $v0, .Llevel_23_8008B6A4
/* 5AA7BCC 8008B69C 64006224 */   addiu     $v0, $v1, 0x64
/* 5AA7BD0 8008B6A0 0000E2A5 */  sh         $v0, 0x0($t7)
.Llevel_23_8008B6A4:
/* 5AA7BD4 8008B6A4 3800AF8F */  lw         $t7, 0x38($sp)
/* 5AA7BD8 8008B6A8 00000000 */  nop
/* 5AA7BDC 8008B6AC 1400E485 */  lh         $a0, 0x14($t7)
/* 5AA7BE0 8008B6B0 00000000 */  nop
/* 5AA7BE4 8008B6B4 0B008228 */  slti       $v0, $a0, 0xB
/* 5AA7BE8 8008B6B8 05004014 */  bnez       $v0, .Llevel_23_8008B6D0
/* 5AA7BEC 8008B6BC 10008228 */   slti      $v0, $a0, 0x10
/* 5AA7BF0 8008B6C0 4800C393 */  lbu        $v1, 0x48($fp)
/* 5AA7BF4 8008B6C4 14000224 */  addiu      $v0, $zero, 0x14
/* 5AA7BF8 8008B6C8 0E006210 */  beq        $v1, $v0, .Llevel_23_8008B704
/* 5AA7BFC 8008B6CC 10008228 */   slti      $v0, $a0, 0x10
.Llevel_23_8008B6D0:
/* 5AA7C00 8008B6D0 05004014 */  bnez       $v0, .Llevel_23_8008B6E8
/* 5AA7C04 8008B6D4 14000224 */   addiu     $v0, $zero, 0x14
/* 5AA7C08 8008B6D8 4800C393 */  lbu        $v1, 0x48($fp)
/* 5AA7C0C 8008B6DC 00000000 */  nop
/* 5AA7C10 8008B6E0 14006214 */  bne        $v1, $v0, .Llevel_23_8008B734
/* 5AA7C14 8008B6E4 00000000 */   nop
.Llevel_23_8008B6E8:
/* 5AA7C18 8008B6E8 21780000 */  addu       $t7, $zero, $zero
/* 5AA7C1C 8008B6EC 2300E011 */  beqz       $t7, .Llevel_23_8008B77C
/* 5AA7C20 8008B6F0 14000224 */   addiu     $v0, $zero, 0x14
/* 5AA7C24 8008B6F4 4800C393 */  lbu        $v1, 0x48($fp)
/* 5AA7C28 8008B6F8 00000000 */  nop
/* 5AA7C2C 8008B6FC 0D006214 */  bne        $v1, $v0, .Llevel_23_8008B734
/* 5AA7C30 8008B700 00000000 */   nop
.Llevel_23_8008B704:
/* 5AA7C34 8008B704 3A00C393 */  lbu        $v1, 0x3A($fp)
/* 5AA7C38 8008B708 00000000 */  nop
/* 5AA7C3C 8008B70C 40100300 */  sll        $v0, $v1, 1
/* 5AA7C40 8008B710 21104300 */  addu       $v0, $v0, $v1
/* 5AA7C44 8008B714 80100200 */  sll        $v0, $v0, 2
/* 5AA7C48 8008B718 23104300 */  subu       $v0, $v0, $v1
/* 5AA7C4C 8008B71C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 5AA7C50 8008B720 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 5AA7C54 8008B724 C0100200 */  sll        $v0, $v0, 3
/* 5AA7C58 8008B728 21104300 */  addu       $v0, $v0, $v1
/* 5AA7C5C 8008B72C 0A000324 */  addiu      $v1, $zero, 0xA
/* 5AA7C60 8008B730 490043A0 */  sb         $v1, 0x49($v0)
.Llevel_23_8008B734:
/* 5AA7C64 8008B734 3800AF8F */  lw         $t7, 0x38($sp)
/* 5AA7C68 8008B738 00000000 */  nop
/* 5AA7C6C 8008B73C 0800E48D */  lw         $a0, 0x8($t7)
/* 5AA7C70 8008B740 00000000 */  nop
/* 5AA7C74 8008B744 04008010 */  beqz       $a0, .Llevel_23_8008B758
/* 5AA7C78 8008B748 00000000 */   nop
/* 5AA7C7C 8008B74C E242010C */  jal        func_80050B88
/* 5AA7C80 8008B750 00000000 */   nop
/* 5AA7C84 8008B754 3800AF8F */  lw         $t7, 0x38($sp)
.Llevel_23_8008B758:
/* 5AA7C88 8008B758 00000000 */  nop
/* 5AA7C8C 8008B75C 0C00E48D */  lw         $a0, 0xC($t7)
/* 5AA7C90 8008B760 00000000 */  nop
/* 5AA7C94 8008B764 03008010 */  beqz       $a0, .Llevel_23_8008B774
/* 5AA7C98 8008B768 00000000 */   nop
/* 5AA7C9C 8008B76C E242010C */  jal        func_80050B88
/* 5AA7CA0 8008B770 00000000 */   nop
.Llevel_23_8008B774:
/* 5AA7CA4 8008B774 C656010C */  jal        func_80055B18
/* 5AA7CA8 8008B778 2120C003 */   addu      $a0, $fp, $zero
.Llevel_23_8008B77C:
/* 5AA7CAC 8008B77C B400BF8F */  lw         $ra, 0xB4($sp)
/* 5AA7CB0 8008B780 B000BE8F */  lw         $fp, 0xB0($sp)
/* 5AA7CB4 8008B784 AC00B78F */  lw         $s7, 0xAC($sp)
/* 5AA7CB8 8008B788 A800B68F */  lw         $s6, 0xA8($sp)
/* 5AA7CBC 8008B78C A400B58F */  lw         $s5, 0xA4($sp)
/* 5AA7CC0 8008B790 A000B48F */  lw         $s4, 0xA0($sp)
/* 5AA7CC4 8008B794 9C00B38F */  lw         $s3, 0x9C($sp)
/* 5AA7CC8 8008B798 9800B28F */  lw         $s2, 0x98($sp)
/* 5AA7CCC 8008B79C 9400B18F */  lw         $s1, 0x94($sp)
/* 5AA7CD0 8008B7A0 9000B08F */  lw         $s0, 0x90($sp)
/* 5AA7CD4 8008B7A4 B800BD27 */  addiu      $sp, $sp, 0xB8
/* 5AA7CD8 8008B7A8 0800E003 */  jr         $ra
/* 5AA7CDC 8008B7AC 00000000 */   nop
.size MobyUpdate_1015_level_23, . - MobyUpdate_1015_level_23
