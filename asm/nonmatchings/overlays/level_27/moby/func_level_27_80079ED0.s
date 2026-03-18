.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_27_80079ED0
/* 63EE400 80079ED0 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 63EE404 80079ED4 2400B1AF */  sw         $s1, 0x24($sp)
/* 63EE408 80079ED8 21888000 */  addu       $s1, $a0, $zero
/* 63EE40C 80079EDC 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 63EE410 80079EE0 2800B2AF */  sw         $s2, 0x28($sp)
/* 63EE414 80079EE4 2000B0AF */  sw         $s0, 0x20($sp)
/* 63EE418 80079EE8 48002292 */  lbu        $v0, 0x48($s1)
/* 63EE41C 80079EEC 0000328E */  lw         $s2, 0x0($s1)
/* 63EE420 80079EF0 0200422C */  sltiu      $v0, $v0, 0x2
/* 63EE424 80079EF4 3A004010 */  beqz       $v0, .Llevel_27_80079FE0
/* 63EE428 80079EF8 00000000 */   nop
/* 63EE42C 80079EFC 1800228E */  lw         $v0, 0x18($s1)
/* 63EE430 80079F00 00000000 */  nop
/* 63EE434 80079F04 36004010 */  beqz       $v0, .Llevel_27_80079FE0
/* 63EE438 80079F08 00000000 */   nop
/* 63EE43C 80079F0C 21800000 */  addu       $s0, $zero, $zero
.Llevel_27_80079F10:
/* 63EE440 80079F10 0780023C */  lui        $v0, %hi(D_8006C578)
/* 63EE444 80079F14 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 63EE448 80079F18 0780033C */  lui        $v1, %hi(D_8006C574)
/* 63EE44C 80079F1C 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 63EE450 80079F20 00000000 */  nop
/* 63EE454 80079F24 23104300 */  subu       $v0, $v0, $v1
/* 63EE458 80079F28 15004228 */  slti       $v0, $v0, 0x15
/* 63EE45C 80079F2C 0A004014 */  bnez       $v0, .Llevel_27_80079F58
/* 63EE460 80079F30 C0010424 */   addiu     $a0, $zero, 0x1C0
/* 63EE464 80079F34 21282002 */  addu       $a1, $s1, $zero
/* 63EE468 80079F38 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 63EE46C 80079F3C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 63EE470 80079F40 00000000 */  nop
/* 63EE474 80079F44 09F84000 */  jalr       $v0
/* 63EE478 80079F48 01001026 */   addiu     $s0, $s0, 0x1
/* 63EE47C 80079F4C 0A00022A */  slti       $v0, $s0, 0xA
/* 63EE480 80079F50 EFFF4014 */  bnez       $v0, .Llevel_27_80079F10
/* 63EE484 80079F54 00000000 */   nop
.Llevel_27_80079F58:
/* 63EE488 80079F58 51002292 */  lbu        $v0, 0x51($s1)
/* 63EE48C 80079F5C 00000000 */  nop
/* 63EE490 80079F60 12004014 */  bnez       $v0, .Llevel_27_80079FAC
/* 63EE494 80079F64 10000424 */   addiu     $a0, $zero, 0x10
/* 63EE498 80079F68 21300000 */  addu       $a2, $zero, $zero
/* 63EE49C 80079F6C 0C00238E */  lw         $v1, 0xC($s1)
/* 63EE4A0 80079F70 0780043C */  lui        $a0, %hi(D_80070328)
/* 63EE4A4 80079F74 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 63EE4A8 80079F78 1000228E */  lw         $v0, 0x10($s1)
/* 63EE4AC 80079F7C 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 63EE4B0 80079F80 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 63EE4B4 80079F84 23206400 */  subu       $a0, $v1, $a0
/* 63EE4B8 80079F88 203A010C */  jal        func_8004E880
/* 63EE4BC 80079F8C 23284500 */   subu      $a1, $v0, $a1
/* 63EE4C0 80079F90 21204000 */  addu       $a0, $v0, $zero
/* 63EE4C4 80079F94 20000624 */  addiu      $a2, $zero, 0x20
/* 63EE4C8 80079F98 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 63EE4CC 80079F9C 3603A590 */  lbu        $a1, %lo(D_80070328 + 0xE)($a1)
/* 63EE4D0 80079FA0 3ED8000C */  jal        func_800360F8
/* 63EE4D4 80079FA4 40000724 */   addiu     $a3, $zero, 0x40
/* 63EE4D8 80079FA8 10000424 */  addiu      $a0, $zero, 0x10
.Llevel_27_80079FAC:
/* 63EE4DC 80079FAC 21282002 */  addu       $a1, $s1, $zero
/* 63EE4E0 80079FB0 040042AE */  sw         $v0, 0x4($s2)
/* 63EE4E4 80079FB4 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 63EE4E8 80079FB8 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 63EE4EC 80079FBC FA000324 */  addiu      $v1, $zero, 0xFA
/* 63EE4F0 80079FC0 000043AE */  sw         $v1, 0x0($s2)
/* 63EE4F4 80079FC4 09F84000 */  jalr       $v0
/* 63EE4F8 80079FC8 080040AE */   sw        $zero, 0x8($s2)
/* 63EE4FC 80079FCC 21202002 */  addu       $a0, $s1, $zero
/* 63EE500 80079FD0 02000524 */  addiu      $a1, $zero, 0x2
/* 63EE504 80079FD4 02000224 */  addiu      $v0, $zero, 0x2
/* 63EE508 80079FD8 D0D3000C */  jal        func_80034F40
/* 63EE50C 80079FDC 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_27_80079FE0:
/* 63EE510 80079FE0 0680043C */  lui        $a0, %hi(D_80066EEC + 4)
/* 63EE514 80079FE4 F06E8424 */  addiu      $a0, $a0, %lo(D_80066EEC + 4)
/* 63EE518 80079FE8 0000828C */  lw         $v0, 0x0($a0)
/* 63EE51C 80079FEC 0780033C */  lui        $v1, %hi(D_8006C648)
/* 63EE520 80079FF0 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 63EE524 80079FF4 00000000 */  nop
/* 63EE528 80079FF8 21104300 */  addu       $v0, $v0, $v1
/* 63EE52C 80079FFC 000082AC */  sw         $v0, 0x0($a0)
/* 63EE530 8007A000 31754228 */  slti       $v0, $v0, 0x7531
/* 63EE534 8007A004 02004014 */  bnez       $v0, .Llevel_27_8007A010
/* 63EE538 8007A008 30750224 */   addiu     $v0, $zero, 0x7530
/* 63EE53C 8007A00C 000082AC */  sw         $v0, 0x0($a0)
.Llevel_27_8007A010:
/* 63EE540 8007A010 49002392 */  lbu        $v1, 0x49($s1)
/* 63EE544 8007A014 00000000 */  nop
/* 63EE548 8007A018 FF00622C */  sltiu      $v0, $v1, 0xFF
/* 63EE54C 8007A01C 03004010 */  beqz       $v0, .Llevel_27_8007A02C
/* 63EE550 8007A020 180020AE */   sw        $zero, 0x18($s1)
/* 63EE554 8007A024 01006224 */  addiu      $v0, $v1, 0x1
/* 63EE558 8007A028 490022A2 */  sb         $v0, 0x49($s1)
.Llevel_27_8007A02C:
/* 63EE55C 8007A02C 48002392 */  lbu        $v1, 0x48($s1)
/* 63EE560 8007A030 01000624 */  addiu      $a2, $zero, 0x1
/* 63EE564 8007A034 2A006610 */  beq        $v1, $a2, .Llevel_27_8007A0E0
/* 63EE568 8007A038 02006228 */   slti      $v0, $v1, 0x2
/* 63EE56C 8007A03C 05004010 */  beqz       $v0, .Llevel_27_8007A054
/* 63EE570 8007A040 00000000 */   nop
/* 63EE574 8007A044 0A006010 */  beqz       $v1, .Llevel_27_8007A070
/* 63EE578 8007A048 16004426 */   addiu     $a0, $s2, 0x16
/* 63EE57C 8007A04C 83E80108 */  j          .Llevel_27_8007A20C
/* 63EE580 8007A050 21202002 */   addu      $a0, $s1, $zero
.Llevel_27_8007A054:
/* 63EE584 8007A054 02000224 */  addiu      $v0, $zero, 0x2
/* 63EE588 8007A058 45006210 */  beq        $v1, $v0, .Llevel_27_8007A170
/* 63EE58C 8007A05C 0A000224 */   addiu     $v0, $zero, 0xA
/* 63EE590 8007A060 5C006210 */  beq        $v1, $v0, .Llevel_27_8007A1D4
/* 63EE594 8007A064 38FF0224 */   addiu     $v0, $zero, -0xC8
/* 63EE598 8007A068 83E80108 */  j          .Llevel_27_8007A20C
/* 63EE59C 8007A06C 21202002 */   addu      $a0, $s1, $zero
.Llevel_27_8007A070:
/* 63EE5A0 8007A070 69D6000C */  jal        func_800359A4
/* 63EE5A4 8007A074 01000524 */   addiu     $a1, $zero, 0x1
/* 63EE5A8 8007A078 05004010 */  beqz       $v0, .Llevel_27_8007A090
/* 63EE5AC 8007A07C 01000224 */   addiu     $v0, $zero, 0x1
/* 63EE5B0 8007A080 480022A2 */  sb         $v0, 0x48($s1)
/* 63EE5B4 8007A084 21202002 */  addu       $a0, $s1, $zero
/* 63EE5B8 8007A088 D0D3000C */  jal        func_80034F40
/* 63EE5BC 8007A08C 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_27_8007A090:
/* 63EE5C0 8007A090 21202002 */  addu       $a0, $s1, $zero
/* 63EE5C4 8007A094 21284002 */  addu       $a1, $s2, $zero
/* 63EE5C8 8007A098 5ADC000C */  jal        func_80037168
/* 63EE5CC 8007A09C 01000624 */   addiu     $a2, $zero, 0x1
/* 63EE5D0 8007A0A0 17004426 */  addiu      $a0, $s2, 0x17
/* 63EE5D4 8007A0A4 69D6000C */  jal        func_800359A4
/* 63EE5D8 8007A0A8 01000524 */   addiu     $a1, $zero, 0x1
/* 63EE5DC 8007A0AC 57004010 */  beqz       $v0, .Llevel_27_8007A20C
/* 63EE5E0 8007A0B0 21202002 */   addu      $a0, $s1, $zero
/* 63EE5E4 8007A0B4 9171010C */  jal        rand
/* 63EE5E8 8007A0B8 00000000 */   nop
/* 63EE5EC 8007A0BC 3F004230 */  andi       $v0, $v0, 0x3F
/* 63EE5F0 8007A0C0 78004224 */  addiu      $v0, $v0, 0x78
/* 63EE5F4 8007A0C4 170042A2 */  sb         $v0, 0x17($s2)
/* 63EE5F8 8007A0C8 21202002 */  addu       $a0, $s1, $zero
/* 63EE5FC 8007A0CC 03000524 */  addiu      $a1, $zero, 0x3
/* 63EE600 8007A0D0 AFEE000C */  jal        func_8003BABC
/* 63EE604 8007A0D4 21300000 */   addu      $a2, $zero, $zero
/* 63EE608 8007A0D8 83E80108 */  j          .Llevel_27_8007A20C
/* 63EE60C 8007A0DC 21202002 */   addu      $a0, $s1, $zero
.Llevel_27_8007A0E0:
/* 63EE610 8007A0E0 17004426 */  addiu      $a0, $s2, 0x17
/* 63EE614 8007A0E4 69D6000C */  jal        func_800359A4
/* 63EE618 8007A0E8 01000524 */   addiu     $a1, $zero, 0x1
/* 63EE61C 8007A0EC 13004010 */  beqz       $v0, .Llevel_27_8007A13C
/* 63EE620 8007A0F0 00000000 */   nop
/* 63EE624 8007A0F4 9171010C */  jal        rand
/* 63EE628 8007A0F8 00000000 */   nop
/* 63EE62C 8007A0FC 1F004230 */  andi       $v0, $v0, 0x1F
/* 63EE630 8007A100 50004224 */  addiu      $v0, $v0, 0x50
/* 63EE634 8007A104 9171010C */  jal        rand
/* 63EE638 8007A108 170042A2 */   sb        $v0, 0x17($s2)
/* 63EE63C 8007A10C 5555033C */  lui        $v1, (0x55555556 >> 16)
/* 63EE640 8007A110 56556334 */  ori        $v1, $v1, (0x55555556 & 0xFFFF)
/* 63EE644 8007A114 18004300 */  mult       $v0, $v1
/* 63EE648 8007A118 21202002 */  addu       $a0, $s1, $zero
/* 63EE64C 8007A11C 21300000 */  addu       $a2, $zero, $zero
/* 63EE650 8007A120 C31F0200 */  sra        $v1, $v0, 31
/* 63EE654 8007A124 10400000 */  mfhi       $t0
/* 63EE658 8007A128 23180301 */  subu       $v1, $t0, $v1
/* 63EE65C 8007A12C 40280300 */  sll        $a1, $v1, 1
/* 63EE660 8007A130 2128A300 */  addu       $a1, $a1, $v1
/* 63EE664 8007A134 AFEE000C */  jal        func_8003BABC
/* 63EE668 8007A138 23284500 */   subu      $a1, $v0, $a1
.Llevel_27_8007A13C:
/* 63EE66C 8007A13C 0780023C */  lui        $v0, %hi(D_8006C770)
/* 63EE670 8007A140 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 63EE674 8007A144 00000000 */  nop
/* 63EE678 8007A148 2F004010 */  beqz       $v0, .Llevel_27_8007A208
/* 63EE67C 8007A14C B4000424 */   addiu     $a0, $zero, 0xB4
/* 63EE680 8007A150 DBD8000C */  jal        func_8003636C
/* 63EE684 8007A154 FF000524 */   addiu     $a1, $zero, 0xFF
/* 63EE688 8007A158 21202002 */  addu       $a0, $s1, $zero
/* 63EE68C 8007A15C 21280000 */  addu       $a1, $zero, $zero
/* 63EE690 8007A160 160042A2 */  sb         $v0, 0x16($s2)
/* 63EE694 8007A164 170040A2 */  sb         $zero, 0x17($s2)
/* 63EE698 8007A168 80E80108 */  j          .Llevel_27_8007A200
/* 63EE69C 8007A16C 480020A2 */   sb        $zero, 0x48($s1)
.Llevel_27_8007A170:
/* 63EE6A0 8007A170 21202002 */  addu       $a0, $s1, $zero
/* 63EE6A4 8007A174 21284002 */  addu       $a1, $s2, $zero
/* 63EE6A8 8007A178 0C000224 */  addiu      $v0, $zero, 0xC
/* 63EE6AC 8007A17C 1000A2AF */  sw         $v0, 0x10($sp)
/* 63EE6B0 8007A180 2C010224 */  addiu      $v0, $zero, 0x12C
/* 63EE6B4 8007A184 1400A0AF */  sw         $zero, 0x14($sp)
/* 63EE6B8 8007A188 1800A2AF */  sw         $v0, 0x18($sp)
/* 63EE6BC 8007A18C 1C00A6AF */  sw         $a2, 0x1C($sp)
/* 63EE6C0 8007A190 0400A68C */  lw         $a2, 0x4($a1)
/* 63EE6C4 8007A194 0CD4000C */  jal        func_80035030
/* 63EE6C8 8007A198 0800A724 */   addiu     $a3, $a1, 0x8
/* 63EE6CC 8007A19C 0780023C */  lui        $v0, %hi(D_8006C770)
/* 63EE6D0 8007A1A0 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 63EE6D4 8007A1A4 00000000 */  nop
/* 63EE6D8 8007A1A8 17004010 */  beqz       $v0, .Llevel_27_8007A208
/* 63EE6DC 8007A1AC 21202002 */   addu      $a0, $s1, $zero
/* 63EE6E0 8007A1B0 4957010C */  jal        func_80055D24
/* 63EE6E4 8007A1B4 04000524 */   addiu     $a1, $zero, 0x4
/* 63EE6E8 8007A1B8 21202002 */  addu       $a0, $s1, $zero
/* 63EE6EC 8007A1BC 6EDA000C */  jal        func_800369B8
/* 63EE6F0 8007A1C0 28000524 */   addiu     $a1, $zero, 0x28
/* 63EE6F4 8007A1C4 C656010C */  jal        func_80055B18
/* 63EE6F8 8007A1C8 21202002 */   addu      $a0, $s1, $zero
/* 63EE6FC 8007A1CC 85E80108 */  j          .Llevel_27_8007A214
/* 63EE700 8007A1D0 00000000 */   nop
.Llevel_27_8007A1D4:
/* 63EE704 8007A1D4 1000A2AF */  sw         $v0, 0x10($sp)
/* 63EE708 8007A1D8 21202002 */  addu       $a0, $s1, $zero
/* 63EE70C 8007A1DC 08004526 */  addiu      $a1, $s2, 0x8
/* 63EE710 8007A1E0 04000624 */  addiu      $a2, $zero, 0x4
/* 63EE714 8007A1E4 98DE000C */  jal        func_80037A60
/* 63EE718 8007A1E8 10000724 */   addiu     $a3, $zero, 0x10
/* 63EE71C 8007A1EC 06004010 */  beqz       $v0, .Llevel_27_8007A208
/* 63EE720 8007A1F0 01000224 */   addiu     $v0, $zero, 0x1
/* 63EE724 8007A1F4 480022A2 */  sb         $v0, 0x48($s1)
/* 63EE728 8007A1F8 21202002 */  addu       $a0, $s1, $zero
/* 63EE72C 8007A1FC 01000524 */  addiu      $a1, $zero, 0x1
.Llevel_27_8007A200:
/* 63EE730 8007A200 D0D3000C */  jal        func_80034F40
/* 63EE734 8007A204 00000000 */   nop
.Llevel_27_8007A208:
/* 63EE738 8007A208 21202002 */  addu       $a0, $s1, $zero
.Llevel_27_8007A20C:
/* 63EE73C 8007A20C 4957010C */  jal        func_80055D24
/* 63EE740 8007A210 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_27_8007A214:
/* 63EE744 8007A214 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 63EE748 8007A218 2800B28F */  lw         $s2, 0x28($sp)
/* 63EE74C 8007A21C 2400B18F */  lw         $s1, 0x24($sp)
/* 63EE750 8007A220 2000B08F */  lw         $s0, 0x20($sp)
/* 63EE754 8007A224 3000BD27 */  addiu      $sp, $sp, 0x30
/* 63EE758 8007A228 0800E003 */  jr         $ra
/* 63EE75C 8007A22C 00000000 */   nop
.size func_level_27_80079ED0, . - func_level_27_80079ED0
