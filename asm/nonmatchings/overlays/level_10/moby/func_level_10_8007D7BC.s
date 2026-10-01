.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_10_8007D7BC
/* 3AE24EC 8007D7BC C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 3AE24F0 8007D7C0 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 3AE24F4 8007D7C4 21988000 */  addu       $s3, $a0, $zero
/* 3AE24F8 8007D7C8 3800BFAF */  sw         $ra, 0x38($sp)
/* 3AE24FC 8007D7CC 3400B5AF */  sw         $s5, 0x34($sp)
/* 3AE2500 8007D7D0 3000B4AF */  sw         $s4, 0x30($sp)
/* 3AE2504 8007D7D4 2800B2AF */  sw         $s2, 0x28($sp)
/* 3AE2508 8007D7D8 2400B1AF */  sw         $s1, 0x24($sp)
/* 3AE250C 8007D7DC 2000B0AF */  sw         $s0, 0x20($sp)
/* 3AE2510 8007D7E0 1800628E */  lw         $v0, 0x18($s3)
/* 3AE2514 8007D7E4 0000728E */  lw         $s2, 0x0($s3)
/* 3AE2518 8007D7E8 11004010 */  beqz       $v0, .Llevel_10_8007D830
/* 3AE251C 8007D7EC 21280000 */   addu      $a1, $zero, $zero
/* 3AE2520 8007D7F0 AFEE000C */  jal        func_8003BABC
/* 3AE2524 8007D7F4 21300000 */   addu      $a2, $zero, $zero
/* 3AE2528 8007D7F8 10000424 */  addiu      $a0, $zero, 0x10
/* 3AE252C 8007D7FC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 3AE2530 8007D800 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 3AE2534 8007D804 00000000 */  nop
/* 3AE2538 8007D808 09F84000 */  jalr       $v0
/* 3AE253C 8007D80C 21286002 */   addu      $a1, $s3, $zero
/* 3AE2540 8007D810 21206002 */  addu       $a0, $s3, $zero
/* 3AE2544 8007D814 4957010C */  jal        func_80055D24
/* 3AE2548 8007D818 04000524 */   addiu     $a1, $zero, 0x4
/* 3AE254C 8007D81C 21206002 */  addu       $a0, $s3, $zero
/* 3AE2550 8007D820 6EDA000C */  jal        func_800369B8
/* 3AE2554 8007D824 20000524 */   addiu     $a1, $zero, 0x20
/* 3AE2558 8007D828 C656010C */  jal        func_80055B18
/* 3AE255C 8007D82C 21206002 */   addu      $a0, $s3, $zero
.Llevel_10_8007D830:
/* 3AE2560 8007D830 48007092 */  lbu        $s0, 0x48($s3)
/* 3AE2564 8007D834 01000224 */  addiu      $v0, $zero, 0x1
/* 3AE2568 8007D838 C5000212 */  beq        $s0, $v0, .Llevel_10_8007DB50
/* 3AE256C 8007D83C 0200022A */   slti      $v0, $s0, 0x2
/* 3AE2570 8007D840 05004010 */  beqz       $v0, .Llevel_10_8007D858
/* 3AE2574 8007D844 00000000 */   nop
/* 3AE2578 8007D848 08000012 */  beqz       $s0, .Llevel_10_8007D86C
/* 3AE257C 8007D84C 0C006426 */   addiu     $a0, $s3, 0xC
/* 3AE2580 8007D850 BCF70108 */  j          .Llevel_10_8007DEF0
/* 3AE2584 8007D854 00000000 */   nop
.Llevel_10_8007D858:
/* 3AE2588 8007D858 02000224 */  addiu      $v0, $zero, 0x2
/* 3AE258C 8007D85C 28010212 */  beq        $s0, $v0, .Llevel_10_8007DD00
/* 3AE2590 8007D860 19004426 */   addiu     $a0, $s2, 0x19
/* 3AE2594 8007D864 BCF70108 */  j          .Llevel_10_8007DEF0
/* 3AE2598 8007D868 00000000 */   nop
.Llevel_10_8007D86C:
/* 3AE259C 8007D86C 0780103C */  lui        $s0, %hi(D_80070328)
/* 3AE25A0 8007D870 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 3AE25A4 8007D874 CD3C010C */  jal        func_8004F334
/* 3AE25A8 8007D878 21280002 */   addu      $a1, $s0, $zero
/* 3AE25AC 8007D87C 001C4228 */  slti       $v0, $v0, 0x1C00
/* 3AE25B0 8007D880 9D004010 */  beqz       $v0, .Llevel_10_8007DAF8
/* 3AE25B4 8007D884 21300000 */   addu      $a2, $zero, $zero
/* 3AE25B8 8007D888 0000038E */  lw         $v1, 0x0($s0)
/* 3AE25BC 8007D88C 0C00648E */  lw         $a0, 0xC($s3)
/* 3AE25C0 8007D890 0780023C */  lui        $v0, %hi(D_80070328 + 4)
/* 3AE25C4 8007D894 2C03428C */  lw         $v0, %lo(D_80070328 + 4)($v0)
/* 3AE25C8 8007D898 1000658E */  lw         $a1, 0x10($s3)
/* 3AE25CC 8007D89C 23206400 */  subu       $a0, $v1, $a0
/* 3AE25D0 8007D8A0 203A010C */  jal        func_8004E880
/* 3AE25D4 8007D8A4 23284500 */   subu      $a1, $v0, $a1
/* 3AE25D8 8007D8A8 1400478E */  lw         $a3, 0x14($s2)
/* 3AE25DC 8007D8AC 00000000 */  nop
/* 3AE25E0 8007D8B0 0200E584 */  lh         $a1, 0x2($a3)
/* 3AE25E4 8007D8B4 0000E484 */  lh         $a0, 0x0($a3)
/* 3AE25E8 8007D8B8 0100A324 */  addiu      $v1, $a1, 0x1
/* 3AE25EC 8007D8BC 1A006400 */  div        $zero, $v1, $a0
/* 3AE25F0 8007D8C0 02008014 */  bnez       $a0, .Llevel_10_8007D8CC
/* 3AE25F4 8007D8C4 00000000 */   nop
/* 3AE25F8 8007D8C8 0D000700 */  break      7
.Llevel_10_8007D8CC:
/* 3AE25FC 8007D8CC FFFF0124 */  addiu      $at, $zero, -0x1
/* 3AE2600 8007D8D0 04008114 */  bne        $a0, $at, .Llevel_10_8007D8E4
/* 3AE2604 8007D8D4 0080013C */   lui       $at, (0x80000000 >> 16)
/* 3AE2608 8007D8D8 02006114 */  bne        $v1, $at, .Llevel_10_8007D8E4
/* 3AE260C 8007D8DC 00000000 */   nop
/* 3AE2610 8007D8E0 0D000600 */  break      6
.Llevel_10_8007D8E4:
/* 3AE2614 8007D8E4 10A80000 */  mfhi       $s5
/* 3AE2618 8007D8E8 FFFF8324 */  addiu      $v1, $a0, -0x1
/* 3AE261C 8007D8EC 2128A300 */  addu       $a1, $a1, $v1
/* 3AE2620 8007D8F0 1A00A400 */  div        $zero, $a1, $a0
/* 3AE2624 8007D8F4 02008014 */  bnez       $a0, .Llevel_10_8007D900
/* 3AE2628 8007D8F8 00000000 */   nop
/* 3AE262C 8007D8FC 0D000700 */  break      7
.Llevel_10_8007D900:
/* 3AE2630 8007D900 FFFF0124 */  addiu      $at, $zero, -0x1
/* 3AE2634 8007D904 04008114 */  bne        $a0, $at, .Llevel_10_8007D918
/* 3AE2638 8007D908 0080013C */   lui       $at, (0x80000000 >> 16)
/* 3AE263C 8007D90C 0200A114 */  bne        $a1, $at, .Llevel_10_8007D918
/* 3AE2640 8007D910 00000000 */   nop
/* 3AE2644 8007D914 0D000600 */  break      6
.Llevel_10_8007D918:
/* 3AE2648 8007D918 10A00000 */  mfhi       $s4
/* 3AE264C 8007D91C 21300000 */  addu       $a2, $zero, $zero
/* 3AE2650 8007D920 21884000 */  addu       $s1, $v0, $zero
/* 3AE2654 8007D924 0C00E48C */  lw         $a0, 0xC($a3)
/* 3AE2658 8007D928 1000658E */  lw         $a1, 0x10($s3)
/* 3AE265C 8007D92C 00191500 */  sll        $v1, $s5, 4
/* 3AE2660 8007D930 21186400 */  addu       $v1, $v1, $a0
/* 3AE2664 8007D934 0000678C */  lw         $a3, 0x0($v1)
/* 3AE2668 8007D938 0C00648E */  lw         $a0, 0xC($s3)
/* 3AE266C 8007D93C 0400638C */  lw         $v1, 0x4($v1)
/* 3AE2670 8007D940 2320E400 */  subu       $a0, $a3, $a0
/* 3AE2674 8007D944 203A010C */  jal        func_8004E880
/* 3AE2678 8007D948 23286500 */   subu      $a1, $v1, $a1
/* 3AE267C 8007D94C 21300000 */  addu       $a2, $zero, $zero
/* 3AE2680 8007D950 21804000 */  addu       $s0, $v0, $zero
/* 3AE2684 8007D954 1400438E */  lw         $v1, 0x14($s2)
/* 3AE2688 8007D958 1000658E */  lw         $a1, 0x10($s3)
/* 3AE268C 8007D95C 0C00648C */  lw         $a0, 0xC($v1)
/* 3AE2690 8007D960 00191400 */  sll        $v1, $s4, 4
/* 3AE2694 8007D964 21186400 */  addu       $v1, $v1, $a0
/* 3AE2698 8007D968 0000678C */  lw         $a3, 0x0($v1)
/* 3AE269C 8007D96C 0C00648E */  lw         $a0, 0xC($s3)
/* 3AE26A0 8007D970 0400638C */  lw         $v1, 0x4($v1)
/* 3AE26A4 8007D974 2320E400 */  subu       $a0, $a3, $a0
/* 3AE26A8 8007D978 203A010C */  jal        func_8004E880
/* 3AE26AC 8007D97C 23286500 */   subu      $a1, $v1, $a1
/* 3AE26B0 8007D980 21202002 */  addu       $a0, $s1, $zero
/* 3AE26B4 8007D984 21280002 */  addu       $a1, $s0, $zero
/* 3AE26B8 8007D988 993C010C */  jal        func_8004F264
/* 3AE26BC 8007D98C 21804000 */   addu      $s0, $v0, $zero
/* 3AE26C0 8007D990 21202002 */  addu       $a0, $s1, $zero
/* 3AE26C4 8007D994 21280002 */  addu       $a1, $s0, $zero
/* 3AE26C8 8007D998 993C010C */  jal        func_8004F264
/* 3AE26CC 8007D99C 21804000 */   addu      $s0, $v0, $zero
/* 3AE26D0 8007D9A0 2A105000 */  slt        $v0, $v0, $s0
/* 3AE26D4 8007D9A4 04004010 */  beqz       $v0, .Llevel_10_8007D9B8
/* 3AE26D8 8007D9A8 00000000 */   nop
/* 3AE26DC 8007D9AC 1400428E */  lw         $v0, 0x14($s2)
/* 3AE26E0 8007D9B0 71F60108 */  j          .Llevel_10_8007D9C4
/* 3AE26E4 8007D9B4 020055A4 */   sh        $s5, 0x2($v0)
.Llevel_10_8007D9B8:
/* 3AE26E8 8007D9B8 1400428E */  lw         $v0, 0x14($s2)
/* 3AE26EC 8007D9BC 00000000 */  nop
/* 3AE26F0 8007D9C0 020054A4 */  sh         $s4, 0x2($v0)
.Llevel_10_8007D9C4:
/* 3AE26F4 8007D9C4 21300000 */  addu       $a2, $zero, $zero
/* 3AE26F8 8007D9C8 1400438E */  lw         $v1, 0x14($s2)
/* 3AE26FC 8007D9CC 0C00648E */  lw         $a0, 0xC($s3)
/* 3AE2700 8007D9D0 1000658E */  lw         $a1, 0x10($s3)
/* 3AE2704 8007D9D4 02006284 */  lh         $v0, 0x2($v1)
/* 3AE2708 8007D9D8 0C00638C */  lw         $v1, 0xC($v1)
/* 3AE270C 8007D9DC 00110200 */  sll        $v0, $v0, 4
/* 3AE2710 8007D9E0 21104300 */  addu       $v0, $v0, $v1
/* 3AE2714 8007D9E4 0000438C */  lw         $v1, 0x0($v0)
/* 3AE2718 8007D9E8 0400428C */  lw         $v0, 0x4($v0)
/* 3AE271C 8007D9EC 23206400 */  subu       $a0, $v1, $a0
/* 3AE2720 8007D9F0 203A010C */  jal        func_8004E880
/* 3AE2724 8007D9F4 23284500 */   subu      $a1, $v0, $a1
/* 3AE2728 8007D9F8 21200000 */  addu       $a0, $zero, $zero
/* 3AE272C 8007D9FC 20000524 */  addiu      $a1, $zero, 0x20
/* 3AE2730 8007DA00 F7D8000C */  jal        func_800363DC
/* 3AE2734 8007DA04 21884000 */   addu      $s1, $v0, $zero
/* 3AE2738 8007DA08 21882202 */  addu       $s1, $s1, $v0
/* 3AE273C 8007DA0C 21300000 */  addu       $a2, $zero, $zero
/* 3AE2740 8007DA10 0C00638E */  lw         $v1, 0xC($s3)
/* 3AE2744 8007DA14 0780043C */  lui        $a0, %hi(D_80070328)
/* 3AE2748 8007DA18 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 3AE274C 8007DA1C 1000628E */  lw         $v0, 0x10($s3)
/* 3AE2750 8007DA20 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 3AE2754 8007DA24 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 3AE2758 8007DA28 23206400 */  subu       $a0, $v1, $a0
/* 3AE275C 8007DA2C 203A010C */  jal        func_8004E880
/* 3AE2760 8007DA30 23284500 */   subu      $a1, $v0, $a1
/* 3AE2764 8007DA34 21804000 */  addu       $s0, $v0, $zero
/* 3AE2768 8007DA38 21200002 */  addu       $a0, $s0, $zero
/* 3AE276C 8007DA3C 4FD8000C */  jal        SubAngle8
/* 3AE2770 8007DA40 FF002532 */   andi      $a1, $s1, 0xFF
/* 3AE2774 8007DA44 6C000324 */  addiu      $v1, $zero, 0x6C
/* 3AE2778 8007DA48 18004300 */  mult       $v0, $v1
/* 3AE277C 8007DA4C 6E000424 */  addiu      $a0, $zero, 0x6E
/* 3AE2780 8007DA50 8C000524 */  addiu      $a1, $zero, 0x8C
/* 3AE2784 8007DA54 12400000 */  mflo       $t0
/* 3AE2788 8007DA58 C3110800 */  sra        $v0, $t0, 7
/* 3AE278C 8007DA5C 21800202 */  addu       $s0, $s0, $v0
/* 3AE2790 8007DA60 DBD8000C */  jal        func_8003636C
/* 3AE2794 8007DA64 180050A2 */   sb        $s0, 0x18($s2)
/* 3AE2798 8007DA68 1400438E */  lw         $v1, 0x14($s2)
/* 3AE279C 8007DA6C 0C006426 */  addiu      $a0, $s3, 0xC
/* 3AE27A0 8007DA70 1A0042A2 */  sb         $v0, 0x1A($s2)
/* 3AE27A4 8007DA74 1B0040A2 */  sb         $zero, 0x1B($s2)
/* 3AE27A8 8007DA78 02006584 */  lh         $a1, 0x2($v1)
/* 3AE27AC 8007DA7C 0C00628C */  lw         $v0, 0xC($v1)
/* 3AE27B0 8007DA80 00290500 */  sll        $a1, $a1, 4
/* 3AE27B4 8007DA84 CD3C010C */  jal        func_8004F334
/* 3AE27B8 8007DA88 21284500 */   addu      $a1, $v0, $a1
/* 3AE27BC 8007DA8C 1A004392 */  lbu        $v1, 0x1A($s2)
/* 3AE27C0 8007DA90 00000000 */  nop
/* 3AE27C4 8007DA94 1A004300 */  div        $zero, $v0, $v1
/* 3AE27C8 8007DA98 02006014 */  bnez       $v1, .Llevel_10_8007DAA4
/* 3AE27CC 8007DA9C 00000000 */   nop
/* 3AE27D0 8007DAA0 0D000700 */  break      7
.Llevel_10_8007DAA4:
/* 3AE27D4 8007DAA4 FFFF0124 */  addiu      $at, $zero, -0x1
/* 3AE27D8 8007DAA8 04006114 */  bne        $v1, $at, .Llevel_10_8007DABC
/* 3AE27DC 8007DAAC 0080013C */   lui       $at, (0x80000000 >> 16)
/* 3AE27E0 8007DAB0 02004114 */  bne        $v0, $at, .Llevel_10_8007DABC
/* 3AE27E4 8007DAB4 00000000 */   nop
/* 3AE27E8 8007DAB8 0D000600 */  break      6
.Llevel_10_8007DABC:
/* 3AE27EC 8007DABC 12100000 */  mflo       $v0
/* 3AE27F0 8007DAC0 00000000 */  nop
/* 3AE27F4 8007DAC4 43100200 */  sra        $v0, $v0, 1
/* 3AE27F8 8007DAC8 190042A2 */  sb         $v0, 0x19($s2)
/* 3AE27FC 8007DACC FF004230 */  andi       $v0, $v0, 0xFF
/* 3AE2800 8007DAD0 5B00422C */  sltiu      $v0, $v0, 0x5B
/* 3AE2804 8007DAD4 04004014 */  bnez       $v0, .Llevel_10_8007DAE8
/* 3AE2808 8007DAD8 01000224 */   addiu     $v0, $zero, 0x1
/* 3AE280C 8007DADC 5A000224 */  addiu      $v0, $zero, 0x5A
/* 3AE2810 8007DAE0 190042A2 */  sb         $v0, 0x19($s2)
/* 3AE2814 8007DAE4 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_10_8007DAE8:
/* 3AE2818 8007DAE8 480062A2 */  sb         $v0, 0x48($s3)
/* 3AE281C 8007DAEC 21206002 */  addu       $a0, $s3, $zero
/* 3AE2820 8007DAF0 D0D3000C */  jal        func_80034F40
/* 3AE2824 8007DAF4 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_10_8007DAF8:
/* 3AE2828 8007DAF8 0780023C */  lui        $v0, %hi(D_8006C770)
/* 3AE282C 8007DAFC 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 3AE2830 8007DB00 00000000 */  nop
/* 3AE2834 8007DB04 FA004010 */  beqz       $v0, .Llevel_10_8007DEF0
/* 3AE2838 8007DB08 00000000 */   nop
/* 3AE283C 8007DB0C 3D006292 */  lbu        $v0, 0x3D($s3)
/* 3AE2840 8007DB10 00000000 */  nop
/* 3AE2844 8007DB14 F6004010 */  beqz       $v0, .Llevel_10_8007DEF0
/* 3AE2848 8007DB18 21206002 */   addu      $a0, $s3, $zero
/* 3AE284C 8007DB1C 0780013C */  lui        $at, %hi(D_8006C770)
/* 3AE2850 8007DB20 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 3AE2854 8007DB24 3D008290 */  lbu        $v0, 0x3D($a0)
/* 3AE2858 8007DB28 3F008590 */  lbu        $a1, 0x3F($a0)
/* 3AE285C 8007DB2C 72000324 */  addiu      $v1, $zero, 0x72
/* 3AE2860 8007DB30 400083A0 */  sb         $v1, 0x40($a0)
/* 3AE2864 8007DB34 3D0080A0 */  sb         $zero, 0x3D($a0)
/* 3AE2868 8007DB38 3F0080A0 */  sb         $zero, 0x3F($a0)
/* 3AE286C 8007DB3C 3C0082A0 */  sb         $v0, 0x3C($a0)
/* 3AE2870 8007DB40 CDD5000C */  jal        func_80035734
/* 3AE2874 8007DB44 3E0085A0 */   sb        $a1, 0x3E($a0)
/* 3AE2878 8007DB48 BCF70108 */  j          .Llevel_10_8007DEF0
/* 3AE287C 8007DB4C 00000000 */   nop
.Llevel_10_8007DB50:
/* 3AE2880 8007DB50 1400428E */  lw         $v0, 0x14($s2)
/* 3AE2884 8007DB54 0C006426 */  addiu      $a0, $s3, 0xC
/* 3AE2888 8007DB58 02004584 */  lh         $a1, 0x2($v0)
/* 3AE288C 8007DB5C 0C00428C */  lw         $v0, 0xC($v0)
/* 3AE2890 8007DB60 00290500 */  sll        $a1, $a1, 4
/* 3AE2894 8007DB64 CD3C010C */  jal        func_8004F334
/* 3AE2898 8007DB68 21284500 */   addu      $a1, $v0, $a1
/* 3AE289C 8007DB6C 1B004492 */  lbu        $a0, 0x1B($s2)
/* 3AE28A0 8007DB70 1A004392 */  lbu        $v1, 0x1A($s2)
/* 3AE28A4 8007DB74 00000000 */  nop
/* 3AE28A8 8007DB78 2B188300 */  sltu       $v1, $a0, $v1
/* 3AE28AC 8007DB7C 03006010 */  beqz       $v1, .Llevel_10_8007DB8C
/* 3AE28B0 8007DB80 21804000 */   addu      $s0, $v0, $zero
/* 3AE28B4 8007DB84 0A008224 */  addiu      $v0, $a0, 0xA
/* 3AE28B8 8007DB88 1B0042A2 */  sb         $v0, 0x1B($s2)
.Llevel_10_8007DB8C:
/* 3AE28BC 8007DB8C 19004426 */  addiu      $a0, $s2, 0x19
/* 3AE28C0 8007DB90 69D6000C */  jal        func_800359A4
/* 3AE28C4 8007DB94 01000524 */   addiu     $a1, $zero, 0x1
/* 3AE28C8 8007DB98 23004010 */  beqz       $v0, .Llevel_10_8007DC28
/* 3AE28CC 8007DB9C 21300000 */   addu      $a2, $zero, $zero
/* 3AE28D0 8007DBA0 1400438E */  lw         $v1, 0x14($s2)
/* 3AE28D4 8007DBA4 0C00648E */  lw         $a0, 0xC($s3)
/* 3AE28D8 8007DBA8 1000658E */  lw         $a1, 0x10($s3)
/* 3AE28DC 8007DBAC 02006284 */  lh         $v0, 0x2($v1)
/* 3AE28E0 8007DBB0 0C00638C */  lw         $v1, 0xC($v1)
/* 3AE28E4 8007DBB4 00110200 */  sll        $v0, $v0, 4
/* 3AE28E8 8007DBB8 21104300 */  addu       $v0, $v0, $v1
/* 3AE28EC 8007DBBC 0000438C */  lw         $v1, 0x0($v0)
/* 3AE28F0 8007DBC0 0400428C */  lw         $v0, 0x4($v0)
/* 3AE28F4 8007DBC4 23206400 */  subu       $a0, $v1, $a0
/* 3AE28F8 8007DBC8 203A010C */  jal        func_8004E880
/* 3AE28FC 8007DBCC 23284500 */   subu      $a1, $v0, $a1
/* 3AE2900 8007DBD0 18004592 */  lbu        $a1, 0x18($s2)
/* 3AE2904 8007DBD4 4FD8000C */  jal        SubAngle8
/* 3AE2908 8007DBD8 21204000 */   addu      $a0, $v0, $zero
/* 3AE290C 8007DBDC 21184000 */  addu       $v1, $v0, $zero
/* 3AE2910 8007DBE0 02006104 */  bgez       $v1, .Llevel_10_8007DBEC
/* 3AE2914 8007DBE4 21106000 */   addu      $v0, $v1, $zero
/* 3AE2918 8007DBE8 23100200 */  negu       $v0, $v0
.Llevel_10_8007DBEC:
/* 3AE291C 8007DBEC 1F004228 */  slti       $v0, $v0, 0x1F
/* 3AE2920 8007DBF0 02004014 */  bnez       $v0, .Llevel_10_8007DBFC
/* 3AE2924 8007DBF4 01000424 */   addiu     $a0, $zero, 0x1
/* 3AE2928 8007DBF8 02000424 */  addiu      $a0, $zero, 0x2
.Llevel_10_8007DBFC:
/* 3AE292C 8007DBFC 04006018 */  blez       $v1, .Llevel_10_8007DC10
/* 3AE2930 8007DC00 00000000 */   nop
/* 3AE2934 8007DC04 18004292 */  lbu        $v0, 0x18($s2)
/* 3AE2938 8007DC08 09F70108 */  j          .Llevel_10_8007DC24
/* 3AE293C 8007DC0C 23104400 */   subu      $v0, $v0, $a0
.Llevel_10_8007DC10:
/* 3AE2940 8007DC10 05006104 */  bgez       $v1, .Llevel_10_8007DC28
/* 3AE2944 8007DC14 00000000 */   nop
/* 3AE2948 8007DC18 18004292 */  lbu        $v0, 0x18($s2)
/* 3AE294C 8007DC1C 00000000 */  nop
/* 3AE2950 8007DC20 21104400 */  addu       $v0, $v0, $a0
.Llevel_10_8007DC24:
/* 3AE2954 8007DC24 180042A2 */  sb         $v0, 0x18($s2)
.Llevel_10_8007DC28:
/* 3AE2958 8007DC28 21206002 */  addu       $a0, $s3, $zero
/* 3AE295C 8007DC2C 05000624 */  addiu      $a2, $zero, 0x5
/* 3AE2960 8007DC30 14000724 */  addiu      $a3, $zero, 0x14
/* 3AE2964 8007DC34 18004592 */  lbu        $a1, 0x18($s2)
/* 3AE2968 8007DC38 01000224 */  addiu      $v0, $zero, 0x1
/* 3AE296C 8007DC3C 1000A2AF */  sw         $v0, 0x10($sp)
/* 3AE2970 8007DC40 17D6000C */  jal        func_8003585C
/* 3AE2974 8007DC44 1400A0AF */   sw        $zero, 0x14($sp)
/* 3AE2978 8007DC48 23004010 */  beqz       $v0, .Llevel_10_8007DCD8
/* 3AE297C 8007DC4C 21206002 */   addu      $a0, $s3, $zero
/* 3AE2980 8007DC50 2C010624 */  addiu      $a2, $zero, 0x12C
/* 3AE2984 8007DC54 2C010724 */  addiu      $a3, $zero, 0x12C
/* 3AE2988 8007DC58 1B004592 */  lbu        $a1, 0x1B($s2)
/* 3AE298C 8007DC5C 55000224 */  addiu      $v0, $zero, 0x55
/* 3AE2990 8007DC60 77D7000C */  jal        func_80035DDC
/* 3AE2994 8007DC64 1000A2AF */   sw        $v0, 0x10($sp)
/* 3AE2998 8007DC68 06004010 */  beqz       $v0, .Llevel_10_8007DC84
/* 3AE299C 8007DC6C 00000000 */   nop
/* 3AE29A0 8007DC70 12004296 */  lhu        $v0, 0x12($s2)
/* 3AE29A4 8007DC74 00000000 */  nop
/* 3AE29A8 8007DC78 01004224 */  addiu      $v0, $v0, 0x1
/* 3AE29AC 8007DC7C 22F70108 */  j          .Llevel_10_8007DC88
/* 3AE29B0 8007DC80 120042A6 */   sh        $v0, 0x12($s2)
.Llevel_10_8007DC84:
/* 3AE29B4 8007DC84 120040A6 */  sh         $zero, 0x12($s2)
.Llevel_10_8007DC88:
/* 3AE29B8 8007DC88 12004286 */  lh         $v0, 0x12($s2)
/* 3AE29BC 8007DC8C 00000000 */  nop
/* 3AE29C0 8007DC90 04004228 */  slti       $v0, $v0, 0x4
/* 3AE29C4 8007DC94 11004014 */  bnez       $v0, .Llevel_10_8007DCDC
/* 3AE29C8 8007DC98 0807022A */   slti      $v0, $s0, 0x708
/* 3AE29CC 8007DC9C 0780023C */  lui        $v0, %hi(D_8006C770)
/* 3AE29D0 8007DCA0 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 3AE29D4 8007DCA4 00000000 */  nop
/* 3AE29D8 8007DCA8 0B004010 */  beqz       $v0, .Llevel_10_8007DCD8
/* 3AE29DC 8007DCAC 0014022A */   slti      $v0, $s0, 0x1400
/* 3AE29E0 8007DCB0 03004010 */  beqz       $v0, .Llevel_10_8007DCC0
/* 3AE29E4 8007DCB4 3C000424 */   addiu     $a0, $zero, 0x3C
/* 3AE29E8 8007DCB8 36F70108 */  j          .Llevel_10_8007DCD8
/* 3AE29EC 8007DCBC 480060A2 */   sb        $zero, 0x48($s3)
.Llevel_10_8007DCC0:
/* 3AE29F0 8007DCC0 F7D8000C */  jal        func_800363DC
/* 3AE29F4 8007DCC4 64000524 */   addiu     $a1, $zero, 0x64
/* 3AE29F8 8007DCC8 18004392 */  lbu        $v1, 0x18($s2)
/* 3AE29FC 8007DCCC 00000000 */  nop
/* 3AE2A00 8007DCD0 21186200 */  addu       $v1, $v1, $v0
/* 3AE2A04 8007DCD4 180043A2 */  sb         $v1, 0x18($s2)
.Llevel_10_8007DCD8:
/* 3AE2A08 8007DCD8 0807022A */  slti       $v0, $s0, 0x708
.Llevel_10_8007DCDC:
/* 3AE2A0C 8007DCDC 84004010 */  beqz       $v0, .Llevel_10_8007DEF0
/* 3AE2A10 8007DCE0 00000000 */   nop
/* 3AE2A14 8007DCE4 0780023C */  lui        $v0, %hi(D_8006C770)
/* 3AE2A18 8007DCE8 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 3AE2A1C 8007DCEC 00000000 */  nop
/* 3AE2A20 8007DCF0 7F004010 */  beqz       $v0, .Llevel_10_8007DEF0
/* 3AE2A24 8007DCF4 00000000 */   nop
/* 3AE2A28 8007DCF8 BCF70108 */  j          .Llevel_10_8007DEF0
/* 3AE2A2C 8007DCFC 480060A2 */   sb        $zero, 0x48($s3)
.Llevel_10_8007DD00:
/* 3AE2A30 8007DD00 69D6000C */  jal        func_800359A4
/* 3AE2A34 8007DD04 01000524 */   addiu     $a1, $zero, 0x1
/* 3AE2A38 8007DD08 79004010 */  beqz       $v0, .Llevel_10_8007DEF0
/* 3AE2A3C 8007DD0C 00000000 */   nop
/* 3AE2A40 8007DD10 07005014 */  bne        $v0, $s0, .Llevel_10_8007DD30
/* 3AE2A44 8007DD14 30000224 */   addiu     $v0, $zero, 0x30
/* 3AE2A48 8007DD18 4C0062A2 */  sb         $v0, 0x4C($s3)
/* 3AE2A4C 8007DD1C 4C006392 */  lbu        $v1, 0x4C($s3)
/* 3AE2A50 8007DD20 01000224 */  addiu      $v0, $zero, 0x1
/* 3AE2A54 8007DD24 410062A2 */  sb         $v0, 0x41($s3)
/* 3AE2A58 8007DD28 4D0062A2 */  sb         $v0, 0x4D($s3)
/* 3AE2A5C 8007DD2C 4E0063A2 */  sb         $v1, 0x4E($s3)
.Llevel_10_8007DD30:
/* 3AE2A60 8007DD30 10004296 */  lhu        $v0, 0x10($s2)
/* 3AE2A64 8007DD34 00000000 */  nop
/* 3AE2A68 8007DD38 F4FF4224 */  addiu      $v0, $v0, -0xC
/* 3AE2A6C 8007DD3C 100042A6 */  sh         $v0, 0x10($s2)
/* 3AE2A70 8007DD40 00140200 */  sll        $v0, $v0, 16
/* 3AE2A74 8007DD44 03140200 */  sra        $v0, $v0, 16
/* 3AE2A78 8007DD48 0CFE4228 */  slti       $v0, $v0, -0x1F4
/* 3AE2A7C 8007DD4C 02004010 */  beqz       $v0, .Llevel_10_8007DD58
/* 3AE2A80 8007DD50 0CFE0224 */   addiu     $v0, $zero, -0x1F4
/* 3AE2A84 8007DD54 100042A6 */  sh         $v0, 0x10($s2)
.Llevel_10_8007DD58:
/* 3AE2A88 8007DD58 10004286 */  lh         $v0, 0x10($s2)
/* 3AE2A8C 8007DD5C 1400638E */  lw         $v1, 0x14($s3)
/* 3AE2A90 8007DD60 38006486 */  lh         $a0, 0x38($s3)
/* 3AE2A94 8007DD64 21186200 */  addu       $v1, $v1, $v0
/* 3AE2A98 8007DD68 140063AE */  sw         $v1, 0x14($s3)
/* 3AE2A9C 8007DD6C 1C00428E */  lw         $v0, 0x1C($s2)
/* 3AE2AA0 8007DD70 00000000 */  nop
/* 3AE2AA4 8007DD74 21104400 */  addu       $v0, $v0, $a0
/* 3AE2AA8 8007DD78 2A104300 */  slt        $v0, $v0, $v1
/* 3AE2AAC 8007DD7C 26004014 */  bnez       $v0, .Llevel_10_8007DE18
/* 3AE2AB0 8007DD80 00000000 */   nop
/* 3AE2AB4 8007DD84 10004286 */  lh         $v0, 0x10($s2)
/* 3AE2AB8 8007DD88 00000000 */  nop
/* 3AE2ABC 8007DD8C 22004104 */  bgez       $v0, .Llevel_10_8007DE18
/* 3AE2AC0 8007DD90 00000000 */   nop
/* 3AE2AC4 8007DD94 22004292 */  lbu        $v0, 0x22($s2)
/* 3AE2AC8 8007DD98 10004386 */  lh         $v1, 0x10($s2)
/* 3AE2ACC 8007DD9C 01004224 */  addiu      $v0, $v0, 0x1
/* 3AE2AD0 8007DDA0 02006104 */  bgez       $v1, .Llevel_10_8007DDAC
/* 3AE2AD4 8007DDA4 00000000 */   nop
/* 3AE2AD8 8007DDA8 23180300 */  negu       $v1, $v1
.Llevel_10_8007DDAC:
/* 3AE2ADC 8007DDAC 32006328 */  slti       $v1, $v1, 0x32
/* 3AE2AE0 8007DDB0 12006010 */  beqz       $v1, .Llevel_10_8007DDFC
/* 3AE2AE4 8007DDB4 220042A2 */   sb        $v0, 0x22($s2)
/* 3AE2AE8 8007DDB8 38006386 */  lh         $v1, 0x38($s3)
/* 3AE2AEC 8007DDBC 440060A2 */  sb         $zero, 0x44($s3)
/* 3AE2AF0 8007DDC0 450060A2 */  sb         $zero, 0x45($s3)
/* 3AE2AF4 8007DDC4 1C00428E */  lw         $v0, 0x1C($s2)
/* 3AE2AF8 8007DDC8 0C006426 */  addiu      $a0, $s3, 0xC
/* 3AE2AFC 8007DDCC 21104300 */  addu       $v0, $v0, $v1
/* 3AE2B00 8007DDD0 140062AE */  sw         $v0, 0x14($s3)
/* 3AE2B04 8007DDD4 1400458E */  lw         $a1, 0x14($s2)
/* 3AE2B08 8007DDD8 17D9000C */  jal        func_8003645C
/* 3AE2B0C 8007DDDC 1800A627 */   addiu     $a2, $sp, 0x18
/* 3AE2B10 8007DDE0 21206002 */  addu       $a0, $s3, $zero
/* 3AE2B14 8007DDE4 1400438E */  lw         $v1, 0x14($s2)
/* 3AE2B18 8007DDE8 1800A28F */  lw         $v0, 0x18($sp)
/* 3AE2B1C 8007DDEC 21280000 */  addu       $a1, $zero, $zero
/* 3AE2B20 8007DDF0 020062A4 */  sh         $v0, 0x2($v1)
/* 3AE2B24 8007DDF4 D0D3000C */  jal        func_80034F40
/* 3AE2B28 8007DDF8 480060A2 */   sb        $zero, 0x48($s3)
.Llevel_10_8007DDFC:
/* 3AE2B2C 8007DDFC 10004386 */  lh         $v1, 0x10($s2)
/* 3AE2B30 8007DE00 00000000 */  nop
/* 3AE2B34 8007DE04 80100300 */  sll        $v0, $v1, 2
/* 3AE2B38 8007DE08 21104300 */  addu       $v0, $v0, $v1
/* 3AE2B3C 8007DE0C C3100200 */  sra        $v0, $v0, 3
/* 3AE2B40 8007DE10 23100200 */  negu       $v0, $v0
/* 3AE2B44 8007DE14 100042A6 */  sh         $v0, 0x10($s2)
.Llevel_10_8007DE18:
/* 3AE2B48 8007DE18 22004292 */  lbu        $v0, 0x22($s2)
/* 3AE2B4C 8007DE1C 00000000 */  nop
/* 3AE2B50 8007DE20 0200422C */  sltiu      $v0, $v0, 0x2
/* 3AE2B54 8007DE24 25004014 */  bnez       $v0, .Llevel_10_8007DEBC
/* 3AE2B58 8007DE28 00000000 */   nop
/* 3AE2B5C 8007DE2C 44006392 */  lbu        $v1, 0x44($s3)
/* 3AE2B60 8007DE30 00000000 */  nop
/* 3AE2B64 8007DE34 8000622C */  sltiu      $v0, $v1, 0x80
/* 3AE2B68 8007DE38 03004010 */  beqz       $v0, .Llevel_10_8007DE48
/* 3AE2B6C 8007DE3C 00010224 */   addiu     $v0, $zero, 0x100
/* 3AE2B70 8007DE40 93F70108 */  j          .Llevel_10_8007DE4C
/* 3AE2B74 8007DE44 23180300 */   negu      $v1, $v1
.Llevel_10_8007DE48:
/* 3AE2B78 8007DE48 23184300 */  subu       $v1, $v0, $v1
.Llevel_10_8007DE4C:
/* 3AE2B7C 8007DE4C 06006228 */  slti       $v0, $v1, 0x6
/* 3AE2B80 8007DE50 03004014 */  bnez       $v0, .Llevel_10_8007DE60
/* 3AE2B84 8007DE54 FBFF6228 */   slti      $v0, $v1, -0x5
/* 3AE2B88 8007DE58 05000324 */  addiu      $v1, $zero, 0x5
/* 3AE2B8C 8007DE5C FBFF6228 */  slti       $v0, $v1, -0x5
.Llevel_10_8007DE60:
/* 3AE2B90 8007DE60 02004010 */  beqz       $v0, .Llevel_10_8007DE6C
/* 3AE2B94 8007DE64 00000000 */   nop
/* 3AE2B98 8007DE68 FBFF0324 */  addiu      $v1, $zero, -0x5
.Llevel_10_8007DE6C:
/* 3AE2B9C 8007DE6C 44006292 */  lbu        $v0, 0x44($s3)
/* 3AE2BA0 8007DE70 45006492 */  lbu        $a0, 0x45($s3)
/* 3AE2BA4 8007DE74 21104300 */  addu       $v0, $v0, $v1
/* 3AE2BA8 8007DE78 440062A2 */  sb         $v0, 0x44($s3)
/* 3AE2BAC 8007DE7C 8000822C */  sltiu      $v0, $a0, 0x80
/* 3AE2BB0 8007DE80 03004014 */  bnez       $v0, .Llevel_10_8007DE90
/* 3AE2BB4 8007DE84 23180400 */   negu      $v1, $a0
/* 3AE2BB8 8007DE88 00010224 */  addiu      $v0, $zero, 0x100
/* 3AE2BBC 8007DE8C 23184400 */  subu       $v1, $v0, $a0
.Llevel_10_8007DE90:
/* 3AE2BC0 8007DE90 06006228 */  slti       $v0, $v1, 0x6
/* 3AE2BC4 8007DE94 03004014 */  bnez       $v0, .Llevel_10_8007DEA4
/* 3AE2BC8 8007DE98 FBFF6228 */   slti      $v0, $v1, -0x5
/* 3AE2BCC 8007DE9C 05000324 */  addiu      $v1, $zero, 0x5
/* 3AE2BD0 8007DEA0 FBFF6228 */  slti       $v0, $v1, -0x5
.Llevel_10_8007DEA4:
/* 3AE2BD4 8007DEA4 02004010 */  beqz       $v0, .Llevel_10_8007DEB0
/* 3AE2BD8 8007DEA8 00000000 */   nop
/* 3AE2BDC 8007DEAC FBFF0324 */  addiu      $v1, $zero, -0x5
.Llevel_10_8007DEB0:
/* 3AE2BE0 8007DEB0 45006292 */  lbu        $v0, 0x45($s3)
/* 3AE2BE4 8007DEB4 B8F70108 */  j          .Llevel_10_8007DEE0
/* 3AE2BE8 8007DEB8 21104300 */   addu      $v0, $v0, $v1
.Llevel_10_8007DEBC:
/* 3AE2BEC 8007DEBC 44006292 */  lbu        $v0, 0x44($s3)
/* 3AE2BF0 8007DEC0 20004392 */  lbu        $v1, 0x20($s2)
/* 3AE2BF4 8007DEC4 00000000 */  nop
/* 3AE2BF8 8007DEC8 21104300 */  addu       $v0, $v0, $v1
/* 3AE2BFC 8007DECC 440062A2 */  sb         $v0, 0x44($s3)
/* 3AE2C00 8007DED0 45006292 */  lbu        $v0, 0x45($s3)
/* 3AE2C04 8007DED4 21004392 */  lbu        $v1, 0x21($s2)
/* 3AE2C08 8007DED8 00000000 */  nop
/* 3AE2C0C 8007DEDC 21104300 */  addu       $v0, $v0, $v1
.Llevel_10_8007DEE0:
/* 3AE2C10 8007DEE0 450062A2 */  sb         $v0, 0x45($s3)
/* 3AE2C14 8007DEE4 21206002 */  addu       $a0, $s3, $zero
/* 3AE2C18 8007DEE8 4957010C */  jal        func_80055D24
/* 3AE2C1C 8007DEEC 02000524 */   addiu     $a1, $zero, 0x2
.Llevel_10_8007DEF0:
/* 3AE2C20 8007DEF0 3800BF8F */  lw         $ra, 0x38($sp)
/* 3AE2C24 8007DEF4 3400B58F */  lw         $s5, 0x34($sp)
/* 3AE2C28 8007DEF8 3000B48F */  lw         $s4, 0x30($sp)
/* 3AE2C2C 8007DEFC 2C00B38F */  lw         $s3, 0x2C($sp)
/* 3AE2C30 8007DF00 2800B28F */  lw         $s2, 0x28($sp)
/* 3AE2C34 8007DF04 2400B18F */  lw         $s1, 0x24($sp)
/* 3AE2C38 8007DF08 2000B08F */  lw         $s0, 0x20($sp)
/* 3AE2C3C 8007DF0C 4000BD27 */  addiu      $sp, $sp, 0x40
/* 3AE2C40 8007DF10 0800E003 */  jr         $ra
/* 3AE2C44 8007DF14 00000000 */   nop
.size func_level_10_8007D7BC, . - func_level_10_8007D7BC
