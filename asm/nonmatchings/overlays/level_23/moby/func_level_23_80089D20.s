.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_412_level_23
/* 5AA6250 80089D20 0780023C */  lui        $v0, %hi(D_8006C770)
/* 5AA6254 80089D24 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 5AA6258 80089D28 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5AA625C 80089D2C 03004010 */  beqz       $v0, .Llevel_23_80089D3C
/* 5AA6260 80089D30 1000BFAF */   sw        $ra, 0x10($sp)
/* 5AA6264 80089D34 C656010C */  jal        func_80055B18
/* 5AA6268 80089D38 00000000 */   nop
.Llevel_23_80089D3C:
/* 5AA626C 80089D3C 1000BF8F */  lw         $ra, 0x10($sp)
/* 5AA6270 80089D40 1800BD27 */  addiu      $sp, $sp, 0x18
/* 5AA6274 80089D44 0800E003 */  jr         $ra
/* 5AA6278 80089D48 00000000 */   nop
.size MobyUpdate_412_level_23, . - MobyUpdate_412_level_23
