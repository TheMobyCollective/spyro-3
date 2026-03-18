.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_24_800789F0
/* 5DF3720 800789F0 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 5DF3724 800789F4 4000B0AF */  sw         $s0, 0x40($sp)
/* 5DF3728 800789F8 21808000 */  addu       $s0, $a0, $zero
/* 5DF372C 800789FC 5400BFAF */  sw         $ra, 0x54($sp)
/* 5DF3730 80078A00 5000B4AF */  sw         $s4, 0x50($sp)
/* 5DF3734 80078A04 4C00B3AF */  sw         $s3, 0x4C($sp)
/* 5DF3738 80078A08 4800B2AF */  sw         $s2, 0x48($sp)
/* 5DF373C 80078A0C 4400B1AF */  sw         $s1, 0x44($sp)
/* 5DF3740 80078A10 1800028E */  lw         $v0, 0x18($s0)
/* 5DF3744 80078A14 0000148E */  lw         $s4, 0x0($s0)
/* 5DF3748 80078A18 8C004010 */  beqz       $v0, .Llevel_24_80078C4C
/* 5DF374C 80078A1C 01000224 */   addiu     $v0, $zero, 0x1
/* 5DF3750 80078A20 48000392 */  lbu        $v1, 0x48($s0)
/* 5DF3754 80078A24 00000000 */  nop
/* 5DF3758 80078A28 8A006214 */  bne        $v1, $v0, .Llevel_24_80078C54
/* 5DF375C 80078A2C 02000224 */   addiu     $v0, $zero, 0x2
/* 5DF3760 80078A30 21280000 */  addu       $a1, $zero, $zero
/* 5DF3764 80078A34 AFEE000C */  jal        func_8003BABC
/* 5DF3768 80078A38 21300000 */   addu      $a2, $zero, $zero
/* 5DF376C 80078A3C FF000224 */  addiu      $v0, $zero, 0xFF
/* 5DF3770 80078A40 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 5DF3774 80078A44 0000838E */  lw         $v1, 0x0($s4)
/* 5DF3778 80078A48 1E000224 */  addiu      $v0, $zero, 0x1E
/* 5DF377C 80078A4C 040082AE */  sw         $v0, 0x4($s4)
/* 5DF3780 80078A50 02006284 */  lh         $v0, 0x2($v1)
/* 5DF3784 80078A54 00006384 */  lh         $v1, 0x0($v1)
/* 5DF3788 80078A58 00000000 */  nop
/* 5DF378C 80078A5C 2A104300 */  slt        $v0, $v0, $v1
/* 5DF3790 80078A60 50004014 */  bnez       $v0, .Llevel_24_80078BA4
/* 5DF3794 80078A64 21880000 */   addu      $s1, $zero, $zero
/* 5DF3798 80078A68 70000224 */  addiu      $v0, $zero, 0x70
/* 5DF379C 80078A6C 490002A2 */  sb         $v0, 0x49($s0)
/* 5DF37A0 80078A70 03001324 */  addiu      $s3, $zero, 0x3
/* 5DF37A4 80078A74 01001224 */  addiu      $s2, $zero, 0x1
.Llevel_24_80078A78:
/* 5DF37A8 80078A78 0780023C */  lui        $v0, %hi(D_8006C578)
/* 5DF37AC 80078A7C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 5DF37B0 80078A80 0780033C */  lui        $v1, %hi(D_8006C574)
/* 5DF37B4 80078A84 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 5DF37B8 80078A88 00000000 */  nop
/* 5DF37BC 80078A8C 23104300 */  subu       $v0, $v0, $v1
/* 5DF37C0 80078A90 15004228 */  slti       $v0, $v0, 0x15
/* 5DF37C4 80078A94 12004014 */  bnez       $v0, .Llevel_24_80078AE0
/* 5DF37C8 80078A98 32010424 */   addiu     $a0, $zero, 0x132
/* 5DF37CC 80078A9C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5DF37D0 80078AA0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5DF37D4 80078AA4 00000000 */  nop
/* 5DF37D8 80078AA8 09F84000 */  jalr       $v0
/* 5DF37DC 80078AAC 21280002 */   addu      $a1, $s0, $zero
/* 5DF37E0 80078AB0 21184000 */  addu       $v1, $v0, $zero
/* 5DF37E4 80078AB4 06006010 */  beqz       $v1, .Llevel_24_80078AD0
/* 5DF37E8 80078AB8 0500222A */   slti      $v0, $s1, 0x5
/* 5DF37EC 80078ABC 03004010 */  beqz       $v0, .Llevel_24_80078ACC
/* 5DF37F0 80078AC0 00000000 */   nop
/* 5DF37F4 80078AC4 B4E20108 */  j          .Llevel_24_80078AD0
/* 5DF37F8 80078AC8 490073A0 */   sb        $s3, 0x49($v1)
.Llevel_24_80078ACC:
/* 5DF37FC 80078ACC 3C0072A0 */  sb         $s2, 0x3C($v1)
.Llevel_24_80078AD0:
/* 5DF3800 80078AD0 01003126 */  addiu      $s1, $s1, 0x1
/* 5DF3804 80078AD4 0C00222A */  slti       $v0, $s1, 0xC
/* 5DF3808 80078AD8 E7FF4014 */  bnez       $v0, .Llevel_24_80078A78
/* 5DF380C 80078ADC 00000000 */   nop
.Llevel_24_80078AE0:
/* 5DF3810 80078AE0 21880000 */  addu       $s1, $zero, $zero
/* 5DF3814 80078AE4 1000A427 */  addiu      $a0, $sp, 0x10
.Llevel_24_80078AE8:
/* 5DF3818 80078AE8 5E3C010C */  jal        func_8004F178
/* 5DF381C 80078AEC 0C000526 */   addiu     $a1, $s0, 0xC
/* 5DF3820 80078AF0 9171010C */  jal        rand
/* 5DF3824 80078AF4 01003126 */   addiu     $s1, $s1, 0x1
/* 5DF3828 80078AF8 1000A38F */  lw         $v1, 0x10($sp)
/* 5DF382C 80078AFC FF014230 */  andi       $v0, $v0, 0x1FF
/* 5DF3830 80078B00 00016324 */  addiu      $v1, $v1, 0x100
/* 5DF3834 80078B04 23186200 */  subu       $v1, $v1, $v0
/* 5DF3838 80078B08 9171010C */  jal        rand
/* 5DF383C 80078B0C 1000A3AF */   sw        $v1, 0x10($sp)
/* 5DF3840 80078B10 1400A38F */  lw         $v1, 0x14($sp)
/* 5DF3844 80078B14 FF014230 */  andi       $v0, $v0, 0x1FF
/* 5DF3848 80078B18 00016324 */  addiu      $v1, $v1, 0x100
/* 5DF384C 80078B1C 23186200 */  subu       $v1, $v1, $v0
/* 5DF3850 80078B20 9171010C */  jal        rand
/* 5DF3854 80078B24 1400A3AF */   sw        $v1, 0x14($sp)
/* 5DF3858 80078B28 01000424 */  addiu      $a0, $zero, 0x1
/* 5DF385C 80078B2C 02000524 */  addiu      $a1, $zero, 0x2
/* 5DF3860 80078B30 1000A627 */  addiu      $a2, $sp, 0x10
/* 5DF3864 80078B34 21380000 */  addu       $a3, $zero, $zero
/* 5DF3868 80078B38 FF014230 */  andi       $v0, $v0, 0x1FF
/* 5DF386C 80078B3C 1800A38F */  lw         $v1, 0x18($sp)
/* 5DF3870 80078B40 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 5DF3874 80078B44 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 5DF3878 80078B48 21186200 */  addu       $v1, $v1, $v0
/* 5DF387C 80078B4C 09F80001 */  jalr       $t0
/* 5DF3880 80078B50 1800A3AF */   sw        $v1, 0x18($sp)
/* 5DF3884 80078B54 04000424 */  addiu      $a0, $zero, 0x4
/* 5DF3888 80078B58 46000524 */  addiu      $a1, $zero, 0x46
/* 5DF388C 80078B5C 1000A627 */  addiu      $a2, $sp, 0x10
/* 5DF3890 80078B60 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 5DF3894 80078B64 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 5DF3898 80078B68 00000000 */  nop
/* 5DF389C 80078B6C 09F84000 */  jalr       $v0
/* 5DF38A0 80078B70 18000724 */   addiu     $a3, $zero, 0x18
/* 5DF38A4 80078B74 0400222A */  slti       $v0, $s1, 0x4
/* 5DF38A8 80078B78 DBFF4014 */  bnez       $v0, .Llevel_24_80078AE8
/* 5DF38AC 80078B7C 1000A427 */   addiu     $a0, $sp, 0x10
/* 5DF38B0 80078B80 21200002 */  addu       $a0, $s0, $zero
/* 5DF38B4 80078B84 21280000 */  addu       $a1, $zero, $zero
/* 5DF38B8 80078B88 21300000 */  addu       $a2, $zero, $zero
/* 5DF38BC 80078B8C 9ADA000C */  jal        func_80036A68
/* 5DF38C0 80078B90 21380000 */   addu      $a3, $zero, $zero
/* 5DF38C4 80078B94 C656010C */  jal        func_80055B18
/* 5DF38C8 80078B98 21200002 */   addu      $a0, $s0, $zero
/* 5DF38CC 80078B9C 99E30108 */  j          .Llevel_24_80078E64
/* 5DF38D0 80078BA0 00000000 */   nop
.Llevel_24_80078BA4:
/* 5DF38D4 80078BA4 2000B327 */  addiu      $s3, $sp, 0x20
/* 5DF38D8 80078BA8 0C001226 */  addiu      $s2, $s0, 0xC
/* 5DF38DC 80078BAC 21206002 */  addu       $a0, $s3, $zero
.Llevel_24_80078BB0:
/* 5DF38E0 80078BB0 5E3C010C */  jal        func_8004F178
/* 5DF38E4 80078BB4 21284002 */   addu      $a1, $s2, $zero
/* 5DF38E8 80078BB8 21200000 */  addu       $a0, $zero, $zero
/* 5DF38EC 80078BBC F7D8000C */  jal        func_800363DC
/* 5DF38F0 80078BC0 2C010524 */   addiu     $a1, $zero, 0x12C
/* 5DF38F4 80078BC4 21200000 */  addu       $a0, $zero, $zero
/* 5DF38F8 80078BC8 2C010524 */  addiu      $a1, $zero, 0x12C
/* 5DF38FC 80078BCC 0C00038E */  lw         $v1, 0xC($s0)
/* 5DF3900 80078BD0 01003126 */  addiu      $s1, $s1, 0x1
/* 5DF3904 80078BD4 21186200 */  addu       $v1, $v1, $v0
/* 5DF3908 80078BD8 F7D8000C */  jal        func_800363DC
/* 5DF390C 80078BDC 0C0003AE */   sw        $v1, 0xC($s0)
/* 5DF3910 80078BE0 21200000 */  addu       $a0, $zero, $zero
/* 5DF3914 80078BE4 1000038E */  lw         $v1, 0x10($s0)
/* 5DF3918 80078BE8 BC020524 */  addiu      $a1, $zero, 0x2BC
/* 5DF391C 80078BEC 21186200 */  addu       $v1, $v1, $v0
/* 5DF3920 80078BF0 DBD8000C */  jal        func_8003636C
/* 5DF3924 80078BF4 100003AE */   sw        $v1, 0x10($s0)
/* 5DF3928 80078BF8 01000424 */  addiu      $a0, $zero, 0x1
/* 5DF392C 80078BFC 0C000524 */  addiu      $a1, $zero, 0xC
/* 5DF3930 80078C00 21300002 */  addu       $a2, $s0, $zero
/* 5DF3934 80078C04 03000724 */  addiu      $a3, $zero, 0x3
/* 5DF3938 80078C08 1400038E */  lw         $v1, 0x14($s0)
/* 5DF393C 80078C0C 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 5DF3940 80078C10 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 5DF3944 80078C14 21186200 */  addu       $v1, $v1, $v0
/* 5DF3948 80078C18 09F80001 */  jalr       $t0
/* 5DF394C 80078C1C 140003AE */   sw        $v1, 0x14($s0)
/* 5DF3950 80078C20 21204002 */  addu       $a0, $s2, $zero
/* 5DF3954 80078C24 5E3C010C */  jal        func_8004F178
/* 5DF3958 80078C28 21286002 */   addu      $a1, $s3, $zero
/* 5DF395C 80078C2C 2800222A */  slti       $v0, $s1, 0x28
/* 5DF3960 80078C30 DFFF4014 */  bnez       $v0, .Llevel_24_80078BB0
/* 5DF3964 80078C34 21206002 */   addu      $a0, $s3, $zero
/* 5DF3968 80078C38 02000224 */  addiu      $v0, $zero, 0x2
/* 5DF396C 80078C3C 410000A2 */  sb         $zero, 0x41($s0)
/* 5DF3970 80078C40 4C0000A2 */  sb         $zero, 0x4C($s0)
/* 5DF3974 80078C44 4D0000A2 */  sb         $zero, 0x4D($s0)
/* 5DF3978 80078C48 480002A2 */  sb         $v0, 0x48($s0)
.Llevel_24_80078C4C:
/* 5DF397C 80078C4C 48000392 */  lbu        $v1, 0x48($s0)
/* 5DF3980 80078C50 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_24_80078C54:
/* 5DF3984 80078C54 12006210 */  beq        $v1, $v0, .Llevel_24_80078CA0
/* 5DF3988 80078C58 180000AE */   sw        $zero, 0x18($s0)
/* 5DF398C 80078C5C 03006228 */  slti       $v0, $v1, 0x3
/* 5DF3990 80078C60 05004010 */  beqz       $v0, .Llevel_24_80078C78
/* 5DF3994 80078C64 00000000 */   nop
/* 5DF3998 80078C68 0A006010 */  beqz       $v1, .Llevel_24_80078C94
/* 5DF399C 80078C6C 00000000 */   nop
/* 5DF39A0 80078C70 99E30108 */  j          .Llevel_24_80078E64
/* 5DF39A4 80078C74 00000000 */   nop
.Llevel_24_80078C78:
/* 5DF39A8 80078C78 03000224 */  addiu      $v0, $zero, 0x3
/* 5DF39AC 80078C7C 33006210 */  beq        $v1, $v0, .Llevel_24_80078D4C
/* 5DF39B0 80078C80 04000224 */   addiu     $v0, $zero, 0x4
/* 5DF39B4 80078C84 38006210 */  beq        $v1, $v0, .Llevel_24_80078D68
/* 5DF39B8 80078C88 00000000 */   nop
/* 5DF39BC 80078C8C 99E30108 */  j          .Llevel_24_80078E64
/* 5DF39C0 80078C90 00000000 */   nop
.Llevel_24_80078C94:
/* 5DF39C4 80078C94 0000828E */  lw         $v0, 0x0($s4)
/* 5DF39C8 80078C98 97E30108 */  j          .Llevel_24_80078E5C
/* 5DF39CC 80078C9C 020040A4 */   sh        $zero, 0x2($v0)
.Llevel_24_80078CA0:
/* 5DF39D0 80078CA0 04008426 */  addiu      $a0, $s4, 0x4
/* 5DF39D4 80078CA4 69D6000C */  jal        func_800359A4
/* 5DF39D8 80078CA8 04000524 */   addiu     $a1, $zero, 0x4
/* 5DF39DC 80078CAC 6D004010 */  beqz       $v0, .Llevel_24_80078E64
/* 5DF39E0 80078CB0 01000324 */   addiu     $v1, $zero, 0x1
/* 5DF39E4 80078CB4 28000224 */  addiu      $v0, $zero, 0x28
/* 5DF39E8 80078CB8 410003A2 */  sb         $v1, 0x41($s0)
/* 5DF39EC 80078CBC 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 5DF39F0 80078CC0 4D0003A2 */  sb         $v1, 0x4D($s0)
/* 5DF39F4 80078CC4 0000828E */  lw         $v0, 0x0($s4)
/* 5DF39F8 80078CC8 0C000426 */  addiu      $a0, $s0, 0xC
/* 5DF39FC 80078CCC 02004584 */  lh         $a1, 0x2($v0)
/* 5DF3A00 80078CD0 0C00428C */  lw         $v0, 0xC($v0)
/* 5DF3A04 80078CD4 00290500 */  sll        $a1, $a1, 4
/* 5DF3A08 80078CD8 5E3C010C */  jal        func_8004F178
/* 5DF3A0C 80078CDC 21284500 */   addu      $a1, $v0, $a1
/* 5DF3A10 80078CE0 21200002 */  addu       $a0, $s0, $zero
/* 5DF3A14 80078CE4 4957010C */  jal        func_80055D24
/* 5DF3A18 80078CE8 02000524 */   addiu     $a1, $zero, 0x2
/* 5DF3A1C 80078CEC 0000828E */  lw         $v0, 0x0($s4)
/* 5DF3A20 80078CF0 00000000 */  nop
/* 5DF3A24 80078CF4 02004584 */  lh         $a1, 0x2($v0)
/* 5DF3A28 80078CF8 0C00428C */  lw         $v0, 0xC($v0)
/* 5DF3A2C 80078CFC 00290500 */  sll        $a1, $a1, 4
/* 5DF3A30 80078D00 1000A424 */  addiu      $a0, $a1, 0x10
/* 5DF3A34 80078D04 21204400 */  addu       $a0, $v0, $a0
/* 5DF3A38 80078D08 B94E000C */  jal        func_80013AE4
/* 5DF3A3C 80078D0C 21284500 */   addu      $a1, $v0, $a1
/* 5DF3A40 80078D10 0000838E */  lw         $v1, 0x0($s4)
/* 5DF3A44 80078D14 00000000 */  nop
/* 5DF3A48 80078D18 02006294 */  lhu        $v0, 0x2($v1)
/* 5DF3A4C 80078D1C 21200002 */  addu       $a0, $s0, $zero
/* 5DF3A50 80078D20 02004224 */  addiu      $v0, $v0, 0x2
/* 5DF3A54 80078D24 020062A4 */  sh         $v0, 0x2($v1)
/* 5DF3A58 80078D28 14000224 */  addiu      $v0, $zero, 0x14
/* 5DF3A5C 80078D2C 040082AE */  sw         $v0, 0x4($s4)
/* 5DF3A60 80078D30 FE000224 */  addiu      $v0, $zero, 0xFE
/* 5DF3A64 80078D34 4ED7000C */  jal        func_80035D38
/* 5DF3A68 80078D38 520002A2 */   sb        $v0, 0x52($s0)
/* 5DF3A6C 80078D3C 9C58010C */  jal        func_80056270
/* 5DF3A70 80078D40 21200002 */   addu      $a0, $s0, $zero
/* 5DF3A74 80078D44 98E30108 */  j          .Llevel_24_80078E60
/* 5DF3A78 80078D48 03000224 */   addiu     $v0, $zero, 0x3
.Llevel_24_80078D4C:
/* 5DF3A7C 80078D4C 04008426 */  addiu      $a0, $s4, 0x4
/* 5DF3A80 80078D50 69D6000C */  jal        func_800359A4
/* 5DF3A84 80078D54 04000524 */   addiu     $a1, $zero, 0x4
/* 5DF3A88 80078D58 42004010 */  beqz       $v0, .Llevel_24_80078E64
/* 5DF3A8C 80078D5C 04000224 */   addiu     $v0, $zero, 0x4
/* 5DF3A90 80078D60 99E30108 */  j          .Llevel_24_80078E64
/* 5DF3A94 80078D64 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_24_80078D68:
/* 5DF3A98 80078D68 0400828E */  lw         $v0, 0x4($s4)
/* 5DF3A9C 80078D6C 00000000 */  nop
/* 5DF3AA0 80078D70 10004228 */  slti       $v0, $v0, 0x10
/* 5DF3AA4 80078D74 27004010 */  beqz       $v0, .Llevel_24_80078E14
/* 5DF3AA8 80078D78 00000000 */   nop
/* 5DF3AAC 80078D7C 21880000 */  addu       $s1, $zero, $zero
/* 5DF3AB0 80078D80 3000B327 */  addiu      $s3, $sp, 0x30
/* 5DF3AB4 80078D84 0C001226 */  addiu      $s2, $s0, 0xC
/* 5DF3AB8 80078D88 21206002 */  addu       $a0, $s3, $zero
.Llevel_24_80078D8C:
/* 5DF3ABC 80078D8C 5E3C010C */  jal        func_8004F178
/* 5DF3AC0 80078D90 21284002 */   addu      $a1, $s2, $zero
/* 5DF3AC4 80078D94 21200000 */  addu       $a0, $zero, $zero
/* 5DF3AC8 80078D98 F7D8000C */  jal        func_800363DC
/* 5DF3ACC 80078D9C 2C010524 */   addiu     $a1, $zero, 0x12C
/* 5DF3AD0 80078DA0 21200000 */  addu       $a0, $zero, $zero
/* 5DF3AD4 80078DA4 2C010524 */  addiu      $a1, $zero, 0x12C
/* 5DF3AD8 80078DA8 0C00038E */  lw         $v1, 0xC($s0)
/* 5DF3ADC 80078DAC 01003126 */  addiu      $s1, $s1, 0x1
/* 5DF3AE0 80078DB0 21186200 */  addu       $v1, $v1, $v0
/* 5DF3AE4 80078DB4 F7D8000C */  jal        func_800363DC
/* 5DF3AE8 80078DB8 0C0003AE */   sw        $v1, 0xC($s0)
/* 5DF3AEC 80078DBC 21200000 */  addu       $a0, $zero, $zero
/* 5DF3AF0 80078DC0 1000038E */  lw         $v1, 0x10($s0)
/* 5DF3AF4 80078DC4 BC020524 */  addiu      $a1, $zero, 0x2BC
/* 5DF3AF8 80078DC8 21186200 */  addu       $v1, $v1, $v0
/* 5DF3AFC 80078DCC DBD8000C */  jal        func_8003636C
/* 5DF3B00 80078DD0 100003AE */   sw        $v1, 0x10($s0)
/* 5DF3B04 80078DD4 01000424 */  addiu      $a0, $zero, 0x1
/* 5DF3B08 80078DD8 0C000524 */  addiu      $a1, $zero, 0xC
/* 5DF3B0C 80078DDC 21300002 */  addu       $a2, $s0, $zero
/* 5DF3B10 80078DE0 03000724 */  addiu      $a3, $zero, 0x3
/* 5DF3B14 80078DE4 1400038E */  lw         $v1, 0x14($s0)
/* 5DF3B18 80078DE8 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 5DF3B1C 80078DEC E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 5DF3B20 80078DF0 21186200 */  addu       $v1, $v1, $v0
/* 5DF3B24 80078DF4 09F80001 */  jalr       $t0
/* 5DF3B28 80078DF8 140003AE */   sw        $v1, 0x14($s0)
/* 5DF3B2C 80078DFC 21204002 */  addu       $a0, $s2, $zero
/* 5DF3B30 80078E00 5E3C010C */  jal        func_8004F178
/* 5DF3B34 80078E04 21286002 */   addu      $a1, $s3, $zero
/* 5DF3B38 80078E08 0800222A */  slti       $v0, $s1, 0x8
/* 5DF3B3C 80078E0C DFFF4014 */  bnez       $v0, .Llevel_24_80078D8C
/* 5DF3B40 80078E10 21206002 */   addu      $a0, $s3, $zero
.Llevel_24_80078E14:
/* 5DF3B44 80078E14 0400828E */  lw         $v0, 0x4($s4)
/* 5DF3B48 80078E18 0780033C */  lui        $v1, %hi(D_8006C648)
/* 5DF3B4C 80078E1C 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 5DF3B50 80078E20 00000000 */  nop
/* 5DF3B54 80078E24 21104300 */  addu       $v0, $v0, $v1
/* 5DF3B58 80078E28 040082AE */  sw         $v0, 0x4($s4)
/* 5DF3B5C 80078E2C 78004228 */  slti       $v0, $v0, 0x78
/* 5DF3B60 80078E30 07004010 */  beqz       $v0, .Llevel_24_80078E50
/* 5DF3B64 80078E34 01000424 */   addiu     $a0, $zero, 0x1
/* 5DF3B68 80078E38 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 5DF3B6C 80078E3C 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 5DF3B70 80078E40 00000000 */  nop
/* 5DF3B74 80078E44 00084230 */  andi       $v0, $v0, 0x800
/* 5DF3B78 80078E48 06004010 */  beqz       $v0, .Llevel_24_80078E64
/* 5DF3B7C 80078E4C 00000000 */   nop
.Llevel_24_80078E50:
/* 5DF3B80 80078E50 1E000224 */  addiu      $v0, $zero, 0x1E
/* 5DF3B84 80078E54 DF4E000C */  jal        func_80013B7C
/* 5DF3B88 80078E58 4A0002A2 */   sb        $v0, 0x4A($s0)
.Llevel_24_80078E5C:
/* 5DF3B8C 80078E5C 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_24_80078E60:
/* 5DF3B90 80078E60 480002A2 */  sb         $v0, 0x48($s0)
.Llevel_24_80078E64:
/* 5DF3B94 80078E64 5400BF8F */  lw         $ra, 0x54($sp)
/* 5DF3B98 80078E68 5000B48F */  lw         $s4, 0x50($sp)
/* 5DF3B9C 80078E6C 4C00B38F */  lw         $s3, 0x4C($sp)
/* 5DF3BA0 80078E70 4800B28F */  lw         $s2, 0x48($sp)
/* 5DF3BA4 80078E74 4400B18F */  lw         $s1, 0x44($sp)
/* 5DF3BA8 80078E78 4000B08F */  lw         $s0, 0x40($sp)
/* 5DF3BAC 80078E7C 5800BD27 */  addiu      $sp, $sp, 0x58
/* 5DF3BB0 80078E80 0800E003 */  jr         $ra
/* 5DF3BB4 80078E84 00000000 */   nop
.size func_level_24_800789F0, . - func_level_24_800789F0
