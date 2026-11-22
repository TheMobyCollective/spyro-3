.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_72_level_46
/* 8F4BE40 80079910 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 8F4BE44 80079914 1000B0AF */  sw         $s0, 0x10($sp)
/* 8F4BE48 80079918 21808000 */  addu       $s0, $a0, $zero
/* 8F4BE4C 8007991C 1400BFAF */  sw         $ra, 0x14($sp)
/* 8F4BE50 80079920 1800028E */  lw         $v0, 0x18($s0)
/* 8F4BE54 80079924 0202033C */  lui        $v1, (0x2020000 >> 16)
/* 8F4BE58 80079928 24104300 */  and        $v0, $v0, $v1
/* 8F4BE5C 8007992C 08004010 */  beqz       $v0, .Llevel_46_80079950
/* 8F4BE60 80079930 01000224 */   addiu     $v0, $zero, 0x1
/* 8F4BE64 80079934 48000392 */  lbu        $v1, 0x48($s0)
/* 8F4BE68 80079938 00000000 */  nop
/* 8F4BE6C 8007993C 05006210 */  beq        $v1, $v0, .Llevel_46_80079954
/* 8F4BE70 80079940 01000224 */   addiu     $v0, $zero, 0x1
/* 8F4BE74 80079944 480002A2 */  sb         $v0, 0x48($s0)
/* 8F4BE78 80079948 D0D3000C */  jal        func_80034F40
/* 8F4BE7C 8007994C 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_46_80079950:
/* 8F4BE80 80079950 48000392 */  lbu        $v1, 0x48($s0)
.Llevel_46_80079954:
/* 8F4BE84 80079954 00000000 */  nop
/* 8F4BE88 80079958 0C006010 */  beqz       $v1, .Llevel_46_8007998C
/* 8F4BE8C 8007995C 180000AE */   sw        $zero, 0x18($s0)
/* 8F4BE90 80079960 01000224 */  addiu      $v0, $zero, 0x1
/* 8F4BE94 80079964 09006214 */  bne        $v1, $v0, .Llevel_46_8007998C
/* 8F4BE98 80079968 00000000 */   nop
/* 8F4BE9C 8007996C 0780023C */  lui        $v0, %hi(D_8006C770)
/* 8F4BEA0 80079970 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 8F4BEA4 80079974 00000000 */  nop
/* 8F4BEA8 80079978 04004010 */  beqz       $v0, .Llevel_46_8007998C
/* 8F4BEAC 8007997C 21200002 */   addu      $a0, $s0, $zero
/* 8F4BEB0 80079980 480000A2 */  sb         $zero, 0x48($s0)
/* 8F4BEB4 80079984 D0D3000C */  jal        func_80034F40
/* 8F4BEB8 80079988 21280000 */   addu      $a1, $zero, $zero
.Llevel_46_8007998C:
/* 8F4BEBC 8007998C 1400BF8F */  lw         $ra, 0x14($sp)
/* 8F4BEC0 80079990 1000B08F */  lw         $s0, 0x10($sp)
/* 8F4BEC4 80079994 1800BD27 */  addiu      $sp, $sp, 0x18
/* 8F4BEC8 80079998 0800E003 */  jr         $ra
/* 8F4BECC 8007999C 00000000 */   nop
.size MobyUpdate_72_level_46, . - MobyUpdate_72_level_46
