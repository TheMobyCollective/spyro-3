.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_40_8007B6FC
/* 7E66C2C 8007B6FC 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 7E66C30 8007B700 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 7E66C34 8007B704 21888000 */  addu       $s1, $a0, $zero
/* 7E66C38 8007B708 5400B3AF */  sw         $s3, 0x54($sp)
/* 7E66C3C 8007B70C 0C003326 */  addiu      $s3, $s1, 0xC
/* 7E66C40 8007B710 0780053C */  lui        $a1, %hi(D_80070328)
/* 7E66C44 8007B714 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 7E66C48 8007B718 6C00BFAF */  sw         $ra, 0x6C($sp)
/* 7E66C4C 8007B71C 6800BEAF */  sw         $fp, 0x68($sp)
/* 7E66C50 8007B720 6400B7AF */  sw         $s7, 0x64($sp)
/* 7E66C54 8007B724 6000B6AF */  sw         $s6, 0x60($sp)
/* 7E66C58 8007B728 5C00B5AF */  sw         $s5, 0x5C($sp)
/* 7E66C5C 8007B72C 5800B4AF */  sw         $s4, 0x58($sp)
/* 7E66C60 8007B730 5000B2AF */  sw         $s2, 0x50($sp)
/* 7E66C64 8007B734 4800B0AF */  sw         $s0, 0x48($sp)
/* 7E66C68 8007B738 0000328E */  lw         $s2, 0x0($s1)
/* 7E66C6C 8007B73C CD3C010C */  jal        func_8004F334
/* 7E66C70 8007B740 21206002 */   addu      $a0, $s3, $zero
/* 7E66C74 8007B744 21A84000 */  addu       $s5, $v0, $zero
/* 7E66C78 8007B748 0A004286 */  lh         $v0, 0xA($s2)
/* 7E66C7C 8007B74C 00000000 */  nop
/* 7E66C80 8007B750 21184000 */  addu       $v1, $v0, $zero
/* 7E66C84 8007B754 18024228 */  slti       $v0, $v0, 0x218
/* 7E66C88 8007B758 07004010 */  beqz       $v0, .Llevel_40_8007B778
/* 7E66C8C 8007B75C 1E001E24 */   addiu     $fp, $zero, 0x1E
/* 7E66C90 8007B760 0780023C */  lui        $v0, %hi(D_8006C648)
/* 7E66C94 8007B764 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 7E66C98 8007B768 00000000 */  nop
/* 7E66C9C 8007B76C 21106200 */  addu       $v0, $v1, $v0
/* 7E66CA0 8007B770 2FEE0108 */  j          .Llevel_40_8007B8BC
/* 7E66CA4 8007B774 0A0042A6 */   sh        $v0, 0xA($s2)
.Llevel_40_8007B778:
/* 7E66CA8 8007B778 21800000 */  addu       $s0, $zero, $zero
/* 7E66CAC 8007B77C 21300000 */  addu       $a2, $zero, $zero
/* 7E66CB0 8007B780 0C00238E */  lw         $v1, 0xC($s1)
/* 7E66CB4 8007B784 0780043C */  lui        $a0, %hi(D_8006E020)
/* 7E66CB8 8007B788 20E0848C */  lw         $a0, %lo(D_8006E020)($a0)
/* 7E66CBC 8007B78C 1000228E */  lw         $v0, 0x10($s1)
/* 7E66CC0 8007B790 0780053C */  lui        $a1, %hi(D_8006E024)
/* 7E66CC4 8007B794 24E0A58C */  lw         $a1, %lo(D_8006E024)($a1)
/* 7E66CC8 8007B798 23206400 */  subu       $a0, $v1, $a0
/* 7E66CCC 8007B79C 203A010C */  jal        func_8004E880
/* 7E66CD0 8007B7A0 23284500 */   subu      $a1, $v0, $a1
/* 7E66CD4 8007B7A4 0780043C */  lui        $a0, %hi(D_8006E040)
/* 7E66CD8 8007B7A8 40E08494 */  lhu        $a0, %lo(D_8006E040)($a0)
/* 7E66CDC 8007B7AC 21284000 */  addu       $a1, $v0, $zero
/* 7E66CE0 8007B7B0 00240400 */  sll        $a0, $a0, 16
/* 7E66CE4 8007B7B4 993C010C */  jal        func_8004F264
/* 7E66CE8 8007B7B8 03250400 */   sra       $a0, $a0, 20
/* 7E66CEC 8007B7BC 20004228 */  slti       $v0, $v0, 0x20
/* 7E66CF0 8007B7C0 05004010 */  beqz       $v0, .Llevel_40_8007B7D8
/* 7E66CF4 8007B7C4 00000000 */   nop
/* 7E66CF8 8007B7C8 49002492 */  lbu        $a0, 0x49($s1)
/* 7E66CFC 8007B7CC 10BC000C */  jal        func_8002F040
/* 7E66D00 8007B7D0 00000000 */   nop
/* 7E66D04 8007B7D4 21804000 */  addu       $s0, $v0, $zero
.Llevel_40_8007B7D8:
/* 7E66D08 8007B7D8 2E000012 */  beqz       $s0, .Llevel_40_8007B894
/* 7E66D0C 8007B7DC 0030A22A */   slti      $v0, $s5, 0x3000
/* 7E66D10 8007B7E0 10004010 */  beqz       $v0, .Llevel_40_8007B824
/* 7E66D14 8007B7E4 21200002 */   addu      $a0, $s0, $zero
/* 7E66D18 8007B7E8 0780023C */  lui        $v0, %hi(D_8006DEF8)
/* 7E66D1C 8007B7EC F8DE4224 */  addiu      $v0, $v0, %lo(D_8006DEF8)
/* 7E66D20 8007B7F0 23100202 */  subu       $v0, $s0, $v0
/* 7E66D24 8007B7F4 0A004396 */  lhu        $v1, 0xA($s2)
/* 7E66D28 8007B7F8 03110200 */  sra        $v0, $v0, 4
/* 7E66D2C 8007B7FC 130042A2 */  sb         $v0, 0x13($s2)
/* 7E66D30 8007B800 E0FF6324 */  addiu      $v1, $v1, -0x20
/* 7E66D34 8007B804 9171010C */  jal        rand
/* 7E66D38 8007B808 0A0043A6 */   sh        $v1, 0xA($s2)
/* 7E66D3C 8007B80C 49002392 */  lbu        $v1, 0x49($s1)
/* 7E66D40 8007B810 01004230 */  andi       $v0, $v0, 0x1
/* 7E66D44 8007B814 40180300 */  sll        $v1, $v1, 1
/* 7E66D48 8007B818 21186200 */  addu       $v1, $v1, $v0
/* 7E66D4C 8007B81C 1EEE0108 */  j          .Llevel_40_8007B878
/* 7E66D50 8007B820 140043A2 */   sb        $v1, 0x14($s2)
.Llevel_40_8007B824:
/* 7E66D54 8007B824 5E3C010C */  jal        func_8004F178
/* 7E66D58 8007B828 21286002 */   addu      $a1, $s3, $zero
/* 7E66D5C 8007B82C FF7F0224 */  addiu      $v0, $zero, 0x7FFF
/* 7E66D60 8007B830 2A105500 */  slt        $v0, $v0, $s5
/* 7E66D64 8007B834 0A004014 */  bnez       $v0, .Llevel_40_8007B860
/* 7E66D68 8007B838 00000000 */   nop
/* 7E66D6C 8007B83C 0A004296 */  lhu        $v0, 0xA($s2)
/* 7E66D70 8007B840 00000000 */  nop
/* 7E66D74 8007B844 80FF4224 */  addiu      $v0, $v0, -0x80
/* 7E66D78 8007B848 0A0042A6 */  sh         $v0, 0xA($s2)
/* 7E66D7C 8007B84C 0800028E */  lw         $v0, 0x8($s0)
/* 7E66D80 8007B850 00000000 */  nop
/* 7E66D84 8007B854 80004224 */  addiu      $v0, $v0, 0x80
/* 7E66D88 8007B858 1CEE0108 */  j          .Llevel_40_8007B870
/* 7E66D8C 8007B85C 080002AE */   sw        $v0, 0x8($s0)
.Llevel_40_8007B860:
/* 7E66D90 8007B860 0A004296 */  lhu        $v0, 0xA($s2)
/* 7E66D94 8007B864 00000000 */  nop
/* 7E66D98 8007B868 00FF4224 */  addiu      $v0, $v0, -0x100
/* 7E66D9C 8007B86C 0A0042A6 */  sh         $v0, 0xA($s2)
.Llevel_40_8007B870:
/* 7E66DA0 8007B870 FF000224 */  addiu      $v0, $zero, 0xFF
/* 7E66DA4 8007B874 130042A2 */  sb         $v0, 0x13($s2)
.Llevel_40_8007B878:
/* 7E66DA8 8007B878 9171010C */  jal        rand
/* 7E66DAC 8007B87C 00000000 */   nop
/* 7E66DB0 8007B880 0D000392 */  lbu        $v1, 0xD($s0)
/* 7E66DB4 8007B884 3F004230 */  andi       $v0, $v0, 0x3F
/* 7E66DB8 8007B888 21186200 */  addu       $v1, $v1, $v0
/* 7E66DBC 8007B88C 29EE0108 */  j          .Llevel_40_8007B8A4
/* 7E66DC0 8007B890 0D0003A2 */   sb        $v1, 0xD($s0)
.Llevel_40_8007B894:
/* 7E66DC4 8007B894 0A004296 */  lhu        $v0, 0xA($s2)
/* 7E66DC8 8007B898 00000000 */  nop
/* 7E66DCC 8007B89C 00FF4224 */  addiu      $v0, $v0, -0x100
/* 7E66DD0 8007B8A0 0A0042A6 */  sh         $v0, 0xA($s2)
.Llevel_40_8007B8A4:
/* 7E66DD4 8007B8A4 9171010C */  jal        rand
/* 7E66DD8 8007B8A8 00000000 */   nop
/* 7E66DDC 8007B8AC 0A004396 */  lhu        $v1, 0xA($s2)
/* 7E66DE0 8007B8B0 FF004230 */  andi       $v0, $v0, 0xFF
/* 7E66DE4 8007B8B4 23186200 */  subu       $v1, $v1, $v0
/* 7E66DE8 8007B8B8 0A0043A6 */  sh         $v1, 0xA($s2)
.Llevel_40_8007B8BC:
/* 7E66DEC 8007B8BC 13005092 */  lbu        $s0, 0x13($s2)
/* 7E66DF0 8007B8C0 00000000 */  nop
/* 7E66DF4 8007B8C4 1000022E */  sltiu      $v0, $s0, 0x10
/* 7E66DF8 8007B8C8 1E004010 */  beqz       $v0, .Llevel_40_8007B944
/* 7E66DFC 8007B8CC 21202002 */   addu      $a0, $s1, $zero
/* 7E66E00 8007B8D0 04000524 */  addiu      $a1, $zero, 0x4
/* 7E66E04 8007B8D4 00811000 */  sll        $s0, $s0, 4
/* 7E66E08 8007B8D8 0780023C */  lui        $v0, %hi(D_8006DEF8)
/* 7E66E0C 8007B8DC F8DE4224 */  addiu      $v0, $v0, %lo(D_8006DEF8)
/* 7E66E10 8007B8E0 4957010C */  jal        func_80055D24
/* 7E66E14 8007B8E4 21800202 */   addu      $s0, $s0, $v0
/* 7E66E18 8007B8E8 14004292 */  lbu        $v0, 0x14($s2)
/* 7E66E1C 8007B8EC 21200002 */  addu       $a0, $s0, $zero
/* 7E66E20 8007B8F0 40280200 */  sll        $a1, $v0, 1
/* 7E66E24 8007B8F4 2128A200 */  addu       $a1, $a1, $v0
/* 7E66E28 8007B8F8 80280500 */  sll        $a1, $a1, 2
/* 7E66E2C 8007B8FC 0680023C */  lui        $v0, %hi(D_80066A48 + 0x30)
/* 7E66E30 8007B900 786A4224 */  addiu      $v0, $v0, %lo(D_80066A48 + 0x30)
/* 7E66E34 8007B904 5E3C010C */  jal        func_8004F178
/* 7E66E38 8007B908 2128A200 */   addu      $a1, $a1, $v0
/* 7E66E3C 8007B90C 20002426 */  addiu      $a0, $s1, 0x20
/* 7E66E40 8007B910 21280002 */  addu       $a1, $s0, $zero
/* 7E66E44 8007B914 5B3B010C */  jal        func_8004ED6C
/* 7E66E48 8007B918 21300002 */   addu      $a2, $s0, $zero
/* 7E66E4C 8007B91C 21200002 */  addu       $a0, $s0, $zero
/* 7E66E50 8007B920 21280002 */  addu       $a1, $s0, $zero
/* 7E66E54 8007B924 653C010C */  jal        func_8004F194
/* 7E66E58 8007B928 0C002626 */   addiu     $a2, $s1, 0xC
/* 7E66E5C 8007B92C 0C000292 */  lbu        $v0, 0xC($s0)
/* 7E66E60 8007B930 00000000 */  nop
/* 7E66E64 8007B934 0400422C */  sltiu      $v0, $v0, 0x4
/* 7E66E68 8007B938 02004010 */  beqz       $v0, .Llevel_40_8007B944
/* 7E66E6C 8007B93C FF000224 */   addiu     $v0, $zero, 0xFF
/* 7E66E70 8007B940 130042A2 */  sb         $v0, 0x13($s2)
.Llevel_40_8007B944:
/* 7E66E74 8007B944 4D002292 */  lbu        $v0, 0x4D($s1)
/* 7E66E78 8007B948 00000000 */  nop
/* 7E66E7C 8007B94C 0B004014 */  bnez       $v0, .Llevel_40_8007B97C
/* 7E66E80 8007B950 0118A22A */   slti      $v0, $s5, 0x1801
/* 7E66E84 8007B954 09004014 */  bnez       $v0, .Llevel_40_8007B97C
/* 7E66E88 8007B958 01000224 */   addiu     $v0, $zero, 0x1
/* 7E66E8C 8007B95C 48002392 */  lbu        $v1, 0x48($s1)
/* 7E66E90 8007B960 00000000 */  nop
/* 7E66E94 8007B964 05006214 */  bne        $v1, $v0, .Llevel_40_8007B97C
/* 7E66E98 8007B968 00000000 */   nop
/* 7E66E9C 8007B96C 11004292 */  lbu        $v0, 0x11($s2)
/* 7E66EA0 8007B970 00000000 */  nop
/* 7E66EA4 8007B974 D2004010 */  beqz       $v0, .Llevel_40_8007BCC0
/* 7E66EA8 8007B978 00000000 */   nop
.Llevel_40_8007B97C:
/* 7E66EAC 8007B97C 1400228E */  lw         $v0, 0x14($s1)
/* 7E66EB0 8007B980 00000000 */  nop
/* 7E66EB4 8007B984 01044228 */  slti       $v0, $v0, 0x401
/* 7E66EB8 8007B988 05004010 */  beqz       $v0, .Llevel_40_8007B9A0
/* 7E66EBC 8007B98C 00000000 */   nop
/* 7E66EC0 8007B990 0780053C */  lui        $a1, %hi(D_80070328)
/* 7E66EC4 8007B994 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 7E66EC8 8007B998 5E3C010C */  jal        func_8004F178
/* 7E66ECC 8007B99C 0C002426 */   addiu     $a0, $s1, 0xC
.Llevel_40_8007B9A0:
/* 7E66ED0 8007B9A0 48002392 */  lbu        $v1, 0x48($s1)
/* 7E66ED4 8007B9A4 03000224 */  addiu      $v0, $zero, 0x3
/* 7E66ED8 8007B9A8 36006210 */  beq        $v1, $v0, .Llevel_40_8007BA84
/* 7E66EDC 8007B9AC 04006228 */   slti      $v0, $v1, 0x4
/* 7E66EE0 8007B9B0 05004010 */  beqz       $v0, .Llevel_40_8007B9C8
/* 7E66EE4 8007B9B4 00000000 */   nop
/* 7E66EE8 8007B9B8 08006010 */  beqz       $v1, .Llevel_40_8007B9DC
/* 7E66EEC 8007B9BC 1000A427 */   addiu     $a0, $sp, 0x10
/* 7E66EF0 8007B9C0 30EF0108 */  j          .Llevel_40_8007BCC0
/* 7E66EF4 8007B9C4 00000000 */   nop
.Llevel_40_8007B9C8:
/* 7E66EF8 8007B9C8 04000224 */  addiu      $v0, $zero, 0x4
/* 7E66EFC 8007B9CC 9F006210 */  beq        $v1, $v0, .Llevel_40_8007BC4C
/* 7E66F00 8007B9D0 00000000 */   nop
/* 7E66F04 8007B9D4 30EF0108 */  j          .Llevel_40_8007BCC0
/* 7E66F08 8007B9D8 00000000 */   nop
.Llevel_40_8007B9DC:
/* 7E66F0C 8007B9DC 5E3C010C */  jal        func_8004F178
/* 7E66F10 8007B9E0 0C002526 */   addiu     $a1, $s1, 0xC
/* 7E66F14 8007B9E4 1000A427 */  addiu      $a0, $sp, 0x10
/* 7E66F18 8007B9E8 1800A28F */  lw         $v0, 0x18($sp)
/* 7E66F1C 8007B9EC 0100053C */  lui        $a1, (0x10000 >> 16)
/* 7E66F20 8007B9F0 00044224 */  addiu      $v0, $v0, 0x400
/* 7E66F24 8007B9F4 D668000C */  jal        func_8001A358
/* 7E66F28 8007B9F8 1800A2AF */   sw        $v0, 0x18($sp)
/* 7E66F2C 8007B9FC 62D8000C */  jal        func_80036188
/* 7E66F30 8007BA00 0E004426 */   addiu     $a0, $s2, 0xE
/* 7E66F34 8007BA04 0C00428E */  lw         $v0, 0xC($s2)
/* 7E66F38 8007BA08 FFFF033C */  lui        $v1, (0xFFFF0000 >> 16)
/* 7E66F3C 8007BA0C 24104300 */  and        $v0, $v0, $v1
/* 7E66F40 8007BA10 02004010 */  beqz       $v0, .Llevel_40_8007BA1C
/* 7E66F44 8007BA14 00000000 */   nop
/* 7E66F48 8007BA18 460020A2 */  sb         $zero, 0x46($s1)
.Llevel_40_8007BA1C:
/* 7E66F4C 8007BA1C 0780023C */  lui        $v0, %hi(D_80071908)
/* 7E66F50 8007BA20 0819428C */  lw         $v0, %lo(D_80071908)($v0)
/* 7E66F54 8007BA24 9171010C */  jal        rand
/* 7E66F58 8007BA28 140022AE */   sw        $v0, 0x14($s1)
/* 7E66F5C 8007BA2C FF004230 */  andi       $v0, $v0, 0xFF
/* 7E66F60 8007BA30 00014224 */  addiu      $v0, $v0, 0x100
/* 7E66F64 8007BA34 0A0042A6 */  sh         $v0, 0xA($s2)
/* 7E66F68 8007BA38 50002392 */  lbu        $v1, 0x50($s1)
/* 7E66F6C 8007BA3C 01000224 */  addiu      $v0, $zero, 0x1
/* 7E66F70 8007BA40 480022A2 */  sb         $v0, 0x48($s1)
/* 7E66F74 8007BA44 0680013C */  lui        $at, %hi(D_80066964)
/* 7E66F78 8007BA48 21082300 */  addu       $at, $at, $v1
/* 7E66F7C 8007BA4C 64692290 */  lbu        $v0, %lo(D_80066964)($at)
/* 7E66F80 8007BA50 00000000 */  nop
/* 7E66F84 8007BA54 490022A2 */  sb         $v0, 0x49($s1)
/* 7E66F88 8007BA58 FF004230 */  andi       $v0, $v0, 0xFF
/* 7E66F8C 8007BA5C 0680013C */  lui        $at, %hi(D_80066988)
/* 7E66F90 8007BA60 21082200 */  addu       $at, $at, $v0
/* 7E66F94 8007BA64 88692290 */  lbu        $v0, %lo(D_80066988)($at)
/* 7E66F98 8007BA68 49002392 */  lbu        $v1, 0x49($s1)
/* 7E66F9C 8007BA6C 3C0022A2 */  sb         $v0, 0x3C($s1)
/* 7E66FA0 8007BA70 0680013C */  lui        $at, %hi(D_80066990)
/* 7E66FA4 8007BA74 21082300 */  addu       $at, $at, $v1
/* 7E66FA8 8007BA78 90692290 */  lbu        $v0, %lo(D_80066990)($at)
/* 7E66FAC 8007BA7C 30EF0108 */  j          .Llevel_40_8007BCC0
/* 7E66FB0 8007BA80 540022A2 */   sb        $v0, 0x54($s1)
.Llevel_40_8007BA84:
/* 7E66FB4 8007BA84 3000B327 */  addiu      $s3, $sp, 0x30
/* 7E66FB8 8007BA88 21206002 */  addu       $a0, $s3, $zero
/* 7E66FBC 8007BA8C 4B3D010C */  jal        func_8004F52C
/* 7E66FC0 8007BA90 04004526 */   addiu     $a1, $s2, 0x4
/* 7E66FC4 8007BA94 0A001624 */  addiu      $s6, $zero, 0xA
/* 7E66FC8 8007BA98 0A004286 */  lh         $v0, 0xA($s2)
/* 7E66FCC 8007BA9C 00000000 */  nop
/* 7E66FD0 8007BAA0 2A105E00 */  slt        $v0, $v0, $fp
/* 7E66FD4 8007BAA4 07004014 */  bnez       $v0, .Llevel_40_8007BAC4
/* 7E66FD8 8007BAA8 05001724 */   addiu     $s7, $zero, 0x5
/* 7E66FDC 8007BAAC 0780053C */  lui        $a1, %hi(D_80070328)
/* 7E66FE0 8007BAB0 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 7E66FE4 8007BAB4 5E3C010C */  jal        func_8004F178
/* 7E66FE8 8007BAB8 0C002426 */   addiu     $a0, $s1, 0xC
/* 7E66FEC 8007BABC E6EE0108 */  j          .Llevel_40_8007BB98
/* 7E66FF0 8007BAC0 00000000 */   nop
.Llevel_40_8007BAC4:
/* 7E66FF4 8007BAC4 2000B027 */  addiu      $s0, $sp, 0x20
/* 7E66FF8 8007BAC8 21200002 */  addu       $a0, $s0, $zero
/* 7E66FFC 8007BACC 0780143C */  lui        $s4, %hi(D_80070328)
/* 7E67000 8007BAD0 28039426 */  addiu      $s4, $s4, %lo(D_80070328)
/* 7E67004 8007BAD4 21288002 */  addu       $a1, $s4, $zero
/* 7E67008 8007BAD8 723C010C */  jal        func_8004F1C8
/* 7E6700C 8007BADC 21306002 */   addu      $a2, $s3, $zero
/* 7E67010 8007BAE0 21200002 */  addu       $a0, $s0, $zero
/* 7E67014 8007BAE4 21280002 */  addu       $a1, $s0, $zero
/* 7E67018 8007BAE8 8A3C010C */  jal        func_8004F228
/* 7E6701C 8007BAEC 2130C003 */   addu      $a2, $fp, $zero
/* 7E67020 8007BAF0 21200002 */  addu       $a0, $s0, $zero
/* 7E67024 8007BAF4 7A3B010C */  jal        func_8004EDE8
/* 7E67028 8007BAF8 01000524 */   addiu     $a1, $zero, 0x1
/* 7E6702C 8007BAFC E1014228 */  slti       $v0, $v0, 0x1E1
/* 7E67030 8007BB00 06004014 */  bnez       $v0, .Llevel_40_8007BB1C
/* 7E67034 8007BB04 21200002 */   addu      $a0, $s0, $zero
/* 7E67038 8007BB08 0C002426 */  addiu      $a0, $s1, 0xC
/* 7E6703C 8007BB0C 5E3C010C */  jal        func_8004F178
/* 7E67040 8007BB10 21288002 */   addu      $a1, $s4, $zero
/* 7E67044 8007BB14 E6EE0108 */  j          .Llevel_40_8007BB98
/* 7E67048 8007BB18 0A005EA6 */   sh        $fp, 0xA($s2)
.Llevel_40_8007BB1C:
/* 7E6704C 8007BB1C 0A004686 */  lh         $a2, 0xA($s2)
/* 7E67050 8007BB20 7F3C010C */  jal        func_8004F1FC
/* 7E67054 8007BB24 21280002 */   addu      $a1, $s0, $zero
/* 7E67058 8007BB28 0C002426 */  addiu      $a0, $s1, 0xC
/* 7E6705C 8007BB2C 21286002 */  addu       $a1, $s3, $zero
/* 7E67060 8007BB30 653C010C */  jal        func_8004F194
/* 7E67064 8007BB34 21300002 */   addu      $a2, $s0, $zero
/* 7E67068 8007BB38 0A004286 */  lh         $v0, 0xA($s2)
/* 7E6706C 8007BB3C 00000000 */  nop
/* 7E67070 8007BB40 18005700 */  mult       $v0, $s7
/* 7E67074 8007BB44 12400000 */  mflo       $t0
/* 7E67078 8007BB48 40100800 */  sll        $v0, $t0, 1
/* 7E6707C 8007BB4C 0680013C */  lui        $at, %hi(D_800658A0)
/* 7E67080 8007BB50 21082200 */  addu       $at, $at, $v0
/* 7E67084 8007BB54 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 7E67088 8007BB58 00000000 */  nop
/* 7E6708C 8007BB5C 1A007600 */  div        $zero, $v1, $s6
/* 7E67090 8007BB60 0200C016 */  bnez       $s6, .Llevel_40_8007BB6C
/* 7E67094 8007BB64 00000000 */   nop
/* 7E67098 8007BB68 0D000700 */  break      7
.Llevel_40_8007BB6C:
/* 7E6709C 8007BB6C FFFF0124 */  addiu      $at, $zero, -0x1
/* 7E670A0 8007BB70 0400C116 */  bne        $s6, $at, .Llevel_40_8007BB84
/* 7E670A4 8007BB74 0080013C */   lui       $at, (0x80000000 >> 16)
/* 7E670A8 8007BB78 02006114 */  bne        $v1, $at, .Llevel_40_8007BB84
/* 7E670AC 8007BB7C 00000000 */   nop
/* 7E670B0 8007BB80 0D000600 */  break      6
.Llevel_40_8007BB84:
/* 7E670B4 8007BB84 12180000 */  mflo       $v1
/* 7E670B8 8007BB88 1400228E */  lw         $v0, 0x14($s1)
/* 7E670BC 8007BB8C 00000000 */  nop
/* 7E670C0 8007BB90 21104300 */  addu       $v0, $v0, $v1
/* 7E670C4 8007BB94 140022AE */  sw         $v0, 0x14($s1)
.Llevel_40_8007BB98:
/* 7E670C8 8007BB98 0E004292 */  lbu        $v0, 0xE($s2)
/* 7E670CC 8007BB9C 44002392 */  lbu        $v1, 0x44($s1)
/* 7E670D0 8007BBA0 F9004224 */  addiu      $v0, $v0, 0xF9
/* 7E670D4 8007BBA4 21186200 */  addu       $v1, $v1, $v0
/* 7E670D8 8007BBA8 440023A2 */  sb         $v1, 0x44($s1)
/* 7E670DC 8007BBAC 0F004292 */  lbu        $v0, 0xF($s2)
/* 7E670E0 8007BBB0 45002392 */  lbu        $v1, 0x45($s1)
/* 7E670E4 8007BBB4 F9004224 */  addiu      $v0, $v0, 0xF9
/* 7E670E8 8007BBB8 21186200 */  addu       $v1, $v1, $v0
/* 7E670EC 8007BBBC 450023A2 */  sb         $v1, 0x45($s1)
/* 7E670F0 8007BBC0 10004292 */  lbu        $v0, 0x10($s2)
/* 7E670F4 8007BBC4 46002392 */  lbu        $v1, 0x46($s1)
/* 7E670F8 8007BBC8 F9004224 */  addiu      $v0, $v0, 0xF9
/* 7E670FC 8007BBCC 21186200 */  addu       $v1, $v1, $v0
/* 7E67100 8007BBD0 460023A2 */  sb         $v1, 0x46($s1)
/* 7E67104 8007BBD4 0A004286 */  lh         $v0, 0xA($s2)
/* 7E67108 8007BBD8 00000000 */  nop
/* 7E6710C 8007BBDC 0F004228 */  slti       $v0, $v0, 0xF
/* 7E67110 8007BBE0 13004014 */  bnez       $v0, .Llevel_40_8007BC30
/* 7E67114 8007BBE4 00000000 */   nop
/* 7E67118 8007BBE8 0780053C */  lui        $a1, %hi(D_80070328 + 0x44)
/* 7E6711C 8007BBEC 6C03A58C */  lw         $a1, %lo(D_80070328 + 0x44)($a1)
/* 7E67120 8007BBF0 00000000 */  nop
/* 7E67124 8007BBF4 8000A424 */  addiu      $a0, $a1, 0x80
/* 7E67128 8007BBF8 2A10A402 */  slt        $v0, $s5, $a0
/* 7E6712C 8007BBFC 0C004010 */  beqz       $v0, .Llevel_40_8007BC30
/* 7E67130 8007BC00 00000000 */   nop
/* 7E67134 8007BC04 0780023C */  lui        $v0, %hi(D_80070328 + 8)
/* 7E67138 8007BC08 3003428C */  lw         $v0, %lo(D_80070328 + 8)($v0)
/* 7E6713C 8007BC0C 1400238E */  lw         $v1, 0x14($s1)
/* 7E67140 8007BC10 00000000 */  nop
/* 7E67144 8007BC14 23184300 */  subu       $v1, $v0, $v1
/* 7E67148 8007BC18 2A106400 */  slt        $v0, $v1, $a0
/* 7E6714C 8007BC1C 04004010 */  beqz       $v0, .Llevel_40_8007BC30
/* 7E67150 8007BC20 23100500 */   negu      $v0, $a1
/* 7E67154 8007BC24 2A104300 */  slt        $v0, $v0, $v1
/* 7E67158 8007BC28 06004014 */  bnez       $v0, .Llevel_40_8007BC44
/* 7E6715C 8007BC2C 04000224 */   addiu     $v0, $zero, 0x4
.Llevel_40_8007BC30:
/* 7E67160 8007BC30 0A004286 */  lh         $v0, 0xA($s2)
/* 7E67164 8007BC34 00000000 */  nop
/* 7E67168 8007BC38 2A10C203 */  slt        $v0, $fp, $v0
/* 7E6716C 8007BC3C 20004010 */  beqz       $v0, .Llevel_40_8007BCC0
/* 7E67170 8007BC40 04000224 */   addiu     $v0, $zero, 0x4
.Llevel_40_8007BC44:
/* 7E67174 8007BC44 30EF0108 */  j          .Llevel_40_8007BCC0
/* 7E67178 8007BC48 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_40_8007BC4C:
/* 7E6717C 8007BC4C 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 7E67180 8007BC50 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 7E67184 8007BC54 00000000 */  nop
/* 7E67188 8007BC58 08004010 */  beqz       $v0, .Llevel_40_8007BC7C
/* 7E6718C 8007BC5C 21202002 */   addu      $a0, $s1, $zero
/* 7E67190 8007BC60 0000438C */  lw         $v1, 0x0($v0)
/* 7E67194 8007BC64 00000000 */  nop
/* 7E67198 8007BC68 1400628C */  lw         $v0, 0x14($v1)
/* 7E6719C 8007BC6C 00000000 */  nop
/* 7E671A0 8007BC70 02005114 */  bne        $v0, $s1, .Llevel_40_8007BC7C
/* 7E671A4 8007BC74 00000000 */   nop
/* 7E671A8 8007BC78 140060AC */  sw         $zero, 0x14($v1)
.Llevel_40_8007BC7C:
/* 7E671AC 8007BC7C 4957010C */  jal        func_80055D24
/* 7E671B0 8007BC80 04000524 */   addiu     $a1, $zero, 0x4
/* 7E671B4 8007BC84 04000424 */  addiu      $a0, $zero, 0x4
/* 7E671B8 8007BC88 0C000524 */  addiu      $a1, $zero, 0xC
/* 7E671BC 8007BC8C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7E671C0 8007BC90 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7E671C4 8007BC94 49002792 */  lbu        $a3, 0x49($s1)
/* 7E671C8 8007BC98 09F84000 */  jalr       $v0
/* 7E671CC 8007BC9C 21302002 */   addu      $a2, $s1, $zero
/* 7E671D0 8007BCA0 98DB000C */  jal        func_80036E60
/* 7E671D4 8007BCA4 21202002 */   addu      $a0, $s1, $zero
/* 7E671D8 8007BCA8 21202002 */  addu       $a0, $s1, $zero
/* 7E671DC 8007BCAC 21280000 */  addu       $a1, $zero, $zero
/* 7E671E0 8007BCB0 AFEE000C */  jal        func_8003BABC
/* 7E671E4 8007BCB4 21300000 */   addu      $a2, $zero, $zero
/* 7E671E8 8007BCB8 C656010C */  jal        func_80055B18
/* 7E671EC 8007BCBC 21202002 */   addu      $a0, $s1, $zero
.Llevel_40_8007BCC0:
/* 7E671F0 8007BCC0 6C00BF8F */  lw         $ra, 0x6C($sp)
/* 7E671F4 8007BCC4 6800BE8F */  lw         $fp, 0x68($sp)
/* 7E671F8 8007BCC8 6400B78F */  lw         $s7, 0x64($sp)
/* 7E671FC 8007BCCC 6000B68F */  lw         $s6, 0x60($sp)
/* 7E67200 8007BCD0 5C00B58F */  lw         $s5, 0x5C($sp)
/* 7E67204 8007BCD4 5800B48F */  lw         $s4, 0x58($sp)
/* 7E67208 8007BCD8 5400B38F */  lw         $s3, 0x54($sp)
/* 7E6720C 8007BCDC 5000B28F */  lw         $s2, 0x50($sp)
/* 7E67210 8007BCE0 4C00B18F */  lw         $s1, 0x4C($sp)
/* 7E67214 8007BCE4 4800B08F */  lw         $s0, 0x48($sp)
/* 7E67218 8007BCE8 7000BD27 */  addiu      $sp, $sp, 0x70
/* 7E6721C 8007BCEC 0800E003 */  jr         $ra
/* 7E67220 8007BCF0 00000000 */   nop
.size func_level_40_8007B6FC, . - func_level_40_8007B6FC
