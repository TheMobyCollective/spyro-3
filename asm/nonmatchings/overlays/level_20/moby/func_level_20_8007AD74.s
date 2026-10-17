.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_325_level_20
/* 50CAAA4 8007AD74 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 50CAAA8 8007AD78 1400B1AF */  sw         $s1, 0x14($sp)
/* 50CAAAC 8007AD7C 21888000 */  addu       $s1, $a0, $zero
/* 50CAAB0 8007AD80 45010324 */  addiu      $v1, $zero, 0x145
/* 50CAAB4 8007AD84 1800BFAF */  sw         $ra, 0x18($sp)
/* 50CAAB8 8007AD88 1000B0AF */  sw         $s0, 0x10($sp)
/* 50CAABC 8007AD8C 36002286 */  lh         $v0, 0x36($s1)
/* 50CAAC0 8007AD90 0000308E */  lw         $s0, 0x0($s1)
/* 50CAAC4 8007AD94 12004314 */  bne        $v0, $v1, .Llevel_20_8007ADE0
/* 50CAAC8 8007AD98 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 50CAACC 8007AD9C 2400038E */  lw         $v1, 0x24($s0)
/* 50CAAD0 8007ADA0 00000000 */  nop
/* 50CAAD4 8007ADA4 0E006210 */  beq        $v1, $v0, .Llevel_20_8007ADE0
/* 50CAAD8 8007ADA8 40100300 */   sll       $v0, $v1, 1
/* 50CAADC 8007ADAC 21104300 */  addu       $v0, $v0, $v1
/* 50CAAE0 8007ADB0 80100200 */  sll        $v0, $v0, 2
/* 50CAAE4 8007ADB4 23104300 */  subu       $v0, $v0, $v1
/* 50CAAE8 8007ADB8 0780033C */  lui        $v1, %hi(D_8006C550)
/* 50CAAEC 8007ADBC 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 50CAAF0 8007ADC0 C0100200 */  sll        $v0, $v0, 3
/* 50CAAF4 8007ADC4 21104300 */  addu       $v0, $v0, $v1
/* 50CAAF8 8007ADC8 48004290 */  lbu        $v0, 0x48($v0)
/* 50CAAFC 8007ADCC 00000000 */  nop
/* 50CAB00 8007ADD0 8000422C */  sltiu      $v0, $v0, 0x80
/* 50CAB04 8007ADD4 02004010 */  beqz       $v0, .Llevel_20_8007ADE0
/* 50CAB08 8007ADD8 FF000224 */   addiu     $v0, $zero, 0xFF
/* 50CAB0C 8007ADDC 050002A2 */  sb         $v0, 0x5($s0)
.Llevel_20_8007ADE0:
/* 50CAB10 8007ADE0 36002396 */  lhu        $v1, 0x36($s1)
/* 50CAB14 8007ADE4 00000000 */  nop
/* 50CAB18 8007ADE8 55FD6224 */  addiu      $v0, $v1, -0x2AB
/* 50CAB1C 8007ADEC 0200422C */  sltiu      $v0, $v0, 0x2
/* 50CAB20 8007ADF0 09004014 */  bnez       $v0, .Llevel_20_8007AE18
/* 50CAB24 8007ADF4 FF000224 */   addiu     $v0, $zero, 0xFF
/* 50CAB28 8007ADF8 00140300 */  sll        $v0, $v1, 16
/* 50CAB2C 8007ADFC 031C0200 */  sra        $v1, $v0, 16
/* 50CAB30 8007AE00 98010224 */  addiu      $v0, $zero, 0x198
/* 50CAB34 8007AE04 03006210 */  beq        $v1, $v0, .Llevel_20_8007AE14
/* 50CAB38 8007AE08 AD020224 */   addiu     $v0, $zero, 0x2AD
/* 50CAB3C 8007AE0C 03006214 */  bne        $v1, $v0, .Llevel_20_8007AE1C
/* 50CAB40 8007AE10 00000000 */   nop
.Llevel_20_8007AE14:
/* 50CAB44 8007AE14 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_20_8007AE18:
/* 50CAB48 8007AE18 050002A2 */  sb         $v0, 0x5($s0)
.Llevel_20_8007AE1C:
/* 50CAB4C 8007AE1C 48002392 */  lbu        $v1, 0x48($s1)
/* 50CAB50 8007AE20 00000000 */  nop
/* 50CAB54 8007AE24 05006010 */  beqz       $v1, .Llevel_20_8007AE3C
/* 50CAB58 8007AE28 01000224 */   addiu     $v0, $zero, 0x1
/* 50CAB5C 8007AE2C 27006210 */  beq        $v1, $v0, .Llevel_20_8007AECC
/* 50CAB60 8007AE30 00000000 */   nop
/* 50CAB64 8007AE34 BAEB0108 */  j          .Llevel_20_8007AEE8
/* 50CAB68 8007AE38 00000000 */   nop
.Llevel_20_8007AE3C:
/* 50CAB6C 8007AE3C 02000392 */  lbu        $v1, 0x2($s0)
/* 50CAB70 8007AE40 02000224 */  addiu      $v0, $zero, 0x2
/* 50CAB74 8007AE44 02006214 */  bne        $v1, $v0, .Llevel_20_8007AE50
/* 50CAB78 8007AE48 00000000 */   nop
/* 50CAB7C 8007AE4C 050000A2 */  sb         $zero, 0x5($s0)
.Llevel_20_8007AE50:
/* 50CAB80 8007AE50 05000292 */  lbu        $v0, 0x5($s0)
/* 50CAB84 8007AE54 00000000 */  nop
/* 50CAB88 8007AE58 10004014 */  bnez       $v0, .Llevel_20_8007AE9C
/* 50CAB8C 8007AE5C 21202002 */   addu      $a0, $s1, $zero
/* 50CAB90 8007AE60 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 50CAB94 8007AE64 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 50CAB98 8007AE68 00000000 */  nop
/* 50CAB9C 8007AE6C 10004230 */  andi       $v0, $v0, 0x10
/* 50CABA0 8007AE70 06004010 */  beqz       $v0, .Llevel_20_8007AE8C
/* 50CABA4 8007AE74 00000000 */   nop
/* 50CABA8 8007AE78 EFDE000C */  jal        func_80037BBC
/* 50CABAC 8007AE7C 21280000 */   addu      $a1, $zero, $zero
/* 50CABB0 8007AE80 0A004014 */  bnez       $v0, .Llevel_20_8007AEAC
/* 50CABB4 8007AE84 21202002 */   addu      $a0, $s1, $zero
/* 50CABB8 8007AE88 070000A2 */  sb         $zero, 0x7($s0)
.Llevel_20_8007AE8C:
/* 50CABBC 8007AE8C 05000292 */  lbu        $v0, 0x5($s0)
/* 50CABC0 8007AE90 00000000 */  nop
/* 50CABC4 8007AE94 14004010 */  beqz       $v0, .Llevel_20_8007AEE8
/* 50CABC8 8007AE98 21202002 */   addu      $a0, $s1, $zero
.Llevel_20_8007AE9C:
/* 50CABCC 8007AE9C EFDE000C */  jal        func_80037BBC
/* 50CABD0 8007AEA0 21280000 */   addu      $a1, $zero, $zero
/* 50CABD4 8007AEA4 07004010 */  beqz       $v0, .Llevel_20_8007AEC4
/* 50CABD8 8007AEA8 21202002 */   addu      $a0, $s1, $zero
.Llevel_20_8007AEAC:
/* 50CABDC 8007AEAC 21280000 */  addu       $a1, $zero, $zero
/* 50CABE0 8007AEB0 B944010C */  jal        func_800512E4
/* 50CABE4 8007AEB4 21300000 */   addu      $a2, $zero, $zero
/* 50CABE8 8007AEB8 01000224 */  addiu      $v0, $zero, 0x1
/* 50CABEC 8007AEBC BAEB0108 */  j          .Llevel_20_8007AEE8
/* 50CABF0 8007AEC0 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_20_8007AEC4:
/* 50CABF4 8007AEC4 BAEB0108 */  j          .Llevel_20_8007AEE8
/* 50CABF8 8007AEC8 070000A2 */   sb        $zero, 0x7($s0)
.Llevel_20_8007AECC:
/* 50CABFC 8007AECC 0780023C */  lui        $v0, %hi(D_8006E344)
/* 50CAC00 8007AED0 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 50CAC04 8007AED4 00000000 */  nop
/* 50CAC08 8007AED8 03004310 */  beq        $v0, $v1, .Llevel_20_8007AEE8
/* 50CAC0C 8007AEDC 00000000 */   nop
/* 50CAC10 8007AEE0 200003AE */  sw         $v1, 0x20($s0)
/* 50CAC14 8007AEE4 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_20_8007AEE8:
/* 50CAC18 8007AEE8 1800BF8F */  lw         $ra, 0x18($sp)
/* 50CAC1C 8007AEEC 1400B18F */  lw         $s1, 0x14($sp)
/* 50CAC20 8007AEF0 1000B08F */  lw         $s0, 0x10($sp)
/* 50CAC24 8007AEF4 2000BD27 */  addiu      $sp, $sp, 0x20
/* 50CAC28 8007AEF8 0800E003 */  jr         $ra
/* 50CAC2C 8007AEFC 00000000 */   nop
.size MobyUpdate_325_level_20, . - MobyUpdate_325_level_20
