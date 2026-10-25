.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_983_level_10
/* 3AE5AF8 80080DC8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3AE5AFC 80080DCC 1000BFAF */  sw         $ra, 0x10($sp)
/* 3AE5B00 80080DD0 0000858C */  lw         $a1, 0x0($a0)
/* 3AE5B04 80080DD4 00000000 */  nop
/* 3AE5B08 80080DD8 1800A38C */  lw         $v1, 0x18($a1)
/* 3AE5B0C 80080DDC 00000000 */  nop
/* 3AE5B10 80080DE0 40100300 */  sll        $v0, $v1, 1
/* 3AE5B14 80080DE4 21104300 */  addu       $v0, $v0, $v1
/* 3AE5B18 80080DE8 80100200 */  sll        $v0, $v0, 2
/* 3AE5B1C 80080DEC 23104300 */  subu       $v0, $v0, $v1
/* 3AE5B20 80080DF0 0780033C */  lui        $v1, %hi(D_8006C550)
/* 3AE5B24 80080DF4 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 3AE5B28 80080DF8 C0100200 */  sll        $v0, $v0, 3
/* 3AE5B2C 80080DFC 21104300 */  addu       $v0, $v0, $v1
/* 3AE5B30 80080E00 48004290 */  lbu        $v0, 0x48($v0)
/* 3AE5B34 80080E04 00000000 */  nop
/* 3AE5B38 80080E08 80004230 */  andi       $v0, $v0, 0x80
/* 3AE5B3C 80080E0C 05004010 */  beqz       $v0, .Llevel_10_80080E24
/* 3AE5B40 80080E10 00000000 */   nop
/* 3AE5B44 80080E14 C656010C */  jal        func_80055B18
/* 3AE5B48 80080E18 00000000 */   nop
/* 3AE5B4C 80080E1C 9C030208 */  j          .Llevel_10_80080E70
/* 3AE5B50 80080E20 00000000 */   nop
.Llevel_10_80080E24:
/* 3AE5B54 80080E24 0780043C */  lui        $a0, %hi(D_80070328 + 0x50)
/* 3AE5B58 80080E28 78038424 */  addiu      $a0, $a0, %lo(D_80070328 + 0x50)
/* 3AE5B5C 80080E2C 0000828C */  lw         $v0, 0x0($a0)
/* 3AE5B60 80080E30 00000000 */  nop
/* 3AE5B64 80080E34 FBFF4224 */  addiu      $v0, $v0, -0x5
/* 3AE5B68 80080E38 0200422C */  sltiu      $v0, $v0, 0x2
/* 3AE5B6C 80080E3C 0C004010 */  beqz       $v0, .Llevel_10_80080E70
/* 3AE5B70 80080E40 B0FF8424 */   addiu     $a0, $a0, -0x50
/* 3AE5B74 80080E44 21300000 */  addu       $a2, $zero, $zero
/* 3AE5B78 80080E48 88D8000C */  jal        func_80036220
/* 3AE5B7C 80080E4C 21380000 */   addu      $a3, $zero, $zero
/* 3AE5B80 80080E50 07004010 */  beqz       $v0, .Llevel_10_80080E70
/* 3AE5B84 80080E54 0010023C */   lui       $v0, (0x10000080 >> 16)
/* 3AE5B88 80080E58 80004234 */  ori        $v0, $v0, (0x10000080 & 0xFFFF)
/* 3AE5B8C 80080E5C 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 3AE5B90 80080E60 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 3AE5B94 80080E64 12000224 */  addiu      $v0, $zero, 0x12
/* 3AE5B98 80080E68 0780013C */  lui        $at, %hi(D_80070328 + 0x23C)
/* 3AE5B9C 80080E6C 640522AC */  sw         $v0, %lo(D_80070328 + 0x23C)($at)
.Llevel_10_80080E70:
/* 3AE5BA0 80080E70 1000BF8F */  lw         $ra, 0x10($sp)
/* 3AE5BA4 80080E74 1800BD27 */  addiu      $sp, $sp, 0x18
/* 3AE5BA8 80080E78 0800E003 */  jr         $ra
/* 3AE5BAC 80080E7C 00000000 */   nop
.size MobyUpdate_983_level_10, . - MobyUpdate_983_level_10
