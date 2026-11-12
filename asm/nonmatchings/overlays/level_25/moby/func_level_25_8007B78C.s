.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_383_level_25
/* 6011CBC 8007B78C C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 6011CC0 8007B790 3800B2AF */  sw         $s2, 0x38($sp)
/* 6011CC4 8007B794 21908000 */  addu       $s2, $a0, $zero
/* 6011CC8 8007B798 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 6011CCC 8007B79C 3400B1AF */  sw         $s1, 0x34($sp)
/* 6011CD0 8007B7A0 3000B0AF */  sw         $s0, 0x30($sp)
/* 6011CD4 8007B7A4 48004392 */  lbu        $v1, 0x48($s2)
/* 6011CD8 8007B7A8 0000448E */  lw         $a0, 0x0($s2)
/* 6011CDC 8007B7AC 6A006004 */  bltz       $v1, .Llevel_25_8007B958
/* 6011CE0 8007B7B0 02006228 */   slti      $v0, $v1, 0x2
/* 6011CE4 8007B7B4 05004014 */  bnez       $v0, .Llevel_25_8007B7CC
/* 6011CE8 8007B7B8 02000224 */   addiu     $v0, $zero, 0x2
/* 6011CEC 8007B7BC 0B006210 */  beq        $v1, $v0, .Llevel_25_8007B7EC
/* 6011CF0 8007B7C0 00000000 */   nop
/* 6011CF4 8007B7C4 56EE0108 */  j          .Llevel_25_8007B958
/* 6011CF8 8007B7C8 00000000 */   nop
.Llevel_25_8007B7CC:
/* 6011CFC 8007B7CC 0000828C */  lw         $v0, 0x0($a0)
/* 6011D00 8007B7D0 00000000 */  nop
/* 6011D04 8007B7D4 4C004290 */  lbu        $v0, 0x4C($v0)
/* 6011D08 8007B7D8 00000000 */  nop
/* 6011D0C 8007B7DC 5E004014 */  bnez       $v0, .Llevel_25_8007B958
/* 6011D10 8007B7E0 4C0042A2 */   sb        $v0, 0x4C($s2)
/* 6011D14 8007B7E4 56EE0108 */  j          .Llevel_25_8007B958
/* 6011D18 8007B7E8 4D0040A2 */   sb        $zero, 0x4D($s2)
.Llevel_25_8007B7EC:
/* 6011D1C 8007B7EC 49004492 */  lbu        $a0, 0x49($s2)
/* 6011D20 8007B7F0 00000000 */  nop
/* 6011D24 8007B7F4 05008010 */  beqz       $a0, .Llevel_25_8007B80C
/* 6011D28 8007B7F8 01000224 */   addiu     $v0, $zero, 0x1
/* 6011D2C 8007B7FC 48008210 */  beq        $a0, $v0, .Llevel_25_8007B920
/* 6011D30 8007B800 03000224 */   addiu     $v0, $zero, 0x3
/* 6011D34 8007B804 56EE0108 */  j          .Llevel_25_8007B958
/* 6011D38 8007B808 00000000 */   nop
.Llevel_25_8007B80C:
/* 6011D3C 8007B80C 0780023C */  lui        $v0, %hi(D_8006FA3C)
/* 6011D40 8007B810 3CFA428C */  lw         $v0, %lo(D_8006FA3C)($v0)
/* 6011D44 8007B814 00000000 */  nop
/* 6011D48 8007B818 05004310 */  beq        $v0, $v1, .Llevel_25_8007B830
/* 6011D4C 8007B81C 7F010424 */   addiu     $a0, $zero, 0x17F
/* 6011D50 8007B820 C656010C */  jal        func_80055B18
/* 6011D54 8007B824 21204002 */   addu      $a0, $s2, $zero
/* 6011D58 8007B828 56EE0108 */  j          .Llevel_25_8007B958
/* 6011D5C 8007B82C 00000000 */   nop
.Llevel_25_8007B830:
/* 6011D60 8007B830 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6011D64 8007B834 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6011D68 8007B838 00000000 */  nop
/* 6011D6C 8007B83C 09F84000 */  jalr       $v0
/* 6011D70 8007B840 21284002 */   addu      $a1, $s2, $zero
/* 6011D74 8007B844 21884000 */  addu       $s1, $v0, $zero
/* 6011D78 8007B848 15002012 */  beqz       $s1, .Llevel_25_8007B8A0
/* 6011D7C 8007B84C 21202002 */   addu      $a0, $s1, $zero
/* 6011D80 8007B850 E0D3000C */  jal        func_80034F80
/* 6011D84 8007B854 21280000 */   addu      $a1, $zero, $zero
/* 6011D88 8007B858 480020A2 */  sb         $zero, 0x48($s1)
/* 6011D8C 8007B85C 21202002 */  addu       $a0, $s1, $zero
/* 6011D90 8007B860 21280000 */  addu       $a1, $zero, $zero
/* 6011D94 8007B864 C557010C */  jal        func_80055F14
/* 6011D98 8007B868 1000A627 */   addiu     $a2, $sp, 0x10
/* 6011D9C 8007B86C 21204002 */  addu       $a0, $s2, $zero
/* 6011DA0 8007B870 21280000 */  addu       $a1, $zero, $zero
/* 6011DA4 8007B874 2000B027 */  addiu      $s0, $sp, 0x20
/* 6011DA8 8007B878 C557010C */  jal        func_80055F14
/* 6011DAC 8007B87C 21300002 */   addu      $a2, $s0, $zero
/* 6011DB0 8007B880 1000A427 */  addiu      $a0, $sp, 0x10
/* 6011DB4 8007B884 21280002 */  addu       $a1, $s0, $zero
/* 6011DB8 8007B888 723C010C */  jal        func_8004F1C8
/* 6011DBC 8007B88C 21308000 */   addu      $a2, $a0, $zero
/* 6011DC0 8007B890 0C002426 */  addiu      $a0, $s1, 0xC
/* 6011DC4 8007B894 21288000 */  addu       $a1, $a0, $zero
/* 6011DC8 8007B898 653C010C */  jal        func_8004F194
/* 6011DCC 8007B89C 1000A627 */   addiu     $a2, $sp, 0x10
.Llevel_25_8007B8A0:
/* 6011DD0 8007B8A0 7F010424 */  addiu      $a0, $zero, 0x17F
/* 6011DD4 8007B8A4 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6011DD8 8007B8A8 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6011DDC 8007B8AC 00000000 */  nop
/* 6011DE0 8007B8B0 09F84000 */  jalr       $v0
/* 6011DE4 8007B8B4 21284002 */   addu      $a1, $s2, $zero
/* 6011DE8 8007B8B8 21884000 */  addu       $s1, $v0, $zero
/* 6011DEC 8007B8BC 16002012 */  beqz       $s1, .Llevel_25_8007B918
/* 6011DF0 8007B8C0 21202002 */   addu      $a0, $s1, $zero
/* 6011DF4 8007B8C4 E0D3000C */  jal        func_80034F80
/* 6011DF8 8007B8C8 01000524 */   addiu     $a1, $zero, 0x1
/* 6011DFC 8007B8CC 01000224 */  addiu      $v0, $zero, 0x1
/* 6011E00 8007B8D0 480022A2 */  sb         $v0, 0x48($s1)
/* 6011E04 8007B8D4 21202002 */  addu       $a0, $s1, $zero
/* 6011E08 8007B8D8 01000524 */  addiu      $a1, $zero, 0x1
/* 6011E0C 8007B8DC C557010C */  jal        func_80055F14
/* 6011E10 8007B8E0 1000A627 */   addiu     $a2, $sp, 0x10
/* 6011E14 8007B8E4 21204002 */  addu       $a0, $s2, $zero
/* 6011E18 8007B8E8 01000524 */  addiu      $a1, $zero, 0x1
/* 6011E1C 8007B8EC 2000B027 */  addiu      $s0, $sp, 0x20
/* 6011E20 8007B8F0 C557010C */  jal        func_80055F14
/* 6011E24 8007B8F4 21300002 */   addu      $a2, $s0, $zero
/* 6011E28 8007B8F8 1000A427 */  addiu      $a0, $sp, 0x10
/* 6011E2C 8007B8FC 21280002 */  addu       $a1, $s0, $zero
/* 6011E30 8007B900 723C010C */  jal        func_8004F1C8
/* 6011E34 8007B904 21308000 */   addu      $a2, $a0, $zero
/* 6011E38 8007B908 0C002426 */  addiu      $a0, $s1, 0xC
/* 6011E3C 8007B90C 21288000 */  addu       $a1, $a0, $zero
/* 6011E40 8007B910 653C010C */  jal        func_8004F194
/* 6011E44 8007B914 1000A627 */   addiu     $a2, $sp, 0x10
.Llevel_25_8007B918:
/* 6011E48 8007B918 55EE0108 */  j          .Llevel_25_8007B954
/* 6011E4C 8007B91C 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_25_8007B920:
/* 6011E50 8007B920 0780033C */  lui        $v1, %hi(D_8006FA78)
/* 6011E54 8007B924 78FA638C */  lw         $v1, %lo(D_8006FA78)($v1)
/* 6011E58 8007B928 00000000 */  nop
/* 6011E5C 8007B92C 0A006214 */  bne        $v1, $v0, .Llevel_25_8007B958
/* 6011E60 8007B930 00000000 */   nop
/* 6011E64 8007B934 0780023C */  lui        $v0, %hi(D_8006C640)
/* 6011E68 8007B938 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 6011E6C 8007B93C 00000000 */  nop
/* 6011E70 8007B940 0B004228 */  slti       $v0, $v0, 0xB
/* 6011E74 8007B944 04004014 */  bnez       $v0, .Llevel_25_8007B958
/* 6011E78 8007B948 3F000224 */   addiu     $v0, $zero, 0x3F
/* 6011E7C 8007B94C 4C0042A2 */  sb         $v0, 0x4C($s2)
/* 6011E80 8007B950 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_25_8007B954:
/* 6011E84 8007B954 490042A2 */  sb         $v0, 0x49($s2)
.Llevel_25_8007B958:
/* 6011E88 8007B958 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 6011E8C 8007B95C 3800B28F */  lw         $s2, 0x38($sp)
/* 6011E90 8007B960 3400B18F */  lw         $s1, 0x34($sp)
/* 6011E94 8007B964 3000B08F */  lw         $s0, 0x30($sp)
/* 6011E98 8007B968 4000BD27 */  addiu      $sp, $sp, 0x40
/* 6011E9C 8007B96C 0800E003 */  jr         $ra
/* 6011EA0 8007B970 00000000 */   nop
.size MobyUpdate_383_level_25, . - MobyUpdate_383_level_25
