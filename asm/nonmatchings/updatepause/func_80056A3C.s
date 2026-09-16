.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80056A3C
/* 4723C 80056A3C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 47240 80056A40 0780053C */  lui        $a1, %hi(D_8006FCE0)
/* 47244 80056A44 E0FCA58C */  lw         $a1, %lo(D_8006FCE0)($a1)
/* 47248 80056A48 0780043C */  lui        $a0, %hi(D_8006E470)
/* 4724C 80056A4C 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 47250 80056A50 00800234 */  ori        $v0, $zero, 0x8000
/* 47254 80056A54 1000B0AF */  sw         $s0, 0x10($sp)
/* 47258 80056A58 0780103C */  lui        $s0, %hi(D_8006DE74)
/* 4725C 80056A5C 74DE1026 */  addiu      $s0, $s0, %lo(D_8006DE74)
/* 47260 80056A60 1400BFAF */  sw         $ra, 0x14($sp)
/* 47264 80056A64 0000068E */  lw         $a2, 0x0($s0)
/* 47268 80056A68 0780073C */  lui        $a3, %hi(D_8006DE70)
/* 4726C 80056A6C 70DEE78C */  lw         $a3, %lo(D_8006DE70)($a3)
/* 47270 80056A70 A041010C */  jal        CDLoadAsync
/* 47274 80056A74 2128A200 */   addu      $a1, $a1, $v0
/* 47278 80056A78 0000028E */  lw         $v0, 0x0($s0)
/* 4727C 80056A7C 0780013C */  lui        $at, %hi(D_80070138)
/* 47280 80056A80 380122AC */  sw         $v0, %lo(D_80070138)($at)
/* 47284 80056A84 1400BF8F */  lw         $ra, 0x14($sp)
/* 47288 80056A88 1000B08F */  lw         $s0, 0x10($sp)
/* 4728C 80056A8C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 47290 80056A90 0800E003 */  jr         $ra
/* 47294 80056A94 00000000 */   nop
.size func_80056A3C, . - func_80056A3C
