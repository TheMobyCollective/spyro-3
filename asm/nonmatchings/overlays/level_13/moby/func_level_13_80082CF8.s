.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1018_level_13
/* 4421228 80082CF8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 442122C 80082CFC 0780033C */  lui        $v1, %hi(D_80070328 + 0xB8)
/* 4421230 80082D00 E0036324 */  addiu      $v1, $v1, %lo(D_80070328 + 0xB8)
/* 4421234 80082D04 1000BFAF */  sw         $ra, 0x10($sp)
/* 4421238 80082D08 0000628C */  lw         $v0, 0x0($v1)
/* 442123C 80082D0C 0000858C */  lw         $a1, 0x0($a0)
/* 4421240 80082D10 0C004010 */  beqz       $v0, .Llevel_13_80082D44
/* 4421244 80082D14 48FF6424 */   addiu     $a0, $v1, -0xB8
/* 4421248 80082D18 21300000 */  addu       $a2, $zero, $zero
/* 442124C 80082D1C 88D8000C */  jal        func_80036220
/* 4421250 80082D20 21380000 */   addu      $a3, $zero, $zero
/* 4421254 80082D24 07004010 */  beqz       $v0, .Llevel_13_80082D44
/* 4421258 80082D28 0010023C */   lui       $v0, (0x10000082 >> 16)
/* 442125C 80082D2C 82004234 */  ori        $v0, $v0, (0x10000082 & 0xFFFF)
/* 4421260 80082D30 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 4421264 80082D34 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 4421268 80082D38 07000224 */  addiu      $v0, $zero, 0x7
/* 442126C 80082D3C 0780013C */  lui        $at, %hi(D_80070328 + 0x23C)
/* 4421270 80082D40 640522AC */  sw         $v0, %lo(D_80070328 + 0x23C)($at)
.Llevel_13_80082D44:
/* 4421274 80082D44 1000BF8F */  lw         $ra, 0x10($sp)
/* 4421278 80082D48 1800BD27 */  addiu      $sp, $sp, 0x18
/* 442127C 80082D4C 0800E003 */  jr         $ra
/* 4421280 80082D50 00000000 */   nop
.size MobyUpdate_1018_level_13, . - MobyUpdate_1018_level_13
