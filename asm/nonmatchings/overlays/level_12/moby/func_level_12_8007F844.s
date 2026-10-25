.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_459_level_12
/* 416C574 8007F844 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 416C578 8007F848 1000B0AF */  sw         $s0, 0x10($sp)
/* 416C57C 8007F84C 21808000 */  addu       $s0, $a0, $zero
/* 416C580 8007F850 1400BFAF */  sw         $ra, 0x14($sp)
/* 416C584 8007F854 0000048E */  lw         $a0, 0x0($s0)
/* 416C588 8007F858 00000000 */  nop
/* 416C58C 8007F85C 0000838C */  lw         $v1, 0x0($a0)
/* 416C590 8007F860 00000000 */  nop
/* 416C594 8007F864 08006018 */  blez       $v1, .Llevel_12_8007F888
/* 416C598 8007F868 00000000 */   nop
/* 416C59C 8007F86C 0780023C */  lui        $v0, %hi(D_8006C648)
/* 416C5A0 8007F870 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 416C5A4 8007F874 00000000 */  nop
/* 416C5A8 8007F878 40100200 */  sll        $v0, $v0, 1
/* 416C5AC 8007F87C 23106200 */  subu       $v0, $v1, $v0
/* 416C5B0 8007F880 28FE0108 */  j          .Llevel_12_8007F8A0
/* 416C5B4 8007F884 000082AC */   sw        $v0, 0x0($a0)
.Llevel_12_8007F888:
/* 416C5B8 8007F888 0780023C */  lui        $v0, %hi(D_8006C648)
/* 416C5BC 8007F88C 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 416C5C0 8007F890 4F000392 */  lbu        $v1, 0x4F($s0)
/* 416C5C4 8007F894 40100200 */  sll        $v0, $v0, 1
/* 416C5C8 8007F898 21186200 */  addu       $v1, $v1, $v0
/* 416C5CC 8007F89C 4F0003A2 */  sb         $v1, 0x4F($s0)
.Llevel_12_8007F8A0:
/* 416C5D0 8007F8A0 0780043C */  lui        $a0, %hi(D_8006C648)
/* 416C5D4 8007F8A4 48C6848C */  lw         $a0, %lo(D_8006C648)($a0)
/* 416C5D8 8007F8A8 1400028E */  lw         $v0, 0x14($s0)
/* 416C5DC 8007F8AC 40190400 */  sll        $v1, $a0, 5
/* 416C5E0 8007F8B0 21104300 */  addu       $v0, $v0, $v1
/* 416C5E4 8007F8B4 C0200400 */  sll        $a0, $a0, 3
/* 416C5E8 8007F8B8 140002AE */  sw         $v0, 0x14($s0)
/* 416C5EC 8007F8BC 46000292 */  lbu        $v0, 0x46($s0)
/* 416C5F0 8007F8C0 4F000392 */  lbu        $v1, 0x4F($s0)
/* 416C5F4 8007F8C4 21104400 */  addu       $v0, $v0, $a0
/* 416C5F8 8007F8C8 7C00632C */  sltiu      $v1, $v1, 0x7C
/* 416C5FC 8007F8CC 0E006014 */  bnez       $v1, .Llevel_12_8007F908
/* 416C600 8007F8D0 460002A2 */   sb        $v0, 0x46($s0)
/* 416C604 8007F8D4 08000424 */  addiu      $a0, $zero, 0x8
/* 416C608 8007F8D8 47000524 */  addiu      $a1, $zero, 0x47
/* 416C60C 8007F8DC 1400028E */  lw         $v0, 0x14($s0)
/* 416C610 8007F8E0 0C000626 */  addiu      $a2, $s0, 0xC
/* 416C614 8007F8E4 60004224 */  addiu      $v0, $v0, 0x60
/* 416C618 8007F8E8 140002AE */  sw         $v0, 0x14($s0)
/* 416C61C 8007F8EC 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 416C620 8007F8F0 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 416C624 8007F8F4 00000000 */  nop
/* 416C628 8007F8F8 09F84000 */  jalr       $v0
/* 416C62C 8007F8FC 21380000 */   addu      $a3, $zero, $zero
/* 416C630 8007F900 C656010C */  jal        func_80055B18
/* 416C634 8007F904 21200002 */   addu      $a0, $s0, $zero
.Llevel_12_8007F908:
/* 416C638 8007F908 1400BF8F */  lw         $ra, 0x14($sp)
/* 416C63C 8007F90C 1000B08F */  lw         $s0, 0x10($sp)
/* 416C640 8007F910 1800BD27 */  addiu      $sp, $sp, 0x18
/* 416C644 8007F914 0800E003 */  jr         $ra
/* 416C648 8007F918 00000000 */   nop
.size MobyUpdate_459_level_12, . - MobyUpdate_459_level_12
