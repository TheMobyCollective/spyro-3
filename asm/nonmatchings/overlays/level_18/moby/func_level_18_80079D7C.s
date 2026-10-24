.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_163_level_18
/* 4EACAAC 80079D7C 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 4EACAB0 80079D80 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 4EACAB4 80079D84 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 4EACAB8 80079D88 2000B2AF */  sw         $s2, 0x20($sp)
/* 4EACABC 80079D8C 21908000 */  addu       $s2, $a0, $zero
/* 4EACAC0 80079D90 2400B3AF */  sw         $s3, 0x24($sp)
/* 4EACAC4 80079D94 0780133C */  lui        $s3, %hi(D_80070328 + 0x250)
/* 4EACAC8 80079D98 78057326 */  addiu      $s3, $s3, %lo(D_80070328 + 0x250)
/* 4EACACC 80079D9C 2800BFAF */  sw         $ra, 0x28($sp)
/* 4EACAD0 80079DA0 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 4EACAD4 80079DA4 1800B0AF */  sw         $s0, 0x18($sp)
/* 4EACAD8 80079DA8 0000648E */  lw         $a0, 0x0($s3)
/* 4EACADC 80079DAC 0000518C */  lw         $s1, 0x0($v0)
/* 4EACAE0 80079DB0 35008010 */  beqz       $a0, .Llevel_18_80079E88
/* 4EACAE4 80079DB4 00000000 */   nop
/* 4EACAE8 80079DB8 1C00228E */  lw         $v0, 0x1C($s1)
/* 4EACAEC 80079DBC 00000000 */  nop
/* 4EACAF0 80079DC0 01004230 */  andi       $v0, $v0, 0x1
/* 4EACAF4 80079DC4 09004010 */  beqz       $v0, .Llevel_18_80079DEC
/* 4EACAF8 80079DC8 00000000 */   nop
/* 4EACAFC 80079DCC 2400228E */  lw         $v0, 0x24($s1)
/* 4EACB00 80079DD0 00000000 */  nop
/* 4EACB04 80079DD4 05004018 */  blez       $v0, .Llevel_18_80079DEC
/* 4EACB08 80079DD8 00000000 */   nop
/* 4EACB0C 80079DDC 4D004292 */  lbu        $v0, 0x4D($s2)
/* 4EACB10 80079DE0 00000000 */  nop
/* 4EACB14 80079DE4 05004014 */  bnez       $v0, .Llevel_18_80079DFC
/* 4EACB18 80079DE8 21280000 */   addu      $a1, $zero, $zero
.Llevel_18_80079DEC:
/* 4EACB1C 80079DEC C656010C */  jal        func_80055B18
/* 4EACB20 80079DF0 21204002 */   addu      $a0, $s2, $zero
/* 4EACB24 80079DF4 A2E70108 */  j          .Llevel_18_80079E88
/* 4EACB28 80079DF8 2C0020AE */   sw        $zero, 0x2C($s1)
.Llevel_18_80079DFC:
/* 4EACB2C 80079DFC 0C005026 */  addiu      $s0, $s2, 0xC
/* 4EACB30 80079E00 C557010C */  jal        func_80055F14
/* 4EACB34 80079E04 21300002 */   addu      $a2, $s0, $zero
/* 4EACB38 80079E08 21200002 */  addu       $a0, $s0, $zero
/* 4EACB3C 80079E0C 00040524 */  addiu      $a1, $zero, 0x400
/* 4EACB40 80079E10 01000624 */  addiu      $a2, $zero, 0x1
/* 4EACB44 80079E14 0800023C */  lui        $v0, (0x80000 >> 16)
/* 4EACB48 80079E18 0000638E */  lw         $v1, 0x0($s3)
/* 4EACB4C 80079E1C 21380000 */  addu       $a3, $zero, $zero
/* 4EACB50 80079E20 1000A2AF */  sw         $v0, 0x10($sp)
/* 4EACB54 80079E24 8C6E000C */  jal        func_8001BA30
/* 4EACB58 80079E28 1400A3AF */   sw        $v1, 0x14($sp)
/* 4EACB5C 80079E2C 2400238E */  lw         $v1, 0x24($s1)
/* 4EACB60 80079E30 00000000 */  nop
/* 4EACB64 80079E34 B4006228 */  slti       $v0, $v1, 0xB4
/* 4EACB68 80079E38 13004010 */  beqz       $v0, .Llevel_18_80079E88
/* 4EACB6C 80079E3C 4CFF6324 */   addiu     $v1, $v1, -0xB4
/* 4EACB70 80079E40 C0100300 */  sll        $v0, $v1, 3
/* 4EACB74 80079E44 FF004330 */  andi       $v1, $v0, 0xFF
/* 4EACB78 80079E48 40100300 */  sll        $v0, $v1, 1
/* 4EACB7C 80079E4C 0680013C */  lui        $at, %hi(D_800658A0)
/* 4EACB80 80079E50 21082200 */  addu       $at, $at, $v0
/* 4EACB84 80079E54 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 4EACB88 80079E58 00000000 */  nop
/* 4EACB8C 80079E5C 02004104 */  bgez       $v0, .Llevel_18_80079E68
/* 4EACB90 80079E60 00000000 */   nop
/* 4EACB94 80079E64 23100200 */  negu       $v0, $v0
.Llevel_18_80079E68:
/* 4EACB98 80079E68 031A0200 */  sra        $v1, $v0, 8
/* 4EACB9C 80079E6C 10006228 */  slti       $v0, $v1, 0x10
/* 4EACBA0 80079E70 03004014 */  bnez       $v0, .Llevel_18_80079E80
/* 4EACBA4 80079E74 30006234 */   ori       $v0, $v1, 0x30
/* 4EACBA8 80079E78 0F000324 */  addiu      $v1, $zero, 0xF
/* 4EACBAC 80079E7C 30006234 */  ori        $v0, $v1, 0x30
.Llevel_18_80079E80:
/* 4EACBB0 80079E80 540040AE */  sw         $zero, 0x54($s2)
/* 4EACBB4 80079E84 570042A2 */  sb         $v0, 0x57($s2)
.Llevel_18_80079E88:
/* 4EACBB8 80079E88 2800BF8F */  lw         $ra, 0x28($sp)
/* 4EACBBC 80079E8C 2400B38F */  lw         $s3, 0x24($sp)
/* 4EACBC0 80079E90 2000B28F */  lw         $s2, 0x20($sp)
/* 4EACBC4 80079E94 1C00B18F */  lw         $s1, 0x1C($sp)
/* 4EACBC8 80079E98 1800B08F */  lw         $s0, 0x18($sp)
/* 4EACBCC 80079E9C 3000BD27 */  addiu      $sp, $sp, 0x30
/* 4EACBD0 80079EA0 0800E003 */  jr         $ra
/* 4EACBD4 80079EA4 00000000 */   nop
.size MobyUpdate_163_level_18, . - MobyUpdate_163_level_18
