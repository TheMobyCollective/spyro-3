.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_412_level_40
/* 7E6D9B0 80082480 0780023C */  lui        $v0, %hi(D_8006C770)
/* 7E6D9B4 80082484 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 7E6D9B8 80082488 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 7E6D9BC 8008248C 03004010 */  beqz       $v0, .Llevel_40_8008249C
/* 7E6D9C0 80082490 1000BFAF */   sw        $ra, 0x10($sp)
/* 7E6D9C4 80082494 C656010C */  jal        func_80055B18
/* 7E6D9C8 80082498 00000000 */   nop
.Llevel_40_8008249C:
/* 7E6D9CC 8008249C 1000BF8F */  lw         $ra, 0x10($sp)
/* 7E6D9D0 800824A0 1800BD27 */  addiu      $sp, $sp, 0x18
/* 7E6D9D4 800824A4 0800E003 */  jr         $ra
/* 7E6D9D8 800824A8 00000000 */   nop
.size MobyUpdate_412_level_40, . - MobyUpdate_412_level_40
