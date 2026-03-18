.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_50_8007A758
/* 95CEC88 8007A758 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 95CEC8C 8007A75C 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 95CEC90 8007A760 21888000 */  addu       $s1, $a0, $zero
/* 95CEC94 8007A764 3000BFAF */  sw         $ra, 0x30($sp)
/* 95CEC98 8007A768 2800B0AF */  sw         $s0, 0x28($sp)
/* 95CEC9C 8007A76C 0000308E */  lw         $s0, 0x0($s1)
/* 95CECA0 8007A770 00000000 */  nop
/* 95CECA4 8007A774 0E000286 */  lh         $v0, 0xE($s0)
/* 95CECA8 8007A778 00000000 */  nop
/* 95CECAC 8007A77C B7004010 */  beqz       $v0, .Llevel_50_8007AA5C
/* 95CECB0 8007A780 21184000 */   addu      $v1, $v0, $zero
/* 95CECB4 8007A784 02004228 */  slti       $v0, $v0, 0x2
/* 95CECB8 8007A788 0B004014 */  bnez       $v0, .Llevel_50_8007A7B8
/* 95CECBC 8007A78C 00000000 */   nop
/* 95CECC0 8007A790 0780023C */  lui        $v0, %hi(D_8006C648)
/* 95CECC4 8007A794 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 95CECC8 8007A798 00000000 */  nop
/* 95CECCC 8007A79C 23106200 */  subu       $v0, $v1, $v0
/* 95CECD0 8007A7A0 0E0002A6 */  sh         $v0, 0xE($s0)
/* 95CECD4 8007A7A4 00140200 */  sll        $v0, $v0, 16
/* 95CECD8 8007A7A8 0400401C */  bgtz       $v0, .Llevel_50_8007A7BC
/* 95CECDC 8007A7AC 0C000426 */   addiu     $a0, $s0, 0xC
/* 95CECE0 8007A7B0 01000224 */  addiu      $v0, $zero, 0x1
/* 95CECE4 8007A7B4 0E0002A6 */  sh         $v0, 0xE($s0)
.Llevel_50_8007A7B8:
/* 95CECE8 8007A7B8 0C000426 */  addiu      $a0, $s0, 0xC
.Llevel_50_8007A7BC:
/* 95CECEC 8007A7BC 69D6000C */  jal        func_800359A4
/* 95CECF0 8007A7C0 02000524 */   addiu     $a1, $zero, 0x2
/* 95CECF4 8007A7C4 0A004014 */  bnez       $v0, .Llevel_50_8007A7F0
/* 95CECF8 8007A7C8 08000424 */   addiu     $a0, $zero, 0x8
/* 95CECFC 8007A7CC 4D002292 */  lbu        $v0, 0x4D($s1)
/* 95CED00 8007A7D0 00000000 */  nop
/* 95CED04 8007A7D4 11004014 */  bnez       $v0, .Llevel_50_8007A81C
/* 95CED08 8007A7D8 0C002426 */   addiu     $a0, $s1, 0xC
/* 95CED0C 8007A7DC 0E000386 */  lh         $v1, 0xE($s0)
/* 95CED10 8007A7E0 01000224 */  addiu      $v0, $zero, 0x1
/* 95CED14 8007A7E4 0D006214 */  bne        $v1, $v0, .Llevel_50_8007A81C
/* 95CED18 8007A7E8 00000000 */   nop
/* 95CED1C 8007A7EC 08000424 */  addiu      $a0, $zero, 0x8
.Llevel_50_8007A7F0:
/* 95CED20 8007A7F0 46000524 */  addiu      $a1, $zero, 0x46
/* 95CED24 8007A7F4 0C002626 */  addiu      $a2, $s1, 0xC
/* 95CED28 8007A7F8 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 95CED2C 8007A7FC E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 95CED30 8007A800 00000000 */  nop
/* 95CED34 8007A804 09F84000 */  jalr       $v0
/* 95CED38 8007A808 10000724 */   addiu     $a3, $zero, 0x10
/* 95CED3C 8007A80C C656010C */  jal        func_80055B18
/* 95CED40 8007A810 21202002 */   addu      $a0, $s1, $zero
/* 95CED44 8007A814 97EA0108 */  j          .Llevel_50_8007AA5C
/* 95CED48 8007A818 00000000 */   nop
.Llevel_50_8007A81C:
/* 95CED4C 8007A81C 6564000C */  jal        func_80019194
/* 95CED50 8007A820 2C010524 */   addiu     $a1, $zero, 0x12C
/* 95CED54 8007A824 17004010 */  beqz       $v0, .Llevel_50_8007A884
/* 95CED58 8007A828 1000A427 */   addiu     $a0, $sp, 0x10
/* 95CED5C 8007A82C 00000286 */  lh         $v0, 0x0($s0)
/* 95CED60 8007A830 00000000 */  nop
/* 95CED64 8007A834 1000A2AF */  sw         $v0, 0x10($sp)
/* 95CED68 8007A838 02000286 */  lh         $v0, 0x2($s0)
/* 95CED6C 8007A83C 0780053C */  lui        $a1, %hi(D_80071918)
/* 95CED70 8007A840 1819A524 */  addiu      $a1, $a1, %lo(D_80071918)
/* 95CED74 8007A844 1400A2AF */  sw         $v0, 0x14($sp)
/* 95CED78 8007A848 04000286 */  lh         $v0, 0x4($s0)
/* 95CED7C 8007A84C 21308000 */  addu       $a2, $a0, $zero
/* 95CED80 8007A850 DD3B010C */  jal        func_8004EF74
/* 95CED84 8007A854 1800A2AF */   sw        $v0, 0x18($sp)
/* 95CED88 8007A858 0A004010 */  beqz       $v0, .Llevel_50_8007A884
/* 95CED8C 8007A85C 00000000 */   nop
/* 95CED90 8007A860 1000A28F */  lw         $v0, 0x10($sp)
/* 95CED94 8007A864 00000000 */  nop
/* 95CED98 8007A868 000002A6 */  sh         $v0, 0x0($s0)
/* 95CED9C 8007A86C 1400A28F */  lw         $v0, 0x14($sp)
/* 95CEDA0 8007A870 00000000 */  nop
/* 95CEDA4 8007A874 020002A6 */  sh         $v0, 0x2($s0)
/* 95CEDA8 8007A878 1800A28F */  lw         $v0, 0x18($sp)
/* 95CEDAC 8007A87C 00000000 */  nop
/* 95CEDB0 8007A880 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_50_8007A884:
/* 95CEDB4 8007A884 00000386 */  lh         $v1, 0x0($s0)
/* 95CEDB8 8007A888 0C00228E */  lw         $v0, 0xC($s1)
/* 95CEDBC 8007A88C 00000000 */  nop
/* 95CEDC0 8007A890 21104300 */  addu       $v0, $v0, $v1
/* 95CEDC4 8007A894 0C0022AE */  sw         $v0, 0xC($s1)
/* 95CEDC8 8007A898 02000386 */  lh         $v1, 0x2($s0)
/* 95CEDCC 8007A89C 1000228E */  lw         $v0, 0x10($s1)
/* 95CEDD0 8007A8A0 00000000 */  nop
/* 95CEDD4 8007A8A4 21104300 */  addu       $v0, $v0, $v1
/* 95CEDD8 8007A8A8 100022AE */  sw         $v0, 0x10($s1)
/* 95CEDDC 8007A8AC 12000386 */  lh         $v1, 0x12($s0)
/* 95CEDE0 8007A8B0 03000224 */  addiu      $v0, $zero, 0x3
/* 95CEDE4 8007A8B4 04006214 */  bne        $v1, $v0, .Llevel_50_8007A8C8
/* 95CEDE8 8007A8B8 00000000 */   nop
/* 95CEDEC 8007A8BC 04000296 */  lhu        $v0, 0x4($s0)
/* 95CEDF0 8007A8C0 35EA0108 */  j          .Llevel_50_8007A8D4
/* 95CEDF4 8007A8C4 FBFF4224 */   addiu     $v0, $v0, -0x5
.Llevel_50_8007A8C8:
/* 95CEDF8 8007A8C8 04000296 */  lhu        $v0, 0x4($s0)
/* 95CEDFC 8007A8CC 00000000 */  nop
/* 95CEE00 8007A8D0 F6FF4224 */  addiu      $v0, $v0, -0xA
.Llevel_50_8007A8D4:
/* 95CEE04 8007A8D4 040002A6 */  sh         $v0, 0x4($s0)
/* 95CEE08 8007A8D8 04000286 */  lh         $v0, 0x4($s0)
/* 95CEE0C 8007A8DC 00000000 */  nop
/* 95CEE10 8007A8E0 38FF4228 */  slti       $v0, $v0, -0xC8
/* 95CEE14 8007A8E4 02004010 */  beqz       $v0, .Llevel_50_8007A8F0
/* 95CEE18 8007A8E8 38FF0224 */   addiu     $v0, $zero, -0xC8
/* 95CEE1C 8007A8EC 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_50_8007A8F0:
/* 95CEE20 8007A8F0 04000386 */  lh         $v1, 0x4($s0)
/* 95CEE24 8007A8F4 1400228E */  lw         $v0, 0x14($s1)
/* 95CEE28 8007A8F8 00000000 */  nop
/* 95CEE2C 8007A8FC 21104300 */  addu       $v0, $v0, $v1
/* 95CEE30 8007A900 140022AE */  sw         $v0, 0x14($s1)
/* 95CEE34 8007A904 44002292 */  lbu        $v0, 0x44($s1)
/* 95CEE38 8007A908 06000392 */  lbu        $v1, 0x6($s0)
/* 95CEE3C 8007A90C 00000000 */  nop
/* 95CEE40 8007A910 21104300 */  addu       $v0, $v0, $v1
/* 95CEE44 8007A914 440022A2 */  sb         $v0, 0x44($s1)
/* 95CEE48 8007A918 45002292 */  lbu        $v0, 0x45($s1)
/* 95CEE4C 8007A91C 08000392 */  lbu        $v1, 0x8($s0)
/* 95CEE50 8007A920 00000000 */  nop
/* 95CEE54 8007A924 21104300 */  addu       $v0, $v0, $v1
/* 95CEE58 8007A928 450022A2 */  sb         $v0, 0x45($s1)
/* 95CEE5C 8007A92C 46002292 */  lbu        $v0, 0x46($s1)
/* 95CEE60 8007A930 0A000392 */  lbu        $v1, 0xA($s0)
/* 95CEE64 8007A934 00000000 */  nop
/* 95CEE68 8007A938 21104300 */  addu       $v0, $v0, $v1
/* 95CEE6C 8007A93C 460022A2 */  sb         $v0, 0x46($s1)
/* 95CEE70 8007A940 12000386 */  lh         $v1, 0x12($s0)
/* 95CEE74 8007A944 02000224 */  addiu      $v0, $zero, 0x2
/* 95CEE78 8007A948 44006210 */  beq        $v1, $v0, .Llevel_50_8007AA5C
/* 95CEE7C 8007A94C 6666023C */   lui       $v0, (0x66666667 >> 16)
/* 95CEE80 8007A950 0780043C */  lui        $a0, %hi(D_8006C640)
/* 95CEE84 8007A954 40C6848C */  lw         $a0, %lo(D_8006C640)($a0)
/* 95CEE88 8007A958 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
/* 95CEE8C 8007A95C 18008200 */  mult       $a0, $v0
/* 95CEE90 8007A960 C3170400 */  sra        $v0, $a0, 31
/* 95CEE94 8007A964 10480000 */  mfhi       $t1
/* 95CEE98 8007A968 43180900 */  sra        $v1, $t1, 1
/* 95CEE9C 8007A96C 23186200 */  subu       $v1, $v1, $v0
/* 95CEEA0 8007A970 80100300 */  sll        $v0, $v1, 2
/* 95CEEA4 8007A974 21104300 */  addu       $v0, $v0, $v1
/* 95CEEA8 8007A978 38008214 */  bne        $a0, $v0, .Llevel_50_8007AA5C
/* 95CEEAC 8007A97C 00000000 */   nop
/* 95CEEB0 8007A980 9171010C */  jal        rand
/* 95CEEB4 8007A984 00000000 */   nop
/* 95CEEB8 8007A988 03004230 */  andi       $v0, $v0, 0x3
/* 95CEEBC 8007A98C 9171010C */  jal        rand
/* 95CEEC0 8007A990 1000A2AF */   sw        $v0, 0x10($sp)
/* 95CEEC4 8007A994 03004230 */  andi       $v0, $v0, 0x3
/* 95CEEC8 8007A998 1400A2AF */  sw         $v0, 0x14($sp)
/* 95CEECC 8007A99C 14000224 */  addiu      $v0, $zero, 0x14
/* 95CEED0 8007A9A0 1800A2AF */  sw         $v0, 0x18($sp)
/* 95CEED4 8007A9A4 12000386 */  lh         $v1, 0x12($s0)
/* 95CEED8 8007A9A8 01000224 */  addiu      $v0, $zero, 0x1
/* 95CEEDC 8007A9AC 03006214 */  bne        $v1, $v0, .Llevel_50_8007A9BC
/* 95CEEE0 8007A9B0 01000424 */   addiu     $a0, $zero, 0x1
/* 95CEEE4 8007A9B4 73EA0108 */  j          .Llevel_50_8007A9CC
/* 95CEEE8 8007A9B8 21280000 */   addu      $a1, $zero, $zero
.Llevel_50_8007A9BC:
/* 95CEEEC 8007A9BC 0B006014 */  bnez       $v1, .Llevel_50_8007A9EC
/* 95CEEF0 8007A9C0 03000224 */   addiu     $v0, $zero, 0x3
/* 95CEEF4 8007A9C4 01000424 */  addiu      $a0, $zero, 0x1
/* 95CEEF8 8007A9C8 01000524 */  addiu      $a1, $zero, 0x1
.Llevel_50_8007A9CC:
/* 95CEEFC 8007A9CC 0C002626 */  addiu      $a2, $s1, 0xC
/* 95CEF00 8007A9D0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 95CEF04 8007A9D4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 95CEF08 8007A9D8 00000000 */  nop
/* 95CEF0C 8007A9DC 09F84000 */  jalr       $v0
/* 95CEF10 8007A9E0 1000A727 */   addiu     $a3, $sp, 0x10
/* 95CEF14 8007A9E4 97EA0108 */  j          .Llevel_50_8007AA5C
/* 95CEF18 8007A9E8 00000000 */   nop
.Llevel_50_8007A9EC:
/* 95CEF1C 8007A9EC 1B006214 */  bne        $v1, $v0, .Llevel_50_8007AA5C
/* 95CEF20 8007A9F0 0A000424 */   addiu     $a0, $zero, 0xA
/* 95CEF24 8007A9F4 00000296 */  lhu        $v0, 0x0($s0)
/* 95CEF28 8007A9F8 00000000 */  nop
/* 95CEF2C 8007A9FC 00140200 */  sll        $v0, $v0, 16
/* 95CEF30 8007AA00 83140200 */  sra        $v0, $v0, 18
/* 95CEF34 8007AA04 1000A2AF */  sw         $v0, 0x10($sp)
/* 95CEF38 8007AA08 00000296 */  lhu        $v0, 0x0($s0)
/* 95CEF3C 8007AA0C 00000000 */  nop
/* 95CEF40 8007AA10 00140200 */  sll        $v0, $v0, 16
/* 95CEF44 8007AA14 83140200 */  sra        $v0, $v0, 18
/* 95CEF48 8007AA18 1400A2AF */  sw         $v0, 0x14($sp)
/* 95CEF4C 8007AA1C 04000296 */  lhu        $v0, 0x4($s0)
/* 95CEF50 8007AA20 14000524 */  addiu      $a1, $zero, 0x14
/* 95CEF54 8007AA24 00140200 */  sll        $v0, $v0, 16
/* 95CEF58 8007AA28 83140200 */  sra        $v0, $v0, 18
/* 95CEF5C 8007AA2C DBD8000C */  jal        func_8003636C
/* 95CEF60 8007AA30 1800A2AF */   sw        $v0, 0x18($sp)
/* 95CEF64 8007AA34 01000424 */  addiu      $a0, $zero, 0x1
/* 95CEF68 8007AA38 27000524 */  addiu      $a1, $zero, 0x27
/* 95CEF6C 8007AA3C 0C002626 */  addiu      $a2, $s1, 0xC
/* 95CEF70 8007AA40 1000A727 */  addiu      $a3, $sp, 0x10
/* 95CEF74 8007AA44 1800A38F */  lw         $v1, 0x18($sp)
/* 95CEF78 8007AA48 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 95CEF7C 8007AA4C E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 95CEF80 8007AA50 21186200 */  addu       $v1, $v1, $v0
/* 95CEF84 8007AA54 09F80001 */  jalr       $t0
/* 95CEF88 8007AA58 1800A3AF */   sw        $v1, 0x18($sp)
.Llevel_50_8007AA5C:
/* 95CEF8C 8007AA5C 3000BF8F */  lw         $ra, 0x30($sp)
/* 95CEF90 8007AA60 2C00B18F */  lw         $s1, 0x2C($sp)
/* 95CEF94 8007AA64 2800B08F */  lw         $s0, 0x28($sp)
/* 95CEF98 8007AA68 3800BD27 */  addiu      $sp, $sp, 0x38
/* 95CEF9C 8007AA6C 0800E003 */  jr         $ra
/* 95CEFA0 8007AA70 00000000 */   nop
.size func_level_50_8007A758, . - func_level_50_8007A758
