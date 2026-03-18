.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_24_80089AEC
/* 5E0481C 80089AEC 18FFBD27 */  addiu      $sp, $sp, -0xE8
/* 5E04820 80089AF0 CC00B3AF */  sw         $s3, 0xCC($sp)
/* 5E04824 80089AF4 21988000 */  addu       $s3, $a0, $zero
/* 5E04828 80089AF8 E400BFAF */  sw         $ra, 0xE4($sp)
/* 5E0482C 80089AFC E000BEAF */  sw         $fp, 0xE0($sp)
/* 5E04830 80089B00 DC00B7AF */  sw         $s7, 0xDC($sp)
/* 5E04834 80089B04 D800B6AF */  sw         $s6, 0xD8($sp)
/* 5E04838 80089B08 D400B5AF */  sw         $s5, 0xD4($sp)
/* 5E0483C 80089B0C D000B4AF */  sw         $s4, 0xD0($sp)
/* 5E04840 80089B10 C800B2AF */  sw         $s2, 0xC8($sp)
/* 5E04844 80089B14 C400B1AF */  sw         $s1, 0xC4($sp)
/* 5E04848 80089B18 C000B0AF */  sw         $s0, 0xC0($sp)
/* 5E0484C 80089B1C 48006292 */  lbu        $v0, 0x48($s3)
/* 5E04850 80089B20 00000000 */  nop
/* 5E04854 80089B24 FBFF4224 */  addiu      $v0, $v0, -0x5
/* 5E04858 80089B28 1000422C */  sltiu      $v0, $v0, 0x10
/* 5E0485C 80089B2C 01004238 */  xori       $v0, $v0, 0x1
/* 5E04860 80089B30 B800A2AF */  sw         $v0, 0xB8($sp)
/* 5E04864 80089B34 0000748E */  lw         $s4, 0x0($s3)
/* 5E04868 80089B38 27004010 */  beqz       $v0, .Llevel_24_80089BD8
/* 5E0486C 80089B3C 21F00000 */   addu      $fp, $zero, $zero
/* 5E04870 80089B40 1800638E */  lw         $v1, 0x18($s3)
/* 5E04874 80089B44 0200023C */  lui        $v0, (0x20000 >> 16)
/* 5E04878 80089B48 24106200 */  and        $v0, $v1, $v0
/* 5E0487C 80089B4C 19004014 */  bnez       $v0, .Llevel_24_80089BB4
/* 5E04880 80089B50 21280000 */   addu      $a1, $zero, $zero
/* 5E04884 80089B54 0100023C */  lui        $v0, (0x10000 >> 16)
/* 5E04888 80089B58 24106200 */  and        $v0, $v1, $v0
/* 5E0488C 80089B5C 1E004010 */  beqz       $v0, .Llevel_24_80089BD8
/* 5E04890 80089B60 00000000 */   nop
/* 5E04894 80089B64 AFEE000C */  jal        func_8003BABC
/* 5E04898 80089B68 21300000 */   addu      $a2, $zero, $zero
/* 5E0489C 80089B6C 21206002 */  addu       $a0, $s3, $zero
/* 5E048A0 80089B70 01000524 */  addiu      $a1, $zero, 0x1
/* 5E048A4 80089B74 21300000 */  addu       $a2, $zero, $zero
/* 5E048A8 80089B78 9ADA000C */  jal        func_80036A68
/* 5E048AC 80089B7C 21380000 */   addu      $a3, $zero, $zero
/* 5E048B0 80089B80 21206002 */  addu       $a0, $s3, $zero
/* 5E048B4 80089B84 05000524 */  addiu      $a1, $zero, 0x5
/* 5E048B8 80089B88 FF000224 */  addiu      $v0, $zero, 0xFF
/* 5E048BC 80089B8C 4A0062A2 */  sb         $v0, 0x4A($s3)
/* 5E048C0 80089B90 05000224 */  addiu      $v0, $zero, 0x5
/* 5E048C4 80089B94 1A0080A6 */  sh         $zero, 0x1A($s4)
/* 5E048C8 80089B98 180060AE */  sw         $zero, 0x18($s3)
/* 5E048CC 80089B9C 140080AE */  sw         $zero, 0x14($s4)
/* 5E048D0 80089BA0 D0D3000C */  jal        func_80034F40
/* 5E048D4 80089BA4 480062A2 */   sb        $v0, 0x48($s3)
/* 5E048D8 80089BA8 A0000224 */  addiu      $v0, $zero, 0xA0
/* 5E048DC 80089BAC 332B0208 */  j          .Llevel_24_8008ACCC
/* 5E048E0 80089BB0 400062A2 */   sb        $v0, 0x40($s3)
.Llevel_24_80089BB4:
/* 5E048E4 80089BB4 21206002 */  addu       $a0, $s3, $zero
/* 5E048E8 80089BB8 21300000 */  addu       $a2, $zero, $zero
/* 5E048EC 80089BBC 9ADA000C */  jal        func_80036A68
/* 5E048F0 80089BC0 21380000 */   addu      $a3, $zero, $zero
/* 5E048F4 80089BC4 21206002 */  addu       $a0, $s3, $zero
/* 5E048F8 80089BC8 24008526 */  addiu      $a1, $s4, 0x24
/* 5E048FC 80089BCC 21300000 */  addu       $a2, $zero, $zero
/* 5E04900 80089BD0 FEE2000C */  jal        func_80038BF8
/* 5E04904 80089BD4 06000724 */   addiu     $a3, $zero, 0x6
.Llevel_24_80089BD8:
/* 5E04908 80089BD8 49006292 */  lbu        $v0, 0x49($s3)
/* 5E0490C 80089BDC 00000000 */  nop
/* 5E04910 80089BE0 16004014 */  bnez       $v0, .Llevel_24_80089C3C
/* 5E04914 80089BE4 04000224 */   addiu     $v0, $zero, 0x4
/* 5E04918 80089BE8 01001024 */  addiu      $s0, $zero, 0x1
/* 5E0491C 80089BEC 48006392 */  lbu        $v1, 0x48($s3)
/* 5E04920 80089BF0 61000224 */  addiu      $v0, $zero, 0x61
/* 5E04924 80089BF4 04006214 */  bne        $v1, $v0, .Llevel_24_80089C08
/* 5E04928 80089BF8 490070A2 */   sb        $s0, 0x49($s3)
/* 5E0492C 80089BFC 21206002 */  addu       $a0, $s3, $zero
/* 5E04930 80089C00 312B0208 */  j          .Llevel_24_8008ACC4
/* 5E04934 80089C04 21280000 */   addu      $a1, $zero, $zero
.Llevel_24_80089C08:
/* 5E04938 80089C08 9171010C */  jal        rand
/* 5E0493C 80089C0C 00000000 */   nop
/* 5E04940 80089C10 01004230 */  andi       $v0, $v0, 0x1
/* 5E04944 80089C14 06004010 */  beqz       $v0, .Llevel_24_80089C30
/* 5E04948 80089C18 21206002 */   addu      $a0, $s3, $zero
/* 5E0494C 80089C1C 21280000 */  addu       $a1, $zero, $zero
/* 5E04950 80089C20 68010224 */  addiu      $v0, $zero, 0x168
/* 5E04954 80089C24 140082AE */  sw         $v0, 0x14($s4)
/* 5E04958 80089C28 312B0208 */  j          .Llevel_24_8008ACC4
/* 5E0495C 80089C2C 480080A0 */   sb        $zero, 0x48($a0)
.Llevel_24_80089C30:
/* 5E04960 80089C30 480070A2 */  sb         $s0, 0x48($s3)
/* 5E04964 80089C34 312B0208 */  j          .Llevel_24_8008ACC4
/* 5E04968 80089C38 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_24_80089C3C:
/* 5E0496C 80089C3C 48006392 */  lbu        $v1, 0x48($s3)
/* 5E04970 80089C40 00000000 */  nop
/* 5E04974 80089C44 3D006210 */  beq        $v1, $v0, .Llevel_24_80089D3C
/* 5E04978 80089C48 05006228 */   slti      $v0, $v1, 0x5
/* 5E0497C 80089C4C 0F004010 */  beqz       $v0, .Llevel_24_80089C8C
/* 5E04980 80089C50 01001124 */   addiu     $s1, $zero, 0x1
/* 5E04984 80089C54 2C007110 */  beq        $v1, $s1, .Llevel_24_80089D08
/* 5E04988 80089C58 02006228 */   slti      $v0, $v1, 0x2
/* 5E0498C 80089C5C 05004010 */  beqz       $v0, .Llevel_24_80089C74
/* 5E04990 80089C60 02001624 */   addiu     $s6, $zero, 0x2
/* 5E04994 80089C64 15006010 */  beqz       $v1, .Llevel_24_80089CBC
/* 5E04998 80089C68 00000000 */   nop
/* 5E0499C 80089C6C E92A0208 */  j          .Llevel_24_8008ABA4
/* 5E049A0 80089C70 00000000 */   nop
.Llevel_24_80089C74:
/* 5E049A4 80089C74 40007610 */  beq        $v1, $s6, .Llevel_24_80089D78
/* 5E049A8 80089C78 03000224 */   addiu     $v0, $zero, 0x3
/* 5E049AC 80089C7C 36016210 */  beq        $v1, $v0, .Llevel_24_8008A158
/* 5E049B0 80089C80 00000000 */   nop
/* 5E049B4 80089C84 E92A0208 */  j          .Llevel_24_8008ABA4
/* 5E049B8 80089C88 00000000 */   nop
.Llevel_24_80089C8C:
/* 5E049BC 80089C8C 06000224 */  addiu      $v0, $zero, 0x6
/* 5E049C0 80089C90 F7016210 */  beq        $v1, $v0, .Llevel_24_8008A470
/* 5E049C4 80089C94 06006228 */   slti      $v0, $v1, 0x6
/* 5E049C8 80089C98 43034014 */  bnez       $v0, .Llevel_24_8008A9A8
/* 5E049CC 80089C9C 21206002 */   addu      $a0, $s3, $zero
/* 5E049D0 80089CA0 14000224 */  addiu      $v0, $zero, 0x14
/* 5E049D4 80089CA4 FA016210 */  beq        $v1, $v0, .Llevel_24_8008A490
/* 5E049D8 80089CA8 61000224 */   addiu     $v0, $zero, 0x61
/* 5E049DC 80089CAC 70036210 */  beq        $v1, $v0, .Llevel_24_8008AA70
/* 5E049E0 80089CB0 21880000 */   addu      $s1, $zero, $zero
/* 5E049E4 80089CB4 E92A0208 */  j          .Llevel_24_8008ABA4
/* 5E049E8 80089CB8 00000000 */   nop
.Llevel_24_80089CBC:
/* 5E049EC 80089CBC 1A008286 */  lh         $v0, 0x1A($s4)
/* 5E049F0 80089CC0 00000000 */  nop
/* 5E049F4 80089CC4 07004010 */  beqz       $v0, .Llevel_24_80089CE4
/* 5E049F8 80089CC8 01001E24 */   addiu     $fp, $zero, 0x1
/* 5E049FC 80089CCC 21206002 */  addu       $a0, $s3, $zero
/* 5E04A00 80089CD0 D0D3000C */  jal        func_80034F40
/* 5E04A04 80089CD4 21280000 */   addu      $a1, $zero, $zero
/* 5E04A08 80089CD8 1A008296 */  lhu        $v0, 0x1A($s4)
/* 5E04A0C 80089CDC 332B0208 */  j          .Llevel_24_8008ACCC
/* 5E04A10 80089CE0 480062A2 */   sb        $v0, 0x48($s3)
.Llevel_24_80089CE4:
/* 5E04A14 80089CE4 14008426 */  addiu      $a0, $s4, 0x14
/* 5E04A18 80089CE8 69D6000C */  jal        func_800359A4
/* 5E04A1C 80089CEC 04000524 */   addiu     $a1, $zero, 0x4
/* 5E04A20 80089CF0 AC034010 */  beqz       $v0, .Llevel_24_8008ABA4
/* 5E04A24 80089CF4 01000224 */   addiu     $v0, $zero, 0x1
/* 5E04A28 80089CF8 480062A2 */  sb         $v0, 0x48($s3)
/* 5E04A2C 80089CFC 21206002 */  addu       $a0, $s3, $zero
/* 5E04A30 80089D00 312B0208 */  j          .Llevel_24_8008ACC4
/* 5E04A34 80089D04 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_24_80089D08:
/* 5E04A38 80089D08 0780023C */  lui        $v0, %hi(D_8006C770)
/* 5E04A3C 80089D0C 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 5E04A40 80089D10 00000000 */  nop
/* 5E04A44 80089D14 A3034010 */  beqz       $v0, .Llevel_24_8008ABA4
/* 5E04A48 80089D18 01001E24 */   addiu     $fp, $zero, 0x1
/* 5E04A4C 80089D1C 21206002 */  addu       $a0, $s3, $zero
/* 5E04A50 80089D20 21280000 */  addu       $a1, $zero, $zero
/* 5E04A54 80089D24 2C010224 */  addiu      $v0, $zero, 0x12C
/* 5E04A58 80089D28 140082AE */  sw         $v0, 0x14($s4)
/* 5E04A5C 80089D2C D0D3000C */  jal        func_80034F40
/* 5E04A60 80089D30 480060A2 */   sb        $zero, 0x48($s3)
/* 5E04A64 80089D34 E92A0208 */  j          .Llevel_24_8008ABA4
/* 5E04A68 80089D38 00000000 */   nop
.Llevel_24_80089D3C:
/* 5E04A6C 80089D3C 0780023C */  lui        $v0, %hi(D_8006C770)
/* 5E04A70 80089D40 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 5E04A74 80089D44 00000000 */  nop
/* 5E04A78 80089D48 96034010 */  beqz       $v0, .Llevel_24_8008ABA4
/* 5E04A7C 80089D4C 00000000 */   nop
/* 5E04A80 80089D50 0E008286 */  lh         $v0, 0xE($s4)
/* 5E04A84 80089D54 00000000 */  nop
/* 5E04A88 80089D58 D703401C */  bgtz       $v0, .Llevel_24_8008ACB8
/* 5E04A8C 80089D5C 02000224 */   addiu     $v0, $zero, 0x2
/* 5E04A90 80089D60 21206002 */  addu       $a0, $s3, $zero
/* 5E04A94 80089D64 21280000 */  addu       $a1, $zero, $zero
/* 5E04A98 80089D68 68010224 */  addiu      $v0, $zero, 0x168
/* 5E04A9C 80089D6C 140082AE */  sw         $v0, 0x14($s4)
/* 5E04AA0 80089D70 312B0208 */  j          .Llevel_24_8008ACC4
/* 5E04AA4 80089D74 480080A0 */   sb        $zero, 0x48($a0)
.Llevel_24_80089D78:
/* 5E04AA8 80089D78 10008496 */  lhu        $a0, 0x10($s4)
/* 5E04AAC 80089D7C 00000000 */  nop
/* 5E04AB0 80089D80 01008230 */  andi       $v0, $a0, 0x1
/* 5E04AB4 80089D84 39004010 */  beqz       $v0, .Llevel_24_80089E6C
/* 5E04AB8 80089D88 02008230 */   andi      $v0, $a0, 0x2
/* 5E04ABC 80089D8C 12008286 */  lh         $v0, 0x12($s4)
/* 5E04AC0 80089D90 46006392 */  lbu        $v1, 0x46($s3)
/* 5E04AC4 80089D94 00000000 */  nop
/* 5E04AC8 80089D98 23104300 */  subu       $v0, $v0, $v1
/* 5E04ACC 80089D9C 02004104 */  bgez       $v0, .Llevel_24_80089DA8
/* 5E04AD0 80089DA0 00000000 */   nop
/* 5E04AD4 80089DA4 23100200 */  negu       $v0, $v0
.Llevel_24_80089DA8:
/* 5E04AD8 80089DA8 08004228 */  slti       $v0, $v0, 0x8
/* 5E04ADC 80089DAC 2B004010 */  beqz       $v0, .Llevel_24_80089E5C
/* 5E04AE0 80089DB0 FC008230 */   andi      $v0, $a0, 0xFC
/* 5E04AE4 80089DB4 0C006426 */  addiu      $a0, $s3, 0xC
/* 5E04AE8 80089DB8 0780053C */  lui        $a1, %hi(D_80070328)
/* 5E04AEC 80089DBC 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 5E04AF0 80089DC0 8E4F000C */  jal        func_80013E38
/* 5E04AF4 80089DC4 21300000 */   addu      $a2, $zero, $zero
/* 5E04AF8 80089DC8 1E004010 */  beqz       $v0, .Llevel_24_80089E44
/* 5E04AFC 80089DCC 21300000 */   addu      $a2, $zero, $zero
/* 5E04B00 80089DD0 0C00638E */  lw         $v1, 0xC($s3)
/* 5E04B04 80089DD4 0780043C */  lui        $a0, %hi(D_8006E020)
/* 5E04B08 80089DD8 20E0848C */  lw         $a0, %lo(D_8006E020)($a0)
/* 5E04B0C 80089DDC 1000628E */  lw         $v0, 0x10($s3)
/* 5E04B10 80089DE0 0780053C */  lui        $a1, %hi(D_8006E024)
/* 5E04B14 80089DE4 24E0A58C */  lw         $a1, %lo(D_8006E024)($a1)
/* 5E04B18 80089DE8 23206400 */  subu       $a0, $v1, $a0
/* 5E04B1C 80089DEC 203A010C */  jal        func_8004E880
/* 5E04B20 80089DF0 23284500 */   subu      $a1, $v0, $a1
/* 5E04B24 80089DF4 0780043C */  lui        $a0, %hi(D_8006E040)
/* 5E04B28 80089DF8 40E08494 */  lhu        $a0, %lo(D_8006E040)($a0)
/* 5E04B2C 80089DFC 21284000 */  addu       $a1, $v0, $zero
/* 5E04B30 80089E00 00240400 */  sll        $a0, $a0, 16
/* 5E04B34 80089E04 993C010C */  jal        func_8004F264
/* 5E04B38 80089E08 03250400 */   sra       $a0, $a0, 20
/* 5E04B3C 80089E0C 18004228 */  slti       $v0, $v0, 0x18
/* 5E04B40 80089E10 0C004010 */  beqz       $v0, .Llevel_24_80089E44
/* 5E04B44 80089E14 00000000 */   nop
/* 5E04B48 80089E18 0780023C */  lui        $v0, %hi(D_8006E344)
/* 5E04B4C 80089E1C 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 5E04B50 80089E20 00000000 */  nop
/* 5E04B54 80089E24 07005110 */  beq        $v0, $s1, .Llevel_24_80089E44
/* 5E04B58 80089E28 21206002 */   addu      $a0, $s3, $zero
/* 5E04B5C 80089E2C 03000524 */  addiu      $a1, $zero, 0x3
/* 5E04B60 80089E30 03000224 */  addiu      $v0, $zero, 0x3
/* 5E04B64 80089E34 100080A6 */  sh         $zero, 0x10($s4)
/* 5E04B68 80089E38 180080A6 */  sh         $zero, 0x18($s4)
/* 5E04B6C 80089E3C 312B0208 */  j          .Llevel_24_8008ACC4
/* 5E04B70 80089E40 480082A0 */   sb        $v0, 0x48($a0)
.Llevel_24_80089E44:
/* 5E04B74 80089E44 21206002 */  addu       $a0, $s3, $zero
/* 5E04B78 80089E48 21280000 */  addu       $a1, $zero, $zero
/* 5E04B7C 80089E4C 68010224 */  addiu      $v0, $zero, 0x168
/* 5E04B80 80089E50 140082AE */  sw         $v0, 0x14($s4)
/* 5E04B84 80089E54 312B0208 */  j          .Llevel_24_8008ACC4
/* 5E04B88 80089E58 480080A0 */   sb        $zero, 0x48($a0)
.Llevel_24_80089E5C:
/* 5E04B8C 80089E5C 100082A6 */  sh         $v0, 0x10($s4)
/* 5E04B90 80089E60 10008496 */  lhu        $a0, 0x10($s4)
/* 5E04B94 80089E64 00000000 */  nop
/* 5E04B98 80089E68 02008230 */  andi       $v0, $a0, 0x2
.Llevel_24_80089E6C:
/* 5E04B9C 80089E6C 0C004010 */  beqz       $v0, .Llevel_24_80089EA0
/* 5E04BA0 80089E70 00000000 */   nop
/* 5E04BA4 80089E74 12008286 */  lh         $v0, 0x12($s4)
/* 5E04BA8 80089E78 46006392 */  lbu        $v1, 0x46($s3)
/* 5E04BAC 80089E7C 00000000 */  nop
/* 5E04BB0 80089E80 23104300 */  subu       $v0, $v0, $v1
/* 5E04BB4 80089E84 02004104 */  bgez       $v0, .Llevel_24_80089E90
/* 5E04BB8 80089E88 00000000 */   nop
/* 5E04BBC 80089E8C 23100200 */  negu       $v0, $v0
.Llevel_24_80089E90:
/* 5E04BC0 80089E90 08004228 */  slti       $v0, $v0, 0x8
/* 5E04BC4 80089E94 02004014 */  bnez       $v0, .Llevel_24_80089EA0
/* 5E04BC8 80089E98 FC008230 */   andi      $v0, $a0, 0xFC
/* 5E04BCC 80089E9C 100082A6 */  sh         $v0, 0x10($s4)
.Llevel_24_80089EA0:
/* 5E04BD0 80089EA0 10008296 */  lhu        $v0, 0x10($s4)
/* 5E04BD4 80089EA4 00000000 */  nop
/* 5E04BD8 80089EA8 03004230 */  andi       $v0, $v0, 0x3
/* 5E04BDC 80089EAC 23004014 */  bnez       $v0, .Llevel_24_80089F3C
/* 5E04BE0 80089EB0 0C007026 */   addiu     $s0, $s3, 0xC
/* 5E04BE4 80089EB4 20006426 */  addiu      $a0, $s3, 0x20
/* 5E04BE8 80089EB8 1800A527 */  addiu      $a1, $sp, 0x18
/* 5E04BEC 80089EBC 2800B027 */  addiu      $s0, $sp, 0x28
/* 5E04BF0 80089EC0 0E008286 */  lh         $v0, 0xE($s4)
/* 5E04BF4 80089EC4 21300002 */  addu       $a2, $s0, $zero
/* 5E04BF8 80089EC8 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 5E04BFC 80089ECC 2000A0AF */  sw         $zero, 0x20($sp)
/* 5E04C00 80089ED0 00044224 */  addiu      $v0, $v0, 0x400
/* 5E04C04 80089ED4 5B3B010C */  jal        func_8004ED6C
/* 5E04C08 80089ED8 1800A2AF */   sw        $v0, 0x18($sp)
/* 5E04C0C 80089EDC 21200002 */  addu       $a0, $s0, $zero
/* 5E04C10 80089EE0 0C007126 */  addiu      $s1, $s3, 0xC
/* 5E04C14 80089EE4 21282002 */  addu       $a1, $s1, $zero
/* 5E04C18 80089EE8 653C010C */  jal        func_8004F194
/* 5E04C1C 80089EEC 21300002 */   addu      $a2, $s0, $zero
/* 5E04C20 80089EF0 21202002 */  addu       $a0, $s1, $zero
/* 5E04C24 80089EF4 21280002 */  addu       $a1, $s0, $zero
/* 5E04C28 80089EF8 01000624 */  addiu      $a2, $zero, 0x1
/* 5E04C2C 80089EFC 21380000 */  addu       $a3, $zero, $zero
/* 5E04C30 80089F00 C360000C */  jal        func_8001830C
/* 5E04C34 80089F04 1000A0AF */   sw        $zero, 0x10($sp)
/* 5E04C38 80089F08 04004010 */  beqz       $v0, .Llevel_24_80089F1C
/* 5E04C3C 80089F0C 00000000 */   nop
/* 5E04C40 80089F10 10008296 */  lhu        $v0, 0x10($s4)
/* 5E04C44 80089F14 CA270208 */  j          .Llevel_24_80089F28
/* 5E04C48 80089F18 01004234 */   ori       $v0, $v0, 0x1
.Llevel_24_80089F1C:
/* 5E04C4C 80089F1C 10008296 */  lhu        $v0, 0x10($s4)
/* 5E04C50 80089F20 00000000 */  nop
/* 5E04C54 80089F24 02004234 */  ori        $v0, $v0, 0x2
.Llevel_24_80089F28:
/* 5E04C58 80089F28 100082A6 */  sh         $v0, 0x10($s4)
/* 5E04C5C 80089F2C 46006292 */  lbu        $v0, 0x46($s3)
/* 5E04C60 80089F30 00000000 */  nop
/* 5E04C64 80089F34 120082A6 */  sh         $v0, 0x12($s4)
/* 5E04C68 80089F38 0C007026 */  addiu      $s0, $s3, 0xC
.Llevel_24_80089F3C:
/* 5E04C6C 80089F3C 21200002 */  addu       $a0, $s0, $zero
/* 5E04C70 80089F40 0780113C */  lui        $s1, %hi(D_80070328)
/* 5E04C74 80089F44 28033126 */  addiu      $s1, $s1, %lo(D_80070328)
/* 5E04C78 80089F48 CD3C010C */  jal        func_8004F334
/* 5E04C7C 80089F4C 21282002 */   addu      $a1, $s1, $zero
/* 5E04C80 80089F50 0C008386 */  lh         $v1, 0xC($s4)
/* 5E04C84 80089F54 21904000 */  addu       $s2, $v0, $zero
/* 5E04C88 80089F58 2A184302 */  slt        $v1, $s2, $v1
/* 5E04C8C 80089F5C 29006010 */  beqz       $v1, .Llevel_24_8008A004
/* 5E04C90 80089F60 21200002 */   addu      $a0, $s0, $zero
/* 5E04C94 80089F64 21282002 */  addu       $a1, $s1, $zero
/* 5E04C98 80089F68 8E4F000C */  jal        func_80013E38
/* 5E04C9C 80089F6C 21300000 */   addu      $a2, $zero, $zero
/* 5E04CA0 80089F70 1E004010 */  beqz       $v0, .Llevel_24_80089FEC
/* 5E04CA4 80089F74 21300000 */   addu      $a2, $zero, $zero
/* 5E04CA8 80089F78 0C00638E */  lw         $v1, 0xC($s3)
/* 5E04CAC 80089F7C 0780043C */  lui        $a0, %hi(D_8006E020)
/* 5E04CB0 80089F80 20E0848C */  lw         $a0, %lo(D_8006E020)($a0)
/* 5E04CB4 80089F84 1000628E */  lw         $v0, 0x10($s3)
/* 5E04CB8 80089F88 0780053C */  lui        $a1, %hi(D_8006E024)
/* 5E04CBC 80089F8C 24E0A58C */  lw         $a1, %lo(D_8006E024)($a1)
/* 5E04CC0 80089F90 23206400 */  subu       $a0, $v1, $a0
/* 5E04CC4 80089F94 203A010C */  jal        func_8004E880
/* 5E04CC8 80089F98 23284500 */   subu      $a1, $v0, $a1
/* 5E04CCC 80089F9C 0780043C */  lui        $a0, %hi(D_8006E040)
/* 5E04CD0 80089FA0 40E08494 */  lhu        $a0, %lo(D_8006E040)($a0)
/* 5E04CD4 80089FA4 21284000 */  addu       $a1, $v0, $zero
/* 5E04CD8 80089FA8 00240400 */  sll        $a0, $a0, 16
/* 5E04CDC 80089FAC 993C010C */  jal        func_8004F264
/* 5E04CE0 80089FB0 03250400 */   sra       $a0, $a0, 20
/* 5E04CE4 80089FB4 18004228 */  slti       $v0, $v0, 0x18
/* 5E04CE8 80089FB8 0C004010 */  beqz       $v0, .Llevel_24_80089FEC
/* 5E04CEC 80089FBC 01000224 */   addiu     $v0, $zero, 0x1
/* 5E04CF0 80089FC0 0780033C */  lui        $v1, %hi(D_8006E344)
/* 5E04CF4 80089FC4 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 5E04CF8 80089FC8 00000000 */  nop
/* 5E04CFC 80089FCC 07006210 */  beq        $v1, $v0, .Llevel_24_80089FEC
/* 5E04D00 80089FD0 21206002 */   addu      $a0, $s3, $zero
/* 5E04D04 80089FD4 03000524 */  addiu      $a1, $zero, 0x3
/* 5E04D08 80089FD8 03000224 */  addiu      $v0, $zero, 0x3
/* 5E04D0C 80089FDC 100080A6 */  sh         $zero, 0x10($s4)
/* 5E04D10 80089FE0 180080A6 */  sh         $zero, 0x18($s4)
/* 5E04D14 80089FE4 312B0208 */  j          .Llevel_24_8008ACC4
/* 5E04D18 80089FE8 480082A0 */   sb        $v0, 0x48($a0)
.Llevel_24_80089FEC:
/* 5E04D1C 80089FEC 21206002 */  addu       $a0, $s3, $zero
/* 5E04D20 80089FF0 21280000 */  addu       $a1, $zero, $zero
/* 5E04D24 80089FF4 68010224 */  addiu      $v0, $zero, 0x168
/* 5E04D28 80089FF8 140082AE */  sw         $v0, 0x14($s4)
/* 5E04D2C 80089FFC 312B0208 */  j          .Llevel_24_8008ACC4
/* 5E04D30 8008A000 480080A0 */   sb        $zero, 0x48($a0)
.Llevel_24_8008A004:
/* 5E04D34 8008A004 10008296 */  lhu        $v0, 0x10($s4)
/* 5E04D38 8008A008 00000000 */  nop
/* 5E04D3C 8008A00C 04004230 */  andi       $v0, $v0, 0x4
/* 5E04D40 8008A010 09004014 */  bnez       $v0, .Llevel_24_8008A038
/* 5E04D44 8008A014 21300000 */   addu      $a2, $zero, $zero
/* 5E04D48 8008A018 21200002 */  addu       $a0, $s0, $zero
/* 5E04D4C 8008A01C CD3C010C */  jal        func_8004F334
/* 5E04D50 8008A020 21288002 */   addu      $a1, $s4, $zero
/* 5E04D54 8008A024 0E008386 */  lh         $v1, 0xE($s4)
/* 5E04D58 8008A028 00000000 */  nop
/* 5E04D5C 8008A02C 2A186200 */  slt        $v1, $v1, $v0
/* 5E04D60 8008A030 21006010 */  beqz       $v1, .Llevel_24_8008A0B8
/* 5E04D64 8008A034 21300000 */   addu      $a2, $zero, $zero
.Llevel_24_8008A038:
/* 5E04D68 8008A038 0000838E */  lw         $v1, 0x0($s4)
/* 5E04D6C 8008A03C 0C00648E */  lw         $a0, 0xC($s3)
/* 5E04D70 8008A040 0400828E */  lw         $v0, 0x4($s4)
/* 5E04D74 8008A044 1000658E */  lw         $a1, 0x10($s3)
/* 5E04D78 8008A048 23206400 */  subu       $a0, $v1, $a0
/* 5E04D7C 8008A04C 203A010C */  jal        func_8004E880
/* 5E04D80 8008A050 23284500 */   subu      $a1, $v0, $a1
/* 5E04D84 8008A054 21206002 */  addu       $a0, $s3, $zero
/* 5E04D88 8008A058 21284000 */  addu       $a1, $v0, $zero
/* 5E04D8C 8008A05C 08000624 */  addiu      $a2, $zero, 0x8
/* 5E04D90 8008A060 18000724 */  addiu      $a3, $zero, 0x18
/* 5E04D94 8008A064 1000A0AF */  sw         $zero, 0x10($sp)
/* 5E04D98 8008A068 17D6000C */  jal        func_8003585C
/* 5E04D9C 8008A06C 1400A0AF */   sw        $zero, 0x14($sp)
/* 5E04DA0 8008A070 10008396 */  lhu        $v1, 0x10($s4)
/* 5E04DA4 8008A074 00000000 */  nop
/* 5E04DA8 8008A078 04006230 */  andi       $v0, $v1, 0x4
/* 5E04DAC 8008A07C 0C004010 */  beqz       $v0, .Llevel_24_8008A0B0
/* 5E04DB0 8008A080 04006234 */   ori       $v0, $v1, 0x4
/* 5E04DB4 8008A084 21200002 */  addu       $a0, $s0, $zero
/* 5E04DB8 8008A088 CD3C010C */  jal        func_8004F334
/* 5E04DBC 8008A08C 21288002 */   addu      $a1, $s4, $zero
/* 5E04DC0 8008A090 00014228 */  slti       $v0, $v0, 0x100
/* 5E04DC4 8008A094 0C004010 */  beqz       $v0, .Llevel_24_8008A0C8
/* 5E04DC8 8008A098 00000000 */   nop
/* 5E04DCC 8008A09C 10008296 */  lhu        $v0, 0x10($s4)
/* 5E04DD0 8008A0A0 00000000 */  nop
/* 5E04DD4 8008A0A4 FB004230 */  andi       $v0, $v0, 0xFB
/* 5E04DD8 8008A0A8 32280208 */  j          .Llevel_24_8008A0C8
/* 5E04DDC 8008A0AC 100082A6 */   sh        $v0, 0x10($s4)
.Llevel_24_8008A0B0:
/* 5E04DE0 8008A0B0 32280208 */  j          .Llevel_24_8008A0C8
/* 5E04DE4 8008A0B4 100082A6 */   sh        $v0, 0x10($s4)
.Llevel_24_8008A0B8:
/* 5E04DE8 8008A0B8 21206002 */  addu       $a0, $s3, $zero
/* 5E04DEC 8008A0BC 08000524 */  addiu      $a1, $zero, 0x8
/* 5E04DF0 8008A0C0 CFD5000C */  jal        func_8003573C
/* 5E04DF4 8008A0C4 21380000 */   addu      $a3, $zero, $zero
.Llevel_24_8008A0C8:
/* 5E04DF8 8008A0C8 21206002 */  addu       $a0, $s3, $zero
/* 5E04DFC 8008A0CC 64000524 */  addiu      $a1, $zero, 0x64
/* 5E04E00 8008A0D0 21300000 */  addu       $a2, $zero, $zero
/* 5E04E04 8008A0D4 21380000 */  addu       $a3, $zero, $zero
/* 5E04E08 8008A0D8 04000224 */  addiu      $v0, $zero, 0x4
/* 5E04E0C 8008A0DC 77D7000C */  jal        func_80035DDC
/* 5E04E10 8008A0E0 1000A2AF */   sw        $v0, 0x10($sp)
/* 5E04E14 8008A0E4 0C008486 */  lh         $a0, 0xC($s4)
/* 5E04E18 8008A0E8 0E008386 */  lh         $v1, 0xE($s4)
/* 5E04E1C 8008A0EC 10008296 */  lhu        $v0, 0x10($s4)
/* 5E04E20 8008A0F0 00000000 */  nop
/* 5E04E24 8008A0F4 04004230 */  andi       $v0, $v0, 0x4
/* 5E04E28 8008A0F8 AA024014 */  bnez       $v0, .Llevel_24_8008ABA4
/* 5E04E2C 8008A0FC 21208300 */   addu      $a0, $a0, $v1
/* 5E04E30 8008A100 2A109200 */  slt        $v0, $a0, $s2
/* 5E04E34 8008A104 A7024010 */  beqz       $v0, .Llevel_24_8008ABA4
/* 5E04E38 8008A108 00000000 */   nop
/* 5E04E3C 8008A10C 1A008286 */  lh         $v0, 0x1A($s4)
/* 5E04E40 8008A110 00000000 */  nop
/* 5E04E44 8008A114 06004014 */  bnez       $v0, .Llevel_24_8008A130
/* 5E04E48 8008A118 100080A6 */   sh        $zero, 0x10($s4)
/* 5E04E4C 8008A11C 9171010C */  jal        rand
/* 5E04E50 8008A120 00000000 */   nop
/* 5E04E54 8008A124 01004230 */  andi       $v0, $v0, 0x1
/* 5E04E58 8008A128 07004010 */  beqz       $v0, .Llevel_24_8008A148
/* 5E04E5C 8008A12C 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_24_8008A130:
/* 5E04E60 8008A130 21206002 */  addu       $a0, $s3, $zero
/* 5E04E64 8008A134 21280000 */  addu       $a1, $zero, $zero
/* 5E04E68 8008A138 68010224 */  addiu      $v0, $zero, 0x168
/* 5E04E6C 8008A13C 140082AE */  sw         $v0, 0x14($s4)
/* 5E04E70 8008A140 312B0208 */  j          .Llevel_24_8008ACC4
/* 5E04E74 8008A144 480080A0 */   sb        $zero, 0x48($a0)
.Llevel_24_8008A148:
/* 5E04E78 8008A148 480062A2 */  sb         $v0, 0x48($s3)
/* 5E04E7C 8008A14C 21206002 */  addu       $a0, $s3, $zero
/* 5E04E80 8008A150 312B0208 */  j          .Llevel_24_8008ACC4
/* 5E04E84 8008A154 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_24_8008A158:
/* 5E04E88 8008A158 A157010C */  jal        func_80055E84
/* 5E04E8C 8008A15C 21206002 */   addu      $a0, $s3, $zero
/* 5E04E90 8008A160 21804000 */  addu       $s0, $v0, $zero
/* 5E04E94 8008A164 EAFF0226 */  addiu      $v0, $s0, -0x16
/* 5E04E98 8008A168 0600422C */  sltiu      $v0, $v0, 0x6
/* 5E04E9C 8008A16C 12004010 */  beqz       $v0, .Llevel_24_8008A1B8
/* 5E04EA0 8008A170 21206002 */   addu      $a0, $s3, $zero
/* 5E04EA4 8008A174 4957010C */  jal        func_80055D24
/* 5E04EA8 8008A178 05000524 */   addiu     $a1, $zero, 0x5
/* 5E04EAC 8008A17C 21206002 */  addu       $a0, $s3, $zero
/* 5E04EB0 8008A180 21280000 */  addu       $a1, $zero, $zero
/* 5E04EB4 8008A184 C557010C */  jal        func_80055F14
/* 5E04EB8 8008A188 1800A627 */   addiu     $a2, $sp, 0x18
/* 5E04EBC 8008A18C 01000424 */  addiu      $a0, $zero, 0x1
/* 5E04EC0 8008A190 0D000524 */  addiu      $a1, $zero, 0xD
/* 5E04EC4 8008A194 1800A627 */  addiu      $a2, $sp, 0x18
/* 5E04EC8 8008A198 3800A727 */  addiu      $a3, $sp, 0x38
/* 5E04ECC 8008A19C 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 5E04ED0 8008A1A0 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 5E04ED4 8008A1A4 1E000224 */  addiu      $v0, $zero, 0x1E
/* 5E04ED8 8008A1A8 3800A0AF */  sw         $zero, 0x38($sp)
/* 5E04EDC 8008A1AC 3C00A0AF */  sw         $zero, 0x3C($sp)
/* 5E04EE0 8008A1B0 09F86000 */  jalr       $v1
/* 5E04EE4 8008A1B4 4000A2AF */   sw        $v0, 0x40($sp)
.Llevel_24_8008A1B8:
/* 5E04EE8 8008A1B8 49007292 */  lbu        $s2, 0x49($s3)
/* 5E04EEC 8008A1BC 00000000 */  nop
/* 5E04EF0 8008A1C0 74005116 */  bne        $s2, $s1, .Llevel_24_8008A394
/* 5E04EF4 8008A1C4 2300022A */   slti      $v0, $s0, 0x23
/* 5E04EF8 8008A1C8 72004014 */  bnez       $v0, .Llevel_24_8008A394
/* 5E04EFC 8008A1CC 21A80000 */   addu      $s5, $zero, $zero
/* 5E04F00 8008A1D0 06000424 */  addiu      $a0, $zero, 0x6
/* 5E04F04 8008A1D4 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5E04F08 8008A1D8 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5E04F0C 8008A1DC 00000000 */  nop
/* 5E04F10 8008A1E0 09F84000 */  jalr       $v0
/* 5E04F14 8008A1E4 21286002 */   addu      $a1, $s3, $zero
/* 5E04F18 8008A1E8 21884000 */  addu       $s1, $v0, $zero
/* 5E04F1C 8008A1EC 66002012 */  beqz       $s1, .Llevel_24_8008A388
/* 5E04F20 8008A1F0 21206002 */   addu      $a0, $s3, $zero
/* 5E04F24 8008A1F4 FF000224 */  addiu      $v0, $zero, 0xFF
/* 5E04F28 8008A1F8 4A0022A2 */  sb         $v0, 0x4A($s1)
/* 5E04F2C 8008A1FC 44006292 */  lbu        $v0, 0x44($s3)
/* 5E04F30 8008A200 05000524 */  addiu      $a1, $zero, 0x5
/* 5E04F34 8008A204 4957010C */  jal        func_80055D24
/* 5E04F38 8008A208 440022A2 */   sb        $v0, 0x44($s1)
/* 5E04F3C 8008A20C 21206002 */  addu       $a0, $s3, $zero
/* 5E04F40 8008A210 01000524 */  addiu      $a1, $zero, 0x1
/* 5E04F44 8008A214 C557010C */  jal        func_80055F14
/* 5E04F48 8008A218 0C002626 */   addiu     $a2, $s1, 0xC
/* 5E04F4C 8008A21C 18008286 */  lh         $v0, 0x18($s4)
/* 5E04F50 8008A220 00000000 */  nop
/* 5E04F54 8008A224 16004014 */  bnez       $v0, .Llevel_24_8008A280
/* 5E04F58 8008A228 3800B027 */   addiu     $s0, $sp, 0x38
/* 5E04F5C 8008A22C 0780053C */  lui        $a1, %hi(D_80070328)
/* 5E04F60 8008A230 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 5E04F64 8008A234 5E3C010C */  jal        func_8004F178
/* 5E04F68 8008A238 21200002 */   addu      $a0, $s0, $zero
/* 5E04F6C 8008A23C 21200002 */  addu       $a0, $s0, $zero
/* 5E04F70 8008A240 4000A28F */  lw         $v0, 0x40($sp)
/* 5E04F74 8008A244 00100524 */  addiu      $a1, $zero, 0x1000
/* 5E04F78 8008A248 00014224 */  addiu      $v0, $v0, 0x100
/* 5E04F7C 8008A24C D668000C */  jal        func_8001A358
/* 5E04F80 8008A250 4000A2AF */   sw        $v0, 0x40($sp)
/* 5E04F84 8008A254 05004010 */  beqz       $v0, .Llevel_24_8008A26C
/* 5E04F88 8008A258 00000000 */   nop
/* 5E04F8C 8008A25C 0780023C */  lui        $v0, %hi(D_80071908)
/* 5E04F90 8008A260 0819428C */  lw         $v0, %lo(D_80071908)($v0)
/* 5E04F94 8008A264 B4280208 */  j          .Llevel_24_8008A2D0
/* 5E04F98 8008A268 4000A2AF */   sw        $v0, 0x40($sp)
.Llevel_24_8008A26C:
/* 5E04F9C 8008A26C 4000A28F */  lw         $v0, 0x40($sp)
/* 5E04FA0 8008A270 00000000 */  nop
/* 5E04FA4 8008A274 00F84224 */  addiu      $v0, $v0, -0x800
/* 5E04FA8 8008A278 B4280208 */  j          .Llevel_24_8008A2D0
/* 5E04FAC 8008A27C 4000A2AF */   sw        $v0, 0x40($sp)
.Llevel_24_8008A280:
/* 5E04FB0 8008A280 04005214 */  bne        $v0, $s2, .Llevel_24_8008A294
/* 5E04FB4 8008A284 3800A427 */   addiu     $a0, $sp, 0x38
/* 5E04FB8 8008A288 1C00828E */  lw         $v0, 0x1C($s4)
/* 5E04FBC 8008A28C AA280208 */  j          .Llevel_24_8008A2A8
/* 5E04FC0 8008A290 02001524 */   addiu     $s5, $zero, 0x2
.Llevel_24_8008A294:
/* 5E04FC4 8008A294 0F005614 */  bne        $v0, $s6, .Llevel_24_8008A2D4
/* 5E04FC8 8008A298 0C006426 */   addiu     $a0, $s3, 0xC
/* 5E04FCC 8008A29C 3800A427 */  addiu      $a0, $sp, 0x38
/* 5E04FD0 8008A2A0 2000828E */  lw         $v0, 0x20($s4)
/* 5E04FD4 8008A2A4 02001524 */  addiu      $s5, $zero, 0x2
.Llevel_24_8008A2A8:
/* 5E04FD8 8008A2A8 40180200 */  sll        $v1, $v0, 1
/* 5E04FDC 8008A2AC 21186200 */  addu       $v1, $v1, $v0
/* 5E04FE0 8008A2B0 80180300 */  sll        $v1, $v1, 2
/* 5E04FE4 8008A2B4 23186200 */  subu       $v1, $v1, $v0
/* 5E04FE8 8008A2B8 0780023C */  lui        $v0, %hi(D_8006C550)
/* 5E04FEC 8008A2BC 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 5E04FF0 8008A2C0 C0180300 */  sll        $v1, $v1, 3
/* 5E04FF4 8008A2C4 21104300 */  addu       $v0, $v0, $v1
/* 5E04FF8 8008A2C8 5E3C010C */  jal        func_8004F178
/* 5E04FFC 8008A2CC 0C004524 */   addiu     $a1, $v0, 0xC
.Llevel_24_8008A2D0:
/* 5E05000 8008A2D0 0C006426 */  addiu      $a0, $s3, 0xC
.Llevel_24_8008A2D4:
/* 5E05004 8008A2D4 CD3C010C */  jal        func_8004F334
/* 5E05008 8008A2D8 3800A527 */   addiu     $a1, $sp, 0x38
/* 5E0500C 8008A2DC 21204000 */  addu       $a0, $v0, $zero
/* 5E05010 8008A2E0 4000A28F */  lw         $v0, 0x40($sp)
/* 5E05014 8008A2E4 1400658E */  lw         $a1, 0x14($s3)
/* 5E05018 8008A2E8 21300000 */  addu       $a2, $zero, $zero
/* 5E0501C 8008A2EC 203A010C */  jal        func_8004E880
/* 5E05020 8008A2F0 23284500 */   subu      $a1, $v0, $a1
/* 5E05024 8008A2F4 450022A2 */  sb         $v0, 0x45($s1)
/* 5E05028 8008A2F8 46006292 */  lbu        $v0, 0x46($s3)
/* 5E0502C 8008A2FC 0C00248E */  lw         $a0, 0xC($s1)
/* 5E05030 8008A300 21300000 */  addu       $a2, $zero, $zero
/* 5E05034 8008A304 460022A2 */  sb         $v0, 0x46($s1)
/* 5E05038 8008A308 1400628E */  lw         $v0, 0x14($s3)
/* 5E0503C 8008A30C 1000258E */  lw         $a1, 0x10($s1)
/* 5E05040 8008A310 80014224 */  addiu      $v0, $v0, 0x180
/* 5E05044 8008A314 140022AE */  sw         $v0, 0x14($s1)
/* 5E05048 8008A318 3800A38F */  lw         $v1, 0x38($sp)
/* 5E0504C 8008A31C 3C00A28F */  lw         $v0, 0x3C($sp)
/* 5E05050 8008A320 23206400 */  subu       $a0, $v1, $a0
/* 5E05054 8008A324 203A010C */  jal        func_8004E880
/* 5E05058 8008A328 23284500 */   subu      $a1, $v0, $a1
/* 5E0505C 8008A32C 21202002 */  addu       $a0, $s1, $zero
/* 5E05060 8008A330 21284000 */  addu       $a1, $v0, $zero
/* 5E05064 8008A334 80000624 */  addiu      $a2, $zero, 0x80
/* 5E05068 8008A338 21380000 */  addu       $a3, $zero, $zero
/* 5E0506C 8008A33C 1000A0AF */  sw         $zero, 0x10($sp)
/* 5E05070 8008A340 17D6000C */  jal        func_8003585C
/* 5E05074 8008A344 1400A0AF */   sw        $zero, 0x14($sp)
/* 5E05078 8008A348 0000308E */  lw         $s0, 0x0($s1)
/* 5E0507C 8008A34C 9171010C */  jal        rand
/* 5E05080 8008A350 00000000 */   nop
/* 5E05084 8008A354 1F004230 */  andi       $v0, $v0, 0x1F
/* 5E05088 8008A358 44002392 */  lbu        $v1, 0x44($s1)
/* 5E0508C 8008A35C C0100200 */  sll        $v0, $v0, 3
/* 5E05090 8008A360 21186200 */  addu       $v1, $v1, $v0
/* 5E05094 8008A364 000003A2 */  sb         $v1, 0x0($s0)
/* 5E05098 8008A368 45002292 */  lbu        $v0, 0x45($s1)
/* 5E0509C 8008A36C 00000000 */  nop
/* 5E050A0 8008A370 010002A2 */  sb         $v0, 0x1($s0)
/* 5E050A4 8008A374 46002392 */  lbu        $v1, 0x46($s1)
/* 5E050A8 8008A378 B4000224 */  addiu      $v0, $zero, 0xB4
/* 5E050AC 8008A37C 080002AE */  sw         $v0, 0x8($s0)
/* 5E050B0 8008A380 030015A2 */  sb         $s5, 0x3($s0)
/* 5E050B4 8008A384 020003A2 */  sb         $v1, 0x2($s0)
.Llevel_24_8008A388:
/* 5E050B8 8008A388 02000224 */  addiu      $v0, $zero, 0x2
/* 5E050BC 8008A38C 332B0208 */  j          .Llevel_24_8008ACCC
/* 5E050C0 8008A390 490062A2 */   sb        $v0, 0x49($s3)
.Llevel_24_8008A394:
/* 5E050C4 8008A394 18008386 */  lh         $v1, 0x18($s4)
/* 5E050C8 8008A398 00000000 */  nop
/* 5E050CC 8008A39C 05006014 */  bnez       $v1, .Llevel_24_8008A3B4
/* 5E050D0 8008A3A0 01000224 */   addiu     $v0, $zero, 0x1
/* 5E050D4 8008A3A4 0780053C */  lui        $a1, %hi(D_80070328)
/* 5E050D8 8008A3A8 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 5E050DC 8008A3AC FF280208 */  j          .Llevel_24_8008A3FC
/* 5E050E0 8008A3B0 3800A427 */   addiu     $a0, $sp, 0x38
.Llevel_24_8008A3B4:
/* 5E050E4 8008A3B4 04006214 */  bne        $v1, $v0, .Llevel_24_8008A3C8
/* 5E050E8 8008A3B8 02000224 */   addiu     $v0, $zero, 0x2
/* 5E050EC 8008A3BC 1C00828E */  lw         $v0, 0x1C($s4)
/* 5E050F0 8008A3C0 F6280208 */  j          .Llevel_24_8008A3D8
/* 5E050F4 8008A3C4 3800A427 */   addiu     $a0, $sp, 0x38
.Llevel_24_8008A3C8:
/* 5E050F8 8008A3C8 0F006214 */  bne        $v1, $v0, .Llevel_24_8008A408
/* 5E050FC 8008A3CC 21300000 */   addu      $a2, $zero, $zero
/* 5E05100 8008A3D0 2000828E */  lw         $v0, 0x20($s4)
/* 5E05104 8008A3D4 3800A427 */  addiu      $a0, $sp, 0x38
.Llevel_24_8008A3D8:
/* 5E05108 8008A3D8 40180200 */  sll        $v1, $v0, 1
/* 5E0510C 8008A3DC 21186200 */  addu       $v1, $v1, $v0
/* 5E05110 8008A3E0 80180300 */  sll        $v1, $v1, 2
/* 5E05114 8008A3E4 23186200 */  subu       $v1, $v1, $v0
/* 5E05118 8008A3E8 0780023C */  lui        $v0, %hi(D_8006C550)
/* 5E0511C 8008A3EC 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 5E05120 8008A3F0 C0180300 */  sll        $v1, $v1, 3
/* 5E05124 8008A3F4 21104300 */  addu       $v0, $v0, $v1
/* 5E05128 8008A3F8 0C004524 */  addiu      $a1, $v0, 0xC
.Llevel_24_8008A3FC:
/* 5E0512C 8008A3FC 5E3C010C */  jal        func_8004F178
/* 5E05130 8008A400 00000000 */   nop
/* 5E05134 8008A404 21300000 */  addu       $a2, $zero, $zero
.Llevel_24_8008A408:
/* 5E05138 8008A408 3800A38F */  lw         $v1, 0x38($sp)
/* 5E0513C 8008A40C 0C00648E */  lw         $a0, 0xC($s3)
/* 5E05140 8008A410 3C00A28F */  lw         $v0, 0x3C($sp)
/* 5E05144 8008A414 1000658E */  lw         $a1, 0x10($s3)
/* 5E05148 8008A418 23206400 */  subu       $a0, $v1, $a0
/* 5E0514C 8008A41C 203A010C */  jal        func_8004E880
/* 5E05150 8008A420 23284500 */   subu      $a1, $v0, $a1
/* 5E05154 8008A424 21206002 */  addu       $a0, $s3, $zero
/* 5E05158 8008A428 21284000 */  addu       $a1, $v0, $zero
/* 5E0515C 8008A42C 06000624 */  addiu      $a2, $zero, 0x6
/* 5E05160 8008A430 02000724 */  addiu      $a3, $zero, 0x2
/* 5E05164 8008A434 01000224 */  addiu      $v0, $zero, 0x1
/* 5E05168 8008A438 1000A2AF */  sw         $v0, 0x10($sp)
/* 5E0516C 8008A43C 17D6000C */  jal        func_8003585C
/* 5E05170 8008A440 1400A0AF */   sw        $zero, 0x14($sp)
/* 5E05174 8008A444 0780023C */  lui        $v0, %hi(D_8006C770)
/* 5E05178 8008A448 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 5E0517C 8008A44C 00000000 */  nop
/* 5E05180 8008A450 D4014010 */  beqz       $v0, .Llevel_24_8008ABA4
/* 5E05184 8008A454 04000524 */   addiu     $a1, $zero, 0x4
/* 5E05188 8008A458 21206002 */  addu       $a0, $s3, $zero
/* 5E0518C 8008A45C 01000224 */  addiu      $v0, $zero, 0x1
/* 5E05190 8008A460 490082A0 */  sb         $v0, 0x49($a0)
/* 5E05194 8008A464 04000224 */  addiu      $v0, $zero, 0x4
/* 5E05198 8008A468 312B0208 */  j          .Llevel_24_8008ACC4
/* 5E0519C 8008A46C 480082A0 */   sb        $v0, 0x48($a0)
.Llevel_24_8008A470:
/* 5E051A0 8008A470 21206002 */  addu       $a0, $s3, $zero
/* 5E051A4 8008A474 65D4000C */  jal        func_80035194
/* 5E051A8 8008A478 24008526 */   addiu     $a1, $s4, 0x24
/* 5E051AC 8008A47C 00010324 */  addiu      $v1, $zero, 0x100
/* 5E051B0 8008A480 C8014314 */  bne        $v0, $v1, .Llevel_24_8008ABA4
/* 5E051B4 8008A484 00000000 */   nop
/* 5E051B8 8008A488 5A2A0208 */  j          .Llevel_24_8008A968
/* 5E051BC 8008A48C 21206002 */   addu      $a0, $s3, $zero
.Llevel_24_8008A490:
/* 5E051C0 8008A490 21A80000 */  addu       $s5, $zero, $zero
/* 5E051C4 8008A494 01000424 */  addiu      $a0, $zero, 0x1
/* 5E051C8 8008A498 0D000524 */  addiu      $a1, $zero, 0xD
/* 5E051CC 8008A49C 0C006626 */  addiu      $a2, $s3, 0xC
/* 5E051D0 8008A4A0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 5E051D4 8008A4A4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 5E051D8 8008A4A8 4800A727 */  addiu      $a3, $sp, 0x48
/* 5E051DC 8008A4AC 4800A0AF */  sw         $zero, 0x48($sp)
/* 5E051E0 8008A4B0 4C00A0AF */  sw         $zero, 0x4C($sp)
/* 5E051E4 8008A4B4 09F84000 */  jalr       $v0
/* 5E051E8 8008A4B8 5000A0AF */   sw        $zero, 0x50($sp)
/* 5E051EC 8008A4BC 12008286 */  lh         $v0, 0x12($s4)
/* 5E051F0 8008A4C0 28008586 */  lh         $a1, 0x28($s4)
/* 5E051F4 8008A4C4 22004018 */  blez       $v0, .Llevel_24_8008A550
/* 5E051F8 8008A4C8 00000000 */   nop
/* 5E051FC 8008A4CC 0800A104 */  bgez       $a1, .Llevel_24_8008A4F0
/* 5E05200 8008A4D0 00000000 */   nop
/* 5E05204 8008A4D4 0780023C */  lui        $v0, %hi(D_8006C648)
/* 5E05208 8008A4D8 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 5E0520C 8008A4DC 45006392 */  lbu        $v1, 0x45($s3)
/* 5E05210 8008A4E0 80100200 */  sll        $v0, $v0, 2
/* 5E05214 8008A4E4 21186200 */  addu       $v1, $v1, $v0
/* 5E05218 8008A4E8 43290208 */  j          .Llevel_24_8008A50C
/* 5E0521C 8008A4EC 450063A2 */   sb        $v1, 0x45($s3)
.Llevel_24_8008A4F0:
/* 5E05220 8008A4F0 0780023C */  lui        $v0, %hi(D_8006C648)
/* 5E05224 8008A4F4 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 5E05228 8008A4F8 45006492 */  lbu        $a0, 0x45($s3)
/* 5E0522C 8008A4FC 40180200 */  sll        $v1, $v0, 1
/* 5E05230 8008A500 21186200 */  addu       $v1, $v1, $v0
/* 5E05234 8008A504 21208300 */  addu       $a0, $a0, $v1
/* 5E05238 8008A508 450064A2 */  sb         $a0, 0x45($s3)
.Llevel_24_8008A50C:
/* 5E0523C 8008A50C 12008296 */  lhu        $v0, 0x12($s4)
/* 5E05240 8008A510 00000000 */  nop
/* 5E05244 8008A514 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 5E05248 8008A518 120082A6 */  sh         $v0, 0x12($s4)
/* 5E0524C 8008A51C 00140200 */  sll        $v0, $v0, 16
/* 5E05250 8008A520 41004014 */  bnez       $v0, .Llevel_24_8008A628
/* 5E05254 8008A524 20006426 */   addiu     $a0, $s3, 0x20
/* 5E05258 8008A528 44006292 */  lbu        $v0, 0x44($s3)
/* 5E0525C 8008A52C 00000000 */  nop
/* 5E05260 8008A530 000082AE */  sw         $v0, 0x0($s4)
/* 5E05264 8008A534 45006292 */  lbu        $v0, 0x45($s3)
/* 5E05268 8008A538 00000000 */  nop
/* 5E0526C 8008A53C 040082AE */  sw         $v0, 0x4($s4)
/* 5E05270 8008A540 46006292 */  lbu        $v0, 0x46($s3)
/* 5E05274 8008A544 2A0080A6 */  sh         $zero, 0x2A($s4)
/* 5E05278 8008A548 8A290208 */  j          .Llevel_24_8008A628
/* 5E0527C 8008A54C 080082AE */   sw        $v0, 0x8($s4)
.Llevel_24_8008A550:
/* 5E05280 8008A550 0000868E */  lw         $a2, 0x0($s4)
/* 5E05284 8008A554 00000000 */  nop
/* 5E05288 8008A558 FF00C330 */  andi       $v1, $a2, 0xFF
/* 5E0528C 8008A55C 40180300 */  sll        $v1, $v1, 1
/* 5E05290 8008A560 0680013C */  lui        $at, %hi(D_80065920)
/* 5E05294 8008A564 21082300 */  addu       $at, $at, $v1
/* 5E05298 8008A568 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 5E0529C 8008A56C 0800848E */  lw         $a0, 0x8($s4)
/* 5E052A0 8008A570 00140200 */  sll        $v0, $v0, 16
/* 5E052A4 8008A574 C3150200 */  sra        $v0, $v0, 23
/* 5E052A8 8008A578 21104400 */  addu       $v0, $v0, $a0
/* 5E052AC 8008A57C 460062A2 */  sb         $v0, 0x46($s3)
/* 5E052B0 8008A580 0680013C */  lui        $at, %hi(D_800658A0)
/* 5E052B4 8008A584 21082300 */  addu       $at, $at, $v1
/* 5E052B8 8008A588 A0582294 */  lhu        $v0, %lo(D_800658A0)($at)
/* 5E052BC 8008A58C 0400838E */  lw         $v1, 0x4($s4)
/* 5E052C0 8008A590 00140200 */  sll        $v0, $v0, 16
/* 5E052C4 8008A594 C3150200 */  sra        $v0, $v0, 23
/* 5E052C8 8008A598 21104300 */  addu       $v0, $v0, $v1
/* 5E052CC 8008A59C 450062A2 */  sb         $v0, 0x45($s3)
/* 5E052D0 8008A5A0 2A008296 */  lhu        $v0, 0x2A($s4)
/* 5E052D4 8008A5A4 00000000 */  nop
/* 5E052D8 8008A5A8 01004224 */  addiu      $v0, $v0, 0x1
/* 5E052DC 8008A5AC 2A0082A6 */  sh         $v0, 0x2A($s4)
/* 5E052E0 8008A5B0 00140200 */  sll        $v0, $v0, 16
/* 5E052E4 8008A5B4 031C0200 */  sra        $v1, $v0, 16
/* 5E052E8 8008A5B8 1D006228 */  slti       $v0, $v1, 0x1D
/* 5E052EC 8008A5BC 05004014 */  bnez       $v0, .Llevel_24_8008A5D4
/* 5E052F0 8008A5C0 0D006228 */   slti      $v0, $v1, 0xD
/* 5E052F4 8008A5C4 0780023C */  lui        $v0, %hi(D_8006C648)
/* 5E052F8 8008A5C8 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 5E052FC 8008A5CC 85290208 */  j          .Llevel_24_8008A614
/* 5E05300 8008A5D0 1800A200 */   mult      $a1, $v0
.Llevel_24_8008A5D4:
/* 5E05304 8008A5D4 08004014 */  bnez       $v0, .Llevel_24_8008A5F8
/* 5E05308 8008A5D8 00000000 */   nop
/* 5E0530C 8008A5DC 0780033C */  lui        $v1, %hi(D_8006C648)
/* 5E05310 8008A5E0 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 5E05314 8008A5E4 00000000 */  nop
/* 5E05318 8008A5E8 80100300 */  sll        $v0, $v1, 2
/* 5E0531C 8008A5EC 21104300 */  addu       $v0, $v0, $v1
/* 5E05320 8008A5F0 84290208 */  j          .Llevel_24_8008A610
/* 5E05324 8008A5F4 80100200 */   sll       $v0, $v0, 2
.Llevel_24_8008A5F8:
/* 5E05328 8008A5F8 0780033C */  lui        $v1, %hi(D_8006C648)
/* 5E0532C 8008A5FC 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 5E05330 8008A600 00000000 */  nop
/* 5E05334 8008A604 80100300 */  sll        $v0, $v1, 2
/* 5E05338 8008A608 21104300 */  addu       $v0, $v0, $v1
/* 5E0533C 8008A60C 40100200 */  sll        $v0, $v0, 1
.Llevel_24_8008A610:
/* 5E05340 8008A610 1800A200 */  mult       $a1, $v0
.Llevel_24_8008A614:
/* 5E05344 8008A614 12400000 */  mflo       $t0
/* 5E05348 8008A618 2110C800 */  addu       $v0, $a2, $t0
/* 5E0534C 8008A61C FF004230 */  andi       $v0, $v0, 0xFF
/* 5E05350 8008A620 000082AE */  sw         $v0, 0x0($s4)
/* 5E05354 8008A624 20006426 */  addiu      $a0, $s3, 0x20
.Llevel_24_8008A628:
/* 5E05358 8008A628 5800B027 */  addiu      $s0, $sp, 0x58
/* 5E0535C 8008A62C 21280002 */  addu       $a1, $s0, $zero
/* 5E05360 8008A630 0780023C */  lui        $v0, %hi(D_8006C648)
/* 5E05364 8008A634 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 5E05368 8008A638 21300002 */  addu       $a2, $s0, $zero
/* 5E0536C 8008A63C 5800A0AF */  sw         $zero, 0x58($sp)
/* 5E05370 8008A640 5C00A0AF */  sw         $zero, 0x5C($sp)
/* 5E05374 8008A644 80180200 */  sll        $v1, $v0, 2
/* 5E05378 8008A648 21186200 */  addu       $v1, $v1, $v0
/* 5E0537C 8008A64C 00110300 */  sll        $v0, $v1, 4
/* 5E05380 8008A650 23104300 */  subu       $v0, $v0, $v1
/* 5E05384 8008A654 80100200 */  sll        $v0, $v0, 2
/* 5E05388 8008A658 5B3B010C */  jal        func_8004ED6C
/* 5E0538C 8008A65C 6000A2AF */   sw        $v0, 0x60($sp)
/* 5E05390 8008A660 6800B227 */  addiu      $s2, $sp, 0x68
/* 5E05394 8008A664 21204002 */  addu       $a0, $s2, $zero
/* 5E05398 8008A668 0C007126 */  addiu      $s1, $s3, 0xC
/* 5E0539C 8008A66C 5E3C010C */  jal        func_8004F178
/* 5E053A0 8008A670 21282002 */   addu      $a1, $s1, $zero
/* 5E053A4 8008A674 21202002 */  addu       $a0, $s1, $zero
/* 5E053A8 8008A678 21282002 */  addu       $a1, $s1, $zero
/* 5E053AC 8008A67C 653C010C */  jal        func_8004F194
/* 5E053B0 8008A680 21300002 */   addu      $a2, $s0, $zero
/* 5E053B4 8008A684 21200002 */  addu       $a0, $s0, $zero
/* 5E053B8 8008A688 21282002 */  addu       $a1, $s1, $zero
/* 5E053BC 8008A68C 653C010C */  jal        func_8004F194
/* 5E053C0 8008A690 21304002 */   addu      $a2, $s2, $zero
/* 5E053C4 8008A694 01000424 */  addiu      $a0, $zero, 0x1
/* 5E053C8 8008A698 0D000524 */  addiu      $a1, $zero, 0xD
/* 5E053CC 8008A69C 21300002 */  addu       $a2, $s0, $zero
/* 5E053D0 8008A6A0 4800B027 */  addiu      $s0, $sp, 0x48
/* 5E053D4 8008A6A4 5800A38F */  lw         $v1, 0x58($sp)
/* 5E053D8 8008A6A8 5C00A28F */  lw         $v0, 0x5C($sp)
/* 5E053DC 8008A6AC 21380002 */  addu       $a3, $s0, $zero
/* 5E053E0 8008A6B0 4800A0AF */  sw         $zero, 0x48($sp)
/* 5E053E4 8008A6B4 4C00A0AF */  sw         $zero, 0x4C($sp)
/* 5E053E8 8008A6B8 5000A0AF */  sw         $zero, 0x50($sp)
/* 5E053EC 8008A6BC 401A0300 */  sll        $v1, $v1, 9
/* 5E053F0 8008A6C0 831A0300 */  sra        $v1, $v1, 10
/* 5E053F4 8008A6C4 40120200 */  sll        $v0, $v0, 9
/* 5E053F8 8008A6C8 5800A3AF */  sw         $v1, 0x58($sp)
/* 5E053FC 8008A6CC 6000A38F */  lw         $v1, 0x60($sp)
/* 5E05400 8008A6D0 83120200 */  sra        $v0, $v0, 10
/* 5E05404 8008A6D4 5C00A2AF */  sw         $v0, 0x5C($sp)
/* 5E05408 8008A6D8 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 5E0540C 8008A6DC E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 5E05410 8008A6E0 401A0300 */  sll        $v1, $v1, 9
/* 5E05414 8008A6E4 831A0300 */  sra        $v1, $v1, 10
/* 5E05418 8008A6E8 09F84000 */  jalr       $v0
/* 5E0541C 8008A6EC 6000A3AF */   sw        $v1, 0x60($sp)
/* 5E05420 8008A6F0 21200002 */  addu       $a0, $s0, $zero
/* 5E05424 8008A6F4 21282002 */  addu       $a1, $s1, $zero
/* 5E05428 8008A6F8 723C010C */  jal        func_8004F1C8
/* 5E0542C 8008A6FC 21304002 */   addu      $a2, $s2, $zero
/* 5E05430 8008A700 21200002 */  addu       $a0, $s0, $zero
/* 5E05434 8008A704 7A3B010C */  jal        func_8004EDE8
/* 5E05438 8008A708 01000524 */   addiu     $a1, $zero, 0x1
/* 5E0543C 8008A70C 21200002 */  addu       $a0, $s0, $zero
/* 5E05440 8008A710 21284000 */  addu       $a1, $v0, $zero
/* 5E05444 8008A714 233C010C */  jal        func_8004F08C
/* 5E05448 8008A718 00040624 */   addiu     $a2, $zero, 0x400
/* 5E0544C 8008A71C 21200002 */  addu       $a0, $s0, $zero
/* 5E05450 8008A720 21284002 */  addu       $a1, $s2, $zero
/* 5E05454 8008A724 653C010C */  jal        func_8004F194
/* 5E05458 8008A728 21308000 */   addu      $a2, $a0, $zero
/* 5E0545C 8008A72C 21202002 */  addu       $a0, $s1, $zero
/* 5E05460 8008A730 00040524 */  addiu      $a1, $zero, 0x400
/* 5E05464 8008A734 02000624 */  addiu      $a2, $zero, 0x2
/* 5E05468 8008A738 21380000 */  addu       $a3, $zero, $zero
/* 5E0546C 8008A73C 1000A0AF */  sw         $zero, 0x10($sp)
/* 5E05470 8008A740 8C6E000C */  jal        func_8001BA30
/* 5E05474 8008A744 1400B3AF */   sw        $s3, 0x14($sp)
/* 5E05478 8008A748 21204000 */  addu       $a0, $v0, $zero
/* 5E0547C 8008A74C 0A008010 */  beqz       $a0, .Llevel_24_8008A778
/* 5E05480 8008A750 09000224 */   addiu     $v0, $zero, 0x9
/* 5E05484 8008A754 36008384 */  lh         $v1, 0x36($a0)
/* 5E05488 8008A758 00000000 */  nop
/* 5E0548C 8008A75C 06006210 */  beq        $v1, $v0, .Llevel_24_8008A778
/* 5E05490 8008A760 0110033C */   lui       $v1, (0x10010000 >> 16)
/* 5E05494 8008A764 01001524 */  addiu      $s5, $zero, 0x1
/* 5E05498 8008A768 1800828C */  lw         $v0, 0x18($a0)
/* 5E0549C 8008A76C 00000000 */  nop
/* 5E054A0 8008A770 25104300 */  or         $v0, $v0, $v1
/* 5E054A4 8008A774 180082AC */  sw         $v0, 0x18($a0)
.Llevel_24_8008A778:
/* 5E054A8 8008A778 1400828E */  lw         $v0, 0x14($s4)
/* 5E054AC 8008A77C 00000000 */  nop
/* 5E054B0 8008A780 64004228 */  slti       $v0, $v0, 0x64
/* 5E054B4 8008A784 08004010 */  beqz       $v0, .Llevel_24_8008A7A8
/* 5E054B8 8008A788 6800A427 */   addiu     $a0, $sp, 0x68
/* 5E054BC 8008A78C 1000A0AF */  sw         $zero, 0x10($sp)
/* 5E054C0 8008A790 4800A527 */  addiu      $a1, $sp, 0x48
/* 5E054C4 8008A794 01000624 */  addiu      $a2, $zero, 0x1
/* 5E054C8 8008A798 C360000C */  jal        func_8001830C
/* 5E054CC 8008A79C 21380000 */   addu      $a3, $zero, $zero
/* 5E054D0 8008A7A0 08004014 */  bnez       $v0, .Llevel_24_8008A7C4
/* 5E054D4 8008A7A4 64000424 */   addiu     $a0, $zero, 0x64
.Llevel_24_8008A7A8:
/* 5E054D8 8008A7A8 14008426 */  addiu      $a0, $s4, 0x14
/* 5E054DC 8008A7AC 69D6000C */  jal        func_800359A4
/* 5E054E0 8008A7B0 04000524 */   addiu     $a1, $zero, 0x4
/* 5E054E4 8008A7B4 03004014 */  bnez       $v0, .Llevel_24_8008A7C4
/* 5E054E8 8008A7B8 64000424 */   addiu     $a0, $zero, 0x64
/* 5E054EC 8008A7BC 7500A012 */  beqz       $s5, .Llevel_24_8008A994
/* 5E054F0 8008A7C0 00000000 */   nop
.Llevel_24_8008A7C4:
/* 5E054F4 8008A7C4 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5E054F8 8008A7C8 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5E054FC 8008A7CC 00000000 */  nop
/* 5E05500 8008A7D0 09F84000 */  jalr       $v0
/* 5E05504 8008A7D4 21286002 */   addu      $a1, $s3, $zero
/* 5E05508 8008A7D8 21884000 */  addu       $s1, $v0, $zero
/* 5E0550C 8008A7DC 02002012 */  beqz       $s1, .Llevel_24_8008A7E8
/* 5E05510 8008A7E0 21300000 */   addu      $a2, $zero, $zero
/* 5E05514 8008A7E4 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_24_8008A7E8:
/* 5E05518 8008A7E8 0C00638E */  lw         $v1, 0xC($s3)
/* 5E0551C 8008A7EC 0780043C */  lui        $a0, %hi(D_8006E020)
/* 5E05520 8008A7F0 20E0848C */  lw         $a0, %lo(D_8006E020)($a0)
/* 5E05524 8008A7F4 1000628E */  lw         $v0, 0x10($s3)
/* 5E05528 8008A7F8 0780053C */  lui        $a1, %hi(D_8006E024)
/* 5E0552C 8008A7FC 24E0A58C */  lw         $a1, %lo(D_8006E024)($a1)
/* 5E05530 8008A800 23206400 */  subu       $a0, $v1, $a0
/* 5E05534 8008A804 203A010C */  jal        func_8004E880
/* 5E05538 8008A808 23284500 */   subu      $a1, $v0, $a1
/* 5E0553C 8008A80C 0780043C */  lui        $a0, %hi(D_8006E040)
/* 5E05540 8008A810 40E08494 */  lhu        $a0, %lo(D_8006E040)($a0)
/* 5E05544 8008A814 21284000 */  addu       $a1, $v0, $zero
/* 5E05548 8008A818 00240400 */  sll        $a0, $a0, 16
/* 5E0554C 8008A81C 993C010C */  jal        func_8004F264
/* 5E05550 8008A820 03250400 */   sra       $a0, $a0, 20
/* 5E05554 8008A824 0A004228 */  slti       $v0, $v0, 0xA
/* 5E05558 8008A828 0F004010 */  beqz       $v0, .Llevel_24_8008A868
/* 5E0555C 8008A82C 14000224 */   addiu     $v0, $zero, 0x14
/* 5E05560 8008A830 0780053C */  lui        $a1, %hi(D_80070328)
/* 5E05564 8008A834 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 5E05568 8008A838 0780013C */  lui        $at, %hi(D_8006E1D8)
/* 5E0556C 8008A83C D8E122AC */  sw         $v0, %lo(D_8006E1D8)($at)
/* 5E05570 8008A840 00100224 */  addiu      $v0, $zero, 0x1000
/* 5E05574 8008A844 0780013C */  lui        $at, %hi(D_8006E1D4)
/* 5E05578 8008A848 D4E122AC */  sw         $v0, %lo(D_8006E1D4)($at)
/* 5E0557C 8008A84C CD3C010C */  jal        func_8004F334
/* 5E05580 8008A850 0C006426 */   addiu     $a0, $s3, 0xC
/* 5E05584 8008A854 00304228 */  slti       $v0, $v0, 0x3000
/* 5E05588 8008A858 03004010 */  beqz       $v0, .Llevel_24_8008A868
/* 5E0558C 8008A85C FF000224 */   addiu     $v0, $zero, 0xFF
/* 5E05590 8008A860 0780013C */  lui        $at, %hi(D_8006C7C0)
/* 5E05594 8008A864 C0C722AC */  sw         $v0, %lo(D_8006C7C0)($at)
.Llevel_24_8008A868:
/* 5E05598 8008A868 21900000 */  addu       $s2, $zero, $zero
.Llevel_24_8008A86C:
/* 5E0559C 8008A86C 0780023C */  lui        $v0, %hi(D_8006C578)
/* 5E055A0 8008A870 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 5E055A4 8008A874 0780033C */  lui        $v1, %hi(D_8006C574)
/* 5E055A8 8008A878 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 5E055AC 8008A87C 00000000 */  nop
/* 5E055B0 8008A880 23104300 */  subu       $v0, $v0, $v1
/* 5E055B4 8008A884 15004228 */  slti       $v0, $v0, 0x15
/* 5E055B8 8008A888 32004014 */  bnez       $v0, .Llevel_24_8008A954
/* 5E055BC 8008A88C 64000424 */   addiu     $a0, $zero, 0x64
/* 5E055C0 8008A890 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5E055C4 8008A894 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5E055C8 8008A898 00000000 */  nop
/* 5E055CC 8008A89C 09F84000 */  jalr       $v0
/* 5E055D0 8008A8A0 21286002 */   addu      $a1, $s3, $zero
/* 5E055D4 8008A8A4 21884000 */  addu       $s1, $v0, $zero
/* 5E055D8 8008A8A8 26002012 */  beqz       $s1, .Llevel_24_8008A944
/* 5E055DC 8008A8AC 21200000 */   addu      $a0, $zero, $zero
/* 5E055E0 8008A8B0 50000524 */  addiu      $a1, $zero, 0x50
/* 5E055E4 8008A8B4 0000308E */  lw         $s0, 0x0($s1)
/* 5E055E8 8008A8B8 01000224 */  addiu      $v0, $zero, 0x1
/* 5E055EC 8008A8BC 480022A2 */  sb         $v0, 0x48($s1)
/* 5E055F0 8008A8C0 410020A2 */  sb         $zero, 0x41($s1)
/* 5E055F4 8008A8C4 4C0020A2 */  sb         $zero, 0x4C($s1)
/* 5E055F8 8008A8C8 DBD8000C */  jal        func_8003636C
/* 5E055FC 8008A8CC 4D0020A2 */   sb        $zero, 0x4D($s1)
/* 5E05600 8008A8D0 21200000 */  addu       $a0, $zero, $zero
/* 5E05604 8008A8D4 50000524 */  addiu      $a1, $zero, 0x50
/* 5E05608 8008A8D8 D8FF4224 */  addiu      $v0, $v0, -0x28
/* 5E0560C 8008A8DC DBD8000C */  jal        func_8003636C
/* 5E05610 8008A8E0 7800A2AF */   sw        $v0, 0x78($sp)
/* 5E05614 8008A8E4 32000424 */  addiu      $a0, $zero, 0x32
/* 5E05618 8008A8E8 C8000524 */  addiu      $a1, $zero, 0xC8
/* 5E0561C 8008A8EC D8FF4224 */  addiu      $v0, $v0, -0x28
/* 5E05620 8008A8F0 DBD8000C */  jal        func_8003636C
/* 5E05624 8008A8F4 7C00A2AF */   sw        $v0, 0x7C($sp)
/* 5E05628 8008A8F8 7800A48F */  lw         $a0, 0x78($sp)
/* 5E0562C 8008A8FC 7800A527 */  addiu      $a1, $sp, 0x78
/* 5E05630 8008A900 8000A2AF */  sw         $v0, 0x80($sp)
/* 5E05634 8008A904 0C00238E */  lw         $v1, 0xC($s1)
/* 5E05638 8008A908 40100400 */  sll        $v0, $a0, 1
/* 5E0563C 8008A90C 21104400 */  addu       $v0, $v0, $a0
/* 5E05640 8008A910 21186200 */  addu       $v1, $v1, $v0
/* 5E05644 8008A914 04000426 */  addiu      $a0, $s0, 0x4
/* 5E05648 8008A918 0C0023AE */  sw         $v1, 0xC($s1)
/* 5E0564C 8008A91C 7C00A68F */  lw         $a2, 0x7C($sp)
/* 5E05650 8008A920 1000238E */  lw         $v1, 0x10($s1)
/* 5E05654 8008A924 40100600 */  sll        $v0, $a2, 1
/* 5E05658 8008A928 21104600 */  addu       $v0, $v0, $a2
/* 5E0565C 8008A92C 21186200 */  addu       $v1, $v1, $v0
/* 5E05660 8008A930 5E3C010C */  jal        func_8004F178
/* 5E05664 8008A934 100023AE */   sw        $v1, 0x10($s1)
/* 5E05668 8008A938 C8000224 */  addiu      $v0, $zero, 0xC8
/* 5E0566C 8008A93C 100000AE */  sw         $zero, 0x10($s0)
/* 5E05670 8008A940 000002AE */  sw         $v0, 0x0($s0)
.Llevel_24_8008A944:
/* 5E05674 8008A944 01005226 */  addiu      $s2, $s2, 0x1
/* 5E05678 8008A948 0800422A */  slti       $v0, $s2, 0x8
/* 5E0567C 8008A94C C7FF4014 */  bnez       $v0, .Llevel_24_8008A86C
/* 5E05680 8008A950 00000000 */   nop
.Llevel_24_8008A954:
/* 5E05684 8008A954 21206002 */  addu       $a0, $s3, $zero
/* 5E05688 8008A958 01000524 */  addiu      $a1, $zero, 0x1
/* 5E0568C 8008A95C AFEE000C */  jal        func_8003BABC
/* 5E05690 8008A960 21300000 */   addu      $a2, $zero, $zero
/* 5E05694 8008A964 21206002 */  addu       $a0, $s3, $zero
.Llevel_24_8008A968:
/* 5E05698 8008A968 4957010C */  jal        func_80055D24
/* 5E0569C 8008A96C 04000524 */   addiu     $a1, $zero, 0x4
/* 5E056A0 8008A970 80EE000C */  jal        func_8003BA00
/* 5E056A4 8008A974 21206002 */   addu      $a0, $s3, $zero
/* 5E056A8 8008A978 21206002 */  addu       $a0, $s3, $zero
/* 5E056AC 8008A97C 6EDA000C */  jal        func_800369B8
/* 5E056B0 8008A980 28000524 */   addiu     $a1, $zero, 0x28
/* 5E056B4 8008A984 C656010C */  jal        func_80055B18
/* 5E056B8 8008A988 21206002 */   addu      $a0, $s3, $zero
/* 5E056BC 8008A98C 332B0208 */  j          .Llevel_24_8008ACCC
/* 5E056C0 8008A990 00000000 */   nop
.Llevel_24_8008A994:
/* 5E056C4 8008A994 21206002 */  addu       $a0, $s3, $zero
/* 5E056C8 8008A998 4957010C */  jal        func_80055D24
/* 5E056CC 8008A99C 06000524 */   addiu     $a1, $zero, 0x6
/* 5E056D0 8008A9A0 E92A0208 */  j          .Llevel_24_8008ABA4
/* 5E056D4 8008A9A4 00000000 */   nop
.Llevel_24_8008A9A8:
/* 5E056D8 8008A9A8 4957010C */  jal        func_80055D24
/* 5E056DC 8008A9AC 05000524 */   addiu     $a1, $zero, 0x5
/* 5E056E0 8008A9B0 21206002 */  addu       $a0, $s3, $zero
/* 5E056E4 8008A9B4 01000524 */  addiu      $a1, $zero, 0x1
/* 5E056E8 8008A9B8 7800B027 */  addiu      $s0, $sp, 0x78
/* 5E056EC 8008A9BC C557010C */  jal        func_80055F14
/* 5E056F0 8008A9C0 21300002 */   addu      $a2, $s0, $zero
/* 5E056F4 8008A9C4 01000424 */  addiu      $a0, $zero, 0x1
/* 5E056F8 8008A9C8 0D000524 */  addiu      $a1, $zero, 0xD
/* 5E056FC 8008A9CC 21300002 */  addu       $a2, $s0, $zero
/* 5E05700 8008A9D0 8800A727 */  addiu      $a3, $sp, 0x88
/* 5E05704 8008A9D4 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 5E05708 8008A9D8 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 5E0570C 8008A9DC 9CFF0224 */  addiu      $v0, $zero, -0x64
/* 5E05710 8008A9E0 8800A0AF */  sw         $zero, 0x88($sp)
/* 5E05714 8008A9E4 8C00A0AF */  sw         $zero, 0x8C($sp)
/* 5E05718 8008A9E8 09F86000 */  jalr       $v1
/* 5E0571C 8008A9EC 9000A2AF */   sw        $v0, 0x90($sp)
/* 5E05720 8008A9F0 3C006392 */  lbu        $v1, 0x3C($s3)
/* 5E05724 8008A9F4 05000224 */  addiu      $v0, $zero, 0x5
/* 5E05728 8008A9F8 06006210 */  beq        $v1, $v0, .Llevel_24_8008AA14
/* 5E0572C 8008A9FC 00000000 */   nop
/* 5E05730 8008AA00 0780023C */  lui        $v0, %hi(D_8006C770)
/* 5E05734 8008AA04 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 5E05738 8008AA08 00000000 */  nop
/* 5E0573C 8008AA0C 65004010 */  beqz       $v0, .Llevel_24_8008ABA4
/* 5E05740 8008AA10 00000000 */   nop
.Llevel_24_8008AA14:
/* 5E05744 8008AA14 9171010C */  jal        rand
/* 5E05748 8008AA18 00000000 */   nop
/* 5E0574C 8008AA1C 01004230 */  andi       $v0, $v0, 0x1
/* 5E05750 8008AA20 02004014 */  bnez       $v0, .Llevel_24_8008AA2C
/* 5E05754 8008AA24 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 5E05758 8008AA28 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_24_8008AA2C:
/* 5E0575C 8008AA2C 280082A6 */  sh         $v0, 0x28($s4)
/* 5E05760 8008AA30 21206002 */  addu       $a0, $s3, $zero
/* 5E05764 8008AA34 80000524 */  addiu      $a1, $zero, 0x80
/* 5E05768 8008AA38 21300000 */  addu       $a2, $zero, $zero
/* 5E0576C 8008AA3C 21380000 */  addu       $a3, $zero, $zero
/* 5E05770 8008AA40 07000224 */  addiu      $v0, $zero, 0x7
/* 5E05774 8008AA44 120082A6 */  sh         $v0, 0x12($s4)
/* 5E05778 8008AA48 5A000224 */  addiu      $v0, $zero, 0x5A
/* 5E0577C 8008AA4C 140082AE */  sw         $v0, 0x14($s4)
/* 5E05780 8008AA50 45006292 */  lbu        $v0, 0x45($s3)
/* 5E05784 8008AA54 14000324 */  addiu      $v1, $zero, 0x14
/* 5E05788 8008AA58 480063A2 */  sb         $v1, 0x48($s3)
/* 5E0578C 8008AA5C 14004224 */  addiu      $v0, $v0, 0x14
/* 5E05790 8008AA60 CFD5000C */  jal        func_8003573C
/* 5E05794 8008AA64 450062A2 */   sb        $v0, 0x45($s3)
/* 5E05798 8008AA68 E92A0208 */  j          .Llevel_24_8008ABA4
/* 5E0579C 8008AA6C 00000000 */   nop
.Llevel_24_8008AA70:
/* 5E057A0 8008AA70 01001E24 */  addiu      $fp, $zero, 0x1
/* 5E057A4 8008AA74 9800B627 */  addiu      $s6, $sp, 0x98
/* 5E057A8 8008AA78 0C007526 */  addiu      $s5, $s3, 0xC
/* 5E057AC 8008AA7C A800B227 */  addiu      $s2, $sp, 0xA8
/* 5E057B0 8008AA80 1C00828E */  lw         $v0, 0x1C($s4)
/* 5E057B4 8008AA84 0780173C */  lui        $s7, %hi(D_8006E020)
/* 5E057B8 8008AA88 20E0F726 */  addiu      $s7, $s7, %lo(D_8006E020)
/* 5E057BC 8008AA8C 40180200 */  sll        $v1, $v0, 1
/* 5E057C0 8008AA90 21186200 */  addu       $v1, $v1, $v0
/* 5E057C4 8008AA94 80180300 */  sll        $v1, $v1, 2
/* 5E057C8 8008AA98 23186200 */  subu       $v1, $v1, $v0
/* 5E057CC 8008AA9C 0780023C */  lui        $v0, %hi(D_8006C550)
/* 5E057D0 8008AAA0 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 5E057D4 8008AAA4 C0180300 */  sll        $v1, $v1, 3
/* 5E057D8 8008AAA8 21804300 */  addu       $s0, $v0, $v1
.Llevel_24_8008AAAC:
/* 5E057DC 8008AAAC 2120C002 */  addu       $a0, $s6, $zero
/* 5E057E0 8008AAB0 5E3C010C */  jal        func_8004F178
/* 5E057E4 8008AAB4 2128A002 */   addu      $a1, $s5, $zero
/* 5E057E8 8008AAB8 21204002 */  addu       $a0, $s2, $zero
/* 5E057EC 8008AABC A000A28F */  lw         $v0, 0xA0($sp)
/* 5E057F0 8008AAC0 0C000526 */  addiu      $a1, $s0, 0xC
/* 5E057F4 8008AAC4 00024224 */  addiu      $v0, $v0, 0x200
/* 5E057F8 8008AAC8 5E3C010C */  jal        func_8004F178
/* 5E057FC 8008AACC A000A2AF */   sw        $v0, 0xA0($sp)
/* 5E05800 8008AAD0 2120A002 */  addu       $a0, $s5, $zero
/* 5E05804 8008AAD4 B000A28F */  lw         $v0, 0xB0($sp)
/* 5E05808 8008AAD8 21284002 */  addu       $a1, $s2, $zero
/* 5E0580C 8008AADC 00024224 */  addiu      $v0, $v0, 0x200
/* 5E05810 8008AAE0 CD3C010C */  jal        func_8004F334
/* 5E05814 8008AAE4 B000A2AF */   sw        $v0, 0xB0($sp)
/* 5E05818 8008AAE8 0C008386 */  lh         $v1, 0xC($s4)
/* 5E0581C 8008AAEC 0E008486 */  lh         $a0, 0xE($s4)
/* 5E05820 8008AAF0 00000000 */  nop
/* 5E05824 8008AAF4 21186400 */  addu       $v1, $v1, $a0
/* 5E05828 8008AAF8 2A104300 */  slt        $v0, $v0, $v1
/* 5E0582C 8008AAFC 1A004010 */  beqz       $v0, .Llevel_24_8008AB68
/* 5E05830 8008AB00 21284002 */   addu      $a1, $s2, $zero
/* 5E05834 8008AB04 2120C002 */  addu       $a0, $s6, $zero
/* 5E05838 8008AB08 8E4F000C */  jal        func_80013E38
/* 5E0583C 8008AB0C 21300000 */   addu      $a2, $zero, $zero
/* 5E05840 8008AB10 15004010 */  beqz       $v0, .Llevel_24_8008AB68
/* 5E05844 8008AB14 21300000 */   addu      $a2, $zero, $zero
/* 5E05848 8008AB18 0C00638E */  lw         $v1, 0xC($s3)
/* 5E0584C 8008AB1C 0000E48E */  lw         $a0, 0x0($s7)
/* 5E05850 8008AB20 1000628E */  lw         $v0, 0x10($s3)
/* 5E05854 8008AB24 0400E58E */  lw         $a1, 0x4($s7)
/* 5E05858 8008AB28 23206400 */  subu       $a0, $v1, $a0
/* 5E0585C 8008AB2C 203A010C */  jal        func_8004E880
/* 5E05860 8008AB30 23284500 */   subu      $a1, $v0, $a1
/* 5E05864 8008AB34 2000E496 */  lhu        $a0, 0x20($s7)
/* 5E05868 8008AB38 21284000 */  addu       $a1, $v0, $zero
/* 5E0586C 8008AB3C 00240400 */  sll        $a0, $a0, 16
/* 5E05870 8008AB40 993C010C */  jal        func_8004F264
/* 5E05874 8008AB44 03250400 */   sra       $a0, $a0, 20
/* 5E05878 8008AB48 18004228 */  slti       $v0, $v0, 0x18
/* 5E0587C 8008AB4C 06004010 */  beqz       $v0, .Llevel_24_8008AB68
/* 5E05880 8008AB50 01000224 */   addiu     $v0, $zero, 0x1
/* 5E05884 8008AB54 0780033C */  lui        $v1, %hi(D_8006E344)
/* 5E05888 8008AB58 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 5E0588C 8008AB5C 00000000 */  nop
/* 5E05890 8008AB60 48006214 */  bne        $v1, $v0, .Llevel_24_8008AC84
/* 5E05894 8008AB64 03000524 */   addiu     $a1, $zero, 0x3
.Llevel_24_8008AB68:
/* 5E05898 8008AB68 2000838E */  lw         $v1, 0x20($s4)
/* 5E0589C 8008AB6C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 5E058A0 8008AB70 0C006210 */  beq        $v1, $v0, .Llevel_24_8008ABA4
/* 5E058A4 8008AB74 40100300 */   sll       $v0, $v1, 1
/* 5E058A8 8008AB78 01003126 */  addiu      $s1, $s1, 0x1
/* 5E058AC 8008AB7C 21104300 */  addu       $v0, $v0, $v1
/* 5E058B0 8008AB80 80100200 */  sll        $v0, $v0, 2
/* 5E058B4 8008AB84 23104300 */  subu       $v0, $v0, $v1
/* 5E058B8 8008AB88 0780033C */  lui        $v1, %hi(D_8006C550)
/* 5E058BC 8008AB8C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 5E058C0 8008AB90 C0100200 */  sll        $v0, $v0, 3
/* 5E058C4 8008AB94 21806200 */  addu       $s0, $v1, $v0
/* 5E058C8 8008AB98 0200222A */  slti       $v0, $s1, 0x2
/* 5E058CC 8008AB9C C3FF4014 */  bnez       $v0, .Llevel_24_8008AAAC
/* 5E058D0 8008ABA0 00000000 */   nop
.Llevel_24_8008ABA4:
/* 5E058D4 8008ABA4 4900C013 */  beqz       $fp, .Llevel_24_8008ACCC
/* 5E058D8 8008ABA8 8800B027 */   addiu     $s0, $sp, 0x88
/* 5E058DC 8008ABAC 21200002 */  addu       $a0, $s0, $zero
/* 5E058E0 8008ABB0 0C007126 */  addiu      $s1, $s3, 0xC
/* 5E058E4 8008ABB4 5E3C010C */  jal        func_8004F178
/* 5E058E8 8008ABB8 21282002 */   addu      $a1, $s1, $zero
/* 5E058EC 8008ABBC 21200002 */  addu       $a0, $s0, $zero
/* 5E058F0 8008ABC0 0780103C */  lui        $s0, %hi(D_80070328)
/* 5E058F4 8008ABC4 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 5E058F8 8008ABC8 21280002 */  addu       $a1, $s0, $zero
/* 5E058FC 8008ABCC 9000A28F */  lw         $v0, 0x90($sp)
/* 5E05900 8008ABD0 21300000 */  addu       $a2, $zero, $zero
/* 5E05904 8008ABD4 00024224 */  addiu      $v0, $v0, 0x200
/* 5E05908 8008ABD8 8E4F000C */  jal        func_80013E38
/* 5E0590C 8008ABDC 9000A2AF */   sw        $v0, 0x90($sp)
/* 5E05910 8008ABE0 3A004010 */  beqz       $v0, .Llevel_24_8008ACCC
/* 5E05914 8008ABE4 21202002 */   addu      $a0, $s1, $zero
/* 5E05918 8008ABE8 CD3C010C */  jal        func_8004F334
/* 5E0591C 8008ABEC 21280002 */   addu      $a1, $s0, $zero
/* 5E05920 8008ABF0 0C008486 */  lh         $a0, 0xC($s4)
/* 5E05924 8008ABF4 21184000 */  addu       $v1, $v0, $zero
/* 5E05928 8008ABF8 2A106400 */  slt        $v0, $v1, $a0
/* 5E0592C 8008ABFC 27004010 */  beqz       $v0, .Llevel_24_8008AC9C
/* 5E05930 8008AC00 00000000 */   nop
/* 5E05934 8008AC04 B800A88F */  lw         $t0, 0xB8($sp)
/* 5E05938 8008AC08 00000000 */  nop
/* 5E0593C 8008AC0C 2F000011 */  beqz       $t0, .Llevel_24_8008ACCC
/* 5E05940 8008AC10 21300000 */   addu      $a2, $zero, $zero
/* 5E05944 8008AC14 0C00638E */  lw         $v1, 0xC($s3)
/* 5E05948 8008AC18 0780043C */  lui        $a0, %hi(D_8006E020)
/* 5E0594C 8008AC1C 20E0848C */  lw         $a0, %lo(D_8006E020)($a0)
/* 5E05950 8008AC20 1000628E */  lw         $v0, 0x10($s3)
/* 5E05954 8008AC24 0780053C */  lui        $a1, %hi(D_8006E024)
/* 5E05958 8008AC28 24E0A58C */  lw         $a1, %lo(D_8006E024)($a1)
/* 5E0595C 8008AC2C 23206400 */  subu       $a0, $v1, $a0
/* 5E05960 8008AC30 203A010C */  jal        func_8004E880
/* 5E05964 8008AC34 23284500 */   subu      $a1, $v0, $a1
/* 5E05968 8008AC38 0780043C */  lui        $a0, %hi(D_8006E040)
/* 5E0596C 8008AC3C 40E08494 */  lhu        $a0, %lo(D_8006E040)($a0)
/* 5E05970 8008AC40 21284000 */  addu       $a1, $v0, $zero
/* 5E05974 8008AC44 00240400 */  sll        $a0, $a0, 16
/* 5E05978 8008AC48 993C010C */  jal        func_8004F264
/* 5E0597C 8008AC4C 03250400 */   sra       $a0, $a0, 20
/* 5E05980 8008AC50 18004228 */  slti       $v0, $v0, 0x18
/* 5E05984 8008AC54 1D004010 */  beqz       $v0, .Llevel_24_8008ACCC
/* 5E05988 8008AC58 01000224 */   addiu     $v0, $zero, 0x1
/* 5E0598C 8008AC5C 0780033C */  lui        $v1, %hi(D_8006E344)
/* 5E05990 8008AC60 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 5E05994 8008AC64 00000000 */  nop
/* 5E05998 8008AC68 18006210 */  beq        $v1, $v0, .Llevel_24_8008ACCC
/* 5E0599C 8008AC6C 21206002 */   addu      $a0, $s3, $zero
/* 5E059A0 8008AC70 03000524 */  addiu      $a1, $zero, 0x3
/* 5E059A4 8008AC74 03000224 */  addiu      $v0, $zero, 0x3
/* 5E059A8 8008AC78 180080A6 */  sh         $zero, 0x18($s4)
/* 5E059AC 8008AC7C 312B0208 */  j          .Llevel_24_8008ACC4
/* 5E059B0 8008AC80 480082A0 */   sb        $v0, 0x48($a0)
.Llevel_24_8008AC84:
/* 5E059B4 8008AC84 21206002 */  addu       $a0, $s3, $zero
/* 5E059B8 8008AC88 01002226 */  addiu      $v0, $s1, 0x1
/* 5E059BC 8008AC8C 180082A6 */  sh         $v0, 0x18($s4)
/* 5E059C0 8008AC90 03000224 */  addiu      $v0, $zero, 0x3
/* 5E059C4 8008AC94 312B0208 */  j          .Llevel_24_8008ACC4
/* 5E059C8 8008AC98 480082A0 */   sb        $v0, 0x48($a0)
.Llevel_24_8008AC9C:
/* 5E059CC 8008AC9C 0E008286 */  lh         $v0, 0xE($s4)
/* 5E059D0 8008ACA0 00000000 */  nop
/* 5E059D4 8008ACA4 09004018 */  blez       $v0, .Llevel_24_8008ACCC
/* 5E059D8 8008ACA8 21104400 */   addu      $v0, $v0, $a0
/* 5E059DC 8008ACAC 2A106200 */  slt        $v0, $v1, $v0
/* 5E059E0 8008ACB0 06004010 */  beqz       $v0, .Llevel_24_8008ACCC
/* 5E059E4 8008ACB4 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_24_8008ACB8:
/* 5E059E8 8008ACB8 480062A2 */  sb         $v0, 0x48($s3)
/* 5E059EC 8008ACBC 21206002 */  addu       $a0, $s3, $zero
/* 5E059F0 8008ACC0 02000524 */  addiu      $a1, $zero, 0x2
.Llevel_24_8008ACC4:
/* 5E059F4 8008ACC4 D0D3000C */  jal        func_80034F40
/* 5E059F8 8008ACC8 00000000 */   nop
.Llevel_24_8008ACCC:
/* 5E059FC 8008ACCC E400BF8F */  lw         $ra, 0xE4($sp)
/* 5E05A00 8008ACD0 E000BE8F */  lw         $fp, 0xE0($sp)
/* 5E05A04 8008ACD4 DC00B78F */  lw         $s7, 0xDC($sp)
/* 5E05A08 8008ACD8 D800B68F */  lw         $s6, 0xD8($sp)
/* 5E05A0C 8008ACDC D400B58F */  lw         $s5, 0xD4($sp)
/* 5E05A10 8008ACE0 D000B48F */  lw         $s4, 0xD0($sp)
/* 5E05A14 8008ACE4 CC00B38F */  lw         $s3, 0xCC($sp)
/* 5E05A18 8008ACE8 C800B28F */  lw         $s2, 0xC8($sp)
/* 5E05A1C 8008ACEC C400B18F */  lw         $s1, 0xC4($sp)
/* 5E05A20 8008ACF0 C000B08F */  lw         $s0, 0xC0($sp)
/* 5E05A24 8008ACF4 E800BD27 */  addiu      $sp, $sp, 0xE8
/* 5E05A28 8008ACF8 0800E003 */  jr         $ra
/* 5E05A2C 8008ACFC 00000000 */   nop
.size func_level_24_80089AEC, . - func_level_24_80089AEC
