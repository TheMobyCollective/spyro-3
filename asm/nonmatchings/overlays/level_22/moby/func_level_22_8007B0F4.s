.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_170_level_22
/* 576AE24 8007B0F4 0780023C */  lui        $v0, %hi(D_8006E040)
/* 576AE28 8007B0F8 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 576AE2C 8007B0FC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 576AE30 8007B100 1000B0AF */  sw         $s0, 0x10($sp)
/* 576AE34 8007B104 21808000 */  addu       $s0, $a0, $zero
/* 576AE38 8007B108 1800BFAF */  sw         $ra, 0x18($sp)
/* 576AE3C 8007B10C 1400B1AF */  sw         $s1, 0x14($sp)
/* 576AE40 8007B110 00140200 */  sll        $v0, $v0, 16
/* 576AE44 8007B114 03150200 */  sra        $v0, $v0, 20
/* 576AE48 8007B118 80FF4224 */  addiu      $v0, $v0, -0x80
/* 576AE4C 8007B11C 460002A2 */  sb         $v0, 0x46($s0)
/* 576AE50 8007B120 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 576AE54 8007B124 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 576AE58 8007B128 0000118E */  lw         $s1, 0x0($s0)
/* 576AE5C 8007B12C 02110200 */  srl        $v0, $v0, 4
/* 576AE60 8007B130 450002A2 */  sb         $v0, 0x45($s0)
/* 576AE64 8007B134 00002392 */  lbu        $v1, 0x0($s1)
/* 576AE68 8007B138 01000224 */  addiu      $v0, $zero, 0x1
/* 576AE6C 8007B13C 3C006214 */  bne        $v1, $v0, .Llevel_22_8007B230
/* 576AE70 8007B140 00000000 */   nop
/* 576AE74 8007B144 0400238E */  lw         $v1, 0x4($s1)
/* 576AE78 8007B148 00000000 */  nop
/* 576AE7C 8007B14C 48006290 */  lbu        $v0, 0x48($v1)
/* 576AE80 8007B150 00000000 */  nop
/* 576AE84 8007B154 8000422C */  sltiu      $v0, $v0, 0x80
/* 576AE88 8007B158 06004010 */  beqz       $v0, .Llevel_22_8007B174
/* 576AE8C 8007B15C 00000000 */   nop
/* 576AE90 8007B160 36006384 */  lh         $v1, 0x36($v1)
/* 576AE94 8007B164 01002292 */  lbu        $v0, 0x1($s1)
/* 576AE98 8007B168 00000000 */  nop
/* 576AE9C 8007B16C 05006210 */  beq        $v1, $v0, .Llevel_22_8007B184
/* 576AEA0 8007B170 78000224 */   addiu     $v0, $zero, 0x78
.Llevel_22_8007B174:
/* 576AEA4 8007B174 C656010C */  jal        func_80055B18
/* 576AEA8 8007B178 21200002 */   addu      $a0, $s0, $zero
/* 576AEAC 8007B17C 8CEC0108 */  j          .Llevel_22_8007B230
/* 576AEB0 8007B180 00000000 */   nop
.Llevel_22_8007B184:
/* 576AEB4 8007B184 21006214 */  bne        $v1, $v0, .Llevel_22_8007B20C
/* 576AEB8 8007B188 00000000 */   nop
/* 576AEBC 8007B18C 0780033C */  lui        $v1, %hi(D_8006C648)
/* 576AEC0 8007B190 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 576AEC4 8007B194 4F000292 */  lbu        $v0, 0x4F($s0)
/* 576AEC8 8007B198 80180300 */  sll        $v1, $v1, 2
/* 576AECC 8007B19C 23104300 */  subu       $v0, $v0, $v1
/* 576AED0 8007B1A0 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 576AED4 8007B1A4 FF004230 */  andi       $v0, $v0, 0xFF
/* 576AED8 8007B1A8 1A00422C */  sltiu      $v0, $v0, 0x1A
/* 576AEDC 8007B1AC 02004010 */  beqz       $v0, .Llevel_22_8007B1B8
/* 576AEE0 8007B1B0 1A000224 */   addiu     $v0, $zero, 0x1A
/* 576AEE4 8007B1B4 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_22_8007B1B8:
/* 576AEE8 8007B1B8 0780023C */  lui        $v0, %hi(D_80070328 + 0x50)
/* 576AEEC 8007B1BC 7803428C */  lw         $v0, %lo(D_80070328 + 0x50)($v0)
/* 576AEF0 8007B1C0 00000000 */  nop
/* 576AEF4 8007B1C4 F5FF4224 */  addiu      $v0, $v0, -0xB
/* 576AEF8 8007B1C8 0200422C */  sltiu      $v0, $v0, 0x2
/* 576AEFC 8007B1CC 07004010 */  beqz       $v0, .Llevel_22_8007B1EC
/* 576AF00 8007B1D0 00000000 */   nop
/* 576AF04 8007B1D4 0400228E */  lw         $v0, 0x4($s1)
/* 576AF08 8007B1D8 00000000 */  nop
/* 576AF0C 8007B1DC 4D004290 */  lbu        $v0, 0x4D($v0)
/* 576AF10 8007B1E0 00000000 */  nop
/* 576AF14 8007B1E4 09004014 */  bnez       $v0, .Llevel_22_8007B20C
/* 576AF18 8007B1E8 00000000 */   nop
.Llevel_22_8007B1EC:
/* 576AF1C 8007B1EC 0400228E */  lw         $v0, 0x4($s1)
/* 576AF20 8007B1F0 00000000 */  nop
/* 576AF24 8007B1F4 0000428C */  lw         $v0, 0x0($v0)
/* 576AF28 8007B1F8 21200002 */  addu       $a0, $s0, $zero
/* 576AF2C 8007B1FC C656010C */  jal        func_80055B18
/* 576AF30 8007B200 0A0040A0 */   sb        $zero, 0xA($v0)
/* 576AF34 8007B204 8CEC0108 */  j          .Llevel_22_8007B230
/* 576AF38 8007B208 00000000 */   nop
.Llevel_22_8007B20C:
/* 576AF3C 8007B20C 0400258E */  lw         $a1, 0x4($s1)
/* 576AF40 8007B210 0C000426 */  addiu      $a0, $s0, 0xC
/* 576AF44 8007B214 5E3C010C */  jal        func_8004F178
/* 576AF48 8007B218 0C00A524 */   addiu     $a1, $a1, 0xC
/* 576AF4C 8007B21C 02002386 */  lh         $v1, 0x2($s1)
/* 576AF50 8007B220 1400028E */  lw         $v0, 0x14($s0)
/* 576AF54 8007B224 00000000 */  nop
/* 576AF58 8007B228 21104300 */  addu       $v0, $v0, $v1
/* 576AF5C 8007B22C 140002AE */  sw         $v0, 0x14($s0)
.Llevel_22_8007B230:
/* 576AF60 8007B230 1800BF8F */  lw         $ra, 0x18($sp)
/* 576AF64 8007B234 1400B18F */  lw         $s1, 0x14($sp)
/* 576AF68 8007B238 1000B08F */  lw         $s0, 0x10($sp)
/* 576AF6C 8007B23C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 576AF70 8007B240 0800E003 */  jr         $ra
/* 576AF74 8007B244 00000000 */   nop
.size MobyUpdate_170_level_22, . - MobyUpdate_170_level_22
