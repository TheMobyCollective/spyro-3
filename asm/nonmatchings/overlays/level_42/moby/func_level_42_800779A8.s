.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_482_level_42
/* 847C6D8 800779A8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 847C6DC 800779AC 1000B0AF */  sw         $s0, 0x10($sp)
/* 847C6E0 800779B0 21808000 */  addu       $s0, $a0, $zero
/* 847C6E4 800779B4 1800BFAF */  sw         $ra, 0x18($sp)
/* 847C6E8 800779B8 1400B1AF */  sw         $s1, 0x14($sp)
/* 847C6EC 800779BC 0000118E */  lw         $s1, 0x0($s0)
/* 847C6F0 800779C0 04000524 */  addiu      $a1, $zero, 0x4
/* 847C6F4 800779C4 69D6000C */  jal        func_800359A4
/* 847C6F8 800779C8 21202002 */   addu      $a0, $s1, $zero
/* 847C6FC 800779CC 03004010 */  beqz       $v0, .Llevel_42_800779DC
/* 847C700 800779D0 00000000 */   nop
/* 847C704 800779D4 C656010C */  jal        func_80055B18
/* 847C708 800779D8 21200002 */   addu      $a0, $s0, $zero
.Llevel_42_800779DC:
/* 847C70C 800779DC 0000228E */  lw         $v0, 0x0($s1)
/* 847C710 800779E0 00000000 */  nop
/* 847C714 800779E4 C0100200 */  sll        $v0, $v0, 3
/* 847C718 800779E8 540002A2 */  sb         $v0, 0x54($s0)
/* 847C71C 800779EC 0000228E */  lw         $v0, 0x0($s1)
/* 847C720 800779F0 00000000 */  nop
/* 847C724 800779F4 80100200 */  sll        $v0, $v0, 2
/* 847C728 800779F8 550002A2 */  sb         $v0, 0x55($s0)
/* 847C72C 800779FC 0780043C */  lui        $a0, %hi(D_8006C648)
/* 847C730 80077A00 48C6848C */  lw         $a0, %lo(D_8006C648)($a0)
/* 847C734 80077A04 4F000292 */  lbu        $v0, 0x4F($s0)
/* 847C738 80077A08 40180400 */  sll        $v1, $a0, 1
/* 847C73C 80077A0C 21186400 */  addu       $v1, $v1, $a0
/* 847C740 80077A10 23104300 */  subu       $v0, $v0, $v1
/* 847C744 80077A14 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 847C748 80077A18 FF004230 */  andi       $v0, $v0, 0xFF
/* 847C74C 80077A1C 8000422C */  sltiu      $v0, $v0, 0x80
/* 847C750 80077A20 02004014 */  bnez       $v0, .Llevel_42_80077A2C
/* 847C754 80077A24 00000000 */   nop
/* 847C758 80077A28 4F0000A2 */  sb         $zero, 0x4F($s0)
.Llevel_42_80077A2C:
/* 847C75C 80077A2C 4F000292 */  lbu        $v0, 0x4F($s0)
/* 847C760 80077A30 00000000 */  nop
/* 847C764 80077A34 0E00422C */  sltiu      $v0, $v0, 0xE
/* 847C768 80077A38 02004010 */  beqz       $v0, .Llevel_42_80077A44
/* 847C76C 80077A3C 0E000224 */   addiu     $v0, $zero, 0xE
/* 847C770 80077A40 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_42_80077A44:
/* 847C774 80077A44 1800BF8F */  lw         $ra, 0x18($sp)
/* 847C778 80077A48 1400B18F */  lw         $s1, 0x14($sp)
/* 847C77C 80077A4C 1000B08F */  lw         $s0, 0x10($sp)
/* 847C780 80077A50 2000BD27 */  addiu      $sp, $sp, 0x20
/* 847C784 80077A54 0800E003 */  jr         $ra
/* 847C788 80077A58 00000000 */   nop
.size MobyUpdate_482_level_42, . - MobyUpdate_482_level_42
