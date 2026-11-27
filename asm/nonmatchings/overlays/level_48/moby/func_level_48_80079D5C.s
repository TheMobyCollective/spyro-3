.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_163_level_48
/* 926CA8C 80079D5C 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 926CA90 80079D60 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 926CA94 80079D64 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 926CA98 80079D68 2000B2AF */  sw         $s2, 0x20($sp)
/* 926CA9C 80079D6C 21908000 */  addu       $s2, $a0, $zero
/* 926CAA0 80079D70 2400B3AF */  sw         $s3, 0x24($sp)
/* 926CAA4 80079D74 0780133C */  lui        $s3, %hi(D_80070328 + 0x250)
/* 926CAA8 80079D78 78057326 */  addiu      $s3, $s3, %lo(D_80070328 + 0x250)
/* 926CAAC 80079D7C 2800BFAF */  sw         $ra, 0x28($sp)
/* 926CAB0 80079D80 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 926CAB4 80079D84 1800B0AF */  sw         $s0, 0x18($sp)
/* 926CAB8 80079D88 0000648E */  lw         $a0, 0x0($s3)
/* 926CABC 80079D8C 0000518C */  lw         $s1, 0x0($v0)
/* 926CAC0 80079D90 35008010 */  beqz       $a0, .Llevel_48_80079E68
/* 926CAC4 80079D94 00000000 */   nop
/* 926CAC8 80079D98 1C00228E */  lw         $v0, 0x1C($s1)
/* 926CACC 80079D9C 00000000 */  nop
/* 926CAD0 80079DA0 01004230 */  andi       $v0, $v0, 0x1
/* 926CAD4 80079DA4 09004010 */  beqz       $v0, .Llevel_48_80079DCC
/* 926CAD8 80079DA8 00000000 */   nop
/* 926CADC 80079DAC 2400228E */  lw         $v0, 0x24($s1)
/* 926CAE0 80079DB0 00000000 */  nop
/* 926CAE4 80079DB4 05004018 */  blez       $v0, .Llevel_48_80079DCC
/* 926CAE8 80079DB8 00000000 */   nop
/* 926CAEC 80079DBC 4D004292 */  lbu        $v0, 0x4D($s2)
/* 926CAF0 80079DC0 00000000 */  nop
/* 926CAF4 80079DC4 05004014 */  bnez       $v0, .Llevel_48_80079DDC
/* 926CAF8 80079DC8 21280000 */   addu      $a1, $zero, $zero
.Llevel_48_80079DCC:
/* 926CAFC 80079DCC C656010C */  jal        func_80055B18
/* 926CB00 80079DD0 21204002 */   addu      $a0, $s2, $zero
/* 926CB04 80079DD4 9AE70108 */  j          .Llevel_48_80079E68
/* 926CB08 80079DD8 2C0020AE */   sw        $zero, 0x2C($s1)
.Llevel_48_80079DDC:
/* 926CB0C 80079DDC 0C005026 */  addiu      $s0, $s2, 0xC
/* 926CB10 80079DE0 C557010C */  jal        func_80055F14
/* 926CB14 80079DE4 21300002 */   addu      $a2, $s0, $zero
/* 926CB18 80079DE8 21200002 */  addu       $a0, $s0, $zero
/* 926CB1C 80079DEC 00040524 */  addiu      $a1, $zero, 0x400
/* 926CB20 80079DF0 01000624 */  addiu      $a2, $zero, 0x1
/* 926CB24 80079DF4 0800023C */  lui        $v0, (0x80000 >> 16)
/* 926CB28 80079DF8 0000638E */  lw         $v1, 0x0($s3)
/* 926CB2C 80079DFC 21380000 */  addu       $a3, $zero, $zero
/* 926CB30 80079E00 1000A2AF */  sw         $v0, 0x10($sp)
/* 926CB34 80079E04 8C6E000C */  jal        func_8001BA30
/* 926CB38 80079E08 1400A3AF */   sw        $v1, 0x14($sp)
/* 926CB3C 80079E0C 2400238E */  lw         $v1, 0x24($s1)
/* 926CB40 80079E10 00000000 */  nop
/* 926CB44 80079E14 B4006228 */  slti       $v0, $v1, 0xB4
/* 926CB48 80079E18 13004010 */  beqz       $v0, .Llevel_48_80079E68
/* 926CB4C 80079E1C 4CFF6324 */   addiu     $v1, $v1, -0xB4
/* 926CB50 80079E20 C0100300 */  sll        $v0, $v1, 3
/* 926CB54 80079E24 FF004330 */  andi       $v1, $v0, 0xFF
/* 926CB58 80079E28 40100300 */  sll        $v0, $v1, 1
/* 926CB5C 80079E2C 0680013C */  lui        $at, %hi(D_800658A0)
/* 926CB60 80079E30 21082200 */  addu       $at, $at, $v0
/* 926CB64 80079E34 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 926CB68 80079E38 00000000 */  nop
/* 926CB6C 80079E3C 02004104 */  bgez       $v0, .Llevel_48_80079E48
/* 926CB70 80079E40 00000000 */   nop
/* 926CB74 80079E44 23100200 */  negu       $v0, $v0
.Llevel_48_80079E48:
/* 926CB78 80079E48 031A0200 */  sra        $v1, $v0, 8
/* 926CB7C 80079E4C 10006228 */  slti       $v0, $v1, 0x10
/* 926CB80 80079E50 03004014 */  bnez       $v0, .Llevel_48_80079E60
/* 926CB84 80079E54 30006234 */   ori       $v0, $v1, 0x30
/* 926CB88 80079E58 0F000324 */  addiu      $v1, $zero, 0xF
/* 926CB8C 80079E5C 30006234 */  ori        $v0, $v1, 0x30
.Llevel_48_80079E60:
/* 926CB90 80079E60 540040AE */  sw         $zero, 0x54($s2)
/* 926CB94 80079E64 570042A2 */  sb         $v0, 0x57($s2)
.Llevel_48_80079E68:
/* 926CB98 80079E68 2800BF8F */  lw         $ra, 0x28($sp)
/* 926CB9C 80079E6C 2400B38F */  lw         $s3, 0x24($sp)
/* 926CBA0 80079E70 2000B28F */  lw         $s2, 0x20($sp)
/* 926CBA4 80079E74 1C00B18F */  lw         $s1, 0x1C($sp)
/* 926CBA8 80079E78 1800B08F */  lw         $s0, 0x18($sp)
/* 926CBAC 80079E7C 3000BD27 */  addiu      $sp, $sp, 0x30
/* 926CBB0 80079E80 0800E003 */  jr         $ra
/* 926CBB4 80079E84 00000000 */   nop
.size MobyUpdate_163_level_48, . - MobyUpdate_163_level_48
