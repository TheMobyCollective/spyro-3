.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_9_level_24
/* 5E05F50 8008B220 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 5E05F54 8008B224 2800B2AF */  sw         $s2, 0x28($sp)
/* 5E05F58 8008B228 21908000 */  addu       $s2, $a0, $zero
/* 5E05F5C 8008B22C 3000BFAF */  sw         $ra, 0x30($sp)
/* 5E05F60 8008B230 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 5E05F64 8008B234 2400B1AF */  sw         $s1, 0x24($sp)
/* 5E05F68 8008B238 2000B0AF */  sw         $s0, 0x20($sp)
/* 5E05F6C 8008B23C 1800428E */  lw         $v0, 0x18($s2)
/* 5E05F70 8008B240 00000000 */  nop
/* 5E05F74 8008B244 4B004010 */  beqz       $v0, .Llevel_24_8008B374
/* 5E05F78 8008B248 00000000 */   nop
/* 5E05F7C 8008B24C 46005392 */  lbu        $s3, 0x46($s2)
/* 5E05F80 8008B250 4957010C */  jal        func_80055D24
/* 5E05F84 8008B254 04000524 */   addiu     $a1, $zero, 0x4
/* 5E05F88 8008B258 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 5E05F8C 8008B25C 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 5E05F90 8008B260 21880000 */  addu       $s1, $zero, $zero
/* 5E05F94 8008B264 460042A2 */  sb         $v0, 0x46($s2)
.Llevel_24_8008B268:
/* 5E05F98 8008B268 0780023C */  lui        $v0, %hi(D_8006C578)
/* 5E05F9C 8008B26C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 5E05FA0 8008B270 0780033C */  lui        $v1, %hi(D_8006C574)
/* 5E05FA4 8008B274 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 5E05FA8 8008B278 00000000 */  nop
/* 5E05FAC 8008B27C 23104300 */  subu       $v0, $v0, $v1
/* 5E05FB0 8008B280 15004228 */  slti       $v0, $v0, 0x15
/* 5E05FB4 8008B284 39004014 */  bnez       $v0, .Llevel_24_8008B36C
/* 5E05FB8 8008B288 0A000424 */   addiu     $a0, $zero, 0xA
/* 5E05FBC 8008B28C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5E05FC0 8008B290 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5E05FC4 8008B294 00000000 */  nop
/* 5E05FC8 8008B298 09F84000 */  jalr       $v0
/* 5E05FCC 8008B29C 21284002 */   addu      $a1, $s2, $zero
/* 5E05FD0 8008B2A0 21804000 */  addu       $s0, $v0, $zero
/* 5E05FD4 8008B2A4 2D000012 */  beqz       $s0, .Llevel_24_8008B35C
/* 5E05FD8 8008B2A8 18000224 */   addiu     $v0, $zero, 0x18
/* 5E05FDC 8008B2AC 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 5E05FE0 8008B2B0 3F000224 */  addiu      $v0, $zero, 0x3F
/* 5E05FE4 8008B2B4 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 5E05FE8 8008B2B8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 5E05FEC 8008B2BC 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 5E05FF0 8008B2C0 01000224 */  addiu      $v0, $zero, 0x1
/* 5E05FF4 8008B2C4 3C0011A2 */  sb         $s1, 0x3C($s0)
/* 5E05FF8 8008B2C8 12002212 */  beq        $s1, $v0, .Llevel_24_8008B314
/* 5E05FFC 8008B2CC 460013A2 */   sb        $s3, 0x46($s0)
/* 5E06000 8008B2D0 0200222A */  slti       $v0, $s1, 0x2
/* 5E06004 8008B2D4 05004010 */  beqz       $v0, .Llevel_24_8008B2EC
/* 5E06008 8008B2D8 00000000 */   nop
/* 5E0600C 8008B2DC 08002012 */  beqz       $s1, .Llevel_24_8008B300
/* 5E06010 8008B2E0 D3000224 */   addiu     $v0, $zero, 0xD3
/* 5E06014 8008B2E4 D02C0208 */  j          .Llevel_24_8008B340
/* 5E06018 8008B2E8 20004426 */   addiu     $a0, $s2, 0x20
.Llevel_24_8008B2EC:
/* 5E0601C 8008B2EC 02000224 */  addiu      $v0, $zero, 0x2
/* 5E06020 8008B2F0 0D002212 */  beq        $s1, $v0, .Llevel_24_8008B328
/* 5E06024 8008B2F4 05000224 */   addiu     $v0, $zero, 0x5
/* 5E06028 8008B2F8 D02C0208 */  j          .Llevel_24_8008B340
/* 5E0602C 8008B2FC 20004426 */   addiu     $a0, $s2, 0x20
.Llevel_24_8008B300:
/* 5E06030 8008B300 1000A2AF */  sw         $v0, 0x10($sp)
/* 5E06034 8008B304 19000224 */  addiu      $v0, $zero, 0x19
/* 5E06038 8008B308 1400A2AF */  sw         $v0, 0x14($sp)
/* 5E0603C 8008B30C CE2C0208 */  j          .Llevel_24_8008B338
/* 5E06040 8008B310 81000224 */   addiu     $v0, $zero, 0x81
.Llevel_24_8008B314:
/* 5E06044 8008B314 BAFF0224 */  addiu      $v0, $zero, -0x46
/* 5E06048 8008B318 1400A2AF */  sw         $v0, 0x14($sp)
/* 5E0604C 8008B31C FA020224 */  addiu      $v0, $zero, 0x2FA
/* 5E06050 8008B320 CE2C0208 */  j          .Llevel_24_8008B338
/* 5E06054 8008B324 1000A0AF */   sw        $zero, 0x10($sp)
.Llevel_24_8008B328:
/* 5E06058 8008B328 1000A2AF */  sw         $v0, 0x10($sp)
/* 5E0605C 8008B32C 5CFF0224 */  addiu      $v0, $zero, -0xA4
/* 5E06060 8008B330 1400A2AF */  sw         $v0, 0x14($sp)
/* 5E06064 8008B334 14020224 */  addiu      $v0, $zero, 0x214
.Llevel_24_8008B338:
/* 5E06068 8008B338 1800A2AF */  sw         $v0, 0x18($sp)
/* 5E0606C 8008B33C 20004426 */  addiu      $a0, $s2, 0x20
.Llevel_24_8008B340:
/* 5E06070 8008B340 1000A527 */  addiu      $a1, $sp, 0x10
/* 5E06074 8008B344 5B3B010C */  jal        func_8004ED6C
/* 5E06078 8008B348 2130A000 */   addu      $a2, $a1, $zero
/* 5E0607C 8008B34C 0C000426 */  addiu      $a0, $s0, 0xC
/* 5E06080 8008B350 21288000 */  addu       $a1, $a0, $zero
/* 5E06084 8008B354 653C010C */  jal        func_8004F194
/* 5E06088 8008B358 1000A627 */   addiu     $a2, $sp, 0x10
.Llevel_24_8008B35C:
/* 5E0608C 8008B35C 01003126 */  addiu      $s1, $s1, 0x1
/* 5E06090 8008B360 0300222A */  slti       $v0, $s1, 0x3
/* 5E06094 8008B364 C0FF4014 */  bnez       $v0, .Llevel_24_8008B268
/* 5E06098 8008B368 00000000 */   nop
.Llevel_24_8008B36C:
/* 5E0609C 8008B36C C656010C */  jal        func_80055B18
/* 5E060A0 8008B370 21204002 */   addu      $a0, $s2, $zero
.Llevel_24_8008B374:
/* 5E060A4 8008B374 3000BF8F */  lw         $ra, 0x30($sp)
/* 5E060A8 8008B378 2C00B38F */  lw         $s3, 0x2C($sp)
/* 5E060AC 8008B37C 2800B28F */  lw         $s2, 0x28($sp)
/* 5E060B0 8008B380 2400B18F */  lw         $s1, 0x24($sp)
/* 5E060B4 8008B384 2000B08F */  lw         $s0, 0x20($sp)
/* 5E060B8 8008B388 3800BD27 */  addiu      $sp, $sp, 0x38
/* 5E060BC 8008B38C 0800E003 */  jr         $ra
/* 5E060C0 8008B390 00000000 */   nop
.size MobyUpdate_9_level_24, . - MobyUpdate_9_level_24
