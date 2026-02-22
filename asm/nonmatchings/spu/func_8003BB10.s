.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003BB10
/* 2C310 8003BB10 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2C314 8003BB14 0780023C */  lui        $v0, %hi(D_8006C708)
/* 2C318 8003BB18 08C7428C */  lw         $v0, %lo(D_8006C708)($v0)
/* 2C31C 8003BB1C 21188000 */  addu       $v1, $a0, $zero
/* 2C320 8003BB20 1000BFAF */  sw         $ra, 0x10($sp)
/* 2C324 8003BB24 21104500 */  addu       $v0, $v0, $a1
/* 2C328 8003BB28 00004490 */  lbu        $a0, 0x0($v0)
/* 2C32C 8003BB2C FF000224 */  addiu      $v0, $zero, 0xFF
/* 2C330 8003BB30 03008210 */  beq        $a0, $v0, .L8003BB40
/* 2C334 8003BB34 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 2C338 8003BB38 D4EE000C */  jal        PlaySound
/* 2C33C 8003BB3C 21286000 */   addu      $a1, $v1, $zero
.L8003BB40:
/* 2C340 8003BB40 1000BF8F */  lw         $ra, 0x10($sp)
/* 2C344 8003BB44 1800BD27 */  addiu      $sp, $sp, 0x18
/* 2C348 8003BB48 0800E003 */  jr         $ra
/* 2C34C 8003BB4C 00000000 */   nop
.size func_8003BB10, . - func_8003BB10
