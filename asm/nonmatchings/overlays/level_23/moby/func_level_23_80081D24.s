.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_23_level_23
/* 5A9E254 80081D24 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 5A9E258 80081D28 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 5A9E25C 80081D2C 21888000 */  addu       $s1, $a0, $zero
/* 5A9E260 80081D30 3800B0AF */  sw         $s0, 0x38($sp)
/* 5A9E264 80081D34 21800000 */  addu       $s0, $zero, $zero
/* 5A9E268 80081D38 4800B4AF */  sw         $s4, 0x48($sp)
/* 5A9E26C 80081D3C 21A00000 */  addu       $s4, $zero, $zero
/* 5A9E270 80081D40 01000424 */  addiu      $a0, $zero, 0x1
/* 5A9E274 80081D44 21280000 */  addu       $a1, $zero, $zero
/* 5A9E278 80081D48 4000B2AF */  sw         $s2, 0x40($sp)
/* 5A9E27C 80081D4C 0C003226 */  addiu      $s2, $s1, 0xC
/* 5A9E280 80081D50 21304002 */  addu       $a2, $s2, $zero
/* 5A9E284 80081D54 1800A727 */  addiu      $a3, $sp, 0x18
/* 5A9E288 80081D58 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 5A9E28C 80081D5C 4400B3AF */  sw         $s3, 0x44($sp)
/* 5A9E290 80081D60 0000338E */  lw         $s3, 0x0($s1)
/* 5A9E294 80081D64 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 5A9E298 80081D68 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 5A9E29C 80081D6C 06000224 */  addiu      $v0, $zero, 0x6
/* 5A9E2A0 80081D70 1800A0AF */  sw         $zero, 0x18($sp)
/* 5A9E2A4 80081D74 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 5A9E2A8 80081D78 09F86000 */  jalr       $v1
/* 5A9E2AC 80081D7C 2000A2AF */   sw        $v0, 0x20($sp)
/* 5A9E2B0 80081D80 21206002 */  addu       $a0, $s3, $zero
/* 5A9E2B4 80081D84 69D6000C */  jal        func_800359A4
/* 5A9E2B8 80081D88 04000524 */   addiu     $a1, $zero, 0x4
/* 5A9E2BC 80081D8C 08004014 */  bnez       $v0, .Llevel_23_80081DB0
/* 5A9E2C0 80081D90 21204002 */   addu      $a0, $s2, $zero
/* 5A9E2C4 80081D94 C8000524 */  addiu      $a1, $zero, 0xC8
/* 5A9E2C8 80081D98 03000624 */  addiu      $a2, $zero, 0x3
/* 5A9E2CC 80081D9C C468000C */  jal        func_8001A310
/* 5A9E2D0 80081DA0 21382002 */   addu      $a3, $s1, $zero
/* 5A9E2D4 80081DA4 21804000 */  addu       $s0, $v0, $zero
/* 5A9E2D8 80081DA8 05000012 */  beqz       $s0, .Llevel_23_80081DC0
/* 5A9E2DC 80081DAC 21202002 */   addu      $a0, $s1, $zero
.Llevel_23_80081DB0:
/* 5A9E2E0 80081DB0 7B000012 */  beqz       $s0, .Llevel_23_80081FA0
/* 5A9E2E4 80081DB4 00000000 */   nop
/* 5A9E2E8 80081DB8 E8070208 */  j          .Llevel_23_80081FA0
/* 5A9E2EC 80081DBC 140030AE */   sw        $s0, 0x14($s1)
.Llevel_23_80081DC0:
/* 5A9E2F0 80081DC0 4957010C */  jal        func_80055D24
/* 5A9E2F4 80081DC4 04000524 */   addiu     $a1, $zero, 0x4
/* 5A9E2F8 80081DC8 2800A427 */  addiu      $a0, $sp, 0x28
/* 5A9E2FC 80081DCC 5E3C010C */  jal        func_8004F178
/* 5A9E300 80081DD0 21284002 */   addu      $a1, $s2, $zero
/* 5A9E304 80081DD4 48002392 */  lbu        $v1, 0x48($s1)
/* 5A9E308 80081DD8 01000224 */  addiu      $v0, $zero, 0x1
/* 5A9E30C 80081DDC 04006214 */  bne        $v1, $v0, .Llevel_23_80081DF0
/* 5A9E310 80081DE0 C8000224 */   addiu     $v0, $zero, 0xC8
/* 5A9E314 80081DE4 0800628E */  lw         $v0, 0x8($s3)
/* 5A9E318 80081DE8 7D070208 */  j          .Llevel_23_80081DF4
/* 5A9E31C 80081DEC 1800A2AF */   sw        $v0, 0x18($sp)
.Llevel_23_80081DF0:
/* 5A9E320 80081DF0 1800A2AF */  sw         $v0, 0x18($sp)
.Llevel_23_80081DF4:
/* 5A9E324 80081DF4 20002426 */  addiu      $a0, $s1, 0x20
/* 5A9E328 80081DF8 1800A527 */  addiu      $a1, $sp, 0x18
/* 5A9E32C 80081DFC 2130A000 */  addu       $a2, $a1, $zero
/* 5A9E330 80081E00 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 5A9E334 80081E04 5B3B010C */  jal        func_8004ED6C
/* 5A9E338 80081E08 2000A0AF */   sw        $zero, 0x20($sp)
/* 5A9E33C 80081E0C 0C003026 */  addiu      $s0, $s1, 0xC
/* 5A9E340 80081E10 21200002 */  addu       $a0, $s0, $zero
/* 5A9E344 80081E14 21280002 */  addu       $a1, $s0, $zero
/* 5A9E348 80081E18 653C010C */  jal        func_8004F194
/* 5A9E34C 80081E1C 1800A627 */   addiu     $a2, $sp, 0x18
/* 5A9E350 80081E20 48002392 */  lbu        $v1, 0x48($s1)
/* 5A9E354 80081E24 01000224 */  addiu      $v0, $zero, 0x1
/* 5A9E358 80081E28 0B006214 */  bne        $v1, $v0, .Llevel_23_80081E58
/* 5A9E35C 80081E2C 2800A427 */   addiu     $a0, $sp, 0x28
/* 5A9E360 80081E30 1400228E */  lw         $v0, 0x14($s1)
/* 5A9E364 80081E34 0400638E */  lw         $v1, 0x4($s3)
/* 5A9E368 80081E38 00000000 */  nop
/* 5A9E36C 80081E3C 23104300 */  subu       $v0, $v0, $v1
/* 5A9E370 80081E40 140022AE */  sw         $v0, 0x14($s1)
/* 5A9E374 80081E44 0400628E */  lw         $v0, 0x4($s3)
/* 5A9E378 80081E48 00000000 */  nop
/* 5A9E37C 80081E4C 10004224 */  addiu      $v0, $v0, 0x10
/* 5A9E380 80081E50 ED070208 */  j          .Llevel_23_80081FB4
/* 5A9E384 80081E54 040062AE */   sw        $v0, 0x4($s3)
.Llevel_23_80081E58:
/* 5A9E388 80081E58 1000A0AF */  sw         $zero, 0x10($sp)
/* 5A9E38C 80081E5C 21280002 */  addu       $a1, $s0, $zero
/* 5A9E390 80081E60 03000624 */  addiu      $a2, $zero, 0x3
/* 5A9E394 80081E64 C360000C */  jal        func_8001830C
/* 5A9E398 80081E68 21380000 */   addu      $a3, $zero, $zero
/* 5A9E39C 80081E6C 05004010 */  beqz       $v0, .Llevel_23_80081E84
/* 5A9E3A0 80081E70 21202002 */   addu      $a0, $s1, $zero
/* 5A9E3A4 80081E74 01000524 */  addiu      $a1, $zero, 0x1
/* 5A9E3A8 80081E78 AFEE000C */  jal        func_8003BABC
/* 5A9E3AC 80081E7C 21300000 */   addu      $a2, $zero, $zero
/* 5A9E3B0 80081E80 01001424 */  addiu      $s4, $zero, 0x1
.Llevel_23_80081E84:
/* 5A9E3B4 80081E84 0780033C */  lui        $v1, %hi(D_8006E044)
/* 5A9E3B8 80081E88 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 5A9E3BC 80081E8C 09000224 */  addiu      $v0, $zero, 0x9
/* 5A9E3C0 80081E90 16006210 */  beq        $v1, $v0, .Llevel_23_80081EEC
/* 5A9E3C4 80081E94 0B000224 */   addiu     $v0, $zero, 0xB
/* 5A9E3C8 80081E98 15006210 */  beq        $v1, $v0, .Llevel_23_80081EF0
/* 5A9E3CC 80081E9C 0C002426 */   addiu     $a0, $s1, 0xC
/* 5A9E3D0 80081EA0 0780023C */  lui        $v0, %hi(D_80070328 + 0x240)
/* 5A9E3D4 80081EA4 6805428C */  lw         $v0, %lo(D_80070328 + 0x240)($v0)
/* 5A9E3D8 80081EA8 00000000 */  nop
/* 5A9E3DC 80081EAC 11004014 */  bnez       $v0, .Llevel_23_80081EF4
/* 5A9E3E0 80081EB0 00010524 */   addiu     $a1, $zero, 0x100
/* 5A9E3E4 80081EB4 21200002 */  addu       $a0, $s0, $zero
/* 5A9E3E8 80081EB8 80000524 */  addiu      $a1, $zero, 0x80
/* 5A9E3EC 80081EBC A270000C */  jal        func_8001C288
/* 5A9E3F0 80081EC0 07000624 */   addiu     $a2, $zero, 0x7
/* 5A9E3F4 80081EC4 09004010 */  beqz       $v0, .Llevel_23_80081EEC
/* 5A9E3F8 80081EC8 21202002 */   addu      $a0, $s1, $zero
/* 5A9E3FC 80081ECC 21280000 */  addu       $a1, $zero, $zero
/* 5A9E400 80081ED0 AFEE000C */  jal        func_8003BABC
/* 5A9E404 80081ED4 21300000 */   addu      $a2, $zero, $zero
/* 5A9E408 80081ED8 46002292 */  lbu        $v0, 0x46($s1)
/* 5A9E40C 80081EDC 0780013C */  lui        $at, %hi(D_80070328 + 0x298)
/* 5A9E410 80081EE0 C00522AC */  sw         $v0, %lo(D_80070328 + 0x298)($at)
/* 5A9E414 80081EE4 E6070208 */  j          .Llevel_23_80081F98
/* 5A9E418 80081EE8 01001424 */   addiu     $s4, $zero, 0x1
.Llevel_23_80081EEC:
/* 5A9E41C 80081EEC 0C002426 */  addiu      $a0, $s1, 0xC
.Llevel_23_80081EF0:
/* 5A9E420 80081EF0 00010524 */  addiu      $a1, $zero, 0x100
.Llevel_23_80081EF4:
/* 5A9E424 80081EF4 02000624 */  addiu      $a2, $zero, 0x2
/* 5A9E428 80081EF8 1000A0AF */  sw         $zero, 0x10($sp)
/* 5A9E42C 80081EFC 3A002292 */  lbu        $v0, 0x3A($s1)
/* 5A9E430 80081F00 21380000 */  addu       $a3, $zero, $zero
/* 5A9E434 80081F04 40180200 */  sll        $v1, $v0, 1
/* 5A9E438 80081F08 21186200 */  addu       $v1, $v1, $v0
/* 5A9E43C 80081F0C 80180300 */  sll        $v1, $v1, 2
/* 5A9E440 80081F10 23186200 */  subu       $v1, $v1, $v0
/* 5A9E444 80081F14 0780023C */  lui        $v0, %hi(D_8006C550)
/* 5A9E448 80081F18 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 5A9E44C 80081F1C C0180300 */  sll        $v1, $v1, 3
/* 5A9E450 80081F20 21104300 */  addu       $v0, $v0, $v1
/* 5A9E454 80081F24 8C6E000C */  jal        func_8001BA30
/* 5A9E458 80081F28 1400A2AF */   sw        $v0, 0x14($sp)
/* 5A9E45C 80081F2C 21804000 */  addu       $s0, $v0, $zero
/* 5A9E460 80081F30 19000012 */  beqz       $s0, .Llevel_23_80081F98
/* 5A9E464 80081F34 21202002 */   addu      $a0, $s1, $zero
/* 5A9E468 80081F38 21280000 */  addu       $a1, $zero, $zero
/* 5A9E46C 80081F3C AFEE000C */  jal        func_8003BABC
/* 5A9E470 80081F40 21300000 */   addu      $a2, $zero, $zero
/* 5A9E474 80081F44 36000386 */  lh         $v1, 0x36($s0)
/* 5A9E478 80081F48 1A000224 */  addiu      $v0, $zero, 0x1A
/* 5A9E47C 80081F4C 0D006214 */  bne        $v1, $v0, .Llevel_23_80081F84
/* 5A9E480 80081F50 00000000 */   nop
/* 5A9E484 80081F54 48000292 */  lbu        $v0, 0x48($s0)
/* 5A9E488 80081F58 00000000 */  nop
/* 5A9E48C 80081F5C 1900422C */  sltiu      $v0, $v0, 0x19
/* 5A9E490 80081F60 09004014 */  bnez       $v0, .Llevel_23_80081F88
/* 5A9E494 80081F64 01001424 */   addiu     $s4, $zero, 0x1
/* 5A9E498 80081F68 21200002 */  addu       $a0, $s0, $zero
/* 5A9E49C 80081F6C D0D3000C */  jal        func_80034F40
/* 5A9E4A0 80081F70 04000524 */   addiu     $a1, $zero, 0x4
/* 5A9E4A4 80081F74 04000224 */  addiu      $v0, $zero, 0x4
/* 5A9E4A8 80081F78 480002A2 */  sb         $v0, 0x48($s0)
/* 5A9E4AC 80081F7C E6070208 */  j          .Llevel_23_80081F98
/* 5A9E4B0 80081F80 01001424 */   addiu     $s4, $zero, 0x1
.Llevel_23_80081F84:
/* 5A9E4B4 80081F84 01001424 */  addiu      $s4, $zero, 0x1
.Llevel_23_80081F88:
/* 5A9E4B8 80081F88 1800028E */  lw         $v0, 0x18($s0)
/* 5A9E4BC 80081F8C 0310033C */  lui        $v1, (0x10030000 >> 16)
/* 5A9E4C0 80081F90 25104300 */  or         $v0, $v0, $v1
/* 5A9E4C4 80081F94 180002AE */  sw         $v0, 0x18($s0)
.Llevel_23_80081F98:
/* 5A9E4C8 80081F98 06008012 */  beqz       $s4, .Llevel_23_80081FB4
/* 5A9E4CC 80081F9C 00000000 */   nop
.Llevel_23_80081FA0:
/* 5A9E4D0 80081FA0 21202002 */  addu       $a0, $s1, $zero
/* 5A9E4D4 80081FA4 6EDA000C */  jal        func_800369B8
/* 5A9E4D8 80081FA8 19000524 */   addiu     $a1, $zero, 0x19
/* 5A9E4DC 80081FAC C656010C */  jal        func_80055B18
/* 5A9E4E0 80081FB0 21202002 */   addu      $a0, $s1, $zero
.Llevel_23_80081FB4:
/* 5A9E4E4 80081FB4 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 5A9E4E8 80081FB8 4800B48F */  lw         $s4, 0x48($sp)
/* 5A9E4EC 80081FBC 4400B38F */  lw         $s3, 0x44($sp)
/* 5A9E4F0 80081FC0 4000B28F */  lw         $s2, 0x40($sp)
/* 5A9E4F4 80081FC4 3C00B18F */  lw         $s1, 0x3C($sp)
/* 5A9E4F8 80081FC8 3800B08F */  lw         $s0, 0x38($sp)
/* 5A9E4FC 80081FCC 5000BD27 */  addiu      $sp, $sp, 0x50
/* 5A9E500 80081FD0 0800E003 */  jr         $ra
/* 5A9E504 80081FD4 00000000 */   nop
.size MobyUpdate_23_level_23, . - MobyUpdate_23_level_23
