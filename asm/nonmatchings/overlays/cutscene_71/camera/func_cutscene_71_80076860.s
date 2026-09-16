.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_71_80076860
/* 1F62D90 80076860 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 1F62D94 80076864 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 1F62D98 80076868 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 1F62D9C 8007686C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 1F62DA0 80076870 0780113C */  lui        $s1, %hi(D_8006EDD8)
/* 1F62DA4 80076874 D8ED3126 */  addiu      $s1, $s1, %lo(D_8006EDD8)
/* 1F62DA8 80076878 2400BFAF */  sw         $ra, 0x24($sp)
/* 1F62DAC 8007687C 2000B2AF */  sw         $s2, 0x20($sp)
/* 1F62DB0 80076880 1800B0AF */  sw         $s0, 0x18($sp)
/* 1F62DB4 80076884 000024AE */  sw         $a0, 0x0($s1)
/* 1F62DB8 80076888 40180200 */  sll        $v1, $v0, 1
/* 1F62DBC 8007688C 21186200 */  addu       $v1, $v1, $v0
/* 1F62DC0 80076890 C0180300 */  sll        $v1, $v1, 3
/* 1F62DC4 80076894 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x44)
/* 1F62DC8 80076898 21082300 */  addu       $at, $at, $v1
/* 1F62DCC 8007689C 1CD9228C */  lw         $v0, %lo(D_8006D8D8 + 0x44)($at)
/* 1F62DD0 800768A0 00000000 */  nop
/* 1F62DD4 800768A4 03004014 */  bnez       $v0, .Lcutscene_71_800768B4
/* 1F62DD8 800768A8 00080624 */   addiu     $a2, $zero, 0x800
/* 1F62DDC 800768AC A7DA0108 */  j          .Lcutscene_71_80076A9C
/* 1F62DE0 800768B0 21100000 */   addu      $v0, $zero, $zero
.Lcutscene_71_800768B4:
/* 1F62DE4 800768B4 0780043C */  lui        $a0, %hi(D_8006E470)
/* 1F62DE8 800768B8 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 1F62DEC 800768BC 0780103C */  lui        $s0, %hi(D_800722CC)
/* 1F62DF0 800768C0 CC22108E */  lw         $s0, %lo(D_800722CC)($s0)
/* 1F62DF4 800768C4 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 1F62DF8 800768C8 21082300 */  addu       $at, $at, $v1
/* 1F62DFC 800768CC 18D9278C */  lw         $a3, %lo(D_8006D8D8 + 0x40)($at)
/* 1F62E00 800768D0 5E41010C */  jal        CDLoadSync
/* 1F62E04 800768D4 21280002 */   addu      $a1, $s0, $zero
/* 1F62E08 800768D8 0100043C */  lui        $a0, (0x1C000 >> 16)
/* 1F62E0C 800768DC 06000224 */  addiu      $v0, $zero, 0x6
/* 1F62E10 800768E0 01001224 */  addiu      $s2, $zero, 0x1
/* 1F62E14 800768E4 0780013C */  lui        $at, %hi(D_8006E344)
/* 1F62E18 800768E8 44E322AC */  sw         $v0, %lo(D_8006E344)($at)
/* 1F62E1C 800768EC 0780013C */  lui        $at, %hi(D_8006C718)
/* 1F62E20 800768F0 18C732AC */  sw         $s2, %lo(D_8006C718)($at)
/* 1F62E24 800768F4 C47E000C */  jal        func_8001FB10
/* 1F62E28 800768F8 00C08434 */   ori       $a0, $a0, (0x1C000 & 0xFFFF)
/* 1F62E2C 800768FC 21200002 */  addu       $a0, $s0, $zero
/* 1F62E30 80076900 F2DB010C */  jal        func_cutscene_71_80076FC8
/* 1F62E34 80076904 01000524 */   addiu     $a1, $zero, 0x1
/* 1F62E38 80076908 21280000 */  addu       $a1, $zero, $zero
/* 1F62E3C 8007690C 0780043C */  lui        $a0, %hi(D_8006EE08)
/* 1F62E40 80076910 08EE848C */  lw         $a0, %lo(D_8006EE08)($a0)
/* 1F62E44 80076914 0780013C */  lui        $at, %hi(D_8006EDDC)
/* 1F62E48 80076918 DCED20AC */  sw         $zero, %lo(D_8006EDDC)($at)
/* 1F62E4C 8007691C 0780013C */  lui        $at, %hi(D_8006EDE0)
/* 1F62E50 80076920 E0ED20AC */  sw         $zero, %lo(D_8006EDE0)($at)
/* 1F62E54 80076924 9EDC010C */  jal        func_cutscene_71_80077278
/* 1F62E58 80076928 01000624 */   addiu     $a2, $zero, 0x1
/* 1F62E5C 8007692C 0780033C */  lui        $v1, %hi(D_8006E33C)
/* 1F62E60 80076930 3CE36390 */  lbu        $v1, %lo(D_8006E33C)($v1)
/* 1F62E64 80076934 0780043C */  lui        $a0, %hi(D_8006E33D)
/* 1F62E68 80076938 3DE38490 */  lbu        $a0, %lo(D_8006E33D)($a0)
/* 1F62E6C 8007693C 0780023C */  lui        $v0, %hi(D_8006C5BC)
/* 1F62E70 80076940 BCC5428C */  lw         $v0, %lo(D_8006C5BC)($v0)
/* 1F62E74 80076944 0780053C */  lui        $a1, %hi(D_8006E33E)
/* 1F62E78 80076948 3EE3A590 */  lbu        $a1, %lo(D_8006E33E)($a1)
/* 1F62E7C 8007694C 3C004228 */  slti       $v0, $v0, 0x3C
/* 1F62E80 80076950 0780013C */  lui        $at, %hi(D_8006FC15)
/* 1F62E84 80076954 15FC23A0 */  sb         $v1, %lo(D_8006FC15)($at)
/* 1F62E88 80076958 0780013C */  lui        $at, %hi(D_8006FC16)
/* 1F62E8C 8007695C 16FC24A0 */  sb         $a0, %lo(D_8006FC16)($at)
/* 1F62E90 80076960 0780013C */  lui        $at, %hi(D_8006FC17)
/* 1F62E94 80076964 17FC25A0 */  sb         $a1, %lo(D_8006FC17)($at)
/* 1F62E98 80076968 0780013C */  lui        $at, %hi(D_8006FC89)
/* 1F62E9C 8007696C 89FC23A0 */  sb         $v1, %lo(D_8006FC89)($at)
/* 1F62EA0 80076970 0780013C */  lui        $at, %hi(D_8006FC8A)
/* 1F62EA4 80076974 8AFC24A0 */  sb         $a0, %lo(D_8006FC8A)($at)
/* 1F62EA8 80076978 0780013C */  lui        $at, %hi(D_8006FC8B)
/* 1F62EAC 8007697C 8BFC25A0 */  sb         $a1, %lo(D_8006FC8B)($at)
/* 1F62EB0 80076980 0E004014 */  bnez       $v0, .Lcutscene_71_800769BC
/* 1F62EB4 80076984 00000000 */   nop
/* 1F62EB8 80076988 0780043C */  lui        $a0, %hi(D_800722D0)
/* 1F62EBC 8007698C D022848C */  lw         $a0, %lo(D_800722D0)($a0)
/* 1F62EC0 80076990 DAAD000C */  jal        func_8002B768
/* 1F62EC4 80076994 FCDF8424 */   addiu     $a0, $a0, -0x2004
/* 1F62EC8 80076998 21280000 */  addu       $a1, $zero, $zero
/* 1F62ECC 8007699C 0780043C */  lui        $a0, %hi(D_8006C554)
/* 1F62ED0 800769A0 54C5848C */  lw         $a0, %lo(D_8006C554)($a0)
/* 1F62ED4 800769A4 00000000 */  nop
/* 1F62ED8 800769A8 00F08424 */  addiu      $a0, $a0, -0x1000
/* 1F62EDC 800769AC 0780013C */  lui        $at, %hi(D_8006C7E0)
/* 1F62EE0 800769B0 E0C724AC */  sw         $a0, %lo(D_8006C7E0)($at)
/* 1F62EE4 800769B4 E439010C */  jal        func_8004E790
/* 1F62EE8 800769B8 00100624 */   addiu     $a2, $zero, 0x1000
.Lcutscene_71_800769BC:
/* 1F62EEC 800769BC 40002426 */  addiu      $a0, $s1, 0x40
/* 1F62EF0 800769C0 0780053C */  lui        $a1, %hi(D_8006C6A0)
/* 1F62EF4 800769C4 A0C6A58C */  lw         $a1, %lo(D_8006C6A0)($a1)
/* 1F62EF8 800769C8 F539010C */  jal        func_8004E7D4
/* 1F62EFC 800769CC 14000624 */   addiu     $a2, $zero, 0x14
/* 1F62F00 800769D0 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 1F62F04 800769D4 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 1F62F08 800769D8 10100224 */  addiu      $v0, $zero, 0x1010
/* 1F62F0C 800769DC 000062AC */  sw         $v0, 0x0($v1)
/* 1F62F10 800769E0 FF2F0224 */  addiu      $v0, $zero, 0x2FFF
/* 1F62F14 800769E4 060062A4 */  sh         $v0, 0x6($v1)
/* 1F62F18 800769E8 F8070224 */  addiu      $v0, $zero, 0x7F8
/* 1F62F1C 800769EC 0C0062A4 */  sh         $v0, 0xC($v1)
/* 1F62F20 800769F0 0E0062A4 */  sh         $v0, 0xE($v1)
/* 1F62F24 800769F4 01000224 */  addiu      $v0, $zero, 0x1
/* 1F62F28 800769F8 100062A0 */  sb         $v0, 0x10($v1)
/* 1F62F2C 800769FC 0780043C */  lui        $a0, %hi(D_8006C704)
/* 1F62F30 80076A00 04C7848C */  lw         $a0, %lo(D_8006C704)($a0)
/* 1F62F34 80076A04 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 1F62F38 80076A08 0780013C */  lui        $at, %hi(D_8006EE14)
/* 1F62F3C 80076A0C 14EE22AC */  sw         $v0, %lo(D_8006EE14)($at)
/* 1F62F40 80076A10 0780023C */  lui        $v0, %hi(D_8006C578)
/* 1F62F44 80076A14 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 1F62F48 80076A18 21280000 */  addu       $a1, $zero, $zero
/* 1F62F4C 80076A1C 0780013C */  lui        $at, %hi(D_80070328 + 0x288)
/* 1F62F50 80076A20 B00532AC */  sw         $s2, %lo(D_80070328 + 0x288)($at)
/* 1F62F54 80076A24 01004224 */  addiu      $v0, $v0, 0x1
/* 1F62F58 80076A28 40300200 */  sll        $a2, $v0, 1
/* 1F62F5C 80076A2C 2130C200 */  addu       $a2, $a2, $v0
/* 1F62F60 80076A30 80300600 */  sll        $a2, $a2, 2
/* 1F62F64 80076A34 2330C200 */  subu       $a2, $a2, $v0
/* 1F62F68 80076A38 0780013C */  lui        $at, %hi(D_8006C610)
/* 1F62F6C 80076A3C 10C624AC */  sw         $a0, %lo(D_8006C610)($at)
/* 1F62F70 80076A40 E439010C */  jal        func_8004E790
/* 1F62F74 80076A44 C0300600 */   sll       $a2, $a2, 3
/* 1F62F78 80076A48 0780023C */  lui        $v0, %hi(D_8006C578)
/* 1F62F7C 80076A4C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 1F62F80 80076A50 00000000 */  nop
/* 1F62F84 80076A54 01004224 */  addiu      $v0, $v0, 0x1
/* 1F62F88 80076A58 0F004018 */  blez       $v0, .Lcutscene_71_80076A98
/* 1F62F8C 80076A5C 21180000 */   addu      $v1, $zero, $zero
/* 1F62F90 80076A60 FF000524 */  addiu      $a1, $zero, 0xFF
/* 1F62F94 80076A64 21200000 */  addu       $a0, $zero, $zero
.Lcutscene_71_80076A68:
/* 1F62F98 80076A68 0780023C */  lui        $v0, %hi(D_8006C610)
/* 1F62F9C 80076A6C 10C6428C */  lw         $v0, %lo(D_8006C610)($v0)
/* 1F62FA0 80076A70 01006324 */  addiu      $v1, $v1, 0x1
/* 1F62FA4 80076A74 21108200 */  addu       $v0, $a0, $v0
/* 1F62FA8 80076A78 480045A0 */  sb         $a1, 0x48($v0)
/* 1F62FAC 80076A7C 0780023C */  lui        $v0, %hi(D_8006C578)
/* 1F62FB0 80076A80 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 1F62FB4 80076A84 00000000 */  nop
/* 1F62FB8 80076A88 01004224 */  addiu      $v0, $v0, 0x1
/* 1F62FBC 80076A8C 2A106200 */  slt        $v0, $v1, $v0
/* 1F62FC0 80076A90 F5FF4014 */  bnez       $v0, .Lcutscene_71_80076A68
/* 1F62FC4 80076A94 58008424 */   addiu     $a0, $a0, 0x58
.Lcutscene_71_80076A98:
/* 1F62FC8 80076A98 01000224 */  addiu      $v0, $zero, 0x1
.Lcutscene_71_80076A9C:
/* 1F62FCC 80076A9C 2400BF8F */  lw         $ra, 0x24($sp)
/* 1F62FD0 80076AA0 2000B28F */  lw         $s2, 0x20($sp)
/* 1F62FD4 80076AA4 1C00B18F */  lw         $s1, 0x1C($sp)
/* 1F62FD8 80076AA8 1800B08F */  lw         $s0, 0x18($sp)
/* 1F62FDC 80076AAC 2800BD27 */  addiu      $sp, $sp, 0x28
/* 1F62FE0 80076AB0 0800E003 */  jr         $ra
/* 1F62FE4 80076AB4 00000000 */   nop
.size func_cutscene_71_80076860, . - func_cutscene_71_80076860
