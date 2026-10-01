.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_atlas_80075C3C
/* 962E16C 80075C3C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 962E170 80075C40 01008230 */  andi       $v0, $a0, 0x1
/* 962E174 80075C44 40280200 */  sll        $a1, $v0, 1
/* 962E178 80075C48 2128A200 */  addu       $a1, $a1, $v0
/* 962E17C 80075C4C C0280500 */  sll        $a1, $a1, 3
/* 962E180 80075C50 2328A200 */  subu       $a1, $a1, $v0
/* 962E184 80075C54 C02A0500 */  sll        $a1, $a1, 11
/* 962E188 80075C58 40380400 */  sll        $a3, $a0, 1
/* 962E18C 80075C5C 2138E400 */  addu       $a3, $a3, $a0
/* 962E190 80075C60 C0380700 */  sll        $a3, $a3, 3
/* 962E194 80075C64 2338E400 */  subu       $a3, $a3, $a0
/* 962E198 80075C68 C03A0700 */  sll        $a3, $a3, 11
/* 962E19C 80075C6C 0780023C */  lui        $v0, %hi(D_80070140)
/* 962E1A0 80075C70 4001428C */  lw         $v0, %lo(D_80070140)($v0)
/* 962E1A4 80075C74 0780043C */  lui        $a0, %hi(D_8006E470)
/* 962E1A8 80075C78 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 962E1AC 80075C7C 21284500 */  addu       $a1, $v0, $a1
/* 962E1B0 80075C80 0780023C */  lui        $v0, %hi(D_8006D8D8 + 0x5A8)
/* 962E1B4 80075C84 80DE428C */  lw         $v0, %lo(D_8006D8D8 + 0x5A8)($v0)
/* 962E1B8 80075C88 00B80634 */  ori        $a2, $zero, 0xB800
/* 962E1BC 80075C8C 1000BFAF */  sw         $ra, 0x10($sp)
/* 962E1C0 80075C90 A041010C */  jal        CDLoadAsync
/* 962E1C4 80075C94 21384700 */   addu      $a3, $v0, $a3
/* 962E1C8 80075C98 1000BF8F */  lw         $ra, 0x10($sp)
/* 962E1CC 80075C9C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 962E1D0 80075CA0 0800E003 */  jr         $ra
/* 962E1D4 80075CA4 00000000 */   nop
.size func_atlas_80075C3C, . - func_atlas_80075C3C
