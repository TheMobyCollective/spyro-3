.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_726_level_35
/* 76FF1E0 8007C4B0 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 76FF1E4 8007C4B4 3000B0AF */  sw         $s0, 0x30($sp)
/* 76FF1E8 8007C4B8 21808000 */  addu       $s0, $a0, $zero
/* 76FF1EC 8007C4BC 3800BFAF */  sw         $ra, 0x38($sp)
/* 76FF1F0 8007C4C0 3400B1AF */  sw         $s1, 0x34($sp)
/* 76FF1F4 8007C4C4 1800028E */  lw         $v0, 0x18($s0)
/* 76FF1F8 8007C4C8 0000118E */  lw         $s1, 0x0($s0)
/* 76FF1FC 8007C4CC 26004010 */  beqz       $v0, .Llevel_35_8007C568
/* 76FF200 8007C4D0 00000000 */   nop
/* 76FF204 8007C4D4 1800258E */  lw         $a1, 0x18($s1)
/* 76FF208 8007C4D8 F0EF000C */  jal        func_8003BFC0
/* 76FF20C 8007C4DC 00000000 */   nop
/* 76FF210 8007C4E0 05004010 */  beqz       $v0, .Llevel_35_8007C4F8
/* 76FF214 8007C4E4 21200002 */   addu      $a0, $s0, $zero
/* 76FF218 8007C4E8 1800248E */  lw         $a0, 0x18($s1)
/* 76FF21C 8007C4EC 9CEF000C */  jal        func_8003BE70
/* 76FF220 8007C4F0 00000000 */   nop
/* 76FF224 8007C4F4 21200002 */  addu       $a0, $s0, $zero
.Llevel_35_8007C4F8:
/* 76FF228 8007C4F8 01000524 */  addiu      $a1, $zero, 0x1
/* 76FF22C 8007C4FC 21300000 */  addu       $a2, $zero, $zero
/* 76FF230 8007C500 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 76FF234 8007C504 AFEE000C */  jal        func_8003BABC
/* 76FF238 8007C508 180022AE */   sw        $v0, 0x18($s1)
/* 76FF23C 8007C50C 21200002 */  addu       $a0, $s0, $zero
/* 76FF240 8007C510 10000524 */  addiu      $a1, $zero, 0x10
/* 76FF244 8007C514 21300000 */  addu       $a2, $zero, $zero
/* 76FF248 8007C518 9ADA000C */  jal        func_80036A68
/* 76FF24C 8007C51C 21380000 */   addu      $a3, $zero, $zero
/* 76FF250 8007C520 0780023C */  lui        $v0, %hi(unk_ovlheader_80074384)
/* 76FF254 8007C524 8443428C */  lw         $v0, %lo(unk_ovlheader_80074384)($v0)
/* 76FF258 8007C528 00000000 */  nop
/* 76FF25C 8007C52C 09F84000 */  jalr       $v0
/* 76FF260 8007C530 21200002 */   addu      $a0, $s0, $zero
/* 76FF264 8007C534 05000424 */  addiu      $a0, $zero, 0x5
/* 76FF268 8007C538 12020524 */  addiu      $a1, $zero, 0x212
/* 76FF26C 8007C53C 00020224 */  addiu      $v0, $zero, 0x200
/* 76FF270 8007C540 1000A0AF */  sw         $zero, 0x10($sp)
/* 76FF274 8007C544 1400A2AF */  sw         $v0, 0x14($sp)
/* 76FF278 8007C548 1400278E */  lw         $a3, 0x14($s1)
/* 76FF27C 8007C54C 0780023C */  lui        $v0, %hi(SpawnFragments)
/* 76FF280 8007C550 5C43428C */  lw         $v0, %lo(SpawnFragments)($v0)
/* 76FF284 8007C554 00000000 */  nop
/* 76FF288 8007C558 09F84000 */  jalr       $v0
/* 76FF28C 8007C55C 21300002 */   addu      $a2, $s0, $zero
/* 76FF290 8007C560 61F10108 */  j          .Llevel_35_8007C584
/* 76FF294 8007C564 00000000 */   nop
.Llevel_35_8007C568:
/* 76FF298 8007C568 0780023C */  lui        $v0, %hi(D_8006FA3C)
/* 76FF29C 8007C56C 3CFA428C */  lw         $v0, %lo(D_8006FA3C)($v0)
/* 76FF2A0 8007C570 00000000 */  nop
/* 76FF2A4 8007C574 FEFF4224 */  addiu      $v0, $v0, -0x2
/* 76FF2A8 8007C578 0200422C */  sltiu      $v0, $v0, 0x2
/* 76FF2AC 8007C57C 05004010 */  beqz       $v0, .Llevel_35_8007C594
/* 76FF2B0 8007C580 00000000 */   nop
.Llevel_35_8007C584:
/* 76FF2B4 8007C584 C656010C */  jal        func_80055B18
/* 76FF2B8 8007C588 21200002 */   addu      $a0, $s0, $zero
/* 76FF2BC 8007C58C A8F10108 */  j          .Llevel_35_8007C6A0
/* 76FF2C0 8007C590 00000000 */   nop
.Llevel_35_8007C594:
/* 76FF2C4 8007C594 49000292 */  lbu        $v0, 0x49($s0)
/* 76FF2C8 8007C598 00000000 */  nop
/* 76FF2CC 8007C59C 18004014 */  bnez       $v0, .Llevel_35_8007C600
/* 76FF2D0 8007C5A0 21200002 */   addu      $a0, $s0, $zero
/* 76FF2D4 8007C5A4 44000292 */  lbu        $v0, 0x44($s0)
/* 76FF2D8 8007C5A8 00000000 */  nop
/* 76FF2DC 8007C5AC 2800A2A3 */  sb         $v0, 0x28($sp)
/* 76FF2E0 8007C5B0 45000292 */  lbu        $v0, 0x45($s0)
/* 76FF2E4 8007C5B4 00000000 */  nop
/* 76FF2E8 8007C5B8 2900A2A3 */  sb         $v0, 0x29($sp)
/* 76FF2EC 8007C5BC 46000292 */  lbu        $v0, 0x46($s0)
/* 76FF2F0 8007C5C0 04000524 */  addiu      $a1, $zero, 0x4
/* 76FF2F4 8007C5C4 2A00A2A3 */  sb         $v0, 0x2A($sp)
/* 76FF2F8 8007C5C8 440000A2 */  sb         $zero, 0x44($s0)
/* 76FF2FC 8007C5CC 450000A2 */  sb         $zero, 0x45($s0)
/* 76FF300 8007C5D0 4957010C */  jal        func_80055D24
/* 76FF304 8007C5D4 460000A2 */   sb        $zero, 0x46($s0)
/* 76FF308 8007C5D8 2800A293 */  lbu        $v0, 0x28($sp)
/* 76FF30C 8007C5DC 00000000 */  nop
/* 76FF310 8007C5E0 440002A2 */  sb         $v0, 0x44($s0)
/* 76FF314 8007C5E4 2900A293 */  lbu        $v0, 0x29($sp)
/* 76FF318 8007C5E8 00000000 */  nop
/* 76FF31C 8007C5EC 450002A2 */  sb         $v0, 0x45($s0)
/* 76FF320 8007C5F0 2A00A393 */  lbu        $v1, 0x2A($sp)
/* 76FF324 8007C5F4 01000224 */  addiu      $v0, $zero, 0x1
/* 76FF328 8007C5F8 490002A2 */  sb         $v0, 0x49($s0)
/* 76FF32C 8007C5FC 460003A2 */  sb         $v1, 0x46($s0)
.Llevel_35_8007C600:
/* 76FF330 8007C600 1800258E */  lw         $a1, 0x18($s1)
/* 76FF334 8007C604 F0EF000C */  jal        func_8003BFC0
/* 76FF338 8007C608 21200002 */   addu      $a0, $s0, $zero
/* 76FF33C 8007C60C 06004014 */  bnez       $v0, .Llevel_35_8007C628
/* 76FF340 8007C610 21200002 */   addu      $a0, $s0, $zero
/* 76FF344 8007C614 21280000 */  addu       $a1, $zero, $zero
/* 76FF348 8007C618 AFEE000C */  jal        func_8003BABC
/* 76FF34C 8007C61C 04000624 */   addiu     $a2, $zero, 0x4
/* 76FF350 8007C620 180022AE */  sw         $v0, 0x18($s1)
/* 76FF354 8007C624 21200002 */  addu       $a0, $s0, $zero
.Llevel_35_8007C628:
/* 76FF358 8007C628 04002626 */  addiu      $a2, $s1, 0x4
/* 76FF35C 8007C62C 06000224 */  addiu      $v0, $zero, 0x6
/* 76FF360 8007C630 1000A2AF */  sw         $v0, 0x10($sp)
/* 76FF364 8007C634 1400A0AF */  sw         $zero, 0x14($sp)
/* 76FF368 8007C638 0000258E */  lw         $a1, 0x0($s1)
/* 76FF36C 8007C63C 0780023C */  lui        $v0, %hi(unk_ovlheader_800743EC)
/* 76FF370 8007C640 EC43428C */  lw         $v0, %lo(unk_ovlheader_800743EC)($v0)
/* 76FF374 8007C644 00000000 */  nop
/* 76FF378 8007C648 09F84000 */  jalr       $v0
/* 76FF37C 8007C64C 10002726 */   addiu     $a3, $s1, 0x10
/* 76FF380 8007C650 1800A427 */  addiu      $a0, $sp, 0x18
/* 76FF384 8007C654 5E3C010C */  jal        func_8004F178
/* 76FF388 8007C658 0C000526 */   addiu     $a1, $s0, 0xC
/* 76FF38C 8007C65C 1800A427 */  addiu      $a0, $sp, 0x18
/* 76FF390 8007C660 2000A28F */  lw         $v0, 0x20($sp)
/* 76FF394 8007C664 00080524 */  addiu      $a1, $zero, 0x800
/* 76FF398 8007C668 00024224 */  addiu      $v0, $v0, 0x200
/* 76FF39C 8007C66C D668000C */  jal        func_8001A358
/* 76FF3A0 8007C670 2000A2AF */   sw        $v0, 0x20($sp)
/* 76FF3A4 8007C674 21184000 */  addu       $v1, $v0, $zero
/* 76FF3A8 8007C678 08006010 */  beqz       $v1, .Llevel_35_8007C69C
/* 76FF3AC 8007C67C 2000A3AF */   sw        $v1, 0x20($sp)
/* 76FF3B0 8007C680 FF00023C */  lui        $v0, (0xFFFFFF >> 16)
/* 76FF3B4 8007C684 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
/* 76FF3B8 8007C688 24106200 */  and        $v0, $v1, $v0
/* 76FF3BC 8007C68C 0080033C */  lui        $v1, (0x80000000 >> 16)
/* 76FF3C0 8007C690 25104300 */  or         $v0, $v0, $v1
/* 76FF3C4 8007C694 A8F10108 */  j          .Llevel_35_8007C6A0
/* 76FF3C8 8007C698 540002AE */   sw        $v0, 0x54($s0)
.Llevel_35_8007C69C:
/* 76FF3CC 8007C69C 540000AE */  sw         $zero, 0x54($s0)
.Llevel_35_8007C6A0:
/* 76FF3D0 8007C6A0 3800BF8F */  lw         $ra, 0x38($sp)
/* 76FF3D4 8007C6A4 3400B18F */  lw         $s1, 0x34($sp)
/* 76FF3D8 8007C6A8 3000B08F */  lw         $s0, 0x30($sp)
/* 76FF3DC 8007C6AC 4000BD27 */  addiu      $sp, $sp, 0x40
/* 76FF3E0 8007C6B0 0800E003 */  jr         $ra
/* 76FF3E4 8007C6B4 00000000 */   nop
.size MobyUpdate_726_level_35, . - MobyUpdate_726_level_35
