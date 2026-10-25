.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1001_level_12
/* 416E9B8 80081C88 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 416E9BC 80081C8C 1000B0AF */  sw         $s0, 0x10($sp)
/* 416E9C0 80081C90 21808000 */  addu       $s0, $a0, $zero
/* 416E9C4 80081C94 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 416E9C8 80081C98 1800B2AF */  sw         $s2, 0x18($sp)
/* 416E9CC 80081C9C 1400B1AF */  sw         $s1, 0x14($sp)
/* 416E9D0 80081CA0 48000392 */  lbu        $v1, 0x48($s0)
/* 416E9D4 80081CA4 0000118E */  lw         $s1, 0x0($s0)
/* 416E9D8 80081CA8 05006010 */  beqz       $v1, .Llevel_12_80081CC0
/* 416E9DC 80081CAC 01000224 */   addiu     $v0, $zero, 0x1
/* 416E9E0 80081CB0 15006210 */  beq        $v1, $v0, .Llevel_12_80081D08
/* 416E9E4 80081CB4 04002426 */   addiu     $a0, $s1, 0x4
/* 416E9E8 80081CB8 5A070208 */  j          .Llevel_12_80081D68
/* 416E9EC 80081CBC 00000000 */   nop
.Llevel_12_80081CC0:
/* 416E9F0 80081CC0 49000292 */  lbu        $v0, 0x49($s0)
/* 416E9F4 80081CC4 00000000 */  nop
/* 416E9F8 80081CC8 27004010 */  beqz       $v0, .Llevel_12_80081D68
/* 416E9FC 80081CCC 01000224 */   addiu     $v0, $zero, 0x1
/* 416EA00 80081CD0 480002A2 */  sb         $v0, 0x48($s0)
/* 416EA04 80081CD4 48001026 */  addiu      $s0, $s0, 0x48
/* 416EA08 80081CD8 21200002 */  addu       $a0, $s0, $zero
/* 416EA0C 80081CDC 0780063C */  lui        $a2, %hi(D_8006D088)
/* 416EA10 80081CE0 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 416EA14 80081CE4 EDED000C */  jal        func_8003B7B4
/* 416EA18 80081CE8 01000524 */   addiu     $a1, $zero, 0x1
/* 416EA1C 80081CEC 21200002 */  addu       $a0, $s0, $zero
/* 416EA20 80081CF0 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 416EA24 80081CF4 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 416EA28 80081CF8 EDED000C */  jal        func_8003B7B4
/* 416EA2C 80081CFC 01000524 */   addiu     $a1, $zero, 0x1
/* 416EA30 80081D00 5A070208 */  j          .Llevel_12_80081D68
/* 416EA34 80081D04 00000000 */   nop
.Llevel_12_80081D08:
/* 416EA38 80081D08 69D6000C */  jal        func_800359A4
/* 416EA3C 80081D0C 04000524 */   addiu     $a1, $zero, 0x4
/* 416EA40 80081D10 15004010 */  beqz       $v0, .Llevel_12_80081D68
/* 416EA44 80081D14 FFFF1224 */   addiu     $s2, $zero, -0x1
/* 416EA48 80081D18 1000258E */  lw         $a1, 0x10($s1)
/* 416EA4C 80081D1C 00000000 */  nop
/* 416EA50 80081D20 0300B210 */  beq        $a1, $s2, .Llevel_12_80081D30
/* 416EA54 80081D24 21200002 */   addu      $a0, $s0, $zero
/* 416EA58 80081D28 C4EE000C */  jal        func_8003BB10
/* 416EA5C 80081D2C 21300000 */   addu      $a2, $zero, $zero
.Llevel_12_80081D30:
/* 416EA60 80081D30 0000228E */  lw         $v0, 0x0($s1)
/* 416EA64 80081D34 0800248E */  lw         $a0, 0x8($s1)
/* 416EA68 80081D38 00000000 */  nop
/* 416EA6C 80081D3C 04009210 */  beq        $a0, $s2, .Llevel_12_80081D50
/* 416EA70 80081D40 040022AE */   sw        $v0, 0x4($s1)
/* 416EA74 80081D44 FC000524 */  addiu      $a1, $zero, 0xFC
/* 416EA78 80081D48 B687000C */  jal        func_80021ED8
/* 416EA7C 80081D4C 21300000 */   addu      $a2, $zero, $zero
.Llevel_12_80081D50:
/* 416EA80 80081D50 0C00248E */  lw         $a0, 0xC($s1)
/* 416EA84 80081D54 00000000 */  nop
/* 416EA88 80081D58 03009210 */  beq        $a0, $s2, .Llevel_12_80081D68
/* 416EA8C 80081D5C FC000524 */   addiu     $a1, $zero, 0xFC
/* 416EA90 80081D60 B687000C */  jal        func_80021ED8
/* 416EA94 80081D64 21300000 */   addu      $a2, $zero, $zero
.Llevel_12_80081D68:
/* 416EA98 80081D68 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 416EA9C 80081D6C 1800B28F */  lw         $s2, 0x18($sp)
/* 416EAA0 80081D70 1400B18F */  lw         $s1, 0x14($sp)
/* 416EAA4 80081D74 1000B08F */  lw         $s0, 0x10($sp)
/* 416EAA8 80081D78 2000BD27 */  addiu      $sp, $sp, 0x20
/* 416EAAC 80081D7C 0800E003 */  jr         $ra
/* 416EAB0 80081D80 00000000 */   nop
.size MobyUpdate_1001_level_12, . - MobyUpdate_1001_level_12
