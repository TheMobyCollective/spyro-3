.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_163_level_38
/* 7C38A68 80079D38 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 7C38A6C 80079D3C 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 7C38A70 80079D40 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 7C38A74 80079D44 2000B2AF */  sw         $s2, 0x20($sp)
/* 7C38A78 80079D48 21908000 */  addu       $s2, $a0, $zero
/* 7C38A7C 80079D4C 2400B3AF */  sw         $s3, 0x24($sp)
/* 7C38A80 80079D50 0780133C */  lui        $s3, %hi(D_80070328 + 0x250)
/* 7C38A84 80079D54 78057326 */  addiu      $s3, $s3, %lo(D_80070328 + 0x250)
/* 7C38A88 80079D58 2800BFAF */  sw         $ra, 0x28($sp)
/* 7C38A8C 80079D5C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 7C38A90 80079D60 1800B0AF */  sw         $s0, 0x18($sp)
/* 7C38A94 80079D64 0000648E */  lw         $a0, 0x0($s3)
/* 7C38A98 80079D68 0000518C */  lw         $s1, 0x0($v0)
/* 7C38A9C 80079D6C 35008010 */  beqz       $a0, .Llevel_38_80079E44
/* 7C38AA0 80079D70 00000000 */   nop
/* 7C38AA4 80079D74 1C00228E */  lw         $v0, 0x1C($s1)
/* 7C38AA8 80079D78 00000000 */  nop
/* 7C38AAC 80079D7C 01004230 */  andi       $v0, $v0, 0x1
/* 7C38AB0 80079D80 09004010 */  beqz       $v0, .Llevel_38_80079DA8
/* 7C38AB4 80079D84 00000000 */   nop
/* 7C38AB8 80079D88 2400228E */  lw         $v0, 0x24($s1)
/* 7C38ABC 80079D8C 00000000 */  nop
/* 7C38AC0 80079D90 05004018 */  blez       $v0, .Llevel_38_80079DA8
/* 7C38AC4 80079D94 00000000 */   nop
/* 7C38AC8 80079D98 4D004292 */  lbu        $v0, 0x4D($s2)
/* 7C38ACC 80079D9C 00000000 */  nop
/* 7C38AD0 80079DA0 05004014 */  bnez       $v0, .Llevel_38_80079DB8
/* 7C38AD4 80079DA4 21280000 */   addu      $a1, $zero, $zero
.Llevel_38_80079DA8:
/* 7C38AD8 80079DA8 C656010C */  jal        func_80055B18
/* 7C38ADC 80079DAC 21204002 */   addu      $a0, $s2, $zero
/* 7C38AE0 80079DB0 91E70108 */  j          .Llevel_38_80079E44
/* 7C38AE4 80079DB4 2C0020AE */   sw        $zero, 0x2C($s1)
.Llevel_38_80079DB8:
/* 7C38AE8 80079DB8 0C005026 */  addiu      $s0, $s2, 0xC
/* 7C38AEC 80079DBC C557010C */  jal        func_80055F14
/* 7C38AF0 80079DC0 21300002 */   addu      $a2, $s0, $zero
/* 7C38AF4 80079DC4 21200002 */  addu       $a0, $s0, $zero
/* 7C38AF8 80079DC8 00040524 */  addiu      $a1, $zero, 0x400
/* 7C38AFC 80079DCC 01000624 */  addiu      $a2, $zero, 0x1
/* 7C38B00 80079DD0 0800023C */  lui        $v0, (0x80000 >> 16)
/* 7C38B04 80079DD4 0000638E */  lw         $v1, 0x0($s3)
/* 7C38B08 80079DD8 21380000 */  addu       $a3, $zero, $zero
/* 7C38B0C 80079DDC 1000A2AF */  sw         $v0, 0x10($sp)
/* 7C38B10 80079DE0 8C6E000C */  jal        func_8001BA30
/* 7C38B14 80079DE4 1400A3AF */   sw        $v1, 0x14($sp)
/* 7C38B18 80079DE8 2400238E */  lw         $v1, 0x24($s1)
/* 7C38B1C 80079DEC 00000000 */  nop
/* 7C38B20 80079DF0 B4006228 */  slti       $v0, $v1, 0xB4
/* 7C38B24 80079DF4 13004010 */  beqz       $v0, .Llevel_38_80079E44
/* 7C38B28 80079DF8 4CFF6324 */   addiu     $v1, $v1, -0xB4
/* 7C38B2C 80079DFC C0100300 */  sll        $v0, $v1, 3
/* 7C38B30 80079E00 FF004330 */  andi       $v1, $v0, 0xFF
/* 7C38B34 80079E04 40100300 */  sll        $v0, $v1, 1
/* 7C38B38 80079E08 0680013C */  lui        $at, %hi(D_800658A0)
/* 7C38B3C 80079E0C 21082200 */  addu       $at, $at, $v0
/* 7C38B40 80079E10 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 7C38B44 80079E14 00000000 */  nop
/* 7C38B48 80079E18 02004104 */  bgez       $v0, .Llevel_38_80079E24
/* 7C38B4C 80079E1C 00000000 */   nop
/* 7C38B50 80079E20 23100200 */  negu       $v0, $v0
.Llevel_38_80079E24:
/* 7C38B54 80079E24 031A0200 */  sra        $v1, $v0, 8
/* 7C38B58 80079E28 10006228 */  slti       $v0, $v1, 0x10
/* 7C38B5C 80079E2C 03004014 */  bnez       $v0, .Llevel_38_80079E3C
/* 7C38B60 80079E30 30006234 */   ori       $v0, $v1, 0x30
/* 7C38B64 80079E34 0F000324 */  addiu      $v1, $zero, 0xF
/* 7C38B68 80079E38 30006234 */  ori        $v0, $v1, 0x30
.Llevel_38_80079E3C:
/* 7C38B6C 80079E3C 540040AE */  sw         $zero, 0x54($s2)
/* 7C38B70 80079E40 570042A2 */  sb         $v0, 0x57($s2)
.Llevel_38_80079E44:
/* 7C38B74 80079E44 2800BF8F */  lw         $ra, 0x28($sp)
/* 7C38B78 80079E48 2400B38F */  lw         $s3, 0x24($sp)
/* 7C38B7C 80079E4C 2000B28F */  lw         $s2, 0x20($sp)
/* 7C38B80 80079E50 1C00B18F */  lw         $s1, 0x1C($sp)
/* 7C38B84 80079E54 1800B08F */  lw         $s0, 0x18($sp)
/* 7C38B88 80079E58 3000BD27 */  addiu      $sp, $sp, 0x30
/* 7C38B8C 80079E5C 0800E003 */  jr         $ra
/* 7C38B90 80079E60 00000000 */   nop
.size MobyUpdate_163_level_38, . - MobyUpdate_163_level_38
