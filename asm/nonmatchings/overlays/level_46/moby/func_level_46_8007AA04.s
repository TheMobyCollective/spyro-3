.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_245_level_46
/* 8F4CF34 8007AA04 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 8F4CF38 8007AA08 2400B1AF */  sw         $s1, 0x24($sp)
/* 8F4CF3C 8007AA0C 21888000 */  addu       $s1, $a0, $zero
/* 8F4CF40 8007AA10 2800BFAF */  sw         $ra, 0x28($sp)
/* 8F4CF44 8007AA14 2000B0AF */  sw         $s0, 0x20($sp)
/* 8F4CF48 8007AA18 0000308E */  lw         $s0, 0x0($s1)
/* 8F4CF4C 8007AA1C 04000524 */  addiu      $a1, $zero, 0x4
/* 8F4CF50 8007AA20 69D6000C */  jal        func_800359A4
/* 8F4CF54 8007AA24 0C000426 */   addiu     $a0, $s0, 0xC
/* 8F4CF58 8007AA28 05004010 */  beqz       $v0, .Llevel_46_8007AA40
/* 8F4CF5C 8007AA2C 1000A427 */   addiu     $a0, $sp, 0x10
/* 8F4CF60 8007AA30 C656010C */  jal        func_80055B18
/* 8F4CF64 8007AA34 21202002 */   addu      $a0, $s1, $zero
/* 8F4CF68 8007AA38 AAEA0108 */  j          .Llevel_46_8007AAA8
/* 8F4CF6C 8007AA3C 00000000 */   nop
.Llevel_46_8007AA40:
/* 8F4CF70 8007AA40 5E3C010C */  jal        func_8004F178
/* 8F4CF74 8007AA44 21280002 */   addu      $a1, $s0, $zero
/* 8F4CF78 8007AA48 1000A427 */  addiu      $a0, $sp, 0x10
/* 8F4CF7C 8007AA4C 1800A28F */  lw         $v0, 0x18($sp)
/* 8F4CF80 8007AA50 08000524 */  addiu      $a1, $zero, 0x8
/* 8F4CF84 8007AA54 20004224 */  addiu      $v0, $v0, 0x20
/* 8F4CF88 8007AA58 C13B010C */  jal        func_8004EF04
/* 8F4CF8C 8007AA5C 1800A2AF */   sw        $v0, 0x18($sp)
/* 8F4CF90 8007AA60 21200002 */  addu       $a0, $s0, $zero
/* 8F4CF94 8007AA64 21280002 */  addu       $a1, $s0, $zero
/* 8F4CF98 8007AA68 723C010C */  jal        func_8004F1C8
/* 8F4CF9C 8007AA6C 1000A627 */   addiu     $a2, $sp, 0x10
/* 8F4CFA0 8007AA70 0C002426 */  addiu      $a0, $s1, 0xC
/* 8F4CFA4 8007AA74 21288000 */  addu       $a1, $a0, $zero
/* 8F4CFA8 8007AA78 653C010C */  jal        func_8004F194
/* 8F4CFAC 8007AA7C 21300002 */   addu      $a2, $s0, $zero
/* 8F4CFB0 8007AA80 0C00028E */  lw         $v0, 0xC($s0)
/* 8F4CFB4 8007AA84 00000000 */  nop
/* 8F4CFB8 8007AA88 C0100200 */  sll        $v0, $v0, 3
/* 8F4CFBC 8007AA8C F8014230 */  andi       $v0, $v0, 0x1F8
/* 8F4CFC0 8007AA90 0680013C */  lui        $at, %hi(D_80065920)
/* 8F4CFC4 8007AA94 21082200 */  addu       $at, $at, $v0
/* 8F4CFC8 8007AA98 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 8F4CFCC 8007AA9C 00000000 */  nop
/* 8F4CFD0 8007AAA0 C2110200 */  srl        $v0, $v0, 7
/* 8F4CFD4 8007AAA4 440022A2 */  sb         $v0, 0x44($s1)
.Llevel_46_8007AAA8:
/* 8F4CFD8 8007AAA8 2800BF8F */  lw         $ra, 0x28($sp)
/* 8F4CFDC 8007AAAC 2400B18F */  lw         $s1, 0x24($sp)
/* 8F4CFE0 8007AAB0 2000B08F */  lw         $s0, 0x20($sp)
/* 8F4CFE4 8007AAB4 3000BD27 */  addiu      $sp, $sp, 0x30
/* 8F4CFE8 8007AAB8 0800E003 */  jr         $ra
/* 8F4CFEC 8007AABC 00000000 */   nop
.size MobyUpdate_245_level_46, . - MobyUpdate_245_level_46
