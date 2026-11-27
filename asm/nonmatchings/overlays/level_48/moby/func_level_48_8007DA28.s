.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_681_level_48
/* 9270758 8007DA28 0780023C */  lui        $v0, %hi(D_8006E040)
/* 927075C 8007DA2C 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 9270760 8007DA30 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9270764 8007DA34 1000B0AF */  sw         $s0, 0x10($sp)
/* 9270768 8007DA38 21808000 */  addu       $s0, $a0, $zero
/* 927076C 8007DA3C 1800BFAF */  sw         $ra, 0x18($sp)
/* 9270770 8007DA40 1400B1AF */  sw         $s1, 0x14($sp)
/* 9270774 8007DA44 00140200 */  sll        $v0, $v0, 16
/* 9270778 8007DA48 03150200 */  sra        $v0, $v0, 20
/* 927077C 8007DA4C 80FF4224 */  addiu      $v0, $v0, -0x80
/* 9270780 8007DA50 460002A2 */  sb         $v0, 0x46($s0)
/* 9270784 8007DA54 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 9270788 8007DA58 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 927078C 8007DA5C 0000118E */  lw         $s1, 0x0($s0)
/* 9270790 8007DA60 02110200 */  srl        $v0, $v0, 4
/* 9270794 8007DA64 450002A2 */  sb         $v0, 0x45($s0)
/* 9270798 8007DA68 00002386 */  lh         $v1, 0x0($s1)
/* 927079C 8007DA6C 01000224 */  addiu      $v0, $zero, 0x1
/* 92707A0 8007DA70 23006214 */  bne        $v1, $v0, .Llevel_48_8007DB00
/* 92707A4 8007DA74 00000000 */   nop
/* 92707A8 8007DA78 0800238E */  lw         $v1, 0x8($s1)
/* 92707AC 8007DA7C 00000000 */  nop
/* 92707B0 8007DA80 48006290 */  lbu        $v0, 0x48($v1)
/* 92707B4 8007DA84 00000000 */  nop
/* 92707B8 8007DA88 8000422C */  sltiu      $v0, $v0, 0x80
/* 92707BC 8007DA8C 06004010 */  beqz       $v0, .Llevel_48_8007DAA8
/* 92707C0 8007DA90 00000000 */   nop
/* 92707C4 8007DA94 36006384 */  lh         $v1, 0x36($v1)
/* 92707C8 8007DA98 02002286 */  lh         $v0, 0x2($s1)
/* 92707CC 8007DA9C 00000000 */  nop
/* 92707D0 8007DAA0 03006210 */  beq        $v1, $v0, .Llevel_48_8007DAB0
/* 92707D4 8007DAA4 00000000 */   nop
.Llevel_48_8007DAA8:
/* 92707D8 8007DAA8 C656010C */  jal        func_80055B18
/* 92707DC 8007DAAC 21200002 */   addu      $a0, $s0, $zero
.Llevel_48_8007DAB0:
/* 92707E0 8007DAB0 0800258E */  lw         $a1, 0x8($s1)
/* 92707E4 8007DAB4 00000000 */  nop
/* 92707E8 8007DAB8 3600A384 */  lh         $v1, 0x36($a1)
/* 92707EC 8007DABC 70010224 */  addiu      $v0, $zero, 0x170
/* 92707F0 8007DAC0 08006214 */  bne        $v1, $v0, .Llevel_48_8007DAE4
/* 92707F4 8007DAC4 0C000426 */   addiu     $a0, $s0, 0xC
/* 92707F8 8007DAC8 0780043C */  lui        $a0, %hi(D_80070328 + 0x250)
/* 92707FC 8007DACC 7805848C */  lw         $a0, %lo(D_80070328 + 0x250)($a0)
/* 9270800 8007DAD0 21280000 */  addu       $a1, $zero, $zero
/* 9270804 8007DAD4 C557010C */  jal        func_80055F14
/* 9270808 8007DAD8 0C000626 */   addiu     $a2, $s0, 0xC
/* 927080C 8007DADC BBF60108 */  j          .Llevel_48_8007DAEC
/* 9270810 8007DAE0 00000000 */   nop
.Llevel_48_8007DAE4:
/* 9270814 8007DAE4 5E3C010C */  jal        func_8004F178
/* 9270818 8007DAE8 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_48_8007DAEC:
/* 927081C 8007DAEC 1400028E */  lw         $v0, 0x14($s0)
/* 9270820 8007DAF0 0400238E */  lw         $v1, 0x4($s1)
/* 9270824 8007DAF4 00000000 */  nop
/* 9270828 8007DAF8 21104300 */  addu       $v0, $v0, $v1
/* 927082C 8007DAFC 140002AE */  sw         $v0, 0x14($s0)
.Llevel_48_8007DB00:
/* 9270830 8007DB00 1800BF8F */  lw         $ra, 0x18($sp)
/* 9270834 8007DB04 1400B18F */  lw         $s1, 0x14($sp)
/* 9270838 8007DB08 1000B08F */  lw         $s0, 0x10($sp)
/* 927083C 8007DB0C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 9270840 8007DB10 0800E003 */  jr         $ra
/* 9270844 8007DB14 00000000 */   nop
.size MobyUpdate_681_level_48, . - MobyUpdate_681_level_48
