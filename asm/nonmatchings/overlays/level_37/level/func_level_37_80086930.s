.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_37_80086930
/* 7AB2660 80086930 80FFBD27 */  addiu      $sp, $sp, -0x80
/* 7AB2664 80086934 7400B7AF */  sw         $s7, 0x74($sp)
/* 7AB2668 80086938 9000B78F */  lw         $s7, 0x90($sp)
/* 7AB266C 8008693C 6800B4AF */  sw         $s4, 0x68($sp)
/* 7AB2670 80086940 21A08000 */  addu       $s4, $a0, $zero
/* 7AB2674 80086944 6C00B5AF */  sw         $s5, 0x6C($sp)
/* 7AB2678 80086948 21A8A000 */  addu       $s5, $a1, $zero
/* 7AB267C 8008694C 6400B3AF */  sw         $s3, 0x64($sp)
/* 7AB2680 80086950 2198C000 */  addu       $s3, $a2, $zero
/* 7AB2684 80086954 7000B6AF */  sw         $s6, 0x70($sp)
/* 7AB2688 80086958 21B0E000 */  addu       $s6, $a3, $zero
/* 7AB268C 8008695C 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 7AB2690 80086960 21880000 */  addu       $s1, $zero, $zero
/* 7AB2694 80086964 7800BFAF */  sw         $ra, 0x78($sp)
/* 7AB2698 80086968 6000B2AF */  sw         $s2, 0x60($sp)
/* 7AB269C 8008696C 2C00601A */  blez       $s3, .Llevel_37_80086A20
/* 7AB26A0 80086970 5800B0AF */   sw        $s0, 0x58($sp)
/* 7AB26A4 80086974 3000B227 */  addiu      $s2, $sp, 0x30
/* 7AB26A8 80086978 2000B027 */  addiu      $s0, $sp, 0x20
.Llevel_37_8008697C:
/* 7AB26AC 8008697C 9171010C */  jal        rand
/* 7AB26B0 80086980 4800A0A3 */   sb        $zero, 0x48($sp)
/* 7AB26B4 80086984 9171010C */  jal        rand
/* 7AB26B8 80086988 4900A2A3 */   sb        $v0, 0x49($sp)
/* 7AB26BC 8008698C 4800A427 */  addiu      $a0, $sp, 0x48
/* 7AB26C0 80086990 21284002 */  addu       $a1, $s2, $zero
/* 7AB26C4 80086994 21300000 */  addu       $a2, $zero, $zero
/* 7AB26C8 80086998 A43A010C */  jal        func_8004EA90
/* 7AB26CC 8008699C 4A00A2A3 */   sb        $v0, 0x4A($sp)
/* 7AB26D0 800869A0 2120C002 */  addu       $a0, $s6, $zero
/* 7AB26D4 800869A4 DBD8000C */  jal        func_8003636C
/* 7AB26D8 800869A8 2128E002 */   addu      $a1, $s7, $zero
/* 7AB26DC 800869AC 21204002 */  addu       $a0, $s2, $zero
/* 7AB26E0 800869B0 1000A527 */  addiu      $a1, $sp, 0x10
/* 7AB26E4 800869B4 2130A000 */  addu       $a2, $a1, $zero
/* 7AB26E8 800869B8 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AB26EC 800869BC 1400A0AF */  sw         $zero, 0x14($sp)
/* 7AB26F0 800869C0 5B3B010C */  jal        func_8004ED6C
/* 7AB26F4 800869C4 1800A0AF */   sw        $zero, 0x18($sp)
/* 7AB26F8 800869C8 21200002 */  addu       $a0, $s0, $zero
/* 7AB26FC 800869CC 5E3C010C */  jal        func_8004F178
/* 7AB2700 800869D0 1000A527 */   addiu     $a1, $sp, 0x10
/* 7AB2704 800869D4 21200002 */  addu       $a0, $s0, $zero
/* 7AB2708 800869D8 3A3C010C */  jal        func_8004F0E8
/* 7AB270C 800869DC 02000524 */   addiu     $a1, $zero, 0x2
/* 7AB2710 800869E0 21200002 */  addu       $a0, $s0, $zero
/* 7AB2714 800869E4 21280002 */  addu       $a1, $s0, $zero
/* 7AB2718 800869E8 653C010C */  jal        func_8004F194
/* 7AB271C 800869EC 21308002 */   addu      $a2, $s4, $zero
/* 7AB2720 800869F0 01000424 */  addiu      $a0, $zero, 0x1
/* 7AB2724 800869F4 2128A002 */  addu       $a1, $s5, $zero
/* 7AB2728 800869F8 21300002 */  addu       $a2, $s0, $zero
/* 7AB272C 800869FC 01003126 */  addiu      $s1, $s1, 0x1
/* 7AB2730 80086A00 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7AB2734 80086A04 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7AB2738 80086A08 00000000 */  nop
/* 7AB273C 80086A0C 09F84000 */  jalr       $v0
/* 7AB2740 80086A10 1000A727 */   addiu     $a3, $sp, 0x10
/* 7AB2744 80086A14 2A103302 */  slt        $v0, $s1, $s3
/* 7AB2748 80086A18 D8FF4014 */  bnez       $v0, .Llevel_37_8008697C
/* 7AB274C 80086A1C 00000000 */   nop
.Llevel_37_80086A20:
/* 7AB2750 80086A20 7800BF8F */  lw         $ra, 0x78($sp)
/* 7AB2754 80086A24 7400B78F */  lw         $s7, 0x74($sp)
/* 7AB2758 80086A28 7000B68F */  lw         $s6, 0x70($sp)
/* 7AB275C 80086A2C 6C00B58F */  lw         $s5, 0x6C($sp)
/* 7AB2760 80086A30 6800B48F */  lw         $s4, 0x68($sp)
/* 7AB2764 80086A34 6400B38F */  lw         $s3, 0x64($sp)
/* 7AB2768 80086A38 6000B28F */  lw         $s2, 0x60($sp)
/* 7AB276C 80086A3C 5C00B18F */  lw         $s1, 0x5C($sp)
/* 7AB2770 80086A40 5800B08F */  lw         $s0, 0x58($sp)
/* 7AB2774 80086A44 8000BD27 */  addiu      $sp, $sp, 0x80
/* 7AB2778 80086A48 0800E003 */  jr         $ra
/* 7AB277C 80086A4C 00000000 */   nop
.size func_level_37_80086930, . - func_level_37_80086930
