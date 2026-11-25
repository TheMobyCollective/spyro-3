.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_541_level_35
/* 76F9EF8 800771C8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 76F9EFC 800771CC 1000B0AF */  sw         $s0, 0x10($sp)
/* 76F9F00 800771D0 21808000 */  addu       $s0, $a0, $zero
/* 76F9F04 800771D4 1800BFAF */  sw         $ra, 0x18($sp)
/* 76F9F08 800771D8 1400B1AF */  sw         $s1, 0x14($sp)
/* 76F9F0C 800771DC 0000118E */  lw         $s1, 0x0($s0)
/* 76F9F10 800771E0 04000524 */  addiu      $a1, $zero, 0x4
/* 76F9F14 800771E4 69D6000C */  jal        func_800359A4
/* 76F9F18 800771E8 21202002 */   addu      $a0, $s1, $zero
/* 76F9F1C 800771EC 03004010 */  beqz       $v0, .Llevel_35_800771FC
/* 76F9F20 800771F0 00000000 */   nop
/* 76F9F24 800771F4 C656010C */  jal        func_80055B18
/* 76F9F28 800771F8 21200002 */   addu      $a0, $s0, $zero
.Llevel_35_800771FC:
/* 76F9F2C 800771FC 0000238E */  lw         $v1, 0x0($s1)
/* 76F9F30 80077200 10000224 */  addiu      $v0, $zero, 0x10
/* 76F9F34 80077204 23104300 */  subu       $v0, $v0, $v1
/* 76F9F38 80077208 03004104 */  bgez       $v0, .Llevel_35_80077218
/* 76F9F3C 8007720C 30004224 */   addiu     $v0, $v0, 0x30
/* 76F9F40 80077210 21100000 */  addu       $v0, $zero, $zero
/* 76F9F44 80077214 30004224 */  addiu      $v0, $v0, 0x30
.Llevel_35_80077218:
/* 76F9F48 80077218 570002A2 */  sb         $v0, 0x57($s0)
/* 76F9F4C 8007721C 0780023C */  lui        $v0, %hi(D_8006C648)
/* 76F9F50 80077220 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 76F9F54 80077224 00000000 */  nop
/* 76F9F58 80077228 40180200 */  sll        $v1, $v0, 1
/* 76F9F5C 8007722C 21186200 */  addu       $v1, $v1, $v0
/* 76F9F60 80077230 4F000292 */  lbu        $v0, 0x4F($s0)
/* 76F9F64 80077234 40180300 */  sll        $v1, $v1, 1
/* 76F9F68 80077238 23104300 */  subu       $v0, $v0, $v1
/* 76F9F6C 8007723C 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 76F9F70 80077240 FF004230 */  andi       $v0, $v0, 0xFF
/* 76F9F74 80077244 8000422C */  sltiu      $v0, $v0, 0x80
/* 76F9F78 80077248 02004014 */  bnez       $v0, .Llevel_35_80077254
/* 76F9F7C 8007724C 00000000 */   nop
/* 76F9F80 80077250 4F0000A2 */  sb         $zero, 0x4F($s0)
.Llevel_35_80077254:
/* 76F9F84 80077254 4F000292 */  lbu        $v0, 0x4F($s0)
/* 76F9F88 80077258 00000000 */  nop
/* 76F9F8C 8007725C 1800422C */  sltiu      $v0, $v0, 0x18
/* 76F9F90 80077260 02004010 */  beqz       $v0, .Llevel_35_8007726C
/* 76F9F94 80077264 18000224 */   addiu     $v0, $zero, 0x18
/* 76F9F98 80077268 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_35_8007726C:
/* 76F9F9C 8007726C 1800BF8F */  lw         $ra, 0x18($sp)
/* 76F9FA0 80077270 1400B18F */  lw         $s1, 0x14($sp)
/* 76F9FA4 80077274 1000B08F */  lw         $s0, 0x10($sp)
/* 76F9FA8 80077278 2000BD27 */  addiu      $sp, $sp, 0x20
/* 76F9FAC 8007727C 0800E003 */  jr         $ra
/* 76F9FB0 80077280 00000000 */   nop
.size MobyUpdate_541_level_35, . - MobyUpdate_541_level_35
