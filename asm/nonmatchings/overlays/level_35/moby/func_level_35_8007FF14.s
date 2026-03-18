.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_35_8007FF14
/* 7702C44 8007FF14 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 7702C48 8007FF18 1400B1AF */  sw         $s1, 0x14($sp)
/* 7702C4C 8007FF1C 21888000 */  addu       $s1, $a0, $zero
/* 7702C50 8007FF20 1800BFAF */  sw         $ra, 0x18($sp)
/* 7702C54 8007FF24 1000B0AF */  sw         $s0, 0x10($sp)
/* 7702C58 8007FF28 0000308E */  lw         $s0, 0x0($s1)
/* 7702C5C 8007FF2C C0000224 */  addiu      $v0, $zero, 0xC0
/* 7702C60 8007FF30 450022A2 */  sb         $v0, 0x45($s1)
/* 7702C64 8007FF34 0400048E */  lw         $a0, 0x4($s0)
/* 7702C68 8007FF38 0000028E */  lw         $v0, 0x0($s0)
/* 7702C6C 8007FF3C 00000000 */  nop
/* 7702C70 8007FF40 0B008214 */  bne        $a0, $v0, .Llevel_35_8007FF70
/* 7702C74 8007FF44 00000000 */   nop
/* 7702C78 8007FF48 49002426 */  addiu      $a0, $s1, 0x49
/* 7702C7C 8007FF4C 69D6000C */  jal        func_800359A4
/* 7702C80 8007FF50 01000524 */   addiu     $a1, $zero, 0x1
/* 7702C84 8007FF54 2D004010 */  beqz       $v0, .Llevel_35_8008000C
/* 7702C88 8007FF58 00000000 */   nop
/* 7702C8C 8007FF5C 9171010C */  jal        rand
/* 7702C90 8007FF60 080000AE */   sw        $zero, 0x8($s0)
/* 7702C94 8007FF64 FF004230 */  andi       $v0, $v0, 0xFF
/* 7702C98 8007FF68 03000208 */  j          .Llevel_35_8008000C
/* 7702C9C 8007FF6C 040002AE */   sw        $v0, 0x4($s0)
.Llevel_35_8007FF70:
/* 7702CA0 8007FF70 0800038E */  lw         $v1, 0x8($s0)
/* 7702CA4 8007FF74 00000000 */  nop
/* 7702CA8 8007FF78 08006014 */  bnez       $v1, .Llevel_35_8007FF9C
/* 7702CAC 8007FF7C 2A104400 */   slt       $v0, $v0, $a0
/* 7702CB0 8007FF80 03004010 */  beqz       $v0, .Llevel_35_8007FF90
/* 7702CB4 8007FF84 02000224 */   addiu     $v0, $zero, 0x2
/* 7702CB8 8007FF88 03000208 */  j          .Llevel_35_8008000C
/* 7702CBC 8007FF8C 080002AE */   sw        $v0, 0x8($s0)
.Llevel_35_8007FF90:
/* 7702CC0 8007FF90 FEFF0224 */  addiu      $v0, $zero, -0x2
/* 7702CC4 8007FF94 03000208 */  j          .Llevel_35_8008000C
/* 7702CC8 8007FF98 080002AE */   sw        $v0, 0x8($s0)
.Llevel_35_8007FF9C:
/* 7702CCC 8007FF9C 03006018 */  blez       $v1, .Llevel_35_8007FFAC
/* 7702CD0 8007FFA0 00000000 */   nop
/* 7702CD4 8007FFA4 ECFF0108 */  j          .Llevel_35_8007FFB0
/* 7702CD8 8007FFA8 02006324 */   addiu     $v1, $v1, 0x2
.Llevel_35_8007FFAC:
/* 7702CDC 8007FFAC FEFF6324 */  addiu      $v1, $v1, -0x2
.Llevel_35_8007FFB0:
/* 7702CE0 8007FFB0 0000028E */  lw         $v0, 0x0($s0)
/* 7702CE4 8007FFB4 080003AE */  sw         $v1, 0x8($s0)
/* 7702CE8 8007FFB8 0800048E */  lw         $a0, 0x8($s0)
/* 7702CEC 8007FFBC 21184300 */  addu       $v1, $v0, $v1
/* 7702CF0 8007FFC0 06008018 */  blez       $a0, .Llevel_35_8007FFDC
/* 7702CF4 8007FFC4 000003AE */   sw        $v1, 0x0($s0)
/* 7702CF8 8007FFC8 0400028E */  lw         $v0, 0x4($s0)
/* 7702CFC 8007FFCC 00000000 */  nop
/* 7702D00 8007FFD0 2A106200 */  slt        $v0, $v1, $v0
/* 7702D04 8007FFD4 08004010 */  beqz       $v0, .Llevel_35_8007FFF8
/* 7702D08 8007FFD8 00000000 */   nop
.Llevel_35_8007FFDC:
/* 7702D0C 8007FFDC 0B008104 */  bgez       $a0, .Llevel_35_8008000C
/* 7702D10 8007FFE0 00000000 */   nop
/* 7702D14 8007FFE4 0400028E */  lw         $v0, 0x4($s0)
/* 7702D18 8007FFE8 00000000 */  nop
/* 7702D1C 8007FFEC 2A104300 */  slt        $v0, $v0, $v1
/* 7702D20 8007FFF0 06004014 */  bnez       $v0, .Llevel_35_8008000C
/* 7702D24 8007FFF4 00000000 */   nop
.Llevel_35_8007FFF8:
/* 7702D28 8007FFF8 0400028E */  lw         $v0, 0x4($s0)
/* 7702D2C 8007FFFC 00000000 */  nop
/* 7702D30 80080000 000002AE */  sw         $v0, 0x0($s0)
/* 7702D34 80080004 0F000224 */  addiu      $v0, $zero, 0xF
/* 7702D38 80080008 490022A2 */  sb         $v0, 0x49($s1)
.Llevel_35_8008000C:
/* 7702D3C 8008000C 0000028E */  lw         $v0, 0x0($s0)
/* 7702D40 80080010 550020A2 */  sb         $zero, 0x55($s1)
/* 7702D44 80080014 27100200 */  nor        $v0, $zero, $v0
/* 7702D48 80080018 540022A2 */  sb         $v0, 0x54($s1)
/* 7702D4C 8008001C 0000038E */  lw         $v1, 0x0($s0)
/* 7702D50 80080020 3F000224 */  addiu      $v0, $zero, 0x3F
/* 7702D54 80080024 570022A2 */  sb         $v0, 0x57($s1)
/* 7702D58 80080028 560023A2 */  sb         $v1, 0x56($s1)
/* 7702D5C 8008002C 1800BF8F */  lw         $ra, 0x18($sp)
/* 7702D60 80080030 1400B18F */  lw         $s1, 0x14($sp)
/* 7702D64 80080034 1000B08F */  lw         $s0, 0x10($sp)
/* 7702D68 80080038 2000BD27 */  addiu      $sp, $sp, 0x20
/* 7702D6C 8008003C 0800E003 */  jr         $ra
/* 7702D70 80080040 00000000 */   nop
.size func_level_35_8007FF14, . - func_level_35_8007FF14
