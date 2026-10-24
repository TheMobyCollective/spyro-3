.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_302_level_21
/* 53F6A84 8007A554 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 53F6A88 8007A558 1000B0AF */  sw         $s0, 0x10($sp)
/* 53F6A8C 8007A55C 21808000 */  addu       $s0, $a0, $zero
/* 53F6A90 8007A560 03000324 */  addiu      $v1, $zero, 0x3
/* 53F6A94 8007A564 1800BFAF */  sw         $ra, 0x18($sp)
/* 53F6A98 8007A568 1400B1AF */  sw         $s1, 0x14($sp)
/* 53F6A9C 8007A56C 48000292 */  lbu        $v0, 0x48($s0)
/* 53F6AA0 8007A570 0000118E */  lw         $s1, 0x0($s0)
/* 53F6AA4 8007A574 1F004310 */  beq        $v0, $v1, .Llevel_21_8007A5F4
/* 53F6AA8 8007A578 00000000 */   nop
/* 53F6AAC 8007A57C 1800028E */  lw         $v0, 0x18($s0)
/* 53F6AB0 8007A580 00000000 */  nop
/* 53F6AB4 8007A584 1B004010 */  beqz       $v0, .Llevel_21_8007A5F4
/* 53F6AB8 8007A588 2E000224 */   addiu     $v0, $zero, 0x2E
/* 53F6ABC 8007A58C 36000386 */  lh         $v1, 0x36($s0)
/* 53F6AC0 8007A590 00000000 */  nop
/* 53F6AC4 8007A594 0A006214 */  bne        $v1, $v0, .Llevel_21_8007A5C0
/* 53F6AC8 8007A598 18002526 */   addiu     $a1, $s1, 0x18
/* 53F6ACC 8007A59C 08000624 */  addiu      $a2, $zero, 0x8
/* 53F6AD0 8007A5A0 FEE2000C */  jal        func_80038BF8
/* 53F6AD4 8007A5A4 03000724 */   addiu     $a3, $zero, 0x3
/* 53F6AD8 8007A5A8 1C002296 */  lhu        $v0, 0x1C($s1)
/* 53F6ADC 8007A5AC C8000324 */  addiu      $v1, $zero, 0xC8
/* 53F6AE0 8007A5B0 1E0023A6 */  sh         $v1, 0x1E($s1)
/* 53F6AE4 8007A5B4 64004224 */  addiu      $v0, $v0, 0x64
/* 53F6AE8 8007A5B8 76E90108 */  j          .Llevel_21_8007A5D8
/* 53F6AEC 8007A5BC 1C0022A6 */   sh        $v0, 0x1C($s1)
.Llevel_21_8007A5C0:
/* 53F6AF0 8007A5C0 21200002 */  addu       $a0, $s0, $zero
/* 53F6AF4 8007A5C4 21300000 */  addu       $a2, $zero, $zero
/* 53F6AF8 8007A5C8 FEE2000C */  jal        func_80038BF8
/* 53F6AFC 8007A5CC 03000724 */   addiu     $a3, $zero, 0x3
/* 53F6B00 8007A5D0 96000224 */  addiu      $v0, $zero, 0x96
/* 53F6B04 8007A5D4 1E0022A6 */  sh         $v0, 0x1E($s1)
.Llevel_21_8007A5D8:
/* 53F6B08 8007A5D8 10000424 */  addiu      $a0, $zero, 0x10
/* 53F6B0C 8007A5DC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 53F6B10 8007A5E0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 53F6B14 8007A5E4 00000000 */  nop
/* 53F6B18 8007A5E8 09F84000 */  jalr       $v0
/* 53F6B1C 8007A5EC 21280002 */   addu      $a1, $s0, $zero
/* 53F6B20 8007A5F0 080000AE */  sw         $zero, 0x8($s0)
.Llevel_21_8007A5F4:
/* 53F6B24 8007A5F4 48000392 */  lbu        $v1, 0x48($s0)
/* 53F6B28 8007A5F8 02000224 */  addiu      $v0, $zero, 0x2
/* 53F6B2C 8007A5FC 15006210 */  beq        $v1, $v0, .Llevel_21_8007A654
/* 53F6B30 8007A600 03006228 */   slti      $v0, $v1, 0x3
/* 53F6B34 8007A604 05004014 */  bnez       $v0, .Llevel_21_8007A61C
/* 53F6B38 8007A608 03000224 */   addiu     $v0, $zero, 0x3
/* 53F6B3C 8007A60C 30006210 */  beq        $v1, $v0, .Llevel_21_8007A6D0
/* 53F6B40 8007A610 21200002 */   addu      $a0, $s0, $zero
/* 53F6B44 8007A614 C2E90108 */  j          .Llevel_21_8007A708
/* 53F6B48 8007A618 00000000 */   nop
.Llevel_21_8007A61C:
/* 53F6B4C 8007A61C 3A006004 */  bltz       $v1, .Llevel_21_8007A708
/* 53F6B50 8007A620 00000000 */   nop
/* 53F6B54 8007A624 0780023C */  lui        $v0, %hi(D_8006C770)
/* 53F6B58 8007A628 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 53F6B5C 8007A62C 00000000 */  nop
/* 53F6B60 8007A630 35004010 */  beqz       $v0, .Llevel_21_8007A708
/* 53F6B64 8007A634 5A000424 */   addiu     $a0, $zero, 0x5A
/* 53F6B68 8007A638 DBD8000C */  jal        func_8003636C
/* 53F6B6C 8007A63C 2C010524 */   addiu     $a1, $zero, 0x12C
/* 53F6B70 8007A640 21200002 */  addu       $a0, $s0, $zero
/* 53F6B74 8007A644 02000524 */  addiu      $a1, $zero, 0x2
/* 53F6B78 8007A648 300022AE */  sw         $v0, 0x30($s1)
/* 53F6B7C 8007A64C B0E90108 */  j          .Llevel_21_8007A6C0
/* 53F6B80 8007A650 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_21_8007A654:
/* 53F6B84 8007A654 21200002 */  addu       $a0, $s0, $zero
/* 53F6B88 8007A658 21282002 */  addu       $a1, $s1, $zero
/* 53F6B8C 8007A65C 5ADC000C */  jal        func_80037168
/* 53F6B90 8007A660 57000624 */   addiu     $a2, $zero, 0x57
/* 53F6B94 8007A664 30002426 */  addiu      $a0, $s1, 0x30
/* 53F6B98 8007A668 69D6000C */  jal        func_800359A4
/* 53F6B9C 8007A66C 04000524 */   addiu     $a1, $zero, 0x4
/* 53F6BA0 8007A670 25004010 */  beqz       $v0, .Llevel_21_8007A708
/* 53F6BA4 8007A674 00000000 */   nop
/* 53F6BA8 8007A678 3400228E */  lw         $v0, 0x34($s1)
/* 53F6BAC 8007A67C 00000000 */  nop
/* 53F6BB0 8007A680 08004010 */  beqz       $v0, .Llevel_21_8007A6A4
/* 53F6BB4 8007A684 21200002 */   addu      $a0, $s0, $zero
/* 53F6BB8 8007A688 21280000 */  addu       $a1, $zero, $zero
/* 53F6BBC 8007A68C FFFF4224 */  addiu      $v0, $v0, -0x1
/* 53F6BC0 8007A690 340022AE */  sw         $v0, 0x34($s1)
/* 53F6BC4 8007A694 D0D3000C */  jal        func_80034F40
/* 53F6BC8 8007A698 480080A0 */   sb        $zero, 0x48($a0)
/* 53F6BCC 8007A69C C2E90108 */  j          .Llevel_21_8007A708
/* 53F6BD0 8007A6A0 00000000 */   nop
.Llevel_21_8007A6A4:
/* 53F6BD4 8007A6A4 02000424 */  addiu      $a0, $zero, 0x2
/* 53F6BD8 8007A6A8 DBD8000C */  jal        func_8003636C
/* 53F6BDC 8007A6AC 04000524 */   addiu     $a1, $zero, 0x4
/* 53F6BE0 8007A6B0 21200002 */  addu       $a0, $s0, $zero
/* 53F6BE4 8007A6B4 01000524 */  addiu      $a1, $zero, 0x1
/* 53F6BE8 8007A6B8 340022AE */  sw         $v0, 0x34($s1)
/* 53F6BEC 8007A6BC 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_21_8007A6C0:
/* 53F6BF0 8007A6C0 D0D3000C */  jal        func_80034F40
/* 53F6BF4 8007A6C4 480082A0 */   sb        $v0, 0x48($a0)
/* 53F6BF8 8007A6C8 C2E90108 */  j          .Llevel_21_8007A708
/* 53F6BFC 8007A6CC 00000000 */   nop
.Llevel_21_8007A6D0:
/* 53F6C00 8007A6D0 65D4000C */  jal        func_80035194
/* 53F6C04 8007A6D4 18002526 */   addiu     $a1, $s1, 0x18
/* 53F6C08 8007A6D8 00010324 */  addiu      $v1, $zero, 0x100
/* 53F6C0C 8007A6DC 0A004314 */  bne        $v0, $v1, .Llevel_21_8007A708
/* 53F6C10 8007A6E0 21200002 */   addu      $a0, $s0, $zero
/* 53F6C14 8007A6E4 4957010C */  jal        func_80055D24
/* 53F6C18 8007A6E8 04000524 */   addiu     $a1, $zero, 0x4
/* 53F6C1C 8007A6EC 80EE000C */  jal        func_8003BA00
/* 53F6C20 8007A6F0 21200002 */   addu      $a0, $s0, $zero
/* 53F6C24 8007A6F4 21200002 */  addu       $a0, $s0, $zero
/* 53F6C28 8007A6F8 6EDA000C */  jal        func_800369B8
/* 53F6C2C 8007A6FC 20000524 */   addiu     $a1, $zero, 0x20
/* 53F6C30 8007A700 C656010C */  jal        func_80055B18
/* 53F6C34 8007A704 21200002 */   addu      $a0, $s0, $zero
.Llevel_21_8007A708:
/* 53F6C38 8007A708 1800BF8F */  lw         $ra, 0x18($sp)
/* 53F6C3C 8007A70C 1400B18F */  lw         $s1, 0x14($sp)
/* 53F6C40 8007A710 1000B08F */  lw         $s0, 0x10($sp)
/* 53F6C44 8007A714 2000BD27 */  addiu      $sp, $sp, 0x20
/* 53F6C48 8007A718 0800E003 */  jr         $ra
/* 53F6C4C 8007A71C 00000000 */   nop
.size MobyUpdate_302_level_21, . - MobyUpdate_302_level_21
