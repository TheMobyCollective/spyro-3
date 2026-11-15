.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_696_level_37
/* 7AAA488 8007E758 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 7AAA48C 8007E75C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 7AAA490 8007E760 21888000 */  addu       $s1, $a0, $zero
/* 7AAA494 8007E764 2800BFAF */  sw         $ra, 0x28($sp)
/* 7AAA498 8007E768 2400B3AF */  sw         $s3, 0x24($sp)
/* 7AAA49C 8007E76C 2000B2AF */  sw         $s2, 0x20($sp)
/* 7AAA4A0 8007E770 A157010C */  jal        func_80055E84
/* 7AAA4A4 8007E774 1800B0AF */   sw        $s0, 0x18($sp)
/* 7AAA4A8 8007E778 0C003326 */  addiu      $s3, $s1, 0xC
/* 7AAA4AC 8007E77C 21206002 */  addu       $a0, $s3, $zero
/* 7AAA4B0 8007E780 80180200 */  sll        $v1, $v0, 2
/* 7AAA4B4 8007E784 21186200 */  addu       $v1, $v1, $v0
/* 7AAA4B8 8007E788 00190300 */  sll        $v1, $v1, 4
/* 7AAA4BC 8007E78C C8007224 */  addiu      $s2, $v1, 0xC8
/* 7AAA4C0 8007E790 21284002 */  addu       $a1, $s2, $zero
/* 7AAA4C4 8007E794 01000624 */  addiu      $a2, $zero, 0x1
/* 7AAA4C8 8007E798 0020023C */  lui        $v0, (0x20000000 >> 16)
/* 7AAA4CC 8007E79C 21380000 */  addu       $a3, $zero, $zero
/* 7AAA4D0 8007E7A0 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AAA4D4 8007E7A4 8C6E000C */  jal        func_8001BA30
/* 7AAA4D8 8007E7A8 1400B1AF */   sw        $s1, 0x14($sp)
/* 7AAA4DC 8007E7AC 21804000 */  addu       $s0, $v0, $zero
/* 7AAA4E0 8007E7B0 09000012 */  beqz       $s0, .Llevel_37_8007E7D8
/* 7AAA4E4 8007E7B4 21300000 */   addu      $a2, $zero, $zero
/* 7AAA4E8 8007E7B8 0C00038E */  lw         $v1, 0xC($s0)
/* 7AAA4EC 8007E7BC 0C00248E */  lw         $a0, 0xC($s1)
/* 7AAA4F0 8007E7C0 1000028E */  lw         $v0, 0x10($s0)
/* 7AAA4F4 8007E7C4 1000258E */  lw         $a1, 0x10($s1)
/* 7AAA4F8 8007E7C8 23206400 */  subu       $a0, $v1, $a0
/* 7AAA4FC 8007E7CC 203A010C */  jal        func_8004E880
/* 7AAA500 8007E7D0 23284500 */   subu      $a1, $v0, $a1
/* 7AAA504 8007E7D4 510002A2 */  sb         $v0, 0x51($s0)
.Llevel_37_8007E7D8:
/* 7AAA508 8007E7D8 21206002 */  addu       $a0, $s3, $zero
/* 7AAA50C 8007E7DC 21284002 */  addu       $a1, $s2, $zero
/* 7AAA510 8007E7E0 A270000C */  jal        func_8001C288
/* 7AAA514 8007E7E4 07000624 */   addiu     $a2, $zero, 0x7
/* 7AAA518 8007E7E8 0780023C */  lui        $v0, %hi(D_8006C770)
/* 7AAA51C 8007E7EC 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 7AAA520 8007E7F0 00000000 */  nop
/* 7AAA524 8007E7F4 03004010 */  beqz       $v0, .Llevel_37_8007E804
/* 7AAA528 8007E7F8 00000000 */   nop
/* 7AAA52C 8007E7FC C656010C */  jal        func_80055B18
/* 7AAA530 8007E800 21202002 */   addu      $a0, $s1, $zero
.Llevel_37_8007E804:
/* 7AAA534 8007E804 2800BF8F */  lw         $ra, 0x28($sp)
/* 7AAA538 8007E808 2400B38F */  lw         $s3, 0x24($sp)
/* 7AAA53C 8007E80C 2000B28F */  lw         $s2, 0x20($sp)
/* 7AAA540 8007E810 1C00B18F */  lw         $s1, 0x1C($sp)
/* 7AAA544 8007E814 1800B08F */  lw         $s0, 0x18($sp)
/* 7AAA548 8007E818 3000BD27 */  addiu      $sp, $sp, 0x30
/* 7AAA54C 8007E81C 0800E003 */  jr         $ra
/* 7AAA550 8007E820 00000000 */   nop
.size MobyUpdate_696_level_37, . - MobyUpdate_696_level_37
