.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_25_level_24
/* 5DFD91C 80082BEC C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 5DFD920 80082BF0 3000B0AF */  sw         $s0, 0x30($sp)
/* 5DFD924 80082BF4 21808000 */  addu       $s0, $a0, $zero
/* 5DFD928 80082BF8 3800BFAF */  sw         $ra, 0x38($sp)
/* 5DFD92C 80082BFC 3400B1AF */  sw         $s1, 0x34($sp)
/* 5DFD930 80082C00 48000392 */  lbu        $v1, 0x48($s0)
/* 5DFD934 80082C04 0000058E */  lw         $a1, 0x0($s0)
/* 5DFD938 80082C08 05006010 */  beqz       $v1, .Llevel_24_80082C20
/* 5DFD93C 80082C0C 01000224 */   addiu     $v0, $zero, 0x1
/* 5DFD940 80082C10 0A006210 */  beq        $v1, $v0, .Llevel_24_80082C3C
/* 5DFD944 80082C14 00000000 */   nop
/* 5DFD948 80082C18 490B0208 */  j          .Llevel_24_80082D24
/* 5DFD94C 80082C1C 00000000 */   nop
.Llevel_24_80082C20:
/* 5DFD950 80082C20 0780023C */  lui        $v0, %hi(D_80070328 + 0x13C)
/* 5DFD954 80082C24 6404428C */  lw         $v0, %lo(D_80070328 + 0x13C)($v0)
/* 5DFD958 80082C28 00000000 */  nop
/* 5DFD95C 80082C2C 3D005014 */  bne        $v0, $s0, .Llevel_24_80082D24
/* 5DFD960 80082C30 01000224 */   addiu     $v0, $zero, 0x1
/* 5DFD964 80082C34 490B0208 */  j          .Llevel_24_80082D24
/* 5DFD968 80082C38 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_24_80082C3C:
/* 5DFD96C 80082C3C 0780113C */  lui        $s1, %hi(D_80070328 + 0x13C)
/* 5DFD970 80082C40 64043126 */  addiu      $s1, $s1, %lo(D_80070328 + 0x13C)
/* 5DFD974 80082C44 0000228E */  lw         $v0, 0x0($s1)
/* 5DFD978 80082C48 00000000 */  nop
/* 5DFD97C 80082C4C 33005014 */  bne        $v0, $s0, .Llevel_24_80082D1C
/* 5DFD980 80082C50 00000000 */   nop
/* 5DFD984 80082C54 49000292 */  lbu        $v0, 0x49($s0)
/* 5DFD988 80082C58 00000000 */  nop
/* 5DFD98C 80082C5C 2B004014 */  bnez       $v0, .Llevel_24_80082D0C
/* 5DFD990 80082C60 21200002 */   addu      $a0, $s0, $zero
/* 5DFD994 80082C64 00020624 */  addiu      $a2, $zero, 0x200
/* 5DFD998 80082C68 20000224 */  addiu      $v0, $zero, 0x20
/* 5DFD99C 80082C6C 1000A0AF */  sw         $zero, 0x10($sp)
/* 5DFD9A0 80082C70 1400A3AF */  sw         $v1, 0x14($sp)
/* 5DFD9A4 80082C74 1800A2AF */  sw         $v0, 0x18($sp)
/* 5DFD9A8 80082C78 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 5DFD9AC 80082C7C 0000A58C */  lw         $a1, 0x0($a1)
/* 5DFD9B0 80082C80 A0D6000C */  jal        func_80035A80
/* 5DFD9B4 80082C84 50000724 */   addiu     $a3, $zero, 0x50
/* 5DFD9B8 80082C88 2000A427 */  addiu      $a0, $sp, 0x20
/* 5DFD9BC 80082C8C 0C000526 */  addiu      $a1, $s0, 0xC
/* 5DFD9C0 80082C90 723C010C */  jal        func_8004F1C8
/* 5DFD9C4 80082C94 C4FE2626 */   addiu     $a2, $s1, -0x13C
/* 5DFD9C8 80082C98 0010023C */  lui        $v0, (0x10000008 >> 16)
/* 5DFD9CC 80082C9C 08004234 */  ori        $v0, $v0, (0x10000008 & 0xFFFF)
/* 5DFD9D0 80082CA0 E0002426 */  addiu      $a0, $s1, 0xE0
/* 5DFD9D4 80082CA4 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 5DFD9D8 80082CA8 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 5DFD9DC 80082CAC 5E3C010C */  jal        func_8004F178
/* 5DFD9E0 80082CB0 2000A527 */   addiu     $a1, $sp, 0x20
/* 5DFD9E4 80082CB4 0780023C */  lui        $v0, %hi(D_8006C64C)
/* 5DFD9E8 80082CB8 4CC6428C */  lw         $v0, %lo(D_8006C64C)($v0)
/* 5DFD9EC 80082CBC 0780013C */  lui        $at, %hi(D_80070328 + 0x228)
/* 5DFD9F0 80082CC0 500520A0 */  sb         $zero, %lo(D_80070328 + 0x228)($at)
/* 5DFD9F4 80082CC4 0780013C */  lui        $at, %hi(D_80070328 + 0x229)
/* 5DFD9F8 80082CC8 510520A0 */  sb         $zero, %lo(D_80070328 + 0x229)($at)
/* 5DFD9FC 80082CCC 0780013C */  lui        $at, %hi(D_80070328 + 0x22A)
/* 5DFDA00 80082CD0 520520A0 */  sb         $zero, %lo(D_80070328 + 0x22A)($at)
/* 5DFDA04 80082CD4 05004010 */  beqz       $v0, .Llevel_24_80082CEC
/* 5DFDA08 80082CD8 0210033C */   lui       $v1, (0x10020000 >> 16)
/* 5DFDA0C 80082CDC 0780013C */  lui        $at, %hi(D_80070328 + 0x1D0)
/* 5DFDA10 80082CE0 F80420AC */  sw         $zero, %lo(D_80070328 + 0x1D0)($at)
/* 5DFDA14 80082CE4 490B0208 */  j          .Llevel_24_80082D24
/* 5DFDA18 80082CE8 00000000 */   nop
.Llevel_24_80082CEC:
/* 5DFDA1C 80082CEC 0780023C */  lui        $v0, %hi(D_80070328 + 0x20C)
/* 5DFDA20 80082CF0 3405428C */  lw         $v0, %lo(D_80070328 + 0x20C)($v0)
/* 5DFDA24 80082CF4 00000000 */  nop
/* 5DFDA28 80082CF8 25104300 */  or         $v0, $v0, $v1
/* 5DFDA2C 80082CFC 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 5DFDA30 80082D00 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 5DFDA34 80082D04 490B0208 */  j          .Llevel_24_80082D24
/* 5DFDA38 80082D08 00000000 */   nop
.Llevel_24_80082D0C:
/* 5DFDA3C 80082D0C 05004314 */  bne        $v0, $v1, .Llevel_24_80082D24
/* 5DFDA40 80082D10 00000000 */   nop
/* 5DFDA44 80082D14 490B0208 */  j          .Llevel_24_80082D24
/* 5DFDA48 80082D18 490000A2 */   sb        $zero, 0x49($s0)
.Llevel_24_80082D1C:
/* 5DFDA4C 80082D1C 480000A2 */  sb         $zero, 0x48($s0)
/* 5DFDA50 80082D20 490000A2 */  sb         $zero, 0x49($s0)
.Llevel_24_80082D24:
/* 5DFDA54 80082D24 3800BF8F */  lw         $ra, 0x38($sp)
/* 5DFDA58 80082D28 3400B18F */  lw         $s1, 0x34($sp)
/* 5DFDA5C 80082D2C 3000B08F */  lw         $s0, 0x30($sp)
/* 5DFDA60 80082D30 4000BD27 */  addiu      $sp, $sp, 0x40
/* 5DFDA64 80082D34 0800E003 */  jr         $ra
/* 5DFDA68 80082D38 00000000 */   nop
.size MobyUpdate_25_level_24, . - MobyUpdate_25_level_24
