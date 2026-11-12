.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_292_level_26
/* 623395C 80083C2C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 6233960 80083C30 1800B0AF */  sw         $s0, 0x18($sp)
/* 6233964 80083C34 21808000 */  addu       $s0, $a0, $zero
/* 6233968 80083C38 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 623396C 80083C3C 1800028E */  lw         $v0, 0x18($s0)
/* 6233970 80083C40 00000000 */  nop
/* 6233974 80083C44 13004010 */  beqz       $v0, .Llevel_26_80083C94
/* 6233978 80083C48 07000424 */   addiu     $a0, $zero, 0x7
/* 623397C 80083C4C 0000028E */  lw         $v0, 0x0($s0)
/* 6233980 80083C50 00020324 */  addiu      $v1, $zero, 0x200
/* 6233984 80083C54 1400A3AF */  sw         $v1, 0x14($sp)
/* 6233988 80083C58 0780033C */  lui        $v1, %hi(SpawnFragments)
/* 623398C 80083C5C 5C43638C */  lw         $v1, %lo(SpawnFragments)($v1)
/* 6233990 80083C60 26010524 */  addiu      $a1, $zero, 0x126
/* 6233994 80083C64 1000A0AF */  sw         $zero, 0x10($sp)
/* 6233998 80083C68 0000478C */  lw         $a3, 0x0($v0)
/* 623399C 80083C6C 09F86000 */  jalr       $v1
/* 62339A0 80083C70 21300002 */   addu      $a2, $s0, $zero
/* 62339A4 80083C74 21200002 */  addu       $a0, $s0, $zero
/* 62339A8 80083C78 21280000 */  addu       $a1, $zero, $zero
/* 62339AC 80083C7C C4EE000C */  jal        func_8003BB10
/* 62339B0 80083C80 21300000 */   addu      $a2, $zero, $zero
/* 62339B4 80083C84 80EE000C */  jal        func_8003BA00
/* 62339B8 80083C88 21200002 */   addu      $a0, $s0, $zero
/* 62339BC 80083C8C C656010C */  jal        func_80055B18
/* 62339C0 80083C90 21200002 */   addu      $a0, $s0, $zero
.Llevel_26_80083C94:
/* 62339C4 80083C94 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 62339C8 80083C98 1800B08F */  lw         $s0, 0x18($sp)
/* 62339CC 80083C9C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 62339D0 80083CA0 0800E003 */  jr         $ra
/* 62339D4 80083CA4 00000000 */   nop
.size MobyUpdate_292_level_26, . - MobyUpdate_292_level_26
