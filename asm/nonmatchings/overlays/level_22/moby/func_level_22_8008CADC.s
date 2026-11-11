.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_571_level_22
/* 577C80C 8008CADC 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 577C810 8008CAE0 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 577C814 8008CAE4 21888000 */  addu       $s1, $a0, $zero
/* 577C818 8008CAE8 6000BFAF */  sw         $ra, 0x60($sp)
/* 577C81C 8008CAEC 5C00B5AF */  sw         $s5, 0x5C($sp)
/* 577C820 8008CAF0 5800B4AF */  sw         $s4, 0x58($sp)
/* 577C824 8008CAF4 5400B3AF */  sw         $s3, 0x54($sp)
/* 577C828 8008CAF8 5000B2AF */  sw         $s2, 0x50($sp)
/* 577C82C 8008CAFC 4800B0AF */  sw         $s0, 0x48($sp)
/* 577C830 8008CB00 1800228E */  lw         $v0, 0x18($s1)
/* 577C834 8008CB04 0000328E */  lw         $s2, 0x0($s1)
/* 577C838 8008CB08 E3004010 */  beqz       $v0, .Llevel_22_8008CE98
/* 577C83C 8008CB0C 04000224 */   addiu     $v0, $zero, 0x4
/* 577C840 8008CB10 48002392 */  lbu        $v1, 0x48($s1)
/* 577C844 8008CB14 00000000 */  nop
/* 577C848 8008CB18 DF006210 */  beq        $v1, $v0, .Llevel_22_8008CE98
/* 577C84C 8008CB1C 3C020424 */   addiu     $a0, $zero, 0x23C
/* 577C850 8008CB20 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 577C854 8008CB24 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 577C858 8008CB28 00000000 */  nop
/* 577C85C 8008CB2C 09F84000 */  jalr       $v0
/* 577C860 8008CB30 21282002 */   addu      $a1, $s1, $zero
/* 577C864 8008CB34 21A84000 */  addu       $s5, $v0, $zero
/* 577C868 8008CB38 9600A012 */  beqz       $s5, .Llevel_22_8008CD94
/* 577C86C 8008CB3C 02000324 */   addiu     $v1, $zero, 0x2
/* 577C870 8008CB40 1400428E */  lw         $v0, 0x14($s2)
/* 577C874 8008CB44 0000B38E */  lw         $s3, 0x0($s5)
/* 577C878 8008CB48 02004314 */  bne        $v0, $v1, .Llevel_22_8008CB54
/* 577C87C 8008CB4C 4B001424 */   addiu     $s4, $zero, 0x4B
/* 577C880 8008CB50 96001424 */  addiu      $s4, $zero, 0x96
.Llevel_22_8008CB54:
/* 577C884 8008CB54 F4010224 */  addiu      $v0, $zero, 0x1F4
/* 577C888 8008CB58 2800A2AF */  sw         $v0, 0x28($sp)
/* 577C88C 8008CB5C 46002292 */  lbu        $v0, 0x46($s1)
/* 577C890 8008CB60 00000000 */  nop
/* 577C894 8008CB64 40100200 */  sll        $v0, $v0, 1
/* 577C898 8008CB68 0680013C */  lui        $at, %hi(D_80065920)
/* 577C89C 8008CB6C 21082200 */  addu       $at, $at, $v0
/* 577C8A0 8008CB70 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 577C8A4 8008CB74 0C00B026 */  addiu      $s0, $s5, 0xC
/* 577C8A8 8008CB78 40100300 */  sll        $v0, $v1, 1
/* 577C8AC 8008CB7C 21104300 */  addu       $v0, $v0, $v1
/* 577C8B0 8008CB80 80100200 */  sll        $v0, $v0, 2
/* 577C8B4 8008CB84 23104300 */  subu       $v0, $v0, $v1
/* 577C8B8 8008CB88 00110200 */  sll        $v0, $v0, 4
/* 577C8BC 8008CB8C 23104300 */  subu       $v0, $v0, $v1
/* 577C8C0 8008CB90 83120200 */  sra        $v0, $v0, 10
/* 577C8C4 8008CB94 2000A2AF */  sw         $v0, 0x20($sp)
/* 577C8C8 8008CB98 46002292 */  lbu        $v0, 0x46($s1)
/* 577C8CC 8008CB9C 21200002 */  addu       $a0, $s0, $zero
/* 577C8D0 8008CBA0 40100200 */  sll        $v0, $v0, 1
/* 577C8D4 8008CBA4 0680013C */  lui        $at, %hi(D_800658A0)
/* 577C8D8 8008CBA8 21082200 */  addu       $at, $at, $v0
/* 577C8DC 8008CBAC A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 577C8E0 8008CBB0 0C002526 */  addiu      $a1, $s1, 0xC
/* 577C8E4 8008CBB4 2800A0AF */  sw         $zero, 0x28($sp)
/* 577C8E8 8008CBB8 40100300 */  sll        $v0, $v1, 1
/* 577C8EC 8008CBBC 21104300 */  addu       $v0, $v0, $v1
/* 577C8F0 8008CBC0 80100200 */  sll        $v0, $v0, 2
/* 577C8F4 8008CBC4 23104300 */  subu       $v0, $v0, $v1
/* 577C8F8 8008CBC8 00110200 */  sll        $v0, $v0, 4
/* 577C8FC 8008CBCC 23104300 */  subu       $v0, $v0, $v1
/* 577C900 8008CBD0 83120200 */  sra        $v0, $v0, 10
/* 577C904 8008CBD4 5E3C010C */  jal        func_8004F178
/* 577C908 8008CBD8 2400A2AF */   sw        $v0, 0x24($sp)
/* 577C90C 8008CBDC 21200002 */  addu       $a0, $s0, $zero
/* 577C910 8008CBE0 21280002 */  addu       $a1, $s0, $zero
/* 577C914 8008CBE4 653C010C */  jal        func_8004F194
/* 577C918 8008CBE8 2000A627 */   addiu     $a2, $sp, 0x20
/* 577C91C 8008CBEC 21300000 */  addu       $a2, $zero, $zero
/* 577C920 8008CBF0 0C00428E */  lw         $v0, 0xC($s2)
/* 577C924 8008CBF4 0C00248E */  lw         $a0, 0xC($s1)
/* 577C928 8008CBF8 0C00428C */  lw         $v0, 0xC($v0)
/* 577C92C 8008CBFC 1000258E */  lw         $a1, 0x10($s1)
/* 577C930 8008CC00 0000438C */  lw         $v1, 0x0($v0)
/* 577C934 8008CC04 0400428C */  lw         $v0, 0x4($v0)
/* 577C938 8008CC08 23206400 */  subu       $a0, $v1, $a0
/* 577C93C 8008CC0C 203A010C */  jal        func_8004E880
/* 577C940 8008CC10 23284500 */   subu      $a1, $v0, $a1
/* 577C944 8008CC14 40100200 */  sll        $v0, $v0, 1
/* 577C948 8008CC18 0680013C */  lui        $at, %hi(D_80065920)
/* 577C94C 8008CC1C 21082200 */  addu       $at, $at, $v0
/* 577C950 8008CC20 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 577C954 8008CC24 00000000 */  nop
/* 577C958 8008CC28 18005400 */  mult       $v0, $s4
/* 577C95C 8008CC2C 21300000 */  addu       $a2, $zero, $zero
/* 577C960 8008CC30 12480000 */  mflo       $t1
/* 577C964 8008CC34 03130900 */  sra        $v0, $t1, 12
/* 577C968 8008CC38 2000A2AF */  sw         $v0, 0x20($sp)
/* 577C96C 8008CC3C 0C00428E */  lw         $v0, 0xC($s2)
/* 577C970 8008CC40 0C00248E */  lw         $a0, 0xC($s1)
/* 577C974 8008CC44 0C00428C */  lw         $v0, 0xC($v0)
/* 577C978 8008CC48 1000258E */  lw         $a1, 0x10($s1)
/* 577C97C 8008CC4C 0000438C */  lw         $v1, 0x0($v0)
/* 577C980 8008CC50 0400428C */  lw         $v0, 0x4($v0)
/* 577C984 8008CC54 23206400 */  subu       $a0, $v1, $a0
/* 577C988 8008CC58 203A010C */  jal        func_8004E880
/* 577C98C 8008CC5C 23284500 */   subu      $a1, $v0, $a1
/* 577C990 8008CC60 40100200 */  sll        $v0, $v0, 1
/* 577C994 8008CC64 0680013C */  lui        $at, %hi(D_800658A0)
/* 577C998 8008CC68 21082200 */  addu       $at, $at, $v0
/* 577C99C 8008CC6C A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 577C9A0 8008CC70 00000000 */  nop
/* 577C9A4 8008CC74 18005400 */  mult       $v0, $s4
/* 577C9A8 8008CC78 2000A38F */  lw         $v1, 0x20($sp)
/* 577C9AC 8008CC7C 21200002 */  addu       $a0, $s0, $zero
/* 577C9B0 8008CC80 2800A0AF */  sw         $zero, 0x28($sp)
/* 577C9B4 8008CC84 12480000 */  mflo       $t1
/* 577C9B8 8008CC88 03130900 */  sra        $v0, $t1, 12
/* 577C9BC 8008CC8C 2400A2AF */  sw         $v0, 0x24($sp)
/* 577C9C0 8008CC90 040063A6 */  sh         $v1, 0x4($s3)
/* 577C9C4 8008CC94 2400A28F */  lw         $v0, 0x24($sp)
/* 577C9C8 8008CC98 21308002 */  addu       $a2, $s4, $zero
/* 577C9CC 8008CC9C 060062A6 */  sh         $v0, 0x6($s3)
/* 577C9D0 8008CCA0 0C00438E */  lw         $v1, 0xC($s2)
/* 577C9D4 8008CCA4 3000A227 */  addiu      $v0, $sp, 0x30
/* 577C9D8 8008CCA8 1000A2AF */  sw         $v0, 0x10($sp)
/* 577C9DC 8008CCAC 0C00658C */  lw         $a1, 0xC($v1)
/* 577C9E0 8008CCB0 79D9000C */  jal        func_800365E4
/* 577C9E4 8008CCB4 F4FF0724 */   addiu     $a3, $zero, -0xC
/* 577C9E8 8008CCB8 8080063C */  lui        $a2, (0x80808081 >> 16)
/* 577C9EC 8008CCBC 8180C634 */  ori        $a2, $a2, (0x80808081 & 0xFFFF)
/* 577C9F0 8008CCC0 40000824 */  addiu      $t0, $zero, 0x40
/* 577C9F4 8008CCC4 3000A58F */  lw         $a1, 0x30($sp)
/* 577C9F8 8008CCC8 80000724 */  addiu      $a3, $zero, 0x80
/* 577C9FC 8008CCCC 080062A6 */  sh         $v0, 0x8($s3)
/* 577CA00 8008CCD0 06000224 */  addiu      $v0, $zero, 0x6
/* 577CA04 8008CCD4 0A0062A6 */  sh         $v0, 0xA($s3)
/* 577CA08 8008CCD8 000071AE */  sw         $s1, 0x0($s3)
.Llevel_22_8008CCDC:
/* 577CA0C 8008CCDC 0A006486 */  lh         $a0, 0xA($s3)
/* 577CA10 8008CCE0 00000000 */  nop
/* 577CA14 8008CCE4 18008500 */  mult       $a0, $a1
/* 577CA18 8008CCE8 12200000 */  mflo       $a0
/* 577CA1C 8008CCEC 00000000 */  nop
/* 577CA20 8008CCF0 00000000 */  nop
/* 577CA24 8008CCF4 18008600 */  mult       $a0, $a2
/* 577CA28 8008CCF8 C31F0400 */  sra        $v1, $a0, 31
/* 577CA2C 8008CCFC 10480000 */  mfhi       $t1
/* 577CA30 8008CD00 21102401 */  addu       $v0, $t1, $a0
/* 577CA34 8008CD04 C3110200 */  sra        $v0, $v0, 7
/* 577CA38 8008CD08 23184300 */  subu       $v1, $v0, $v1
/* 577CA3C 8008CD0C 00120300 */  sll        $v0, $v1, 8
/* 577CA40 8008CD10 23104300 */  subu       $v0, $v0, $v1
/* 577CA44 8008CD14 23188200 */  subu       $v1, $a0, $v0
/* 577CA48 8008CD18 C0FF6224 */  addiu      $v0, $v1, -0x40
/* 577CA4C 8008CD1C 03004104 */  bgez       $v0, .Llevel_22_8008CD2C
/* 577CA50 8008CD20 19004228 */   slti      $v0, $v0, 0x19
/* 577CA54 8008CD24 23100301 */  subu       $v0, $t0, $v1
/* 577CA58 8008CD28 19004228 */  slti       $v0, $v0, 0x19
.Llevel_22_8008CD2C:
/* 577CA5C 8008CD2C 0C004010 */  beqz       $v0, .Llevel_22_8008CD60
/* 577CA60 8008CD30 80FF6224 */   addiu     $v0, $v1, -0x80
/* 577CA64 8008CD34 03004104 */  bgez       $v0, .Llevel_22_8008CD44
/* 577CA68 8008CD38 19004228 */   slti      $v0, $v0, 0x19
/* 577CA6C 8008CD3C 2310E300 */  subu       $v0, $a3, $v1
/* 577CA70 8008CD40 19004228 */  slti       $v0, $v0, 0x19
.Llevel_22_8008CD44:
/* 577CA74 8008CD44 06004010 */  beqz       $v0, .Llevel_22_8008CD60
/* 577CA78 8008CD48 00000000 */   nop
/* 577CA7C 8008CD4C 0A006296 */  lhu        $v0, 0xA($s3)
/* 577CA80 8008CD50 00000000 */  nop
/* 577CA84 8008CD54 01004224 */  addiu      $v0, $v0, 0x1
/* 577CA88 8008CD58 37330208 */  j          .Llevel_22_8008CCDC
/* 577CA8C 8008CD5C 0A0062A6 */   sh        $v0, 0xA($s3)
.Llevel_22_8008CD60:
/* 577CA90 8008CD60 0C0060A6 */  sh         $zero, 0xC($s3)
/* 577CA94 8008CD64 1400438E */  lw         $v1, 0x14($s2)
/* 577CA98 8008CD68 01000224 */  addiu      $v0, $zero, 0x1
/* 577CA9C 8008CD6C 05006214 */  bne        $v1, $v0, .Llevel_22_8008CD84
/* 577CAA0 8008CD70 00000000 */   nop
/* 577CAA4 8008CD74 0780053C */  lui        $a1, %hi(D_80070328)
/* 577CAA8 8008CD78 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 577CAAC 8008CD7C 5E3C010C */  jal        func_8004F178
/* 577CAB0 8008CD80 0C00A426 */   addiu     $a0, $s5, 0xC
.Llevel_22_8008CD84:
/* 577CAB4 8008CD84 1C00A28E */  lw         $v0, 0x1C($s5)
/* 577CAB8 8008CD88 0080033C */  lui        $v1, (0x80000000 >> 16)
/* 577CABC 8008CD8C 25104300 */  or         $v0, $v0, $v1
/* 577CAC0 8008CD90 1C00A2AE */  sw         $v0, 0x1C($s5)
.Llevel_22_8008CD94:
/* 577CAC4 8008CD94 1800238E */  lw         $v1, 0x18($s1)
/* 577CAC8 8008CD98 8000023C */  lui        $v0, (0x800000 >> 16)
/* 577CACC 8008CD9C 24106200 */  and        $v0, $v1, $v0
/* 577CAD0 8008CDA0 09004014 */  bnez       $v0, .Llevel_22_8008CDC8
/* 577CAD4 8008CDA4 8C000224 */   addiu     $v0, $zero, 0x8C
/* 577CAD8 8008CDA8 0100023C */  lui        $v0, (0x10000 >> 16)
/* 577CADC 8008CDAC 24106200 */  and        $v0, $v1, $v0
/* 577CAE0 8008CDB0 05004014 */  bnez       $v0, .Llevel_22_8008CDC8
/* 577CAE4 8008CDB4 DC000224 */   addiu     $v0, $zero, 0xDC
/* 577CAE8 8008CDB8 0200023C */  lui        $v0, (0x20000 >> 16)
/* 577CAEC 8008CDBC 24106200 */  and        $v0, $v1, $v0
/* 577CAF0 8008CDC0 04004010 */  beqz       $v0, .Llevel_22_8008CDD4
/* 577CAF4 8008CDC4 54010224 */   addiu     $v0, $zero, 0x154
.Llevel_22_8008CDC8:
/* 577CAF8 8008CDC8 000042AE */  sw         $v0, 0x0($s2)
/* 577CAFC 8008CDCC B4000224 */  addiu      $v0, $zero, 0xB4
/* 577CB00 8008CDD0 040042AE */  sw         $v0, 0x4($s2)
.Llevel_22_8008CDD4:
/* 577CB04 8008CDD4 51002292 */  lbu        $v0, 0x51($s1)
/* 577CB08 8008CDD8 00000000 */  nop
/* 577CB0C 8008CDDC 10004014 */  bnez       $v0, .Llevel_22_8008CE20
/* 577CB10 8008CDE0 21300000 */   addu      $a2, $zero, $zero
/* 577CB14 8008CDE4 0C00238E */  lw         $v1, 0xC($s1)
/* 577CB18 8008CDE8 0780043C */  lui        $a0, %hi(D_80070328)
/* 577CB1C 8008CDEC 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 577CB20 8008CDF0 1000228E */  lw         $v0, 0x10($s1)
/* 577CB24 8008CDF4 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 577CB28 8008CDF8 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 577CB2C 8008CDFC 23206400 */  subu       $a0, $v1, $a0
/* 577CB30 8008CE00 203A010C */  jal        func_8004E880
/* 577CB34 8008CE04 23284500 */   subu      $a1, $v0, $a1
/* 577CB38 8008CE08 21204000 */  addu       $a0, $v0, $zero
/* 577CB3C 8008CE0C 20000624 */  addiu      $a2, $zero, 0x20
/* 577CB40 8008CE10 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 577CB44 8008CE14 3603A590 */  lbu        $a1, %lo(D_80070328 + 0xE)($a1)
/* 577CB48 8008CE18 3ED8000C */  jal        func_800360F8
/* 577CB4C 8008CE1C 40000724 */   addiu     $a3, $zero, 0x40
.Llevel_22_8008CE20:
/* 577CB50 8008CE20 080042AE */  sw         $v0, 0x8($s2)
/* 577CB54 8008CE24 080020AE */  sw         $zero, 0x8($s1)
/* 577CB58 8008CE28 1400438E */  lw         $v1, 0x14($s2)
/* 577CB5C 8008CE2C 01000224 */  addiu      $v0, $zero, 0x1
/* 577CB60 8008CE30 07006214 */  bne        $v1, $v0, .Llevel_22_8008CE50
/* 577CB64 8008CE34 00000000 */   nop
/* 577CB68 8008CE38 0000428E */  lw         $v0, 0x0($s2)
/* 577CB6C 8008CE3C 0400438E */  lw         $v1, 0x4($s2)
/* 577CB70 8008CE40 C8004224 */  addiu      $v0, $v0, 0xC8
/* 577CB74 8008CE44 1E006324 */  addiu      $v1, $v1, 0x1E
/* 577CB78 8008CE48 000042AE */  sw         $v0, 0x0($s2)
/* 577CB7C 8008CE4C 040043AE */  sw         $v1, 0x4($s2)
.Llevel_22_8008CE50:
/* 577CB80 8008CE50 1800228E */  lw         $v0, 0x18($s1)
/* 577CB84 8008CE54 1000033C */  lui        $v1, (0x100000 >> 16)
/* 577CB88 8008CE58 24104300 */  and        $v0, $v0, $v1
/* 577CB8C 8008CE5C 08004010 */  beqz       $v0, .Llevel_22_8008CE80
/* 577CB90 8008CE60 04000224 */   addiu     $v0, $zero, 0x4
/* 577CB94 8008CE64 0000428E */  lw         $v0, 0x0($s2)
/* 577CB98 8008CE68 0400438E */  lw         $v1, 0x4($s2)
/* 577CB9C 8008CE6C B4004224 */  addiu      $v0, $v0, 0xB4
/* 577CBA0 8008CE70 46006324 */  addiu      $v1, $v1, 0x46
/* 577CBA4 8008CE74 000042AE */  sw         $v0, 0x0($s2)
/* 577CBA8 8008CE78 040043AE */  sw         $v1, 0x4($s2)
/* 577CBAC 8008CE7C 04000224 */  addiu      $v0, $zero, 0x4
.Llevel_22_8008CE80:
/* 577CBB0 8008CE80 480022A2 */  sb         $v0, 0x48($s1)
/* 577CBB4 8008CE84 21202002 */  addu       $a0, $s1, $zero
/* 577CBB8 8008CE88 D0D3000C */  jal        func_80034F40
/* 577CBBC 8008CE8C 04000524 */   addiu     $a1, $zero, 0x4
/* 577CBC0 8008CE90 08340208 */  j          .Llevel_22_8008D020
/* 577CBC4 8008CE94 00000000 */   nop
.Llevel_22_8008CE98:
/* 577CBC8 8008CE98 0780023C */  lui        $v0, %hi(D_8006C640)
/* 577CBCC 8008CE9C 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 577CBD0 8008CEA0 00000000 */  nop
/* 577CBD4 8008CEA4 02004228 */  slti       $v0, $v0, 0x2
/* 577CBD8 8008CEA8 09004010 */  beqz       $v0, .Llevel_22_8008CED0
/* 577CBDC 8008CEAC 20000224 */   addiu     $v0, $zero, 0x20
/* 577CBE0 8008CEB0 1C00428E */  lw         $v0, 0x1C($s2)
/* 577CBE4 8008CEB4 00000000 */  nop
/* 577CBE8 8008CEB8 05004010 */  beqz       $v0, .Llevel_22_8008CED0
/* 577CBEC 8008CEBC 20000224 */   addiu     $v0, $zero, 0x20
/* 577CBF0 8008CEC0 80EE000C */  jal        func_8003BA00
/* 577CBF4 8008CEC4 21202002 */   addu      $a0, $s1, $zero
/* 577CBF8 8008CEC8 06340208 */  j          .Llevel_22_8008D018
/* 577CBFC 8008CECC 00000000 */   nop
.Llevel_22_8008CED0:
/* 577CC00 8008CED0 48002392 */  lbu        $v1, 0x48($s1)
/* 577CC04 8008CED4 01000624 */  addiu      $a2, $zero, 0x1
/* 577CC08 8008CED8 1E006610 */  beq        $v1, $a2, .Llevel_22_8008CF54
/* 577CC0C 8008CEDC 4A0022A2 */   sb        $v0, 0x4A($s1)
/* 577CC10 8008CEE0 02006228 */  slti       $v0, $v1, 0x2
/* 577CC14 8008CEE4 05004010 */  beqz       $v0, .Llevel_22_8008CEFC
/* 577CC18 8008CEE8 00000000 */   nop
/* 577CC1C 8008CEEC 0A006010 */  beqz       $v1, .Llevel_22_8008CF18
/* 577CC20 8008CEF0 00000000 */   nop
/* 577CC24 8008CEF4 08340208 */  j          .Llevel_22_8008D020
/* 577CC28 8008CEF8 00000000 */   nop
.Llevel_22_8008CEFC:
/* 577CC2C 8008CEFC 02000224 */  addiu      $v0, $zero, 0x2
/* 577CC30 8008CF00 24006210 */  beq        $v1, $v0, .Llevel_22_8008CF94
/* 577CC34 8008CF04 04000224 */   addiu     $v0, $zero, 0x4
/* 577CC38 8008CF08 2C006210 */  beq        $v1, $v0, .Llevel_22_8008CFBC
/* 577CC3C 8008CF0C 21202002 */   addu      $a0, $s1, $zero
/* 577CC40 8008CF10 08340208 */  j          .Llevel_22_8008D020
/* 577CC44 8008CF14 00000000 */   nop
.Llevel_22_8008CF18:
/* 577CC48 8008CF18 0780023C */  lui        $v0, %hi(D_8006C770)
/* 577CC4C 8008CF1C 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 577CC50 8008CF20 00000000 */  nop
/* 577CC54 8008CF24 3E004010 */  beqz       $v0, .Llevel_22_8008D020
/* 577CC58 8008CF28 3C000424 */   addiu     $a0, $zero, 0x3C
/* 577CC5C 8008CF2C DBD8000C */  jal        func_8003636C
/* 577CC60 8008CF30 78000524 */   addiu     $a1, $zero, 0x78
/* 577CC64 8008CF34 21202002 */  addu       $a0, $s1, $zero
/* 577CC68 8008CF38 01000524 */  addiu      $a1, $zero, 0x1
/* 577CC6C 8008CF3C 100042AE */  sw         $v0, 0x10($s2)
/* 577CC70 8008CF40 01000224 */  addiu      $v0, $zero, 0x1
/* 577CC74 8008CF44 D0D3000C */  jal        func_80034F40
/* 577CC78 8008CF48 480082A0 */   sb        $v0, 0x48($a0)
/* 577CC7C 8008CF4C 08340208 */  j          .Llevel_22_8008D020
/* 577CC80 8008CF50 00000000 */   nop
.Llevel_22_8008CF54:
/* 577CC84 8008CF54 10004426 */  addiu      $a0, $s2, 0x10
/* 577CC88 8008CF58 69D6000C */  jal        func_800359A4
/* 577CC8C 8008CF5C 04000524 */   addiu     $a1, $zero, 0x4
/* 577CC90 8008CF60 2F004010 */  beqz       $v0, .Llevel_22_8008D020
/* 577CC94 8008CF64 00000000 */   nop
/* 577CC98 8008CF68 0780023C */  lui        $v0, %hi(D_8006C770)
/* 577CC9C 8008CF6C 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 577CCA0 8008CF70 00000000 */  nop
/* 577CCA4 8008CF74 2A004010 */  beqz       $v0, .Llevel_22_8008D020
/* 577CCA8 8008CF78 02000224 */   addiu     $v0, $zero, 0x2
/* 577CCAC 8008CF7C 480022A2 */  sb         $v0, 0x48($s1)
/* 577CCB0 8008CF80 21202002 */  addu       $a0, $s1, $zero
/* 577CCB4 8008CF84 D0D3000C */  jal        func_80034F40
/* 577CCB8 8008CF88 02000524 */   addiu     $a1, $zero, 0x2
/* 577CCBC 8008CF8C 08340208 */  j          .Llevel_22_8008D020
/* 577CCC0 8008CF90 00000000 */   nop
.Llevel_22_8008CF94:
/* 577CCC4 8008CF94 0780023C */  lui        $v0, %hi(D_8006C770)
/* 577CCC8 8008CF98 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 577CCCC 8008CF9C 00000000 */  nop
/* 577CCD0 8008CFA0 1F004010 */  beqz       $v0, .Llevel_22_8008D020
/* 577CCD4 8008CFA4 21202002 */   addu      $a0, $s1, $zero
/* 577CCD8 8008CFA8 480020A2 */  sb         $zero, 0x48($s1)
/* 577CCDC 8008CFAC D0D3000C */  jal        func_80034F40
/* 577CCE0 8008CFB0 21280000 */   addu      $a1, $zero, $zero
/* 577CCE4 8008CFB4 08340208 */  j          .Llevel_22_8008D020
/* 577CCE8 8008CFB8 00000000 */   nop
.Llevel_22_8008CFBC:
/* 577CCEC 8008CFBC 21284002 */  addu       $a1, $s2, $zero
/* 577CCF0 8008CFC0 0C000224 */  addiu      $v0, $zero, 0xC
/* 577CCF4 8008CFC4 1000A2AF */  sw         $v0, 0x10($sp)
/* 577CCF8 8008CFC8 10000224 */  addiu      $v0, $zero, 0x10
/* 577CCFC 8008CFCC 1400A2AF */  sw         $v0, 0x14($sp)
/* 577CD00 8008CFD0 2C010224 */  addiu      $v0, $zero, 0x12C
/* 577CD04 8008CFD4 1800A2AF */  sw         $v0, 0x18($sp)
/* 577CD08 8008CFD8 1C00A6AF */  sw         $a2, 0x1C($sp)
/* 577CD0C 8008CFDC 0800A68C */  lw         $a2, 0x8($a1)
/* 577CD10 8008CFE0 0CD4000C */  jal        func_80035030
/* 577CD14 8008CFE4 0400A724 */   addiu     $a3, $a1, 0x4
/* 577CD18 8008CFE8 0780023C */  lui        $v0, %hi(D_8006C770)
/* 577CD1C 8008CFEC 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 577CD20 8008CFF0 00000000 */  nop
/* 577CD24 8008CFF4 0A004010 */  beqz       $v0, .Llevel_22_8008D020
/* 577CD28 8008CFF8 21202002 */   addu      $a0, $s1, $zero
/* 577CD2C 8008CFFC 4957010C */  jal        func_80055D24
/* 577CD30 8008D000 04000524 */   addiu     $a1, $zero, 0x4
/* 577CD34 8008D004 80EE000C */  jal        func_8003BA00
/* 577CD38 8008D008 21202002 */   addu      $a0, $s1, $zero
/* 577CD3C 8008D00C 21202002 */  addu       $a0, $s1, $zero
/* 577CD40 8008D010 6EDA000C */  jal        func_800369B8
/* 577CD44 8008D014 18000524 */   addiu     $a1, $zero, 0x18
.Llevel_22_8008D018:
/* 577CD48 8008D018 C656010C */  jal        func_80055B18
/* 577CD4C 8008D01C 21202002 */   addu      $a0, $s1, $zero
.Llevel_22_8008D020:
/* 577CD50 8008D020 6000BF8F */  lw         $ra, 0x60($sp)
/* 577CD54 8008D024 5C00B58F */  lw         $s5, 0x5C($sp)
/* 577CD58 8008D028 5800B48F */  lw         $s4, 0x58($sp)
/* 577CD5C 8008D02C 5400B38F */  lw         $s3, 0x54($sp)
/* 577CD60 8008D030 5000B28F */  lw         $s2, 0x50($sp)
/* 577CD64 8008D034 4C00B18F */  lw         $s1, 0x4C($sp)
/* 577CD68 8008D038 4800B08F */  lw         $s0, 0x48($sp)
/* 577CD6C 8008D03C 6800BD27 */  addiu      $sp, $sp, 0x68
/* 577CD70 8008D040 0800E003 */  jr         $ra
/* 577CD74 8008D044 00000000 */   nop
.size MobyUpdate_571_level_22, . - MobyUpdate_571_level_22
