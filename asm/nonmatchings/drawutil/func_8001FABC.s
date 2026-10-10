.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001FABC
/* 102BC 8001FABC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 102C0 8001FAC0 21388000 */  addu       $a3, $a0, $zero
/* 102C4 8001FAC4 01000524 */  addiu      $a1, $zero, 0x1
/* 102C8 8001FAC8 1800B0AF */  sw         $s0, 0x18($sp)
/* 102CC 8001FACC 0780103C */  lui        $s0, %hi(D_8006C664)
/* 102D0 8001FAD0 64C6108E */  lw         $s0, %lo(D_8006C664)($s0)
/* 102D4 8001FAD4 21300000 */  addu       $a2, $zero, $zero
/* 102D8 8001FAD8 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 102DC 8001FADC 1000A0AF */  sw         $zero, 0x10($sp)
/* 102E0 8001FAE0 5971010C */  jal        SetDrawMode
/* 102E4 8001FAE4 21200002 */   addu      $a0, $s0, $zero
/* 102E8 8001FAE8 D639010C */  jal        func_8004E758
/* 102EC 8001FAEC 21200002 */   addu      $a0, $s0, $zero
/* 102F0 8001FAF0 0C001026 */  addiu      $s0, $s0, 0xC
/* 102F4 8001FAF4 0780013C */  lui        $at, %hi(D_8006C664)
/* 102F8 8001FAF8 64C630AC */  sw         $s0, %lo(D_8006C664)($at)
/* 102FC 8001FAFC 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 10300 8001FB00 1800B08F */  lw         $s0, 0x18($sp)
/* 10304 8001FB04 2000BD27 */  addiu      $sp, $sp, 0x20
/* 10308 8001FB08 0800E003 */  jr         $ra
/* 1030C 8001FB0C 00000000 */   nop
.size func_8001FABC, . - func_8001FABC
