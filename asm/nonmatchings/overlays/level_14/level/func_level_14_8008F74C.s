.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_14_8008F74C
/* 47CEC7C 8008F74C 68FFBD27 */  addiu      $sp, $sp, -0x98
/* 47CEC80 8008F750 7C00B3AF */  sw         $s3, 0x7C($sp)
/* 47CEC84 8008F754 21988000 */  addu       $s3, $a0, $zero
/* 47CEC88 8008F758 8000B4AF */  sw         $s4, 0x80($sp)
/* 47CEC8C 8008F75C 21A0A000 */  addu       $s4, $a1, $zero
/* 47CEC90 8008F760 7400B1AF */  sw         $s1, 0x74($sp)
/* 47CEC94 8008F764 2188C000 */  addu       $s1, $a2, $zero
/* 47CEC98 8008F768 8C00B7AF */  sw         $s7, 0x8C($sp)
/* 47CEC9C 8008F76C 21B80000 */  addu       $s7, $zero, $zero
/* 47CECA0 8008F770 8800B6AF */  sw         $s6, 0x88($sp)
/* 47CECA4 8008F774 9000BFAF */  sw         $ra, 0x90($sp)
/* 47CECA8 8008F778 8400B5AF */  sw         $s5, 0x84($sp)
/* 47CECAC 8008F77C 7800B2AF */  sw         $s2, 0x78($sp)
/* 47CECB0 8008F780 7000B0AF */  sw         $s0, 0x70($sp)
/* 47CECB4 8008F784 02008286 */  lh         $v0, 0x2($s4)
/* 47CECB8 8008F788 0C00838E */  lw         $v1, 0xC($s4)
/* 47CECBC 8008F78C 00110200 */  sll        $v0, $v0, 4
/* 47CECC0 8008F790 21A86200 */  addu       $s5, $v1, $v0
/* 47CECC4 8008F794 00002386 */  lh         $v1, 0x0($s1)
/* 47CECC8 8008F798 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 47CECCC 8008F79C 09006214 */  bne        $v1, $v0, .Llevel_14_8008F7C4
/* 47CECD0 8008F7A0 21B00000 */   addu      $s6, $zero, $zero
/* 47CECD4 8008F7A4 45006292 */  lbu        $v0, 0x45($s3)
/* 47CECD8 8008F7A8 00000000 */  nop
/* 47CECDC 8008F7AC 00110200 */  sll        $v0, $v0, 4
/* 47CECE0 8008F7B0 000022A6 */  sh         $v0, 0x0($s1)
/* 47CECE4 8008F7B4 46006292 */  lbu        $v0, 0x46($s3)
/* 47CECE8 8008F7B8 00000000 */  nop
/* 47CECEC 8008F7BC 00110200 */  sll        $v0, $v0, 4
/* 47CECF0 8008F7C0 020022A6 */  sh         $v0, 0x2($s1)
.Llevel_14_8008F7C4:
/* 47CECF4 8008F7C4 1000A427 */  addiu      $a0, $sp, 0x10
/* 47CECF8 8008F7C8 5E3C010C */  jal        func_8004F178
/* 47CECFC 8008F7CC 0C006526 */   addiu     $a1, $s3, 0xC
/* 47CED00 8008F7D0 38006286 */  lh         $v0, 0x38($s3)
/* 47CED04 8008F7D4 00000000 */  nop
/* 47CED08 8008F7D8 1A004010 */  beqz       $v0, .Llevel_14_8008F844
/* 47CED0C 8008F7DC 5800A427 */   addiu     $a0, $sp, 0x58
/* 47CED10 8008F7E0 4000B027 */  addiu      $s0, $sp, 0x40
/* 47CED14 8008F7E4 5800A0A3 */  sb         $zero, 0x58($sp)
/* 47CED18 8008F7E8 00002296 */  lhu        $v0, 0x0($s1)
/* 47CED1C 8008F7EC 21280002 */  addu       $a1, $s0, $zero
/* 47CED20 8008F7F0 02110200 */  srl        $v0, $v0, 4
/* 47CED24 8008F7F4 5900A2A3 */  sb         $v0, 0x59($sp)
/* 47CED28 8008F7F8 02002296 */  lhu        $v0, 0x2($s1)
/* 47CED2C 8008F7FC 21300000 */  addu       $a2, $zero, $zero
/* 47CED30 8008F800 02110200 */  srl        $v0, $v0, 4
/* 47CED34 8008F804 A43A010C */  jal        func_8004EA90
/* 47CED38 8008F808 5A00A2A3 */   sb        $v0, 0x5A($sp)
/* 47CED3C 8008F80C 21200002 */  addu       $a0, $s0, $zero
/* 47CED40 8008F810 3000B027 */  addiu      $s0, $sp, 0x30
/* 47CED44 8008F814 21280002 */  addu       $a1, $s0, $zero
/* 47CED48 8008F818 3000A0AF */  sw         $zero, 0x30($sp)
/* 47CED4C 8008F81C 3400A0AF */  sw         $zero, 0x34($sp)
/* 47CED50 8008F820 38006286 */  lh         $v0, 0x38($s3)
/* 47CED54 8008F824 21300002 */  addu       $a2, $s0, $zero
/* 47CED58 8008F828 23100200 */  negu       $v0, $v0
/* 47CED5C 8008F82C 5B3B010C */  jal        func_8004ED6C
/* 47CED60 8008F830 3800A2AF */   sw        $v0, 0x38($sp)
/* 47CED64 8008F834 1000A427 */  addiu      $a0, $sp, 0x10
/* 47CED68 8008F838 21288000 */  addu       $a1, $a0, $zero
/* 47CED6C 8008F83C 653C010C */  jal        func_8004F194
/* 47CED70 8008F840 21300002 */   addu      $a2, $s0, $zero
.Llevel_14_8008F844:
/* 47CED74 8008F844 01000624 */  addiu      $a2, $zero, 0x1
/* 47CED78 8008F848 0000A38E */  lw         $v1, 0x0($s5)
/* 47CED7C 8008F84C 1000A48F */  lw         $a0, 0x10($sp)
/* 47CED80 8008F850 0400A28E */  lw         $v0, 0x4($s5)
/* 47CED84 8008F854 1400A58F */  lw         $a1, 0x14($sp)
/* 47CED88 8008F858 23206400 */  subu       $a0, $v1, $a0
/* 47CED8C 8008F85C 203A010C */  jal        func_8004E880
/* 47CED90 8008F860 23284500 */   subu      $a1, $v0, $a1
/* 47CED94 8008F864 1000A427 */  addiu      $a0, $sp, 0x10
/* 47CED98 8008F868 2128A002 */  addu       $a1, $s5, $zero
/* 47CED9C 8008F86C CD3C010C */  jal        func_8004F334
/* 47CEDA0 8008F870 21804000 */   addu      $s0, $v0, $zero
/* 47CEDA4 8008F874 21204000 */  addu       $a0, $v0, $zero
/* 47CEDA8 8008F878 0800A28E */  lw         $v0, 0x8($s5)
/* 47CEDAC 8008F87C 1800A58F */  lw         $a1, 0x18($sp)
/* 47CEDB0 8008F880 01000624 */  addiu      $a2, $zero, 0x1
/* 47CEDB4 8008F884 203A010C */  jal        func_8004E880
/* 47CEDB8 8008F888 23284500 */   subu      $a1, $v0, $a1
/* 47CEDBC 8008F88C 21280002 */  addu       $a1, $s0, $zero
/* 47CEDC0 8008F890 02002486 */  lh         $a0, 0x2($s1)
/* 47CEDC4 8008F894 57D8000C */  jal        SubAngle12
/* 47CEDC8 8008F898 21804000 */   addu      $s0, $v0, $zero
/* 47CEDCC 8008F89C 21904000 */  addu       $s2, $v0, $zero
/* 47CEDD0 8008F8A0 00002486 */  lh         $a0, 0x0($s1)
/* 47CEDD4 8008F8A4 57D8000C */  jal        SubAngle12
/* 47CEDD8 8008F8A8 21280002 */   addu      $a1, $s0, $zero
/* 47CEDDC 8008F8AC 0E002386 */  lh         $v1, 0xE($s1)
/* 47CEDE0 8008F8B0 00000000 */  nop
/* 47CEDE4 8008F8B4 0E006010 */  beqz       $v1, .Llevel_14_8008F8F0
/* 47CEDE8 8008F8B8 21284000 */   addu      $a1, $v0, $zero
/* 47CEDEC 8008F8BC 02004106 */  bgez       $s2, .Llevel_14_8008F8C8
/* 47CEDF0 8008F8C0 21104002 */   addu      $v0, $s2, $zero
/* 47CEDF4 8008F8C4 23100200 */  negu       $v0, $v0
.Llevel_14_8008F8C8:
/* 47CEDF8 8008F8C8 01044228 */  slti       $v0, $v0, 0x401
/* 47CEDFC 8008F8CC 07004010 */  beqz       $v0, .Llevel_14_8008F8EC
/* 47CEE00 8008F8D0 00000000 */   nop
/* 47CEE04 8008F8D4 0200A104 */  bgez       $a1, .Llevel_14_8008F8E0
/* 47CEE08 8008F8D8 2110A000 */   addu      $v0, $a1, $zero
/* 47CEE0C 8008F8DC 23100200 */  negu       $v0, $v0
.Llevel_14_8008F8E0:
/* 47CEE10 8008F8E0 01044228 */  slti       $v0, $v0, 0x401
/* 47CEE14 8008F8E4 02004014 */  bnez       $v0, .Llevel_14_8008F8F0
/* 47CEE18 8008F8E8 00000000 */   nop
.Llevel_14_8008F8EC:
/* 47CEE1C 8008F8EC 01001624 */  addiu      $s6, $zero, 0x1
.Llevel_14_8008F8F0:
/* 47CEE20 8008F8F0 06002386 */  lh         $v1, 0x6($s1)
/* 47CEE24 8008F8F4 00000000 */  nop
/* 47CEE28 8008F8F8 2A107200 */  slt        $v0, $v1, $s2
/* 47CEE2C 8008F8FC 02004010 */  beqz       $v0, .Llevel_14_8008F908
/* 47CEE30 8008F900 23200300 */   negu      $a0, $v1
/* 47CEE34 8008F904 21906000 */  addu       $s2, $v1, $zero
.Llevel_14_8008F908:
/* 47CEE38 8008F908 2A104402 */  slt        $v0, $s2, $a0
/* 47CEE3C 8008F90C 02004010 */  beqz       $v0, .Llevel_14_8008F918
/* 47CEE40 8008F910 2A106500 */   slt       $v0, $v1, $a1
/* 47CEE44 8008F914 21908000 */  addu       $s2, $a0, $zero
.Llevel_14_8008F918:
/* 47CEE48 8008F918 03004010 */  beqz       $v0, .Llevel_14_8008F928
/* 47CEE4C 8008F91C 2A10A400 */   slt       $v0, $a1, $a0
/* 47CEE50 8008F920 21286000 */  addu       $a1, $v1, $zero
/* 47CEE54 8008F924 2A10A400 */  slt        $v0, $a1, $a0
.Llevel_14_8008F928:
/* 47CEE58 8008F928 02004010 */  beqz       $v0, .Llevel_14_8008F934
/* 47CEE5C 8008F92C 00000000 */   nop
/* 47CEE60 8008F930 21288000 */  addu       $a1, $a0, $zero
.Llevel_14_8008F934:
/* 47CEE64 8008F934 0A002296 */  lhu        $v0, 0xA($s1)
/* 47CEE68 8008F938 08002396 */  lhu        $v1, 0x8($s1)
/* 47CEE6C 8008F93C 21105200 */  addu       $v0, $v0, $s2
/* 47CEE70 8008F940 02004106 */  bgez       $s2, .Llevel_14_8008F94C
/* 47CEE74 8008F944 00000000 */   nop
/* 47CEE78 8008F948 23901200 */  negu       $s2, $s2
.Llevel_14_8008F94C:
/* 47CEE7C 8008F94C 21186500 */  addu       $v1, $v1, $a1
/* 47CEE80 8008F950 0A0022A6 */  sh         $v0, 0xA($s1)
/* 47CEE84 8008F954 0A002286 */  lh         $v0, 0xA($s1)
/* 47CEE88 8008F958 0200A104 */  bgez       $a1, .Llevel_14_8008F964
/* 47CEE8C 8008F95C 00000000 */   nop
/* 47CEE90 8008F960 23280500 */  negu       $a1, $a1
.Llevel_14_8008F964:
/* 47CEE94 8008F964 2A104202 */  slt        $v0, $s2, $v0
/* 47CEE98 8008F968 02004010 */  beqz       $v0, .Llevel_14_8008F974
/* 47CEE9C 8008F96C 080023A6 */   sh        $v1, 0x8($s1)
/* 47CEEA0 8008F970 0A0032A6 */  sh         $s2, 0xA($s1)
.Llevel_14_8008F974:
/* 47CEEA4 8008F974 0A002286 */  lh         $v0, 0xA($s1)
/* 47CEEA8 8008F978 23181200 */  negu       $v1, $s2
/* 47CEEAC 8008F97C 2A104300 */  slt        $v0, $v0, $v1
/* 47CEEB0 8008F980 02004010 */  beqz       $v0, .Llevel_14_8008F98C
/* 47CEEB4 8008F984 00000000 */   nop
/* 47CEEB8 8008F988 0A0023A6 */  sh         $v1, 0xA($s1)
.Llevel_14_8008F98C:
/* 47CEEBC 8008F98C 08002286 */  lh         $v0, 0x8($s1)
/* 47CEEC0 8008F990 00000000 */  nop
/* 47CEEC4 8008F994 2A10A200 */  slt        $v0, $a1, $v0
/* 47CEEC8 8008F998 02004010 */  beqz       $v0, .Llevel_14_8008F9A4
/* 47CEECC 8008F99C 00000000 */   nop
/* 47CEED0 8008F9A0 080025A6 */  sh         $a1, 0x8($s1)
.Llevel_14_8008F9A4:
/* 47CEED4 8008F9A4 08002286 */  lh         $v0, 0x8($s1)
/* 47CEED8 8008F9A8 23180500 */  negu       $v1, $a1
/* 47CEEDC 8008F9AC 2A104300 */  slt        $v0, $v0, $v1
/* 47CEEE0 8008F9B0 02004010 */  beqz       $v0, .Llevel_14_8008F9BC
/* 47CEEE4 8008F9B4 00000000 */   nop
/* 47CEEE8 8008F9B8 080023A6 */  sh         $v1, 0x8($s1)
.Llevel_14_8008F9BC:
/* 47CEEEC 8008F9BC 00002396 */  lhu        $v1, 0x0($s1)
/* 47CEEF0 8008F9C0 08002296 */  lhu        $v0, 0x8($s1)
/* 47CEEF4 8008F9C4 0A002496 */  lhu        $a0, 0xA($s1)
/* 47CEEF8 8008F9C8 21186200 */  addu       $v1, $v1, $v0
/* 47CEEFC 8008F9CC FF0F6330 */  andi       $v1, $v1, 0xFFF
/* 47CEF00 8008F9D0 02002296 */  lhu        $v0, 0x2($s1)
/* 47CEF04 8008F9D4 02290300 */  srl        $a1, $v1, 4
/* 47CEF08 8008F9D8 000023A6 */  sh         $v1, 0x0($s1)
/* 47CEF0C 8008F9DC 21104400 */  addu       $v0, $v0, $a0
/* 47CEF10 8008F9E0 FF0F4230 */  andi       $v0, $v0, 0xFFF
/* 47CEF14 8008F9E4 020022A6 */  sh         $v0, 0x2($s1)
/* 47CEF18 8008F9E8 450065A2 */  sb         $a1, 0x45($s3)
/* 47CEF1C 8008F9EC 02002296 */  lhu        $v0, 0x2($s1)
/* 47CEF20 8008F9F0 00000000 */  nop
/* 47CEF24 8008F9F4 02110200 */  srl        $v0, $v0, 4
/* 47CEF28 8008F9F8 460062A2 */  sb         $v0, 0x46($s3)
/* 47CEF2C 8008F9FC 02002486 */  lh         $a0, 0x2($s1)
/* 47CEF30 8008FA00 8B3A010C */  jal        func_8004EA2C
/* 47CEF34 8008FA04 00000000 */   nop
/* 47CEF38 8008FA08 00002486 */  lh         $a0, 0x0($s1)
/* 47CEF3C 8008FA0C 8B3A010C */  jal        func_8004EA2C
/* 47CEF40 8008FA10 21804000 */   addu      $s0, $v0, $zero
/* 47CEF44 8008FA14 04002386 */  lh         $v1, 0x4($s1)
/* 47CEF48 8008FA18 00000000 */  nop
/* 47CEF4C 8008FA1C 18000302 */  mult       $s0, $v1
/* 47CEF50 8008FA20 12380000 */  mflo       $a3
/* 47CEF54 8008FA24 031B0700 */  sra        $v1, $a3, 12
/* 47CEF58 8008FA28 00000000 */  nop
/* 47CEF5C 8008FA2C 18006200 */  mult       $v1, $v0
/* 47CEF60 8008FA30 12380000 */  mflo       $a3
/* 47CEF64 8008FA34 03130700 */  sra        $v0, $a3, 12
/* 47CEF68 8008FA38 2000A2AF */  sw         $v0, 0x20($sp)
/* 47CEF6C 8008FA3C 02002486 */  lh         $a0, 0x2($s1)
/* 47CEF70 8008FA40 793A010C */  jal        func_8004E9E4
/* 47CEF74 8008FA44 00000000 */   nop
/* 47CEF78 8008FA48 00002486 */  lh         $a0, 0x0($s1)
/* 47CEF7C 8008FA4C 8B3A010C */  jal        func_8004EA2C
/* 47CEF80 8008FA50 21804000 */   addu      $s0, $v0, $zero
/* 47CEF84 8008FA54 04002386 */  lh         $v1, 0x4($s1)
/* 47CEF88 8008FA58 00000000 */  nop
/* 47CEF8C 8008FA5C 18000302 */  mult       $s0, $v1
/* 47CEF90 8008FA60 12380000 */  mflo       $a3
/* 47CEF94 8008FA64 031B0700 */  sra        $v1, $a3, 12
/* 47CEF98 8008FA68 00000000 */  nop
/* 47CEF9C 8008FA6C 18006200 */  mult       $v1, $v0
/* 47CEFA0 8008FA70 12380000 */  mflo       $a3
/* 47CEFA4 8008FA74 03130700 */  sra        $v0, $a3, 12
/* 47CEFA8 8008FA78 2400A2AF */  sw         $v0, 0x24($sp)
/* 47CEFAC 8008FA7C 00002486 */  lh         $a0, 0x0($s1)
/* 47CEFB0 8008FA80 793A010C */  jal        func_8004E9E4
/* 47CEFB4 8008FA84 00000000 */   nop
/* 47CEFB8 8008FA88 04002386 */  lh         $v1, 0x4($s1)
/* 47CEFBC 8008FA8C 00000000 */  nop
/* 47CEFC0 8008FA90 18004300 */  mult       $v0, $v1
/* 47CEFC4 8008FA94 0C006426 */  addiu      $a0, $s3, 0xC
/* 47CEFC8 8008FA98 21288000 */  addu       $a1, $a0, $zero
/* 47CEFCC 8008FA9C 2000B027 */  addiu      $s0, $sp, 0x20
/* 47CEFD0 8008FAA0 21300002 */  addu       $a2, $s0, $zero
/* 47CEFD4 8008FAA4 12380000 */  mflo       $a3
/* 47CEFD8 8008FAA8 03130700 */  sra        $v0, $a3, 12
/* 47CEFDC 8008FAAC 653C010C */  jal        func_8004F194
/* 47CEFE0 8008FAB0 2800A2AF */   sw        $v0, 0x28($sp)
/* 47CEFE4 8008FAB4 1000A427 */  addiu      $a0, $sp, 0x10
/* 47CEFE8 8008FAB8 21288000 */  addu       $a1, $a0, $zero
/* 47CEFEC 8008FABC 653C010C */  jal        func_8004F194
/* 47CEFF0 8008FAC0 21300002 */   addu      $a2, $s0, $zero
/* 47CEFF4 8008FAC4 21206002 */  addu       $a0, $s3, $zero
/* 47CEFF8 8008FAC8 4957010C */  jal        func_80055D24
/* 47CEFFC 8008FACC 02000524 */   addiu     $a1, $zero, 0x2
/* 47CF000 8008FAD0 6000B027 */  addiu      $s0, $sp, 0x60
/* 47CF004 8008FAD4 21200002 */  addu       $a0, $s0, $zero
/* 47CF008 8008FAD8 1000A527 */  addiu      $a1, $sp, 0x10
/* 47CF00C 8008FADC 723C010C */  jal        func_8004F1C8
/* 47CF010 8008FAE0 2130A002 */   addu      $a2, $s5, $zero
/* 47CF014 8008FAE4 21200002 */  addu       $a0, $s0, $zero
/* 47CF018 8008FAE8 7A3B010C */  jal        func_8004EDE8
/* 47CF01C 8008FAEC 01000524 */   addiu     $a1, $zero, 0x1
/* 47CF020 8008FAF0 0C002386 */  lh         $v1, 0xC($s1)
/* 47CF024 8008FAF4 00000000 */  nop
/* 47CF028 8008FAF8 2A104300 */  slt        $v0, $v0, $v1
/* 47CF02C 8008FAFC 03004014 */  bnez       $v0, .Llevel_14_8008FB0C
/* 47CF030 8008FB00 00000000 */   nop
/* 47CF034 8008FB04 1400C012 */  beqz       $s6, .Llevel_14_8008FB58
/* 47CF038 8008FB08 2110E002 */   addu      $v0, $s7, $zero
.Llevel_14_8008FB0C:
/* 47CF03C 8008FB0C 02008286 */  lh         $v0, 0x2($s4)
/* 47CF040 8008FB10 0A008486 */  lh         $a0, 0xA($s4)
/* 47CF044 8008FB14 00008386 */  lh         $v1, 0x0($s4)
/* 47CF048 8008FB18 21104400 */  addu       $v0, $v0, $a0
/* 47CF04C 8008FB1C 21104300 */  addu       $v0, $v0, $v1
/* 47CF050 8008FB20 1A004300 */  div        $zero, $v0, $v1
/* 47CF054 8008FB24 02006014 */  bnez       $v1, .Llevel_14_8008FB30
/* 47CF058 8008FB28 00000000 */   nop
/* 47CF05C 8008FB2C 0D000700 */  break      7
.Llevel_14_8008FB30:
/* 47CF060 8008FB30 FFFF0124 */  addiu      $at, $zero, -0x1
/* 47CF064 8008FB34 04006114 */  bne        $v1, $at, .Llevel_14_8008FB48
/* 47CF068 8008FB38 0080013C */   lui       $at, (0x80000000 >> 16)
/* 47CF06C 8008FB3C 02004114 */  bne        $v0, $at, .Llevel_14_8008FB48
/* 47CF070 8008FB40 00000000 */   nop
/* 47CF074 8008FB44 0D000600 */  break      6
.Llevel_14_8008FB48:
/* 47CF078 8008FB48 10180000 */  mfhi       $v1
/* 47CF07C 8008FB4C 01001724 */  addiu      $s7, $zero, 0x1
/* 47CF080 8008FB50 020083A6 */  sh         $v1, 0x2($s4)
/* 47CF084 8008FB54 2110E002 */  addu       $v0, $s7, $zero
.Llevel_14_8008FB58:
/* 47CF088 8008FB58 9000BF8F */  lw         $ra, 0x90($sp)
/* 47CF08C 8008FB5C 8C00B78F */  lw         $s7, 0x8C($sp)
/* 47CF090 8008FB60 8800B68F */  lw         $s6, 0x88($sp)
/* 47CF094 8008FB64 8400B58F */  lw         $s5, 0x84($sp)
/* 47CF098 8008FB68 8000B48F */  lw         $s4, 0x80($sp)
/* 47CF09C 8008FB6C 7C00B38F */  lw         $s3, 0x7C($sp)
/* 47CF0A0 8008FB70 7800B28F */  lw         $s2, 0x78($sp)
/* 47CF0A4 8008FB74 7400B18F */  lw         $s1, 0x74($sp)
/* 47CF0A8 8008FB78 7000B08F */  lw         $s0, 0x70($sp)
/* 47CF0AC 8008FB7C 9800BD27 */  addiu      $sp, $sp, 0x98
/* 47CF0B0 8008FB80 0800E003 */  jr         $ra
/* 47CF0B4 8008FB84 00000000 */   nop
.size func_level_14_8008F74C, . - func_level_14_8008F74C
