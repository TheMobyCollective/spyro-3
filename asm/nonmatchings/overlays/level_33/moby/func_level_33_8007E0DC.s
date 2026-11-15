.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_125_level_33
/* 71B5E0C 8007E0DC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 71B5E10 8007E0E0 2000B0AF */  sw         $s0, 0x20($sp)
/* 71B5E14 8007E0E4 21808000 */  addu       $s0, $a0, $zero
/* 71B5E18 8007E0E8 01000424 */  addiu      $a0, $zero, 0x1
/* 71B5E1C 8007E0EC 37000524 */  addiu      $a1, $zero, 0x37
/* 71B5E20 8007E0F0 0C000626 */  addiu      $a2, $s0, 0xC
/* 71B5E24 8007E0F4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 71B5E28 8007E0F8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 71B5E2C 8007E0FC 1000A727 */  addiu      $a3, $sp, 0x10
/* 71B5E30 8007E100 2400BFAF */  sw         $ra, 0x24($sp)
/* 71B5E34 8007E104 1000A0AF */  sw         $zero, 0x10($sp)
/* 71B5E38 8007E108 1400A0AF */  sw         $zero, 0x14($sp)
/* 71B5E3C 8007E10C 09F84000 */  jalr       $v0
/* 71B5E40 8007E110 1800A0AF */   sw        $zero, 0x18($sp)
/* 71B5E44 8007E114 C5E5000C */  jal        func_80039714
/* 71B5E48 8007E118 21200002 */   addu      $a0, $s0, $zero
/* 71B5E4C 8007E11C 2400BF8F */  lw         $ra, 0x24($sp)
/* 71B5E50 8007E120 2000B08F */  lw         $s0, 0x20($sp)
/* 71B5E54 8007E124 2800BD27 */  addiu      $sp, $sp, 0x28
/* 71B5E58 8007E128 0800E003 */  jr         $ra
/* 71B5E5C 8007E12C 00000000 */   nop
.size MobyUpdate_125_level_33, . - MobyUpdate_125_level_33
