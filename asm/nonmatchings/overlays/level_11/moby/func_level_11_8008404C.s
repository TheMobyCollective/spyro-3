.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_359_level_11
/* 3E2857C 8008404C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3E28580 80084050 1000BFAF */  sw         $ra, 0x10($sp)
/* 3E28584 80084054 3C008290 */  lbu        $v0, 0x3C($a0)
/* 3E28588 80084058 00000000 */  nop
/* 3E2858C 8008405C 03004010 */  beqz       $v0, .Llevel_11_8008406C
/* 3E28590 80084060 00000000 */   nop
/* 3E28594 80084064 C5E5000C */  jal        func_80039714
/* 3E28598 80084068 00000000 */   nop
.Llevel_11_8008406C:
/* 3E2859C 8008406C 1000BF8F */  lw         $ra, 0x10($sp)
/* 3E285A0 80084070 1800BD27 */  addiu      $sp, $sp, 0x18
/* 3E285A4 80084074 0800E003 */  jr         $ra
/* 3E285A8 80084078 00000000 */   nop
.size MobyUpdate_359_level_11, . - MobyUpdate_359_level_11
