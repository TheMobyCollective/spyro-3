.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_459_level_41
/* 81417E8 8007BAB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 81417EC 8007BABC 1000B0AF */  sw         $s0, 0x10($sp)
/* 81417F0 8007BAC0 21808000 */  addu       $s0, $a0, $zero
/* 81417F4 8007BAC4 1400BFAF */  sw         $ra, 0x14($sp)
/* 81417F8 8007BAC8 0000048E */  lw         $a0, 0x0($s0)
/* 81417FC 8007BACC 00000000 */  nop
/* 8141800 8007BAD0 0000838C */  lw         $v1, 0x0($a0)
/* 8141804 8007BAD4 00000000 */  nop
/* 8141808 8007BAD8 08006018 */  blez       $v1, .Llevel_41_8007BAFC
/* 814180C 8007BADC 00000000 */   nop
/* 8141810 8007BAE0 0780023C */  lui        $v0, %hi(D_8006C648)
/* 8141814 8007BAE4 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 8141818 8007BAE8 00000000 */  nop
/* 814181C 8007BAEC 40100200 */  sll        $v0, $v0, 1
/* 8141820 8007BAF0 23106200 */  subu       $v0, $v1, $v0
/* 8141824 8007BAF4 C5EE0108 */  j          .Llevel_41_8007BB14
/* 8141828 8007BAF8 000082AC */   sw        $v0, 0x0($a0)
.Llevel_41_8007BAFC:
/* 814182C 8007BAFC 0780023C */  lui        $v0, %hi(D_8006C648)
/* 8141830 8007BB00 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 8141834 8007BB04 4F000392 */  lbu        $v1, 0x4F($s0)
/* 8141838 8007BB08 40100200 */  sll        $v0, $v0, 1
/* 814183C 8007BB0C 21186200 */  addu       $v1, $v1, $v0
/* 8141840 8007BB10 4F0003A2 */  sb         $v1, 0x4F($s0)
.Llevel_41_8007BB14:
/* 8141844 8007BB14 0780043C */  lui        $a0, %hi(D_8006C648)
/* 8141848 8007BB18 48C6848C */  lw         $a0, %lo(D_8006C648)($a0)
/* 814184C 8007BB1C 1400028E */  lw         $v0, 0x14($s0)
/* 8141850 8007BB20 40190400 */  sll        $v1, $a0, 5
/* 8141854 8007BB24 21104300 */  addu       $v0, $v0, $v1
/* 8141858 8007BB28 C0200400 */  sll        $a0, $a0, 3
/* 814185C 8007BB2C 140002AE */  sw         $v0, 0x14($s0)
/* 8141860 8007BB30 46000292 */  lbu        $v0, 0x46($s0)
/* 8141864 8007BB34 4F000392 */  lbu        $v1, 0x4F($s0)
/* 8141868 8007BB38 21104400 */  addu       $v0, $v0, $a0
/* 814186C 8007BB3C 7C00632C */  sltiu      $v1, $v1, 0x7C
/* 8141870 8007BB40 0E006014 */  bnez       $v1, .Llevel_41_8007BB7C
/* 8141874 8007BB44 460002A2 */   sb        $v0, 0x46($s0)
/* 8141878 8007BB48 08000424 */  addiu      $a0, $zero, 0x8
/* 814187C 8007BB4C 47000524 */  addiu      $a1, $zero, 0x47
/* 8141880 8007BB50 1400028E */  lw         $v0, 0x14($s0)
/* 8141884 8007BB54 0C000626 */  addiu      $a2, $s0, 0xC
/* 8141888 8007BB58 60004224 */  addiu      $v0, $v0, 0x60
/* 814188C 8007BB5C 140002AE */  sw         $v0, 0x14($s0)
/* 8141890 8007BB60 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8141894 8007BB64 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8141898 8007BB68 00000000 */  nop
/* 814189C 8007BB6C 09F84000 */  jalr       $v0
/* 81418A0 8007BB70 21380000 */   addu      $a3, $zero, $zero
/* 81418A4 8007BB74 C656010C */  jal        func_80055B18
/* 81418A8 8007BB78 21200002 */   addu      $a0, $s0, $zero
.Llevel_41_8007BB7C:
/* 81418AC 8007BB7C 1400BF8F */  lw         $ra, 0x14($sp)
/* 81418B0 8007BB80 1000B08F */  lw         $s0, 0x10($sp)
/* 81418B4 8007BB84 1800BD27 */  addiu      $sp, $sp, 0x18
/* 81418B8 8007BB88 0800E003 */  jr         $ra
/* 81418BC 8007BB8C 00000000 */   nop
.size MobyUpdate_459_level_41, . - MobyUpdate_459_level_41
