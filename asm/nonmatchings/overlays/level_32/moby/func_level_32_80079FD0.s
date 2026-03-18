.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_80079FD0
/* 6DE1500 80079FD0 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 6DE1504 80079FD4 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 6DE1508 80079FD8 21888000 */  addu       $s1, $a0, $zero
/* 6DE150C 80079FDC 4800BFAF */  sw         $ra, 0x48($sp)
/* 6DE1510 80079FE0 4400B3AF */  sw         $s3, 0x44($sp)
/* 6DE1514 80079FE4 4000B2AF */  sw         $s2, 0x40($sp)
/* 6DE1518 80079FE8 3800B0AF */  sw         $s0, 0x38($sp)
/* 6DE151C 80079FEC 0000328E */  lw         $s2, 0x0($s1)
/* 6DE1520 80079FF0 00000000 */  nop
/* 6DE1524 80079FF4 0C00428E */  lw         $v0, 0xC($s2)
/* 6DE1528 80079FF8 00000000 */  nop
/* 6DE152C 80079FFC E1004018 */  blez       $v0, .Llevel_32_8007A384
/* 6DE1530 8007A000 00000000 */   nop
/* 6DE1534 8007A004 4D002292 */  lbu        $v0, 0x4D($s1)
/* 6DE1538 8007A008 00000000 */  nop
/* 6DE153C 8007A00C DD004010 */  beqz       $v0, .Llevel_32_8007A384
/* 6DE1540 8007A010 00000000 */   nop
/* 6DE1544 8007A014 49002292 */  lbu        $v0, 0x49($s1)
/* 6DE1548 8007A018 00000000 */  nop
/* 6DE154C 8007A01C 01004230 */  andi       $v0, $v0, 0x1
/* 6DE1550 8007A020 09004014 */  bnez       $v0, .Llevel_32_8007A048
/* 6DE1554 8007A024 00000000 */   nop
/* 6DE1558 8007A028 1400238E */  lw         $v1, 0x14($s1)
/* 6DE155C 8007A02C 1000428E */  lw         $v0, 0x10($s2)
/* 6DE1560 8007A030 00000000 */  nop
/* 6DE1564 8007A034 2A104300 */  slt        $v0, $v0, $v1
/* 6DE1568 8007A038 D2004010 */  beqz       $v0, .Llevel_32_8007A384
/* 6DE156C 8007A03C 00000000 */   nop
/* 6DE1570 8007A040 47E80108 */  j          .Llevel_32_8007A11C
/* 6DE1574 8007A044 00000000 */   nop
.Llevel_32_8007A048:
/* 6DE1578 8007A048 0C002426 */  addiu      $a0, $s1, 0xC
/* 6DE157C 8007A04C 6564000C */  jal        func_80019194
/* 6DE1580 8007A050 00010524 */   addiu     $a1, $zero, 0x100
/* 6DE1584 8007A054 31004010 */  beqz       $v0, .Llevel_32_8007A11C
/* 6DE1588 8007A058 00000000 */   nop
/* 6DE158C 8007A05C 0780133C */  lui        $s3, %hi(D_80071918)
/* 6DE1590 8007A060 18197326 */  addiu      $s3, $s3, %lo(D_80071918)
/* 6DE1594 8007A064 21206002 */  addu       $a0, $s3, $zero
/* 6DE1598 8007A068 C13B010C */  jal        func_8004EF04
/* 6DE159C 8007A06C 00100524 */   addiu     $a1, $zero, 0x1000
/* 6DE15A0 8007A070 00004386 */  lh         $v1, 0x0($s2)
/* 6DE15A4 8007A074 0000628E */  lw         $v0, 0x0($s3)
/* 6DE15A8 8007A078 00000000 */  nop
/* 6DE15AC 8007A07C 18006200 */  mult       $v1, $v0
/* 6DE15B0 8007A080 02004386 */  lh         $v1, 0x2($s2)
/* 6DE15B4 8007A084 12280000 */  mflo       $a1
/* 6DE15B8 8007A088 0780023C */  lui        $v0, %hi(D_8007191C)
/* 6DE15BC 8007A08C 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 6DE15C0 8007A090 00000000 */  nop
/* 6DE15C4 8007A094 18006200 */  mult       $v1, $v0
/* 6DE15C8 8007A098 04004386 */  lh         $v1, 0x4($s2)
/* 6DE15CC 8007A09C 12200000 */  mflo       $a0
/* 6DE15D0 8007A0A0 0780023C */  lui        $v0, %hi(D_80071920)
/* 6DE15D4 8007A0A4 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 6DE15D8 8007A0A8 00000000 */  nop
/* 6DE15DC 8007A0AC 18006200 */  mult       $v1, $v0
/* 6DE15E0 8007A0B0 2110A400 */  addu       $v0, $a1, $a0
/* 6DE15E4 8007A0B4 12180000 */  mflo       $v1
/* 6DE15E8 8007A0B8 21104300 */  addu       $v0, $v0, $v1
/* 6DE15EC 8007A0BC C3820200 */  sra        $s0, $v0, 11
/* 6DE15F0 8007A0C0 16000106 */  bgez       $s0, .Llevel_32_8007A11C
/* 6DE15F4 8007A0C4 21206002 */   addu      $a0, $s3, $zero
/* 6DE15F8 8007A0C8 00100524 */  addiu      $a1, $zero, 0x1000
/* 6DE15FC 8007A0CC 43330200 */  sra        $a2, $v0, 13
/* 6DE1600 8007A0D0 233C010C */  jal        func_8004F08C
/* 6DE1604 8007A0D4 2330D000 */   subu      $a2, $a2, $s0
/* 6DE1608 8007A0D8 0000638E */  lw         $v1, 0x0($s3)
/* 6DE160C 8007A0DC 00004296 */  lhu        $v0, 0x0($s2)
/* 6DE1610 8007A0E0 00000000 */  nop
/* 6DE1614 8007A0E4 21104300 */  addu       $v0, $v0, $v1
/* 6DE1618 8007A0E8 000042A6 */  sh         $v0, 0x0($s2)
/* 6DE161C 8007A0EC 0780033C */  lui        $v1, %hi(D_8007191C)
/* 6DE1620 8007A0F0 1C19638C */  lw         $v1, %lo(D_8007191C)($v1)
/* 6DE1624 8007A0F4 02004296 */  lhu        $v0, 0x2($s2)
/* 6DE1628 8007A0F8 00000000 */  nop
/* 6DE162C 8007A0FC 21104300 */  addu       $v0, $v0, $v1
/* 6DE1630 8007A100 020042A6 */  sh         $v0, 0x2($s2)
/* 6DE1634 8007A104 0780033C */  lui        $v1, %hi(D_80071920)
/* 6DE1638 8007A108 2019638C */  lw         $v1, %lo(D_80071920)($v1)
/* 6DE163C 8007A10C 04004296 */  lhu        $v0, 0x4($s2)
/* 6DE1640 8007A110 00000000 */  nop
/* 6DE1644 8007A114 21104300 */  addu       $v0, $v0, $v1
/* 6DE1648 8007A118 040042A6 */  sh         $v0, 0x4($s2)
.Llevel_32_8007A11C:
/* 6DE164C 8007A11C 00004386 */  lh         $v1, 0x0($s2)
/* 6DE1650 8007A120 0C00228E */  lw         $v0, 0xC($s1)
/* 6DE1654 8007A124 00000000 */  nop
/* 6DE1658 8007A128 21104300 */  addu       $v0, $v0, $v1
/* 6DE165C 8007A12C 0C0022AE */  sw         $v0, 0xC($s1)
/* 6DE1660 8007A130 02004486 */  lh         $a0, 0x2($s2)
/* 6DE1664 8007A134 1000228E */  lw         $v0, 0x10($s1)
/* 6DE1668 8007A138 49002392 */  lbu        $v1, 0x49($s1)
/* 6DE166C 8007A13C 21104400 */  addu       $v0, $v0, $a0
/* 6DE1670 8007A140 08006330 */  andi       $v1, $v1, 0x8
/* 6DE1674 8007A144 04006010 */  beqz       $v1, .Llevel_32_8007A158
/* 6DE1678 8007A148 100022AE */   sw        $v0, 0x10($s1)
/* 6DE167C 8007A14C 04004296 */  lhu        $v0, 0x4($s2)
/* 6DE1680 8007A150 60E80108 */  j          .Llevel_32_8007A180
/* 6DE1684 8007A154 FDFF4224 */   addiu     $v0, $v0, -0x3
.Llevel_32_8007A158:
/* 6DE1688 8007A158 36002386 */  lh         $v1, 0x36($s1)
/* 6DE168C 8007A15C 2F010224 */  addiu      $v0, $zero, 0x12F
/* 6DE1690 8007A160 04006214 */  bne        $v1, $v0, .Llevel_32_8007A174
/* 6DE1694 8007A164 00000000 */   nop
/* 6DE1698 8007A168 04004296 */  lhu        $v0, 0x4($s2)
/* 6DE169C 8007A16C 60E80108 */  j          .Llevel_32_8007A180
/* 6DE16A0 8007A170 F0FF4224 */   addiu     $v0, $v0, -0x10
.Llevel_32_8007A174:
/* 6DE16A4 8007A174 04004296 */  lhu        $v0, 0x4($s2)
/* 6DE16A8 8007A178 00000000 */  nop
/* 6DE16AC 8007A17C FAFF4224 */  addiu      $v0, $v0, -0x6
.Llevel_32_8007A180:
/* 6DE16B0 8007A180 040042A6 */  sh         $v0, 0x4($s2)
/* 6DE16B4 8007A184 04004286 */  lh         $v0, 0x4($s2)
/* 6DE16B8 8007A188 00000000 */  nop
/* 6DE16BC 8007A18C 80FF4228 */  slti       $v0, $v0, -0x80
/* 6DE16C0 8007A190 02004010 */  beqz       $v0, .Llevel_32_8007A19C
/* 6DE16C4 8007A194 80FF0224 */   addiu     $v0, $zero, -0x80
/* 6DE16C8 8007A198 040042A6 */  sh         $v0, 0x4($s2)
.Llevel_32_8007A19C:
/* 6DE16CC 8007A19C 04004386 */  lh         $v1, 0x4($s2)
/* 6DE16D0 8007A1A0 1400228E */  lw         $v0, 0x14($s1)
/* 6DE16D4 8007A1A4 00000000 */  nop
/* 6DE16D8 8007A1A8 21104300 */  addu       $v0, $v0, $v1
/* 6DE16DC 8007A1AC 140022AE */  sw         $v0, 0x14($s1)
/* 6DE16E0 8007A1B0 44002292 */  lbu        $v0, 0x44($s1)
/* 6DE16E4 8007A1B4 06004392 */  lbu        $v1, 0x6($s2)
/* 6DE16E8 8007A1B8 00000000 */  nop
/* 6DE16EC 8007A1BC 21104300 */  addu       $v0, $v0, $v1
/* 6DE16F0 8007A1C0 440022A2 */  sb         $v0, 0x44($s1)
/* 6DE16F4 8007A1C4 45002292 */  lbu        $v0, 0x45($s1)
/* 6DE16F8 8007A1C8 08004392 */  lbu        $v1, 0x8($s2)
/* 6DE16FC 8007A1CC 00000000 */  nop
/* 6DE1700 8007A1D0 21104300 */  addu       $v0, $v0, $v1
/* 6DE1704 8007A1D4 450022A2 */  sb         $v0, 0x45($s1)
/* 6DE1708 8007A1D8 46002292 */  lbu        $v0, 0x46($s1)
/* 6DE170C 8007A1DC 0A004492 */  lbu        $a0, 0xA($s2)
/* 6DE1710 8007A1E0 49002392 */  lbu        $v1, 0x49($s1)
/* 6DE1714 8007A1E4 21104400 */  addu       $v0, $v0, $a0
/* 6DE1718 8007A1E8 02006330 */  andi       $v1, $v1, 0x2
/* 6DE171C 8007A1EC 18006010 */  beqz       $v1, .Llevel_32_8007A250
/* 6DE1720 8007A1F0 460022A2 */   sb        $v0, 0x46($s1)
/* 6DE1724 8007A1F4 0C00428E */  lw         $v0, 0xC($s2)
/* 6DE1728 8007A1F8 00000000 */  nop
/* 6DE172C 8007A1FC 03004230 */  andi       $v0, $v0, 0x3
/* 6DE1730 8007A200 13004014 */  bnez       $v0, .Llevel_32_8007A250
/* 6DE1734 8007A204 00000000 */   nop
/* 6DE1738 8007A208 9171010C */  jal        rand
/* 6DE173C 8007A20C 00000000 */   nop
/* 6DE1740 8007A210 03004230 */  andi       $v0, $v0, 0x3
/* 6DE1744 8007A214 9171010C */  jal        rand
/* 6DE1748 8007A218 1000A2AF */   sw        $v0, 0x10($sp)
/* 6DE174C 8007A21C 01000424 */  addiu      $a0, $zero, 0x1
/* 6DE1750 8007A220 01000524 */  addiu      $a1, $zero, 0x1
/* 6DE1754 8007A224 0C002626 */  addiu      $a2, $s1, 0xC
/* 6DE1758 8007A228 1000A727 */  addiu      $a3, $sp, 0x10
/* 6DE175C 8007A22C 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 6DE1760 8007A230 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 6DE1764 8007A234 03004230 */  andi       $v0, $v0, 0x3
/* 6DE1768 8007A238 1400A2AF */  sw         $v0, 0x14($sp)
/* 6DE176C 8007A23C 14000224 */  addiu      $v0, $zero, 0x14
/* 6DE1770 8007A240 09F86000 */  jalr       $v1
/* 6DE1774 8007A244 1800A2AF */   sw        $v0, 0x18($sp)
/* 6DE1778 8007A248 DCE80108 */  j          .Llevel_32_8007A370
/* 6DE177C 8007A24C 00000000 */   nop
.Llevel_32_8007A250:
/* 6DE1780 8007A250 49002392 */  lbu        $v1, 0x49($s1)
/* 6DE1784 8007A254 00000000 */  nop
/* 6DE1788 8007A258 04006230 */  andi       $v0, $v1, 0x4
/* 6DE178C 8007A25C 27004010 */  beqz       $v0, .Llevel_32_8007A2FC
/* 6DE1790 8007A260 01000224 */   addiu     $v0, $zero, 0x1
/* 6DE1794 8007A264 42004010 */  beqz       $v0, .Llevel_32_8007A370
/* 6DE1798 8007A268 21800000 */   addu      $s0, $zero, $zero
/* 6DE179C 8007A26C 40001324 */  addiu      $s3, $zero, 0x40
.Llevel_32_8007A270:
/* 6DE17A0 8007A270 9171010C */  jal        rand
/* 6DE17A4 8007A274 01001026 */   addiu     $s0, $s0, 0x1
/* 6DE17A8 8007A278 7F004230 */  andi       $v0, $v0, 0x7F
/* 6DE17AC 8007A27C 23106202 */  subu       $v0, $s3, $v0
/* 6DE17B0 8007A280 9171010C */  jal        rand
/* 6DE17B4 8007A284 1000A2AF */   sw        $v0, 0x10($sp)
/* 6DE17B8 8007A288 7F004230 */  andi       $v0, $v0, 0x7F
/* 6DE17BC 8007A28C 23106202 */  subu       $v0, $s3, $v0
/* 6DE17C0 8007A290 9171010C */  jal        rand
/* 6DE17C4 8007A294 1400A2AF */   sw        $v0, 0x14($sp)
/* 6DE17C8 8007A298 1000A427 */  addiu      $a0, $sp, 0x10
/* 6DE17CC 8007A29C 21288000 */  addu       $a1, $a0, $zero
/* 6DE17D0 8007A2A0 0C002626 */  addiu      $a2, $s1, 0xC
/* 6DE17D4 8007A2A4 7F004230 */  andi       $v0, $v0, 0x7F
/* 6DE17D8 8007A2A8 23106202 */  subu       $v0, $s3, $v0
/* 6DE17DC 8007A2AC 653C010C */  jal        func_8004F194
/* 6DE17E0 8007A2B0 1800A2AF */   sw        $v0, 0x18($sp)
/* 6DE17E4 8007A2B4 01000424 */  addiu      $a0, $zero, 0x1
/* 6DE17E8 8007A2B8 42000524 */  addiu      $a1, $zero, 0x42
/* 6DE17EC 8007A2BC 1000A627 */  addiu      $a2, $sp, 0x10
/* 6DE17F0 8007A2C0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DE17F4 8007A2C4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DE17F8 8007A2C8 00000000 */  nop
/* 6DE17FC 8007A2CC 09F84000 */  jalr       $v0
/* 6DE1800 8007A2D0 01000724 */   addiu     $a3, $zero, 0x1
/* 6DE1804 8007A2D4 49002292 */  lbu        $v0, 0x49($s1)
/* 6DE1808 8007A2D8 00000000 */  nop
/* 6DE180C 8007A2DC 01004230 */  andi       $v0, $v0, 0x1
/* 6DE1810 8007A2E0 40100200 */  sll        $v0, $v0, 1
/* 6DE1814 8007A2E4 01004224 */  addiu      $v0, $v0, 0x1
/* 6DE1818 8007A2E8 2A100202 */  slt        $v0, $s0, $v0
/* 6DE181C 8007A2EC 20004010 */  beqz       $v0, .Llevel_32_8007A370
/* 6DE1820 8007A2F0 00000000 */   nop
/* 6DE1824 8007A2F4 9CE80108 */  j          .Llevel_32_8007A270
/* 6DE1828 8007A2F8 00000000 */   nop
.Llevel_32_8007A2FC:
/* 6DE182C 8007A2FC 08006230 */  andi       $v0, $v1, 0x8
/* 6DE1830 8007A300 1B004010 */  beqz       $v0, .Llevel_32_8007A370
/* 6DE1834 8007A304 00000000 */   nop
/* 6DE1838 8007A308 0C00428E */  lw         $v0, 0xC($s2)
/* 6DE183C 8007A30C 00000000 */  nop
/* 6DE1840 8007A310 07004230 */  andi       $v0, $v0, 0x7
/* 6DE1844 8007A314 16004014 */  bnez       $v0, .Llevel_32_8007A370
/* 6DE1848 8007A318 00000000 */   nop
/* 6DE184C 8007A31C 9171010C */  jal        rand
/* 6DE1850 8007A320 08001024 */   addiu     $s0, $zero, 0x8
/* 6DE1854 8007A324 0F004230 */  andi       $v0, $v0, 0xF
/* 6DE1858 8007A328 23100202 */  subu       $v0, $s0, $v0
/* 6DE185C 8007A32C 9171010C */  jal        rand
/* 6DE1860 8007A330 1000A2AF */   sw        $v0, 0x10($sp)
/* 6DE1864 8007A334 0F004230 */  andi       $v0, $v0, 0xF
/* 6DE1868 8007A338 23800202 */  subu       $s0, $s0, $v0
/* 6DE186C 8007A33C 9171010C */  jal        rand
/* 6DE1870 8007A340 1400B0AF */   sw        $s0, 0x14($sp)
/* 6DE1874 8007A344 01000424 */  addiu      $a0, $zero, 0x1
/* 6DE1878 8007A348 27000524 */  addiu      $a1, $zero, 0x27
/* 6DE187C 8007A34C 0C002626 */  addiu      $a2, $s1, 0xC
/* 6DE1880 8007A350 1000A727 */  addiu      $a3, $sp, 0x10
/* 6DE1884 8007A354 07004230 */  andi       $v0, $v0, 0x7
/* 6DE1888 8007A358 04000324 */  addiu      $v1, $zero, 0x4
/* 6DE188C 8007A35C 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 6DE1890 8007A360 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 6DE1894 8007A364 23186200 */  subu       $v1, $v1, $v0
/* 6DE1898 8007A368 09F80001 */  jalr       $t0
/* 6DE189C 8007A36C 1800A3AF */   sw        $v1, 0x18($sp)
.Llevel_32_8007A370:
/* 6DE18A0 8007A370 0C00428E */  lw         $v0, 0xC($s2)
/* 6DE18A4 8007A374 00000000 */  nop
/* 6DE18A8 8007A378 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 6DE18AC 8007A37C F8E80108 */  j          .Llevel_32_8007A3E0
/* 6DE18B0 8007A380 0C0042AE */   sw        $v0, 0xC($s2)
.Llevel_32_8007A384:
/* 6DE18B4 8007A384 49002392 */  lbu        $v1, 0x49($s1)
/* 6DE18B8 8007A388 00000000 */  nop
/* 6DE18BC 8007A38C 01006230 */  andi       $v0, $v1, 0x1
/* 6DE18C0 8007A390 11004010 */  beqz       $v0, .Llevel_32_8007A3D8
/* 6DE18C4 8007A394 10006230 */   andi      $v0, $v1, 0x10
/* 6DE18C8 8007A398 07004010 */  beqz       $v0, .Llevel_32_8007A3B8
/* 6DE18CC 8007A39C 0F000524 */   addiu     $a1, $zero, 0xF
/* 6DE18D0 8007A3A0 08000424 */  addiu      $a0, $zero, 0x8
/* 6DE18D4 8007A3A4 0C002626 */  addiu      $a2, $s1, 0xC
/* 6DE18D8 8007A3A8 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DE18DC 8007A3AC E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DE18E0 8007A3B0 F4E80108 */  j          .Llevel_32_8007A3D0
/* 6DE18E4 8007A3B4 21380000 */   addu      $a3, $zero, $zero
.Llevel_32_8007A3B8:
/* 6DE18E8 8007A3B8 08000424 */  addiu      $a0, $zero, 0x8
/* 6DE18EC 8007A3BC 46000524 */  addiu      $a1, $zero, 0x46
/* 6DE18F0 8007A3C0 0C002626 */  addiu      $a2, $s1, 0xC
/* 6DE18F4 8007A3C4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DE18F8 8007A3C8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DE18FC 8007A3CC 10000724 */  addiu      $a3, $zero, 0x10
.Llevel_32_8007A3D0:
/* 6DE1900 8007A3D0 09F84000 */  jalr       $v0
/* 6DE1904 8007A3D4 00000000 */   nop
.Llevel_32_8007A3D8:
/* 6DE1908 8007A3D8 C656010C */  jal        func_80055B18
/* 6DE190C 8007A3DC 21202002 */   addu      $a0, $s1, $zero
.Llevel_32_8007A3E0:
/* 6DE1910 8007A3E0 4800BF8F */  lw         $ra, 0x48($sp)
/* 6DE1914 8007A3E4 4400B38F */  lw         $s3, 0x44($sp)
/* 6DE1918 8007A3E8 4000B28F */  lw         $s2, 0x40($sp)
/* 6DE191C 8007A3EC 3C00B18F */  lw         $s1, 0x3C($sp)
/* 6DE1920 8007A3F0 3800B08F */  lw         $s0, 0x38($sp)
/* 6DE1924 8007A3F4 5000BD27 */  addiu      $sp, $sp, 0x50
/* 6DE1928 8007A3F8 0800E003 */  jr         $ra
/* 6DE192C 8007A3FC 00000000 */   nop
.size func_level_32_80079FD0, . - func_level_32_80079FD0
