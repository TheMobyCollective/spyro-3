.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_430_level_26
/* 622BAB8 8007BD88 0780023C */  lui        $v0, %hi(D_8006C770)
/* 622BABC 8007BD8C 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 622BAC0 8007BD90 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 622BAC4 8007BD94 1000B0AF */  sw         $s0, 0x10($sp)
/* 622BAC8 8007BD98 21808000 */  addu       $s0, $a0, $zero
/* 622BACC 8007BD9C 05004010 */  beqz       $v0, .Llevel_26_8007BDB4
/* 622BAD0 8007BDA0 1400BFAF */   sw        $ra, 0x14($sp)
/* 622BAD4 8007BDA4 C656010C */  jal        func_80055B18
/* 622BAD8 8007BDA8 00000000 */   nop
/* 622BADC 8007BDAC 76EF0108 */  j          .Llevel_26_8007BDD8
/* 622BAE0 8007BDB0 00000000 */   nop
.Llevel_26_8007BDB4:
/* 622BAE4 8007BDB4 A157010C */  jal        func_80055E84
/* 622BAE8 8007BDB8 21200002 */   addu      $a0, $s0, $zero
/* 622BAEC 8007BDBC DDFF4324 */  addiu      $v1, $v0, -0x23
/* 622BAF0 8007BDC0 F1FF6228 */  slti       $v0, $v1, -0xF
/* 622BAF4 8007BDC4 04004014 */  bnez       $v0, .Llevel_26_8007BDD8
/* 622BAF8 8007BDC8 10006324 */   addiu     $v1, $v1, 0x10
/* 622BAFC 8007BDCC 30006234 */  ori        $v0, $v1, 0x30
/* 622BB00 8007BDD0 540000AE */  sw         $zero, 0x54($s0)
/* 622BB04 8007BDD4 570002A2 */  sb         $v0, 0x57($s0)
.Llevel_26_8007BDD8:
/* 622BB08 8007BDD8 1400BF8F */  lw         $ra, 0x14($sp)
/* 622BB0C 8007BDDC 1000B08F */  lw         $s0, 0x10($sp)
/* 622BB10 8007BDE0 1800BD27 */  addiu      $sp, $sp, 0x18
/* 622BB14 8007BDE4 0800E003 */  jr         $ra
/* 622BB18 8007BDE8 00000000 */   nop
.size MobyUpdate_430_level_26, . - MobyUpdate_430_level_26
