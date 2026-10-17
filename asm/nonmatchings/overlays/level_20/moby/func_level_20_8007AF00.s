.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_459_level_20
/* 50CAC30 8007AF00 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 50CAC34 8007AF04 1000B0AF */  sw         $s0, 0x10($sp)
/* 50CAC38 8007AF08 21808000 */  addu       $s0, $a0, $zero
/* 50CAC3C 8007AF0C 1400BFAF */  sw         $ra, 0x14($sp)
/* 50CAC40 8007AF10 0000048E */  lw         $a0, 0x0($s0)
/* 50CAC44 8007AF14 00000000 */  nop
/* 50CAC48 8007AF18 0000838C */  lw         $v1, 0x0($a0)
/* 50CAC4C 8007AF1C 00000000 */  nop
/* 50CAC50 8007AF20 08006018 */  blez       $v1, .Llevel_20_8007AF44
/* 50CAC54 8007AF24 00000000 */   nop
/* 50CAC58 8007AF28 0780023C */  lui        $v0, %hi(D_8006C648)
/* 50CAC5C 8007AF2C 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 50CAC60 8007AF30 00000000 */  nop
/* 50CAC64 8007AF34 40100200 */  sll        $v0, $v0, 1
/* 50CAC68 8007AF38 23106200 */  subu       $v0, $v1, $v0
/* 50CAC6C 8007AF3C D7EB0108 */  j          .Llevel_20_8007AF5C
/* 50CAC70 8007AF40 000082AC */   sw        $v0, 0x0($a0)
.Llevel_20_8007AF44:
/* 50CAC74 8007AF44 0780023C */  lui        $v0, %hi(D_8006C648)
/* 50CAC78 8007AF48 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 50CAC7C 8007AF4C 4F000392 */  lbu        $v1, 0x4F($s0)
/* 50CAC80 8007AF50 40100200 */  sll        $v0, $v0, 1
/* 50CAC84 8007AF54 21186200 */  addu       $v1, $v1, $v0
/* 50CAC88 8007AF58 4F0003A2 */  sb         $v1, 0x4F($s0)
.Llevel_20_8007AF5C:
/* 50CAC8C 8007AF5C 0780043C */  lui        $a0, %hi(D_8006C648)
/* 50CAC90 8007AF60 48C6848C */  lw         $a0, %lo(D_8006C648)($a0)
/* 50CAC94 8007AF64 1400028E */  lw         $v0, 0x14($s0)
/* 50CAC98 8007AF68 40190400 */  sll        $v1, $a0, 5
/* 50CAC9C 8007AF6C 21104300 */  addu       $v0, $v0, $v1
/* 50CACA0 8007AF70 C0200400 */  sll        $a0, $a0, 3
/* 50CACA4 8007AF74 140002AE */  sw         $v0, 0x14($s0)
/* 50CACA8 8007AF78 46000292 */  lbu        $v0, 0x46($s0)
/* 50CACAC 8007AF7C 4F000392 */  lbu        $v1, 0x4F($s0)
/* 50CACB0 8007AF80 21104400 */  addu       $v0, $v0, $a0
/* 50CACB4 8007AF84 7C00632C */  sltiu      $v1, $v1, 0x7C
/* 50CACB8 8007AF88 0E006014 */  bnez       $v1, .Llevel_20_8007AFC4
/* 50CACBC 8007AF8C 460002A2 */   sb        $v0, 0x46($s0)
/* 50CACC0 8007AF90 08000424 */  addiu      $a0, $zero, 0x8
/* 50CACC4 8007AF94 47000524 */  addiu      $a1, $zero, 0x47
/* 50CACC8 8007AF98 1400028E */  lw         $v0, 0x14($s0)
/* 50CACCC 8007AF9C 0C000626 */  addiu      $a2, $s0, 0xC
/* 50CACD0 8007AFA0 60004224 */  addiu      $v0, $v0, 0x60
/* 50CACD4 8007AFA4 140002AE */  sw         $v0, 0x14($s0)
/* 50CACD8 8007AFA8 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 50CACDC 8007AFAC E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 50CACE0 8007AFB0 00000000 */  nop
/* 50CACE4 8007AFB4 09F84000 */  jalr       $v0
/* 50CACE8 8007AFB8 21380000 */   addu      $a3, $zero, $zero
/* 50CACEC 8007AFBC C656010C */  jal        func_80055B18
/* 50CACF0 8007AFC0 21200002 */   addu      $a0, $s0, $zero
.Llevel_20_8007AFC4:
/* 50CACF4 8007AFC4 1400BF8F */  lw         $ra, 0x14($sp)
/* 50CACF8 8007AFC8 1000B08F */  lw         $s0, 0x10($sp)
/* 50CACFC 8007AFCC 1800BD27 */  addiu      $sp, $sp, 0x18
/* 50CAD00 8007AFD0 0800E003 */  jr         $ra
/* 50CAD04 8007AFD4 00000000 */   nop
.size MobyUpdate_459_level_20, . - MobyUpdate_459_level_20
