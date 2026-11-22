.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_191_level_46
/* 8F542BC 80081D8C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 8F542C0 80081D90 2400B1AF */  sw         $s1, 0x24($sp)
/* 8F542C4 80081D94 21888000 */  addu       $s1, $a0, $zero
/* 8F542C8 80081D98 32000224 */  addiu      $v0, $zero, 0x32
/* 8F542CC 80081D9C 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 8F542D0 80081DA0 2800B2AF */  sw         $s2, 0x28($sp)
/* 8F542D4 80081DA4 2000B0AF */  sw         $s0, 0x20($sp)
/* 8F542D8 80081DA8 48002392 */  lbu        $v1, 0x48($s1)
/* 8F542DC 80081DAC 0000308E */  lw         $s0, 0x0($s1)
/* 8F542E0 80081DB0 05006214 */  bne        $v1, $v0, .Llevel_46_80081DC8
/* 8F542E4 80081DB4 00000000 */   nop
/* 8F542E8 80081DB8 C656010C */  jal        func_80055B18
/* 8F542EC 80081DBC 00000000 */   nop
/* 8F542F0 80081DC0 AB070208 */  j          .Llevel_46_80081EAC
/* 8F542F4 80081DC4 00000000 */   nop
.Llevel_46_80081DC8:
/* 8F542F8 80081DC8 12006014 */  bnez       $v1, .Llevel_46_80081E14
/* 8F542FC 80081DCC 21200000 */   addu      $a0, $zero, $zero
/* 8F54300 80081DD0 96000424 */  addiu      $a0, $zero, 0x96
/* 8F54304 80081DD4 DBD8000C */  jal        func_8003636C
/* 8F54308 80081DD8 2C010524 */   addiu     $a1, $zero, 0x12C
/* 8F5430C 80081DDC 21200000 */  addu       $a0, $zero, $zero
/* 8F54310 80081DE0 2C010524 */  addiu      $a1, $zero, 0x12C
/* 8F54314 80081DE4 DBD8000C */  jal        func_8003636C
/* 8F54318 80081DE8 040002A6 */   sh        $v0, 0x4($s0)
/* 8F5431C 80081DEC 21200000 */  addu       $a0, $zero, $zero
/* 8F54320 80081DF0 2C010524 */  addiu      $a1, $zero, 0x12C
/* 8F54324 80081DF4 6AFF4224 */  addiu      $v0, $v0, -0x96
/* 8F54328 80081DF8 DBD8000C */  jal        func_8003636C
/* 8F5432C 80081DFC 000002A6 */   sh        $v0, 0x0($s0)
/* 8F54330 80081E00 6AFF4224 */  addiu      $v0, $v0, -0x96
/* 8F54334 80081E04 020002A6 */  sh         $v0, 0x2($s0)
/* 8F54338 80081E08 01000224 */  addiu      $v0, $zero, 0x1
/* 8F5433C 80081E0C 480022A2 */  sb         $v0, 0x48($s1)
/* 8F54340 80081E10 21200000 */  addu       $a0, $zero, $zero
.Llevel_46_80081E14:
/* 8F54344 80081E14 DBD8000C */  jal        func_8003636C
/* 8F54348 80081E18 A0000524 */   addiu     $a1, $zero, 0xA0
/* 8F5434C 80081E1C 21200000 */  addu       $a0, $zero, $zero
/* 8F54350 80081E20 A0000524 */  addiu      $a1, $zero, 0xA0
/* 8F54354 80081E24 B0FF4224 */  addiu      $v0, $v0, -0x50
/* 8F54358 80081E28 DBD8000C */  jal        func_8003636C
/* 8F5435C 80081E2C 1000A2AF */   sw        $v0, 0x10($sp)
/* 8F54360 80081E30 21200000 */  addu       $a0, $zero, $zero
/* 8F54364 80081E34 64000524 */  addiu      $a1, $zero, 0x64
/* 8F54368 80081E38 B0FF4224 */  addiu      $v0, $v0, -0x50
/* 8F5436C 80081E3C DBD8000C */  jal        func_8003636C
/* 8F54370 80081E40 1400A2AF */   sw        $v0, 0x14($sp)
/* 8F54374 80081E44 01000424 */  addiu      $a0, $zero, 0x1
/* 8F54378 80081E48 21280000 */  addu       $a1, $zero, $zero
/* 8F5437C 80081E4C 0C003226 */  addiu      $s2, $s1, 0xC
/* 8F54380 80081E50 21304002 */  addu       $a2, $s2, $zero
/* 8F54384 80081E54 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 8F54388 80081E58 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 8F5438C 80081E5C 1000A727 */  addiu      $a3, $sp, 0x10
/* 8F54390 80081E60 09F86000 */  jalr       $v1
/* 8F54394 80081E64 1800A2AF */   sw        $v0, 0x18($sp)
/* 8F54398 80081E68 21804000 */  addu       $s0, $v0, $zero
/* 8F5439C 80081E6C 04000012 */  beqz       $s0, .Llevel_46_80081E80
/* 8F543A0 80081E70 78000424 */   addiu     $a0, $zero, 0x78
/* 8F543A4 80081E74 DBD8000C */  jal        func_8003636C
/* 8F543A8 80081E78 AA000524 */   addiu     $a1, $zero, 0xAA
/* 8F543AC 80081E7C 0A0002A2 */  sb         $v0, 0xA($s0)
.Llevel_46_80081E80:
/* 8F543B0 80081E80 C5E5000C */  jal        func_80039714
/* 8F543B4 80081E84 21202002 */   addu      $a0, $s1, $zero
/* 8F543B8 80081E88 08004010 */  beqz       $v0, .Llevel_46_80081EAC
/* 8F543BC 80081E8C 10000424 */   addiu     $a0, $zero, 0x10
/* 8F543C0 80081E90 46000524 */  addiu      $a1, $zero, 0x46
/* 8F543C4 80081E94 21304002 */  addu       $a2, $s2, $zero
/* 8F543C8 80081E98 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8F543CC 80081E9C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8F543D0 80081EA0 00000000 */  nop
/* 8F543D4 80081EA4 09F84000 */  jalr       $v0
/* 8F543D8 80081EA8 20000724 */   addiu     $a3, $zero, 0x20
.Llevel_46_80081EAC:
/* 8F543DC 80081EAC 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 8F543E0 80081EB0 2800B28F */  lw         $s2, 0x28($sp)
/* 8F543E4 80081EB4 2400B18F */  lw         $s1, 0x24($sp)
/* 8F543E8 80081EB8 2000B08F */  lw         $s0, 0x20($sp)
/* 8F543EC 80081EBC 3000BD27 */  addiu      $sp, $sp, 0x30
/* 8F543F0 80081EC0 0800E003 */  jr         $ra
/* 8F543F4 80081EC4 00000000 */   nop
.size MobyUpdate_191_level_46, . - MobyUpdate_191_level_46
