.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_993_level_14
/* 47BA248 8007AD18 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 47BA24C 8007AD1C 1000B0AF */  sw         $s0, 0x10($sp)
/* 47BA250 8007AD20 21808000 */  addu       $s0, $a0, $zero
/* 47BA254 8007AD24 1400BFAF */  sw         $ra, 0x14($sp)
/* 47BA258 8007AD28 0000038E */  lw         $v1, 0x0($s0)
/* 47BA25C 8007AD2C 00000000 */  nop
/* 47BA260 8007AD30 0000628C */  lw         $v0, 0x0($v1)
/* 47BA264 8007AD34 0680013C */  lui        $at, %hi(D_80066FCC)
/* 47BA268 8007AD38 21082200 */  addu       $at, $at, $v0
/* 47BA26C 8007AD3C CC6F2290 */  lbu        $v0, %lo(D_80066FCC)($at)
/* 47BA270 8007AD40 0780013C */  lui        $at, %hi(D_80070300)
/* 47BA274 8007AD44 21082200 */  addu       $at, $at, $v0
/* 47BA278 8007AD48 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 47BA27C 8007AD4C 00000000 */  nop
/* 47BA280 8007AD50 01004230 */  andi       $v0, $v0, 0x1
/* 47BA284 8007AD54 04004010 */  beqz       $v0, .Llevel_14_8007AD68
/* 47BA288 8007AD58 FC000524 */   addiu     $a1, $zero, 0xFC
/* 47BA28C 8007AD5C 0400648C */  lw         $a0, 0x4($v1)
/* 47BA290 8007AD60 B687000C */  jal        func_80021ED8
/* 47BA294 8007AD64 21300000 */   addu      $a2, $zero, $zero
.Llevel_14_8007AD68:
/* 47BA298 8007AD68 C656010C */  jal        func_80055B18
/* 47BA29C 8007AD6C 21200002 */   addu      $a0, $s0, $zero
/* 47BA2A0 8007AD70 1400BF8F */  lw         $ra, 0x14($sp)
/* 47BA2A4 8007AD74 1000B08F */  lw         $s0, 0x10($sp)
/* 47BA2A8 8007AD78 1800BD27 */  addiu      $sp, $sp, 0x18
/* 47BA2AC 8007AD7C 0800E003 */  jr         $ra
/* 47BA2B0 8007AD80 00000000 */   nop
.size MobyUpdate_993_level_14, . - MobyUpdate_993_level_14
