.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_216_level_50
/* 95DEE30 8008A900 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 95DEE34 8008A904 2800B0AF */  sw         $s0, 0x28($sp)
/* 95DEE38 8008A908 21808000 */  addu       $s0, $a0, $zero
/* 95DEE3C 8008A90C 01000324 */  addiu      $v1, $zero, 0x1
/* 95DEE40 8008A910 3000BFAF */  sw         $ra, 0x30($sp)
/* 95DEE44 8008A914 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 95DEE48 8008A918 48000292 */  lbu        $v0, 0x48($s0)
/* 95DEE4C 8008A91C 0000118E */  lw         $s1, 0x0($s0)
/* 95DEE50 8008A920 27004314 */  bne        $v0, $v1, .Llevel_50_8008A9C0
/* 95DEE54 8008A924 01000424 */   addiu     $a0, $zero, 0x1
/* 95DEE58 8008A928 0D000524 */  addiu      $a1, $zero, 0xD
/* 95DEE5C 8008A92C 0C000626 */  addiu      $a2, $s0, 0xC
/* 95DEE60 8008A930 1800A727 */  addiu      $a3, $sp, 0x18
/* 95DEE64 8008A934 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 95DEE68 8008A938 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 95DEE6C 8008A93C 1E000224 */  addiu      $v0, $zero, 0x1E
/* 95DEE70 8008A940 1800A0AF */  sw         $zero, 0x18($sp)
/* 95DEE74 8008A944 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 95DEE78 8008A948 09F86000 */  jalr       $v1
/* 95DEE7C 8008A94C 2000A2AF */   sw        $v0, 0x20($sp)
/* 95DEE80 8008A950 21200002 */  addu       $a0, $s0, $zero
/* 95DEE84 8008A954 21300000 */  addu       $a2, $zero, $zero
/* 95DEE88 8008A958 1000A0AF */  sw         $zero, 0x10($sp)
/* 95DEE8C 8008A95C 0400258E */  lw         $a1, 0x4($s1)
/* 95DEE90 8008A960 77D7000C */  jal        func_80035DDC
/* 95DEE94 8008A964 21380000 */   addu      $a3, $zero, $zero
/* 95DEE98 8008A968 02002386 */  lh         $v1, 0x2($s1)
/* 95DEE9C 8008A96C 1400028E */  lw         $v0, 0x14($s0)
/* 95DEEA0 8008A970 00000000 */  nop
/* 95DEEA4 8008A974 21104300 */  addu       $v0, $v0, $v1
/* 95DEEA8 8008A978 140002AE */  sw         $v0, 0x14($s0)
/* 95DEEAC 8008A97C 02002296 */  lhu        $v0, 0x2($s1)
/* 95DEEB0 8008A980 00000000 */  nop
/* 95DEEB4 8008A984 FCFF4224 */  addiu      $v0, $v0, -0x4
/* 95DEEB8 8008A988 020022A6 */  sh         $v0, 0x2($s1)
/* 95DEEBC 8008A98C 00140200 */  sll        $v0, $v0, 16
/* 95DEEC0 8008A990 03140200 */  sra        $v0, $v0, 16
/* 95DEEC4 8008A994 2D014228 */  slti       $v0, $v0, 0x12D
/* 95DEEC8 8008A998 03004014 */  bnez       $v0, .Llevel_50_8008A9A8
/* 95DEECC 8008A99C 21202002 */   addu      $a0, $s1, $zero
/* 95DEED0 8008A9A0 2C010224 */  addiu      $v0, $zero, 0x12C
/* 95DEED4 8008A9A4 020022A6 */  sh         $v0, 0x2($s1)
.Llevel_50_8008A9A8:
/* 95DEED8 8008A9A8 69D6000C */  jal        func_800359A4
/* 95DEEDC 8008A9AC 02000524 */   addiu     $a1, $zero, 0x2
/* 95DEEE0 8008A9B0 16004010 */  beqz       $v0, .Llevel_50_8008AA0C
/* 95DEEE4 8008A9B4 00000000 */   nop
/* 95DEEE8 8008A9B8 812A0208 */  j          .Llevel_50_8008AA04
/* 95DEEEC 8008A9BC 00000000 */   nop
.Llevel_50_8008A9C0:
/* 95DEEF0 8008A9C0 C5E5000C */  jal        func_80039714
/* 95DEEF4 8008A9C4 21200002 */   addu      $a0, $s0, $zero
/* 95DEEF8 8008A9C8 10004010 */  beqz       $v0, .Llevel_50_8008AA0C
/* 95DEEFC 8008A9CC 21200002 */   addu      $a0, $s0, $zero
/* 95DEF00 8008A9D0 4957010C */  jal        func_80055D24
/* 95DEF04 8008A9D4 04000524 */   addiu     $a1, $zero, 0x4
/* 95DEF08 8008A9D8 21200002 */  addu       $a0, $s0, $zero
/* 95DEF0C 8008A9DC 6EDA000C */  jal        func_800369B8
/* 95DEF10 8008A9E0 18000524 */   addiu     $a1, $zero, 0x18
/* 95DEF14 8008A9E4 0A000424 */  addiu      $a0, $zero, 0xA
/* 95DEF18 8008A9E8 46000524 */  addiu      $a1, $zero, 0x46
/* 95DEF1C 8008A9EC 0C000626 */  addiu      $a2, $s0, 0xC
/* 95DEF20 8008A9F0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 95DEF24 8008A9F4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 95DEF28 8008A9F8 00000000 */  nop
/* 95DEF2C 8008A9FC 09F84000 */  jalr       $v0
/* 95DEF30 8008AA00 08000724 */   addiu     $a3, $zero, 0x8
.Llevel_50_8008AA04:
/* 95DEF34 8008AA04 C656010C */  jal        func_80055B18
/* 95DEF38 8008AA08 21200002 */   addu      $a0, $s0, $zero
.Llevel_50_8008AA0C:
/* 95DEF3C 8008AA0C 3000BF8F */  lw         $ra, 0x30($sp)
/* 95DEF40 8008AA10 2C00B18F */  lw         $s1, 0x2C($sp)
/* 95DEF44 8008AA14 2800B08F */  lw         $s0, 0x28($sp)
/* 95DEF48 8008AA18 3800BD27 */  addiu      $sp, $sp, 0x38
/* 95DEF4C 8008AA1C 0800E003 */  jr         $ra
/* 95DEF50 8008AA20 00000000 */   nop
.size MobyUpdate_216_level_50, . - MobyUpdate_216_level_50
