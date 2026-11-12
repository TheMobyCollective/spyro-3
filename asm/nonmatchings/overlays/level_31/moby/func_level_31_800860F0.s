.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_314_level_31
/* 6AA0E20 800860F0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 6AA0E24 800860F4 1400B1AF */  sw         $s1, 0x14($sp)
/* 6AA0E28 800860F8 21888000 */  addu       $s1, $a0, $zero
/* 6AA0E2C 800860FC 1800BFAF */  sw         $ra, 0x18($sp)
/* 6AA0E30 80086100 1000B0AF */  sw         $s0, 0x10($sp)
/* 6AA0E34 80086104 48002292 */  lbu        $v0, 0x48($s1)
/* 6AA0E38 80086108 00000000 */  nop
/* 6AA0E3C 8008610C 1A004014 */  bnez       $v0, .Llevel_31_80086178
/* 6AA0E40 80086110 3A010424 */   addiu     $a0, $zero, 0x13A
/* 6AA0E44 80086114 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6AA0E48 80086118 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6AA0E4C 8008611C 00000000 */  nop
/* 6AA0E50 80086120 09F84000 */  jalr       $v0
/* 6AA0E54 80086124 21282002 */   addu      $a1, $s1, $zero
/* 6AA0E58 80086128 7F000424 */  addiu      $a0, $zero, 0x7F
/* 6AA0E5C 8008612C 0780013C */  lui        $at, %hi(D_8006C5B8)
/* 6AA0E60 80086130 B8C520AC */  sw         $zero, %lo(D_8006C5B8)($at)
/* 6AA0E64 80086134 53002392 */  lbu        $v1, 0x53($s1)
/* 6AA0E68 80086138 21804000 */  addu       $s0, $v0, $zero
/* 6AA0E6C 8008613C 4C0024A2 */  sb         $a0, 0x4C($s1)
/* 6AA0E70 80086140 80006334 */  ori        $v1, $v1, 0x80
/* 6AA0E74 80086144 0C000012 */  beqz       $s0, .Llevel_31_80086178
/* 6AA0E78 80086148 530023A2 */   sb        $v1, 0x53($s1)
/* 6AA0E7C 8008614C 21200002 */  addu       $a0, $s0, $zero
/* 6AA0E80 80086150 01000524 */  addiu      $a1, $zero, 0x1
/* 6AA0E84 80086154 4D0000A2 */  sb         $zero, 0x4D($s0)
/* 6AA0E88 80086158 E0D3000C */  jal        func_80034F80
/* 6AA0E8C 8008615C 4C0000A2 */   sb        $zero, 0x4C($s0)
/* 6AA0E90 80086160 21200002 */  addu       $a0, $s0, $zero
/* 6AA0E94 80086164 4957010C */  jal        func_80055D24
/* 6AA0E98 80086168 01000524 */   addiu     $a1, $zero, 0x1
/* 6AA0E9C 8008616C 01000224 */  addiu      $v0, $zero, 0x1
/* 6AA0EA0 80086170 480002A2 */  sb         $v0, 0x48($s0)
/* 6AA0EA4 80086174 480022A2 */  sb         $v0, 0x48($s1)
.Llevel_31_80086178:
/* 6AA0EA8 80086178 1800BF8F */  lw         $ra, 0x18($sp)
/* 6AA0EAC 8008617C 1400B18F */  lw         $s1, 0x14($sp)
/* 6AA0EB0 80086180 1000B08F */  lw         $s0, 0x10($sp)
/* 6AA0EB4 80086184 2000BD27 */  addiu      $sp, $sp, 0x20
/* 6AA0EB8 80086188 0800E003 */  jr         $ra
/* 6AA0EBC 8008618C 00000000 */   nop
.size MobyUpdate_314_level_31, . - MobyUpdate_314_level_31
