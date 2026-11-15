.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_659_level_34
/* 74E9354 8008D624 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 74E9358 8008D628 1000B0AF */  sw         $s0, 0x10($sp)
/* 74E935C 8008D62C 21808000 */  addu       $s0, $a0, $zero
/* 74E9360 8008D630 1400BFAF */  sw         $ra, 0x14($sp)
/* 74E9364 8008D634 48000392 */  lbu        $v1, 0x48($s0)
/* 74E9368 8008D638 01000224 */  addiu      $v0, $zero, 0x1
/* 74E936C 8008D63C 10006210 */  beq        $v1, $v0, .Llevel_34_8008D680
/* 74E9370 8008D640 02006228 */   slti      $v0, $v1, 0x2
/* 74E9374 8008D644 05004010 */  beqz       $v0, .Llevel_34_8008D65C
/* 74E9378 8008D648 00000000 */   nop
/* 74E937C 8008D64C 08006010 */  beqz       $v1, .Llevel_34_8008D670
/* 74E9380 8008D650 00000000 */   nop
/* 74E9384 8008D654 AB350208 */  j          .Llevel_34_8008D6AC
/* 74E9388 8008D658 00000000 */   nop
.Llevel_34_8008D65C:
/* 74E938C 8008D65C 02000224 */  addiu      $v0, $zero, 0x2
/* 74E9390 8008D660 0E006210 */  beq        $v1, $v0, .Llevel_34_8008D69C
/* 74E9394 8008D664 21200002 */   addu      $a0, $s0, $zero
/* 74E9398 8008D668 AB350208 */  j          .Llevel_34_8008D6AC
/* 74E939C 8008D66C 00000000 */   nop
.Llevel_34_8008D670:
/* 74E93A0 8008D670 410000A2 */  sb         $zero, 0x41($s0)
/* 74E93A4 8008D674 4C0000A2 */  sb         $zero, 0x4C($s0)
/* 74E93A8 8008D678 AB350208 */  j          .Llevel_34_8008D6AC
/* 74E93AC 8008D67C 4D0000A2 */   sb        $zero, 0x4D($s0)
.Llevel_34_8008D680:
/* 74E93B0 8008D680 01000324 */  addiu      $v1, $zero, 0x1
/* 74E93B4 8008D684 20000224 */  addiu      $v0, $zero, 0x20
/* 74E93B8 8008D688 410003A2 */  sb         $v1, 0x41($s0)
/* 74E93BC 8008D68C 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 74E93C0 8008D690 4D0003A2 */  sb         $v1, 0x4D($s0)
/* 74E93C4 8008D694 AB350208 */  j          .Llevel_34_8008D6AC
/* 74E93C8 8008D698 4E0002A2 */   sb        $v0, 0x4E($s0)
.Llevel_34_8008D69C:
/* 74E93CC 8008D69C E0D3000C */  jal        func_80034F80
/* 74E93D0 8008D6A0 01000524 */   addiu     $a1, $zero, 0x1
/* 74E93D4 8008D6A4 03000224 */  addiu      $v0, $zero, 0x3
/* 74E93D8 8008D6A8 480002A2 */  sb         $v0, 0x48($s0)
.Llevel_34_8008D6AC:
/* 74E93DC 8008D6AC 1400BF8F */  lw         $ra, 0x14($sp)
/* 74E93E0 8008D6B0 1000B08F */  lw         $s0, 0x10($sp)
/* 74E93E4 8008D6B4 1800BD27 */  addiu      $sp, $sp, 0x18
/* 74E93E8 8008D6B8 0800E003 */  jr         $ra
/* 74E93EC 8008D6BC 00000000 */   nop
.size MobyUpdate_659_level_34, . - MobyUpdate_659_level_34
