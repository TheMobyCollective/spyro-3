.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800142AC
/* 4AAC 800142AC 0780023C */  lui        $v0, %hi(g_CheatFlags + 2)
/* 4AB0 800142B0 92FB4290 */  lbu        $v0, %lo(g_CheatFlags + 2)($v0)
/* 4AB4 800142B4 00000000 */  nop
/* 4AB8 800142B8 05004010 */  beqz       $v0, .L800142D0
/* 4ABC 800142BC 07000224 */   addiu     $v0, $zero, 0x7
/* 4AC0 800142C0 0780013C */  lui        $at, %hi(D_8006E050)
/* 4AC4 800142C4 50E020AC */  sw         $zero, %lo(D_8006E050)($at)
/* 4AC8 800142C8 B6500008 */  j          .L800142D8
/* 4ACC 800142CC 00000000 */   nop
.L800142D0:
/* 4AD0 800142D0 0780013C */  lui        $at, %hi(D_8006E050)
/* 4AD4 800142D4 50E022AC */  sw         $v0, %lo(D_8006E050)($at)
.L800142D8:
/* 4AD8 800142D8 0800E003 */  jr         $ra
/* 4ADC 800142DC 00000000 */   nop
.size func_800142AC, . - func_800142AC
