.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_44_800797BC
/* 8B4CCEC 800797BC B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 8B4CCF0 800797C0 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 8B4CCF4 800797C4 21888000 */  addu       $s1, $a0, $zero
/* 8B4CCF8 800797C8 4800BFAF */  sw         $ra, 0x48($sp)
/* 8B4CCFC 800797CC 4400B3AF */  sw         $s3, 0x44($sp)
/* 8B4CD00 800797D0 4000B2AF */  sw         $s2, 0x40($sp)
/* 8B4CD04 800797D4 3800B0AF */  sw         $s0, 0x38($sp)
/* 8B4CD08 800797D8 0000328E */  lw         $s2, 0x0($s1)
/* 8B4CD0C 800797DC 00000000 */  nop
/* 8B4CD10 800797E0 0C00428E */  lw         $v0, 0xC($s2)
/* 8B4CD14 800797E4 00000000 */  nop
/* 8B4CD18 800797E8 E1004018 */  blez       $v0, .Llevel_44_80079B70
/* 8B4CD1C 800797EC 00000000 */   nop
/* 8B4CD20 800797F0 4D002292 */  lbu        $v0, 0x4D($s1)
/* 8B4CD24 800797F4 00000000 */  nop
/* 8B4CD28 800797F8 DD004010 */  beqz       $v0, .Llevel_44_80079B70
/* 8B4CD2C 800797FC 00000000 */   nop
/* 8B4CD30 80079800 49002292 */  lbu        $v0, 0x49($s1)
/* 8B4CD34 80079804 00000000 */  nop
/* 8B4CD38 80079808 01004230 */  andi       $v0, $v0, 0x1
/* 8B4CD3C 8007980C 09004014 */  bnez       $v0, .Llevel_44_80079834
/* 8B4CD40 80079810 00000000 */   nop
/* 8B4CD44 80079814 1400238E */  lw         $v1, 0x14($s1)
/* 8B4CD48 80079818 1000428E */  lw         $v0, 0x10($s2)
/* 8B4CD4C 8007981C 00000000 */  nop
/* 8B4CD50 80079820 2A104300 */  slt        $v0, $v0, $v1
/* 8B4CD54 80079824 D2004010 */  beqz       $v0, .Llevel_44_80079B70
/* 8B4CD58 80079828 00000000 */   nop
/* 8B4CD5C 8007982C 42E60108 */  j          .Llevel_44_80079908
/* 8B4CD60 80079830 00000000 */   nop
.Llevel_44_80079834:
/* 8B4CD64 80079834 0C002426 */  addiu      $a0, $s1, 0xC
/* 8B4CD68 80079838 6564000C */  jal        func_80019194
/* 8B4CD6C 8007983C 00010524 */   addiu     $a1, $zero, 0x100
/* 8B4CD70 80079840 31004010 */  beqz       $v0, .Llevel_44_80079908
/* 8B4CD74 80079844 00000000 */   nop
/* 8B4CD78 80079848 0780133C */  lui        $s3, %hi(D_80071918)
/* 8B4CD7C 8007984C 18197326 */  addiu      $s3, $s3, %lo(D_80071918)
/* 8B4CD80 80079850 21206002 */  addu       $a0, $s3, $zero
/* 8B4CD84 80079854 C13B010C */  jal        func_8004EF04
/* 8B4CD88 80079858 00100524 */   addiu     $a1, $zero, 0x1000
/* 8B4CD8C 8007985C 00004386 */  lh         $v1, 0x0($s2)
/* 8B4CD90 80079860 0000628E */  lw         $v0, 0x0($s3)
/* 8B4CD94 80079864 00000000 */  nop
/* 8B4CD98 80079868 18006200 */  mult       $v1, $v0
/* 8B4CD9C 8007986C 02004386 */  lh         $v1, 0x2($s2)
/* 8B4CDA0 80079870 12280000 */  mflo       $a1
/* 8B4CDA4 80079874 0780023C */  lui        $v0, %hi(D_8007191C)
/* 8B4CDA8 80079878 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 8B4CDAC 8007987C 00000000 */  nop
/* 8B4CDB0 80079880 18006200 */  mult       $v1, $v0
/* 8B4CDB4 80079884 04004386 */  lh         $v1, 0x4($s2)
/* 8B4CDB8 80079888 12200000 */  mflo       $a0
/* 8B4CDBC 8007988C 0780023C */  lui        $v0, %hi(D_80071920)
/* 8B4CDC0 80079890 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 8B4CDC4 80079894 00000000 */  nop
/* 8B4CDC8 80079898 18006200 */  mult       $v1, $v0
/* 8B4CDCC 8007989C 2110A400 */  addu       $v0, $a1, $a0
/* 8B4CDD0 800798A0 12180000 */  mflo       $v1
/* 8B4CDD4 800798A4 21104300 */  addu       $v0, $v0, $v1
/* 8B4CDD8 800798A8 C3820200 */  sra        $s0, $v0, 11
/* 8B4CDDC 800798AC 16000106 */  bgez       $s0, .Llevel_44_80079908
/* 8B4CDE0 800798B0 21206002 */   addu      $a0, $s3, $zero
/* 8B4CDE4 800798B4 00100524 */  addiu      $a1, $zero, 0x1000
/* 8B4CDE8 800798B8 43330200 */  sra        $a2, $v0, 13
/* 8B4CDEC 800798BC 233C010C */  jal        func_8004F08C
/* 8B4CDF0 800798C0 2330D000 */   subu      $a2, $a2, $s0
/* 8B4CDF4 800798C4 0000638E */  lw         $v1, 0x0($s3)
/* 8B4CDF8 800798C8 00004296 */  lhu        $v0, 0x0($s2)
/* 8B4CDFC 800798CC 00000000 */  nop
/* 8B4CE00 800798D0 21104300 */  addu       $v0, $v0, $v1
/* 8B4CE04 800798D4 000042A6 */  sh         $v0, 0x0($s2)
/* 8B4CE08 800798D8 0780033C */  lui        $v1, %hi(D_8007191C)
/* 8B4CE0C 800798DC 1C19638C */  lw         $v1, %lo(D_8007191C)($v1)
/* 8B4CE10 800798E0 02004296 */  lhu        $v0, 0x2($s2)
/* 8B4CE14 800798E4 00000000 */  nop
/* 8B4CE18 800798E8 21104300 */  addu       $v0, $v0, $v1
/* 8B4CE1C 800798EC 020042A6 */  sh         $v0, 0x2($s2)
/* 8B4CE20 800798F0 0780033C */  lui        $v1, %hi(D_80071920)
/* 8B4CE24 800798F4 2019638C */  lw         $v1, %lo(D_80071920)($v1)
/* 8B4CE28 800798F8 04004296 */  lhu        $v0, 0x4($s2)
/* 8B4CE2C 800798FC 00000000 */  nop
/* 8B4CE30 80079900 21104300 */  addu       $v0, $v0, $v1
/* 8B4CE34 80079904 040042A6 */  sh         $v0, 0x4($s2)
.Llevel_44_80079908:
/* 8B4CE38 80079908 00004386 */  lh         $v1, 0x0($s2)
/* 8B4CE3C 8007990C 0C00228E */  lw         $v0, 0xC($s1)
/* 8B4CE40 80079910 00000000 */  nop
/* 8B4CE44 80079914 21104300 */  addu       $v0, $v0, $v1
/* 8B4CE48 80079918 0C0022AE */  sw         $v0, 0xC($s1)
/* 8B4CE4C 8007991C 02004486 */  lh         $a0, 0x2($s2)
/* 8B4CE50 80079920 1000228E */  lw         $v0, 0x10($s1)
/* 8B4CE54 80079924 49002392 */  lbu        $v1, 0x49($s1)
/* 8B4CE58 80079928 21104400 */  addu       $v0, $v0, $a0
/* 8B4CE5C 8007992C 08006330 */  andi       $v1, $v1, 0x8
/* 8B4CE60 80079930 04006010 */  beqz       $v1, .Llevel_44_80079944
/* 8B4CE64 80079934 100022AE */   sw        $v0, 0x10($s1)
/* 8B4CE68 80079938 04004296 */  lhu        $v0, 0x4($s2)
/* 8B4CE6C 8007993C 5BE60108 */  j          .Llevel_44_8007996C
/* 8B4CE70 80079940 FDFF4224 */   addiu     $v0, $v0, -0x3
.Llevel_44_80079944:
/* 8B4CE74 80079944 36002386 */  lh         $v1, 0x36($s1)
/* 8B4CE78 80079948 2F010224 */  addiu      $v0, $zero, 0x12F
/* 8B4CE7C 8007994C 04006214 */  bne        $v1, $v0, .Llevel_44_80079960
/* 8B4CE80 80079950 00000000 */   nop
/* 8B4CE84 80079954 04004296 */  lhu        $v0, 0x4($s2)
/* 8B4CE88 80079958 5BE60108 */  j          .Llevel_44_8007996C
/* 8B4CE8C 8007995C F0FF4224 */   addiu     $v0, $v0, -0x10
.Llevel_44_80079960:
/* 8B4CE90 80079960 04004296 */  lhu        $v0, 0x4($s2)
/* 8B4CE94 80079964 00000000 */  nop
/* 8B4CE98 80079968 FAFF4224 */  addiu      $v0, $v0, -0x6
.Llevel_44_8007996C:
/* 8B4CE9C 8007996C 040042A6 */  sh         $v0, 0x4($s2)
/* 8B4CEA0 80079970 04004286 */  lh         $v0, 0x4($s2)
/* 8B4CEA4 80079974 00000000 */  nop
/* 8B4CEA8 80079978 80FF4228 */  slti       $v0, $v0, -0x80
/* 8B4CEAC 8007997C 02004010 */  beqz       $v0, .Llevel_44_80079988
/* 8B4CEB0 80079980 80FF0224 */   addiu     $v0, $zero, -0x80
/* 8B4CEB4 80079984 040042A6 */  sh         $v0, 0x4($s2)
.Llevel_44_80079988:
/* 8B4CEB8 80079988 04004386 */  lh         $v1, 0x4($s2)
/* 8B4CEBC 8007998C 1400228E */  lw         $v0, 0x14($s1)
/* 8B4CEC0 80079990 00000000 */  nop
/* 8B4CEC4 80079994 21104300 */  addu       $v0, $v0, $v1
/* 8B4CEC8 80079998 140022AE */  sw         $v0, 0x14($s1)
/* 8B4CECC 8007999C 44002292 */  lbu        $v0, 0x44($s1)
/* 8B4CED0 800799A0 06004392 */  lbu        $v1, 0x6($s2)
/* 8B4CED4 800799A4 00000000 */  nop
/* 8B4CED8 800799A8 21104300 */  addu       $v0, $v0, $v1
/* 8B4CEDC 800799AC 440022A2 */  sb         $v0, 0x44($s1)
/* 8B4CEE0 800799B0 45002292 */  lbu        $v0, 0x45($s1)
/* 8B4CEE4 800799B4 08004392 */  lbu        $v1, 0x8($s2)
/* 8B4CEE8 800799B8 00000000 */  nop
/* 8B4CEEC 800799BC 21104300 */  addu       $v0, $v0, $v1
/* 8B4CEF0 800799C0 450022A2 */  sb         $v0, 0x45($s1)
/* 8B4CEF4 800799C4 46002292 */  lbu        $v0, 0x46($s1)
/* 8B4CEF8 800799C8 0A004492 */  lbu        $a0, 0xA($s2)
/* 8B4CEFC 800799CC 49002392 */  lbu        $v1, 0x49($s1)
/* 8B4CF00 800799D0 21104400 */  addu       $v0, $v0, $a0
/* 8B4CF04 800799D4 02006330 */  andi       $v1, $v1, 0x2
/* 8B4CF08 800799D8 18006010 */  beqz       $v1, .Llevel_44_80079A3C
/* 8B4CF0C 800799DC 460022A2 */   sb        $v0, 0x46($s1)
/* 8B4CF10 800799E0 0C00428E */  lw         $v0, 0xC($s2)
/* 8B4CF14 800799E4 00000000 */  nop
/* 8B4CF18 800799E8 03004230 */  andi       $v0, $v0, 0x3
/* 8B4CF1C 800799EC 13004014 */  bnez       $v0, .Llevel_44_80079A3C
/* 8B4CF20 800799F0 00000000 */   nop
/* 8B4CF24 800799F4 9171010C */  jal        rand
/* 8B4CF28 800799F8 00000000 */   nop
/* 8B4CF2C 800799FC 03004230 */  andi       $v0, $v0, 0x3
/* 8B4CF30 80079A00 9171010C */  jal        rand
/* 8B4CF34 80079A04 1000A2AF */   sw        $v0, 0x10($sp)
/* 8B4CF38 80079A08 01000424 */  addiu      $a0, $zero, 0x1
/* 8B4CF3C 80079A0C 01000524 */  addiu      $a1, $zero, 0x1
/* 8B4CF40 80079A10 0C002626 */  addiu      $a2, $s1, 0xC
/* 8B4CF44 80079A14 1000A727 */  addiu      $a3, $sp, 0x10
/* 8B4CF48 80079A18 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 8B4CF4C 80079A1C E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 8B4CF50 80079A20 03004230 */  andi       $v0, $v0, 0x3
/* 8B4CF54 80079A24 1400A2AF */  sw         $v0, 0x14($sp)
/* 8B4CF58 80079A28 14000224 */  addiu      $v0, $zero, 0x14
/* 8B4CF5C 80079A2C 09F86000 */  jalr       $v1
/* 8B4CF60 80079A30 1800A2AF */   sw        $v0, 0x18($sp)
/* 8B4CF64 80079A34 D7E60108 */  j          .Llevel_44_80079B5C
/* 8B4CF68 80079A38 00000000 */   nop
.Llevel_44_80079A3C:
/* 8B4CF6C 80079A3C 49002392 */  lbu        $v1, 0x49($s1)
/* 8B4CF70 80079A40 00000000 */  nop
/* 8B4CF74 80079A44 04006230 */  andi       $v0, $v1, 0x4
/* 8B4CF78 80079A48 27004010 */  beqz       $v0, .Llevel_44_80079AE8
/* 8B4CF7C 80079A4C 01000224 */   addiu     $v0, $zero, 0x1
/* 8B4CF80 80079A50 42004010 */  beqz       $v0, .Llevel_44_80079B5C
/* 8B4CF84 80079A54 21800000 */   addu      $s0, $zero, $zero
/* 8B4CF88 80079A58 40001324 */  addiu      $s3, $zero, 0x40
.Llevel_44_80079A5C:
/* 8B4CF8C 80079A5C 9171010C */  jal        rand
/* 8B4CF90 80079A60 01001026 */   addiu     $s0, $s0, 0x1
/* 8B4CF94 80079A64 7F004230 */  andi       $v0, $v0, 0x7F
/* 8B4CF98 80079A68 23106202 */  subu       $v0, $s3, $v0
/* 8B4CF9C 80079A6C 9171010C */  jal        rand
/* 8B4CFA0 80079A70 1000A2AF */   sw        $v0, 0x10($sp)
/* 8B4CFA4 80079A74 7F004230 */  andi       $v0, $v0, 0x7F
/* 8B4CFA8 80079A78 23106202 */  subu       $v0, $s3, $v0
/* 8B4CFAC 80079A7C 9171010C */  jal        rand
/* 8B4CFB0 80079A80 1400A2AF */   sw        $v0, 0x14($sp)
/* 8B4CFB4 80079A84 1000A427 */  addiu      $a0, $sp, 0x10
/* 8B4CFB8 80079A88 21288000 */  addu       $a1, $a0, $zero
/* 8B4CFBC 80079A8C 0C002626 */  addiu      $a2, $s1, 0xC
/* 8B4CFC0 80079A90 7F004230 */  andi       $v0, $v0, 0x7F
/* 8B4CFC4 80079A94 23106202 */  subu       $v0, $s3, $v0
/* 8B4CFC8 80079A98 653C010C */  jal        func_8004F194
/* 8B4CFCC 80079A9C 1800A2AF */   sw        $v0, 0x18($sp)
/* 8B4CFD0 80079AA0 01000424 */  addiu      $a0, $zero, 0x1
/* 8B4CFD4 80079AA4 42000524 */  addiu      $a1, $zero, 0x42
/* 8B4CFD8 80079AA8 1000A627 */  addiu      $a2, $sp, 0x10
/* 8B4CFDC 80079AAC 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8B4CFE0 80079AB0 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8B4CFE4 80079AB4 00000000 */  nop
/* 8B4CFE8 80079AB8 09F84000 */  jalr       $v0
/* 8B4CFEC 80079ABC 01000724 */   addiu     $a3, $zero, 0x1
/* 8B4CFF0 80079AC0 49002292 */  lbu        $v0, 0x49($s1)
/* 8B4CFF4 80079AC4 00000000 */  nop
/* 8B4CFF8 80079AC8 01004230 */  andi       $v0, $v0, 0x1
/* 8B4CFFC 80079ACC 40100200 */  sll        $v0, $v0, 1
/* 8B4D000 80079AD0 01004224 */  addiu      $v0, $v0, 0x1
/* 8B4D004 80079AD4 2A100202 */  slt        $v0, $s0, $v0
/* 8B4D008 80079AD8 20004010 */  beqz       $v0, .Llevel_44_80079B5C
/* 8B4D00C 80079ADC 00000000 */   nop
/* 8B4D010 80079AE0 97E60108 */  j          .Llevel_44_80079A5C
/* 8B4D014 80079AE4 00000000 */   nop
.Llevel_44_80079AE8:
/* 8B4D018 80079AE8 08006230 */  andi       $v0, $v1, 0x8
/* 8B4D01C 80079AEC 1B004010 */  beqz       $v0, .Llevel_44_80079B5C
/* 8B4D020 80079AF0 00000000 */   nop
/* 8B4D024 80079AF4 0C00428E */  lw         $v0, 0xC($s2)
/* 8B4D028 80079AF8 00000000 */  nop
/* 8B4D02C 80079AFC 07004230 */  andi       $v0, $v0, 0x7
/* 8B4D030 80079B00 16004014 */  bnez       $v0, .Llevel_44_80079B5C
/* 8B4D034 80079B04 00000000 */   nop
/* 8B4D038 80079B08 9171010C */  jal        rand
/* 8B4D03C 80079B0C 08001024 */   addiu     $s0, $zero, 0x8
/* 8B4D040 80079B10 0F004230 */  andi       $v0, $v0, 0xF
/* 8B4D044 80079B14 23100202 */  subu       $v0, $s0, $v0
/* 8B4D048 80079B18 9171010C */  jal        rand
/* 8B4D04C 80079B1C 1000A2AF */   sw        $v0, 0x10($sp)
/* 8B4D050 80079B20 0F004230 */  andi       $v0, $v0, 0xF
/* 8B4D054 80079B24 23800202 */  subu       $s0, $s0, $v0
/* 8B4D058 80079B28 9171010C */  jal        rand
/* 8B4D05C 80079B2C 1400B0AF */   sw        $s0, 0x14($sp)
/* 8B4D060 80079B30 01000424 */  addiu      $a0, $zero, 0x1
/* 8B4D064 80079B34 27000524 */  addiu      $a1, $zero, 0x27
/* 8B4D068 80079B38 0C002626 */  addiu      $a2, $s1, 0xC
/* 8B4D06C 80079B3C 1000A727 */  addiu      $a3, $sp, 0x10
/* 8B4D070 80079B40 07004230 */  andi       $v0, $v0, 0x7
/* 8B4D074 80079B44 04000324 */  addiu      $v1, $zero, 0x4
/* 8B4D078 80079B48 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 8B4D07C 80079B4C E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 8B4D080 80079B50 23186200 */  subu       $v1, $v1, $v0
/* 8B4D084 80079B54 09F80001 */  jalr       $t0
/* 8B4D088 80079B58 1800A3AF */   sw        $v1, 0x18($sp)
.Llevel_44_80079B5C:
/* 8B4D08C 80079B5C 0C00428E */  lw         $v0, 0xC($s2)
/* 8B4D090 80079B60 00000000 */  nop
/* 8B4D094 80079B64 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 8B4D098 80079B68 F3E60108 */  j          .Llevel_44_80079BCC
/* 8B4D09C 80079B6C 0C0042AE */   sw        $v0, 0xC($s2)
.Llevel_44_80079B70:
/* 8B4D0A0 80079B70 49002392 */  lbu        $v1, 0x49($s1)
/* 8B4D0A4 80079B74 00000000 */  nop
/* 8B4D0A8 80079B78 01006230 */  andi       $v0, $v1, 0x1
/* 8B4D0AC 80079B7C 11004010 */  beqz       $v0, .Llevel_44_80079BC4
/* 8B4D0B0 80079B80 10006230 */   andi      $v0, $v1, 0x10
/* 8B4D0B4 80079B84 07004010 */  beqz       $v0, .Llevel_44_80079BA4
/* 8B4D0B8 80079B88 0F000524 */   addiu     $a1, $zero, 0xF
/* 8B4D0BC 80079B8C 08000424 */  addiu      $a0, $zero, 0x8
/* 8B4D0C0 80079B90 0C002626 */  addiu      $a2, $s1, 0xC
/* 8B4D0C4 80079B94 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8B4D0C8 80079B98 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8B4D0CC 80079B9C EFE60108 */  j          .Llevel_44_80079BBC
/* 8B4D0D0 80079BA0 21380000 */   addu      $a3, $zero, $zero
.Llevel_44_80079BA4:
/* 8B4D0D4 80079BA4 08000424 */  addiu      $a0, $zero, 0x8
/* 8B4D0D8 80079BA8 46000524 */  addiu      $a1, $zero, 0x46
/* 8B4D0DC 80079BAC 0C002626 */  addiu      $a2, $s1, 0xC
/* 8B4D0E0 80079BB0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8B4D0E4 80079BB4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8B4D0E8 80079BB8 10000724 */  addiu      $a3, $zero, 0x10
.Llevel_44_80079BBC:
/* 8B4D0EC 80079BBC 09F84000 */  jalr       $v0
/* 8B4D0F0 80079BC0 00000000 */   nop
.Llevel_44_80079BC4:
/* 8B4D0F4 80079BC4 C656010C */  jal        func_80055B18
/* 8B4D0F8 80079BC8 21202002 */   addu      $a0, $s1, $zero
.Llevel_44_80079BCC:
/* 8B4D0FC 80079BCC 4800BF8F */  lw         $ra, 0x48($sp)
/* 8B4D100 80079BD0 4400B38F */  lw         $s3, 0x44($sp)
/* 8B4D104 80079BD4 4000B28F */  lw         $s2, 0x40($sp)
/* 8B4D108 80079BD8 3C00B18F */  lw         $s1, 0x3C($sp)
/* 8B4D10C 80079BDC 3800B08F */  lw         $s0, 0x38($sp)
/* 8B4D110 80079BE0 5000BD27 */  addiu      $sp, $sp, 0x50
/* 8B4D114 80079BE4 0800E003 */  jr         $ra
/* 8B4D118 80079BE8 00000000 */   nop
.size func_level_44_800797BC, . - func_level_44_800797BC
