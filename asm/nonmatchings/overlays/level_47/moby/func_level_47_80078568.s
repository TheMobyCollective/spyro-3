.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_111_level_47
/* 9117A98 80078568 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9117A9C 8007856C 1000BFAF */  sw         $ra, 0x10($sp)
/* 9117AA0 80078570 3C008290 */  lbu        $v0, 0x3C($a0)
/* 9117AA4 80078574 00000000 */  nop
/* 9117AA8 80078578 03004010 */  beqz       $v0, .Llevel_47_80078588
/* 9117AAC 8007857C 00000000 */   nop
/* 9117AB0 80078580 C5E5000C */  jal        func_80039714
/* 9117AB4 80078584 00000000 */   nop
.Llevel_47_80078588:
/* 9117AB8 80078588 1000BF8F */  lw         $ra, 0x10($sp)
/* 9117ABC 8007858C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 9117AC0 80078590 0800E003 */  jr         $ra
/* 9117AC4 80078594 00000000 */   nop
.size MobyUpdate_111_level_47, . - MobyUpdate_111_level_47
