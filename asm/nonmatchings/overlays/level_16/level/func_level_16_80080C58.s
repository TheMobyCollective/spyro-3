.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_16_80080C58
/* 4BA2188 80080C58 80FFBD27 */  addiu      $sp, $sp, -0x80
/* 4BA218C 80080C5C 7400B7AF */  sw         $s7, 0x74($sp)
/* 4BA2190 80080C60 9000B78F */  lw         $s7, 0x90($sp)
/* 4BA2194 80080C64 6800B4AF */  sw         $s4, 0x68($sp)
/* 4BA2198 80080C68 21A08000 */  addu       $s4, $a0, $zero
/* 4BA219C 80080C6C 6C00B5AF */  sw         $s5, 0x6C($sp)
/* 4BA21A0 80080C70 21A8A000 */  addu       $s5, $a1, $zero
/* 4BA21A4 80080C74 6400B3AF */  sw         $s3, 0x64($sp)
/* 4BA21A8 80080C78 2198C000 */  addu       $s3, $a2, $zero
/* 4BA21AC 80080C7C 7000B6AF */  sw         $s6, 0x70($sp)
/* 4BA21B0 80080C80 21B0E000 */  addu       $s6, $a3, $zero
/* 4BA21B4 80080C84 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 4BA21B8 80080C88 21880000 */  addu       $s1, $zero, $zero
/* 4BA21BC 80080C8C 7800BFAF */  sw         $ra, 0x78($sp)
/* 4BA21C0 80080C90 6000B2AF */  sw         $s2, 0x60($sp)
/* 4BA21C4 80080C94 2C00601A */  blez       $s3, .Llevel_16_80080D48
/* 4BA21C8 80080C98 5800B0AF */   sw        $s0, 0x58($sp)
/* 4BA21CC 80080C9C 3000B227 */  addiu      $s2, $sp, 0x30
/* 4BA21D0 80080CA0 2000B027 */  addiu      $s0, $sp, 0x20
.Llevel_16_80080CA4:
/* 4BA21D4 80080CA4 9171010C */  jal        rand
/* 4BA21D8 80080CA8 4800A0A3 */   sb        $zero, 0x48($sp)
/* 4BA21DC 80080CAC 9171010C */  jal        rand
/* 4BA21E0 80080CB0 4900A2A3 */   sb        $v0, 0x49($sp)
/* 4BA21E4 80080CB4 4800A427 */  addiu      $a0, $sp, 0x48
/* 4BA21E8 80080CB8 21284002 */  addu       $a1, $s2, $zero
/* 4BA21EC 80080CBC 21300000 */  addu       $a2, $zero, $zero
/* 4BA21F0 80080CC0 A43A010C */  jal        func_8004EA90
/* 4BA21F4 80080CC4 4A00A2A3 */   sb        $v0, 0x4A($sp)
/* 4BA21F8 80080CC8 2120C002 */  addu       $a0, $s6, $zero
/* 4BA21FC 80080CCC DBD8000C */  jal        func_8003636C
/* 4BA2200 80080CD0 2128E002 */   addu      $a1, $s7, $zero
/* 4BA2204 80080CD4 21204002 */  addu       $a0, $s2, $zero
/* 4BA2208 80080CD8 1000A527 */  addiu      $a1, $sp, 0x10
/* 4BA220C 80080CDC 2130A000 */  addu       $a2, $a1, $zero
/* 4BA2210 80080CE0 1000A2AF */  sw         $v0, 0x10($sp)
/* 4BA2214 80080CE4 1400A0AF */  sw         $zero, 0x14($sp)
/* 4BA2218 80080CE8 5B3B010C */  jal        func_8004ED6C
/* 4BA221C 80080CEC 1800A0AF */   sw        $zero, 0x18($sp)
/* 4BA2220 80080CF0 21200002 */  addu       $a0, $s0, $zero
/* 4BA2224 80080CF4 5E3C010C */  jal        func_8004F178
/* 4BA2228 80080CF8 1000A527 */   addiu     $a1, $sp, 0x10
/* 4BA222C 80080CFC 21200002 */  addu       $a0, $s0, $zero
/* 4BA2230 80080D00 3A3C010C */  jal        func_8004F0E8
/* 4BA2234 80080D04 02000524 */   addiu     $a1, $zero, 0x2
/* 4BA2238 80080D08 21200002 */  addu       $a0, $s0, $zero
/* 4BA223C 80080D0C 21280002 */  addu       $a1, $s0, $zero
/* 4BA2240 80080D10 653C010C */  jal        func_8004F194
/* 4BA2244 80080D14 21308002 */   addu      $a2, $s4, $zero
/* 4BA2248 80080D18 01000424 */  addiu      $a0, $zero, 0x1
/* 4BA224C 80080D1C 2128A002 */  addu       $a1, $s5, $zero
/* 4BA2250 80080D20 21300002 */  addu       $a2, $s0, $zero
/* 4BA2254 80080D24 01003126 */  addiu      $s1, $s1, 0x1
/* 4BA2258 80080D28 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 4BA225C 80080D2C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 4BA2260 80080D30 00000000 */  nop
/* 4BA2264 80080D34 09F84000 */  jalr       $v0
/* 4BA2268 80080D38 1000A727 */   addiu     $a3, $sp, 0x10
/* 4BA226C 80080D3C 2A103302 */  slt        $v0, $s1, $s3
/* 4BA2270 80080D40 D8FF4014 */  bnez       $v0, .Llevel_16_80080CA4
/* 4BA2274 80080D44 00000000 */   nop
.Llevel_16_80080D48:
/* 4BA2278 80080D48 7800BF8F */  lw         $ra, 0x78($sp)
/* 4BA227C 80080D4C 7400B78F */  lw         $s7, 0x74($sp)
/* 4BA2280 80080D50 7000B68F */  lw         $s6, 0x70($sp)
/* 4BA2284 80080D54 6C00B58F */  lw         $s5, 0x6C($sp)
/* 4BA2288 80080D58 6800B48F */  lw         $s4, 0x68($sp)
/* 4BA228C 80080D5C 6400B38F */  lw         $s3, 0x64($sp)
/* 4BA2290 80080D60 6000B28F */  lw         $s2, 0x60($sp)
/* 4BA2294 80080D64 5C00B18F */  lw         $s1, 0x5C($sp)
/* 4BA2298 80080D68 5800B08F */  lw         $s0, 0x58($sp)
/* 4BA229C 80080D6C 8000BD27 */  addiu      $sp, $sp, 0x80
/* 4BA22A0 80080D70 0800E003 */  jr         $ra
/* 4BA22A4 80080D74 00000000 */   nop
.size func_level_16_80080C58, . - func_level_16_80080C58
