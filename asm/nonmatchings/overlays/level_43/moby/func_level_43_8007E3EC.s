.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_423_level_43
/* 87A391C 8007E3EC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 87A3920 8007E3F0 1000B0AF */  sw         $s0, 0x10($sp)
/* 87A3924 8007E3F4 21808000 */  addu       $s0, $a0, $zero
/* 87A3928 8007E3F8 1400BFAF */  sw         $ra, 0x14($sp)
/* 87A392C 8007E3FC 48000392 */  lbu        $v1, 0x48($s0)
/* 87A3930 8007E400 32000224 */  addiu      $v0, $zero, 0x32
/* 87A3934 8007E404 12006210 */  beq        $v1, $v0, .Llevel_43_8007E450
/* 87A3938 8007E408 00000000 */   nop
/* 87A393C 8007E40C C5E5000C */  jal        func_80039714
/* 87A3940 8007E410 21200002 */   addu      $a0, $s0, $zero
/* 87A3944 8007E414 10004010 */  beqz       $v0, .Llevel_43_8007E458
/* 87A3948 8007E418 21200002 */   addu      $a0, $s0, $zero
/* 87A394C 8007E41C 4957010C */  jal        func_80055D24
/* 87A3950 8007E420 04000524 */   addiu     $a1, $zero, 0x4
/* 87A3954 8007E424 21200002 */  addu       $a0, $s0, $zero
/* 87A3958 8007E428 6EDA000C */  jal        func_800369B8
/* 87A395C 8007E42C 20000524 */   addiu     $a1, $zero, 0x20
/* 87A3960 8007E430 08000424 */  addiu      $a0, $zero, 0x8
/* 87A3964 8007E434 46000524 */  addiu      $a1, $zero, 0x46
/* 87A3968 8007E438 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 87A396C 8007E43C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 87A3970 8007E440 0C000626 */  addiu      $a2, $s0, 0xC
/* 87A3974 8007E444 09F84000 */  jalr       $v0
/* 87A3978 8007E448 10000724 */   addiu     $a3, $zero, 0x10
/* 87A397C 8007E44C 21200002 */  addu       $a0, $s0, $zero
.Llevel_43_8007E450:
/* 87A3980 8007E450 C656010C */  jal        func_80055B18
/* 87A3984 8007E454 00000000 */   nop
.Llevel_43_8007E458:
/* 87A3988 8007E458 1400BF8F */  lw         $ra, 0x14($sp)
/* 87A398C 8007E45C 1000B08F */  lw         $s0, 0x10($sp)
/* 87A3990 8007E460 1800BD27 */  addiu      $sp, $sp, 0x18
/* 87A3994 8007E464 0800E003 */  jr         $ra
/* 87A3998 8007E468 00000000 */   nop
.size MobyUpdate_423_level_43, . - MobyUpdate_423_level_43
