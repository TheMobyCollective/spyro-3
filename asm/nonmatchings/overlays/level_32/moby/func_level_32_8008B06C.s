.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_338_level_32
/* 6DF259C 8008B06C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 6DF25A0 8008B070 1000B0AF */  sw         $s0, 0x10($sp)
/* 6DF25A4 8008B074 21808000 */  addu       $s0, $a0, $zero
/* 6DF25A8 8008B078 01000224 */  addiu      $v0, $zero, 0x1
/* 6DF25AC 8008B07C 1800BFAF */  sw         $ra, 0x18($sp)
/* 6DF25B0 8008B080 1400B1AF */  sw         $s1, 0x14($sp)
/* 6DF25B4 8008B084 48000392 */  lbu        $v1, 0x48($s0)
/* 6DF25B8 8008B088 0000118E */  lw         $s1, 0x0($s0)
/* 6DF25BC 8008B08C 10006210 */  beq        $v1, $v0, .Llevel_32_8008B0D0
/* 6DF25C0 8008B090 02006228 */   slti      $v0, $v1, 0x2
/* 6DF25C4 8008B094 05004010 */  beqz       $v0, .Llevel_32_8008B0AC
/* 6DF25C8 8008B098 00000000 */   nop
/* 6DF25CC 8008B09C 0A006010 */  beqz       $v1, .Llevel_32_8008B0C8
/* 6DF25D0 8008B0A0 01000224 */   addiu     $v0, $zero, 0x1
/* 6DF25D4 8008B0A4 992C0208 */  j          .Llevel_32_8008B264
/* 6DF25D8 8008B0A8 00000000 */   nop
.Llevel_32_8008B0AC:
/* 6DF25DC 8008B0AC 02000224 */  addiu      $v0, $zero, 0x2
/* 6DF25E0 8008B0B0 38006210 */  beq        $v1, $v0, .Llevel_32_8008B194
/* 6DF25E4 8008B0B4 03000224 */   addiu     $v0, $zero, 0x3
/* 6DF25E8 8008B0B8 55006210 */  beq        $v1, $v0, .Llevel_32_8008B210
/* 6DF25EC 8008B0BC 21202002 */   addu      $a0, $s1, $zero
/* 6DF25F0 8008B0C0 992C0208 */  j          .Llevel_32_8008B264
/* 6DF25F4 8008B0C4 00000000 */   nop
.Llevel_32_8008B0C8:
/* 6DF25F8 8008B0C8 992C0208 */  j          .Llevel_32_8008B264
/* 6DF25FC 8008B0CC 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_32_8008B0D0:
/* 6DF2600 8008B0D0 08002286 */  lh         $v0, 0x8($s1)
/* 6DF2604 8008B0D4 00000000 */  nop
/* 6DF2608 8008B0D8 17004010 */  beqz       $v0, .Llevel_32_8008B138
/* 6DF260C 8008B0DC 21200002 */   addu      $a0, $s0, $zero
/* 6DF2610 8008B0E0 0A002486 */  lh         $a0, 0xA($s1)
/* 6DF2614 8008B0E4 00000000 */  nop
/* 6DF2618 8008B0E8 12008010 */  beqz       $a0, .Llevel_32_8008B134
/* 6DF261C 8008B0EC 00000000 */   nop
/* 6DF2620 8008B0F0 0780033C */  lui        $v1, %hi(D_8006FA80)
/* 6DF2624 8008B0F4 80FA638C */  lw         $v1, %lo(D_8006FA80)($v1)
/* 6DF2628 8008B0F8 00000000 */  nop
/* 6DF262C 8008B0FC 2A104300 */  slt        $v0, $v0, $v1
/* 6DF2630 8008B100 07004010 */  beqz       $v0, .Llevel_32_8008B120
/* 6DF2634 8008B104 2A106400 */   slt       $v0, $v1, $a0
/* 6DF2638 8008B108 06004010 */  beqz       $v0, .Llevel_32_8008B124
/* 6DF263C 8008B10C 01000324 */   addiu     $v1, $zero, 0x1
/* 6DF2640 8008B110 410000A2 */  sb         $zero, 0x41($s0)
/* 6DF2644 8008B114 4C0000A2 */  sb         $zero, 0x4C($s0)
/* 6DF2648 8008B118 4D2C0208 */  j          .Llevel_32_8008B134
/* 6DF264C 8008B11C 4D0000A2 */   sb        $zero, 0x4D($s0)
.Llevel_32_8008B120:
/* 6DF2650 8008B120 01000324 */  addiu      $v1, $zero, 0x1
.Llevel_32_8008B124:
/* 6DF2654 8008B124 3F000224 */  addiu      $v0, $zero, 0x3F
/* 6DF2658 8008B128 410003A2 */  sb         $v1, 0x41($s0)
/* 6DF265C 8008B12C 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 6DF2660 8008B130 4D0003A2 */  sb         $v1, 0x4D($s0)
.Llevel_32_8008B134:
/* 6DF2664 8008B134 21200002 */  addu       $a0, $s0, $zero
.Llevel_32_8008B138:
/* 6DF2668 8008B138 0780023C */  lui        $v0, %hi(D_8006E040)
/* 6DF266C 8008B13C 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 6DF2670 8008B140 0780053C */  lui        $a1, %hi(D_80070328)
/* 6DF2674 8008B144 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 6DF2678 8008B148 00140200 */  sll        $v0, $v0, 16
/* 6DF267C 8008B14C 03150200 */  sra        $v0, $v0, 20
/* 6DF2680 8008B150 80FF4224 */  addiu      $v0, $v0, -0x80
/* 6DF2684 8008B154 460002A2 */  sb         $v0, 0x46($s0)
/* 6DF2688 8008B158 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 6DF268C 8008B15C 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 6DF2690 8008B160 18000324 */  addiu      $v1, $zero, 0x18
/* 6DF2694 8008B164 4F0003A2 */  sb         $v1, 0x4F($s0)
/* 6DF2698 8008B168 02110200 */  srl        $v0, $v0, 4
/* 6DF269C 8008B16C 450002A2 */  sb         $v0, 0x45($s0)
/* 6DF26A0 8008B170 0780023C */  lui        $v0, %hi(unk_ovlheader_800743A0)
/* 6DF26A4 8008B174 A043428C */  lw         $v0, %lo(unk_ovlheader_800743A0)($v0)
/* 6DF26A8 8008B178 00000000 */  nop
/* 6DF26AC 8008B17C 09F84000 */  jalr       $v0
/* 6DF26B0 8008B180 72060624 */   addiu     $a2, $zero, 0x672
/* 6DF26B4 8008B184 37004010 */  beqz       $v0, .Llevel_32_8008B264
/* 6DF26B8 8008B188 02000224 */   addiu     $v0, $zero, 0x2
/* 6DF26BC 8008B18C 992C0208 */  j          .Llevel_32_8008B264
/* 6DF26C0 8008B190 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_32_8008B194:
/* 6DF26C4 8008B194 21200002 */  addu       $a0, $s0, $zero
/* 6DF26C8 8008B198 21280000 */  addu       $a1, $zero, $zero
/* 6DF26CC 8008B19C AFEE000C */  jal        func_8003BABC
/* 6DF26D0 8008B1A0 21300000 */   addu      $a2, $zero, $zero
/* 6DF26D4 8008B1A4 0C00238E */  lw         $v1, 0xC($s1)
/* 6DF26D8 8008B1A8 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 6DF26DC 8008B1AC 0F006210 */  beq        $v1, $v0, .Llevel_32_8008B1EC
/* 6DF26E0 8008B1B0 40100300 */   sll       $v0, $v1, 1
/* 6DF26E4 8008B1B4 21104300 */  addu       $v0, $v0, $v1
/* 6DF26E8 8008B1B8 80100200 */  sll        $v0, $v0, 2
/* 6DF26EC 8008B1BC 23104300 */  subu       $v0, $v0, $v1
/* 6DF26F0 8008B1C0 0780033C */  lui        $v1, %hi(D_8006C550)
/* 6DF26F4 8008B1C4 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 6DF26F8 8008B1C8 C0100200 */  sll        $v0, $v0, 3
/* 6DF26FC 8008B1CC 21104300 */  addu       $v0, $v0, $v1
/* 6DF2700 8008B1D0 0000438C */  lw         $v1, 0x0($v0)
/* 6DF2704 8008B1D4 00000000 */  nop
/* 6DF2708 8008B1D8 34016294 */  lhu        $v0, 0x134($v1)
/* 6DF270C 8008B1DC 36016494 */  lhu        $a0, 0x136($v1)
/* 6DF2710 8008B1E0 00000000 */  nop
/* 6DF2714 8008B1E4 21104400 */  addu       $v0, $v0, $a0
/* 6DF2718 8008B1E8 340162A4 */  sh         $v0, 0x134($v1)
.Llevel_32_8008B1EC:
/* 6DF271C 8008B1EC FF000224 */  addiu      $v0, $zero, 0xFF
/* 6DF2720 8008B1F0 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 6DF2724 8008B1F4 3C000224 */  addiu      $v0, $zero, 0x3C
/* 6DF2728 8008B1F8 4C0000A2 */  sb         $zero, 0x4C($s0)
/* 6DF272C 8008B1FC 4D0000A2 */  sb         $zero, 0x4D($s0)
/* 6DF2730 8008B200 000022AE */  sw         $v0, 0x0($s1)
/* 6DF2734 8008B204 03000224 */  addiu      $v0, $zero, 0x3
/* 6DF2738 8008B208 992C0208 */  j          .Llevel_32_8008B264
/* 6DF273C 8008B20C 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_32_8008B210:
/* 6DF2740 8008B210 69D6000C */  jal        func_800359A4
/* 6DF2744 8008B214 04000524 */   addiu     $a1, $zero, 0x4
/* 6DF2748 8008B218 12004010 */  beqz       $v0, .Llevel_32_8008B264
/* 6DF274C 8008B21C 00000000 */   nop
/* 6DF2750 8008B220 0780023C */  lui        $v0, %hi(D_8006E040)
/* 6DF2754 8008B224 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 6DF2758 8008B228 00000000 */  nop
/* 6DF275C 8008B22C 00140200 */  sll        $v0, $v0, 16
/* 6DF2760 8008B230 03150200 */  sra        $v0, $v0, 20
/* 6DF2764 8008B234 80FF4224 */  addiu      $v0, $v0, -0x80
/* 6DF2768 8008B238 460002A2 */  sb         $v0, 0x46($s0)
/* 6DF276C 8008B23C 0780033C */  lui        $v1, %hi(D_8006E03E)
/* 6DF2770 8008B240 3EE06394 */  lhu        $v1, %lo(D_8006E03E)($v1)
/* 6DF2774 8008B244 3F000224 */  addiu      $v0, $zero, 0x3F
/* 6DF2778 8008B248 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 6DF277C 8008B24C 10000224 */  addiu      $v0, $zero, 0x10
/* 6DF2780 8008B250 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 6DF2784 8008B254 01000224 */  addiu      $v0, $zero, 0x1
/* 6DF2788 8008B258 480002A2 */  sb         $v0, 0x48($s0)
/* 6DF278C 8008B25C 02190300 */  srl        $v1, $v1, 4
/* 6DF2790 8008B260 450003A2 */  sb         $v1, 0x45($s0)
.Llevel_32_8008B264:
/* 6DF2794 8008B264 1800BF8F */  lw         $ra, 0x18($sp)
/* 6DF2798 8008B268 1400B18F */  lw         $s1, 0x14($sp)
/* 6DF279C 8008B26C 1000B08F */  lw         $s0, 0x10($sp)
/* 6DF27A0 8008B270 2000BD27 */  addiu      $sp, $sp, 0x20
/* 6DF27A4 8008B274 0800E003 */  jr         $ra
/* 6DF27A8 8008B278 00000000 */   nop
.size MobyUpdate_338_level_32, . - MobyUpdate_338_level_32
