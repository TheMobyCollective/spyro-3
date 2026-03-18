.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_37_8007A980
/* 7AA66B0 8007A980 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 7AA66B4 8007A984 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 7AA66B8 8007A988 21888000 */  addu       $s1, $a0, $zero
/* 7AA66BC 8007A98C 3000BFAF */  sw         $ra, 0x30($sp)
/* 7AA66C0 8007A990 2800B0AF */  sw         $s0, 0x28($sp)
/* 7AA66C4 8007A994 0000308E */  lw         $s0, 0x0($s1)
/* 7AA66C8 8007A998 00000000 */  nop
/* 7AA66CC 8007A99C 0E000286 */  lh         $v0, 0xE($s0)
/* 7AA66D0 8007A9A0 00000000 */  nop
/* 7AA66D4 8007A9A4 B7004010 */  beqz       $v0, .Llevel_37_8007AC84
/* 7AA66D8 8007A9A8 21184000 */   addu      $v1, $v0, $zero
/* 7AA66DC 8007A9AC 02004228 */  slti       $v0, $v0, 0x2
/* 7AA66E0 8007A9B0 0B004014 */  bnez       $v0, .Llevel_37_8007A9E0
/* 7AA66E4 8007A9B4 00000000 */   nop
/* 7AA66E8 8007A9B8 0780023C */  lui        $v0, %hi(D_8006C648)
/* 7AA66EC 8007A9BC 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 7AA66F0 8007A9C0 00000000 */  nop
/* 7AA66F4 8007A9C4 23106200 */  subu       $v0, $v1, $v0
/* 7AA66F8 8007A9C8 0E0002A6 */  sh         $v0, 0xE($s0)
/* 7AA66FC 8007A9CC 00140200 */  sll        $v0, $v0, 16
/* 7AA6700 8007A9D0 0400401C */  bgtz       $v0, .Llevel_37_8007A9E4
/* 7AA6704 8007A9D4 0C000426 */   addiu     $a0, $s0, 0xC
/* 7AA6708 8007A9D8 01000224 */  addiu      $v0, $zero, 0x1
/* 7AA670C 8007A9DC 0E0002A6 */  sh         $v0, 0xE($s0)
.Llevel_37_8007A9E0:
/* 7AA6710 8007A9E0 0C000426 */  addiu      $a0, $s0, 0xC
.Llevel_37_8007A9E4:
/* 7AA6714 8007A9E4 69D6000C */  jal        func_800359A4
/* 7AA6718 8007A9E8 02000524 */   addiu     $a1, $zero, 0x2
/* 7AA671C 8007A9EC 0A004014 */  bnez       $v0, .Llevel_37_8007AA18
/* 7AA6720 8007A9F0 08000424 */   addiu     $a0, $zero, 0x8
/* 7AA6724 8007A9F4 4D002292 */  lbu        $v0, 0x4D($s1)
/* 7AA6728 8007A9F8 00000000 */  nop
/* 7AA672C 8007A9FC 11004014 */  bnez       $v0, .Llevel_37_8007AA44
/* 7AA6730 8007AA00 0C002426 */   addiu     $a0, $s1, 0xC
/* 7AA6734 8007AA04 0E000386 */  lh         $v1, 0xE($s0)
/* 7AA6738 8007AA08 01000224 */  addiu      $v0, $zero, 0x1
/* 7AA673C 8007AA0C 0D006214 */  bne        $v1, $v0, .Llevel_37_8007AA44
/* 7AA6740 8007AA10 00000000 */   nop
/* 7AA6744 8007AA14 08000424 */  addiu      $a0, $zero, 0x8
.Llevel_37_8007AA18:
/* 7AA6748 8007AA18 46000524 */  addiu      $a1, $zero, 0x46
/* 7AA674C 8007AA1C 0C002626 */  addiu      $a2, $s1, 0xC
/* 7AA6750 8007AA20 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7AA6754 8007AA24 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7AA6758 8007AA28 00000000 */  nop
/* 7AA675C 8007AA2C 09F84000 */  jalr       $v0
/* 7AA6760 8007AA30 10000724 */   addiu     $a3, $zero, 0x10
/* 7AA6764 8007AA34 C656010C */  jal        func_80055B18
/* 7AA6768 8007AA38 21202002 */   addu      $a0, $s1, $zero
/* 7AA676C 8007AA3C 21EB0108 */  j          .Llevel_37_8007AC84
/* 7AA6770 8007AA40 00000000 */   nop
.Llevel_37_8007AA44:
/* 7AA6774 8007AA44 6564000C */  jal        func_80019194
/* 7AA6778 8007AA48 2C010524 */   addiu     $a1, $zero, 0x12C
/* 7AA677C 8007AA4C 17004010 */  beqz       $v0, .Llevel_37_8007AAAC
/* 7AA6780 8007AA50 1000A427 */   addiu     $a0, $sp, 0x10
/* 7AA6784 8007AA54 00000286 */  lh         $v0, 0x0($s0)
/* 7AA6788 8007AA58 00000000 */  nop
/* 7AA678C 8007AA5C 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AA6790 8007AA60 02000286 */  lh         $v0, 0x2($s0)
/* 7AA6794 8007AA64 0780053C */  lui        $a1, %hi(D_80071918)
/* 7AA6798 8007AA68 1819A524 */  addiu      $a1, $a1, %lo(D_80071918)
/* 7AA679C 8007AA6C 1400A2AF */  sw         $v0, 0x14($sp)
/* 7AA67A0 8007AA70 04000286 */  lh         $v0, 0x4($s0)
/* 7AA67A4 8007AA74 21308000 */  addu       $a2, $a0, $zero
/* 7AA67A8 8007AA78 DD3B010C */  jal        func_8004EF74
/* 7AA67AC 8007AA7C 1800A2AF */   sw        $v0, 0x18($sp)
/* 7AA67B0 8007AA80 0A004010 */  beqz       $v0, .Llevel_37_8007AAAC
/* 7AA67B4 8007AA84 00000000 */   nop
/* 7AA67B8 8007AA88 1000A28F */  lw         $v0, 0x10($sp)
/* 7AA67BC 8007AA8C 00000000 */  nop
/* 7AA67C0 8007AA90 000002A6 */  sh         $v0, 0x0($s0)
/* 7AA67C4 8007AA94 1400A28F */  lw         $v0, 0x14($sp)
/* 7AA67C8 8007AA98 00000000 */  nop
/* 7AA67CC 8007AA9C 020002A6 */  sh         $v0, 0x2($s0)
/* 7AA67D0 8007AAA0 1800A28F */  lw         $v0, 0x18($sp)
/* 7AA67D4 8007AAA4 00000000 */  nop
/* 7AA67D8 8007AAA8 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_37_8007AAAC:
/* 7AA67DC 8007AAAC 00000386 */  lh         $v1, 0x0($s0)
/* 7AA67E0 8007AAB0 0C00228E */  lw         $v0, 0xC($s1)
/* 7AA67E4 8007AAB4 00000000 */  nop
/* 7AA67E8 8007AAB8 21104300 */  addu       $v0, $v0, $v1
/* 7AA67EC 8007AABC 0C0022AE */  sw         $v0, 0xC($s1)
/* 7AA67F0 8007AAC0 02000386 */  lh         $v1, 0x2($s0)
/* 7AA67F4 8007AAC4 1000228E */  lw         $v0, 0x10($s1)
/* 7AA67F8 8007AAC8 00000000 */  nop
/* 7AA67FC 8007AACC 21104300 */  addu       $v0, $v0, $v1
/* 7AA6800 8007AAD0 100022AE */  sw         $v0, 0x10($s1)
/* 7AA6804 8007AAD4 12000386 */  lh         $v1, 0x12($s0)
/* 7AA6808 8007AAD8 03000224 */  addiu      $v0, $zero, 0x3
/* 7AA680C 8007AADC 04006214 */  bne        $v1, $v0, .Llevel_37_8007AAF0
/* 7AA6810 8007AAE0 00000000 */   nop
/* 7AA6814 8007AAE4 04000296 */  lhu        $v0, 0x4($s0)
/* 7AA6818 8007AAE8 BFEA0108 */  j          .Llevel_37_8007AAFC
/* 7AA681C 8007AAEC FBFF4224 */   addiu     $v0, $v0, -0x5
.Llevel_37_8007AAF0:
/* 7AA6820 8007AAF0 04000296 */  lhu        $v0, 0x4($s0)
/* 7AA6824 8007AAF4 00000000 */  nop
/* 7AA6828 8007AAF8 F6FF4224 */  addiu      $v0, $v0, -0xA
.Llevel_37_8007AAFC:
/* 7AA682C 8007AAFC 040002A6 */  sh         $v0, 0x4($s0)
/* 7AA6830 8007AB00 04000286 */  lh         $v0, 0x4($s0)
/* 7AA6834 8007AB04 00000000 */  nop
/* 7AA6838 8007AB08 38FF4228 */  slti       $v0, $v0, -0xC8
/* 7AA683C 8007AB0C 02004010 */  beqz       $v0, .Llevel_37_8007AB18
/* 7AA6840 8007AB10 38FF0224 */   addiu     $v0, $zero, -0xC8
/* 7AA6844 8007AB14 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_37_8007AB18:
/* 7AA6848 8007AB18 04000386 */  lh         $v1, 0x4($s0)
/* 7AA684C 8007AB1C 1400228E */  lw         $v0, 0x14($s1)
/* 7AA6850 8007AB20 00000000 */  nop
/* 7AA6854 8007AB24 21104300 */  addu       $v0, $v0, $v1
/* 7AA6858 8007AB28 140022AE */  sw         $v0, 0x14($s1)
/* 7AA685C 8007AB2C 44002292 */  lbu        $v0, 0x44($s1)
/* 7AA6860 8007AB30 06000392 */  lbu        $v1, 0x6($s0)
/* 7AA6864 8007AB34 00000000 */  nop
/* 7AA6868 8007AB38 21104300 */  addu       $v0, $v0, $v1
/* 7AA686C 8007AB3C 440022A2 */  sb         $v0, 0x44($s1)
/* 7AA6870 8007AB40 45002292 */  lbu        $v0, 0x45($s1)
/* 7AA6874 8007AB44 08000392 */  lbu        $v1, 0x8($s0)
/* 7AA6878 8007AB48 00000000 */  nop
/* 7AA687C 8007AB4C 21104300 */  addu       $v0, $v0, $v1
/* 7AA6880 8007AB50 450022A2 */  sb         $v0, 0x45($s1)
/* 7AA6884 8007AB54 46002292 */  lbu        $v0, 0x46($s1)
/* 7AA6888 8007AB58 0A000392 */  lbu        $v1, 0xA($s0)
/* 7AA688C 8007AB5C 00000000 */  nop
/* 7AA6890 8007AB60 21104300 */  addu       $v0, $v0, $v1
/* 7AA6894 8007AB64 460022A2 */  sb         $v0, 0x46($s1)
/* 7AA6898 8007AB68 12000386 */  lh         $v1, 0x12($s0)
/* 7AA689C 8007AB6C 02000224 */  addiu      $v0, $zero, 0x2
/* 7AA68A0 8007AB70 44006210 */  beq        $v1, $v0, .Llevel_37_8007AC84
/* 7AA68A4 8007AB74 6666023C */   lui       $v0, (0x66666667 >> 16)
/* 7AA68A8 8007AB78 0780043C */  lui        $a0, %hi(D_8006C640)
/* 7AA68AC 8007AB7C 40C6848C */  lw         $a0, %lo(D_8006C640)($a0)
/* 7AA68B0 8007AB80 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
/* 7AA68B4 8007AB84 18008200 */  mult       $a0, $v0
/* 7AA68B8 8007AB88 C3170400 */  sra        $v0, $a0, 31
/* 7AA68BC 8007AB8C 10480000 */  mfhi       $t1
/* 7AA68C0 8007AB90 43180900 */  sra        $v1, $t1, 1
/* 7AA68C4 8007AB94 23186200 */  subu       $v1, $v1, $v0
/* 7AA68C8 8007AB98 80100300 */  sll        $v0, $v1, 2
/* 7AA68CC 8007AB9C 21104300 */  addu       $v0, $v0, $v1
/* 7AA68D0 8007ABA0 38008214 */  bne        $a0, $v0, .Llevel_37_8007AC84
/* 7AA68D4 8007ABA4 00000000 */   nop
/* 7AA68D8 8007ABA8 9171010C */  jal        rand
/* 7AA68DC 8007ABAC 00000000 */   nop
/* 7AA68E0 8007ABB0 03004230 */  andi       $v0, $v0, 0x3
/* 7AA68E4 8007ABB4 9171010C */  jal        rand
/* 7AA68E8 8007ABB8 1000A2AF */   sw        $v0, 0x10($sp)
/* 7AA68EC 8007ABBC 03004230 */  andi       $v0, $v0, 0x3
/* 7AA68F0 8007ABC0 1400A2AF */  sw         $v0, 0x14($sp)
/* 7AA68F4 8007ABC4 14000224 */  addiu      $v0, $zero, 0x14
/* 7AA68F8 8007ABC8 1800A2AF */  sw         $v0, 0x18($sp)
/* 7AA68FC 8007ABCC 12000386 */  lh         $v1, 0x12($s0)
/* 7AA6900 8007ABD0 01000224 */  addiu      $v0, $zero, 0x1
/* 7AA6904 8007ABD4 03006214 */  bne        $v1, $v0, .Llevel_37_8007ABE4
/* 7AA6908 8007ABD8 01000424 */   addiu     $a0, $zero, 0x1
/* 7AA690C 8007ABDC FDEA0108 */  j          .Llevel_37_8007ABF4
/* 7AA6910 8007ABE0 21280000 */   addu      $a1, $zero, $zero
.Llevel_37_8007ABE4:
/* 7AA6914 8007ABE4 0B006014 */  bnez       $v1, .Llevel_37_8007AC14
/* 7AA6918 8007ABE8 03000224 */   addiu     $v0, $zero, 0x3
/* 7AA691C 8007ABEC 01000424 */  addiu      $a0, $zero, 0x1
/* 7AA6920 8007ABF0 01000524 */  addiu      $a1, $zero, 0x1
.Llevel_37_8007ABF4:
/* 7AA6924 8007ABF4 0C002626 */  addiu      $a2, $s1, 0xC
/* 7AA6928 8007ABF8 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7AA692C 8007ABFC E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7AA6930 8007AC00 00000000 */  nop
/* 7AA6934 8007AC04 09F84000 */  jalr       $v0
/* 7AA6938 8007AC08 1000A727 */   addiu     $a3, $sp, 0x10
/* 7AA693C 8007AC0C 21EB0108 */  j          .Llevel_37_8007AC84
/* 7AA6940 8007AC10 00000000 */   nop
.Llevel_37_8007AC14:
/* 7AA6944 8007AC14 1B006214 */  bne        $v1, $v0, .Llevel_37_8007AC84
/* 7AA6948 8007AC18 0A000424 */   addiu     $a0, $zero, 0xA
/* 7AA694C 8007AC1C 00000296 */  lhu        $v0, 0x0($s0)
/* 7AA6950 8007AC20 00000000 */  nop
/* 7AA6954 8007AC24 00140200 */  sll        $v0, $v0, 16
/* 7AA6958 8007AC28 83140200 */  sra        $v0, $v0, 18
/* 7AA695C 8007AC2C 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AA6960 8007AC30 00000296 */  lhu        $v0, 0x0($s0)
/* 7AA6964 8007AC34 00000000 */  nop
/* 7AA6968 8007AC38 00140200 */  sll        $v0, $v0, 16
/* 7AA696C 8007AC3C 83140200 */  sra        $v0, $v0, 18
/* 7AA6970 8007AC40 1400A2AF */  sw         $v0, 0x14($sp)
/* 7AA6974 8007AC44 04000296 */  lhu        $v0, 0x4($s0)
/* 7AA6978 8007AC48 14000524 */  addiu      $a1, $zero, 0x14
/* 7AA697C 8007AC4C 00140200 */  sll        $v0, $v0, 16
/* 7AA6980 8007AC50 83140200 */  sra        $v0, $v0, 18
/* 7AA6984 8007AC54 DBD8000C */  jal        func_8003636C
/* 7AA6988 8007AC58 1800A2AF */   sw        $v0, 0x18($sp)
/* 7AA698C 8007AC5C 01000424 */  addiu      $a0, $zero, 0x1
/* 7AA6990 8007AC60 27000524 */  addiu      $a1, $zero, 0x27
/* 7AA6994 8007AC64 0C002626 */  addiu      $a2, $s1, 0xC
/* 7AA6998 8007AC68 1000A727 */  addiu      $a3, $sp, 0x10
/* 7AA699C 8007AC6C 1800A38F */  lw         $v1, 0x18($sp)
/* 7AA69A0 8007AC70 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 7AA69A4 8007AC74 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 7AA69A8 8007AC78 21186200 */  addu       $v1, $v1, $v0
/* 7AA69AC 8007AC7C 09F80001 */  jalr       $t0
/* 7AA69B0 8007AC80 1800A3AF */   sw        $v1, 0x18($sp)
.Llevel_37_8007AC84:
/* 7AA69B4 8007AC84 3000BF8F */  lw         $ra, 0x30($sp)
/* 7AA69B8 8007AC88 2C00B18F */  lw         $s1, 0x2C($sp)
/* 7AA69BC 8007AC8C 2800B08F */  lw         $s0, 0x28($sp)
/* 7AA69C0 8007AC90 3800BD27 */  addiu      $sp, $sp, 0x38
/* 7AA69C4 8007AC94 0800E003 */  jr         $ra
/* 7AA69C8 8007AC98 00000000 */   nop
.size func_level_37_8007A980, . - func_level_37_8007A980
