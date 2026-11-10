.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_8_level_16
/* 4B9E4FC 8007CFCC 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 4B9E500 8007CFD0 5000B4AF */  sw         $s4, 0x50($sp)
/* 4B9E504 8007CFD4 21A08000 */  addu       $s4, $a0, $zero
/* 4B9E508 8007CFD8 6000BFAF */  sw         $ra, 0x60($sp)
/* 4B9E50C 8007CFDC 5C00B7AF */  sw         $s7, 0x5C($sp)
/* 4B9E510 8007CFE0 5800B6AF */  sw         $s6, 0x58($sp)
/* 4B9E514 8007CFE4 5400B5AF */  sw         $s5, 0x54($sp)
/* 4B9E518 8007CFE8 4C00B3AF */  sw         $s3, 0x4C($sp)
/* 4B9E51C 8007CFEC 4800B2AF */  sw         $s2, 0x48($sp)
/* 4B9E520 8007CFF0 4400B1AF */  sw         $s1, 0x44($sp)
/* 4B9E524 8007CFF4 4000B0AF */  sw         $s0, 0x40($sp)
/* 4B9E528 8007CFF8 0000938E */  lw         $s3, 0x0($s4)
/* 4B9E52C 8007CFFC 00000000 */  nop
/* 4B9E530 8007D000 12006386 */  lh         $v1, 0x12($s3)
/* 4B9E534 8007D004 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9E538 8007D008 02006214 */  bne        $v1, $v0, .Llevel_16_8007D014
/* 4B9E53C 8007D00C 00011024 */   addiu     $s0, $zero, 0x100
/* 4B9E540 8007D010 80001024 */  addiu      $s0, $zero, 0x80
.Llevel_16_8007D014:
/* 4B9E544 8007D014 0C008426 */  addiu      $a0, $s4, 0xC
/* 4B9E548 8007D018 21280002 */  addu       $a1, $s0, $zero
/* 4B9E54C 8007D01C 01000624 */  addiu      $a2, $zero, 0x1
/* 4B9E550 8007D020 21380000 */  addu       $a3, $zero, $zero
/* 4B9E554 8007D024 1000A0AF */  sw         $zero, 0x10($sp)
/* 4B9E558 8007D028 4E64000C */  jal        func_80019138
/* 4B9E55C 8007D02C 1400A0AF */   sw        $zero, 0x14($sp)
/* 4B9E560 8007D030 41004010 */  beqz       $v0, .Llevel_16_8007D138
/* 4B9E564 8007D034 00010224 */   addiu     $v0, $zero, 0x100
/* 4B9E568 8007D038 0D000212 */  beq        $s0, $v0, .Llevel_16_8007D070
/* 4B9E56C 8007D03C 00000000 */   nop
/* 4B9E570 8007D040 0780023C */  lui        $v0, %hi(D_80071918)
/* 4B9E574 8007D044 1819428C */  lw         $v0, %lo(D_80071918)($v0)
/* 4B9E578 8007D048 00000000 */  nop
/* 4B9E57C 8007D04C 64004228 */  slti       $v0, $v0, 0x64
/* 4B9E580 8007D050 08004010 */  beqz       $v0, .Llevel_16_8007D074
/* 4B9E584 8007D054 00000000 */   nop
/* 4B9E588 8007D058 0780023C */  lui        $v0, %hi(D_8007191C)
/* 4B9E58C 8007D05C 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 4B9E590 8007D060 00000000 */  nop
/* 4B9E594 8007D064 64004228 */  slti       $v0, $v0, 0x64
/* 4B9E598 8007D068 02004010 */  beqz       $v0, .Llevel_16_8007D074
/* 4B9E59C 8007D06C 00000000 */   nop
.Llevel_16_8007D070:
/* 4B9E5A0 8007D070 0C0060A6 */  sh         $zero, 0xC($s3)
.Llevel_16_8007D074:
/* 4B9E5A4 8007D074 0780103C */  lui        $s0, %hi(D_80071918)
/* 4B9E5A8 8007D078 18191026 */  addiu      $s0, $s0, %lo(D_80071918)
/* 4B9E5AC 8007D07C 21200002 */  addu       $a0, $s0, $zero
/* 4B9E5B0 8007D080 C13B010C */  jal        func_8004EF04
/* 4B9E5B4 8007D084 00100524 */   addiu     $a1, $zero, 0x1000
/* 4B9E5B8 8007D088 00006386 */  lh         $v1, 0x0($s3)
/* 4B9E5BC 8007D08C 0000028E */  lw         $v0, 0x0($s0)
/* 4B9E5C0 8007D090 00000000 */  nop
/* 4B9E5C4 8007D094 18006200 */  mult       $v1, $v0
/* 4B9E5C8 8007D098 02006386 */  lh         $v1, 0x2($s3)
/* 4B9E5CC 8007D09C 12280000 */  mflo       $a1
/* 4B9E5D0 8007D0A0 0780023C */  lui        $v0, %hi(D_8007191C)
/* 4B9E5D4 8007D0A4 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 4B9E5D8 8007D0A8 00000000 */  nop
/* 4B9E5DC 8007D0AC 18006200 */  mult       $v1, $v0
/* 4B9E5E0 8007D0B0 04006386 */  lh         $v1, 0x4($s3)
/* 4B9E5E4 8007D0B4 12200000 */  mflo       $a0
/* 4B9E5E8 8007D0B8 0780023C */  lui        $v0, %hi(D_80071920)
/* 4B9E5EC 8007D0BC 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 4B9E5F0 8007D0C0 00000000 */  nop
/* 4B9E5F4 8007D0C4 18006200 */  mult       $v1, $v0
/* 4B9E5F8 8007D0C8 2110A400 */  addu       $v0, $a1, $a0
/* 4B9E5FC 8007D0CC 12180000 */  mflo       $v1
/* 4B9E600 8007D0D0 21104300 */  addu       $v0, $v0, $v1
/* 4B9E604 8007D0D4 C33A0200 */  sra        $a3, $v0, 11
/* 4B9E608 8007D0D8 1800E104 */  bgez       $a3, .Llevel_16_8007D13C
/* 4B9E60C 8007D0DC 0C006426 */   addiu     $a0, $s3, 0xC
/* 4B9E610 8007D0E0 21200002 */  addu       $a0, $s0, $zero
/* 4B9E614 8007D0E4 00100524 */  addiu      $a1, $zero, 0x1000
/* 4B9E618 8007D0E8 43330200 */  sra        $a2, $v0, 13
/* 4B9E61C 8007D0EC 233C010C */  jal        func_8004F08C
/* 4B9E620 8007D0F0 2330C700 */   subu      $a2, $a2, $a3
/* 4B9E624 8007D0F4 0000038E */  lw         $v1, 0x0($s0)
/* 4B9E628 8007D0F8 00006296 */  lhu        $v0, 0x0($s3)
/* 4B9E62C 8007D0FC 00000000 */  nop
/* 4B9E630 8007D100 21104300 */  addu       $v0, $v0, $v1
/* 4B9E634 8007D104 000062A6 */  sh         $v0, 0x0($s3)
/* 4B9E638 8007D108 0780033C */  lui        $v1, %hi(D_8007191C)
/* 4B9E63C 8007D10C 1C19638C */  lw         $v1, %lo(D_8007191C)($v1)
/* 4B9E640 8007D110 02006296 */  lhu        $v0, 0x2($s3)
/* 4B9E644 8007D114 00000000 */  nop
/* 4B9E648 8007D118 21104300 */  addu       $v0, $v0, $v1
/* 4B9E64C 8007D11C 020062A6 */  sh         $v0, 0x2($s3)
/* 4B9E650 8007D120 0780033C */  lui        $v1, %hi(D_80071920)
/* 4B9E654 8007D124 2019638C */  lw         $v1, %lo(D_80071920)($v1)
/* 4B9E658 8007D128 04006296 */  lhu        $v0, 0x4($s3)
/* 4B9E65C 8007D12C 00000000 */  nop
/* 4B9E660 8007D130 21104300 */  addu       $v0, $v0, $v1
/* 4B9E664 8007D134 040062A6 */  sh         $v0, 0x4($s3)
.Llevel_16_8007D138:
/* 4B9E668 8007D138 0C006426 */  addiu      $a0, $s3, 0xC
.Llevel_16_8007D13C:
/* 4B9E66C 8007D13C 69D6000C */  jal        func_800359A4
/* 4B9E670 8007D140 02000524 */   addiu     $a1, $zero, 0x2
/* 4B9E674 8007D144 A5004010 */  beqz       $v0, .Llevel_16_8007D3DC
/* 4B9E678 8007D148 00000000 */   nop
/* 4B9E67C 8007D14C 12006286 */  lh         $v0, 0x12($s3)
/* 4B9E680 8007D150 00000000 */  nop
/* 4B9E684 8007D154 9B004014 */  bnez       $v0, .Llevel_16_8007D3C4
/* 4B9E688 8007D158 21208002 */   addu      $a0, $s4, $zero
/* 4B9E68C 8007D15C 0780053C */  lui        $a1, %hi(D_80071918)
/* 4B9E690 8007D160 1819A524 */  addiu      $a1, $a1, %lo(D_80071918)
/* 4B9E694 8007D164 5E3C010C */  jal        func_8004F178
/* 4B9E698 8007D168 1800A427 */   addiu     $a0, $sp, 0x18
/* 4B9E69C 8007D16C 1800A427 */  addiu      $a0, $sp, 0x18
/* 4B9E6A0 8007D170 7A3B010C */  jal        func_8004EDE8
/* 4B9E6A4 8007D174 01000524 */   addiu     $a1, $zero, 0x1
/* 4B9E6A8 8007D178 1800A427 */  addiu      $a0, $sp, 0x18
/* 4B9E6AC 8007D17C 21284000 */  addu       $a1, $v0, $zero
/* 4B9E6B0 8007D180 233C010C */  jal        func_8004F08C
/* 4B9E6B4 8007D184 82000624 */   addiu     $a2, $zero, 0x82
/* 4B9E6B8 8007D188 0C008426 */  addiu      $a0, $s4, 0xC
/* 4B9E6BC 8007D18C 21288000 */  addu       $a1, $a0, $zero
/* 4B9E6C0 8007D190 653C010C */  jal        func_8004F194
/* 4B9E6C4 8007D194 1800A627 */   addiu     $a2, $sp, 0x18
/* 4B9E6C8 8007D198 21900000 */  addu       $s2, $zero, $zero
/* 4B9E6CC 8007D19C 2800B527 */  addiu      $s5, $sp, 0x28
/* 4B9E6D0 8007D1A0 01001724 */  addiu      $s7, $zero, 0x1
/* 4B9E6D4 8007D1A4 14001624 */  addiu      $s6, $zero, 0x14
.Llevel_16_8007D1A8:
/* 4B9E6D8 8007D1A8 0780023C */  lui        $v0, %hi(D_8006C578)
/* 4B9E6DC 8007D1AC 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 4B9E6E0 8007D1B0 0780033C */  lui        $v1, %hi(D_8006C574)
/* 4B9E6E4 8007D1B4 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 4B9E6E8 8007D1B8 00000000 */  nop
/* 4B9E6EC 8007D1BC 23104300 */  subu       $v0, $v0, $v1
/* 4B9E6F0 8007D1C0 15004228 */  slti       $v0, $v0, 0x15
/* 4B9E6F4 8007D1C4 7E004014 */  bnez       $v0, .Llevel_16_8007D3C0
/* 4B9E6F8 8007D1C8 08000424 */   addiu     $a0, $zero, 0x8
/* 4B9E6FC 8007D1CC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 4B9E700 8007D1D0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 4B9E704 8007D1D4 00000000 */  nop
/* 4B9E708 8007D1D8 09F84000 */  jalr       $v0
/* 4B9E70C 8007D1DC 21288002 */   addu      $a1, $s4, $zero
/* 4B9E710 8007D1E0 21884000 */  addu       $s1, $v0, $zero
/* 4B9E714 8007D1E4 72002012 */  beqz       $s1, .Llevel_16_8007D3B0
/* 4B9E718 8007D1E8 00000000 */   nop
/* 4B9E71C 8007D1EC 0000308E */  lw         $s0, 0x0($s1)
/* 4B9E720 8007D1F0 00000000 */  nop
/* 4B9E724 8007D1F4 120017A6 */  sh         $s7, 0x12($s0)
/* 4B9E728 8007D1F8 00006286 */  lh         $v0, 0x0($s3)
/* 4B9E72C 8007D1FC 00000000 */  nop
/* 4B9E730 8007D200 1800A2AF */  sw         $v0, 0x18($sp)
/* 4B9E734 8007D204 02006286 */  lh         $v0, 0x2($s3)
/* 4B9E738 8007D208 00000000 */  nop
/* 4B9E73C 8007D20C 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 4B9E740 8007D210 FFFF4226 */  addiu      $v0, $s2, -0x1
/* 4B9E744 8007D214 40110200 */  sll        $v0, $v0, 5
/* 4B9E748 8007D218 04006386 */  lh         $v1, 0x4($s3)
/* 4B9E74C 8007D21C FF004430 */  andi       $a0, $v0, 0xFF
/* 4B9E750 8007D220 21106000 */  addu       $v0, $v1, $zero
/* 4B9E754 8007D224 32006328 */  slti       $v1, $v1, 0x32
/* 4B9E758 8007D228 02006010 */  beqz       $v1, .Llevel_16_8007D234
/* 4B9E75C 8007D22C 00000000 */   nop
/* 4B9E760 8007D230 32000224 */  addiu      $v0, $zero, 0x32
.Llevel_16_8007D234:
/* 4B9E764 8007D234 040002A6 */  sh         $v0, 0x4($s0)
/* 4B9E768 8007D238 0680053C */  lui        $a1, %hi(D_80065920)
/* 4B9E76C 8007D23C 2059A524 */  addiu      $a1, $a1, %lo(D_80065920)
/* 4B9E770 8007D240 40200400 */  sll        $a0, $a0, 1
/* 4B9E774 8007D244 21288500 */  addu       $a1, $a0, $a1
/* 4B9E778 8007D248 0000A384 */  lh         $v1, 0x0($a1)
/* 4B9E77C 8007D24C 1800A28F */  lw         $v0, 0x18($sp)
/* 4B9E780 8007D250 00000000 */  nop
/* 4B9E784 8007D254 18004300 */  mult       $v0, $v1
/* 4B9E788 8007D258 0680023C */  lui        $v0, %hi(D_800658A0)
/* 4B9E78C 8007D25C A0584224 */  addiu      $v0, $v0, %lo(D_800658A0)
/* 4B9E790 8007D260 21208200 */  addu       $a0, $a0, $v0
/* 4B9E794 8007D264 00008384 */  lh         $v1, 0x0($a0)
/* 4B9E798 8007D268 12300000 */  mflo       $a2
/* 4B9E79C 8007D26C 1C00A28F */  lw         $v0, 0x1C($sp)
/* 4B9E7A0 8007D270 00000000 */  nop
/* 4B9E7A4 8007D274 18004300 */  mult       $v0, $v1
/* 4B9E7A8 8007D278 12180000 */  mflo       $v1
/* 4B9E7AC 8007D27C 2310C300 */  subu       $v0, $a2, $v1
/* 4B9E7B0 8007D280 03130200 */  sra        $v0, $v0, 12
/* 4B9E7B4 8007D284 000002A6 */  sh         $v0, 0x0($s0)
/* 4B9E7B8 8007D288 00008384 */  lh         $v1, 0x0($a0)
/* 4B9E7BC 8007D28C 1800A28F */  lw         $v0, 0x18($sp)
/* 4B9E7C0 8007D290 00000000 */  nop
/* 4B9E7C4 8007D294 18004300 */  mult       $v0, $v1
/* 4B9E7C8 8007D298 0000A384 */  lh         $v1, 0x0($a1)
/* 4B9E7CC 8007D29C 12300000 */  mflo       $a2
/* 4B9E7D0 8007D2A0 1C00A28F */  lw         $v0, 0x1C($sp)
/* 4B9E7D4 8007D2A4 00000000 */  nop
/* 4B9E7D8 8007D2A8 18004300 */  mult       $v0, $v1
/* 4B9E7DC 8007D2AC 2120A002 */  addu       $a0, $s5, $zero
/* 4B9E7E0 8007D2B0 12180000 */  mflo       $v1
/* 4B9E7E4 8007D2B4 2110C300 */  addu       $v0, $a2, $v1
/* 4B9E7E8 8007D2B8 00000386 */  lh         $v1, 0x0($s0)
/* 4B9E7EC 8007D2BC 03130200 */  sra        $v0, $v0, 12
/* 4B9E7F0 8007D2C0 020002A6 */  sh         $v0, 0x2($s0)
/* 4B9E7F4 8007D2C4 2800A3AF */  sw         $v1, 0x28($sp)
/* 4B9E7F8 8007D2C8 02000286 */  lh         $v0, 0x2($s0)
/* 4B9E7FC 8007D2CC 21280000 */  addu       $a1, $zero, $zero
/* 4B9E800 8007D2D0 3000A0AF */  sw         $zero, 0x30($sp)
/* 4B9E804 8007D2D4 7A3B010C */  jal        func_8004EDE8
/* 4B9E808 8007D2D8 2C00A2AF */   sw        $v0, 0x2C($sp)
/* 4B9E80C 8007D2DC C9004228 */  slti       $v0, $v0, 0xC9
/* 4B9E810 8007D2E0 0F004014 */  bnez       $v0, .Llevel_16_8007D320
/* 4B9E814 8007D2E4 B4000224 */   addiu     $v0, $zero, 0xB4
/* 4B9E818 8007D2E8 2120A002 */  addu       $a0, $s5, $zero
/* 4B9E81C 8007D2EC 7A3B010C */  jal        func_8004EDE8
/* 4B9E820 8007D2F0 21280000 */   addu      $a1, $zero, $zero
/* 4B9E824 8007D2F4 2120A002 */  addu       $a0, $s5, $zero
/* 4B9E828 8007D2F8 21284000 */  addu       $a1, $v0, $zero
/* 4B9E82C 8007D2FC 233C010C */  jal        func_8004F08C
/* 4B9E830 8007D300 C8000624 */   addiu     $a2, $zero, 0xC8
/* 4B9E834 8007D304 2800A28F */  lw         $v0, 0x28($sp)
/* 4B9E838 8007D308 00000000 */  nop
/* 4B9E83C 8007D30C 000002A6 */  sh         $v0, 0x0($s0)
/* 4B9E840 8007D310 2C00A28F */  lw         $v0, 0x2C($sp)
/* 4B9E844 8007D314 00000000 */  nop
/* 4B9E848 8007D318 020002A6 */  sh         $v0, 0x2($s0)
/* 4B9E84C 8007D31C B4000224 */  addiu      $v0, $zero, 0xB4
.Llevel_16_8007D320:
/* 4B9E850 8007D320 4F0022A2 */  sb         $v0, 0x4F($s1)
/* 4B9E854 8007D324 3F000224 */  addiu      $v0, $zero, 0x3F
/* 4B9E858 8007D328 4C0022A2 */  sb         $v0, 0x4C($s1)
/* 4B9E85C 8007D32C FF000224 */  addiu      $v0, $zero, 0xFF
/* 4B9E860 8007D330 10005712 */  beq        $s2, $s7, .Llevel_16_8007D374
/* 4B9E864 8007D334 4A0022A2 */   sb        $v0, 0x4A($s1)
/* 4B9E868 8007D338 0200422A */  slti       $v0, $s2, 0x2
/* 4B9E86C 8007D33C 05004010 */  beqz       $v0, .Llevel_16_8007D354
/* 4B9E870 8007D340 00000000 */   nop
/* 4B9E874 8007D344 08004012 */  beqz       $s2, .Llevel_16_8007D368
/* 4B9E878 8007D348 9B010224 */   addiu     $v0, $zero, 0x19B
/* 4B9E87C 8007D34C E9F40108 */  j          .Llevel_16_8007D3A4
/* 4B9E880 8007D350 0C002426 */   addiu     $a0, $s1, 0xC
.Llevel_16_8007D354:
/* 4B9E884 8007D354 02000224 */  addiu      $v0, $zero, 0x2
/* 4B9E888 8007D358 0B004212 */  beq        $s2, $v0, .Llevel_16_8007D388
/* 4B9E88C 8007D35C 0CFE0224 */   addiu     $v0, $zero, -0x1F4
/* 4B9E890 8007D360 E9F40108 */  j          .Llevel_16_8007D3A4
/* 4B9E894 8007D364 0C002426 */   addiu     $a0, $s1, 0xC
.Llevel_16_8007D368:
/* 4B9E898 8007D368 1800A2AF */  sw         $v0, 0x18($sp)
/* 4B9E89C 8007D36C E4F40108 */  j          .Llevel_16_8007D390
/* 4B9E8A0 8007D370 19000224 */   addiu     $v0, $zero, 0x19
.Llevel_16_8007D374:
/* 4B9E8A4 8007D374 D4FE0224 */  addiu      $v0, $zero, -0x12C
/* 4B9E8A8 8007D378 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 4B9E8AC 8007D37C 02000224 */  addiu      $v0, $zero, 0x2
/* 4B9E8B0 8007D380 E6F40108 */  j          .Llevel_16_8007D398
/* 4B9E8B4 8007D384 1800A0AF */   sw        $zero, 0x18($sp)
.Llevel_16_8007D388:
/* 4B9E8B8 8007D388 1800A2AF */  sw         $v0, 0x18($sp)
/* 4B9E8BC 8007D38C 6C010224 */  addiu      $v0, $zero, 0x16C
.Llevel_16_8007D390:
/* 4B9E8C0 8007D390 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 4B9E8C4 8007D394 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_16_8007D398:
/* 4B9E8C8 8007D398 2000B6AF */  sw         $s6, 0x20($sp)
/* 4B9E8CC 8007D39C 3C0022A2 */  sb         $v0, 0x3C($s1)
/* 4B9E8D0 8007D3A0 0C002426 */  addiu      $a0, $s1, 0xC
.Llevel_16_8007D3A4:
/* 4B9E8D4 8007D3A4 21288000 */  addu       $a1, $a0, $zero
/* 4B9E8D8 8007D3A8 653C010C */  jal        func_8004F194
/* 4B9E8DC 8007D3AC 1800A627 */   addiu     $a2, $sp, 0x18
.Llevel_16_8007D3B0:
/* 4B9E8E0 8007D3B0 01005226 */  addiu      $s2, $s2, 0x1
/* 4B9E8E4 8007D3B4 0300422A */  slti       $v0, $s2, 0x3
/* 4B9E8E8 8007D3B8 7BFF4014 */  bnez       $v0, .Llevel_16_8007D1A8
/* 4B9E8EC 8007D3BC 00000000 */   nop
.Llevel_16_8007D3C0:
/* 4B9E8F0 8007D3C0 21208002 */  addu       $a0, $s4, $zero
.Llevel_16_8007D3C4:
/* 4B9E8F4 8007D3C4 6EDA000C */  jal        func_800369B8
/* 4B9E8F8 8007D3C8 28000524 */   addiu     $a1, $zero, 0x28
/* 4B9E8FC 8007D3CC C656010C */  jal        func_80055B18
/* 4B9E900 8007D3D0 21208002 */   addu      $a0, $s4, $zero
/* 4B9E904 8007D3D4 1FF50108 */  j          .Llevel_16_8007D47C
/* 4B9E908 8007D3D8 00000000 */   nop
.Llevel_16_8007D3DC:
/* 4B9E90C 8007D3DC 00006386 */  lh         $v1, 0x0($s3)
/* 4B9E910 8007D3E0 0C00828E */  lw         $v0, 0xC($s4)
/* 4B9E914 8007D3E4 00000000 */  nop
/* 4B9E918 8007D3E8 21104300 */  addu       $v0, $v0, $v1
/* 4B9E91C 8007D3EC 0C0082AE */  sw         $v0, 0xC($s4)
/* 4B9E920 8007D3F0 02006386 */  lh         $v1, 0x2($s3)
/* 4B9E924 8007D3F4 1000828E */  lw         $v0, 0x10($s4)
/* 4B9E928 8007D3F8 00000000 */  nop
/* 4B9E92C 8007D3FC 21104300 */  addu       $v0, $v0, $v1
/* 4B9E930 8007D400 100082AE */  sw         $v0, 0x10($s4)
/* 4B9E934 8007D404 04006296 */  lhu        $v0, 0x4($s3)
/* 4B9E938 8007D408 00000000 */  nop
/* 4B9E93C 8007D40C F6FF4224 */  addiu      $v0, $v0, -0xA
/* 4B9E940 8007D410 040062A6 */  sh         $v0, 0x4($s3)
/* 4B9E944 8007D414 00140200 */  sll        $v0, $v0, 16
/* 4B9E948 8007D418 03140200 */  sra        $v0, $v0, 16
/* 4B9E94C 8007D41C 38FF4228 */  slti       $v0, $v0, -0xC8
/* 4B9E950 8007D420 02004010 */  beqz       $v0, .Llevel_16_8007D42C
/* 4B9E954 8007D424 38FF0224 */   addiu     $v0, $zero, -0xC8
/* 4B9E958 8007D428 040062A6 */  sh         $v0, 0x4($s3)
.Llevel_16_8007D42C:
/* 4B9E95C 8007D42C 04006386 */  lh         $v1, 0x4($s3)
/* 4B9E960 8007D430 1400828E */  lw         $v0, 0x14($s4)
/* 4B9E964 8007D434 00000000 */  nop
/* 4B9E968 8007D438 21104300 */  addu       $v0, $v0, $v1
/* 4B9E96C 8007D43C 140082AE */  sw         $v0, 0x14($s4)
/* 4B9E970 8007D440 44008292 */  lbu        $v0, 0x44($s4)
/* 4B9E974 8007D444 06006392 */  lbu        $v1, 0x6($s3)
/* 4B9E978 8007D448 00000000 */  nop
/* 4B9E97C 8007D44C 21104300 */  addu       $v0, $v0, $v1
/* 4B9E980 8007D450 440082A2 */  sb         $v0, 0x44($s4)
/* 4B9E984 8007D454 45008292 */  lbu        $v0, 0x45($s4)
/* 4B9E988 8007D458 08006392 */  lbu        $v1, 0x8($s3)
/* 4B9E98C 8007D45C 00000000 */  nop
/* 4B9E990 8007D460 21104300 */  addu       $v0, $v0, $v1
/* 4B9E994 8007D464 450082A2 */  sb         $v0, 0x45($s4)
/* 4B9E998 8007D468 46008292 */  lbu        $v0, 0x46($s4)
/* 4B9E99C 8007D46C 0A006392 */  lbu        $v1, 0xA($s3)
/* 4B9E9A0 8007D470 00000000 */  nop
/* 4B9E9A4 8007D474 21104300 */  addu       $v0, $v0, $v1
/* 4B9E9A8 8007D478 460082A2 */  sb         $v0, 0x46($s4)
.Llevel_16_8007D47C:
/* 4B9E9AC 8007D47C 6000BF8F */  lw         $ra, 0x60($sp)
/* 4B9E9B0 8007D480 5C00B78F */  lw         $s7, 0x5C($sp)
/* 4B9E9B4 8007D484 5800B68F */  lw         $s6, 0x58($sp)
/* 4B9E9B8 8007D488 5400B58F */  lw         $s5, 0x54($sp)
/* 4B9E9BC 8007D48C 5000B48F */  lw         $s4, 0x50($sp)
/* 4B9E9C0 8007D490 4C00B38F */  lw         $s3, 0x4C($sp)
/* 4B9E9C4 8007D494 4800B28F */  lw         $s2, 0x48($sp)
/* 4B9E9C8 8007D498 4400B18F */  lw         $s1, 0x44($sp)
/* 4B9E9CC 8007D49C 4000B08F */  lw         $s0, 0x40($sp)
/* 4B9E9D0 8007D4A0 6800BD27 */  addiu      $sp, $sp, 0x68
/* 4B9E9D4 8007D4A4 0800E003 */  jr         $ra
/* 4B9E9D8 8007D4A8 00000000 */   nop
.size MobyUpdate_8_level_16, . - MobyUpdate_8_level_16
