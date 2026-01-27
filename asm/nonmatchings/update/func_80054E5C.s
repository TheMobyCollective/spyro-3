.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054E5C
/* 4565C 80054E5C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 45660 80054E60 0100043C */  lui        $a0, (0x1C000 >> 16)
/* 45664 80054E64 0B000224 */  addiu      $v0, $zero, 0xB
/* 45668 80054E68 1800BFAF */  sw         $ra, 0x18($sp)
/* 4566C 80054E6C 1400B1AF */  sw         $s1, 0x14($sp)
/* 45670 80054E70 1000B0AF */  sw         $s0, 0x10($sp)
/* 45674 80054E74 0780013C */  lui        $at, %hi(D_8006E344)
/* 45678 80054E78 44E322AC */  sw         $v0, %lo(D_8006E344)($at)
/* 4567C 80054E7C 0780013C */  lui        $at, %hi(D_8006C658)
/* 45680 80054E80 58C620AC */  sw         $zero, %lo(D_8006C658)($at)
/* 45684 80054E84 0780013C */  lui        $at, %hi(D_8006C7E4)
/* 45688 80054E88 E4C720AC */  sw         $zero, %lo(D_8006C7E4)($at)
/* 4568C 80054E8C 0780013C */  lui        $at, %hi(D_8006C678)
/* 45690 80054E90 78C620AC */  sw         $zero, %lo(D_8006C678)($at)
/* 45694 80054E94 0780013C */  lui        $at, %hi(D_8006C74C)
/* 45698 80054E98 4CC720AC */  sw         $zero, %lo(D_8006C74C)($at)
/* 4569C 80054E9C 0780013C */  lui        $at, %hi(D_8006C64C)
/* 456A0 80054EA0 4CC620AC */  sw         $zero, %lo(D_8006C64C)($at)
/* 456A4 80054EA4 C47E000C */  jal        func_8001FB10
/* 456A8 80054EA8 00C08434 */   ori       $a0, $a0, (0x1C000 & 0xFFFF)
/* 456AC 80054EAC 0780043C */  lui        $a0, %hi(D_80070328)
/* 456B0 80054EB0 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 456B4 80054EB4 21280000 */  addu       $a1, $zero, $zero
/* 456B8 80054EB8 E439010C */  jal        func_8004E790
/* 456BC 80054EBC E8020624 */   addiu     $a2, $zero, 0x2E8
/* 456C0 80054EC0 0780043C */  lui        $a0, %hi(D_8006FBA8)
/* 456C4 80054EC4 A8FB8424 */  addiu      $a0, $a0, %lo(D_8006FBA8)
/* 456C8 80054EC8 21280000 */  addu       $a1, $zero, $zero
/* 456CC 80054ECC E439010C */  jal        func_8004E790
/* 456D0 80054ED0 1C000624 */   addiu     $a2, $zero, 0x1C
/* 456D4 80054ED4 0780043C */  lui        $a0, %hi(D_8007179C)
/* 456D8 80054ED8 9C178424 */  addiu      $a0, $a0, %lo(D_8007179C)
/* 456DC 80054EDC 21280000 */  addu       $a1, $zero, $zero
/* 456E0 80054EE0 E439010C */  jal        func_8004E790
/* 456E4 80054EE4 30010624 */   addiu     $a2, $zero, 0x130
/* 456E8 80054EE8 0780043C */  lui        $a0, %hi(D_8006DFF8)
/* 456EC 80054EEC F8DF8424 */  addiu      $a0, $a0, %lo(D_8006DFF8)
/* 456F0 80054EF0 21280000 */  addu       $a1, $zero, $zero
/* 456F4 80054EF4 E439010C */  jal        func_8004E790
/* 456F8 80054EF8 FC010624 */   addiu     $a2, $zero, 0x1FC
/* 456FC 80054EFC 0780043C */  lui        $a0, %hi(D_8006D088)
/* 45700 80054F00 88D08424 */  addiu      $a0, $a0, %lo(D_8006D088)
/* 45704 80054F04 21280000 */  addu       $a1, $zero, $zero
/* 45708 80054F08 0680033C */  lui        $v1, %hi(D_80065834)
/* 4570C 80054F0C 3458638C */  lw         $v1, %lo(D_80065834)($v1)
/* 45710 80054F10 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 45714 80054F14 0780013C */  lui        $at, %hi(D_80070328 + 0x28C)
/* 45718 80054F18 B40522AC */  sw         $v0, %lo(D_80070328 + 0x28C)($at)
/* 4571C 80054F1C 0780013C */  lui        $at, %hi(D_80070328 + 0x294)
/* 45720 80054F20 BC0522AC */  sw         $v0, %lo(D_80070328 + 0x294)($at)
/* 45724 80054F24 0780013C */  lui        $at, %hi(D_80070328 + 0x280)
/* 45728 80054F28 A80523AC */  sw         $v1, %lo(D_80070328 + 0x280)($at)
/* 4572C 80054F2C E439010C */  jal        func_8004E790
/* 45730 80054F30 50080624 */   addiu     $a2, $zero, 0x850
/* 45734 80054F34 0780043C */  lui        $a0, %hi(D_8006C7F8)
/* 45738 80054F38 F8C78424 */  addiu      $a0, $a0, %lo(D_8006C7F8)
/* 4573C 80054F3C 21280000 */  addu       $a1, $zero, $zero
/* 45740 80054F40 E439010C */  jal        func_8004E790
/* 45744 80054F44 50080624 */   addiu     $a2, $zero, 0x850
/* 45748 80054F48 0780103C */  lui        $s0, %hi(g_CheatFlags + 3)
/* 4574C 80054F4C 93FB1026 */  addiu      $s0, $s0, %lo(g_CheatFlags + 3)
/* 45750 80054F50 FDFF0426 */  addiu      $a0, $s0, -0x3
/* 45754 80054F54 21280000 */  addu       $a1, $zero, $zero
/* 45758 80054F58 00001192 */  lbu        $s1, 0x0($s0)
/* 4575C 80054F5C E439010C */  jal        func_8004E790
/* 45760 80054F60 18000624 */   addiu     $a2, $zero, 0x18
/* 45764 80054F64 7055010C */  jal        ActivateSparxPowers
/* 45768 80054F68 000011A2 */   sb        $s1, 0x0($s0)
/* 4576C 80054F6C A83D010C */  jal        func_8004F6A0
/* 45770 80054F70 00000000 */   nop
/* 45774 80054F74 9D71010C */  jal        func_8005C674
/* 45778 80054F78 21204000 */   addu      $a0, $v0, $zero
/* 4577C 80054F7C 1800BF8F */  lw         $ra, 0x18($sp)
/* 45780 80054F80 1400B18F */  lw         $s1, 0x14($sp)
/* 45784 80054F84 1000B08F */  lw         $s0, 0x10($sp)
/* 45788 80054F88 2000BD27 */  addiu      $sp, $sp, 0x20
/* 4578C 80054F8C 0800E003 */  jr         $ra
/* 45790 80054F90 00000000 */   nop
.size func_80054E5C, . - func_80054E5C
