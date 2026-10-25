.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_223_level_12
/* 416BE74 8007F144 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 416BE78 8007F148 1000BFAF */  sw         $ra, 0x10($sp)
/* 416BE7C 8007F14C 48008390 */  lbu        $v1, 0x48($a0)
/* 416BE80 8007F150 00000000 */  nop
/* 416BE84 8007F154 05006010 */  beqz       $v1, .Llevel_12_8007F16C
/* 416BE88 8007F158 02000224 */   addiu     $v0, $zero, 0x2
/* 416BE8C 8007F15C 0A006210 */  beq        $v1, $v0, .Llevel_12_8007F188
/* 416BE90 8007F160 00000000 */   nop
/* 416BE94 8007F164 6BFC0108 */  j          .Llevel_12_8007F1AC
/* 416BE98 8007F168 00000000 */   nop
.Llevel_12_8007F16C:
/* 416BE9C 8007F16C 49008290 */  lbu        $v0, 0x49($a0)
/* 416BEA0 8007F170 00000000 */  nop
/* 416BEA4 8007F174 0D004010 */  beqz       $v0, .Llevel_12_8007F1AC
/* 416BEA8 8007F178 02000224 */   addiu     $v0, $zero, 0x2
/* 416BEAC 8007F17C 480082A0 */  sb         $v0, 0x48($a0)
/* 416BEB0 8007F180 69FC0108 */  j          .Llevel_12_8007F1A4
/* 416BEB4 8007F184 02000524 */   addiu     $a1, $zero, 0x2
.Llevel_12_8007F188:
/* 416BEB8 8007F188 0780023C */  lui        $v0, %hi(D_8006C770)
/* 416BEBC 8007F18C 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 416BEC0 8007F190 00000000 */  nop
/* 416BEC4 8007F194 05004010 */  beqz       $v0, .Llevel_12_8007F1AC
/* 416BEC8 8007F198 01000224 */   addiu     $v0, $zero, 0x1
/* 416BECC 8007F19C 480082A0 */  sb         $v0, 0x48($a0)
/* 416BED0 8007F1A0 01000524 */  addiu      $a1, $zero, 0x1
.Llevel_12_8007F1A4:
/* 416BED4 8007F1A4 D0D3000C */  jal        func_80034F40
/* 416BED8 8007F1A8 00000000 */   nop
.Llevel_12_8007F1AC:
/* 416BEDC 8007F1AC 1000BF8F */  lw         $ra, 0x10($sp)
/* 416BEE0 8007F1B0 1800BD27 */  addiu      $sp, $sp, 0x18
/* 416BEE4 8007F1B4 0800E003 */  jr         $ra
/* 416BEE8 8007F1B8 00000000 */   nop
.size MobyUpdate_223_level_12, . - MobyUpdate_223_level_12
