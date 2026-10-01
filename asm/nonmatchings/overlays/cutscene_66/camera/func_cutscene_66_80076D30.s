.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_66_80076D30
/* 12CD260 80076D30 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 12CD264 80076D34 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 12CD268 80076D38 21A88000 */  addu       $s5, $a0, $zero
/* 12CD26C 80076D3C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 12CD270 80076D40 2188A002 */  addu       $s1, $s5, $zero
/* 12CD274 80076D44 3000BFAF */  sw         $ra, 0x30($sp)
/* 12CD278 80076D48 2800B4AF */  sw         $s4, 0x28($sp)
/* 12CD27C 80076D4C 2400B3AF */  sw         $s3, 0x24($sp)
/* 12CD280 80076D50 2000B2AF */  sw         $s2, 0x20($sp)
/* 12CD284 80076D54 1800B0AF */  sw         $s0, 0x18($sp)
/* 12CD288 80076D58 0000228E */  lw         $v0, 0x0($s1)
/* 12CD28C 80076D5C 04003126 */  addiu      $s1, $s1, 0x4
/* 12CD290 80076D60 40100200 */  sll        $v0, $v0, 1
/* 12CD294 80076D64 0780013C */  lui        $at, %hi(D_8006EDEC)
/* 12CD298 80076D68 ECED22AC */  sw         $v0, %lo(D_8006EDEC)($at)
/* 12CD29C 80076D6C 0000238E */  lw         $v1, 0x0($s1)
/* 12CD2A0 80076D70 04003126 */  addiu      $s1, $s1, 0x4
/* 12CD2A4 80076D74 0780013C */  lui        $at, %hi(D_8006EDF0)
/* 12CD2A8 80076D78 F0ED23AC */  sw         $v1, %lo(D_8006EDF0)($at)
/* 12CD2AC 80076D7C 0000228E */  lw         $v0, 0x0($s1)
/* 12CD2B0 80076D80 04003126 */  addiu      $s1, $s1, 0x4
/* 12CD2B4 80076D84 80180300 */  sll        $v1, $v1, 2
/* 12CD2B8 80076D88 0780013C */  lui        $at, %hi(D_8006EDFC)
/* 12CD2BC 80076D8C FCED22AC */  sw         $v0, %lo(D_8006EDFC)($at)
/* 12CD2C0 80076D90 0000278E */  lw         $a3, 0x0($s1)
/* 12CD2C4 80076D94 04003126 */  addiu      $s1, $s1, 0x4
/* 12CD2C8 80076D98 0780013C */  lui        $at, %hi(D_8006EE00)
/* 12CD2CC 80076D9C 00EE27AC */  sw         $a3, %lo(D_8006EE00)($at)
/* 12CD2D0 80076DA0 0000248E */  lw         $a0, 0x0($s1)
/* 12CD2D4 80076DA4 04003126 */  addiu      $s1, $s1, 0x4
/* 12CD2D8 80076DA8 0780013C */  lui        $at, %hi(D_8006EDF4)
/* 12CD2DC 80076DAC F4ED31AC */  sw         $s1, %lo(D_8006EDF4)($at)
/* 12CD2E0 80076DB0 21882302 */  addu       $s1, $s1, $v1
/* 12CD2E4 80076DB4 0780013C */  lui        $at, %hi(D_8006EDF8)
/* 12CD2E8 80076DB8 F8ED31AC */  sw         $s1, %lo(D_8006EDF8)($at)
/* 12CD2EC 80076DBC 2110A702 */  addu       $v0, $s5, $a3
/* 12CD2F0 80076DC0 0780013C */  lui        $at, %hi(D_8006EE08)
/* 12CD2F4 80076DC4 08EE22AC */  sw         $v0, %lo(D_8006EE08)($at)
/* 12CD2F8 80076DC8 21104400 */  addu       $v0, $v0, $a0
/* 12CD2FC 80076DCC 0780013C */  lui        $at, %hi(D_8006EE04)
/* 12CD300 80076DD0 04EE24AC */  sw         $a0, %lo(D_8006EE04)($at)
/* 12CD304 80076DD4 0780013C */  lui        $at, %hi(D_8006EE0C)
/* 12CD308 80076DD8 0CEE22AC */  sw         $v0, %lo(D_8006EE0C)($at)
/* 12CD30C 80076DDC 1300A010 */  beqz       $a1, .Lcutscene_66_80076E2C
/* 12CD310 80076DE0 21882302 */   addu      $s1, $s1, $v1
/* 12CD314 80076DE4 0008A526 */  addiu      $a1, $s5, 0x800
/* 12CD318 80076DE8 0780023C */  lui        $v0, %hi(D_8006EDF8)
/* 12CD31C 80076DEC F8ED428C */  lw         $v0, %lo(D_8006EDF8)($v0)
/* 12CD320 80076DF0 0780043C */  lui        $a0, %hi(D_8006E470)
/* 12CD324 80076DF4 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 12CD328 80076DF8 0780033C */  lui        $v1, %hi(D_8006C58C)
/* 12CD32C 80076DFC 8CC5638C */  lw         $v1, %lo(D_8006C58C)($v1)
/* 12CD330 80076E00 0000468C */  lw         $a2, 0x0($v0)
/* 12CD334 80076E04 40100300 */  sll        $v0, $v1, 1
/* 12CD338 80076E08 21104300 */  addu       $v0, $v0, $v1
/* 12CD33C 80076E0C C0100200 */  sll        $v0, $v0, 3
/* 12CD340 80076E10 2130E600 */  addu       $a2, $a3, $a2
/* 12CD344 80076E14 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 12CD348 80076E18 21082200 */  addu       $at, $at, $v0
/* 12CD34C 80076E1C 18D9278C */  lw         $a3, %lo(D_8006D8D8 + 0x40)($at)
/* 12CD350 80076E20 00F8C624 */  addiu      $a2, $a2, -0x800
/* 12CD354 80076E24 5E41010C */  jal        CDLoadSync
/* 12CD358 80076E28 0008E724 */   addiu     $a3, $a3, 0x800
.Lcutscene_66_80076E2C:
/* 12CD35C 80076E2C 0000228E */  lw         $v0, 0x0($s1)
/* 12CD360 80076E30 04003126 */  addiu      $s1, $s1, 0x4
/* 12CD364 80076E34 0780103C */  lui        $s0, %hi(D_8006EE2C)
/* 12CD368 80076E38 2CEE1026 */  addiu      $s0, $s0, %lo(D_8006EE2C)
/* 12CD36C 80076E3C 0780043C */  lui        $a0, %hi(D_8006EE00)
/* 12CD370 80076E40 00EE848C */  lw         $a0, %lo(D_8006EE00)($a0)
/* 12CD374 80076E44 0780063C */  lui        $a2, %hi(D_8006EDFC)
/* 12CD378 80076E48 FCEDC68C */  lw         $a2, %lo(D_8006EDFC)($a2)
/* 12CD37C 80076E4C 2120A402 */  addu       $a0, $s5, $a0
/* 12CD380 80076E50 80300600 */  sll        $a2, $a2, 2
/* 12CD384 80076E54 23208600 */  subu       $a0, $a0, $a2
/* 12CD388 80076E58 2110A202 */  addu       $v0, $s5, $v0
/* 12CD38C 80076E5C 0780013C */  lui        $at, %hi(D_8006C550)
/* 12CD390 80076E60 50C522AC */  sw         $v0, %lo(D_8006C550)($at)
/* 12CD394 80076E64 0780013C */  lui        $at, %hi(D_8006EE10)
/* 12CD398 80076E68 10EE24AC */  sw         $a0, %lo(D_8006EE10)($at)
/* 12CD39C 80076E6C F539010C */  jal        func_8004E7D4
/* 12CD3A0 80076E70 21280002 */   addu      $a1, $s0, $zero
/* 12CD3A4 80076E74 0780023C */  lui        $v0, %hi(D_8006EDFC)
/* 12CD3A8 80076E78 FCED428C */  lw         $v0, %lo(D_8006EDFC)($v0)
/* 12CD3AC 80076E7C 00000000 */  nop
/* 12CD3B0 80076E80 40004018 */  blez       $v0, .Lcutscene_66_80076F84
/* 12CD3B4 80076E84 21980000 */   addu      $s3, $zero, $zero
/* 12CD3B8 80076E88 21900000 */  addu       $s2, $zero, $zero
/* 12CD3BC 80076E8C 21A00002 */  addu       $s4, $s0, $zero
.Lcutscene_66_80076E90:
/* 12CD3C0 80076E90 0000228E */  lw         $v0, 0x0($s1)
/* 12CD3C4 80076E94 00000000 */  nop
/* 12CD3C8 80076E98 2120A202 */  addu       $a0, $s5, $v0
/* 12CD3CC 80076E9C 000084AE */  sw         $a0, 0x0($s4)
/* 12CD3D0 80076EA0 0000828C */  lw         $v0, 0x0($a0)
/* 12CD3D4 80076EA4 00000000 */  nop
/* 12CD3D8 80076EA8 06004104 */  bgez       $v0, .Lcutscene_66_80076EC4
/* 12CD3DC 80076EAC 04003126 */   addiu     $s1, $s1, 0x4
/* 12CD3E0 80076EB0 21286002 */  addu       $a1, $s3, $zero
/* 12CD3E4 80076EB4 E7AB000C */  jal        func_8002AF9C
/* 12CD3E8 80076EB8 8080063C */   lui       $a2, (0x80800000 >> 16)
/* 12CD3EC 80076EBC BEDB0108 */  j          .Lcutscene_66_80076EF8
/* 12CD3F0 80076EC0 21280000 */   addu      $a1, $zero, $zero
.Lcutscene_66_80076EC4:
/* 12CD3F4 80076EC4 3400828C */  lw         $v0, 0x34($a0)
/* 12CD3F8 80076EC8 00000000 */  nop
/* 12CD3FC 80076ECC 02004010 */  beqz       $v0, .Lcutscene_66_80076ED8
/* 12CD400 80076ED0 21108200 */   addu      $v0, $a0, $v0
/* 12CD404 80076ED4 340082AC */  sw         $v0, 0x34($a0)
.Lcutscene_66_80076ED8:
/* 12CD408 80076ED8 0000838E */  lw         $v1, 0x0($s4)
/* 12CD40C 80076EDC 00000000 */  nop
/* 12CD410 80076EE0 3800628C */  lw         $v0, 0x38($v1)
/* 12CD414 80076EE4 00000000 */  nop
/* 12CD418 80076EE8 02004010 */  beqz       $v0, .Lcutscene_66_80076EF4
/* 12CD41C 80076EEC 21106200 */   addu      $v0, $v1, $v0
/* 12CD420 80076EF0 380062AC */  sw         $v0, 0x38($v1)
.Lcutscene_66_80076EF4:
/* 12CD424 80076EF4 21280000 */  addu       $a1, $zero, $zero
.Lcutscene_66_80076EF8:
/* 12CD428 80076EF8 0780043C */  lui        $a0, %hi(D_8006C550)
/* 12CD42C 80076EFC 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 12CD430 80076F00 00000000 */  nop
/* 12CD434 80076F04 21204402 */  addu       $a0, $s2, $a0
/* 12CD438 80076F08 38009084 */  lh         $s0, 0x38($a0)
/* 12CD43C 80076F0C E439010C */  jal        func_8004E790
/* 12CD440 80076F10 58000624 */   addiu     $a2, $zero, 0x58
/* 12CD444 80076F14 20000224 */  addiu      $v0, $zero, 0x20
/* 12CD448 80076F18 0780033C */  lui        $v1, %hi(D_8006C550)
/* 12CD44C 80076F1C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 12CD450 80076F20 04009426 */  addiu      $s4, $s4, 0x4
/* 12CD454 80076F24 21184302 */  addu       $v1, $s2, $v1
/* 12CD458 80076F28 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 12CD45C 80076F2C 0780043C */  lui        $a0, %hi(D_8006C550)
/* 12CD460 80076F30 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 12CD464 80076F34 40000224 */  addiu      $v0, $zero, 0x40
/* 12CD468 80076F38 360073A4 */  sh         $s3, 0x36($v1)
/* 12CD46C 80076F3C 21204402 */  addu       $a0, $s2, $a0
/* 12CD470 80076F40 4E0082A0 */  sb         $v0, 0x4E($a0)
/* 12CD474 80076F44 0780033C */  lui        $v1, %hi(D_8006C550)
/* 12CD478 80076F48 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 12CD47C 80076F4C FF000224 */  addiu      $v0, $zero, 0xFF
/* 12CD480 80076F50 21184302 */  addu       $v1, $s2, $v1
/* 12CD484 80076F54 520062A0 */  sb         $v0, 0x52($v1)
/* 12CD488 80076F58 0780023C */  lui        $v0, %hi(D_8006C550)
/* 12CD48C 80076F5C 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 12CD490 80076F60 01007326 */  addiu      $s3, $s3, 0x1
/* 12CD494 80076F64 21104202 */  addu       $v0, $s2, $v0
/* 12CD498 80076F68 380050A4 */  sh         $s0, 0x38($v0)
/* 12CD49C 80076F6C 0780023C */  lui        $v0, %hi(D_8006EDFC)
/* 12CD4A0 80076F70 FCED428C */  lw         $v0, %lo(D_8006EDFC)($v0)
/* 12CD4A4 80076F74 00000000 */  nop
/* 12CD4A8 80076F78 2A106202 */  slt        $v0, $s3, $v0
/* 12CD4AC 80076F7C C4FF4014 */  bnez       $v0, .Lcutscene_66_80076E90
/* 12CD4B0 80076F80 58005226 */   addiu     $s2, $s2, 0x58
.Lcutscene_66_80076F84:
/* 12CD4B4 80076F84 0780033C */  lui        $v1, %hi(D_8006EDFC)
/* 12CD4B8 80076F88 FCED638C */  lw         $v1, %lo(D_8006EDFC)($v1)
/* 12CD4BC 80076F8C 00000000 */  nop
/* 12CD4C0 80076F90 40100300 */  sll        $v0, $v1, 1
/* 12CD4C4 80076F94 21104300 */  addu       $v0, $v0, $v1
/* 12CD4C8 80076F98 80100200 */  sll        $v0, $v0, 2
/* 12CD4CC 80076F9C 23104300 */  subu       $v0, $v0, $v1
/* 12CD4D0 80076FA0 0780033C */  lui        $v1, %hi(D_8006C550)
/* 12CD4D4 80076FA4 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 12CD4D8 80076FA8 C0100200 */  sll        $v0, $v0, 3
/* 12CD4DC 80076FAC 21104300 */  addu       $v0, $v0, $v1
/* 12CD4E0 80076FB0 FF000324 */  addiu      $v1, $zero, 0xFF
/* 12CD4E4 80076FB4 480043A0 */  sb         $v1, 0x48($v0)
/* 12CD4E8 80076FB8 3000BF8F */  lw         $ra, 0x30($sp)
/* 12CD4EC 80076FBC 2C00B58F */  lw         $s5, 0x2C($sp)
/* 12CD4F0 80076FC0 2800B48F */  lw         $s4, 0x28($sp)
/* 12CD4F4 80076FC4 2400B38F */  lw         $s3, 0x24($sp)
/* 12CD4F8 80076FC8 2000B28F */  lw         $s2, 0x20($sp)
/* 12CD4FC 80076FCC 1C00B18F */  lw         $s1, 0x1C($sp)
/* 12CD500 80076FD0 1800B08F */  lw         $s0, 0x18($sp)
/* 12CD504 80076FD4 3800BD27 */  addiu      $sp, $sp, 0x38
/* 12CD508 80076FD8 0800E003 */  jr         $ra
/* 12CD50C 80076FDC 00000000 */   nop
.size func_cutscene_66_80076D30, . - func_cutscene_66_80076D30
