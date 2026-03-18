.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_37_80077A90
/* 7AA37C0 80077A90 38FFBD27 */  addiu      $sp, $sp, -0xC8
/* 7AA37C4 80077A94 A800B2AF */  sw         $s2, 0xA8($sp)
/* 7AA37C8 80077A98 21908000 */  addu       $s2, $a0, $zero
/* 7AA37CC 80077A9C C400BFAF */  sw         $ra, 0xC4($sp)
/* 7AA37D0 80077AA0 C000BEAF */  sw         $fp, 0xC0($sp)
/* 7AA37D4 80077AA4 BC00B7AF */  sw         $s7, 0xBC($sp)
/* 7AA37D8 80077AA8 B800B6AF */  sw         $s6, 0xB8($sp)
/* 7AA37DC 80077AAC B400B5AF */  sw         $s5, 0xB4($sp)
/* 7AA37E0 80077AB0 B000B4AF */  sw         $s4, 0xB0($sp)
/* 7AA37E4 80077AB4 AC00B3AF */  sw         $s3, 0xAC($sp)
/* 7AA37E8 80077AB8 A400B1AF */  sw         $s1, 0xA4($sp)
/* 7AA37EC 80077ABC A000B0AF */  sw         $s0, 0xA0($sp)
/* 7AA37F0 80077AC0 0C00458E */  lw         $a1, 0xC($s2)
/* 7AA37F4 80077AC4 0000568E */  lw         $s6, 0x0($s2)
/* 7AA37F8 80077AC8 0004A228 */  slti       $v0, $a1, 0x400
/* 7AA37FC 80077ACC 11004014 */  bnez       $v0, .Llevel_37_80077B14
/* 7AA3800 80077AD0 00000000 */   nop
/* 7AA3804 80077AD4 1000448E */  lw         $a0, 0x10($s2)
/* 7AA3808 80077AD8 00000000 */  nop
/* 7AA380C 80077ADC 00048228 */  slti       $v0, $a0, 0x400
/* 7AA3810 80077AE0 0C004014 */  bnez       $v0, .Llevel_37_80077B14
/* 7AA3814 80077AE4 00000000 */   nop
/* 7AA3818 80077AE8 1400428E */  lw         $v0, 0x14($s2)
/* 7AA381C 80077AEC 00000000 */  nop
/* 7AA3820 80077AF0 00044228 */  slti       $v0, $v0, 0x400
/* 7AA3824 80077AF4 07004014 */  bnez       $v0, .Llevel_37_80077B14
/* 7AA3828 80077AF8 0300033C */   lui       $v1, (0x3C000 >> 16)
/* 7AA382C 80077AFC 00C06334 */  ori        $v1, $v1, (0x3C000 & 0xFFFF)
/* 7AA3830 80077B00 2A106500 */  slt        $v0, $v1, $a1
/* 7AA3834 80077B04 03004014 */  bnez       $v0, .Llevel_37_80077B14
/* 7AA3838 80077B08 2A106400 */   slt       $v0, $v1, $a0
/* 7AA383C 80077B0C 09004010 */  beqz       $v0, .Llevel_37_80077B34
/* 7AA3840 80077B10 00000000 */   nop
.Llevel_37_80077B14:
/* 7AA3844 80077B14 0C00C48E */  lw         $a0, 0xC($s6)
/* 7AA3848 80077B18 00000000 */  nop
/* 7AA384C 80077B1C 03008010 */  beqz       $a0, .Llevel_37_80077B2C
/* 7AA3850 80077B20 00000000 */   nop
/* 7AA3854 80077B24 E242010C */  jal        func_80050B88
/* 7AA3858 80077B28 00000000 */   nop
.Llevel_37_80077B2C:
/* 7AA385C 80077B2C C656010C */  jal        func_80055B18
/* 7AA3860 80077B30 21204002 */   addu      $a0, $s2, $zero
.Llevel_37_80077B34:
/* 7AA3864 80077B34 48004392 */  lbu        $v1, 0x48($s2)
/* 7AA3868 80077B38 02000224 */  addiu      $v0, $zero, 0x2
/* 7AA386C 80077B3C 30006210 */  beq        $v1, $v0, .Llevel_37_80077C00
/* 7AA3870 80077B40 01000224 */   addiu     $v0, $zero, 0x1
/* 7AA3874 80077B44 49004292 */  lbu        $v0, 0x49($s2)
/* 7AA3878 80077B48 00000000 */  nop
/* 7AA387C 80077B4C 2C004014 */  bnez       $v0, .Llevel_37_80077C00
/* 7AA3880 80077B50 01000224 */   addiu     $v0, $zero, 0x1
/* 7AA3884 80077B54 0C005126 */  addiu      $s1, $s2, 0xC
/* 7AA3888 80077B58 21282002 */  addu       $a1, $s1, $zero
/* 7AA388C 80077B5C 0800D08E */  lw         $s0, 0x8($s6)
/* 7AA3890 80077B60 01001324 */  addiu      $s3, $zero, 0x1
/* 7AA3894 80077B64 490053A2 */  sb         $s3, 0x49($s2)
/* 7AA3898 80077B68 5E3C010C */  jal        func_8004F178
/* 7AA389C 80077B6C 04000426 */   addiu     $a0, $s0, 0x4
/* 7AA38A0 80077B70 21202002 */  addu       $a0, $s1, $zero
/* 7AA38A4 80077B74 58020524 */  addiu      $a1, $zero, 0x258
/* 7AA38A8 80077B78 21300000 */  addu       $a2, $zero, $zero
/* 7AA38AC 80077B7C 21380000 */  addu       $a3, $zero, $zero
/* 7AA38B0 80077B80 01000224 */  addiu      $v0, $zero, 0x1
/* 7AA38B4 80077B84 000002A6 */  sh         $v0, 0x0($s0)
/* 7AA38B8 80077B88 020002A6 */  sh         $v0, 0x2($s0)
/* 7AA38BC 80077B8C 9500023C */  lui        $v0, (0x950000 >> 16)
/* 7AA38C0 80077B90 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AA38C4 80077B94 8C6E000C */  jal        func_8001BA30
/* 7AA38C8 80077B98 1400B2AF */   sw        $s2, 0x14($sp)
/* 7AA38CC 80077B9C 21804000 */  addu       $s0, $v0, $zero
/* 7AA38D0 80077BA0 0B000012 */  beqz       $s0, .Llevel_37_80077BD0
/* 7AA38D4 80077BA4 00000000 */   nop
/* 7AA38D8 80077BA8 0000C486 */  lh         $a0, 0x0($s6)
/* 7AA38DC 80077BAC 0200C586 */  lh         $a1, 0x2($s6)
/* 7AA38E0 80077BB0 203A010C */  jal        func_8004E880
/* 7AA38E4 80077BB4 21300000 */   addu      $a2, $zero, $zero
/* 7AA38E8 80077BB8 510002A2 */  sb         $v0, 0x51($s0)
/* 7AA38EC 80077BBC FF004230 */  andi       $v0, $v0, 0xFF
/* 7AA38F0 80077BC0 02004014 */  bnez       $v0, .Llevel_37_80077BCC
/* 7AA38F4 80077BC4 00000000 */   nop
/* 7AA38F8 80077BC8 510013A2 */  sb         $s3, 0x51($s0)
.Llevel_37_80077BCC:
/* 7AA38FC 80077BCC 480053A2 */  sb         $s3, 0x48($s2)
.Llevel_37_80077BD0:
/* 7AA3900 80077BD0 1000A0AF */  sw         $zero, 0x10($sp)
/* 7AA3904 80077BD4 0C004426 */  addiu      $a0, $s2, 0xC
/* 7AA3908 80077BD8 0780053C */  lui        $a1, %hi(D_80070328)
/* 7AA390C 80077BDC 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 7AA3910 80077BE0 02000624 */  addiu      $a2, $zero, 0x2
/* 7AA3914 80077BE4 C360000C */  jal        func_8001830C
/* 7AA3918 80077BE8 21380000 */   addu      $a3, $zero, $zero
/* 7AA391C 80077BEC 02004010 */  beqz       $v0, .Llevel_37_80077BF8
/* 7AA3920 80077BF0 01000224 */   addiu     $v0, $zero, 0x1
/* 7AA3924 80077BF4 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_37_80077BF8:
/* 7AA3928 80077BF8 48004392 */  lbu        $v1, 0x48($s2)
/* 7AA392C 80077BFC 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_37_80077C00:
/* 7AA3930 80077C00 AC006210 */  beq        $v1, $v0, .Llevel_37_80077EB4
/* 7AA3934 80077C04 02006228 */   slti      $v0, $v1, 0x2
/* 7AA3938 80077C08 05004010 */  beqz       $v0, .Llevel_37_80077C20
/* 7AA393C 80077C0C 00000000 */   nop
/* 7AA3940 80077C10 0A006010 */  beqz       $v1, .Llevel_37_80077C3C
/* 7AA3944 80077C14 1800A427 */   addiu     $a0, $sp, 0x18
/* 7AA3948 80077C18 0FE10108 */  j          .Llevel_37_8007843C
/* 7AA394C 80077C1C 00000000 */   nop
.Llevel_37_80077C20:
/* 7AA3950 80077C20 02000224 */  addiu      $v0, $zero, 0x2
/* 7AA3954 80077C24 D4016210 */  beq        $v1, $v0, .Llevel_37_80078378
/* 7AA3958 80077C28 03000224 */   addiu     $v0, $zero, 0x3
/* 7AA395C 80077C2C 11016210 */  beq        $v1, $v0, .Llevel_37_80078074
/* 7AA3960 80077C30 00000000 */   nop
/* 7AA3964 80077C34 0FE10108 */  j          .Llevel_37_8007843C
/* 7AA3968 80077C38 00000000 */   nop
.Llevel_37_80077C3C:
/* 7AA396C 80077C3C 0C005026 */  addiu      $s0, $s2, 0xC
/* 7AA3970 80077C40 5E3C010C */  jal        func_8004F178
/* 7AA3974 80077C44 21280002 */   addu      $a1, $s0, $zero
/* 7AA3978 80077C48 1800A427 */  addiu      $a0, $sp, 0x18
/* 7AA397C 80077C4C 0000C386 */  lh         $v1, 0x0($s6)
/* 7AA3980 80077C50 0C00428E */  lw         $v0, 0xC($s2)
/* 7AA3984 80077C54 21280002 */  addu       $a1, $s0, $zero
/* 7AA3988 80077C58 21104300 */  addu       $v0, $v0, $v1
/* 7AA398C 80077C5C 0C0042AE */  sw         $v0, 0xC($s2)
/* 7AA3990 80077C60 0200C386 */  lh         $v1, 0x2($s6)
/* 7AA3994 80077C64 1000428E */  lw         $v0, 0x10($s2)
/* 7AA3998 80077C68 02000624 */  addiu      $a2, $zero, 0x2
/* 7AA399C 80077C6C 21104300 */  addu       $v0, $v0, $v1
/* 7AA39A0 80077C70 100042AE */  sw         $v0, 0x10($s2)
/* 7AA39A4 80077C74 0400C386 */  lh         $v1, 0x4($s6)
/* 7AA39A8 80077C78 1400428E */  lw         $v0, 0x14($s2)
/* 7AA39AC 80077C7C 9500073C */  lui        $a3, (0x950000 >> 16)
/* 7AA39B0 80077C80 21104300 */  addu       $v0, $v0, $v1
/* 7AA39B4 80077C84 140042AE */  sw         $v0, 0x14($s2)
/* 7AA39B8 80077C88 0780013C */  lui        $at, %hi(D_80071934)
/* 7AA39BC 80077C8C 341920AC */  sw         $zero, %lo(D_80071934)($at)
/* 7AA39C0 80077C90 C360000C */  jal        func_8001830C
/* 7AA39C4 80077C94 1000A0AF */   sw        $zero, 0x10($sp)
/* 7AA39C8 80077C98 05004010 */  beqz       $v0, .Llevel_37_80077CB0
/* 7AA39CC 80077C9C 21200002 */   addu      $a0, $s0, $zero
/* 7AA39D0 80077CA0 5E3C010C */  jal        func_8004F178
/* 7AA39D4 80077CA4 1800A527 */   addiu     $a1, $sp, 0x18
/* 7AA39D8 80077CA8 01000224 */  addiu      $v0, $zero, 0x1
/* 7AA39DC 80077CAC 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_37_80077CB0:
/* 7AA39E0 80077CB0 21200002 */  addu       $a0, $s0, $zero
/* 7AA39E4 80077CB4 90010524 */  addiu      $a1, $zero, 0x190
/* 7AA39E8 80077CB8 21300000 */  addu       $a2, $zero, $zero
/* 7AA39EC 80077CBC 21380000 */  addu       $a3, $zero, $zero
/* 7AA39F0 80077CC0 9500023C */  lui        $v0, (0x950000 >> 16)
/* 7AA39F4 80077CC4 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AA39F8 80077CC8 8C6E000C */  jal        func_8001BA30
/* 7AA39FC 80077CCC 1400B2AF */   sw        $s2, 0x14($sp)
/* 7AA3A00 80077CD0 21804000 */  addu       $s0, $v0, $zero
/* 7AA3A04 80077CD4 1F000012 */  beqz       $s0, .Llevel_37_80077D54
/* 7AA3A08 80077CD8 0C004426 */   addiu     $a0, $s2, 0xC
/* 7AA3A0C 80077CDC 0000C486 */  lh         $a0, 0x0($s6)
/* 7AA3A10 80077CE0 0200C586 */  lh         $a1, 0x2($s6)
/* 7AA3A14 80077CE4 203A010C */  jal        func_8004E880
/* 7AA3A18 80077CE8 21300000 */   addu      $a2, $zero, $zero
/* 7AA3A1C 80077CEC 510002A2 */  sb         $v0, 0x51($s0)
/* 7AA3A20 80077CF0 FF004230 */  andi       $v0, $v0, 0xFF
/* 7AA3A24 80077CF4 02004014 */  bnez       $v0, .Llevel_37_80077D00
/* 7AA3A28 80077CF8 01000224 */   addiu     $v0, $zero, 0x1
/* 7AA3A2C 80077CFC 510002A2 */  sb         $v0, 0x51($s0)
.Llevel_37_80077D00:
/* 7AA3A30 80077D00 36000396 */  lhu        $v1, 0x36($s0)
/* 7AA3A34 80077D04 00000000 */  nop
/* 7AA3A38 80077D08 38FF6224 */  addiu      $v0, $v1, -0xC8
/* 7AA3A3C 80077D0C 0200422C */  sltiu      $v0, $v0, 0x2
/* 7AA3A40 80077D10 10004014 */  bnez       $v0, .Llevel_37_80077D54
/* 7AA3A44 80077D14 0C004426 */   addiu     $a0, $s2, 0xC
/* 7AA3A48 80077D18 00140300 */  sll        $v0, $v1, 16
/* 7AA3A4C 80077D1C 031C0200 */  sra        $v1, $v0, 16
/* 7AA3A50 80077D20 D1000224 */  addiu      $v0, $zero, 0xD1
/* 7AA3A54 80077D24 0B006210 */  beq        $v1, $v0, .Llevel_37_80077D54
/* 7AA3A58 80077D28 10010224 */   addiu     $v0, $zero, 0x110
/* 7AA3A5C 80077D2C 09006210 */  beq        $v1, $v0, .Llevel_37_80077D54
/* 7AA3A60 80077D30 33020224 */   addiu     $v0, $zero, 0x233
/* 7AA3A64 80077D34 07006210 */  beq        $v1, $v0, .Llevel_37_80077D54
/* 7AA3A68 80077D38 D0000224 */   addiu     $v0, $zero, 0xD0
/* 7AA3A6C 80077D3C 36004386 */  lh         $v1, 0x36($s2)
/* 7AA3A70 80077D40 00000000 */  nop
/* 7AA3A74 80077D44 03006210 */  beq        $v1, $v0, .Llevel_37_80077D54
/* 7AA3A78 80077D48 01000224 */   addiu     $v0, $zero, 0x1
/* 7AA3A7C 80077D4C 480042A2 */  sb         $v0, 0x48($s2)
/* 7AA3A80 80077D50 0C004426 */  addiu      $a0, $s2, 0xC
.Llevel_37_80077D54:
/* 7AA3A84 80077D54 2C010524 */  addiu      $a1, $zero, 0x12C
/* 7AA3A88 80077D58 02000624 */  addiu      $a2, $zero, 0x2
/* 7AA3A8C 80077D5C 21380000 */  addu       $a3, $zero, $zero
/* 7AA3A90 80077D60 9500023C */  lui        $v0, (0x950000 >> 16)
/* 7AA3A94 80077D64 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AA3A98 80077D68 4E64000C */  jal        func_80019138
/* 7AA3A9C 80077D6C 1400B2AF */   sw        $s2, 0x14($sp)
/* 7AA3AA0 80077D70 0780023C */  lui        $v0, %hi(D_8006C640)
/* 7AA3AA4 80077D74 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 7AA3AA8 80077D78 00000000 */  nop
/* 7AA3AAC 80077D7C 03004230 */  andi       $v0, $v0, 0x3
/* 7AA3AB0 80077D80 3A004014 */  bnez       $v0, .Llevel_37_80077E6C
/* 7AA3AB4 80077D84 00000000 */   nop
/* 7AA3AB8 80077D88 0780023C */  lui        $v0, %hi(D_8006C578)
/* 7AA3ABC 80077D8C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 7AA3AC0 80077D90 0780033C */  lui        $v1, %hi(D_8006C574)
/* 7AA3AC4 80077D94 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 7AA3AC8 80077D98 00000000 */  nop
/* 7AA3ACC 80077D9C 23104300 */  subu       $v0, $v0, $v1
/* 7AA3AD0 80077DA0 15004228 */  slti       $v0, $v0, 0x15
/* 7AA3AD4 80077DA4 31004014 */  bnez       $v0, .Llevel_37_80077E6C
/* 7AA3AD8 80077DA8 E3010424 */   addiu     $a0, $zero, 0x1E3
/* 7AA3ADC 80077DAC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7AA3AE0 80077DB0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7AA3AE4 80077DB4 00000000 */  nop
/* 7AA3AE8 80077DB8 09F84000 */  jalr       $v0
/* 7AA3AEC 80077DBC 21284002 */   addu      $a1, $s2, $zero
/* 7AA3AF0 80077DC0 21804000 */  addu       $s0, $v0, $zero
/* 7AA3AF4 80077DC4 29000012 */  beqz       $s0, .Llevel_37_80077E6C
/* 7AA3AF8 80077DC8 2800A427 */   addiu     $a0, $sp, 0x28
/* 7AA3AFC 80077DCC 0000C286 */  lh         $v0, 0x0($s6)
/* 7AA3B00 80077DD0 00000000 */  nop
/* 7AA3B04 80077DD4 2800A2AF */  sw         $v0, 0x28($sp)
/* 7AA3B08 80077DD8 0200C286 */  lh         $v0, 0x2($s6)
/* 7AA3B0C 80077DDC 21280000 */  addu       $a1, $zero, $zero
/* 7AA3B10 80077DE0 7A3B010C */  jal        func_8004EDE8
/* 7AA3B14 80077DE4 2C00A2AF */   sw        $v0, 0x2C($sp)
/* 7AA3B18 80077DE8 21204000 */  addu       $a0, $v0, $zero
/* 7AA3B1C 80077DEC 0400C586 */  lh         $a1, 0x4($s6)
/* 7AA3B20 80077DF0 203A010C */  jal        func_8004E880
/* 7AA3B24 80077DF4 21300000 */   addu      $a2, $zero, $zero
/* 7AA3B28 80077DF8 450002A2 */  sb         $v0, 0x45($s0)
/* 7AA3B2C 80077DFC 0000C486 */  lh         $a0, 0x0($s6)
/* 7AA3B30 80077E00 0200C586 */  lh         $a1, 0x2($s6)
/* 7AA3B34 80077E04 203A010C */  jal        func_8004E880
/* 7AA3B38 80077E08 21300000 */   addu      $a2, $zero, $zero
/* 7AA3B3C 80077E0C 460002A2 */  sb         $v0, 0x46($s0)
/* 7AA3B40 80077E10 36000286 */  lh         $v0, 0x36($s0)
/* 7AA3B44 80077E14 01000324 */  addiu      $v1, $zero, 0x1
/* 7AA3B48 80077E18 480003A2 */  sb         $v1, 0x48($s0)
/* 7AA3B4C 80077E1C 420000A2 */  sb         $zero, 0x42($s0)
/* 7AA3B50 80077E20 80100200 */  sll        $v0, $v0, 2
/* 7AA3B54 80077E24 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 7AA3B58 80077E28 21082200 */  addu       $at, $at, $v0
/* 7AA3B5C 80077E2C 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 7AA3B60 80077E30 00000000 */  nop
/* 7AA3B64 80077E34 4000428C */  lw         $v0, 0x40($v0)
/* 7AA3B68 80077E38 00000000 */  nop
/* 7AA3B6C 80077E3C 00004290 */  lbu        $v0, 0x0($v0)
/* 7AA3B70 80077E40 3C0003A2 */  sb         $v1, 0x3C($s0)
/* 7AA3B74 80077E44 3D0003A2 */  sb         $v1, 0x3D($s0)
/* 7AA3B78 80077E48 3F0003A2 */  sb         $v1, 0x3F($s0)
/* 7AA3B7C 80077E4C 02000324 */  addiu      $v1, $zero, 0x2
/* 7AA3B80 80077E50 3E0000A2 */  sb         $zero, 0x3E($s0)
/* 7AA3B84 80077E54 480003A2 */  sb         $v1, 0x48($s0)
/* 7AA3B88 80077E58 0200422C */  sltiu      $v0, $v0, 0x2
/* 7AA3B8C 80077E5C 01004238 */  xori       $v0, $v0, 0x1
/* 7AA3B90 80077E60 23100200 */  negu       $v0, $v0
/* 7AA3B94 80077E64 30004230 */  andi       $v0, $v0, 0x30
/* 7AA3B98 80077E68 400002A2 */  sb         $v0, 0x40($s0)
.Llevel_37_80077E6C:
/* 7AA3B9C 80077E6C 48004292 */  lbu        $v0, 0x48($s2)
/* 7AA3BA0 80077E70 00000000 */  nop
/* 7AA3BA4 80077E74 71014014 */  bnez       $v0, .Llevel_37_8007843C
/* 7AA3BA8 80077E78 0700C426 */   addiu     $a0, $s6, 0x7
/* 7AA3BAC 80077E7C 69D6000C */  jal        func_800359A4
/* 7AA3BB0 80077E80 01000524 */   addiu     $a1, $zero, 0x1
/* 7AA3BB4 80077E84 6D014010 */  beqz       $v0, .Llevel_37_8007843C
/* 7AA3BB8 80077E88 00000000 */   nop
/* 7AA3BBC 80077E8C 0C00C48E */  lw         $a0, 0xC($s6)
/* 7AA3BC0 80077E90 00000000 */  nop
/* 7AA3BC4 80077E94 04008010 */  beqz       $a0, .Llevel_37_80077EA8
/* 7AA3BC8 80077E98 01000224 */   addiu     $v0, $zero, 0x1
/* 7AA3BCC 80077E9C E242010C */  jal        func_80050B88
/* 7AA3BD0 80077EA0 00000000 */   nop
/* 7AA3BD4 80077EA4 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_37_80077EA8:
/* 7AA3BD8 80077EA8 0C00C0AE */  sw         $zero, 0xC($s6)
/* 7AA3BDC 80077EAC 0FE10108 */  j          .Llevel_37_8007843C
/* 7AA3BE0 80077EB0 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_37_80077EB4:
/* 7AA3BE4 80077EB4 21204002 */  addu       $a0, $s2, $zero
/* 7AA3BE8 80077EB8 01000524 */  addiu      $a1, $zero, 0x1
/* 7AA3BEC 80077EBC AFEE000C */  jal        func_8003BABC
/* 7AA3BF0 80077EC0 21300000 */   addu      $a2, $zero, $zero
/* 7AA3BF4 80077EC4 0780023C */  lui        $v0, %hi(D_8006C578)
/* 7AA3BF8 80077EC8 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 7AA3BFC 80077ECC 0780033C */  lui        $v1, %hi(D_8006C574)
/* 7AA3C00 80077ED0 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 7AA3C04 80077ED4 00000000 */  nop
/* 7AA3C08 80077ED8 23104300 */  subu       $v0, $v0, $v1
/* 7AA3C0C 80077EDC 15004228 */  slti       $v0, $v0, 0x15
/* 7AA3C10 80077EE0 17004014 */  bnez       $v0, .Llevel_37_80077F40
/* 7AA3C14 80077EE4 00000000 */   nop
/* 7AA3C18 80077EE8 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 7AA3C1C 80077EEC E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 7AA3C20 80077EF0 00000000 */  nop
/* 7AA3C24 80077EF4 31754228 */  slti       $v0, $v0, 0x7531
/* 7AA3C28 80077EF8 11004014 */  bnez       $v0, .Llevel_37_80077F40
/* 7AA3C2C 80077EFC 46010424 */   addiu     $a0, $zero, 0x146
/* 7AA3C30 80077F00 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7AA3C34 80077F04 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7AA3C38 80077F08 00000000 */  nop
/* 7AA3C3C 80077F0C 09F84000 */  jalr       $v0
/* 7AA3C40 80077F10 21284002 */   addu      $a1, $s2, $zero
/* 7AA3C44 80077F14 21184000 */  addu       $v1, $v0, $zero
/* 7AA3C48 80077F18 09006010 */  beqz       $v1, .Llevel_37_80077F40
/* 7AA3C4C 80077F1C 00000000 */   nop
/* 7AA3C50 80077F20 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 7AA3C54 80077F24 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 7AA3C58 80077F28 00000000 */  nop
/* 7AA3C5C 80077F2C 24FA4224 */  addiu      $v0, $v0, -0x5DC
/* 7AA3C60 80077F30 0780013C */  lui        $at, %hi(D_8006C7E8)
/* 7AA3C64 80077F34 E8C722AC */  sw         $v0, %lo(D_8006C7E8)($at)
/* 7AA3C68 80077F38 07000224 */  addiu      $v0, $zero, 0x7
/* 7AA3C6C 80077F3C 470062A0 */  sb         $v0, 0x47($v1)
.Llevel_37_80077F40:
/* 7AA3C70 80077F40 0780023C */  lui        $v0, %hi(D_8006C578)
/* 7AA3C74 80077F44 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 7AA3C78 80077F48 0780033C */  lui        $v1, %hi(D_8006C574)
/* 7AA3C7C 80077F4C 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 7AA3C80 80077F50 00000000 */  nop
/* 7AA3C84 80077F54 23104300 */  subu       $v0, $v0, $v1
/* 7AA3C88 80077F58 15004228 */  slti       $v0, $v0, 0x15
/* 7AA3C8C 80077F5C 3B004014 */  bnez       $v0, .Llevel_37_8007804C
/* 7AA3C90 80077F60 21A00000 */   addu      $s4, $zero, $zero
/* 7AA3C94 80077F64 0780153C */  lui        $s5, %hi(D_8006E020)
/* 7AA3C98 80077F68 20E0B526 */  addiu      $s5, $s5, %lo(D_8006E020)
/* 7AA3C9C 80077F6C 21980000 */  addu       $s3, $zero, $zero
.Llevel_37_80077F70:
/* 7AA3CA0 80077F70 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 7AA3CA4 80077F74 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 7AA3CA8 80077F78 00000000 */  nop
/* 7AA3CAC 80077F7C 31754228 */  slti       $v0, $v0, 0x7531
/* 7AA3CB0 80077F80 32004014 */  bnez       $v0, .Llevel_37_8007804C
/* 7AA3CB4 80077F84 1D020424 */   addiu     $a0, $zero, 0x21D
/* 7AA3CB8 80077F88 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7AA3CBC 80077F8C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7AA3CC0 80077F90 00000000 */  nop
/* 7AA3CC4 80077F94 09F84000 */  jalr       $v0
/* 7AA3CC8 80077F98 21284002 */   addu      $a1, $s2, $zero
/* 7AA3CCC 80077F9C 21884000 */  addu       $s1, $v0, $zero
/* 7AA3CD0 80077FA0 1D002012 */  beqz       $s1, .Llevel_37_80078018
/* 7AA3CD4 80077FA4 21300000 */   addu      $a2, $zero, $zero
/* 7AA3CD8 80077FA8 0C00428E */  lw         $v0, 0xC($s2)
/* 7AA3CDC 80077FAC 0000A48E */  lw         $a0, 0x0($s5)
/* 7AA3CE0 80077FB0 1000438E */  lw         $v1, 0x10($s2)
/* 7AA3CE4 80077FB4 0400A58E */  lw         $a1, 0x4($s5)
/* 7AA3CE8 80077FB8 23204400 */  subu       $a0, $v0, $a0
/* 7AA3CEC 80077FBC 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 7AA3CF0 80077FC0 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 7AA3CF4 80077FC4 00000000 */  nop
/* 7AA3CF8 80077FC8 18FC4224 */  addiu      $v0, $v0, -0x3E8
/* 7AA3CFC 80077FCC 0780013C */  lui        $at, %hi(D_8006C7E8)
/* 7AA3D00 80077FD0 E8C722AC */  sw         $v0, %lo(D_8006C7E8)($at)
/* 7AA3D04 80077FD4 203A010C */  jal        func_8004E880
/* 7AA3D08 80077FD8 23286500 */   subu      $a1, $v1, $a1
/* 7AA3D0C 80077FDC 9171010C */  jal        rand
/* 7AA3D10 80077FE0 21804000 */   addu      $s0, $v0, $zero
/* 7AA3D14 80077FE4 40001026 */  addiu      $s0, $s0, 0x40
/* 7AA3D18 80077FE8 1F004230 */  andi       $v0, $v0, 0x1F
/* 7AA3D1C 80077FEC 21800202 */  addu       $s0, $s0, $v0
/* 7AA3D20 80077FF0 9171010C */  jal        rand
/* 7AA3D24 80077FF4 460030A2 */   sb        $s0, 0x46($s1)
/* 7AA3D28 80077FF8 1E004230 */  andi       $v0, $v0, 0x1E
/* 7AA3D2C 80077FFC 21106202 */  addu       $v0, $s3, $v0
/* 7AA3D30 80078000 F1FF4224 */  addiu      $v0, $v0, -0xF
/* 7AA3D34 80078004 450022A2 */  sb         $v0, 0x45($s1)
/* 7AA3D38 80078008 08000224 */  addiu      $v0, $zero, 0x8
/* 7AA3D3C 8007800C 470022A2 */  sb         $v0, 0x47($s1)
/* 7AA3D40 80078010 2A000224 */  addiu      $v0, $zero, 0x2A
/* 7AA3D44 80078014 4C0022A2 */  sb         $v0, 0x4C($s1)
.Llevel_37_80078018:
/* 7AA3D48 80078018 01009426 */  addiu      $s4, $s4, 0x1
/* 7AA3D4C 8007801C 0500822A */  slti       $v0, $s4, 0x5
/* 7AA3D50 80078020 0A004010 */  beqz       $v0, .Llevel_37_8007804C
/* 7AA3D54 80078024 33007326 */   addiu     $s3, $s3, 0x33
/* 7AA3D58 80078028 0780023C */  lui        $v0, %hi(D_8006C578)
/* 7AA3D5C 8007802C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 7AA3D60 80078030 0780033C */  lui        $v1, %hi(D_8006C574)
/* 7AA3D64 80078034 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 7AA3D68 80078038 00000000 */  nop
/* 7AA3D6C 8007803C 23104300 */  subu       $v0, $v0, $v1
/* 7AA3D70 80078040 15004228 */  slti       $v0, $v0, 0x15
/* 7AA3D74 80078044 CAFF4010 */  beqz       $v0, .Llevel_37_80077F70
/* 7AA3D78 80078048 00000000 */   nop
.Llevel_37_8007804C:
/* 7AA3D7C 8007804C 21204002 */  addu       $a0, $s2, $zero
/* 7AA3D80 80078050 4957010C */  jal        func_80055D24
/* 7AA3D84 80078054 02000524 */   addiu     $a1, $zero, 0x2
/* 7AA3D88 80078058 14000224 */  addiu      $v0, $zero, 0x14
/* 7AA3D8C 8007805C 410040A2 */  sb         $zero, 0x41($s2)
/* 7AA3D90 80078060 4C0040A2 */  sb         $zero, 0x4C($s2)
/* 7AA3D94 80078064 4D0040A2 */  sb         $zero, 0x4D($s2)
/* 7AA3D98 80078068 0700C2A2 */  sb         $v0, 0x7($s6)
/* 7AA3D9C 8007806C 03000224 */  addiu      $v0, $zero, 0x3
/* 7AA3DA0 80078070 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_37_80078074:
/* 7AA3DA4 80078074 0700C292 */  lbu        $v0, 0x7($s6)
/* 7AA3DA8 80078078 00000000 */  nop
/* 7AA3DAC 8007807C 0600422C */  sltiu      $v0, $v0, 0x6
/* 7AA3DB0 80078080 35004014 */  bnez       $v0, .Llevel_37_80078158
/* 7AA3DB4 80078084 58021524 */   addiu     $s5, $zero, 0x258
/* 7AA3DB8 80078088 21980000 */  addu       $s3, $zero, $zero
/* 7AA3DBC 8007808C 4800B427 */  addiu      $s4, $sp, 0x48
/* 7AA3DC0 80078090 2800B127 */  addiu      $s1, $sp, 0x28
/* 7AA3DC4 80078094 3800B027 */  addiu      $s0, $sp, 0x38
.Llevel_37_80078098:
/* 7AA3DC8 80078098 9171010C */  jal        rand
/* 7AA3DCC 8007809C 6000A0A3 */   sb        $zero, 0x60($sp)
/* 7AA3DD0 800780A0 9171010C */  jal        rand
/* 7AA3DD4 800780A4 6100A2A3 */   sb        $v0, 0x61($sp)
/* 7AA3DD8 800780A8 6000A427 */  addiu      $a0, $sp, 0x60
/* 7AA3DDC 800780AC 21288002 */  addu       $a1, $s4, $zero
/* 7AA3DE0 800780B0 21300000 */  addu       $a2, $zero, $zero
/* 7AA3DE4 800780B4 A43A010C */  jal        func_8004EA90
/* 7AA3DE8 800780B8 6200A2A3 */   sb        $v0, 0x62($sp)
/* 7AA3DEC 800780BC 9171010C */  jal        rand
/* 7AA3DF0 800780C0 01007326 */   addiu     $s3, $s3, 0x1
/* 7AA3DF4 800780C4 21208002 */  addu       $a0, $s4, $zero
/* 7AA3DF8 800780C8 21282002 */  addu       $a1, $s1, $zero
/* 7AA3DFC 800780CC 21302002 */  addu       $a2, $s1, $zero
/* 7AA3E00 800780D0 1F004230 */  andi       $v0, $v0, 0x1F
/* 7AA3E04 800780D4 30004224 */  addiu      $v0, $v0, 0x30
/* 7AA3E08 800780D8 2800A2AF */  sw         $v0, 0x28($sp)
/* 7AA3E0C 800780DC 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 7AA3E10 800780E0 5B3B010C */  jal        func_8004ED6C
/* 7AA3E14 800780E4 3000A0AF */   sw        $zero, 0x30($sp)
/* 7AA3E18 800780E8 21200002 */  addu       $a0, $s0, $zero
/* 7AA3E1C 800780EC 5E3C010C */  jal        func_8004F178
/* 7AA3E20 800780F0 21282002 */   addu      $a1, $s1, $zero
/* 7AA3E24 800780F4 21200002 */  addu       $a0, $s0, $zero
/* 7AA3E28 800780F8 3A3C010C */  jal        func_8004F0E8
/* 7AA3E2C 800780FC 02000524 */   addiu     $a1, $zero, 0x2
/* 7AA3E30 80078100 21200002 */  addu       $a0, $s0, $zero
/* 7AA3E34 80078104 21280002 */  addu       $a1, $s0, $zero
/* 7AA3E38 80078108 653C010C */  jal        func_8004F194
/* 7AA3E3C 8007810C 0C004626 */   addiu     $a2, $s2, 0xC
/* 7AA3E40 80078110 01000424 */  addiu      $a0, $zero, 0x1
/* 7AA3E44 80078114 0D000524 */  addiu      $a1, $zero, 0xD
/* 7AA3E48 80078118 21300002 */  addu       $a2, $s0, $zero
/* 7AA3E4C 8007811C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7AA3E50 80078120 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7AA3E54 80078124 00000000 */  nop
/* 7AA3E58 80078128 09F84000 */  jalr       $v0
/* 7AA3E5C 8007812C 21382002 */   addu      $a3, $s1, $zero
/* 7AA3E60 80078130 0400622A */  slti       $v0, $s3, 0x4
/* 7AA3E64 80078134 D8FF4014 */  bnez       $v0, .Llevel_37_80078098
/* 7AA3E68 80078138 06000424 */   addiu     $a0, $zero, 0x6
/* 7AA3E6C 8007813C 46000524 */  addiu      $a1, $zero, 0x46
/* 7AA3E70 80078140 0C004626 */  addiu      $a2, $s2, 0xC
/* 7AA3E74 80078144 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7AA3E78 80078148 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7AA3E7C 8007814C 00000000 */  nop
/* 7AA3E80 80078150 09F84000 */  jalr       $v0
/* 7AA3E84 80078154 10000724 */   addiu     $a3, $zero, 0x10
.Llevel_37_80078158:
/* 7AA3E88 80078158 0780023C */  lui        $v0, %hi(D_8006C640)
/* 7AA3E8C 8007815C 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 7AA3E90 80078160 00000000 */  nop
/* 7AA3E94 80078164 01004230 */  andi       $v0, $v0, 0x1
/* 7AA3E98 80078168 22004014 */  bnez       $v0, .Llevel_37_800781F4
/* 7AA3E9C 8007816C 00000000 */   nop
/* 7AA3EA0 80078170 0780023C */  lui        $v0, %hi(D_8006C578)
/* 7AA3EA4 80078174 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 7AA3EA8 80078178 0780033C */  lui        $v1, %hi(D_8006C574)
/* 7AA3EAC 8007817C 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 7AA3EB0 80078180 00000000 */  nop
/* 7AA3EB4 80078184 23104300 */  subu       $v0, $v0, $v1
/* 7AA3EB8 80078188 15004228 */  slti       $v0, $v0, 0x15
/* 7AA3EBC 8007818C 19004014 */  bnez       $v0, .Llevel_37_800781F4
/* 7AA3EC0 80078190 00000000 */   nop
/* 7AA3EC4 80078194 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 7AA3EC8 80078198 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 7AA3ECC 8007819C 00000000 */  nop
/* 7AA3ED0 800781A0 31754228 */  slti       $v0, $v0, 0x7531
/* 7AA3ED4 800781A4 13004014 */  bnez       $v0, .Llevel_37_800781F4
/* 7AA3ED8 800781A8 E2010424 */   addiu     $a0, $zero, 0x1E2
/* 7AA3EDC 800781AC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7AA3EE0 800781B0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7AA3EE4 800781B4 00000000 */  nop
/* 7AA3EE8 800781B8 09F84000 */  jalr       $v0
/* 7AA3EEC 800781BC 21284002 */   addu      $a1, $s2, $zero
/* 7AA3EF0 800781C0 21184000 */  addu       $v1, $v0, $zero
/* 7AA3EF4 800781C4 0B006010 */  beqz       $v1, .Llevel_37_800781F4
/* 7AA3EF8 800781C8 00000000 */   nop
/* 7AA3EFC 800781CC 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 7AA3F00 800781D0 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 7AA3F04 800781D4 00000000 */  nop
/* 7AA3F08 800781D8 24FA4224 */  addiu      $v0, $v0, -0x5DC
/* 7AA3F0C 800781DC 0780013C */  lui        $at, %hi(D_8006C7E8)
/* 7AA3F10 800781E0 E8C722AC */  sw         $v0, %lo(D_8006C7E8)($at)
/* 7AA3F14 800781E4 2A000224 */  addiu      $v0, $zero, 0x2A
/* 7AA3F18 800781E8 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 7AA3F1C 800781EC 0A000224 */  addiu      $v0, $zero, 0xA
/* 7AA3F20 800781F0 470062A0 */  sb         $v0, 0x47($v1)
.Llevel_37_800781F4:
/* 7AA3F24 800781F4 0700C392 */  lbu        $v1, 0x7($s6)
/* 7AA3F28 800781F8 00000000 */  nop
/* 7AA3F2C 800781FC 0B00622C */  sltiu      $v0, $v1, 0xB
/* 7AA3F30 80078200 0F004014 */  bnez       $v0, .Llevel_37_80078240
/* 7AA3F34 80078204 1800A302 */   mult      $s5, $v1
/* 7AA3F38 80078208 14000224 */  addiu      $v0, $zero, 0x14
/* 7AA3F3C 8007820C 23104300 */  subu       $v0, $v0, $v1
/* 7AA3F40 80078210 1800A202 */  mult       $s5, $v0
/* 7AA3F44 80078214 12100000 */  mflo       $v0
/* 7AA3F48 80078218 6666033C */  lui        $v1, (0x66666667 >> 16)
/* 7AA3F4C 8007821C 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* 7AA3F50 80078220 18004300 */  mult       $v0, $v1
/* 7AA3F54 80078224 43201500 */  sra        $a0, $s5, 1
/* 7AA3F58 80078228 C3170200 */  sra        $v0, $v0, 31
/* 7AA3F5C 8007822C 10400000 */  mfhi       $t0
/* 7AA3F60 80078230 C3180800 */  sra        $v1, $t0, 3
/* 7AA3F64 80078234 23186200 */  subu       $v1, $v1, $v0
/* 7AA3F68 80078238 9AE00108 */  j          .Llevel_37_80078268
/* 7AA3F6C 8007823C 21A88300 */   addu      $s5, $a0, $v1
.Llevel_37_80078240:
/* 7AA3F70 80078240 12180000 */  mflo       $v1
/* 7AA3F74 80078244 6666023C */  lui        $v0, (0x66666667 >> 16)
/* 7AA3F78 80078248 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
/* 7AA3F7C 8007824C 18006200 */  mult       $v1, $v0
/* 7AA3F80 80078250 43201500 */  sra        $a0, $s5, 1
/* 7AA3F84 80078254 C31F0300 */  sra        $v1, $v1, 31
/* 7AA3F88 80078258 10400000 */  mfhi       $t0
/* 7AA3F8C 8007825C C3100800 */  sra        $v0, $t0, 3
/* 7AA3F90 80078260 23104300 */  subu       $v0, $v0, $v1
/* 7AA3F94 80078264 21A88200 */  addu       $s5, $a0, $v0
.Llevel_37_80078268:
/* 7AA3F98 80078268 0C004426 */  addiu      $a0, $s2, 0xC
/* 7AA3F9C 8007826C E803A526 */  addiu      $a1, $s5, 0x3E8
/* 7AA3FA0 80078270 21300000 */  addu       $a2, $zero, $zero
/* 7AA3FA4 80078274 21380000 */  addu       $a3, $zero, $zero
/* 7AA3FA8 80078278 9500023C */  lui        $v0, (0x950000 >> 16)
/* 7AA3FAC 8007827C 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AA3FB0 80078280 8C6E000C */  jal        func_8001BA30
/* 7AA3FB4 80078284 1400B2AF */   sw        $s2, 0x14($sp)
/* 7AA3FB8 80078288 21804000 */  addu       $s0, $v0, $zero
/* 7AA3FBC 8007828C 0E000012 */  beqz       $s0, .Llevel_37_800782C8
/* 7AA3FC0 80078290 21300000 */   addu      $a2, $zero, $zero
/* 7AA3FC4 80078294 0C00038E */  lw         $v1, 0xC($s0)
/* 7AA3FC8 80078298 0C00448E */  lw         $a0, 0xC($s2)
/* 7AA3FCC 8007829C 1000028E */  lw         $v0, 0x10($s0)
/* 7AA3FD0 800782A0 1000458E */  lw         $a1, 0x10($s2)
/* 7AA3FD4 800782A4 23206400 */  subu       $a0, $v1, $a0
/* 7AA3FD8 800782A8 203A010C */  jal        func_8004E880
/* 7AA3FDC 800782AC 23284500 */   subu      $a1, $v0, $a1
/* 7AA3FE0 800782B0 510002A2 */  sb         $v0, 0x51($s0)
/* 7AA3FE4 800782B4 FF004230 */  andi       $v0, $v0, 0xFF
/* 7AA3FE8 800782B8 04004014 */  bnez       $v0, .Llevel_37_800782CC
/* 7AA3FEC 800782BC 0C004426 */   addiu     $a0, $s2, 0xC
/* 7AA3FF0 800782C0 01000224 */  addiu      $v0, $zero, 0x1
/* 7AA3FF4 800782C4 510002A2 */  sb         $v0, 0x51($s0)
.Llevel_37_800782C8:
/* 7AA3FF8 800782C8 0C004426 */  addiu      $a0, $s2, 0xC
.Llevel_37_800782CC:
/* 7AA3FFC 800782CC BC02A526 */  addiu      $a1, $s5, 0x2BC
/* 7AA4000 800782D0 02000624 */  addiu      $a2, $zero, 0x2
/* 7AA4004 800782D4 21380000 */  addu       $a3, $zero, $zero
/* 7AA4008 800782D8 9500113C */  lui        $s1, (0x950000 >> 16)
/* 7AA400C 800782DC 1000B1AF */  sw         $s1, 0x10($sp)
/* 7AA4010 800782E0 4E64000C */  jal        func_80019138
/* 7AA4014 800782E4 1400B2AF */   sw        $s2, 0x14($sp)
/* 7AA4018 800782E8 15004010 */  beqz       $v0, .Llevel_37_80078340
/* 7AA401C 800782EC 0700C426 */   addiu     $a0, $s6, 0x7
/* 7AA4020 800782F0 0780103C */  lui        $s0, %hi(D_80071924)
/* 7AA4024 800782F4 24191026 */  addiu      $s0, $s0, %lo(D_80071924)
/* 7AA4028 800782F8 0000048E */  lw         $a0, 0x0($s0)
/* 7AA402C 800782FC 5502010C */  jal        func_80040954
/* 7AA4030 80078300 00000000 */   nop
/* 7AA4034 80078304 03000324 */  addiu      $v1, $zero, 0x3
/* 7AA4038 80078308 0D004314 */  bne        $v0, $v1, .Llevel_37_80078340
/* 7AA403C 8007830C 0700C426 */   addiu     $a0, $s6, 0x7
/* 7AA4040 80078310 0000028E */  lw         $v0, 0x0($s0)
/* 7AA4044 80078314 0780033C */  lui        $v1, %hi(D_8006D05C)
/* 7AA4048 80078318 5CD0638C */  lw         $v1, %lo(D_8006D05C)($v1)
/* 7AA404C 8007831C 3F004230 */  andi       $v0, $v0, 0x3F
/* 7AA4050 80078320 80100200 */  sll        $v0, $v0, 2
/* 7AA4054 80078324 21104300 */  addu       $v0, $v0, $v1
/* 7AA4058 80078328 0000438C */  lw         $v1, 0x0($v0)
/* 7AA405C 8007832C 00000000 */  nop
/* 7AA4060 80078330 0400628C */  lw         $v0, 0x4($v1)
/* 7AA4064 80078334 00000000 */  nop
/* 7AA4068 80078338 25105100 */  or         $v0, $v0, $s1
/* 7AA406C 8007833C 040062AC */  sw         $v0, 0x4($v1)
.Llevel_37_80078340:
/* 7AA4070 80078340 69D6000C */  jal        func_800359A4
/* 7AA4074 80078344 01000524 */   addiu     $a1, $zero, 0x1
/* 7AA4078 80078348 3C004010 */  beqz       $v0, .Llevel_37_8007843C
/* 7AA407C 8007834C 00000000 */   nop
/* 7AA4080 80078350 0C00C48E */  lw         $a0, 0xC($s6)
/* 7AA4084 80078354 00000000 */  nop
/* 7AA4088 80078358 03008010 */  beqz       $a0, .Llevel_37_80078368
/* 7AA408C 8007835C 00000000 */   nop
/* 7AA4090 80078360 E242010C */  jal        func_80050B88
/* 7AA4094 80078364 00000000 */   nop
.Llevel_37_80078368:
/* 7AA4098 80078368 C656010C */  jal        func_80055B18
/* 7AA409C 8007836C 21204002 */   addu      $a0, $s2, $zero
/* 7AA40A0 80078370 0FE10108 */  j          .Llevel_37_8007843C
/* 7AA40A4 80078374 00000000 */   nop
.Llevel_37_80078378:
/* 7AA40A8 80078378 0700C426 */  addiu      $a0, $s6, 0x7
/* 7AA40AC 8007837C 69D6000C */  jal        func_800359A4
/* 7AA40B0 80078380 01000524 */   addiu     $a1, $zero, 0x1
/* 7AA40B4 80078384 05004010 */  beqz       $v0, .Llevel_37_8007839C
/* 7AA40B8 80078388 00000000 */   nop
/* 7AA40BC 8007838C C656010C */  jal        func_80055B18
/* 7AA40C0 80078390 21204002 */   addu      $a0, $s2, $zero
/* 7AA40C4 80078394 1AE20108 */  j          .Llevel_37_80078868
/* 7AA40C8 80078398 00000000 */   nop
.Llevel_37_8007839C:
/* 7AA40CC 8007839C 0700C392 */  lbu        $v1, 0x7($s6)
/* 7AA40D0 800783A0 00000000 */  nop
/* 7AA40D4 800783A4 80100300 */  sll        $v0, $v1, 2
/* 7AA40D8 800783A8 21104300 */  addu       $v0, $v0, $v1
/* 7AA40DC 800783AC 80100200 */  sll        $v0, $v0, 2
/* 7AA40E0 800783B0 00040324 */  addiu      $v1, $zero, 0x400
/* 7AA40E4 800783B4 23186200 */  subu       $v1, $v1, $v0
/* 7AA40E8 800783B8 00400224 */  addiu      $v0, $zero, 0x4000
/* 7AA40EC 800783BC 1A004300 */  div        $zero, $v0, $v1
/* 7AA40F0 800783C0 02006014 */  bnez       $v1, .Llevel_37_800783CC
/* 7AA40F4 800783C4 00000000 */   nop
/* 7AA40F8 800783C8 0D000700 */  break      7
.Llevel_37_800783CC:
/* 7AA40FC 800783CC FFFF0124 */  addiu      $at, $zero, -0x1
/* 7AA4100 800783D0 04006114 */  bne        $v1, $at, .Llevel_37_800783E4
/* 7AA4104 800783D4 0080013C */   lui       $at, (0x80000000 >> 16)
/* 7AA4108 800783D8 02004114 */  bne        $v0, $at, .Llevel_37_800783E4
/* 7AA410C 800783DC 00000000 */   nop
/* 7AA4110 800783E0 0D000600 */  break      6
.Llevel_37_800783E4:
/* 7AA4114 800783E4 12100000 */  mflo       $v0
/* 7AA4118 800783E8 00000000 */  nop
/* 7AA411C 800783EC 4F0042A2 */  sb         $v0, 0x4F($s2)
/* 7AA4120 800783F0 FF004230 */  andi       $v0, $v0, 0xFF
/* 7AA4124 800783F4 8000422C */  sltiu      $v0, $v0, 0x80
/* 7AA4128 800783F8 02004014 */  bnez       $v0, .Llevel_37_80078404
/* 7AA412C 800783FC 7F000224 */   addiu     $v0, $zero, 0x7F
/* 7AA4130 80078400 4F0042A2 */  sb         $v0, 0x4F($s2)
.Llevel_37_80078404:
/* 7AA4134 80078404 4F004292 */  lbu        $v0, 0x4F($s2)
/* 7AA4138 80078408 00000000 */  nop
/* 7AA413C 8007840C 1200422C */  sltiu      $v0, $v0, 0x12
/* 7AA4140 80078410 02004010 */  beqz       $v0, .Llevel_37_8007841C
/* 7AA4144 80078414 12000224 */   addiu     $v0, $zero, 0x12
/* 7AA4148 80078418 4F0042A2 */  sb         $v0, 0x4F($s2)
.Llevel_37_8007841C:
/* 7AA414C 8007841C 0700C292 */  lbu        $v0, 0x7($s6)
/* 7AA4150 80078420 00000000 */  nop
/* 7AA4154 80078424 80100200 */  sll        $v0, $v0, 2
/* 7AA4158 80078428 540042A2 */  sb         $v0, 0x54($s2)
/* 7AA415C 8007842C 0700C292 */  lbu        $v0, 0x7($s6)
/* 7AA4160 80078430 00000000 */  nop
/* 7AA4164 80078434 40100200 */  sll        $v0, $v0, 1
/* 7AA4168 80078438 550042A2 */  sb         $v0, 0x55($s2)
.Llevel_37_8007843C:
/* 7AA416C 8007843C 48004392 */  lbu        $v1, 0x48($s2)
/* 7AA4170 80078440 02000224 */  addiu      $v0, $zero, 0x2
/* 7AA4174 80078444 08016210 */  beq        $v1, $v0, .Llevel_37_80078868
/* 7AA4178 80078448 AA2A103C */   lui       $s0, (0x2AAAAAAB >> 16)
/* 7AA417C 8007844C 0800D38E */  lw         $s3, 0x8($s6)
/* 7AA4180 80078450 00000000 */  nop
/* 7AA4184 80078454 00006386 */  lh         $v1, 0x0($s3)
/* 7AA4188 80078458 ABAA1036 */  ori        $s0, $s0, (0x2AAAAAAB & 0xFFFF)
/* 7AA418C 8007845C 01006624 */  addiu      $a2, $v1, 0x1
/* 7AA4190 80078460 1800D000 */  mult       $a2, $s0
/* 7AA4194 80078464 0C004526 */  addiu      $a1, $s2, 0xC
/* 7AA4198 80078468 40100300 */  sll        $v0, $v1, 1
/* 7AA419C 8007846C 21104300 */  addu       $v0, $v0, $v1
/* 7AA41A0 80078470 80100200 */  sll        $v0, $v0, 2
/* 7AA41A4 80078474 04005424 */  addiu      $s4, $v0, 0x4
/* 7AA41A8 80078478 21207402 */  addu       $a0, $s3, $s4
/* 7AA41AC 8007847C C3170600 */  sra        $v0, $a2, 31
/* 7AA41B0 80078480 10400000 */  mfhi       $t0
/* 7AA41B4 80078484 43180800 */  sra        $v1, $t0, 1
/* 7AA41B8 80078488 23B86200 */  subu       $s7, $v1, $v0
/* 7AA41BC 8007848C 40101700 */  sll        $v0, $s7, 1
/* 7AA41C0 80078490 21105700 */  addu       $v0, $v0, $s7
/* 7AA41C4 80078494 80100200 */  sll        $v0, $v0, 2
/* 7AA41C8 80078498 5E3C010C */  jal        func_8004F178
/* 7AA41CC 8007849C 23B8C200 */   subu      $s7, $a2, $v0
/* 7AA41D0 800784A0 00006586 */  lh         $a1, 0x0($s3)
/* 7AA41D4 800784A4 00000000 */  nop
/* 7AA41D8 800784A8 0100A524 */  addiu      $a1, $a1, 0x1
/* 7AA41DC 800784AC 1800B000 */  mult       $a1, $s0
/* 7AA41E0 800784B0 02006496 */  lhu        $a0, 0x2($s3)
/* 7AA41E4 800784B4 10017526 */  addiu      $s5, $s3, 0x110
/* 7AA41E8 800784B8 01008424 */  addiu      $a0, $a0, 0x1
/* 7AA41EC 800784BC C3170500 */  sra        $v0, $a1, 31
/* 7AA41F0 800784C0 020064A6 */  sh         $a0, 0x2($s3)
/* 7AA41F4 800784C4 00240400 */  sll        $a0, $a0, 16
/* 7AA41F8 800784C8 03240400 */  sra        $a0, $a0, 16
/* 7AA41FC 800784CC 0D008428 */  slti       $a0, $a0, 0xD
/* 7AA4200 800784D0 10400000 */  mfhi       $t0
/* 7AA4204 800784D4 43180800 */  sra        $v1, $t0, 1
/* 7AA4208 800784D8 23186200 */  subu       $v1, $v1, $v0
/* 7AA420C 800784DC 40100300 */  sll        $v0, $v1, 1
/* 7AA4210 800784E0 21104300 */  addu       $v0, $v0, $v1
/* 7AA4214 800784E4 80100200 */  sll        $v0, $v0, 2
/* 7AA4218 800784E8 2328A200 */  subu       $a1, $a1, $v0
/* 7AA421C 800784EC 94006826 */  addiu      $t0, $s3, 0x94
/* 7AA4220 800784F0 000065A6 */  sh         $a1, 0x0($s3)
/* 7AA4224 800784F4 9000A8AF */  sw         $t0, 0x90($sp)
/* 7AA4228 800784F8 18016826 */  addiu      $t0, $s3, 0x118
/* 7AA422C 800784FC 03008014 */  bnez       $a0, .Llevel_37_8007850C
/* 7AA4230 80078500 9800A8AF */   sw        $t0, 0x98($sp)
/* 7AA4234 80078504 0C000224 */  addiu      $v0, $zero, 0xC
/* 7AA4238 80078508 020062A6 */  sh         $v0, 0x2($s3)
.Llevel_37_8007850C:
/* 7AA423C 8007850C 02006286 */  lh         $v0, 0x2($s3)
/* 7AA4240 80078510 00000000 */  nop
/* 7AA4244 80078514 0C004228 */  slti       $v0, $v0, 0xC
/* 7AA4248 80078518 02004010 */  beqz       $v0, .Llevel_37_80078524
/* 7AA424C 8007851C 6000A427 */   addiu     $a0, $sp, 0x60
/* 7AA4250 80078520 21B80000 */  addu       $s7, $zero, $zero
.Llevel_37_80078524:
/* 7AA4254 80078524 7800A527 */  addiu      $a1, $sp, 0x78
/* 7AA4258 80078528 21300000 */  addu       $a2, $zero, $zero
/* 7AA425C 8007852C 21F08002 */  addu       $fp, $s4, $zero
/* 7AA4260 80078530 0780033C */  lui        $v1, %hi(D_8006C640)
/* 7AA4264 80078534 40C6638C */  lw         $v1, %lo(D_8006C640)($v1)
/* 7AA4268 80078538 9000B48F */  lw         $s4, 0x90($sp)
/* 7AA426C 8007853C C0100300 */  sll        $v0, $v1, 3
/* 7AA4270 80078540 23104300 */  subu       $v0, $v0, $v1
/* 7AA4274 80078544 6000A2A3 */  sb         $v0, 0x60($sp)
/* 7AA4278 80078548 45004292 */  lbu        $v0, 0x45($s2)
/* 7AA427C 8007854C 21800000 */  addu       $s0, $zero, $zero
/* 7AA4280 80078550 6100A2A3 */  sb         $v0, 0x61($sp)
/* 7AA4284 80078554 46004292 */  lbu        $v0, 0x46($s2)
/* 7AA4288 80078558 6800B127 */  addiu      $s1, $sp, 0x68
/* 7AA428C 8007855C A43A010C */  jal        func_8004EA90
/* 7AA4290 80078560 6200A2A3 */   sb        $v0, 0x62($sp)
/* 7AA4294 80078564 21204002 */  addu       $a0, $s2, $zero
/* 7AA4298 80078568 4957010C */  jal        func_80055D24
/* 7AA429C 8007856C 04000524 */   addiu     $a1, $zero, 0x4
.Llevel_37_80078570:
/* 7AA42A0 80078570 6666033C */  lui        $v1, (0x66666667 >> 16)
/* 7AA42A4 80078574 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* 7AA42A8 80078578 00121000 */  sll        $v0, $s0, 8
/* 7AA42AC 8007857C 18004300 */  mult       $v0, $v1
/* 7AA42B0 80078580 7800A427 */  addiu      $a0, $sp, 0x78
/* 7AA42B4 80078584 21282002 */  addu       $a1, $s1, $zero
/* 7AA42B8 80078588 C3170200 */  sra        $v0, $v0, 31
/* 7AA42BC 8007858C 6800A0AF */  sw         $zero, 0x68($sp)
/* 7AA42C0 80078590 10400000 */  mfhi       $t0
/* 7AA42C4 80078594 43380800 */  sra        $a3, $t0, 1
/* 7AA42C8 80078598 2338E200 */  subu       $a3, $a3, $v0
/* 7AA42CC 8007859C 40380700 */  sll        $a3, $a3, 1
/* 7AA42D0 800785A0 0680083C */  lui        $t0, %hi(D_80065920)
/* 7AA42D4 800785A4 20590825 */  addiu      $t0, $t0, %lo(D_80065920)
/* 7AA42D8 800785A8 2110E800 */  addu       $v0, $a3, $t0
/* 7AA42DC 800785AC 00004284 */  lh         $v0, 0x0($v0)
/* 7AA42E0 800785B0 21302002 */  addu       $a2, $s1, $zero
/* 7AA42E4 800785B4 80180200 */  sll        $v1, $v0, 2
/* 7AA42E8 800785B8 21186200 */  addu       $v1, $v1, $v0
/* 7AA42EC 800785BC 00110300 */  sll        $v0, $v1, 4
/* 7AA42F0 800785C0 23104300 */  subu       $v0, $v0, $v1
/* 7AA42F4 800785C4 C3120200 */  sra        $v0, $v0, 11
/* 7AA42F8 800785C8 6C00A2AF */  sw         $v0, 0x6C($sp)
/* 7AA42FC 800785CC 0680013C */  lui        $at, %hi(D_800658A0)
/* 7AA4300 800785D0 21082700 */  addu       $at, $at, $a3
/* 7AA4304 800785D4 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 7AA4308 800785D8 01001026 */  addiu      $s0, $s0, 0x1
/* 7AA430C 800785DC 80180200 */  sll        $v1, $v0, 2
/* 7AA4310 800785E0 21186200 */  addu       $v1, $v1, $v0
/* 7AA4314 800785E4 00110300 */  sll        $v0, $v1, 4
/* 7AA4318 800785E8 23104300 */  subu       $v0, $v0, $v1
/* 7AA431C 800785EC C3120200 */  sra        $v0, $v0, 11
/* 7AA4320 800785F0 5B3B010C */  jal        func_8004ED6C
/* 7AA4324 800785F4 7000A2AF */   sw        $v0, 0x70($sp)
/* 7AA4328 800785F8 21208002 */  addu       $a0, $s4, $zero
/* 7AA432C 800785FC 21287E02 */  addu       $a1, $s3, $fp
/* 7AA4330 80078600 653C010C */  jal        func_8004F194
/* 7AA4334 80078604 21302002 */   addu      $a2, $s1, $zero
/* 7AA4338 80078608 0500022A */  slti       $v0, $s0, 0x5
/* 7AA433C 8007860C D8FF4014 */  bnez       $v0, .Llevel_37_80078570
/* 7AA4340 80078610 0C009426 */   addiu     $s4, $s4, 0xC
/* 7AA4344 80078614 21800000 */  addu       $s0, $zero, $zero
/* 7AA4348 80078618 06801E3C */  lui        $fp, %hi(D_80065920)
/* 7AA434C 8007861C 2059DE27 */  addiu      $fp, $fp, %lo(D_80065920)
/* 7AA4350 80078620 21902002 */  addu       $s2, $s1, $zero
/* 7AA4354 80078624 40101700 */  sll        $v0, $s7, 1
/* 7AA4358 80078628 21105700 */  addu       $v0, $v0, $s7
/* 7AA435C 8007862C 80100200 */  sll        $v0, $v0, 2
/* 7AA4360 80078630 04005424 */  addiu      $s4, $v0, 0x4
/* 7AA4364 80078634 3C001124 */  addiu      $s1, $zero, 0x3C
.Llevel_37_80078638:
/* 7AA4368 80078638 6666033C */  lui        $v1, (0x66666667 >> 16)
/* 7AA436C 8007863C 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* 7AA4370 80078640 00121000 */  sll        $v0, $s0, 8
/* 7AA4374 80078644 18004300 */  mult       $v0, $v1
/* 7AA4378 80078648 7800A427 */  addiu      $a0, $sp, 0x78
/* 7AA437C 8007864C 21284002 */  addu       $a1, $s2, $zero
/* 7AA4380 80078650 C3170200 */  sra        $v0, $v0, 31
/* 7AA4384 80078654 6800A0AF */  sw         $zero, 0x68($sp)
/* 7AA4388 80078658 10400000 */  mfhi       $t0
/* 7AA438C 8007865C 43380800 */  sra        $a3, $t0, 1
/* 7AA4390 80078660 2338E200 */  subu       $a3, $a3, $v0
/* 7AA4394 80078664 40380700 */  sll        $a3, $a3, 1
/* 7AA4398 80078668 2110FE00 */  addu       $v0, $a3, $fp
/* 7AA439C 8007866C 00004384 */  lh         $v1, 0x0($v0)
/* 7AA43A0 80078670 21304002 */  addu       $a2, $s2, $zero
/* 7AA43A4 80078674 40100300 */  sll        $v0, $v1, 1
/* 7AA43A8 80078678 21104300 */  addu       $v0, $v0, $v1
/* 7AA43AC 8007867C C0100200 */  sll        $v0, $v0, 3
/* 7AA43B0 80078680 21104300 */  addu       $v0, $v0, $v1
/* 7AA43B4 80078684 83120200 */  sra        $v0, $v0, 10
/* 7AA43B8 80078688 6C00A2AF */  sw         $v0, 0x6C($sp)
/* 7AA43BC 8007868C 0680013C */  lui        $at, %hi(D_800658A0)
/* 7AA43C0 80078690 21082700 */  addu       $at, $at, $a3
/* 7AA43C4 80078694 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 7AA43C8 80078698 01001026 */  addiu      $s0, $s0, 0x1
/* 7AA43CC 8007869C 40100300 */  sll        $v0, $v1, 1
/* 7AA43D0 800786A0 21104300 */  addu       $v0, $v0, $v1
/* 7AA43D4 800786A4 C0100200 */  sll        $v0, $v0, 3
/* 7AA43D8 800786A8 21104300 */  addu       $v0, $v0, $v1
/* 7AA43DC 800786AC 83120200 */  sra        $v0, $v0, 10
/* 7AA43E0 800786B0 5B3B010C */  jal        func_8004ED6C
/* 7AA43E4 800786B4 7000A2AF */   sw        $v0, 0x70($sp)
/* 7AA43E8 800786B8 21287402 */  addu       $a1, $s3, $s4
/* 7AA43EC 800786BC 9000A88F */  lw         $t0, 0x90($sp)
/* 7AA43F0 800786C0 21304002 */  addu       $a2, $s2, $zero
/* 7AA43F4 800786C4 653C010C */  jal        func_8004F194
/* 7AA43F8 800786C8 21201101 */   addu      $a0, $t0, $s1
/* 7AA43FC 800786CC 0500022A */  slti       $v0, $s0, 0x5
/* 7AA4400 800786D0 D9FF4014 */  bnez       $v0, .Llevel_37_80078638
/* 7AA4404 800786D4 0C003126 */   addiu     $s1, $s1, 0xC
/* 7AA4408 800786D8 9000A88F */  lw         $t0, 0x90($sp)
/* 7AA440C 800786DC FFFF0224 */  addiu      $v0, $zero, -0x1
/* 7AA4410 800786E0 780002AD */  sw         $v0, 0x78($t0)
/* 7AA4414 800786E4 8C000224 */  addiu      $v0, $zero, 0x8C
/* 7AA4418 800786E8 0000A2A2 */  sb         $v0, 0x0($s5)
/* 7AA441C 800786EC 64000224 */  addiu      $v0, $zero, 0x64
/* 7AA4420 800786F0 0100A2A2 */  sb         $v0, 0x1($s5)
/* 7AA4424 800786F4 28000224 */  addiu      $v0, $zero, 0x28
/* 7AA4428 800786F8 0200A2A2 */  sb         $v0, 0x2($s5)
/* 7AA442C 800786FC 02006586 */  lh         $a1, 0x2($s3)
/* 7AA4430 80078700 00000000 */  nop
/* 7AA4434 80078704 0C00A228 */  slti       $v0, $a1, 0xC
/* 7AA4438 80078708 28004010 */  beqz       $v0, .Llevel_37_800787AC
/* 7AA443C 8007870C 0C000424 */   addiu     $a0, $zero, 0xC
/* 7AA4440 80078710 0000A392 */  lbu        $v1, 0x0($s5)
/* 7AA4444 80078714 23108500 */  subu       $v0, $a0, $a1
/* 7AA4448 80078718 18006200 */  mult       $v1, $v0
/* 7AA444C 8007871C 12180000 */  mflo       $v1
/* 7AA4450 80078720 AA2A053C */  lui        $a1, (0x2AAAAAAB >> 16)
/* 7AA4454 80078724 ABAAA534 */  ori        $a1, $a1, (0x2AAAAAAB & 0xFFFF)
/* 7AA4458 80078728 18006500 */  mult       $v1, $a1
/* 7AA445C 8007872C C31F0300 */  sra        $v1, $v1, 31
/* 7AA4460 80078730 10400000 */  mfhi       $t0
/* 7AA4464 80078734 43100800 */  sra        $v0, $t0, 1
/* 7AA4468 80078738 23104300 */  subu       $v0, $v0, $v1
/* 7AA446C 8007873C 0400A2A2 */  sb         $v0, 0x4($s5)
/* 7AA4470 80078740 02006286 */  lh         $v0, 0x2($s3)
/* 7AA4474 80078744 0100A392 */  lbu        $v1, 0x1($s5)
/* 7AA4478 80078748 23108200 */  subu       $v0, $a0, $v0
/* 7AA447C 8007874C 18006200 */  mult       $v1, $v0
/* 7AA4480 80078750 12180000 */  mflo       $v1
/* 7AA4484 80078754 00000000 */  nop
/* 7AA4488 80078758 00000000 */  nop
/* 7AA448C 8007875C 18006500 */  mult       $v1, $a1
/* 7AA4490 80078760 C31F0300 */  sra        $v1, $v1, 31
/* 7AA4494 80078764 10400000 */  mfhi       $t0
/* 7AA4498 80078768 43100800 */  sra        $v0, $t0, 1
/* 7AA449C 8007876C 23104300 */  subu       $v0, $v0, $v1
/* 7AA44A0 80078770 0500A2A2 */  sb         $v0, 0x5($s5)
/* 7AA44A4 80078774 02006286 */  lh         $v0, 0x2($s3)
/* 7AA44A8 80078778 0200A392 */  lbu        $v1, 0x2($s5)
/* 7AA44AC 8007877C 23208200 */  subu       $a0, $a0, $v0
/* 7AA44B0 80078780 18006400 */  mult       $v1, $a0
/* 7AA44B4 80078784 12180000 */  mflo       $v1
/* 7AA44B8 80078788 00000000 */  nop
/* 7AA44BC 8007878C 00000000 */  nop
/* 7AA44C0 80078790 18006500 */  mult       $v1, $a1
/* 7AA44C4 80078794 C31F0300 */  sra        $v1, $v1, 31
/* 7AA44C8 80078798 10400000 */  mfhi       $t0
/* 7AA44CC 8007879C 43100800 */  sra        $v0, $t0, 1
/* 7AA44D0 800787A0 23104300 */  subu       $v0, $v0, $v1
/* 7AA44D4 800787A4 EEE10108 */  j          .Llevel_37_800787B8
/* 7AA44D8 800787A8 0600A2A2 */   sb        $v0, 0x6($s5)
.Llevel_37_800787AC:
/* 7AA44DC 800787AC 0400A0A2 */  sb         $zero, 0x4($s5)
/* 7AA44E0 800787B0 0500A0A2 */  sb         $zero, 0x5($s5)
/* 7AA44E4 800787B4 0600A0A2 */  sb         $zero, 0x6($s5)
.Llevel_37_800787B8:
/* 7AA44E8 800787B8 21800000 */  addu       $s0, $zero, $zero
/* 7AA44EC 800787BC 6666063C */  lui        $a2, (0x66666667 >> 16)
/* 7AA44F0 800787C0 6766C634 */  ori        $a2, $a2, (0x66666667 & 0xFFFF)
/* 7AA44F4 800787C4 01000524 */  addiu      $a1, $zero, 0x1
.Llevel_37_800787C8:
/* 7AA44F8 800787C8 01000326 */  addiu      $v1, $s0, 0x1
/* 7AA44FC 800787CC C0201000 */  sll        $a0, $s0, 3
/* 7AA4500 800787D0 18006600 */  mult       $v1, $a2
/* 7AA4504 800787D4 9800A88F */  lw         $t0, 0x98($sp)
/* 7AA4508 800787D8 05000226 */  addiu      $v0, $s0, 0x5
/* 7AA450C 800787DC 21208800 */  addu       $a0, $a0, $t0
/* 7AA4510 800787E0 000090A0 */  sb         $s0, 0x0($a0)
/* 7AA4514 800787E4 21806000 */  addu       $s0, $v1, $zero
/* 7AA4518 800787E8 020082A0 */  sb         $v0, 0x2($a0)
/* 7AA451C 800787EC C3171000 */  sra        $v0, $s0, 31
/* 7AA4520 800787F0 040080A0 */  sb         $zero, 0x4($a0)
/* 7AA4524 800787F4 050080A0 */  sb         $zero, 0x5($a0)
/* 7AA4528 800787F8 060085A0 */  sb         $a1, 0x6($a0)
/* 7AA452C 800787FC 070085A0 */  sb         $a1, 0x7($a0)
/* 7AA4530 80078800 10400000 */  mfhi       $t0
/* 7AA4534 80078804 43180800 */  sra        $v1, $t0, 1
/* 7AA4538 80078808 23186200 */  subu       $v1, $v1, $v0
/* 7AA453C 8007880C 80100300 */  sll        $v0, $v1, 2
/* 7AA4540 80078810 21104300 */  addu       $v0, $v0, $v1
/* 7AA4544 80078814 23100202 */  subu       $v0, $s0, $v0
/* 7AA4548 80078818 010082A0 */  sb         $v0, 0x1($a0)
/* 7AA454C 8007881C 05004224 */  addiu      $v0, $v0, 0x5
/* 7AA4550 80078820 030082A0 */  sb         $v0, 0x3($a0)
/* 7AA4554 80078824 0500022A */  slti       $v0, $s0, 0x5
/* 7AA4558 80078828 E7FF4014 */  bnez       $v0, .Llevel_37_800787C8
/* 7AA455C 8007882C FFFF0224 */   addiu     $v0, $zero, -0x1
/* 7AA4560 80078830 9800A88F */  lw         $t0, 0x98($sp)
/* 7AA4564 80078834 00000000 */  nop
/* 7AA4568 80078838 280002AD */  sw         $v0, 0x28($t0)
/* 7AA456C 8007883C 0C00C28E */  lw         $v0, 0xC($s6)
/* 7AA4570 80078840 00000000 */  nop
/* 7AA4574 80078844 08004014 */  bnez       $v0, .Llevel_37_80078868
/* 7AA4578 80078848 2128A002 */   addu      $a1, $s5, $zero
/* 7AA457C 8007884C 1000C726 */  addiu      $a3, $s6, 0x10
/* 7AA4580 80078850 9000A48F */  lw         $a0, 0x90($sp)
/* 7AA4584 80078854 9800A68F */  lw         $a2, 0x98($sp)
/* 7AA4588 80078858 01000224 */  addiu      $v0, $zero, 0x1
/* 7AA458C 8007885C C042010C */  jal        func_80050B00
/* 7AA4590 80078860 1000A2AF */   sw        $v0, 0x10($sp)
/* 7AA4594 80078864 0C00C2AE */  sw         $v0, 0xC($s6)
.Llevel_37_80078868:
/* 7AA4598 80078868 C400BF8F */  lw         $ra, 0xC4($sp)
/* 7AA459C 8007886C C000BE8F */  lw         $fp, 0xC0($sp)
/* 7AA45A0 80078870 BC00B78F */  lw         $s7, 0xBC($sp)
/* 7AA45A4 80078874 B800B68F */  lw         $s6, 0xB8($sp)
/* 7AA45A8 80078878 B400B58F */  lw         $s5, 0xB4($sp)
/* 7AA45AC 8007887C B000B48F */  lw         $s4, 0xB0($sp)
/* 7AA45B0 80078880 AC00B38F */  lw         $s3, 0xAC($sp)
/* 7AA45B4 80078884 A800B28F */  lw         $s2, 0xA8($sp)
/* 7AA45B8 80078888 A400B18F */  lw         $s1, 0xA4($sp)
/* 7AA45BC 8007888C A000B08F */  lw         $s0, 0xA0($sp)
/* 7AA45C0 80078890 C800BD27 */  addiu      $sp, $sp, 0xC8
/* 7AA45C4 80078894 0800E003 */  jr         $ra
/* 7AA45C8 80078898 00000000 */   nop
.size func_level_37_80077A90, . - func_level_37_80077A90
