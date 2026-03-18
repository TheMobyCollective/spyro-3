.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_15_800841DC
/* 49BE70C 800841DC 80FFBD27 */  addiu      $sp, $sp, -0x80
/* 49BE710 800841E0 7400B7AF */  sw         $s7, 0x74($sp)
/* 49BE714 800841E4 9000B78F */  lw         $s7, 0x90($sp)
/* 49BE718 800841E8 6800B4AF */  sw         $s4, 0x68($sp)
/* 49BE71C 800841EC 21A08000 */  addu       $s4, $a0, $zero
/* 49BE720 800841F0 6C00B5AF */  sw         $s5, 0x6C($sp)
/* 49BE724 800841F4 21A8A000 */  addu       $s5, $a1, $zero
/* 49BE728 800841F8 6400B3AF */  sw         $s3, 0x64($sp)
/* 49BE72C 800841FC 2198C000 */  addu       $s3, $a2, $zero
/* 49BE730 80084200 7000B6AF */  sw         $s6, 0x70($sp)
/* 49BE734 80084204 21B0E000 */  addu       $s6, $a3, $zero
/* 49BE738 80084208 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 49BE73C 8008420C 21880000 */  addu       $s1, $zero, $zero
/* 49BE740 80084210 7800BFAF */  sw         $ra, 0x78($sp)
/* 49BE744 80084214 6000B2AF */  sw         $s2, 0x60($sp)
/* 49BE748 80084218 2C00601A */  blez       $s3, .Llevel_15_800842CC
/* 49BE74C 8008421C 5800B0AF */   sw        $s0, 0x58($sp)
/* 49BE750 80084220 3000B227 */  addiu      $s2, $sp, 0x30
/* 49BE754 80084224 2000B027 */  addiu      $s0, $sp, 0x20
.Llevel_15_80084228:
/* 49BE758 80084228 9171010C */  jal        rand
/* 49BE75C 8008422C 4800A0A3 */   sb        $zero, 0x48($sp)
/* 49BE760 80084230 9171010C */  jal        rand
/* 49BE764 80084234 4900A2A3 */   sb        $v0, 0x49($sp)
/* 49BE768 80084238 4800A427 */  addiu      $a0, $sp, 0x48
/* 49BE76C 8008423C 21284002 */  addu       $a1, $s2, $zero
/* 49BE770 80084240 21300000 */  addu       $a2, $zero, $zero
/* 49BE774 80084244 A43A010C */  jal        func_8004EA90
/* 49BE778 80084248 4A00A2A3 */   sb        $v0, 0x4A($sp)
/* 49BE77C 8008424C 2120C002 */  addu       $a0, $s6, $zero
/* 49BE780 80084250 DBD8000C */  jal        func_8003636C
/* 49BE784 80084254 2128E002 */   addu      $a1, $s7, $zero
/* 49BE788 80084258 21204002 */  addu       $a0, $s2, $zero
/* 49BE78C 8008425C 1000A527 */  addiu      $a1, $sp, 0x10
/* 49BE790 80084260 2130A000 */  addu       $a2, $a1, $zero
/* 49BE794 80084264 1000A2AF */  sw         $v0, 0x10($sp)
/* 49BE798 80084268 1400A0AF */  sw         $zero, 0x14($sp)
/* 49BE79C 8008426C 5B3B010C */  jal        func_8004ED6C
/* 49BE7A0 80084270 1800A0AF */   sw        $zero, 0x18($sp)
/* 49BE7A4 80084274 21200002 */  addu       $a0, $s0, $zero
/* 49BE7A8 80084278 5E3C010C */  jal        func_8004F178
/* 49BE7AC 8008427C 1000A527 */   addiu     $a1, $sp, 0x10
/* 49BE7B0 80084280 21200002 */  addu       $a0, $s0, $zero
/* 49BE7B4 80084284 3A3C010C */  jal        func_8004F0E8
/* 49BE7B8 80084288 02000524 */   addiu     $a1, $zero, 0x2
/* 49BE7BC 8008428C 21200002 */  addu       $a0, $s0, $zero
/* 49BE7C0 80084290 21280002 */  addu       $a1, $s0, $zero
/* 49BE7C4 80084294 653C010C */  jal        func_8004F194
/* 49BE7C8 80084298 21308002 */   addu      $a2, $s4, $zero
/* 49BE7CC 8008429C 01000424 */  addiu      $a0, $zero, 0x1
/* 49BE7D0 800842A0 2128A002 */  addu       $a1, $s5, $zero
/* 49BE7D4 800842A4 21300002 */  addu       $a2, $s0, $zero
/* 49BE7D8 800842A8 01003126 */  addiu      $s1, $s1, 0x1
/* 49BE7DC 800842AC 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 49BE7E0 800842B0 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 49BE7E4 800842B4 00000000 */  nop
/* 49BE7E8 800842B8 09F84000 */  jalr       $v0
/* 49BE7EC 800842BC 1000A727 */   addiu     $a3, $sp, 0x10
/* 49BE7F0 800842C0 2A103302 */  slt        $v0, $s1, $s3
/* 49BE7F4 800842C4 D8FF4014 */  bnez       $v0, .Llevel_15_80084228
/* 49BE7F8 800842C8 00000000 */   nop
.Llevel_15_800842CC:
/* 49BE7FC 800842CC 7800BF8F */  lw         $ra, 0x78($sp)
/* 49BE800 800842D0 7400B78F */  lw         $s7, 0x74($sp)
/* 49BE804 800842D4 7000B68F */  lw         $s6, 0x70($sp)
/* 49BE808 800842D8 6C00B58F */  lw         $s5, 0x6C($sp)
/* 49BE80C 800842DC 6800B48F */  lw         $s4, 0x68($sp)
/* 49BE810 800842E0 6400B38F */  lw         $s3, 0x64($sp)
/* 49BE814 800842E4 6000B28F */  lw         $s2, 0x60($sp)
/* 49BE818 800842E8 5C00B18F */  lw         $s1, 0x5C($sp)
/* 49BE81C 800842EC 5800B08F */  lw         $s0, 0x58($sp)
/* 49BE820 800842F0 8000BD27 */  addiu      $sp, $sp, 0x80
/* 49BE824 800842F4 0800E003 */  jr         $ra
/* 49BE828 800842F8 00000000 */   nop
.size func_level_15_800841DC, . - func_level_15_800841DC
