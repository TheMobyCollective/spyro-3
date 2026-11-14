.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_180_level_23
/* 5AA5404 80088ED4 0780023C */  lui        $v0, %hi(D_8006C640)
/* 5AA5408 80088ED8 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 5AA540C 80088EDC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 5AA5410 80088EE0 1400B1AF */  sw         $s1, 0x14($sp)
/* 5AA5414 80088EE4 21888000 */  addu       $s1, $a0, $zero
/* 5AA5418 80088EE8 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 5AA541C 80088EEC 1800B2AF */  sw         $s2, 0x18($sp)
/* 5AA5420 80088EF0 1000B0AF */  sw         $s0, 0x10($sp)
/* 5AA5424 80088EF4 0000328E */  lw         $s2, 0x0($s1)
/* 5AA5428 80088EF8 0A004228 */  slti       $v0, $v0, 0xA
/* 5AA542C 80088EFC 1C004010 */  beqz       $v0, .Llevel_23_80088F70
/* 5AA5430 80088F00 00000000 */   nop
/* 5AA5434 80088F04 0680023C */  lui        $v0, %hi(D_80066EAE + 0x4)
/* 5AA5438 80088F08 B26E4284 */  lh         $v0, %lo(D_80066EAE + 0x4)($v0)
/* 5AA543C 80088F0C 00000000 */  nop
/* 5AA5440 80088F10 0A004014 */  bnez       $v0, .Llevel_23_80088F3C
/* 5AA5444 80088F14 FC000524 */   addiu     $a1, $zero, 0xFC
/* 5AA5448 80088F18 0680023C */  lui        $v0, %hi(D_80066FCC + 0x2F)
/* 5AA544C 80088F1C FB6F4290 */  lbu        $v0, %lo(D_80066FCC + 0x2F)($v0)
/* 5AA5450 80088F20 0780013C */  lui        $at, %hi(D_80070300)
/* 5AA5454 80088F24 21082200 */  addu       $at, $at, $v0
/* 5AA5458 80088F28 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 5AA545C 80088F2C 00000000 */  nop
/* 5AA5460 80088F30 01004230 */  andi       $v0, $v0, 0x1
/* 5AA5464 80088F34 0E004010 */  beqz       $v0, .Llevel_23_80088F70
/* 5AA5468 80088F38 00000000 */   nop
.Llevel_23_80088F3C:
/* 5AA546C 80088F3C 3000448E */  lw         $a0, 0x30($s2)
/* 5AA5470 80088F40 B687000C */  jal        func_80021ED8
/* 5AA5474 80088F44 21300000 */   addu      $a2, $zero, $zero
/* 5AA5478 80088F48 3A000524 */  addiu      $a1, $zero, 0x3A
/* 5AA547C 80088F4C 3000448E */  lw         $a0, 0x30($s2)
/* 5AA5480 80088F50 E387000C */  jal        func_80021F8C
/* 5AA5484 80088F54 21300000 */   addu      $a2, $zero, $zero
/* 5AA5488 80088F58 21202002 */  addu       $a0, $s1, $zero
/* 5AA548C 80088F5C 01000224 */  addiu      $v0, $zero, 0x1
/* 5AA5490 80088F60 C656010C */  jal        func_80055B18
/* 5AA5494 80088F64 490082A0 */   sb        $v0, 0x49($a0)
/* 5AA5498 80088F68 57240208 */  j          .Llevel_23_8008915C
/* 5AA549C 80088F6C 00000000 */   nop
.Llevel_23_80088F70:
/* 5AA54A0 80088F70 48002492 */  lbu        $a0, 0x48($s1)
/* 5AA54A4 80088F74 01000224 */  addiu      $v0, $zero, 0x1
/* 5AA54A8 80088F78 3C008210 */  beq        $a0, $v0, .Llevel_23_8008906C
/* 5AA54AC 80088F7C 02008228 */   slti      $v0, $a0, 0x2
/* 5AA54B0 80088F80 05004010 */  beqz       $v0, .Llevel_23_80088F98
/* 5AA54B4 80088F84 00000000 */   nop
/* 5AA54B8 80088F88 0A008010 */  beqz       $a0, .Llevel_23_80088FB4
/* 5AA54BC 80088F8C 00000000 */   nop
/* 5AA54C0 80088F90 57240208 */  j          .Llevel_23_8008915C
/* 5AA54C4 80088F94 00000000 */   nop
.Llevel_23_80088F98:
/* 5AA54C8 80088F98 5A000224 */  addiu      $v0, $zero, 0x5A
/* 5AA54CC 80088F9C 56008210 */  beq        $a0, $v0, .Llevel_23_800890F8
/* 5AA54D0 80088FA0 5B000224 */   addiu     $v0, $zero, 0x5B
/* 5AA54D4 80088FA4 61008210 */  beq        $a0, $v0, .Llevel_23_8008912C
/* 5AA54D8 80088FA8 00000000 */   nop
/* 5AA54DC 80088FAC 57240208 */  j          .Llevel_23_8008915C
/* 5AA54E0 80088FB0 00000000 */   nop
.Llevel_23_80088FB4:
/* 5AA54E4 80088FB4 01004292 */  lbu        $v0, 0x1($s2)
/* 5AA54E8 80088FB8 00000000 */  nop
/* 5AA54EC 80088FBC 7F004330 */  andi       $v1, $v0, 0x7F
/* 5AA54F0 80088FC0 7F000224 */  addiu      $v0, $zero, 0x7F
/* 5AA54F4 80088FC4 13006210 */  beq        $v1, $v0, .Llevel_23_80089014
/* 5AA54F8 80088FC8 80200300 */   sll       $a0, $v1, 2
/* 5AA54FC 80088FCC 0680013C */  lui        $at, %hi(D_80066EAC)
/* 5AA5500 80088FD0 21082400 */  addu       $at, $at, $a0
/* 5AA5504 80088FD4 AC6E2384 */  lh         $v1, %lo(D_80066EAC)($at)
/* 5AA5508 80088FD8 0780023C */  lui        $v0, %hi(D_8006C71C)
/* 5AA550C 80088FDC 1CC7428C */  lw         $v0, %lo(D_8006C71C)($v0)
/* 5AA5510 80088FE0 00000000 */  nop
/* 5AA5514 80088FE4 2A104300 */  slt        $v0, $v0, $v1
/* 5AA5518 80088FE8 0A004014 */  bnez       $v0, .Llevel_23_80089014
/* 5AA551C 80088FEC 00000000 */   nop
/* 5AA5520 80088FF0 0680013C */  lui        $at, %hi(D_80066EAE)
/* 5AA5524 80088FF4 21082400 */  addu       $at, $at, $a0
/* 5AA5528 80088FF8 AE6E2284 */  lh         $v0, %lo(D_80066EAE)($at)
/* 5AA552C 80088FFC 00000000 */  nop
/* 5AA5530 80089000 04004014 */  bnez       $v0, .Llevel_23_80089014
/* 5AA5534 80089004 01000224 */   addiu     $v0, $zero, 0x1
/* 5AA5538 80089008 050042A2 */  sb         $v0, 0x5($s2)
/* 5AA553C 8008900C FF000224 */  addiu      $v0, $zero, 0xFF
/* 5AA5540 80089010 010042A2 */  sb         $v0, 0x1($s2)
.Llevel_23_80089014:
/* 5AA5544 80089014 0780023C */  lui        $v0, %hi(D_80070328 + 0x240)
/* 5AA5548 80089018 6805428C */  lw         $v0, %lo(D_80070328 + 0x240)($v0)
/* 5AA554C 8008901C 00000000 */  nop
/* 5AA5550 80089020 4E004014 */  bnez       $v0, .Llevel_23_8008915C
/* 5AA5554 80089024 01000224 */   addiu     $v0, $zero, 0x1
/* 5AA5558 80089028 0780033C */  lui        $v1, %hi(D_8006E344)
/* 5AA555C 8008902C 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 5AA5560 80089030 00000000 */  nop
/* 5AA5564 80089034 49006210 */  beq        $v1, $v0, .Llevel_23_8008915C
/* 5AA5568 80089038 21202002 */   addu      $a0, $s1, $zero
/* 5AA556C 8008903C EFDE000C */  jal        func_80037BBC
/* 5AA5570 80089040 21280000 */   addu      $a1, $zero, $zero
/* 5AA5574 80089044 45004010 */  beqz       $v0, .Llevel_23_8008915C
/* 5AA5578 80089048 21202002 */   addu      $a0, $s1, $zero
/* 5AA557C 8008904C 21280000 */  addu       $a1, $zero, $zero
/* 5AA5580 80089050 B944010C */  jal        func_800512E4
/* 5AA5584 80089054 01000624 */   addiu     $a2, $zero, 0x1
/* 5AA5588 80089058 01000224 */  addiu      $v0, $zero, 0x1
/* 5AA558C 8008905C 480022A2 */  sb         $v0, 0x48($s1)
/* 5AA5590 80089060 21202002 */  addu       $a0, $s1, $zero
/* 5AA5594 80089064 55240208 */  j          .Llevel_23_80089154
/* 5AA5598 80089068 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_23_8008906C:
/* 5AA559C 8008906C 0780033C */  lui        $v1, %hi(D_8006E344)
/* 5AA55A0 80089070 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 5AA55A4 80089074 01000224 */  addiu      $v0, $zero, 0x1
/* 5AA55A8 80089078 0780013C */  lui        $at, %hi(D_80071584)
/* 5AA55AC 8008907C 841522A0 */  sb         $v0, %lo(D_80071584)($at)
/* 5AA55B0 80089080 36006410 */  beq        $v1, $a0, .Llevel_23_8008915C
/* 5AA55B4 80089084 00000000 */   nop
/* 5AA55B8 80089088 04004292 */  lbu        $v0, 0x4($s2)
/* 5AA55BC 8008908C 00000000 */  nop
/* 5AA55C0 80089090 16004414 */  bne        $v0, $a0, .Llevel_23_800890EC
/* 5AA55C4 80089094 21202002 */   addu      $a0, $s1, $zero
/* 5AA55C8 80089098 D0D3000C */  jal        func_80034F40
/* 5AA55CC 8008909C 21280000 */   addu      $a1, $zero, $zero
/* 5AA55D0 800890A0 2C00428E */  lw         $v0, 0x2C($s2)
/* 5AA55D4 800890A4 0780103C */  lui        $s0, %hi(D_8006E17C)
/* 5AA55D8 800890A8 7CE11026 */  addiu      $s0, $s0, %lo(D_8006E17C)
/* 5AA55DC 800890AC 0C00458C */  lw         $a1, 0xC($v0)
/* 5AA55E0 800890B0 21200002 */  addu       $a0, $s0, $zero
/* 5AA55E4 800890B4 5E3C010C */  jal        func_8004F178
/* 5AA55E8 800890B8 1000A524 */   addiu     $a1, $a1, 0x10
/* 5AA55EC 800890BC 2C00428E */  lw         $v0, 0x2C($s2)
/* 5AA55F0 800890C0 00000000 */  nop
/* 5AA55F4 800890C4 0C00458C */  lw         $a1, 0xC($v0)
/* 5AA55F8 800890C8 ECFF0426 */  addiu      $a0, $s0, -0x14
/* 5AA55FC 800890CC BC4D000C */  jal        func_800136F0
/* 5AA5600 800890D0 1000A624 */   addiu     $a2, $a1, 0x10
/* 5AA5604 800890D4 11000224 */  addiu      $v0, $zero, 0x11
/* 5AA5608 800890D8 0780013C */  lui        $at, %hi(D_8006E160)
/* 5AA560C 800890DC 60E122AC */  sw         $v0, %lo(D_8006E160)($at)
/* 5AA5610 800890E0 5A000224 */  addiu      $v0, $zero, 0x5A
/* 5AA5614 800890E4 57240208 */  j          .Llevel_23_8008915C
/* 5AA5618 800890E8 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_23_800890EC:
/* 5AA561C 800890EC 480020A2 */  sb         $zero, 0x48($s1)
/* 5AA5620 800890F0 55240208 */  j          .Llevel_23_80089154
/* 5AA5624 800890F4 21280000 */   addu      $a1, $zero, $zero
.Llevel_23_800890F8:
/* 5AA5628 800890F8 FC000524 */  addiu      $a1, $zero, 0xFC
/* 5AA562C 800890FC 3000448E */  lw         $a0, 0x30($s2)
/* 5AA5630 80089100 B687000C */  jal        func_80021ED8
/* 5AA5634 80089104 21300000 */   addu      $a2, $zero, $zero
/* 5AA5638 80089108 21202002 */  addu       $a0, $s1, $zero
/* 5AA563C 8008910C 02000524 */  addiu      $a1, $zero, 0x2
/* 5AA5640 80089110 C4EE000C */  jal        func_8003BB10
/* 5AA5644 80089114 21300000 */   addu      $a2, $zero, $zero
/* 5AA5648 80089118 01000224 */  addiu      $v0, $zero, 0x1
/* 5AA564C 8008911C 490022A2 */  sb         $v0, 0x49($s1)
/* 5AA5650 80089120 5B000224 */  addiu      $v0, $zero, 0x5B
/* 5AA5654 80089124 57240208 */  j          .Llevel_23_8008915C
/* 5AA5658 80089128 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_23_8008912C:
/* 5AA565C 8008912C 3000448E */  lw         $a0, 0x30($s2)
/* 5AA5660 80089130 CF87000C */  jal        func_80021F3C
/* 5AA5664 80089134 00000000 */   nop
/* 5AA5668 80089138 02004230 */  andi       $v0, $v0, 0x2
/* 5AA566C 8008913C 07004010 */  beqz       $v0, .Llevel_23_8008915C
/* 5AA5670 80089140 21202002 */   addu      $a0, $s1, $zero
/* 5AA5674 80089144 21280000 */  addu       $a1, $zero, $zero
/* 5AA5678 80089148 0780013C */  lui        $at, %hi(D_8006E160)
/* 5AA567C 8008914C 60E120AC */  sw         $zero, %lo(D_8006E160)($at)
/* 5AA5680 80089150 480080A0 */  sb         $zero, 0x48($a0)
.Llevel_23_80089154:
/* 5AA5684 80089154 D0D3000C */  jal        func_80034F40
/* 5AA5688 80089158 00000000 */   nop
.Llevel_23_8008915C:
/* 5AA568C 8008915C 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 5AA5690 80089160 1800B28F */  lw         $s2, 0x18($sp)
/* 5AA5694 80089164 1400B18F */  lw         $s1, 0x14($sp)
/* 5AA5698 80089168 1000B08F */  lw         $s0, 0x10($sp)
/* 5AA569C 8008916C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 5AA56A0 80089170 0800E003 */  jr         $ra
/* 5AA56A4 80089174 00000000 */   nop
.size MobyUpdate_180_level_23, . - MobyUpdate_180_level_23
