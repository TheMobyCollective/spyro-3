.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_67_80076D14
/* 14EFA44 80076D14 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 14EFA48 80076D18 0780043C */  lui        $a0, %hi(D_8006EDDC)
/* 14EFA4C 80076D1C DCED8424 */  addiu      $a0, $a0, %lo(D_8006EDDC)
/* 14EFA50 80076D20 1400BFAF */  sw         $ra, 0x14($sp)
/* 14EFA54 80076D24 1000B0AF */  sw         $s0, 0x10($sp)
/* 14EFA58 80076D28 0000828C */  lw         $v0, 0x0($a0)
/* 14EFA5C 80076D2C 0780033C */  lui        $v1, %hi(D_8006C648)
/* 14EFA60 80076D30 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 14EFA64 80076D34 1000858C */  lw         $a1, 0x10($a0)
/* 14EFA68 80076D38 21104300 */  addu       $v0, $v0, $v1
/* 14EFA6C 80076D3C FFFFA324 */  addiu      $v1, $a1, -0x1
/* 14EFA70 80076D40 000082AC */  sw         $v0, 0x0($a0)
/* 14EFA74 80076D44 2A106200 */  slt        $v0, $v1, $v0
/* 14EFA78 80076D48 02004010 */  beqz       $v0, .Lcutscene_67_80076D54
/* 14EFA7C 80076D4C 00000000 */   nop
/* 14EFA80 80076D50 000083AC */  sw         $v1, 0x0($a0)
.Lcutscene_67_80076D54:
/* 14EFA84 80076D54 0000848C */  lw         $a0, 0x0($a0)
/* 14EFA88 80076D58 00000000 */  nop
/* 14EFA8C 80076D5C 14008228 */  slti       $v0, $a0, 0x14
/* 14EFA90 80076D60 0B004010 */  beqz       $v0, .Lcutscene_67_80076D90
/* 14EFA94 80076D64 0F000224 */   addiu     $v0, $zero, 0xF
/* 14EFA98 80076D68 23104400 */  subu       $v0, $v0, $a0
/* 14EFA9C 80076D6C 00110200 */  sll        $v0, $v0, 4
/* 14EFAA0 80076D70 0780013C */  lui        $at, %hi(D_8006C598)
/* 14EFAA4 80076D74 98C522AC */  sw         $v0, %lo(D_8006C598)($at)
/* 14EFAA8 80076D78 21004104 */  bgez       $v0, .Lcutscene_67_80076E00
/* 14EFAAC 80076D7C 00000000 */   nop
/* 14EFAB0 80076D80 0780013C */  lui        $at, %hi(D_8006C598)
/* 14EFAB4 80076D84 98C520AC */  sw         $zero, %lo(D_8006C598)($at)
/* 14EFAB8 80076D88 80DB0108 */  j          .Lcutscene_67_80076E00
/* 14EFABC 80076D8C 00000000 */   nop
.Lcutscene_67_80076D90:
/* 14EFAC0 80076D90 2118A000 */  addu       $v1, $a1, $zero
/* 14EFAC4 80076D94 F6FF6224 */  addiu      $v0, $v1, -0xA
/* 14EFAC8 80076D98 2A104400 */  slt        $v0, $v0, $a0
/* 14EFACC 80076D9C 05004010 */  beqz       $v0, .Lcutscene_67_80076DB4
/* 14EFAD0 80076DA0 23186400 */   subu      $v1, $v1, $a0
/* 14EFAD4 80076DA4 0A000224 */  addiu      $v0, $zero, 0xA
/* 14EFAD8 80076DA8 23104300 */  subu       $v0, $v0, $v1
/* 14EFADC 80076DAC 7EDB0108 */  j          .Lcutscene_67_80076DF8
/* 14EFAE0 80076DB0 40110200 */   sll       $v0, $v0, 5
.Lcutscene_67_80076DB4:
/* 14EFAE4 80076DB4 0780023C */  lui        $v0, %hi(D_8006C598)
/* 14EFAE8 80076DB8 98C5428C */  lw         $v0, %lo(D_8006C598)($v0)
/* 14EFAEC 80076DBC 00000000 */  nop
/* 14EFAF0 80076DC0 0D004014 */  bnez       $v0, .Lcutscene_67_80076DF8
/* 14EFAF4 80076DC4 20004224 */   addiu     $v0, $v0, 0x20
/* 14EFAF8 80076DC8 78008228 */  slti       $v0, $a0, 0x78
/* 14EFAFC 80076DCC 0C004014 */  bnez       $v0, .Lcutscene_67_80076E00
/* 14EFB00 80076DD0 E0FFA224 */   addiu     $v0, $a1, -0x20
/* 14EFB04 80076DD4 2A108200 */  slt        $v0, $a0, $v0
/* 14EFB08 80076DD8 09004010 */  beqz       $v0, .Lcutscene_67_80076E00
/* 14EFB0C 80076DDC 00000000 */   nop
/* 14EFB10 80076DE0 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 14EFB14 80076DE4 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 14EFB18 80076DE8 00000000 */  nop
/* 14EFB1C 80076DEC 40094230 */  andi       $v0, $v0, 0x940
/* 14EFB20 80076DF0 03004010 */  beqz       $v0, .Lcutscene_67_80076E00
/* 14EFB24 80076DF4 20000224 */   addiu     $v0, $zero, 0x20
.Lcutscene_67_80076DF8:
/* 14EFB28 80076DF8 0780013C */  lui        $at, %hi(D_8006C598)
/* 14EFB2C 80076DFC 98C522AC */  sw         $v0, %lo(D_8006C598)($at)
.Lcutscene_67_80076E00:
/* 14EFB30 80076E00 0780033C */  lui        $v1, %hi(D_8006C598)
/* 14EFB34 80076E04 98C5638C */  lw         $v1, %lo(D_8006C598)($v1)
/* 14EFB38 80076E08 00000000 */  nop
/* 14EFB3C 80076E0C FF006228 */  slti       $v0, $v1, 0xFF
/* 14EFB40 80076E10 07004014 */  bnez       $v0, .Lcutscene_67_80076E30
/* 14EFB44 80076E14 FF000224 */   addiu     $v0, $zero, 0xFF
/* 14EFB48 80076E18 0780013C */  lui        $at, %hi(D_8006C598)
/* 14EFB4C 80076E1C 98C522AC */  sw         $v0, %lo(D_8006C598)($at)
/* 14EFB50 80076E20 DEDA010C */  jal        func_cutscene_67_80076B78
/* 14EFB54 80076E24 00000000 */   nop
/* 14EFB58 80076E28 1DDC0108 */  j          .Lcutscene_67_80077074
/* 14EFB5C 80076E2C 00000000 */   nop
.Lcutscene_67_80076E30:
/* 14EFB60 80076E30 0780023C */  lui        $v0, %hi(D_8006EDDC)
/* 14EFB64 80076E34 DCED428C */  lw         $v0, %lo(D_8006EDDC)($v0)
/* 14EFB68 80076E38 00000000 */  nop
/* 14EFB6C 80076E3C 02004228 */  slti       $v0, $v0, 0x2
/* 14EFB70 80076E40 13004014 */  bnez       $v0, .Lcutscene_67_80076E90
/* 14EFB74 80076E44 00000000 */   nop
/* 14EFB78 80076E48 0780043C */  lui        $a0, %hi(D_8006EE14)
/* 14EFB7C 80076E4C 14EE848C */  lw         $a0, %lo(D_8006EE14)($a0)
/* 14EFB80 80076E50 00000000 */  nop
/* 14EFB84 80076E54 09008104 */  bgez       $a0, .Lcutscene_67_80076E7C
/* 14EFB88 80076E58 00010224 */   addiu     $v0, $zero, 0x100
/* 14EFB8C 80076E5C 21200000 */  addu       $a0, $zero, $zero
/* 14EFB90 80076E60 21280000 */  addu       $a1, $zero, $zero
/* 14EFB94 80076E64 D4EE000C */  jal        PlaySound
/* 14EFB98 80076E68 04000624 */   addiu     $a2, $zero, 0x4
/* 14EFB9C 80076E6C 0780013C */  lui        $at, %hi(D_8006EE14)
/* 14EFBA0 80076E70 14EE22AC */  sw         $v0, %lo(D_8006EE14)($at)
/* 14EFBA4 80076E74 A4DB0108 */  j          .Lcutscene_67_80076E90
/* 14EFBA8 80076E78 00000000 */   nop
.Lcutscene_67_80076E7C:
/* 14EFBAC 80076E7C 23104300 */  subu       $v0, $v0, $v1
/* 14EFBB0 80076E80 40280200 */  sll        $a1, $v0, 1
/* 14EFBB4 80076E84 2128A200 */  addu       $a1, $a1, $v0
/* 14EFBB8 80076E88 50F0000C */  jal        func_8003C140
/* 14EFBBC 80076E8C C0280500 */   sll       $a1, $a1, 3
.Lcutscene_67_80076E90:
/* 14EFBC0 80076E90 0780103C */  lui        $s0, %hi(D_8006EDE8)
/* 14EFBC4 80076E94 E8ED1026 */  addiu      $s0, $s0, %lo(D_8006EDE8)
/* 14EFBC8 80076E98 0000028E */  lw         $v0, 0x0($s0)
/* 14EFBCC 80076E9C 00000000 */  nop
/* 14EFBD0 80076EA0 10004104 */  bgez       $v0, .Lcutscene_67_80076EE4
/* 14EFBD4 80076EA4 8888063C */   lui       $a2, (0x88888889 >> 16)
/* 14EFBD8 80076EA8 FE40010C */  jal        func_800503F8
/* 14EFBDC 80076EAC 00000000 */   nop
/* 14EFBE0 80076EB0 0C004014 */  bnez       $v0, .Lcutscene_67_80076EE4
/* 14EFBE4 80076EB4 8888063C */   lui       $a2, (0x88888889 >> 16)
/* 14EFBE8 80076EB8 0780053C */  lui        $a1, %hi(D_8006EDE0)
/* 14EFBEC 80076EBC E0EDA58C */  lw         $a1, %lo(D_8006EDE0)($a1)
/* 14EFBF0 80076EC0 00000000 */  nop
/* 14EFBF4 80076EC4 0100A524 */  addiu      $a1, $a1, 0x1
/* 14EFBF8 80076EC8 0100A230 */  andi       $v0, $a1, 0x1
/* 14EFBFC 80076ECC 80100200 */  sll        $v0, $v0, 2
/* 14EFC00 80076ED0 21100202 */  addu       $v0, $s0, $v0
/* 14EFC04 80076ED4 2000448C */  lw         $a0, 0x20($v0)
/* 14EFC08 80076ED8 CEDC010C */  jal        func_cutscene_67_80077338
/* 14EFC0C 80076EDC 01000624 */   addiu     $a2, $zero, 0x1
/* 14EFC10 80076EE0 8888063C */  lui        $a2, (0x88888889 >> 16)
.Lcutscene_67_80076EE4:
/* 14EFC14 80076EE4 0780043C */  lui        $a0, %hi(D_8006EDDC)
/* 14EFC18 80076EE8 DCED848C */  lw         $a0, %lo(D_8006EDDC)($a0)
/* 14EFC1C 80076EEC 8988C634 */  ori        $a2, $a2, (0x88888889 & 0xFFFF)
/* 14EFC20 80076EF0 18008600 */  mult       $a0, $a2
/* 14EFC24 80076EF4 0780073C */  lui        $a3, %hi(D_8006EDE0)
/* 14EFC28 80076EF8 E0EDE724 */  addiu      $a3, $a3, %lo(D_8006EDE0)
/* 14EFC2C 80076EFC 0780053C */  lui        $a1, %hi(D_8006C648)
/* 14EFC30 80076F00 48C6A58C */  lw         $a1, %lo(D_8006C648)($a1)
/* 14EFC34 80076F04 C31F0400 */  sra        $v1, $a0, 31
/* 14EFC38 80076F08 10480000 */  mfhi       $t1
/* 14EFC3C 80076F0C 21102401 */  addu       $v0, $t1, $a0
/* 14EFC40 80076F10 83110200 */  sra        $v0, $v0, 6
/* 14EFC44 80076F14 23184300 */  subu       $v1, $v0, $v1
/* 14EFC48 80076F18 00110300 */  sll        $v0, $v1, 4
/* 14EFC4C 80076F1C 23104300 */  subu       $v0, $v0, $v1
/* 14EFC50 80076F20 C0100200 */  sll        $v0, $v0, 3
/* 14EFC54 80076F24 23108200 */  subu       $v0, $a0, $v0
/* 14EFC58 80076F28 0000E3AC */  sw         $v1, 0x0($a3)
/* 14EFC5C 80076F2C 0780013C */  lui        $at, %hi(D_8006EDE4)
/* 14EFC60 80076F30 E4ED22AC */  sw         $v0, %lo(D_8006EDE4)($at)
/* 14EFC64 80076F34 2A104500 */  slt        $v0, $v0, $a1
/* 14EFC68 80076F38 18004010 */  beqz       $v0, .Lcutscene_67_80076F9C
/* 14EFC6C 80076F3C 00000000 */   nop
/* 14EFC70 80076F40 0780023C */  lui        $v0, %hi(D_8006EDE8)
/* 14EFC74 80076F44 E8ED428C */  lw         $v0, %lo(D_8006EDE8)($v0)
/* 14EFC78 80076F48 00000000 */  nop
/* 14EFC7C 80076F4C 2A104300 */  slt        $v0, $v0, $v1
/* 14EFC80 80076F50 12004010 */  beqz       $v0, .Lcutscene_67_80076F9C
/* 14EFC84 80076F54 23208500 */   subu      $a0, $a0, $a1
/* 14EFC88 80076F58 18008600 */  mult       $a0, $a2
/* 14EFC8C 80076F5C C31F0400 */  sra        $v1, $a0, 31
/* 14EFC90 80076F60 0780013C */  lui        $at, %hi(D_8006EDDC)
/* 14EFC94 80076F64 DCED24AC */  sw         $a0, %lo(D_8006EDDC)($at)
/* 14EFC98 80076F68 10480000 */  mfhi       $t1
/* 14EFC9C 80076F6C 21102401 */  addu       $v0, $t1, $a0
/* 14EFCA0 80076F70 83110200 */  sra        $v0, $v0, 6
/* 14EFCA4 80076F74 23104300 */  subu       $v0, $v0, $v1
/* 14EFCA8 80076F78 00190200 */  sll        $v1, $v0, 4
/* 14EFCAC 80076F7C 23186200 */  subu       $v1, $v1, $v0
/* 14EFCB0 80076F80 C0180300 */  sll        $v1, $v1, 3
/* 14EFCB4 80076F84 23208300 */  subu       $a0, $a0, $v1
/* 14EFCB8 80076F88 0000E2AC */  sw         $v0, 0x0($a3)
/* 14EFCBC 80076F8C 0780013C */  lui        $at, %hi(D_8006EDE4)
/* 14EFCC0 80076F90 E4ED24AC */  sw         $a0, %lo(D_8006EDE4)($at)
/* 14EFCC4 80076F94 B7EF000C */  jal        func_8003BEDC
/* 14EFCC8 80076F98 00000000 */   nop
.Lcutscene_67_80076F9C:
/* 14EFCCC 80076F9C 0780063C */  lui        $a2, %hi(D_8006EDE4)
/* 14EFCD0 80076FA0 E4EDC624 */  addiu      $a2, $a2, %lo(D_8006EDE4)
/* 14EFCD4 80076FA4 0000C38C */  lw         $v1, 0x0($a2)
/* 14EFCD8 80076FA8 00000000 */  nop
/* 14EFCDC 80076FAC 2A006010 */  beqz       $v1, .Lcutscene_67_80077058
/* 14EFCE0 80076FB0 00000000 */   nop
/* 14EFCE4 80076FB4 0780023C */  lui        $v0, %hi(D_8006C648)
/* 14EFCE8 80076FB8 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 14EFCEC 80076FBC 00000000 */  nop
/* 14EFCF0 80076FC0 2A104300 */  slt        $v0, $v0, $v1
/* 14EFCF4 80076FC4 24004014 */  bnez       $v0, .Lcutscene_67_80077058
/* 14EFCF8 80076FC8 00000000 */   nop
/* 14EFCFC 80076FCC 0780033C */  lui        $v1, %hi(D_8006EDE0)
/* 14EFD00 80076FD0 E0ED638C */  lw         $v1, %lo(D_8006EDE0)($v1)
/* 14EFD04 80076FD4 0780023C */  lui        $v0, %hi(D_8006EDF0)
/* 14EFD08 80076FD8 F0ED428C */  lw         $v0, %lo(D_8006EDF0)($v0)
/* 14EFD0C 80076FDC 01006524 */  addiu      $a1, $v1, 0x1
/* 14EFD10 80076FE0 2A10A200 */  slt        $v0, $a1, $v0
/* 14EFD14 80076FE4 1C004010 */  beqz       $v0, .Lcutscene_67_80077058
/* 14EFD18 80076FE8 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 14EFD1C 80076FEC 0780013C */  lui        $at, %hi(D_8006EDE8)
/* 14EFD20 80076FF0 E8ED22AC */  sw         $v0, %lo(D_8006EDE8)($at)
/* 14EFD24 80076FF4 0100A230 */  andi       $v0, $a1, 0x1
/* 14EFD28 80076FF8 80100200 */  sll        $v0, $v0, 2
/* 14EFD2C 80076FFC 2110C200 */  addu       $v0, $a2, $v0
/* 14EFD30 80077000 80180300 */  sll        $v1, $v1, 2
/* 14EFD34 80077004 0780043C */  lui        $a0, %hi(D_8006E470)
/* 14EFD38 80077008 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 14EFD3C 8007700C 2400458C */  lw         $a1, 0x24($v0)
/* 14EFD40 80077010 0780083C */  lui        $t0, %hi(D_8006EDF8)
/* 14EFD44 80077014 F8ED088D */  lw         $t0, %lo(D_8006EDF8)($t0)
/* 14EFD48 80077018 0780063C */  lui        $a2, %hi(D_8006C58C)
/* 14EFD4C 8007701C 8CC5C68C */  lw         $a2, %lo(D_8006C58C)($a2)
/* 14EFD50 80077020 21406800 */  addu       $t0, $v1, $t0
/* 14EFD54 80077024 40100600 */  sll        $v0, $a2, 1
/* 14EFD58 80077028 21104600 */  addu       $v0, $v0, $a2
/* 14EFD5C 8007702C C0100200 */  sll        $v0, $v0, 3
/* 14EFD60 80077030 0780063C */  lui        $a2, %hi(D_8006EDF4)
/* 14EFD64 80077034 F4EDC68C */  lw         $a2, %lo(D_8006EDF4)($a2)
/* 14EFD68 80077038 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 14EFD6C 8007703C 21082200 */  addu       $at, $at, $v0
/* 14EFD70 80077040 18D9228C */  lw         $v0, %lo(D_8006D8D8 + 0x40)($at)
/* 14EFD74 80077044 21186600 */  addu       $v1, $v1, $a2
/* 14EFD78 80077048 0400678C */  lw         $a3, 0x4($v1)
/* 14EFD7C 8007704C 0400068D */  lw         $a2, 0x4($t0)
/* 14EFD80 80077050 A041010C */  jal        func_80050680
/* 14EFD84 80077054 21384700 */   addu      $a3, $v0, $a3
.Lcutscene_67_80077058:
/* 14EFD88 80077058 0780033C */  lui        $v1, %hi(D_8006EDE4)
/* 14EFD8C 8007705C E4ED6324 */  addiu      $v1, $v1, %lo(D_8006EDE4)
/* 14EFD90 80077060 0000628C */  lw         $v0, 0x0($v1)
/* 14EFD94 80077064 00000000 */  nop
/* 14EFD98 80077068 FE004230 */  andi       $v0, $v0, 0xFE
/* 14EFD9C 8007706C 46DD010C */  jal        func_cutscene_67_80077518
/* 14EFDA0 80077070 000062AC */   sw        $v0, 0x0($v1)
.Lcutscene_67_80077074:
/* 14EFDA4 80077074 1400BF8F */  lw         $ra, 0x14($sp)
/* 14EFDA8 80077078 1000B08F */  lw         $s0, 0x10($sp)
/* 14EFDAC 8007707C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 14EFDB0 80077080 0800E003 */  jr         $ra
/* 14EFDB4 80077084 00000000 */   nop
.size func_cutscene_67_80076D14, . - func_cutscene_67_80076D14
