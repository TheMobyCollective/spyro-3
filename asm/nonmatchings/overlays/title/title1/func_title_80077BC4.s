.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_title_80077BC4
/* 268F4 80077BC4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 268F8 80077BC8 00010524 */  addiu      $a1, $zero, 0x100
/* 268FC 80077BCC 0780023C */  lui        $v0, %hi(D_8006C76C)
/* 26900 80077BD0 6CC7428C */  lw         $v0, %lo(D_8006C76C)($v0)
/* 26904 80077BD4 D2000624 */  addiu      $a2, $zero, 0xD2
/* 26908 80077BD8 1000BFAF */  sw         $ra, 0x10($sp)
/* 2690C 80077BDC 80100200 */  sll        $v0, $v0, 2
/* 26910 80077BE0 0880013C */  lui        $at, %hi(D_title_8007EEC0)
/* 26914 80077BE4 21082200 */  addu       $at, $at, $v0
/* 26918 80077BE8 C0EE248C */  lw         $a0, %lo(D_title_8007EEC0)($at)
/* 2691C 80077BEC B780000C */  jal        DrawStringCentered
/* 26920 80077BF0 02000724 */   addiu     $a3, $zero, 0x2
/* 26924 80077BF4 1000BF8F */  lw         $ra, 0x10($sp)
/* 26928 80077BF8 1800BD27 */  addiu      $sp, $sp, 0x18
/* 2692C 80077BFC 0800E003 */  jr         $ra
/* 26930 80077C00 00000000 */   nop
.size func_title_80077BC4, . - func_title_80077BC4
