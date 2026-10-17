.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_412_level_20
/* 50D3F1C 800841EC 0780023C */  lui        $v0, %hi(D_8006C770)
/* 50D3F20 800841F0 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 50D3F24 800841F4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 50D3F28 800841F8 03004010 */  beqz       $v0, .Llevel_20_80084208
/* 50D3F2C 800841FC 1000BFAF */   sw        $ra, 0x10($sp)
/* 50D3F30 80084200 C656010C */  jal        func_80055B18
/* 50D3F34 80084204 00000000 */   nop
.Llevel_20_80084208:
/* 50D3F38 80084208 1000BF8F */  lw         $ra, 0x10($sp)
/* 50D3F3C 8008420C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 50D3F40 80084210 0800E003 */  jr         $ra
/* 50D3F44 80084214 00000000 */   nop
.size MobyUpdate_412_level_20, . - MobyUpdate_412_level_20
