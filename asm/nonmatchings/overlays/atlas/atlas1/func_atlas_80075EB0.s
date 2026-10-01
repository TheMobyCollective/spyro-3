.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_atlas_80075EB0
/* 962E3E0 80075EB0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 962E3E4 80075EB4 1000B0AF */  sw         $s0, 0x10($sp)
/* 962E3E8 80075EB8 21808000 */  addu       $s0, $a0, $zero
/* 962E3EC 80075EBC 003C1000 */  sll        $a3, $s0, 16
/* 962E3F0 80075EC0 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 962E3F4 80075EC4 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 962E3F8 80075EC8 0780033C */  lui        $v1, %hi(D_80072098)
/* 962E3FC 80075ECC 9820638C */  lw         $v1, %lo(D_80072098)($v1)
/* 962E400 80075ED0 0780043C */  lui        $a0, %hi(D_8006E470)
/* 962E404 80075ED4 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 962E408 80075ED8 0100063C */  lui        $a2, (0x10000 >> 16)
/* 962E40C 80075EDC 1400BFAF */  sw         $ra, 0x14($sp)
/* 962E410 80075EE0 00110200 */  sll        $v0, $v0, 4
/* 962E414 80075EE4 0780013C */  lui        $at, %hi(D_8006DBE0)
/* 962E418 80075EE8 21082200 */  addu       $at, $at, $v0
/* 962E41C 80075EEC E0DB228C */  lw         $v0, %lo(D_8006DBE0)($at)
/* 962E420 80075EF0 0780053C */  lui        $a1, %hi(D_80070140)
/* 962E424 80075EF4 4001A58C */  lw         $a1, %lo(D_80070140)($a1)
/* 962E428 80075EF8 21186200 */  addu       $v1, $v1, $v0
/* 962E42C 80075EFC 0200023C */  lui        $v0, (0x20000 >> 16)
/* 962E430 80075F00 2138E200 */  addu       $a3, $a3, $v0
/* 962E434 80075F04 A041010C */  jal        CDLoadAsync
/* 962E438 80075F08 21386700 */   addu      $a3, $v1, $a3
/* 962E43C 80075F0C 01001026 */  addiu      $s0, $s0, 0x1
/* 962E440 80075F10 0880013C */  lui        $at, %hi(D_atlas_8007AE04)
/* 962E444 80075F14 04AE30A4 */  sh         $s0, %lo(D_atlas_8007AE04)($at)
/* 962E448 80075F18 1400BF8F */  lw         $ra, 0x14($sp)
/* 962E44C 80075F1C 1000B08F */  lw         $s0, 0x10($sp)
/* 962E450 80075F20 1800BD27 */  addiu      $sp, $sp, 0x18
/* 962E454 80075F24 0800E003 */  jr         $ra
/* 962E458 80075F28 00000000 */   nop
.size func_atlas_80075EB0, . - func_atlas_80075EB0
