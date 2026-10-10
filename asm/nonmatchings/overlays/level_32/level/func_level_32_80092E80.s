.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_80092E80
/* 6DFA3B0 80092E80 70FFBD27 */  addiu      $sp, $sp, -0x90
/* 6DFA3B4 80092E84 8800B6AF */  sw         $s6, 0x88($sp)
/* 6DFA3B8 80092E88 21B08000 */  addu       $s6, $a0, $zero
/* 6DFA3BC 80092E8C 7C00B3AF */  sw         $s3, 0x7C($sp)
/* 6DFA3C0 80092E90 2198A000 */  addu       $s3, $a1, $zero
/* 6DFA3C4 80092E94 8000B4AF */  sw         $s4, 0x80($sp)
/* 6DFA3C8 80092E98 21A0C000 */  addu       $s4, $a2, $zero
/* 6DFA3CC 80092E9C 8400B5AF */  sw         $s5, 0x84($sp)
/* 6DFA3D0 80092EA0 21A8E000 */  addu       $s5, $a3, $zero
/* 6DFA3D4 80092EA4 1000A427 */  addiu      $a0, $sp, 0x10
/* 6DFA3D8 80092EA8 7800B2AF */  sw         $s2, 0x78($sp)
/* 6DFA3DC 80092EAC 1800B227 */  addiu      $s2, $sp, 0x18
/* 6DFA3E0 80092EB0 8C00BFAF */  sw         $ra, 0x8C($sp)
/* 6DFA3E4 80092EB4 7400B1AF */  sw         $s1, 0x74($sp)
/* 6DFA3E8 80092EB8 7000B0AF */  sw         $s0, 0x70($sp)
/* 6DFA3EC 80092EBC 4400C292 */  lbu        $v0, 0x44($s6)
/* 6DFA3F0 80092EC0 21284002 */  addu       $a1, $s2, $zero
/* 6DFA3F4 80092EC4 00110200 */  sll        $v0, $v0, 4
/* 6DFA3F8 80092EC8 1000A2A7 */  sh         $v0, 0x10($sp)
/* 6DFA3FC 80092ECC 4500C292 */  lbu        $v0, 0x45($s6)
/* 6DFA400 80092ED0 3000B027 */  addiu      $s0, $sp, 0x30
/* 6DFA404 80092ED4 00110200 */  sll        $v0, $v0, 4
/* 6DFA408 80092ED8 23100200 */  negu       $v0, $v0
/* 6DFA40C 80092EDC 1200A2A7 */  sh         $v0, 0x12($sp)
/* 6DFA410 80092EE0 4600C292 */  lbu        $v0, 0x46($s6)
/* 6DFA414 80092EE4 21300002 */  addu       $a2, $s0, $zero
/* 6DFA418 80092EE8 00110200 */  sll        $v0, $v0, 4
/* 6DFA41C 80092EEC B13D010C */  jal        func_8004F6C4
/* 6DFA420 80092EF0 1400A2A7 */   sh        $v0, 0x14($sp)
/* 6DFA424 80092EF4 21204002 */  addu       $a0, $s2, $zero
/* 6DFA428 80092EF8 3D3B010C */  jal        func_8004ECF4
/* 6DFA42C 80092EFC 21284002 */   addu      $a1, $s2, $zero
/* 6DFA430 80092F00 1000A427 */  addiu      $a0, $sp, 0x10
/* 6DFA434 80092F04 21280002 */  addu       $a1, $s0, $zero
/* 6DFA438 80092F08 4800B127 */  addiu      $s1, $sp, 0x48
/* 6DFA43C 80092F0C 21302002 */  addu       $a2, $s1, $zero
/* 6DFA440 80092F10 00991300 */  sll        $s3, $s3, 4
/* 6DFA444 80092F14 00A11400 */  sll        $s4, $s4, 4
/* 6DFA448 80092F18 00A91500 */  sll        $s5, $s5, 4
/* 6DFA44C 80092F1C 1000B3A7 */  sh         $s3, 0x10($sp)
/* 6DFA450 80092F20 1200B4A7 */  sh         $s4, 0x12($sp)
/* 6DFA454 80092F24 B13D010C */  jal        func_8004F6C4
/* 6DFA458 80092F28 1400B5A7 */   sh        $s5, 0x14($sp)
/* 6DFA45C 80092F2C 21200002 */  addu       $a0, $s0, $zero
/* 6DFA460 80092F30 3D3B010C */  jal        func_8004ECF4
/* 6DFA464 80092F34 21280002 */   addu      $a1, $s0, $zero
/* 6DFA468 80092F38 21204002 */  addu       $a0, $s2, $zero
/* 6DFA46C 80092F3C 21280002 */  addu       $a1, $s0, $zero
/* 6DFA470 80092F40 D77C010C */  jal        MulMatrix0
/* 6DFA474 80092F44 21302002 */   addu      $a2, $s1, $zero
/* 6DFA478 80092F48 6000A427 */  addiu      $a0, $sp, 0x60
/* 6DFA47C 80092F4C 5B39010C */  jal        func_8004E56C
/* 6DFA480 80092F50 21282002 */   addu      $a1, $s1, $zero
/* 6DFA484 80092F54 6000A28F */  lw         $v0, 0x60($sp)
/* 6DFA488 80092F58 00000000 */  nop
/* 6DFA48C 80092F5C 03110200 */  sra        $v0, $v0, 4
/* 6DFA490 80092F60 4400C2A2 */  sb         $v0, 0x44($s6)
/* 6DFA494 80092F64 6400A28F */  lw         $v0, 0x64($sp)
/* 6DFA498 80092F68 00000000 */  nop
/* 6DFA49C 80092F6C 03110200 */  sra        $v0, $v0, 4
/* 6DFA4A0 80092F70 4500C2A2 */  sb         $v0, 0x45($s6)
/* 6DFA4A4 80092F74 6800A28F */  lw         $v0, 0x68($sp)
/* 6DFA4A8 80092F78 00000000 */  nop
/* 6DFA4AC 80092F7C 03110200 */  sra        $v0, $v0, 4
/* 6DFA4B0 80092F80 4600C2A2 */  sb         $v0, 0x46($s6)
/* 6DFA4B4 80092F84 8C00BF8F */  lw         $ra, 0x8C($sp)
/* 6DFA4B8 80092F88 8800B68F */  lw         $s6, 0x88($sp)
/* 6DFA4BC 80092F8C 8400B58F */  lw         $s5, 0x84($sp)
/* 6DFA4C0 80092F90 8000B48F */  lw         $s4, 0x80($sp)
/* 6DFA4C4 80092F94 7C00B38F */  lw         $s3, 0x7C($sp)
/* 6DFA4C8 80092F98 7800B28F */  lw         $s2, 0x78($sp)
/* 6DFA4CC 80092F9C 7400B18F */  lw         $s1, 0x74($sp)
/* 6DFA4D0 80092FA0 7000B08F */  lw         $s0, 0x70($sp)
/* 6DFA4D4 80092FA4 9000BD27 */  addiu      $sp, $sp, 0x90
/* 6DFA4D8 80092FA8 0800E003 */  jr         $ra
/* 6DFA4DC 80092FAC 00000000 */   nop
.size func_level_32_80092E80, . - func_level_32_80092E80
