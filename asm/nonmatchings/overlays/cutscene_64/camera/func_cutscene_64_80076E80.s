.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_64_80076E80
/* BCC3B0 80076E80 0780023C */  lui        $v0, %hi(D_8006C58C)
/* BCC3B4 80076E84 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* BCC3B8 80076E88 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BCC3BC 80076E8C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* BCC3C0 80076E90 0780113C */  lui        $s1, %hi(D_8006EDD8)
/* BCC3C4 80076E94 D8ED3126 */  addiu      $s1, $s1, %lo(D_8006EDD8)
/* BCC3C8 80076E98 2400BFAF */  sw         $ra, 0x24($sp)
/* BCC3CC 80076E9C 2000B2AF */  sw         $s2, 0x20($sp)
/* BCC3D0 80076EA0 1800B0AF */  sw         $s0, 0x18($sp)
/* BCC3D4 80076EA4 000024AE */  sw         $a0, 0x0($s1)
/* BCC3D8 80076EA8 40180200 */  sll        $v1, $v0, 1
/* BCC3DC 80076EAC 21186200 */  addu       $v1, $v1, $v0
/* BCC3E0 80076EB0 C0180300 */  sll        $v1, $v1, 3
/* BCC3E4 80076EB4 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x44)
/* BCC3E8 80076EB8 21082300 */  addu       $at, $at, $v1
/* BCC3EC 80076EBC 1CD9228C */  lw         $v0, %lo(D_8006D8D8 + 0x44)($at)
/* BCC3F0 80076EC0 00000000 */  nop
/* BCC3F4 80076EC4 03004014 */  bnez       $v0, .Lcutscene_64_80076ED4
/* BCC3F8 80076EC8 00080624 */   addiu     $a2, $zero, 0x800
/* BCC3FC 80076ECC 2FDC0108 */  j          .Lcutscene_64_800770BC
/* BCC400 80076ED0 21100000 */   addu      $v0, $zero, $zero
.Lcutscene_64_80076ED4:
/* BCC404 80076ED4 0780043C */  lui        $a0, %hi(D_8006E470)
/* BCC408 80076ED8 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* BCC40C 80076EDC 0780103C */  lui        $s0, %hi(D_800722CC)
/* BCC410 80076EE0 CC22108E */  lw         $s0, %lo(D_800722CC)($s0)
/* BCC414 80076EE4 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* BCC418 80076EE8 21082300 */  addu       $at, $at, $v1
/* BCC41C 80076EEC 18D9278C */  lw         $a3, %lo(D_8006D8D8 + 0x40)($at)
/* BCC420 80076EF0 5E41010C */  jal        CDLoadSync
/* BCC424 80076EF4 21280002 */   addu      $a1, $s0, $zero
/* BCC428 80076EF8 0100043C */  lui        $a0, (0x1C000 >> 16)
/* BCC42C 80076EFC 06000224 */  addiu      $v0, $zero, 0x6
/* BCC430 80076F00 01001224 */  addiu      $s2, $zero, 0x1
/* BCC434 80076F04 0780013C */  lui        $at, %hi(D_8006E344)
/* BCC438 80076F08 44E322AC */  sw         $v0, %lo(D_8006E344)($at)
/* BCC43C 80076F0C 0780013C */  lui        $at, %hi(D_8006C718)
/* BCC440 80076F10 18C732AC */  sw         $s2, %lo(D_8006C718)($at)
/* BCC444 80076F14 C47E000C */  jal        func_8001FB10
/* BCC448 80076F18 00C08434 */   ori       $a0, $a0, (0x1C000 & 0xFFFF)
/* BCC44C 80076F1C 21200002 */  addu       $a0, $s0, $zero
/* BCC450 80076F20 7ADD010C */  jal        func_cutscene_64_800775E8
/* BCC454 80076F24 01000524 */   addiu     $a1, $zero, 0x1
/* BCC458 80076F28 21280000 */  addu       $a1, $zero, $zero
/* BCC45C 80076F2C 0780043C */  lui        $a0, %hi(D_8006EE08)
/* BCC460 80076F30 08EE848C */  lw         $a0, %lo(D_8006EE08)($a0)
/* BCC464 80076F34 0780013C */  lui        $at, %hi(D_8006EDDC)
/* BCC468 80076F38 DCED20AC */  sw         $zero, %lo(D_8006EDDC)($at)
/* BCC46C 80076F3C 0780013C */  lui        $at, %hi(D_8006EDE0)
/* BCC470 80076F40 E0ED20AC */  sw         $zero, %lo(D_8006EDE0)($at)
/* BCC474 80076F44 26DE010C */  jal        func_cutscene_64_80077898
/* BCC478 80076F48 01000624 */   addiu     $a2, $zero, 0x1
/* BCC47C 80076F4C 0780033C */  lui        $v1, %hi(D_8006E33C)
/* BCC480 80076F50 3CE36390 */  lbu        $v1, %lo(D_8006E33C)($v1)
/* BCC484 80076F54 0780043C */  lui        $a0, %hi(D_8006E33D)
/* BCC488 80076F58 3DE38490 */  lbu        $a0, %lo(D_8006E33D)($a0)
/* BCC48C 80076F5C 0780023C */  lui        $v0, %hi(D_8006C5BC)
/* BCC490 80076F60 BCC5428C */  lw         $v0, %lo(D_8006C5BC)($v0)
/* BCC494 80076F64 0780053C */  lui        $a1, %hi(D_8006E33E)
/* BCC498 80076F68 3EE3A590 */  lbu        $a1, %lo(D_8006E33E)($a1)
/* BCC49C 80076F6C 3C004228 */  slti       $v0, $v0, 0x3C
/* BCC4A0 80076F70 0780013C */  lui        $at, %hi(D_8006FC15)
/* BCC4A4 80076F74 15FC23A0 */  sb         $v1, %lo(D_8006FC15)($at)
/* BCC4A8 80076F78 0780013C */  lui        $at, %hi(D_8006FC16)
/* BCC4AC 80076F7C 16FC24A0 */  sb         $a0, %lo(D_8006FC16)($at)
/* BCC4B0 80076F80 0780013C */  lui        $at, %hi(D_8006FC17)
/* BCC4B4 80076F84 17FC25A0 */  sb         $a1, %lo(D_8006FC17)($at)
/* BCC4B8 80076F88 0780013C */  lui        $at, %hi(D_8006FC89)
/* BCC4BC 80076F8C 89FC23A0 */  sb         $v1, %lo(D_8006FC89)($at)
/* BCC4C0 80076F90 0780013C */  lui        $at, %hi(D_8006FC8A)
/* BCC4C4 80076F94 8AFC24A0 */  sb         $a0, %lo(D_8006FC8A)($at)
/* BCC4C8 80076F98 0780013C */  lui        $at, %hi(D_8006FC8B)
/* BCC4CC 80076F9C 8BFC25A0 */  sb         $a1, %lo(D_8006FC8B)($at)
/* BCC4D0 80076FA0 0E004014 */  bnez       $v0, .Lcutscene_64_80076FDC
/* BCC4D4 80076FA4 00000000 */   nop
/* BCC4D8 80076FA8 0780043C */  lui        $a0, %hi(D_800722D0)
/* BCC4DC 80076FAC D022848C */  lw         $a0, %lo(D_800722D0)($a0)
/* BCC4E0 80076FB0 DAAD000C */  jal        func_8002B768
/* BCC4E4 80076FB4 FCDF8424 */   addiu     $a0, $a0, -0x2004
/* BCC4E8 80076FB8 21280000 */  addu       $a1, $zero, $zero
/* BCC4EC 80076FBC 0780043C */  lui        $a0, %hi(D_8006C554)
/* BCC4F0 80076FC0 54C5848C */  lw         $a0, %lo(D_8006C554)($a0)
/* BCC4F4 80076FC4 00000000 */  nop
/* BCC4F8 80076FC8 00F08424 */  addiu      $a0, $a0, -0x1000
/* BCC4FC 80076FCC 0780013C */  lui        $at, %hi(D_8006C7E0)
/* BCC500 80076FD0 E0C724AC */  sw         $a0, %lo(D_8006C7E0)($at)
/* BCC504 80076FD4 E439010C */  jal        func_8004E790
/* BCC508 80076FD8 00100624 */   addiu     $a2, $zero, 0x1000
.Lcutscene_64_80076FDC:
/* BCC50C 80076FDC 40002426 */  addiu      $a0, $s1, 0x40
/* BCC510 80076FE0 0780053C */  lui        $a1, %hi(D_8006C6A0)
/* BCC514 80076FE4 A0C6A58C */  lw         $a1, %lo(D_8006C6A0)($a1)
/* BCC518 80076FE8 F539010C */  jal        func_8004E7D4
/* BCC51C 80076FEC 14000624 */   addiu     $a2, $zero, 0x14
/* BCC520 80076FF0 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* BCC524 80076FF4 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* BCC528 80076FF8 10100224 */  addiu      $v0, $zero, 0x1010
/* BCC52C 80076FFC 000062AC */  sw         $v0, 0x0($v1)
/* BCC530 80077000 FF2F0224 */  addiu      $v0, $zero, 0x2FFF
/* BCC534 80077004 060062A4 */  sh         $v0, 0x6($v1)
/* BCC538 80077008 F8070224 */  addiu      $v0, $zero, 0x7F8
/* BCC53C 8007700C 0C0062A4 */  sh         $v0, 0xC($v1)
/* BCC540 80077010 0E0062A4 */  sh         $v0, 0xE($v1)
/* BCC544 80077014 01000224 */  addiu      $v0, $zero, 0x1
/* BCC548 80077018 100062A0 */  sb         $v0, 0x10($v1)
/* BCC54C 8007701C 0780043C */  lui        $a0, %hi(D_8006C704)
/* BCC550 80077020 04C7848C */  lw         $a0, %lo(D_8006C704)($a0)
/* BCC554 80077024 FFFF0224 */  addiu      $v0, $zero, -0x1
/* BCC558 80077028 0780013C */  lui        $at, %hi(D_8006EE14)
/* BCC55C 8007702C 14EE22AC */  sw         $v0, %lo(D_8006EE14)($at)
/* BCC560 80077030 0780023C */  lui        $v0, %hi(D_8006C578)
/* BCC564 80077034 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* BCC568 80077038 21280000 */  addu       $a1, $zero, $zero
/* BCC56C 8007703C 0780013C */  lui        $at, %hi(D_80070328 + 0x288)
/* BCC570 80077040 B00532AC */  sw         $s2, %lo(D_80070328 + 0x288)($at)
/* BCC574 80077044 01004224 */  addiu      $v0, $v0, 0x1
/* BCC578 80077048 40300200 */  sll        $a2, $v0, 1
/* BCC57C 8007704C 2130C200 */  addu       $a2, $a2, $v0
/* BCC580 80077050 80300600 */  sll        $a2, $a2, 2
/* BCC584 80077054 2330C200 */  subu       $a2, $a2, $v0
/* BCC588 80077058 0780013C */  lui        $at, %hi(D_8006C610)
/* BCC58C 8007705C 10C624AC */  sw         $a0, %lo(D_8006C610)($at)
/* BCC590 80077060 E439010C */  jal        func_8004E790
/* BCC594 80077064 C0300600 */   sll       $a2, $a2, 3
/* BCC598 80077068 0780023C */  lui        $v0, %hi(D_8006C578)
/* BCC59C 8007706C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* BCC5A0 80077070 00000000 */  nop
/* BCC5A4 80077074 01004224 */  addiu      $v0, $v0, 0x1
/* BCC5A8 80077078 0F004018 */  blez       $v0, .Lcutscene_64_800770B8
/* BCC5AC 8007707C 21180000 */   addu      $v1, $zero, $zero
/* BCC5B0 80077080 FF000524 */  addiu      $a1, $zero, 0xFF
/* BCC5B4 80077084 21200000 */  addu       $a0, $zero, $zero
.Lcutscene_64_80077088:
/* BCC5B8 80077088 0780023C */  lui        $v0, %hi(D_8006C610)
/* BCC5BC 8007708C 10C6428C */  lw         $v0, %lo(D_8006C610)($v0)
/* BCC5C0 80077090 01006324 */  addiu      $v1, $v1, 0x1
/* BCC5C4 80077094 21108200 */  addu       $v0, $a0, $v0
/* BCC5C8 80077098 480045A0 */  sb         $a1, 0x48($v0)
/* BCC5CC 8007709C 0780023C */  lui        $v0, %hi(D_8006C578)
/* BCC5D0 800770A0 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* BCC5D4 800770A4 00000000 */  nop
/* BCC5D8 800770A8 01004224 */  addiu      $v0, $v0, 0x1
/* BCC5DC 800770AC 2A106200 */  slt        $v0, $v1, $v0
/* BCC5E0 800770B0 F5FF4014 */  bnez       $v0, .Lcutscene_64_80077088
/* BCC5E4 800770B4 58008424 */   addiu     $a0, $a0, 0x58
.Lcutscene_64_800770B8:
/* BCC5E8 800770B8 01000224 */  addiu      $v0, $zero, 0x1
.Lcutscene_64_800770BC:
/* BCC5EC 800770BC 2400BF8F */  lw         $ra, 0x24($sp)
/* BCC5F0 800770C0 2000B28F */  lw         $s2, 0x20($sp)
/* BCC5F4 800770C4 1C00B18F */  lw         $s1, 0x1C($sp)
/* BCC5F8 800770C8 1800B08F */  lw         $s0, 0x18($sp)
/* BCC5FC 800770CC 2800BD27 */  addiu      $sp, $sp, 0x28
/* BCC600 800770D0 0800E003 */  jr         $ra
/* BCC604 800770D4 00000000 */   nop
.size func_cutscene_64_80076E80, . - func_cutscene_64_80076E80
