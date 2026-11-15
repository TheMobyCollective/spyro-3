.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_147_level_36
/* 78DD408 8007CED8 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 78DD40C 8007CEDC 4C00B3AF */  sw         $s3, 0x4C($sp)
/* 78DD410 8007CEE0 21988000 */  addu       $s3, $a0, $zero
/* 78DD414 8007CEE4 01000224 */  addiu      $v0, $zero, 0x1
/* 78DD418 8007CEE8 6400BFAF */  sw         $ra, 0x64($sp)
/* 78DD41C 8007CEEC 6000BEAF */  sw         $fp, 0x60($sp)
/* 78DD420 8007CEF0 5C00B7AF */  sw         $s7, 0x5C($sp)
/* 78DD424 8007CEF4 5800B6AF */  sw         $s6, 0x58($sp)
/* 78DD428 8007CEF8 5400B5AF */  sw         $s5, 0x54($sp)
/* 78DD42C 8007CEFC 5000B4AF */  sw         $s4, 0x50($sp)
/* 78DD430 8007CF00 4800B2AF */  sw         $s2, 0x48($sp)
/* 78DD434 8007CF04 4400B1AF */  sw         $s1, 0x44($sp)
/* 78DD438 8007CF08 4000B0AF */  sw         $s0, 0x40($sp)
/* 78DD43C 8007CF0C 48006392 */  lbu        $v1, 0x48($s3)
/* 78DD440 8007CF10 0000768E */  lw         $s6, 0x0($s3)
/* 78DD444 8007CF14 AE006210 */  beq        $v1, $v0, .Llevel_36_8007D1D0
/* 78DD448 8007CF18 02006228 */   slti      $v0, $v1, 0x2
/* 78DD44C 8007CF1C 05004010 */  beqz       $v0, .Llevel_36_8007CF34
/* 78DD450 8007CF20 00000000 */   nop
/* 78DD454 8007CF24 0A006010 */  beqz       $v1, .Llevel_36_8007CF50
/* 78DD458 8007CF28 21280000 */   addu      $a1, $zero, $zero
/* 78DD45C 8007CF2C E3F40108 */  j          .Llevel_36_8007D38C
/* 78DD460 8007CF30 00000000 */   nop
.Llevel_36_8007CF34:
/* 78DD464 8007CF34 02000224 */  addiu      $v0, $zero, 0x2
/* 78DD468 8007CF38 0A006210 */  beq        $v1, $v0, .Llevel_36_8007CF64
/* 78DD46C 8007CF3C 03000224 */   addiu     $v0, $zero, 0x3
/* 78DD470 8007CF40 09016210 */  beq        $v1, $v0, .Llevel_36_8007D368
/* 78DD474 8007CF44 0C000424 */   addiu     $a0, $zero, 0xC
/* 78DD478 8007CF48 E3F40108 */  j          .Llevel_36_8007D38C
/* 78DD47C 8007CF4C 00000000 */   nop
.Llevel_36_8007CF50:
/* 78DD480 8007CF50 1000C48E */  lw         $a0, 0x10($s6)
/* 78DD484 8007CF54 C557010C */  jal        func_80055F14
/* 78DD488 8007CF58 0C006626 */   addiu     $a2, $s3, 0xC
/* 78DD48C 8007CF5C E3F40108 */  j          .Llevel_36_8007D38C
/* 78DD490 8007CF60 00000000 */   nop
.Llevel_36_8007CF64:
/* 78DD494 8007CF64 01001E3C */  lui        $fp, (0x1869F >> 16)
/* 78DD498 8007CF68 9F86DE37 */  ori        $fp, $fp, (0x1869F & 0xFFFF)
/* 78DD49C 8007CF6C 0780153C */  lui        $s5, %hi(D_8006C550)
/* 78DD4A0 8007CF70 50C5B58E */  lw         $s5, %lo(D_8006C550)($s5)
/* 78DD4A4 8007CF74 0780023C */  lui        $v0, %hi(D_8006C704)
/* 78DD4A8 8007CF78 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 78DD4AC 8007CF7C 00000000 */  nop
/* 78DD4B0 8007CF80 2B10A202 */  sltu       $v0, $s5, $v0
/* 78DD4B4 8007CF84 50004010 */  beqz       $v0, .Llevel_36_8007D0C8
/* 78DD4B8 8007CF88 21B80000 */   addu      $s7, $zero, $zero
/* 78DD4BC 8007CF8C 0C006826 */  addiu      $t0, $s3, 0xC
/* 78DD4C0 8007CF90 3800A8AF */  sw         $t0, 0x38($sp)
/* 78DD4C4 8007CF94 2190A002 */  addu       $s2, $s5, $zero
.Llevel_36_8007CF98:
/* 78DD4C8 8007CF98 48004292 */  lbu        $v0, 0x48($s2)
/* 78DD4CC 8007CF9C 00000000 */  nop
/* 78DD4D0 8007CFA0 80004230 */  andi       $v0, $v0, 0x80
/* 78DD4D4 8007CFA4 42004014 */  bnez       $v0, .Llevel_36_8007D0B0
/* 78DD4D8 8007CFA8 89000224 */   addiu     $v0, $zero, 0x89
/* 78DD4DC 8007CFAC 36004386 */  lh         $v1, 0x36($s2)
/* 78DD4E0 8007CFB0 00000000 */  nop
/* 78DD4E4 8007CFB4 3E006214 */  bne        $v1, $v0, .Llevel_36_8007D0B0
/* 78DD4E8 8007CFB8 21300000 */   addu      $a2, $zero, $zero
/* 78DD4EC 8007CFBC 0C00438E */  lw         $v1, 0xC($s2)
/* 78DD4F0 8007CFC0 0C00648E */  lw         $a0, 0xC($s3)
/* 78DD4F4 8007CFC4 1000428E */  lw         $v0, 0x10($s2)
/* 78DD4F8 8007CFC8 1000658E */  lw         $a1, 0x10($s3)
/* 78DD4FC 8007CFCC 23206400 */  subu       $a0, $v1, $a0
/* 78DD500 8007CFD0 203A010C */  jal        func_8004E880
/* 78DD504 8007CFD4 23284500 */   subu      $a1, $v0, $a1
/* 78DD508 8007CFD8 0780033C */  lui        $v1, %hi(D_80070328 + 0xE)
/* 78DD50C 8007CFDC 36036390 */  lbu        $v1, %lo(D_80070328 + 0xE)($v1)
/* 78DD510 8007CFE0 00000000 */  nop
/* 78DD514 8007CFE4 23104300 */  subu       $v0, $v0, $v1
/* 78DD518 8007CFE8 FF005130 */  andi       $s1, $v0, 0xFF
/* 78DD51C 8007CFEC 8100222A */  slti       $v0, $s1, 0x81
/* 78DD520 8007CFF0 02004014 */  bnez       $v0, .Llevel_36_8007CFFC
/* 78DD524 8007CFF4 0C00B426 */   addiu     $s4, $s5, 0xC
/* 78DD528 8007CFF8 00FF3126 */  addiu      $s1, $s1, -0x100
.Llevel_36_8007CFFC:
/* 78DD52C 8007CFFC 3800A48F */  lw         $a0, 0x38($sp)
/* 78DD530 8007D000 CD3C010C */  jal        func_8004F334
/* 78DD534 8007D004 21288002 */   addu      $a1, $s4, $zero
/* 78DD538 8007D008 21204000 */  addu       $a0, $v0, $zero
/* 78DD53C 8007D00C 1400428E */  lw         $v0, 0x14($s2)
/* 78DD540 8007D010 1400658E */  lw         $a1, 0x14($s3)
/* 78DD544 8007D014 21300000 */  addu       $a2, $zero, $zero
/* 78DD548 8007D018 203A010C */  jal        func_8004E880
/* 78DD54C 8007D01C 23284500 */   subu      $a1, $v0, $a1
/* 78DD550 8007D020 0780033C */  lui        $v1, %hi(D_80070328 + 0xD)
/* 78DD554 8007D024 35036390 */  lbu        $v1, %lo(D_80070328 + 0xD)($v1)
/* 78DD558 8007D028 00000000 */  nop
/* 78DD55C 8007D02C 23104300 */  subu       $v0, $v0, $v1
/* 78DD560 8007D030 FF005030 */  andi       $s0, $v0, 0xFF
/* 78DD564 8007D034 8100022A */  slti       $v0, $s0, 0x81
/* 78DD568 8007D038 02004014 */  bnez       $v0, .Llevel_36_8007D044
/* 78DD56C 8007D03C 00000000 */   nop
/* 78DD570 8007D040 00FF1026 */  addiu      $s0, $s0, -0x100
.Llevel_36_8007D044:
/* 78DD574 8007D044 02002106 */  bgez       $s1, .Llevel_36_8007D050
/* 78DD578 8007D048 00000000 */   nop
/* 78DD57C 8007D04C 23881100 */  negu       $s1, $s1
.Llevel_36_8007D050:
/* 78DD580 8007D050 02000106 */  bgez       $s0, .Llevel_36_8007D05C
/* 78DD584 8007D054 00000000 */   nop
/* 78DD588 8007D058 23801000 */  negu       $s0, $s0
.Llevel_36_8007D05C:
/* 78DD58C 8007D05C 0C00222A */  slti       $v0, $s1, 0xC
/* 78DD590 8007D060 13004010 */  beqz       $v0, .Llevel_36_8007D0B0
/* 78DD594 8007D064 0C00022A */   slti      $v0, $s0, 0xC
/* 78DD598 8007D068 11004010 */  beqz       $v0, .Llevel_36_8007D0B0
/* 78DD59C 8007D06C 00000000 */   nop
/* 78DD5A0 8007D070 3800A48F */  lw         $a0, 0x38($sp)
/* 78DD5A4 8007D074 CD3C010C */  jal        func_8004F334
/* 78DD5A8 8007D078 21288002 */   addu      $a1, $s4, $zero
/* 78DD5AC 8007D07C 00280324 */  addiu      $v1, $zero, 0x2800
/* 78DD5B0 8007D080 23186200 */  subu       $v1, $v1, $v0
/* 78DD5B4 8007D084 02006104 */  bgez       $v1, .Llevel_36_8007D090
/* 78DD5B8 8007D088 00000000 */   nop
/* 78DD5BC 8007D08C 23180300 */  negu       $v1, $v1
.Llevel_36_8007D090:
/* 78DD5C0 8007D090 21103002 */  addu       $v0, $s1, $s0
/* 78DD5C4 8007D094 80120200 */  sll        $v0, $v0, 10
/* 78DD5C8 8007D098 21186200 */  addu       $v1, $v1, $v0
/* 78DD5CC 8007D09C 2A107E00 */  slt        $v0, $v1, $fp
/* 78DD5D0 8007D0A0 03004010 */  beqz       $v0, .Llevel_36_8007D0B0
/* 78DD5D4 8007D0A4 00000000 */   nop
/* 78DD5D8 8007D0A8 21B84002 */  addu       $s7, $s2, $zero
/* 78DD5DC 8007D0AC 21F06000 */  addu       $fp, $v1, $zero
.Llevel_36_8007D0B0:
/* 78DD5E0 8007D0B0 0780023C */  lui        $v0, %hi(D_8006C704)
/* 78DD5E4 8007D0B4 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 78DD5E8 8007D0B8 5800B526 */  addiu      $s5, $s5, 0x58
/* 78DD5EC 8007D0BC 2B10A202 */  sltu       $v0, $s5, $v0
/* 78DD5F0 8007D0C0 B5FF4014 */  bnez       $v0, .Llevel_36_8007CF98
/* 78DD5F4 8007D0C4 58005226 */   addiu     $s2, $s2, 0x58
.Llevel_36_8007D0C8:
/* 78DD5F8 8007D0C8 0100023C */  lui        $v0, (0x1869F >> 16)
/* 78DD5FC 8007D0CC 9F864234 */  ori        $v0, $v0, (0x1869F & 0xFFFF)
/* 78DD600 8007D0D0 0200C217 */  bne        $fp, $v0, .Llevel_36_8007D0DC
/* 78DD604 8007D0D4 00000000 */   nop
/* 78DD608 8007D0D8 21B80000 */  addu       $s7, $zero, $zero
.Llevel_36_8007D0DC:
/* 78DD60C 8007D0DC 2F00E012 */  beqz       $s7, .Llevel_36_8007D19C
/* 78DD610 8007D0E0 21300000 */   addu      $a2, $zero, $zero
/* 78DD614 8007D0E4 0C00E38E */  lw         $v1, 0xC($s7)
/* 78DD618 8007D0E8 0C00648E */  lw         $a0, 0xC($s3)
/* 78DD61C 8007D0EC 1000E28E */  lw         $v0, 0x10($s7)
/* 78DD620 8007D0F0 1000658E */  lw         $a1, 0x10($s3)
/* 78DD624 8007D0F4 23206400 */  subu       $a0, $v1, $a0
/* 78DD628 8007D0F8 203A010C */  jal        func_8004E880
/* 78DD62C 8007D0FC 23284500 */   subu      $a1, $v0, $a1
/* 78DD630 8007D100 40100200 */  sll        $v0, $v0, 1
/* 78DD634 8007D104 0680013C */  lui        $at, %hi(D_80065920)
/* 78DD638 8007D108 21082200 */  addu       $at, $at, $v0
/* 78DD63C 8007D10C 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 78DD640 8007D110 21300000 */  addu       $a2, $zero, $zero
/* 78DD644 8007D114 C0100300 */  sll        $v0, $v1, 3
/* 78DD648 8007D118 21104300 */  addu       $v0, $v0, $v1
/* 78DD64C 8007D11C C3110200 */  sra        $v0, $v0, 7
/* 78DD650 8007D120 0000C2AE */  sw         $v0, 0x0($s6)
/* 78DD654 8007D124 0C00E38E */  lw         $v1, 0xC($s7)
/* 78DD658 8007D128 0C00648E */  lw         $a0, 0xC($s3)
/* 78DD65C 8007D12C 1000E28E */  lw         $v0, 0x10($s7)
/* 78DD660 8007D130 1000658E */  lw         $a1, 0x10($s3)
/* 78DD664 8007D134 23206400 */  subu       $a0, $v1, $a0
/* 78DD668 8007D138 203A010C */  jal        func_8004E880
/* 78DD66C 8007D13C 23284500 */   subu      $a1, $v0, $a1
/* 78DD670 8007D140 1800A427 */  addiu      $a0, $sp, 0x18
/* 78DD674 8007D144 40100200 */  sll        $v0, $v0, 1
/* 78DD678 8007D148 0680013C */  lui        $at, %hi(D_800658A0)
/* 78DD67C 8007D14C 21082200 */  addu       $at, $at, $v0
/* 78DD680 8007D150 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 78DD684 8007D154 0C00E526 */  addiu      $a1, $s7, 0xC
/* 78DD688 8007D158 0800C0AE */  sw         $zero, 0x8($s6)
/* 78DD68C 8007D15C C0100300 */  sll        $v0, $v1, 3
/* 78DD690 8007D160 21104300 */  addu       $v0, $v0, $v1
/* 78DD694 8007D164 C3110200 */  sra        $v0, $v0, 7
/* 78DD698 8007D168 5E3C010C */  jal        func_8004F178
/* 78DD69C 8007D16C 0400C2AE */   sw        $v0, 0x4($s6)
/* 78DD6A0 8007D170 0C006426 */  addiu      $a0, $s3, 0xC
/* 78DD6A4 8007D174 1800A527 */  addiu      $a1, $sp, 0x18
/* 78DD6A8 8007D178 20010624 */  addiu      $a2, $zero, 0x120
/* 78DD6AC 8007D17C 2000A28F */  lw         $v0, 0x20($sp)
/* 78DD6B0 8007D180 F8FF0724 */  addiu      $a3, $zero, -0x8
/* 78DD6B4 8007D184 00044224 */  addiu      $v0, $v0, 0x400
/* 78DD6B8 8007D188 2000A2AF */  sw         $v0, 0x20($sp)
/* 78DD6BC 8007D18C 79D9000C */  jal        func_800365E4
/* 78DD6C0 8007D190 1000A0AF */   sw        $zero, 0x10($sp)
/* 78DD6C4 8007D194 71F40108 */  j          .Llevel_36_8007D1C4
/* 78DD6C8 8007D198 0800C2AE */   sw        $v0, 0x8($s6)
.Llevel_36_8007D19C:
/* 78DD6CC 8007D19C 0780043C */  lui        $a0, %hi(D_80070328 + 0x30)
/* 78DD6D0 8007D1A0 58038424 */  addiu      $a0, $a0, %lo(D_80070328 + 0x30)
/* 78DD6D4 8007D1A4 2128C002 */  addu       $a1, $s6, $zero
/* 78DD6D8 8007D1A8 2130C002 */  addu       $a2, $s6, $zero
/* 78DD6DC 8007D1AC 20010224 */  addiu      $v0, $zero, 0x120
/* 78DD6E0 8007D1B0 0000C2AE */  sw         $v0, 0x0($s6)
/* 78DD6E4 8007D1B4 A0000224 */  addiu      $v0, $zero, 0xA0
/* 78DD6E8 8007D1B8 0400C0AE */  sw         $zero, 0x4($s6)
/* 78DD6EC 8007D1BC 5B3B010C */  jal        func_8004ED6C
/* 78DD6F0 8007D1C0 0800C2AE */   sw        $v0, 0x8($s6)
.Llevel_36_8007D1C4:
/* 78DD6F4 8007D1C4 01000224 */  addiu      $v0, $zero, 0x1
/* 78DD6F8 8007D1C8 490062A2 */  sb         $v0, 0x49($s3)
/* 78DD6FC 8007D1CC 480062A2 */  sb         $v0, 0x48($s3)
.Llevel_36_8007D1D0:
/* 78DD700 8007D1D0 49006292 */  lbu        $v0, 0x49($s3)
/* 78DD704 8007D1D4 00000000 */  nop
/* 78DD708 8007D1D8 08004014 */  bnez       $v0, .Llevel_36_8007D1FC
/* 78DD70C 8007D1DC 0008033C */   lui       $v1, (0x8000000 >> 16)
/* 78DD710 8007D1E0 1800628E */  lw         $v0, 0x18($s3)
/* 78DD714 8007D1E4 00000000 */  nop
/* 78DD718 8007D1E8 24104300 */  and        $v0, $v0, $v1
/* 78DD71C 8007D1EC 03004010 */  beqz       $v0, .Llevel_36_8007D1FC
/* 78DD720 8007D1F0 02000224 */   addiu     $v0, $zero, 0x2
/* 78DD724 8007D1F4 E3F40108 */  j          .Llevel_36_8007D38C
/* 78DD728 8007D1F8 480062A2 */   sb        $v0, 0x48($s3)
.Llevel_36_8007D1FC:
/* 78DD72C 8007D1FC 0C00628E */  lw         $v0, 0xC($s3)
/* 78DD730 8007D200 00000000 */  nop
/* 78DD734 8007D204 00044228 */  slti       $v0, $v0, 0x400
/* 78DD738 8007D208 5E004014 */  bnez       $v0, .Llevel_36_8007D384
/* 78DD73C 8007D20C 00000000 */   nop
/* 78DD740 8007D210 1000628E */  lw         $v0, 0x10($s3)
/* 78DD744 8007D214 00000000 */  nop
/* 78DD748 8007D218 00044228 */  slti       $v0, $v0, 0x400
/* 78DD74C 8007D21C 59004014 */  bnez       $v0, .Llevel_36_8007D384
/* 78DD750 8007D220 00000000 */   nop
/* 78DD754 8007D224 1400628E */  lw         $v0, 0x14($s3)
/* 78DD758 8007D228 00000000 */  nop
/* 78DD75C 8007D22C 00044228 */  slti       $v0, $v0, 0x400
/* 78DD760 8007D230 54004014 */  bnez       $v0, .Llevel_36_8007D384
/* 78DD764 8007D234 0C00C426 */   addiu     $a0, $s6, 0xC
/* 78DD768 8007D238 69D6000C */  jal        func_800359A4
/* 78DD76C 8007D23C 04000524 */   addiu     $a1, $zero, 0x4
/* 78DD770 8007D240 50004014 */  bnez       $v0, .Llevel_36_8007D384
/* 78DD774 8007D244 2800B127 */   addiu     $s1, $sp, 0x28
/* 78DD778 8007D248 21202002 */  addu       $a0, $s1, $zero
/* 78DD77C 8007D24C 0C007026 */  addiu      $s0, $s3, 0xC
/* 78DD780 8007D250 5E3C010C */  jal        func_8004F178
/* 78DD784 8007D254 21280002 */   addu      $a1, $s0, $zero
/* 78DD788 8007D258 0800C28E */  lw         $v0, 0x8($s6)
/* 78DD78C 8007D25C 00000000 */  nop
/* 78DD790 8007D260 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 78DD794 8007D264 0800C2AE */  sw         $v0, 0x8($s6)
/* 78DD798 8007D268 10FF4228 */  slti       $v0, $v0, -0xF0
/* 78DD79C 8007D26C 02004010 */  beqz       $v0, .Llevel_36_8007D278
/* 78DD7A0 8007D270 10FF0224 */   addiu     $v0, $zero, -0xF0
/* 78DD7A4 8007D274 0800C2AE */  sw         $v0, 0x8($s6)
.Llevel_36_8007D278:
/* 78DD7A8 8007D278 21200002 */  addu       $a0, $s0, $zero
/* 78DD7AC 8007D27C 21280002 */  addu       $a1, $s0, $zero
/* 78DD7B0 8007D280 653C010C */  jal        func_8004F194
/* 78DD7B4 8007D284 2130C002 */   addu      $a2, $s6, $zero
/* 78DD7B8 8007D288 21202002 */  addu       $a0, $s1, $zero
/* 78DD7BC 8007D28C 21280002 */  addu       $a1, $s0, $zero
/* 78DD7C0 8007D290 21300000 */  addu       $a2, $zero, $zero
/* 78DD7C4 8007D294 45006292 */  lbu        $v0, 0x45($s3)
/* 78DD7C8 8007D298 0100073C */  lui        $a3, (0x10000 >> 16)
/* 78DD7CC 8007D29C 0C004224 */  addiu      $v0, $v0, 0xC
/* 78DD7D0 8007D2A0 450062A2 */  sb         $v0, 0x45($s3)
/* 78DD7D4 8007D2A4 C360000C */  jal        func_8001830C
/* 78DD7D8 8007D2A8 1000B3AF */   sw        $s3, 0x10($sp)
/* 78DD7DC 8007D2AC 06004014 */  bnez       $v0, .Llevel_36_8007D2C8
/* 78DD7E0 8007D2B0 21200002 */   addu      $a0, $s0, $zero
/* 78DD7E4 8007D2B4 80000524 */  addiu      $a1, $zero, 0x80
/* 78DD7E8 8007D2B8 A270000C */  jal        func_8001C288
/* 78DD7EC 8007D2BC 21300000 */   addu      $a2, $zero, $zero
/* 78DD7F0 8007D2C0 05004010 */  beqz       $v0, .Llevel_36_8007D2D8
/* 78DD7F4 8007D2C4 21200002 */   addu      $a0, $s0, $zero
.Llevel_36_8007D2C8:
/* 78DD7F8 8007D2C8 5E3C010C */  jal        func_8004F178
/* 78DD7FC 8007D2CC 21282002 */   addu      $a1, $s1, $zero
/* 78DD800 8007D2D0 CCF40108 */  j          .Llevel_36_8007D330
/* 78DD804 8007D2D4 03000224 */   addiu     $v0, $zero, 0x3
.Llevel_36_8007D2D8:
/* 78DD808 8007D2D8 00020524 */  addiu      $a1, $zero, 0x200
/* 78DD80C 8007D2DC 21300000 */  addu       $a2, $zero, $zero
/* 78DD810 8007D2E0 21380000 */  addu       $a3, $zero, $zero
/* 78DD814 8007D2E4 1000A0AF */  sw         $zero, 0x10($sp)
/* 78DD818 8007D2E8 8C6E000C */  jal        func_8001BA30
/* 78DD81C 8007D2EC 1400B3AF */   sw        $s3, 0x14($sp)
/* 78DD820 8007D2F0 21204000 */  addu       $a0, $v0, $zero
/* 78DD824 8007D2F4 0F008010 */  beqz       $a0, .Llevel_36_8007D334
/* 78DD828 8007D2F8 00000000 */   nop
/* 78DD82C 8007D2FC 49006292 */  lbu        $v0, 0x49($s3)
/* 78DD830 8007D300 00000000 */  nop
/* 78DD834 8007D304 05004014 */  bnez       $v0, .Llevel_36_8007D31C
/* 78DD838 8007D308 00000000 */   nop
/* 78DD83C 8007D30C 1000C28E */  lw         $v0, 0x10($s6)
/* 78DD840 8007D310 00000000 */  nop
/* 78DD844 8007D314 07008210 */  beq        $a0, $v0, .Llevel_36_8007D334
/* 78DD848 8007D318 00000000 */   nop
.Llevel_36_8007D31C:
/* 78DD84C 8007D31C 1800828C */  lw         $v0, 0x18($a0)
/* 78DD850 8007D320 0100033C */  lui        $v1, (0x10000 >> 16)
/* 78DD854 8007D324 25104300 */  or         $v0, $v0, $v1
/* 78DD858 8007D328 180082AC */  sw         $v0, 0x18($a0)
/* 78DD85C 8007D32C 03000224 */  addiu      $v0, $zero, 0x3
.Llevel_36_8007D330:
/* 78DD860 8007D330 480062A2 */  sb         $v0, 0x48($s3)
.Llevel_36_8007D334:
/* 78DD864 8007D334 01000424 */  addiu      $a0, $zero, 0x1
/* 78DD868 8007D338 05000524 */  addiu      $a1, $zero, 0x5
/* 78DD86C 8007D33C 0C006626 */  addiu      $a2, $s3, 0xC
/* 78DD870 8007D340 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 78DD874 8007D344 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 78DD878 8007D348 00000000 */  nop
/* 78DD87C 8007D34C 09F84000 */  jalr       $v0
/* 78DD880 8007D350 21380000 */   addu      $a3, $zero, $zero
/* 78DD884 8007D354 21206002 */  addu       $a0, $s3, $zero
/* 78DD888 8007D358 4957010C */  jal        func_80055D24
/* 78DD88C 8007D35C 02000524 */   addiu     $a1, $zero, 0x2
/* 78DD890 8007D360 E3F40108 */  j          .Llevel_36_8007D38C
/* 78DD894 8007D364 00000000 */   nop
.Llevel_36_8007D368:
/* 78DD898 8007D368 0F000524 */  addiu      $a1, $zero, 0xF
/* 78DD89C 8007D36C 0C006626 */  addiu      $a2, $s3, 0xC
/* 78DD8A0 8007D370 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 78DD8A4 8007D374 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 78DD8A8 8007D378 00000000 */  nop
/* 78DD8AC 8007D37C 09F84000 */  jalr       $v0
/* 78DD8B0 8007D380 21380000 */   addu      $a3, $zero, $zero
.Llevel_36_8007D384:
/* 78DD8B4 8007D384 C656010C */  jal        func_80055B18
/* 78DD8B8 8007D388 21206002 */   addu      $a0, $s3, $zero
.Llevel_36_8007D38C:
/* 78DD8BC 8007D38C 6400BF8F */  lw         $ra, 0x64($sp)
/* 78DD8C0 8007D390 6000BE8F */  lw         $fp, 0x60($sp)
/* 78DD8C4 8007D394 5C00B78F */  lw         $s7, 0x5C($sp)
/* 78DD8C8 8007D398 5800B68F */  lw         $s6, 0x58($sp)
/* 78DD8CC 8007D39C 5400B58F */  lw         $s5, 0x54($sp)
/* 78DD8D0 8007D3A0 5000B48F */  lw         $s4, 0x50($sp)
/* 78DD8D4 8007D3A4 4C00B38F */  lw         $s3, 0x4C($sp)
/* 78DD8D8 8007D3A8 4800B28F */  lw         $s2, 0x48($sp)
/* 78DD8DC 8007D3AC 4400B18F */  lw         $s1, 0x44($sp)
/* 78DD8E0 8007D3B0 4000B08F */  lw         $s0, 0x40($sp)
/* 78DD8E4 8007D3B4 6800BD27 */  addiu      $sp, $sp, 0x68
/* 78DD8E8 8007D3B8 0800E003 */  jr         $ra
/* 78DD8EC 8007D3BC 00000000 */   nop
.size MobyUpdate_147_level_36, . - MobyUpdate_147_level_36
