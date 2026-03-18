.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_43_80089F38
/* 87AF468 80089F38 60FFBD27 */  addiu      $sp, $sp, -0xA0
/* 87AF46C 80089F3C 7C00B1AF */  sw         $s1, 0x7C($sp)
/* 87AF470 80089F40 21888000 */  addu       $s1, $a0, $zero
/* 87AF474 80089F44 9000B6AF */  sw         $s6, 0x90($sp)
/* 87AF478 80089F48 21B0A000 */  addu       $s6, $a1, $zero
/* 87AF47C 80089F4C 9C00BFAF */  sw         $ra, 0x9C($sp)
/* 87AF480 80089F50 9800BEAF */  sw         $fp, 0x98($sp)
/* 87AF484 80089F54 9400B7AF */  sw         $s7, 0x94($sp)
/* 87AF488 80089F58 8C00B5AF */  sw         $s5, 0x8C($sp)
/* 87AF48C 80089F5C 8800B4AF */  sw         $s4, 0x88($sp)
/* 87AF490 80089F60 8400B3AF */  sw         $s3, 0x84($sp)
/* 87AF494 80089F64 8000B2AF */  sw         $s2, 0x80($sp)
/* 87AF498 80089F68 9F56010C */  jal        func_80055A7C
/* 87AF49C 80089F6C 7800B0AF */   sw        $s0, 0x78($sp)
/* 87AF4A0 80089F70 21A04000 */  addu       $s4, $v0, $zero
/* 87AF4A4 80089F74 03008016 */  bnez       $s4, .Llevel_43_80089F84
/* 87AF4A8 80089F78 21208002 */   addu      $a0, $s4, $zero
/* 87AF4AC 80089F7C 592D0208 */  j          .Llevel_43_8008B564
/* 87AF4B0 80089F80 21100000 */   addu      $v0, $zero, $zero
.Llevel_43_80089F84:
/* 87AF4B4 80089F84 21280000 */  addu       $a1, $zero, $zero
/* 87AF4B8 80089F88 0000908E */  lw         $s0, 0x0($s4)
/* 87AF4BC 80089F8C E439010C */  jal        func_8004E790
/* 87AF4C0 80089F90 58000624 */   addiu     $a2, $zero, 0x58
/* 87AF4C4 80089F94 21280000 */  addu       $a1, $zero, $zero
/* 87AF4C8 80089F98 18000624 */  addiu      $a2, $zero, 0x18
/* 87AF4CC 80089F9C 21200002 */  addu       $a0, $s0, $zero
/* 87AF4D0 80089FA0 E439010C */  jal        func_8004E790
/* 87AF4D4 80089FA4 000084AE */   sw        $a0, 0x0($s4)
/* 87AF4D8 80089FA8 1600C012 */  beqz       $s6, .Llevel_43_8008A004
/* 87AF4DC 80089FAC 360091A6 */   sh        $s1, 0x36($s4)
/* 87AF4E0 80089FB0 0780043C */  lui        $a0, %hi(D_8006C550)
/* 87AF4E4 80089FB4 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 87AF4E8 80089FB8 00000000 */  nop
/* 87AF4EC 80089FBC 2320C402 */  subu       $a0, $s6, $a0
/* 87AF4F0 80089FC0 40190400 */  sll        $v1, $a0, 5
/* 87AF4F4 80089FC4 23186400 */  subu       $v1, $v1, $a0
/* 87AF4F8 80089FC8 40190300 */  sll        $v1, $v1, 5
/* 87AF4FC 80089FCC 21186400 */  addu       $v1, $v1, $a0
/* 87AF500 80089FD0 C0100300 */  sll        $v0, $v1, 3
/* 87AF504 80089FD4 21186200 */  addu       $v1, $v1, $v0
/* 87AF508 80089FD8 C0130300 */  sll        $v0, $v1, 15
/* 87AF50C 80089FDC 23104300 */  subu       $v0, $v0, $v1
/* 87AF510 80089FE0 80100200 */  sll        $v0, $v0, 2
/* 87AF514 80089FE4 21104400 */  addu       $v0, $v0, $a0
/* 87AF518 80089FE8 23100200 */  negu       $v0, $v0
/* 87AF51C 80089FEC C3180200 */  sra        $v1, $v0, 3
/* 87AF520 80089FF0 0001622C */  sltiu      $v0, $v1, 0x100
/* 87AF524 80089FF4 04004010 */  beqz       $v0, .Llevel_43_8008A008
/* 87AF528 80089FF8 FF000224 */   addiu     $v0, $zero, 0xFF
/* 87AF52C 80089FFC 03280208 */  j          .Llevel_43_8008A00C
/* 87AF530 8008A000 3A0083A2 */   sb        $v1, 0x3A($s4)
.Llevel_43_8008A004:
/* 87AF534 8008A004 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_43_8008A008:
/* 87AF538 8008A008 3A0082A2 */  sb         $v0, 0x3A($s4)
.Llevel_43_8008A00C:
/* 87AF53C 8008A00C FBD3000C */  jal        func_80034FEC
/* 87AF540 8008A010 21208002 */   addu      $a0, $s4, $zero
/* 87AF544 8008A014 04010224 */  addiu      $v0, $zero, 0x104
/* 87AF548 8008A018 5D032212 */  beq        $s1, $v0, .Llevel_43_8008AD90
/* 87AF54C 8008A01C 0501222A */   slti      $v0, $s1, 0x105
/* 87AF550 8008A020 22004010 */  beqz       $v0, .Llevel_43_8008A0AC
/* 87AF554 8008A024 66000224 */   addiu     $v0, $zero, 0x66
/* 87AF558 8008A028 51012212 */  beq        $s1, $v0, .Llevel_43_8008A570
/* 87AF55C 8008A02C 6700222A */   slti      $v0, $s1, 0x67
/* 87AF560 8008A030 0E004010 */  beqz       $v0, .Llevel_43_8008A06C
/* 87AF564 8008A034 10000224 */   addiu     $v0, $zero, 0x10
/* 87AF568 8008A038 1A012212 */  beq        $s1, $v0, .Llevel_43_8008A4A4
/* 87AF56C 8008A03C 1100222A */   slti      $v0, $s1, 0x11
/* 87AF570 8008A040 05004010 */  beqz       $v0, .Llevel_43_8008A058
/* 87AF574 8008A044 01000224 */   addiu     $v0, $zero, 0x1
/* 87AF578 8008A048 3A002212 */  beq        $s1, $v0, .Llevel_43_8008A134
/* 87AF57C 8008A04C 00000000 */   nop
/* 87AF580 8008A050 4D2D0208 */  j          .Llevel_43_8008B534
/* 87AF584 8008A054 00000000 */   nop
.Llevel_43_8008A058:
/* 87AF588 8008A058 54000224 */  addiu      $v0, $zero, 0x54
/* 87AF58C 8008A05C 3C002212 */  beq        $s1, $v0, .Llevel_43_8008A150
/* 87AF590 8008A060 0C008426 */   addiu     $a0, $s4, 0xC
/* 87AF594 8008A064 4D2D0208 */  j          .Llevel_43_8008B534
/* 87AF598 8008A068 00000000 */   nop
.Llevel_43_8008A06C:
/* 87AF59C 8008A06C 84000224 */  addiu      $v0, $zero, 0x84
/* 87AF5A0 8008A070 8B012212 */  beq        $s1, $v0, .Llevel_43_8008A6A0
/* 87AF5A4 8008A074 8500222A */   slti      $v0, $s1, 0x85
/* 87AF5A8 8008A078 05004010 */  beqz       $v0, .Llevel_43_8008A090
/* 87AF5AC 8008A07C 78000224 */   addiu     $v0, $zero, 0x78
/* 87AF5B0 8008A080 4B012212 */  beq        $s1, $v0, .Llevel_43_8008A5B0
/* 87AF5B4 8008A084 00000000 */   nop
/* 87AF5B8 8008A088 4D2D0208 */  j          .Llevel_43_8008B534
/* 87AF5BC 8008A08C 00000000 */   nop
.Llevel_43_8008A090:
/* 87AF5C0 8008A090 C5000224 */  addiu      $v0, $zero, 0xC5
/* 87AF5C4 8008A094 91012212 */  beq        $s1, $v0, .Llevel_43_8008A6DC
/* 87AF5C8 8008A098 D3000224 */   addiu     $v0, $zero, 0xD3
/* 87AF5CC 8008A09C 02012212 */  beq        $s1, $v0, .Llevel_43_8008A4A8
/* 87AF5D0 8008A0A0 10000324 */   addiu     $v1, $zero, 0x10
/* 87AF5D4 8008A0A4 4D2D0208 */  j          .Llevel_43_8008B534
/* 87AF5D8 8008A0A8 00000000 */   nop
.Llevel_43_8008A0AC:
/* 87AF5DC 8008A0AC E1010224 */  addiu      $v0, $zero, 0x1E1
/* 87AF5E0 8008A0B0 71042212 */  beq        $s1, $v0, .Llevel_43_8008B278
/* 87AF5E4 8008A0B4 E201222A */   slti      $v0, $s1, 0x1E2
/* 87AF5E8 8008A0B8 0E004010 */  beqz       $v0, .Llevel_43_8008A0F4
/* 87AF5EC 8008A0BC 3401222A */   slti      $v0, $s1, 0x134
/* 87AF5F0 8008A0C0 07004010 */  beqz       $v0, .Llevel_43_8008A0E0
/* 87AF5F4 8008A0C4 3201222A */   slti      $v0, $s1, 0x132
/* 87AF5F8 8008A0C8 63034010 */  beqz       $v0, .Llevel_43_8008AE58
/* 87AF5FC 8008A0CC 10010224 */   addiu     $v0, $zero, 0x110
/* 87AF600 8008A0D0 44032212 */  beq        $s1, $v0, .Llevel_43_8008ADE4
/* 87AF604 8008A0D4 00000000 */   nop
/* 87AF608 8008A0D8 4D2D0208 */  j          .Llevel_43_8008B534
/* 87AF60C 8008A0DC 00000000 */   nop
.Llevel_43_8008A0E0:
/* 87AF610 8008A0E0 46010224 */  addiu      $v0, $zero, 0x146
/* 87AF614 8008A0E4 22042212 */  beq        $s1, $v0, .Llevel_43_8008B170
/* 87AF618 8008A0E8 0C008426 */   addiu     $a0, $s4, 0xC
/* 87AF61C 8008A0EC 4D2D0208 */  j          .Llevel_43_8008B534
/* 87AF620 8008A0F0 00000000 */   nop
.Llevel_43_8008A0F4:
/* 87AF624 8008A0F4 38020224 */  addiu      $v0, $zero, 0x238
/* 87AF628 8008A0F8 57032212 */  beq        $s1, $v0, .Llevel_43_8008AE58
/* 87AF62C 8008A0FC 3902222A */   slti      $v0, $s1, 0x239
/* 87AF630 8008A100 05004010 */  beqz       $v0, .Llevel_43_8008A118
/* 87AF634 8008A104 2A020224 */   addiu     $v0, $zero, 0x22A
/* 87AF638 8008A108 93042212 */  beq        $s1, $v0, .Llevel_43_8008B358
/* 87AF63C 8008A10C 00000000 */   nop
/* 87AF640 8008A110 4D2D0208 */  j          .Llevel_43_8008B534
/* 87AF644 8008A114 00000000 */   nop
.Llevel_43_8008A118:
/* 87AF648 8008A118 54020224 */  addiu      $v0, $zero, 0x254
/* 87AF64C 8008A11C 6B042212 */  beq        $s1, $v0, .Llevel_43_8008B2CC
/* 87AF650 8008A120 E8030224 */   addiu     $v0, $zero, 0x3E8
/* 87AF654 8008A124 9E042212 */  beq        $s1, $v0, .Llevel_43_8008B3A0
/* 87AF658 8008A128 B00E1224 */   addiu     $s2, $zero, 0xEB0
/* 87AF65C 8008A12C 4D2D0208 */  j          .Llevel_43_8008B534
/* 87AF660 8008A130 00000000 */   nop
.Llevel_43_8008A134:
/* 87AF664 8008A134 0957010C */  jal        func_80055C24
/* 87AF668 8008A138 21208002 */   addu      $a0, $s4, $zero
/* 87AF66C 8008A13C 18000224 */  addiu      $v0, $zero, 0x18
/* 87AF670 8008A140 4C0082A2 */  sb         $v0, 0x4C($s4)
/* 87AF674 8008A144 40000224 */  addiu      $v0, $zero, 0x40
/* 87AF678 8008A148 762B0208 */  j          .Llevel_43_8008ADD8
/* 87AF67C 8008A14C 4A0082A2 */   sb        $v0, 0x4A($s4)
.Llevel_43_8008A150:
/* 87AF680 8008A150 0C00C526 */  addiu      $a1, $s6, 0xC
/* 87AF684 8008A154 0000958E */  lw         $s5, 0x0($s4)
/* 87AF688 8008A158 20000224 */  addiu      $v0, $zero, 0x20
/* 87AF68C 8008A15C 4C0082A2 */  sb         $v0, 0x4C($s4)
/* 87AF690 8008A160 5E3C010C */  jal        func_8004F178
/* 87AF694 8008A164 4E0082A2 */   sb        $v0, 0x4E($s4)
/* 87AF698 8008A168 0957010C */  jal        func_80055C24
/* 87AF69C 8008A16C 21208002 */   addu      $a0, $s4, $zero
/* 87AF6A0 8008A170 2C010424 */  addiu      $a0, $zero, 0x12C
/* 87AF6A4 8008A174 DBD8000C */  jal        func_8003636C
/* 87AF6A8 8008A178 34080524 */   addiu     $a1, $zero, 0x834
/* 87AF6AC 8008A17C 24FA0424 */  addiu      $a0, $zero, -0x5DC
/* 87AF6B0 8008A180 DC050524 */  addiu      $a1, $zero, 0x5DC
/* 87AF6B4 8008A184 DBD8000C */  jal        func_8003636C
/* 87AF6B8 8008A188 21904000 */   addu      $s2, $v0, $zero
/* 87AF6BC 8008A18C 4600D192 */  lbu        $s1, 0x46($s6)
/* 87AF6C0 8008A190 21204002 */  addu       $a0, $s2, $zero
/* 87AF6C4 8008A194 21882202 */  addu       $s1, $s1, $v0
/* 87AF6C8 8008A198 8B3A010C */  jal        func_8004EA2C
/* 87AF6CC 8008A19C FF0F3132 */   andi      $s1, $s1, 0xFFF
/* 87AF6D0 8008A1A0 21202002 */  addu       $a0, $s1, $zero
/* 87AF6D4 8008A1A4 8B3A010C */  jal        func_8004EA2C
/* 87AF6D8 8008A1A8 21804000 */   addu      $s0, $v0, $zero
/* 87AF6DC 8008A1AC 78001324 */  addiu      $s3, $zero, 0x78
/* 87AF6E0 8008A1B0 18005300 */  mult       $v0, $s3
/* 87AF6E4 8008A1B4 12500000 */  mflo       $t2
/* 87AF6E8 8008A1B8 83811000 */  sra        $s0, $s0, 6
/* 87AF6EC 8008A1BC 00000000 */  nop
/* 87AF6F0 8008A1C0 18000A02 */  mult       $s0, $t2
/* 87AF6F4 8008A1C4 21204002 */  addu       $a0, $s2, $zero
/* 87AF6F8 8008A1C8 12500000 */  mflo       $t2
/* 87AF6FC 8008A1CC 83140A00 */  sra        $v0, $t2, 18
/* 87AF700 8008A1D0 8B3A010C */  jal        func_8004EA2C
/* 87AF704 8008A1D4 0000A2A6 */   sh        $v0, 0x0($s5)
/* 87AF708 8008A1D8 21202002 */  addu       $a0, $s1, $zero
/* 87AF70C 8008A1DC 793A010C */  jal        func_8004E9E4
/* 87AF710 8008A1E0 21804000 */   addu      $s0, $v0, $zero
/* 87AF714 8008A1E4 18005300 */  mult       $v0, $s3
/* 87AF718 8008A1E8 12500000 */  mflo       $t2
/* 87AF71C 8008A1EC 83811000 */  sra        $s0, $s0, 6
/* 87AF720 8008A1F0 00000000 */  nop
/* 87AF724 8008A1F4 18000A02 */  mult       $s0, $t2
/* 87AF728 8008A1F8 21204002 */  addu       $a0, $s2, $zero
/* 87AF72C 8008A1FC 12500000 */  mflo       $t2
/* 87AF730 8008A200 83140A00 */  sra        $v0, $t2, 18
/* 87AF734 8008A204 793A010C */  jal        func_8004E9E4
/* 87AF738 8008A208 0200A2A6 */   sh        $v0, 0x2($s5)
/* 87AF73C 8008A20C 96000324 */  addiu      $v1, $zero, 0x96
/* 87AF740 8008A210 18004300 */  mult       $v0, $v1
/* 87AF744 8008A214 12500000 */  mflo       $t2
/* 87AF748 8008A218 03130A00 */  sra        $v0, $t2, 12
/* 87AF74C 8008A21C 0400A2A6 */  sh         $v0, 0x4($s5)
/* 87AF750 8008A220 5100C492 */  lbu        $a0, 0x51($s6)
/* 87AF754 8008A224 00000000 */  nop
/* 87AF758 8008A228 26008010 */  beqz       $a0, .Llevel_43_8008A2C4
/* 87AF75C 8008A22C 1000033C */   lui       $v1, (0x100000 >> 16)
/* 87AF760 8008A230 1800C28E */  lw         $v0, 0x18($s6)
/* 87AF764 8008A234 00000000 */  nop
/* 87AF768 8008A238 24104300 */  and        $v0, $v0, $v1
/* 87AF76C 8008A23C 21004010 */  beqz       $v0, .Llevel_43_8008A2C4
/* 87AF770 8008A240 40100400 */   sll       $v0, $a0, 1
/* 87AF774 8008A244 0680013C */  lui        $at, %hi(D_80065920)
/* 87AF778 8008A248 21082200 */  addu       $at, $at, $v0
/* 87AF77C 8008A24C 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 87AF780 8008A250 00000000 */  nop
/* 87AF784 8008A254 80100300 */  sll        $v0, $v1, 2
/* 87AF788 8008A258 21104300 */  addu       $v0, $v0, $v1
/* 87AF78C 8008A25C 00190200 */  sll        $v1, $v0, 4
/* 87AF790 8008A260 23186200 */  subu       $v1, $v1, $v0
/* 87AF794 8008A264 0000A296 */  lhu        $v0, 0x0($s5)
/* 87AF798 8008A268 C31A0300 */  sra        $v1, $v1, 11
/* 87AF79C 8008A26C 21104300 */  addu       $v0, $v0, $v1
/* 87AF7A0 8008A270 0000A2A6 */  sh         $v0, 0x0($s5)
/* 87AF7A4 8008A274 5100C292 */  lbu        $v0, 0x51($s6)
/* 87AF7A8 8008A278 28000424 */  addiu      $a0, $zero, 0x28
/* 87AF7AC 8008A27C 40100200 */  sll        $v0, $v0, 1
/* 87AF7B0 8008A280 0680013C */  lui        $at, %hi(D_800658A0)
/* 87AF7B4 8008A284 21082200 */  addu       $at, $at, $v0
/* 87AF7B8 8008A288 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 87AF7BC 8008A28C 46000524 */  addiu      $a1, $zero, 0x46
/* 87AF7C0 8008A290 80100300 */  sll        $v0, $v1, 2
/* 87AF7C4 8008A294 21104300 */  addu       $v0, $v0, $v1
/* 87AF7C8 8008A298 00190200 */  sll        $v1, $v0, 4
/* 87AF7CC 8008A29C 23186200 */  subu       $v1, $v1, $v0
/* 87AF7D0 8008A2A0 0200A296 */  lhu        $v0, 0x2($s5)
/* 87AF7D4 8008A2A4 C31A0300 */  sra        $v1, $v1, 11
/* 87AF7D8 8008A2A8 21104300 */  addu       $v0, $v0, $v1
/* 87AF7DC 8008A2AC DBD8000C */  jal        func_8003636C
/* 87AF7E0 8008A2B0 0200A2A6 */   sh        $v0, 0x2($s5)
/* 87AF7E4 8008A2B4 0400A396 */  lhu        $v1, 0x4($s5)
/* 87AF7E8 8008A2B8 00000000 */  nop
/* 87AF7EC 8008A2BC 21186200 */  addu       $v1, $v1, $v0
/* 87AF7F0 8008A2C0 0400A3A6 */  sh         $v1, 0x4($s5)
.Llevel_43_8008A2C4:
/* 87AF7F4 8008A2C4 1800C28E */  lw         $v0, 0x18($s6)
/* 87AF7F8 8008A2C8 0200033C */  lui        $v1, (0x20000 >> 16)
/* 87AF7FC 8008A2CC 24104300 */  and        $v0, $v0, $v1
/* 87AF800 8008A2D0 1B004010 */  beqz       $v0, .Llevel_43_8008A340
/* 87AF804 8008A2D4 00000000 */   nop
/* 87AF808 8008A2D8 4600C292 */  lbu        $v0, 0x46($s6)
/* 87AF80C 8008A2DC 00000000 */  nop
/* 87AF810 8008A2E0 40100200 */  sll        $v0, $v0, 1
/* 87AF814 8008A2E4 0680013C */  lui        $at, %hi(D_80065920)
/* 87AF818 8008A2E8 21082200 */  addu       $at, $at, $v0
/* 87AF81C 8008A2EC 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 87AF820 8008A2F0 00000000 */  nop
/* 87AF824 8008A2F4 C0100300 */  sll        $v0, $v1, 3
/* 87AF828 8008A2F8 23104300 */  subu       $v0, $v0, $v1
/* 87AF82C 8008A2FC C0100200 */  sll        $v0, $v0, 3
/* 87AF830 8008A300 23104300 */  subu       $v0, $v0, $v1
/* 87AF834 8008A304 0000A396 */  lhu        $v1, 0x0($s5)
/* 87AF838 8008A308 83120200 */  sra        $v0, $v0, 10
/* 87AF83C 8008A30C 21186200 */  addu       $v1, $v1, $v0
/* 87AF840 8008A310 0000A3A6 */  sh         $v1, 0x0($s5)
/* 87AF844 8008A314 4600C292 */  lbu        $v0, 0x46($s6)
/* 87AF848 8008A318 00000000 */  nop
/* 87AF84C 8008A31C 40100200 */  sll        $v0, $v0, 1
/* 87AF850 8008A320 0680013C */  lui        $at, %hi(D_800658A0)
/* 87AF854 8008A324 21082200 */  addu       $at, $at, $v0
/* 87AF858 8008A328 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 87AF85C 8008A32C 00000000 */  nop
/* 87AF860 8008A330 C0100300 */  sll        $v0, $v1, 3
/* 87AF864 8008A334 23104300 */  subu       $v0, $v0, $v1
/* 87AF868 8008A338 E9280208 */  j          .Llevel_43_8008A3A4
/* 87AF86C 8008A33C C0100200 */   sll       $v0, $v0, 3
.Llevel_43_8008A340:
/* 87AF870 8008A340 4600C292 */  lbu        $v0, 0x46($s6)
/* 87AF874 8008A344 00000000 */  nop
/* 87AF878 8008A348 40100200 */  sll        $v0, $v0, 1
/* 87AF87C 8008A34C 0680013C */  lui        $at, %hi(D_80065920)
/* 87AF880 8008A350 21082200 */  addu       $at, $at, $v0
/* 87AF884 8008A354 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 87AF888 8008A358 00000000 */  nop
/* 87AF88C 8008A35C C0100300 */  sll        $v0, $v1, 3
/* 87AF890 8008A360 21104300 */  addu       $v0, $v0, $v1
/* 87AF894 8008A364 80100200 */  sll        $v0, $v0, 2
/* 87AF898 8008A368 23104300 */  subu       $v0, $v0, $v1
/* 87AF89C 8008A36C 0000A396 */  lhu        $v1, 0x0($s5)
/* 87AF8A0 8008A370 83120200 */  sra        $v0, $v0, 10
/* 87AF8A4 8008A374 21186200 */  addu       $v1, $v1, $v0
/* 87AF8A8 8008A378 0000A3A6 */  sh         $v1, 0x0($s5)
/* 87AF8AC 8008A37C 4600C292 */  lbu        $v0, 0x46($s6)
/* 87AF8B0 8008A380 00000000 */  nop
/* 87AF8B4 8008A384 40100200 */  sll        $v0, $v0, 1
/* 87AF8B8 8008A388 0680013C */  lui        $at, %hi(D_800658A0)
/* 87AF8BC 8008A38C 21082200 */  addu       $at, $at, $v0
/* 87AF8C0 8008A390 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 87AF8C4 8008A394 00000000 */  nop
/* 87AF8C8 8008A398 C0100300 */  sll        $v0, $v1, 3
/* 87AF8CC 8008A39C 21104300 */  addu       $v0, $v0, $v1
/* 87AF8D0 8008A3A0 80100200 */  sll        $v0, $v0, 2
.Llevel_43_8008A3A4:
/* 87AF8D4 8008A3A4 23104300 */  subu       $v0, $v0, $v1
/* 87AF8D8 8008A3A8 0200A396 */  lhu        $v1, 0x2($s5)
/* 87AF8DC 8008A3AC 83120200 */  sra        $v0, $v0, 10
/* 87AF8E0 8008A3B0 21186200 */  addu       $v1, $v1, $v0
/* 87AF8E4 8008A3B4 0200A3A6 */  sh         $v1, 0x2($s5)
/* 87AF8E8 8008A3B8 36008386 */  lh         $v1, 0x36($s4)
/* 87AF8EC 8008A3BC 0A000224 */  addiu      $v0, $zero, 0xA
/* 87AF8F0 8008A3C0 1A006210 */  beq        $v1, $v0, .Llevel_43_8008A42C
/* 87AF8F4 8008A3C4 1D000224 */   addiu     $v0, $zero, 0x1D
/* 87AF8F8 8008A3C8 18006210 */  beq        $v1, $v0, .Llevel_43_8008A42C
/* 87AF8FC 8008A3CC 00000000 */   nop
/* 87AF900 8008A3D0 9171010C */  jal        rand
/* 87AF904 8008A3D4 00000000 */   nop
/* 87AF908 8008A3D8 9171010C */  jal        rand
/* 87AF90C 8008A3DC 440082A2 */   sb        $v0, 0x44($s4)
/* 87AF910 8008A3E0 9171010C */  jal        rand
/* 87AF914 8008A3E4 450082A2 */   sb        $v0, 0x45($s4)
/* 87AF918 8008A3E8 460082A2 */  sb         $v0, 0x46($s4)
/* 87AF91C 8008A3EC 0000A286 */  lh         $v0, 0x0($s5)
/* 87AF920 8008A3F0 0C00838E */  lw         $v1, 0xC($s4)
/* 87AF924 8008A3F4 40100200 */  sll        $v0, $v0, 1
/* 87AF928 8008A3F8 21186200 */  addu       $v1, $v1, $v0
/* 87AF92C 8008A3FC 0C0083AE */  sw         $v1, 0xC($s4)
/* 87AF930 8008A400 0200A286 */  lh         $v0, 0x2($s5)
/* 87AF934 8008A404 1000838E */  lw         $v1, 0x10($s4)
/* 87AF938 8008A408 40100200 */  sll        $v0, $v0, 1
/* 87AF93C 8008A40C 21186200 */  addu       $v1, $v1, $v0
/* 87AF940 8008A410 100083AE */  sw         $v1, 0x10($s4)
/* 87AF944 8008A414 0400A286 */  lh         $v0, 0x4($s5)
/* 87AF948 8008A418 1400838E */  lw         $v1, 0x14($s4)
/* 87AF94C 8008A41C 40100200 */  sll        $v0, $v0, 1
/* 87AF950 8008A420 21186200 */  addu       $v1, $v1, $v0
/* 87AF954 8008A424 14290208 */  j          .Llevel_43_8008A450
/* 87AF958 8008A428 140083AE */   sw        $v1, 0x14($s4)
.Llevel_43_8008A42C:
/* 87AF95C 8008A42C 4400C292 */  lbu        $v0, 0x44($s6)
/* 87AF960 8008A430 00000000 */  nop
/* 87AF964 8008A434 440082A2 */  sb         $v0, 0x44($s4)
/* 87AF968 8008A438 4500C292 */  lbu        $v0, 0x45($s6)
/* 87AF96C 8008A43C 00000000 */  nop
/* 87AF970 8008A440 450082A2 */  sb         $v0, 0x45($s4)
/* 87AF974 8008A444 4600C292 */  lbu        $v0, 0x46($s6)
/* 87AF978 8008A448 00000000 */  nop
/* 87AF97C 8008A44C 460082A2 */  sb         $v0, 0x46($s4)
.Llevel_43_8008A450:
/* 87AF980 8008A450 9171010C */  jal        rand
/* 87AF984 8008A454 00000000 */   nop
/* 87AF988 8008A458 1F004230 */  andi       $v0, $v0, 0x1F
/* 87AF98C 8008A45C F0FF4224 */  addiu      $v0, $v0, -0x10
/* 87AF990 8008A460 9171010C */  jal        rand
/* 87AF994 8008A464 0600A2A6 */   sh        $v0, 0x6($s5)
/* 87AF998 8008A468 1F004230 */  andi       $v0, $v0, 0x1F
/* 87AF99C 8008A46C F0FF4224 */  addiu      $v0, $v0, -0x10
/* 87AF9A0 8008A470 9171010C */  jal        rand
/* 87AF9A4 8008A474 0800A2A6 */   sh        $v0, 0x8($s5)
/* 87AF9A8 8008A478 78000424 */  addiu      $a0, $zero, 0x78
/* 87AF9AC 8008A47C 96000524 */  addiu      $a1, $zero, 0x96
/* 87AF9B0 8008A480 1F004230 */  andi       $v0, $v0, 0x1F
/* 87AF9B4 8008A484 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 87AF9B8 8008A488 DBD8000C */  jal        func_8003636C
/* 87AF9BC 8008A48C 0A00A2A6 */   sh        $v0, 0xA($s5)
/* 87AF9C0 8008A490 0C00A2A6 */  sh         $v0, 0xC($s5)
/* 87AF9C4 8008A494 01000224 */  addiu      $v0, $zero, 0x1
/* 87AF9C8 8008A498 0E00A2A6 */  sh         $v0, 0xE($s5)
/* 87AF9CC 8008A49C 582D0208 */  j          .Llevel_43_8008B560
/* 87AF9D0 8008A4A0 1200A0A6 */   sh        $zero, 0x12($s5)
.Llevel_43_8008A4A4:
/* 87AF9D4 8008A4A4 10000324 */  addiu      $v1, $zero, 0x10
.Llevel_43_8008A4A8:
/* 87AF9D8 8008A4A8 36008286 */  lh         $v0, 0x36($s4)
/* 87AF9DC 8008A4AC 0000918E */  lw         $s1, 0x0($s4)
/* 87AF9E0 8008A4B0 19004314 */  bne        $v0, $v1, .Llevel_43_8008A518
/* 87AF9E4 8008A4B4 0C009026 */   addiu     $s0, $s4, 0xC
/* 87AF9E8 8008A4B8 0780043C */  lui        $a0, %hi(D_8006C784)
/* 87AF9EC 8008A4BC 84C7848C */  lw         $a0, %lo(D_8006C784)($a0)
/* 87AF9F0 8008A4C0 00000000 */  nop
/* 87AF9F4 8008A4C4 04008228 */  slti       $v0, $a0, 0x4
/* 87AF9F8 8008A4C8 03004010 */  beqz       $v0, .Llevel_43_8008A4D8
/* 87AF9FC 8008A4CC 0A000324 */   addiu     $v1, $zero, 0xA
/* 87AFA00 8008A4D0 3A290208 */  j          .Llevel_43_8008A4E8
/* 87AFA04 8008A4D4 07000324 */   addiu     $v1, $zero, 0x7
.Llevel_43_8008A4D8:
/* 87AFA08 8008A4D8 07008228 */  slti       $v0, $a0, 0x7
/* 87AFA0C 8008A4DC 02004010 */  beqz       $v0, .Llevel_43_8008A4E8
/* 87AFA10 8008A4E0 00000000 */   nop
/* 87AFA14 8008A4E4 09000324 */  addiu      $v1, $zero, 0x9
.Llevel_43_8008A4E8:
/* 87AFA18 8008A4E8 0680043C */  lui        $a0, %hi(D_8006582C)
/* 87AFA1C 8008A4EC 2C588424 */  addiu      $a0, $a0, %lo(D_8006582C)
/* 87AFA20 8008A4F0 0000828C */  lw         $v0, 0x0($a0)
/* 87AFA24 8008A4F4 00000000 */  nop
/* 87AFA28 8008A4F8 01004224 */  addiu      $v0, $v0, 0x1
/* 87AFA2C 8008A4FC 000082AC */  sw         $v0, 0x0($a0)
/* 87AFA30 8008A500 2A104300 */  slt        $v0, $v0, $v1
/* 87AFA34 8008A504 04004014 */  bnez       $v0, .Llevel_43_8008A518
/* 87AFA38 8008A508 0C009026 */   addiu     $s0, $s4, 0xC
/* 87AFA3C 8008A50C D3000224 */  addiu      $v0, $zero, 0xD3
/* 87AFA40 8008A510 000080AC */  sw         $zero, 0x0($a0)
/* 87AFA44 8008A514 360082A6 */  sh         $v0, 0x36($s4)
.Llevel_43_8008A518:
/* 87AFA48 8008A518 21200002 */  addu       $a0, $s0, $zero
/* 87AFA4C 8008A51C 5E3C010C */  jal        func_8004F178
/* 87AFA50 8008A520 0C00C526 */   addiu     $a1, $s6, 0xC
/* 87AFA54 8008A524 0957010C */  jal        func_80055C24
/* 87AFA58 8008A528 21208002 */   addu      $a0, $s4, $zero
/* 87AFA5C 8008A52C 21202002 */  addu       $a0, $s1, $zero
/* 87AFA60 8008A530 1400828E */  lw         $v0, 0x14($s4)
/* 87AFA64 8008A534 21280002 */  addu       $a1, $s0, $zero
/* 87AFA68 8008A538 00024224 */  addiu      $v0, $v0, 0x200
/* 87AFA6C 8008A53C 5E3C010C */  jal        func_8004F178
/* 87AFA70 8008A540 140082AE */   sw        $v0, 0x14($s4)
/* 87AFA74 8008A544 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 87AFA78 8008A548 1C0082AE */  sw         $v0, 0x1C($s4)
/* 87AFA7C 8008A54C 02000224 */  addiu      $v0, $zero, 0x2
/* 87AFA80 8008A550 470082A2 */  sb         $v0, 0x47($s4)
/* 87AFA84 8008A554 08070224 */  addiu      $v0, $zero, 0x708
/* 87AFA88 8008A558 0E0022A6 */  sh         $v0, 0xE($s1)
/* 87AFA8C 8008A55C 9171010C */  jal        rand
/* 87AFA90 8008A560 110020A2 */   sb        $zero, 0x11($s1)
/* 87AFA94 8008A564 FC004230 */  andi       $v0, $v0, 0xFC
/* 87AFA98 8008A568 582D0208 */  j          .Llevel_43_8008B560
/* 87AFA9C 8008A56C 120022A2 */   sb        $v0, 0x12($s1)
.Llevel_43_8008A570:
/* 87AFAA0 8008A570 4400C292 */  lbu        $v0, 0x44($s6)
/* 87AFAA4 8008A574 00000000 */  nop
/* 87AFAA8 8008A578 440082A2 */  sb         $v0, 0x44($s4)
/* 87AFAAC 8008A57C 4500C292 */  lbu        $v0, 0x45($s6)
/* 87AFAB0 8008A580 0C008426 */  addiu      $a0, $s4, 0xC
/* 87AFAB4 8008A584 450082A2 */  sb         $v0, 0x45($s4)
/* 87AFAB8 8008A588 4600C292 */  lbu        $v0, 0x46($s6)
/* 87AFABC 8008A58C 0C00C526 */  addiu      $a1, $s6, 0xC
/* 87AFAC0 8008A590 5E3C010C */  jal        func_8004F178
/* 87AFAC4 8008A594 460082A2 */   sb        $v0, 0x46($s4)
/* 87AFAC8 8008A598 0957010C */  jal        func_80055C24
/* 87AFACC 8008A59C 21208002 */   addu      $a0, $s4, $zero
/* 87AFAD0 8008A5A0 03000224 */  addiu      $v0, $zero, 0x3
/* 87AFAD4 8008A5A4 480080A2 */  sb         $zero, 0x48($s4)
/* 87AFAD8 8008A5A8 582D0208 */  j          .Llevel_43_8008B560
/* 87AFADC 8008A5AC 470082A2 */   sb        $v0, 0x47($s4)
.Llevel_43_8008A5B0:
/* 87AFAE0 8008A5B0 3600C286 */  lh         $v0, 0x36($s6)
/* 87AFAE4 8008A5B4 00000000 */  nop
/* 87AFAE8 8008A5B8 06005110 */  beq        $v0, $s1, .Llevel_43_8008A5D4
/* 87AFAEC 8008A5BC 21280000 */   addu      $a1, $zero, $zero
/* 87AFAF0 8008A5C0 0780043C */  lui        $a0, %hi(D_8006E394)
/* 87AFAF4 8008A5C4 94E38424 */  addiu      $a0, $a0, %lo(D_8006E394)
/* 87AFAF8 8008A5C8 000084AE */  sw         $a0, 0x0($s4)
/* 87AFAFC 8008A5CC E439010C */  jal        func_8004E790
/* 87AFB00 8008A5D0 1C000624 */   addiu     $a2, $zero, 0x1C
.Llevel_43_8008A5D4:
/* 87AFB04 8008A5D4 0000908E */  lw         $s0, 0x0($s4)
/* 87AFB08 8008A5D8 0957010C */  jal        func_80055C24
/* 87AFB0C 8008A5DC 21208002 */   addu      $a0, $s4, $zero
/* 87AFB10 8008A5E0 78000224 */  addiu      $v0, $zero, 0x78
/* 87AFB14 8008A5E4 490080A2 */  sb         $zero, 0x49($s4)
/* 87AFB18 8008A5E8 000000A6 */  sh         $zero, 0x0($s0)
/* 87AFB1C 8008A5EC 080000A6 */  sh         $zero, 0x8($s0)
/* 87AFB20 8008A5F0 060000A6 */  sh         $zero, 0x6($s0)
/* 87AFB24 8008A5F4 040000A6 */  sh         $zero, 0x4($s0)
/* 87AFB28 8008A5F8 0D0002A2 */  sb         $v0, 0xD($s0)
/* 87AFB2C 8008A5FC 100000AE */  sw         $zero, 0x10($s0)
/* 87AFB30 8008A600 0600C012 */  beqz       $s6, .Llevel_43_8008A61C
/* 87AFB34 8008A604 140000AE */   sw        $zero, 0x14($s0)
/* 87AFB38 8008A608 0C008426 */  addiu      $a0, $s4, 0xC
/* 87AFB3C 8008A60C 5E3C010C */  jal        func_8004F178
/* 87AFB40 8008A610 0C00C526 */   addiu     $a1, $s6, 0xC
/* 87AFB44 8008A614 A6290208 */  j          .Llevel_43_8008A698
/* 87AFB48 8008A618 FF000224 */   addiu     $v0, $zero, 0xFF
.Llevel_43_8008A61C:
/* 87AFB4C 8008A61C 0C008426 */  addiu      $a0, $s4, 0xC
/* 87AFB50 8008A620 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 87AFB54 8008A624 3603A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0xE)
/* 87AFB58 8008A628 0000A390 */  lbu        $v1, 0x0($a1)
/* 87AFB5C 8008A62C F2FFA524 */  addiu      $a1, $a1, -0xE
/* 87AFB60 8008A630 80FF6324 */  addiu      $v1, $v1, -0x80
/* 87AFB64 8008A634 FF006330 */  andi       $v1, $v1, 0xFF
/* 87AFB68 8008A638 40180300 */  sll        $v1, $v1, 1
/* 87AFB6C 8008A63C 0680013C */  lui        $at, %hi(D_80065920)
/* 87AFB70 8008A640 21082300 */  addu       $at, $at, $v1
/* 87AFB74 8008A644 20592784 */  lh         $a3, %lo(D_80065920)($at)
/* 87AFB78 8008A648 1000A627 */  addiu      $a2, $sp, 0x10
/* 87AFB7C 8008A64C 40110700 */  sll        $v0, $a3, 5
/* 87AFB80 8008A650 23104700 */  subu       $v0, $v0, $a3
/* 87AFB84 8008A654 80100200 */  sll        $v0, $v0, 2
/* 87AFB88 8008A658 21104700 */  addu       $v0, $v0, $a3
/* 87AFB8C 8008A65C 43120200 */  sra        $v0, $v0, 9
/* 87AFB90 8008A660 1000A2AF */  sw         $v0, 0x10($sp)
/* 87AFB94 8008A664 0680013C */  lui        $at, %hi(D_800658A0)
/* 87AFB98 8008A668 21082300 */  addu       $at, $at, $v1
/* 87AFB9C 8008A66C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 87AFBA0 8008A670 E8030224 */  addiu      $v0, $zero, 0x3E8
/* 87AFBA4 8008A674 1800A2AF */  sw         $v0, 0x18($sp)
/* 87AFBA8 8008A678 40110300 */  sll        $v0, $v1, 5
/* 87AFBAC 8008A67C 23104300 */  subu       $v0, $v0, $v1
/* 87AFBB0 8008A680 80100200 */  sll        $v0, $v0, 2
/* 87AFBB4 8008A684 21104300 */  addu       $v0, $v0, $v1
/* 87AFBB8 8008A688 43120200 */  sra        $v0, $v0, 9
/* 87AFBBC 8008A68C 653C010C */  jal        func_8004F194
/* 87AFBC0 8008A690 1400A2AF */   sw        $v0, 0x14($sp)
/* 87AFBC4 8008A694 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_43_8008A698:
/* 87AFBC8 8008A698 582D0208 */  j          .Llevel_43_8008B560
/* 87AFBCC 8008A69C 020002A2 */   sb        $v0, 0x2($s0)
.Llevel_43_8008A6A0:
/* 87AFBD0 8008A6A0 0C008426 */  addiu      $a0, $s4, 0xC
/* 87AFBD4 8008A6A4 4600C292 */  lbu        $v0, 0x46($s6)
/* 87AFBD8 8008A6A8 0C00C526 */  addiu      $a1, $s6, 0xC
/* 87AFBDC 8008A6AC 5E3C010C */  jal        func_8004F178
/* 87AFBE0 8008A6B0 460082A2 */   sb        $v0, 0x46($s4)
/* 87AFBE4 8008A6B4 0957010C */  jal        func_80055C24
/* 87AFBE8 8008A6B8 21208002 */   addu      $a0, $s4, $zero
/* 87AFBEC 8008A6BC 4ED7000C */  jal        func_80035D38
/* 87AFBF0 8008A6C0 21208002 */   addu      $a0, $s4, $zero
/* 87AFBF4 8008A6C4 02004010 */  beqz       $v0, .Llevel_43_8008A6D0
/* 87AFBF8 8008A6C8 00000000 */   nop
/* 87AFBFC 8008A6CC 140082AE */  sw         $v0, 0x14($s4)
.Llevel_43_8008A6D0:
/* 87AFC00 8008A6D0 06000224 */  addiu      $v0, $zero, 0x6
/* 87AFC04 8008A6D4 582D0208 */  j          .Llevel_43_8008B560
/* 87AFC08 8008A6D8 480082A2 */   sb        $v0, 0x48($s4)
.Llevel_43_8008A6DC:
/* 87AFC0C 8008A6DC 0000938E */  lw         $s3, 0x0($s4)
/* 87AFC10 8008A6E0 3300C012 */  beqz       $s6, .Llevel_43_8008A7B0
/* 87AFC14 8008A6E4 0C008426 */   addiu     $a0, $s4, 0xC
/* 87AFC18 8008A6E8 3600C386 */  lh         $v1, 0x36($s6)
/* 87AFC1C 8008A6EC 00000000 */  nop
/* 87AFC20 8008A6F0 2F007110 */  beq        $v1, $s1, .Llevel_43_8008A7B0
/* 87AFC24 8008A6F4 63000224 */   addiu     $v0, $zero, 0x63
/* 87AFC28 8008A6F8 18006214 */  bne        $v1, $v0, .Llevel_43_8008A75C
/* 87AFC2C 8008A6FC 2120C002 */   addu      $a0, $s6, $zero
/* 87AFC30 8008A700 0780103C */  lui        $s0, %hi(D_8006E044)
/* 87AFC34 8008A704 44E01026 */  addiu      $s0, $s0, %lo(D_8006E044)
/* 87AFC38 8008A708 0000038E */  lw         $v1, 0x0($s0)
/* 87AFC3C 8008A70C 1F000224 */  addiu      $v0, $zero, 0x1F
/* 87AFC40 8008A710 03006210 */  beq        $v1, $v0, .Llevel_43_8008A720
/* 87AFC44 8008A714 28000224 */   addiu     $v0, $zero, 0x28
/* 87AFC48 8008A718 10006214 */  bne        $v1, $v0, .Llevel_43_8008A75C
/* 87AFC4C 8008A71C 00000000 */   nop
.Llevel_43_8008A720:
/* 87AFC50 8008A720 0C009126 */  addiu      $s1, $s4, 0xC
/* 87AFC54 8008A724 21202002 */  addu       $a0, $s1, $zero
/* 87AFC58 8008A728 5E3C010C */  jal        func_8004F178
/* 87AFC5C 8008A72C DCFF0526 */   addiu     $a1, $s0, -0x24
/* 87AFC60 8008A730 0000038E */  lw         $v1, 0x0($s0)
/* 87AFC64 8008A734 28000224 */  addiu      $v0, $zero, 0x28
/* 87AFC68 8008A738 05006214 */  bne        $v1, $v0, .Llevel_43_8008A750
/* 87AFC6C 8008A73C 00000000 */   nop
/* 87AFC70 8008A740 1400828E */  lw         $v0, 0x14($s4)
/* 87AFC74 8008A744 00000000 */  nop
/* 87AFC78 8008A748 80FF4224 */  addiu      $v0, $v0, -0x80
/* 87AFC7C 8008A74C 140082AE */  sw         $v0, 0x14($s4)
.Llevel_43_8008A750:
/* 87AFC80 8008A750 2000A427 */  addiu      $a0, $sp, 0x20
/* 87AFC84 8008A754 EE290208 */  j          .Llevel_43_8008A7B8
/* 87AFC88 8008A758 21282002 */   addu      $a1, $s1, $zero
.Llevel_43_8008A75C:
/* 87AFC8C 8008A75C 4957010C */  jal        func_80055D24
/* 87AFC90 8008A760 05000524 */   addiu     $a1, $zero, 0x5
/* 87AFC94 8008A764 2120C002 */  addu       $a0, $s6, $zero
/* 87AFC98 8008A768 21280000 */  addu       $a1, $zero, $zero
/* 87AFC9C 8008A76C 2000B027 */  addiu      $s0, $sp, 0x20
/* 87AFCA0 8008A770 C557010C */  jal        func_80055F14
/* 87AFCA4 8008A774 21300002 */   addu      $a2, $s0, $zero
/* 87AFCA8 8008A778 2000C426 */  addiu      $a0, $s6, 0x20
/* 87AFCAC 8008A77C 1000A527 */  addiu      $a1, $sp, 0x10
/* 87AFCB0 8008A780 2130A000 */  addu       $a2, $a1, $zero
/* 87AFCB4 8008A784 58020224 */  addiu      $v0, $zero, 0x258
/* 87AFCB8 8008A788 1000A2AF */  sw         $v0, 0x10($sp)
/* 87AFCBC 8008A78C 1400A0AF */  sw         $zero, 0x14($sp)
/* 87AFCC0 8008A790 5B3B010C */  jal        func_8004ED6C
/* 87AFCC4 8008A794 1800A0AF */   sw        $zero, 0x18($sp)
/* 87AFCC8 8008A798 0C008426 */  addiu      $a0, $s4, 0xC
/* 87AFCCC 8008A79C 21280002 */  addu       $a1, $s0, $zero
/* 87AFCD0 8008A7A0 653C010C */  jal        func_8004F194
/* 87AFCD4 8008A7A4 1000A627 */   addiu     $a2, $sp, 0x10
/* 87AFCD8 8008A7A8 F0290208 */  j          .Llevel_43_8008A7C0
/* 87AFCDC 8008A7AC 00000000 */   nop
.Llevel_43_8008A7B0:
/* 87AFCE0 8008A7B0 0780053C */  lui        $a1, %hi(D_80070328)
/* 87AFCE4 8008A7B4 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
.Llevel_43_8008A7B8:
/* 87AFCE8 8008A7B8 5E3C010C */  jal        func_8004F178
/* 87AFCEC 8008A7BC 00000000 */   nop
.Llevel_43_8008A7C0:
/* 87AFCF0 8008A7C0 0957010C */  jal        func_80055C24
/* 87AFCF4 8008A7C4 21208002 */   addu      $a0, $s4, $zero
/* 87AFCF8 8008A7C8 28000224 */  addiu      $v0, $zero, 0x28
/* 87AFCFC 8008A7CC 4C0082A2 */  sb         $v0, 0x4C($s4)
/* 87AFD00 8008A7D0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 87AFD04 8008A7D4 6203C012 */  beqz       $s6, .Llevel_43_8008B560
/* 87AFD08 8008A7D8 4A0082A2 */   sb        $v0, 0x4A($s4)
/* 87AFD0C 8008A7DC 3600C386 */  lh         $v1, 0x36($s6)
/* 87AFD10 8008A7E0 C5000224 */  addiu      $v0, $zero, 0xC5
/* 87AFD14 8008A7E4 17006214 */  bne        $v1, $v0, .Llevel_43_8008A844
/* 87AFD18 8008A7E8 00000000 */   nop
/* 87AFD1C 8008A7EC 3A00C392 */  lbu        $v1, 0x3A($s6)
/* 87AFD20 8008A7F0 00000000 */  nop
/* 87AFD24 8008A7F4 FF00622C */  sltiu      $v0, $v1, 0xFF
/* 87AFD28 8008A7F8 12004010 */  beqz       $v0, .Llevel_43_8008A844
/* 87AFD2C 8008A7FC 40200300 */   sll       $a0, $v1, 1
/* 87AFD30 8008A800 21208300 */  addu       $a0, $a0, $v1
/* 87AFD34 8008A804 80200400 */  sll        $a0, $a0, 2
/* 87AFD38 8008A808 23208300 */  subu       $a0, $a0, $v1
/* 87AFD3C 8008A80C C0200400 */  sll        $a0, $a0, 3
/* 87AFD40 8008A810 40190400 */  sll        $v1, $a0, 5
/* 87AFD44 8008A814 23186400 */  subu       $v1, $v1, $a0
/* 87AFD48 8008A818 40190300 */  sll        $v1, $v1, 5
/* 87AFD4C 8008A81C 21186400 */  addu       $v1, $v1, $a0
/* 87AFD50 8008A820 C0100300 */  sll        $v0, $v1, 3
/* 87AFD54 8008A824 21186200 */  addu       $v1, $v1, $v0
/* 87AFD58 8008A828 C0130300 */  sll        $v0, $v1, 15
/* 87AFD5C 8008A82C 23104300 */  subu       $v0, $v0, $v1
/* 87AFD60 8008A830 80100200 */  sll        $v0, $v0, 2
/* 87AFD64 8008A834 21104400 */  addu       $v0, $v0, $a0
/* 87AFD68 8008A838 23100200 */  negu       $v0, $v0
/* 87AFD6C 8008A83C C3100200 */  sra        $v0, $v0, 3
/* 87AFD70 8008A840 3A0082A2 */  sb         $v0, 0x3A($s4)
.Llevel_43_8008A844:
/* 87AFD74 8008A844 4603C012 */  beqz       $s6, .Llevel_43_8008B560
/* 87AFD78 8008A848 C5000224 */   addiu     $v0, $zero, 0xC5
/* 87AFD7C 8008A84C 3600C386 */  lh         $v1, 0x36($s6)
/* 87AFD80 8008A850 00000000 */  nop
/* 87AFD84 8008A854 42036210 */  beq        $v1, $v0, .Llevel_43_8008B560
/* 87AFD88 8008A858 21280000 */   addu      $a1, $zero, $zero
/* 87AFD8C 8008A85C 21208002 */  addu       $a0, $s4, $zero
/* 87AFD90 8008A860 AFEE000C */  jal        func_8003BABC
/* 87AFD94 8008A864 21300000 */   addu      $a2, $zero, $zero
/* 87AFD98 8008A868 3C000224 */  addiu      $v0, $zero, 0x3C
/* 87AFD9C 8008A86C 4F0082A2 */  sb         $v0, 0x4F($s4)
/* 87AFDA0 8008A870 2C010224 */  addiu      $v0, $zero, 0x12C
/* 87AFDA4 8008A874 100062A6 */  sh         $v0, 0x10($s3)
/* 87AFDA8 8008A878 58020224 */  addiu      $v0, $zero, 0x258
/* 87AFDAC 8008A87C 0C0062A6 */  sh         $v0, 0xC($s3)
/* 87AFDB0 8008A880 58020224 */  addiu      $v0, $zero, 0x258
/* 87AFDB4 8008A884 000062AE */  sw         $v0, 0x0($s3)
/* 87AFDB8 8008A888 FF000224 */  addiu      $v0, $zero, 0xFF
/* 87AFDBC 8008A88C 040060AE */  sw         $zero, 0x4($s3)
/* 87AFDC0 8008A890 080060AE */  sw         $zero, 0x8($s3)
/* 87AFDC4 8008A894 540082A2 */  sb         $v0, 0x54($s4)
/* 87AFDC8 8008A898 550082A2 */  sb         $v0, 0x55($s4)
/* 87AFDCC 8008A89C 560082A2 */  sb         $v0, 0x56($s4)
/* 87AFDD0 8008A8A0 3F000224 */  addiu      $v0, $zero, 0x3F
/* 87AFDD4 8008A8A4 570082A2 */  sb         $v0, 0x57($s4)
/* 87AFDD8 8008A8A8 3600C386 */  lh         $v1, 0x36($s6)
/* 87AFDDC 8008A8AC 63000224 */  addiu      $v0, $zero, 0x63
/* 87AFDE0 8008A8B0 86006214 */  bne        $v1, $v0, .Llevel_43_8008AACC
/* 87AFDE4 8008A8B4 01000224 */   addiu     $v0, $zero, 0x1
/* 87AFDE8 8008A8B8 0780033C */  lui        $v1, %hi(D_8006C5BC)
/* 87AFDEC 8008A8BC BCC5638C */  lw         $v1, %lo(D_8006C5BC)($v1)
/* 87AFDF0 8008A8C0 2C000224 */  addiu      $v0, $zero, 0x2C
/* 87AFDF4 8008A8C4 54006214 */  bne        $v1, $v0, .Llevel_43_8008AA18
/* 87AFDF8 8008A8C8 00000000 */   nop
/* 87AFDFC 8008A8CC 0780023C */  lui        $v0, %hi(D_80071A04)
/* 87AFE00 8008A8D0 041A4290 */  lbu        $v0, %lo(D_80071A04)($v0)
/* 87AFE04 8008A8D4 00000000 */  nop
/* 87AFE08 8008A8D8 4F004010 */  beqz       $v0, .Llevel_43_8008AA18
/* 87AFE0C 8008A8DC 00000000 */   nop
/* 87AFE10 8008A8E0 0780053C */  lui        $a1, %hi(D_8006C550)
/* 87AFE14 8008A8E4 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 87AFE18 8008A8E8 0780033C */  lui        $v1, %hi(D_8006C704)
/* 87AFE1C 8008A8EC 04C7638C */  lw         $v1, %lo(D_8006C704)($v1)
/* 87AFE20 8008A8F0 00000000 */  nop
/* 87AFE24 8008A8F4 2B10A300 */  sltu       $v0, $a1, $v1
/* 87AFE28 8008A8F8 09004010 */  beqz       $v0, .Llevel_43_8008A920
/* 87AFE2C 8008A8FC C2030424 */   addiu     $a0, $zero, 0x3C2
.Llevel_43_8008A900:
/* 87AFE30 8008A900 3600A284 */  lh         $v0, 0x36($a1)
/* 87AFE34 8008A904 00000000 */  nop
/* 87AFE38 8008A908 06004410 */  beq        $v0, $a0, .Llevel_43_8008A924
/* 87AFE3C 8008A90C 3000B027 */   addiu     $s0, $sp, 0x30
/* 87AFE40 8008A910 5800A524 */  addiu      $a1, $a1, 0x58
/* 87AFE44 8008A914 2B10A300 */  sltu       $v0, $a1, $v1
/* 87AFE48 8008A918 F9FF4014 */  bnez       $v0, .Llevel_43_8008A900
/* 87AFE4C 8008A91C 00000000 */   nop
.Llevel_43_8008A920:
/* 87AFE50 8008A920 3000B027 */  addiu      $s0, $sp, 0x30
.Llevel_43_8008A924:
/* 87AFE54 8008A924 0000A58C */  lw         $a1, 0x0($a1)
/* 87AFE58 8008A928 21200002 */  addu       $a0, $s0, $zero
/* 87AFE5C 8008A92C 5E3C010C */  jal        func_8004F178
/* 87AFE60 8008A930 1C00A524 */   addiu     $a1, $a1, 0x1C
/* 87AFE64 8008A934 21880000 */  addu       $s1, $zero, $zero
/* 87AFE68 8008A938 1400828E */  lw         $v0, 0x14($s4)
/* 87AFE6C 8008A93C 0C009226 */  addiu      $s2, $s4, 0xC
/* 87AFE70 8008A940 00FF4224 */  addiu      $v0, $v0, -0x100
/* 87AFE74 8008A944 140082AE */  sw         $v0, 0x14($s4)
/* 87AFE78 8008A948 00100224 */  addiu      $v0, $zero, 0x1000
/* 87AFE7C 8008A94C 0C0062A6 */  sh         $v0, 0xC($s3)
/* 87AFE80 8008A950 480080A2 */  sb         $zero, 0x48($s4)
/* 87AFE84 8008A954 0780023C */  lui        $v0, %hi(D_8006E03C)
/* 87AFE88 8008A958 3CE04294 */  lhu        $v0, %lo(D_8006E03C)($v0)
/* 87AFE8C 8008A95C 21204002 */  addu       $a0, $s2, $zero
/* 87AFE90 8008A960 02110200 */  srl        $v0, $v0, 4
/* 87AFE94 8008A964 440082A2 */  sb         $v0, 0x44($s4)
/* 87AFE98 8008A968 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 87AFE9C 8008A96C 3EE04284 */  lh         $v0, %lo(D_8006E03E)($v0)
/* 87AFEA0 8008A970 21280002 */  addu       $a1, $s0, $zero
/* 87AFEA4 8008A974 23100200 */  negu       $v0, $v0
/* 87AFEA8 8008A978 03110200 */  sra        $v0, $v0, 4
/* 87AFEAC 8008A97C 450082A2 */  sb         $v0, 0x45($s4)
/* 87AFEB0 8008A980 0780023C */  lui        $v0, %hi(D_8006E040)
/* 87AFEB4 8008A984 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 87AFEB8 8008A988 21300000 */  addu       $a2, $zero, $zero
/* 87AFEBC 8008A98C 02110200 */  srl        $v0, $v0, 4
/* 87AFEC0 8008A990 8E4F000C */  jal        func_80013E38
/* 87AFEC4 8008A994 460082A2 */   sb        $v0, 0x46($s4)
/* 87AFEC8 8008A998 03004010 */  beqz       $v0, .Llevel_43_8008A9A8
/* 87AFECC 8008A99C 21200002 */   addu      $a0, $s0, $zero
/* 87AFED0 8008A9A0 6C2A0208 */  j          .Llevel_43_8008A9B0
/* 87AFED4 8008A9A4 21280002 */   addu      $a1, $s0, $zero
.Llevel_43_8008A9A8:
/* 87AFED8 8008A9A8 0780053C */  lui        $a1, %hi(D_80071900)
/* 87AFEDC 8008A9AC 0019A524 */  addiu      $a1, $a1, %lo(D_80071900)
.Llevel_43_8008A9B0:
/* 87AFEE0 8008A9B0 723C010C */  jal        func_8004F1C8
/* 87AFEE4 8008A9B4 21304002 */   addu      $a2, $s2, $zero
/* 87AFEE8 8008A9B8 21200002 */  addu       $a0, $s0, $zero
/* 87AFEEC 8008A9BC 7A3B010C */  jal        func_8004EDE8
/* 87AFEF0 8008A9C0 01000524 */   addiu     $a1, $zero, 0x1
/* 87AFEF4 8008A9C4 21200002 */  addu       $a0, $s0, $zero
/* 87AFEF8 8008A9C8 0C006686 */  lh         $a2, 0xC($s3)
/* 87AFEFC 8008A9CC 233C010C */  jal        func_8004F08C
/* 87AFF00 8008A9D0 21284000 */   addu      $a1, $v0, $zero
/* 87AFF04 8008A9D4 21206002 */  addu       $a0, $s3, $zero
/* 87AFF08 8008A9D8 5E3C010C */  jal        func_8004F178
/* 87AFF0C 8008A9DC 21280002 */   addu      $a1, $s0, $zero
/* 87AFF10 8008A9E0 21206002 */  addu       $a0, $s3, $zero
/* 87AFF14 8008A9E4 7A3B010C */  jal        func_8004EDE8
/* 87AFF18 8008A9E8 01000524 */   addiu     $a1, $zero, 0x1
/* 87AFF1C 8008A9EC 21204000 */  addu       $a0, $v0, $zero
/* 87AFF20 8008A9F0 0800658E */  lw         $a1, 0x8($s3)
/* 87AFF24 8008A9F4 203A010C */  jal        func_8004E880
/* 87AFF28 8008A9F8 21300000 */   addu      $a2, $zero, $zero
/* 87AFF2C 8008A9FC 450082A2 */  sb         $v0, 0x45($s4)
/* 87AFF30 8008AA00 0000648E */  lw         $a0, 0x0($s3)
/* 87AFF34 8008AA04 0400658E */  lw         $a1, 0x4($s3)
/* 87AFF38 8008AA08 203A010C */  jal        func_8004E880
/* 87AFF3C 8008AA0C 21300000 */   addu      $a2, $zero, $zero
/* 87AFF40 8008AA10 CF2A0208 */  j          .Llevel_43_8008AB3C
/* 87AFF44 8008AA14 460082A2 */   sb        $v0, 0x46($s4)
.Llevel_43_8008AA18:
/* 87AFF48 8008AA18 3600C386 */  lh         $v1, 0x36($s6)
/* 87AFF4C 8008AA1C 63000224 */  addiu      $v0, $zero, 0x63
/* 87AFF50 8008AA20 2A006214 */  bne        $v1, $v0, .Llevel_43_8008AACC
/* 87AFF54 8008AA24 01000224 */   addiu     $v0, $zero, 0x1
/* 87AFF58 8008AA28 0780053C */  lui        $a1, %hi(D_8006E044)
/* 87AFF5C 8008AA2C 44E0A524 */  addiu      $a1, $a1, %lo(D_8006E044)
/* 87AFF60 8008AA30 0000A38C */  lw         $v1, 0x0($a1)
/* 87AFF64 8008AA34 28000224 */  addiu      $v0, $zero, 0x28
/* 87AFF68 8008AA38 04006214 */  bne        $v1, $v0, .Llevel_43_8008AA4C
/* 87AFF6C 8008AA3C 1F000224 */   addiu     $v0, $zero, 0x1F
/* 87AFF70 8008AA40 58020224 */  addiu      $v0, $zero, 0x258
/* 87AFF74 8008AA44 982A0208 */  j          .Llevel_43_8008AA60
/* 87AFF78 8008AA48 4000B027 */   addiu     $s0, $sp, 0x40
.Llevel_43_8008AA4C:
/* 87AFF7C 8008AA4C 1D006214 */  bne        $v1, $v0, .Llevel_43_8008AAC4
/* 87AFF80 8008AA50 00100224 */   addiu     $v0, $zero, 0x1000
/* 87AFF84 8008AA54 0C0062A6 */  sh         $v0, 0xC($s3)
/* 87AFF88 8008AA58 00100224 */  addiu      $v0, $zero, 0x1000
/* 87AFF8C 8008AA5C 5800B027 */  addiu      $s0, $sp, 0x58
.Llevel_43_8008AA60:
/* 87AFF90 8008AA60 000062AE */  sw         $v0, 0x0($s3)
/* 87AFF94 8008AA64 480080A2 */  sb         $zero, 0x48($s4)
/* 87AFF98 8008AA68 0780023C */  lui        $v0, %hi(D_8006E03C)
/* 87AFF9C 8008AA6C 3CE04294 */  lhu        $v0, %lo(D_8006E03C)($v0)
/* 87AFFA0 8008AA70 21200002 */  addu       $a0, $s0, $zero
/* 87AFFA4 8008AA74 02110200 */  srl        $v0, $v0, 4
/* 87AFFA8 8008AA78 440082A2 */  sb         $v0, 0x44($s4)
/* 87AFFAC 8008AA7C 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 87AFFB0 8008AA80 3EE04284 */  lh         $v0, %lo(D_8006E03E)($v0)
/* 87AFFB4 8008AA84 C8FFA524 */  addiu      $a1, $a1, -0x38
/* 87AFFB8 8008AA88 23100200 */  negu       $v0, $v0
/* 87AFFBC 8008AA8C 03110200 */  sra        $v0, $v0, 4
/* 87AFFC0 8008AA90 450082A2 */  sb         $v0, 0x45($s4)
/* 87AFFC4 8008AA94 0780023C */  lui        $v0, %hi(D_8006E040)
/* 87AFFC8 8008AA98 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 87AFFCC 8008AA9C 21880000 */  addu       $s1, $zero, $zero
/* 87AFFD0 8008AAA0 02110200 */  srl        $v0, $v0, 4
/* 87AFFD4 8008AAA4 3D3B010C */  jal        func_8004ECF4
/* 87AFFD8 8008AAA8 460082A2 */   sb        $v0, 0x46($s4)
/* 87AFFDC 8008AAAC 21200002 */  addu       $a0, $s0, $zero
/* 87AFFE0 8008AAB0 21286002 */  addu       $a1, $s3, $zero
/* 87AFFE4 8008AAB4 5B3B010C */  jal        func_8004ED6C
/* 87AFFE8 8008AAB8 21306002 */   addu      $a2, $s3, $zero
/* 87AFFEC 8008AABC CF2A0208 */  j          .Llevel_43_8008AB3C
/* 87AFFF0 8008AAC0 00000000 */   nop
.Llevel_43_8008AAC4:
/* 87AFFF4 8008AAC4 B52A0208 */  j          .Llevel_43_8008AAD4
/* 87AFFF8 8008AAC8 480080A2 */   sb        $zero, 0x48($s4)
.Llevel_43_8008AACC:
/* 87AFFFC 8008AACC 480080A2 */  sb         $zero, 0x48($s4)
/* 87B0000 8008AAD0 0E0062A2 */  sb         $v0, 0xE($s3)
.Llevel_43_8008AAD4:
/* 87B0004 8008AAD4 2000C426 */  addiu      $a0, $s6, 0x20
/* 87B0008 8008AAD8 21286002 */  addu       $a1, $s3, $zero
/* 87B000C 8008AADC 4600C292 */  lbu        $v0, 0x46($s6)
/* 87B0010 8008AAE0 21306002 */  addu       $a2, $s3, $zero
/* 87B0014 8008AAE4 5B3B010C */  jal        func_8004ED6C
/* 87B0018 8008AAE8 460082A2 */   sb        $v0, 0x46($s4)
/* 87B001C 8008AAEC 21206002 */  addu       $a0, $s3, $zero
/* 87B0020 8008AAF0 7A3B010C */  jal        func_8004EDE8
/* 87B0024 8008AAF4 01000524 */   addiu     $a1, $zero, 0x1
/* 87B0028 8008AAF8 21204000 */  addu       $a0, $v0, $zero
/* 87B002C 8008AAFC 0800658E */  lw         $a1, 0x8($s3)
/* 87B0030 8008AB00 203A010C */  jal        func_8004E880
/* 87B0034 8008AB04 21300000 */   addu      $a2, $zero, $zero
/* 87B0038 8008AB08 450082A2 */  sb         $v0, 0x45($s4)
/* 87B003C 8008AB0C 0000648E */  lw         $a0, 0x0($s3)
/* 87B0040 8008AB10 0400658E */  lw         $a1, 0x4($s3)
/* 87B0044 8008AB14 203A010C */  jal        func_8004E880
/* 87B0048 8008AB18 21300000 */   addu      $a2, $zero, $zero
/* 87B004C 8008AB1C C5000424 */  addiu      $a0, $zero, 0xC5
/* 87B0050 8008AB20 460082A2 */  sb         $v0, 0x46($s4)
/* 87B0054 8008AB24 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 87B0058 8008AB28 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 87B005C 8008AB2C 00000000 */  nop
/* 87B0060 8008AB30 09F84000 */  jalr       $v0
/* 87B0064 8008AB34 21288002 */   addu      $a1, $s4, $zero
/* 87B0068 8008AB38 21884000 */  addu       $s1, $v0, $zero
.Llevel_43_8008AB3C:
/* 87B006C 8008AB3C 4D002012 */  beqz       $s1, .Llevel_43_8008AC74
/* 87B0070 8008AB40 21200000 */   addu      $a0, $zero, $zero
/* 87B0074 8008AB44 FF000524 */  addiu      $a1, $zero, 0xFF
/* 87B0078 8008AB48 0000308E */  lw         $s0, 0x0($s1)
/* 87B007C 8008AB4C 03000224 */  addiu      $v0, $zero, 0x3
/* 87B0080 8008AB50 DBD8000C */  jal        func_8003636C
/* 87B0084 8008AB54 100002A6 */   sh        $v0, 0x10($s0)
/* 87B0088 8008AB58 21F04000 */  addu       $fp, $v0, $zero
/* 87B008C 8008AB5C 44003EA2 */  sb         $fp, 0x44($s1)
/* 87B0090 8008AB60 0780023C */  lui        $v0, %hi(D_8006E040)
/* 87B0094 8008AB64 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 87B0098 8008AB68 00000000 */  nop
/* 87B009C 8008AB6C 00140200 */  sll        $v0, $v0, 16
/* 87B00A0 8008AB70 03150200 */  sra        $v0, $v0, 20
/* 87B00A4 8008AB74 80004224 */  addiu      $v0, $v0, 0x80
/* 87B00A8 8008AB78 FF005730 */  andi       $s7, $v0, 0xFF
/* 87B00AC 8008AB7C 460037A2 */  sb         $s7, 0x46($s1)
/* 87B00B0 8008AB80 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 87B00B4 8008AB84 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 87B00B8 8008AB88 01000324 */  addiu      $v1, $zero, 0x1
/* 87B00BC 8008AB8C 480023A2 */  sb         $v1, 0x48($s1)
/* 87B00C0 8008AB90 02110200 */  srl        $v0, $v0, 4
/* 87B00C4 8008AB94 FF005530 */  andi       $s5, $v0, 0xFF
/* 87B00C8 8008AB98 450035A2 */  sb         $s5, 0x45($s1)
/* 87B00CC 8008AB9C 3600C386 */  lh         $v1, 0x36($s6)
/* 87B00D0 8008ABA0 63000224 */  addiu      $v0, $zero, 0x63
/* 87B00D4 8008ABA4 05006214 */  bne        $v1, $v0, .Llevel_43_8008ABBC
/* 87B00D8 8008ABA8 FF000224 */   addiu     $v0, $zero, 0xFF
/* 87B00DC 8008ABAC 540022A2 */  sb         $v0, 0x54($s1)
/* 87B00E0 8008ABB0 0D000224 */  addiu      $v0, $zero, 0xD
/* 87B00E4 8008ABB4 F22A0208 */  j          .Llevel_43_8008ABC8
/* 87B00E8 8008ABB8 550020A2 */   sb        $zero, 0x55($s1)
.Llevel_43_8008ABBC:
/* 87B00EC 8008ABBC 550022A2 */  sb         $v0, 0x55($s1)
/* 87B00F0 8008ABC0 0C000224 */  addiu      $v0, $zero, 0xC
/* 87B00F4 8008ABC4 540020A2 */  sb         $zero, 0x54($s1)
.Llevel_43_8008ABC8:
/* 87B00F8 8008ABC8 560020A2 */  sb         $zero, 0x56($s1)
/* 87B00FC 8008ABCC 570022A2 */  sb         $v0, 0x57($s1)
/* 87B0100 8008ABD0 0C002426 */  addiu      $a0, $s1, 0xC
/* 87B0104 8008ABD4 2000B227 */  addiu      $s2, $sp, 0x20
/* 87B0108 8008ABD8 5E3C010C */  jal        func_8004F178
/* 87B010C 8008ABDC 21284002 */   addu      $a1, $s2, $zero
/* 87B0110 8008ABE0 21200002 */  addu       $a0, $s0, $zero
/* 87B0114 8008ABE4 5E3C010C */  jal        func_8004F178
/* 87B0118 8008ABE8 21284002 */   addu      $a1, $s2, $zero
/* 87B011C 8008ABEC 21202002 */  addu       $a0, $s1, $zero
/* 87B0120 8008ABF0 E0D3000C */  jal        func_80034F80
/* 87B0124 8008ABF4 01000524 */   addiu     $a1, $zero, 0x1
/* 87B0128 8008ABF8 C5000424 */  addiu      $a0, $zero, 0xC5
/* 87B012C 8008ABFC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 87B0130 8008AC00 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 87B0134 8008AC04 00000000 */  nop
/* 87B0138 8008AC08 09F84000 */  jalr       $v0
/* 87B013C 8008AC0C 21288002 */   addu      $a1, $s4, $zero
/* 87B0140 8008AC10 21884000 */  addu       $s1, $v0, $zero
/* 87B0144 8008AC14 17002012 */  beqz       $s1, .Llevel_43_8008AC74
/* 87B0148 8008AC18 0C002426 */   addiu     $a0, $s1, 0xC
/* 87B014C 8008AC1C 21284002 */  addu       $a1, $s2, $zero
/* 87B0150 8008AC20 0000308E */  lw         $s0, 0x0($s1)
/* 87B0154 8008AC24 03000224 */  addiu      $v0, $zero, 0x3
/* 87B0158 8008AC28 100002A6 */  sh         $v0, 0x10($s0)
/* 87B015C 8008AC2C FF000224 */  addiu      $v0, $zero, 0xFF
/* 87B0160 8008AC30 540022A2 */  sb         $v0, 0x54($s1)
/* 87B0164 8008AC34 550022A2 */  sb         $v0, 0x55($s1)
/* 87B0168 8008AC38 560022A2 */  sb         $v0, 0x56($s1)
/* 87B016C 8008AC3C 0F000224 */  addiu      $v0, $zero, 0xF
/* 87B0170 8008AC40 570022A2 */  sb         $v0, 0x57($s1)
/* 87B0174 8008AC44 03000224 */  addiu      $v0, $zero, 0x3
/* 87B0178 8008AC48 44003EA2 */  sb         $fp, 0x44($s1)
/* 87B017C 8008AC4C 450035A2 */  sb         $s5, 0x45($s1)
/* 87B0180 8008AC50 460037A2 */  sb         $s7, 0x46($s1)
/* 87B0184 8008AC54 5E3C010C */  jal        func_8004F178
/* 87B0188 8008AC58 480022A2 */   sb        $v0, 0x48($s1)
/* 87B018C 8008AC5C 21200002 */  addu       $a0, $s0, $zero
/* 87B0190 8008AC60 5E3C010C */  jal        func_8004F178
/* 87B0194 8008AC64 21284002 */   addu      $a1, $s2, $zero
/* 87B0198 8008AC68 21202002 */  addu       $a0, $s1, $zero
/* 87B019C 8008AC6C E0D3000C */  jal        func_80034F80
/* 87B01A0 8008AC70 03000524 */   addiu     $a1, $zero, 0x3
.Llevel_43_8008AC74:
/* 87B01A4 8008AC74 3600C386 */  lh         $v1, 0x36($s6)
/* 87B01A8 8008AC78 63000224 */  addiu      $v0, $zero, 0x63
/* 87B01AC 8008AC7C 22006214 */  bne        $v1, $v0, .Llevel_43_8008AD08
/* 87B01B0 8008AC80 C5000424 */   addiu     $a0, $zero, 0xC5
/* 87B01B4 8008AC84 0780033C */  lui        $v1, %hi(D_8006E044)
/* 87B01B8 8008AC88 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 87B01BC 8008AC8C 1F000224 */  addiu      $v0, $zero, 0x1F
/* 87B01C0 8008AC90 1D006214 */  bne        $v1, $v0, .Llevel_43_8008AD08
/* 87B01C4 8008AC94 00000000 */   nop
/* 87B01C8 8008AC98 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 87B01CC 8008AC9C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 87B01D0 8008ACA0 00000000 */  nop
/* 87B01D4 8008ACA4 09F84000 */  jalr       $v0
/* 87B01D8 8008ACA8 21280000 */   addu      $a1, $zero, $zero
/* 87B01DC 8008ACAC 21884000 */  addu       $s1, $v0, $zero
/* 87B01E0 8008ACB0 2B022012 */  beqz       $s1, .Llevel_43_8008B560
/* 87B01E4 8008ACB4 140071AE */   sw        $s1, 0x14($s3)
/* 87B01E8 8008ACB8 0C002426 */  addiu      $a0, $s1, 0xC
/* 87B01EC 8008ACBC 45008292 */  lbu        $v0, 0x45($s4)
/* 87B01F0 8008ACC0 0C008526 */  addiu      $a1, $s4, 0xC
/* 87B01F4 8008ACC4 450022A2 */  sb         $v0, 0x45($s1)
/* 87B01F8 8008ACC8 46008392 */  lbu        $v1, 0x46($s4)
/* 87B01FC 8008ACCC 02000224 */  addiu      $v0, $zero, 0x2
/* 87B0200 8008ACD0 480022A2 */  sb         $v0, 0x48($s1)
/* 87B0204 8008ACD4 5E3C010C */  jal        func_8004F178
/* 87B0208 8008ACD8 460023A2 */   sb        $v1, 0x46($s1)
/* 87B020C 8008ACDC 21202002 */  addu       $a0, $s1, $zero
/* 87B0210 8008ACE0 03000524 */  addiu      $a1, $zero, 0x3
/* 87B0214 8008ACE4 FF000224 */  addiu      $v0, $zero, 0xFF
/* 87B0218 8008ACE8 540082A0 */  sb         $v0, 0x54($a0)
/* 87B021C 8008ACEC 0D000224 */  addiu      $v0, $zero, 0xD
/* 87B0220 8008ACF0 550080A0 */  sb         $zero, 0x55($a0)
/* 87B0224 8008ACF4 560080A0 */  sb         $zero, 0x56($a0)
/* 87B0228 8008ACF8 E0D3000C */  jal        func_80034F80
/* 87B022C 8008ACFC 570082A0 */   sb        $v0, 0x57($a0)
/* 87B0230 8008AD00 592D0208 */  j          .Llevel_43_8008B564
/* 87B0234 8008AD04 21108002 */   addu      $v0, $s4, $zero
.Llevel_43_8008AD08:
/* 87B0238 8008AD08 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 87B023C 8008AD0C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 87B0240 8008AD10 00000000 */  nop
/* 87B0244 8008AD14 09F84000 */  jalr       $v0
/* 87B0248 8008AD18 21280000 */   addu      $a1, $zero, $zero
/* 87B024C 8008AD1C 21884000 */  addu       $s1, $v0, $zero
/* 87B0250 8008AD20 0F022012 */  beqz       $s1, .Llevel_43_8008B560
/* 87B0254 8008AD24 140071AE */   sw        $s1, 0x14($s3)
/* 87B0258 8008AD28 0C002426 */  addiu      $a0, $s1, 0xC
/* 87B025C 8008AD2C 45008292 */  lbu        $v0, 0x45($s4)
/* 87B0260 8008AD30 0C008526 */  addiu      $a1, $s4, 0xC
/* 87B0264 8008AD34 450022A2 */  sb         $v0, 0x45($s1)
/* 87B0268 8008AD38 46008392 */  lbu        $v1, 0x46($s4)
/* 87B026C 8008AD3C 02000224 */  addiu      $v0, $zero, 0x2
/* 87B0270 8008AD40 480022A2 */  sb         $v0, 0x48($s1)
/* 87B0274 8008AD44 5E3C010C */  jal        func_8004F178
/* 87B0278 8008AD48 460023A2 */   sb        $v1, 0x46($s1)
/* 87B027C 8008AD4C 21202002 */  addu       $a0, $s1, $zero
/* 87B0280 8008AD50 E0D3000C */  jal        func_80034F80
/* 87B0284 8008AD54 04000524 */   addiu     $a1, $zero, 0x4
/* 87B0288 8008AD58 3600C386 */  lh         $v1, 0x36($s6)
/* 87B028C 8008AD5C 63000224 */  addiu      $v0, $zero, 0x63
/* 87B0290 8008AD60 05006214 */  bne        $v1, $v0, .Llevel_43_8008AD78
/* 87B0294 8008AD64 FF000224 */   addiu     $v0, $zero, 0xFF
/* 87B0298 8008AD68 540022A2 */  sb         $v0, 0x54($s1)
/* 87B029C 8008AD6C 38000224 */  addiu      $v0, $zero, 0x38
/* 87B02A0 8008AD70 612B0208 */  j          .Llevel_43_8008AD84
/* 87B02A4 8008AD74 550020A2 */   sb        $zero, 0x55($s1)
.Llevel_43_8008AD78:
/* 87B02A8 8008AD78 550022A2 */  sb         $v0, 0x55($s1)
/* 87B02AC 8008AD7C 38000224 */  addiu      $v0, $zero, 0x38
/* 87B02B0 8008AD80 540020A2 */  sb         $zero, 0x54($s1)
.Llevel_43_8008AD84:
/* 87B02B4 8008AD84 560020A2 */  sb         $zero, 0x56($s1)
/* 87B02B8 8008AD88 582D0208 */  j          .Llevel_43_8008B560
/* 87B02BC 8008AD8C 570022A2 */   sb        $v0, 0x57($s1)
.Llevel_43_8008AD90:
/* 87B02C0 8008AD90 0957010C */  jal        func_80055C24
/* 87B02C4 8008AD94 21208002 */   addu      $a0, $s4, $zero
/* 87B02C8 8008AD98 02000224 */  addiu      $v0, $zero, 0x2
/* 87B02CC 8008AD9C 0E00C012 */  beqz       $s6, .Llevel_43_8008ADD8
/* 87B02D0 8008ADA0 540082A2 */   sb        $v0, 0x54($s4)
/* 87B02D4 8008ADA4 0C008426 */  addiu      $a0, $s4, 0xC
/* 87B02D8 8008ADA8 0000828E */  lw         $v0, 0x0($s4)
/* 87B02DC 8008ADAC 0C00C526 */  addiu      $a1, $s6, 0xC
/* 87B02E0 8008ADB0 5E3C010C */  jal        func_8004F178
/* 87B02E4 8008ADB4 000056AC */   sw        $s6, 0x0($v0)
/* 87B02E8 8008ADB8 0A000224 */  addiu      $v0, $zero, 0xA
/* 87B02EC 8008ADBC 4A0082A2 */  sb         $v0, 0x4A($s4)
/* 87B02F0 8008ADC0 1400828E */  lw         $v0, 0x14($s4)
/* 87B02F4 8008ADC4 08000324 */  addiu      $v1, $zero, 0x8
/* 87B02F8 8008ADC8 4C0083A2 */  sb         $v1, 0x4C($s4)
/* 87B02FC 8008ADCC 00044224 */  addiu      $v0, $v0, 0x400
/* 87B0300 8008ADD0 582D0208 */  j          .Llevel_43_8008B560
/* 87B0304 8008ADD4 140082AE */   sw        $v0, 0x14($s4)
.Llevel_43_8008ADD8:
/* 87B0308 8008ADD8 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 87B030C 8008ADDC 582D0208 */  j          .Llevel_43_8008B560
/* 87B0310 8008ADE0 1C0082AE */   sw        $v0, 0x1C($s4)
.Llevel_43_8008ADE4:
/* 87B0314 8008ADE4 0780053C */  lui        $a1, %hi(D_80070328)
/* 87B0318 8008ADE8 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 87B031C 8008ADEC 0000908E */  lw         $s0, 0x0($s4)
/* 87B0320 8008ADF0 5E3C010C */  jal        func_8004F178
/* 87B0324 8008ADF4 0C008426 */   addiu     $a0, $s4, 0xC
/* 87B0328 8008ADF8 1400828E */  lw         $v0, 0x14($s4)
/* 87B032C 8008ADFC 00000000 */  nop
/* 87B0330 8008AE00 00044224 */  addiu      $v0, $v0, 0x400
/* 87B0334 8008AE04 140082AE */  sw         $v0, 0x14($s4)
/* 87B0338 8008AE08 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 87B033C 8008AE0C 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 87B0340 8008AE10 21208002 */  addu       $a0, $s4, $zero
/* 87B0344 8008AE14 0957010C */  jal        func_80055C24
/* 87B0348 8008AE18 460082A2 */   sb        $v0, 0x46($s4)
/* 87B034C 8008AE1C 02000224 */  addiu      $v0, $zero, 0x2
/* 87B0350 8008AE20 020002A2 */  sb         $v0, 0x2($s0)
/* 87B0354 8008AE24 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 87B0358 8008AE28 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 87B035C 8008AE2C 00000000 */  nop
/* 87B0360 8008AE30 030002A2 */  sb         $v0, 0x3($s0)
/* 87B0364 8008AE34 0780033C */  lui        $v1, %hi(D_80070328 + 0xE)
/* 87B0368 8008AE38 36036390 */  lbu        $v1, %lo(D_80070328 + 0xE)($v1)
/* 87B036C 8008AE3C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 87B0370 8008AE40 100002AE */  sw         $v0, 0x10($s0)
/* 87B0374 8008AE44 040003A2 */  sb         $v1, 0x4($s0)
/* 87B0378 8008AE48 410080A2 */  sb         $zero, 0x41($s4)
/* 87B037C 8008AE4C 4C0080A2 */  sb         $zero, 0x4C($s4)
/* 87B0380 8008AE50 582D0208 */  j          .Llevel_43_8008B560
/* 87B0384 8008AE54 4D0080A2 */   sb        $zero, 0x4D($s4)
.Llevel_43_8008AE58:
/* 87B0388 8008AE58 0C008426 */  addiu      $a0, $s4, 0xC
/* 87B038C 8008AE5C 0C00C526 */  addiu      $a1, $s6, 0xC
/* 87B0390 8008AE60 0000938E */  lw         $s3, 0x0($s4)
/* 87B0394 8008AE64 20000224 */  addiu      $v0, $zero, 0x20
/* 87B0398 8008AE68 5E3C010C */  jal        func_8004F178
/* 87B039C 8008AE6C 4C0082A2 */   sb        $v0, 0x4C($s4)
/* 87B03A0 8008AE70 0957010C */  jal        func_80055C24
/* 87B03A4 8008AE74 21208002 */   addu      $a0, $s4, $zero
/* 87B03A8 8008AE78 9171010C */  jal        rand
/* 87B03AC 8008AE7C 00000000 */   nop
/* 87B03B0 8008AE80 9171010C */  jal        rand
/* 87B03B4 8008AE84 FF0F5230 */   andi      $s2, $v0, 0xFFF
/* 87B03B8 8008AE88 FF075130 */  andi       $s1, $v0, 0x7FF
/* 87B03BC 8008AE8C 8B3A010C */  jal        func_8004EA2C
/* 87B03C0 8008AE90 21202002 */   addu      $a0, $s1, $zero
/* 87B03C4 8008AE94 21204002 */  addu       $a0, $s2, $zero
/* 87B03C8 8008AE98 8B3A010C */  jal        func_8004EA2C
/* 87B03CC 8008AE9C 21804000 */   addu      $s0, $v0, $zero
/* 87B03D0 8008AEA0 18000202 */  mult       $s0, $v0
/* 87B03D4 8008AEA4 12500000 */  mflo       $t2
/* 87B03D8 8008AEA8 4900C292 */  lbu        $v0, 0x49($s6)
/* 87B03DC 8008AEAC 00000000 */  nop
/* 87B03E0 8008AEB0 18004201 */  mult       $t2, $v0
/* 87B03E4 8008AEB4 21202002 */  addu       $a0, $s1, $zero
/* 87B03E8 8008AEB8 12500000 */  mflo       $t2
/* 87B03EC 8008AEBC 03160A00 */  sra        $v0, $t2, 24
/* 87B03F0 8008AEC0 8B3A010C */  jal        func_8004EA2C
/* 87B03F4 8008AEC4 000062A6 */   sh        $v0, 0x0($s3)
/* 87B03F8 8008AEC8 21204002 */  addu       $a0, $s2, $zero
/* 87B03FC 8008AECC 793A010C */  jal        func_8004E9E4
/* 87B0400 8008AED0 21804000 */   addu      $s0, $v0, $zero
/* 87B0404 8008AED4 18000202 */  mult       $s0, $v0
/* 87B0408 8008AED8 12500000 */  mflo       $t2
/* 87B040C 8008AEDC 4900C292 */  lbu        $v0, 0x49($s6)
/* 87B0410 8008AEE0 00000000 */  nop
/* 87B0414 8008AEE4 18004201 */  mult       $t2, $v0
/* 87B0418 8008AEE8 21202002 */  addu       $a0, $s1, $zero
/* 87B041C 8008AEEC 12500000 */  mflo       $t2
/* 87B0420 8008AEF0 03160A00 */  sra        $v0, $t2, 24
/* 87B0424 8008AEF4 793A010C */  jal        func_8004E9E4
/* 87B0428 8008AEF8 020062A6 */   sh        $v0, 0x2($s3)
/* 87B042C 8008AEFC 4900C392 */  lbu        $v1, 0x49($s6)
/* 87B0430 8008AF00 00000000 */  nop
/* 87B0434 8008AF04 18004300 */  mult       $v0, $v1
/* 87B0438 8008AF08 12500000 */  mflo       $t2
/* 87B043C 8008AF0C 03130A00 */  sra        $v0, $t2, 12
/* 87B0440 8008AF10 040062A6 */  sh         $v0, 0x4($s3)
/* 87B0444 8008AF14 1800C38E */  lw         $v1, 0x18($s6)
/* 87B0448 8008AF18 0002023C */  lui        $v0, (0x2000000 >> 16)
/* 87B044C 8008AF1C 24106200 */  and        $v0, $v1, $v0
/* 87B0450 8008AF20 2C004010 */  beqz       $v0, .Llevel_43_8008AFD4
/* 87B0454 8008AF24 21300000 */   addu      $a2, $zero, $zero
/* 87B0458 8008AF28 0780103C */  lui        $s0, %hi(D_80070328)
/* 87B045C 8008AF2C 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 87B0460 8008AF30 0C00838E */  lw         $v1, 0xC($s4)
/* 87B0464 8008AF34 0000048E */  lw         $a0, 0x0($s0)
/* 87B0468 8008AF38 1000828E */  lw         $v0, 0x10($s4)
/* 87B046C 8008AF3C 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 87B0470 8008AF40 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 87B0474 8008AF44 23206400 */  subu       $a0, $v1, $a0
/* 87B0478 8008AF48 203A010C */  jal        func_8004E880
/* 87B047C 8008AF4C 23284500 */   subu      $a1, $v0, $a1
/* 87B0480 8008AF50 40100200 */  sll        $v0, $v0, 1
/* 87B0484 8008AF54 21300000 */  addu       $a2, $zero, $zero
/* 87B0488 8008AF58 0680013C */  lui        $at, %hi(D_80065920)
/* 87B048C 8008AF5C 21082200 */  addu       $at, $at, $v0
/* 87B0490 8008AF60 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 87B0494 8008AF64 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 87B0498 8008AF68 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 87B049C 8008AF6C 03110200 */  sra        $v0, $v0, 4
/* 87B04A0 8008AF70 4000A2AF */  sw         $v0, 0x40($sp)
/* 87B04A4 8008AF74 0C00838E */  lw         $v1, 0xC($s4)
/* 87B04A8 8008AF78 0000048E */  lw         $a0, 0x0($s0)
/* 87B04AC 8008AF7C 1000828E */  lw         $v0, 0x10($s4)
/* 87B04B0 8008AF80 23206400 */  subu       $a0, $v1, $a0
/* 87B04B4 8008AF84 203A010C */  jal        func_8004E880
/* 87B04B8 8008AF88 23284500 */   subu      $a1, $v0, $a1
/* 87B04BC 8008AF8C 40100200 */  sll        $v0, $v0, 1
/* 87B04C0 8008AF90 0680013C */  lui        $at, %hi(D_800658A0)
/* 87B04C4 8008AF94 21082200 */  addu       $at, $at, $v0
/* 87B04C8 8008AF98 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 87B04CC 8008AF9C 4000A38F */  lw         $v1, 0x40($sp)
/* 87B04D0 8008AFA0 4800A0AF */  sw         $zero, 0x48($sp)
/* 87B04D4 8008AFA4 03110200 */  sra        $v0, $v0, 4
/* 87B04D8 8008AFA8 4400A2AF */  sw         $v0, 0x44($sp)
/* 87B04DC 8008AFAC 00006296 */  lhu        $v0, 0x0($s3)
/* 87B04E0 8008AFB0 00000000 */  nop
/* 87B04E4 8008AFB4 21104300 */  addu       $v0, $v0, $v1
/* 87B04E8 8008AFB8 000062A6 */  sh         $v0, 0x0($s3)
/* 87B04EC 8008AFBC 4400A38F */  lw         $v1, 0x44($sp)
/* 87B04F0 8008AFC0 02006296 */  lhu        $v0, 0x2($s3)
/* 87B04F4 8008AFC4 00000000 */  nop
/* 87B04F8 8008AFC8 21104300 */  addu       $v0, $v0, $v1
/* 87B04FC 8008AFCC 0C2C0208 */  j          .Llevel_43_8008B030
/* 87B0500 8008AFD0 020062A6 */   sh        $v0, 0x2($s3)
.Llevel_43_8008AFD4:
/* 87B0504 8008AFD4 0200023C */  lui        $v0, (0x20000 >> 16)
/* 87B0508 8008AFD8 24106200 */  and        $v0, $v1, $v0
/* 87B050C 8008AFDC 14004010 */  beqz       $v0, .Llevel_43_8008B030
/* 87B0510 8008AFE0 04000224 */   addiu     $v0, $zero, 0x4
/* 87B0514 8008AFE4 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 87B0518 8008AFE8 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 87B051C 8008AFEC 00000000 */  nop
/* 87B0520 8008AFF0 03006210 */  beq        $v1, $v0, .Llevel_43_8008B000
/* 87B0524 8008AFF4 0C000224 */   addiu     $v0, $zero, 0xC
/* 87B0528 8008AFF8 0D006214 */  bne        $v1, $v0, .Llevel_43_8008B030
/* 87B052C 8008AFFC 00000000 */   nop
.Llevel_43_8008B000:
/* 87B0530 8008B000 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 87B0534 8008B004 B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 87B0538 8008B008 00006396 */  lhu        $v1, 0x0($s3)
/* 87B053C 8008B00C 83110200 */  sra        $v0, $v0, 6
/* 87B0540 8008B010 21186200 */  addu       $v1, $v1, $v0
/* 87B0544 8008B014 000063A6 */  sh         $v1, 0x0($s3)
/* 87B0548 8008B018 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 87B054C 8008B01C B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 87B0550 8008B020 02006396 */  lhu        $v1, 0x2($s3)
/* 87B0554 8008B024 83110200 */  sra        $v0, $v0, 6
/* 87B0558 8008B028 21186200 */  addu       $v1, $v1, $v0
/* 87B055C 8008B02C 020063A6 */  sh         $v1, 0x2($s3)
.Llevel_43_8008B030:
/* 87B0560 8008B030 5100C492 */  lbu        $a0, 0x51($s6)
/* 87B0564 8008B034 00000000 */  nop
/* 87B0568 8008B038 26008010 */  beqz       $a0, .Llevel_43_8008B0D4
/* 87B056C 8008B03C 1000033C */   lui       $v1, (0x100000 >> 16)
/* 87B0570 8008B040 1800C28E */  lw         $v0, 0x18($s6)
/* 87B0574 8008B044 00000000 */  nop
/* 87B0578 8008B048 24104300 */  and        $v0, $v0, $v1
/* 87B057C 8008B04C 21004010 */  beqz       $v0, .Llevel_43_8008B0D4
/* 87B0580 8008B050 40100400 */   sll       $v0, $a0, 1
/* 87B0584 8008B054 0680013C */  lui        $at, %hi(D_80065920)
/* 87B0588 8008B058 21082200 */  addu       $at, $at, $v0
/* 87B058C 8008B05C 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 87B0590 8008B060 00000000 */  nop
/* 87B0594 8008B064 80100300 */  sll        $v0, $v1, 2
/* 87B0598 8008B068 21104300 */  addu       $v0, $v0, $v1
/* 87B059C 8008B06C 00190200 */  sll        $v1, $v0, 4
/* 87B05A0 8008B070 23186200 */  subu       $v1, $v1, $v0
/* 87B05A4 8008B074 00006296 */  lhu        $v0, 0x0($s3)
/* 87B05A8 8008B078 C31A0300 */  sra        $v1, $v1, 11
/* 87B05AC 8008B07C 21104300 */  addu       $v0, $v0, $v1
/* 87B05B0 8008B080 000062A6 */  sh         $v0, 0x0($s3)
/* 87B05B4 8008B084 5100C292 */  lbu        $v0, 0x51($s6)
/* 87B05B8 8008B088 28000424 */  addiu      $a0, $zero, 0x28
/* 87B05BC 8008B08C 40100200 */  sll        $v0, $v0, 1
/* 87B05C0 8008B090 0680013C */  lui        $at, %hi(D_800658A0)
/* 87B05C4 8008B094 21082200 */  addu       $at, $at, $v0
/* 87B05C8 8008B098 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 87B05CC 8008B09C 46000524 */  addiu      $a1, $zero, 0x46
/* 87B05D0 8008B0A0 80100300 */  sll        $v0, $v1, 2
/* 87B05D4 8008B0A4 21104300 */  addu       $v0, $v0, $v1
/* 87B05D8 8008B0A8 00190200 */  sll        $v1, $v0, 4
/* 87B05DC 8008B0AC 23186200 */  subu       $v1, $v1, $v0
/* 87B05E0 8008B0B0 02006296 */  lhu        $v0, 0x2($s3)
/* 87B05E4 8008B0B4 C31A0300 */  sra        $v1, $v1, 11
/* 87B05E8 8008B0B8 21104300 */  addu       $v0, $v0, $v1
/* 87B05EC 8008B0BC DBD8000C */  jal        func_8003636C
/* 87B05F0 8008B0C0 020062A6 */   sh        $v0, 0x2($s3)
/* 87B05F4 8008B0C4 04006396 */  lhu        $v1, 0x4($s3)
/* 87B05F8 8008B0C8 00000000 */  nop
/* 87B05FC 8008B0CC 21186200 */  addu       $v1, $v1, $v0
/* 87B0600 8008B0D0 040063A6 */  sh         $v1, 0x4($s3)
.Llevel_43_8008B0D4:
/* 87B0604 8008B0D4 00006286 */  lh         $v0, 0x0($s3)
/* 87B0608 8008B0D8 0C00838E */  lw         $v1, 0xC($s4)
/* 87B060C 8008B0DC 80100200 */  sll        $v0, $v0, 2
/* 87B0610 8008B0E0 21186200 */  addu       $v1, $v1, $v0
/* 87B0614 8008B0E4 0C0083AE */  sw         $v1, 0xC($s4)
/* 87B0618 8008B0E8 02006286 */  lh         $v0, 0x2($s3)
/* 87B061C 8008B0EC 1000838E */  lw         $v1, 0x10($s4)
/* 87B0620 8008B0F0 80100200 */  sll        $v0, $v0, 2
/* 87B0624 8008B0F4 21186200 */  addu       $v1, $v1, $v0
/* 87B0628 8008B0F8 100083AE */  sw         $v1, 0x10($s4)
/* 87B062C 8008B0FC 04006286 */  lh         $v0, 0x4($s3)
/* 87B0630 8008B100 1400838E */  lw         $v1, 0x14($s4)
/* 87B0634 8008B104 80100200 */  sll        $v0, $v0, 2
/* 87B0638 8008B108 21186200 */  addu       $v1, $v1, $v0
/* 87B063C 8008B10C 9171010C */  jal        rand
/* 87B0640 8008B110 140083AE */   sw        $v1, 0x14($s4)
/* 87B0644 8008B114 9171010C */  jal        rand
/* 87B0648 8008B118 450082A2 */   sb        $v0, 0x45($s4)
/* 87B064C 8008B11C 9171010C */  jal        rand
/* 87B0650 8008B120 460082A2 */   sb        $v0, 0x46($s4)
/* 87B0654 8008B124 1F004230 */  andi       $v0, $v0, 0x1F
/* 87B0658 8008B128 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 87B065C 8008B12C 9171010C */  jal        rand
/* 87B0660 8008B130 060062A6 */   sh        $v0, 0x6($s3)
/* 87B0664 8008B134 1F004230 */  andi       $v0, $v0, 0x1F
/* 87B0668 8008B138 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 87B066C 8008B13C 9171010C */  jal        rand
/* 87B0670 8008B140 080062A6 */   sh        $v0, 0x8($s3)
/* 87B0674 8008B144 32000424 */  addiu      $a0, $zero, 0x32
/* 87B0678 8008B148 1F004230 */  andi       $v0, $v0, 0x1F
/* 87B067C 8008B14C F0FF4224 */  addiu      $v0, $v0, -0x10
/* 87B0680 8008B150 0A0062A6 */  sh         $v0, 0xA($s3)
/* 87B0684 8008B154 1400C28E */  lw         $v0, 0x14($s6)
/* 87B0688 8008B158 50000524 */  addiu      $a1, $zero, 0x50
/* 87B068C 8008B15C C0FF4224 */  addiu      $v0, $v0, -0x40
/* 87B0690 8008B160 DBD8000C */  jal        func_8003636C
/* 87B0694 8008B164 100062AE */   sw        $v0, 0x10($s3)
/* 87B0698 8008B168 582D0208 */  j          .Llevel_43_8008B560
/* 87B069C 8008B16C 0C0062AE */   sw        $v0, 0xC($s3)
.Llevel_43_8008B170:
/* 87B06A0 8008B170 0000908E */  lw         $s0, 0x0($s4)
/* 87B06A4 8008B174 5E3C010C */  jal        func_8004F178
/* 87B06A8 8008B178 0C00C526 */   addiu     $a1, $s6, 0xC
/* 87B06AC 8008B17C 0957010C */  jal        func_80055C24
/* 87B06B0 8008B180 21208002 */   addu      $a0, $s4, $zero
/* 87B06B4 8008B184 10000224 */  addiu      $v0, $zero, 0x10
/* 87B06B8 8008B188 3B000324 */  addiu      $v1, $zero, 0x3B
/* 87B06BC 8008B18C 000002A6 */  sh         $v0, 0x0($s0)
/* 87B06C0 8008B190 80000224 */  addiu      $v0, $zero, 0x80
/* 87B06C4 8008B194 570083A2 */  sb         $v1, 0x57($s4)
/* 87B06C8 8008B198 540082A2 */  sb         $v0, 0x54($s4)
/* 87B06CC 8008B19C 550082A2 */  sb         $v0, 0x55($s4)
/* 87B06D0 8008B1A0 560080A2 */  sb         $zero, 0x56($s4)
/* 87B06D4 8008B1A4 3600C486 */  lh         $a0, 0x36($s6)
/* 87B06D8 8008B1A8 98010224 */  addiu      $v0, $zero, 0x198
/* 87B06DC 8008B1AC 04008210 */  beq        $a0, $v0, .Llevel_43_8008B1C0
/* 87B06E0 8008B1B0 01000224 */   addiu     $v0, $zero, 0x1
/* 87B06E4 8008B1B4 C2020224 */  addiu      $v0, $zero, 0x2C2
/* 87B06E8 8008B1B8 05008214 */  bne        $a0, $v0, .Llevel_43_8008B1D0
/* 87B06EC 8008B1BC 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_43_8008B1C0:
/* 87B06F0 8008B1C0 020002A2 */  sb         $v0, 0x2($s0)
/* 87B06F4 8008B1C4 030002A2 */  sb         $v0, 0x3($s0)
/* 87B06F8 8008B1C8 822C0208 */  j          .Llevel_43_8008B208
/* 87B06FC 8008B1CC 7F000224 */   addiu     $v0, $zero, 0x7F
.Llevel_43_8008B1D0:
/* 87B0700 8008B1D0 70020224 */  addiu      $v0, $zero, 0x270
/* 87B0704 8008B1D4 0A008214 */  bne        $a0, $v0, .Llevel_43_8008B200
/* 87B0708 8008B1D8 60000224 */   addiu     $v0, $zero, 0x60
/* 87B070C 8008B1DC 02000224 */  addiu      $v0, $zero, 0x2
/* 87B0710 8008B1E0 020002A2 */  sb         $v0, 0x2($s0)
/* 87B0714 8008B1E4 E0000224 */  addiu      $v0, $zero, 0xE0
/* 87B0718 8008B1E8 540082A2 */  sb         $v0, 0x54($s4)
/* 87B071C 8008B1EC 550082A2 */  sb         $v0, 0x55($s4)
/* 87B0720 8008B1F0 560082A2 */  sb         $v0, 0x56($s4)
/* 87B0724 8008B1F4 60000224 */  addiu      $v0, $zero, 0x60
/* 87B0728 8008B1F8 812C0208 */  j          .Llevel_43_8008B204
/* 87B072C 8008B1FC 570083A2 */   sb        $v1, 0x57($s4)
.Llevel_43_8008B200:
/* 87B0730 8008B200 020000A2 */  sb         $zero, 0x2($s0)
.Llevel_43_8008B204:
/* 87B0734 8008B204 030000A2 */  sb         $zero, 0x3($s0)
.Llevel_43_8008B208:
/* 87B0738 8008B208 4F0082A2 */  sb         $v0, 0x4F($s4)
/* 87B073C 8008B20C 0C008426 */  addiu      $a0, $s4, 0xC
/* 87B0740 8008B210 0780103C */  lui        $s0, %hi(D_8006E020)
/* 87B0744 8008B214 20E01026 */  addiu      $s0, $s0, %lo(D_8006E020)
/* 87B0748 8008B218 21280002 */  addu       $a1, $s0, $zero
/* 87B074C 8008B21C FE000224 */  addiu      $v0, $zero, 0xFE
/* 87B0750 8008B220 CD3C010C */  jal        func_8004F334
/* 87B0754 8008B224 470082A2 */   sb        $v0, 0x47($s4)
/* 87B0758 8008B228 21204000 */  addu       $a0, $v0, $zero
/* 87B075C 8008B22C 0780023C */  lui        $v0, %hi(D_8006E028)
/* 87B0760 8008B230 28E0428C */  lw         $v0, %lo(D_8006E028)($v0)
/* 87B0764 8008B234 1400858E */  lw         $a1, 0x14($s4)
/* 87B0768 8008B238 21300000 */  addu       $a2, $zero, $zero
/* 87B076C 8008B23C 203A010C */  jal        func_8004E880
/* 87B0770 8008B240 23284500 */   subu      $a1, $v0, $a1
/* 87B0774 8008B244 21300000 */  addu       $a2, $zero, $zero
/* 87B0778 8008B248 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 87B077C 8008B24C 450082A2 */  sb         $v0, 0x45($s4)
/* 87B0780 8008B250 0000038E */  lw         $v1, 0x0($s0)
/* 87B0784 8008B254 0C00848E */  lw         $a0, 0xC($s4)
/* 87B0788 8008B258 0780023C */  lui        $v0, %hi(D_8006E024)
/* 87B078C 8008B25C 24E0428C */  lw         $v0, %lo(D_8006E024)($v0)
/* 87B0790 8008B260 1000858E */  lw         $a1, 0x10($s4)
/* 87B0794 8008B264 23206400 */  subu       $a0, $v1, $a0
/* 87B0798 8008B268 203A010C */  jal        func_8004E880
/* 87B079C 8008B26C 23284500 */   subu      $a1, $v0, $a1
/* 87B07A0 8008B270 582D0208 */  j          .Llevel_43_8008B560
/* 87B07A4 8008B274 460082A2 */   sb        $v0, 0x46($s4)
.Llevel_43_8008B278:
/* 87B07A8 8008B278 0C008426 */  addiu      $a0, $s4, 0xC
/* 87B07AC 8008B27C 0000908E */  lw         $s0, 0x0($s4)
/* 87B07B0 8008B280 5E3C010C */  jal        func_8004F178
/* 87B07B4 8008B284 0C00C526 */   addiu     $a1, $s6, 0xC
/* 87B07B8 8008B288 0957010C */  jal        func_80055C24
/* 87B07BC 8008B28C 21208002 */   addu      $a0, $s4, $zero
/* 87B07C0 8008B290 18000224 */  addiu      $v0, $zero, 0x18
/* 87B07C4 8008B294 000002AE */  sw         $v0, 0x0($s0)
/* 87B07C8 8008B298 30000224 */  addiu      $v0, $zero, 0x30
/* 87B07CC 8008B29C 570082A2 */  sb         $v0, 0x57($s4)
/* 87B07D0 8008B2A0 64000224 */  addiu      $v0, $zero, 0x64
/* 87B07D4 8008B2A4 540080A2 */  sb         $zero, 0x54($s4)
/* 87B07D8 8008B2A8 550080A2 */  sb         $zero, 0x55($s4)
/* 87B07DC 8008B2AC 560080A2 */  sb         $zero, 0x56($s4)
/* 87B07E0 8008B2B0 4F0082A2 */  sb         $v0, 0x4F($s4)
/* 87B07E4 8008B2B4 9171010C */  jal        rand
/* 87B07E8 8008B2B8 470080A2 */   sb        $zero, 0x47($s4)
/* 87B07EC 8008B2BC 9171010C */  jal        rand
/* 87B07F0 8008B2C0 450082A2 */   sb        $v0, 0x45($s4)
/* 87B07F4 8008B2C4 582D0208 */  j          .Llevel_43_8008B560
/* 87B07F8 8008B2C8 460082A2 */   sb        $v0, 0x46($s4)
.Llevel_43_8008B2CC:
/* 87B07FC 8008B2CC 0C009226 */  addiu      $s2, $s4, 0xC
/* 87B0800 8008B2D0 21204002 */  addu       $a0, $s2, $zero
/* 87B0804 8008B2D4 0C00D126 */  addiu      $s1, $s6, 0xC
/* 87B0808 8008B2D8 0000908E */  lw         $s0, 0x0($s4)
/* 87B080C 8008B2DC 5E3C010C */  jal        func_8004F178
/* 87B0810 8008B2E0 21282002 */   addu      $a1, $s1, $zero
/* 87B0814 8008B2E4 0957010C */  jal        func_80055C24
/* 87B0818 8008B2E8 21208002 */   addu      $a0, $s4, $zero
/* 87B081C 8008B2EC 2120C002 */  addu       $a0, $s6, $zero
/* 87B0820 8008B2F0 40000224 */  addiu      $v0, $zero, 0x40
/* 87B0824 8008B2F4 4F0082A2 */  sb         $v0, 0x4F($s4)
/* 87B0828 8008B2F8 C8000224 */  addiu      $v0, $zero, 0xC8
/* 87B082C 8008B2FC 000002AE */  sw         $v0, 0x0($s0)
/* 87B0830 8008B300 23000224 */  addiu      $v0, $zero, 0x23
/* 87B0834 8008B304 040002AE */  sw         $v0, 0x4($s0)
/* 87B0838 8008B308 4600C292 */  lbu        $v0, 0x46($s6)
/* 87B083C 8008B30C 04000524 */  addiu      $a1, $zero, 0x4
/* 87B0840 8008B310 4957010C */  jal        func_80055D24
/* 87B0844 8008B314 460082A2 */   sb        $v0, 0x46($s4)
/* 87B0848 8008B318 2000C426 */  addiu      $a0, $s6, 0x20
/* 87B084C 8008B31C 4000B027 */  addiu      $s0, $sp, 0x40
/* 87B0850 8008B320 21280002 */  addu       $a1, $s0, $zero
/* 87B0854 8008B324 21300002 */  addu       $a2, $s0, $zero
/* 87B0858 8008B328 08070224 */  addiu      $v0, $zero, 0x708
/* 87B085C 8008B32C 4000A2AF */  sw         $v0, 0x40($sp)
/* 87B0860 8008B330 2C010224 */  addiu      $v0, $zero, 0x12C
/* 87B0864 8008B334 4400A0AF */  sw         $zero, 0x44($sp)
/* 87B0868 8008B338 5B3B010C */  jal        func_8004ED6C
/* 87B086C 8008B33C 4800A2AF */   sw        $v0, 0x48($sp)
/* 87B0870 8008B340 21204002 */  addu       $a0, $s2, $zero
/* 87B0874 8008B344 21282002 */  addu       $a1, $s1, $zero
/* 87B0878 8008B348 653C010C */  jal        func_8004F194
/* 87B087C 8008B34C 21300002 */   addu      $a2, $s0, $zero
/* 87B0880 8008B350 592D0208 */  j          .Llevel_43_8008B564
/* 87B0884 8008B354 21108002 */   addu      $v0, $s4, $zero
.Llevel_43_8008B358:
/* 87B0888 8008B358 0300C012 */  beqz       $s6, .Llevel_43_8008B368
/* 87B088C 8008B35C 0C00C526 */   addiu     $a1, $s6, 0xC
/* 87B0890 8008B360 DD2C0208 */  j          .Llevel_43_8008B374
/* 87B0894 8008B364 0C008426 */   addiu     $a0, $s4, 0xC
.Llevel_43_8008B368:
/* 87B0898 8008B368 0C008426 */  addiu      $a0, $s4, 0xC
/* 87B089C 8008B36C 0780053C */  lui        $a1, %hi(D_80070328)
/* 87B08A0 8008B370 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
.Llevel_43_8008B374:
/* 87B08A4 8008B374 5E3C010C */  jal        func_8004F178
/* 87B08A8 8008B378 00000000 */   nop
/* 87B08AC 8008B37C 0957010C */  jal        func_80055C24
/* 87B08B0 8008B380 21208002 */   addu      $a0, $s4, $zero
/* 87B08B4 8008B384 3600C386 */  lh         $v1, 0x36($s6)
/* 87B08B8 8008B388 63000224 */  addiu      $v0, $zero, 0x63
/* 87B08BC 8008B38C 75006214 */  bne        $v1, $v0, .Llevel_43_8008B564
/* 87B08C0 8008B390 21108002 */   addu      $v0, $s4, $zero
/* 87B08C4 8008B394 2D000224 */  addiu      $v0, $zero, 0x2D
/* 87B08C8 8008B398 582D0208 */  j          .Llevel_43_8008B560
/* 87B08CC 8008B39C 4F0082A2 */   sb        $v0, 0x4F($s4)
.Llevel_43_8008B3A0:
/* 87B08D0 8008B3A0 0C008426 */  addiu      $a0, $s4, 0xC
/* 87B08D4 8008B3A4 0000908E */  lw         $s0, 0x0($s4)
/* 87B08D8 8008B3A8 5E3C010C */  jal        func_8004F178
/* 87B08DC 8008B3AC 0C00C526 */   addiu     $a1, $s6, 0xC
/* 87B08E0 8008B3B0 21208002 */  addu       $a0, $s4, $zero
/* 87B08E4 8008B3B4 4C0080A2 */  sb         $zero, 0x4C($s4)
/* 87B08E8 8008B3B8 4457010C */  jal        func_80055D10
/* 87B08EC 8008B3BC 4D0080A2 */   sb        $zero, 0x4D($s4)
/* 87B08F0 8008B3C0 21400000 */  addu       $t0, $zero, $zero
/* 87B08F4 8008B3C4 FF000224 */  addiu      $v0, $zero, 0xFF
/* 87B08F8 8008B3C8 4A0082A2 */  sb         $v0, 0x4A($s4)
/* 87B08FC 8008B3CC 1400828E */  lw         $v0, 0x14($s4)
/* 87B0900 8008B3D0 FC030924 */  addiu      $t1, $zero, 0x3FC
/* 87B0904 8008B3D4 410080A2 */  sb         $zero, 0x41($s4)
/* 87B0908 8008B3D8 4C0080A2 */  sb         $zero, 0x4C($s4)
/* 87B090C 8008B3DC 4D0080A2 */  sb         $zero, 0x4D($s4)
/* 87B0910 8008B3E0 4600C392 */  lbu        $v1, 0x46($s6)
/* 87B0914 8008B3E4 00014224 */  addiu      $v0, $v0, 0x100
/* 87B0918 8008B3E8 460083A2 */  sb         $v1, 0x46($s4)
/* 87B091C 8008B3EC 140082AE */  sw         $v0, 0x14($s4)
/* 87B0920 8008B3F0 0000C58E */  lw         $a1, 0x0($s6)
/* 87B0924 8008B3F4 0780023C */  lui        $v0, %hi(D_8006C730)
/* 87B0928 8008B3F8 30C7428C */  lw         $v0, %lo(D_8006C730)($v0)
/* 87B092C 8008B3FC 0780073C */  lui        $a3, %hi(D_8006C550)
/* 87B0930 8008B400 50C5E78C */  lw         $a3, %lo(D_8006C550)($a3)
/* 87B0934 8008B404 5000468C */  lw         $a2, 0x50($v0)
.Llevel_43_8008B408:
/* 87B0938 8008B408 00000000 */  nop
/* 87B093C 8008B40C 0000C294 */  lhu        $v0, 0x0($a2)
/* 87B0940 8008B410 00000000 */  nop
/* 87B0944 8008B414 FF7F4230 */  andi       $v0, $v0, 0x7FFF
/* 87B0948 8008B418 40180200 */  sll        $v1, $v0, 1
/* 87B094C 8008B41C 21186200 */  addu       $v1, $v1, $v0
/* 87B0950 8008B420 80180300 */  sll        $v1, $v1, 2
/* 87B0954 8008B424 23186200 */  subu       $v1, $v1, $v0
/* 87B0958 8008B428 C0180300 */  sll        $v1, $v1, 3
/* 87B095C 8008B42C 2120E300 */  addu       $a0, $a3, $v1
/* 87B0960 8008B430 36008284 */  lh         $v0, 0x36($a0)
/* 87B0964 8008B434 00000000 */  nop
/* 87B0968 8008B438 0E004914 */  bne        $v0, $t1, .Llevel_43_8008B474
/* 87B096C 8008B43C 23208700 */   subu      $a0, $a0, $a3
/* 87B0970 8008B440 40190400 */  sll        $v1, $a0, 5
/* 87B0974 8008B444 23186400 */  subu       $v1, $v1, $a0
/* 87B0978 8008B448 40190300 */  sll        $v1, $v1, 5
/* 87B097C 8008B44C 21186400 */  addu       $v1, $v1, $a0
/* 87B0980 8008B450 C0100300 */  sll        $v0, $v1, 3
/* 87B0984 8008B454 21186200 */  addu       $v1, $v1, $v0
/* 87B0988 8008B458 C0130300 */  sll        $v0, $v1, 15
/* 87B098C 8008B45C 23104300 */  subu       $v0, $v0, $v1
/* 87B0990 8008B460 80100200 */  sll        $v0, $v0, 2
/* 87B0994 8008B464 21104400 */  addu       $v0, $v0, $a0
/* 87B0998 8008B468 23100200 */  negu       $v0, $v0
/* 87B099C 8008B46C C3100200 */  sra        $v0, $v0, 3
/* 87B09A0 8008B470 1400A2AC */  sw         $v0, 0x14($a1)
.Llevel_43_8008B474:
/* 87B09A4 8008B474 0000C284 */  lh         $v0, 0x0($a2)
/* 87B09A8 8008B478 00000000 */  nop
/* 87B09AC 8008B47C 05004004 */  bltz       $v0, .Llevel_43_8008B494
/* 87B09B0 8008B480 0200C624 */   addiu     $a2, $a2, 0x2
/* 87B09B4 8008B484 01000825 */  addiu      $t0, $t0, 0x1
/* 87B09B8 8008B488 0A000229 */  slti       $v0, $t0, 0xA
/* 87B09BC 8008B48C DEFF4014 */  bnez       $v0, .Llevel_43_8008B408
/* 87B09C0 8008B490 00000000 */   nop
.Llevel_43_8008B494:
/* 87B09C4 8008B494 1400A48C */  lw         $a0, 0x14($a1)
/* 87B09C8 8008B498 00000000 */  nop
/* 87B09CC 8008B49C 30008004 */  bltz       $a0, .Llevel_43_8008B560
/* 87B09D0 8008B4A0 40100400 */   sll       $v0, $a0, 1
/* 87B09D4 8008B4A4 21104400 */  addu       $v0, $v0, $a0
/* 87B09D8 8008B4A8 80100200 */  sll        $v0, $v0, 2
/* 87B09DC 8008B4AC 23104400 */  subu       $v0, $v0, $a0
/* 87B09E0 8008B4B0 0780033C */  lui        $v1, %hi(D_8006C550)
/* 87B09E4 8008B4B4 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 87B09E8 8008B4B8 C0100200 */  sll        $v0, $v0, 3
/* 87B09EC 8008B4BC 21886200 */  addu       $s1, $v1, $v0
/* 87B09F0 8008B4C0 0000248E */  lw         $a0, 0x0($s1)
/* 87B09F4 8008B4C4 00000000 */  nop
/* 87B09F8 8008B4C8 0000828C */  lw         $v0, 0x0($a0)
/* 87B09FC 8008B4CC 00000000 */  nop
/* 87B0A00 8008B4D0 14004224 */  addiu      $v0, $v0, 0x14
/* 87B0A04 8008B4D4 21108200 */  addu       $v0, $a0, $v0
/* 87B0A08 8008B4D8 040002AE */  sw         $v0, 0x4($s0)
/* 87B0A0C 8008B4DC 80101200 */  sll        $v0, $s2, 2
/* 87B0A10 8008B4E0 0000838C */  lw         $v1, 0x0($a0)
/* 87B0A14 8008B4E4 21105200 */  addu       $v0, $v0, $s2
/* 87B0A18 8008B4E8 21187200 */  addu       $v1, $v1, $s2
/* 87B0A1C 8008B4EC 000083AC */  sw         $v1, 0x0($a0)
/* 87B0A20 8008B4F0 2A186200 */  slt        $v1, $v1, $v0
/* 87B0A24 8008B4F4 02006014 */  bnez       $v1, .Llevel_43_8008B500
/* 87B0A28 8008B4F8 21280000 */   addu      $a1, $zero, $zero
/* 87B0A2C 8008B4FC 000080AC */  sw         $zero, 0x0($a0)
.Llevel_43_8008B500:
/* 87B0A30 8008B500 0400048E */  lw         $a0, 0x4($s0)
/* 87B0A34 8008B504 EB39010C */  jal        func_8004E7AC
/* 87B0A38 8008B508 21304002 */   addu      $a2, $s2, $zero
/* 87B0A3C 8008B50C 20000224 */  addiu      $v0, $zero, 0x20
/* 87B0A40 8008B510 000002A6 */  sh         $v0, 0x0($s0)
/* 87B0A44 8008B514 19000224 */  addiu      $v0, $zero, 0x19
/* 87B0A48 8008B518 020002A6 */  sh         $v0, 0x2($s0)
/* 87B0A4C 8008B51C 0F000224 */  addiu      $v0, $zero, 0xF
/* 87B0A50 8008B520 140002A6 */  sh         $v0, 0x14($s0)
/* 87B0A54 8008B524 1E000224 */  addiu      $v0, $zero, 0x1E
/* 87B0A58 8008B528 160002A6 */  sh         $v0, 0x16($s0)
/* 87B0A5C 8008B52C 582D0208 */  j          .Llevel_43_8008B560
/* 87B0A60 8008B530 100011AE */   sw        $s1, 0x10($s0)
.Llevel_43_8008B534:
/* 87B0A64 8008B534 0300C012 */  beqz       $s6, .Llevel_43_8008B544
/* 87B0A68 8008B538 0C00C526 */   addiu     $a1, $s6, 0xC
/* 87B0A6C 8008B53C 542D0208 */  j          .Llevel_43_8008B550
/* 87B0A70 8008B540 0C008426 */   addiu     $a0, $s4, 0xC
.Llevel_43_8008B544:
/* 87B0A74 8008B544 0C008426 */  addiu      $a0, $s4, 0xC
/* 87B0A78 8008B548 0780053C */  lui        $a1, %hi(D_80070328)
/* 87B0A7C 8008B54C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
.Llevel_43_8008B550:
/* 87B0A80 8008B550 5E3C010C */  jal        func_8004F178
/* 87B0A84 8008B554 00000000 */   nop
/* 87B0A88 8008B558 0957010C */  jal        func_80055C24
/* 87B0A8C 8008B55C 21208002 */   addu      $a0, $s4, $zero
.Llevel_43_8008B560:
/* 87B0A90 8008B560 21108002 */  addu       $v0, $s4, $zero
.Llevel_43_8008B564:
/* 87B0A94 8008B564 9C00BF8F */  lw         $ra, 0x9C($sp)
/* 87B0A98 8008B568 9800BE8F */  lw         $fp, 0x98($sp)
/* 87B0A9C 8008B56C 9400B78F */  lw         $s7, 0x94($sp)
/* 87B0AA0 8008B570 9000B68F */  lw         $s6, 0x90($sp)
/* 87B0AA4 8008B574 8C00B58F */  lw         $s5, 0x8C($sp)
/* 87B0AA8 8008B578 8800B48F */  lw         $s4, 0x88($sp)
/* 87B0AAC 8008B57C 8400B38F */  lw         $s3, 0x84($sp)
/* 87B0AB0 8008B580 8000B28F */  lw         $s2, 0x80($sp)
/* 87B0AB4 8008B584 7C00B18F */  lw         $s1, 0x7C($sp)
/* 87B0AB8 8008B588 7800B08F */  lw         $s0, 0x78($sp)
/* 87B0ABC 8008B58C A000BD27 */  addiu      $sp, $sp, 0xA0
/* 87B0AC0 8008B590 0800E003 */  jr         $ra
/* 87B0AC4 8008B594 00000000 */   nop
.size func_level_43_80089F38, . - func_level_43_80089F38
