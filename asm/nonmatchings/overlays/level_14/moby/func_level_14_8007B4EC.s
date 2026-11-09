.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1018_level_14
/* 47BAA1C 8007B4EC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 47BAA20 8007B4F0 0780033C */  lui        $v1, %hi(D_80070328 + 0xB8)
/* 47BAA24 8007B4F4 E0036324 */  addiu      $v1, $v1, %lo(D_80070328 + 0xB8)
/* 47BAA28 8007B4F8 1000BFAF */  sw         $ra, 0x10($sp)
/* 47BAA2C 8007B4FC 0000628C */  lw         $v0, 0x0($v1)
/* 47BAA30 8007B500 0000858C */  lw         $a1, 0x0($a0)
/* 47BAA34 8007B504 0C004010 */  beqz       $v0, .Llevel_14_8007B538
/* 47BAA38 8007B508 48FF6424 */   addiu     $a0, $v1, -0xB8
/* 47BAA3C 8007B50C 21300000 */  addu       $a2, $zero, $zero
/* 47BAA40 8007B510 88D8000C */  jal        func_80036220
/* 47BAA44 8007B514 21380000 */   addu      $a3, $zero, $zero
/* 47BAA48 8007B518 07004010 */  beqz       $v0, .Llevel_14_8007B538
/* 47BAA4C 8007B51C 0010023C */   lui       $v0, (0x10000082 >> 16)
/* 47BAA50 8007B520 82004234 */  ori        $v0, $v0, (0x10000082 & 0xFFFF)
/* 47BAA54 8007B524 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 47BAA58 8007B528 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 47BAA5C 8007B52C 07000224 */  addiu      $v0, $zero, 0x7
/* 47BAA60 8007B530 0780013C */  lui        $at, %hi(D_80070328 + 0x23C)
/* 47BAA64 8007B534 640522AC */  sw         $v0, %lo(D_80070328 + 0x23C)($at)
.Llevel_14_8007B538:
/* 47BAA68 8007B538 1000BF8F */  lw         $ra, 0x10($sp)
/* 47BAA6C 8007B53C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 47BAA70 8007B540 0800E003 */  jr         $ra
/* 47BAA74 8007B544 00000000 */   nop
.size MobyUpdate_1018_level_14, . - MobyUpdate_1018_level_14
