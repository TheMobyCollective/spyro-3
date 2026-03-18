.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_31_80088990
/* 6AA36C0 80088990 78FFBD27 */  addiu      $sp, $sp, -0x88
/* 6AA36C4 80088994 7400B5AF */  sw         $s5, 0x74($sp)
/* 6AA36C8 80088998 21A88000 */  addu       $s5, $a0, $zero
/* 6AA36CC 8008899C 6800B2AF */  sw         $s2, 0x68($sp)
/* 6AA36D0 800889A0 2190C000 */  addu       $s2, $a2, $zero
/* 6AA36D4 800889A4 1000A427 */  addiu      $a0, $sp, 0x10
/* 6AA36D8 800889A8 8400BFAF */  sw         $ra, 0x84($sp)
/* 6AA36DC 800889AC 8000BEAF */  sw         $fp, 0x80($sp)
/* 6AA36E0 800889B0 7C00B7AF */  sw         $s7, 0x7C($sp)
/* 6AA36E4 800889B4 7800B6AF */  sw         $s6, 0x78($sp)
/* 6AA36E8 800889B8 7000B4AF */  sw         $s4, 0x70($sp)
/* 6AA36EC 800889BC 6C00B3AF */  sw         $s3, 0x6C($sp)
/* 6AA36F0 800889C0 6400B1AF */  sw         $s1, 0x64($sp)
/* 6AA36F4 800889C4 6000B0AF */  sw         $s0, 0x60($sp)
/* 6AA36F8 800889C8 4000A5AF */  sw         $a1, 0x40($sp)
/* 6AA36FC 800889CC 5A3C010C */  jal        func_8004F168
/* 6AA3700 800889D0 4800A7AF */   sw        $a3, 0x48($sp)
/* 6AA3704 800889D4 0A00A01A */  blez       $s5, .Llevel_31_80088A00
/* 6AA3708 800889D8 21980000 */   addu      $s3, $zero, $zero
/* 6AA370C 800889DC 4800B08F */  lw         $s0, 0x48($sp)
.Llevel_31_800889E0:
/* 6AA3710 800889E0 1000A427 */  addiu      $a0, $sp, 0x10
/* 6AA3714 800889E4 21288000 */  addu       $a1, $a0, $zero
/* 6AA3718 800889E8 653C010C */  jal        func_8004F194
/* 6AA371C 800889EC 21300002 */   addu      $a2, $s0, $zero
/* 6AA3720 800889F0 01007326 */  addiu      $s3, $s3, 0x1
/* 6AA3724 800889F4 2A107502 */  slt        $v0, $s3, $s5
/* 6AA3728 800889F8 F9FF4014 */  bnez       $v0, .Llevel_31_800889E0
/* 6AA372C 800889FC 0C001026 */   addiu     $s0, $s0, 0xC
.Llevel_31_80088A00:
/* 6AA3730 80088A00 1000A68F */  lw         $a2, 0x10($sp)
/* 6AA3734 80088A04 00000000 */  nop
/* 6AA3738 80088A08 1A00D500 */  div        $zero, $a2, $s5
/* 6AA373C 80088A0C 0200A016 */  bnez       $s5, .Llevel_31_80088A18
/* 6AA3740 80088A10 00000000 */   nop
/* 6AA3744 80088A14 0D000700 */  break      7
.Llevel_31_80088A18:
/* 6AA3748 80088A18 FFFF0124 */  addiu      $at, $zero, -0x1
/* 6AA374C 80088A1C 0400A116 */  bne        $s5, $at, .Llevel_31_80088A30
/* 6AA3750 80088A20 0080013C */   lui       $at, (0x80000000 >> 16)
/* 6AA3754 80088A24 0200C114 */  bne        $a2, $at, .Llevel_31_80088A30
/* 6AA3758 80088A28 00000000 */   nop
/* 6AA375C 80088A2C 0D000600 */  break      6
.Llevel_31_80088A30:
/* 6AA3760 80088A30 12300000 */  mflo       $a2
/* 6AA3764 80088A34 1400A38F */  lw         $v1, 0x14($sp)
/* 6AA3768 80088A38 00000000 */  nop
/* 6AA376C 80088A3C 1A007500 */  div        $zero, $v1, $s5
/* 6AA3770 80088A40 0200A016 */  bnez       $s5, .Llevel_31_80088A4C
/* 6AA3774 80088A44 00000000 */   nop
/* 6AA3778 80088A48 0D000700 */  break      7
.Llevel_31_80088A4C:
/* 6AA377C 80088A4C FFFF0124 */  addiu      $at, $zero, -0x1
/* 6AA3780 80088A50 0400A116 */  bne        $s5, $at, .Llevel_31_80088A64
/* 6AA3784 80088A54 0080013C */   lui       $at, (0x80000000 >> 16)
/* 6AA3788 80088A58 02006114 */  bne        $v1, $at, .Llevel_31_80088A64
/* 6AA378C 80088A5C 00000000 */   nop
/* 6AA3790 80088A60 0D000600 */  break      6
.Llevel_31_80088A64:
/* 6AA3794 80088A64 12180000 */  mflo       $v1
/* 6AA3798 80088A68 1800A28F */  lw         $v0, 0x18($sp)
/* 6AA379C 80088A6C 00000000 */  nop
/* 6AA37A0 80088A70 1A005500 */  div        $zero, $v0, $s5
/* 6AA37A4 80088A74 0200A016 */  bnez       $s5, .Llevel_31_80088A80
/* 6AA37A8 80088A78 00000000 */   nop
/* 6AA37AC 80088A7C 0D000700 */  break      7
.Llevel_31_80088A80:
/* 6AA37B0 80088A80 FFFF0124 */  addiu      $at, $zero, -0x1
/* 6AA37B4 80088A84 0400A116 */  bne        $s5, $at, .Llevel_31_80088A98
/* 6AA37B8 80088A88 0080013C */   lui       $at, (0x80000000 >> 16)
/* 6AA37BC 80088A8C 02004114 */  bne        $v0, $at, .Llevel_31_80088A98
/* 6AA37C0 80088A90 00000000 */   nop
/* 6AA37C4 80088A94 0D000600 */  break      6
.Llevel_31_80088A98:
/* 6AA37C8 80088A98 12100000 */  mflo       $v0
/* 6AA37CC 80088A9C 04000524 */  addiu      $a1, $zero, 0x4
/* 6AA37D0 80088AA0 21980000 */  addu       $s3, $zero, $zero
/* 6AA37D4 80088AA4 21204002 */  addu       $a0, $s2, $zero
/* 6AA37D8 80088AA8 1000A6AF */  sw         $a2, 0x10($sp)
/* 6AA37DC 80088AAC 1400A3AF */  sw         $v1, 0x14($sp)
/* 6AA37E0 80088AB0 4957010C */  jal        func_80055D24
/* 6AA37E4 80088AB4 1800A2AF */   sw        $v0, 0x18($sp)
/* 6AA37E8 80088AB8 6401A01A */  blez       $s5, .Llevel_31_8008904C
/* 6AA37EC 80088ABC 2000B427 */   addiu     $s4, $sp, 0x20
/* 6AA37F0 80088AC0 06801E3C */  lui        $fp, %hi(D_80065920)
/* 6AA37F4 80088AC4 2059DE27 */  addiu      $fp, $fp, %lo(D_80065920)
/* 6AA37F8 80088AC8 0680173C */  lui        $s7, %hi(D_800658A0)
/* 6AA37FC 80088ACC A058F726 */  addiu      $s7, $s7, %lo(D_800658A0)
/* 6AA3800 80088AD0 0780163C */  lui        $s6, %hi(D_80070328)
/* 6AA3804 80088AD4 2803D626 */  addiu      $s6, $s6, %lo(D_80070328)
.Llevel_31_80088AD8:
/* 6AA3808 80088AD8 0780023C */  lui        $v0, %hi(D_8006C578)
/* 6AA380C 80088ADC 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 6AA3810 80088AE0 0780033C */  lui        $v1, %hi(D_8006C574)
/* 6AA3814 80088AE4 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 6AA3818 80088AE8 00000000 */  nop
/* 6AA381C 80088AEC 23104300 */  subu       $v0, $v0, $v1
/* 6AA3820 80088AF0 15004228 */  slti       $v0, $v0, 0x15
/* 6AA3824 80088AF4 55014014 */  bnez       $v0, .Llevel_31_8008904C
/* 6AA3828 80088AF8 00000000 */   nop
/* 6AA382C 80088AFC 4000A48F */  lw         $a0, 0x40($sp)
/* 6AA3830 80088B00 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6AA3834 80088B04 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6AA3838 80088B08 00000000 */  nop
/* 6AA383C 80088B0C 09F84000 */  jalr       $v0
/* 6AA3840 80088B10 21284002 */   addu      $a1, $s2, $zero
/* 6AA3844 80088B14 21884000 */  addu       $s1, $v0, $zero
/* 6AA3848 80088B18 48012012 */  beqz       $s1, .Llevel_31_8008903C
/* 6AA384C 80088B1C 21208002 */   addu      $a0, $s4, $zero
/* 6AA3850 80088B20 40281300 */  sll        $a1, $s3, 1
/* 6AA3854 80088B24 2128B300 */  addu       $a1, $a1, $s3
/* 6AA3858 80088B28 80280500 */  sll        $a1, $a1, 2
/* 6AA385C 80088B2C 4800A88F */  lw         $t0, 0x48($sp)
/* 6AA3860 80088B30 0000308E */  lw         $s0, 0x0($s1)
/* 6AA3864 80088B34 5E3C010C */  jal        func_8004F178
/* 6AA3868 80088B38 21280501 */   addu      $a1, $t0, $a1
/* 6AA386C 80088B3C 20004426 */  addiu      $a0, $s2, 0x20
/* 6AA3870 80088B40 21288002 */  addu       $a1, $s4, $zero
/* 6AA3874 80088B44 5B3B010C */  jal        func_8004ED6C
/* 6AA3878 80088B48 21308002 */   addu      $a2, $s4, $zero
/* 6AA387C 80088B4C 2000A28F */  lw         $v0, 0x20($sp)
/* 6AA3880 80088B50 1000A38F */  lw         $v1, 0x10($sp)
/* 6AA3884 80088B54 0C002426 */  addiu      $a0, $s1, 0xC
/* 6AA3888 80088B58 23104300 */  subu       $v0, $v0, $v1
/* 6AA388C 80088B5C 83100200 */  sra        $v0, $v0, 2
/* 6AA3890 80088B60 000002A6 */  sh         $v0, 0x0($s0)
/* 6AA3894 80088B64 2400A28F */  lw         $v0, 0x24($sp)
/* 6AA3898 80088B68 1400A38F */  lw         $v1, 0x14($sp)
/* 6AA389C 80088B6C 21288002 */  addu       $a1, $s4, $zero
/* 6AA38A0 80088B70 23104300 */  subu       $v0, $v0, $v1
/* 6AA38A4 80088B74 83100200 */  sra        $v0, $v0, 2
/* 6AA38A8 80088B78 020002A6 */  sh         $v0, 0x2($s0)
/* 6AA38AC 80088B7C 2800A28F */  lw         $v0, 0x28($sp)
/* 6AA38B0 80088B80 1800A38F */  lw         $v1, 0x18($sp)
/* 6AA38B4 80088B84 0C004626 */  addiu      $a2, $s2, 0xC
/* 6AA38B8 80088B88 23104300 */  subu       $v0, $v0, $v1
/* 6AA38BC 80088B8C 83100200 */  sra        $v0, $v0, 2
/* 6AA38C0 80088B90 653C010C */  jal        func_8004F194
/* 6AA38C4 80088B94 040002A6 */   sh        $v0, 0x4($s0)
/* 6AA38C8 80088B98 36004386 */  lh         $v1, 0x36($s2)
/* 6AA38CC 80088B9C FE000224 */  addiu      $v0, $zero, 0xFE
/* 6AA38D0 80088BA0 1F006214 */  bne        $v1, $v0, .Llevel_31_80088C20
/* 6AA38D4 80088BA4 84000224 */   addiu     $v0, $zero, 0x84
/* 6AA38D8 80088BA8 1400238E */  lw         $v1, 0x14($s1)
/* 6AA38DC 80088BAC 14000224 */  addiu      $v0, $zero, 0x14
/* 6AA38E0 80088BB0 4F0022A2 */  sb         $v0, 0x4F($s1)
/* 6AA38E4 80088BB4 E8036324 */  addiu      $v1, $v1, 0x3E8
/* 6AA38E8 80088BB8 140023AE */  sw         $v1, 0x14($s1)
/* 6AA38EC 80088BBC 51004292 */  lbu        $v0, 0x51($s2)
/* 6AA38F0 80088BC0 00000000 */  nop
/* 6AA38F4 80088BC4 40100200 */  sll        $v0, $v0, 1
/* 6AA38F8 80088BC8 21105E00 */  addu       $v0, $v0, $fp
/* 6AA38FC 80088BCC 00004384 */  lh         $v1, 0x0($v0)
/* 6AA3900 80088BD0 00000000 */  nop
/* 6AA3904 80088BD4 80100300 */  sll        $v0, $v1, 2
/* 6AA3908 80088BD8 21104300 */  addu       $v0, $v0, $v1
/* 6AA390C 80088BDC 00000396 */  lhu        $v1, 0x0($s0)
/* 6AA3910 80088BE0 03120200 */  sra        $v0, $v0, 8
/* 6AA3914 80088BE4 21186200 */  addu       $v1, $v1, $v0
/* 6AA3918 80088BE8 000003A6 */  sh         $v1, 0x0($s0)
/* 6AA391C 80088BEC 51004292 */  lbu        $v0, 0x51($s2)
/* 6AA3920 80088BF0 FA000424 */  addiu      $a0, $zero, 0xFA
/* 6AA3924 80088BF4 40100200 */  sll        $v0, $v0, 1
/* 6AA3928 80088BF8 21105700 */  addu       $v0, $v0, $s7
/* 6AA392C 80088BFC 00004384 */  lh         $v1, 0x0($v0)
/* 6AA3930 80088C00 5E010524 */  addiu      $a1, $zero, 0x15E
/* 6AA3934 80088C04 80100300 */  sll        $v0, $v1, 2
/* 6AA3938 80088C08 21104300 */  addu       $v0, $v0, $v1
/* 6AA393C 80088C0C 02000396 */  lhu        $v1, 0x2($s0)
/* 6AA3940 80088C10 03120200 */  sra        $v0, $v0, 8
/* 6AA3944 80088C14 21186200 */  addu       $v1, $v1, $v0
/* 6AA3948 80088C18 70230208 */  j          .Llevel_31_80088DC0
/* 6AA394C 80088C1C 020003A6 */   sh        $v1, 0x2($s0)
.Llevel_31_80088C20:
/* 6AA3950 80088C20 14006214 */  bne        $v1, $v0, .Llevel_31_80088C74
/* 6AA3954 80088C24 E7030224 */   addiu     $v0, $zero, 0x3E7
/* 6AA3958 80088C28 00000386 */  lh         $v1, 0x0($s0)
/* 6AA395C 80088C2C 00000000 */  nop
/* 6AA3960 80088C30 40100300 */  sll        $v0, $v1, 1
/* 6AA3964 80088C34 21104300 */  addu       $v0, $v0, $v1
/* 6AA3968 80088C38 C21F0200 */  srl        $v1, $v0, 31
/* 6AA396C 80088C3C 21104300 */  addu       $v0, $v0, $v1
/* 6AA3970 80088C40 02000386 */  lh         $v1, 0x2($s0)
/* 6AA3974 80088C44 43100200 */  sra        $v0, $v0, 1
/* 6AA3978 80088C48 000002A6 */  sh         $v0, 0x0($s0)
/* 6AA397C 80088C4C 40100300 */  sll        $v0, $v1, 1
/* 6AA3980 80088C50 21104300 */  addu       $v0, $v0, $v1
/* 6AA3984 80088C54 C21F0200 */  srl        $v1, $v0, 31
/* 6AA3988 80088C58 21104300 */  addu       $v0, $v0, $v1
/* 6AA398C 80088C5C 04000386 */  lh         $v1, 0x4($s0)
/* 6AA3990 80088C60 43100200 */  sra        $v0, $v0, 1
/* 6AA3994 80088C64 020002A6 */  sh         $v0, 0x2($s0)
/* 6AA3998 80088C68 40180300 */  sll        $v1, $v1, 1
/* 6AA399C 80088C6C E9230208 */  j          .Llevel_31_80088FA4
/* 6AA39A0 80088C70 040003A6 */   sh        $v1, 0x4($s0)
.Llevel_31_80088C74:
/* 6AA39A4 80088C74 30006214 */  bne        $v1, $v0, .Llevel_31_80088D38
/* 6AA39A8 80088C78 2A000224 */   addiu     $v0, $zero, 0x2A
/* 6AA39AC 80088C7C 0780053C */  lui        $a1, %hi(D_80070328 + 0x48)
/* 6AA39B0 80088C80 7003A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0x48)
/* 6AA39B4 80088C84 0000A38C */  lw         $v1, 0x0($a1)
/* 6AA39B8 80088C88 00000000 */  nop
/* 6AA39BC 80088C8C 13006214 */  bne        $v1, $v0, .Llevel_31_80088CDC
/* 6AA39C0 80088C90 21200000 */   addu      $a0, $zero, $zero
/* 6AA39C4 80088C94 21208002 */  addu       $a0, $s4, $zero
/* 6AA39C8 80088C98 5E3C010C */  jal        func_8004F178
/* 6AA39CC 80088C9C 4400A524 */   addiu     $a1, $a1, 0x44
/* 6AA39D0 80088CA0 21208002 */  addu       $a0, $s4, $zero
/* 6AA39D4 80088CA4 7A3B010C */  jal        func_8004EDE8
/* 6AA39D8 80088CA8 21280000 */   addu      $a1, $zero, $zero
/* 6AA39DC 80088CAC 21208002 */  addu       $a0, $s4, $zero
/* 6AA39E0 80088CB0 21284000 */  addu       $a1, $v0, $zero
/* 6AA39E4 80088CB4 233C010C */  jal        func_8004F08C
/* 6AA39E8 80088CB8 2C010624 */   addiu     $a2, $zero, 0x12C
/* 6AA39EC 80088CBC 2000A38F */  lw         $v1, 0x20($sp)
/* 6AA39F0 80088CC0 00000296 */  lhu        $v0, 0x0($s0)
/* 6AA39F4 80088CC4 00000000 */  nop
/* 6AA39F8 80088CC8 21104300 */  addu       $v0, $v0, $v1
/* 6AA39FC 80088CCC 000002A6 */  sh         $v0, 0x0($s0)
/* 6AA3A00 80088CD0 2400A38F */  lw         $v1, 0x24($sp)
/* 6AA3A04 80088CD4 E5230208 */  j          .Llevel_31_80088F94
/* 6AA3A08 80088CD8 00000000 */   nop
.Llevel_31_80088CDC:
/* 6AA3A0C 80088CDC 21288002 */  addu       $a1, $s4, $zero
/* 6AA3A10 80088CE0 21308002 */  addu       $a2, $s4, $zero
/* 6AA3A14 80088CE4 8C000224 */  addiu      $v0, $zero, 0x8C
/* 6AA3A18 80088CE8 2000A2AF */  sw         $v0, 0x20($sp)
/* 6AA3A1C 80088CEC 2400A0AF */  sw         $zero, 0x24($sp)
/* 6AA3A20 80088CF0 5B3B010C */  jal        func_8004ED6C
/* 6AA3A24 80088CF4 2800A0AF */   sw        $zero, 0x28($sp)
/* 6AA3A28 80088CF8 2000A38F */  lw         $v1, 0x20($sp)
/* 6AA3A2C 80088CFC 00000296 */  lhu        $v0, 0x0($s0)
/* 6AA3A30 80088D00 00000000 */  nop
/* 6AA3A34 80088D04 21104300 */  addu       $v0, $v0, $v1
/* 6AA3A38 80088D08 000002A6 */  sh         $v0, 0x0($s0)
/* 6AA3A3C 80088D0C 2400A38F */  lw         $v1, 0x24($sp)
/* 6AA3A40 80088D10 02000296 */  lhu        $v0, 0x2($s0)
/* 6AA3A44 80088D14 00000000 */  nop
/* 6AA3A48 80088D18 21104300 */  addu       $v0, $v0, $v1
/* 6AA3A4C 80088D1C 020002A6 */  sh         $v0, 0x2($s0)
/* 6AA3A50 80088D20 2800A38F */  lw         $v1, 0x28($sp)
/* 6AA3A54 80088D24 04000296 */  lhu        $v0, 0x4($s0)
/* 6AA3A58 80088D28 00000000 */  nop
/* 6AA3A5C 80088D2C 21104300 */  addu       $v0, $v0, $v1
/* 6AA3A60 80088D30 E9230208 */  j          .Llevel_31_80088FA4
/* 6AA3A64 80088D34 040002A6 */   sh        $v0, 0x4($s0)
.Llevel_31_80088D38:
/* 6AA3A68 80088D38 51004492 */  lbu        $a0, 0x51($s2)
/* 6AA3A6C 80088D3C 00000000 */  nop
/* 6AA3A70 80088D40 26008010 */  beqz       $a0, .Llevel_31_80088DDC
/* 6AA3A74 80088D44 1000033C */   lui       $v1, (0x100000 >> 16)
/* 6AA3A78 80088D48 1800428E */  lw         $v0, 0x18($s2)
/* 6AA3A7C 80088D4C 00000000 */  nop
/* 6AA3A80 80088D50 24104300 */  and        $v0, $v0, $v1
/* 6AA3A84 80088D54 21004010 */  beqz       $v0, .Llevel_31_80088DDC
/* 6AA3A88 80088D58 40100400 */   sll       $v0, $a0, 1
/* 6AA3A8C 80088D5C 21105E00 */  addu       $v0, $v0, $fp
/* 6AA3A90 80088D60 00004384 */  lh         $v1, 0x0($v0)
/* 6AA3A94 80088D64 00000000 */  nop
/* 6AA3A98 80088D68 80100300 */  sll        $v0, $v1, 2
/* 6AA3A9C 80088D6C 21104300 */  addu       $v0, $v0, $v1
/* 6AA3AA0 80088D70 00190200 */  sll        $v1, $v0, 4
/* 6AA3AA4 80088D74 23186200 */  subu       $v1, $v1, $v0
/* 6AA3AA8 80088D78 00000296 */  lhu        $v0, 0x0($s0)
/* 6AA3AAC 80088D7C C31A0300 */  sra        $v1, $v1, 11
/* 6AA3AB0 80088D80 21104300 */  addu       $v0, $v0, $v1
/* 6AA3AB4 80088D84 000002A6 */  sh         $v0, 0x0($s0)
/* 6AA3AB8 80088D88 51004292 */  lbu        $v0, 0x51($s2)
/* 6AA3ABC 80088D8C 28000424 */  addiu      $a0, $zero, 0x28
/* 6AA3AC0 80088D90 40100200 */  sll        $v0, $v0, 1
/* 6AA3AC4 80088D94 21105700 */  addu       $v0, $v0, $s7
/* 6AA3AC8 80088D98 00004384 */  lh         $v1, 0x0($v0)
/* 6AA3ACC 80088D9C 46000524 */  addiu      $a1, $zero, 0x46
/* 6AA3AD0 80088DA0 80100300 */  sll        $v0, $v1, 2
/* 6AA3AD4 80088DA4 21104300 */  addu       $v0, $v0, $v1
/* 6AA3AD8 80088DA8 00190200 */  sll        $v1, $v0, 4
/* 6AA3ADC 80088DAC 23186200 */  subu       $v1, $v1, $v0
/* 6AA3AE0 80088DB0 02000296 */  lhu        $v0, 0x2($s0)
/* 6AA3AE4 80088DB4 C31A0300 */  sra        $v1, $v1, 11
/* 6AA3AE8 80088DB8 21104300 */  addu       $v0, $v0, $v1
/* 6AA3AEC 80088DBC 020002A6 */  sh         $v0, 0x2($s0)
.Llevel_31_80088DC0:
/* 6AA3AF0 80088DC0 DBD8000C */  jal        func_8003636C
/* 6AA3AF4 80088DC4 00000000 */   nop
/* 6AA3AF8 80088DC8 04000396 */  lhu        $v1, 0x4($s0)
/* 6AA3AFC 80088DCC 00000000 */  nop
/* 6AA3B00 80088DD0 21186200 */  addu       $v1, $v1, $v0
/* 6AA3B04 80088DD4 E9230208 */  j          .Llevel_31_80088FA4
/* 6AA3B08 80088DD8 040003A6 */   sh        $v1, 0x4($s0)
.Llevel_31_80088DDC:
/* 6AA3B0C 80088DDC 1800438E */  lw         $v1, 0x18($s2)
/* 6AA3B10 80088DE0 0400023C */  lui        $v0, (0x40000 >> 16)
/* 6AA3B14 80088DE4 24106200 */  and        $v0, $v1, $v0
/* 6AA3B18 80088DE8 0C004010 */  beqz       $v0, .Llevel_31_80088E1C
/* 6AA3B1C 80088DEC 00000000 */   nop
/* 6AA3B20 80088DF0 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 6AA3B24 80088DF4 B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 6AA3B28 80088DF8 00000396 */  lhu        $v1, 0x0($s0)
/* 6AA3B2C 80088DFC 43110200 */  sra        $v0, $v0, 5
/* 6AA3B30 80088E00 21186200 */  addu       $v1, $v1, $v0
/* 6AA3B34 80088E04 000003A6 */  sh         $v1, 0x0($s0)
/* 6AA3B38 80088E08 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 6AA3B3C 80088E0C B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 6AA3B40 80088E10 02000396 */  lhu        $v1, 0x2($s0)
/* 6AA3B44 80088E14 BB230208 */  j          .Llevel_31_80088EEC
/* 6AA3B48 80088E18 43110200 */   sra       $v0, $v0, 5
.Llevel_31_80088E1C:
/* 6AA3B4C 80088E1C 0002023C */  lui        $v0, (0x2000000 >> 16)
/* 6AA3B50 80088E20 24106200 */  and        $v0, $v1, $v0
/* 6AA3B54 80088E24 1C004010 */  beqz       $v0, .Llevel_31_80088E98
/* 6AA3B58 80088E28 21300000 */   addu      $a2, $zero, $zero
/* 6AA3B5C 80088E2C 0C00238E */  lw         $v1, 0xC($s1)
/* 6AA3B60 80088E30 0000C48E */  lw         $a0, 0x0($s6)
/* 6AA3B64 80088E34 1000228E */  lw         $v0, 0x10($s1)
/* 6AA3B68 80088E38 0400C58E */  lw         $a1, 0x4($s6)
/* 6AA3B6C 80088E3C 23206400 */  subu       $a0, $v1, $a0
/* 6AA3B70 80088E40 203A010C */  jal        func_8004E880
/* 6AA3B74 80088E44 23284500 */   subu      $a1, $v0, $a1
/* 6AA3B78 80088E48 40100200 */  sll        $v0, $v0, 1
/* 6AA3B7C 80088E4C 21105E00 */  addu       $v0, $v0, $fp
/* 6AA3B80 80088E50 00004284 */  lh         $v0, 0x0($v0)
/* 6AA3B84 80088E54 21300000 */  addu       $a2, $zero, $zero
/* 6AA3B88 80088E58 03110200 */  sra        $v0, $v0, 4
/* 6AA3B8C 80088E5C 3000A2AF */  sw         $v0, 0x30($sp)
/* 6AA3B90 80088E60 0C00238E */  lw         $v1, 0xC($s1)
/* 6AA3B94 80088E64 0000C48E */  lw         $a0, 0x0($s6)
/* 6AA3B98 80088E68 1000228E */  lw         $v0, 0x10($s1)
/* 6AA3B9C 80088E6C 0400C58E */  lw         $a1, 0x4($s6)
/* 6AA3BA0 80088E70 23206400 */  subu       $a0, $v1, $a0
/* 6AA3BA4 80088E74 203A010C */  jal        func_8004E880
/* 6AA3BA8 80088E78 23284500 */   subu      $a1, $v0, $a1
/* 6AA3BAC 80088E7C 40100200 */  sll        $v0, $v0, 1
/* 6AA3BB0 80088E80 21105700 */  addu       $v0, $v0, $s7
/* 6AA3BB4 80088E84 00004284 */  lh         $v0, 0x0($v0)
/* 6AA3BB8 80088E88 3000A38F */  lw         $v1, 0x30($sp)
/* 6AA3BBC 80088E8C 3800A0AF */  sw         $zero, 0x38($sp)
/* 6AA3BC0 80088E90 DF230208 */  j          .Llevel_31_80088F7C
/* 6AA3BC4 80088E94 03110200 */   sra       $v0, $v0, 4
.Llevel_31_80088E98:
/* 6AA3BC8 80088E98 0200023C */  lui        $v0, (0x20000 >> 16)
/* 6AA3BCC 80088E9C 24106200 */  and        $v0, $v1, $v0
/* 6AA3BD0 80088EA0 15004010 */  beqz       $v0, .Llevel_31_80088EF8
/* 6AA3BD4 80088EA4 04000224 */   addiu     $v0, $zero, 0x4
/* 6AA3BD8 80088EA8 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 6AA3BDC 80088EAC 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 6AA3BE0 80088EB0 00000000 */  nop
/* 6AA3BE4 80088EB4 03006210 */  beq        $v1, $v0, .Llevel_31_80088EC4
/* 6AA3BE8 80088EB8 0C000224 */   addiu     $v0, $zero, 0xC
/* 6AA3BEC 80088EBC 0E006214 */  bne        $v1, $v0, .Llevel_31_80088EF8
/* 6AA3BF0 80088EC0 00000000 */   nop
.Llevel_31_80088EC4:
/* 6AA3BF4 80088EC4 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 6AA3BF8 80088EC8 B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 6AA3BFC 80088ECC 00000396 */  lhu        $v1, 0x0($s0)
/* 6AA3C00 80088ED0 83110200 */  sra        $v0, $v0, 6
/* 6AA3C04 80088ED4 21186200 */  addu       $v1, $v1, $v0
/* 6AA3C08 80088ED8 000003A6 */  sh         $v1, 0x0($s0)
/* 6AA3C0C 80088EDC 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 6AA3C10 80088EE0 B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 6AA3C14 80088EE4 02000396 */  lhu        $v1, 0x2($s0)
/* 6AA3C18 80088EE8 83110200 */  sra        $v0, $v0, 6
.Llevel_31_80088EEC:
/* 6AA3C1C 80088EEC 21186200 */  addu       $v1, $v1, $v0
/* 6AA3C20 80088EF0 E9230208 */  j          .Llevel_31_80088FA4
/* 6AA3C24 80088EF4 020003A6 */   sh        $v1, 0x2($s0)
.Llevel_31_80088EF8:
/* 6AA3C28 80088EF8 36004386 */  lh         $v1, 0x36($s2)
/* 6AA3C2C 80088EFC 84000224 */  addiu      $v0, $zero, 0x84
/* 6AA3C30 80088F00 28006210 */  beq        $v1, $v0, .Llevel_31_80088FA4
/* 6AA3C34 80088F04 00000000 */   nop
/* 6AA3C38 80088F08 51004292 */  lbu        $v0, 0x51($s2)
/* 6AA3C3C 80088F0C 00000000 */  nop
/* 6AA3C40 80088F10 0A004014 */  bnez       $v0, .Llevel_31_80088F3C
/* 6AA3C44 80088F14 40200200 */   sll       $a0, $v0, 1
/* 6AA3C48 80088F18 21300000 */  addu       $a2, $zero, $zero
/* 6AA3C4C 80088F1C 0C00238E */  lw         $v1, 0xC($s1)
/* 6AA3C50 80088F20 0000C48E */  lw         $a0, 0x0($s6)
/* 6AA3C54 80088F24 1000228E */  lw         $v0, 0x10($s1)
/* 6AA3C58 80088F28 0400C58E */  lw         $a1, 0x4($s6)
/* 6AA3C5C 80088F2C 23206400 */  subu       $a0, $v1, $a0
/* 6AA3C60 80088F30 203A010C */  jal        func_8004E880
/* 6AA3C64 80088F34 23284500 */   subu      $a1, $v0, $a1
/* 6AA3C68 80088F38 40200200 */  sll        $a0, $v0, 1
.Llevel_31_80088F3C:
/* 6AA3C6C 80088F3C 21109E00 */  addu       $v0, $a0, $fp
/* 6AA3C70 80088F40 00004284 */  lh         $v0, 0x0($v0)
/* 6AA3C74 80088F44 21209700 */  addu       $a0, $a0, $s7
/* 6AA3C78 80088F48 C0180200 */  sll        $v1, $v0, 3
/* 6AA3C7C 80088F4C 21186200 */  addu       $v1, $v1, $v0
/* 6AA3C80 80088F50 80180300 */  sll        $v1, $v1, 2
/* 6AA3C84 80088F54 23186200 */  subu       $v1, $v1, $v0
/* 6AA3C88 80088F58 831A0300 */  sra        $v1, $v1, 10
/* 6AA3C8C 80088F5C 3000A3AF */  sw         $v1, 0x30($sp)
/* 6AA3C90 80088F60 00008484 */  lh         $a0, 0x0($a0)
/* 6AA3C94 80088F64 3800A0AF */  sw         $zero, 0x38($sp)
/* 6AA3C98 80088F68 C0100400 */  sll        $v0, $a0, 3
/* 6AA3C9C 80088F6C 21104400 */  addu       $v0, $v0, $a0
/* 6AA3CA0 80088F70 80100200 */  sll        $v0, $v0, 2
/* 6AA3CA4 80088F74 23104400 */  subu       $v0, $v0, $a0
/* 6AA3CA8 80088F78 83120200 */  sra        $v0, $v0, 10
.Llevel_31_80088F7C:
/* 6AA3CAC 80088F7C 3400A2AF */  sw         $v0, 0x34($sp)
/* 6AA3CB0 80088F80 00000296 */  lhu        $v0, 0x0($s0)
/* 6AA3CB4 80088F84 00000000 */  nop
/* 6AA3CB8 80088F88 21104300 */  addu       $v0, $v0, $v1
/* 6AA3CBC 80088F8C 000002A6 */  sh         $v0, 0x0($s0)
/* 6AA3CC0 80088F90 3400A38F */  lw         $v1, 0x34($sp)
.Llevel_31_80088F94:
/* 6AA3CC4 80088F94 02000296 */  lhu        $v0, 0x2($s0)
/* 6AA3CC8 80088F98 00000000 */  nop
/* 6AA3CCC 80088F9C 21104300 */  addu       $v0, $v0, $v1
/* 6AA3CD0 80088FA0 020002A6 */  sh         $v0, 0x2($s0)
.Llevel_31_80088FA4:
/* 6AA3CD4 80088FA4 44004292 */  lbu        $v0, 0x44($s2)
/* 6AA3CD8 80088FA8 00000000 */  nop
/* 6AA3CDC 80088FAC 440022A2 */  sb         $v0, 0x44($s1)
/* 6AA3CE0 80088FB0 45004292 */  lbu        $v0, 0x45($s2)
/* 6AA3CE4 80088FB4 00000000 */  nop
/* 6AA3CE8 80088FB8 450022A2 */  sb         $v0, 0x45($s1)
/* 6AA3CEC 80088FBC 46004292 */  lbu        $v0, 0x46($s2)
/* 6AA3CF0 80088FC0 9171010C */  jal        rand
/* 6AA3CF4 80088FC4 460022A2 */   sb        $v0, 0x46($s1)
/* 6AA3CF8 80088FC8 06004230 */  andi       $v0, $v0, 0x6
/* 6AA3CFC 80088FCC FDFF4224 */  addiu      $v0, $v0, -0x3
/* 6AA3D00 80088FD0 9171010C */  jal        rand
/* 6AA3D04 80088FD4 060002A6 */   sh        $v0, 0x6($s0)
/* 6AA3D08 80088FD8 06004230 */  andi       $v0, $v0, 0x6
/* 6AA3D0C 80088FDC FDFF4224 */  addiu      $v0, $v0, -0x3
/* 6AA3D10 80088FE0 9171010C */  jal        rand
/* 6AA3D14 80088FE4 080002A6 */   sh        $v0, 0x8($s0)
/* 6AA3D18 80088FE8 1E000424 */  addiu      $a0, $zero, 0x1E
/* 6AA3D1C 80088FEC 06004230 */  andi       $v0, $v0, 0x6
/* 6AA3D20 80088FF0 FDFF4224 */  addiu      $v0, $v0, -0x3
/* 6AA3D24 80088FF4 0A0002A6 */  sh         $v0, 0xA($s0)
/* 6AA3D28 80088FF8 1400428E */  lw         $v0, 0x14($s2)
/* 6AA3D2C 80088FFC 32000524 */  addiu      $a1, $zero, 0x32
/* 6AA3D30 80089000 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 6AA3D34 80089004 DBD8000C */  jal        func_8003636C
/* 6AA3D38 80089008 0E0002A6 */   sh        $v0, 0xE($s0)
/* 6AA3D3C 8008900C 9800A88F */  lw         $t0, 0x98($sp)
/* 6AA3D40 80089010 21202002 */  addu       $a0, $s1, $zero
/* 6AA3D44 80089014 0C0002A6 */  sh         $v0, 0xC($s0)
/* 6AA3D48 80089018 08000224 */  addiu      $v0, $zero, 0x8
/* 6AA3D4C 8008901C 100002A6 */  sh         $v0, 0x10($s0)
/* 6AA3D50 80089020 21281301 */  addu       $a1, $t0, $s3
/* 6AA3D54 80089024 9C00A897 */  lhu        $t0, 0x9C($sp)
/* 6AA3D58 80089028 E0D3000C */  jal        func_80034F80
/* 6AA3D5C 8008902C 120008A6 */   sh        $t0, 0x12($s0)
/* 6AA3D60 80089030 01000224 */  addiu      $v0, $zero, 0x1
/* 6AA3D64 80089034 140002AE */  sw         $v0, 0x14($s0)
/* 6AA3D68 80089038 080020AE */  sw         $zero, 0x8($s1)
.Llevel_31_8008903C:
/* 6AA3D6C 8008903C 01007326 */  addiu      $s3, $s3, 0x1
/* 6AA3D70 80089040 2A107502 */  slt        $v0, $s3, $s5
/* 6AA3D74 80089044 A4FE4014 */  bnez       $v0, .Llevel_31_80088AD8
/* 6AA3D78 80089048 00000000 */   nop
.Llevel_31_8008904C:
/* 6AA3D7C 8008904C 8400BF8F */  lw         $ra, 0x84($sp)
/* 6AA3D80 80089050 8000BE8F */  lw         $fp, 0x80($sp)
/* 6AA3D84 80089054 7C00B78F */  lw         $s7, 0x7C($sp)
/* 6AA3D88 80089058 7800B68F */  lw         $s6, 0x78($sp)
/* 6AA3D8C 8008905C 7400B58F */  lw         $s5, 0x74($sp)
/* 6AA3D90 80089060 7000B48F */  lw         $s4, 0x70($sp)
/* 6AA3D94 80089064 6C00B38F */  lw         $s3, 0x6C($sp)
/* 6AA3D98 80089068 6800B28F */  lw         $s2, 0x68($sp)
/* 6AA3D9C 8008906C 6400B18F */  lw         $s1, 0x64($sp)
/* 6AA3DA0 80089070 6000B08F */  lw         $s0, 0x60($sp)
/* 6AA3DA4 80089074 8800BD27 */  addiu      $sp, $sp, 0x88
/* 6AA3DA8 80089078 0800E003 */  jr         $ra
/* 6AA3DAC 8008907C 00000000 */   nop
.size func_level_31_80088990, . - func_level_31_80088990
