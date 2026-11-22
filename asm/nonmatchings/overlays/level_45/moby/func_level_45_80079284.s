.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_319_level_45
/* 8D357B4 80079284 46008290 */  lbu        $v0, 0x46($a0)
/* 8D357B8 80079288 00000000 */  nop
/* 8D357BC 8007928C 01004224 */  addiu      $v0, $v0, 0x1
/* 8D357C0 80079290 0800E003 */  jr         $ra
/* 8D357C4 80079294 460082A0 */   sb        $v0, 0x46($a0)
.size MobyUpdate_319_level_45, . - MobyUpdate_319_level_45
