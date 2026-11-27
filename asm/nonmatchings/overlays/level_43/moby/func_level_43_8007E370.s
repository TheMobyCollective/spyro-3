.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_221_level_43
/* 87A38A0 8007E370 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 87A38A4 8007E374 1000B0AF */  sw         $s0, 0x10($sp)
/* 87A38A8 8007E378 21808000 */  addu       $s0, $a0, $zero
/* 87A38AC 8007E37C 1400BFAF */  sw         $ra, 0x14($sp)
/* 87A38B0 8007E380 48000292 */  lbu        $v0, 0x48($s0)
/* 87A38B4 8007E384 00000000 */  nop
/* 87A38B8 8007E388 0C004014 */  bnez       $v0, .Llevel_43_8007E3BC
/* 87A38BC 8007E38C 00000000 */   nop
/* 87A38C0 8007E390 0780023C */  lui        $v0, %hi(D_8006C770)
/* 87A38C4 8007E394 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 87A38C8 8007E398 00000000 */  nop
/* 87A38CC 8007E39C 0E004010 */  beqz       $v0, .Llevel_43_8007E3D8
/* 87A38D0 8007E3A0 01000224 */   addiu     $v0, $zero, 0x1
/* 87A38D4 8007E3A4 3C000392 */  lbu        $v1, 0x3C($s0)
/* 87A38D8 8007E3A8 00000000 */  nop
/* 87A38DC 8007E3AC 08006210 */  beq        $v1, $v0, .Llevel_43_8007E3D0
/* 87A38E0 8007E3B0 00000000 */   nop
/* 87A38E4 8007E3B4 F6F80108 */  j          .Llevel_43_8007E3D8
/* 87A38E8 8007E3B8 00000000 */   nop
.Llevel_43_8007E3BC:
/* 87A38EC 8007E3BC 0000048E */  lw         $a0, 0x0($s0)
/* 87A38F0 8007E3C0 69D6000C */  jal        func_800359A4
/* 87A38F4 8007E3C4 04000524 */   addiu     $a1, $zero, 0x4
/* 87A38F8 8007E3C8 03004010 */  beqz       $v0, .Llevel_43_8007E3D8
/* 87A38FC 8007E3CC 21200002 */   addu      $a0, $s0, $zero
.Llevel_43_8007E3D0:
/* 87A3900 8007E3D0 C656010C */  jal        func_80055B18
/* 87A3904 8007E3D4 00000000 */   nop
.Llevel_43_8007E3D8:
/* 87A3908 8007E3D8 1400BF8F */  lw         $ra, 0x14($sp)
/* 87A390C 8007E3DC 1000B08F */  lw         $s0, 0x10($sp)
/* 87A3910 8007E3E0 1800BD27 */  addiu      $sp, $sp, 0x18
/* 87A3914 8007E3E4 0800E003 */  jr         $ra
/* 87A3918 8007E3E8 00000000 */   nop
.size MobyUpdate_221_level_43, . - MobyUpdate_221_level_43
