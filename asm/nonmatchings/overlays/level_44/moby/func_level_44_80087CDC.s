.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_44_80087CDC
/* 8B5B20C 80087CDC 60FFBD27 */  addiu      $sp, $sp, -0xA0
/* 8B5B210 80087CE0 7C00B1AF */  sw         $s1, 0x7C($sp)
/* 8B5B214 80087CE4 21888000 */  addu       $s1, $a0, $zero
/* 8B5B218 80087CE8 8800B4AF */  sw         $s4, 0x88($sp)
/* 8B5B21C 80087CEC 21A0A000 */  addu       $s4, $a1, $zero
/* 8B5B220 80087CF0 9C00BFAF */  sw         $ra, 0x9C($sp)
/* 8B5B224 80087CF4 9800BEAF */  sw         $fp, 0x98($sp)
/* 8B5B228 80087CF8 9400B7AF */  sw         $s7, 0x94($sp)
/* 8B5B22C 80087CFC 9000B6AF */  sw         $s6, 0x90($sp)
/* 8B5B230 80087D00 8C00B5AF */  sw         $s5, 0x8C($sp)
/* 8B5B234 80087D04 8400B3AF */  sw         $s3, 0x84($sp)
/* 8B5B238 80087D08 8000B2AF */  sw         $s2, 0x80($sp)
/* 8B5B23C 80087D0C 9F56010C */  jal        func_80055A7C
/* 8B5B240 80087D10 7800B0AF */   sw        $s0, 0x78($sp)
/* 8B5B244 80087D14 21A84000 */  addu       $s5, $v0, $zero
/* 8B5B248 80087D18 0300A016 */  bnez       $s5, .Llevel_44_80087D28
/* 8B5B24C 80087D1C 2120A002 */   addu      $a0, $s5, $zero
/* 8B5B250 80087D20 A4230208 */  j          .Llevel_44_80088E90
/* 8B5B254 80087D24 21100000 */   addu      $v0, $zero, $zero
.Llevel_44_80087D28:
/* 8B5B258 80087D28 21280000 */  addu       $a1, $zero, $zero
/* 8B5B25C 80087D2C 0000B08E */  lw         $s0, 0x0($s5)
/* 8B5B260 80087D30 E439010C */  jal        func_8004E790
/* 8B5B264 80087D34 58000624 */   addiu     $a2, $zero, 0x58
/* 8B5B268 80087D38 21280000 */  addu       $a1, $zero, $zero
/* 8B5B26C 80087D3C 18000624 */  addiu      $a2, $zero, 0x18
/* 8B5B270 80087D40 21200002 */  addu       $a0, $s0, $zero
/* 8B5B274 80087D44 E439010C */  jal        func_8004E790
/* 8B5B278 80087D48 0000A4AE */   sw        $a0, 0x0($s5)
/* 8B5B27C 80087D4C 16008012 */  beqz       $s4, .Llevel_44_80087DA8
/* 8B5B280 80087D50 3600B1A6 */   sh        $s1, 0x36($s5)
/* 8B5B284 80087D54 0780043C */  lui        $a0, %hi(D_8006C550)
/* 8B5B288 80087D58 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 8B5B28C 80087D5C 00000000 */  nop
/* 8B5B290 80087D60 23208402 */  subu       $a0, $s4, $a0
/* 8B5B294 80087D64 40190400 */  sll        $v1, $a0, 5
/* 8B5B298 80087D68 23186400 */  subu       $v1, $v1, $a0
/* 8B5B29C 80087D6C 40190300 */  sll        $v1, $v1, 5
/* 8B5B2A0 80087D70 21186400 */  addu       $v1, $v1, $a0
/* 8B5B2A4 80087D74 C0100300 */  sll        $v0, $v1, 3
/* 8B5B2A8 80087D78 21186200 */  addu       $v1, $v1, $v0
/* 8B5B2AC 80087D7C C0130300 */  sll        $v0, $v1, 15
/* 8B5B2B0 80087D80 23104300 */  subu       $v0, $v0, $v1
/* 8B5B2B4 80087D84 80100200 */  sll        $v0, $v0, 2
/* 8B5B2B8 80087D88 21104400 */  addu       $v0, $v0, $a0
/* 8B5B2BC 80087D8C 23100200 */  negu       $v0, $v0
/* 8B5B2C0 80087D90 C3180200 */  sra        $v1, $v0, 3
/* 8B5B2C4 80087D94 0001622C */  sltiu      $v0, $v1, 0x100
/* 8B5B2C8 80087D98 04004010 */  beqz       $v0, .Llevel_44_80087DAC
/* 8B5B2CC 80087D9C FF000224 */   addiu     $v0, $zero, 0xFF
/* 8B5B2D0 80087DA0 6C1F0208 */  j          .Llevel_44_80087DB0
/* 8B5B2D4 80087DA4 3A00A3A2 */   sb        $v1, 0x3A($s5)
.Llevel_44_80087DA8:
/* 8B5B2D8 80087DA8 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_44_80087DAC:
/* 8B5B2DC 80087DAC 3A00A2A2 */  sb         $v0, 0x3A($s5)
.Llevel_44_80087DB0:
/* 8B5B2E0 80087DB0 FBD3000C */  jal        func_80034FEC
/* 8B5B2E4 80087DB4 2120A002 */   addu      $a0, $s5, $zero
/* 8B5B2E8 80087DB8 04010224 */  addiu      $v0, $zero, 0x104
/* 8B5B2EC 80087DBC 82022212 */  beq        $s1, $v0, .Llevel_44_800887C8
/* 8B5B2F0 80087DC0 0501222A */   slti      $v0, $s1, 0x105
/* 8B5B2F4 80087DC4 20004010 */  beqz       $v0, .Llevel_44_80087E48
/* 8B5B2F8 80087DC8 84000224 */   addiu     $v0, $zero, 0x84
/* 8B5B2FC 80087DCC B3002212 */  beq        $s1, $v0, .Llevel_44_8008809C
/* 8B5B300 80087DD0 8500222A */   slti      $v0, $s1, 0x85
/* 8B5B304 80087DD4 0E004010 */  beqz       $v0, .Llevel_44_80087E10
/* 8B5B308 80087DD8 10000224 */   addiu     $v0, $zero, 0x10
/* 8B5B30C 80087DDC 40002212 */  beq        $s1, $v0, .Llevel_44_80087EE0
/* 8B5B310 80087DE0 1100222A */   slti      $v0, $s1, 0x11
/* 8B5B314 80087DE4 05004010 */  beqz       $v0, .Llevel_44_80087DFC
/* 8B5B318 80087DE8 01000224 */   addiu     $v0, $zero, 0x1
/* 8B5B31C 80087DEC 35002212 */  beq        $s1, $v0, .Llevel_44_80087EC4
/* 8B5B320 80087DF0 00000000 */   nop
/* 8B5B324 80087DF4 98230208 */  j          .Llevel_44_80088E60
/* 8B5B328 80087DF8 00000000 */   nop
.Llevel_44_80087DFC:
/* 8B5B32C 80087DFC 78000224 */  addiu      $v0, $zero, 0x78
/* 8B5B330 80087E00 6A002212 */  beq        $s1, $v0, .Llevel_44_80087FAC
/* 8B5B334 80087E04 00000000 */   nop
/* 8B5B338 80087E08 98230208 */  j          .Llevel_44_80088E60
/* 8B5B33C 80087E0C 00000000 */   nop
.Llevel_44_80087E10:
/* 8B5B340 80087E10 C5000224 */  addiu      $v0, $zero, 0xC5
/* 8B5B344 80087E14 BE002212 */  beq        $s1, $v0, .Llevel_44_80088110
/* 8B5B348 80087E18 C600222A */   slti      $v0, $s1, 0xC6
/* 8B5B34C 80087E1C 05004010 */  beqz       $v0, .Llevel_44_80087E34
/* 8B5B350 80087E20 AA000224 */   addiu     $v0, $zero, 0xAA
/* 8B5B354 80087E24 AC002212 */  beq        $s1, $v0, .Llevel_44_800880D8
/* 8B5B358 80087E28 00000000 */   nop
/* 8B5B35C 80087E2C 98230208 */  j          .Llevel_44_80088E60
/* 8B5B360 80087E30 00000000 */   nop
.Llevel_44_80087E34:
/* 8B5B364 80087E34 D3000224 */  addiu      $v0, $zero, 0xD3
/* 8B5B368 80087E38 2A002212 */  beq        $s1, $v0, .Llevel_44_80087EE4
/* 8B5B36C 80087E3C 10000324 */   addiu     $v1, $zero, 0x10
/* 8B5B370 80087E40 98230208 */  j          .Llevel_44_80088E60
/* 8B5B374 80087E44 00000000 */   nop
.Llevel_44_80087E48:
/* 8B5B378 80087E48 36010224 */  addiu      $v0, $zero, 0x136
/* 8B5B37C 80087E4C 90022212 */  beq        $s1, $v0, .Llevel_44_80088890
/* 8B5B380 80087E50 3701222A */   slti      $v0, $s1, 0x137
/* 8B5B384 80087E54 0B004010 */  beqz       $v0, .Llevel_44_80087E84
/* 8B5B388 80087E58 10010224 */   addiu     $v0, $zero, 0x110
/* 8B5B38C 80087E5C 6F022212 */  beq        $s1, $v0, .Llevel_44_8008881C
/* 8B5B390 80087E60 1001222A */   slti      $v0, $s1, 0x110
/* 8B5B394 80087E64 FE034014 */  bnez       $v0, .Llevel_44_80088E60
/* 8B5B398 80087E68 3501222A */   slti      $v0, $s1, 0x135
/* 8B5B39C 80087E6C FC034010 */  beqz       $v0, .Llevel_44_80088E60
/* 8B5B3A0 80087E70 3201222A */   slti      $v0, $s1, 0x132
/* 8B5B3A4 80087E74 FA034014 */  bnez       $v0, .Llevel_44_80088E60
/* 8B5B3A8 80087E78 0C00A426 */   addiu     $a0, $s5, 0xC
/* 8B5B3AC 80087E7C 25220208 */  j          .Llevel_44_80088894
/* 8B5B3B0 80087E80 00000000 */   nop
.Llevel_44_80087E84:
/* 8B5B3B4 80087E84 E4020224 */  addiu      $v0, $zero, 0x2E4
/* 8B5B3B8 80087E88 47032212 */  beq        $s1, $v0, .Llevel_44_80088BA8
/* 8B5B3BC 80087E8C E502222A */   slti      $v0, $s1, 0x2E5
/* 8B5B3C0 80087E90 05004010 */  beqz       $v0, .Llevel_44_80087EA8
/* 8B5B3C4 80087E94 38020224 */   addiu     $v0, $zero, 0x238
/* 8B5B3C8 80087E98 7E022212 */  beq        $s1, $v0, .Llevel_44_80088894
/* 8B5B3CC 80087E9C 0C00A426 */   addiu     $a0, $s5, 0xC
/* 8B5B3D0 80087EA0 98230208 */  j          .Llevel_44_80088E60
/* 8B5B3D4 80087EA4 00000000 */   nop
.Llevel_44_80087EA8:
/* 8B5B3D8 80087EA8 ED030224 */  addiu      $v0, $zero, 0x3ED
/* 8B5B3DC 80087EAC 97032212 */  beq        $s1, $v0, .Llevel_44_80088D0C
/* 8B5B3E0 80087EB0 F7030224 */   addiu     $v0, $zero, 0x3F7
/* 8B5B3E4 80087EB4 BF032212 */  beq        $s1, $v0, .Llevel_44_80088DB4
/* 8B5B3E8 80087EB8 0C00A426 */   addiu     $a0, $s5, 0xC
/* 8B5B3EC 80087EBC 98230208 */  j          .Llevel_44_80088E60
/* 8B5B3F0 80087EC0 00000000 */   nop
.Llevel_44_80087EC4:
/* 8B5B3F4 80087EC4 0957010C */  jal        func_80055C24
/* 8B5B3F8 80087EC8 2120A002 */   addu      $a0, $s5, $zero
/* 8B5B3FC 80087ECC 18000224 */  addiu      $v0, $zero, 0x18
/* 8B5B400 80087ED0 4C00A2A2 */  sb         $v0, 0x4C($s5)
/* 8B5B404 80087ED4 40000224 */  addiu      $v0, $zero, 0x40
/* 8B5B408 80087ED8 04220208 */  j          .Llevel_44_80088810
/* 8B5B40C 80087EDC 4A00A2A2 */   sb        $v0, 0x4A($s5)
.Llevel_44_80087EE0:
/* 8B5B410 80087EE0 10000324 */  addiu      $v1, $zero, 0x10
.Llevel_44_80087EE4:
/* 8B5B414 80087EE4 3600A286 */  lh         $v0, 0x36($s5)
/* 8B5B418 80087EE8 0000B18E */  lw         $s1, 0x0($s5)
/* 8B5B41C 80087EEC 19004314 */  bne        $v0, $v1, .Llevel_44_80087F54
/* 8B5B420 80087EF0 0C00B026 */   addiu     $s0, $s5, 0xC
/* 8B5B424 80087EF4 0780043C */  lui        $a0, %hi(D_8006C784)
/* 8B5B428 80087EF8 84C7848C */  lw         $a0, %lo(D_8006C784)($a0)
/* 8B5B42C 80087EFC 00000000 */  nop
/* 8B5B430 80087F00 04008228 */  slti       $v0, $a0, 0x4
/* 8B5B434 80087F04 03004010 */  beqz       $v0, .Llevel_44_80087F14
/* 8B5B438 80087F08 0A000324 */   addiu     $v1, $zero, 0xA
/* 8B5B43C 80087F0C C91F0208 */  j          .Llevel_44_80087F24
/* 8B5B440 80087F10 07000324 */   addiu     $v1, $zero, 0x7
.Llevel_44_80087F14:
/* 8B5B444 80087F14 07008228 */  slti       $v0, $a0, 0x7
/* 8B5B448 80087F18 02004010 */  beqz       $v0, .Llevel_44_80087F24
/* 8B5B44C 80087F1C 00000000 */   nop
/* 8B5B450 80087F20 09000324 */  addiu      $v1, $zero, 0x9
.Llevel_44_80087F24:
/* 8B5B454 80087F24 0680043C */  lui        $a0, %hi(D_8006582C)
/* 8B5B458 80087F28 2C588424 */  addiu      $a0, $a0, %lo(D_8006582C)
/* 8B5B45C 80087F2C 0000828C */  lw         $v0, 0x0($a0)
/* 8B5B460 80087F30 00000000 */  nop
/* 8B5B464 80087F34 01004224 */  addiu      $v0, $v0, 0x1
/* 8B5B468 80087F38 000082AC */  sw         $v0, 0x0($a0)
/* 8B5B46C 80087F3C 2A104300 */  slt        $v0, $v0, $v1
/* 8B5B470 80087F40 04004014 */  bnez       $v0, .Llevel_44_80087F54
/* 8B5B474 80087F44 0C00B026 */   addiu     $s0, $s5, 0xC
/* 8B5B478 80087F48 D3000224 */  addiu      $v0, $zero, 0xD3
/* 8B5B47C 80087F4C 000080AC */  sw         $zero, 0x0($a0)
/* 8B5B480 80087F50 3600A2A6 */  sh         $v0, 0x36($s5)
.Llevel_44_80087F54:
/* 8B5B484 80087F54 21200002 */  addu       $a0, $s0, $zero
/* 8B5B488 80087F58 5E3C010C */  jal        func_8004F178
/* 8B5B48C 80087F5C 0C008526 */   addiu     $a1, $s4, 0xC
/* 8B5B490 80087F60 0957010C */  jal        func_80055C24
/* 8B5B494 80087F64 2120A002 */   addu      $a0, $s5, $zero
/* 8B5B498 80087F68 21202002 */  addu       $a0, $s1, $zero
/* 8B5B49C 80087F6C 1400A28E */  lw         $v0, 0x14($s5)
/* 8B5B4A0 80087F70 21280002 */  addu       $a1, $s0, $zero
/* 8B5B4A4 80087F74 00024224 */  addiu      $v0, $v0, 0x200
/* 8B5B4A8 80087F78 5E3C010C */  jal        func_8004F178
/* 8B5B4AC 80087F7C 1400A2AE */   sw        $v0, 0x14($s5)
/* 8B5B4B0 80087F80 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 8B5B4B4 80087F84 1C00A2AE */  sw         $v0, 0x1C($s5)
/* 8B5B4B8 80087F88 02000224 */  addiu      $v0, $zero, 0x2
/* 8B5B4BC 80087F8C 4700A2A2 */  sb         $v0, 0x47($s5)
/* 8B5B4C0 80087F90 08070224 */  addiu      $v0, $zero, 0x708
/* 8B5B4C4 80087F94 0E0022A6 */  sh         $v0, 0xE($s1)
/* 8B5B4C8 80087F98 9171010C */  jal        rand
/* 8B5B4CC 80087F9C 110020A2 */   sb        $zero, 0x11($s1)
/* 8B5B4D0 80087FA0 FC004230 */  andi       $v0, $v0, 0xFC
/* 8B5B4D4 80087FA4 A3230208 */  j          .Llevel_44_80088E8C
/* 8B5B4D8 80087FA8 120022A2 */   sb        $v0, 0x12($s1)
.Llevel_44_80087FAC:
/* 8B5B4DC 80087FAC 36008286 */  lh         $v0, 0x36($s4)
/* 8B5B4E0 80087FB0 00000000 */  nop
/* 8B5B4E4 80087FB4 06005110 */  beq        $v0, $s1, .Llevel_44_80087FD0
/* 8B5B4E8 80087FB8 21280000 */   addu      $a1, $zero, $zero
/* 8B5B4EC 80087FBC 0780043C */  lui        $a0, %hi(D_8006E394)
/* 8B5B4F0 80087FC0 94E38424 */  addiu      $a0, $a0, %lo(D_8006E394)
/* 8B5B4F4 80087FC4 0000A4AE */  sw         $a0, 0x0($s5)
/* 8B5B4F8 80087FC8 E439010C */  jal        func_8004E790
/* 8B5B4FC 80087FCC 1C000624 */   addiu     $a2, $zero, 0x1C
.Llevel_44_80087FD0:
/* 8B5B500 80087FD0 0000B08E */  lw         $s0, 0x0($s5)
/* 8B5B504 80087FD4 0957010C */  jal        func_80055C24
/* 8B5B508 80087FD8 2120A002 */   addu      $a0, $s5, $zero
/* 8B5B50C 80087FDC 78000224 */  addiu      $v0, $zero, 0x78
/* 8B5B510 80087FE0 4900A0A2 */  sb         $zero, 0x49($s5)
/* 8B5B514 80087FE4 000000A6 */  sh         $zero, 0x0($s0)
/* 8B5B518 80087FE8 080000A6 */  sh         $zero, 0x8($s0)
/* 8B5B51C 80087FEC 060000A6 */  sh         $zero, 0x6($s0)
/* 8B5B520 80087FF0 040000A6 */  sh         $zero, 0x4($s0)
/* 8B5B524 80087FF4 0D0002A2 */  sb         $v0, 0xD($s0)
/* 8B5B528 80087FF8 100000AE */  sw         $zero, 0x10($s0)
/* 8B5B52C 80087FFC 06008012 */  beqz       $s4, .Llevel_44_80088018
/* 8B5B530 80088000 140000AE */   sw        $zero, 0x14($s0)
/* 8B5B534 80088004 0C00A426 */  addiu      $a0, $s5, 0xC
/* 8B5B538 80088008 5E3C010C */  jal        func_8004F178
/* 8B5B53C 8008800C 0C008526 */   addiu     $a1, $s4, 0xC
/* 8B5B540 80088010 25200208 */  j          .Llevel_44_80088094
/* 8B5B544 80088014 FF000224 */   addiu     $v0, $zero, 0xFF
.Llevel_44_80088018:
/* 8B5B548 80088018 0C00A426 */  addiu      $a0, $s5, 0xC
/* 8B5B54C 8008801C 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 8B5B550 80088020 3603A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0xE)
/* 8B5B554 80088024 0000A390 */  lbu        $v1, 0x0($a1)
/* 8B5B558 80088028 F2FFA524 */  addiu      $a1, $a1, -0xE
/* 8B5B55C 8008802C 80FF6324 */  addiu      $v1, $v1, -0x80
/* 8B5B560 80088030 FF006330 */  andi       $v1, $v1, 0xFF
/* 8B5B564 80088034 40180300 */  sll        $v1, $v1, 1
/* 8B5B568 80088038 0680013C */  lui        $at, %hi(D_80065920)
/* 8B5B56C 8008803C 21082300 */  addu       $at, $at, $v1
/* 8B5B570 80088040 20592784 */  lh         $a3, %lo(D_80065920)($at)
/* 8B5B574 80088044 1000A627 */  addiu      $a2, $sp, 0x10
/* 8B5B578 80088048 40110700 */  sll        $v0, $a3, 5
/* 8B5B57C 8008804C 23104700 */  subu       $v0, $v0, $a3
/* 8B5B580 80088050 80100200 */  sll        $v0, $v0, 2
/* 8B5B584 80088054 21104700 */  addu       $v0, $v0, $a3
/* 8B5B588 80088058 43120200 */  sra        $v0, $v0, 9
/* 8B5B58C 8008805C 1000A2AF */  sw         $v0, 0x10($sp)
/* 8B5B590 80088060 0680013C */  lui        $at, %hi(D_800658A0)
/* 8B5B594 80088064 21082300 */  addu       $at, $at, $v1
/* 8B5B598 80088068 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 8B5B59C 8008806C E8030224 */  addiu      $v0, $zero, 0x3E8
/* 8B5B5A0 80088070 1800A2AF */  sw         $v0, 0x18($sp)
/* 8B5B5A4 80088074 40110300 */  sll        $v0, $v1, 5
/* 8B5B5A8 80088078 23104300 */  subu       $v0, $v0, $v1
/* 8B5B5AC 8008807C 80100200 */  sll        $v0, $v0, 2
/* 8B5B5B0 80088080 21104300 */  addu       $v0, $v0, $v1
/* 8B5B5B4 80088084 43120200 */  sra        $v0, $v0, 9
/* 8B5B5B8 80088088 653C010C */  jal        func_8004F194
/* 8B5B5BC 8008808C 1400A2AF */   sw        $v0, 0x14($sp)
/* 8B5B5C0 80088090 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_44_80088094:
/* 8B5B5C4 80088094 A3230208 */  j          .Llevel_44_80088E8C
/* 8B5B5C8 80088098 020002A2 */   sb        $v0, 0x2($s0)
.Llevel_44_8008809C:
/* 8B5B5CC 8008809C 0C00A426 */  addiu      $a0, $s5, 0xC
/* 8B5B5D0 800880A0 46008292 */  lbu        $v0, 0x46($s4)
/* 8B5B5D4 800880A4 0C008526 */  addiu      $a1, $s4, 0xC
/* 8B5B5D8 800880A8 5E3C010C */  jal        func_8004F178
/* 8B5B5DC 800880AC 4600A2A2 */   sb        $v0, 0x46($s5)
/* 8B5B5E0 800880B0 0957010C */  jal        func_80055C24
/* 8B5B5E4 800880B4 2120A002 */   addu      $a0, $s5, $zero
/* 8B5B5E8 800880B8 4ED7000C */  jal        func_80035D38
/* 8B5B5EC 800880BC 2120A002 */   addu      $a0, $s5, $zero
/* 8B5B5F0 800880C0 02004010 */  beqz       $v0, .Llevel_44_800880CC
/* 8B5B5F4 800880C4 00000000 */   nop
/* 8B5B5F8 800880C8 1400A2AE */  sw         $v0, 0x14($s5)
.Llevel_44_800880CC:
/* 8B5B5FC 800880CC 06000224 */  addiu      $v0, $zero, 0x6
/* 8B5B600 800880D0 A3230208 */  j          .Llevel_44_80088E8C
/* 8B5B604 800880D4 4800A2A2 */   sb        $v0, 0x48($s5)
.Llevel_44_800880D8:
/* 8B5B608 800880D8 4100A0A2 */  sb         $zero, 0x41($s5)
/* 8B5B60C 800880DC 4000A0A2 */  sb         $zero, 0x40($s5)
/* 8B5B610 800880E0 3E00A0A2 */  sb         $zero, 0x3E($s5)
/* 8B5B614 800880E4 04008012 */  beqz       $s4, .Llevel_44_800880F8
/* 8B5B618 800880E8 3F00A0A2 */   sb        $zero, 0x3F($s5)
/* 8B5B61C 800880EC 0C00A426 */  addiu      $a0, $s5, 0xC
/* 8B5B620 800880F0 5E3C010C */  jal        func_8004F178
/* 8B5B624 800880F4 0C008526 */   addiu     $a1, $s4, 0xC
.Llevel_44_800880F8:
/* 8B5B628 800880F8 2120A002 */  addu       $a0, $s5, $zero
/* 8B5B62C 800880FC 18000224 */  addiu      $v0, $zero, 0x18
/* 8B5B630 80088100 4F00A2A2 */  sb         $v0, 0x4F($s5)
/* 8B5B634 80088104 28000224 */  addiu      $v0, $zero, 0x28
/* 8B5B638 80088108 A1230208 */  j          .Llevel_44_80088E84
/* 8B5B63C 8008810C 4C00A2A2 */   sb        $v0, 0x4C($s5)
.Llevel_44_80088110:
/* 8B5B640 80088110 0000B38E */  lw         $s3, 0x0($s5)
/* 8B5B644 80088114 33008012 */  beqz       $s4, .Llevel_44_800881E4
/* 8B5B648 80088118 0C00A426 */   addiu     $a0, $s5, 0xC
/* 8B5B64C 8008811C 36008386 */  lh         $v1, 0x36($s4)
/* 8B5B650 80088120 00000000 */  nop
/* 8B5B654 80088124 2F007110 */  beq        $v1, $s1, .Llevel_44_800881E4
/* 8B5B658 80088128 63000224 */   addiu     $v0, $zero, 0x63
/* 8B5B65C 8008812C 18006214 */  bne        $v1, $v0, .Llevel_44_80088190
/* 8B5B660 80088130 21208002 */   addu      $a0, $s4, $zero
/* 8B5B664 80088134 0780103C */  lui        $s0, %hi(D_8006E044)
/* 8B5B668 80088138 44E01026 */  addiu      $s0, $s0, %lo(D_8006E044)
/* 8B5B66C 8008813C 0000038E */  lw         $v1, 0x0($s0)
/* 8B5B670 80088140 1F000224 */  addiu      $v0, $zero, 0x1F
/* 8B5B674 80088144 03006210 */  beq        $v1, $v0, .Llevel_44_80088154
/* 8B5B678 80088148 28000224 */   addiu     $v0, $zero, 0x28
/* 8B5B67C 8008814C 10006214 */  bne        $v1, $v0, .Llevel_44_80088190
/* 8B5B680 80088150 00000000 */   nop
.Llevel_44_80088154:
/* 8B5B684 80088154 0C00B126 */  addiu      $s1, $s5, 0xC
/* 8B5B688 80088158 21202002 */  addu       $a0, $s1, $zero
/* 8B5B68C 8008815C 5E3C010C */  jal        func_8004F178
/* 8B5B690 80088160 DCFF0526 */   addiu     $a1, $s0, -0x24
/* 8B5B694 80088164 0000038E */  lw         $v1, 0x0($s0)
/* 8B5B698 80088168 28000224 */  addiu      $v0, $zero, 0x28
/* 8B5B69C 8008816C 05006214 */  bne        $v1, $v0, .Llevel_44_80088184
/* 8B5B6A0 80088170 00000000 */   nop
/* 8B5B6A4 80088174 1400A28E */  lw         $v0, 0x14($s5)
/* 8B5B6A8 80088178 00000000 */  nop
/* 8B5B6AC 8008817C 80FF4224 */  addiu      $v0, $v0, -0x80
/* 8B5B6B0 80088180 1400A2AE */  sw         $v0, 0x14($s5)
.Llevel_44_80088184:
/* 8B5B6B4 80088184 2000A427 */  addiu      $a0, $sp, 0x20
/* 8B5B6B8 80088188 7B200208 */  j          .Llevel_44_800881EC
/* 8B5B6BC 8008818C 21282002 */   addu      $a1, $s1, $zero
.Llevel_44_80088190:
/* 8B5B6C0 80088190 4957010C */  jal        func_80055D24
/* 8B5B6C4 80088194 05000524 */   addiu     $a1, $zero, 0x5
/* 8B5B6C8 80088198 21208002 */  addu       $a0, $s4, $zero
/* 8B5B6CC 8008819C 21280000 */  addu       $a1, $zero, $zero
/* 8B5B6D0 800881A0 2000B027 */  addiu      $s0, $sp, 0x20
/* 8B5B6D4 800881A4 C557010C */  jal        func_80055F14
/* 8B5B6D8 800881A8 21300002 */   addu      $a2, $s0, $zero
/* 8B5B6DC 800881AC 20008426 */  addiu      $a0, $s4, 0x20
/* 8B5B6E0 800881B0 1000A527 */  addiu      $a1, $sp, 0x10
/* 8B5B6E4 800881B4 2130A000 */  addu       $a2, $a1, $zero
/* 8B5B6E8 800881B8 58020224 */  addiu      $v0, $zero, 0x258
/* 8B5B6EC 800881BC 1000A2AF */  sw         $v0, 0x10($sp)
/* 8B5B6F0 800881C0 1400A0AF */  sw         $zero, 0x14($sp)
/* 8B5B6F4 800881C4 5B3B010C */  jal        func_8004ED6C
/* 8B5B6F8 800881C8 1800A0AF */   sw        $zero, 0x18($sp)
/* 8B5B6FC 800881CC 0C00A426 */  addiu      $a0, $s5, 0xC
/* 8B5B700 800881D0 21280002 */  addu       $a1, $s0, $zero
/* 8B5B704 800881D4 653C010C */  jal        func_8004F194
/* 8B5B708 800881D8 1000A627 */   addiu     $a2, $sp, 0x10
/* 8B5B70C 800881DC 7D200208 */  j          .Llevel_44_800881F4
/* 8B5B710 800881E0 00000000 */   nop
.Llevel_44_800881E4:
/* 8B5B714 800881E4 0780053C */  lui        $a1, %hi(D_80070328)
/* 8B5B718 800881E8 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
.Llevel_44_800881EC:
/* 8B5B71C 800881EC 5E3C010C */  jal        func_8004F178
/* 8B5B720 800881F0 00000000 */   nop
.Llevel_44_800881F4:
/* 8B5B724 800881F4 0957010C */  jal        func_80055C24
/* 8B5B728 800881F8 2120A002 */   addu      $a0, $s5, $zero
/* 8B5B72C 800881FC 28000224 */  addiu      $v0, $zero, 0x28
/* 8B5B730 80088200 4C00A2A2 */  sb         $v0, 0x4C($s5)
/* 8B5B734 80088204 FF000224 */  addiu      $v0, $zero, 0xFF
/* 8B5B738 80088208 20038012 */  beqz       $s4, .Llevel_44_80088E8C
/* 8B5B73C 8008820C 4A00A2A2 */   sb        $v0, 0x4A($s5)
/* 8B5B740 80088210 36008386 */  lh         $v1, 0x36($s4)
/* 8B5B744 80088214 C5000224 */  addiu      $v0, $zero, 0xC5
/* 8B5B748 80088218 17006214 */  bne        $v1, $v0, .Llevel_44_80088278
/* 8B5B74C 8008821C 00000000 */   nop
/* 8B5B750 80088220 3A008392 */  lbu        $v1, 0x3A($s4)
/* 8B5B754 80088224 00000000 */  nop
/* 8B5B758 80088228 FF00622C */  sltiu      $v0, $v1, 0xFF
/* 8B5B75C 8008822C 12004010 */  beqz       $v0, .Llevel_44_80088278
/* 8B5B760 80088230 40200300 */   sll       $a0, $v1, 1
/* 8B5B764 80088234 21208300 */  addu       $a0, $a0, $v1
/* 8B5B768 80088238 80200400 */  sll        $a0, $a0, 2
/* 8B5B76C 8008823C 23208300 */  subu       $a0, $a0, $v1
/* 8B5B770 80088240 C0200400 */  sll        $a0, $a0, 3
/* 8B5B774 80088244 40190400 */  sll        $v1, $a0, 5
/* 8B5B778 80088248 23186400 */  subu       $v1, $v1, $a0
/* 8B5B77C 8008824C 40190300 */  sll        $v1, $v1, 5
/* 8B5B780 80088250 21186400 */  addu       $v1, $v1, $a0
/* 8B5B784 80088254 C0100300 */  sll        $v0, $v1, 3
/* 8B5B788 80088258 21186200 */  addu       $v1, $v1, $v0
/* 8B5B78C 8008825C C0130300 */  sll        $v0, $v1, 15
/* 8B5B790 80088260 23104300 */  subu       $v0, $v0, $v1
/* 8B5B794 80088264 80100200 */  sll        $v0, $v0, 2
/* 8B5B798 80088268 21104400 */  addu       $v0, $v0, $a0
/* 8B5B79C 8008826C 23100200 */  negu       $v0, $v0
/* 8B5B7A0 80088270 C3100200 */  sra        $v0, $v0, 3
/* 8B5B7A4 80088274 3A00A2A2 */  sb         $v0, 0x3A($s5)
.Llevel_44_80088278:
/* 8B5B7A8 80088278 04038012 */  beqz       $s4, .Llevel_44_80088E8C
/* 8B5B7AC 8008827C C5000224 */   addiu     $v0, $zero, 0xC5
/* 8B5B7B0 80088280 36008386 */  lh         $v1, 0x36($s4)
/* 8B5B7B4 80088284 00000000 */  nop
/* 8B5B7B8 80088288 00036210 */  beq        $v1, $v0, .Llevel_44_80088E8C
/* 8B5B7BC 8008828C 2120A002 */   addu      $a0, $s5, $zero
/* 8B5B7C0 80088290 21280000 */  addu       $a1, $zero, $zero
/* 8B5B7C4 80088294 AFEE000C */  jal        func_8003BABC
/* 8B5B7C8 80088298 21300000 */   addu      $a2, $zero, $zero
/* 8B5B7CC 8008829C 3C000224 */  addiu      $v0, $zero, 0x3C
/* 8B5B7D0 800882A0 4F00A2A2 */  sb         $v0, 0x4F($s5)
/* 8B5B7D4 800882A4 2C010224 */  addiu      $v0, $zero, 0x12C
/* 8B5B7D8 800882A8 100062A6 */  sh         $v0, 0x10($s3)
/* 8B5B7DC 800882AC 58020224 */  addiu      $v0, $zero, 0x258
/* 8B5B7E0 800882B0 0C0062A6 */  sh         $v0, 0xC($s3)
/* 8B5B7E4 800882B4 58020224 */  addiu      $v0, $zero, 0x258
/* 8B5B7E8 800882B8 000062AE */  sw         $v0, 0x0($s3)
/* 8B5B7EC 800882BC FF000224 */  addiu      $v0, $zero, 0xFF
/* 8B5B7F0 800882C0 040060AE */  sw         $zero, 0x4($s3)
/* 8B5B7F4 800882C4 080060AE */  sw         $zero, 0x8($s3)
/* 8B5B7F8 800882C8 5400A2A2 */  sb         $v0, 0x54($s5)
/* 8B5B7FC 800882CC 5500A2A2 */  sb         $v0, 0x55($s5)
/* 8B5B800 800882D0 5600A2A2 */  sb         $v0, 0x56($s5)
/* 8B5B804 800882D4 3F000224 */  addiu      $v0, $zero, 0x3F
/* 8B5B808 800882D8 5700A2A2 */  sb         $v0, 0x57($s5)
/* 8B5B80C 800882DC 36008386 */  lh         $v1, 0x36($s4)
/* 8B5B810 800882E0 63000224 */  addiu      $v0, $zero, 0x63
/* 8B5B814 800882E4 87006214 */  bne        $v1, $v0, .Llevel_44_80088504
/* 8B5B818 800882E8 01000224 */   addiu     $v0, $zero, 0x1
/* 8B5B81C 800882EC 0780033C */  lui        $v1, %hi(D_8006C5BC)
/* 8B5B820 800882F0 BCC5638C */  lw         $v1, %lo(D_8006C5BC)($v1)
/* 8B5B824 800882F4 2C000224 */  addiu      $v0, $zero, 0x2C
/* 8B5B828 800882F8 54006214 */  bne        $v1, $v0, .Llevel_44_8008844C
/* 8B5B82C 800882FC 00000000 */   nop
/* 8B5B830 80088300 0780023C */  lui        $v0, %hi(D_80071A04)
/* 8B5B834 80088304 041A4290 */  lbu        $v0, %lo(D_80071A04)($v0)
/* 8B5B838 80088308 00000000 */  nop
/* 8B5B83C 8008830C 4F004010 */  beqz       $v0, .Llevel_44_8008844C
/* 8B5B840 80088310 00000000 */   nop
/* 8B5B844 80088314 0780053C */  lui        $a1, %hi(D_8006C550)
/* 8B5B848 80088318 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 8B5B84C 8008831C 0780033C */  lui        $v1, %hi(D_8006C704)
/* 8B5B850 80088320 04C7638C */  lw         $v1, %lo(D_8006C704)($v1)
/* 8B5B854 80088324 00000000 */  nop
/* 8B5B858 80088328 2B10A300 */  sltu       $v0, $a1, $v1
/* 8B5B85C 8008832C 09004010 */  beqz       $v0, .Llevel_44_80088354
/* 8B5B860 80088330 C2030424 */   addiu     $a0, $zero, 0x3C2
.Llevel_44_80088334:
/* 8B5B864 80088334 3600A284 */  lh         $v0, 0x36($a1)
/* 8B5B868 80088338 00000000 */  nop
/* 8B5B86C 8008833C 06004410 */  beq        $v0, $a0, .Llevel_44_80088358
/* 8B5B870 80088340 3000B027 */   addiu     $s0, $sp, 0x30
/* 8B5B874 80088344 5800A524 */  addiu      $a1, $a1, 0x58
/* 8B5B878 80088348 2B10A300 */  sltu       $v0, $a1, $v1
/* 8B5B87C 8008834C F9FF4014 */  bnez       $v0, .Llevel_44_80088334
/* 8B5B880 80088350 00000000 */   nop
.Llevel_44_80088354:
/* 8B5B884 80088354 3000B027 */  addiu      $s0, $sp, 0x30
.Llevel_44_80088358:
/* 8B5B888 80088358 0000A58C */  lw         $a1, 0x0($a1)
/* 8B5B88C 8008835C 21200002 */  addu       $a0, $s0, $zero
/* 8B5B890 80088360 5E3C010C */  jal        func_8004F178
/* 8B5B894 80088364 1C00A524 */   addiu     $a1, $a1, 0x1C
/* 8B5B898 80088368 21880000 */  addu       $s1, $zero, $zero
/* 8B5B89C 8008836C 1400A28E */  lw         $v0, 0x14($s5)
/* 8B5B8A0 80088370 0C00B226 */  addiu      $s2, $s5, 0xC
/* 8B5B8A4 80088374 00FF4224 */  addiu      $v0, $v0, -0x100
/* 8B5B8A8 80088378 1400A2AE */  sw         $v0, 0x14($s5)
/* 8B5B8AC 8008837C 00100224 */  addiu      $v0, $zero, 0x1000
/* 8B5B8B0 80088380 0C0062A6 */  sh         $v0, 0xC($s3)
/* 8B5B8B4 80088384 4800A0A2 */  sb         $zero, 0x48($s5)
/* 8B5B8B8 80088388 0780023C */  lui        $v0, %hi(D_8006E03C)
/* 8B5B8BC 8008838C 3CE04294 */  lhu        $v0, %lo(D_8006E03C)($v0)
/* 8B5B8C0 80088390 21204002 */  addu       $a0, $s2, $zero
/* 8B5B8C4 80088394 02110200 */  srl        $v0, $v0, 4
/* 8B5B8C8 80088398 4400A2A2 */  sb         $v0, 0x44($s5)
/* 8B5B8CC 8008839C 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 8B5B8D0 800883A0 3EE04284 */  lh         $v0, %lo(D_8006E03E)($v0)
/* 8B5B8D4 800883A4 21280002 */  addu       $a1, $s0, $zero
/* 8B5B8D8 800883A8 23100200 */  negu       $v0, $v0
/* 8B5B8DC 800883AC 03110200 */  sra        $v0, $v0, 4
/* 8B5B8E0 800883B0 4500A2A2 */  sb         $v0, 0x45($s5)
/* 8B5B8E4 800883B4 0780023C */  lui        $v0, %hi(D_8006E040)
/* 8B5B8E8 800883B8 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 8B5B8EC 800883BC 21300000 */  addu       $a2, $zero, $zero
/* 8B5B8F0 800883C0 02110200 */  srl        $v0, $v0, 4
/* 8B5B8F4 800883C4 8E4F000C */  jal        func_80013E38
/* 8B5B8F8 800883C8 4600A2A2 */   sb        $v0, 0x46($s5)
/* 8B5B8FC 800883CC 03004010 */  beqz       $v0, .Llevel_44_800883DC
/* 8B5B900 800883D0 21200002 */   addu      $a0, $s0, $zero
/* 8B5B904 800883D4 F9200208 */  j          .Llevel_44_800883E4
/* 8B5B908 800883D8 21280002 */   addu      $a1, $s0, $zero
.Llevel_44_800883DC:
/* 8B5B90C 800883DC 0780053C */  lui        $a1, %hi(D_80071900)
/* 8B5B910 800883E0 0019A524 */  addiu      $a1, $a1, %lo(D_80071900)
.Llevel_44_800883E4:
/* 8B5B914 800883E4 723C010C */  jal        func_8004F1C8
/* 8B5B918 800883E8 21304002 */   addu      $a2, $s2, $zero
/* 8B5B91C 800883EC 21200002 */  addu       $a0, $s0, $zero
/* 8B5B920 800883F0 7A3B010C */  jal        func_8004EDE8
/* 8B5B924 800883F4 01000524 */   addiu     $a1, $zero, 0x1
/* 8B5B928 800883F8 21200002 */  addu       $a0, $s0, $zero
/* 8B5B92C 800883FC 0C006686 */  lh         $a2, 0xC($s3)
/* 8B5B930 80088400 233C010C */  jal        func_8004F08C
/* 8B5B934 80088404 21284000 */   addu      $a1, $v0, $zero
/* 8B5B938 80088408 21206002 */  addu       $a0, $s3, $zero
/* 8B5B93C 8008840C 5E3C010C */  jal        func_8004F178
/* 8B5B940 80088410 21280002 */   addu      $a1, $s0, $zero
/* 8B5B944 80088414 21206002 */  addu       $a0, $s3, $zero
/* 8B5B948 80088418 7A3B010C */  jal        func_8004EDE8
/* 8B5B94C 8008841C 01000524 */   addiu     $a1, $zero, 0x1
/* 8B5B950 80088420 21204000 */  addu       $a0, $v0, $zero
/* 8B5B954 80088424 0800658E */  lw         $a1, 0x8($s3)
/* 8B5B958 80088428 203A010C */  jal        func_8004E880
/* 8B5B95C 8008842C 21300000 */   addu      $a2, $zero, $zero
/* 8B5B960 80088430 4500A2A2 */  sb         $v0, 0x45($s5)
/* 8B5B964 80088434 0000648E */  lw         $a0, 0x0($s3)
/* 8B5B968 80088438 0400658E */  lw         $a1, 0x4($s3)
/* 8B5B96C 8008843C 203A010C */  jal        func_8004E880
/* 8B5B970 80088440 21300000 */   addu      $a2, $zero, $zero
/* 8B5B974 80088444 5D210208 */  j          .Llevel_44_80088574
/* 8B5B978 80088448 4600A2A2 */   sb        $v0, 0x46($s5)
.Llevel_44_8008844C:
/* 8B5B97C 8008844C 36008386 */  lh         $v1, 0x36($s4)
/* 8B5B980 80088450 63000224 */  addiu      $v0, $zero, 0x63
/* 8B5B984 80088454 2B006214 */  bne        $v1, $v0, .Llevel_44_80088504
/* 8B5B988 80088458 01000224 */   addiu     $v0, $zero, 0x1
/* 8B5B98C 8008845C 0780053C */  lui        $a1, %hi(D_8006E044)
/* 8B5B990 80088460 44E0A524 */  addiu      $a1, $a1, %lo(D_8006E044)
/* 8B5B994 80088464 0000A38C */  lw         $v1, 0x0($a1)
/* 8B5B998 80088468 28000224 */  addiu      $v0, $zero, 0x28
/* 8B5B99C 8008846C 04006214 */  bne        $v1, $v0, .Llevel_44_80088480
/* 8B5B9A0 80088470 1F000224 */   addiu     $v0, $zero, 0x1F
/* 8B5B9A4 80088474 58020224 */  addiu      $v0, $zero, 0x258
/* 8B5B9A8 80088478 26210208 */  j          .Llevel_44_80088498
/* 8B5B9AC 8008847C 4000B027 */   addiu     $s0, $sp, 0x40
.Llevel_44_80088480:
/* 8B5B9B0 80088480 1E006214 */  bne        $v1, $v0, .Llevel_44_800884FC
/* 8B5B9B4 80088484 05000224 */   addiu     $v0, $zero, 0x5
/* 8B5B9B8 80088488 00100224 */  addiu      $v0, $zero, 0x1000
/* 8B5B9BC 8008848C 0C0062A6 */  sh         $v0, 0xC($s3)
/* 8B5B9C0 80088490 00100224 */  addiu      $v0, $zero, 0x1000
/* 8B5B9C4 80088494 5800B027 */  addiu      $s0, $sp, 0x58
.Llevel_44_80088498:
/* 8B5B9C8 80088498 000062AE */  sw         $v0, 0x0($s3)
/* 8B5B9CC 8008849C 4800A0A2 */  sb         $zero, 0x48($s5)
/* 8B5B9D0 800884A0 0780023C */  lui        $v0, %hi(D_8006E03C)
/* 8B5B9D4 800884A4 3CE04294 */  lhu        $v0, %lo(D_8006E03C)($v0)
/* 8B5B9D8 800884A8 21200002 */  addu       $a0, $s0, $zero
/* 8B5B9DC 800884AC 02110200 */  srl        $v0, $v0, 4
/* 8B5B9E0 800884B0 4400A2A2 */  sb         $v0, 0x44($s5)
/* 8B5B9E4 800884B4 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 8B5B9E8 800884B8 3EE04284 */  lh         $v0, %lo(D_8006E03E)($v0)
/* 8B5B9EC 800884BC C8FFA524 */  addiu      $a1, $a1, -0x38
/* 8B5B9F0 800884C0 23100200 */  negu       $v0, $v0
/* 8B5B9F4 800884C4 03110200 */  sra        $v0, $v0, 4
/* 8B5B9F8 800884C8 4500A2A2 */  sb         $v0, 0x45($s5)
/* 8B5B9FC 800884CC 0780023C */  lui        $v0, %hi(D_8006E040)
/* 8B5BA00 800884D0 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 8B5BA04 800884D4 21880000 */  addu       $s1, $zero, $zero
/* 8B5BA08 800884D8 02110200 */  srl        $v0, $v0, 4
/* 8B5BA0C 800884DC 3D3B010C */  jal        func_8004ECF4
/* 8B5BA10 800884E0 4600A2A2 */   sb        $v0, 0x46($s5)
/* 8B5BA14 800884E4 21200002 */  addu       $a0, $s0, $zero
/* 8B5BA18 800884E8 21286002 */  addu       $a1, $s3, $zero
/* 8B5BA1C 800884EC 5B3B010C */  jal        func_8004ED6C
/* 8B5BA20 800884F0 21306002 */   addu      $a2, $s3, $zero
/* 8B5BA24 800884F4 5D210208 */  j          .Llevel_44_80088574
/* 8B5BA28 800884F8 00000000 */   nop
.Llevel_44_800884FC:
/* 8B5BA2C 800884FC 43210208 */  j          .Llevel_44_8008850C
/* 8B5BA30 80088500 4800A2A2 */   sb        $v0, 0x48($s5)
.Llevel_44_80088504:
/* 8B5BA34 80088504 4800A0A2 */  sb         $zero, 0x48($s5)
/* 8B5BA38 80088508 0E0062A2 */  sb         $v0, 0xE($s3)
.Llevel_44_8008850C:
/* 8B5BA3C 8008850C 20008426 */  addiu      $a0, $s4, 0x20
/* 8B5BA40 80088510 21286002 */  addu       $a1, $s3, $zero
/* 8B5BA44 80088514 46008292 */  lbu        $v0, 0x46($s4)
/* 8B5BA48 80088518 21306002 */  addu       $a2, $s3, $zero
/* 8B5BA4C 8008851C 5B3B010C */  jal        func_8004ED6C
/* 8B5BA50 80088520 4600A2A2 */   sb        $v0, 0x46($s5)
/* 8B5BA54 80088524 21206002 */  addu       $a0, $s3, $zero
/* 8B5BA58 80088528 7A3B010C */  jal        func_8004EDE8
/* 8B5BA5C 8008852C 01000524 */   addiu     $a1, $zero, 0x1
/* 8B5BA60 80088530 21204000 */  addu       $a0, $v0, $zero
/* 8B5BA64 80088534 0800658E */  lw         $a1, 0x8($s3)
/* 8B5BA68 80088538 203A010C */  jal        func_8004E880
/* 8B5BA6C 8008853C 21300000 */   addu      $a2, $zero, $zero
/* 8B5BA70 80088540 4500A2A2 */  sb         $v0, 0x45($s5)
/* 8B5BA74 80088544 0000648E */  lw         $a0, 0x0($s3)
/* 8B5BA78 80088548 0400658E */  lw         $a1, 0x4($s3)
/* 8B5BA7C 8008854C 203A010C */  jal        func_8004E880
/* 8B5BA80 80088550 21300000 */   addu      $a2, $zero, $zero
/* 8B5BA84 80088554 C5000424 */  addiu      $a0, $zero, 0xC5
/* 8B5BA88 80088558 4600A2A2 */  sb         $v0, 0x46($s5)
/* 8B5BA8C 8008855C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8B5BA90 80088560 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8B5BA94 80088564 00000000 */  nop
/* 8B5BA98 80088568 09F84000 */  jalr       $v0
/* 8B5BA9C 8008856C 2128A002 */   addu      $a1, $s5, $zero
/* 8B5BAA0 80088570 21884000 */  addu       $s1, $v0, $zero
.Llevel_44_80088574:
/* 8B5BAA4 80088574 4D002012 */  beqz       $s1, .Llevel_44_800886AC
/* 8B5BAA8 80088578 21200000 */   addu      $a0, $zero, $zero
/* 8B5BAAC 8008857C FF000524 */  addiu      $a1, $zero, 0xFF
/* 8B5BAB0 80088580 0000308E */  lw         $s0, 0x0($s1)
/* 8B5BAB4 80088584 03000224 */  addiu      $v0, $zero, 0x3
/* 8B5BAB8 80088588 DBD8000C */  jal        func_8003636C
/* 8B5BABC 8008858C 100002A6 */   sh        $v0, 0x10($s0)
/* 8B5BAC0 80088590 21F04000 */  addu       $fp, $v0, $zero
/* 8B5BAC4 80088594 44003EA2 */  sb         $fp, 0x44($s1)
/* 8B5BAC8 80088598 0780023C */  lui        $v0, %hi(D_8006E040)
/* 8B5BACC 8008859C 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 8B5BAD0 800885A0 00000000 */  nop
/* 8B5BAD4 800885A4 00140200 */  sll        $v0, $v0, 16
/* 8B5BAD8 800885A8 03150200 */  sra        $v0, $v0, 20
/* 8B5BADC 800885AC 80004224 */  addiu      $v0, $v0, 0x80
/* 8B5BAE0 800885B0 FF005730 */  andi       $s7, $v0, 0xFF
/* 8B5BAE4 800885B4 460037A2 */  sb         $s7, 0x46($s1)
/* 8B5BAE8 800885B8 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 8B5BAEC 800885BC 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 8B5BAF0 800885C0 01000324 */  addiu      $v1, $zero, 0x1
/* 8B5BAF4 800885C4 480023A2 */  sb         $v1, 0x48($s1)
/* 8B5BAF8 800885C8 02110200 */  srl        $v0, $v0, 4
/* 8B5BAFC 800885CC FF005630 */  andi       $s6, $v0, 0xFF
/* 8B5BB00 800885D0 450036A2 */  sb         $s6, 0x45($s1)
/* 8B5BB04 800885D4 36008386 */  lh         $v1, 0x36($s4)
/* 8B5BB08 800885D8 63000224 */  addiu      $v0, $zero, 0x63
/* 8B5BB0C 800885DC 05006214 */  bne        $v1, $v0, .Llevel_44_800885F4
/* 8B5BB10 800885E0 FF000224 */   addiu     $v0, $zero, 0xFF
/* 8B5BB14 800885E4 540022A2 */  sb         $v0, 0x54($s1)
/* 8B5BB18 800885E8 0D000224 */  addiu      $v0, $zero, 0xD
/* 8B5BB1C 800885EC 80210208 */  j          .Llevel_44_80088600
/* 8B5BB20 800885F0 550020A2 */   sb        $zero, 0x55($s1)
.Llevel_44_800885F4:
/* 8B5BB24 800885F4 550022A2 */  sb         $v0, 0x55($s1)
/* 8B5BB28 800885F8 0C000224 */  addiu      $v0, $zero, 0xC
/* 8B5BB2C 800885FC 540020A2 */  sb         $zero, 0x54($s1)
.Llevel_44_80088600:
/* 8B5BB30 80088600 560020A2 */  sb         $zero, 0x56($s1)
/* 8B5BB34 80088604 570022A2 */  sb         $v0, 0x57($s1)
/* 8B5BB38 80088608 0C002426 */  addiu      $a0, $s1, 0xC
/* 8B5BB3C 8008860C 2000B227 */  addiu      $s2, $sp, 0x20
/* 8B5BB40 80088610 5E3C010C */  jal        func_8004F178
/* 8B5BB44 80088614 21284002 */   addu      $a1, $s2, $zero
/* 8B5BB48 80088618 21200002 */  addu       $a0, $s0, $zero
/* 8B5BB4C 8008861C 5E3C010C */  jal        func_8004F178
/* 8B5BB50 80088620 21284002 */   addu      $a1, $s2, $zero
/* 8B5BB54 80088624 21202002 */  addu       $a0, $s1, $zero
/* 8B5BB58 80088628 E0D3000C */  jal        func_80034F80
/* 8B5BB5C 8008862C 01000524 */   addiu     $a1, $zero, 0x1
/* 8B5BB60 80088630 C5000424 */  addiu      $a0, $zero, 0xC5
/* 8B5BB64 80088634 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8B5BB68 80088638 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8B5BB6C 8008863C 00000000 */  nop
/* 8B5BB70 80088640 09F84000 */  jalr       $v0
/* 8B5BB74 80088644 2128A002 */   addu      $a1, $s5, $zero
/* 8B5BB78 80088648 21884000 */  addu       $s1, $v0, $zero
/* 8B5BB7C 8008864C 17002012 */  beqz       $s1, .Llevel_44_800886AC
/* 8B5BB80 80088650 0C002426 */   addiu     $a0, $s1, 0xC
/* 8B5BB84 80088654 21284002 */  addu       $a1, $s2, $zero
/* 8B5BB88 80088658 0000308E */  lw         $s0, 0x0($s1)
/* 8B5BB8C 8008865C 03000224 */  addiu      $v0, $zero, 0x3
/* 8B5BB90 80088660 100002A6 */  sh         $v0, 0x10($s0)
/* 8B5BB94 80088664 FF000224 */  addiu      $v0, $zero, 0xFF
/* 8B5BB98 80088668 540022A2 */  sb         $v0, 0x54($s1)
/* 8B5BB9C 8008866C 550022A2 */  sb         $v0, 0x55($s1)
/* 8B5BBA0 80088670 560022A2 */  sb         $v0, 0x56($s1)
/* 8B5BBA4 80088674 0F000224 */  addiu      $v0, $zero, 0xF
/* 8B5BBA8 80088678 570022A2 */  sb         $v0, 0x57($s1)
/* 8B5BBAC 8008867C 03000224 */  addiu      $v0, $zero, 0x3
/* 8B5BBB0 80088680 44003EA2 */  sb         $fp, 0x44($s1)
/* 8B5BBB4 80088684 450036A2 */  sb         $s6, 0x45($s1)
/* 8B5BBB8 80088688 460037A2 */  sb         $s7, 0x46($s1)
/* 8B5BBBC 8008868C 5E3C010C */  jal        func_8004F178
/* 8B5BBC0 80088690 480022A2 */   sb        $v0, 0x48($s1)
/* 8B5BBC4 80088694 21200002 */  addu       $a0, $s0, $zero
/* 8B5BBC8 80088698 5E3C010C */  jal        func_8004F178
/* 8B5BBCC 8008869C 21284002 */   addu      $a1, $s2, $zero
/* 8B5BBD0 800886A0 21202002 */  addu       $a0, $s1, $zero
/* 8B5BBD4 800886A4 E0D3000C */  jal        func_80034F80
/* 8B5BBD8 800886A8 03000524 */   addiu     $a1, $zero, 0x3
.Llevel_44_800886AC:
/* 8B5BBDC 800886AC 36008386 */  lh         $v1, 0x36($s4)
/* 8B5BBE0 800886B0 63000224 */  addiu      $v0, $zero, 0x63
/* 8B5BBE4 800886B4 22006214 */  bne        $v1, $v0, .Llevel_44_80088740
/* 8B5BBE8 800886B8 C5000424 */   addiu     $a0, $zero, 0xC5
/* 8B5BBEC 800886BC 0780033C */  lui        $v1, %hi(D_8006E044)
/* 8B5BBF0 800886C0 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 8B5BBF4 800886C4 1F000224 */  addiu      $v0, $zero, 0x1F
/* 8B5BBF8 800886C8 1D006214 */  bne        $v1, $v0, .Llevel_44_80088740
/* 8B5BBFC 800886CC 00000000 */   nop
/* 8B5BC00 800886D0 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8B5BC04 800886D4 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8B5BC08 800886D8 00000000 */  nop
/* 8B5BC0C 800886DC 09F84000 */  jalr       $v0
/* 8B5BC10 800886E0 21280000 */   addu      $a1, $zero, $zero
/* 8B5BC14 800886E4 21884000 */  addu       $s1, $v0, $zero
/* 8B5BC18 800886E8 E8012012 */  beqz       $s1, .Llevel_44_80088E8C
/* 8B5BC1C 800886EC 140071AE */   sw        $s1, 0x14($s3)
/* 8B5BC20 800886F0 0C002426 */  addiu      $a0, $s1, 0xC
/* 8B5BC24 800886F4 4500A292 */  lbu        $v0, 0x45($s5)
/* 8B5BC28 800886F8 0C00A526 */  addiu      $a1, $s5, 0xC
/* 8B5BC2C 800886FC 450022A2 */  sb         $v0, 0x45($s1)
/* 8B5BC30 80088700 4600A392 */  lbu        $v1, 0x46($s5)
/* 8B5BC34 80088704 02000224 */  addiu      $v0, $zero, 0x2
/* 8B5BC38 80088708 480022A2 */  sb         $v0, 0x48($s1)
/* 8B5BC3C 8008870C 5E3C010C */  jal        func_8004F178
/* 8B5BC40 80088710 460023A2 */   sb        $v1, 0x46($s1)
/* 8B5BC44 80088714 21202002 */  addu       $a0, $s1, $zero
/* 8B5BC48 80088718 03000524 */  addiu      $a1, $zero, 0x3
/* 8B5BC4C 8008871C FF000224 */  addiu      $v0, $zero, 0xFF
/* 8B5BC50 80088720 540082A0 */  sb         $v0, 0x54($a0)
/* 8B5BC54 80088724 0D000224 */  addiu      $v0, $zero, 0xD
/* 8B5BC58 80088728 550080A0 */  sb         $zero, 0x55($a0)
/* 8B5BC5C 8008872C 560080A0 */  sb         $zero, 0x56($a0)
/* 8B5BC60 80088730 E0D3000C */  jal        func_80034F80
/* 8B5BC64 80088734 570082A0 */   sb        $v0, 0x57($a0)
/* 8B5BC68 80088738 A4230208 */  j          .Llevel_44_80088E90
/* 8B5BC6C 8008873C 2110A002 */   addu      $v0, $s5, $zero
.Llevel_44_80088740:
/* 8B5BC70 80088740 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8B5BC74 80088744 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8B5BC78 80088748 00000000 */  nop
/* 8B5BC7C 8008874C 09F84000 */  jalr       $v0
/* 8B5BC80 80088750 21280000 */   addu      $a1, $zero, $zero
/* 8B5BC84 80088754 21884000 */  addu       $s1, $v0, $zero
/* 8B5BC88 80088758 CC012012 */  beqz       $s1, .Llevel_44_80088E8C
/* 8B5BC8C 8008875C 140071AE */   sw        $s1, 0x14($s3)
/* 8B5BC90 80088760 0C002426 */  addiu      $a0, $s1, 0xC
/* 8B5BC94 80088764 4500A292 */  lbu        $v0, 0x45($s5)
/* 8B5BC98 80088768 0C00A526 */  addiu      $a1, $s5, 0xC
/* 8B5BC9C 8008876C 450022A2 */  sb         $v0, 0x45($s1)
/* 8B5BCA0 80088770 4600A392 */  lbu        $v1, 0x46($s5)
/* 8B5BCA4 80088774 02000224 */  addiu      $v0, $zero, 0x2
/* 8B5BCA8 80088778 480022A2 */  sb         $v0, 0x48($s1)
/* 8B5BCAC 8008877C 5E3C010C */  jal        func_8004F178
/* 8B5BCB0 80088780 460023A2 */   sb        $v1, 0x46($s1)
/* 8B5BCB4 80088784 21202002 */  addu       $a0, $s1, $zero
/* 8B5BCB8 80088788 E0D3000C */  jal        func_80034F80
/* 8B5BCBC 8008878C 04000524 */   addiu     $a1, $zero, 0x4
/* 8B5BCC0 80088790 36008386 */  lh         $v1, 0x36($s4)
/* 8B5BCC4 80088794 63000224 */  addiu      $v0, $zero, 0x63
/* 8B5BCC8 80088798 05006214 */  bne        $v1, $v0, .Llevel_44_800887B0
/* 8B5BCCC 8008879C FF000224 */   addiu     $v0, $zero, 0xFF
/* 8B5BCD0 800887A0 540022A2 */  sb         $v0, 0x54($s1)
/* 8B5BCD4 800887A4 38000224 */  addiu      $v0, $zero, 0x38
/* 8B5BCD8 800887A8 EF210208 */  j          .Llevel_44_800887BC
/* 8B5BCDC 800887AC 550020A2 */   sb        $zero, 0x55($s1)
.Llevel_44_800887B0:
/* 8B5BCE0 800887B0 550022A2 */  sb         $v0, 0x55($s1)
/* 8B5BCE4 800887B4 38000224 */  addiu      $v0, $zero, 0x38
/* 8B5BCE8 800887B8 540020A2 */  sb         $zero, 0x54($s1)
.Llevel_44_800887BC:
/* 8B5BCEC 800887BC 560020A2 */  sb         $zero, 0x56($s1)
/* 8B5BCF0 800887C0 A3230208 */  j          .Llevel_44_80088E8C
/* 8B5BCF4 800887C4 570022A2 */   sb        $v0, 0x57($s1)
.Llevel_44_800887C8:
/* 8B5BCF8 800887C8 0957010C */  jal        func_80055C24
/* 8B5BCFC 800887CC 2120A002 */   addu      $a0, $s5, $zero
/* 8B5BD00 800887D0 02000224 */  addiu      $v0, $zero, 0x2
/* 8B5BD04 800887D4 0E008012 */  beqz       $s4, .Llevel_44_80088810
/* 8B5BD08 800887D8 5400A2A2 */   sb        $v0, 0x54($s5)
/* 8B5BD0C 800887DC 0C00A426 */  addiu      $a0, $s5, 0xC
/* 8B5BD10 800887E0 0000A28E */  lw         $v0, 0x0($s5)
/* 8B5BD14 800887E4 0C008526 */  addiu      $a1, $s4, 0xC
/* 8B5BD18 800887E8 5E3C010C */  jal        func_8004F178
/* 8B5BD1C 800887EC 000054AC */   sw        $s4, 0x0($v0)
/* 8B5BD20 800887F0 0A000224 */  addiu      $v0, $zero, 0xA
/* 8B5BD24 800887F4 4A00A2A2 */  sb         $v0, 0x4A($s5)
/* 8B5BD28 800887F8 1400A28E */  lw         $v0, 0x14($s5)
/* 8B5BD2C 800887FC 08000324 */  addiu      $v1, $zero, 0x8
/* 8B5BD30 80088800 4C00A3A2 */  sb         $v1, 0x4C($s5)
/* 8B5BD34 80088804 00044224 */  addiu      $v0, $v0, 0x400
/* 8B5BD38 80088808 A3230208 */  j          .Llevel_44_80088E8C
/* 8B5BD3C 8008880C 1400A2AE */   sw        $v0, 0x14($s5)
.Llevel_44_80088810:
/* 8B5BD40 80088810 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 8B5BD44 80088814 A3230208 */  j          .Llevel_44_80088E8C
/* 8B5BD48 80088818 1C00A2AE */   sw        $v0, 0x1C($s5)
.Llevel_44_8008881C:
/* 8B5BD4C 8008881C 0780053C */  lui        $a1, %hi(D_80070328)
/* 8B5BD50 80088820 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 8B5BD54 80088824 0000B08E */  lw         $s0, 0x0($s5)
/* 8B5BD58 80088828 5E3C010C */  jal        func_8004F178
/* 8B5BD5C 8008882C 0C00A426 */   addiu     $a0, $s5, 0xC
/* 8B5BD60 80088830 1400A28E */  lw         $v0, 0x14($s5)
/* 8B5BD64 80088834 00000000 */  nop
/* 8B5BD68 80088838 00044224 */  addiu      $v0, $v0, 0x400
/* 8B5BD6C 8008883C 1400A2AE */  sw         $v0, 0x14($s5)
/* 8B5BD70 80088840 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 8B5BD74 80088844 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 8B5BD78 80088848 2120A002 */  addu       $a0, $s5, $zero
/* 8B5BD7C 8008884C 0957010C */  jal        func_80055C24
/* 8B5BD80 80088850 4600A2A2 */   sb        $v0, 0x46($s5)
/* 8B5BD84 80088854 02000224 */  addiu      $v0, $zero, 0x2
/* 8B5BD88 80088858 020002A2 */  sb         $v0, 0x2($s0)
/* 8B5BD8C 8008885C 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 8B5BD90 80088860 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 8B5BD94 80088864 00000000 */  nop
/* 8B5BD98 80088868 030002A2 */  sb         $v0, 0x3($s0)
/* 8B5BD9C 8008886C 0780033C */  lui        $v1, %hi(D_80070328 + 0xE)
/* 8B5BDA0 80088870 36036390 */  lbu        $v1, %lo(D_80070328 + 0xE)($v1)
/* 8B5BDA4 80088874 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 8B5BDA8 80088878 100002AE */  sw         $v0, 0x10($s0)
/* 8B5BDAC 8008887C 040003A2 */  sb         $v1, 0x4($s0)
/* 8B5BDB0 80088880 4100A0A2 */  sb         $zero, 0x41($s5)
/* 8B5BDB4 80088884 4C00A0A2 */  sb         $zero, 0x4C($s5)
/* 8B5BDB8 80088888 A3230208 */  j          .Llevel_44_80088E8C
/* 8B5BDBC 8008888C 4D00A0A2 */   sb        $zero, 0x4D($s5)
.Llevel_44_80088890:
/* 8B5BDC0 80088890 0C00A426 */  addiu      $a0, $s5, 0xC
.Llevel_44_80088894:
/* 8B5BDC4 80088894 0C008526 */  addiu      $a1, $s4, 0xC
/* 8B5BDC8 80088898 0000B38E */  lw         $s3, 0x0($s5)
/* 8B5BDCC 8008889C 20000224 */  addiu      $v0, $zero, 0x20
/* 8B5BDD0 800888A0 5E3C010C */  jal        func_8004F178
/* 8B5BDD4 800888A4 4C00A2A2 */   sb        $v0, 0x4C($s5)
/* 8B5BDD8 800888A8 0957010C */  jal        func_80055C24
/* 8B5BDDC 800888AC 2120A002 */   addu      $a0, $s5, $zero
/* 8B5BDE0 800888B0 9171010C */  jal        rand
/* 8B5BDE4 800888B4 00000000 */   nop
/* 8B5BDE8 800888B8 9171010C */  jal        rand
/* 8B5BDEC 800888BC FF0F5230 */   andi      $s2, $v0, 0xFFF
/* 8B5BDF0 800888C0 FF075130 */  andi       $s1, $v0, 0x7FF
/* 8B5BDF4 800888C4 8B3A010C */  jal        func_8004EA2C
/* 8B5BDF8 800888C8 21202002 */   addu      $a0, $s1, $zero
/* 8B5BDFC 800888CC 21204002 */  addu       $a0, $s2, $zero
/* 8B5BE00 800888D0 8B3A010C */  jal        func_8004EA2C
/* 8B5BE04 800888D4 21804000 */   addu      $s0, $v0, $zero
/* 8B5BE08 800888D8 18000202 */  mult       $s0, $v0
/* 8B5BE0C 800888DC 12400000 */  mflo       $t0
/* 8B5BE10 800888E0 49008292 */  lbu        $v0, 0x49($s4)
/* 8B5BE14 800888E4 00000000 */  nop
/* 8B5BE18 800888E8 18000201 */  mult       $t0, $v0
/* 8B5BE1C 800888EC 21202002 */  addu       $a0, $s1, $zero
/* 8B5BE20 800888F0 12400000 */  mflo       $t0
/* 8B5BE24 800888F4 03160800 */  sra        $v0, $t0, 24
/* 8B5BE28 800888F8 8B3A010C */  jal        func_8004EA2C
/* 8B5BE2C 800888FC 000062A6 */   sh        $v0, 0x0($s3)
/* 8B5BE30 80088900 21204002 */  addu       $a0, $s2, $zero
/* 8B5BE34 80088904 793A010C */  jal        func_8004E9E4
/* 8B5BE38 80088908 21804000 */   addu      $s0, $v0, $zero
/* 8B5BE3C 8008890C 18000202 */  mult       $s0, $v0
/* 8B5BE40 80088910 12400000 */  mflo       $t0
/* 8B5BE44 80088914 49008292 */  lbu        $v0, 0x49($s4)
/* 8B5BE48 80088918 00000000 */  nop
/* 8B5BE4C 8008891C 18000201 */  mult       $t0, $v0
/* 8B5BE50 80088920 21202002 */  addu       $a0, $s1, $zero
/* 8B5BE54 80088924 12400000 */  mflo       $t0
/* 8B5BE58 80088928 03160800 */  sra        $v0, $t0, 24
/* 8B5BE5C 8008892C 793A010C */  jal        func_8004E9E4
/* 8B5BE60 80088930 020062A6 */   sh        $v0, 0x2($s3)
/* 8B5BE64 80088934 49008392 */  lbu        $v1, 0x49($s4)
/* 8B5BE68 80088938 00000000 */  nop
/* 8B5BE6C 8008893C 18004300 */  mult       $v0, $v1
/* 8B5BE70 80088940 12400000 */  mflo       $t0
/* 8B5BE74 80088944 03130800 */  sra        $v0, $t0, 12
/* 8B5BE78 80088948 040062A6 */  sh         $v0, 0x4($s3)
/* 8B5BE7C 8008894C 1800838E */  lw         $v1, 0x18($s4)
/* 8B5BE80 80088950 0002023C */  lui        $v0, (0x2000000 >> 16)
/* 8B5BE84 80088954 24106200 */  and        $v0, $v1, $v0
/* 8B5BE88 80088958 2C004010 */  beqz       $v0, .Llevel_44_80088A0C
/* 8B5BE8C 8008895C 21300000 */   addu      $a2, $zero, $zero
/* 8B5BE90 80088960 0780103C */  lui        $s0, %hi(D_80070328)
/* 8B5BE94 80088964 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 8B5BE98 80088968 0C00A38E */  lw         $v1, 0xC($s5)
/* 8B5BE9C 8008896C 0000048E */  lw         $a0, 0x0($s0)
/* 8B5BEA0 80088970 1000A28E */  lw         $v0, 0x10($s5)
/* 8B5BEA4 80088974 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 8B5BEA8 80088978 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 8B5BEAC 8008897C 23206400 */  subu       $a0, $v1, $a0
/* 8B5BEB0 80088980 203A010C */  jal        func_8004E880
/* 8B5BEB4 80088984 23284500 */   subu      $a1, $v0, $a1
/* 8B5BEB8 80088988 40100200 */  sll        $v0, $v0, 1
/* 8B5BEBC 8008898C 21300000 */  addu       $a2, $zero, $zero
/* 8B5BEC0 80088990 0680013C */  lui        $at, %hi(D_80065920)
/* 8B5BEC4 80088994 21082200 */  addu       $at, $at, $v0
/* 8B5BEC8 80088998 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 8B5BECC 8008899C 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 8B5BED0 800889A0 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 8B5BED4 800889A4 03110200 */  sra        $v0, $v0, 4
/* 8B5BED8 800889A8 4000A2AF */  sw         $v0, 0x40($sp)
/* 8B5BEDC 800889AC 0C00A38E */  lw         $v1, 0xC($s5)
/* 8B5BEE0 800889B0 0000048E */  lw         $a0, 0x0($s0)
/* 8B5BEE4 800889B4 1000A28E */  lw         $v0, 0x10($s5)
/* 8B5BEE8 800889B8 23206400 */  subu       $a0, $v1, $a0
/* 8B5BEEC 800889BC 203A010C */  jal        func_8004E880
/* 8B5BEF0 800889C0 23284500 */   subu      $a1, $v0, $a1
/* 8B5BEF4 800889C4 40100200 */  sll        $v0, $v0, 1
/* 8B5BEF8 800889C8 0680013C */  lui        $at, %hi(D_800658A0)
/* 8B5BEFC 800889CC 21082200 */  addu       $at, $at, $v0
/* 8B5BF00 800889D0 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 8B5BF04 800889D4 4000A38F */  lw         $v1, 0x40($sp)
/* 8B5BF08 800889D8 4800A0AF */  sw         $zero, 0x48($sp)
/* 8B5BF0C 800889DC 03110200 */  sra        $v0, $v0, 4
/* 8B5BF10 800889E0 4400A2AF */  sw         $v0, 0x44($sp)
/* 8B5BF14 800889E4 00006296 */  lhu        $v0, 0x0($s3)
/* 8B5BF18 800889E8 00000000 */  nop
/* 8B5BF1C 800889EC 21104300 */  addu       $v0, $v0, $v1
/* 8B5BF20 800889F0 000062A6 */  sh         $v0, 0x0($s3)
/* 8B5BF24 800889F4 4400A38F */  lw         $v1, 0x44($sp)
/* 8B5BF28 800889F8 02006296 */  lhu        $v0, 0x2($s3)
/* 8B5BF2C 800889FC 00000000 */  nop
/* 8B5BF30 80088A00 21104300 */  addu       $v0, $v0, $v1
/* 8B5BF34 80088A04 9A220208 */  j          .Llevel_44_80088A68
/* 8B5BF38 80088A08 020062A6 */   sh        $v0, 0x2($s3)
.Llevel_44_80088A0C:
/* 8B5BF3C 80088A0C 0200023C */  lui        $v0, (0x20000 >> 16)
/* 8B5BF40 80088A10 24106200 */  and        $v0, $v1, $v0
/* 8B5BF44 80088A14 14004010 */  beqz       $v0, .Llevel_44_80088A68
/* 8B5BF48 80088A18 04000224 */   addiu     $v0, $zero, 0x4
/* 8B5BF4C 80088A1C 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 8B5BF50 80088A20 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 8B5BF54 80088A24 00000000 */  nop
/* 8B5BF58 80088A28 03006210 */  beq        $v1, $v0, .Llevel_44_80088A38
/* 8B5BF5C 80088A2C 0C000224 */   addiu     $v0, $zero, 0xC
/* 8B5BF60 80088A30 0D006214 */  bne        $v1, $v0, .Llevel_44_80088A68
/* 8B5BF64 80088A34 00000000 */   nop
.Llevel_44_80088A38:
/* 8B5BF68 80088A38 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 8B5BF6C 80088A3C B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 8B5BF70 80088A40 00006396 */  lhu        $v1, 0x0($s3)
/* 8B5BF74 80088A44 83110200 */  sra        $v0, $v0, 6
/* 8B5BF78 80088A48 21186200 */  addu       $v1, $v1, $v0
/* 8B5BF7C 80088A4C 000063A6 */  sh         $v1, 0x0($s3)
/* 8B5BF80 80088A50 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 8B5BF84 80088A54 B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 8B5BF88 80088A58 02006396 */  lhu        $v1, 0x2($s3)
/* 8B5BF8C 80088A5C 83110200 */  sra        $v0, $v0, 6
/* 8B5BF90 80088A60 21186200 */  addu       $v1, $v1, $v0
/* 8B5BF94 80088A64 020063A6 */  sh         $v1, 0x2($s3)
.Llevel_44_80088A68:
/* 8B5BF98 80088A68 51008492 */  lbu        $a0, 0x51($s4)
/* 8B5BF9C 80088A6C 00000000 */  nop
/* 8B5BFA0 80088A70 26008010 */  beqz       $a0, .Llevel_44_80088B0C
/* 8B5BFA4 80088A74 1000033C */   lui       $v1, (0x100000 >> 16)
/* 8B5BFA8 80088A78 1800828E */  lw         $v0, 0x18($s4)
/* 8B5BFAC 80088A7C 00000000 */  nop
/* 8B5BFB0 80088A80 24104300 */  and        $v0, $v0, $v1
/* 8B5BFB4 80088A84 21004010 */  beqz       $v0, .Llevel_44_80088B0C
/* 8B5BFB8 80088A88 40100400 */   sll       $v0, $a0, 1
/* 8B5BFBC 80088A8C 0680013C */  lui        $at, %hi(D_80065920)
/* 8B5BFC0 80088A90 21082200 */  addu       $at, $at, $v0
/* 8B5BFC4 80088A94 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 8B5BFC8 80088A98 00000000 */  nop
/* 8B5BFCC 80088A9C 80100300 */  sll        $v0, $v1, 2
/* 8B5BFD0 80088AA0 21104300 */  addu       $v0, $v0, $v1
/* 8B5BFD4 80088AA4 00190200 */  sll        $v1, $v0, 4
/* 8B5BFD8 80088AA8 23186200 */  subu       $v1, $v1, $v0
/* 8B5BFDC 80088AAC 00006296 */  lhu        $v0, 0x0($s3)
/* 8B5BFE0 80088AB0 C31A0300 */  sra        $v1, $v1, 11
/* 8B5BFE4 80088AB4 21104300 */  addu       $v0, $v0, $v1
/* 8B5BFE8 80088AB8 000062A6 */  sh         $v0, 0x0($s3)
/* 8B5BFEC 80088ABC 51008292 */  lbu        $v0, 0x51($s4)
/* 8B5BFF0 80088AC0 28000424 */  addiu      $a0, $zero, 0x28
/* 8B5BFF4 80088AC4 40100200 */  sll        $v0, $v0, 1
/* 8B5BFF8 80088AC8 0680013C */  lui        $at, %hi(D_800658A0)
/* 8B5BFFC 80088ACC 21082200 */  addu       $at, $at, $v0
/* 8B5C000 80088AD0 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 8B5C004 80088AD4 46000524 */  addiu      $a1, $zero, 0x46
/* 8B5C008 80088AD8 80100300 */  sll        $v0, $v1, 2
/* 8B5C00C 80088ADC 21104300 */  addu       $v0, $v0, $v1
/* 8B5C010 80088AE0 00190200 */  sll        $v1, $v0, 4
/* 8B5C014 80088AE4 23186200 */  subu       $v1, $v1, $v0
/* 8B5C018 80088AE8 02006296 */  lhu        $v0, 0x2($s3)
/* 8B5C01C 80088AEC C31A0300 */  sra        $v1, $v1, 11
/* 8B5C020 80088AF0 21104300 */  addu       $v0, $v0, $v1
/* 8B5C024 80088AF4 DBD8000C */  jal        func_8003636C
/* 8B5C028 80088AF8 020062A6 */   sh        $v0, 0x2($s3)
/* 8B5C02C 80088AFC 04006396 */  lhu        $v1, 0x4($s3)
/* 8B5C030 80088B00 00000000 */  nop
/* 8B5C034 80088B04 21186200 */  addu       $v1, $v1, $v0
/* 8B5C038 80088B08 040063A6 */  sh         $v1, 0x4($s3)
.Llevel_44_80088B0C:
/* 8B5C03C 80088B0C 00006286 */  lh         $v0, 0x0($s3)
/* 8B5C040 80088B10 0C00A38E */  lw         $v1, 0xC($s5)
/* 8B5C044 80088B14 80100200 */  sll        $v0, $v0, 2
/* 8B5C048 80088B18 21186200 */  addu       $v1, $v1, $v0
/* 8B5C04C 80088B1C 0C00A3AE */  sw         $v1, 0xC($s5)
/* 8B5C050 80088B20 02006286 */  lh         $v0, 0x2($s3)
/* 8B5C054 80088B24 1000A38E */  lw         $v1, 0x10($s5)
/* 8B5C058 80088B28 80100200 */  sll        $v0, $v0, 2
/* 8B5C05C 80088B2C 21186200 */  addu       $v1, $v1, $v0
/* 8B5C060 80088B30 1000A3AE */  sw         $v1, 0x10($s5)
/* 8B5C064 80088B34 04006286 */  lh         $v0, 0x4($s3)
/* 8B5C068 80088B38 1400A38E */  lw         $v1, 0x14($s5)
/* 8B5C06C 80088B3C 80100200 */  sll        $v0, $v0, 2
/* 8B5C070 80088B40 21186200 */  addu       $v1, $v1, $v0
/* 8B5C074 80088B44 9171010C */  jal        rand
/* 8B5C078 80088B48 1400A3AE */   sw        $v1, 0x14($s5)
/* 8B5C07C 80088B4C 9171010C */  jal        rand
/* 8B5C080 80088B50 4500A2A2 */   sb        $v0, 0x45($s5)
/* 8B5C084 80088B54 9171010C */  jal        rand
/* 8B5C088 80088B58 4600A2A2 */   sb        $v0, 0x46($s5)
/* 8B5C08C 80088B5C 1F004230 */  andi       $v0, $v0, 0x1F
/* 8B5C090 80088B60 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 8B5C094 80088B64 9171010C */  jal        rand
/* 8B5C098 80088B68 060062A6 */   sh        $v0, 0x6($s3)
/* 8B5C09C 80088B6C 1F004230 */  andi       $v0, $v0, 0x1F
/* 8B5C0A0 80088B70 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 8B5C0A4 80088B74 9171010C */  jal        rand
/* 8B5C0A8 80088B78 080062A6 */   sh        $v0, 0x8($s3)
/* 8B5C0AC 80088B7C 32000424 */  addiu      $a0, $zero, 0x32
/* 8B5C0B0 80088B80 1F004230 */  andi       $v0, $v0, 0x1F
/* 8B5C0B4 80088B84 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 8B5C0B8 80088B88 0A0062A6 */  sh         $v0, 0xA($s3)
/* 8B5C0BC 80088B8C 1400828E */  lw         $v0, 0x14($s4)
/* 8B5C0C0 80088B90 50000524 */  addiu      $a1, $zero, 0x50
/* 8B5C0C4 80088B94 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 8B5C0C8 80088B98 DBD8000C */  jal        func_8003636C
/* 8B5C0CC 80088B9C 100062AE */   sw        $v0, 0x10($s3)
/* 8B5C0D0 80088BA0 A3230208 */  j          .Llevel_44_80088E8C
/* 8B5C0D4 80088BA4 0C0062AE */   sw        $v0, 0xC($s3)
.Llevel_44_80088BA8:
/* 8B5C0D8 80088BA8 0C00A426 */  addiu      $a0, $s5, 0xC
/* 8B5C0DC 80088BAC 0C008526 */  addiu      $a1, $s4, 0xC
/* 8B5C0E0 80088BB0 0000B18E */  lw         $s1, 0x0($s5)
/* 8B5C0E4 80088BB4 20000224 */  addiu      $v0, $zero, 0x20
/* 8B5C0E8 80088BB8 4C00A2A2 */  sb         $v0, 0x4C($s5)
/* 8B5C0EC 80088BBC 5E3C010C */  jal        func_8004F178
/* 8B5C0F0 80088BC0 4E00A2A2 */   sb        $v0, 0x4E($s5)
/* 8B5C0F4 80088BC4 0957010C */  jal        func_80055C24
/* 8B5C0F8 80088BC8 2120A002 */   addu      $a0, $s5, $zero
/* 8B5C0FC 80088BCC 21200000 */  addu       $a0, $zero, $zero
/* 8B5C100 80088BD0 DBD8000C */  jal        func_8003636C
/* 8B5C104 80088BD4 FF030524 */   addiu     $a1, $zero, 0x3FF
/* 8B5C108 80088BD8 9171010C */  jal        rand
/* 8B5C10C 80088BDC 21984000 */   addu      $s3, $v0, $zero
/* 8B5C110 80088BE0 21206002 */  addu       $a0, $s3, $zero
/* 8B5C114 80088BE4 8B3A010C */  jal        func_8004EA2C
/* 8B5C118 80088BE8 FF0F5430 */   andi      $s4, $v0, 0xFFF
/* 8B5C11C 80088BEC 21208002 */  addu       $a0, $s4, $zero
/* 8B5C120 80088BF0 8B3A010C */  jal        func_8004EA2C
/* 8B5C124 80088BF4 21804000 */   addu      $s0, $v0, $zero
/* 8B5C128 80088BF8 64001224 */  addiu      $s2, $zero, 0x64
/* 8B5C12C 80088BFC 18005200 */  mult       $v0, $s2
/* 8B5C130 80088C00 12400000 */  mflo       $t0
/* 8B5C134 80088C04 83811000 */  sra        $s0, $s0, 6
/* 8B5C138 80088C08 00000000 */  nop
/* 8B5C13C 80088C0C 18000802 */  mult       $s0, $t0
/* 8B5C140 80088C10 21206002 */  addu       $a0, $s3, $zero
/* 8B5C144 80088C14 12400000 */  mflo       $t0
/* 8B5C148 80088C18 83140800 */  sra        $v0, $t0, 18
/* 8B5C14C 80088C1C 8B3A010C */  jal        func_8004EA2C
/* 8B5C150 80088C20 000022A6 */   sh        $v0, 0x0($s1)
/* 8B5C154 80088C24 21208002 */  addu       $a0, $s4, $zero
/* 8B5C158 80088C28 793A010C */  jal        func_8004E9E4
/* 8B5C15C 80088C2C 21804000 */   addu      $s0, $v0, $zero
/* 8B5C160 80088C30 18005200 */  mult       $v0, $s2
/* 8B5C164 80088C34 12400000 */  mflo       $t0
/* 8B5C168 80088C38 83811000 */  sra        $s0, $s0, 6
/* 8B5C16C 80088C3C 00000000 */  nop
/* 8B5C170 80088C40 18000802 */  mult       $s0, $t0
/* 8B5C174 80088C44 21206002 */  addu       $a0, $s3, $zero
/* 8B5C178 80088C48 12400000 */  mflo       $t0
/* 8B5C17C 80088C4C 83140800 */  sra        $v0, $t0, 18
/* 8B5C180 80088C50 793A010C */  jal        func_8004E9E4
/* 8B5C184 80088C54 020022A6 */   sh        $v0, 0x2($s1)
/* 8B5C188 80088C58 18005200 */  mult       $v0, $s2
/* 8B5C18C 80088C5C 12400000 */  mflo       $t0
/* 8B5C190 80088C60 03130800 */  sra        $v0, $t0, 12
/* 8B5C194 80088C64 9171010C */  jal        rand
/* 8B5C198 80088C68 040022A6 */   sh        $v0, 0x4($s1)
/* 8B5C19C 80088C6C 9171010C */  jal        rand
/* 8B5C1A0 80088C70 4400A2A2 */   sb        $v0, 0x44($s5)
/* 8B5C1A4 80088C74 9171010C */  jal        rand
/* 8B5C1A8 80088C78 4500A2A2 */   sb        $v0, 0x45($s5)
/* 8B5C1AC 80088C7C 4600A2A2 */  sb         $v0, 0x46($s5)
/* 8B5C1B0 80088C80 00002286 */  lh         $v0, 0x0($s1)
/* 8B5C1B4 80088C84 0C00A38E */  lw         $v1, 0xC($s5)
/* 8B5C1B8 80088C88 40100200 */  sll        $v0, $v0, 1
/* 8B5C1BC 80088C8C 21186200 */  addu       $v1, $v1, $v0
/* 8B5C1C0 80088C90 0C00A3AE */  sw         $v1, 0xC($s5)
/* 8B5C1C4 80088C94 02002286 */  lh         $v0, 0x2($s1)
/* 8B5C1C8 80088C98 1000A38E */  lw         $v1, 0x10($s5)
/* 8B5C1CC 80088C9C 40100200 */  sll        $v0, $v0, 1
/* 8B5C1D0 80088CA0 21186200 */  addu       $v1, $v1, $v0
/* 8B5C1D4 80088CA4 1000A3AE */  sw         $v1, 0x10($s5)
/* 8B5C1D8 80088CA8 04002286 */  lh         $v0, 0x4($s1)
/* 8B5C1DC 80088CAC 1400A38E */  lw         $v1, 0x14($s5)
/* 8B5C1E0 80088CB0 40100200 */  sll        $v0, $v0, 1
/* 8B5C1E4 80088CB4 21186200 */  addu       $v1, $v1, $v0
/* 8B5C1E8 80088CB8 9171010C */  jal        rand
/* 8B5C1EC 80088CBC 1400A3AE */   sw        $v1, 0x14($s5)
/* 8B5C1F0 80088CC0 1F004230 */  andi       $v0, $v0, 0x1F
/* 8B5C1F4 80088CC4 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 8B5C1F8 80088CC8 9171010C */  jal        rand
/* 8B5C1FC 80088CCC 060022A6 */   sh        $v0, 0x6($s1)
/* 8B5C200 80088CD0 1F004230 */  andi       $v0, $v0, 0x1F
/* 8B5C204 80088CD4 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 8B5C208 80088CD8 9171010C */  jal        rand
/* 8B5C20C 80088CDC 080022A6 */   sh        $v0, 0x8($s1)
/* 8B5C210 80088CE0 5A000424 */  addiu      $a0, $zero, 0x5A
/* 8B5C214 80088CE4 96000524 */  addiu      $a1, $zero, 0x96
/* 8B5C218 80088CE8 1F004230 */  andi       $v0, $v0, 0x1F
/* 8B5C21C 80088CEC F0FF4224 */  addiu      $v0, $v0, -0x10
/* 8B5C220 80088CF0 DBD8000C */  jal        func_8003636C
/* 8B5C224 80088CF4 0A0022A6 */   sh        $v0, 0xA($s1)
/* 8B5C228 80088CF8 0C0022A6 */  sh         $v0, 0xC($s1)
/* 8B5C22C 80088CFC 01000224 */  addiu      $v0, $zero, 0x1
/* 8B5C230 80088D00 0E0022A6 */  sh         $v0, 0xE($s1)
/* 8B5C234 80088D04 A3230208 */  j          .Llevel_44_80088E8C
/* 8B5C238 80088D08 120020A6 */   sh        $zero, 0x12($s1)
.Llevel_44_80088D0C:
/* 8B5C23C 80088D0C 0C00A426 */  addiu      $a0, $s5, 0xC
/* 8B5C240 80088D10 0000B18E */  lw         $s1, 0x0($s5)
/* 8B5C244 80088D14 5E3C010C */  jal        func_8004F178
/* 8B5C248 80088D18 0C008526 */   addiu     $a1, $s4, 0xC
/* 8B5C24C 80088D1C 2120A002 */  addu       $a0, $s5, $zero
/* 8B5C250 80088D20 4C00A0A2 */  sb         $zero, 0x4C($s5)
/* 8B5C254 80088D24 4457010C */  jal        func_80055D10
/* 8B5C258 80088D28 4D00A0A2 */   sb        $zero, 0x4D($s5)
/* 8B5C25C 80088D2C FF000224 */  addiu      $v0, $zero, 0xFF
/* 8B5C260 80088D30 4100A0A2 */  sb         $zero, 0x41($s5)
/* 8B5C264 80088D34 4C00A0A2 */  sb         $zero, 0x4C($s5)
/* 8B5C268 80088D38 4D00A0A2 */  sb         $zero, 0x4D($s5)
/* 8B5C26C 80088D3C 4A00A2A2 */  sb         $v0, 0x4A($s5)
/* 8B5C270 80088D40 44008292 */  lbu        $v0, 0x44($s4)
/* 8B5C274 80088D44 00000000 */  nop
/* 8B5C278 80088D48 4400A2A2 */  sb         $v0, 0x44($s5)
/* 8B5C27C 80088D4C 46008292 */  lbu        $v0, 0x46($s4)
/* 8B5C280 80088D50 00000000 */  nop
/* 8B5C284 80088D54 4600A2A2 */  sb         $v0, 0x46($s5)
/* 8B5C288 80088D58 0000828E */  lw         $v0, 0x0($s4)
/* 8B5C28C 80088D5C 00000000 */  nop
/* 8B5C290 80088D60 0800438C */  lw         $v1, 0x8($v0)
/* 8B5C294 80088D64 00000000 */  nop
/* 8B5C298 80088D68 40100300 */  sll        $v0, $v1, 1
/* 8B5C29C 80088D6C 21104300 */  addu       $v0, $v0, $v1
/* 8B5C2A0 80088D70 80100200 */  sll        $v0, $v0, 2
/* 8B5C2A4 80088D74 23104300 */  subu       $v0, $v0, $v1
/* 8B5C2A8 80088D78 0780033C */  lui        $v1, %hi(D_8006C550)
/* 8B5C2AC 80088D7C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 8B5C2B0 80088D80 C0100200 */  sll        $v0, $v0, 3
/* 8B5C2B4 80088D84 21806200 */  addu       $s0, $v1, $v0
/* 8B5C2B8 80088D88 40000012 */  beqz       $s0, .Llevel_44_80088E8C
/* 8B5C2BC 80088D8C 21280000 */   addu      $a1, $zero, $zero
/* 8B5C2C0 80088D90 0000048E */  lw         $a0, 0x0($s0)
/* 8B5C2C4 80088D94 D0090624 */  addiu      $a2, $zero, 0x9D0
/* 8B5C2C8 80088D98 14008424 */  addiu      $a0, $a0, 0x14
/* 8B5C2CC 80088D9C EB39010C */  jal        func_8004E7AC
/* 8B5C2D0 80088DA0 040024AE */   sw        $a0, 0x4($s1)
/* 8B5C2D4 80088DA4 C8000224 */  addiu      $v0, $zero, 0xC8
/* 8B5C2D8 80088DA8 000022A6 */  sh         $v0, 0x0($s1)
/* 8B5C2DC 80088DAC A3230208 */  j          .Llevel_44_80088E8C
/* 8B5C2E0 80088DB0 100030AE */   sw        $s0, 0x10($s1)
.Llevel_44_80088DB4:
/* 8B5C2E4 80088DB4 0000B18E */  lw         $s1, 0x0($s5)
/* 8B5C2E8 80088DB8 5E3C010C */  jal        func_8004F178
/* 8B5C2EC 80088DBC 0C008526 */   addiu     $a1, $s4, 0xC
/* 8B5C2F0 80088DC0 2120A002 */  addu       $a0, $s5, $zero
/* 8B5C2F4 80088DC4 4C00A0A2 */  sb         $zero, 0x4C($s5)
/* 8B5C2F8 80088DC8 4457010C */  jal        func_80055D10
/* 8B5C2FC 80088DCC 4D00A0A2 */   sb        $zero, 0x4D($s5)
/* 8B5C300 80088DD0 4100A0A2 */  sb         $zero, 0x41($s5)
/* 8B5C304 80088DD4 4C00A0A2 */  sb         $zero, 0x4C($s5)
/* 8B5C308 80088DD8 4D00A0A2 */  sb         $zero, 0x4D($s5)
/* 8B5C30C 80088DDC 49008392 */  lbu        $v1, 0x49($s4)
/* 8B5C310 80088DE0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 8B5C314 80088DE4 4A00A2A2 */  sb         $v0, 0x4A($s5)
/* 8B5C318 80088DE8 1400A28E */  lw         $v0, 0x14($s5)
/* 8B5C31C 80088DEC 4800A3A2 */  sb         $v1, 0x48($s5)
/* 8B5C320 80088DF0 46008392 */  lbu        $v1, 0x46($s4)
/* 8B5C324 80088DF4 00014224 */  addiu      $v0, $v0, 0x100
/* 8B5C328 80088DF8 1400A2AE */  sw         $v0, 0x14($s5)
/* 8B5C32C 80088DFC 4600A3A2 */  sb         $v1, 0x46($s5)
/* 8B5C330 80088E00 0000828E */  lw         $v0, 0x0($s4)
/* 8B5C334 80088E04 00000000 */  nop
/* 8B5C338 80088E08 0000438C */  lw         $v1, 0x0($v0)
/* 8B5C33C 80088E0C 00000000 */  nop
/* 8B5C340 80088E10 1E006004 */  bltz       $v1, .Llevel_44_80088E8C
/* 8B5C344 80088E14 21280000 */   addu      $a1, $zero, $zero
/* 8B5C348 80088E18 40100300 */  sll        $v0, $v1, 1
/* 8B5C34C 80088E1C 21104300 */  addu       $v0, $v0, $v1
/* 8B5C350 80088E20 80100200 */  sll        $v0, $v0, 2
/* 8B5C354 80088E24 23104300 */  subu       $v0, $v0, $v1
/* 8B5C358 80088E28 0780103C */  lui        $s0, %hi(D_8006C550)
/* 8B5C35C 80088E2C 50C5108E */  lw         $s0, %lo(D_8006C550)($s0)
/* 8B5C360 80088E30 C0100200 */  sll        $v0, $v0, 3
/* 8B5C364 80088E34 21800202 */  addu       $s0, $s0, $v0
/* 8B5C368 80088E38 0000048E */  lw         $a0, 0x0($s0)
/* 8B5C36C 80088E3C C0090624 */  addiu      $a2, $zero, 0x9C0
/* 8B5C370 80088E40 14008424 */  addiu      $a0, $a0, 0x14
/* 8B5C374 80088E44 EB39010C */  jal        func_8004E7AC
/* 8B5C378 80088E48 040024AE */   sw        $a0, 0x4($s1)
/* 8B5C37C 80088E4C C8000224 */  addiu      $v0, $zero, 0xC8
/* 8B5C380 80088E50 000022A6 */  sh         $v0, 0x0($s1)
/* 8B5C384 80088E54 020022A6 */  sh         $v0, 0x2($s1)
/* 8B5C388 80088E58 A3230208 */  j          .Llevel_44_80088E8C
/* 8B5C38C 80088E5C 100030AE */   sw        $s0, 0x10($s1)
.Llevel_44_80088E60:
/* 8B5C390 80088E60 03008012 */  beqz       $s4, .Llevel_44_80088E70
/* 8B5C394 80088E64 0C00A426 */   addiu     $a0, $s5, 0xC
/* 8B5C398 80088E68 9E230208 */  j          .Llevel_44_80088E78
/* 8B5C39C 80088E6C 0C008526 */   addiu     $a1, $s4, 0xC
.Llevel_44_80088E70:
/* 8B5C3A0 80088E70 0780053C */  lui        $a1, %hi(D_80070328)
/* 8B5C3A4 80088E74 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
.Llevel_44_80088E78:
/* 8B5C3A8 80088E78 5E3C010C */  jal        func_8004F178
/* 8B5C3AC 80088E7C 00000000 */   nop
/* 8B5C3B0 80088E80 2120A002 */  addu       $a0, $s5, $zero
.Llevel_44_80088E84:
/* 8B5C3B4 80088E84 0957010C */  jal        func_80055C24
/* 8B5C3B8 80088E88 00000000 */   nop
.Llevel_44_80088E8C:
/* 8B5C3BC 80088E8C 2110A002 */  addu       $v0, $s5, $zero
.Llevel_44_80088E90:
/* 8B5C3C0 80088E90 9C00BF8F */  lw         $ra, 0x9C($sp)
/* 8B5C3C4 80088E94 9800BE8F */  lw         $fp, 0x98($sp)
/* 8B5C3C8 80088E98 9400B78F */  lw         $s7, 0x94($sp)
/* 8B5C3CC 80088E9C 9000B68F */  lw         $s6, 0x90($sp)
/* 8B5C3D0 80088EA0 8C00B58F */  lw         $s5, 0x8C($sp)
/* 8B5C3D4 80088EA4 8800B48F */  lw         $s4, 0x88($sp)
/* 8B5C3D8 80088EA8 8400B38F */  lw         $s3, 0x84($sp)
/* 8B5C3DC 80088EAC 8000B28F */  lw         $s2, 0x80($sp)
/* 8B5C3E0 80088EB0 7C00B18F */  lw         $s1, 0x7C($sp)
/* 8B5C3E4 80088EB4 7800B08F */  lw         $s0, 0x78($sp)
/* 8B5C3E8 80088EB8 A000BD27 */  addiu      $sp, $sp, 0xA0
/* 8B5C3EC 80088EBC 0800E003 */  jr         $ra
/* 8B5C3F0 80088EC0 00000000 */   nop
.size func_level_44_80087CDC, . - func_level_44_80087CDC
