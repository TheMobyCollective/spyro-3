.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_177_level_23
/* 5AA52DC 80088DAC D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 5AA52E0 80088DB0 2400B1AF */  sw         $s1, 0x24($sp)
/* 5AA52E4 80088DB4 21888000 */  addu       $s1, $a0, $zero
/* 5AA52E8 80088DB8 02000224 */  addiu      $v0, $zero, 0x2
/* 5AA52EC 80088DBC 2800BFAF */  sw         $ra, 0x28($sp)
/* 5AA52F0 80088DC0 2000B0AF */  sw         $s0, 0x20($sp)
/* 5AA52F4 80088DC4 48002392 */  lbu        $v1, 0x48($s1)
/* 5AA52F8 80088DC8 0000248E */  lw         $a0, 0x0($s1)
/* 5AA52FC 80088DCC 0F006214 */  bne        $v1, $v0, .Llevel_23_80088E0C
/* 5AA5300 80088DD0 00000000 */   nop
/* 5AA5304 80088DD4 0000828C */  lw         $v0, 0x0($a0)
/* 5AA5308 80088DD8 00000000 */  nop
/* 5AA530C 80088DDC 35004004 */  bltz       $v0, .Llevel_23_80088EB4
/* 5AA5310 80088DE0 40200200 */   sll       $a0, $v0, 1
/* 5AA5314 80088DE4 21208200 */  addu       $a0, $a0, $v0
/* 5AA5318 80088DE8 80200400 */  sll        $a0, $a0, 2
/* 5AA531C 80088DEC 23208200 */  subu       $a0, $a0, $v0
/* 5AA5320 80088DF0 0780023C */  lui        $v0, %hi(D_8006C550)
/* 5AA5324 80088DF4 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 5AA5328 80088DF8 C0200400 */  sll        $a0, $a0, 3
/* 5AA532C 80088DFC C656010C */  jal        func_80055B18
/* 5AA5330 80088E00 21204400 */   addu      $a0, $v0, $a0
/* 5AA5334 80088E04 AD230208 */  j          .Llevel_23_80088EB4
/* 5AA5338 80088E08 00000000 */   nop
.Llevel_23_80088E0C:
/* 5AA533C 80088E0C 05006014 */  bnez       $v1, .Llevel_23_80088E24
/* 5AA5340 80088E10 0400033C */   lui       $v1, (0x40000 >> 16)
/* 5AA5344 80088E14 C5E5000C */  jal        func_80039714
/* 5AA5348 80088E18 21202002 */   addu      $a0, $s1, $zero
/* 5AA534C 80088E1C AF230208 */  j          .Llevel_23_80088EBC
/* 5AA5350 80088E20 00000000 */   nop
.Llevel_23_80088E24:
/* 5AA5354 80088E24 1800228E */  lw         $v0, 0x18($s1)
/* 5AA5358 80088E28 00000000 */  nop
/* 5AA535C 80088E2C 24104300 */  and        $v0, $v0, $v1
/* 5AA5360 80088E30 22004010 */  beqz       $v0, .Llevel_23_80088EBC
/* 5AA5364 80088E34 48003026 */   addiu     $s0, $s1, 0x48
/* 5AA5368 80088E38 21200002 */  addu       $a0, $s0, $zero
/* 5AA536C 80088E3C 01000524 */  addiu      $a1, $zero, 0x1
/* 5AA5370 80088E40 0780063C */  lui        $a2, %hi(D_8006D088)
/* 5AA5374 80088E44 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 5AA5378 80088E48 02000224 */  addiu      $v0, $zero, 0x2
/* 5AA537C 80088E4C EDED000C */  jal        func_8003B7B4
/* 5AA5380 80088E50 480022A2 */   sb        $v0, 0x48($s1)
/* 5AA5384 80088E54 21200002 */  addu       $a0, $s0, $zero
/* 5AA5388 80088E58 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 5AA538C 80088E5C F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 5AA5390 80088E60 EDED000C */  jal        func_8003B7B4
/* 5AA5394 80088E64 01000524 */   addiu     $a1, $zero, 0x1
/* 5AA5398 80088E68 04000424 */  addiu      $a0, $zero, 0x4
/* 5AA539C 80088E6C B1000524 */  addiu      $a1, $zero, 0xB1
/* 5AA53A0 80088E70 21302002 */  addu       $a2, $s1, $zero
/* 5AA53A4 80088E74 04000224 */  addiu      $v0, $zero, 0x4
/* 5AA53A8 80088E78 1000A2AF */  sw         $v0, 0x10($sp)
/* 5AA53AC 80088E7C C8000224 */  addiu      $v0, $zero, 0xC8
/* 5AA53B0 80088E80 1400A2AF */  sw         $v0, 0x14($sp)
/* 5AA53B4 80088E84 00010224 */  addiu      $v0, $zero, 0x100
/* 5AA53B8 80088E88 01000724 */  addiu      $a3, $zero, 0x1
/* 5AA53BC 80088E8C 7AE4000C */  jal        func_800391E8
/* 5AA53C0 80088E90 1800A2AF */   sw        $v0, 0x18($sp)
/* 5AA53C4 80088E94 21202002 */  addu       $a0, $s1, $zero
/* 5AA53C8 80088E98 4957010C */  jal        func_80055D24
/* 5AA53CC 80088E9C 04000524 */   addiu     $a1, $zero, 0x4
/* 5AA53D0 80088EA0 80EE000C */  jal        func_8003BA00
/* 5AA53D4 80088EA4 21202002 */   addu      $a0, $s1, $zero
/* 5AA53D8 80088EA8 21202002 */  addu       $a0, $s1, $zero
/* 5AA53DC 80088EAC 6EDA000C */  jal        func_800369B8
/* 5AA53E0 80088EB0 28000524 */   addiu     $a1, $zero, 0x28
.Llevel_23_80088EB4:
/* 5AA53E4 80088EB4 C656010C */  jal        func_80055B18
/* 5AA53E8 80088EB8 21202002 */   addu      $a0, $s1, $zero
.Llevel_23_80088EBC:
/* 5AA53EC 80088EBC 2800BF8F */  lw         $ra, 0x28($sp)
/* 5AA53F0 80088EC0 2400B18F */  lw         $s1, 0x24($sp)
/* 5AA53F4 80088EC4 2000B08F */  lw         $s0, 0x20($sp)
/* 5AA53F8 80088EC8 3000BD27 */  addiu      $sp, $sp, 0x30
/* 5AA53FC 80088ECC 0800E003 */  jr         $ra
/* 5AA5400 80088ED0 00000000 */   nop
.size MobyUpdate_177_level_23, . - MobyUpdate_177_level_23
