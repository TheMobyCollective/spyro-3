.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800569C0
/* 471C0 800569C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 471C4 800569C4 0780023C */  lui        $v0, %hi(D_8006C76C)
/* 471C8 800569C8 6CC7428C */  lw         $v0, %lo(D_8006C76C)($v0)
/* 471CC 800569CC 0780053C */  lui        $a1, %hi(D_8006FCE0)
/* 471D0 800569D0 E0FCA58C */  lw         $a1, %lo(D_8006FCE0)($a1)
/* 471D4 800569D4 0780043C */  lui        $a0, %hi(D_8006E470)
/* 471D8 800569D8 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 471DC 800569DC 00800334 */  ori        $v1, $zero, 0x8000
/* 471E0 800569E0 1000BFAF */  sw         $ra, 0x10($sp)
/* 471E4 800569E4 C0100200 */  sll        $v0, $v0, 3
/* 471E8 800569E8 0780013C */  lui        $at, %hi(D_8006DE6C)
/* 471EC 800569EC 21082200 */  addu       $at, $at, $v0
/* 471F0 800569F0 6CDE268C */  lw         $a2, %lo(D_8006DE6C)($at)
/* 471F4 800569F4 0780013C */  lui        $at, %hi(D_8006DE68)
/* 471F8 800569F8 21082200 */  addu       $at, $at, $v0
/* 471FC 800569FC 68DE278C */  lw         $a3, %lo(D_8006DE68)($at)
/* 47200 80056A00 A041010C */  jal        CDLoadAsync
/* 47204 80056A04 2128A300 */   addu      $a1, $a1, $v1
/* 47208 80056A08 0780023C */  lui        $v0, %hi(D_8006C76C)
/* 4720C 80056A0C 6CC7428C */  lw         $v0, %lo(D_8006C76C)($v0)
/* 47210 80056A10 00000000 */  nop
/* 47214 80056A14 C0100200 */  sll        $v0, $v0, 3
/* 47218 80056A18 0780013C */  lui        $at, %hi(D_8006DE6C)
/* 4721C 80056A1C 21082200 */  addu       $at, $at, $v0
/* 47220 80056A20 6CDE228C */  lw         $v0, %lo(D_8006DE6C)($at)
/* 47224 80056A24 0780013C */  lui        $at, %hi(D_80070138)
/* 47228 80056A28 380122AC */  sw         $v0, %lo(D_80070138)($at)
/* 4722C 80056A2C 1000BF8F */  lw         $ra, 0x10($sp)
/* 47230 80056A30 1800BD27 */  addiu      $sp, $sp, 0x18
/* 47234 80056A34 0800E003 */  jr         $ra
/* 47238 80056A38 00000000 */   nop
.size func_800569C0, . - func_800569C0
