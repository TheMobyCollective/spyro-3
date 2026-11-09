.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_23_level_14
/* 47BBDEC 8007C8BC B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 47BBDF0 8007C8C0 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 47BBDF4 8007C8C4 21888000 */  addu       $s1, $a0, $zero
/* 47BBDF8 8007C8C8 3800B0AF */  sw         $s0, 0x38($sp)
/* 47BBDFC 8007C8CC 21800000 */  addu       $s0, $zero, $zero
/* 47BBE00 8007C8D0 4800B4AF */  sw         $s4, 0x48($sp)
/* 47BBE04 8007C8D4 21A00000 */  addu       $s4, $zero, $zero
/* 47BBE08 8007C8D8 01000424 */  addiu      $a0, $zero, 0x1
/* 47BBE0C 8007C8DC 21280000 */  addu       $a1, $zero, $zero
/* 47BBE10 8007C8E0 4000B2AF */  sw         $s2, 0x40($sp)
/* 47BBE14 8007C8E4 0C003226 */  addiu      $s2, $s1, 0xC
/* 47BBE18 8007C8E8 21304002 */  addu       $a2, $s2, $zero
/* 47BBE1C 8007C8EC 1800A727 */  addiu      $a3, $sp, 0x18
/* 47BBE20 8007C8F0 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 47BBE24 8007C8F4 4400B3AF */  sw         $s3, 0x44($sp)
/* 47BBE28 8007C8F8 0000338E */  lw         $s3, 0x0($s1)
/* 47BBE2C 8007C8FC 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 47BBE30 8007C900 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 47BBE34 8007C904 06000224 */  addiu      $v0, $zero, 0x6
/* 47BBE38 8007C908 1800A0AF */  sw         $zero, 0x18($sp)
/* 47BBE3C 8007C90C 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 47BBE40 8007C910 09F86000 */  jalr       $v1
/* 47BBE44 8007C914 2000A2AF */   sw        $v0, 0x20($sp)
/* 47BBE48 8007C918 21206002 */  addu       $a0, $s3, $zero
/* 47BBE4C 8007C91C 69D6000C */  jal        func_800359A4
/* 47BBE50 8007C920 04000524 */   addiu     $a1, $zero, 0x4
/* 47BBE54 8007C924 08004014 */  bnez       $v0, .Llevel_14_8007C948
/* 47BBE58 8007C928 21204002 */   addu      $a0, $s2, $zero
/* 47BBE5C 8007C92C C8000524 */  addiu      $a1, $zero, 0xC8
/* 47BBE60 8007C930 03000624 */  addiu      $a2, $zero, 0x3
/* 47BBE64 8007C934 C468000C */  jal        func_8001A310
/* 47BBE68 8007C938 21382002 */   addu      $a3, $s1, $zero
/* 47BBE6C 8007C93C 21804000 */  addu       $s0, $v0, $zero
/* 47BBE70 8007C940 05000012 */  beqz       $s0, .Llevel_14_8007C958
/* 47BBE74 8007C944 21202002 */   addu      $a0, $s1, $zero
.Llevel_14_8007C948:
/* 47BBE78 8007C948 7B000012 */  beqz       $s0, .Llevel_14_8007CB38
/* 47BBE7C 8007C94C 00000000 */   nop
/* 47BBE80 8007C950 CEF20108 */  j          .Llevel_14_8007CB38
/* 47BBE84 8007C954 140030AE */   sw        $s0, 0x14($s1)
.Llevel_14_8007C958:
/* 47BBE88 8007C958 4957010C */  jal        func_80055D24
/* 47BBE8C 8007C95C 04000524 */   addiu     $a1, $zero, 0x4
/* 47BBE90 8007C960 2800A427 */  addiu      $a0, $sp, 0x28
/* 47BBE94 8007C964 5E3C010C */  jal        func_8004F178
/* 47BBE98 8007C968 21284002 */   addu      $a1, $s2, $zero
/* 47BBE9C 8007C96C 48002392 */  lbu        $v1, 0x48($s1)
/* 47BBEA0 8007C970 01000224 */  addiu      $v0, $zero, 0x1
/* 47BBEA4 8007C974 04006214 */  bne        $v1, $v0, .Llevel_14_8007C988
/* 47BBEA8 8007C978 C8000224 */   addiu     $v0, $zero, 0xC8
/* 47BBEAC 8007C97C 0800628E */  lw         $v0, 0x8($s3)
/* 47BBEB0 8007C980 63F20108 */  j          .Llevel_14_8007C98C
/* 47BBEB4 8007C984 1800A2AF */   sw        $v0, 0x18($sp)
.Llevel_14_8007C988:
/* 47BBEB8 8007C988 1800A2AF */  sw         $v0, 0x18($sp)
.Llevel_14_8007C98C:
/* 47BBEBC 8007C98C 20002426 */  addiu      $a0, $s1, 0x20
/* 47BBEC0 8007C990 1800A527 */  addiu      $a1, $sp, 0x18
/* 47BBEC4 8007C994 2130A000 */  addu       $a2, $a1, $zero
/* 47BBEC8 8007C998 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 47BBECC 8007C99C 5B3B010C */  jal        func_8004ED6C
/* 47BBED0 8007C9A0 2000A0AF */   sw        $zero, 0x20($sp)
/* 47BBED4 8007C9A4 0C003026 */  addiu      $s0, $s1, 0xC
/* 47BBED8 8007C9A8 21200002 */  addu       $a0, $s0, $zero
/* 47BBEDC 8007C9AC 21280002 */  addu       $a1, $s0, $zero
/* 47BBEE0 8007C9B0 653C010C */  jal        func_8004F194
/* 47BBEE4 8007C9B4 1800A627 */   addiu     $a2, $sp, 0x18
/* 47BBEE8 8007C9B8 48002392 */  lbu        $v1, 0x48($s1)
/* 47BBEEC 8007C9BC 01000224 */  addiu      $v0, $zero, 0x1
/* 47BBEF0 8007C9C0 0B006214 */  bne        $v1, $v0, .Llevel_14_8007C9F0
/* 47BBEF4 8007C9C4 2800A427 */   addiu     $a0, $sp, 0x28
/* 47BBEF8 8007C9C8 1400228E */  lw         $v0, 0x14($s1)
/* 47BBEFC 8007C9CC 0400638E */  lw         $v1, 0x4($s3)
/* 47BBF00 8007C9D0 00000000 */  nop
/* 47BBF04 8007C9D4 23104300 */  subu       $v0, $v0, $v1
/* 47BBF08 8007C9D8 140022AE */  sw         $v0, 0x14($s1)
/* 47BBF0C 8007C9DC 0400628E */  lw         $v0, 0x4($s3)
/* 47BBF10 8007C9E0 00000000 */  nop
/* 47BBF14 8007C9E4 10004224 */  addiu      $v0, $v0, 0x10
/* 47BBF18 8007C9E8 D3F20108 */  j          .Llevel_14_8007CB4C
/* 47BBF1C 8007C9EC 040062AE */   sw        $v0, 0x4($s3)
.Llevel_14_8007C9F0:
/* 47BBF20 8007C9F0 1000A0AF */  sw         $zero, 0x10($sp)
/* 47BBF24 8007C9F4 21280002 */  addu       $a1, $s0, $zero
/* 47BBF28 8007C9F8 03000624 */  addiu      $a2, $zero, 0x3
/* 47BBF2C 8007C9FC C360000C */  jal        func_8001830C
/* 47BBF30 8007CA00 21380000 */   addu      $a3, $zero, $zero
/* 47BBF34 8007CA04 05004010 */  beqz       $v0, .Llevel_14_8007CA1C
/* 47BBF38 8007CA08 21202002 */   addu      $a0, $s1, $zero
/* 47BBF3C 8007CA0C 01000524 */  addiu      $a1, $zero, 0x1
/* 47BBF40 8007CA10 AFEE000C */  jal        func_8003BABC
/* 47BBF44 8007CA14 21300000 */   addu      $a2, $zero, $zero
/* 47BBF48 8007CA18 01001424 */  addiu      $s4, $zero, 0x1
.Llevel_14_8007CA1C:
/* 47BBF4C 8007CA1C 0780033C */  lui        $v1, %hi(D_8006E044)
/* 47BBF50 8007CA20 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 47BBF54 8007CA24 09000224 */  addiu      $v0, $zero, 0x9
/* 47BBF58 8007CA28 16006210 */  beq        $v1, $v0, .Llevel_14_8007CA84
/* 47BBF5C 8007CA2C 0B000224 */   addiu     $v0, $zero, 0xB
/* 47BBF60 8007CA30 15006210 */  beq        $v1, $v0, .Llevel_14_8007CA88
/* 47BBF64 8007CA34 0C002426 */   addiu     $a0, $s1, 0xC
/* 47BBF68 8007CA38 0780023C */  lui        $v0, %hi(D_80070328 + 0x240)
/* 47BBF6C 8007CA3C 6805428C */  lw         $v0, %lo(D_80070328 + 0x240)($v0)
/* 47BBF70 8007CA40 00000000 */  nop
/* 47BBF74 8007CA44 11004014 */  bnez       $v0, .Llevel_14_8007CA8C
/* 47BBF78 8007CA48 00010524 */   addiu     $a1, $zero, 0x100
/* 47BBF7C 8007CA4C 21200002 */  addu       $a0, $s0, $zero
/* 47BBF80 8007CA50 80000524 */  addiu      $a1, $zero, 0x80
/* 47BBF84 8007CA54 A270000C */  jal        func_8001C288
/* 47BBF88 8007CA58 07000624 */   addiu     $a2, $zero, 0x7
/* 47BBF8C 8007CA5C 09004010 */  beqz       $v0, .Llevel_14_8007CA84
/* 47BBF90 8007CA60 21202002 */   addu      $a0, $s1, $zero
/* 47BBF94 8007CA64 21280000 */  addu       $a1, $zero, $zero
/* 47BBF98 8007CA68 AFEE000C */  jal        func_8003BABC
/* 47BBF9C 8007CA6C 21300000 */   addu      $a2, $zero, $zero
/* 47BBFA0 8007CA70 46002292 */  lbu        $v0, 0x46($s1)
/* 47BBFA4 8007CA74 0780013C */  lui        $at, %hi(D_80070328 + 0x298)
/* 47BBFA8 8007CA78 C00522AC */  sw         $v0, %lo(D_80070328 + 0x298)($at)
/* 47BBFAC 8007CA7C CCF20108 */  j          .Llevel_14_8007CB30
/* 47BBFB0 8007CA80 01001424 */   addiu     $s4, $zero, 0x1
.Llevel_14_8007CA84:
/* 47BBFB4 8007CA84 0C002426 */  addiu      $a0, $s1, 0xC
.Llevel_14_8007CA88:
/* 47BBFB8 8007CA88 00010524 */  addiu      $a1, $zero, 0x100
.Llevel_14_8007CA8C:
/* 47BBFBC 8007CA8C 02000624 */  addiu      $a2, $zero, 0x2
/* 47BBFC0 8007CA90 1000A0AF */  sw         $zero, 0x10($sp)
/* 47BBFC4 8007CA94 3A002292 */  lbu        $v0, 0x3A($s1)
/* 47BBFC8 8007CA98 21380000 */  addu       $a3, $zero, $zero
/* 47BBFCC 8007CA9C 40180200 */  sll        $v1, $v0, 1
/* 47BBFD0 8007CAA0 21186200 */  addu       $v1, $v1, $v0
/* 47BBFD4 8007CAA4 80180300 */  sll        $v1, $v1, 2
/* 47BBFD8 8007CAA8 23186200 */  subu       $v1, $v1, $v0
/* 47BBFDC 8007CAAC 0780023C */  lui        $v0, %hi(D_8006C550)
/* 47BBFE0 8007CAB0 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 47BBFE4 8007CAB4 C0180300 */  sll        $v1, $v1, 3
/* 47BBFE8 8007CAB8 21104300 */  addu       $v0, $v0, $v1
/* 47BBFEC 8007CABC 8C6E000C */  jal        func_8001BA30
/* 47BBFF0 8007CAC0 1400A2AF */   sw        $v0, 0x14($sp)
/* 47BBFF4 8007CAC4 21804000 */  addu       $s0, $v0, $zero
/* 47BBFF8 8007CAC8 19000012 */  beqz       $s0, .Llevel_14_8007CB30
/* 47BBFFC 8007CACC 21202002 */   addu      $a0, $s1, $zero
/* 47BC000 8007CAD0 21280000 */  addu       $a1, $zero, $zero
/* 47BC004 8007CAD4 AFEE000C */  jal        func_8003BABC
/* 47BC008 8007CAD8 21300000 */   addu      $a2, $zero, $zero
/* 47BC00C 8007CADC 36000386 */  lh         $v1, 0x36($s0)
/* 47BC010 8007CAE0 1A000224 */  addiu      $v0, $zero, 0x1A
/* 47BC014 8007CAE4 0D006214 */  bne        $v1, $v0, .Llevel_14_8007CB1C
/* 47BC018 8007CAE8 00000000 */   nop
/* 47BC01C 8007CAEC 48000292 */  lbu        $v0, 0x48($s0)
/* 47BC020 8007CAF0 00000000 */  nop
/* 47BC024 8007CAF4 1900422C */  sltiu      $v0, $v0, 0x19
/* 47BC028 8007CAF8 09004014 */  bnez       $v0, .Llevel_14_8007CB20
/* 47BC02C 8007CAFC 01001424 */   addiu     $s4, $zero, 0x1
/* 47BC030 8007CB00 21200002 */  addu       $a0, $s0, $zero
/* 47BC034 8007CB04 D0D3000C */  jal        func_80034F40
/* 47BC038 8007CB08 04000524 */   addiu     $a1, $zero, 0x4
/* 47BC03C 8007CB0C 04000224 */  addiu      $v0, $zero, 0x4
/* 47BC040 8007CB10 480002A2 */  sb         $v0, 0x48($s0)
/* 47BC044 8007CB14 CCF20108 */  j          .Llevel_14_8007CB30
/* 47BC048 8007CB18 01001424 */   addiu     $s4, $zero, 0x1
.Llevel_14_8007CB1C:
/* 47BC04C 8007CB1C 01001424 */  addiu      $s4, $zero, 0x1
.Llevel_14_8007CB20:
/* 47BC050 8007CB20 1800028E */  lw         $v0, 0x18($s0)
/* 47BC054 8007CB24 0310033C */  lui        $v1, (0x10030000 >> 16)
/* 47BC058 8007CB28 25104300 */  or         $v0, $v0, $v1
/* 47BC05C 8007CB2C 180002AE */  sw         $v0, 0x18($s0)
.Llevel_14_8007CB30:
/* 47BC060 8007CB30 06008012 */  beqz       $s4, .Llevel_14_8007CB4C
/* 47BC064 8007CB34 00000000 */   nop
.Llevel_14_8007CB38:
/* 47BC068 8007CB38 21202002 */  addu       $a0, $s1, $zero
/* 47BC06C 8007CB3C 6EDA000C */  jal        func_800369B8
/* 47BC070 8007CB40 19000524 */   addiu     $a1, $zero, 0x19
/* 47BC074 8007CB44 C656010C */  jal        func_80055B18
/* 47BC078 8007CB48 21202002 */   addu      $a0, $s1, $zero
.Llevel_14_8007CB4C:
/* 47BC07C 8007CB4C 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 47BC080 8007CB50 4800B48F */  lw         $s4, 0x48($sp)
/* 47BC084 8007CB54 4400B38F */  lw         $s3, 0x44($sp)
/* 47BC088 8007CB58 4000B28F */  lw         $s2, 0x40($sp)
/* 47BC08C 8007CB5C 3C00B18F */  lw         $s1, 0x3C($sp)
/* 47BC090 8007CB60 3800B08F */  lw         $s0, 0x38($sp)
/* 47BC094 8007CB64 5000BD27 */  addiu      $sp, $sp, 0x50
/* 47BC098 8007CB68 0800E003 */  jr         $ra
/* 47BC09C 8007CB6C 00000000 */   nop
.size MobyUpdate_23_level_14, . - MobyUpdate_23_level_14
