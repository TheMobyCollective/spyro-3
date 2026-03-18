.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_37_800788BC
/* 7AA45EC 800788BC 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 7AA45F0 800788C0 6400B3AF */  sw         $s3, 0x64($sp)
/* 7AA45F4 800788C4 21988000 */  addu       $s3, $a0, $zero
/* 7AA45F8 800788C8 0780023C */  lui        $v0, %hi(D_8006C550)
/* 7AA45FC 800788CC 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 7AA4600 800788D0 03000324 */  addiu      $v1, $zero, 0x3
/* 7AA4604 800788D4 7000BFAF */  sw         $ra, 0x70($sp)
/* 7AA4608 800788D8 6C00B5AF */  sw         $s5, 0x6C($sp)
/* 7AA460C 800788DC 6800B4AF */  sw         $s4, 0x68($sp)
/* 7AA4610 800788E0 6000B2AF */  sw         $s2, 0x60($sp)
/* 7AA4614 800788E4 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 7AA4618 800788E8 5800B0AF */  sw         $s0, 0x58($sp)
/* 7AA461C 800788EC 48006492 */  lbu        $a0, 0x48($s3)
/* 7AA4620 800788F0 0000558C */  lw         $s5, 0x0($v0)
/* 7AA4624 800788F4 9D008314 */  bne        $a0, $v1, .Llevel_37_80078B6C
/* 7AA4628 800788F8 00000000 */   nop
/* 7AA462C 800788FC 0C00628E */  lw         $v0, 0xC($s3)
/* 7AA4630 80078900 0000708E */  lw         $s0, 0x0($s3)
/* 7AA4634 80078904 00044228 */  slti       $v0, $v0, 0x400
/* 7AA4638 80078908 1E024014 */  bnez       $v0, .Llevel_37_80079184
/* 7AA463C 8007890C 00000000 */   nop
/* 7AA4640 80078910 1000628E */  lw         $v0, 0x10($s3)
/* 7AA4644 80078914 00000000 */  nop
/* 7AA4648 80078918 00044228 */  slti       $v0, $v0, 0x400
/* 7AA464C 8007891C 19024014 */  bnez       $v0, .Llevel_37_80079184
/* 7AA4650 80078920 00000000 */   nop
/* 7AA4654 80078924 1400628E */  lw         $v0, 0x14($s3)
/* 7AA4658 80078928 00000000 */  nop
/* 7AA465C 8007892C 00044228 */  slti       $v0, $v0, 0x400
/* 7AA4660 80078930 14024014 */  bnez       $v0, .Llevel_37_80079184
/* 7AA4664 80078934 00000000 */   nop
/* 7AA4668 80078938 4D006292 */  lbu        $v0, 0x4D($s3)
/* 7AA466C 8007893C 00000000 */  nop
/* 7AA4670 80078940 08004014 */  bnez       $v0, .Llevel_37_80078964
/* 7AA4674 80078944 00000000 */   nop
/* 7AA4678 80078948 0C00028E */  lw         $v0, 0xC($s0)
/* 7AA467C 8007894C 00000000 */  nop
/* 7AA4680 80078950 29004228 */  slti       $v0, $v0, 0x29
/* 7AA4684 80078954 04004014 */  bnez       $v0, .Llevel_37_80078968
/* 7AA4688 80078958 0C000426 */   addiu     $a0, $s0, 0xC
/* 7AA468C 8007895C 28000224 */  addiu      $v0, $zero, 0x28
/* 7AA4690 80078960 0C0002AE */  sw         $v0, 0xC($s0)
.Llevel_37_80078964:
/* 7AA4694 80078964 0C000426 */  addiu      $a0, $s0, 0xC
.Llevel_37_80078968:
/* 7AA4698 80078968 69D6000C */  jal        func_800359A4
/* 7AA469C 8007896C 04000524 */   addiu     $a1, $zero, 0x4
/* 7AA46A0 80078970 0A004010 */  beqz       $v0, .Llevel_37_8007899C
/* 7AA46A4 80078974 08000424 */   addiu     $a0, $zero, 0x8
/* 7AA46A8 80078978 46000524 */  addiu      $a1, $zero, 0x46
/* 7AA46AC 8007897C 0C006626 */  addiu      $a2, $s3, 0xC
/* 7AA46B0 80078980 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7AA46B4 80078984 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7AA46B8 80078988 00000000 */  nop
/* 7AA46BC 8007898C 09F84000 */  jalr       $v0
/* 7AA46C0 80078990 10000724 */   addiu     $a3, $zero, 0x10
/* 7AA46C4 80078994 61E40108 */  j          .Llevel_37_80079184
/* 7AA46C8 80078998 00000000 */   nop
.Llevel_37_8007899C:
/* 7AA46CC 8007899C 0C006426 */  addiu      $a0, $s3, 0xC
/* 7AA46D0 800789A0 6564000C */  jal        func_80019194
/* 7AA46D4 800789A4 2C010524 */   addiu     $a1, $zero, 0x12C
/* 7AA46D8 800789A8 31004010 */  beqz       $v0, .Llevel_37_80078A70
/* 7AA46DC 800789AC 00000000 */   nop
/* 7AA46E0 800789B0 0780113C */  lui        $s1, %hi(D_80071918)
/* 7AA46E4 800789B4 18193126 */  addiu      $s1, $s1, %lo(D_80071918)
/* 7AA46E8 800789B8 21202002 */  addu       $a0, $s1, $zero
/* 7AA46EC 800789BC C13B010C */  jal        func_8004EF04
/* 7AA46F0 800789C0 00100524 */   addiu     $a1, $zero, 0x1000
/* 7AA46F4 800789C4 00000386 */  lh         $v1, 0x0($s0)
/* 7AA46F8 800789C8 0000228E */  lw         $v0, 0x0($s1)
/* 7AA46FC 800789CC 00000000 */  nop
/* 7AA4700 800789D0 18006200 */  mult       $v1, $v0
/* 7AA4704 800789D4 02000386 */  lh         $v1, 0x2($s0)
/* 7AA4708 800789D8 12280000 */  mflo       $a1
/* 7AA470C 800789DC 0780023C */  lui        $v0, %hi(D_8007191C)
/* 7AA4710 800789E0 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 7AA4714 800789E4 00000000 */  nop
/* 7AA4718 800789E8 18006200 */  mult       $v1, $v0
/* 7AA471C 800789EC 04000386 */  lh         $v1, 0x4($s0)
/* 7AA4720 800789F0 12200000 */  mflo       $a0
/* 7AA4724 800789F4 0780023C */  lui        $v0, %hi(D_80071920)
/* 7AA4728 800789F8 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 7AA472C 800789FC 00000000 */  nop
/* 7AA4730 80078A00 18006200 */  mult       $v1, $v0
/* 7AA4734 80078A04 2110A400 */  addu       $v0, $a1, $a0
/* 7AA4738 80078A08 12180000 */  mflo       $v1
/* 7AA473C 80078A0C 21104300 */  addu       $v0, $v0, $v1
/* 7AA4740 80078A10 C33A0200 */  sra        $a3, $v0, 11
/* 7AA4744 80078A14 1600E104 */  bgez       $a3, .Llevel_37_80078A70
/* 7AA4748 80078A18 21202002 */   addu      $a0, $s1, $zero
/* 7AA474C 80078A1C 00100524 */  addiu      $a1, $zero, 0x1000
/* 7AA4750 80078A20 43330200 */  sra        $a2, $v0, 13
/* 7AA4754 80078A24 233C010C */  jal        func_8004F08C
/* 7AA4758 80078A28 2330C700 */   subu      $a2, $a2, $a3
/* 7AA475C 80078A2C 0000238E */  lw         $v1, 0x0($s1)
/* 7AA4760 80078A30 00000296 */  lhu        $v0, 0x0($s0)
/* 7AA4764 80078A34 00000000 */  nop
/* 7AA4768 80078A38 21104300 */  addu       $v0, $v0, $v1
/* 7AA476C 80078A3C 000002A6 */  sh         $v0, 0x0($s0)
/* 7AA4770 80078A40 0780033C */  lui        $v1, %hi(D_8007191C)
/* 7AA4774 80078A44 1C19638C */  lw         $v1, %lo(D_8007191C)($v1)
/* 7AA4778 80078A48 02000296 */  lhu        $v0, 0x2($s0)
/* 7AA477C 80078A4C 00000000 */  nop
/* 7AA4780 80078A50 21104300 */  addu       $v0, $v0, $v1
/* 7AA4784 80078A54 020002A6 */  sh         $v0, 0x2($s0)
/* 7AA4788 80078A58 0780033C */  lui        $v1, %hi(D_80071920)
/* 7AA478C 80078A5C 2019638C */  lw         $v1, %lo(D_80071920)($v1)
/* 7AA4790 80078A60 04000296 */  lhu        $v0, 0x4($s0)
/* 7AA4794 80078A64 00000000 */  nop
/* 7AA4798 80078A68 21104300 */  addu       $v0, $v0, $v1
/* 7AA479C 80078A6C 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_37_80078A70:
/* 7AA47A0 80078A70 00000386 */  lh         $v1, 0x0($s0)
/* 7AA47A4 80078A74 0C00628E */  lw         $v0, 0xC($s3)
/* 7AA47A8 80078A78 00000000 */  nop
/* 7AA47AC 80078A7C 21104300 */  addu       $v0, $v0, $v1
/* 7AA47B0 80078A80 0C0062AE */  sw         $v0, 0xC($s3)
/* 7AA47B4 80078A84 02000386 */  lh         $v1, 0x2($s0)
/* 7AA47B8 80078A88 1000628E */  lw         $v0, 0x10($s3)
/* 7AA47BC 80078A8C 00000000 */  nop
/* 7AA47C0 80078A90 21104300 */  addu       $v0, $v0, $v1
/* 7AA47C4 80078A94 100062AE */  sw         $v0, 0x10($s3)
/* 7AA47C8 80078A98 04000296 */  lhu        $v0, 0x4($s0)
/* 7AA47CC 80078A9C 00000000 */  nop
/* 7AA47D0 80078AA0 F6FF4224 */  addiu      $v0, $v0, -0xA
/* 7AA47D4 80078AA4 040002A6 */  sh         $v0, 0x4($s0)
/* 7AA47D8 80078AA8 00140200 */  sll        $v0, $v0, 16
/* 7AA47DC 80078AAC 03140200 */  sra        $v0, $v0, 16
/* 7AA47E0 80078AB0 38FF4228 */  slti       $v0, $v0, -0xC8
/* 7AA47E4 80078AB4 02004010 */  beqz       $v0, .Llevel_37_80078AC0
/* 7AA47E8 80078AB8 38FF0224 */   addiu     $v0, $zero, -0xC8
/* 7AA47EC 80078ABC 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_37_80078AC0:
/* 7AA47F0 80078AC0 04000386 */  lh         $v1, 0x4($s0)
/* 7AA47F4 80078AC4 1400628E */  lw         $v0, 0x14($s3)
/* 7AA47F8 80078AC8 00000000 */  nop
/* 7AA47FC 80078ACC 21104300 */  addu       $v0, $v0, $v1
/* 7AA4800 80078AD0 140062AE */  sw         $v0, 0x14($s3)
/* 7AA4804 80078AD4 44006292 */  lbu        $v0, 0x44($s3)
/* 7AA4808 80078AD8 06000392 */  lbu        $v1, 0x6($s0)
/* 7AA480C 80078ADC 00000000 */  nop
/* 7AA4810 80078AE0 21104300 */  addu       $v0, $v0, $v1
/* 7AA4814 80078AE4 440062A2 */  sb         $v0, 0x44($s3)
/* 7AA4818 80078AE8 45006292 */  lbu        $v0, 0x45($s3)
/* 7AA481C 80078AEC 08000392 */  lbu        $v1, 0x8($s0)
/* 7AA4820 80078AF0 00000000 */  nop
/* 7AA4824 80078AF4 21104300 */  addu       $v0, $v0, $v1
/* 7AA4828 80078AF8 450062A2 */  sb         $v0, 0x45($s3)
/* 7AA482C 80078AFC 46006292 */  lbu        $v0, 0x46($s3)
/* 7AA4830 80078B00 0A000392 */  lbu        $v1, 0xA($s0)
/* 7AA4834 80078B04 00000000 */  nop
/* 7AA4838 80078B08 21104300 */  addu       $v0, $v0, $v1
/* 7AA483C 80078B0C 460062A2 */  sb         $v0, 0x46($s3)
/* 7AA4840 80078B10 0C00028E */  lw         $v0, 0xC($s0)
/* 7AA4844 80078B14 00000000 */  nop
/* 7AA4848 80078B18 03004230 */  andi       $v0, $v0, 0x3
/* 7AA484C 80078B1C 01024014 */  bnez       $v0, .Llevel_37_80079324
/* 7AA4850 80078B20 00000000 */   nop
/* 7AA4854 80078B24 9171010C */  jal        rand
/* 7AA4858 80078B28 00000000 */   nop
/* 7AA485C 80078B2C 03004230 */  andi       $v0, $v0, 0x3
/* 7AA4860 80078B30 9171010C */  jal        rand
/* 7AA4864 80078B34 1800A2AF */   sw        $v0, 0x18($sp)
/* 7AA4868 80078B38 01000424 */  addiu      $a0, $zero, 0x1
/* 7AA486C 80078B3C 21280000 */  addu       $a1, $zero, $zero
/* 7AA4870 80078B40 0C006626 */  addiu      $a2, $s3, 0xC
/* 7AA4874 80078B44 1800A727 */  addiu      $a3, $sp, 0x18
/* 7AA4878 80078B48 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 7AA487C 80078B4C E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 7AA4880 80078B50 03004230 */  andi       $v0, $v0, 0x3
/* 7AA4884 80078B54 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 7AA4888 80078B58 14000224 */  addiu      $v0, $zero, 0x14
/* 7AA488C 80078B5C 09F86000 */  jalr       $v1
/* 7AA4890 80078B60 2000A2AF */   sw        $v0, 0x20($sp)
/* 7AA4894 80078B64 C9E40108 */  j          .Llevel_37_80079324
/* 7AA4898 80078B68 00000000 */   nop
.Llevel_37_80078B6C:
/* 7AA489C 80078B6C 05008010 */  beqz       $a0, .Llevel_37_80078B84
/* 7AA48A0 80078B70 01000224 */   addiu     $v0, $zero, 0x1
/* 7AA48A4 80078B74 3E008210 */  beq        $a0, $v0, .Llevel_37_80078C70
/* 7AA48A8 80078B78 00000000 */   nop
/* 7AA48AC 80078B7C C9E40108 */  j          .Llevel_37_80079324
/* 7AA48B0 80078B80 00000000 */   nop
.Llevel_37_80078B84:
/* 7AA48B4 80078B84 2800B127 */  addiu      $s1, $sp, 0x28
/* 7AA48B8 80078B88 0000748E */  lw         $s4, 0x0($s3)
/* 7AA48BC 80078B8C 5A3C010C */  jal        func_8004F168
/* 7AA48C0 80078B90 21202002 */   addu      $a0, $s1, $zero
/* 7AA48C4 80078B94 3800B027 */  addiu      $s0, $sp, 0x38
/* 7AA48C8 80078B98 21200002 */  addu       $a0, $s0, $zero
/* 7AA48CC 80078B9C 5E3C010C */  jal        func_8004F178
/* 7AA48D0 80078BA0 0C006526 */   addiu     $a1, $s3, 0xC
/* 7AA48D4 80078BA4 01000424 */  addiu      $a0, $zero, 0x1
/* 7AA48D8 80078BA8 21280000 */  addu       $a1, $zero, $zero
/* 7AA48DC 80078BAC 21300002 */  addu       $a2, $s0, $zero
/* 7AA48E0 80078BB0 21382002 */  addu       $a3, $s1, $zero
/* 7AA48E4 80078BB4 4000A28F */  lw         $v0, 0x40($sp)
/* 7AA48E8 80078BB8 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 7AA48EC 80078BBC E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 7AA48F0 80078BC0 90014224 */  addiu      $v0, $v0, 0x190
/* 7AA48F4 80078BC4 09F86000 */  jalr       $v1
/* 7AA48F8 80078BC8 4000A2AF */   sw        $v0, 0x40($sp)
/* 7AA48FC 80078BCC 21206002 */  addu       $a0, $s3, $zero
/* 7AA4900 80078BD0 02008526 */  addiu      $a1, $s4, 0x2
/* 7AA4904 80078BD4 02000624 */  addiu      $a2, $zero, 0x2
/* 7AA4908 80078BD8 06008786 */  lh         $a3, 0x6($s4)
/* 7AA490C 80078BDC 38FF0224 */  addiu      $v0, $zero, -0xC8
/* 7AA4910 80078BE0 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AA4914 80078BE4 98DE000C */  jal        func_80037A60
/* 7AA4918 80078BE8 23380700 */   negu      $a3, $a3
/* 7AA491C 80078BEC 13004010 */  beqz       $v0, .Llevel_37_80078C3C
/* 7AA4920 80078BF0 21280000 */   addu      $a1, $zero, $zero
/* 7AA4924 80078BF4 18000624 */  addiu      $a2, $zero, 0x18
/* 7AA4928 80078BF8 0000718E */  lw         $s1, 0x0($s3)
/* 7AA492C 80078BFC 0800928E */  lw         $s2, 0x8($s4)
/* 7AA4930 80078C00 02009086 */  lh         $s0, 0x2($s4)
/* 7AA4934 80078C04 E439010C */  jal        func_8004E790
/* 7AA4938 80078C08 21202002 */   addu      $a0, $s1, $zero
/* 7AA493C 80078C0C 5555023C */  lui        $v0, (0x55555556 >> 16)
/* 7AA4940 80078C10 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
/* 7AA4944 80078C14 23801000 */  negu       $s0, $s0
/* 7AA4948 80078C18 18000202 */  mult       $s0, $v0
/* 7AA494C 80078C1C C3871000 */  sra        $s0, $s0, 31
/* 7AA4950 80078C20 01000224 */  addiu      $v0, $zero, 0x1
/* 7AA4954 80078C24 080032A6 */  sh         $s2, 0x8($s1)
/* 7AA4958 80078C28 10400000 */  mfhi       $t0
/* 7AA495C 80078C2C 23801001 */  subu       $s0, $t0, $s0
/* 7AA4960 80078C30 0E0030A6 */  sh         $s0, 0xE($s1)
/* 7AA4964 80078C34 C9E40108 */  j          .Llevel_37_80079324
/* 7AA4968 80078C38 480062A2 */   sb        $v0, 0x48($s3)
.Llevel_37_80078C3C:
/* 7AA496C 80078C3C 21206002 */  addu       $a0, $s3, $zero
/* 7AA4970 80078C40 21380000 */  addu       $a3, $zero, $zero
/* 7AA4974 80078C44 04008592 */  lbu        $a1, 0x4($s4)
/* 7AA4978 80078C48 00008686 */  lh         $a2, 0x0($s4)
/* 7AA497C 80078C4C 01400224 */  addiu      $v0, $zero, 0x4001
/* 7AA4980 80078C50 1000A0AF */  sw         $zero, 0x10($sp)
/* 7AA4984 80078C54 B8D7000C */  jal        func_80035EE0
/* 7AA4988 80078C58 1400A2AF */   sw        $v0, 0x14($sp)
/* 7AA498C 80078C5C 21206002 */  addu       $a0, $s3, $zero
/* 7AA4990 80078C60 4957010C */  jal        func_80055D24
/* 7AA4994 80078C64 03000524 */   addiu     $a1, $zero, 0x3
/* 7AA4998 80078C68 C9E40108 */  j          .Llevel_37_80079324
/* 7AA499C 80078C6C 00000000 */   nop
.Llevel_37_80078C70:
/* 7AA49A0 80078C70 0000708E */  lw         $s0, 0x0($s3)
/* 7AA49A4 80078C74 00000000 */  nop
/* 7AA49A8 80078C78 04001292 */  lbu        $s2, 0x4($s0)
/* 7AA49AC 80078C7C 4ED7000C */  jal        func_80035D38
/* 7AA49B0 80078C80 21206002 */   addu      $a0, $s3, $zero
/* 7AA49B4 80078C84 21206002 */  addu       $a0, $s3, $zero
/* 7AA49B8 80078C88 03000524 */  addiu      $a1, $zero, 0x3
/* 7AA49BC 80078C8C 4957010C */  jal        func_80055D24
/* 7AA49C0 80078C90 21A04000 */   addu      $s4, $v0, $zero
/* 7AA49C4 80078C94 06000426 */  addiu      $a0, $s0, 0x6
/* 7AA49C8 80078C98 0780023C */  lui        $v0, %hi(D_8006C648)
/* 7AA49CC 80078C9C 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 7AA49D0 80078CA0 02000524 */  addiu      $a1, $zero, 0x2
/* 7AA49D4 80078CA4 40180200 */  sll        $v1, $v0, 1
/* 7AA49D8 80078CA8 21186200 */  addu       $v1, $v1, $v0
/* 7AA49DC 80078CAC 04000296 */  lhu        $v0, 0x4($s0)
/* 7AA49E0 80078CB0 40180300 */  sll        $v1, $v1, 1
/* 7AA49E4 80078CB4 21104300 */  addu       $v0, $v0, $v1
/* 7AA49E8 80078CB8 69D6000C */  jal        func_800359A4
/* 7AA49EC 80078CBC 040002A6 */   sh        $v0, 0x4($s0)
/* 7AA49F0 80078CC0 1B004010 */  beqz       $v0, .Llevel_37_80078D30
/* 7AA49F4 80078CC4 08000224 */   addiu     $v0, $zero, 0x8
/* 7AA49F8 80078CC8 00000486 */  lh         $a0, 0x0($s0)
/* 7AA49FC 80078CCC 060002A6 */  sh         $v0, 0x6($s0)
/* 7AA4A00 80078CD0 02008104 */  bgez       $a0, .Llevel_37_80078CDC
/* 7AA4A04 80078CD4 21108000 */   addu      $v0, $a0, $zero
/* 7AA4A08 80078CD8 23100200 */  negu       $v0, $v0
.Llevel_37_80078CDC:
/* 7AA4A0C 80078CDC 0300401C */  bgtz       $v0, .Llevel_37_80078CEC
/* 7AA4A10 80078CE0 21188000 */   addu      $v1, $a0, $zero
/* 7AA4A14 80078CE4 3FE30108 */  j          .Llevel_37_80078CFC
/* 7AA4A18 80078CE8 000000A6 */   sh        $zero, 0x0($s0)
.Llevel_37_80078CEC:
/* 7AA4A1C 80078CEC 02008104 */  bgez       $a0, .Llevel_37_80078CF8
/* 7AA4A20 80078CF0 FFFF6224 */   addiu     $v0, $v1, -0x1
/* 7AA4A24 80078CF4 01006224 */  addiu      $v0, $v1, 0x1
.Llevel_37_80078CF8:
/* 7AA4A28 80078CF8 000002A6 */  sh         $v0, 0x0($s0)
.Llevel_37_80078CFC:
/* 7AA4A2C 80078CFC 02000486 */  lh         $a0, 0x2($s0)
/* 7AA4A30 80078D00 00000000 */  nop
/* 7AA4A34 80078D04 02008104 */  bgez       $a0, .Llevel_37_80078D10
/* 7AA4A38 80078D08 21108000 */   addu      $v0, $a0, $zero
/* 7AA4A3C 80078D0C 23100200 */  negu       $v0, $v0
.Llevel_37_80078D10:
/* 7AA4A40 80078D10 0300401C */  bgtz       $v0, .Llevel_37_80078D20
/* 7AA4A44 80078D14 21188000 */   addu      $v1, $a0, $zero
/* 7AA4A48 80078D18 4CE30108 */  j          .Llevel_37_80078D30
/* 7AA4A4C 80078D1C 020000A6 */   sh        $zero, 0x2($s0)
.Llevel_37_80078D20:
/* 7AA4A50 80078D20 02008104 */  bgez       $a0, .Llevel_37_80078D2C
/* 7AA4A54 80078D24 FFFF6224 */   addiu     $v0, $v1, -0x1
/* 7AA4A58 80078D28 01006224 */  addiu      $v0, $v1, 0x1
.Llevel_37_80078D2C:
/* 7AA4A5C 80078D2C 020002A6 */  sh         $v0, 0x2($s0)
.Llevel_37_80078D30:
/* 7AA4A60 80078D30 0680113C */  lui        $s1, %hi(D_800658A0)
/* 7AA4A64 80078D34 A0583126 */  addiu      $s1, $s1, %lo(D_800658A0)
/* 7AA4A68 80078D38 40181200 */  sll        $v1, $s2, 1
/* 7AA4A6C 80078D3C 21187100 */  addu       $v1, $v1, $s1
/* 7AA4A70 80078D40 00006484 */  lh         $a0, 0x0($v1)
/* 7AA4A74 80078D44 00000286 */  lh         $v0, 0x0($s0)
/* 7AA4A78 80078D48 00000000 */  nop
/* 7AA4A7C 80078D4C 18008200 */  mult       $a0, $v0
/* 7AA4A80 80078D50 12400000 */  mflo       $t0
/* 7AA4A84 80078D54 03130800 */  sra        $v0, $t0, 12
/* 7AA4A88 80078D58 440062A2 */  sb         $v0, 0x44($s3)
/* 7AA4A8C 80078D5C 00006384 */  lh         $v1, 0x0($v1)
/* 7AA4A90 80078D60 02000286 */  lh         $v0, 0x2($s0)
/* 7AA4A94 80078D64 00000000 */  nop
/* 7AA4A98 80078D68 18006200 */  mult       $v1, $v0
/* 7AA4A9C 80078D6C 12400000 */  mflo       $t0
/* 7AA4AA0 80078D70 03130800 */  sra        $v0, $t0, 12
/* 7AA4AA4 80078D74 450062A2 */  sb         $v0, 0x45($s3)
/* 7AA4AA8 80078D78 1800628E */  lw         $v0, 0x18($s3)
/* 7AA4AAC 80078D7C 0200033C */  lui        $v1, (0x20000 >> 16)
/* 7AA4AB0 80078D80 24104300 */  and        $v0, $v0, $v1
/* 7AA4AB4 80078D84 19004010 */  beqz       $v0, .Llevel_37_80078DEC
/* 7AA4AB8 80078D88 21300000 */   addu      $a2, $zero, $zero
/* 7AA4ABC 80078D8C 0C00638E */  lw         $v1, 0xC($s3)
/* 7AA4AC0 80078D90 0780043C */  lui        $a0, %hi(D_80070328)
/* 7AA4AC4 80078D94 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 7AA4AC8 80078D98 1000628E */  lw         $v0, 0x10($s3)
/* 7AA4ACC 80078D9C 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 7AA4AD0 80078DA0 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 7AA4AD4 80078DA4 23206400 */  subu       $a0, $v1, $a0
/* 7AA4AD8 80078DA8 203A010C */  jal        func_8004E880
/* 7AA4ADC 80078DAC 23284500 */   subu      $a1, $v0, $a1
/* 7AA4AE0 80078DB0 40100200 */  sll        $v0, $v0, 1
/* 7AA4AE4 80078DB4 0680013C */  lui        $at, %hi(D_80065920)
/* 7AA4AE8 80078DB8 21082200 */  addu       $at, $at, $v0
/* 7AA4AEC 80078DBC 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 7AA4AF0 80078DC0 21105100 */  addu       $v0, $v0, $s1
/* 7AA4AF4 80078DC4 00190300 */  sll        $v1, $v1, 4
/* 7AA4AF8 80078DC8 23180300 */  negu       $v1, $v1
/* 7AA4AFC 80078DCC 031B0300 */  sra        $v1, $v1, 12
/* 7AA4B00 80078DD0 020003A6 */  sh         $v1, 0x2($s0)
/* 7AA4B04 80078DD4 00004284 */  lh         $v0, 0x0($v0)
/* 7AA4B08 80078DD8 040000A6 */  sh         $zero, 0x4($s0)
/* 7AA4B0C 80078DDC 00110200 */  sll        $v0, $v0, 4
/* 7AA4B10 80078DE0 23100200 */  negu       $v0, $v0
/* 7AA4B14 80078DE4 03130200 */  sra        $v0, $v0, 12
/* 7AA4B18 80078DE8 000002A6 */  sh         $v0, 0x0($s0)
.Llevel_37_80078DEC:
/* 7AA4B1C 80078DEC 180060AE */  sw         $zero, 0x18($s3)
/* 7AA4B20 80078DF0 08000426 */  addiu      $a0, $s0, 0x8
/* 7AA4B24 80078DF4 69D6000C */  jal        func_800359A4
/* 7AA4B28 80078DF8 02000524 */   addiu     $a1, $zero, 0x2
/* 7AA4B2C 80078DFC E5004010 */  beqz       $v0, .Llevel_37_80079194
/* 7AA4B30 80078E00 01000224 */   addiu     $v0, $zero, 0x1
/* 7AA4B34 80078E04 49006392 */  lbu        $v1, 0x49($s3)
/* 7AA4B38 80078E08 00000000 */  nop
/* 7AA4B3C 80078E0C 16006210 */  beq        $v1, $v0, .Llevel_37_80078E68
/* 7AA4B40 80078E10 21880000 */   addu      $s1, $zero, $zero
/* 7AA4B44 80078E14 02006228 */  slti       $v0, $v1, 0x2
/* 7AA4B48 80078E18 05004010 */  beqz       $v0, .Llevel_37_80078E30
/* 7AA4B4C 80078E1C 00000000 */   nop
/* 7AA4B50 80078E20 0A006010 */  beqz       $v1, .Llevel_37_80078E4C
/* 7AA4B54 80078E24 B9020424 */   addiu     $a0, $zero, 0x2B9
/* 7AA4B58 80078E28 C1E30108 */  j          .Llevel_37_80078F04
/* 7AA4B5C 80078E2C 00000000 */   nop
.Llevel_37_80078E30:
/* 7AA4B60 80078E30 02000224 */  addiu      $v0, $zero, 0x2
/* 7AA4B64 80078E34 1C006210 */  beq        $v1, $v0, .Llevel_37_80078EA8
/* 7AA4B68 80078E38 03000224 */   addiu     $v0, $zero, 0x3
/* 7AA4B6C 80078E3C 26006210 */  beq        $v1, $v0, .Llevel_37_80078ED8
/* 7AA4B70 80078E40 0B010424 */   addiu     $a0, $zero, 0x10B
/* 7AA4B74 80078E44 C1E30108 */  j          .Llevel_37_80078F04
/* 7AA4B78 80078E48 00000000 */   nop
.Llevel_37_80078E4C:
/* 7AA4B7C 80078E4C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7AA4B80 80078E50 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7AA4B84 80078E54 00000000 */  nop
/* 7AA4B88 80078E58 09F84000 */  jalr       $v0
/* 7AA4B8C 80078E5C 21286002 */   addu      $a1, $s3, $zero
/* 7AA4B90 80078E60 C1E30108 */  j          .Llevel_37_80078F04
/* 7AA4B94 80078E64 21884000 */   addu      $s1, $v0, $zero
.Llevel_37_80078E68:
/* 7AA4B98 80078E68 C1000424 */  addiu      $a0, $zero, 0xC1
/* 7AA4B9C 80078E6C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7AA4BA0 80078E70 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7AA4BA4 80078E74 00000000 */  nop
/* 7AA4BA8 80078E78 09F84000 */  jalr       $v0
/* 7AA4BAC 80078E7C 21286002 */   addu      $a1, $s3, $zero
/* 7AA4BB0 80078E80 21884000 */  addu       $s1, $v0, $zero
/* 7AA4BB4 80078E84 3A002012 */  beqz       $s1, .Llevel_37_80078F70
/* 7AA4BB8 80078E88 21202002 */   addu      $a0, $s1, $zero
/* 7AA4BBC 80078E8C 21280000 */  addu       $a1, $zero, $zero
/* 7AA4BC0 80078E90 0000308E */  lw         $s0, 0x0($s1)
/* 7AA4BC4 80078E94 AFEE000C */  jal        func_8003BABC
/* 7AA4BC8 80078E98 01000624 */   addiu     $a2, $zero, 0x1
/* 7AA4BCC 80078E9C FF000224 */  addiu      $v0, $zero, 0xFF
/* 7AA4BD0 80078EA0 C1E30108 */  j          .Llevel_37_80078F04
/* 7AA4BD4 80078EA4 160002A2 */   sb        $v0, 0x16($s0)
.Llevel_37_80078EA8:
/* 7AA4BD8 80078EA8 B7010424 */  addiu      $a0, $zero, 0x1B7
/* 7AA4BDC 80078EAC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7AA4BE0 80078EB0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7AA4BE4 80078EB4 00000000 */  nop
/* 7AA4BE8 80078EB8 09F84000 */  jalr       $v0
/* 7AA4BEC 80078EBC 21286002 */   addu      $a1, $s3, $zero
/* 7AA4BF0 80078EC0 21884000 */  addu       $s1, $v0, $zero
/* 7AA4BF4 80078EC4 2A002012 */  beqz       $s1, .Llevel_37_80078F70
/* 7AA4BF8 80078EC8 A4010224 */   addiu     $v0, $zero, 0x1A4
/* 7AA4BFC 80078ECC 0000238E */  lw         $v1, 0x0($s1)
/* 7AA4C00 80078ED0 C1E30108 */  j          .Llevel_37_80078F04
/* 7AA4C04 80078ED4 000062AC */   sw        $v0, 0x0($v1)
.Llevel_37_80078ED8:
/* 7AA4C08 80078ED8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7AA4C0C 80078EDC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7AA4C10 80078EE0 00000000 */  nop
/* 7AA4C14 80078EE4 09F84000 */  jalr       $v0
/* 7AA4C18 80078EE8 21286002 */   addu      $a1, $s3, $zero
/* 7AA4C1C 80078EEC 21884000 */  addu       $s1, $v0, $zero
/* 7AA4C20 80078EF0 1F002012 */  beqz       $s1, .Llevel_37_80078F70
/* 7AA4C24 80078EF4 7400A226 */   addiu     $v0, $s5, 0x74
/* 7AA4C28 80078EF8 000022AE */  sw         $v0, 0x0($s1)
/* 7AA4C2C 80078EFC 8A020224 */  addiu      $v0, $zero, 0x28A
/* 7AA4C30 80078F00 380022A6 */  sh         $v0, 0x38($s1)
.Llevel_37_80078F04:
/* 7AA4C34 80078F04 1A002012 */  beqz       $s1, .Llevel_37_80078F70
/* 7AA4C38 80078F08 21202002 */   addu      $a0, $s1, $zero
/* 7AA4C3C 80078F0C 1C00228E */  lw         $v0, 0x1C($s1)
/* 7AA4C40 80078F10 0080033C */  lui        $v1, (0x80000000 >> 16)
/* 7AA4C44 80078F14 25104300 */  or         $v0, $v0, $v1
/* 7AA4C48 80078F18 05DC000C */  jal        func_80037014
/* 7AA4C4C 80078F1C 1C0022AE */   sw        $v0, 0x1C($s1)
/* 7AA4C50 80078F20 21300000 */  addu       $a2, $zero, $zero
/* 7AA4C54 80078F24 3F000224 */  addiu      $v0, $zero, 0x3F
/* 7AA4C58 80078F28 4C0022A2 */  sb         $v0, 0x4C($s1)
/* 7AA4C5C 80078F2C 4E0022A2 */  sb         $v0, 0x4E($s1)
/* 7AA4C60 80078F30 0780033C */  lui        $v1, %hi(D_80070328)
/* 7AA4C64 80078F34 2803638C */  lw         $v1, %lo(D_80070328)($v1)
/* 7AA4C68 80078F38 0C00248E */  lw         $a0, 0xC($s1)
/* 7AA4C6C 80078F3C 0780023C */  lui        $v0, %hi(D_80070328 + 4)
/* 7AA4C70 80078F40 2C03428C */  lw         $v0, %lo(D_80070328 + 4)($v0)
/* 7AA4C74 80078F44 1000258E */  lw         $a1, 0x10($s1)
/* 7AA4C78 80078F48 23206400 */  subu       $a0, $v1, $a0
/* 7AA4C7C 80078F4C 203A010C */  jal        func_8004E880
/* 7AA4C80 80078F50 23284500 */   subu      $a1, $v0, $a1
/* 7AA4C84 80078F54 38002386 */  lh         $v1, 0x38($s1)
/* 7AA4C88 80078F58 460022A2 */  sb         $v0, 0x46($s1)
/* 7AA4C8C 80078F5C 38006486 */  lh         $a0, 0x38($s3)
/* 7AA4C90 80078F60 1400228E */  lw         $v0, 0x14($s1)
/* 7AA4C94 80078F64 23186400 */  subu       $v1, $v1, $a0
/* 7AA4C98 80078F68 21104300 */  addu       $v0, $v0, $v1
/* 7AA4C9C 80078F6C 140022AE */  sw         $v0, 0x14($s1)
.Llevel_37_80078F70:
/* 7AA4CA0 80078F70 21880000 */  addu       $s1, $zero, $zero
.Llevel_37_80078F74:
/* 7AA4CA4 80078F74 0780023C */  lui        $v0, %hi(D_8006C578)
/* 7AA4CA8 80078F78 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 7AA4CAC 80078F7C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 7AA4CB0 80078F80 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 7AA4CB4 80078F84 00000000 */  nop
/* 7AA4CB8 80078F88 23104300 */  subu       $v0, $v0, $v1
/* 7AA4CBC 80078F8C 15004228 */  slti       $v0, $v0, 0x15
/* 7AA4CC0 80078F90 78004014 */  bnez       $v0, .Llevel_37_80079174
/* 7AA4CC4 80078F94 B5000424 */   addiu     $a0, $zero, 0xB5
/* 7AA4CC8 80078F98 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7AA4CCC 80078F9C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7AA4CD0 80078FA0 00000000 */  nop
/* 7AA4CD4 80078FA4 09F84000 */  jalr       $v0
/* 7AA4CD8 80078FA8 21286002 */   addu      $a1, $s3, $zero
/* 7AA4CDC 80078FAC 21804000 */  addu       $s0, $v0, $zero
/* 7AA4CE0 80078FB0 6C000012 */  beqz       $s0, .Llevel_37_80079164
/* 7AA4CE4 80078FB4 0C000426 */   addiu     $a0, $s0, 0xC
/* 7AA4CE8 80078FB8 5E3C010C */  jal        func_8004F178
/* 7AA4CEC 80078FBC 0C006526 */   addiu     $a1, $s3, 0xC
/* 7AA4CF0 80078FC0 03000424 */  addiu      $a0, $zero, 0x3
/* 7AA4CF4 80078FC4 DBD8000C */  jal        func_8003636C
/* 7AA4CF8 80078FC8 05000524 */   addiu     $a1, $zero, 0x5
/* 7AA4CFC 80078FCC 03000424 */  addiu      $a0, $zero, 0x3
/* 7AA4D00 80078FD0 05000524 */  addiu      $a1, $zero, 0x5
/* 7AA4D04 80078FD4 480002A2 */  sb         $v0, 0x48($s0)
/* 7AA4D08 80078FD8 DBD8000C */  jal        func_8003636C
/* 7AA4D0C 80078FDC 420000A2 */   sb        $zero, 0x42($s0)
/* 7AA4D10 80078FE0 36000386 */  lh         $v1, 0x36($s0)
/* 7AA4D14 80078FE4 00000000 */  nop
/* 7AA4D18 80078FE8 80180300 */  sll        $v1, $v1, 2
/* 7AA4D1C 80078FEC 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 7AA4D20 80078FF0 21082300 */  addu       $at, $at, $v1
/* 7AA4D24 80078FF4 2CEE238C */  lw         $v1, %lo(D_8006EE2C)($at)
/* 7AA4D28 80078FF8 80100200 */  sll        $v0, $v0, 2
/* 7AA4D2C 80078FFC 21104300 */  addu       $v0, $v0, $v1
/* 7AA4D30 80079000 3C00428C */  lw         $v0, 0x3C($v0)
/* 7AA4D34 80079004 03000424 */  addiu      $a0, $zero, 0x3
/* 7AA4D38 80079008 00004290 */  lbu        $v0, 0x0($v0)
/* 7AA4D3C 8007900C 05000524 */  addiu      $a1, $zero, 0x5
/* 7AA4D40 80079010 0200422C */  sltiu      $v0, $v0, 0x2
/* 7AA4D44 80079014 01004238 */  xori       $v0, $v0, 0x1
/* 7AA4D48 80079018 23100200 */  negu       $v0, $v0
/* 7AA4D4C 8007901C 30004230 */  andi       $v0, $v0, 0x30
/* 7AA4D50 80079020 DBD8000C */  jal        func_8003636C
/* 7AA4D54 80079024 400002A2 */   sb        $v0, 0x40($s0)
/* 7AA4D58 80079028 03000424 */  addiu      $a0, $zero, 0x3
/* 7AA4D5C 8007902C 05000524 */  addiu      $a1, $zero, 0x5
/* 7AA4D60 80079030 DBD8000C */  jal        func_8003636C
/* 7AA4D64 80079034 3C0002A2 */   sb        $v0, 0x3C($s0)
/* 7AA4D68 80079038 3D0002A2 */  sb         $v0, 0x3D($s0)
/* 7AA4D6C 8007903C 01000224 */  addiu      $v0, $zero, 0x1
/* 7AA4D70 80079040 3F0002A2 */  sb         $v0, 0x3F($s0)
/* 7AA4D74 80079044 3F000224 */  addiu      $v0, $zero, 0x3F
/* 7AA4D78 80079048 3E0000A2 */  sb         $zero, 0x3E($s0)
/* 7AA4D7C 8007904C 460000A2 */  sb         $zero, 0x46($s0)
/* 7AA4D80 80079050 080000AE */  sw         $zero, 0x8($s0)
/* 7AA4D84 80079054 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 7AA4D88 80079058 4E0002A2 */  sb         $v0, 0x4E($s0)
/* 7AA4D8C 8007905C 3D006392 */  lbu        $v1, 0x3D($s3)
/* 7AA4D90 80079060 00000000 */  nop
/* 7AA4D94 80079064 13006014 */  bnez       $v1, .Llevel_37_800790B4
/* 7AA4D98 80079068 01000224 */   addiu     $v0, $zero, 0x1
/* 7AA4D9C 8007906C 64000424 */  addiu      $a0, $zero, 0x64
/* 7AA4DA0 80079070 DBD8000C */  jal        func_8003636C
/* 7AA4DA4 80079074 BC020524 */   addiu     $a1, $zero, 0x2BC
/* 7AA4DA8 80079078 70FE0424 */  addiu      $a0, $zero, -0x190
/* 7AA4DAC 8007907C 1400038E */  lw         $v1, 0x14($s0)
/* 7AA4DB0 80079080 90010524 */  addiu      $a1, $zero, 0x190
/* 7AA4DB4 80079084 21186200 */  addu       $v1, $v1, $v0
/* 7AA4DB8 80079088 DBD8000C */  jal        func_8003636C
/* 7AA4DBC 8007908C 140003AE */   sw        $v1, 0x14($s0)
/* 7AA4DC0 80079090 70FE0424 */  addiu      $a0, $zero, -0x190
/* 7AA4DC4 80079094 0C00038E */  lw         $v1, 0xC($s0)
/* 7AA4DC8 80079098 90010524 */  addiu      $a1, $zero, 0x190
/* 7AA4DCC 8007909C 21186200 */  addu       $v1, $v1, $v0
/* 7AA4DD0 800790A0 DBD8000C */  jal        func_8003636C
/* 7AA4DD4 800790A4 0C0003AE */   sw        $v1, 0xC($s0)
/* 7AA4DD8 800790A8 1000048E */  lw         $a0, 0x10($s0)
/* 7AA4DDC 800790AC 54E40108 */  j          .Llevel_37_80079150
/* 7AA4DE0 800790B0 30000324 */   addiu     $v1, $zero, 0x30
.Llevel_37_800790B4:
/* 7AA4DE4 800790B4 13006214 */  bne        $v1, $v0, .Llevel_37_80079104
/* 7AA4DE8 800790B8 02000224 */   addiu     $v0, $zero, 0x2
/* 7AA4DEC 800790BC 64000424 */  addiu      $a0, $zero, 0x64
/* 7AA4DF0 800790C0 DBD8000C */  jal        func_8003636C
/* 7AA4DF4 800790C4 BC020524 */   addiu     $a1, $zero, 0x2BC
/* 7AA4DF8 800790C8 70FE0424 */  addiu      $a0, $zero, -0x190
/* 7AA4DFC 800790CC 1400038E */  lw         $v1, 0x14($s0)
/* 7AA4E00 800790D0 90010524 */  addiu      $a1, $zero, 0x190
/* 7AA4E04 800790D4 21186200 */  addu       $v1, $v1, $v0
/* 7AA4E08 800790D8 DBD8000C */  jal        func_8003636C
/* 7AA4E0C 800790DC 140003AE */   sw        $v1, 0x14($s0)
/* 7AA4E10 800790E0 70FE0424 */  addiu      $a0, $zero, -0x190
/* 7AA4E14 800790E4 0C00038E */  lw         $v1, 0xC($s0)
/* 7AA4E18 800790E8 90010524 */  addiu      $a1, $zero, 0x190
/* 7AA4E1C 800790EC 21186200 */  addu       $v1, $v1, $v0
/* 7AA4E20 800790F0 DBD8000C */  jal        func_8003636C
/* 7AA4E24 800790F4 0C0003AE */   sw        $v1, 0xC($s0)
/* 7AA4E28 800790F8 1000048E */  lw         $a0, 0x10($s0)
/* 7AA4E2C 800790FC 54E40108 */  j          .Llevel_37_80079150
/* 7AA4E30 80079100 30000324 */   addiu     $v1, $zero, 0x30
.Llevel_37_80079104:
/* 7AA4E34 80079104 16006214 */  bne        $v1, $v0, .Llevel_37_80079160
/* 7AA4E38 80079108 03000224 */   addiu     $v0, $zero, 0x3
/* 7AA4E3C 8007910C 64000424 */  addiu      $a0, $zero, 0x64
/* 7AA4E40 80079110 DBD8000C */  jal        func_8003636C
/* 7AA4E44 80079114 4C040524 */   addiu     $a1, $zero, 0x44C
/* 7AA4E48 80079118 A8FD0424 */  addiu      $a0, $zero, -0x258
/* 7AA4E4C 8007911C 1400038E */  lw         $v1, 0x14($s0)
/* 7AA4E50 80079120 58020524 */  addiu      $a1, $zero, 0x258
/* 7AA4E54 80079124 21186200 */  addu       $v1, $v1, $v0
/* 7AA4E58 80079128 DBD8000C */  jal        func_8003636C
/* 7AA4E5C 8007912C 140003AE */   sw        $v1, 0x14($s0)
/* 7AA4E60 80079130 A8FD0424 */  addiu      $a0, $zero, -0x258
/* 7AA4E64 80079134 0C00038E */  lw         $v1, 0xC($s0)
/* 7AA4E68 80079138 58020524 */  addiu      $a1, $zero, 0x258
/* 7AA4E6C 8007913C 21186200 */  addu       $v1, $v1, $v0
/* 7AA4E70 80079140 DBD8000C */  jal        func_8003636C
/* 7AA4E74 80079144 0C0003AE */   sw        $v1, 0xC($s0)
/* 7AA4E78 80079148 1000048E */  lw         $a0, 0x10($s0)
/* 7AA4E7C 8007914C 19000324 */  addiu      $v1, $zero, 0x19
.Llevel_37_80079150:
/* 7AA4E80 80079150 4F0003A2 */  sb         $v1, 0x4F($s0)
/* 7AA4E84 80079154 21208200 */  addu       $a0, $a0, $v0
/* 7AA4E88 80079158 100004AE */  sw         $a0, 0x10($s0)
/* 7AA4E8C 8007915C 03000224 */  addiu      $v0, $zero, 0x3
.Llevel_37_80079160:
/* 7AA4E90 80079160 480002A2 */  sb         $v0, 0x48($s0)
.Llevel_37_80079164:
/* 7AA4E94 80079164 01003126 */  addiu      $s1, $s1, 0x1
/* 7AA4E98 80079168 0C00222A */  slti       $v0, $s1, 0xC
/* 7AA4E9C 8007916C 81FF4014 */  bnez       $v0, .Llevel_37_80078F74
/* 7AA4EA0 80079170 00000000 */   nop
.Llevel_37_80079174:
/* 7AA4EA4 80079174 21206002 */  addu       $a0, $s3, $zero
/* 7AA4EA8 80079178 21280000 */  addu       $a1, $zero, $zero
/* 7AA4EAC 8007917C AFEE000C */  jal        func_8003BABC
/* 7AA4EB0 80079180 21300000 */   addu      $a2, $zero, $zero
.Llevel_37_80079184:
/* 7AA4EB4 80079184 C656010C */  jal        func_80055B18
/* 7AA4EB8 80079188 21206002 */   addu      $a0, $s3, $zero
/* 7AA4EBC 8007918C C9E40108 */  j          .Llevel_37_80079324
/* 7AA4EC0 80079190 00000000 */   nop
.Llevel_37_80079194:
/* 7AA4EC4 80079194 08000286 */  lh         $v0, 0x8($s0)
/* 7AA4EC8 80079198 00000000 */  nop
/* 7AA4ECC 8007919C B4004228 */  slti       $v0, $v0, 0xB4
/* 7AA4ED0 800791A0 43004010 */  beqz       $v0, .Llevel_37_800792B0
/* 7AA4ED4 800791A4 0A000426 */   addiu     $a0, $s0, 0xA
/* 7AA4ED8 800791A8 69D6000C */  jal        func_800359A4
/* 7AA4EDC 800791AC 02000524 */   addiu     $a1, $zero, 0x2
/* 7AA4EE0 800791B0 08004010 */  beqz       $v0, .Llevel_37_800791D4
/* 7AA4EE4 800791B4 3C000424 */   addiu     $a0, $zero, 0x3C
/* 7AA4EE8 800791B8 DBD8000C */  jal        func_8003636C
/* 7AA4EEC 800791BC 5A000524 */   addiu     $a1, $zero, 0x5A
/* 7AA4EF0 800791C0 28000424 */  addiu      $a0, $zero, 0x28
/* 7AA4EF4 800791C4 3C000524 */  addiu      $a1, $zero, 0x3C
/* 7AA4EF8 800791C8 DBD8000C */  jal        func_8003636C
/* 7AA4EFC 800791CC 0E0002A6 */   sh        $v0, 0xE($s0)
/* 7AA4F00 800791D0 0A0002A6 */  sh         $v0, 0xA($s0)
.Llevel_37_800791D4:
/* 7AA4F04 800791D4 0C000426 */  addiu      $a0, $s0, 0xC
/* 7AA4F08 800791D8 69D6000C */  jal        func_800359A4
/* 7AA4F0C 800791DC 02000524 */   addiu     $a1, $zero, 0x2
/* 7AA4F10 800791E0 33004010 */  beqz       $v0, .Llevel_37_800792B0
/* 7AA4F14 800791E4 00000000 */   nop
/* 7AA4F18 800791E8 44006292 */  lbu        $v0, 0x44($s3)
/* 7AA4F1C 800791EC 00000000 */  nop
/* 7AA4F20 800791F0 FDFF4224 */  addiu      $v0, $v0, -0x3
/* 7AA4F24 800791F4 FF004230 */  andi       $v0, $v0, 0xFF
/* 7AA4F28 800791F8 FB00422C */  sltiu      $v0, $v0, 0xFB
/* 7AA4F2C 800791FC 2C004014 */  bnez       $v0, .Llevel_37_800792B0
/* 7AA4F30 80079200 00000000 */   nop
/* 7AA4F34 80079204 45006292 */  lbu        $v0, 0x45($s3)
/* 7AA4F38 80079208 00000000 */  nop
/* 7AA4F3C 8007920C FDFF4224 */  addiu      $v0, $v0, -0x3
/* 7AA4F40 80079210 FF004230 */  andi       $v0, $v0, 0xFF
/* 7AA4F44 80079214 FB00422C */  sltiu      $v0, $v0, 0xFB
/* 7AA4F48 80079218 25004014 */  bnez       $v0, .Llevel_37_800792B0
/* 7AA4F4C 8007921C 04000424 */   addiu     $a0, $zero, 0x4
/* 7AA4F50 80079220 F7D8000C */  jal        func_800363DC
/* 7AA4F54 80079224 08000524 */   addiu     $a1, $zero, 0x8
/* 7AA4F58 80079228 04000424 */  addiu      $a0, $zero, 0x4
/* 7AA4F5C 8007922C 08000524 */  addiu      $a1, $zero, 0x8
/* 7AA4F60 80079230 F7D8000C */  jal        func_800363DC
/* 7AA4F64 80079234 21884000 */   addu      $s1, $v0, $zero
/* 7AA4F68 80079238 21284000 */  addu       $a1, $v0, $zero
/* 7AA4F6C 8007923C 00000386 */  lh         $v1, 0x0($s0)
/* 7AA4F70 80079240 02000486 */  lh         $a0, 0x2($s0)
/* 7AA4F74 80079244 02006104 */  bgez       $v1, .Llevel_37_80079250
/* 7AA4F78 80079248 00000000 */   nop
/* 7AA4F7C 8007924C 23180300 */  negu       $v1, $v1
.Llevel_37_80079250:
/* 7AA4F80 80079250 2A106400 */  slt        $v0, $v1, $a0
/* 7AA4F84 80079254 04004010 */  beqz       $v0, .Llevel_37_80079268
/* 7AA4F88 80079258 00000000 */   nop
/* 7AA4F8C 8007925C 02008104 */  bgez       $a0, .Llevel_37_80079268
/* 7AA4F90 80079260 21188000 */   addu      $v1, $a0, $zero
/* 7AA4F94 80079264 23180300 */  negu       $v1, $v1
.Llevel_37_80079268:
/* 7AA4F98 80079268 02002106 */  bgez       $s1, .Llevel_37_80079274
/* 7AA4F9C 8007926C 21102002 */   addu      $v0, $s1, $zero
/* 7AA4FA0 80079270 23100200 */  negu       $v0, $v0
.Llevel_37_80079274:
/* 7AA4FA4 80079274 2A106200 */  slt        $v0, $v1, $v0
/* 7AA4FA8 80079278 07004014 */  bnez       $v0, .Llevel_37_80079298
/* 7AA4FAC 8007927C 00000000 */   nop
/* 7AA4FB0 80079280 0200A104 */  bgez       $a1, .Llevel_37_8007928C
/* 7AA4FB4 80079284 2110A000 */   addu      $v0, $a1, $zero
/* 7AA4FB8 80079288 23100200 */  negu       $v0, $v0
.Llevel_37_8007928C:
/* 7AA4FBC 8007928C 2A106200 */  slt        $v0, $v1, $v0
/* 7AA4FC0 80079290 04004010 */  beqz       $v0, .Llevel_37_800792A4
/* 7AA4FC4 80079294 14000424 */   addiu     $a0, $zero, 0x14
.Llevel_37_80079298:
/* 7AA4FC8 80079298 000011A6 */  sh         $s1, 0x0($s0)
/* 7AA4FCC 8007929C 020005A6 */  sh         $a1, 0x2($s0)
/* 7AA4FD0 800792A0 14000424 */  addiu      $a0, $zero, 0x14
.Llevel_37_800792A4:
/* 7AA4FD4 800792A4 DBD8000C */  jal        func_8003636C
/* 7AA4FD8 800792A8 28000524 */   addiu     $a1, $zero, 0x28
/* 7AA4FDC 800792AC 0C0002A6 */  sh         $v0, 0xC($s0)
.Llevel_37_800792B0:
/* 7AA4FE0 800792B0 0E000296 */  lhu        $v0, 0xE($s0)
/* 7AA4FE4 800792B4 00000000 */  nop
/* 7AA4FE8 800792B8 F6FF4224 */  addiu      $v0, $v0, -0xA
/* 7AA4FEC 800792BC 0E0002A6 */  sh         $v0, 0xE($s0)
/* 7AA4FF0 800792C0 00140200 */  sll        $v0, $v0, 16
/* 7AA4FF4 800792C4 1400638E */  lw         $v1, 0x14($s3)
/* 7AA4FF8 800792C8 03140200 */  sra        $v0, $v0, 16
/* 7AA4FFC 800792CC 21186200 */  addu       $v1, $v1, $v0
/* 7AA5000 800792D0 2A107400 */  slt        $v0, $v1, $s4
/* 7AA5004 800792D4 12004010 */  beqz       $v0, .Llevel_37_80079320
/* 7AA5008 800792D8 00000000 */   nop
/* 7AA500C 800792DC 140074AE */  sw         $s4, 0x14($s3)
/* 7AA5010 800792E0 0E000386 */  lh         $v1, 0xE($s0)
/* 7AA5014 800792E4 00000000 */  nop
/* 7AA5018 800792E8 02006104 */  bgez       $v1, .Llevel_37_800792F4
/* 7AA501C 800792EC 21106000 */   addu      $v0, $v1, $zero
/* 7AA5020 800792F0 23100200 */  negu       $v0, $v0
.Llevel_37_800792F4:
/* 7AA5024 800792F4 29004228 */  slti       $v0, $v0, 0x29
/* 7AA5028 800792F8 0A004014 */  bnez       $v0, .Llevel_37_80079324
/* 7AA502C 800792FC 80100300 */   sll       $v0, $v1, 2
/* 7AA5030 80079300 21104300 */  addu       $v0, $v0, $v1
/* 7AA5034 80079304 23100200 */  negu       $v0, $v0
/* 7AA5038 80079308 02004104 */  bgez       $v0, .Llevel_37_80079314
/* 7AA503C 8007930C 00000000 */   nop
/* 7AA5040 80079310 07004224 */  addiu      $v0, $v0, 0x7
.Llevel_37_80079314:
/* 7AA5044 80079314 C3100200 */  sra        $v0, $v0, 3
/* 7AA5048 80079318 C9E40108 */  j          .Llevel_37_80079324
/* 7AA504C 8007931C 0E0002A6 */   sh        $v0, 0xE($s0)
.Llevel_37_80079320:
/* 7AA5050 80079320 140063AE */  sw         $v1, 0x14($s3)
.Llevel_37_80079324:
/* 7AA5054 80079324 7000BF8F */  lw         $ra, 0x70($sp)
/* 7AA5058 80079328 6C00B58F */  lw         $s5, 0x6C($sp)
/* 7AA505C 8007932C 6800B48F */  lw         $s4, 0x68($sp)
/* 7AA5060 80079330 6400B38F */  lw         $s3, 0x64($sp)
/* 7AA5064 80079334 6000B28F */  lw         $s2, 0x60($sp)
/* 7AA5068 80079338 5C00B18F */  lw         $s1, 0x5C($sp)
/* 7AA506C 8007933C 5800B08F */  lw         $s0, 0x58($sp)
/* 7AA5070 80079340 7800BD27 */  addiu      $sp, $sp, 0x78
/* 7AA5074 80079344 0800E003 */  jr         $ra
/* 7AA5078 80079348 00000000 */   nop
.size func_level_37_800788BC, . - func_level_37_800788BC
