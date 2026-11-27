.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_469_level_41
/* 81463AC 8008067C 0780023C */  lui        $v0, %hi(D_8006C54C)
/* 81463B0 80080680 4CC5428C */  lw         $v0, %lo(D_8006C54C)($v0)
/* 81463B4 80080684 0980033C */  lui        $v1, %hi(level_41_data_start)
/* 81463B8 80080688 24636324 */  addiu      $v1, $v1, %lo(level_41_data_start)
/* 81463BC 8008068C FFFF4224 */  addiu      $v0, $v0, -0x1
/* 81463C0 80080690 0B004314 */  bne        $v0, $v1, .Llevel_41_800806C0
/* 81463C4 80080694 00000000 */   nop
/* 81463C8 80080698 0780023C */  lui        $v0, %hi(D_8006C774)
/* 81463CC 8008069C 74C7428C */  lw         $v0, %lo(D_8006C774)($v0)
/* 81463D0 800806A0 00000000 */  nop
/* 81463D4 800806A4 06004010 */  beqz       $v0, .Llevel_41_800806C0
/* 81463D8 800806A8 E003023C */   lui       $v0, (0x3E00008 >> 16)
/* 81463DC 800806AC 08004234 */  ori        $v0, $v0, (0x3E00008 & 0xFFFF)
/* 81463E0 800806B0 0580013C */  lui        $at, %hi(func_8005663C)
/* 81463E4 800806B4 3C6622AC */  sw         $v0, %lo(func_8005663C)($at)
/* 81463E8 800806B8 0580013C */  lui        $at, %hi(func_8005663C + 4)
/* 81463EC 800806BC 406620AC */  sw         $zero, %lo(func_8005663C + 4)($at)
.Llevel_41_800806C0:
/* 81463F0 800806C0 0800E003 */  jr         $ra
/* 81463F4 800806C4 00000000 */   nop
.size MobyUpdate_469_level_41, . - MobyUpdate_469_level_41
