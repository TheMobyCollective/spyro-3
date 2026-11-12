.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_459_level_24
/* 5DF6C84 8007BF54 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5DF6C88 8007BF58 1000B0AF */  sw         $s0, 0x10($sp)
/* 5DF6C8C 8007BF5C 21808000 */  addu       $s0, $a0, $zero
/* 5DF6C90 8007BF60 1400BFAF */  sw         $ra, 0x14($sp)
/* 5DF6C94 8007BF64 0000048E */  lw         $a0, 0x0($s0)
/* 5DF6C98 8007BF68 00000000 */  nop
/* 5DF6C9C 8007BF6C 0000838C */  lw         $v1, 0x0($a0)
/* 5DF6CA0 8007BF70 00000000 */  nop
/* 5DF6CA4 8007BF74 08006018 */  blez       $v1, .Llevel_24_8007BF98
/* 5DF6CA8 8007BF78 00000000 */   nop
/* 5DF6CAC 8007BF7C 0780023C */  lui        $v0, %hi(D_8006C648)
/* 5DF6CB0 8007BF80 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 5DF6CB4 8007BF84 00000000 */  nop
/* 5DF6CB8 8007BF88 40100200 */  sll        $v0, $v0, 1
/* 5DF6CBC 8007BF8C 23106200 */  subu       $v0, $v1, $v0
/* 5DF6CC0 8007BF90 ECEF0108 */  j          .Llevel_24_8007BFB0
/* 5DF6CC4 8007BF94 000082AC */   sw        $v0, 0x0($a0)
.Llevel_24_8007BF98:
/* 5DF6CC8 8007BF98 0780023C */  lui        $v0, %hi(D_8006C648)
/* 5DF6CCC 8007BF9C 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 5DF6CD0 8007BFA0 4F000392 */  lbu        $v1, 0x4F($s0)
/* 5DF6CD4 8007BFA4 40100200 */  sll        $v0, $v0, 1
/* 5DF6CD8 8007BFA8 21186200 */  addu       $v1, $v1, $v0
/* 5DF6CDC 8007BFAC 4F0003A2 */  sb         $v1, 0x4F($s0)
.Llevel_24_8007BFB0:
/* 5DF6CE0 8007BFB0 0780043C */  lui        $a0, %hi(D_8006C648)
/* 5DF6CE4 8007BFB4 48C6848C */  lw         $a0, %lo(D_8006C648)($a0)
/* 5DF6CE8 8007BFB8 1400028E */  lw         $v0, 0x14($s0)
/* 5DF6CEC 8007BFBC 40190400 */  sll        $v1, $a0, 5
/* 5DF6CF0 8007BFC0 21104300 */  addu       $v0, $v0, $v1
/* 5DF6CF4 8007BFC4 C0200400 */  sll        $a0, $a0, 3
/* 5DF6CF8 8007BFC8 140002AE */  sw         $v0, 0x14($s0)
/* 5DF6CFC 8007BFCC 46000292 */  lbu        $v0, 0x46($s0)
/* 5DF6D00 8007BFD0 4F000392 */  lbu        $v1, 0x4F($s0)
/* 5DF6D04 8007BFD4 21104400 */  addu       $v0, $v0, $a0
/* 5DF6D08 8007BFD8 7C00632C */  sltiu      $v1, $v1, 0x7C
/* 5DF6D0C 8007BFDC 0E006014 */  bnez       $v1, .Llevel_24_8007C018
/* 5DF6D10 8007BFE0 460002A2 */   sb        $v0, 0x46($s0)
/* 5DF6D14 8007BFE4 08000424 */  addiu      $a0, $zero, 0x8
/* 5DF6D18 8007BFE8 47000524 */  addiu      $a1, $zero, 0x47
/* 5DF6D1C 8007BFEC 1400028E */  lw         $v0, 0x14($s0)
/* 5DF6D20 8007BFF0 0C000626 */  addiu      $a2, $s0, 0xC
/* 5DF6D24 8007BFF4 60004224 */  addiu      $v0, $v0, 0x60
/* 5DF6D28 8007BFF8 140002AE */  sw         $v0, 0x14($s0)
/* 5DF6D2C 8007BFFC 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 5DF6D30 8007C000 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 5DF6D34 8007C004 00000000 */  nop
/* 5DF6D38 8007C008 09F84000 */  jalr       $v0
/* 5DF6D3C 8007C00C 21380000 */   addu      $a3, $zero, $zero
/* 5DF6D40 8007C010 C656010C */  jal        func_80055B18
/* 5DF6D44 8007C014 21200002 */   addu      $a0, $s0, $zero
.Llevel_24_8007C018:
/* 5DF6D48 8007C018 1400BF8F */  lw         $ra, 0x14($sp)
/* 5DF6D4C 8007C01C 1000B08F */  lw         $s0, 0x10($sp)
/* 5DF6D50 8007C020 1800BD27 */  addiu      $sp, $sp, 0x18
/* 5DF6D54 8007C024 0800E003 */  jr         $ra
/* 5DF6D58 8007C028 00000000 */   nop
.size MobyUpdate_459_level_24, . - MobyUpdate_459_level_24
