.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_123_level_22
/* 576AD5C 8007B02C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 576AD60 8007B030 1400B1AF */  sw         $s1, 0x14($sp)
/* 576AD64 8007B034 21888000 */  addu       $s1, $a0, $zero
/* 576AD68 8007B038 1800BFAF */  sw         $ra, 0x18($sp)
/* 576AD6C 8007B03C 1000B0AF */  sw         $s0, 0x10($sp)
/* 576AD70 8007B040 48002292 */  lbu        $v0, 0x48($s1)
/* 576AD74 8007B044 0000308E */  lw         $s0, 0x0($s1)
/* 576AD78 8007B048 24004014 */  bnez       $v0, .Llevel_22_8007B0DC
/* 576AD7C 8007B04C 00000000 */   nop
/* 576AD80 8007B050 1800228E */  lw         $v0, 0x18($s1)
/* 576AD84 8007B054 00000000 */  nop
/* 576AD88 8007B058 14004010 */  beqz       $v0, .Llevel_22_8007B0AC
/* 576AD8C 8007B05C 00000000 */   nop
/* 576AD90 8007B060 21280000 */  addu       $a1, $zero, $zero
/* 576AD94 8007B064 AFEE000C */  jal        func_8003BABC
/* 576AD98 8007B068 21300000 */   addu      $a2, $zero, $zero
/* 576AD9C 8007B06C 21202002 */  addu       $a0, $s1, $zero
/* 576ADA0 8007B070 0C00058E */  lw         $a1, 0xC($s0)
/* 576ADA4 8007B074 C4EE000C */  jal        func_8003BB10
/* 576ADA8 8007B078 21300000 */   addu      $a2, $zero, $zero
/* 576ADAC 8007B07C 21200002 */  addu       $a0, $s0, $zero
/* 576ADB0 8007B080 04000524 */  addiu      $a1, $zero, 0x4
/* 576ADB4 8007B084 0780063C */  lui        $a2, %hi(D_8006D088)
/* 576ADB8 8007B088 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 576ADBC 8007B08C 01000224 */  addiu      $v0, $zero, 0x1
/* 576ADC0 8007B090 EDED000C */  jal        func_8003B7B4
/* 576ADC4 8007B094 000002AE */   sw        $v0, 0x0($s0)
/* 576ADC8 8007B098 21200002 */  addu       $a0, $s0, $zero
/* 576ADCC 8007B09C 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 576ADD0 8007B0A0 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 576ADD4 8007B0A4 EDED000C */  jal        func_8003B7B4
/* 576ADD8 8007B0A8 04000524 */   addiu     $a1, $zero, 0x4
.Llevel_22_8007B0AC:
/* 576ADDC 8007B0AC 0000028E */  lw         $v0, 0x0($s0)
/* 576ADE0 8007B0B0 00000000 */  nop
/* 576ADE4 8007B0B4 09004010 */  beqz       $v0, .Llevel_22_8007B0DC
/* 576ADE8 8007B0B8 FC000524 */   addiu     $a1, $zero, 0xFC
/* 576ADEC 8007B0BC 0800048E */  lw         $a0, 0x8($s0)
/* 576ADF0 8007B0C0 B687000C */  jal        func_80021ED8
/* 576ADF4 8007B0C4 21300000 */   addu      $a2, $zero, $zero
/* 576ADF8 8007B0C8 21202002 */  addu       $a0, $s1, $zero
/* 576ADFC 8007B0CC 01000524 */  addiu      $a1, $zero, 0x1
/* 576AE00 8007B0D0 01000224 */  addiu      $v0, $zero, 0x1
/* 576AE04 8007B0D4 D0D3000C */  jal        func_80034F40
/* 576AE08 8007B0D8 480082A0 */   sb        $v0, 0x48($a0)
.Llevel_22_8007B0DC:
/* 576AE0C 8007B0DC 1800BF8F */  lw         $ra, 0x18($sp)
/* 576AE10 8007B0E0 1400B18F */  lw         $s1, 0x14($sp)
/* 576AE14 8007B0E4 1000B08F */  lw         $s0, 0x10($sp)
/* 576AE18 8007B0E8 2000BD27 */  addiu      $sp, $sp, 0x20
/* 576AE1C 8007B0EC 0800E003 */  jr         $ra
/* 576AE20 8007B0F0 00000000 */   nop
.size MobyUpdate_123_level_22, . - MobyUpdate_123_level_22
