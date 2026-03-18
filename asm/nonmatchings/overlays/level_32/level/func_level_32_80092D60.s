.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_80092D60
/* 6DFA290 80092D60 80FFBD27 */  addiu      $sp, $sp, -0x80
/* 6DFA294 80092D64 7400B7AF */  sw         $s7, 0x74($sp)
/* 6DFA298 80092D68 9000B78F */  lw         $s7, 0x90($sp)
/* 6DFA29C 80092D6C 6800B4AF */  sw         $s4, 0x68($sp)
/* 6DFA2A0 80092D70 21A08000 */  addu       $s4, $a0, $zero
/* 6DFA2A4 80092D74 6C00B5AF */  sw         $s5, 0x6C($sp)
/* 6DFA2A8 80092D78 21A8A000 */  addu       $s5, $a1, $zero
/* 6DFA2AC 80092D7C 6400B3AF */  sw         $s3, 0x64($sp)
/* 6DFA2B0 80092D80 2198C000 */  addu       $s3, $a2, $zero
/* 6DFA2B4 80092D84 7000B6AF */  sw         $s6, 0x70($sp)
/* 6DFA2B8 80092D88 21B0E000 */  addu       $s6, $a3, $zero
/* 6DFA2BC 80092D8C 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 6DFA2C0 80092D90 21880000 */  addu       $s1, $zero, $zero
/* 6DFA2C4 80092D94 7800BFAF */  sw         $ra, 0x78($sp)
/* 6DFA2C8 80092D98 6000B2AF */  sw         $s2, 0x60($sp)
/* 6DFA2CC 80092D9C 2C00601A */  blez       $s3, .Llevel_32_80092E50
/* 6DFA2D0 80092DA0 5800B0AF */   sw        $s0, 0x58($sp)
/* 6DFA2D4 80092DA4 3000B227 */  addiu      $s2, $sp, 0x30
/* 6DFA2D8 80092DA8 2000B027 */  addiu      $s0, $sp, 0x20
.Llevel_32_80092DAC:
/* 6DFA2DC 80092DAC 9171010C */  jal        rand
/* 6DFA2E0 80092DB0 4800A0A3 */   sb        $zero, 0x48($sp)
/* 6DFA2E4 80092DB4 9171010C */  jal        rand
/* 6DFA2E8 80092DB8 4900A2A3 */   sb        $v0, 0x49($sp)
/* 6DFA2EC 80092DBC 4800A427 */  addiu      $a0, $sp, 0x48
/* 6DFA2F0 80092DC0 21284002 */  addu       $a1, $s2, $zero
/* 6DFA2F4 80092DC4 21300000 */  addu       $a2, $zero, $zero
/* 6DFA2F8 80092DC8 A43A010C */  jal        func_8004EA90
/* 6DFA2FC 80092DCC 4A00A2A3 */   sb        $v0, 0x4A($sp)
/* 6DFA300 80092DD0 2120C002 */  addu       $a0, $s6, $zero
/* 6DFA304 80092DD4 DBD8000C */  jal        func_8003636C
/* 6DFA308 80092DD8 2128E002 */   addu      $a1, $s7, $zero
/* 6DFA30C 80092DDC 21204002 */  addu       $a0, $s2, $zero
/* 6DFA310 80092DE0 1000A527 */  addiu      $a1, $sp, 0x10
/* 6DFA314 80092DE4 2130A000 */  addu       $a2, $a1, $zero
/* 6DFA318 80092DE8 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DFA31C 80092DEC 1400A0AF */  sw         $zero, 0x14($sp)
/* 6DFA320 80092DF0 5B3B010C */  jal        func_8004ED6C
/* 6DFA324 80092DF4 1800A0AF */   sw        $zero, 0x18($sp)
/* 6DFA328 80092DF8 21200002 */  addu       $a0, $s0, $zero
/* 6DFA32C 80092DFC 5E3C010C */  jal        func_8004F178
/* 6DFA330 80092E00 1000A527 */   addiu     $a1, $sp, 0x10
/* 6DFA334 80092E04 21200002 */  addu       $a0, $s0, $zero
/* 6DFA338 80092E08 3A3C010C */  jal        func_8004F0E8
/* 6DFA33C 80092E0C 02000524 */   addiu     $a1, $zero, 0x2
/* 6DFA340 80092E10 21200002 */  addu       $a0, $s0, $zero
/* 6DFA344 80092E14 21280002 */  addu       $a1, $s0, $zero
/* 6DFA348 80092E18 653C010C */  jal        func_8004F194
/* 6DFA34C 80092E1C 21308002 */   addu      $a2, $s4, $zero
/* 6DFA350 80092E20 01000424 */  addiu      $a0, $zero, 0x1
/* 6DFA354 80092E24 2128A002 */  addu       $a1, $s5, $zero
/* 6DFA358 80092E28 21300002 */  addu       $a2, $s0, $zero
/* 6DFA35C 80092E2C 01003126 */  addiu      $s1, $s1, 0x1
/* 6DFA360 80092E30 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DFA364 80092E34 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DFA368 80092E38 00000000 */  nop
/* 6DFA36C 80092E3C 09F84000 */  jalr       $v0
/* 6DFA370 80092E40 1000A727 */   addiu     $a3, $sp, 0x10
/* 6DFA374 80092E44 2A103302 */  slt        $v0, $s1, $s3
/* 6DFA378 80092E48 D8FF4014 */  bnez       $v0, .Llevel_32_80092DAC
/* 6DFA37C 80092E4C 00000000 */   nop
.Llevel_32_80092E50:
/* 6DFA380 80092E50 7800BF8F */  lw         $ra, 0x78($sp)
/* 6DFA384 80092E54 7400B78F */  lw         $s7, 0x74($sp)
/* 6DFA388 80092E58 7000B68F */  lw         $s6, 0x70($sp)
/* 6DFA38C 80092E5C 6C00B58F */  lw         $s5, 0x6C($sp)
/* 6DFA390 80092E60 6800B48F */  lw         $s4, 0x68($sp)
/* 6DFA394 80092E64 6400B38F */  lw         $s3, 0x64($sp)
/* 6DFA398 80092E68 6000B28F */  lw         $s2, 0x60($sp)
/* 6DFA39C 80092E6C 5C00B18F */  lw         $s1, 0x5C($sp)
/* 6DFA3A0 80092E70 5800B08F */  lw         $s0, 0x58($sp)
/* 6DFA3A4 80092E74 8000BD27 */  addiu      $sp, $sp, 0x80
/* 6DFA3A8 80092E78 0800E003 */  jr         $ra
/* 6DFA3AC 80092E7C 00000000 */   nop
.size func_level_32_80092D60, . - func_level_32_80092D60
