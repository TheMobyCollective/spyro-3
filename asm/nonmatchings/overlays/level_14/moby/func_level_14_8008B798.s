.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_535_level_14
/* 47CACC8 8008B798 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 47CACCC 8008B79C 1000BFAF */  sw         $ra, 0x10($sp)
/* 47CACD0 8008B7A0 48008390 */  lbu        $v1, 0x48($a0)
/* 47CACD4 8008B7A4 01000224 */  addiu      $v0, $zero, 0x1
/* 47CACD8 8008B7A8 03006214 */  bne        $v1, $v0, .Llevel_14_8008B7B8
/* 47CACDC 8008B7AC 00000000 */   nop
/* 47CACE0 8008B7B0 C656010C */  jal        func_80055B18
/* 47CACE4 8008B7B4 00000000 */   nop
.Llevel_14_8008B7B8:
/* 47CACE8 8008B7B8 1000BF8F */  lw         $ra, 0x10($sp)
/* 47CACEC 8008B7BC 1800BD27 */  addiu      $sp, $sp, 0x18
/* 47CACF0 8008B7C0 0800E003 */  jr         $ra
/* 47CACF4 8008B7C4 00000000 */   nop
.size MobyUpdate_535_level_14, . - MobyUpdate_535_level_14
