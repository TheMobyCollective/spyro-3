.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_750_level_47
/* 911C380 8007CE50 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 911C384 8007CE54 2000B0AF */  sw         $s0, 0x20($sp)
/* 911C388 8007CE58 21808000 */  addu       $s0, $a0, $zero
/* 911C38C 8007CE5C 2400BFAF */  sw         $ra, 0x24($sp)
/* 911C390 8007CE60 3C000292 */  lbu        $v0, 0x3C($s0)
/* 911C394 8007CE64 0000058E */  lw         $a1, 0x0($s0)
/* 911C398 8007CE68 05004010 */  beqz       $v0, .Llevel_47_8007CE80
/* 911C39C 8007CE6C 0100023C */   lui       $v0, (0x10000 >> 16)
/* 911C3A0 8007CE70 C5E5000C */  jal        func_80039714
/* 911C3A4 8007CE74 00000000 */   nop
/* 911C3A8 8007CE78 C9F30108 */  j          .Llevel_47_8007CF24
/* 911C3AC 8007CE7C 00000000 */   nop
.Llevel_47_8007CE80:
/* 911C3B0 8007CE80 1800038E */  lw         $v1, 0x18($s0)
/* 911C3B4 8007CE84 00000000 */  nop
/* 911C3B8 8007CE88 08006210 */  beq        $v1, $v0, .Llevel_47_8007CEAC
/* 911C3BC 8007CE8C 14000424 */   addiu     $a0, $zero, 0x14
/* 911C3C0 8007CE90 0000A28C */  lw         $v0, 0x0($a1)
/* 911C3C4 8007CE94 00000000 */  nop
/* 911C3C8 8007CE98 1800438C */  lw         $v1, 0x18($v0)
/* 911C3CC 8007CE9C 01000224 */  addiu      $v0, $zero, 0x1
/* 911C3D0 8007CEA0 16006214 */  bne        $v1, $v0, .Llevel_47_8007CEFC
/* 911C3D4 8007CEA4 0C000426 */   addiu     $a0, $s0, 0xC
/* 911C3D8 8007CEA8 14000424 */  addiu      $a0, $zero, 0x14
.Llevel_47_8007CEAC:
/* 911C3DC 8007CEAC 0000A28C */  lw         $v0, 0x0($a1)
/* 911C3E0 8007CEB0 EE020524 */  addiu      $a1, $zero, 0x2EE
/* 911C3E4 8007CEB4 0000428C */  lw         $v0, 0x0($v0)
/* 911C3E8 8007CEB8 21300002 */  addu       $a2, $s0, $zero
/* 911C3EC 8007CEBC 100040AC */  sw         $zero, 0x10($v0)
/* 911C3F0 8007CEC0 1400028E */  lw         $v0, 0x14($s0)
/* 911C3F4 8007CEC4 01000724 */  addiu      $a3, $zero, 0x1
/* 911C3F8 8007CEC8 000A4224 */  addiu      $v0, $v0, 0xA00
/* 911C3FC 8007CECC 140002AE */  sw         $v0, 0x14($s0)
/* 911C400 8007CED0 03000224 */  addiu      $v0, $zero, 0x3
/* 911C404 8007CED4 1000A2AF */  sw         $v0, 0x10($sp)
/* 911C408 8007CED8 80000224 */  addiu      $v0, $zero, 0x80
/* 911C40C 8007CEDC 1400A2AF */  sw         $v0, 0x14($sp)
/* 911C410 8007CEE0 00010224 */  addiu      $v0, $zero, 0x100
/* 911C414 8007CEE4 7AE4000C */  jal        func_800391E8
/* 911C418 8007CEE8 1800A2AF */   sw        $v0, 0x18($sp)
/* 911C41C 8007CEEC C656010C */  jal        func_80055B18
/* 911C420 8007CEF0 21200002 */   addu      $a0, $s0, $zero
/* 911C424 8007CEF4 C9F30108 */  j          .Llevel_47_8007CF24
/* 911C428 8007CEF8 00000000 */   nop
.Llevel_47_8007CEFC:
/* 911C42C 8007CEFC 180000AE */  sw         $zero, 0x18($s0)
/* 911C430 8007CF00 0000A28C */  lw         $v0, 0x0($a1)
/* 911C434 8007CF04 00000000 */  nop
/* 911C438 8007CF08 180040AC */  sw         $zero, 0x18($v0)
/* 911C43C 8007CF0C 0000A58C */  lw         $a1, 0x0($a1)
/* 911C440 8007CF10 5E3C010C */  jal        func_8004F178
/* 911C444 8007CF14 0C00A524 */   addiu     $a1, $a1, 0xC
/* 911C448 8007CF18 21200002 */  addu       $a0, $s0, $zero
/* 911C44C 8007CF1C 4957010C */  jal        func_80055D24
/* 911C450 8007CF20 03000524 */   addiu     $a1, $zero, 0x3
.Llevel_47_8007CF24:
/* 911C454 8007CF24 2400BF8F */  lw         $ra, 0x24($sp)
/* 911C458 8007CF28 2000B08F */  lw         $s0, 0x20($sp)
/* 911C45C 8007CF2C 2800BD27 */  addiu      $sp, $sp, 0x28
/* 911C460 8007CF30 0800E003 */  jr         $ra
/* 911C464 8007CF34 00000000 */   nop
.size MobyUpdate_750_level_47, . - MobyUpdate_750_level_47
