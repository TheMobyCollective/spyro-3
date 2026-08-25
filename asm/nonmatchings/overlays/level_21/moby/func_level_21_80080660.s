.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_21_80080660
/* 53FCB90 80080660 20FFBD27 */  addiu      $sp, $sp, -0xE0
/* 53FCB94 80080664 CC00B5AF */  sw         $s5, 0xCC($sp)
/* 53FCB98 80080668 21A88000 */  addu       $s5, $a0, $zero
/* 53FCB9C 8008066C DC00BFAF */  sw         $ra, 0xDC($sp)
/* 53FCBA0 80080670 D800BEAF */  sw         $fp, 0xD8($sp)
/* 53FCBA4 80080674 D400B7AF */  sw         $s7, 0xD4($sp)
/* 53FCBA8 80080678 D000B6AF */  sw         $s6, 0xD0($sp)
/* 53FCBAC 8008067C C800B4AF */  sw         $s4, 0xC8($sp)
/* 53FCBB0 80080680 C400B3AF */  sw         $s3, 0xC4($sp)
/* 53FCBB4 80080684 C000B2AF */  sw         $s2, 0xC0($sp)
/* 53FCBB8 80080688 BC00B1AF */  sw         $s1, 0xBC($sp)
/* 53FCBBC 8008068C B800B0AF */  sw         $s0, 0xB8($sp)
/* 53FCBC0 80080690 4800A392 */  lbu        $v1, 0x48($s5)
/* 53FCBC4 80080694 0000AC8E */  lw         $t4, 0x0($s5)
/* 53FCBC8 80080698 01000224 */  addiu      $v0, $zero, 0x1
/* 53FCBCC 8008069C 8A006210 */  beq        $v1, $v0, .Llevel_21_800808C8
/* 53FCBD0 800806A0 7800ACAF */   sw        $t4, 0x78($sp)
/* 53FCBD4 800806A4 02006228 */  slti       $v0, $v1, 0x2
/* 53FCBD8 800806A8 05004010 */  beqz       $v0, .Llevel_21_800806C0
/* 53FCBDC 800806AC 00000000 */   nop
/* 53FCBE0 800806B0 08006010 */  beqz       $v1, .Llevel_21_800806D4
/* 53FCBE4 800806B4 1800A427 */   addiu     $a0, $sp, 0x18
/* 53FCBE8 800806B8 AB020208 */  j          .Llevel_21_80080AAC
/* 53FCBEC 800806BC 00000000 */   nop
.Llevel_21_800806C0:
/* 53FCBF0 800806C0 02000224 */  addiu      $v0, $zero, 0x2
/* 53FCBF4 800806C4 E7006210 */  beq        $v1, $v0, .Llevel_21_80080A64
/* 53FCBF8 800806C8 00000000 */   nop
/* 53FCBFC 800806CC AB020208 */  j          .Llevel_21_80080AAC
/* 53FCC00 800806D0 00000000 */   nop
.Llevel_21_800806D4:
/* 53FCC04 800806D4 0C00B126 */  addiu      $s1, $s5, 0xC
/* 53FCC08 800806D8 5E3C010C */  jal        func_8004F178
/* 53FCC0C 800806DC 21282002 */   addu      $a1, $s1, $zero
/* 53FCC10 800806E0 7800AC8F */  lw         $t4, 0x78($sp)
/* 53FCC14 800806E4 0C00A28E */  lw         $v0, 0xC($s5)
/* 53FCC18 800806E8 00008385 */  lh         $v1, 0x0($t4)
/* 53FCC1C 800806EC 00000000 */  nop
/* 53FCC20 800806F0 21104300 */  addu       $v0, $v0, $v1
/* 53FCC24 800806F4 0C00A2AE */  sw         $v0, 0xC($s5)
/* 53FCC28 800806F8 02008385 */  lh         $v1, 0x2($t4)
/* 53FCC2C 800806FC 1000A28E */  lw         $v0, 0x10($s5)
/* 53FCC30 80080700 00000000 */  nop
/* 53FCC34 80080704 21104300 */  addu       $v0, $v0, $v1
/* 53FCC38 80080708 1000A2AE */  sw         $v0, 0x10($s5)
/* 53FCC3C 8008070C 04008385 */  lh         $v1, 0x4($t4)
/* 53FCC40 80080710 1400A28E */  lw         $v0, 0x14($s5)
/* 53FCC44 80080714 0C00A68E */  lw         $a2, 0xC($s5)
/* 53FCC48 80080718 21204300 */  addu       $a0, $v0, $v1
/* 53FCC4C 8008071C A00FC228 */  slti       $v0, $a2, 0xFA0
/* 53FCC50 80080720 D6004014 */  bnez       $v0, .Llevel_21_80080A7C
/* 53FCC54 80080724 1400A4AE */   sw        $a0, 0x14($s5)
/* 53FCC58 80080728 1000A58E */  lw         $a1, 0x10($s5)
/* 53FCC5C 8008072C 00000000 */  nop
/* 53FCC60 80080730 A00FA228 */  slti       $v0, $a1, 0xFA0
/* 53FCC64 80080734 D1004014 */  bnez       $v0, .Llevel_21_80080A7C
/* 53FCC68 80080738 AC0D8228 */   slti      $v0, $a0, 0xDAC
/* 53FCC6C 8008073C CF004014 */  bnez       $v0, .Llevel_21_80080A7C
/* 53FCC70 80080740 0300033C */   lui       $v1, (0x3D400 >> 16)
/* 53FCC74 80080744 00D46334 */  ori        $v1, $v1, (0x3D400 & 0xFFFF)
/* 53FCC78 80080748 2A106600 */  slt        $v0, $v1, $a2
/* 53FCC7C 8008074C CB004014 */  bnez       $v0, .Llevel_21_80080A7C
/* 53FCC80 80080750 2A106500 */   slt       $v0, $v1, $a1
/* 53FCC84 80080754 C9004014 */  bnez       $v0, .Llevel_21_80080A7C
/* 53FCC88 80080758 0100023C */   lui       $v0, (0x1E000 >> 16)
/* 53FCC8C 8008075C 00E04234 */  ori        $v0, $v0, (0x1E000 & 0xFFFF)
/* 53FCC90 80080760 2A104400 */  slt        $v0, $v0, $a0
/* 53FCC94 80080764 C5004014 */  bnez       $v0, .Llevel_21_80080A7C
/* 53FCC98 80080768 21202002 */   addu      $a0, $s1, $zero
/* 53FCC9C 8008076C 00020524 */  addiu      $a1, $zero, 0x200
/* 53FCCA0 80080770 01000624 */  addiu      $a2, $zero, 0x1
/* 53FCCA4 80080774 21380000 */  addu       $a3, $zero, $zero
/* 53FCCA8 80080778 1710023C */  lui        $v0, (0x10170000 >> 16)
/* 53FCCAC 8008077C 1000A2AF */  sw         $v0, 0x10($sp)
/* 53FCCB0 80080780 8C6E000C */  jal        func_8001BA30
/* 53FCCB4 80080784 1400B5AF */   sw        $s5, 0x14($sp)
/* 53FCCB8 80080788 21804000 */  addu       $s0, $v0, $zero
/* 53FCCBC 8008078C 08000012 */  beqz       $s0, .Llevel_21_800807B0
/* 53FCCC0 80080790 00000000 */   nop
/* 53FCCC4 80080794 7800AC8F */  lw         $t4, 0x78($sp)
/* 53FCCC8 80080798 00000000 */  nop
/* 53FCCCC 8008079C 00008485 */  lh         $a0, 0x0($t4)
/* 53FCCD0 800807A0 02008585 */  lh         $a1, 0x2($t4)
/* 53FCCD4 800807A4 203A010C */  jal        func_8004E880
/* 53FCCD8 800807A8 21300000 */   addu      $a2, $zero, $zero
/* 53FCCDC 800807AC 510002A2 */  sb         $v0, 0x51($s0)
.Llevel_21_800807B0:
/* 53FCCE0 800807B0 7800AC8F */  lw         $t4, 0x78($sp)
/* 53FCCE4 800807B4 0780023C */  lui        $v0, %hi(D_8006C648)
/* 53FCCE8 800807B8 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 53FCCEC 800807BC 08008391 */  lbu        $v1, 0x8($t4)
/* 53FCCF0 800807C0 00000000 */  nop
/* 53FCCF4 800807C4 21186200 */  addu       $v1, $v1, $v0
/* 53FCCF8 800807C8 080083A1 */  sb         $v1, 0x8($t4)
/* 53FCCFC 800807CC FF006330 */  andi       $v1, $v1, 0xFF
/* 53FCD00 800807D0 0300622C */  sltiu      $v0, $v1, 0x3
/* 53FCD04 800807D4 35004014 */  bnez       $v0, .Llevel_21_800808AC
/* 53FCD08 800807D8 6F00622C */   sltiu     $v0, $v1, 0x6F
/* 53FCD0C 800807DC 17004010 */  beqz       $v0, .Llevel_21_8008083C
/* 53FCD10 800807E0 00000000 */   nop
/* 53FCD14 800807E4 16000016 */  bnez       $s0, .Llevel_21_80080840
/* 53FCD18 800807E8 01000224 */   addiu     $v0, $zero, 0x1
/* 53FCD1C 800807EC 1800A427 */  addiu      $a0, $sp, 0x18
/* 53FCD20 800807F0 21282002 */  addu       $a1, $s1, $zero
/* 53FCD24 800807F4 21300000 */  addu       $a2, $zero, $zero
/* 53FCD28 800807F8 1400828D */  lw         $v0, 0x14($t4)
/* 53FCD2C 800807FC 21380000 */  addu       $a3, $zero, $zero
/* 53FCD30 80080800 C360000C */  jal        func_8001830C
/* 53FCD34 80080804 1000A2AF */   sw        $v0, 0x10($sp)
/* 53FCD38 80080808 0D004014 */  bnez       $v0, .Llevel_21_80080840
/* 53FCD3C 8008080C 01000224 */   addiu     $v0, $zero, 0x1
/* 53FCD40 80080810 21202002 */  addu       $a0, $s1, $zero
/* 53FCD44 80080814 80000524 */  addiu      $a1, $zero, 0x80
/* 53FCD48 80080818 7800AC8F */  lw         $t4, 0x78($sp)
/* 53FCD4C 8008081C 21300000 */  addu       $a2, $zero, $zero
/* 53FCD50 80080820 1000A0AF */  sw         $zero, 0x10($sp)
/* 53FCD54 80080824 1400828D */  lw         $v0, 0x14($t4)
/* 53FCD58 80080828 21380000 */  addu       $a3, $zero, $zero
/* 53FCD5C 8008082C 4E64000C */  jal        func_80019138
/* 53FCD60 80080830 1400A2AF */   sw        $v0, 0x14($sp)
/* 53FCD64 80080834 1D004010 */  beqz       $v0, .Llevel_21_800808AC
/* 53FCD68 80080838 00000000 */   nop
.Llevel_21_8008083C:
/* 53FCD6C 8008083C 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_21_80080840:
/* 53FCD70 80080840 0780103C */  lui        $s0, %hi(D_80071924)
/* 53FCD74 80080844 24191026 */  addiu      $s0, $s0, %lo(D_80071924)
/* 53FCD78 80080848 4800A2A2 */  sb         $v0, 0x48($s5)
/* 53FCD7C 8008084C 0000048E */  lw         $a0, 0x0($s0)
/* 53FCD80 80080850 5502010C */  jal        func_80040954
/* 53FCD84 80080854 00000000 */   nop
/* 53FCD88 80080858 03000324 */  addiu      $v1, $zero, 0x3
/* 53FCD8C 8008085C 13004314 */  bne        $v0, $v1, .Llevel_21_800808AC
/* 53FCD90 80080860 00000000 */   nop
/* 53FCD94 80080864 4900A292 */  lbu        $v0, 0x49($s5)
/* 53FCD98 80080868 00000000 */  nop
/* 53FCD9C 8008086C 0E004014 */  bnez       $v0, .Llevel_21_800808A8
/* 53FCDA0 80080870 00000000 */   nop
/* 53FCDA4 80080874 0000028E */  lw         $v0, 0x0($s0)
/* 53FCDA8 80080878 0780033C */  lui        $v1, %hi(D_8006D048 + 0x14)
/* 53FCDAC 8008087C 5CD0638C */  lw         $v1, %lo(D_8006D048 + 0x14)($v1)
/* 53FCDB0 80080880 3F004230 */  andi       $v0, $v0, 0x3F
/* 53FCDB4 80080884 80100200 */  sll        $v0, $v0, 2
/* 53FCDB8 80080888 21104300 */  addu       $v0, $v0, $v1
/* 53FCDBC 8008088C 0000438C */  lw         $v1, 0x0($v0)
/* 53FCDC0 80080890 00000000 */  nop
/* 53FCDC4 80080894 0400628C */  lw         $v0, 0x4($v1)
/* 53FCDC8 80080898 00000000 */  nop
/* 53FCDCC 8008089C 01004234 */  ori        $v0, $v0, 0x1
/* 53FCDD0 800808A0 2B020208 */  j          .Llevel_21_800808AC
/* 53FCDD4 800808A4 040062AC */   sw        $v0, 0x4($v1)
.Llevel_21_800808A8:
/* 53FCDD8 800808A8 4800A0A2 */  sb         $zero, 0x48($s5)
.Llevel_21_800808AC:
/* 53FCDDC 800808AC 7800AC8F */  lw         $t4, 0x78($sp)
/* 53FCDE0 800808B0 4400A292 */  lbu        $v0, 0x44($s5)
/* 53FCDE4 800808B4 09008391 */  lbu        $v1, 0x9($t4)
/* 53FCDE8 800808B8 00000000 */  nop
/* 53FCDEC 800808BC 21104300 */  addu       $v0, $v0, $v1
/* 53FCDF0 800808C0 AB020208 */  j          .Llevel_21_80080AAC
/* 53FCDF4 800808C4 4400A2A2 */   sb        $v0, 0x44($s5)
.Llevel_21_800808C8:
/* 53FCDF8 800808C8 0C00A28E */  lw         $v0, 0xC($s5)
/* 53FCDFC 800808CC 00000000 */  nop
/* 53FCE00 800808D0 7D154228 */  slti       $v0, $v0, 0x157D
/* 53FCE04 800808D4 58004014 */  bnez       $v0, .Llevel_21_80080A38
/* 53FCE08 800808D8 2120A002 */   addu      $a0, $s5, $zero
/* 53FCE0C 800808DC 1000A28E */  lw         $v0, 0x10($s5)
/* 53FCE10 800808E0 00000000 */  nop
/* 53FCE14 800808E4 7D154228 */  slti       $v0, $v0, 0x157D
/* 53FCE18 800808E8 54004014 */  bnez       $v0, .Llevel_21_80080A3C
/* 53FCE1C 800808EC 21280000 */   addu      $a1, $zero, $zero
/* 53FCE20 800808F0 1400A28E */  lw         $v0, 0x14($s5)
/* 53FCE24 800808F4 00000000 */  nop
/* 53FCE28 800808F8 7D154228 */  slti       $v0, $v0, 0x157D
/* 53FCE2C 800808FC 4F004014 */  bnez       $v0, .Llevel_21_80080A3C
/* 53FCE30 80080900 00000000 */   nop
/* 53FCE34 80080904 7800AC8F */  lw         $t4, 0x78($sp)
/* 53FCE38 80080908 21980000 */  addu       $s3, $zero, $zero
/* 53FCE3C 8008090C 1400828D */  lw         $v0, 0x14($t4)
/* 53FCE40 80080910 02001624 */  addiu      $s6, $zero, 0x2
/* 53FCE44 80080914 0000548C */  lw         $s4, 0x0($v0)
/* 53FCE48 80080918 40901300 */  sll        $s2, $s3, 1
.Llevel_21_8008091C:
/* 53FCE4C 8008091C 3800828E */  lw         $v0, 0x38($s4)
/* 53FCE50 80080920 4600A592 */  lbu        $a1, 0x46($s5)
/* 53FCE54 80080924 21104202 */  addu       $v0, $s2, $v0
/* 53FCE58 80080928 00004490 */  lbu        $a0, 0x0($v0)
/* 53FCE5C 8008092C 993C010C */  jal        func_8004F264
/* 53FCE60 80080930 00000000 */   nop
/* 53FCE64 80080934 3C004228 */  slti       $v0, $v0, 0x3C
/* 53FCE68 80080938 3A004010 */  beqz       $v0, .Llevel_21_80080A24
/* 53FCE6C 8008093C 69010424 */   addiu     $a0, $zero, 0x169
/* 53FCE70 80080940 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 53FCE74 80080944 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 53FCE78 80080948 00000000 */  nop
/* 53FCE7C 8008094C 09F84000 */  jalr       $v0
/* 53FCE80 80080950 2128A002 */   addu      $a1, $s5, $zero
/* 53FCE84 80080954 21804000 */  addu       $s0, $v0, $zero
/* 53FCE88 80080958 32000012 */  beqz       $s0, .Llevel_21_80080A24
/* 53FCE8C 8008095C 00000000 */   nop
/* 53FCE90 80080960 3C000292 */  lbu        $v0, 0x3C($s0)
/* 53FCE94 80080964 0000118E */  lw         $s1, 0x0($s0)
/* 53FCE98 80080968 14005610 */  beq        $v0, $s6, .Llevel_21_800809BC
/* 53FCE9C 8008096C 01000324 */   addiu     $v1, $zero, 0x1
/* 53FCEA0 80080970 36000286 */  lh         $v0, 0x36($s0)
/* 53FCEA4 80080974 420000A2 */  sb         $zero, 0x42($s0)
/* 53FCEA8 80080978 80100200 */  sll        $v0, $v0, 2
/* 53FCEAC 8008097C 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 53FCEB0 80080980 21082200 */  addu       $at, $at, $v0
/* 53FCEB4 80080984 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 53FCEB8 80080988 00000000 */  nop
/* 53FCEBC 8008098C 4400428C */  lw         $v0, 0x44($v0)
/* 53FCEC0 80080990 00000000 */  nop
/* 53FCEC4 80080994 00004290 */  lbu        $v0, 0x0($v0)
/* 53FCEC8 80080998 3C0016A2 */  sb         $s6, 0x3C($s0)
/* 53FCECC 8008099C 3D0016A2 */  sb         $s6, 0x3D($s0)
/* 53FCED0 800809A0 3E0000A2 */  sb         $zero, 0x3E($s0)
/* 53FCED4 800809A4 3F0003A2 */  sb         $v1, 0x3F($s0)
/* 53FCED8 800809A8 0200422C */  sltiu      $v0, $v0, 0x2
/* 53FCEDC 800809AC 01004238 */  xori       $v0, $v0, 0x1
/* 53FCEE0 800809B0 23100200 */  negu       $v0, $v0
/* 53FCEE4 800809B4 30004230 */  andi       $v0, $v0, 0x30
/* 53FCEE8 800809B8 400002A2 */  sb         $v0, 0x40($s0)
.Llevel_21_800809BC:
/* 53FCEEC 800809BC 0C000426 */  addiu      $a0, $s0, 0xC
/* 53FCEF0 800809C0 07000524 */  addiu      $a1, $zero, 0x7
/* 53FCEF4 800809C4 0A000624 */  addiu      $a2, $zero, 0xA
/* 53FCEF8 800809C8 4000073C */  lui        $a3, (0x40E080 >> 16)
/* 53FCEFC 800809CC 1142010C */  jal        func_80050844
/* 53FCF00 800809D0 80E0E734 */   ori       $a3, $a3, (0x40E080 & 0xFFFF)
/* 53FCF04 800809D4 080022AE */  sw         $v0, 0x8($s1)
/* 53FCF08 800809D8 3800828E */  lw         $v0, 0x38($s4)
/* 53FCF0C 800809DC 00000000 */  nop
/* 53FCF10 800809E0 21104202 */  addu       $v0, $s2, $v0
/* 53FCF14 800809E4 00004290 */  lbu        $v0, 0x0($v0)
/* 53FCF18 800809E8 00000000 */  nop
/* 53FCF1C 800809EC 80004224 */  addiu      $v0, $v0, 0x80
/* 53FCF20 800809F0 010022A2 */  sb         $v0, 0x1($s1)
/* 53FCF24 800809F4 3800828E */  lw         $v0, 0x38($s4)
/* 53FCF28 800809F8 00000000 */  nop
/* 53FCF2C 800809FC 21104202 */  addu       $v0, $s2, $v0
/* 53FCF30 80080A00 01004390 */  lbu        $v1, 0x1($v0)
/* 53FCF34 80080A04 32000224 */  addiu      $v0, $zero, 0x32
/* 53FCF38 80080A08 040022AE */  sw         $v0, 0x4($s1)
/* 53FCF3C 80080A0C 2C010224 */  addiu      $v0, $zero, 0x12C
/* 53FCF40 80080A10 020022A6 */  sh         $v0, 0x2($s1)
/* 53FCF44 80080A14 9171010C */  jal        rand
/* 53FCF48 80080A18 000023A2 */   sb        $v1, 0x0($s1)
/* 53FCF4C 80080A1C 440002A2 */  sb         $v0, 0x44($s0)
/* 53FCF50 80080A20 480016A2 */  sb         $s6, 0x48($s0)
.Llevel_21_80080A24:
/* 53FCF54 80080A24 01007326 */  addiu      $s3, $s3, 0x1
/* 53FCF58 80080A28 2000622A */  slti       $v0, $s3, 0x20
/* 53FCF5C 80080A2C BBFF4014 */  bnez       $v0, .Llevel_21_8008091C
/* 53FCF60 80080A30 40901300 */   sll       $s2, $s3, 1
/* 53FCF64 80080A34 2120A002 */  addu       $a0, $s5, $zero
.Llevel_21_80080A38:
/* 53FCF68 80080A38 21280000 */  addu       $a1, $zero, $zero
.Llevel_21_80080A3C:
/* 53FCF6C 80080A3C AFEE000C */  jal        func_8003BABC
/* 53FCF70 80080A40 21300000 */   addu      $a2, $zero, $zero
/* 53FCF74 80080A44 4100A0A2 */  sb         $zero, 0x41($s5)
/* 53FCF78 80080A48 4C00A0A2 */  sb         $zero, 0x4C($s5)
/* 53FCF7C 80080A4C 4D00A0A2 */  sb         $zero, 0x4D($s5)
/* 53FCF80 80080A50 7800AC8F */  lw         $t4, 0x78($sp)
/* 53FCF84 80080A54 14000224 */  addiu      $v0, $zero, 0x14
/* 53FCF88 80080A58 080082A1 */  sb         $v0, 0x8($t4)
/* 53FCF8C 80080A5C 02000224 */  addiu      $v0, $zero, 0x2
/* 53FCF90 80080A60 4800A2A2 */  sb         $v0, 0x48($s5)
.Llevel_21_80080A64:
/* 53FCF94 80080A64 7800AC8F */  lw         $t4, 0x78($sp)
/* 53FCF98 80080A68 01000524 */  addiu      $a1, $zero, 0x1
/* 53FCF9C 80080A6C 69D6000C */  jal        func_800359A4
/* 53FCFA0 80080A70 08008425 */   addiu     $a0, $t4, 0x8
/* 53FCFA4 80080A74 0D004010 */  beqz       $v0, .Llevel_21_80080AAC
/* 53FCFA8 80080A78 00000000 */   nop
.Llevel_21_80080A7C:
/* 53FCFAC 80080A7C 7800AC8F */  lw         $t4, 0x78($sp)
/* 53FCFB0 80080A80 00000000 */  nop
/* 53FCFB4 80080A84 1000848D */  lw         $a0, 0x10($t4)
/* 53FCFB8 80080A88 00000000 */  nop
/* 53FCFBC 80080A8C 03008010 */  beqz       $a0, .Llevel_21_80080A9C
/* 53FCFC0 80080A90 00000000 */   nop
/* 53FCFC4 80080A94 E242010C */  jal        func_80050B88
/* 53FCFC8 80080A98 00000000 */   nop
.Llevel_21_80080A9C:
/* 53FCFCC 80080A9C C656010C */  jal        func_80055B18
/* 53FCFD0 80080AA0 2120A002 */   addu      $a0, $s5, $zero
/* 53FCFD4 80080AA4 1B040208 */  j          .Llevel_21_8008106C
/* 53FCFD8 80080AA8 00000000 */   nop
.Llevel_21_80080AAC:
/* 53FCFDC 80080AAC 7800AC8F */  lw         $t4, 0x78($sp)
/* 53FCFE0 80080AB0 00000000 */  nop
/* 53FCFE4 80080AB4 08008291 */  lbu        $v0, 0x8($t4)
/* 53FCFE8 80080AB8 00000000 */  nop
/* 53FCFEC 80080ABC 5000422C */  sltiu      $v0, $v0, 0x50
/* 53FCFF0 80080AC0 61014010 */  beqz       $v0, .Llevel_21_80081048
/* 53FCFF4 80080AC4 2120A002 */   addu      $a0, $s5, $zero
/* 53FCFF8 80080AC8 04000524 */  addiu      $a1, $zero, 0x4
/* 53FCFFC 80080ACC 0C00948D */  lw         $s4, 0xC($t4)
/* 53FD000 80080AD0 9CFF0224 */  addiu      $v0, $zero, -0x64
/* 53FD004 80080AD4 2800A2AF */  sw         $v0, 0x28($sp)
/* 53FD008 80080AD8 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 53FD00C 80080ADC 4957010C */  jal        func_80055D24
/* 53FD010 80080AE0 3000A0AF */   sw        $zero, 0x30($sp)
/* 53FD014 80080AE4 2000A426 */  addiu      $a0, $s5, 0x20
/* 53FD018 80080AE8 2800B027 */  addiu      $s0, $sp, 0x28
/* 53FD01C 80080AEC 21280002 */  addu       $a1, $s0, $zero
/* 53FD020 80080AF0 5B3B010C */  jal        func_8004ED6C
/* 53FD024 80080AF4 21300002 */   addu      $a2, $s0, $zero
/* 53FD028 80080AF8 21200002 */  addu       $a0, $s0, $zero
/* 53FD02C 80080AFC 21280002 */  addu       $a1, $s0, $zero
/* 53FD030 80080B00 653C010C */  jal        func_8004F194
/* 53FD034 80080B04 0C00A626 */   addiu     $a2, $s5, 0xC
/* 53FD038 80080B08 00008286 */  lh         $v0, 0x0($s4)
/* 53FD03C 80080B0C 21280002 */  addu       $a1, $s0, $zero
/* 53FD040 80080B10 40200200 */  sll        $a0, $v0, 1
/* 53FD044 80080B14 21208200 */  addu       $a0, $a0, $v0
/* 53FD048 80080B18 80200400 */  sll        $a0, $a0, 2
/* 53FD04C 80080B1C 04008424 */  addiu      $a0, $a0, 0x4
/* 53FD050 80080B20 5E3C010C */  jal        func_8004F178
/* 53FD054 80080B24 21208402 */   addu      $a0, $s4, $a0
/* 53FD058 80080B28 6666023C */  lui        $v0, (0x66666667 >> 16)
/* 53FD05C 80080B2C 00008586 */  lh         $a1, 0x0($s4)
/* 53FD060 80080B30 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
/* 53FD064 80080B34 0100A524 */  addiu      $a1, $a1, 0x1
/* 53FD068 80080B38 1800A200 */  mult       $a1, $v0
/* 53FD06C 80080B3C 02008496 */  lhu        $a0, 0x2($s4)
/* 53FD070 80080B40 00000000 */  nop
/* 53FD074 80080B44 01008424 */  addiu      $a0, $a0, 0x1
/* 53FD078 80080B48 C3170500 */  sra        $v0, $a1, 31
/* 53FD07C 80080B4C 020084A6 */  sh         $a0, 0x2($s4)
/* 53FD080 80080B50 00240400 */  sll        $a0, $a0, 16
/* 53FD084 80080B54 03240400 */  sra        $a0, $a0, 16
/* 53FD088 80080B58 0B008428 */  slti       $a0, $a0, 0xB
/* 53FD08C 80080B5C 10600000 */  mfhi       $t4
/* 53FD090 80080B60 83180C00 */  sra        $v1, $t4, 2
/* 53FD094 80080B64 23186200 */  subu       $v1, $v1, $v0
/* 53FD098 80080B68 80100300 */  sll        $v0, $v1, 2
/* 53FD09C 80080B6C 21104300 */  addu       $v0, $v0, $v1
/* 53FD0A0 80080B70 40100200 */  sll        $v0, $v0, 1
/* 53FD0A4 80080B74 2328A200 */  subu       $a1, $a1, $v0
/* 53FD0A8 80080B78 7C008C26 */  addiu      $t4, $s4, 0x7C
/* 53FD0AC 80080B7C 000085A6 */  sh         $a1, 0x0($s4)
/* 53FD0B0 80080B80 8000ACAF */  sw         $t4, 0x80($sp)
/* 53FD0B4 80080B84 D8028C26 */  addiu      $t4, $s4, 0x2D8
/* 53FD0B8 80080B88 8800ACAF */  sw         $t4, 0x88($sp)
/* 53FD0BC 80080B8C 04038C26 */  addiu      $t4, $s4, 0x304
/* 53FD0C0 80080B90 03008014 */  bnez       $a0, .Llevel_21_80080BA0
/* 53FD0C4 80080B94 9000ACAF */   sw        $t4, 0x90($sp)
/* 53FD0C8 80080B98 0A000224 */  addiu      $v0, $zero, 0xA
/* 53FD0CC 80080B9C 020082A6 */  sh         $v0, 0x2($s4)
.Llevel_21_80080BA0:
/* 53FD0D0 80080BA0 21880000 */  addu       $s1, $zero, $zero
/* 53FD0D4 80080BA4 6666173C */  lui        $s7, (0x66666667 >> 16)
/* 53FD0D8 80080BA8 6766F736 */  ori        $s7, $s7, (0x66666667 & 0xFFFF)
/* 53FD0DC 80080BAC 4800AC27 */  addiu      $t4, $sp, 0x48
/* 53FD0E0 80080BB0 9800ACAF */  sw         $t4, 0x98($sp)
/* 53FD0E4 80080BB4 3800B627 */  addiu      $s6, $sp, 0x38
/* 53FD0E8 80080BB8 21F00000 */  addu       $fp, $zero, $zero
.Llevel_21_80080BBC:
/* 53FD0EC 80080BBC 00008486 */  lh         $a0, 0x0($s4)
/* 53FD0F0 80080BC0 00000000 */  nop
/* 53FD0F4 80080BC4 23209100 */  subu       $a0, $a0, $s1
/* 53FD0F8 80080BC8 13008524 */  addiu      $a1, $a0, 0x13
/* 53FD0FC 80080BCC 1800B700 */  mult       $a1, $s7
/* 53FD100 80080BD0 10180000 */  mfhi       $v1
/* 53FD104 80080BD4 12008424 */  addiu      $a0, $a0, 0x12
/* 53FD108 80080BD8 00000000 */  nop
/* 53FD10C 80080BDC 18009700 */  mult       $a0, $s7
/* 53FD110 80080BE0 C3170500 */  sra        $v0, $a1, 31
/* 53FD114 80080BE4 83180300 */  sra        $v1, $v1, 2
/* 53FD118 80080BE8 23906200 */  subu       $s2, $v1, $v0
/* 53FD11C 80080BEC 80101200 */  sll        $v0, $s2, 2
/* 53FD120 80080BF0 21105200 */  addu       $v0, $v0, $s2
/* 53FD124 80080BF4 40100200 */  sll        $v0, $v0, 1
/* 53FD128 80080BF8 2390A200 */  subu       $s2, $a1, $v0
/* 53FD12C 80080BFC C3170400 */  sra        $v0, $a0, 31
/* 53FD130 80080C00 02008586 */  lh         $a1, 0x2($s4)
/* 53FD134 80080C04 10300000 */  mfhi       $a2
/* 53FD138 80080C08 83180600 */  sra        $v1, $a2, 2
/* 53FD13C 80080C0C 23186200 */  subu       $v1, $v1, $v0
/* 53FD140 80080C10 80100300 */  sll        $v0, $v1, 2
/* 53FD144 80080C14 21104300 */  addu       $v0, $v0, $v1
/* 53FD148 80080C18 40100200 */  sll        $v0, $v0, 1
/* 53FD14C 80080C1C 23188200 */  subu       $v1, $a0, $v0
/* 53FD150 80080C20 0A00A228 */  slti       $v0, $a1, 0xA
/* 53FD154 80080C24 05004010 */  beqz       $v0, .Llevel_21_80080C3C
/* 53FD158 80080C28 FFFFA224 */   addiu     $v0, $a1, -0x1
/* 53FD15C 80080C2C 2A105100 */  slt        $v0, $v0, $s1
/* 53FD160 80080C30 02004010 */  beqz       $v0, .Llevel_21_80080C3C
/* 53FD164 80080C34 21180000 */   addu      $v1, $zero, $zero
/* 53FD168 80080C38 21900000 */  addu       $s2, $zero, $zero
.Llevel_21_80080C3C:
/* 53FD16C 80080C3C 40281200 */  sll        $a1, $s2, 1
/* 53FD170 80080C40 2128B200 */  addu       $a1, $a1, $s2
/* 53FD174 80080C44 80280500 */  sll        $a1, $a1, 2
/* 53FD178 80080C48 0400A524 */  addiu      $a1, $a1, 0x4
/* 53FD17C 80080C4C 21288502 */  addu       $a1, $s4, $a1
/* 53FD180 80080C50 40300300 */  sll        $a2, $v1, 1
/* 53FD184 80080C54 2130C300 */  addu       $a2, $a2, $v1
/* 53FD188 80080C58 80300600 */  sll        $a2, $a2, 2
/* 53FD18C 80080C5C 0400C624 */  addiu      $a2, $a2, 0x4
/* 53FD190 80080C60 9800A48F */  lw         $a0, 0x98($sp)
/* 53FD194 80080C64 723C010C */  jal        func_8004F1C8
/* 53FD198 80080C68 21308602 */   addu      $a2, $s4, $a2
/* 53FD19C 80080C6C 9800A48F */  lw         $a0, 0x98($sp)
/* 53FD1A0 80080C70 21280000 */  addu       $a1, $zero, $zero
/* 53FD1A4 80080C74 7A3B010C */  jal        func_8004EDE8
/* 53FD1A8 80080C78 5800A0A3 */   sb        $zero, 0x58($sp)
/* 53FD1AC 80080C7C 21204000 */  addu       $a0, $v0, $zero
/* 53FD1B0 80080C80 5000A58F */  lw         $a1, 0x50($sp)
/* 53FD1B4 80080C84 203A010C */  jal        func_8004E880
/* 53FD1B8 80080C88 21300000 */   addu      $a2, $zero, $zero
/* 53FD1BC 80080C8C 4800A48F */  lw         $a0, 0x48($sp)
/* 53FD1C0 80080C90 4C00A58F */  lw         $a1, 0x4C($sp)
/* 53FD1C4 80080C94 21300000 */  addu       $a2, $zero, $zero
/* 53FD1C8 80080C98 203A010C */  jal        func_8004E880
/* 53FD1CC 80080C9C 5900A2A3 */   sb        $v0, 0x59($sp)
/* 53FD1D0 80080CA0 5800A427 */  addiu      $a0, $sp, 0x58
/* 53FD1D4 80080CA4 6000A527 */  addiu      $a1, $sp, 0x60
/* 53FD1D8 80080CA8 21300000 */  addu       $a2, $zero, $zero
/* 53FD1DC 80080CAC A43A010C */  jal        func_8004EA90
/* 53FD1E0 80080CB0 5A00A2A3 */   sb        $v0, 0x5A($sp)
/* 53FD1E4 80080CB4 1800D703 */  mult       $fp, $s7
/* 53FD1E8 80080CB8 21800000 */  addu       $s0, $zero, $zero
/* 53FD1EC 80080CBC C31F1E00 */  sra        $v1, $fp, 31
/* 53FD1F0 80080CC0 10600000 */  mfhi       $t4
/* 53FD1F4 80080CC4 83100C00 */  sra        $v0, $t4, 2
/* 53FD1F8 80080CC8 23104300 */  subu       $v0, $v0, $v1
/* 53FD1FC 80080CCC FA005324 */  addiu      $s3, $v0, 0xFA
/* 53FD200 80080CD0 00121000 */  sll        $v0, $s0, 8
.Llevel_21_80080CD4:
/* 53FD204 80080CD4 18005700 */  mult       $v0, $s7
/* 53FD208 80080CD8 C3170200 */  sra        $v0, $v0, 31
/* 53FD20C 80080CDC 3800A0AF */  sw         $zero, 0x38($sp)
/* 53FD210 80080CE0 10600000 */  mfhi       $t4
/* 53FD214 80080CE4 43180C00 */  sra        $v1, $t4, 1
/* 53FD218 80080CE8 23186200 */  subu       $v1, $v1, $v0
/* 53FD21C 80080CEC 40180300 */  sll        $v1, $v1, 1
/* 53FD220 80080CF0 0680013C */  lui        $at, %hi(D_80065920)
/* 53FD224 80080CF4 21082300 */  addu       $at, $at, $v1
/* 53FD228 80080CF8 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 53FD22C 80080CFC 00000000 */  nop
/* 53FD230 80080D00 18005300 */  mult       $v0, $s3
/* 53FD234 80080D04 12600000 */  mflo       $t4
/* 53FD238 80080D08 03130C00 */  sra        $v0, $t4, 12
/* 53FD23C 80080D0C 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 53FD240 80080D10 0680013C */  lui        $at, %hi(D_800658A0)
/* 53FD244 80080D14 21082300 */  addu       $at, $at, $v1
/* 53FD248 80080D18 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 53FD24C 80080D1C 00000000 */  nop
/* 53FD250 80080D20 18005300 */  mult       $v0, $s3
/* 53FD254 80080D24 2000A426 */  addiu      $a0, $s5, 0x20
/* 53FD258 80080D28 2128C002 */  addu       $a1, $s6, $zero
/* 53FD25C 80080D2C 2130C002 */  addu       $a2, $s6, $zero
/* 53FD260 80080D30 12600000 */  mflo       $t4
/* 53FD264 80080D34 03130C00 */  sra        $v0, $t4, 12
/* 53FD268 80080D38 5B3B010C */  jal        func_8004ED6C
/* 53FD26C 80080D3C 4000A2AF */   sw        $v0, 0x40($sp)
/* 53FD270 80080D40 80101100 */  sll        $v0, $s1, 2
/* 53FD274 80080D44 21105100 */  addu       $v0, $v0, $s1
/* 53FD278 80080D48 21105000 */  addu       $v0, $v0, $s0
/* 53FD27C 80080D4C 40200200 */  sll        $a0, $v0, 1
/* 53FD280 80080D50 21208200 */  addu       $a0, $a0, $v0
/* 53FD284 80080D54 80200400 */  sll        $a0, $a0, 2
/* 53FD288 80080D58 40281200 */  sll        $a1, $s2, 1
/* 53FD28C 80080D5C 2128B200 */  addu       $a1, $a1, $s2
/* 53FD290 80080D60 80280500 */  sll        $a1, $a1, 2
/* 53FD294 80080D64 0400A524 */  addiu      $a1, $a1, 0x4
/* 53FD298 80080D68 21288502 */  addu       $a1, $s4, $a1
/* 53FD29C 80080D6C 8000AC8F */  lw         $t4, 0x80($sp)
/* 53FD2A0 80080D70 2130C002 */  addu       $a2, $s6, $zero
/* 53FD2A4 80080D74 653C010C */  jal        func_8004F194
/* 53FD2A8 80080D78 21208401 */   addu      $a0, $t4, $a0
/* 53FD2AC 80080D7C 01001026 */  addiu      $s0, $s0, 0x1
/* 53FD2B0 80080D80 0500022A */  slti       $v0, $s0, 0x5
/* 53FD2B4 80080D84 D3FF4014 */  bnez       $v0, .Llevel_21_80080CD4
/* 53FD2B8 80080D88 00121000 */   sll       $v0, $s0, 8
/* 53FD2BC 80080D8C 01003126 */  addiu      $s1, $s1, 0x1
/* 53FD2C0 80080D90 0A00222A */  slti       $v0, $s1, 0xA
/* 53FD2C4 80080D94 89FF4014 */  bnez       $v0, .Llevel_21_80080BBC
/* 53FD2C8 80080D98 1AFFDE27 */   addiu     $fp, $fp, -0xE6
/* 53FD2CC 80080D9C 01001024 */  addiu      $s0, $zero, 0x1
/* 53FD2D0 80080DA0 09000724 */  addiu      $a3, $zero, 0x9
/* 53FD2D4 80080DA4 6666063C */  lui        $a2, (0x66666667 >> 16)
/* 53FD2D8 80080DA8 8800AC8F */  lw         $t4, 0x88($sp)
/* 53FD2DC 80080DAC 6766C634 */  ori        $a2, $a2, (0x66666667 & 0xFFFF)
/* 53FD2E0 80080DB0 04008525 */  addiu      $a1, $t4, 0x4
/* 53FD2E4 80080DB4 8000AC8F */  lw         $t4, 0x80($sp)
/* 53FD2E8 80080DB8 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 53FD2EC 80080DBC 580282AD */  sw         $v0, 0x258($t4)
/* 53FD2F0 80080DC0 8800AC8F */  lw         $t4, 0x88($sp)
/* 53FD2F4 80080DC4 50000224 */  addiu      $v0, $zero, 0x50
/* 53FD2F8 80080DC8 000082A1 */  sb         $v0, 0x0($t4)
/* 53FD2FC 80080DCC 8C000224 */  addiu      $v0, $zero, 0x8C
/* 53FD300 80080DD0 010082A1 */  sb         $v0, 0x1($t4)
/* 53FD304 80080DD4 28000224 */  addiu      $v0, $zero, 0x28
/* 53FD308 80080DD8 020082A1 */  sb         $v0, 0x2($t4)
.Llevel_21_80080DDC:
/* 53FD30C 80080DDC 8800AC8F */  lw         $t4, 0x88($sp)
/* 53FD310 80080DE0 00000000 */  nop
/* 53FD314 80080DE4 00008391 */  lbu        $v1, 0x0($t4)
/* 53FD318 80080DE8 2320F000 */  subu       $a0, $a3, $s0
/* 53FD31C 80080DEC 18006400 */  mult       $v1, $a0
/* 53FD320 80080DF0 12180000 */  mflo       $v1
/* 53FD324 80080DF4 00000000 */  nop
/* 53FD328 80080DF8 00000000 */  nop
/* 53FD32C 80080DFC 18006600 */  mult       $v1, $a2
/* 53FD330 80080E00 C31F0300 */  sra        $v1, $v1, 31
/* 53FD334 80080E04 10600000 */  mfhi       $t4
/* 53FD338 80080E08 83100C00 */  sra        $v0, $t4, 2
/* 53FD33C 80080E0C 23104300 */  subu       $v0, $v0, $v1
/* 53FD340 80080E10 0000A2A0 */  sb         $v0, 0x0($a1)
/* 53FD344 80080E14 8800AC8F */  lw         $t4, 0x88($sp)
/* 53FD348 80080E18 00000000 */  nop
/* 53FD34C 80080E1C 01008291 */  lbu        $v0, 0x1($t4)
/* 53FD350 80080E20 00000000 */  nop
/* 53FD354 80080E24 18004400 */  mult       $v0, $a0
/* 53FD358 80080E28 12100000 */  mflo       $v0
/* 53FD35C 80080E2C 00000000 */  nop
/* 53FD360 80080E30 00000000 */  nop
/* 53FD364 80080E34 18004600 */  mult       $v0, $a2
/* 53FD368 80080E38 C3170200 */  sra        $v0, $v0, 31
/* 53FD36C 80080E3C 10600000 */  mfhi       $t4
/* 53FD370 80080E40 83180C00 */  sra        $v1, $t4, 2
/* 53FD374 80080E44 23186200 */  subu       $v1, $v1, $v0
/* 53FD378 80080E48 0100A3A0 */  sb         $v1, 0x1($a1)
/* 53FD37C 80080E4C 8800AC8F */  lw         $t4, 0x88($sp)
/* 53FD380 80080E50 00000000 */  nop
/* 53FD384 80080E54 02008391 */  lbu        $v1, 0x2($t4)
/* 53FD388 80080E58 00000000 */  nop
/* 53FD38C 80080E5C 18006400 */  mult       $v1, $a0
/* 53FD390 80080E60 12180000 */  mflo       $v1
/* 53FD394 80080E64 00000000 */  nop
/* 53FD398 80080E68 00000000 */  nop
/* 53FD39C 80080E6C 18006600 */  mult       $v1, $a2
/* 53FD3A0 80080E70 01001026 */  addiu      $s0, $s0, 0x1
/* 53FD3A4 80080E74 C31F0300 */  sra        $v1, $v1, 31
/* 53FD3A8 80080E78 10600000 */  mfhi       $t4
/* 53FD3AC 80080E7C 83100C00 */  sra        $v0, $t4, 2
/* 53FD3B0 80080E80 23104300 */  subu       $v0, $v0, $v1
/* 53FD3B4 80080E84 0200A2A0 */  sb         $v0, 0x2($a1)
/* 53FD3B8 80080E88 0A00022A */  slti       $v0, $s0, 0xA
/* 53FD3BC 80080E8C D3FF4014 */  bnez       $v0, .Llevel_21_80080DDC
/* 53FD3C0 80080E90 0400A524 */   addiu     $a1, $a1, 0x4
/* 53FD3C4 80080E94 4800A392 */  lbu        $v1, 0x48($s5)
/* 53FD3C8 80080E98 02000224 */  addiu      $v0, $zero, 0x2
/* 53FD3CC 80080E9C 2C006214 */  bne        $v1, $v0, .Llevel_21_80080F50
/* 53FD3D0 80080EA0 21800000 */   addu      $s0, $zero, $zero
/* 53FD3D4 80080EA4 6666053C */  lui        $a1, (0x66666667 >> 16)
/* 53FD3D8 80080EA8 6766A534 */  ori        $a1, $a1, (0x66666667 & 0xFFFF)
/* 53FD3DC 80080EAC 8800A48F */  lw         $a0, 0x88($sp)
.Llevel_21_80080EB0:
/* 53FD3E0 80080EB0 7800AC8F */  lw         $t4, 0x78($sp)
/* 53FD3E4 80080EB4 00008390 */  lbu        $v1, 0x0($a0)
/* 53FD3E8 80080EB8 08008291 */  lbu        $v0, 0x8($t4)
/* 53FD3EC 80080EBC 00000000 */  nop
/* 53FD3F0 80080EC0 18006200 */  mult       $v1, $v0
/* 53FD3F4 80080EC4 12100000 */  mflo       $v0
/* 53FD3F8 80080EC8 00000000 */  nop
/* 53FD3FC 80080ECC 00000000 */  nop
/* 53FD400 80080ED0 18004500 */  mult       $v0, $a1
/* 53FD404 80080ED4 10600000 */  mfhi       $t4
/* 53FD408 80080ED8 C3100C00 */  sra        $v0, $t4, 3
/* 53FD40C 80080EDC 000082A0 */  sb         $v0, 0x0($a0)
/* 53FD410 80080EE0 7800AC8F */  lw         $t4, 0x78($sp)
/* 53FD414 80080EE4 01008390 */  lbu        $v1, 0x1($a0)
/* 53FD418 80080EE8 08008291 */  lbu        $v0, 0x8($t4)
/* 53FD41C 80080EEC 00000000 */  nop
/* 53FD420 80080EF0 18006200 */  mult       $v1, $v0
/* 53FD424 80080EF4 12100000 */  mflo       $v0
/* 53FD428 80080EF8 00000000 */  nop
/* 53FD42C 80080EFC 00000000 */  nop
/* 53FD430 80080F00 18004500 */  mult       $v0, $a1
/* 53FD434 80080F04 10600000 */  mfhi       $t4
/* 53FD438 80080F08 C3100C00 */  sra        $v0, $t4, 3
/* 53FD43C 80080F0C 010082A0 */  sb         $v0, 0x1($a0)
/* 53FD440 80080F10 7800AC8F */  lw         $t4, 0x78($sp)
/* 53FD444 80080F14 02008390 */  lbu        $v1, 0x2($a0)
/* 53FD448 80080F18 08008291 */  lbu        $v0, 0x8($t4)
/* 53FD44C 80080F1C 00000000 */  nop
/* 53FD450 80080F20 18006200 */  mult       $v1, $v0
/* 53FD454 80080F24 12100000 */  mflo       $v0
/* 53FD458 80080F28 00000000 */  nop
/* 53FD45C 80080F2C 00000000 */  nop
/* 53FD460 80080F30 18004500 */  mult       $v0, $a1
/* 53FD464 80080F34 01001026 */  addiu      $s0, $s0, 0x1
/* 53FD468 80080F38 10600000 */  mfhi       $t4
/* 53FD46C 80080F3C C3100C00 */  sra        $v0, $t4, 3
/* 53FD470 80080F40 020082A0 */  sb         $v0, 0x2($a0)
/* 53FD474 80080F44 0A00022A */  slti       $v0, $s0, 0xA
/* 53FD478 80080F48 D9FF4014 */  bnez       $v0, .Llevel_21_80080EB0
/* 53FD47C 80080F4C 04008424 */   addiu     $a0, $a0, 0x4
.Llevel_21_80080F50:
/* 53FD480 80080F50 21880000 */  addu       $s1, $zero, $zero
/* 53FD484 80080F54 66660B3C */  lui        $t3, (0x66666667 >> 16)
/* 53FD488 80080F58 67666B35 */  ori        $t3, $t3, (0x66666667 & 0xFFFF)
/* 53FD48C 80080F5C 05000A24 */  addiu      $t2, $zero, 0x5
/* 53FD490 80080F60 21480000 */  addu       $t1, $zero, $zero
.Llevel_21_80080F64:
/* 53FD494 80080F64 21800000 */  addu       $s0, $zero, $zero
/* 53FD498 80080F68 21402001 */  addu       $t0, $t1, $zero
/* 53FD49C 80080F6C 01002726 */  addiu      $a3, $s1, 0x1
/* 53FD4A0 80080F70 21304001 */  addu       $a2, $t2, $zero
.Llevel_21_80080F74:
/* 53FD4A4 80080F74 01000226 */  addiu      $v0, $s0, 0x1
/* 53FD4A8 80080F78 21181001 */  addu       $v1, $t0, $s0
/* 53FD4AC 80080F7C 2128D000 */  addu       $a1, $a2, $s0
/* 53FD4B0 80080F80 18004B00 */  mult       $v0, $t3
/* 53FD4B4 80080F84 21804000 */  addu       $s0, $v0, $zero
/* 53FD4B8 80080F88 C0200300 */  sll        $a0, $v1, 3
/* 53FD4BC 80080F8C 9000AC8F */  lw         $t4, 0x90($sp)
/* 53FD4C0 80080F90 C3171000 */  sra        $v0, $s0, 31
/* 53FD4C4 80080F94 21208C00 */  addu       $a0, $a0, $t4
/* 53FD4C8 80080F98 000083A0 */  sb         $v1, 0x0($a0)
/* 53FD4CC 80080F9C 020085A0 */  sb         $a1, 0x2($a0)
/* 53FD4D0 80080FA0 040091A0 */  sb         $s1, 0x4($a0)
/* 53FD4D4 80080FA4 050091A0 */  sb         $s1, 0x5($a0)
/* 53FD4D8 80080FA8 060087A0 */  sb         $a3, 0x6($a0)
/* 53FD4DC 80080FAC 070087A0 */  sb         $a3, 0x7($a0)
/* 53FD4E0 80080FB0 10600000 */  mfhi       $t4
/* 53FD4E4 80080FB4 43180C00 */  sra        $v1, $t4, 1
/* 53FD4E8 80080FB8 23186200 */  subu       $v1, $v1, $v0
/* 53FD4EC 80080FBC 80100300 */  sll        $v0, $v1, 2
/* 53FD4F0 80080FC0 21104300 */  addu       $v0, $v0, $v1
/* 53FD4F4 80080FC4 23100202 */  subu       $v0, $s0, $v0
/* 53FD4F8 80080FC8 21180201 */  addu       $v1, $t0, $v0
/* 53FD4FC 80080FCC 2110C200 */  addu       $v0, $a2, $v0
/* 53FD500 80080FD0 030082A0 */  sb         $v0, 0x3($a0)
/* 53FD504 80080FD4 0500022A */  slti       $v0, $s0, 0x5
/* 53FD508 80080FD8 E6FF4014 */  bnez       $v0, .Llevel_21_80080F74
/* 53FD50C 80080FDC 010083A0 */   sb        $v1, 0x1($a0)
/* 53FD510 80080FE0 05004A25 */  addiu      $t2, $t2, 0x5
/* 53FD514 80080FE4 01003126 */  addiu      $s1, $s1, 0x1
/* 53FD518 80080FE8 0900222A */  slti       $v0, $s1, 0x9
/* 53FD51C 80080FEC DDFF4014 */  bnez       $v0, .Llevel_21_80080F64
/* 53FD520 80080FF0 05002925 */   addiu     $t1, $t1, 0x5
/* 53FD524 80080FF4 9000AC8F */  lw         $t4, 0x90($sp)
/* 53FD528 80080FF8 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 53FD52C 80080FFC 680182AD */  sw         $v0, 0x168($t4)
/* 53FD530 80081000 7800AC8F */  lw         $t4, 0x78($sp)
/* 53FD534 80081004 00000000 */  nop
/* 53FD538 80081008 1000828D */  lw         $v0, 0x10($t4)
/* 53FD53C 8008100C 00000000 */  nop
/* 53FD540 80081010 16004014 */  bnez       $v0, .Llevel_21_8008106C
/* 53FD544 80081014 00000000 */   nop
/* 53FD548 80081018 8000A48F */  lw         $a0, 0x80($sp)
/* 53FD54C 8008101C 8800A58F */  lw         $a1, 0x88($sp)
/* 53FD550 80081020 1400828D */  lw         $v0, 0x14($t4)
/* 53FD554 80081024 9000A68F */  lw         $a2, 0x90($sp)
/* 53FD558 80081028 0000478C */  lw         $a3, 0x0($v0)
/* 53FD55C 8008102C 01000224 */  addiu      $v0, $zero, 0x1
/* 53FD560 80081030 1000A2AF */  sw         $v0, 0x10($sp)
/* 53FD564 80081034 C042010C */  jal        func_80050B00
/* 53FD568 80081038 3000E724 */   addiu     $a3, $a3, 0x30
/* 53FD56C 8008103C 7800AC8F */  lw         $t4, 0x78($sp)
/* 53FD570 80081040 1B040208 */  j          .Llevel_21_8008106C
/* 53FD574 80081044 100082AD */   sw        $v0, 0x10($t4)
.Llevel_21_80081048:
/* 53FD578 80081048 1000848D */  lw         $a0, 0x10($t4)
/* 53FD57C 8008104C 00000000 */  nop
/* 53FD580 80081050 06008010 */  beqz       $a0, .Llevel_21_8008106C
/* 53FD584 80081054 00000000 */   nop
/* 53FD588 80081058 E242010C */  jal        func_80050B88
/* 53FD58C 8008105C 00000000 */   nop
/* 53FD590 80081060 7800AC8F */  lw         $t4, 0x78($sp)
/* 53FD594 80081064 00000000 */  nop
/* 53FD598 80081068 100080AD */  sw         $zero, 0x10($t4)
.Llevel_21_8008106C:
/* 53FD59C 8008106C DC00BF8F */  lw         $ra, 0xDC($sp)
/* 53FD5A0 80081070 D800BE8F */  lw         $fp, 0xD8($sp)
/* 53FD5A4 80081074 D400B78F */  lw         $s7, 0xD4($sp)
/* 53FD5A8 80081078 D000B68F */  lw         $s6, 0xD0($sp)
/* 53FD5AC 8008107C CC00B58F */  lw         $s5, 0xCC($sp)
/* 53FD5B0 80081080 C800B48F */  lw         $s4, 0xC8($sp)
/* 53FD5B4 80081084 C400B38F */  lw         $s3, 0xC4($sp)
/* 53FD5B8 80081088 C000B28F */  lw         $s2, 0xC0($sp)
/* 53FD5BC 8008108C BC00B18F */  lw         $s1, 0xBC($sp)
/* 53FD5C0 80081090 B800B08F */  lw         $s0, 0xB8($sp)
/* 53FD5C4 80081094 E000BD27 */  addiu      $sp, $sp, 0xE0
/* 53FD5C8 80081098 0800E003 */  jr         $ra
/* 53FD5CC 8008109C 00000000 */   nop
.size func_level_21_80080660, . - func_level_21_80080660
