.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_459_level_32
/* 6DEDA60 80086530 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6DEDA64 80086534 1000B0AF */  sw         $s0, 0x10($sp)
/* 6DEDA68 80086538 21808000 */  addu       $s0, $a0, $zero
/* 6DEDA6C 8008653C 1400BFAF */  sw         $ra, 0x14($sp)
/* 6DEDA70 80086540 0000048E */  lw         $a0, 0x0($s0)
/* 6DEDA74 80086544 00000000 */  nop
/* 6DEDA78 80086548 0000838C */  lw         $v1, 0x0($a0)
/* 6DEDA7C 8008654C 00000000 */  nop
/* 6DEDA80 80086550 08006018 */  blez       $v1, .Llevel_32_80086574
/* 6DEDA84 80086554 00000000 */   nop
/* 6DEDA88 80086558 0780023C */  lui        $v0, %hi(D_8006C648)
/* 6DEDA8C 8008655C 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 6DEDA90 80086560 00000000 */  nop
/* 6DEDA94 80086564 40100200 */  sll        $v0, $v0, 1
/* 6DEDA98 80086568 23106200 */  subu       $v0, $v1, $v0
/* 6DEDA9C 8008656C 63190208 */  j          .Llevel_32_8008658C
/* 6DEDAA0 80086570 000082AC */   sw        $v0, 0x0($a0)
.Llevel_32_80086574:
/* 6DEDAA4 80086574 0780023C */  lui        $v0, %hi(D_8006C648)
/* 6DEDAA8 80086578 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 6DEDAAC 8008657C 4F000392 */  lbu        $v1, 0x4F($s0)
/* 6DEDAB0 80086580 40100200 */  sll        $v0, $v0, 1
/* 6DEDAB4 80086584 21186200 */  addu       $v1, $v1, $v0
/* 6DEDAB8 80086588 4F0003A2 */  sb         $v1, 0x4F($s0)
.Llevel_32_8008658C:
/* 6DEDABC 8008658C 0780043C */  lui        $a0, %hi(D_8006C648)
/* 6DEDAC0 80086590 48C6848C */  lw         $a0, %lo(D_8006C648)($a0)
/* 6DEDAC4 80086594 1400028E */  lw         $v0, 0x14($s0)
/* 6DEDAC8 80086598 40190400 */  sll        $v1, $a0, 5
/* 6DEDACC 8008659C 21104300 */  addu       $v0, $v0, $v1
/* 6DEDAD0 800865A0 C0200400 */  sll        $a0, $a0, 3
/* 6DEDAD4 800865A4 140002AE */  sw         $v0, 0x14($s0)
/* 6DEDAD8 800865A8 46000292 */  lbu        $v0, 0x46($s0)
/* 6DEDADC 800865AC 4F000392 */  lbu        $v1, 0x4F($s0)
/* 6DEDAE0 800865B0 21104400 */  addu       $v0, $v0, $a0
/* 6DEDAE4 800865B4 7C00632C */  sltiu      $v1, $v1, 0x7C
/* 6DEDAE8 800865B8 0E006014 */  bnez       $v1, .Llevel_32_800865F4
/* 6DEDAEC 800865BC 460002A2 */   sb        $v0, 0x46($s0)
/* 6DEDAF0 800865C0 08000424 */  addiu      $a0, $zero, 0x8
/* 6DEDAF4 800865C4 47000524 */  addiu      $a1, $zero, 0x47
/* 6DEDAF8 800865C8 1400028E */  lw         $v0, 0x14($s0)
/* 6DEDAFC 800865CC 0C000626 */  addiu      $a2, $s0, 0xC
/* 6DEDB00 800865D0 60004224 */  addiu      $v0, $v0, 0x60
/* 6DEDB04 800865D4 140002AE */  sw         $v0, 0x14($s0)
/* 6DEDB08 800865D8 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DEDB0C 800865DC E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DEDB10 800865E0 00000000 */  nop
/* 6DEDB14 800865E4 09F84000 */  jalr       $v0
/* 6DEDB18 800865E8 21380000 */   addu      $a3, $zero, $zero
/* 6DEDB1C 800865EC C656010C */  jal        func_80055B18
/* 6DEDB20 800865F0 21200002 */   addu      $a0, $s0, $zero
.Llevel_32_800865F4:
/* 6DEDB24 800865F4 1400BF8F */  lw         $ra, 0x14($sp)
/* 6DEDB28 800865F8 1000B08F */  lw         $s0, 0x10($sp)
/* 6DEDB2C 800865FC 1800BD27 */  addiu      $sp, $sp, 0x18
/* 6DEDB30 80086600 0800E003 */  jr         $ra
/* 6DEDB34 80086604 00000000 */   nop
.size MobyUpdate_459_level_32, . - MobyUpdate_459_level_32
