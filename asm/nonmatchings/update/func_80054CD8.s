.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054CD8
/* 454D8 80054CD8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 454DC 80054CDC 0780043C */  lui        $a0, %hi(D_8006E470)
/* 454E0 80054CE0 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 454E4 80054CE4 0180053C */  lui        $a1, %hi(D_80011254)
/* 454E8 80054CE8 5412A58C */  lw         $a1, %lo(D_80011254)($a1)
/* 454EC 80054CEC 0780063C */  lui        $a2, %hi(D_8006DE8C)
/* 454F0 80054CF0 8CDEC68C */  lw         $a2, %lo(D_8006DE8C)($a2)
/* 454F4 80054CF4 0780073C */  lui        $a3, %hi(D_8006DE88)
/* 454F8 80054CF8 88DEE78C */  lw         $a3, %lo(D_8006DE88)($a3)
/* 454FC 80054CFC 0A000224 */  addiu      $v0, $zero, 0xA
/* 45500 80054D00 0780013C */  lui        $at, %hi(D_8006E344)
/* 45504 80054D04 44E322AC */  sw         $v0, %lo(D_8006E344)($at)
/* 45508 80054D08 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 4550C 80054D0C 1000BFAF */  sw         $ra, 0x10($sp)
/* 45510 80054D10 0780013C */  lui        $at, %hi(D_8006C744)
/* 45514 80054D14 44C720A4 */  sh         $zero, %lo(D_8006C744)($at)
/* 45518 80054D18 0780013C */  lui        $at, %hi(D_8006C740)
/* 4551C 80054D1C 40C720A4 */  sh         $zero, %lo(D_8006C740)($at)
/* 45520 80054D20 0780013C */  lui        $at, %hi(D_8006C540)
/* 45524 80054D24 40C520A4 */  sh         $zero, %lo(D_8006C540)($at)
/* 45528 80054D28 0780013C */  lui        $at, %hi(D_8006C510)
/* 4552C 80054D2C 10C522A4 */  sh         $v0, %lo(D_8006C510)($at)
/* 45530 80054D30 0780013C */  lui        $at, %hi(D_8006C6AC)
/* 45534 80054D34 ACC620AC */  sw         $zero, %lo(D_8006C6AC)($at)
/* 45538 80054D38 0780013C */  lui        $at, %hi(D_8006C7F0)
/* 4553C 80054D3C F0C720AC */  sw         $zero, %lo(D_8006C7F0)($at)
/* 45540 80054D40 0780013C */  lui        $at, %hi(D_8006C780)
/* 45544 80054D44 80C720A4 */  sh         $zero, %lo(D_8006C780)($at)
/* 45548 80054D48 0780013C */  lui        $at, %hi(D_8006C6A8)
/* 4554C 80054D4C A8C620A4 */  sh         $zero, %lo(D_8006C6A8)($at)
/* 45550 80054D50 0780013C */  lui        $at, %hi(D_8006C56C)
/* 45554 80054D54 6CC520AC */  sw         $zero, %lo(D_8006C56C)($at)
/* 45558 80054D58 5E41010C */  jal        CDLoadSync
/* 4555C 80054D5C 00000000 */   nop
/* 45560 80054D60 B7EF000C */  jal        func_8003BEDC
/* 45564 80054D64 00000000 */   nop
/* 45568 80054D68 01000224 */  addiu      $v0, $zero, 0x1
/* 4556C 80054D6C 0780013C */  lui        $at, %hi(D_8006E49C)
/* 45570 80054D70 9CE422AC */  sw         $v0, %lo(D_8006E49C)($at)
/* 45574 80054D74 1000BF8F */  lw         $ra, 0x10($sp)
/* 45578 80054D78 1800BD27 */  addiu      $sp, $sp, 0x18
/* 4557C 80054D7C 0800E003 */  jr         $ra
/* 45580 80054D80 00000000 */   nop
.size func_80054CD8, . - func_80054CD8
