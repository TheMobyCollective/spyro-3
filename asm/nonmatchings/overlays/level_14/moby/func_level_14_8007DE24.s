.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_191_level_14
/* 47BD354 8007DE24 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 47BD358 8007DE28 2400B1AF */  sw         $s1, 0x24($sp)
/* 47BD35C 8007DE2C 21888000 */  addu       $s1, $a0, $zero
/* 47BD360 8007DE30 32000224 */  addiu      $v0, $zero, 0x32
/* 47BD364 8007DE34 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 47BD368 8007DE38 2800B2AF */  sw         $s2, 0x28($sp)
/* 47BD36C 8007DE3C 2000B0AF */  sw         $s0, 0x20($sp)
/* 47BD370 8007DE40 48002392 */  lbu        $v1, 0x48($s1)
/* 47BD374 8007DE44 0000308E */  lw         $s0, 0x0($s1)
/* 47BD378 8007DE48 05006214 */  bne        $v1, $v0, .Llevel_14_8007DE60
/* 47BD37C 8007DE4C 00000000 */   nop
/* 47BD380 8007DE50 C656010C */  jal        func_80055B18
/* 47BD384 8007DE54 00000000 */   nop
/* 47BD388 8007DE58 D1F70108 */  j          .Llevel_14_8007DF44
/* 47BD38C 8007DE5C 00000000 */   nop
.Llevel_14_8007DE60:
/* 47BD390 8007DE60 12006014 */  bnez       $v1, .Llevel_14_8007DEAC
/* 47BD394 8007DE64 21200000 */   addu      $a0, $zero, $zero
/* 47BD398 8007DE68 96000424 */  addiu      $a0, $zero, 0x96
/* 47BD39C 8007DE6C DBD8000C */  jal        func_8003636C
/* 47BD3A0 8007DE70 2C010524 */   addiu     $a1, $zero, 0x12C
/* 47BD3A4 8007DE74 21200000 */  addu       $a0, $zero, $zero
/* 47BD3A8 8007DE78 2C010524 */  addiu      $a1, $zero, 0x12C
/* 47BD3AC 8007DE7C DBD8000C */  jal        func_8003636C
/* 47BD3B0 8007DE80 040002A6 */   sh        $v0, 0x4($s0)
/* 47BD3B4 8007DE84 21200000 */  addu       $a0, $zero, $zero
/* 47BD3B8 8007DE88 2C010524 */  addiu      $a1, $zero, 0x12C
/* 47BD3BC 8007DE8C 6AFF4224 */  addiu      $v0, $v0, -0x96
/* 47BD3C0 8007DE90 DBD8000C */  jal        func_8003636C
/* 47BD3C4 8007DE94 000002A6 */   sh        $v0, 0x0($s0)
/* 47BD3C8 8007DE98 6AFF4224 */  addiu      $v0, $v0, -0x96
/* 47BD3CC 8007DE9C 020002A6 */  sh         $v0, 0x2($s0)
/* 47BD3D0 8007DEA0 01000224 */  addiu      $v0, $zero, 0x1
/* 47BD3D4 8007DEA4 480022A2 */  sb         $v0, 0x48($s1)
/* 47BD3D8 8007DEA8 21200000 */  addu       $a0, $zero, $zero
.Llevel_14_8007DEAC:
/* 47BD3DC 8007DEAC DBD8000C */  jal        func_8003636C
/* 47BD3E0 8007DEB0 A0000524 */   addiu     $a1, $zero, 0xA0
/* 47BD3E4 8007DEB4 21200000 */  addu       $a0, $zero, $zero
/* 47BD3E8 8007DEB8 A0000524 */  addiu      $a1, $zero, 0xA0
/* 47BD3EC 8007DEBC B0FF4224 */  addiu      $v0, $v0, -0x50
/* 47BD3F0 8007DEC0 DBD8000C */  jal        func_8003636C
/* 47BD3F4 8007DEC4 1000A2AF */   sw        $v0, 0x10($sp)
/* 47BD3F8 8007DEC8 21200000 */  addu       $a0, $zero, $zero
/* 47BD3FC 8007DECC 64000524 */  addiu      $a1, $zero, 0x64
/* 47BD400 8007DED0 B0FF4224 */  addiu      $v0, $v0, -0x50
/* 47BD404 8007DED4 DBD8000C */  jal        func_8003636C
/* 47BD408 8007DED8 1400A2AF */   sw        $v0, 0x14($sp)
/* 47BD40C 8007DEDC 01000424 */  addiu      $a0, $zero, 0x1
/* 47BD410 8007DEE0 21280000 */  addu       $a1, $zero, $zero
/* 47BD414 8007DEE4 0C003226 */  addiu      $s2, $s1, 0xC
/* 47BD418 8007DEE8 21304002 */  addu       $a2, $s2, $zero
/* 47BD41C 8007DEEC 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 47BD420 8007DEF0 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 47BD424 8007DEF4 1000A727 */  addiu      $a3, $sp, 0x10
/* 47BD428 8007DEF8 09F86000 */  jalr       $v1
/* 47BD42C 8007DEFC 1800A2AF */   sw        $v0, 0x18($sp)
/* 47BD430 8007DF00 21804000 */  addu       $s0, $v0, $zero
/* 47BD434 8007DF04 04000012 */  beqz       $s0, .Llevel_14_8007DF18
/* 47BD438 8007DF08 78000424 */   addiu     $a0, $zero, 0x78
/* 47BD43C 8007DF0C DBD8000C */  jal        func_8003636C
/* 47BD440 8007DF10 AA000524 */   addiu     $a1, $zero, 0xAA
/* 47BD444 8007DF14 0A0002A2 */  sb         $v0, 0xA($s0)
.Llevel_14_8007DF18:
/* 47BD448 8007DF18 C5E5000C */  jal        func_80039714
/* 47BD44C 8007DF1C 21202002 */   addu      $a0, $s1, $zero
/* 47BD450 8007DF20 08004010 */  beqz       $v0, .Llevel_14_8007DF44
/* 47BD454 8007DF24 10000424 */   addiu     $a0, $zero, 0x10
/* 47BD458 8007DF28 46000524 */  addiu      $a1, $zero, 0x46
/* 47BD45C 8007DF2C 21304002 */  addu       $a2, $s2, $zero
/* 47BD460 8007DF30 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 47BD464 8007DF34 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 47BD468 8007DF38 00000000 */  nop
/* 47BD46C 8007DF3C 09F84000 */  jalr       $v0
/* 47BD470 8007DF40 20000724 */   addiu     $a3, $zero, 0x20
.Llevel_14_8007DF44:
/* 47BD474 8007DF44 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 47BD478 8007DF48 2800B28F */  lw         $s2, 0x28($sp)
/* 47BD47C 8007DF4C 2400B18F */  lw         $s1, 0x24($sp)
/* 47BD480 8007DF50 2000B08F */  lw         $s0, 0x20($sp)
/* 47BD484 8007DF54 3000BD27 */  addiu      $sp, $sp, 0x30
/* 47BD488 8007DF58 0800E003 */  jr         $ra
/* 47BD48C 8007DF5C 00000000 */   nop
.size MobyUpdate_191_level_14, . - MobyUpdate_191_level_14
