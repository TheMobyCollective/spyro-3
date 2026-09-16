.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_atlas_8007594C
/* 962DE7C 8007594C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 962DE80 80075950 1400B1AF */  sw         $s1, 0x14($sp)
/* 962DE84 80075954 21888000 */  addu       $s1, $a0, $zero
/* 962DE88 80075958 1000B0AF */  sw         $s0, 0x10($sp)
/* 962DE8C 8007595C 2180A000 */  addu       $s0, $a1, $zero
/* 962DE90 80075960 C0281000 */  sll        $a1, $s0, 3
/* 962DE94 80075964 2128B000 */  addu       $a1, $a1, $s0
/* 962DE98 80075968 C02A0500 */  sll        $a1, $a1, 11
/* 962DE9C 8007596C C0381100 */  sll        $a3, $s1, 3
/* 962DEA0 80075970 2138F100 */  addu       $a3, $a3, $s1
/* 962DEA4 80075974 C03A0700 */  sll        $a3, $a3, 11
/* 962DEA8 80075978 0780023C */  lui        $v0, %hi(D_80070140)
/* 962DEAC 8007597C 4001428C */  lw         $v0, %lo(D_80070140)($v0)
/* 962DEB0 80075980 0780043C */  lui        $a0, %hi(D_8006E470)
/* 962DEB4 80075984 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 962DEB8 80075988 21284500 */  addu       $a1, $v0, $a1
/* 962DEBC 8007598C 0780023C */  lui        $v0, %hi(D_8006D8D8 + 0x5A0)
/* 962DEC0 80075990 78DE428C */  lw         $v0, %lo(D_8006D8D8 + 0x5A0)($v0)
/* 962DEC4 80075994 00480624 */  addiu      $a2, $zero, 0x4800
/* 962DEC8 80075998 1800BFAF */  sw         $ra, 0x18($sp)
/* 962DECC 8007599C A041010C */  jal        CDLoadAsync
/* 962DED0 800759A0 21384700 */   addu      $a3, $v0, $a3
/* 962DED4 800759A4 40801000 */  sll        $s0, $s0, 1
/* 962DED8 800759A8 0880013C */  lui        $at, %hi(D_atlas_8007ADEC)
/* 962DEDC 800759AC 21083000 */  addu       $at, $at, $s0
/* 962DEE0 800759B0 ECAD31A4 */  sh         $s1, %lo(D_atlas_8007ADEC)($at)
/* 962DEE4 800759B4 1800BF8F */  lw         $ra, 0x18($sp)
/* 962DEE8 800759B8 1400B18F */  lw         $s1, 0x14($sp)
/* 962DEEC 800759BC 1000B08F */  lw         $s0, 0x10($sp)
/* 962DEF0 800759C0 2000BD27 */  addiu      $sp, $sp, 0x20
/* 962DEF4 800759C4 0800E003 */  jr         $ra
/* 962DEF8 800759C8 00000000 */   nop
.size func_atlas_8007594C, . - func_atlas_8007594C
