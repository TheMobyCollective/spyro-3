.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_326_level_32
/* 6DDF9EC 800784BC D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 6DDF9F0 800784C0 2000B0AF */  sw         $s0, 0x20($sp)
/* 6DDF9F4 800784C4 21808000 */  addu       $s0, $a0, $zero
/* 6DDF9F8 800784C8 2800BFAF */  sw         $ra, 0x28($sp)
/* 6DDF9FC 800784CC 2400B1AF */  sw         $s1, 0x24($sp)
/* 6DDFA00 800784D0 0000118E */  lw         $s1, 0x0($s0)
/* 6DDFA04 800784D4 02000524 */  addiu      $a1, $zero, 0x2
/* 6DDFA08 800784D8 69D6000C */  jal        func_800359A4
/* 6DDFA0C 800784DC 21202002 */   addu      $a0, $s1, $zero
/* 6DDFA10 800784E0 03004010 */  beqz       $v0, .Llevel_32_800784F0
/* 6DDFA14 800784E4 00000000 */   nop
/* 6DDFA18 800784E8 C656010C */  jal        func_80055B18
/* 6DDFA1C 800784EC 21200002 */   addu      $a0, $s0, $zero
.Llevel_32_800784F0:
/* 6DDFA20 800784F0 02002392 */  lbu        $v1, 0x2($s1)
/* 6DDFA24 800784F4 00000000 */  nop
/* 6DDFA28 800784F8 0E006014 */  bnez       $v1, .Llevel_32_80078534
/* 6DDFA2C 800784FC 01000224 */   addiu     $v0, $zero, 0x1
/* 6DDFA30 80078500 00002286 */  lh         $v0, 0x0($s1)
/* 6DDFA34 80078504 00000000 */  nop
/* 6DDFA38 80078508 21184000 */  addu       $v1, $v0, $zero
/* 6DDFA3C 8007850C 08004228 */  slti       $v0, $v0, 0x8
/* 6DDFA40 80078510 04004010 */  beqz       $v0, .Llevel_32_80078524
/* 6DDFA44 80078514 00110300 */   sll       $v0, $v1, 4
/* 6DDFA48 80078518 540002A2 */  sb         $v0, 0x54($s0)
/* 6DDFA4C 8007851C 6AE10108 */  j          .Llevel_32_800785A8
/* 6DDFA50 80078520 550000A2 */   sb        $zero, 0x55($s0)
.Llevel_32_80078524:
/* 6DDFA54 80078524 F8FF6224 */  addiu      $v0, $v1, -0x8
/* 6DDFA58 80078528 00110200 */  sll        $v0, $v0, 4
/* 6DDFA5C 8007852C 6AE10108 */  j          .Llevel_32_800785A8
/* 6DDFA60 80078530 550002A2 */   sb        $v0, 0x55($s0)
.Llevel_32_80078534:
/* 6DDFA64 80078534 0E006214 */  bne        $v1, $v0, .Llevel_32_80078570
/* 6DDFA68 80078538 02000224 */   addiu     $v0, $zero, 0x2
/* 6DDFA6C 8007853C 00002286 */  lh         $v0, 0x0($s1)
/* 6DDFA70 80078540 00000000 */  nop
/* 6DDFA74 80078544 21184000 */  addu       $v1, $v0, $zero
/* 6DDFA78 80078548 08004228 */  slti       $v0, $v0, 0x8
/* 6DDFA7C 8007854C 04004010 */  beqz       $v0, .Llevel_32_80078560
/* 6DDFA80 80078550 00110300 */   sll       $v0, $v1, 4
/* 6DDFA84 80078554 550002A2 */  sb         $v0, 0x55($s0)
/* 6DDFA88 80078558 6AE10108 */  j          .Llevel_32_800785A8
/* 6DDFA8C 8007855C 540000A2 */   sb        $zero, 0x54($s0)
.Llevel_32_80078560:
/* 6DDFA90 80078560 F8FF6224 */  addiu      $v0, $v1, -0x8
/* 6DDFA94 80078564 00110200 */  sll        $v0, $v0, 4
/* 6DDFA98 80078568 6AE10108 */  j          .Llevel_32_800785A8
/* 6DDFA9C 8007856C 540002A2 */   sb        $v0, 0x54($s0)
.Llevel_32_80078570:
/* 6DDFAA0 80078570 0D006214 */  bne        $v1, $v0, .Llevel_32_800785A8
/* 6DDFAA4 80078574 00000000 */   nop
/* 6DDFAA8 80078578 54000292 */  lbu        $v0, 0x54($s0)
/* 6DDFAAC 8007857C 56000392 */  lbu        $v1, 0x56($s0)
/* 6DDFAB0 80078580 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 6DDFAB4 80078584 540002A2 */  sb         $v0, 0x54($s0)
/* 6DDFAB8 80078588 55000292 */  lbu        $v0, 0x55($s0)
/* 6DDFABC 8007858C F8FF6324 */  addiu      $v1, $v1, -0x8
/* 6DDFAC0 80078590 560003A2 */  sb         $v1, 0x56($s0)
/* 6DDFAC4 80078594 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 6DDFAC8 80078598 550002A2 */  sb         $v0, 0x55($s0)
/* 6DDFACC 8007859C 00002296 */  lhu        $v0, 0x0($s1)
/* 6DDFAD0 800785A0 00000000 */  nop
/* 6DDFAD4 800785A4 570002A2 */  sb         $v0, 0x57($s0)
.Llevel_32_800785A8:
/* 6DDFAD8 800785A8 03002292 */  lbu        $v0, 0x3($s1)
/* 6DDFADC 800785AC 00000000 */  nop
/* 6DDFAE0 800785B0 06004014 */  bnez       $v0, .Llevel_32_800785CC
/* 6DDFAE4 800785B4 00000000 */   nop
/* 6DDFAE8 800785B8 00002292 */  lbu        $v0, 0x0($s1)
/* 6DDFAEC 800785BC 00000000 */  nop
/* 6DDFAF0 800785C0 40100200 */  sll        $v0, $v0, 1
/* 6DDFAF4 800785C4 77E10108 */  j          .Llevel_32_800785DC
/* 6DDFAF8 800785C8 30004224 */   addiu     $v0, $v0, 0x30
.Llevel_32_800785CC:
/* 6DDFAFC 800785CC 00002292 */  lbu        $v0, 0x0($s1)
/* 6DDFB00 800785D0 00000000 */  nop
/* 6DDFB04 800785D4 80100200 */  sll        $v0, $v0, 2
/* 6DDFB08 800785D8 34004224 */  addiu      $v0, $v0, 0x34
.Llevel_32_800785DC:
/* 6DDFB0C 800785DC 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 6DDFB10 800785E0 2800BF8F */  lw         $ra, 0x28($sp)
/* 6DDFB14 800785E4 2400B18F */  lw         $s1, 0x24($sp)
/* 6DDFB18 800785E8 2000B08F */  lw         $s0, 0x20($sp)
/* 6DDFB1C 800785EC 3000BD27 */  addiu      $sp, $sp, 0x30
/* 6DDFB20 800785F0 0800E003 */  jr         $ra
/* 6DDFB24 800785F4 00000000 */   nop
.size MobyUpdate_326_level_32, . - MobyUpdate_326_level_32
