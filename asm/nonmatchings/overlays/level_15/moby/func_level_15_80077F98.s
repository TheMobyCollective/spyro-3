.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_15_80077F98
/* 49B24C8 80077F98 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 49B24CC 80077F9C 2000B0AF */  sw         $s0, 0x20($sp)
/* 49B24D0 80077FA0 2400BFAF */  sw         $ra, 0x24($sp)
/* 49B24D4 80077FA4 C5E5000C */  jal        func_80039714
/* 49B24D8 80077FA8 21808000 */   addu      $s0, $a0, $zero
/* 49B24DC 80077FAC 36000386 */  lh         $v1, 0x36($s0)
/* 49B24E0 80077FB0 7A010224 */  addiu      $v0, $zero, 0x17A
/* 49B24E4 80077FB4 18006214 */  bne        $v1, $v0, .Llevel_15_80078018
/* 49B24E8 80077FB8 00000000 */   nop
/* 49B24EC 80077FBC 0780023C */  lui        $v0, %hi(D_8006C640)
/* 49B24F0 80077FC0 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 49B24F4 80077FC4 00000000 */  nop
/* 49B24F8 80077FC8 01004230 */  andi       $v0, $v0, 0x1
/* 49B24FC 80077FCC 12004010 */  beqz       $v0, .Llevel_15_80078018
/* 49B2500 80077FD0 00000000 */   nop
/* 49B2504 80077FD4 9171010C */  jal        rand
/* 49B2508 80077FD8 00000000 */   nop
/* 49B250C 80077FDC 03004230 */  andi       $v0, $v0, 0x3
/* 49B2510 80077FE0 9171010C */  jal        rand
/* 49B2514 80077FE4 1000A2AF */   sw        $v0, 0x10($sp)
/* 49B2518 80077FE8 01000424 */  addiu      $a0, $zero, 0x1
/* 49B251C 80077FEC 03004230 */  andi       $v0, $v0, 0x3
/* 49B2520 80077FF0 1400A2AF */  sw         $v0, 0x14($sp)
/* 49B2524 80077FF4 14000224 */  addiu      $v0, $zero, 0x14
/* 49B2528 80077FF8 01000524 */  addiu      $a1, $zero, 0x1
/* 49B252C 80077FFC 0C000626 */  addiu      $a2, $s0, 0xC
/* 49B2530 80078000 1800A2AF */  sw         $v0, 0x18($sp)
/* 49B2534 80078004 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 49B2538 80078008 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 49B253C 8007800C 00000000 */  nop
/* 49B2540 80078010 09F84000 */  jalr       $v0
/* 49B2544 80078014 1000A727 */   addiu     $a3, $sp, 0x10
.Llevel_15_80078018:
/* 49B2548 80078018 2400BF8F */  lw         $ra, 0x24($sp)
/* 49B254C 8007801C 2000B08F */  lw         $s0, 0x20($sp)
/* 49B2550 80078020 2800BD27 */  addiu      $sp, $sp, 0x28
/* 49B2554 80078024 0800E003 */  jr         $ra
/* 49B2558 80078028 00000000 */   nop
.size func_level_15_80077F98, . - func_level_15_80077F98
