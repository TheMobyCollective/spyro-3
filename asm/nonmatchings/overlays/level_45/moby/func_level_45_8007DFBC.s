.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_45_8007DFBC
/* 8D3A4EC 8007DFBC 0780023C */  lui        $v0, %hi(D_8006FA3C)
/* 8D3A4F0 8007DFC0 3CFA428C */  lw         $v0, %lo(D_8006FA3C)($v0)
/* 8D3A4F4 8007DFC4 70FFBD27 */  addiu      $sp, $sp, -0x90
/* 8D3A4F8 8007DFC8 8000B4AF */  sw         $s4, 0x80($sp)
/* 8D3A4FC 8007DFCC 21A08000 */  addu       $s4, $a0, $zero
/* 8D3A500 8007DFD0 7000B0AF */  sw         $s0, 0x70($sp)
/* 8D3A504 8007DFD4 03001024 */  addiu      $s0, $zero, 0x3
/* 8D3A508 8007DFD8 8C00BFAF */  sw         $ra, 0x8C($sp)
/* 8D3A50C 8007DFDC 8800B6AF */  sw         $s6, 0x88($sp)
/* 8D3A510 8007DFE0 8400B5AF */  sw         $s5, 0x84($sp)
/* 8D3A514 8007DFE4 7C00B3AF */  sw         $s3, 0x7C($sp)
/* 8D3A518 8007DFE8 7800B2AF */  sw         $s2, 0x78($sp)
/* 8D3A51C 8007DFEC 7400B1AF */  sw         $s1, 0x74($sp)
/* 8D3A520 8007DFF0 0000958E */  lw         $s5, 0x0($s4)
/* 8D3A524 8007DFF4 03005010 */  beq        $v0, $s0, .Llevel_45_8007E004
/* 8D3A528 8007DFF8 0C009126 */   addiu     $s1, $s4, 0xC
/* 8D3A52C 8007DFFC C656010C */  jal        func_80055B18
/* 8D3A530 8007E000 00000000 */   nop
.Llevel_45_8007E004:
/* 8D3A534 8007E004 21202002 */  addu       $a0, $s1, $zero
/* 8D3A538 8007E008 D668000C */  jal        func_8001A358
/* 8D3A53C 8007E00C 10270524 */   addiu     $a1, $zero, 0x2710
/* 8D3A540 8007E010 9C58010C */  jal        func_80056270
/* 8D3A544 8007E014 21208002 */   addu      $a0, $s4, $zero
/* 8D3A548 8007E018 A758010C */  jal        func_8005629C
/* 8D3A54C 8007E01C 21208002 */   addu      $a0, $s4, $zero
/* 8D3A550 8007E020 21208002 */  addu       $a0, $s4, $zero
/* 8D3A554 8007E024 4957010C */  jal        func_80055D24
/* 8D3A558 8007E028 06000524 */   addiu     $a1, $zero, 0x6
/* 8D3A55C 8007E02C 48008392 */  lbu        $v1, 0x48($s4)
/* 8D3A560 8007E030 01000224 */  addiu      $v0, $zero, 0x1
/* 8D3A564 8007E034 18006210 */  beq        $v1, $v0, .Llevel_45_8007E098
/* 8D3A568 8007E038 02006228 */   slti      $v0, $v1, 0x2
/* 8D3A56C 8007E03C 05004010 */  beqz       $v0, .Llevel_45_8007E054
/* 8D3A570 8007E040 00000000 */   nop
/* 8D3A574 8007E044 0A006010 */  beqz       $v1, .Llevel_45_8007E070
/* 8D3A578 8007E048 00000000 */   nop
/* 8D3A57C 8007E04C CDF90108 */  j          .Llevel_45_8007E734
/* 8D3A580 8007E050 00000000 */   nop
.Llevel_45_8007E054:
/* 8D3A584 8007E054 02000224 */  addiu      $v0, $zero, 0x2
/* 8D3A588 8007E058 5A006210 */  beq        $v1, $v0, .Llevel_45_8007E1C4
/* 8D3A58C 8007E05C 00000000 */   nop
/* 8D3A590 8007E060 3C017010 */  beq        $v1, $s0, .Llevel_45_8007E554
/* 8D3A594 8007E064 00000000 */   nop
/* 8D3A598 8007E068 CDF90108 */  j          .Llevel_45_8007E734
/* 8D3A59C 8007E06C 00000000 */   nop
.Llevel_45_8007E070:
/* 8D3A5A0 8007E070 0400A28E */  lw         $v0, 0x4($s5)
/* 8D3A5A4 8007E074 00000000 */  nop
/* 8D3A5A8 8007E078 04004010 */  beqz       $v0, .Llevel_45_8007E08C
/* 8D3A5AC 8007E07C 00000000 */   nop
/* 8D3A5B0 8007E080 020040A4 */  sh         $zero, 0x2($v0)
/* 8D3A5B4 8007E084 1E000224 */  addiu      $v0, $zero, 0x1E
/* 8D3A5B8 8007E088 0000A2AE */  sw         $v0, 0x0($s5)
.Llevel_45_8007E08C:
/* 8D3A5BC 8007E08C 01000224 */  addiu      $v0, $zero, 0x1
/* 8D3A5C0 8007E090 CDF90108 */  j          .Llevel_45_8007E734
/* 8D3A5C4 8007E094 480082A2 */   sb        $v0, 0x48($s4)
.Llevel_45_8007E098:
/* 8D3A5C8 8007E098 0400A28E */  lw         $v0, 0x4($s5)
/* 8D3A5CC 8007E09C 00000000 */  nop
/* 8D3A5D0 8007E0A0 A4014010 */  beqz       $v0, .Llevel_45_8007E734
/* 8D3A5D4 8007E0A4 1000A427 */   addiu     $a0, $sp, 0x10
/* 8D3A5D8 8007E0A8 0780063C */  lui        $a2, %hi(D_80070328)
/* 8D3A5DC 8007E0AC 2803C624 */  addiu      $a2, $a2, %lo(D_80070328)
/* 8D3A5E0 8007E0B0 723C010C */  jal        func_8004F1C8
/* 8D3A5E4 8007E0B4 21282002 */   addu      $a1, $s1, $zero
/* 8D3A5E8 8007E0B8 1000A427 */  addiu      $a0, $sp, 0x10
/* 8D3A5EC 8007E0BC 7A3B010C */  jal        func_8004EDE8
/* 8D3A5F0 8007E0C0 01000524 */   addiu     $a1, $zero, 0x1
/* 8D3A5F4 8007E0C4 21208002 */  addu       $a0, $s4, $zero
/* 8D3A5F8 8007E0C8 3400A58E */  lw         $a1, 0x34($s5)
/* 8D3A5FC 8007E0CC F0EF000C */  jal        func_8003BFC0
/* 8D3A600 8007E0D0 C0E05024 */   addiu     $s0, $v0, -0x1F40
/* 8D3A604 8007E0D4 05004014 */  bnez       $v0, .Llevel_45_8007E0EC
/* 8D3A608 8007E0D8 21280000 */   addu      $a1, $zero, $zero
/* 8D3A60C 8007E0DC 21208002 */  addu       $a0, $s4, $zero
/* 8D3A610 8007E0E0 AFEE000C */  jal        func_8003BABC
/* 8D3A614 8007E0E4 04000624 */   addiu     $a2, $zero, 0x4
/* 8D3A618 8007E0E8 3400A2AE */  sw         $v0, 0x34($s5)
.Llevel_45_8007E0EC:
/* 8D3A61C 8007E0EC 1400848E */  lw         $a0, 0x14($s4)
/* 8D3A620 8007E0F0 3939010C */  jal        func_8004E4E4
/* 8D3A624 8007E0F4 21209000 */   addu      $a0, $a0, $s0
/* 8D3A628 8007E0F8 0780033C */  lui        $v1, %hi(D_8006C648)
/* 8D3A62C 8007E0FC 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 8D3A630 8007E100 00000000 */  nop
/* 8D3A634 8007E104 18004300 */  mult       $v0, $v1
/* 8D3A638 8007E108 21208002 */  addu       $a0, $s4, $zero
/* 8D3A63C 8007E10C 0400A58E */  lw         $a1, 0x4($s5)
/* 8D3A640 8007E110 0800A626 */  addiu      $a2, $s5, 0x8
/* 8D3A644 8007E114 0800A2AE */  sw         $v0, 0x8($s5)
/* 8D3A648 8007E118 0780033C */  lui        $v1, %hi(unk_ovlheader_80074398)
/* 8D3A64C 8007E11C 9843638C */  lw         $v1, %lo(unk_ovlheader_80074398)($v1)
/* 8D3A650 8007E120 12400000 */  mflo       $t0
/* 8D3A654 8007E124 83110800 */  sra        $v0, $t0, 6
/* 8D3A658 8007E128 09F86000 */  jalr       $v1
/* 8D3A65C 8007E12C 0800A2AE */   sw        $v0, 0x8($s5)
/* 8D3A660 8007E130 0780113C */  lui        $s1, %hi(D_8006C550)
/* 8D3A664 8007E134 50C5318E */  lw         $s1, %lo(D_8006C550)($s1)
/* 8D3A668 8007E138 0780023C */  lui        $v0, %hi(D_8006C704)
/* 8D3A66C 8007E13C 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 8D3A670 8007E140 00000000 */  nop
/* 8D3A674 8007E144 2B102202 */  sltu       $v0, $s1, $v0
/* 8D3A678 8007E148 7A014010 */  beqz       $v0, .Llevel_45_8007E734
/* 8D3A67C 8007E14C BA031224 */   addiu     $s2, $zero, 0x3BA
/* 8D3A680 8007E150 49003026 */  addiu      $s0, $s1, 0x49
.Llevel_45_8007E154:
/* 8D3A684 8007E154 EDFF0286 */  lh         $v0, -0x13($s0)
/* 8D3A688 8007E158 00000000 */  nop
/* 8D3A68C 8007E15C 11005214 */  bne        $v0, $s2, .Llevel_45_8007E1A4
/* 8D3A690 8007E160 00000000 */   nop
/* 8D3A694 8007E164 FFFF0292 */  lbu        $v0, -0x1($s0)
/* 8D3A698 8007E168 00000000 */  nop
/* 8D3A69C 8007E16C 0D004014 */  bnez       $v0, .Llevel_45_8007E1A4
/* 8D3A6A0 8007E170 0C008426 */   addiu     $a0, $s4, 0xC
/* 8D3A6A4 8007E174 CD3C010C */  jal        func_8004F334
/* 8D3A6A8 8007E178 0C002526 */   addiu     $a1, $s1, 0xC
/* 8D3A6AC 8007E17C 00044228 */  slti       $v0, $v0, 0x400
/* 8D3A6B0 8007E180 08004010 */  beqz       $v0, .Llevel_45_8007E1A4
/* 8D3A6B4 8007E184 21208002 */   addu      $a0, $s4, $zero
/* 8D3A6B8 8007E188 01000524 */  addiu      $a1, $zero, 0x1
/* 8D3A6BC 8007E18C 21300000 */  addu       $a2, $zero, $zero
/* 8D3A6C0 8007E190 01000224 */  addiu      $v0, $zero, 0x1
/* 8D3A6C4 8007E194 FFFF02A2 */  sb         $v0, -0x1($s0)
/* 8D3A6C8 8007E198 78000224 */  addiu      $v0, $zero, 0x78
/* 8D3A6CC 8007E19C AFEE000C */  jal        func_8003BABC
/* 8D3A6D0 8007E1A0 000002A2 */   sb        $v0, 0x0($s0)
.Llevel_45_8007E1A4:
/* 8D3A6D4 8007E1A4 0780023C */  lui        $v0, %hi(D_8006C704)
/* 8D3A6D8 8007E1A8 04C7428C */  lw         $v0, %lo(D_8006C704)($v0)
/* 8D3A6DC 8007E1AC 58003126 */  addiu      $s1, $s1, 0x58
/* 8D3A6E0 8007E1B0 2B102202 */  sltu       $v0, $s1, $v0
/* 8D3A6E4 8007E1B4 E7FF4014 */  bnez       $v0, .Llevel_45_8007E154
/* 8D3A6E8 8007E1B8 58001026 */   addiu     $s0, $s0, 0x58
/* 8D3A6EC 8007E1BC CDF90108 */  j          .Llevel_45_8007E734
/* 8D3A6F0 8007E1C0 00000000 */   nop
.Llevel_45_8007E1C4:
/* 8D3A6F4 8007E1C4 2C00A28E */  lw         $v0, 0x2C($s5)
/* 8D3A6F8 8007E1C8 00000000 */  nop
/* 8D3A6FC 8007E1CC 59014010 */  beqz       $v0, .Llevel_45_8007E734
/* 8D3A700 8007E1D0 00000000 */   nop
/* 8D3A704 8007E1D4 0780053C */  lui        $a1, %hi(D_level_45_80074644)
/* 8D3A708 8007E1D8 4446A524 */  addiu      $a1, $a1, %lo(D_level_45_80074644)
/* 8D3A70C 8007E1DC 0000A28C */  lw         $v0, 0x0($a1)
/* 8D3A710 8007E1E0 0400A38C */  lw         $v1, 0x4($a1)
/* 8D3A714 8007E1E4 0800A48C */  lw         $a0, 0x8($a1)
/* 8D3A718 8007E1E8 3000A2AF */  sw         $v0, 0x30($sp)
/* 8D3A71C 8007E1EC 3400A3AF */  sw         $v1, 0x34($sp)
/* 8D3A720 8007E1F0 3800A4AF */  sw         $a0, 0x38($sp)
/* 8D3A724 8007E1F4 1400848E */  lw         $a0, 0x14($s4)
/* 8D3A728 8007E1F8 00000000 */  nop
/* 8D3A72C 8007E1FC C2170400 */  srl        $v0, $a0, 31
/* 8D3A730 8007E200 21208200 */  addu       $a0, $a0, $v0
/* 8D3A734 8007E204 3939010C */  jal        func_8004E4E4
/* 8D3A738 8007E208 43200400 */   sra       $a0, $a0, 1
/* 8D3A73C 8007E20C 0780033C */  lui        $v1, %hi(D_8006C648)
/* 8D3A740 8007E210 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 8D3A744 8007E214 00000000 */  nop
/* 8D3A748 8007E218 18004300 */  mult       $v0, $v1
/* 8D3A74C 8007E21C 2000B027 */  addiu      $s0, $sp, 0x20
/* 8D3A750 8007E220 21200002 */  addu       $a0, $s0, $zero
/* 8D3A754 8007E224 21282002 */  addu       $a1, $s1, $zero
/* 8D3A758 8007E228 0800A2AE */  sw         $v0, 0x8($s5)
/* 8D3A75C 8007E22C 12400000 */  mflo       $t0
/* 8D3A760 8007E230 83110800 */  sra        $v0, $t0, 6
/* 8D3A764 8007E234 5E3C010C */  jal        func_8004F178
/* 8D3A768 8007E238 0800A2AE */   sw        $v0, 0x8($s5)
/* 8D3A76C 8007E23C 21208002 */  addu       $a0, $s4, $zero
/* 8D3A770 8007E240 2C00A58E */  lw         $a1, 0x2C($s5)
/* 8D3A774 8007E244 0780023C */  lui        $v0, %hi(unk_ovlheader_80074398)
/* 8D3A778 8007E248 9843428C */  lw         $v0, %lo(unk_ovlheader_80074398)($v0)
/* 8D3A77C 8007E24C 00000000 */  nop
/* 8D3A780 8007E250 09F84000 */  jalr       $v0
/* 8D3A784 8007E254 0800A626 */   addiu     $a2, $s5, 0x8
/* 8D3A788 8007E258 01000424 */  addiu      $a0, $zero, 0x1
/* 8D3A78C 8007E25C 3A000524 */  addiu      $a1, $zero, 0x3A
/* 8D3A790 8007E260 21300002 */  addu       $a2, $s0, $zero
/* 8D3A794 8007E264 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8D3A798 8007E268 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8D3A79C 8007E26C 00000000 */  nop
/* 8D3A7A0 8007E270 09F84000 */  jalr       $v0
/* 8D3A7A4 8007E274 3000A727 */   addiu     $a3, $sp, 0x30
/* 8D3A7A8 8007E278 21200002 */  addu       $a0, $s0, $zero
/* 8D3A7AC 8007E27C DA60000C */  jal        func_80018368
/* 8D3A7B0 8007E280 21282002 */   addu      $a1, $s1, $zero
/* 8D3A7B4 8007E284 A0004010 */  beqz       $v0, .Llevel_45_8007E508
/* 8D3A7B8 8007E288 21202002 */   addu      $a0, $s1, $zero
/* 8D3A7BC 8007E28C 5E3C010C */  jal        func_8004F178
/* 8D3A7C0 8007E290 21280002 */   addu      $a1, $s0, $zero
/* 8D3A7C4 8007E294 21980000 */  addu       $s3, $zero, $zero
/* 8D3A7C8 8007E298 21900002 */  addu       $s2, $s0, $zero
/* 8D3A7CC 8007E29C 21B00000 */  addu       $s6, $zero, $zero
.Llevel_45_8007E2A0:
/* 8D3A7D0 8007E2A0 0780023C */  lui        $v0, %hi(D_8006C578)
/* 8D3A7D4 8007E2A4 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 8D3A7D8 8007E2A8 0780033C */  lui        $v1, %hi(D_8006C574)
/* 8D3A7DC 8007E2AC 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 8D3A7E0 8007E2B0 00000000 */  nop
/* 8D3A7E4 8007E2B4 23104300 */  subu       $v0, $v0, $v1
/* 8D3A7E8 8007E2B8 15004228 */  slti       $v0, $v0, 0x15
/* 8D3A7EC 8007E2BC 49004014 */  bnez       $v0, .Llevel_45_8007E3E4
/* 8D3A7F0 8007E2C0 CB020424 */   addiu     $a0, $zero, 0x2CB
/* 8D3A7F4 8007E2C4 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8D3A7F8 8007E2C8 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8D3A7FC 8007E2CC 00000000 */  nop
/* 8D3A800 8007E2D0 09F84000 */  jalr       $v0
/* 8D3A804 8007E2D4 21288002 */   addu      $a1, $s4, $zero
/* 8D3A808 8007E2D8 21884000 */  addu       $s1, $v0, $zero
/* 8D3A80C 8007E2DC 25002012 */  beqz       $s1, .Llevel_45_8007E374
/* 8D3A810 8007E2E0 3F000224 */   addiu     $v0, $zero, 0x3F
/* 8D3A814 8007E2E4 4C0022A2 */  sb         $v0, 0x4C($s1)
/* 8D3A818 8007E2E8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 8D3A81C 8007E2EC 21204002 */  addu       $a0, $s2, $zero
/* 8D3A820 8007E2F0 3C0033A2 */  sb         $s3, 0x3C($s1)
/* 8D3A824 8007E2F4 4A0022A2 */  sb         $v0, 0x4A($s1)
/* 8D3A828 8007E2F8 3000A58E */  lw         $a1, 0x30($s5)
/* 8D3A82C 8007E2FC 0000308E */  lw         $s0, 0x0($s1)
/* 8D3A830 8007E300 5E3C010C */  jal        func_8004F178
/* 8D3A834 8007E304 2128B600 */   addu      $a1, $a1, $s6
/* 8D3A838 8007E308 20008426 */  addiu      $a0, $s4, 0x20
/* 8D3A83C 8007E30C 21284002 */  addu       $a1, $s2, $zero
/* 8D3A840 8007E310 5B3B010C */  jal        func_8004ED6C
/* 8D3A844 8007E314 21304002 */   addu      $a2, $s2, $zero
/* 8D3A848 8007E318 0C002426 */  addiu      $a0, $s1, 0xC
/* 8D3A84C 8007E31C 21288000 */  addu       $a1, $a0, $zero
/* 8D3A850 8007E320 653C010C */  jal        func_8004F194
/* 8D3A854 8007E324 21304002 */   addu      $a2, $s2, $zero
/* 8D3A858 8007E328 21204002 */  addu       $a0, $s2, $zero
/* 8D3A85C 8007E32C 7A3B010C */  jal        func_8004EDE8
/* 8D3A860 8007E330 01000524 */   addiu     $a1, $zero, 0x1
/* 8D3A864 8007E334 21204002 */  addu       $a0, $s2, $zero
/* 8D3A868 8007E338 0800A68E */  lw         $a2, 0x8($s5)
/* 8D3A86C 8007E33C 233C010C */  jal        func_8004F08C
/* 8D3A870 8007E340 21284000 */   addu      $a1, $v0, $zero
/* 8D3A874 8007E344 2000A28F */  lw         $v0, 0x20($sp)
/* 8D3A878 8007E348 00000000 */  nop
/* 8D3A87C 8007E34C 000002A6 */  sh         $v0, 0x0($s0)
/* 8D3A880 8007E350 2400A28F */  lw         $v0, 0x24($sp)
/* 8D3A884 8007E354 00000000 */  nop
/* 8D3A888 8007E358 020002A6 */  sh         $v0, 0x2($s0)
/* 8D3A88C 8007E35C 2800A287 */  lh         $v0, 0x28($sp)
/* 8D3A890 8007E360 00000000 */  nop
/* 8D3A894 8007E364 02004104 */  bgez       $v0, .Llevel_45_8007E370
/* 8D3A898 8007E368 00000000 */   nop
/* 8D3A89C 8007E36C 23100200 */  negu       $v0, $v0
.Llevel_45_8007E370:
/* 8D3A8A0 8007E370 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_45_8007E374:
/* 8D3A8A4 8007E374 01007326 */  addiu      $s3, $s3, 0x1
/* 8D3A8A8 8007E378 0300622A */  slti       $v0, $s3, 0x3
/* 8D3A8AC 8007E37C C8FF4014 */  bnez       $v0, .Llevel_45_8007E2A0
/* 8D3A8B0 8007E380 0C00D626 */   addiu     $s6, $s6, 0xC
/* 8D3A8B4 8007E384 0780023C */  lui        $v0, %hi(D_8006C578)
/* 8D3A8B8 8007E388 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 8D3A8BC 8007E38C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 8D3A8C0 8007E390 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 8D3A8C4 8007E394 00000000 */  nop
/* 8D3A8C8 8007E398 23104300 */  subu       $v0, $v0, $v1
/* 8D3A8CC 8007E39C 15004228 */  slti       $v0, $v0, 0x15
/* 8D3A8D0 8007E3A0 10004014 */  bnez       $v0, .Llevel_45_8007E3E4
/* 8D3A8D4 8007E3A4 00000000 */   nop
/* 8D3A8D8 8007E3A8 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 8D3A8DC 8007E3AC E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 8D3A8E0 8007E3B0 00000000 */  nop
/* 8D3A8E4 8007E3B4 31754228 */  slti       $v0, $v0, 0x7531
/* 8D3A8E8 8007E3B8 0A004014 */  bnez       $v0, .Llevel_45_8007E3E4
/* 8D3A8EC 8007E3BC 46010424 */   addiu     $a0, $zero, 0x146
/* 8D3A8F0 8007E3C0 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8D3A8F4 8007E3C4 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8D3A8F8 8007E3C8 00000000 */  nop
/* 8D3A8FC 8007E3CC 09F84000 */  jalr       $v0
/* 8D3A900 8007E3D0 21288002 */   addu      $a1, $s4, $zero
/* 8D3A904 8007E3D4 21184000 */  addu       $v1, $v0, $zero
/* 8D3A908 8007E3D8 02006010 */  beqz       $v1, .Llevel_45_8007E3E4
/* 8D3A90C 8007E3DC 07000224 */   addiu     $v0, $zero, 0x7
/* 8D3A910 8007E3E0 470062A0 */  sb         $v0, 0x47($v1)
.Llevel_45_8007E3E4:
/* 8D3A914 8007E3E4 0780023C */  lui        $v0, %hi(D_8006C578)
/* 8D3A918 8007E3E8 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 8D3A91C 8007E3EC 0780033C */  lui        $v1, %hi(D_8006C574)
/* 8D3A920 8007E3F0 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 8D3A924 8007E3F4 00000000 */  nop
/* 8D3A928 8007E3F8 23104300 */  subu       $v0, $v0, $v1
/* 8D3A92C 8007E3FC 15004228 */  slti       $v0, $v0, 0x15
/* 8D3A930 8007E400 35004014 */  bnez       $v0, .Llevel_45_8007E4D8
/* 8D3A934 8007E404 21980000 */   addu      $s3, $zero, $zero
/* 8D3A938 8007E408 0780163C */  lui        $s6, %hi(D_8006E020)
/* 8D3A93C 8007E40C 20E0D626 */  addiu      $s6, $s6, %lo(D_8006E020)
/* 8D3A940 8007E410 21900000 */  addu       $s2, $zero, $zero
.Llevel_45_8007E414:
/* 8D3A944 8007E414 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 8D3A948 8007E418 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 8D3A94C 8007E41C 00000000 */  nop
/* 8D3A950 8007E420 31754228 */  slti       $v0, $v0, 0x7531
/* 8D3A954 8007E424 2C004014 */  bnez       $v0, .Llevel_45_8007E4D8
/* 8D3A958 8007E428 1D020424 */   addiu     $a0, $zero, 0x21D
/* 8D3A95C 8007E42C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8D3A960 8007E430 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8D3A964 8007E434 00000000 */  nop
/* 8D3A968 8007E438 09F84000 */  jalr       $v0
/* 8D3A96C 8007E43C 21288002 */   addu      $a1, $s4, $zero
/* 8D3A970 8007E440 21884000 */  addu       $s1, $v0, $zero
/* 8D3A974 8007E444 17002012 */  beqz       $s1, .Llevel_45_8007E4A4
/* 8D3A978 8007E448 21300000 */   addu      $a2, $zero, $zero
/* 8D3A97C 8007E44C 0C00838E */  lw         $v1, 0xC($s4)
/* 8D3A980 8007E450 0000C48E */  lw         $a0, 0x0($s6)
/* 8D3A984 8007E454 1000828E */  lw         $v0, 0x10($s4)
/* 8D3A988 8007E458 0400C58E */  lw         $a1, 0x4($s6)
/* 8D3A98C 8007E45C 23206400 */  subu       $a0, $v1, $a0
/* 8D3A990 8007E460 203A010C */  jal        func_8004E880
/* 8D3A994 8007E464 23284500 */   subu      $a1, $v0, $a1
/* 8D3A998 8007E468 9171010C */  jal        rand
/* 8D3A99C 8007E46C 21804000 */   addu      $s0, $v0, $zero
/* 8D3A9A0 8007E470 40001026 */  addiu      $s0, $s0, 0x40
/* 8D3A9A4 8007E474 1F004230 */  andi       $v0, $v0, 0x1F
/* 8D3A9A8 8007E478 21800202 */  addu       $s0, $s0, $v0
/* 8D3A9AC 8007E47C 9171010C */  jal        rand
/* 8D3A9B0 8007E480 460030A2 */   sb        $s0, 0x46($s1)
/* 8D3A9B4 8007E484 1E004230 */  andi       $v0, $v0, 0x1E
/* 8D3A9B8 8007E488 21104202 */  addu       $v0, $s2, $v0
/* 8D3A9BC 8007E48C F1FF4224 */  addiu      $v0, $v0, -0xF
/* 8D3A9C0 8007E490 450022A2 */  sb         $v0, 0x45($s1)
/* 8D3A9C4 8007E494 08000224 */  addiu      $v0, $zero, 0x8
/* 8D3A9C8 8007E498 470022A2 */  sb         $v0, 0x47($s1)
/* 8D3A9CC 8007E49C 2A000224 */  addiu      $v0, $zero, 0x2A
/* 8D3A9D0 8007E4A0 4C0022A2 */  sb         $v0, 0x4C($s1)
.Llevel_45_8007E4A4:
/* 8D3A9D4 8007E4A4 01007326 */  addiu      $s3, $s3, 0x1
/* 8D3A9D8 8007E4A8 0500622A */  slti       $v0, $s3, 0x5
/* 8D3A9DC 8007E4AC 0A004010 */  beqz       $v0, .Llevel_45_8007E4D8
/* 8D3A9E0 8007E4B0 33005226 */   addiu     $s2, $s2, 0x33
/* 8D3A9E4 8007E4B4 0780023C */  lui        $v0, %hi(D_8006C578)
/* 8D3A9E8 8007E4B8 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 8D3A9EC 8007E4BC 0780033C */  lui        $v1, %hi(D_8006C574)
/* 8D3A9F0 8007E4C0 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 8D3A9F4 8007E4C4 00000000 */  nop
/* 8D3A9F8 8007E4C8 23104300 */  subu       $v0, $v0, $v1
/* 8D3A9FC 8007E4CC 15004228 */  slti       $v0, $v0, 0x15
/* 8D3AA00 8007E4D0 D0FF4010 */  beqz       $v0, .Llevel_45_8007E414
/* 8D3AA04 8007E4D4 00000000 */   nop
.Llevel_45_8007E4D8:
/* 8D3AA08 8007E4D8 21208002 */  addu       $a0, $s4, $zero
/* 8D3AA0C 8007E4DC 03000524 */  addiu      $a1, $zero, 0x3
/* 8D3AA10 8007E4E0 AFEE000C */  jal        func_8003BABC
/* 8D3AA14 8007E4E4 01000624 */   addiu     $a2, $zero, 0x1
/* 8D3AA18 8007E4E8 78000224 */  addiu      $v0, $zero, 0x78
/* 8D3AA1C 8007E4EC 410080A2 */  sb         $zero, 0x41($s4)
/* 8D3AA20 8007E4F0 4C0080A2 */  sb         $zero, 0x4C($s4)
/* 8D3AA24 8007E4F4 4D0080A2 */  sb         $zero, 0x4D($s4)
/* 8D3AA28 8007E4F8 0000A2AE */  sw         $v0, 0x0($s5)
/* 8D3AA2C 8007E4FC 03000224 */  addiu      $v0, $zero, 0x3
/* 8D3AA30 8007E500 CDF90108 */  j          .Llevel_45_8007E734
/* 8D3AA34 8007E504 480082A2 */   sb        $v0, 0x48($s4)
.Llevel_45_8007E508:
/* 8D3AA38 8007E508 3400A58E */  lw         $a1, 0x34($s5)
/* 8D3AA3C 8007E50C F0EF000C */  jal        func_8003BFC0
/* 8D3AA40 8007E510 21208002 */   addu      $a0, $s4, $zero
/* 8D3AA44 8007E514 05004014 */  bnez       $v0, .Llevel_45_8007E52C
/* 8D3AA48 8007E518 21208002 */   addu      $a0, $s4, $zero
/* 8D3AA4C 8007E51C 21280000 */  addu       $a1, $zero, $zero
/* 8D3AA50 8007E520 AFEE000C */  jal        func_8003BABC
/* 8D3AA54 8007E524 04000624 */   addiu     $a2, $zero, 0x4
/* 8D3AA58 8007E528 3400A2AE */  sw         $v0, 0x34($s5)
.Llevel_45_8007E52C:
/* 8D3AA5C 8007E52C 3800A58E */  lw         $a1, 0x38($s5)
/* 8D3AA60 8007E530 F0EF000C */  jal        func_8003BFC0
/* 8D3AA64 8007E534 21208002 */   addu      $a0, $s4, $zero
/* 8D3AA68 8007E538 7E004014 */  bnez       $v0, .Llevel_45_8007E734
/* 8D3AA6C 8007E53C 21208002 */   addu      $a0, $s4, $zero
/* 8D3AA70 8007E540 02000524 */  addiu      $a1, $zero, 0x2
/* 8D3AA74 8007E544 AFEE000C */  jal        func_8003BABC
/* 8D3AA78 8007E548 04000624 */   addiu     $a2, $zero, 0x4
/* 8D3AA7C 8007E54C CDF90108 */  j          .Llevel_45_8007E734
/* 8D3AA80 8007E550 3800A2AE */   sw        $v0, 0x38($s5)
.Llevel_45_8007E554:
/* 8D3AA84 8007E554 3400A58E */  lw         $a1, 0x34($s5)
/* 8D3AA88 8007E558 F0EF000C */  jal        func_8003BFC0
/* 8D3AA8C 8007E55C 21208002 */   addu      $a0, $s4, $zero
/* 8D3AA90 8007E560 0B004010 */  beqz       $v0, .Llevel_45_8007E590
/* 8D3AA94 8007E564 00000000 */   nop
/* 8D3AA98 8007E568 3400A58E */  lw         $a1, 0x34($s5)
/* 8D3AA9C 8007E56C F0EF000C */  jal        func_8003BFC0
/* 8D3AAA0 8007E570 21208002 */   addu      $a0, $s4, $zero
/* 8D3AAA4 8007E574 05004010 */  beqz       $v0, .Llevel_45_8007E58C
/* 8D3AAA8 8007E578 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 8D3AAAC 8007E57C 3400A48E */  lw         $a0, 0x34($s5)
/* 8D3AAB0 8007E580 9CEF000C */  jal        func_8003BE70
/* 8D3AAB4 8007E584 00000000 */   nop
/* 8D3AAB8 8007E588 FFFF0224 */  addiu      $v0, $zero, -0x1
.Llevel_45_8007E58C:
/* 8D3AABC 8007E58C 3400A2AE */  sw         $v0, 0x34($s5)
.Llevel_45_8007E590:
/* 8D3AAC0 8007E590 3800A58E */  lw         $a1, 0x38($s5)
/* 8D3AAC4 8007E594 F0EF000C */  jal        func_8003BFC0
/* 8D3AAC8 8007E598 21208002 */   addu      $a0, $s4, $zero
/* 8D3AACC 8007E59C 0B004010 */  beqz       $v0, .Llevel_45_8007E5CC
/* 8D3AAD0 8007E5A0 00000000 */   nop
/* 8D3AAD4 8007E5A4 3800A58E */  lw         $a1, 0x38($s5)
/* 8D3AAD8 8007E5A8 F0EF000C */  jal        func_8003BFC0
/* 8D3AADC 8007E5AC 21208002 */   addu      $a0, $s4, $zero
/* 8D3AAE0 8007E5B0 05004010 */  beqz       $v0, .Llevel_45_8007E5C8
/* 8D3AAE4 8007E5B4 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 8D3AAE8 8007E5B8 3800A48E */  lw         $a0, 0x38($s5)
/* 8D3AAEC 8007E5BC 9CEF000C */  jal        func_8003BE70
/* 8D3AAF0 8007E5C0 00000000 */   nop
/* 8D3AAF4 8007E5C4 FFFF0224 */  addiu      $v0, $zero, -0x1
.Llevel_45_8007E5C8:
/* 8D3AAF8 8007E5C8 3800A2AE */  sw         $v0, 0x38($s5)
.Llevel_45_8007E5CC:
/* 8D3AAFC 8007E5CC 0000A28E */  lw         $v0, 0x0($s5)
/* 8D3AB00 8007E5D0 00000000 */  nop
/* 8D3AB04 8007E5D4 51004228 */  slti       $v0, $v0, 0x51
/* 8D3AB08 8007E5D8 50004014 */  bnez       $v0, .Llevel_45_8007E71C
/* 8D3AB0C 8007E5DC 2120A002 */   addu      $a0, $s5, $zero
/* 8D3AB10 8007E5E0 21900000 */  addu       $s2, $zero, $zero
/* 8D3AB14 8007E5E4 5000B327 */  addiu      $s3, $sp, 0x50
/* 8D3AB18 8007E5E8 3000B127 */  addiu      $s1, $sp, 0x30
/* 8D3AB1C 8007E5EC 4000B027 */  addiu      $s0, $sp, 0x40
.Llevel_45_8007E5F0:
/* 8D3AB20 8007E5F0 9171010C */  jal        rand
/* 8D3AB24 8007E5F4 6800A0A3 */   sb        $zero, 0x68($sp)
/* 8D3AB28 8007E5F8 9171010C */  jal        rand
/* 8D3AB2C 8007E5FC 6900A2A3 */   sb        $v0, 0x69($sp)
/* 8D3AB30 8007E600 6800A427 */  addiu      $a0, $sp, 0x68
/* 8D3AB34 8007E604 21286002 */  addu       $a1, $s3, $zero
/* 8D3AB38 8007E608 21300000 */  addu       $a2, $zero, $zero
/* 8D3AB3C 8007E60C A43A010C */  jal        func_8004EA90
/* 8D3AB40 8007E610 6A00A2A3 */   sb        $v0, 0x6A($sp)
/* 8D3AB44 8007E614 9171010C */  jal        rand
/* 8D3AB48 8007E618 01005226 */   addiu     $s2, $s2, 0x1
/* 8D3AB4C 8007E61C 21206002 */  addu       $a0, $s3, $zero
/* 8D3AB50 8007E620 21282002 */  addu       $a1, $s1, $zero
/* 8D3AB54 8007E624 21302002 */  addu       $a2, $s1, $zero
/* 8D3AB58 8007E628 1F004230 */  andi       $v0, $v0, 0x1F
/* 8D3AB5C 8007E62C 64004224 */  addiu      $v0, $v0, 0x64
/* 8D3AB60 8007E630 3000A2AF */  sw         $v0, 0x30($sp)
/* 8D3AB64 8007E634 3400A0AF */  sw         $zero, 0x34($sp)
/* 8D3AB68 8007E638 5B3B010C */  jal        func_8004ED6C
/* 8D3AB6C 8007E63C 3800A0AF */   sw        $zero, 0x38($sp)
/* 8D3AB70 8007E640 21200002 */  addu       $a0, $s0, $zero
/* 8D3AB74 8007E644 5E3C010C */  jal        func_8004F178
/* 8D3AB78 8007E648 21282002 */   addu      $a1, $s1, $zero
/* 8D3AB7C 8007E64C 21200002 */  addu       $a0, $s0, $zero
/* 8D3AB80 8007E650 3A3C010C */  jal        func_8004F0E8
/* 8D3AB84 8007E654 02000524 */   addiu     $a1, $zero, 0x2
/* 8D3AB88 8007E658 21200002 */  addu       $a0, $s0, $zero
/* 8D3AB8C 8007E65C 21280002 */  addu       $a1, $s0, $zero
/* 8D3AB90 8007E660 653C010C */  jal        func_8004F194
/* 8D3AB94 8007E664 0C008626 */   addiu     $a2, $s4, 0xC
/* 8D3AB98 8007E668 01000424 */  addiu      $a0, $zero, 0x1
/* 8D3AB9C 8007E66C 3A000524 */  addiu      $a1, $zero, 0x3A
/* 8D3ABA0 8007E670 21300002 */  addu       $a2, $s0, $zero
/* 8D3ABA4 8007E674 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8D3ABA8 8007E678 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8D3ABAC 8007E67C 00000000 */  nop
/* 8D3ABB0 8007E680 09F84000 */  jalr       $v0
/* 8D3ABB4 8007E684 21382002 */   addu      $a3, $s1, $zero
/* 8D3ABB8 8007E688 0400422A */  slti       $v0, $s2, 0x4
/* 8D3ABBC 8007E68C D8FF4014 */  bnez       $v0, .Llevel_45_8007E5F0
/* 8D3ABC0 8007E690 00000000 */   nop
/* 8D3ABC4 8007E694 0780023C */  lui        $v0, %hi(D_8006C640)
/* 8D3ABC8 8007E698 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 8D3ABCC 8007E69C 00000000 */  nop
/* 8D3ABD0 8007E6A0 01004230 */  andi       $v0, $v0, 0x1
/* 8D3ABD4 8007E6A4 1D004014 */  bnez       $v0, .Llevel_45_8007E71C
/* 8D3ABD8 8007E6A8 2120A002 */   addu      $a0, $s5, $zero
/* 8D3ABDC 8007E6AC 0780023C */  lui        $v0, %hi(D_8006C578)
/* 8D3ABE0 8007E6B0 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 8D3ABE4 8007E6B4 0780033C */  lui        $v1, %hi(D_8006C574)
/* 8D3ABE8 8007E6B8 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 8D3ABEC 8007E6BC 00000000 */  nop
/* 8D3ABF0 8007E6C0 23104300 */  subu       $v0, $v0, $v1
/* 8D3ABF4 8007E6C4 15004228 */  slti       $v0, $v0, 0x15
/* 8D3ABF8 8007E6C8 14004014 */  bnez       $v0, .Llevel_45_8007E71C
/* 8D3ABFC 8007E6CC 00000000 */   nop
/* 8D3AC00 8007E6D0 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 8D3AC04 8007E6D4 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 8D3AC08 8007E6D8 00000000 */  nop
/* 8D3AC0C 8007E6DC 31754228 */  slti       $v0, $v0, 0x7531
/* 8D3AC10 8007E6E0 0E004014 */  bnez       $v0, .Llevel_45_8007E71C
/* 8D3AC14 8007E6E4 00000000 */   nop
/* 8D3AC18 8007E6E8 E2010424 */  addiu      $a0, $zero, 0x1E2
/* 8D3AC1C 8007E6EC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8D3AC20 8007E6F0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8D3AC24 8007E6F4 00000000 */  nop
/* 8D3AC28 8007E6F8 09F84000 */  jalr       $v0
/* 8D3AC2C 8007E6FC 21288002 */   addu      $a1, $s4, $zero
/* 8D3AC30 8007E700 21184000 */  addu       $v1, $v0, $zero
/* 8D3AC34 8007E704 04006010 */  beqz       $v1, .Llevel_45_8007E718
/* 8D3AC38 8007E708 2A000224 */   addiu     $v0, $zero, 0x2A
/* 8D3AC3C 8007E70C 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 8D3AC40 8007E710 0A000224 */  addiu      $v0, $zero, 0xA
/* 8D3AC44 8007E714 470062A0 */  sb         $v0, 0x47($v1)
.Llevel_45_8007E718:
/* 8D3AC48 8007E718 2120A002 */  addu       $a0, $s5, $zero
.Llevel_45_8007E71C:
/* 8D3AC4C 8007E71C 69D6000C */  jal        func_800359A4
/* 8D3AC50 8007E720 04000524 */   addiu     $a1, $zero, 0x4
/* 8D3AC54 8007E724 03004010 */  beqz       $v0, .Llevel_45_8007E734
/* 8D3AC58 8007E728 00000000 */   nop
/* 8D3AC5C 8007E72C C656010C */  jal        func_80055B18
/* 8D3AC60 8007E730 21208002 */   addu      $a0, $s4, $zero
.Llevel_45_8007E734:
/* 8D3AC64 8007E734 8C00BF8F */  lw         $ra, 0x8C($sp)
/* 8D3AC68 8007E738 8800B68F */  lw         $s6, 0x88($sp)
/* 8D3AC6C 8007E73C 8400B58F */  lw         $s5, 0x84($sp)
/* 8D3AC70 8007E740 8000B48F */  lw         $s4, 0x80($sp)
/* 8D3AC74 8007E744 7C00B38F */  lw         $s3, 0x7C($sp)
/* 8D3AC78 8007E748 7800B28F */  lw         $s2, 0x78($sp)
/* 8D3AC7C 8007E74C 7400B18F */  lw         $s1, 0x74($sp)
/* 8D3AC80 8007E750 7000B08F */  lw         $s0, 0x70($sp)
/* 8D3AC84 8007E754 9000BD27 */  addiu      $sp, $sp, 0x90
/* 8D3AC88 8007E758 0800E003 */  jr         $ra
/* 8D3AC8C 8007E75C 00000000 */   nop
.size func_level_45_8007DFBC, . - func_level_45_8007DFBC
