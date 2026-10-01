.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_75_80076E18
/* 24DC348 80076E18 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 24DC34C 80076E1C 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 24DC350 80076E20 21A88000 */  addu       $s5, $a0, $zero
/* 24DC354 80076E24 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 24DC358 80076E28 2188A002 */  addu       $s1, $s5, $zero
/* 24DC35C 80076E2C 3000BFAF */  sw         $ra, 0x30($sp)
/* 24DC360 80076E30 2800B4AF */  sw         $s4, 0x28($sp)
/* 24DC364 80076E34 2400B3AF */  sw         $s3, 0x24($sp)
/* 24DC368 80076E38 2000B2AF */  sw         $s2, 0x20($sp)
/* 24DC36C 80076E3C 1800B0AF */  sw         $s0, 0x18($sp)
/* 24DC370 80076E40 0000228E */  lw         $v0, 0x0($s1)
/* 24DC374 80076E44 04003126 */  addiu      $s1, $s1, 0x4
/* 24DC378 80076E48 40100200 */  sll        $v0, $v0, 1
/* 24DC37C 80076E4C 0780013C */  lui        $at, %hi(D_8006EDEC)
/* 24DC380 80076E50 ECED22AC */  sw         $v0, %lo(D_8006EDEC)($at)
/* 24DC384 80076E54 0000238E */  lw         $v1, 0x0($s1)
/* 24DC388 80076E58 04003126 */  addiu      $s1, $s1, 0x4
/* 24DC38C 80076E5C 0780013C */  lui        $at, %hi(D_8006EDF0)
/* 24DC390 80076E60 F0ED23AC */  sw         $v1, %lo(D_8006EDF0)($at)
/* 24DC394 80076E64 0000228E */  lw         $v0, 0x0($s1)
/* 24DC398 80076E68 04003126 */  addiu      $s1, $s1, 0x4
/* 24DC39C 80076E6C 80180300 */  sll        $v1, $v1, 2
/* 24DC3A0 80076E70 0780013C */  lui        $at, %hi(D_8006EDFC)
/* 24DC3A4 80076E74 FCED22AC */  sw         $v0, %lo(D_8006EDFC)($at)
/* 24DC3A8 80076E78 0000278E */  lw         $a3, 0x0($s1)
/* 24DC3AC 80076E7C 04003126 */  addiu      $s1, $s1, 0x4
/* 24DC3B0 80076E80 0780013C */  lui        $at, %hi(D_8006EE00)
/* 24DC3B4 80076E84 00EE27AC */  sw         $a3, %lo(D_8006EE00)($at)
/* 24DC3B8 80076E88 0000248E */  lw         $a0, 0x0($s1)
/* 24DC3BC 80076E8C 04003126 */  addiu      $s1, $s1, 0x4
/* 24DC3C0 80076E90 0780013C */  lui        $at, %hi(D_8006EDF4)
/* 24DC3C4 80076E94 F4ED31AC */  sw         $s1, %lo(D_8006EDF4)($at)
/* 24DC3C8 80076E98 21882302 */  addu       $s1, $s1, $v1
/* 24DC3CC 80076E9C 0780013C */  lui        $at, %hi(D_8006EDF8)
/* 24DC3D0 80076EA0 F8ED31AC */  sw         $s1, %lo(D_8006EDF8)($at)
/* 24DC3D4 80076EA4 2110A702 */  addu       $v0, $s5, $a3
/* 24DC3D8 80076EA8 0780013C */  lui        $at, %hi(D_8006EE08)
/* 24DC3DC 80076EAC 08EE22AC */  sw         $v0, %lo(D_8006EE08)($at)
/* 24DC3E0 80076EB0 21104400 */  addu       $v0, $v0, $a0
/* 24DC3E4 80076EB4 0780013C */  lui        $at, %hi(D_8006EE04)
/* 24DC3E8 80076EB8 04EE24AC */  sw         $a0, %lo(D_8006EE04)($at)
/* 24DC3EC 80076EBC 0780013C */  lui        $at, %hi(D_8006EE0C)
/* 24DC3F0 80076EC0 0CEE22AC */  sw         $v0, %lo(D_8006EE0C)($at)
/* 24DC3F4 80076EC4 1300A010 */  beqz       $a1, .Lcutscene_75_80076F14
/* 24DC3F8 80076EC8 21882302 */   addu      $s1, $s1, $v1
/* 24DC3FC 80076ECC 0008A526 */  addiu      $a1, $s5, 0x800
/* 24DC400 80076ED0 0780023C */  lui        $v0, %hi(D_8006EDF8)
/* 24DC404 80076ED4 F8ED428C */  lw         $v0, %lo(D_8006EDF8)($v0)
/* 24DC408 80076ED8 0780043C */  lui        $a0, %hi(D_8006E470)
/* 24DC40C 80076EDC 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 24DC410 80076EE0 0780033C */  lui        $v1, %hi(D_8006C58C)
/* 24DC414 80076EE4 8CC5638C */  lw         $v1, %lo(D_8006C58C)($v1)
/* 24DC418 80076EE8 0000468C */  lw         $a2, 0x0($v0)
/* 24DC41C 80076EEC 40100300 */  sll        $v0, $v1, 1
/* 24DC420 80076EF0 21104300 */  addu       $v0, $v0, $v1
/* 24DC424 80076EF4 C0100200 */  sll        $v0, $v0, 3
/* 24DC428 80076EF8 2130E600 */  addu       $a2, $a3, $a2
/* 24DC42C 80076EFC 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 24DC430 80076F00 21082200 */  addu       $at, $at, $v0
/* 24DC434 80076F04 18D9278C */  lw         $a3, %lo(D_8006D8D8 + 0x40)($at)
/* 24DC438 80076F08 00F8C624 */  addiu      $a2, $a2, -0x800
/* 24DC43C 80076F0C 5E41010C */  jal        CDLoadSync
/* 24DC440 80076F10 0008E724 */   addiu     $a3, $a3, 0x800
.Lcutscene_75_80076F14:
/* 24DC444 80076F14 0000228E */  lw         $v0, 0x0($s1)
/* 24DC448 80076F18 04003126 */  addiu      $s1, $s1, 0x4
/* 24DC44C 80076F1C 0780103C */  lui        $s0, %hi(D_8006EE2C)
/* 24DC450 80076F20 2CEE1026 */  addiu      $s0, $s0, %lo(D_8006EE2C)
/* 24DC454 80076F24 0780043C */  lui        $a0, %hi(D_8006EE00)
/* 24DC458 80076F28 00EE848C */  lw         $a0, %lo(D_8006EE00)($a0)
/* 24DC45C 80076F2C 0780063C */  lui        $a2, %hi(D_8006EDFC)
/* 24DC460 80076F30 FCEDC68C */  lw         $a2, %lo(D_8006EDFC)($a2)
/* 24DC464 80076F34 2120A402 */  addu       $a0, $s5, $a0
/* 24DC468 80076F38 80300600 */  sll        $a2, $a2, 2
/* 24DC46C 80076F3C 23208600 */  subu       $a0, $a0, $a2
/* 24DC470 80076F40 2110A202 */  addu       $v0, $s5, $v0
/* 24DC474 80076F44 0780013C */  lui        $at, %hi(D_8006C550)
/* 24DC478 80076F48 50C522AC */  sw         $v0, %lo(D_8006C550)($at)
/* 24DC47C 80076F4C 0780013C */  lui        $at, %hi(D_8006EE10)
/* 24DC480 80076F50 10EE24AC */  sw         $a0, %lo(D_8006EE10)($at)
/* 24DC484 80076F54 F539010C */  jal        func_8004E7D4
/* 24DC488 80076F58 21280002 */   addu      $a1, $s0, $zero
/* 24DC48C 80076F5C 0780023C */  lui        $v0, %hi(D_8006EDFC)
/* 24DC490 80076F60 FCED428C */  lw         $v0, %lo(D_8006EDFC)($v0)
/* 24DC494 80076F64 00000000 */  nop
/* 24DC498 80076F68 40004018 */  blez       $v0, .Lcutscene_75_8007706C
/* 24DC49C 80076F6C 21980000 */   addu      $s3, $zero, $zero
/* 24DC4A0 80076F70 21900000 */  addu       $s2, $zero, $zero
/* 24DC4A4 80076F74 21A00002 */  addu       $s4, $s0, $zero
.Lcutscene_75_80076F78:
/* 24DC4A8 80076F78 0000228E */  lw         $v0, 0x0($s1)
/* 24DC4AC 80076F7C 00000000 */  nop
/* 24DC4B0 80076F80 2120A202 */  addu       $a0, $s5, $v0
/* 24DC4B4 80076F84 000084AE */  sw         $a0, 0x0($s4)
/* 24DC4B8 80076F88 0000828C */  lw         $v0, 0x0($a0)
/* 24DC4BC 80076F8C 00000000 */  nop
/* 24DC4C0 80076F90 06004104 */  bgez       $v0, .Lcutscene_75_80076FAC
/* 24DC4C4 80076F94 04003126 */   addiu     $s1, $s1, 0x4
/* 24DC4C8 80076F98 21286002 */  addu       $a1, $s3, $zero
/* 24DC4CC 80076F9C E7AB000C */  jal        func_8002AF9C
/* 24DC4D0 80076FA0 8080063C */   lui       $a2, (0x80800000 >> 16)
/* 24DC4D4 80076FA4 F8DB0108 */  j          .Lcutscene_75_80076FE0
/* 24DC4D8 80076FA8 21280000 */   addu      $a1, $zero, $zero
.Lcutscene_75_80076FAC:
/* 24DC4DC 80076FAC 3400828C */  lw         $v0, 0x34($a0)
/* 24DC4E0 80076FB0 00000000 */  nop
/* 24DC4E4 80076FB4 02004010 */  beqz       $v0, .Lcutscene_75_80076FC0
/* 24DC4E8 80076FB8 21108200 */   addu      $v0, $a0, $v0
/* 24DC4EC 80076FBC 340082AC */  sw         $v0, 0x34($a0)
.Lcutscene_75_80076FC0:
/* 24DC4F0 80076FC0 0000838E */  lw         $v1, 0x0($s4)
/* 24DC4F4 80076FC4 00000000 */  nop
/* 24DC4F8 80076FC8 3800628C */  lw         $v0, 0x38($v1)
/* 24DC4FC 80076FCC 00000000 */  nop
/* 24DC500 80076FD0 02004010 */  beqz       $v0, .Lcutscene_75_80076FDC
/* 24DC504 80076FD4 21106200 */   addu      $v0, $v1, $v0
/* 24DC508 80076FD8 380062AC */  sw         $v0, 0x38($v1)
.Lcutscene_75_80076FDC:
/* 24DC50C 80076FDC 21280000 */  addu       $a1, $zero, $zero
.Lcutscene_75_80076FE0:
/* 24DC510 80076FE0 0780043C */  lui        $a0, %hi(D_8006C550)
/* 24DC514 80076FE4 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 24DC518 80076FE8 00000000 */  nop
/* 24DC51C 80076FEC 21204402 */  addu       $a0, $s2, $a0
/* 24DC520 80076FF0 38009084 */  lh         $s0, 0x38($a0)
/* 24DC524 80076FF4 E439010C */  jal        func_8004E790
/* 24DC528 80076FF8 58000624 */   addiu     $a2, $zero, 0x58
/* 24DC52C 80076FFC 20000224 */  addiu      $v0, $zero, 0x20
/* 24DC530 80077000 0780033C */  lui        $v1, %hi(D_8006C550)
/* 24DC534 80077004 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 24DC538 80077008 04009426 */  addiu      $s4, $s4, 0x4
/* 24DC53C 8007700C 21184302 */  addu       $v1, $s2, $v1
/* 24DC540 80077010 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 24DC544 80077014 0780043C */  lui        $a0, %hi(D_8006C550)
/* 24DC548 80077018 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 24DC54C 8007701C 40000224 */  addiu      $v0, $zero, 0x40
/* 24DC550 80077020 360073A4 */  sh         $s3, 0x36($v1)
/* 24DC554 80077024 21204402 */  addu       $a0, $s2, $a0
/* 24DC558 80077028 4E0082A0 */  sb         $v0, 0x4E($a0)
/* 24DC55C 8007702C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 24DC560 80077030 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 24DC564 80077034 FF000224 */  addiu      $v0, $zero, 0xFF
/* 24DC568 80077038 21184302 */  addu       $v1, $s2, $v1
/* 24DC56C 8007703C 520062A0 */  sb         $v0, 0x52($v1)
/* 24DC570 80077040 0780023C */  lui        $v0, %hi(D_8006C550)
/* 24DC574 80077044 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 24DC578 80077048 01007326 */  addiu      $s3, $s3, 0x1
/* 24DC57C 8007704C 21104202 */  addu       $v0, $s2, $v0
/* 24DC580 80077050 380050A4 */  sh         $s0, 0x38($v0)
/* 24DC584 80077054 0780023C */  lui        $v0, %hi(D_8006EDFC)
/* 24DC588 80077058 FCED428C */  lw         $v0, %lo(D_8006EDFC)($v0)
/* 24DC58C 8007705C 00000000 */  nop
/* 24DC590 80077060 2A106202 */  slt        $v0, $s3, $v0
/* 24DC594 80077064 C4FF4014 */  bnez       $v0, .Lcutscene_75_80076F78
/* 24DC598 80077068 58005226 */   addiu     $s2, $s2, 0x58
.Lcutscene_75_8007706C:
/* 24DC59C 8007706C 0780033C */  lui        $v1, %hi(D_8006EDFC)
/* 24DC5A0 80077070 FCED638C */  lw         $v1, %lo(D_8006EDFC)($v1)
/* 24DC5A4 80077074 00000000 */  nop
/* 24DC5A8 80077078 40100300 */  sll        $v0, $v1, 1
/* 24DC5AC 8007707C 21104300 */  addu       $v0, $v0, $v1
/* 24DC5B0 80077080 80100200 */  sll        $v0, $v0, 2
/* 24DC5B4 80077084 23104300 */  subu       $v0, $v0, $v1
/* 24DC5B8 80077088 0780033C */  lui        $v1, %hi(D_8006C550)
/* 24DC5BC 8007708C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 24DC5C0 80077090 C0100200 */  sll        $v0, $v0, 3
/* 24DC5C4 80077094 21104300 */  addu       $v0, $v0, $v1
/* 24DC5C8 80077098 FF000324 */  addiu      $v1, $zero, 0xFF
/* 24DC5CC 8007709C 480043A0 */  sb         $v1, 0x48($v0)
/* 24DC5D0 800770A0 3000BF8F */  lw         $ra, 0x30($sp)
/* 24DC5D4 800770A4 2C00B58F */  lw         $s5, 0x2C($sp)
/* 24DC5D8 800770A8 2800B48F */  lw         $s4, 0x28($sp)
/* 24DC5DC 800770AC 2400B38F */  lw         $s3, 0x24($sp)
/* 24DC5E0 800770B0 2000B28F */  lw         $s2, 0x20($sp)
/* 24DC5E4 800770B4 1C00B18F */  lw         $s1, 0x1C($sp)
/* 24DC5E8 800770B8 1800B08F */  lw         $s0, 0x18($sp)
/* 24DC5EC 800770BC 3800BD27 */  addiu      $sp, $sp, 0x38
/* 24DC5F0 800770C0 0800E003 */  jr         $ra
/* 24DC5F4 800770C4 00000000 */   nop
.size func_cutscene_75_80076E18, . - func_cutscene_75_80076E18
