.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003BABC
/* 2C2BC 8003BABC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2C2C0 8003BAC0 21188000 */  addu       $v1, $a0, $zero
/* 2C2C4 8003BAC4 1000BFAF */  sw         $ra, 0x10($sp)
/* 2C2C8 8003BAC8 36006284 */  lh         $v0, 0x36($v1)
/* 2C2CC 8003BACC 00000000 */  nop
/* 2C2D0 8003BAD0 80100200 */  sll        $v0, $v0, 2
/* 2C2D4 8003BAD4 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 2C2D8 8003BAD8 21082200 */  addu       $at, $at, $v0
/* 2C2DC 8003BADC 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 2C2E0 8003BAE0 00000000 */  nop
/* 2C2E4 8003BAE4 21104500 */  addu       $v0, $v0, $a1
/* 2C2E8 8003BAE8 04004490 */  lbu        $a0, 0x4($v0)
/* 2C2EC 8003BAEC FF000224 */  addiu      $v0, $zero, 0xFF
/* 2C2F0 8003BAF0 03008210 */  beq        $a0, $v0, .L8003BB00
/* 2C2F4 8003BAF4 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 2C2F8 8003BAF8 D4EE000C */  jal        PlaySound
/* 2C2FC 8003BAFC 21286000 */   addu      $a1, $v1, $zero
.L8003BB00:
/* 2C300 8003BB00 1000BF8F */  lw         $ra, 0x10($sp)
/* 2C304 8003BB04 1800BD27 */  addiu      $sp, $sp, 0x18
/* 2C308 8003BB08 0800E003 */  jr         $ra
/* 2C30C 8003BB0C 00000000 */   nop
.size func_8003BABC, . - func_8003BABC
