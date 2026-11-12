.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_24
/* 5E016B0 80086980 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5E016B4 80086984 1000BFAF */  sw         $ra, 0x10($sp)
/* 5E016B8 80086988 C5E5000C */  jal        func_80039714
/* 5E016BC 8008698C 00000000 */   nop
/* 5E016C0 80086990 1000BF8F */  lw         $ra, 0x10($sp)
/* 5E016C4 80086994 1800BD27 */  addiu      $sp, $sp, 0x18
/* 5E016C8 80086998 0800E003 */  jr         $ra
/* 5E016CC 8008699C 00000000 */   nop
.size MobyUpdate_290_level_24, . - MobyUpdate_290_level_24
