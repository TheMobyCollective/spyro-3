.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_23_8008DB7C
/* 5AAA0AC 8008DB7C 80FFBD27 */  addiu      $sp, $sp, -0x80
/* 5AAA0B0 8008DB80 7400B7AF */  sw         $s7, 0x74($sp)
/* 5AAA0B4 8008DB84 9000B78F */  lw         $s7, 0x90($sp)
/* 5AAA0B8 8008DB88 6800B4AF */  sw         $s4, 0x68($sp)
/* 5AAA0BC 8008DB8C 21A08000 */  addu       $s4, $a0, $zero
/* 5AAA0C0 8008DB90 6C00B5AF */  sw         $s5, 0x6C($sp)
/* 5AAA0C4 8008DB94 21A8A000 */  addu       $s5, $a1, $zero
/* 5AAA0C8 8008DB98 6400B3AF */  sw         $s3, 0x64($sp)
/* 5AAA0CC 8008DB9C 2198C000 */  addu       $s3, $a2, $zero
/* 5AAA0D0 8008DBA0 7000B6AF */  sw         $s6, 0x70($sp)
/* 5AAA0D4 8008DBA4 21B0E000 */  addu       $s6, $a3, $zero
/* 5AAA0D8 8008DBA8 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 5AAA0DC 8008DBAC 21880000 */  addu       $s1, $zero, $zero
/* 5AAA0E0 8008DBB0 7800BFAF */  sw         $ra, 0x78($sp)
/* 5AAA0E4 8008DBB4 6000B2AF */  sw         $s2, 0x60($sp)
/* 5AAA0E8 8008DBB8 2C00601A */  blez       $s3, .Llevel_23_8008DC6C
/* 5AAA0EC 8008DBBC 5800B0AF */   sw        $s0, 0x58($sp)
/* 5AAA0F0 8008DBC0 3000B227 */  addiu      $s2, $sp, 0x30
/* 5AAA0F4 8008DBC4 2000B027 */  addiu      $s0, $sp, 0x20
.Llevel_23_8008DBC8:
/* 5AAA0F8 8008DBC8 9171010C */  jal        rand
/* 5AAA0FC 8008DBCC 4800A0A3 */   sb        $zero, 0x48($sp)
/* 5AAA100 8008DBD0 9171010C */  jal        rand
/* 5AAA104 8008DBD4 4900A2A3 */   sb        $v0, 0x49($sp)
/* 5AAA108 8008DBD8 4800A427 */  addiu      $a0, $sp, 0x48
/* 5AAA10C 8008DBDC 21284002 */  addu       $a1, $s2, $zero
/* 5AAA110 8008DBE0 21300000 */  addu       $a2, $zero, $zero
/* 5AAA114 8008DBE4 A43A010C */  jal        func_8004EA90
/* 5AAA118 8008DBE8 4A00A2A3 */   sb        $v0, 0x4A($sp)
/* 5AAA11C 8008DBEC 2120C002 */  addu       $a0, $s6, $zero
/* 5AAA120 8008DBF0 DBD8000C */  jal        func_8003636C
/* 5AAA124 8008DBF4 2128E002 */   addu      $a1, $s7, $zero
/* 5AAA128 8008DBF8 21204002 */  addu       $a0, $s2, $zero
/* 5AAA12C 8008DBFC 1000A527 */  addiu      $a1, $sp, 0x10
/* 5AAA130 8008DC00 2130A000 */  addu       $a2, $a1, $zero
/* 5AAA134 8008DC04 1000A2AF */  sw         $v0, 0x10($sp)
/* 5AAA138 8008DC08 1400A0AF */  sw         $zero, 0x14($sp)
/* 5AAA13C 8008DC0C 5B3B010C */  jal        func_8004ED6C
/* 5AAA140 8008DC10 1800A0AF */   sw        $zero, 0x18($sp)
/* 5AAA144 8008DC14 21200002 */  addu       $a0, $s0, $zero
/* 5AAA148 8008DC18 5E3C010C */  jal        func_8004F178
/* 5AAA14C 8008DC1C 1000A527 */   addiu     $a1, $sp, 0x10
/* 5AAA150 8008DC20 21200002 */  addu       $a0, $s0, $zero
/* 5AAA154 8008DC24 3A3C010C */  jal        func_8004F0E8
/* 5AAA158 8008DC28 02000524 */   addiu     $a1, $zero, 0x2
/* 5AAA15C 8008DC2C 21200002 */  addu       $a0, $s0, $zero
/* 5AAA160 8008DC30 21280002 */  addu       $a1, $s0, $zero
/* 5AAA164 8008DC34 653C010C */  jal        func_8004F194
/* 5AAA168 8008DC38 21308002 */   addu      $a2, $s4, $zero
/* 5AAA16C 8008DC3C 01000424 */  addiu      $a0, $zero, 0x1
/* 5AAA170 8008DC40 2128A002 */  addu       $a1, $s5, $zero
/* 5AAA174 8008DC44 21300002 */  addu       $a2, $s0, $zero
/* 5AAA178 8008DC48 01003126 */  addiu      $s1, $s1, 0x1
/* 5AAA17C 8008DC4C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 5AAA180 8008DC50 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 5AAA184 8008DC54 00000000 */  nop
/* 5AAA188 8008DC58 09F84000 */  jalr       $v0
/* 5AAA18C 8008DC5C 1000A727 */   addiu     $a3, $sp, 0x10
/* 5AAA190 8008DC60 2A103302 */  slt        $v0, $s1, $s3
/* 5AAA194 8008DC64 D8FF4014 */  bnez       $v0, .Llevel_23_8008DBC8
/* 5AAA198 8008DC68 00000000 */   nop
.Llevel_23_8008DC6C:
/* 5AAA19C 8008DC6C 7800BF8F */  lw         $ra, 0x78($sp)
/* 5AAA1A0 8008DC70 7400B78F */  lw         $s7, 0x74($sp)
/* 5AAA1A4 8008DC74 7000B68F */  lw         $s6, 0x70($sp)
/* 5AAA1A8 8008DC78 6C00B58F */  lw         $s5, 0x6C($sp)
/* 5AAA1AC 8008DC7C 6800B48F */  lw         $s4, 0x68($sp)
/* 5AAA1B0 8008DC80 6400B38F */  lw         $s3, 0x64($sp)
/* 5AAA1B4 8008DC84 6000B28F */  lw         $s2, 0x60($sp)
/* 5AAA1B8 8008DC88 5C00B18F */  lw         $s1, 0x5C($sp)
/* 5AAA1BC 8008DC8C 5800B08F */  lw         $s0, 0x58($sp)
/* 5AAA1C0 8008DC90 8000BD27 */  addiu      $sp, $sp, 0x80
/* 5AAA1C4 8008DC94 0800E003 */  jr         $ra
/* 5AAA1C8 8008DC98 00000000 */   nop
.size func_level_23_8008DB7C, . - func_level_23_8008DB7C
