.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_40_8007EBA8
/* 7E6A0D8 8007EBA8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 7E6A0DC 8007EBAC 1000BFAF */  sw         $ra, 0x10($sp)
/* 7E6A0E0 8007EBB0 0000858C */  lw         $a1, 0x0($a0)
/* 7E6A0E4 8007EBB4 0780043C */  lui        $a0, %hi(D_80070328)
/* 7E6A0E8 8007EBB8 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 7E6A0EC 8007EBBC 21300000 */  addu       $a2, $zero, $zero
/* 7E6A0F0 8007EBC0 88D8000C */  jal        func_80036220
/* 7E6A0F4 8007EBC4 21380000 */   addu      $a3, $zero, $zero
/* 7E6A0F8 8007EBC8 03004010 */  beqz       $v0, .Llevel_40_8007EBD8
/* 7E6A0FC 8007EBCC 21200000 */   addu      $a0, $zero, $zero
/* 7E6A100 8007EBD0 2F61010C */  jal        WarpToLevel
/* 7E6A104 8007EBD4 2F000524 */   addiu     $a1, $zero, 0x2F
.Llevel_40_8007EBD8:
/* 7E6A108 8007EBD8 1000BF8F */  lw         $ra, 0x10($sp)
/* 7E6A10C 8007EBDC 1800BD27 */  addiu      $sp, $sp, 0x18
/* 7E6A110 8007EBE0 0800E003 */  jr         $ra
/* 7E6A114 8007EBE4 00000000 */   nop
.size func_level_40_8007EBA8, . - func_level_40_8007EBA8
