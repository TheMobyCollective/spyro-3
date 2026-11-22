.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1002_level_46
/* 8F4BCB4 80079784 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 8F4BCB8 80079788 21108000 */  addu       $v0, $a0, $zero
/* 8F4BCBC 8007978C 0780053C */  lui        $a1, %hi(D_80070328)
/* 8F4BCC0 80079790 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 8F4BCC4 80079794 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 8F4BCC8 80079798 1800B2AF */  sw         $s2, 0x18($sp)
/* 8F4BCCC 8007979C 1400B1AF */  sw         $s1, 0x14($sp)
/* 8F4BCD0 800797A0 1000B0AF */  sw         $s0, 0x10($sp)
/* 8F4BCD4 800797A4 0000528C */  lw         $s2, 0x0($v0)
/* 8F4BCD8 800797A8 5E3C010C */  jal        func_8004F178
/* 8F4BCDC 800797AC 0C004424 */   addiu     $a0, $v0, 0xC
/* 8F4BCE0 800797B0 04000524 */  addiu      $a1, $zero, 0x4
/* 8F4BCE4 800797B4 69D6000C */  jal        func_800359A4
/* 8F4BCE8 800797B8 04004426 */   addiu     $a0, $s2, 0x4
/* 8F4BCEC 800797BC 4D004010 */  beqz       $v0, .Llevel_46_800798F4
/* 8F4BCF0 800797C0 00000000 */   nop
/* 8F4BCF4 800797C4 0780113C */  lui        $s1, %hi(D_8006C550)
/* 8F4BCF8 800797C8 50C5318E */  lw         $s1, %lo(D_8006C550)($s1)
/* 8F4BCFC 800797CC 0780023C */  lui        $v0, %hi(D_8006C704)
/* 8F4BD00 800797D0 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 8F4BD04 800797D4 0800438E */  lw         $v1, 0x8($s2)
/* 8F4BD08 800797D8 2B102202 */  sltu       $v0, $s1, $v0
/* 8F4BD0C 800797DC 45004010 */  beqz       $v0, .Llevel_46_800798F4
/* 8F4BD10 800797E0 040043AE */   sw        $v1, 0x4($s2)
/* 8F4BD14 800797E4 45003026 */  addiu      $s0, $s1, 0x45
.Llevel_46_800797E8:
/* 8F4BD18 800797E8 F1FF0386 */  lh         $v1, -0xF($s0)
/* 8F4BD1C 800797EC 0000428E */  lw         $v0, 0x0($s2)
/* 8F4BD20 800797F0 00000000 */  nop
/* 8F4BD24 800797F4 39006214 */  bne        $v1, $v0, .Llevel_46_800798DC
/* 8F4BD28 800797F8 00000000 */   nop
/* 8F4BD2C 800797FC 03000292 */  lbu        $v0, 0x3($s0)
/* 8F4BD30 80079800 00000000 */  nop
/* 8F4BD34 80079804 8000422C */  sltiu      $v0, $v0, 0x80
/* 8F4BD38 80079808 34004014 */  bnez       $v0, .Llevel_46_800798DC
/* 8F4BD3C 8007980C 00000000 */   nop
/* 8F4BD40 80079810 0E000292 */  lbu        $v0, 0xE($s0)
/* 8F4BD44 80079814 0780033C */  lui        $v1, %hi(D_8006C7C4)
/* 8F4BD48 80079818 C4C7638C */  lw         $v1, %lo(D_8006C7C4)($v1)
/* 8F4BD4C 8007981C 00000000 */  nop
/* 8F4BD50 80079820 07106200 */  srav       $v0, $v0, $v1
/* 8F4BD54 80079824 01004230 */  andi       $v0, $v0, 0x1
/* 8F4BD58 80079828 2C004010 */  beqz       $v0, .Llevel_46_800798DC
/* 8F4BD5C 8007982C 00000000 */   nop
/* 8F4BD60 80079830 0000258E */  lw         $a1, 0x0($s1)
/* 8F4BD64 80079834 0780043C */  lui        $a0, %hi(D_80070328)
/* 8F4BD68 80079838 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 8F4BD6C 8007983C CD3C010C */  jal        func_8004F334
/* 8F4BD70 80079840 00000000 */   nop
/* 8F4BD74 80079844 01604228 */  slti       $v0, $v0, 0x6001
/* 8F4BD78 80079848 24004014 */  bnez       $v0, .Llevel_46_800798DC
/* 8F4BD7C 8007984C 00000000 */   nop
/* 8F4BD80 80079850 0000258E */  lw         $a1, 0x0($s1)
/* 8F4BD84 80079854 5E3C010C */  jal        func_8004F178
/* 8F4BD88 80079858 0C002426 */   addiu     $a0, $s1, 0xC
/* 8F4BD8C 8007985C 0957010C */  jal        func_80055C24
/* 8F4BD90 80079860 21202002 */   addu      $a0, $s1, $zero
/* 8F4BD94 80079864 F1FF0286 */  lh         $v0, -0xF($s0)
/* 8F4BD98 80079868 D3FF00AE */  sw         $zero, -0x2D($s0)
/* 8F4BD9C 8007986C 0C0000A2 */  sb         $zero, 0xC($s0)
/* 8F4BDA0 80079870 030000A2 */  sb         $zero, 0x3($s0)
/* 8F4BDA4 80079874 FDFF00A2 */  sb         $zero, -0x3($s0)
/* 8F4BDA8 80079878 80100200 */  sll        $v0, $v0, 2
/* 8F4BDAC 8007987C 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 8F4BDB0 80079880 21082200 */  addu       $at, $at, $v0
/* 8F4BDB4 80079884 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 8F4BDB8 80079888 00000000 */  nop
/* 8F4BDBC 8007988C 3C00428C */  lw         $v0, 0x3C($v0)
/* 8F4BDC0 80079890 21202002 */  addu       $a0, $s1, $zero
/* 8F4BDC4 80079894 00004390 */  lbu        $v1, 0x0($v0)
/* 8F4BDC8 80079898 01000224 */  addiu      $v0, $zero, 0x1
/* 8F4BDCC 8007989C F7FF00A2 */  sb         $zero, -0x9($s0)
/* 8F4BDD0 800798A0 F8FF00A2 */  sb         $zero, -0x8($s0)
/* 8F4BDD4 800798A4 F9FF00A2 */  sb         $zero, -0x7($s0)
/* 8F4BDD8 800798A8 FAFF02A2 */  sb         $v0, -0x6($s0)
/* 8F4BDDC 800798AC FFFF00A2 */  sb         $zero, -0x1($s0)
/* 8F4BDE0 800798B0 000000A2 */  sb         $zero, 0x0($s0)
/* 8F4BDE4 800798B4 0200632C */  sltiu      $v1, $v1, 0x2
/* 8F4BDE8 800798B8 01006338 */  xori       $v1, $v1, 0x1
/* 8F4BDEC 800798BC 23180300 */  negu       $v1, $v1
/* 8F4BDF0 800798C0 30006330 */  andi       $v1, $v1, 0x30
/* 8F4BDF4 800798C4 4ED7000C */  jal        func_80035D38
/* 8F4BDF8 800798C8 FBFF03A2 */   sb        $v1, -0x5($s0)
/* 8F4BDFC 800798CC A758010C */  jal        func_8005629C
/* 8F4BE00 800798D0 21202002 */   addu      $a0, $s1, $zero
/* 8F4BE04 800798D4 3DE60108 */  j          .Llevel_46_800798F4
/* 8F4BE08 800798D8 00000000 */   nop
.Llevel_46_800798DC:
/* 8F4BE0C 800798DC 0780023C */  lui        $v0, %hi(D_8006C704)
/* 8F4BE10 800798E0 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 8F4BE14 800798E4 58003126 */  addiu      $s1, $s1, 0x58
/* 8F4BE18 800798E8 2B102202 */  sltu       $v0, $s1, $v0
/* 8F4BE1C 800798EC BEFF4014 */  bnez       $v0, .Llevel_46_800797E8
/* 8F4BE20 800798F0 58001026 */   addiu     $s0, $s0, 0x58
.Llevel_46_800798F4:
/* 8F4BE24 800798F4 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 8F4BE28 800798F8 1800B28F */  lw         $s2, 0x18($sp)
/* 8F4BE2C 800798FC 1400B18F */  lw         $s1, 0x14($sp)
/* 8F4BE30 80079900 1000B08F */  lw         $s0, 0x10($sp)
/* 8F4BE34 80079904 2000BD27 */  addiu      $sp, $sp, 0x20
/* 8F4BE38 80079908 0800E003 */  jr         $ra
/* 8F4BE3C 8007990C 00000000 */   nop
.size MobyUpdate_1002_level_46, . - MobyUpdate_1002_level_46
