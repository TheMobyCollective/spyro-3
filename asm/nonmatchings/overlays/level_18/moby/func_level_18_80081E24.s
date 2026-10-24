.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_681_level_18
/* 4EB4B54 80081E24 0780023C */  lui        $v0, %hi(D_8006E040)
/* 4EB4B58 80081E28 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 4EB4B5C 80081E2C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4EB4B60 80081E30 1000B0AF */  sw         $s0, 0x10($sp)
/* 4EB4B64 80081E34 21808000 */  addu       $s0, $a0, $zero
/* 4EB4B68 80081E38 1800BFAF */  sw         $ra, 0x18($sp)
/* 4EB4B6C 80081E3C 1400B1AF */  sw         $s1, 0x14($sp)
/* 4EB4B70 80081E40 00140200 */  sll        $v0, $v0, 16
/* 4EB4B74 80081E44 03150200 */  sra        $v0, $v0, 20
/* 4EB4B78 80081E48 80FF4224 */  addiu      $v0, $v0, -0x80
/* 4EB4B7C 80081E4C 460002A2 */  sb         $v0, 0x46($s0)
/* 4EB4B80 80081E50 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 4EB4B84 80081E54 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 4EB4B88 80081E58 0000118E */  lw         $s1, 0x0($s0)
/* 4EB4B8C 80081E5C 02110200 */  srl        $v0, $v0, 4
/* 4EB4B90 80081E60 450002A2 */  sb         $v0, 0x45($s0)
/* 4EB4B94 80081E64 00002386 */  lh         $v1, 0x0($s1)
/* 4EB4B98 80081E68 01000224 */  addiu      $v0, $zero, 0x1
/* 4EB4B9C 80081E6C 23006214 */  bne        $v1, $v0, .Llevel_18_80081EFC
/* 4EB4BA0 80081E70 00000000 */   nop
/* 4EB4BA4 80081E74 0800238E */  lw         $v1, 0x8($s1)
/* 4EB4BA8 80081E78 00000000 */  nop
/* 4EB4BAC 80081E7C 48006290 */  lbu        $v0, 0x48($v1)
/* 4EB4BB0 80081E80 00000000 */  nop
/* 4EB4BB4 80081E84 8000422C */  sltiu      $v0, $v0, 0x80
/* 4EB4BB8 80081E88 06004010 */  beqz       $v0, .Llevel_18_80081EA4
/* 4EB4BBC 80081E8C 00000000 */   nop
/* 4EB4BC0 80081E90 36006384 */  lh         $v1, 0x36($v1)
/* 4EB4BC4 80081E94 02002286 */  lh         $v0, 0x2($s1)
/* 4EB4BC8 80081E98 00000000 */  nop
/* 4EB4BCC 80081E9C 03006210 */  beq        $v1, $v0, .Llevel_18_80081EAC
/* 4EB4BD0 80081EA0 00000000 */   nop
.Llevel_18_80081EA4:
/* 4EB4BD4 80081EA4 C656010C */  jal        func_80055B18
/* 4EB4BD8 80081EA8 21200002 */   addu      $a0, $s0, $zero
.Llevel_18_80081EAC:
/* 4EB4BDC 80081EAC 0800258E */  lw         $a1, 0x8($s1)
/* 4EB4BE0 80081EB0 00000000 */  nop
/* 4EB4BE4 80081EB4 3600A384 */  lh         $v1, 0x36($a1)
/* 4EB4BE8 80081EB8 70010224 */  addiu      $v0, $zero, 0x170
/* 4EB4BEC 80081EBC 08006214 */  bne        $v1, $v0, .Llevel_18_80081EE0
/* 4EB4BF0 80081EC0 0C000426 */   addiu     $a0, $s0, 0xC
/* 4EB4BF4 80081EC4 0780043C */  lui        $a0, %hi(D_80070328 + 0x250)
/* 4EB4BF8 80081EC8 7805848C */  lw         $a0, %lo(D_80070328 + 0x250)($a0)
/* 4EB4BFC 80081ECC 21280000 */  addu       $a1, $zero, $zero
/* 4EB4C00 80081ED0 C557010C */  jal        func_80055F14
/* 4EB4C04 80081ED4 0C000626 */   addiu     $a2, $s0, 0xC
/* 4EB4C08 80081ED8 BA070208 */  j          .Llevel_18_80081EE8
/* 4EB4C0C 80081EDC 00000000 */   nop
.Llevel_18_80081EE0:
/* 4EB4C10 80081EE0 5E3C010C */  jal        func_8004F178
/* 4EB4C14 80081EE4 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_18_80081EE8:
/* 4EB4C18 80081EE8 1400028E */  lw         $v0, 0x14($s0)
/* 4EB4C1C 80081EEC 0400238E */  lw         $v1, 0x4($s1)
/* 4EB4C20 80081EF0 00000000 */  nop
/* 4EB4C24 80081EF4 21104300 */  addu       $v0, $v0, $v1
/* 4EB4C28 80081EF8 140002AE */  sw         $v0, 0x14($s0)
.Llevel_18_80081EFC:
/* 4EB4C2C 80081EFC 1800BF8F */  lw         $ra, 0x18($sp)
/* 4EB4C30 80081F00 1400B18F */  lw         $s1, 0x14($sp)
/* 4EB4C34 80081F04 1000B08F */  lw         $s0, 0x10($sp)
/* 4EB4C38 80081F08 2000BD27 */  addiu      $sp, $sp, 0x20
/* 4EB4C3C 80081F0C 0800E003 */  jr         $ra
/* 4EB4C40 80081F10 00000000 */   nop
.size MobyUpdate_681_level_18, . - MobyUpdate_681_level_18
