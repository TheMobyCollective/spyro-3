.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_323_level_35
/* 7702A20 8007FCF0 0780023C */  lui        $v0, %hi(D_80070328 + 0x48)
/* 7702A24 8007FCF4 7003428C */  lw         $v0, %lo(D_80070328 + 0x48)($v0)
/* 7702A28 8007FCF8 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 7702A2C 8007FCFC 4800B0AF */  sw         $s0, 0x48($sp)
/* 7702A30 8007FD00 21808000 */  addu       $s0, $a0, $zero
/* 7702A34 8007FD04 5000BFAF */  sw         $ra, 0x50($sp)
/* 7702A38 8007FD08 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 7702A3C 8007FD0C 0000118E */  lw         $s1, 0x0($s0)
/* 7702A40 8007FD10 57FF4224 */  addiu      $v0, $v0, -0xA9
/* 7702A44 8007FD14 0200422C */  sltiu      $v0, $v0, 0x2
/* 7702A48 8007FD18 07004010 */  beqz       $v0, .Llevel_35_8007FD38
/* 7702A4C 8007FD1C 00000000 */   nop
/* 7702A50 8007FD20 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 7702A54 8007FD24 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 7702A58 8007FD28 00000000 */  nop
/* 7702A5C 8007FD2C 47004290 */  lbu        $v0, 0x47($v0)
/* 7702A60 8007FD30 54FF0108 */  j          .Llevel_35_8007FD50
/* 7702A64 8007FD34 04004224 */   addiu     $v0, $v0, 0x4
.Llevel_35_8007FD38:
/* 7702A68 8007FD38 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 7702A6C 8007FD3C 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 7702A70 8007FD40 00000000 */  nop
/* 7702A74 8007FD44 47004290 */  lbu        $v0, 0x47($v0)
/* 7702A78 8007FD48 00000000 */  nop
/* 7702A7C 8007FD4C FCFF4224 */  addiu      $v0, $v0, -0x4
.Llevel_35_8007FD50:
/* 7702A80 8007FD50 470002A2 */  sb         $v0, 0x47($s0)
/* 7702A84 8007FD54 0780023C */  lui        $v0, %hi(D_80070328 + 0xB8)
/* 7702A88 8007FD58 E003428C */  lw         $v0, %lo(D_80070328 + 0xB8)($v0)
/* 7702A8C 8007FD5C 00000000 */  nop
/* 7702A90 8007FD60 09004014 */  bnez       $v0, .Llevel_35_8007FD88
/* 7702A94 8007FD64 A9000224 */   addiu     $v0, $zero, 0xA9
/* 7702A98 8007FD68 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 7702A9C 8007FD6C 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 7702AA0 8007FD70 00000000 */  nop
/* 7702AA4 8007FD74 07006214 */  bne        $v1, $v0, .Llevel_35_8007FD94
/* 7702AA8 8007FD78 AB000224 */   addiu     $v0, $zero, 0xAB
/* 7702AAC 8007FD7C 21200002 */  addu       $a0, $s0, $zero
/* 7702AB0 8007FD80 71FF0108 */  j          .Llevel_35_8007FDC4
/* 7702AB4 8007FD84 21280000 */   addu      $a1, $zero, $zero
.Llevel_35_8007FD88:
/* 7702AB8 8007FD88 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 7702ABC 8007FD8C 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 7702AC0 8007FD90 AB000224 */  addiu      $v0, $zero, 0xAB
.Llevel_35_8007FD94:
/* 7702AC4 8007FD94 0D006214 */  bne        $v1, $v0, .Llevel_35_8007FDCC
/* 7702AC8 8007FD98 00000000 */   nop
/* 7702ACC 8007FD9C 0780023C */  lui        $v0, %hi(D_80070328 + 0xB8)
/* 7702AD0 8007FDA0 E003428C */  lw         $v0, %lo(D_80070328 + 0xB8)($v0)
/* 7702AD4 8007FDA4 00000000 */  nop
/* 7702AD8 8007FDA8 08004014 */  bnez       $v0, .Llevel_35_8007FDCC
/* 7702ADC 8007FDAC 00000000 */   nop
/* 7702AE0 8007FDB0 0400228E */  lw         $v0, 0x4($s1)
/* 7702AE4 8007FDB4 00000000 */  nop
/* 7702AE8 8007FDB8 04004010 */  beqz       $v0, .Llevel_35_8007FDCC
/* 7702AEC 8007FDBC 21200002 */   addu      $a0, $s0, $zero
/* 7702AF0 8007FDC0 01000524 */  addiu      $a1, $zero, 0x1
.Llevel_35_8007FDC4:
/* 7702AF4 8007FDC4 AFEE000C */  jal        func_8003BABC
/* 7702AF8 8007FDC8 21300000 */   addu      $a2, $zero, $zero
.Llevel_35_8007FDCC:
/* 7702AFC 8007FDCC 0000258E */  lw         $a1, 0x0($s1)
/* 7702B00 8007FDD0 0780023C */  lui        $v0, %hi(D_80070328 + 0xB8)
/* 7702B04 8007FDD4 E003428C */  lw         $v0, %lo(D_80070328 + 0xB8)($v0)
/* 7702B08 8007FDD8 21200002 */  addu       $a0, $s0, $zero
/* 7702B0C 8007FDDC F0EF000C */  jal        func_8003BFC0
/* 7702B10 8007FDE0 040022AE */   sw        $v0, 0x4($s1)
/* 7702B14 8007FDE4 06004014 */  bnez       $v0, .Llevel_35_8007FE00
/* 7702B18 8007FDE8 21200002 */   addu      $a0, $s0, $zero
/* 7702B1C 8007FDEC 02000524 */  addiu      $a1, $zero, 0x2
/* 7702B20 8007FDF0 AFEE000C */  jal        func_8003BABC
/* 7702B24 8007FDF4 04000624 */   addiu     $a2, $zero, 0x4
/* 7702B28 8007FDF8 000022AE */  sw         $v0, 0x0($s1)
/* 7702B2C 8007FDFC 21200002 */  addu       $a0, $s0, $zero
.Llevel_35_8007FE00:
/* 7702B30 8007FE00 4957010C */  jal        func_80055D24
/* 7702B34 8007FE04 05000524 */   addiu     $a1, $zero, 0x5
/* 7702B38 8007FE08 21200002 */  addu       $a0, $s0, $zero
/* 7702B3C 8007FE0C 21280000 */  addu       $a1, $zero, $zero
/* 7702B40 8007FE10 C557010C */  jal        func_80055F14
/* 7702B44 8007FE14 1800A627 */   addiu     $a2, $sp, 0x18
/* 7702B48 8007FE18 1800A427 */  addiu      $a0, $sp, 0x18
/* 7702B4C 8007FE1C BC020524 */  addiu      $a1, $zero, 0x2BC
/* 7702B50 8007FE20 01000624 */  addiu      $a2, $zero, 0x1
/* 7702B54 8007FE24 2000A28F */  lw         $v0, 0x20($sp)
/* 7702B58 8007FE28 21380000 */  addu       $a3, $zero, $zero
/* 7702B5C 8007FE2C 00024224 */  addiu      $v0, $v0, 0x200
/* 7702B60 8007FE30 2000A2AF */  sw         $v0, 0x20($sp)
/* 7702B64 8007FE34 1000A0AF */  sw         $zero, 0x10($sp)
/* 7702B68 8007FE38 8C6E000C */  jal        func_8001BA30
/* 7702B6C 8007FE3C 1400B0AF */   sw        $s0, 0x14($sp)
/* 7702B70 8007FE40 21184000 */  addu       $v1, $v0, $zero
/* 7702B74 8007FE44 22006014 */  bnez       $v1, .Llevel_35_8007FED0
/* 7702B78 8007FE48 21200002 */   addu      $a0, $s0, $zero
/* 7702B7C 8007FE4C 01000524 */  addiu      $a1, $zero, 0x1
/* 7702B80 8007FE50 C557010C */  jal        func_80055F14
/* 7702B84 8007FE54 2800A627 */   addiu     $a2, $sp, 0x28
/* 7702B88 8007FE58 21200002 */  addu       $a0, $s0, $zero
/* 7702B8C 8007FE5C 02000524 */  addiu      $a1, $zero, 0x2
/* 7702B90 8007FE60 C557010C */  jal        func_80055F14
/* 7702B94 8007FE64 3800A627 */   addiu     $a2, $sp, 0x38
/* 7702B98 8007FE68 1800A427 */  addiu      $a0, $sp, 0x18
/* 7702B9C 8007FE6C 84030524 */  addiu      $a1, $zero, 0x384
/* 7702BA0 8007FE70 01000624 */  addiu      $a2, $zero, 0x1
/* 7702BA4 8007FE74 21380000 */  addu       $a3, $zero, $zero
/* 7702BA8 8007FE78 2800A28F */  lw         $v0, 0x28($sp)
/* 7702BAC 8007FE7C 3800A38F */  lw         $v1, 0x38($sp)
/* 7702BB0 8007FE80 3C00A88F */  lw         $t0, 0x3C($sp)
/* 7702BB4 8007FE84 21104300 */  addu       $v0, $v0, $v1
/* 7702BB8 8007FE88 2C00A38F */  lw         $v1, 0x2C($sp)
/* 7702BBC 8007FE8C 43100200 */  sra        $v0, $v0, 1
/* 7702BC0 8007FE90 1800A2AF */  sw         $v0, 0x18($sp)
/* 7702BC4 8007FE94 3000A28F */  lw         $v0, 0x30($sp)
/* 7702BC8 8007FE98 21186800 */  addu       $v1, $v1, $t0
/* 7702BCC 8007FE9C 4000A88F */  lw         $t0, 0x40($sp)
/* 7702BD0 8007FEA0 43180300 */  sra        $v1, $v1, 1
/* 7702BD4 8007FEA4 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 7702BD8 8007FEA8 21104800 */  addu       $v0, $v0, $t0
/* 7702BDC 8007FEAC 43100200 */  sra        $v0, $v0, 1
/* 7702BE0 8007FEB0 00024224 */  addiu      $v0, $v0, 0x200
/* 7702BE4 8007FEB4 2000A2AF */  sw         $v0, 0x20($sp)
/* 7702BE8 8007FEB8 1000A0AF */  sw         $zero, 0x10($sp)
/* 7702BEC 8007FEBC 8C6E000C */  jal        func_8001BA30
/* 7702BF0 8007FEC0 1400B0AF */   sw        $s0, 0x14($sp)
/* 7702BF4 8007FEC4 21184000 */  addu       $v1, $v0, $zero
/* 7702BF8 8007FEC8 0C006010 */  beqz       $v1, .Llevel_35_8007FEFC
/* 7702BFC 8007FECC 00000000 */   nop
.Llevel_35_8007FED0:
/* 7702C00 8007FED0 36006484 */  lh         $a0, 0x36($v1)
/* 7702C04 8007FED4 85020224 */  addiu      $v0, $zero, 0x285
/* 7702C08 8007FED8 03008210 */  beq        $a0, $v0, .Llevel_35_8007FEE8
/* 7702C0C 8007FEDC 80000224 */   addiu     $v0, $zero, 0x80
/* 7702C10 8007FEE0 06008214 */  bne        $a0, $v0, .Llevel_35_8007FEFC
/* 7702C14 8007FEE4 00000000 */   nop
.Llevel_35_8007FEE8:
/* 7702C18 8007FEE8 48006290 */  lbu        $v0, 0x48($v1)
/* 7702C1C 8007FEEC 00000000 */  nop
/* 7702C20 8007FEF0 02004014 */  bnez       $v0, .Llevel_35_8007FEFC
/* 7702C24 8007FEF4 01000224 */   addiu     $v0, $zero, 0x1
/* 7702C28 8007FEF8 480062A0 */  sb         $v0, 0x48($v1)
.Llevel_35_8007FEFC:
/* 7702C2C 8007FEFC 5000BF8F */  lw         $ra, 0x50($sp)
/* 7702C30 8007FF00 4C00B18F */  lw         $s1, 0x4C($sp)
/* 7702C34 8007FF04 4800B08F */  lw         $s0, 0x48($sp)
/* 7702C38 8007FF08 5800BD27 */  addiu      $sp, $sp, 0x58
/* 7702C3C 8007FF0C 0800E003 */  jr         $ra
/* 7702C40 8007FF10 00000000 */   nop
.size MobyUpdate_323_level_35, . - MobyUpdate_323_level_35
