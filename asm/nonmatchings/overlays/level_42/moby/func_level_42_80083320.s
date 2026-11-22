.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_412_level_42
/* 8488050 80083320 0780023C */  lui        $v0, %hi(D_8006C770)
/* 8488054 80083324 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 8488058 80083328 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 848805C 8008332C 03004010 */  beqz       $v0, .Llevel_42_8008333C
/* 8488060 80083330 1000BFAF */   sw        $ra, 0x10($sp)
/* 8488064 80083334 C656010C */  jal        func_80055B18
/* 8488068 80083338 00000000 */   nop
.Llevel_42_8008333C:
/* 848806C 8008333C 1000BF8F */  lw         $ra, 0x10($sp)
/* 8488070 80083340 1800BD27 */  addiu      $sp, $sp, 0x18
/* 8488074 80083344 0800E003 */  jr         $ra
/* 8488078 80083348 00000000 */   nop
.size MobyUpdate_412_level_42, . - MobyUpdate_412_level_42
