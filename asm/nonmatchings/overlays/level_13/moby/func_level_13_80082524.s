.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_993_level_13
/* 4420A54 80082524 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4420A58 80082528 1000B0AF */  sw         $s0, 0x10($sp)
/* 4420A5C 8008252C 21808000 */  addu       $s0, $a0, $zero
/* 4420A60 80082530 1400BFAF */  sw         $ra, 0x14($sp)
/* 4420A64 80082534 0000038E */  lw         $v1, 0x0($s0)
/* 4420A68 80082538 00000000 */  nop
/* 4420A6C 8008253C 0000628C */  lw         $v0, 0x0($v1)
/* 4420A70 80082540 0680013C */  lui        $at, %hi(D_80066FCC)
/* 4420A74 80082544 21082200 */  addu       $at, $at, $v0
/* 4420A78 80082548 CC6F2290 */  lbu        $v0, %lo(D_80066FCC)($at)
/* 4420A7C 8008254C 0780013C */  lui        $at, %hi(D_80070300)
/* 4420A80 80082550 21082200 */  addu       $at, $at, $v0
/* 4420A84 80082554 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 4420A88 80082558 00000000 */  nop
/* 4420A8C 8008255C 01004230 */  andi       $v0, $v0, 0x1
/* 4420A90 80082560 04004010 */  beqz       $v0, .Llevel_13_80082574
/* 4420A94 80082564 FC000524 */   addiu     $a1, $zero, 0xFC
/* 4420A98 80082568 0400648C */  lw         $a0, 0x4($v1)
/* 4420A9C 8008256C B687000C */  jal        func_80021ED8
/* 4420AA0 80082570 21300000 */   addu      $a2, $zero, $zero
.Llevel_13_80082574:
/* 4420AA4 80082574 C656010C */  jal        func_80055B18
/* 4420AA8 80082578 21200002 */   addu      $a0, $s0, $zero
/* 4420AAC 8008257C 1400BF8F */  lw         $ra, 0x14($sp)
/* 4420AB0 80082580 1000B08F */  lw         $s0, 0x10($sp)
/* 4420AB4 80082584 1800BD27 */  addiu      $sp, $sp, 0x18
/* 4420AB8 80082588 0800E003 */  jr         $ra
/* 4420ABC 8008258C 00000000 */   nop
.size MobyUpdate_993_level_13, . - MobyUpdate_993_level_13
