.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_459_level_33
/* 71B37C8 8007BA98 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 71B37CC 8007BA9C 1000B0AF */  sw         $s0, 0x10($sp)
/* 71B37D0 8007BAA0 21808000 */  addu       $s0, $a0, $zero
/* 71B37D4 8007BAA4 1400BFAF */  sw         $ra, 0x14($sp)
/* 71B37D8 8007BAA8 0000048E */  lw         $a0, 0x0($s0)
/* 71B37DC 8007BAAC 00000000 */  nop
/* 71B37E0 8007BAB0 0000838C */  lw         $v1, 0x0($a0)
/* 71B37E4 8007BAB4 00000000 */  nop
/* 71B37E8 8007BAB8 08006018 */  blez       $v1, .Llevel_33_8007BADC
/* 71B37EC 8007BABC 00000000 */   nop
/* 71B37F0 8007BAC0 0780023C */  lui        $v0, %hi(D_8006C648)
/* 71B37F4 8007BAC4 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 71B37F8 8007BAC8 00000000 */  nop
/* 71B37FC 8007BACC 40100200 */  sll        $v0, $v0, 1
/* 71B3800 8007BAD0 23106200 */  subu       $v0, $v1, $v0
/* 71B3804 8007BAD4 BDEE0108 */  j          .Llevel_33_8007BAF4
/* 71B3808 8007BAD8 000082AC */   sw        $v0, 0x0($a0)
.Llevel_33_8007BADC:
/* 71B380C 8007BADC 0780023C */  lui        $v0, %hi(D_8006C648)
/* 71B3810 8007BAE0 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 71B3814 8007BAE4 4F000392 */  lbu        $v1, 0x4F($s0)
/* 71B3818 8007BAE8 40100200 */  sll        $v0, $v0, 1
/* 71B381C 8007BAEC 21186200 */  addu       $v1, $v1, $v0
/* 71B3820 8007BAF0 4F0003A2 */  sb         $v1, 0x4F($s0)
.Llevel_33_8007BAF4:
/* 71B3824 8007BAF4 0780043C */  lui        $a0, %hi(D_8006C648)
/* 71B3828 8007BAF8 48C6848C */  lw         $a0, %lo(D_8006C648)($a0)
/* 71B382C 8007BAFC 1400028E */  lw         $v0, 0x14($s0)
/* 71B3830 8007BB00 40190400 */  sll        $v1, $a0, 5
/* 71B3834 8007BB04 21104300 */  addu       $v0, $v0, $v1
/* 71B3838 8007BB08 C0200400 */  sll        $a0, $a0, 3
/* 71B383C 8007BB0C 140002AE */  sw         $v0, 0x14($s0)
/* 71B3840 8007BB10 46000292 */  lbu        $v0, 0x46($s0)
/* 71B3844 8007BB14 4F000392 */  lbu        $v1, 0x4F($s0)
/* 71B3848 8007BB18 21104400 */  addu       $v0, $v0, $a0
/* 71B384C 8007BB1C 7C00632C */  sltiu      $v1, $v1, 0x7C
/* 71B3850 8007BB20 0E006014 */  bnez       $v1, .Llevel_33_8007BB5C
/* 71B3854 8007BB24 460002A2 */   sb        $v0, 0x46($s0)
/* 71B3858 8007BB28 08000424 */  addiu      $a0, $zero, 0x8
/* 71B385C 8007BB2C 47000524 */  addiu      $a1, $zero, 0x47
/* 71B3860 8007BB30 1400028E */  lw         $v0, 0x14($s0)
/* 71B3864 8007BB34 0C000626 */  addiu      $a2, $s0, 0xC
/* 71B3868 8007BB38 60004224 */  addiu      $v0, $v0, 0x60
/* 71B386C 8007BB3C 140002AE */  sw         $v0, 0x14($s0)
/* 71B3870 8007BB40 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 71B3874 8007BB44 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 71B3878 8007BB48 00000000 */  nop
/* 71B387C 8007BB4C 09F84000 */  jalr       $v0
/* 71B3880 8007BB50 21380000 */   addu      $a3, $zero, $zero
/* 71B3884 8007BB54 C656010C */  jal        func_80055B18
/* 71B3888 8007BB58 21200002 */   addu      $a0, $s0, $zero
.Llevel_33_8007BB5C:
/* 71B388C 8007BB5C 1400BF8F */  lw         $ra, 0x14($sp)
/* 71B3890 8007BB60 1000B08F */  lw         $s0, 0x10($sp)
/* 71B3894 8007BB64 1800BD27 */  addiu      $sp, $sp, 0x18
/* 71B3898 8007BB68 0800E003 */  jr         $ra
/* 71B389C 8007BB6C 00000000 */   nop
.size MobyUpdate_459_level_33, . - MobyUpdate_459_level_33
