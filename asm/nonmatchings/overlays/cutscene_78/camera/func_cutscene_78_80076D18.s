.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_78_80076D18
/* 2BE8A48 80076D18 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 2BE8A4C 80076D1C 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 2BE8A50 80076D20 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 2BE8A54 80076D24 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 2BE8A58 80076D28 0780113C */  lui        $s1, %hi(D_8006EDD8)
/* 2BE8A5C 80076D2C D8ED3126 */  addiu      $s1, $s1, %lo(D_8006EDD8)
/* 2BE8A60 80076D30 2400BFAF */  sw         $ra, 0x24($sp)
/* 2BE8A64 80076D34 2000B2AF */  sw         $s2, 0x20($sp)
/* 2BE8A68 80076D38 1800B0AF */  sw         $s0, 0x18($sp)
/* 2BE8A6C 80076D3C 000024AE */  sw         $a0, 0x0($s1)
/* 2BE8A70 80076D40 40180200 */  sll        $v1, $v0, 1
/* 2BE8A74 80076D44 21186200 */  addu       $v1, $v1, $v0
/* 2BE8A78 80076D48 C0180300 */  sll        $v1, $v1, 3
/* 2BE8A7C 80076D4C 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x44)
/* 2BE8A80 80076D50 21082300 */  addu       $at, $at, $v1
/* 2BE8A84 80076D54 1CD9228C */  lw         $v0, %lo(D_8006D8D8 + 0x44)($at)
/* 2BE8A88 80076D58 00000000 */  nop
/* 2BE8A8C 80076D5C 03004014 */  bnez       $v0, .Lcutscene_78_80076D6C
/* 2BE8A90 80076D60 00080624 */   addiu     $a2, $zero, 0x800
/* 2BE8A94 80076D64 D5DB0108 */  j          .Lcutscene_78_80076F54
/* 2BE8A98 80076D68 21100000 */   addu      $v0, $zero, $zero
.Lcutscene_78_80076D6C:
/* 2BE8A9C 80076D6C 0780043C */  lui        $a0, %hi(D_8006E470)
/* 2BE8AA0 80076D70 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 2BE8AA4 80076D74 0780103C */  lui        $s0, %hi(D_800722CC)
/* 2BE8AA8 80076D78 CC22108E */  lw         $s0, %lo(D_800722CC)($s0)
/* 2BE8AAC 80076D7C 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 2BE8AB0 80076D80 21082300 */  addu       $at, $at, $v1
/* 2BE8AB4 80076D84 18D9278C */  lw         $a3, %lo(D_8006D8D8 + 0x40)($at)
/* 2BE8AB8 80076D88 5E41010C */  jal        CDLoadSync
/* 2BE8ABC 80076D8C 21280002 */   addu      $a1, $s0, $zero
/* 2BE8AC0 80076D90 0100043C */  lui        $a0, (0x1C000 >> 16)
/* 2BE8AC4 80076D94 06000224 */  addiu      $v0, $zero, 0x6
/* 2BE8AC8 80076D98 01001224 */  addiu      $s2, $zero, 0x1
/* 2BE8ACC 80076D9C 0780013C */  lui        $at, %hi(D_8006E344)
/* 2BE8AD0 80076DA0 44E322AC */  sw         $v0, %lo(D_8006E344)($at)
/* 2BE8AD4 80076DA4 0780013C */  lui        $at, %hi(D_8006C718)
/* 2BE8AD8 80076DA8 18C732AC */  sw         $s2, %lo(D_8006C718)($at)
/* 2BE8ADC 80076DAC C47E000C */  jal        func_8001FB10
/* 2BE8AE0 80076DB0 00C08434 */   ori       $a0, $a0, (0x1C000 & 0xFFFF)
/* 2BE8AE4 80076DB4 21200002 */  addu       $a0, $s0, $zero
/* 2BE8AE8 80076DB8 20DD010C */  jal        func_cutscene_78_80077480
/* 2BE8AEC 80076DBC 01000524 */   addiu     $a1, $zero, 0x1
/* 2BE8AF0 80076DC0 21280000 */  addu       $a1, $zero, $zero
/* 2BE8AF4 80076DC4 0780043C */  lui        $a0, %hi(D_8006EE08)
/* 2BE8AF8 80076DC8 08EE848C */  lw         $a0, %lo(D_8006EE08)($a0)
/* 2BE8AFC 80076DCC 0780013C */  lui        $at, %hi(D_8006EDDC)
/* 2BE8B00 80076DD0 DCED20AC */  sw         $zero, %lo(D_8006EDDC)($at)
/* 2BE8B04 80076DD4 0780013C */  lui        $at, %hi(D_8006EDE0)
/* 2BE8B08 80076DD8 E0ED20AC */  sw         $zero, %lo(D_8006EDE0)($at)
/* 2BE8B0C 80076DDC CCDD010C */  jal        func_cutscene_78_80077730
/* 2BE8B10 80076DE0 01000624 */   addiu     $a2, $zero, 0x1
/* 2BE8B14 80076DE4 0780033C */  lui        $v1, %hi(D_8006E33C)
/* 2BE8B18 80076DE8 3CE36390 */  lbu        $v1, %lo(D_8006E33C)($v1)
/* 2BE8B1C 80076DEC 0780043C */  lui        $a0, %hi(D_8006E33D)
/* 2BE8B20 80076DF0 3DE38490 */  lbu        $a0, %lo(D_8006E33D)($a0)
/* 2BE8B24 80076DF4 0780023C */  lui        $v0, %hi(D_8006C5BC)
/* 2BE8B28 80076DF8 BCC5428C */  lw         $v0, %lo(D_8006C5BC)($v0)
/* 2BE8B2C 80076DFC 0780053C */  lui        $a1, %hi(D_8006E33E)
/* 2BE8B30 80076E00 3EE3A590 */  lbu        $a1, %lo(D_8006E33E)($a1)
/* 2BE8B34 80076E04 3C004228 */  slti       $v0, $v0, 0x3C
/* 2BE8B38 80076E08 0780013C */  lui        $at, %hi(D_8006FC15)
/* 2BE8B3C 80076E0C 15FC23A0 */  sb         $v1, %lo(D_8006FC15)($at)
/* 2BE8B40 80076E10 0780013C */  lui        $at, %hi(D_8006FC16)
/* 2BE8B44 80076E14 16FC24A0 */  sb         $a0, %lo(D_8006FC16)($at)
/* 2BE8B48 80076E18 0780013C */  lui        $at, %hi(D_8006FC17)
/* 2BE8B4C 80076E1C 17FC25A0 */  sb         $a1, %lo(D_8006FC17)($at)
/* 2BE8B50 80076E20 0780013C */  lui        $at, %hi(D_8006FC89)
/* 2BE8B54 80076E24 89FC23A0 */  sb         $v1, %lo(D_8006FC89)($at)
/* 2BE8B58 80076E28 0780013C */  lui        $at, %hi(D_8006FC8A)
/* 2BE8B5C 80076E2C 8AFC24A0 */  sb         $a0, %lo(D_8006FC8A)($at)
/* 2BE8B60 80076E30 0780013C */  lui        $at, %hi(D_8006FC8B)
/* 2BE8B64 80076E34 8BFC25A0 */  sb         $a1, %lo(D_8006FC8B)($at)
/* 2BE8B68 80076E38 0E004014 */  bnez       $v0, .Lcutscene_78_80076E74
/* 2BE8B6C 80076E3C 00000000 */   nop
/* 2BE8B70 80076E40 0780043C */  lui        $a0, %hi(D_800722D0)
/* 2BE8B74 80076E44 D022848C */  lw         $a0, %lo(D_800722D0)($a0)
/* 2BE8B78 80076E48 DAAD000C */  jal        func_8002B768
/* 2BE8B7C 80076E4C FCDF8424 */   addiu     $a0, $a0, -0x2004
/* 2BE8B80 80076E50 21280000 */  addu       $a1, $zero, $zero
/* 2BE8B84 80076E54 0780043C */  lui        $a0, %hi(D_8006C554)
/* 2BE8B88 80076E58 54C5848C */  lw         $a0, %lo(D_8006C554)($a0)
/* 2BE8B8C 80076E5C 00000000 */  nop
/* 2BE8B90 80076E60 00F08424 */  addiu      $a0, $a0, -0x1000
/* 2BE8B94 80076E64 0780013C */  lui        $at, %hi(D_8006C7E0)
/* 2BE8B98 80076E68 E0C724AC */  sw         $a0, %lo(D_8006C7E0)($at)
/* 2BE8B9C 80076E6C E439010C */  jal        func_8004E790
/* 2BE8BA0 80076E70 00100624 */   addiu     $a2, $zero, 0x1000
.Lcutscene_78_80076E74:
/* 2BE8BA4 80076E74 40002426 */  addiu      $a0, $s1, 0x40
/* 2BE8BA8 80076E78 0780053C */  lui        $a1, %hi(D_8006C6A0)
/* 2BE8BAC 80076E7C A0C6A58C */  lw         $a1, %lo(D_8006C6A0)($a1)
/* 2BE8BB0 80076E80 F539010C */  jal        func_8004E7D4
/* 2BE8BB4 80076E84 14000624 */   addiu     $a2, $zero, 0x14
/* 2BE8BB8 80076E88 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 2BE8BBC 80076E8C A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 2BE8BC0 80076E90 10100224 */  addiu      $v0, $zero, 0x1010
/* 2BE8BC4 80076E94 000062AC */  sw         $v0, 0x0($v1)
/* 2BE8BC8 80076E98 FF2F0224 */  addiu      $v0, $zero, 0x2FFF
/* 2BE8BCC 80076E9C 060062A4 */  sh         $v0, 0x6($v1)
/* 2BE8BD0 80076EA0 F8070224 */  addiu      $v0, $zero, 0x7F8
/* 2BE8BD4 80076EA4 0C0062A4 */  sh         $v0, 0xC($v1)
/* 2BE8BD8 80076EA8 0E0062A4 */  sh         $v0, 0xE($v1)
/* 2BE8BDC 80076EAC 01000224 */  addiu      $v0, $zero, 0x1
/* 2BE8BE0 80076EB0 100062A0 */  sb         $v0, 0x10($v1)
/* 2BE8BE4 80076EB4 0780043C */  lui        $a0, %hi(D_8006C704)
/* 2BE8BE8 80076EB8 04C7848C */  lw         $a0, %lo(D_8006C704)($a0)
/* 2BE8BEC 80076EBC FFFF0224 */  addiu      $v0, $zero, -0x1
/* 2BE8BF0 80076EC0 0780013C */  lui        $at, %hi(D_8006EE14)
/* 2BE8BF4 80076EC4 14EE22AC */  sw         $v0, %lo(D_8006EE14)($at)
/* 2BE8BF8 80076EC8 0780023C */  lui        $v0, %hi(D_8006C578)
/* 2BE8BFC 80076ECC 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 2BE8C00 80076ED0 21280000 */  addu       $a1, $zero, $zero
/* 2BE8C04 80076ED4 0780013C */  lui        $at, %hi(D_80070328 + 0x288)
/* 2BE8C08 80076ED8 B00532AC */  sw         $s2, %lo(D_80070328 + 0x288)($at)
/* 2BE8C0C 80076EDC 01004224 */  addiu      $v0, $v0, 0x1
/* 2BE8C10 80076EE0 40300200 */  sll        $a2, $v0, 1
/* 2BE8C14 80076EE4 2130C200 */  addu       $a2, $a2, $v0
/* 2BE8C18 80076EE8 80300600 */  sll        $a2, $a2, 2
/* 2BE8C1C 80076EEC 2330C200 */  subu       $a2, $a2, $v0
/* 2BE8C20 80076EF0 0780013C */  lui        $at, %hi(D_8006C610)
/* 2BE8C24 80076EF4 10C624AC */  sw         $a0, %lo(D_8006C610)($at)
/* 2BE8C28 80076EF8 E439010C */  jal        func_8004E790
/* 2BE8C2C 80076EFC C0300600 */   sll       $a2, $a2, 3
/* 2BE8C30 80076F00 0780023C */  lui        $v0, %hi(D_8006C578)
/* 2BE8C34 80076F04 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 2BE8C38 80076F08 00000000 */  nop
/* 2BE8C3C 80076F0C 01004224 */  addiu      $v0, $v0, 0x1
/* 2BE8C40 80076F10 0F004018 */  blez       $v0, .Lcutscene_78_80076F50
/* 2BE8C44 80076F14 21180000 */   addu      $v1, $zero, $zero
/* 2BE8C48 80076F18 FF000524 */  addiu      $a1, $zero, 0xFF
/* 2BE8C4C 80076F1C 21200000 */  addu       $a0, $zero, $zero
.Lcutscene_78_80076F20:
/* 2BE8C50 80076F20 0780023C */  lui        $v0, %hi(D_8006C610)
/* 2BE8C54 80076F24 10C6428C */  lw         $v0, %lo(D_8006C610)($v0)
/* 2BE8C58 80076F28 01006324 */  addiu      $v1, $v1, 0x1
/* 2BE8C5C 80076F2C 21108200 */  addu       $v0, $a0, $v0
/* 2BE8C60 80076F30 480045A0 */  sb         $a1, 0x48($v0)
/* 2BE8C64 80076F34 0780023C */  lui        $v0, %hi(D_8006C578)
/* 2BE8C68 80076F38 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 2BE8C6C 80076F3C 00000000 */  nop
/* 2BE8C70 80076F40 01004224 */  addiu      $v0, $v0, 0x1
/* 2BE8C74 80076F44 2A106200 */  slt        $v0, $v1, $v0
/* 2BE8C78 80076F48 F5FF4014 */  bnez       $v0, .Lcutscene_78_80076F20
/* 2BE8C7C 80076F4C 58008424 */   addiu     $a0, $a0, 0x58
.Lcutscene_78_80076F50:
/* 2BE8C80 80076F50 01000224 */  addiu      $v0, $zero, 0x1
.Lcutscene_78_80076F54:
/* 2BE8C84 80076F54 2400BF8F */  lw         $ra, 0x24($sp)
/* 2BE8C88 80076F58 2000B28F */  lw         $s2, 0x20($sp)
/* 2BE8C8C 80076F5C 1C00B18F */  lw         $s1, 0x1C($sp)
/* 2BE8C90 80076F60 1800B08F */  lw         $s0, 0x18($sp)
/* 2BE8C94 80076F64 2800BD27 */  addiu      $sp, $sp, 0x28
/* 2BE8C98 80076F68 0800E003 */  jr         $ra
/* 2BE8C9C 80076F6C 00000000 */   nop
.size func_cutscene_78_80076D18, . - func_cutscene_78_80076D18
