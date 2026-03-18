.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001FB10
/* 10310 8001FB10 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 10314 8001FB14 1000B0AF */  sw         $s0, 0x10($sp)
/* 10318 8001FB18 21808000 */  addu       $s0, $a0, $zero
/* 1031C 8001FB1C 1400BFAF */  sw         $ra, 0x14($sp)
/* 10320 8001FB20 9968010C */  jal        DrawSync
/* 10324 8001FB24 21200000 */   addu      $a0, $zero, $zero
/* 10328 8001FB28 0780023C */  lui        $v0, %hi(D_800722D8)
/* 1032C 8001FB2C D822428C */  lw         $v0, %lo(D_800722D8)($v0)
/* 10330 8001FB30 0780013C */  lui        $at, %hi(D_8006C7DC)
/* 10334 8001FB34 DCC730AC */  sw         $s0, %lo(D_8006C7DC)($at)
/* 10338 8001FB38 23105000 */  subu       $v0, $v0, $s0
/* 1033C 8001FB3C 23805000 */  subu       $s0, $v0, $s0
/* 10340 8001FB40 0780013C */  lui        $at, %hi(D_800722D4)
/* 10344 8001FB44 D42222AC */  sw         $v0, %lo(D_800722D4)($at)
/* 10348 8001FB48 0780013C */  lui        $at, %hi(D_800722D0)
/* 1034C 8001FB4C D02230AC */  sw         $s0, %lo(D_800722D0)($at)
/* 10350 8001FB50 0780013C */  lui        $at, %hi(D_8006FC6C)
/* 10354 8001FB54 6CFC30AC */  sw         $s0, %lo(D_8006FC6C)($at)
/* 10358 8001FB58 0780013C */  lui        $at, %hi(D_8006FCE0)
/* 1035C 8001FB5C E0FC22AC */  sw         $v0, %lo(D_8006FCE0)($at)
/* 10360 8001FB60 1400BF8F */  lw         $ra, 0x14($sp)
/* 10364 8001FB64 1000B08F */  lw         $s0, 0x10($sp)
/* 10368 8001FB68 1800BD27 */  addiu      $sp, $sp, 0x18
/* 1036C 8001FB6C 0800E003 */  jr         $ra
/* 10370 8001FB70 00000000 */   nop
.size func_8001FB10, . - func_8001FB10
