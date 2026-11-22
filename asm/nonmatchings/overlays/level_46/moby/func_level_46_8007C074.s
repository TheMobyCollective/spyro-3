.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_46
/* 8F4E5A4 8007C074 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 8F4E5A8 8007C078 1000BFAF */  sw         $ra, 0x10($sp)
/* 8F4E5AC 8007C07C C5E5000C */  jal        func_80039714
/* 8F4E5B0 8007C080 00000000 */   nop
/* 8F4E5B4 8007C084 1000BF8F */  lw         $ra, 0x10($sp)
/* 8F4E5B8 8007C088 1800BD27 */  addiu      $sp, $sp, 0x18
/* 8F4E5BC 8007C08C 0800E003 */  jr         $ra
/* 8F4E5C0 8007C090 00000000 */   nop
.size MobyUpdate_290_level_46, . - MobyUpdate_290_level_46
