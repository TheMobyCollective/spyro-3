.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_326_level_34
/* 74D3B80 80077E50 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 74D3B84 80077E54 2000B0AF */  sw         $s0, 0x20($sp)
/* 74D3B88 80077E58 21808000 */  addu       $s0, $a0, $zero
/* 74D3B8C 80077E5C 2800BFAF */  sw         $ra, 0x28($sp)
/* 74D3B90 80077E60 2400B1AF */  sw         $s1, 0x24($sp)
/* 74D3B94 80077E64 0000118E */  lw         $s1, 0x0($s0)
/* 74D3B98 80077E68 02000524 */  addiu      $a1, $zero, 0x2
/* 74D3B9C 80077E6C 69D6000C */  jal        func_800359A4
/* 74D3BA0 80077E70 21202002 */   addu      $a0, $s1, $zero
/* 74D3BA4 80077E74 03004010 */  beqz       $v0, .Llevel_34_80077E84
/* 74D3BA8 80077E78 00000000 */   nop
/* 74D3BAC 80077E7C C656010C */  jal        func_80055B18
/* 74D3BB0 80077E80 21200002 */   addu      $a0, $s0, $zero
.Llevel_34_80077E84:
/* 74D3BB4 80077E84 02002392 */  lbu        $v1, 0x2($s1)
/* 74D3BB8 80077E88 00000000 */  nop
/* 74D3BBC 80077E8C 0E006014 */  bnez       $v1, .Llevel_34_80077EC8
/* 74D3BC0 80077E90 01000224 */   addiu     $v0, $zero, 0x1
/* 74D3BC4 80077E94 00002286 */  lh         $v0, 0x0($s1)
/* 74D3BC8 80077E98 00000000 */  nop
/* 74D3BCC 80077E9C 21184000 */  addu       $v1, $v0, $zero
/* 74D3BD0 80077EA0 08004228 */  slti       $v0, $v0, 0x8
/* 74D3BD4 80077EA4 04004010 */  beqz       $v0, .Llevel_34_80077EB8
/* 74D3BD8 80077EA8 00110300 */   sll       $v0, $v1, 4
/* 74D3BDC 80077EAC 540002A2 */  sb         $v0, 0x54($s0)
/* 74D3BE0 80077EB0 CFDF0108 */  j          .Llevel_34_80077F3C
/* 74D3BE4 80077EB4 550000A2 */   sb        $zero, 0x55($s0)
.Llevel_34_80077EB8:
/* 74D3BE8 80077EB8 F8FF6224 */  addiu      $v0, $v1, -0x8
/* 74D3BEC 80077EBC 00110200 */  sll        $v0, $v0, 4
/* 74D3BF0 80077EC0 CFDF0108 */  j          .Llevel_34_80077F3C
/* 74D3BF4 80077EC4 550002A2 */   sb        $v0, 0x55($s0)
.Llevel_34_80077EC8:
/* 74D3BF8 80077EC8 0E006214 */  bne        $v1, $v0, .Llevel_34_80077F04
/* 74D3BFC 80077ECC 02000224 */   addiu     $v0, $zero, 0x2
/* 74D3C00 80077ED0 00002286 */  lh         $v0, 0x0($s1)
/* 74D3C04 80077ED4 00000000 */  nop
/* 74D3C08 80077ED8 21184000 */  addu       $v1, $v0, $zero
/* 74D3C0C 80077EDC 08004228 */  slti       $v0, $v0, 0x8
/* 74D3C10 80077EE0 04004010 */  beqz       $v0, .Llevel_34_80077EF4
/* 74D3C14 80077EE4 00110300 */   sll       $v0, $v1, 4
/* 74D3C18 80077EE8 550002A2 */  sb         $v0, 0x55($s0)
/* 74D3C1C 80077EEC CFDF0108 */  j          .Llevel_34_80077F3C
/* 74D3C20 80077EF0 540000A2 */   sb        $zero, 0x54($s0)
.Llevel_34_80077EF4:
/* 74D3C24 80077EF4 F8FF6224 */  addiu      $v0, $v1, -0x8
/* 74D3C28 80077EF8 00110200 */  sll        $v0, $v0, 4
/* 74D3C2C 80077EFC CFDF0108 */  j          .Llevel_34_80077F3C
/* 74D3C30 80077F00 540002A2 */   sb        $v0, 0x54($s0)
.Llevel_34_80077F04:
/* 74D3C34 80077F04 0D006214 */  bne        $v1, $v0, .Llevel_34_80077F3C
/* 74D3C38 80077F08 00000000 */   nop
/* 74D3C3C 80077F0C 54000292 */  lbu        $v0, 0x54($s0)
/* 74D3C40 80077F10 56000392 */  lbu        $v1, 0x56($s0)
/* 74D3C44 80077F14 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 74D3C48 80077F18 540002A2 */  sb         $v0, 0x54($s0)
/* 74D3C4C 80077F1C 55000292 */  lbu        $v0, 0x55($s0)
/* 74D3C50 80077F20 F8FF6324 */  addiu      $v1, $v1, -0x8
/* 74D3C54 80077F24 560003A2 */  sb         $v1, 0x56($s0)
/* 74D3C58 80077F28 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 74D3C5C 80077F2C 550002A2 */  sb         $v0, 0x55($s0)
/* 74D3C60 80077F30 00002296 */  lhu        $v0, 0x0($s1)
/* 74D3C64 80077F34 00000000 */  nop
/* 74D3C68 80077F38 570002A2 */  sb         $v0, 0x57($s0)
.Llevel_34_80077F3C:
/* 74D3C6C 80077F3C 03002292 */  lbu        $v0, 0x3($s1)
/* 74D3C70 80077F40 00000000 */  nop
/* 74D3C74 80077F44 06004014 */  bnez       $v0, .Llevel_34_80077F60
/* 74D3C78 80077F48 00000000 */   nop
/* 74D3C7C 80077F4C 00002292 */  lbu        $v0, 0x0($s1)
/* 74D3C80 80077F50 00000000 */  nop
/* 74D3C84 80077F54 40100200 */  sll        $v0, $v0, 1
/* 74D3C88 80077F58 DCDF0108 */  j          .Llevel_34_80077F70
/* 74D3C8C 80077F5C 30004224 */   addiu     $v0, $v0, 0x30
.Llevel_34_80077F60:
/* 74D3C90 80077F60 00002292 */  lbu        $v0, 0x0($s1)
/* 74D3C94 80077F64 00000000 */  nop
/* 74D3C98 80077F68 80100200 */  sll        $v0, $v0, 2
/* 74D3C9C 80077F6C 34004224 */  addiu      $v0, $v0, 0x34
.Llevel_34_80077F70:
/* 74D3CA0 80077F70 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 74D3CA4 80077F74 2800BF8F */  lw         $ra, 0x28($sp)
/* 74D3CA8 80077F78 2400B18F */  lw         $s1, 0x24($sp)
/* 74D3CAC 80077F7C 2000B08F */  lw         $s0, 0x20($sp)
/* 74D3CB0 80077F80 3000BD27 */  addiu      $sp, $sp, 0x30
/* 74D3CB4 80077F84 0800E003 */  jr         $ra
/* 74D3CB8 80077F88 00000000 */   nop
.size MobyUpdate_326_level_34, . - MobyUpdate_326_level_34
