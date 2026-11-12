.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_541_level_24
/* 5DF2DD0 800780A0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 5DF2DD4 800780A4 1000B0AF */  sw         $s0, 0x10($sp)
/* 5DF2DD8 800780A8 21808000 */  addu       $s0, $a0, $zero
/* 5DF2DDC 800780AC 1800BFAF */  sw         $ra, 0x18($sp)
/* 5DF2DE0 800780B0 1400B1AF */  sw         $s1, 0x14($sp)
/* 5DF2DE4 800780B4 0000118E */  lw         $s1, 0x0($s0)
/* 5DF2DE8 800780B8 04000524 */  addiu      $a1, $zero, 0x4
/* 5DF2DEC 800780BC 69D6000C */  jal        func_800359A4
/* 5DF2DF0 800780C0 21202002 */   addu      $a0, $s1, $zero
/* 5DF2DF4 800780C4 03004010 */  beqz       $v0, .Llevel_24_800780D4
/* 5DF2DF8 800780C8 00000000 */   nop
/* 5DF2DFC 800780CC C656010C */  jal        func_80055B18
/* 5DF2E00 800780D0 21200002 */   addu      $a0, $s0, $zero
.Llevel_24_800780D4:
/* 5DF2E04 800780D4 0000238E */  lw         $v1, 0x0($s1)
/* 5DF2E08 800780D8 10000224 */  addiu      $v0, $zero, 0x10
/* 5DF2E0C 800780DC 23104300 */  subu       $v0, $v0, $v1
/* 5DF2E10 800780E0 03004104 */  bgez       $v0, .Llevel_24_800780F0
/* 5DF2E14 800780E4 30004224 */   addiu     $v0, $v0, 0x30
/* 5DF2E18 800780E8 21100000 */  addu       $v0, $zero, $zero
/* 5DF2E1C 800780EC 30004224 */  addiu      $v0, $v0, 0x30
.Llevel_24_800780F0:
/* 5DF2E20 800780F0 570002A2 */  sb         $v0, 0x57($s0)
/* 5DF2E24 800780F4 0780023C */  lui        $v0, %hi(D_8006C648)
/* 5DF2E28 800780F8 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 5DF2E2C 800780FC 00000000 */  nop
/* 5DF2E30 80078100 40180200 */  sll        $v1, $v0, 1
/* 5DF2E34 80078104 21186200 */  addu       $v1, $v1, $v0
/* 5DF2E38 80078108 4F000292 */  lbu        $v0, 0x4F($s0)
/* 5DF2E3C 8007810C 40180300 */  sll        $v1, $v1, 1
/* 5DF2E40 80078110 23104300 */  subu       $v0, $v0, $v1
/* 5DF2E44 80078114 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 5DF2E48 80078118 FF004230 */  andi       $v0, $v0, 0xFF
/* 5DF2E4C 8007811C 8000422C */  sltiu      $v0, $v0, 0x80
/* 5DF2E50 80078120 02004014 */  bnez       $v0, .Llevel_24_8007812C
/* 5DF2E54 80078124 00000000 */   nop
/* 5DF2E58 80078128 4F0000A2 */  sb         $zero, 0x4F($s0)
.Llevel_24_8007812C:
/* 5DF2E5C 8007812C 4F000292 */  lbu        $v0, 0x4F($s0)
/* 5DF2E60 80078130 00000000 */  nop
/* 5DF2E64 80078134 1800422C */  sltiu      $v0, $v0, 0x18
/* 5DF2E68 80078138 02004010 */  beqz       $v0, .Llevel_24_80078144
/* 5DF2E6C 8007813C 18000224 */   addiu     $v0, $zero, 0x18
/* 5DF2E70 80078140 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_24_80078144:
/* 5DF2E74 80078144 1800BF8F */  lw         $ra, 0x18($sp)
/* 5DF2E78 80078148 1400B18F */  lw         $s1, 0x14($sp)
/* 5DF2E7C 8007814C 1000B08F */  lw         $s0, 0x10($sp)
/* 5DF2E80 80078150 2000BD27 */  addiu      $sp, $sp, 0x20
/* 5DF2E84 80078154 0800E003 */  jr         $ra
/* 5DF2E88 80078158 00000000 */   nop
.size MobyUpdate_541_level_24, . - MobyUpdate_541_level_24
