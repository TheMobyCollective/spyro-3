.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_130_level_16
/* 4B9E9DC 8007D4AC 0780023C */  lui        $v0, %hi(D_8006C54C)
/* 4B9E9E0 8007D4B0 4CC5428C */  lw         $v0, %lo(D_8006C54C)($v0)
/* 4B9E9E4 8007D4B4 0880033C */  lui        $v1, %hi(level_16_data_start)
/* 4B9E9E8 8007D4B8 F8666324 */  addiu      $v1, $v1, %lo(level_16_data_start)
/* 4B9E9EC 8007D4BC FFFF4224 */  addiu      $v0, $v0, -0x1
/* 4B9E9F0 8007D4C0 0E004314 */  bne        $v0, $v1, .Llevel_16_8007D4FC
/* 4B9E9F4 8007D4C4 00000000 */   nop
/* 4B9E9F8 8007D4C8 0780023C */  lui        $v0, %hi(D_8006C774)
/* 4B9E9FC 8007D4CC 74C7428C */  lw         $v0, %lo(D_8006C774)($v0)
/* 4B9EA00 8007D4D0 00000000 */  nop
/* 4B9EA04 8007D4D4 09004010 */  beqz       $v0, .Llevel_16_8007D4FC
/* 4B9EA08 8007D4D8 00000000 */   nop
/* 4B9EA0C 8007D4DC 0780043C */  lui        $a0, %hi(D_80070300 + 1)
/* 4B9EA10 8007D4E0 01038424 */  addiu      $a0, $a0, %lo(D_80070300 + 1)
/* 4B9EA14 8007D4E4 00008390 */  lbu        $v1, 0x0($a0)
/* 4B9EA18 8007D4E8 00000000 */  nop
/* 4B9EA1C 8007D4EC 01006230 */  andi       $v0, $v1, 0x1
/* 4B9EA20 8007D4F0 02004010 */  beqz       $v0, .Llevel_16_8007D4FC
/* 4B9EA24 8007D4F4 01006238 */   xori      $v0, $v1, 0x1
/* 4B9EA28 8007D4F8 000082A0 */  sb         $v0, 0x0($a0)
.Llevel_16_8007D4FC:
/* 4B9EA2C 8007D4FC 0800E003 */  jr         $ra
/* 4B9EA30 8007D500 00000000 */   nop
.size MobyUpdate_130_level_16, . - MobyUpdate_130_level_16
