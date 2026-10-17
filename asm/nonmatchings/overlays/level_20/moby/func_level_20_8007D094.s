.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_427_level_20
/* 50CCDC4 8007D094 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 50CCDC8 8007D098 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 50CCDCC 8007D09C 21888000 */  addu       $s1, $a0, $zero
/* 50CCDD0 8007D0A0 2000BFAF */  sw         $ra, 0x20($sp)
/* 50CCDD4 8007D0A4 1800B0AF */  sw         $s0, 0x18($sp)
/* 50CCDD8 8007D0A8 0000308E */  lw         $s0, 0x0($s1)
/* 50CCDDC 8007D0AC 0780033C */  lui        $v1, %hi(D_8006C648)
/* 50CCDE0 8007D0B0 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 50CCDE4 8007D0B4 0000028E */  lw         $v0, 0x0($s0)
/* 50CCDE8 8007D0B8 00000000 */  nop
/* 50CCDEC 8007D0BC 21104300 */  addu       $v0, $v0, $v1
/* 50CCDF0 8007D0C0 000002AE */  sw         $v0, 0x0($s0)
/* 50CCDF4 8007D0C4 3C004228 */  slti       $v0, $v0, 0x3C
/* 50CCDF8 8007D0C8 0B004014 */  bnez       $v0, .Llevel_20_8007D0F8
/* 50CCDFC 8007D0CC 0C002426 */   addiu     $a0, $s1, 0xC
/* 50CCE00 8007D0D0 0800048E */  lw         $a0, 0x8($s0)
/* 50CCE04 8007D0D4 00000000 */  nop
/* 50CCE08 8007D0D8 03008010 */  beqz       $a0, .Llevel_20_8007D0E8
/* 50CCE0C 8007D0DC 00000000 */   nop
/* 50CCE10 8007D0E0 7A42010C */  jal        func_800509E8
/* 50CCE14 8007D0E4 00000000 */   nop
.Llevel_20_8007D0E8:
/* 50CCE18 8007D0E8 C656010C */  jal        func_80055B18
/* 50CCE1C 8007D0EC 21202002 */   addu      $a0, $s1, $zero
/* 50CCE20 8007D0F0 83F40108 */  j          .Llevel_20_8007D20C
/* 50CCE24 8007D0F4 00000000 */   nop
.Llevel_20_8007D0F8:
/* 50CCE28 8007D0F8 21288000 */  addu       $a1, $a0, $zero
/* 50CCE2C 8007D0FC 1400028E */  lw         $v0, 0x14($s0)
/* 50CCE30 8007D100 0C000626 */  addiu      $a2, $s0, 0xC
/* 50CCE34 8007D104 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 50CCE38 8007D108 653C010C */  jal        func_8004F194
/* 50CCE3C 8007D10C 140002AE */   sw        $v0, 0x14($s0)
/* 50CCE40 8007D110 8888043C */  lui        $a0, (0x88888889 >> 16)
/* 50CCE44 8007D114 89888434 */  ori        $a0, $a0, (0x88888889 & 0xFFFF)
/* 50CCE48 8007D118 0000028E */  lw         $v0, 0x0($s0)
/* 50CCE4C 8007D11C 3C000324 */  addiu      $v1, $zero, 0x3C
/* 50CCE50 8007D120 23186200 */  subu       $v1, $v1, $v0
/* 50CCE54 8007D124 001A0300 */  sll        $v1, $v1, 8
/* 50CCE58 8007D128 18006400 */  mult       $v1, $a0
/* 50CCE5C 8007D12C 49002292 */  lbu        $v0, 0x49($s1)
/* 50CCE60 8007D130 0400048E */  lw         $a0, 0x4($s0)
/* 50CCE64 8007D134 80100200 */  sll        $v0, $v0, 2
/* 50CCE68 8007D138 21104400 */  addu       $v0, $v0, $a0
/* 50CCE6C 8007D13C 00004290 */  lbu        $v0, 0x0($v0)
/* 50CCE70 8007D140 10380000 */  mfhi       $a3
/* 50CCE74 8007D144 2128E300 */  addu       $a1, $a3, $v1
/* 50CCE78 8007D148 43290500 */  sra        $a1, $a1, 5
/* 50CCE7C 8007D14C C31F0300 */  sra        $v1, $v1, 31
/* 50CCE80 8007D150 2328A300 */  subu       $a1, $a1, $v1
/* 50CCE84 8007D154 1800A200 */  mult       $a1, $v0
/* 50CCE88 8007D158 12380000 */  mflo       $a3
/* 50CCE8C 8007D15C 03220700 */  sra        $a0, $a3, 8
/* 50CCE90 8007D160 1000A4A3 */  sb         $a0, 0x10($sp)
/* 50CCE94 8007D164 49002292 */  lbu        $v0, 0x49($s1)
/* 50CCE98 8007D168 0400038E */  lw         $v1, 0x4($s0)
/* 50CCE9C 8007D16C 80100200 */  sll        $v0, $v0, 2
/* 50CCEA0 8007D170 21104300 */  addu       $v0, $v0, $v1
/* 50CCEA4 8007D174 01004290 */  lbu        $v0, 0x1($v0)
/* 50CCEA8 8007D178 00000000 */  nop
/* 50CCEAC 8007D17C 1800A200 */  mult       $a1, $v0
/* 50CCEB0 8007D180 12380000 */  mflo       $a3
/* 50CCEB4 8007D184 03120700 */  sra        $v0, $a3, 8
/* 50CCEB8 8007D188 1100A2A3 */  sb         $v0, 0x11($sp)
/* 50CCEBC 8007D18C 49002292 */  lbu        $v0, 0x49($s1)
/* 50CCEC0 8007D190 0400038E */  lw         $v1, 0x4($s0)
/* 50CCEC4 8007D194 80100200 */  sll        $v0, $v0, 2
/* 50CCEC8 8007D198 21104300 */  addu       $v0, $v0, $v1
/* 50CCECC 8007D19C 02004290 */  lbu        $v0, 0x2($v0)
/* 50CCED0 8007D1A0 00000000 */  nop
/* 50CCED4 8007D1A4 1800A200 */  mult       $a1, $v0
/* 50CCED8 8007D1A8 12380000 */  mflo       $a3
/* 50CCEDC 8007D1AC 03120700 */  sra        $v0, $a3, 8
/* 50CCEE0 8007D1B0 1200A2A3 */  sb         $v0, 0x12($sp)
/* 50CCEE4 8007D1B4 540024A2 */  sb         $a0, 0x54($s1)
/* 50CCEE8 8007D1B8 1100A293 */  lbu        $v0, 0x11($sp)
/* 50CCEEC 8007D1BC 00000000 */  nop
/* 50CCEF0 8007D1C0 550022A2 */  sb         $v0, 0x55($s1)
/* 50CCEF4 8007D1C4 1200A293 */  lbu        $v0, 0x12($sp)
/* 50CCEF8 8007D1C8 570020A2 */  sb         $zero, 0x57($s1)
/* 50CCEFC 8007D1CC 560022A2 */  sb         $v0, 0x56($s1)
/* 50CCF00 8007D1D0 0800038E */  lw         $v1, 0x8($s0)
/* 50CCF04 8007D1D4 00000000 */  nop
/* 50CCF08 8007D1D8 0C006010 */  beqz       $v1, .Llevel_20_8007D20C
/* 50CCF0C 8007D1DC 00000000 */   nop
/* 50CCF10 8007D1E0 1000A293 */  lbu        $v0, 0x10($sp)
/* 50CCF14 8007D1E4 00000000 */  nop
/* 50CCF18 8007D1E8 680062A0 */  sb         $v0, 0x68($v1)
/* 50CCF1C 8007D1EC 0800038E */  lw         $v1, 0x8($s0)
/* 50CCF20 8007D1F0 1100A293 */  lbu        $v0, 0x11($sp)
/* 50CCF24 8007D1F4 00000000 */  nop
/* 50CCF28 8007D1F8 690062A0 */  sb         $v0, 0x69($v1)
/* 50CCF2C 8007D1FC 0800038E */  lw         $v1, 0x8($s0)
/* 50CCF30 8007D200 1200A293 */  lbu        $v0, 0x12($sp)
/* 50CCF34 8007D204 00000000 */  nop
/* 50CCF38 8007D208 6A0062A0 */  sb         $v0, 0x6A($v1)
.Llevel_20_8007D20C:
/* 50CCF3C 8007D20C 2000BF8F */  lw         $ra, 0x20($sp)
/* 50CCF40 8007D210 1C00B18F */  lw         $s1, 0x1C($sp)
/* 50CCF44 8007D214 1800B08F */  lw         $s0, 0x18($sp)
/* 50CCF48 8007D218 2800BD27 */  addiu      $sp, $sp, 0x28
/* 50CCF4C 8007D21C 0800E003 */  jr         $ra
/* 50CCF50 8007D220 00000000 */   nop
.size MobyUpdate_427_level_20, . - MobyUpdate_427_level_20
