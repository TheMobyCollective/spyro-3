.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_330_level_25
/* 6010618 8007A0E8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 601061C 8007A0EC 1800B0AF */  sw         $s0, 0x18($sp)
/* 6010620 8007A0F0 21808000 */  addu       $s0, $a0, $zero
/* 6010624 8007A0F4 2000BFAF */  sw         $ra, 0x20($sp)
/* 6010628 8007A0F8 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 601062C 8007A0FC 1800028E */  lw         $v0, 0x18($s0)
/* 6010630 8007A100 0000118E */  lw         $s1, 0x0($s0)
/* 6010634 8007A104 26004010 */  beqz       $v0, .Llevel_25_8007A1A0
/* 6010638 8007A108 00000000 */   nop
/* 601063C 8007A10C 1800258E */  lw         $a1, 0x18($s1)
/* 6010640 8007A110 F0EF000C */  jal        func_8003BFC0
/* 6010644 8007A114 00000000 */   nop
/* 6010648 8007A118 05004010 */  beqz       $v0, .Llevel_25_8007A130
/* 601064C 8007A11C 21200002 */   addu      $a0, $s0, $zero
/* 6010650 8007A120 1800248E */  lw         $a0, 0x18($s1)
/* 6010654 8007A124 9CEF000C */  jal        func_8003BE70
/* 6010658 8007A128 00000000 */   nop
/* 601065C 8007A12C 21200002 */  addu       $a0, $s0, $zero
.Llevel_25_8007A130:
/* 6010660 8007A130 21280000 */  addu       $a1, $zero, $zero
/* 6010664 8007A134 21300000 */  addu       $a2, $zero, $zero
/* 6010668 8007A138 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 601066C 8007A13C AFEE000C */  jal        func_8003BABC
/* 6010670 8007A140 180022AE */   sw        $v0, 0x18($s1)
/* 6010674 8007A144 21200002 */  addu       $a0, $s0, $zero
/* 6010678 8007A148 10000524 */  addiu      $a1, $zero, 0x10
/* 601067C 8007A14C 21300000 */  addu       $a2, $zero, $zero
/* 6010680 8007A150 9ADA000C */  jal        func_80036A68
/* 6010684 8007A154 21380000 */   addu      $a3, $zero, $zero
/* 6010688 8007A158 0780023C */  lui        $v0, %hi(unk_ovlheader_80074384)
/* 601068C 8007A15C 8443428C */  lw         $v0, %lo(unk_ovlheader_80074384)($v0)
/* 6010690 8007A160 00000000 */  nop
/* 6010694 8007A164 09F84000 */  jalr       $v0
/* 6010698 8007A168 21200002 */   addu      $a0, $s0, $zero
/* 601069C 8007A16C 05000424 */  addiu      $a0, $zero, 0x5
/* 60106A0 8007A170 54010524 */  addiu      $a1, $zero, 0x154
/* 60106A4 8007A174 00020224 */  addiu      $v0, $zero, 0x200
/* 60106A8 8007A178 1000A0AF */  sw         $zero, 0x10($sp)
/* 60106AC 8007A17C 1400A2AF */  sw         $v0, 0x14($sp)
/* 60106B0 8007A180 1400278E */  lw         $a3, 0x14($s1)
/* 60106B4 8007A184 0780023C */  lui        $v0, %hi(SpawnFragments)
/* 60106B8 8007A188 5C43428C */  lw         $v0, %lo(SpawnFragments)($v0)
/* 60106BC 8007A18C 00000000 */  nop
/* 60106C0 8007A190 09F84000 */  jalr       $v0
/* 60106C4 8007A194 21300002 */   addu      $a2, $s0, $zero
/* 60106C8 8007A198 6FE80108 */  j          .Llevel_25_8007A1BC
/* 60106CC 8007A19C 00000000 */   nop
.Llevel_25_8007A1A0:
/* 60106D0 8007A1A0 0780023C */  lui        $v0, %hi(D_8006FA3C)
/* 60106D4 8007A1A4 3CFA428C */  lw         $v0, %lo(D_8006FA3C)($v0)
/* 60106D8 8007A1A8 00000000 */  nop
/* 60106DC 8007A1AC FEFF4224 */  addiu      $v0, $v0, -0x2
/* 60106E0 8007A1B0 0200422C */  sltiu      $v0, $v0, 0x2
/* 60106E4 8007A1B4 05004010 */  beqz       $v0, .Llevel_25_8007A1CC
/* 60106E8 8007A1B8 00000000 */   nop
.Llevel_25_8007A1BC:
/* 60106EC 8007A1BC C656010C */  jal        func_80055B18
/* 60106F0 8007A1C0 21200002 */   addu      $a0, $s0, $zero
/* 60106F4 8007A1C4 88E80108 */  j          .Llevel_25_8007A220
/* 60106F8 8007A1C8 00000000 */   nop
.Llevel_25_8007A1CC:
/* 60106FC 8007A1CC 1800258E */  lw         $a1, 0x18($s1)
/* 6010700 8007A1D0 F0EF000C */  jal        func_8003BFC0
/* 6010704 8007A1D4 21200002 */   addu      $a0, $s0, $zero
/* 6010708 8007A1D8 06004014 */  bnez       $v0, .Llevel_25_8007A1F4
/* 601070C 8007A1DC 21200002 */   addu      $a0, $s0, $zero
/* 6010710 8007A1E0 01000524 */  addiu      $a1, $zero, 0x1
/* 6010714 8007A1E4 AFEE000C */  jal        func_8003BABC
/* 6010718 8007A1E8 04000624 */   addiu     $a2, $zero, 0x4
/* 601071C 8007A1EC 180022AE */  sw         $v0, 0x18($s1)
/* 6010720 8007A1F0 21200002 */  addu       $a0, $s0, $zero
.Llevel_25_8007A1F4:
/* 6010724 8007A1F4 04002626 */  addiu      $a2, $s1, 0x4
/* 6010728 8007A1F8 0C000224 */  addiu      $v0, $zero, 0xC
/* 601072C 8007A1FC 1000A2AF */  sw         $v0, 0x10($sp)
/* 6010730 8007A200 04000224 */  addiu      $v0, $zero, 0x4
/* 6010734 8007A204 1400A2AF */  sw         $v0, 0x14($sp)
/* 6010738 8007A208 0000258E */  lw         $a1, 0x0($s1)
/* 601073C 8007A20C 0780023C */  lui        $v0, %hi(unk_ovlheader_800743EC)
/* 6010740 8007A210 EC43428C */  lw         $v0, %lo(unk_ovlheader_800743EC)($v0)
/* 6010744 8007A214 00000000 */  nop
/* 6010748 8007A218 09F84000 */  jalr       $v0
/* 601074C 8007A21C 10002726 */   addiu     $a3, $s1, 0x10
.Llevel_25_8007A220:
/* 6010750 8007A220 2000BF8F */  lw         $ra, 0x20($sp)
/* 6010754 8007A224 1C00B18F */  lw         $s1, 0x1C($sp)
/* 6010758 8007A228 1800B08F */  lw         $s0, 0x18($sp)
/* 601075C 8007A22C 2800BD27 */  addiu      $sp, $sp, 0x28
/* 6010760 8007A230 0800E003 */  jr         $ra
/* 6010764 8007A234 00000000 */   nop
.size MobyUpdate_330_level_25, . - MobyUpdate_330_level_25
