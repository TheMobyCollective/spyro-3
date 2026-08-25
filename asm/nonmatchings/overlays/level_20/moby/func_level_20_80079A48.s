.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_20_80079A48
/* 50C9778 80079A48 38FFBD27 */  addiu      $sp, $sp, -0xC8
/* 50C977C 80079A4C A800B2AF */  sw         $s2, 0xA8($sp)
/* 50C9780 80079A50 21908000 */  addu       $s2, $a0, $zero
/* 50C9784 80079A54 C400BFAF */  sw         $ra, 0xC4($sp)
/* 50C9788 80079A58 C000BEAF */  sw         $fp, 0xC0($sp)
/* 50C978C 80079A5C BC00B7AF */  sw         $s7, 0xBC($sp)
/* 50C9790 80079A60 B800B6AF */  sw         $s6, 0xB8($sp)
/* 50C9794 80079A64 B400B5AF */  sw         $s5, 0xB4($sp)
/* 50C9798 80079A68 B000B4AF */  sw         $s4, 0xB0($sp)
/* 50C979C 80079A6C AC00B3AF */  sw         $s3, 0xAC($sp)
/* 50C97A0 80079A70 A400B1AF */  sw         $s1, 0xA4($sp)
/* 50C97A4 80079A74 A000B0AF */  sw         $s0, 0xA0($sp)
/* 50C97A8 80079A78 0C00458E */  lw         $a1, 0xC($s2)
/* 50C97AC 80079A7C 0000568E */  lw         $s6, 0x0($s2)
/* 50C97B0 80079A80 0004A228 */  slti       $v0, $a1, 0x400
/* 50C97B4 80079A84 11004014 */  bnez       $v0, .Llevel_20_80079ACC
/* 50C97B8 80079A88 00000000 */   nop
/* 50C97BC 80079A8C 1000448E */  lw         $a0, 0x10($s2)
/* 50C97C0 80079A90 00000000 */  nop
/* 50C97C4 80079A94 00048228 */  slti       $v0, $a0, 0x400
/* 50C97C8 80079A98 0C004014 */  bnez       $v0, .Llevel_20_80079ACC
/* 50C97CC 80079A9C 00000000 */   nop
/* 50C97D0 80079AA0 1400428E */  lw         $v0, 0x14($s2)
/* 50C97D4 80079AA4 00000000 */  nop
/* 50C97D8 80079AA8 00044228 */  slti       $v0, $v0, 0x400
/* 50C97DC 80079AAC 07004014 */  bnez       $v0, .Llevel_20_80079ACC
/* 50C97E0 80079AB0 0300033C */   lui       $v1, (0x3C000 >> 16)
/* 50C97E4 80079AB4 00C06334 */  ori        $v1, $v1, (0x3C000 & 0xFFFF)
/* 50C97E8 80079AB8 2A106500 */  slt        $v0, $v1, $a1
/* 50C97EC 80079ABC 03004014 */  bnez       $v0, .Llevel_20_80079ACC
/* 50C97F0 80079AC0 2A106400 */   slt       $v0, $v1, $a0
/* 50C97F4 80079AC4 09004010 */  beqz       $v0, .Llevel_20_80079AEC
/* 50C97F8 80079AC8 00000000 */   nop
.Llevel_20_80079ACC:
/* 50C97FC 80079ACC 0C00C48E */  lw         $a0, 0xC($s6)
/* 50C9800 80079AD0 00000000 */  nop
/* 50C9804 80079AD4 03008010 */  beqz       $a0, .Llevel_20_80079AE4
/* 50C9808 80079AD8 00000000 */   nop
/* 50C980C 80079ADC E242010C */  jal        func_80050B88
/* 50C9810 80079AE0 00000000 */   nop
.Llevel_20_80079AE4:
/* 50C9814 80079AE4 C656010C */  jal        func_80055B18
/* 50C9818 80079AE8 21204002 */   addu      $a0, $s2, $zero
.Llevel_20_80079AEC:
/* 50C981C 80079AEC 48004392 */  lbu        $v1, 0x48($s2)
/* 50C9820 80079AF0 02000224 */  addiu      $v0, $zero, 0x2
/* 50C9824 80079AF4 30006210 */  beq        $v1, $v0, .Llevel_20_80079BB8
/* 50C9828 80079AF8 01000224 */   addiu     $v0, $zero, 0x1
/* 50C982C 80079AFC 49004292 */  lbu        $v0, 0x49($s2)
/* 50C9830 80079B00 00000000 */  nop
/* 50C9834 80079B04 2C004014 */  bnez       $v0, .Llevel_20_80079BB8
/* 50C9838 80079B08 01000224 */   addiu     $v0, $zero, 0x1
/* 50C983C 80079B0C 0C005126 */  addiu      $s1, $s2, 0xC
/* 50C9840 80079B10 21282002 */  addu       $a1, $s1, $zero
/* 50C9844 80079B14 0800D08E */  lw         $s0, 0x8($s6)
/* 50C9848 80079B18 01001324 */  addiu      $s3, $zero, 0x1
/* 50C984C 80079B1C 490053A2 */  sb         $s3, 0x49($s2)
/* 50C9850 80079B20 5E3C010C */  jal        func_8004F178
/* 50C9854 80079B24 04000426 */   addiu     $a0, $s0, 0x4
/* 50C9858 80079B28 21202002 */  addu       $a0, $s1, $zero
/* 50C985C 80079B2C 58020524 */  addiu      $a1, $zero, 0x258
/* 50C9860 80079B30 21300000 */  addu       $a2, $zero, $zero
/* 50C9864 80079B34 21380000 */  addu       $a3, $zero, $zero
/* 50C9868 80079B38 01000224 */  addiu      $v0, $zero, 0x1
/* 50C986C 80079B3C 000002A6 */  sh         $v0, 0x0($s0)
/* 50C9870 80079B40 020002A6 */  sh         $v0, 0x2($s0)
/* 50C9874 80079B44 9500023C */  lui        $v0, (0x950000 >> 16)
/* 50C9878 80079B48 1000A2AF */  sw         $v0, 0x10($sp)
/* 50C987C 80079B4C 8C6E000C */  jal        func_8001BA30
/* 50C9880 80079B50 1400B2AF */   sw        $s2, 0x14($sp)
/* 50C9884 80079B54 21804000 */  addu       $s0, $v0, $zero
/* 50C9888 80079B58 0B000012 */  beqz       $s0, .Llevel_20_80079B88
/* 50C988C 80079B5C 00000000 */   nop
/* 50C9890 80079B60 0000C486 */  lh         $a0, 0x0($s6)
/* 50C9894 80079B64 0200C586 */  lh         $a1, 0x2($s6)
/* 50C9898 80079B68 203A010C */  jal        func_8004E880
/* 50C989C 80079B6C 21300000 */   addu      $a2, $zero, $zero
/* 50C98A0 80079B70 510002A2 */  sb         $v0, 0x51($s0)
/* 50C98A4 80079B74 FF004230 */  andi       $v0, $v0, 0xFF
/* 50C98A8 80079B78 02004014 */  bnez       $v0, .Llevel_20_80079B84
/* 50C98AC 80079B7C 00000000 */   nop
/* 50C98B0 80079B80 510013A2 */  sb         $s3, 0x51($s0)
.Llevel_20_80079B84:
/* 50C98B4 80079B84 480053A2 */  sb         $s3, 0x48($s2)
.Llevel_20_80079B88:
/* 50C98B8 80079B88 1000A0AF */  sw         $zero, 0x10($sp)
/* 50C98BC 80079B8C 0C004426 */  addiu      $a0, $s2, 0xC
/* 50C98C0 80079B90 0780053C */  lui        $a1, %hi(D_80070328)
/* 50C98C4 80079B94 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 50C98C8 80079B98 02000624 */  addiu      $a2, $zero, 0x2
/* 50C98CC 80079B9C C360000C */  jal        func_8001830C
/* 50C98D0 80079BA0 21380000 */   addu      $a3, $zero, $zero
/* 50C98D4 80079BA4 02004010 */  beqz       $v0, .Llevel_20_80079BB0
/* 50C98D8 80079BA8 01000224 */   addiu     $v0, $zero, 0x1
/* 50C98DC 80079BAC 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_20_80079BB0:
/* 50C98E0 80079BB0 48004392 */  lbu        $v1, 0x48($s2)
/* 50C98E4 80079BB4 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_20_80079BB8:
/* 50C98E8 80079BB8 AC006210 */  beq        $v1, $v0, .Llevel_20_80079E6C
/* 50C98EC 80079BBC 02006228 */   slti      $v0, $v1, 0x2
/* 50C98F0 80079BC0 05004010 */  beqz       $v0, .Llevel_20_80079BD8
/* 50C98F4 80079BC4 00000000 */   nop
/* 50C98F8 80079BC8 0A006010 */  beqz       $v1, .Llevel_20_80079BF4
/* 50C98FC 80079BCC 1800A427 */   addiu     $a0, $sp, 0x18
/* 50C9900 80079BD0 FDE80108 */  j          .Llevel_20_8007A3F4
/* 50C9904 80079BD4 00000000 */   nop
.Llevel_20_80079BD8:
/* 50C9908 80079BD8 02000224 */  addiu      $v0, $zero, 0x2
/* 50C990C 80079BDC D4016210 */  beq        $v1, $v0, .Llevel_20_8007A330
/* 50C9910 80079BE0 03000224 */   addiu     $v0, $zero, 0x3
/* 50C9914 80079BE4 11016210 */  beq        $v1, $v0, .Llevel_20_8007A02C
/* 50C9918 80079BE8 00000000 */   nop
/* 50C991C 80079BEC FDE80108 */  j          .Llevel_20_8007A3F4
/* 50C9920 80079BF0 00000000 */   nop
.Llevel_20_80079BF4:
/* 50C9924 80079BF4 0C005026 */  addiu      $s0, $s2, 0xC
/* 50C9928 80079BF8 5E3C010C */  jal        func_8004F178
/* 50C992C 80079BFC 21280002 */   addu      $a1, $s0, $zero
/* 50C9930 80079C00 1800A427 */  addiu      $a0, $sp, 0x18
/* 50C9934 80079C04 0000C386 */  lh         $v1, 0x0($s6)
/* 50C9938 80079C08 0C00428E */  lw         $v0, 0xC($s2)
/* 50C993C 80079C0C 21280002 */  addu       $a1, $s0, $zero
/* 50C9940 80079C10 21104300 */  addu       $v0, $v0, $v1
/* 50C9944 80079C14 0C0042AE */  sw         $v0, 0xC($s2)
/* 50C9948 80079C18 0200C386 */  lh         $v1, 0x2($s6)
/* 50C994C 80079C1C 1000428E */  lw         $v0, 0x10($s2)
/* 50C9950 80079C20 02000624 */  addiu      $a2, $zero, 0x2
/* 50C9954 80079C24 21104300 */  addu       $v0, $v0, $v1
/* 50C9958 80079C28 100042AE */  sw         $v0, 0x10($s2)
/* 50C995C 80079C2C 0400C386 */  lh         $v1, 0x4($s6)
/* 50C9960 80079C30 1400428E */  lw         $v0, 0x14($s2)
/* 50C9964 80079C34 9500073C */  lui        $a3, (0x950000 >> 16)
/* 50C9968 80079C38 21104300 */  addu       $v0, $v0, $v1
/* 50C996C 80079C3C 140042AE */  sw         $v0, 0x14($s2)
/* 50C9970 80079C40 0780013C */  lui        $at, %hi(D_80071934)
/* 50C9974 80079C44 341920AC */  sw         $zero, %lo(D_80071934)($at)
/* 50C9978 80079C48 C360000C */  jal        func_8001830C
/* 50C997C 80079C4C 1000A0AF */   sw        $zero, 0x10($sp)
/* 50C9980 80079C50 05004010 */  beqz       $v0, .Llevel_20_80079C68
/* 50C9984 80079C54 21200002 */   addu      $a0, $s0, $zero
/* 50C9988 80079C58 5E3C010C */  jal        func_8004F178
/* 50C998C 80079C5C 1800A527 */   addiu     $a1, $sp, 0x18
/* 50C9990 80079C60 01000224 */  addiu      $v0, $zero, 0x1
/* 50C9994 80079C64 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_20_80079C68:
/* 50C9998 80079C68 21200002 */  addu       $a0, $s0, $zero
/* 50C999C 80079C6C 90010524 */  addiu      $a1, $zero, 0x190
/* 50C99A0 80079C70 21300000 */  addu       $a2, $zero, $zero
/* 50C99A4 80079C74 21380000 */  addu       $a3, $zero, $zero
/* 50C99A8 80079C78 9500023C */  lui        $v0, (0x950000 >> 16)
/* 50C99AC 80079C7C 1000A2AF */  sw         $v0, 0x10($sp)
/* 50C99B0 80079C80 8C6E000C */  jal        func_8001BA30
/* 50C99B4 80079C84 1400B2AF */   sw        $s2, 0x14($sp)
/* 50C99B8 80079C88 21804000 */  addu       $s0, $v0, $zero
/* 50C99BC 80079C8C 1F000012 */  beqz       $s0, .Llevel_20_80079D0C
/* 50C99C0 80079C90 0C004426 */   addiu     $a0, $s2, 0xC
/* 50C99C4 80079C94 0000C486 */  lh         $a0, 0x0($s6)
/* 50C99C8 80079C98 0200C586 */  lh         $a1, 0x2($s6)
/* 50C99CC 80079C9C 203A010C */  jal        func_8004E880
/* 50C99D0 80079CA0 21300000 */   addu      $a2, $zero, $zero
/* 50C99D4 80079CA4 510002A2 */  sb         $v0, 0x51($s0)
/* 50C99D8 80079CA8 FF004230 */  andi       $v0, $v0, 0xFF
/* 50C99DC 80079CAC 02004014 */  bnez       $v0, .Llevel_20_80079CB8
/* 50C99E0 80079CB0 01000224 */   addiu     $v0, $zero, 0x1
/* 50C99E4 80079CB4 510002A2 */  sb         $v0, 0x51($s0)
.Llevel_20_80079CB8:
/* 50C99E8 80079CB8 36000396 */  lhu        $v1, 0x36($s0)
/* 50C99EC 80079CBC 00000000 */  nop
/* 50C99F0 80079CC0 38FF6224 */  addiu      $v0, $v1, -0xC8
/* 50C99F4 80079CC4 0200422C */  sltiu      $v0, $v0, 0x2
/* 50C99F8 80079CC8 10004014 */  bnez       $v0, .Llevel_20_80079D0C
/* 50C99FC 80079CCC 0C004426 */   addiu     $a0, $s2, 0xC
/* 50C9A00 80079CD0 00140300 */  sll        $v0, $v1, 16
/* 50C9A04 80079CD4 031C0200 */  sra        $v1, $v0, 16
/* 50C9A08 80079CD8 D1000224 */  addiu      $v0, $zero, 0xD1
/* 50C9A0C 80079CDC 0B006210 */  beq        $v1, $v0, .Llevel_20_80079D0C
/* 50C9A10 80079CE0 10010224 */   addiu     $v0, $zero, 0x110
/* 50C9A14 80079CE4 09006210 */  beq        $v1, $v0, .Llevel_20_80079D0C
/* 50C9A18 80079CE8 33020224 */   addiu     $v0, $zero, 0x233
/* 50C9A1C 80079CEC 07006210 */  beq        $v1, $v0, .Llevel_20_80079D0C
/* 50C9A20 80079CF0 D0000224 */   addiu     $v0, $zero, 0xD0
/* 50C9A24 80079CF4 36004386 */  lh         $v1, 0x36($s2)
/* 50C9A28 80079CF8 00000000 */  nop
/* 50C9A2C 80079CFC 03006210 */  beq        $v1, $v0, .Llevel_20_80079D0C
/* 50C9A30 80079D00 01000224 */   addiu     $v0, $zero, 0x1
/* 50C9A34 80079D04 480042A2 */  sb         $v0, 0x48($s2)
/* 50C9A38 80079D08 0C004426 */  addiu      $a0, $s2, 0xC
.Llevel_20_80079D0C:
/* 50C9A3C 80079D0C 2C010524 */  addiu      $a1, $zero, 0x12C
/* 50C9A40 80079D10 02000624 */  addiu      $a2, $zero, 0x2
/* 50C9A44 80079D14 21380000 */  addu       $a3, $zero, $zero
/* 50C9A48 80079D18 9500023C */  lui        $v0, (0x950000 >> 16)
/* 50C9A4C 80079D1C 1000A2AF */  sw         $v0, 0x10($sp)
/* 50C9A50 80079D20 4E64000C */  jal        func_80019138
/* 50C9A54 80079D24 1400B2AF */   sw        $s2, 0x14($sp)
/* 50C9A58 80079D28 0780023C */  lui        $v0, %hi(D_8006C640)
/* 50C9A5C 80079D2C 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 50C9A60 80079D30 00000000 */  nop
/* 50C9A64 80079D34 03004230 */  andi       $v0, $v0, 0x3
/* 50C9A68 80079D38 3A004014 */  bnez       $v0, .Llevel_20_80079E24
/* 50C9A6C 80079D3C 00000000 */   nop
/* 50C9A70 80079D40 0780023C */  lui        $v0, %hi(D_8006C578)
/* 50C9A74 80079D44 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 50C9A78 80079D48 0780033C */  lui        $v1, %hi(D_8006C574)
/* 50C9A7C 80079D4C 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 50C9A80 80079D50 00000000 */  nop
/* 50C9A84 80079D54 23104300 */  subu       $v0, $v0, $v1
/* 50C9A88 80079D58 15004228 */  slti       $v0, $v0, 0x15
/* 50C9A8C 80079D5C 31004014 */  bnez       $v0, .Llevel_20_80079E24
/* 50C9A90 80079D60 E3010424 */   addiu     $a0, $zero, 0x1E3
/* 50C9A94 80079D64 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 50C9A98 80079D68 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 50C9A9C 80079D6C 00000000 */  nop
/* 50C9AA0 80079D70 09F84000 */  jalr       $v0
/* 50C9AA4 80079D74 21284002 */   addu      $a1, $s2, $zero
/* 50C9AA8 80079D78 21804000 */  addu       $s0, $v0, $zero
/* 50C9AAC 80079D7C 29000012 */  beqz       $s0, .Llevel_20_80079E24
/* 50C9AB0 80079D80 2800A427 */   addiu     $a0, $sp, 0x28
/* 50C9AB4 80079D84 0000C286 */  lh         $v0, 0x0($s6)
/* 50C9AB8 80079D88 00000000 */  nop
/* 50C9ABC 80079D8C 2800A2AF */  sw         $v0, 0x28($sp)
/* 50C9AC0 80079D90 0200C286 */  lh         $v0, 0x2($s6)
/* 50C9AC4 80079D94 21280000 */  addu       $a1, $zero, $zero
/* 50C9AC8 80079D98 7A3B010C */  jal        func_8004EDE8
/* 50C9ACC 80079D9C 2C00A2AF */   sw        $v0, 0x2C($sp)
/* 50C9AD0 80079DA0 21204000 */  addu       $a0, $v0, $zero
/* 50C9AD4 80079DA4 0400C586 */  lh         $a1, 0x4($s6)
/* 50C9AD8 80079DA8 203A010C */  jal        func_8004E880
/* 50C9ADC 80079DAC 21300000 */   addu      $a2, $zero, $zero
/* 50C9AE0 80079DB0 450002A2 */  sb         $v0, 0x45($s0)
/* 50C9AE4 80079DB4 0000C486 */  lh         $a0, 0x0($s6)
/* 50C9AE8 80079DB8 0200C586 */  lh         $a1, 0x2($s6)
/* 50C9AEC 80079DBC 203A010C */  jal        func_8004E880
/* 50C9AF0 80079DC0 21300000 */   addu      $a2, $zero, $zero
/* 50C9AF4 80079DC4 460002A2 */  sb         $v0, 0x46($s0)
/* 50C9AF8 80079DC8 36000286 */  lh         $v0, 0x36($s0)
/* 50C9AFC 80079DCC 01000324 */  addiu      $v1, $zero, 0x1
/* 50C9B00 80079DD0 480003A2 */  sb         $v1, 0x48($s0)
/* 50C9B04 80079DD4 420000A2 */  sb         $zero, 0x42($s0)
/* 50C9B08 80079DD8 80100200 */  sll        $v0, $v0, 2
/* 50C9B0C 80079DDC 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 50C9B10 80079DE0 21082200 */  addu       $at, $at, $v0
/* 50C9B14 80079DE4 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 50C9B18 80079DE8 00000000 */  nop
/* 50C9B1C 80079DEC 4000428C */  lw         $v0, 0x40($v0)
/* 50C9B20 80079DF0 00000000 */  nop
/* 50C9B24 80079DF4 00004290 */  lbu        $v0, 0x0($v0)
/* 50C9B28 80079DF8 3C0003A2 */  sb         $v1, 0x3C($s0)
/* 50C9B2C 80079DFC 3D0003A2 */  sb         $v1, 0x3D($s0)
/* 50C9B30 80079E00 3F0003A2 */  sb         $v1, 0x3F($s0)
/* 50C9B34 80079E04 02000324 */  addiu      $v1, $zero, 0x2
/* 50C9B38 80079E08 3E0000A2 */  sb         $zero, 0x3E($s0)
/* 50C9B3C 80079E0C 480003A2 */  sb         $v1, 0x48($s0)
/* 50C9B40 80079E10 0200422C */  sltiu      $v0, $v0, 0x2
/* 50C9B44 80079E14 01004238 */  xori       $v0, $v0, 0x1
/* 50C9B48 80079E18 23100200 */  negu       $v0, $v0
/* 50C9B4C 80079E1C 30004230 */  andi       $v0, $v0, 0x30
/* 50C9B50 80079E20 400002A2 */  sb         $v0, 0x40($s0)
.Llevel_20_80079E24:
/* 50C9B54 80079E24 48004292 */  lbu        $v0, 0x48($s2)
/* 50C9B58 80079E28 00000000 */  nop
/* 50C9B5C 80079E2C 71014014 */  bnez       $v0, .Llevel_20_8007A3F4
/* 50C9B60 80079E30 0700C426 */   addiu     $a0, $s6, 0x7
/* 50C9B64 80079E34 69D6000C */  jal        func_800359A4
/* 50C9B68 80079E38 01000524 */   addiu     $a1, $zero, 0x1
/* 50C9B6C 80079E3C 6D014010 */  beqz       $v0, .Llevel_20_8007A3F4
/* 50C9B70 80079E40 00000000 */   nop
/* 50C9B74 80079E44 0C00C48E */  lw         $a0, 0xC($s6)
/* 50C9B78 80079E48 00000000 */  nop
/* 50C9B7C 80079E4C 04008010 */  beqz       $a0, .Llevel_20_80079E60
/* 50C9B80 80079E50 01000224 */   addiu     $v0, $zero, 0x1
/* 50C9B84 80079E54 E242010C */  jal        func_80050B88
/* 50C9B88 80079E58 00000000 */   nop
/* 50C9B8C 80079E5C 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_20_80079E60:
/* 50C9B90 80079E60 0C00C0AE */  sw         $zero, 0xC($s6)
/* 50C9B94 80079E64 FDE80108 */  j          .Llevel_20_8007A3F4
/* 50C9B98 80079E68 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_20_80079E6C:
/* 50C9B9C 80079E6C 21204002 */  addu       $a0, $s2, $zero
/* 50C9BA0 80079E70 01000524 */  addiu      $a1, $zero, 0x1
/* 50C9BA4 80079E74 AFEE000C */  jal        func_8003BABC
/* 50C9BA8 80079E78 21300000 */   addu      $a2, $zero, $zero
/* 50C9BAC 80079E7C 0780023C */  lui        $v0, %hi(D_8006C578)
/* 50C9BB0 80079E80 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 50C9BB4 80079E84 0780033C */  lui        $v1, %hi(D_8006C574)
/* 50C9BB8 80079E88 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 50C9BBC 80079E8C 00000000 */  nop
/* 50C9BC0 80079E90 23104300 */  subu       $v0, $v0, $v1
/* 50C9BC4 80079E94 15004228 */  slti       $v0, $v0, 0x15
/* 50C9BC8 80079E98 17004014 */  bnez       $v0, .Llevel_20_80079EF8
/* 50C9BCC 80079E9C 00000000 */   nop
/* 50C9BD0 80079EA0 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 50C9BD4 80079EA4 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 50C9BD8 80079EA8 00000000 */  nop
/* 50C9BDC 80079EAC 31754228 */  slti       $v0, $v0, 0x7531
/* 50C9BE0 80079EB0 11004014 */  bnez       $v0, .Llevel_20_80079EF8
/* 50C9BE4 80079EB4 46010424 */   addiu     $a0, $zero, 0x146
/* 50C9BE8 80079EB8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 50C9BEC 80079EBC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 50C9BF0 80079EC0 00000000 */  nop
/* 50C9BF4 80079EC4 09F84000 */  jalr       $v0
/* 50C9BF8 80079EC8 21284002 */   addu      $a1, $s2, $zero
/* 50C9BFC 80079ECC 21184000 */  addu       $v1, $v0, $zero
/* 50C9C00 80079ED0 09006010 */  beqz       $v1, .Llevel_20_80079EF8
/* 50C9C04 80079ED4 00000000 */   nop
/* 50C9C08 80079ED8 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 50C9C0C 80079EDC E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 50C9C10 80079EE0 00000000 */  nop
/* 50C9C14 80079EE4 24FA4224 */  addiu      $v0, $v0, -0x5DC
/* 50C9C18 80079EE8 0780013C */  lui        $at, %hi(D_8006C7E8)
/* 50C9C1C 80079EEC E8C722AC */  sw         $v0, %lo(D_8006C7E8)($at)
/* 50C9C20 80079EF0 07000224 */  addiu      $v0, $zero, 0x7
/* 50C9C24 80079EF4 470062A0 */  sb         $v0, 0x47($v1)
.Llevel_20_80079EF8:
/* 50C9C28 80079EF8 0780023C */  lui        $v0, %hi(D_8006C578)
/* 50C9C2C 80079EFC 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 50C9C30 80079F00 0780033C */  lui        $v1, %hi(D_8006C574)
/* 50C9C34 80079F04 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 50C9C38 80079F08 00000000 */  nop
/* 50C9C3C 80079F0C 23104300 */  subu       $v0, $v0, $v1
/* 50C9C40 80079F10 15004228 */  slti       $v0, $v0, 0x15
/* 50C9C44 80079F14 3B004014 */  bnez       $v0, .Llevel_20_8007A004
/* 50C9C48 80079F18 21A00000 */   addu      $s4, $zero, $zero
/* 50C9C4C 80079F1C 0780153C */  lui        $s5, %hi(D_8006E020)
/* 50C9C50 80079F20 20E0B526 */  addiu      $s5, $s5, %lo(D_8006E020)
/* 50C9C54 80079F24 21980000 */  addu       $s3, $zero, $zero
.Llevel_20_80079F28:
/* 50C9C58 80079F28 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 50C9C5C 80079F2C E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 50C9C60 80079F30 00000000 */  nop
/* 50C9C64 80079F34 31754228 */  slti       $v0, $v0, 0x7531
/* 50C9C68 80079F38 32004014 */  bnez       $v0, .Llevel_20_8007A004
/* 50C9C6C 80079F3C 1D020424 */   addiu     $a0, $zero, 0x21D
/* 50C9C70 80079F40 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 50C9C74 80079F44 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 50C9C78 80079F48 00000000 */  nop
/* 50C9C7C 80079F4C 09F84000 */  jalr       $v0
/* 50C9C80 80079F50 21284002 */   addu      $a1, $s2, $zero
/* 50C9C84 80079F54 21884000 */  addu       $s1, $v0, $zero
/* 50C9C88 80079F58 1D002012 */  beqz       $s1, .Llevel_20_80079FD0
/* 50C9C8C 80079F5C 21300000 */   addu      $a2, $zero, $zero
/* 50C9C90 80079F60 0C00428E */  lw         $v0, 0xC($s2)
/* 50C9C94 80079F64 0000A48E */  lw         $a0, 0x0($s5)
/* 50C9C98 80079F68 1000438E */  lw         $v1, 0x10($s2)
/* 50C9C9C 80079F6C 0400A58E */  lw         $a1, 0x4($s5)
/* 50C9CA0 80079F70 23204400 */  subu       $a0, $v0, $a0
/* 50C9CA4 80079F74 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 50C9CA8 80079F78 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 50C9CAC 80079F7C 00000000 */  nop
/* 50C9CB0 80079F80 18FC4224 */  addiu      $v0, $v0, -0x3E8
/* 50C9CB4 80079F84 0780013C */  lui        $at, %hi(D_8006C7E8)
/* 50C9CB8 80079F88 E8C722AC */  sw         $v0, %lo(D_8006C7E8)($at)
/* 50C9CBC 80079F8C 203A010C */  jal        func_8004E880
/* 50C9CC0 80079F90 23286500 */   subu      $a1, $v1, $a1
/* 50C9CC4 80079F94 9171010C */  jal        rand
/* 50C9CC8 80079F98 21804000 */   addu      $s0, $v0, $zero
/* 50C9CCC 80079F9C 40001026 */  addiu      $s0, $s0, 0x40
/* 50C9CD0 80079FA0 1F004230 */  andi       $v0, $v0, 0x1F
/* 50C9CD4 80079FA4 21800202 */  addu       $s0, $s0, $v0
/* 50C9CD8 80079FA8 9171010C */  jal        rand
/* 50C9CDC 80079FAC 460030A2 */   sb        $s0, 0x46($s1)
/* 50C9CE0 80079FB0 1E004230 */  andi       $v0, $v0, 0x1E
/* 50C9CE4 80079FB4 21106202 */  addu       $v0, $s3, $v0
/* 50C9CE8 80079FB8 F1FF4224 */  addiu      $v0, $v0, -0xF
/* 50C9CEC 80079FBC 450022A2 */  sb         $v0, 0x45($s1)
/* 50C9CF0 80079FC0 08000224 */  addiu      $v0, $zero, 0x8
/* 50C9CF4 80079FC4 470022A2 */  sb         $v0, 0x47($s1)
/* 50C9CF8 80079FC8 2A000224 */  addiu      $v0, $zero, 0x2A
/* 50C9CFC 80079FCC 4C0022A2 */  sb         $v0, 0x4C($s1)
.Llevel_20_80079FD0:
/* 50C9D00 80079FD0 01009426 */  addiu      $s4, $s4, 0x1
/* 50C9D04 80079FD4 0500822A */  slti       $v0, $s4, 0x5
/* 50C9D08 80079FD8 0A004010 */  beqz       $v0, .Llevel_20_8007A004
/* 50C9D0C 80079FDC 33007326 */   addiu     $s3, $s3, 0x33
/* 50C9D10 80079FE0 0780023C */  lui        $v0, %hi(D_8006C578)
/* 50C9D14 80079FE4 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 50C9D18 80079FE8 0780033C */  lui        $v1, %hi(D_8006C574)
/* 50C9D1C 80079FEC 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 50C9D20 80079FF0 00000000 */  nop
/* 50C9D24 80079FF4 23104300 */  subu       $v0, $v0, $v1
/* 50C9D28 80079FF8 15004228 */  slti       $v0, $v0, 0x15
/* 50C9D2C 80079FFC CAFF4010 */  beqz       $v0, .Llevel_20_80079F28
/* 50C9D30 8007A000 00000000 */   nop
.Llevel_20_8007A004:
/* 50C9D34 8007A004 21204002 */  addu       $a0, $s2, $zero
/* 50C9D38 8007A008 4957010C */  jal        func_80055D24
/* 50C9D3C 8007A00C 02000524 */   addiu     $a1, $zero, 0x2
/* 50C9D40 8007A010 14000224 */  addiu      $v0, $zero, 0x14
/* 50C9D44 8007A014 410040A2 */  sb         $zero, 0x41($s2)
/* 50C9D48 8007A018 4C0040A2 */  sb         $zero, 0x4C($s2)
/* 50C9D4C 8007A01C 4D0040A2 */  sb         $zero, 0x4D($s2)
/* 50C9D50 8007A020 0700C2A2 */  sb         $v0, 0x7($s6)
/* 50C9D54 8007A024 03000224 */  addiu      $v0, $zero, 0x3
/* 50C9D58 8007A028 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_20_8007A02C:
/* 50C9D5C 8007A02C 0700C292 */  lbu        $v0, 0x7($s6)
/* 50C9D60 8007A030 00000000 */  nop
/* 50C9D64 8007A034 0600422C */  sltiu      $v0, $v0, 0x6
/* 50C9D68 8007A038 35004014 */  bnez       $v0, .Llevel_20_8007A110
/* 50C9D6C 8007A03C 58021524 */   addiu     $s5, $zero, 0x258
/* 50C9D70 8007A040 21980000 */  addu       $s3, $zero, $zero
/* 50C9D74 8007A044 4800B427 */  addiu      $s4, $sp, 0x48
/* 50C9D78 8007A048 2800B127 */  addiu      $s1, $sp, 0x28
/* 50C9D7C 8007A04C 3800B027 */  addiu      $s0, $sp, 0x38
.Llevel_20_8007A050:
/* 50C9D80 8007A050 9171010C */  jal        rand
/* 50C9D84 8007A054 6000A0A3 */   sb        $zero, 0x60($sp)
/* 50C9D88 8007A058 9171010C */  jal        rand
/* 50C9D8C 8007A05C 6100A2A3 */   sb        $v0, 0x61($sp)
/* 50C9D90 8007A060 6000A427 */  addiu      $a0, $sp, 0x60
/* 50C9D94 8007A064 21288002 */  addu       $a1, $s4, $zero
/* 50C9D98 8007A068 21300000 */  addu       $a2, $zero, $zero
/* 50C9D9C 8007A06C A43A010C */  jal        func_8004EA90
/* 50C9DA0 8007A070 6200A2A3 */   sb        $v0, 0x62($sp)
/* 50C9DA4 8007A074 9171010C */  jal        rand
/* 50C9DA8 8007A078 01007326 */   addiu     $s3, $s3, 0x1
/* 50C9DAC 8007A07C 21208002 */  addu       $a0, $s4, $zero
/* 50C9DB0 8007A080 21282002 */  addu       $a1, $s1, $zero
/* 50C9DB4 8007A084 21302002 */  addu       $a2, $s1, $zero
/* 50C9DB8 8007A088 1F004230 */  andi       $v0, $v0, 0x1F
/* 50C9DBC 8007A08C 30004224 */  addiu      $v0, $v0, 0x30
/* 50C9DC0 8007A090 2800A2AF */  sw         $v0, 0x28($sp)
/* 50C9DC4 8007A094 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 50C9DC8 8007A098 5B3B010C */  jal        func_8004ED6C
/* 50C9DCC 8007A09C 3000A0AF */   sw        $zero, 0x30($sp)
/* 50C9DD0 8007A0A0 21200002 */  addu       $a0, $s0, $zero
/* 50C9DD4 8007A0A4 5E3C010C */  jal        func_8004F178
/* 50C9DD8 8007A0A8 21282002 */   addu      $a1, $s1, $zero
/* 50C9DDC 8007A0AC 21200002 */  addu       $a0, $s0, $zero
/* 50C9DE0 8007A0B0 3A3C010C */  jal        func_8004F0E8
/* 50C9DE4 8007A0B4 02000524 */   addiu     $a1, $zero, 0x2
/* 50C9DE8 8007A0B8 21200002 */  addu       $a0, $s0, $zero
/* 50C9DEC 8007A0BC 21280002 */  addu       $a1, $s0, $zero
/* 50C9DF0 8007A0C0 653C010C */  jal        func_8004F194
/* 50C9DF4 8007A0C4 0C004626 */   addiu     $a2, $s2, 0xC
/* 50C9DF8 8007A0C8 01000424 */  addiu      $a0, $zero, 0x1
/* 50C9DFC 8007A0CC 0D000524 */  addiu      $a1, $zero, 0xD
/* 50C9E00 8007A0D0 21300002 */  addu       $a2, $s0, $zero
/* 50C9E04 8007A0D4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 50C9E08 8007A0D8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 50C9E0C 8007A0DC 00000000 */  nop
/* 50C9E10 8007A0E0 09F84000 */  jalr       $v0
/* 50C9E14 8007A0E4 21382002 */   addu      $a3, $s1, $zero
/* 50C9E18 8007A0E8 0400622A */  slti       $v0, $s3, 0x4
/* 50C9E1C 8007A0EC D8FF4014 */  bnez       $v0, .Llevel_20_8007A050
/* 50C9E20 8007A0F0 06000424 */   addiu     $a0, $zero, 0x6
/* 50C9E24 8007A0F4 46000524 */  addiu      $a1, $zero, 0x46
/* 50C9E28 8007A0F8 0C004626 */  addiu      $a2, $s2, 0xC
/* 50C9E2C 8007A0FC 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 50C9E30 8007A100 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 50C9E34 8007A104 00000000 */  nop
/* 50C9E38 8007A108 09F84000 */  jalr       $v0
/* 50C9E3C 8007A10C 10000724 */   addiu     $a3, $zero, 0x10
.Llevel_20_8007A110:
/* 50C9E40 8007A110 0780023C */  lui        $v0, %hi(D_8006C640)
/* 50C9E44 8007A114 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 50C9E48 8007A118 00000000 */  nop
/* 50C9E4C 8007A11C 01004230 */  andi       $v0, $v0, 0x1
/* 50C9E50 8007A120 22004014 */  bnez       $v0, .Llevel_20_8007A1AC
/* 50C9E54 8007A124 00000000 */   nop
/* 50C9E58 8007A128 0780023C */  lui        $v0, %hi(D_8006C578)
/* 50C9E5C 8007A12C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 50C9E60 8007A130 0780033C */  lui        $v1, %hi(D_8006C574)
/* 50C9E64 8007A134 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 50C9E68 8007A138 00000000 */  nop
/* 50C9E6C 8007A13C 23104300 */  subu       $v0, $v0, $v1
/* 50C9E70 8007A140 15004228 */  slti       $v0, $v0, 0x15
/* 50C9E74 8007A144 19004014 */  bnez       $v0, .Llevel_20_8007A1AC
/* 50C9E78 8007A148 00000000 */   nop
/* 50C9E7C 8007A14C 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 50C9E80 8007A150 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 50C9E84 8007A154 00000000 */  nop
/* 50C9E88 8007A158 31754228 */  slti       $v0, $v0, 0x7531
/* 50C9E8C 8007A15C 13004014 */  bnez       $v0, .Llevel_20_8007A1AC
/* 50C9E90 8007A160 E2010424 */   addiu     $a0, $zero, 0x1E2
/* 50C9E94 8007A164 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 50C9E98 8007A168 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 50C9E9C 8007A16C 00000000 */  nop
/* 50C9EA0 8007A170 09F84000 */  jalr       $v0
/* 50C9EA4 8007A174 21284002 */   addu      $a1, $s2, $zero
/* 50C9EA8 8007A178 21184000 */  addu       $v1, $v0, $zero
/* 50C9EAC 8007A17C 0B006010 */  beqz       $v1, .Llevel_20_8007A1AC
/* 50C9EB0 8007A180 00000000 */   nop
/* 50C9EB4 8007A184 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 50C9EB8 8007A188 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 50C9EBC 8007A18C 00000000 */  nop
/* 50C9EC0 8007A190 24FA4224 */  addiu      $v0, $v0, -0x5DC
/* 50C9EC4 8007A194 0780013C */  lui        $at, %hi(D_8006C7E8)
/* 50C9EC8 8007A198 E8C722AC */  sw         $v0, %lo(D_8006C7E8)($at)
/* 50C9ECC 8007A19C 2A000224 */  addiu      $v0, $zero, 0x2A
/* 50C9ED0 8007A1A0 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 50C9ED4 8007A1A4 0A000224 */  addiu      $v0, $zero, 0xA
/* 50C9ED8 8007A1A8 470062A0 */  sb         $v0, 0x47($v1)
.Llevel_20_8007A1AC:
/* 50C9EDC 8007A1AC 0700C392 */  lbu        $v1, 0x7($s6)
/* 50C9EE0 8007A1B0 00000000 */  nop
/* 50C9EE4 8007A1B4 0B00622C */  sltiu      $v0, $v1, 0xB
/* 50C9EE8 8007A1B8 0F004014 */  bnez       $v0, .Llevel_20_8007A1F8
/* 50C9EEC 8007A1BC 1800A302 */   mult      $s5, $v1
/* 50C9EF0 8007A1C0 14000224 */  addiu      $v0, $zero, 0x14
/* 50C9EF4 8007A1C4 23104300 */  subu       $v0, $v0, $v1
/* 50C9EF8 8007A1C8 1800A202 */  mult       $s5, $v0
/* 50C9EFC 8007A1CC 12100000 */  mflo       $v0
/* 50C9F00 8007A1D0 6666033C */  lui        $v1, (0x66666667 >> 16)
/* 50C9F04 8007A1D4 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* 50C9F08 8007A1D8 18004300 */  mult       $v0, $v1
/* 50C9F0C 8007A1DC 43201500 */  sra        $a0, $s5, 1
/* 50C9F10 8007A1E0 C3170200 */  sra        $v0, $v0, 31
/* 50C9F14 8007A1E4 10400000 */  mfhi       $t0
/* 50C9F18 8007A1E8 C3180800 */  sra        $v1, $t0, 3
/* 50C9F1C 8007A1EC 23186200 */  subu       $v1, $v1, $v0
/* 50C9F20 8007A1F0 88E80108 */  j          .Llevel_20_8007A220
/* 50C9F24 8007A1F4 21A88300 */   addu      $s5, $a0, $v1
.Llevel_20_8007A1F8:
/* 50C9F28 8007A1F8 12180000 */  mflo       $v1
/* 50C9F2C 8007A1FC 6666023C */  lui        $v0, (0x66666667 >> 16)
/* 50C9F30 8007A200 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
/* 50C9F34 8007A204 18006200 */  mult       $v1, $v0
/* 50C9F38 8007A208 43201500 */  sra        $a0, $s5, 1
/* 50C9F3C 8007A20C C31F0300 */  sra        $v1, $v1, 31
/* 50C9F40 8007A210 10400000 */  mfhi       $t0
/* 50C9F44 8007A214 C3100800 */  sra        $v0, $t0, 3
/* 50C9F48 8007A218 23104300 */  subu       $v0, $v0, $v1
/* 50C9F4C 8007A21C 21A88200 */  addu       $s5, $a0, $v0
.Llevel_20_8007A220:
/* 50C9F50 8007A220 0C004426 */  addiu      $a0, $s2, 0xC
/* 50C9F54 8007A224 E803A526 */  addiu      $a1, $s5, 0x3E8
/* 50C9F58 8007A228 21300000 */  addu       $a2, $zero, $zero
/* 50C9F5C 8007A22C 21380000 */  addu       $a3, $zero, $zero
/* 50C9F60 8007A230 9500023C */  lui        $v0, (0x950000 >> 16)
/* 50C9F64 8007A234 1000A2AF */  sw         $v0, 0x10($sp)
/* 50C9F68 8007A238 8C6E000C */  jal        func_8001BA30
/* 50C9F6C 8007A23C 1400B2AF */   sw        $s2, 0x14($sp)
/* 50C9F70 8007A240 21804000 */  addu       $s0, $v0, $zero
/* 50C9F74 8007A244 0E000012 */  beqz       $s0, .Llevel_20_8007A280
/* 50C9F78 8007A248 21300000 */   addu      $a2, $zero, $zero
/* 50C9F7C 8007A24C 0C00038E */  lw         $v1, 0xC($s0)
/* 50C9F80 8007A250 0C00448E */  lw         $a0, 0xC($s2)
/* 50C9F84 8007A254 1000028E */  lw         $v0, 0x10($s0)
/* 50C9F88 8007A258 1000458E */  lw         $a1, 0x10($s2)
/* 50C9F8C 8007A25C 23206400 */  subu       $a0, $v1, $a0
/* 50C9F90 8007A260 203A010C */  jal        func_8004E880
/* 50C9F94 8007A264 23284500 */   subu      $a1, $v0, $a1
/* 50C9F98 8007A268 510002A2 */  sb         $v0, 0x51($s0)
/* 50C9F9C 8007A26C FF004230 */  andi       $v0, $v0, 0xFF
/* 50C9FA0 8007A270 04004014 */  bnez       $v0, .Llevel_20_8007A284
/* 50C9FA4 8007A274 0C004426 */   addiu     $a0, $s2, 0xC
/* 50C9FA8 8007A278 01000224 */  addiu      $v0, $zero, 0x1
/* 50C9FAC 8007A27C 510002A2 */  sb         $v0, 0x51($s0)
.Llevel_20_8007A280:
/* 50C9FB0 8007A280 0C004426 */  addiu      $a0, $s2, 0xC
.Llevel_20_8007A284:
/* 50C9FB4 8007A284 BC02A526 */  addiu      $a1, $s5, 0x2BC
/* 50C9FB8 8007A288 02000624 */  addiu      $a2, $zero, 0x2
/* 50C9FBC 8007A28C 21380000 */  addu       $a3, $zero, $zero
/* 50C9FC0 8007A290 9500113C */  lui        $s1, (0x950000 >> 16)
/* 50C9FC4 8007A294 1000B1AF */  sw         $s1, 0x10($sp)
/* 50C9FC8 8007A298 4E64000C */  jal        func_80019138
/* 50C9FCC 8007A29C 1400B2AF */   sw        $s2, 0x14($sp)
/* 50C9FD0 8007A2A0 15004010 */  beqz       $v0, .Llevel_20_8007A2F8
/* 50C9FD4 8007A2A4 0700C426 */   addiu     $a0, $s6, 0x7
/* 50C9FD8 8007A2A8 0780103C */  lui        $s0, %hi(D_80071924)
/* 50C9FDC 8007A2AC 24191026 */  addiu      $s0, $s0, %lo(D_80071924)
/* 50C9FE0 8007A2B0 0000048E */  lw         $a0, 0x0($s0)
/* 50C9FE4 8007A2B4 5502010C */  jal        func_80040954
/* 50C9FE8 8007A2B8 00000000 */   nop
/* 50C9FEC 8007A2BC 03000324 */  addiu      $v1, $zero, 0x3
/* 50C9FF0 8007A2C0 0D004314 */  bne        $v0, $v1, .Llevel_20_8007A2F8
/* 50C9FF4 8007A2C4 0700C426 */   addiu     $a0, $s6, 0x7
/* 50C9FF8 8007A2C8 0000028E */  lw         $v0, 0x0($s0)
/* 50C9FFC 8007A2CC 0780033C */  lui        $v1, %hi(D_8006D048 + 0x14)
/* 50CA000 8007A2D0 5CD0638C */  lw         $v1, %lo(D_8006D048 + 0x14)($v1)
/* 50CA004 8007A2D4 3F004230 */  andi       $v0, $v0, 0x3F
/* 50CA008 8007A2D8 80100200 */  sll        $v0, $v0, 2
/* 50CA00C 8007A2DC 21104300 */  addu       $v0, $v0, $v1
/* 50CA010 8007A2E0 0000438C */  lw         $v1, 0x0($v0)
/* 50CA014 8007A2E4 00000000 */  nop
/* 50CA018 8007A2E8 0400628C */  lw         $v0, 0x4($v1)
/* 50CA01C 8007A2EC 00000000 */  nop
/* 50CA020 8007A2F0 25105100 */  or         $v0, $v0, $s1
/* 50CA024 8007A2F4 040062AC */  sw         $v0, 0x4($v1)
.Llevel_20_8007A2F8:
/* 50CA028 8007A2F8 69D6000C */  jal        func_800359A4
/* 50CA02C 8007A2FC 01000524 */   addiu     $a1, $zero, 0x1
/* 50CA030 8007A300 3C004010 */  beqz       $v0, .Llevel_20_8007A3F4
/* 50CA034 8007A304 00000000 */   nop
/* 50CA038 8007A308 0C00C48E */  lw         $a0, 0xC($s6)
/* 50CA03C 8007A30C 00000000 */  nop
/* 50CA040 8007A310 03008010 */  beqz       $a0, .Llevel_20_8007A320
/* 50CA044 8007A314 00000000 */   nop
/* 50CA048 8007A318 E242010C */  jal        func_80050B88
/* 50CA04C 8007A31C 00000000 */   nop
.Llevel_20_8007A320:
/* 50CA050 8007A320 C656010C */  jal        func_80055B18
/* 50CA054 8007A324 21204002 */   addu      $a0, $s2, $zero
/* 50CA058 8007A328 FDE80108 */  j          .Llevel_20_8007A3F4
/* 50CA05C 8007A32C 00000000 */   nop
.Llevel_20_8007A330:
/* 50CA060 8007A330 0700C426 */  addiu      $a0, $s6, 0x7
/* 50CA064 8007A334 69D6000C */  jal        func_800359A4
/* 50CA068 8007A338 01000524 */   addiu     $a1, $zero, 0x1
/* 50CA06C 8007A33C 05004010 */  beqz       $v0, .Llevel_20_8007A354
/* 50CA070 8007A340 00000000 */   nop
/* 50CA074 8007A344 C656010C */  jal        func_80055B18
/* 50CA078 8007A348 21204002 */   addu      $a0, $s2, $zero
/* 50CA07C 8007A34C 08EA0108 */  j          .Llevel_20_8007A820
/* 50CA080 8007A350 00000000 */   nop
.Llevel_20_8007A354:
/* 50CA084 8007A354 0700C392 */  lbu        $v1, 0x7($s6)
/* 50CA088 8007A358 00000000 */  nop
/* 50CA08C 8007A35C 80100300 */  sll        $v0, $v1, 2
/* 50CA090 8007A360 21104300 */  addu       $v0, $v0, $v1
/* 50CA094 8007A364 80100200 */  sll        $v0, $v0, 2
/* 50CA098 8007A368 00040324 */  addiu      $v1, $zero, 0x400
/* 50CA09C 8007A36C 23186200 */  subu       $v1, $v1, $v0
/* 50CA0A0 8007A370 00400224 */  addiu      $v0, $zero, 0x4000
/* 50CA0A4 8007A374 1A004300 */  div        $zero, $v0, $v1
/* 50CA0A8 8007A378 02006014 */  bnez       $v1, .Llevel_20_8007A384
/* 50CA0AC 8007A37C 00000000 */   nop
/* 50CA0B0 8007A380 0D000700 */  break      7
.Llevel_20_8007A384:
/* 50CA0B4 8007A384 FFFF0124 */  addiu      $at, $zero, -0x1
/* 50CA0B8 8007A388 04006114 */  bne        $v1, $at, .Llevel_20_8007A39C
/* 50CA0BC 8007A38C 0080013C */   lui       $at, (0x80000000 >> 16)
/* 50CA0C0 8007A390 02004114 */  bne        $v0, $at, .Llevel_20_8007A39C
/* 50CA0C4 8007A394 00000000 */   nop
/* 50CA0C8 8007A398 0D000600 */  break      6
.Llevel_20_8007A39C:
/* 50CA0CC 8007A39C 12100000 */  mflo       $v0
/* 50CA0D0 8007A3A0 00000000 */  nop
/* 50CA0D4 8007A3A4 4F0042A2 */  sb         $v0, 0x4F($s2)
/* 50CA0D8 8007A3A8 FF004230 */  andi       $v0, $v0, 0xFF
/* 50CA0DC 8007A3AC 8000422C */  sltiu      $v0, $v0, 0x80
/* 50CA0E0 8007A3B0 02004014 */  bnez       $v0, .Llevel_20_8007A3BC
/* 50CA0E4 8007A3B4 7F000224 */   addiu     $v0, $zero, 0x7F
/* 50CA0E8 8007A3B8 4F0042A2 */  sb         $v0, 0x4F($s2)
.Llevel_20_8007A3BC:
/* 50CA0EC 8007A3BC 4F004292 */  lbu        $v0, 0x4F($s2)
/* 50CA0F0 8007A3C0 00000000 */  nop
/* 50CA0F4 8007A3C4 1200422C */  sltiu      $v0, $v0, 0x12
/* 50CA0F8 8007A3C8 02004010 */  beqz       $v0, .Llevel_20_8007A3D4
/* 50CA0FC 8007A3CC 12000224 */   addiu     $v0, $zero, 0x12
/* 50CA100 8007A3D0 4F0042A2 */  sb         $v0, 0x4F($s2)
.Llevel_20_8007A3D4:
/* 50CA104 8007A3D4 0700C292 */  lbu        $v0, 0x7($s6)
/* 50CA108 8007A3D8 00000000 */  nop
/* 50CA10C 8007A3DC 80100200 */  sll        $v0, $v0, 2
/* 50CA110 8007A3E0 540042A2 */  sb         $v0, 0x54($s2)
/* 50CA114 8007A3E4 0700C292 */  lbu        $v0, 0x7($s6)
/* 50CA118 8007A3E8 00000000 */  nop
/* 50CA11C 8007A3EC 40100200 */  sll        $v0, $v0, 1
/* 50CA120 8007A3F0 550042A2 */  sb         $v0, 0x55($s2)
.Llevel_20_8007A3F4:
/* 50CA124 8007A3F4 48004392 */  lbu        $v1, 0x48($s2)
/* 50CA128 8007A3F8 02000224 */  addiu      $v0, $zero, 0x2
/* 50CA12C 8007A3FC 08016210 */  beq        $v1, $v0, .Llevel_20_8007A820
/* 50CA130 8007A400 AA2A103C */   lui       $s0, (0x2AAAAAAB >> 16)
/* 50CA134 8007A404 0800D38E */  lw         $s3, 0x8($s6)
/* 50CA138 8007A408 00000000 */  nop
/* 50CA13C 8007A40C 00006386 */  lh         $v1, 0x0($s3)
/* 50CA140 8007A410 ABAA1036 */  ori        $s0, $s0, (0x2AAAAAAB & 0xFFFF)
/* 50CA144 8007A414 01006624 */  addiu      $a2, $v1, 0x1
/* 50CA148 8007A418 1800D000 */  mult       $a2, $s0
/* 50CA14C 8007A41C 0C004526 */  addiu      $a1, $s2, 0xC
/* 50CA150 8007A420 40100300 */  sll        $v0, $v1, 1
/* 50CA154 8007A424 21104300 */  addu       $v0, $v0, $v1
/* 50CA158 8007A428 80100200 */  sll        $v0, $v0, 2
/* 50CA15C 8007A42C 04005424 */  addiu      $s4, $v0, 0x4
/* 50CA160 8007A430 21207402 */  addu       $a0, $s3, $s4
/* 50CA164 8007A434 C3170600 */  sra        $v0, $a2, 31
/* 50CA168 8007A438 10400000 */  mfhi       $t0
/* 50CA16C 8007A43C 43180800 */  sra        $v1, $t0, 1
/* 50CA170 8007A440 23B86200 */  subu       $s7, $v1, $v0
/* 50CA174 8007A444 40101700 */  sll        $v0, $s7, 1
/* 50CA178 8007A448 21105700 */  addu       $v0, $v0, $s7
/* 50CA17C 8007A44C 80100200 */  sll        $v0, $v0, 2
/* 50CA180 8007A450 5E3C010C */  jal        func_8004F178
/* 50CA184 8007A454 23B8C200 */   subu      $s7, $a2, $v0
/* 50CA188 8007A458 00006586 */  lh         $a1, 0x0($s3)
/* 50CA18C 8007A45C 00000000 */  nop
/* 50CA190 8007A460 0100A524 */  addiu      $a1, $a1, 0x1
/* 50CA194 8007A464 1800B000 */  mult       $a1, $s0
/* 50CA198 8007A468 02006496 */  lhu        $a0, 0x2($s3)
/* 50CA19C 8007A46C 10017526 */  addiu      $s5, $s3, 0x110
/* 50CA1A0 8007A470 01008424 */  addiu      $a0, $a0, 0x1
/* 50CA1A4 8007A474 C3170500 */  sra        $v0, $a1, 31
/* 50CA1A8 8007A478 020064A6 */  sh         $a0, 0x2($s3)
/* 50CA1AC 8007A47C 00240400 */  sll        $a0, $a0, 16
/* 50CA1B0 8007A480 03240400 */  sra        $a0, $a0, 16
/* 50CA1B4 8007A484 0D008428 */  slti       $a0, $a0, 0xD
/* 50CA1B8 8007A488 10400000 */  mfhi       $t0
/* 50CA1BC 8007A48C 43180800 */  sra        $v1, $t0, 1
/* 50CA1C0 8007A490 23186200 */  subu       $v1, $v1, $v0
/* 50CA1C4 8007A494 40100300 */  sll        $v0, $v1, 1
/* 50CA1C8 8007A498 21104300 */  addu       $v0, $v0, $v1
/* 50CA1CC 8007A49C 80100200 */  sll        $v0, $v0, 2
/* 50CA1D0 8007A4A0 2328A200 */  subu       $a1, $a1, $v0
/* 50CA1D4 8007A4A4 94006826 */  addiu      $t0, $s3, 0x94
/* 50CA1D8 8007A4A8 000065A6 */  sh         $a1, 0x0($s3)
/* 50CA1DC 8007A4AC 9000A8AF */  sw         $t0, 0x90($sp)
/* 50CA1E0 8007A4B0 18016826 */  addiu      $t0, $s3, 0x118
/* 50CA1E4 8007A4B4 03008014 */  bnez       $a0, .Llevel_20_8007A4C4
/* 50CA1E8 8007A4B8 9800A8AF */   sw        $t0, 0x98($sp)
/* 50CA1EC 8007A4BC 0C000224 */  addiu      $v0, $zero, 0xC
/* 50CA1F0 8007A4C0 020062A6 */  sh         $v0, 0x2($s3)
.Llevel_20_8007A4C4:
/* 50CA1F4 8007A4C4 02006286 */  lh         $v0, 0x2($s3)
/* 50CA1F8 8007A4C8 00000000 */  nop
/* 50CA1FC 8007A4CC 0C004228 */  slti       $v0, $v0, 0xC
/* 50CA200 8007A4D0 02004010 */  beqz       $v0, .Llevel_20_8007A4DC
/* 50CA204 8007A4D4 6000A427 */   addiu     $a0, $sp, 0x60
/* 50CA208 8007A4D8 21B80000 */  addu       $s7, $zero, $zero
.Llevel_20_8007A4DC:
/* 50CA20C 8007A4DC 7800A527 */  addiu      $a1, $sp, 0x78
/* 50CA210 8007A4E0 21300000 */  addu       $a2, $zero, $zero
/* 50CA214 8007A4E4 21F08002 */  addu       $fp, $s4, $zero
/* 50CA218 8007A4E8 0780033C */  lui        $v1, %hi(D_8006C640)
/* 50CA21C 8007A4EC 40C6638C */  lw         $v1, %lo(D_8006C640)($v1)
/* 50CA220 8007A4F0 9000B48F */  lw         $s4, 0x90($sp)
/* 50CA224 8007A4F4 C0100300 */  sll        $v0, $v1, 3
/* 50CA228 8007A4F8 23104300 */  subu       $v0, $v0, $v1
/* 50CA22C 8007A4FC 6000A2A3 */  sb         $v0, 0x60($sp)
/* 50CA230 8007A500 45004292 */  lbu        $v0, 0x45($s2)
/* 50CA234 8007A504 21800000 */  addu       $s0, $zero, $zero
/* 50CA238 8007A508 6100A2A3 */  sb         $v0, 0x61($sp)
/* 50CA23C 8007A50C 46004292 */  lbu        $v0, 0x46($s2)
/* 50CA240 8007A510 6800B127 */  addiu      $s1, $sp, 0x68
/* 50CA244 8007A514 A43A010C */  jal        func_8004EA90
/* 50CA248 8007A518 6200A2A3 */   sb        $v0, 0x62($sp)
/* 50CA24C 8007A51C 21204002 */  addu       $a0, $s2, $zero
/* 50CA250 8007A520 4957010C */  jal        func_80055D24
/* 50CA254 8007A524 04000524 */   addiu     $a1, $zero, 0x4
.Llevel_20_8007A528:
/* 50CA258 8007A528 6666033C */  lui        $v1, (0x66666667 >> 16)
/* 50CA25C 8007A52C 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* 50CA260 8007A530 00121000 */  sll        $v0, $s0, 8
/* 50CA264 8007A534 18004300 */  mult       $v0, $v1
/* 50CA268 8007A538 7800A427 */  addiu      $a0, $sp, 0x78
/* 50CA26C 8007A53C 21282002 */  addu       $a1, $s1, $zero
/* 50CA270 8007A540 C3170200 */  sra        $v0, $v0, 31
/* 50CA274 8007A544 6800A0AF */  sw         $zero, 0x68($sp)
/* 50CA278 8007A548 10400000 */  mfhi       $t0
/* 50CA27C 8007A54C 43380800 */  sra        $a3, $t0, 1
/* 50CA280 8007A550 2338E200 */  subu       $a3, $a3, $v0
/* 50CA284 8007A554 40380700 */  sll        $a3, $a3, 1
/* 50CA288 8007A558 0680083C */  lui        $t0, %hi(D_80065920)
/* 50CA28C 8007A55C 20590825 */  addiu      $t0, $t0, %lo(D_80065920)
/* 50CA290 8007A560 2110E800 */  addu       $v0, $a3, $t0
/* 50CA294 8007A564 00004284 */  lh         $v0, 0x0($v0)
/* 50CA298 8007A568 21302002 */  addu       $a2, $s1, $zero
/* 50CA29C 8007A56C 80180200 */  sll        $v1, $v0, 2
/* 50CA2A0 8007A570 21186200 */  addu       $v1, $v1, $v0
/* 50CA2A4 8007A574 00110300 */  sll        $v0, $v1, 4
/* 50CA2A8 8007A578 23104300 */  subu       $v0, $v0, $v1
/* 50CA2AC 8007A57C C3120200 */  sra        $v0, $v0, 11
/* 50CA2B0 8007A580 6C00A2AF */  sw         $v0, 0x6C($sp)
/* 50CA2B4 8007A584 0680013C */  lui        $at, %hi(D_800658A0)
/* 50CA2B8 8007A588 21082700 */  addu       $at, $at, $a3
/* 50CA2BC 8007A58C A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 50CA2C0 8007A590 01001026 */  addiu      $s0, $s0, 0x1
/* 50CA2C4 8007A594 80180200 */  sll        $v1, $v0, 2
/* 50CA2C8 8007A598 21186200 */  addu       $v1, $v1, $v0
/* 50CA2CC 8007A59C 00110300 */  sll        $v0, $v1, 4
/* 50CA2D0 8007A5A0 23104300 */  subu       $v0, $v0, $v1
/* 50CA2D4 8007A5A4 C3120200 */  sra        $v0, $v0, 11
/* 50CA2D8 8007A5A8 5B3B010C */  jal        func_8004ED6C
/* 50CA2DC 8007A5AC 7000A2AF */   sw        $v0, 0x70($sp)
/* 50CA2E0 8007A5B0 21208002 */  addu       $a0, $s4, $zero
/* 50CA2E4 8007A5B4 21287E02 */  addu       $a1, $s3, $fp
/* 50CA2E8 8007A5B8 653C010C */  jal        func_8004F194
/* 50CA2EC 8007A5BC 21302002 */   addu      $a2, $s1, $zero
/* 50CA2F0 8007A5C0 0500022A */  slti       $v0, $s0, 0x5
/* 50CA2F4 8007A5C4 D8FF4014 */  bnez       $v0, .Llevel_20_8007A528
/* 50CA2F8 8007A5C8 0C009426 */   addiu     $s4, $s4, 0xC
/* 50CA2FC 8007A5CC 21800000 */  addu       $s0, $zero, $zero
/* 50CA300 8007A5D0 06801E3C */  lui        $fp, %hi(D_80065920)
/* 50CA304 8007A5D4 2059DE27 */  addiu      $fp, $fp, %lo(D_80065920)
/* 50CA308 8007A5D8 21902002 */  addu       $s2, $s1, $zero
/* 50CA30C 8007A5DC 40101700 */  sll        $v0, $s7, 1
/* 50CA310 8007A5E0 21105700 */  addu       $v0, $v0, $s7
/* 50CA314 8007A5E4 80100200 */  sll        $v0, $v0, 2
/* 50CA318 8007A5E8 04005424 */  addiu      $s4, $v0, 0x4
/* 50CA31C 8007A5EC 3C001124 */  addiu      $s1, $zero, 0x3C
.Llevel_20_8007A5F0:
/* 50CA320 8007A5F0 6666033C */  lui        $v1, (0x66666667 >> 16)
/* 50CA324 8007A5F4 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* 50CA328 8007A5F8 00121000 */  sll        $v0, $s0, 8
/* 50CA32C 8007A5FC 18004300 */  mult       $v0, $v1
/* 50CA330 8007A600 7800A427 */  addiu      $a0, $sp, 0x78
/* 50CA334 8007A604 21284002 */  addu       $a1, $s2, $zero
/* 50CA338 8007A608 C3170200 */  sra        $v0, $v0, 31
/* 50CA33C 8007A60C 6800A0AF */  sw         $zero, 0x68($sp)
/* 50CA340 8007A610 10400000 */  mfhi       $t0
/* 50CA344 8007A614 43380800 */  sra        $a3, $t0, 1
/* 50CA348 8007A618 2338E200 */  subu       $a3, $a3, $v0
/* 50CA34C 8007A61C 40380700 */  sll        $a3, $a3, 1
/* 50CA350 8007A620 2110FE00 */  addu       $v0, $a3, $fp
/* 50CA354 8007A624 00004384 */  lh         $v1, 0x0($v0)
/* 50CA358 8007A628 21304002 */  addu       $a2, $s2, $zero
/* 50CA35C 8007A62C 40100300 */  sll        $v0, $v1, 1
/* 50CA360 8007A630 21104300 */  addu       $v0, $v0, $v1
/* 50CA364 8007A634 C0100200 */  sll        $v0, $v0, 3
/* 50CA368 8007A638 21104300 */  addu       $v0, $v0, $v1
/* 50CA36C 8007A63C 83120200 */  sra        $v0, $v0, 10
/* 50CA370 8007A640 6C00A2AF */  sw         $v0, 0x6C($sp)
/* 50CA374 8007A644 0680013C */  lui        $at, %hi(D_800658A0)
/* 50CA378 8007A648 21082700 */  addu       $at, $at, $a3
/* 50CA37C 8007A64C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 50CA380 8007A650 01001026 */  addiu      $s0, $s0, 0x1
/* 50CA384 8007A654 40100300 */  sll        $v0, $v1, 1
/* 50CA388 8007A658 21104300 */  addu       $v0, $v0, $v1
/* 50CA38C 8007A65C C0100200 */  sll        $v0, $v0, 3
/* 50CA390 8007A660 21104300 */  addu       $v0, $v0, $v1
/* 50CA394 8007A664 83120200 */  sra        $v0, $v0, 10
/* 50CA398 8007A668 5B3B010C */  jal        func_8004ED6C
/* 50CA39C 8007A66C 7000A2AF */   sw        $v0, 0x70($sp)
/* 50CA3A0 8007A670 21287402 */  addu       $a1, $s3, $s4
/* 50CA3A4 8007A674 9000A88F */  lw         $t0, 0x90($sp)
/* 50CA3A8 8007A678 21304002 */  addu       $a2, $s2, $zero
/* 50CA3AC 8007A67C 653C010C */  jal        func_8004F194
/* 50CA3B0 8007A680 21201101 */   addu      $a0, $t0, $s1
/* 50CA3B4 8007A684 0500022A */  slti       $v0, $s0, 0x5
/* 50CA3B8 8007A688 D9FF4014 */  bnez       $v0, .Llevel_20_8007A5F0
/* 50CA3BC 8007A68C 0C003126 */   addiu     $s1, $s1, 0xC
/* 50CA3C0 8007A690 9000A88F */  lw         $t0, 0x90($sp)
/* 50CA3C4 8007A694 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 50CA3C8 8007A698 780002AD */  sw         $v0, 0x78($t0)
/* 50CA3CC 8007A69C 8C000224 */  addiu      $v0, $zero, 0x8C
/* 50CA3D0 8007A6A0 0000A2A2 */  sb         $v0, 0x0($s5)
/* 50CA3D4 8007A6A4 64000224 */  addiu      $v0, $zero, 0x64
/* 50CA3D8 8007A6A8 0100A2A2 */  sb         $v0, 0x1($s5)
/* 50CA3DC 8007A6AC 28000224 */  addiu      $v0, $zero, 0x28
/* 50CA3E0 8007A6B0 0200A2A2 */  sb         $v0, 0x2($s5)
/* 50CA3E4 8007A6B4 02006586 */  lh         $a1, 0x2($s3)
/* 50CA3E8 8007A6B8 00000000 */  nop
/* 50CA3EC 8007A6BC 0C00A228 */  slti       $v0, $a1, 0xC
/* 50CA3F0 8007A6C0 28004010 */  beqz       $v0, .Llevel_20_8007A764
/* 50CA3F4 8007A6C4 0C000424 */   addiu     $a0, $zero, 0xC
/* 50CA3F8 8007A6C8 0000A392 */  lbu        $v1, 0x0($s5)
/* 50CA3FC 8007A6CC 23108500 */  subu       $v0, $a0, $a1
/* 50CA400 8007A6D0 18006200 */  mult       $v1, $v0
/* 50CA404 8007A6D4 12180000 */  mflo       $v1
/* 50CA408 8007A6D8 AA2A053C */  lui        $a1, (0x2AAAAAAB >> 16)
/* 50CA40C 8007A6DC ABAAA534 */  ori        $a1, $a1, (0x2AAAAAAB & 0xFFFF)
/* 50CA410 8007A6E0 18006500 */  mult       $v1, $a1
/* 50CA414 8007A6E4 C31F0300 */  sra        $v1, $v1, 31
/* 50CA418 8007A6E8 10400000 */  mfhi       $t0
/* 50CA41C 8007A6EC 43100800 */  sra        $v0, $t0, 1
/* 50CA420 8007A6F0 23104300 */  subu       $v0, $v0, $v1
/* 50CA424 8007A6F4 0400A2A2 */  sb         $v0, 0x4($s5)
/* 50CA428 8007A6F8 02006286 */  lh         $v0, 0x2($s3)
/* 50CA42C 8007A6FC 0100A392 */  lbu        $v1, 0x1($s5)
/* 50CA430 8007A700 23108200 */  subu       $v0, $a0, $v0
/* 50CA434 8007A704 18006200 */  mult       $v1, $v0
/* 50CA438 8007A708 12180000 */  mflo       $v1
/* 50CA43C 8007A70C 00000000 */  nop
/* 50CA440 8007A710 00000000 */  nop
/* 50CA444 8007A714 18006500 */  mult       $v1, $a1
/* 50CA448 8007A718 C31F0300 */  sra        $v1, $v1, 31
/* 50CA44C 8007A71C 10400000 */  mfhi       $t0
/* 50CA450 8007A720 43100800 */  sra        $v0, $t0, 1
/* 50CA454 8007A724 23104300 */  subu       $v0, $v0, $v1
/* 50CA458 8007A728 0500A2A2 */  sb         $v0, 0x5($s5)
/* 50CA45C 8007A72C 02006286 */  lh         $v0, 0x2($s3)
/* 50CA460 8007A730 0200A392 */  lbu        $v1, 0x2($s5)
/* 50CA464 8007A734 23208200 */  subu       $a0, $a0, $v0
/* 50CA468 8007A738 18006400 */  mult       $v1, $a0
/* 50CA46C 8007A73C 12180000 */  mflo       $v1
/* 50CA470 8007A740 00000000 */  nop
/* 50CA474 8007A744 00000000 */  nop
/* 50CA478 8007A748 18006500 */  mult       $v1, $a1
/* 50CA47C 8007A74C C31F0300 */  sra        $v1, $v1, 31
/* 50CA480 8007A750 10400000 */  mfhi       $t0
/* 50CA484 8007A754 43100800 */  sra        $v0, $t0, 1
/* 50CA488 8007A758 23104300 */  subu       $v0, $v0, $v1
/* 50CA48C 8007A75C DCE90108 */  j          .Llevel_20_8007A770
/* 50CA490 8007A760 0600A2A2 */   sb        $v0, 0x6($s5)
.Llevel_20_8007A764:
/* 50CA494 8007A764 0400A0A2 */  sb         $zero, 0x4($s5)
/* 50CA498 8007A768 0500A0A2 */  sb         $zero, 0x5($s5)
/* 50CA49C 8007A76C 0600A0A2 */  sb         $zero, 0x6($s5)
.Llevel_20_8007A770:
/* 50CA4A0 8007A770 21800000 */  addu       $s0, $zero, $zero
/* 50CA4A4 8007A774 6666063C */  lui        $a2, (0x66666667 >> 16)
/* 50CA4A8 8007A778 6766C634 */  ori        $a2, $a2, (0x66666667 & 0xFFFF)
/* 50CA4AC 8007A77C 01000524 */  addiu      $a1, $zero, 0x1
.Llevel_20_8007A780:
/* 50CA4B0 8007A780 01000326 */  addiu      $v1, $s0, 0x1
/* 50CA4B4 8007A784 C0201000 */  sll        $a0, $s0, 3
/* 50CA4B8 8007A788 18006600 */  mult       $v1, $a2
/* 50CA4BC 8007A78C 9800A88F */  lw         $t0, 0x98($sp)
/* 50CA4C0 8007A790 05000226 */  addiu      $v0, $s0, 0x5
/* 50CA4C4 8007A794 21208800 */  addu       $a0, $a0, $t0
/* 50CA4C8 8007A798 000090A0 */  sb         $s0, 0x0($a0)
/* 50CA4CC 8007A79C 21806000 */  addu       $s0, $v1, $zero
/* 50CA4D0 8007A7A0 020082A0 */  sb         $v0, 0x2($a0)
/* 50CA4D4 8007A7A4 C3171000 */  sra        $v0, $s0, 31
/* 50CA4D8 8007A7A8 040080A0 */  sb         $zero, 0x4($a0)
/* 50CA4DC 8007A7AC 050080A0 */  sb         $zero, 0x5($a0)
/* 50CA4E0 8007A7B0 060085A0 */  sb         $a1, 0x6($a0)
/* 50CA4E4 8007A7B4 070085A0 */  sb         $a1, 0x7($a0)
/* 50CA4E8 8007A7B8 10400000 */  mfhi       $t0
/* 50CA4EC 8007A7BC 43180800 */  sra        $v1, $t0, 1
/* 50CA4F0 8007A7C0 23186200 */  subu       $v1, $v1, $v0
/* 50CA4F4 8007A7C4 80100300 */  sll        $v0, $v1, 2
/* 50CA4F8 8007A7C8 21104300 */  addu       $v0, $v0, $v1
/* 50CA4FC 8007A7CC 23100202 */  subu       $v0, $s0, $v0
/* 50CA500 8007A7D0 010082A0 */  sb         $v0, 0x1($a0)
/* 50CA504 8007A7D4 05004224 */  addiu      $v0, $v0, 0x5
/* 50CA508 8007A7D8 030082A0 */  sb         $v0, 0x3($a0)
/* 50CA50C 8007A7DC 0500022A */  slti       $v0, $s0, 0x5
/* 50CA510 8007A7E0 E7FF4014 */  bnez       $v0, .Llevel_20_8007A780
/* 50CA514 8007A7E4 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 50CA518 8007A7E8 9800A88F */  lw         $t0, 0x98($sp)
/* 50CA51C 8007A7EC 00000000 */  nop
/* 50CA520 8007A7F0 280002AD */  sw         $v0, 0x28($t0)
/* 50CA524 8007A7F4 0C00C28E */  lw         $v0, 0xC($s6)
/* 50CA528 8007A7F8 00000000 */  nop
/* 50CA52C 8007A7FC 08004014 */  bnez       $v0, .Llevel_20_8007A820
/* 50CA530 8007A800 2128A002 */   addu      $a1, $s5, $zero
/* 50CA534 8007A804 1000C726 */  addiu      $a3, $s6, 0x10
/* 50CA538 8007A808 9000A48F */  lw         $a0, 0x90($sp)
/* 50CA53C 8007A80C 9800A68F */  lw         $a2, 0x98($sp)
/* 50CA540 8007A810 01000224 */  addiu      $v0, $zero, 0x1
/* 50CA544 8007A814 C042010C */  jal        func_80050B00
/* 50CA548 8007A818 1000A2AF */   sw        $v0, 0x10($sp)
/* 50CA54C 8007A81C 0C00C2AE */  sw         $v0, 0xC($s6)
.Llevel_20_8007A820:
/* 50CA550 8007A820 C400BF8F */  lw         $ra, 0xC4($sp)
/* 50CA554 8007A824 C000BE8F */  lw         $fp, 0xC0($sp)
/* 50CA558 8007A828 BC00B78F */  lw         $s7, 0xBC($sp)
/* 50CA55C 8007A82C B800B68F */  lw         $s6, 0xB8($sp)
/* 50CA560 8007A830 B400B58F */  lw         $s5, 0xB4($sp)
/* 50CA564 8007A834 B000B48F */  lw         $s4, 0xB0($sp)
/* 50CA568 8007A838 AC00B38F */  lw         $s3, 0xAC($sp)
/* 50CA56C 8007A83C A800B28F */  lw         $s2, 0xA8($sp)
/* 50CA570 8007A840 A400B18F */  lw         $s1, 0xA4($sp)
/* 50CA574 8007A844 A000B08F */  lw         $s0, 0xA0($sp)
/* 50CA578 8007A848 C800BD27 */  addiu      $sp, $sp, 0xC8
/* 50CA57C 8007A84C 0800E003 */  jr         $ra
/* 50CA580 8007A850 00000000 */   nop
.size func_level_20_80079A48, . - func_level_20_80079A48
