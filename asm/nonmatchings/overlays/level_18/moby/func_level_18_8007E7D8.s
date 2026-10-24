.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_567_level_18
/* 4EB1508 8007E7D8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4EB150C 8007E7DC 1000B0AF */  sw         $s0, 0x10($sp)
/* 4EB1510 8007E7E0 21808000 */  addu       $s0, $a0, $zero
/* 4EB1514 8007E7E4 0780053C */  lui        $a1, %hi(D_80070328)
/* 4EB1518 8007E7E8 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 4EB151C 8007E7EC 1800BFAF */  sw         $ra, 0x18($sp)
/* 4EB1520 8007E7F0 1400B1AF */  sw         $s1, 0x14($sp)
/* 4EB1524 8007E7F4 0000118E */  lw         $s1, 0x0($s0)
/* 4EB1528 8007E7F8 CD3C010C */  jal        func_8004F334
/* 4EB152C 8007E7FC 0C000426 */   addiu     $a0, $s0, 0xC
/* 4EB1530 8007E800 0400238E */  lw         $v1, 0x4($s1)
/* 4EB1534 8007E804 00000000 */  nop
/* 4EB1538 8007E808 2A104300 */  slt        $v0, $v0, $v1
/* 4EB153C 8007E80C 0F004010 */  beqz       $v0, .Llevel_18_8007E84C
/* 4EB1540 8007E810 00000000 */   nop
/* 4EB1544 8007E814 0000228E */  lw         $v0, 0x0($s1)
/* 4EB1548 8007E818 00000000 */  nop
/* 4EB154C 8007E81C 04004010 */  beqz       $v0, .Llevel_18_8007E830
/* 4EB1550 8007E820 21200002 */   addu      $a0, $s0, $zero
/* 4EB1554 8007E824 21280000 */  addu       $a1, $zero, $zero
/* 4EB1558 8007E828 AFEE000C */  jal        func_8003BABC
/* 4EB155C 8007E82C 21300000 */   addu      $a2, $zero, $zero
.Llevel_18_8007E830:
/* 4EB1560 8007E830 21202002 */  addu       $a0, $s1, $zero
/* 4EB1564 8007E834 04000524 */  addiu      $a1, $zero, 0x4
/* 4EB1568 8007E838 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 4EB156C 8007E83C F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 4EB1570 8007E840 000020AE */  sw         $zero, 0x0($s1)
/* 4EB1574 8007E844 EDED000C */  jal        func_8003B7B4
/* 4EB1578 8007E848 480000A2 */   sb        $zero, 0x48($s0)
.Llevel_18_8007E84C:
/* 4EB157C 8007E84C 48000292 */  lbu        $v0, 0x48($s0)
/* 4EB1580 8007E850 00000000 */  nop
/* 4EB1584 8007E854 06004014 */  bnez       $v0, .Llevel_18_8007E870
/* 4EB1588 8007E858 00000000 */   nop
/* 4EB158C 8007E85C 0000258E */  lw         $a1, 0x0($s1)
/* 4EB1590 8007E860 D0D3000C */  jal        func_80034F40
/* 4EB1594 8007E864 21200002 */   addu      $a0, $s0, $zero
/* 4EB1598 8007E868 01000224 */  addiu      $v0, $zero, 0x1
/* 4EB159C 8007E86C 480002A2 */  sb         $v0, 0x48($s0)
.Llevel_18_8007E870:
/* 4EB15A0 8007E870 0000248E */  lw         $a0, 0x0($s1)
/* 4EB15A4 8007E874 00000000 */  nop
/* 4EB15A8 8007E878 05008010 */  beqz       $a0, .Llevel_18_8007E890
/* 4EB15AC 8007E87C 01000224 */   addiu     $v0, $zero, 0x1
/* 4EB15B0 8007E880 08008210 */  beq        $a0, $v0, .Llevel_18_8007E8A4
/* 4EB15B4 8007E884 FF000224 */   addiu     $v0, $zero, 0xFF
/* 4EB15B8 8007E888 2EFA0108 */  j          .Llevel_18_8007E8B8
/* 4EB15BC 8007E88C 00000000 */   nop
.Llevel_18_8007E890:
/* 4EB15C0 8007E890 FF000224 */  addiu      $v0, $zero, 0xFF
/* 4EB15C4 8007E894 550002A2 */  sb         $v0, 0x55($s0)
/* 4EB15C8 8007E898 38000224 */  addiu      $v0, $zero, 0x38
/* 4EB15CC 8007E89C 2CFA0108 */  j          .Llevel_18_8007E8B0
/* 4EB15D0 8007E8A0 540000A2 */   sb        $zero, 0x54($s0)
.Llevel_18_8007E8A4:
/* 4EB15D4 8007E8A4 540002A2 */  sb         $v0, 0x54($s0)
/* 4EB15D8 8007E8A8 38000224 */  addiu      $v0, $zero, 0x38
/* 4EB15DC 8007E8AC 550000A2 */  sb         $zero, 0x55($s0)
.Llevel_18_8007E8B0:
/* 4EB15E0 8007E8B0 560000A2 */  sb         $zero, 0x56($s0)
/* 4EB15E4 8007E8B4 570002A2 */  sb         $v0, 0x57($s0)
.Llevel_18_8007E8B8:
/* 4EB15E8 8007E8B8 1800BF8F */  lw         $ra, 0x18($sp)
/* 4EB15EC 8007E8BC 1400B18F */  lw         $s1, 0x14($sp)
/* 4EB15F0 8007E8C0 1000B08F */  lw         $s0, 0x10($sp)
/* 4EB15F4 8007E8C4 2000BD27 */  addiu      $sp, $sp, 0x20
/* 4EB15F8 8007E8C8 0800E003 */  jr         $ra
/* 4EB15FC 8007E8CC 00000000 */   nop
.size MobyUpdate_567_level_18, . - MobyUpdate_567_level_18
