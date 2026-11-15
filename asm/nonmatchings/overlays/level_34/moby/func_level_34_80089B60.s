.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_464_level_34
/* 74E5890 80089B60 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 74E5894 80089B64 2000B2AF */  sw         $s2, 0x20($sp)
/* 74E5898 80089B68 21908000 */  addu       $s2, $a0, $zero
/* 74E589C 80089B6C 2800BFAF */  sw         $ra, 0x28($sp)
/* 74E58A0 80089B70 2400B3AF */  sw         $s3, 0x24($sp)
/* 74E58A4 80089B74 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 74E58A8 80089B78 1800B0AF */  sw         $s0, 0x18($sp)
/* 74E58AC 80089B7C 0000538E */  lw         $s3, 0x0($s2)
/* 74E58B0 80089B80 00000000 */  nop
/* 74E58B4 80089B84 0400718E */  lw         $s1, 0x4($s3)
/* 74E58B8 80089B88 00000000 */  nop
/* 74E58BC 80089B8C 6C002012 */  beqz       $s1, .Llevel_34_80089D40
/* 74E58C0 80089B90 0C005026 */   addiu     $s0, $s2, 0xC
/* 74E58C4 80089B94 21200002 */  addu       $a0, $s0, $zero
/* 74E58C8 80089B98 08006526 */  addiu      $a1, $s3, 0x8
/* 74E58CC 80089B9C 44004292 */  lbu        $v0, 0x44($s2)
/* 74E58D0 80089BA0 21300002 */  addu       $a2, $s0, $zero
/* 74E58D4 80089BA4 08004224 */  addiu      $v0, $v0, 0x8
/* 74E58D8 80089BA8 653C010C */  jal        func_8004F194
/* 74E58DC 80089BAC 440042A2 */   sb        $v0, 0x44($s2)
/* 74E58E0 80089BB0 0C002426 */  addiu      $a0, $s1, 0xC
/* 74E58E4 80089BB4 44004292 */  lbu        $v0, 0x44($s2)
/* 74E58E8 80089BB8 21280002 */  addu       $a1, $s0, $zero
/* 74E58EC 80089BBC 5E3C010C */  jal        func_8004F178
/* 74E58F0 80089BC0 440022A2 */   sb        $v0, 0x44($s1)
/* 74E58F4 80089BC4 48004392 */  lbu        $v1, 0x48($s2)
/* 74E58F8 80089BC8 01000224 */  addiu      $v0, $zero, 0x1
/* 74E58FC 80089BCC 47006214 */  bne        $v1, $v0, .Llevel_34_80089CEC
/* 74E5900 80089BD0 21200000 */   addu      $a0, $zero, $zero
/* 74E5904 80089BD4 21200002 */  addu       $a0, $s0, $zero
/* 74E5908 80089BD8 00010524 */  addiu      $a1, $zero, 0x100
/* 74E590C 80089BDC 02000624 */  addiu      $a2, $zero, 0x2
/* 74E5910 80089BE0 1000A0AF */  sw         $zero, 0x10($sp)
/* 74E5914 80089BE4 3A004292 */  lbu        $v0, 0x3A($s2)
/* 74E5918 80089BE8 21380000 */  addu       $a3, $zero, $zero
/* 74E591C 80089BEC 40180200 */  sll        $v1, $v0, 1
/* 74E5920 80089BF0 21186200 */  addu       $v1, $v1, $v0
/* 74E5924 80089BF4 80180300 */  sll        $v1, $v1, 2
/* 74E5928 80089BF8 23186200 */  subu       $v1, $v1, $v0
/* 74E592C 80089BFC 0780023C */  lui        $v0, %hi(D_8006C550)
/* 74E5930 80089C00 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 74E5934 80089C04 C0180300 */  sll        $v1, $v1, 3
/* 74E5938 80089C08 21104300 */  addu       $v0, $v0, $v1
/* 74E593C 80089C0C 8C6E000C */  jal        func_8001BA30
/* 74E5940 80089C10 1400A2AF */   sw        $v0, 0x14($sp)
/* 74E5944 80089C14 21804000 */  addu       $s0, $v0, $zero
/* 74E5948 80089C18 49000012 */  beqz       $s0, .Llevel_34_80089D40
/* 74E594C 80089C1C 6C020224 */   addiu     $v0, $zero, 0x26C
/* 74E5950 80089C20 36000386 */  lh         $v1, 0x36($s0)
/* 74E5954 80089C24 00000000 */  nop
/* 74E5958 80089C28 14006214 */  bne        $v1, $v0, .Llevel_34_80089C7C
/* 74E595C 80089C2C 9A010224 */   addiu     $v0, $zero, 0x19A
/* 74E5960 80089C30 3D000292 */  lbu        $v0, 0x3D($s0)
/* 74E5964 80089C34 00000000 */  nop
/* 74E5968 80089C38 0500422C */  sltiu      $v0, $v0, 0x5
/* 74E596C 80089C3C 0A004010 */  beqz       $v0, .Llevel_34_80089C68
/* 74E5970 80089C40 00000000 */   nop
/* 74E5974 80089C44 3C000292 */  lbu        $v0, 0x3C($s0)
/* 74E5978 80089C48 00000000 */  nop
/* 74E597C 80089C4C 0500422C */  sltiu      $v0, $v0, 0x5
/* 74E5980 80089C50 05004010 */  beqz       $v0, .Llevel_34_80089C68
/* 74E5984 80089C54 08000224 */   addiu     $v0, $zero, 0x8
/* 74E5988 80089C58 480002A2 */  sb         $v0, 0x48($s0)
/* 74E598C 80089C5C 21200002 */  addu       $a0, $s0, $zero
/* 74E5990 80089C60 D0D3000C */  jal        func_80034F40
/* 74E5994 80089C64 08000524 */   addiu     $a1, $zero, 0x8
.Llevel_34_80089C68:
/* 74E5998 80089C68 0000038E */  lw         $v1, 0x0($s0)
/* 74E599C 80089C6C 3C000224 */  addiu      $v0, $zero, 0x3C
/* 74E59A0 80089C70 020062A4 */  sh         $v0, 0x2($v1)
/* 74E59A4 80089C74 50270208 */  j          .Llevel_34_80089D40
/* 74E59A8 80089C78 000060A6 */   sh        $zero, 0x0($s3)
.Llevel_34_80089C7C:
/* 74E59AC 80089C7C 14006214 */  bne        $v1, $v0, .Llevel_34_80089CD0
/* 74E59B0 80089C80 F1010224 */   addiu     $v0, $zero, 0x1F1
/* 74E59B4 80089C84 3D000292 */  lbu        $v0, 0x3D($s0)
/* 74E59B8 80089C88 00000000 */  nop
/* 74E59BC 80089C8C 0500422C */  sltiu      $v0, $v0, 0x5
/* 74E59C0 80089C90 0A004010 */  beqz       $v0, .Llevel_34_80089CBC
/* 74E59C4 80089C94 00000000 */   nop
/* 74E59C8 80089C98 3C000292 */  lbu        $v0, 0x3C($s0)
/* 74E59CC 80089C9C 00000000 */  nop
/* 74E59D0 80089CA0 0500422C */  sltiu      $v0, $v0, 0x5
/* 74E59D4 80089CA4 05004010 */  beqz       $v0, .Llevel_34_80089CBC
/* 74E59D8 80089CA8 05000224 */   addiu     $v0, $zero, 0x5
/* 74E59DC 80089CAC 480002A2 */  sb         $v0, 0x48($s0)
/* 74E59E0 80089CB0 21200002 */  addu       $a0, $s0, $zero
/* 74E59E4 80089CB4 D0D3000C */  jal        func_80034F40
/* 74E59E8 80089CB8 05000524 */   addiu     $a1, $zero, 0x5
.Llevel_34_80089CBC:
/* 74E59EC 80089CBC 0000038E */  lw         $v1, 0x0($s0)
/* 74E59F0 80089CC0 3C000224 */  addiu      $v0, $zero, 0x3C
/* 74E59F4 80089CC4 120062A4 */  sh         $v0, 0x12($v1)
/* 74E59F8 80089CC8 50270208 */  j          .Llevel_34_80089D40
/* 74E59FC 80089CCC 000060A6 */   sh        $zero, 0x0($s3)
.Llevel_34_80089CD0:
/* 74E5A00 80089CD0 1B006214 */  bne        $v1, $v0, .Llevel_34_80089D40
/* 74E5A04 80089CD4 3C000224 */   addiu     $v0, $zero, 0x3C
/* 74E5A08 80089CD8 0000038E */  lw         $v1, 0x0($s0)
/* 74E5A0C 80089CDC 00000000 */  nop
/* 74E5A10 80089CE0 100062A4 */  sh         $v0, 0x10($v1)
/* 74E5A14 80089CE4 50270208 */  j          .Llevel_34_80089D40
/* 74E5A18 80089CE8 000060A6 */   sh        $zero, 0x0($s3)
.Llevel_34_80089CEC:
/* 74E5A1C 80089CEC DBD8000C */  jal        func_8003636C
/* 74E5A20 80089CF0 14000524 */   addiu     $a1, $zero, 0x14
/* 74E5A24 80089CF4 21200000 */  addu       $a0, $zero, $zero
/* 74E5A28 80089CF8 0800638E */  lw         $v1, 0x8($s3)
/* 74E5A2C 80089CFC 14000524 */  addiu      $a1, $zero, 0x14
/* 74E5A30 80089D00 F6FF6324 */  addiu      $v1, $v1, -0xA
/* 74E5A34 80089D04 21186200 */  addu       $v1, $v1, $v0
/* 74E5A38 80089D08 DBD8000C */  jal        func_8003636C
/* 74E5A3C 80089D0C 080063AE */   sw        $v1, 0x8($s3)
/* 74E5A40 80089D10 21200000 */  addu       $a0, $zero, $zero
/* 74E5A44 80089D14 0C00638E */  lw         $v1, 0xC($s3)
/* 74E5A48 80089D18 14000524 */  addiu      $a1, $zero, 0x14
/* 74E5A4C 80089D1C F6FF6324 */  addiu      $v1, $v1, -0xA
/* 74E5A50 80089D20 21186200 */  addu       $v1, $v1, $v0
/* 74E5A54 80089D24 DBD8000C */  jal        func_8003636C
/* 74E5A58 80089D28 0C0063AE */   sw        $v1, 0xC($s3)
/* 74E5A5C 80089D2C 1000638E */  lw         $v1, 0x10($s3)
/* 74E5A60 80089D30 00000000 */  nop
/* 74E5A64 80089D34 F6FF6324 */  addiu      $v1, $v1, -0xA
/* 74E5A68 80089D38 21186200 */  addu       $v1, $v1, $v0
/* 74E5A6C 80089D3C 100063AE */  sw         $v1, 0x10($s3)
.Llevel_34_80089D40:
/* 74E5A70 80089D40 00006296 */  lhu        $v0, 0x0($s3)
/* 74E5A74 80089D44 00000000 */  nop
/* 74E5A78 80089D48 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 74E5A7C 80089D4C 000062A6 */  sh         $v0, 0x0($s3)
/* 74E5A80 80089D50 00140200 */  sll        $v0, $v0, 16
/* 74E5A84 80089D54 4400401C */  bgtz       $v0, .Llevel_34_80089E68
/* 74E5A88 80089D58 00000000 */   nop
/* 74E5A8C 80089D5C 48004392 */  lbu        $v1, 0x48($s2)
/* 74E5A90 80089D60 00000000 */  nop
/* 74E5A94 80089D64 FFFF6224 */  addiu      $v0, $v1, -0x1
/* 74E5A98 80089D68 0200422C */  sltiu      $v0, $v0, 0x2
/* 74E5A9C 80089D6C 06004014 */  bnez       $v0, .Llevel_34_80089D88
/* 74E5AA0 80089D70 01000424 */   addiu     $a0, $zero, 0x1
/* 74E5AA4 80089D74 FF006330 */  andi       $v1, $v1, 0xFF
/* 74E5AA8 80089D78 03000224 */  addiu      $v0, $zero, 0x3
/* 74E5AAC 80089D7C 1E006214 */  bne        $v1, $v0, .Llevel_34_80089DF8
/* 74E5AB0 80089D80 21280000 */   addu      $a1, $zero, $zero
/* 74E5AB4 80089D84 01000424 */  addiu      $a0, $zero, 0x1
.Llevel_34_80089D88:
/* 74E5AB8 80089D88 0C000524 */  addiu      $a1, $zero, 0xC
/* 74E5ABC 80089D8C 21304002 */  addu       $a2, $s2, $zero
/* 74E5AC0 80089D90 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 74E5AC4 80089D94 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 74E5AC8 80089D98 00000000 */  nop
/* 74E5ACC 80089D9C 09F84000 */  jalr       $v0
/* 74E5AD0 80089DA0 21380000 */   addu      $a3, $zero, $zero
/* 74E5AD4 80089DA4 21184000 */  addu       $v1, $v0, $zero
/* 74E5AD8 80089DA8 0B006010 */  beqz       $v1, .Llevel_34_80089DD8
/* 74E5ADC 80089DAC 5A000224 */   addiu     $v0, $zero, 0x5A
/* 74E5AE0 80089DB0 0A0062A0 */  sb         $v0, 0xA($v1)
/* 74E5AE4 80089DB4 54004292 */  lbu        $v0, 0x54($s2)
/* 74E5AE8 80089DB8 00000000 */  nop
/* 74E5AEC 80089DBC 0C0062A0 */  sb         $v0, 0xC($v1)
/* 74E5AF0 80089DC0 55004292 */  lbu        $v0, 0x55($s2)
/* 74E5AF4 80089DC4 00000000 */  nop
/* 74E5AF8 80089DC8 0D0062A0 */  sb         $v0, 0xD($v1)
/* 74E5AFC 80089DCC 56004292 */  lbu        $v0, 0x56($s2)
/* 74E5B00 80089DD0 00000000 */  nop
/* 74E5B04 80089DD4 0E0062A0 */  sb         $v0, 0xE($v1)
.Llevel_34_80089DD8:
/* 74E5B08 80089DD8 0400648E */  lw         $a0, 0x4($s3)
/* 74E5B0C 80089DDC 00000000 */  nop
/* 74E5B10 80089DE0 1D008010 */  beqz       $a0, .Llevel_34_80089E58
/* 74E5B14 80089DE4 00000000 */   nop
/* 74E5B18 80089DE8 C656010C */  jal        func_80055B18
/* 74E5B1C 80089DEC 00000000 */   nop
/* 74E5B20 80089DF0 96270208 */  j          .Llevel_34_80089E58
/* 74E5B24 80089DF4 00000000 */   nop
.Llevel_34_80089DF8:
/* 74E5B28 80089DF8 0780023C */  lui        $v0, %hi(D_8006C648)
/* 74E5B2C 80089DFC 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 74E5B30 80089E00 00000000 */  nop
/* 74E5B34 80089E04 00310200 */  sll        $a2, $v0, 4
/* 74E5B38 80089E08 21184502 */  addu       $v1, $s2, $a1
.Llevel_34_80089E0C:
/* 74E5B3C 80089E0C 54006490 */  lbu        $a0, 0x54($v1)
/* 74E5B40 80089E10 00000000 */  nop
/* 74E5B44 80089E14 2A108600 */  slt        $v0, $a0, $a2
/* 74E5B48 80089E18 03004010 */  beqz       $v0, .Llevel_34_80089E28
/* 74E5B4C 80089E1C 23108600 */   subu      $v0, $a0, $a2
/* 74E5B50 80089E20 8B270208 */  j          .Llevel_34_80089E2C
/* 74E5B54 80089E24 540060A0 */   sb        $zero, 0x54($v1)
.Llevel_34_80089E28:
/* 74E5B58 80089E28 540062A0 */  sb         $v0, 0x54($v1)
.Llevel_34_80089E2C:
/* 74E5B5C 80089E2C 0100A524 */  addiu      $a1, $a1, 0x1
/* 74E5B60 80089E30 0300A228 */  slti       $v0, $a1, 0x3
/* 74E5B64 80089E34 F5FF4014 */  bnez       $v0, .Llevel_34_80089E0C
/* 74E5B68 80089E38 21184502 */   addu      $v1, $s2, $a1
/* 74E5B6C 80089E3C 02006296 */  lhu        $v0, 0x2($s3)
/* 74E5B70 80089E40 00000000 */  nop
/* 74E5B74 80089E44 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 74E5B78 80089E48 020062A6 */  sh         $v0, 0x2($s3)
/* 74E5B7C 80089E4C 00140200 */  sll        $v0, $v0, 16
/* 74E5B80 80089E50 0500401C */  bgtz       $v0, .Llevel_34_80089E68
/* 74E5B84 80089E54 00000000 */   nop
.Llevel_34_80089E58:
/* 74E5B88 80089E58 C656010C */  jal        func_80055B18
/* 74E5B8C 80089E5C 21204002 */   addu      $a0, $s2, $zero
/* 74E5B90 80089E60 A6270208 */  j          .Llevel_34_80089E98
/* 74E5B94 80089E64 00000000 */   nop
.Llevel_34_80089E68:
/* 74E5B98 80089E68 0780023C */  lui        $v0, %hi(D_8006E040)
/* 74E5B9C 80089E6C 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 74E5BA0 80089E70 00000000 */  nop
/* 74E5BA4 80089E74 00140200 */  sll        $v0, $v0, 16
/* 74E5BA8 80089E78 03150200 */  sra        $v0, $v0, 20
/* 74E5BAC 80089E7C 80FF4224 */  addiu      $v0, $v0, -0x80
/* 74E5BB0 80089E80 460042A2 */  sb         $v0, 0x46($s2)
/* 74E5BB4 80089E84 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 74E5BB8 80089E88 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 74E5BBC 80089E8C 00000000 */  nop
/* 74E5BC0 80089E90 02110200 */  srl        $v0, $v0, 4
/* 74E5BC4 80089E94 450042A2 */  sb         $v0, 0x45($s2)
.Llevel_34_80089E98:
/* 74E5BC8 80089E98 2800BF8F */  lw         $ra, 0x28($sp)
/* 74E5BCC 80089E9C 2400B38F */  lw         $s3, 0x24($sp)
/* 74E5BD0 80089EA0 2000B28F */  lw         $s2, 0x20($sp)
/* 74E5BD4 80089EA4 1C00B18F */  lw         $s1, 0x1C($sp)
/* 74E5BD8 80089EA8 1800B08F */  lw         $s0, 0x18($sp)
/* 74E5BDC 80089EAC 3000BD27 */  addiu      $sp, $sp, 0x30
/* 74E5BE0 80089EB0 0800E003 */  jr         $ra
/* 74E5BE4 80089EB4 00000000 */   nop
.size MobyUpdate_464_level_34, . - MobyUpdate_464_level_34
