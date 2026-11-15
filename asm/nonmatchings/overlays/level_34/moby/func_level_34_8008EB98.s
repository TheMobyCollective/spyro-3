.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1009_level_34
/* 74EA8C8 8008EB98 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 74EA8CC 8008EB9C 2000B0AF */  sw         $s0, 0x20($sp)
/* 74EA8D0 8008EBA0 21808000 */  addu       $s0, $a0, $zero
/* 74EA8D4 8008EBA4 2800BFAF */  sw         $ra, 0x28($sp)
/* 74EA8D8 8008EBA8 2400B1AF */  sw         $s1, 0x24($sp)
/* 74EA8DC 8008EBAC 49000292 */  lbu        $v0, 0x49($s0)
/* 74EA8E0 8008EBB0 0000118E */  lw         $s1, 0x0($s0)
/* 74EA8E4 8008EBB4 04004014 */  bnez       $v0, .Llevel_34_8008EBC8
/* 74EA8E8 8008EBB8 01000224 */   addiu     $v0, $zero, 0x1
/* 74EA8EC 8008EBBC 490002A2 */  sb         $v0, 0x49($s0)
/* 74EA8F0 8008EBC0 4957010C */  jal        func_80055D24
/* 74EA8F4 8008EBC4 04000524 */   addiu     $a1, $zero, 0x4
.Llevel_34_8008EBC8:
/* 74EA8F8 8008EBC8 0C00228E */  lw         $v0, 0xC($s1)
/* 74EA8FC 8008EBCC 00000000 */  nop
/* 74EA900 8008EBD0 3B004014 */  bnez       $v0, .Llevel_34_8008ECC0
/* 74EA904 8008EBD4 0C002426 */   addiu     $a0, $s1, 0xC
/* 74EA908 8008EBD8 0780053C */  lui        $a1, %hi(D_80070328 + 0x48)
/* 74EA90C 8008EBDC 7003A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0x48)
/* 74EA910 8008EBE0 0000A38C */  lw         $v1, 0x0($a1)
/* 74EA914 8008EBE4 07000224 */  addiu      $v0, $zero, 0x7
/* 74EA918 8008EBE8 31006214 */  bne        $v1, $v0, .Llevel_34_8008ECB0
/* 74EA91C 8008EBEC 0C000426 */   addiu     $a0, $s0, 0xC
/* 74EA920 8008EBF0 CD3C010C */  jal        func_8004F334
/* 74EA924 8008EBF4 B8FFA524 */   addiu     $a1, $a1, -0x48
/* 74EA928 8008EBF8 00044228 */  slti       $v0, $v0, 0x400
/* 74EA92C 8008EBFC 2C004010 */  beqz       $v0, .Llevel_34_8008ECB0
/* 74EA930 8008EC00 00000000 */   nop
/* 74EA934 8008EC04 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 74EA938 8008EC08 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 74EA93C 8008EC0C 1400028E */  lw         $v0, 0x14($s0)
/* 74EA940 8008EC10 00000000 */  nop
/* 74EA944 8008EC14 2A104300 */  slt        $v0, $v0, $v1
/* 74EA948 8008EC18 25004010 */  beqz       $v0, .Llevel_34_8008ECB0
/* 74EA94C 8008EC1C 00000000 */   nop
/* 74EA950 8008EC20 0780043C */  lui        $a0, %hi(D_8006E040)
/* 74EA954 8008EC24 40E08494 */  lhu        $a0, %lo(D_8006E040)($a0)
/* 74EA958 8008EC28 46000592 */  lbu        $a1, 0x46($s0)
/* 74EA95C 8008EC2C 00240400 */  sll        $a0, $a0, 16
/* 74EA960 8008EC30 993C010C */  jal        func_8004F264
/* 74EA964 8008EC34 03250400 */   sra       $a0, $a0, 20
/* 74EA968 8008EC38 40004228 */  slti       $v0, $v0, 0x40
/* 74EA96C 8008EC3C 1C004010 */  beqz       $v0, .Llevel_34_8008ECB0
/* 74EA970 8008EC40 2C010224 */   addiu     $v0, $zero, 0x12C
/* 74EA974 8008EC44 0000238E */  lw         $v1, 0x0($s1)
/* 74EA978 8008EC48 20000426 */  addiu      $a0, $s0, 0x20
/* 74EA97C 8008EC4C 0C0022AE */  sw         $v0, 0xC($s1)
/* 74EA980 8008EC50 1000A3AF */  sw         $v1, 0x10($sp)
/* 74EA984 8008EC54 0400228E */  lw         $v0, 0x4($s1)
/* 74EA988 8008EC58 1000A527 */  addiu      $a1, $sp, 0x10
/* 74EA98C 8008EC5C 1400A2AF */  sw         $v0, 0x14($sp)
/* 74EA990 8008EC60 0800228E */  lw         $v0, 0x8($s1)
/* 74EA994 8008EC64 2130A000 */  addu       $a2, $a1, $zero
/* 74EA998 8008EC68 5B3B010C */  jal        func_8004ED6C
/* 74EA99C 8008EC6C 1800A2AF */   sw        $v0, 0x18($sp)
/* 74EA9A0 8008EC70 0010063C */  lui        $a2, (0x10000400 >> 16)
/* 74EA9A4 8008EC74 0004C634 */  ori        $a2, $a2, (0x10000400 & 0xFFFF)
/* 74EA9A8 8008EC78 0780023C */  lui        $v0, %hi(D_80070328 + 0x20C)
/* 74EA9AC 8008EC7C 3405428C */  lw         $v0, %lo(D_80070328 + 0x20C)($v0)
/* 74EA9B0 8008EC80 1000A38F */  lw         $v1, 0x10($sp)
/* 74EA9B4 8008EC84 1400A48F */  lw         $a0, 0x14($sp)
/* 74EA9B8 8008EC88 1800A58F */  lw         $a1, 0x18($sp)
/* 74EA9BC 8008EC8C 25104600 */  or         $v0, $v0, $a2
/* 74EA9C0 8008EC90 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 74EA9C4 8008EC94 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 74EA9C8 8008EC98 0780013C */  lui        $at, %hi(D_80070328 + 0x21C)
/* 74EA9CC 8008EC9C 440523AC */  sw         $v1, %lo(D_80070328 + 0x21C)($at)
/* 74EA9D0 8008ECA0 0780013C */  lui        $at, %hi(D_80070328 + 0x220)
/* 74EA9D4 8008ECA4 480524AC */  sw         $a0, %lo(D_80070328 + 0x220)($at)
/* 74EA9D8 8008ECA8 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 74EA9DC 8008ECAC 4C0525AC */  sw         $a1, %lo(D_80070328 + 0x224)($at)
.Llevel_34_8008ECB0:
/* 74EA9E0 8008ECB0 0C00228E */  lw         $v0, 0xC($s1)
/* 74EA9E4 8008ECB4 00000000 */  nop
/* 74EA9E8 8008ECB8 03004010 */  beqz       $v0, .Llevel_34_8008ECC8
/* 74EA9EC 8008ECBC 0C002426 */   addiu     $a0, $s1, 0xC
.Llevel_34_8008ECC0:
/* 74EA9F0 8008ECC0 69D6000C */  jal        func_800359A4
/* 74EA9F4 8008ECC4 04000524 */   addiu     $a1, $zero, 0x4
.Llevel_34_8008ECC8:
/* 74EA9F8 8008ECC8 2800BF8F */  lw         $ra, 0x28($sp)
/* 74EA9FC 8008ECCC 2400B18F */  lw         $s1, 0x24($sp)
/* 74EAA00 8008ECD0 2000B08F */  lw         $s0, 0x20($sp)
/* 74EAA04 8008ECD4 3000BD27 */  addiu      $sp, $sp, 0x30
/* 74EAA08 8008ECD8 0800E003 */  jr         $ra
/* 74EAA0C 8008ECDC 00000000 */   nop
.size MobyUpdate_1009_level_34, . - MobyUpdate_1009_level_34
