.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D274
/* DA74 8001D274 0780023C */  lui        $v0, %hi(D_8006E038)
/* DA78 8001D278 38E0428C */  lw         $v0, %lo(D_8006E038)($v0)
/* DA7C 8001D27C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* DA80 8001D280 20004010 */  beqz       $v0, .L8001D304
/* DA84 8001D284 1800BFAF */   sw        $ra, 0x18($sp)
/* DA88 8001D288 0780043C */  lui        $a0, %hi(D_8006D07C)
/* DA8C 8001D28C 7CD0848C */  lw         $a0, %lo(D_8006D07C)($a0)
/* DA90 8001D290 0780053C */  lui        $a1, %hi(D_8006E33C)
/* DA94 8001D294 3CE3A590 */  lbu        $a1, %lo(D_8006E33C)($a1)
/* DA98 8001D298 0780023C */  lui        $v0, %hi(D_8006D080)
/* DA9C 8001D29C 80D0428C */  lw         $v0, %lo(D_8006D080)($v0)
/* DAA0 8001D2A0 0780033C */  lui        $v1, %hi(D_8006D084)
/* DAA4 8001D2A4 84D0638C */  lw         $v1, %lo(D_8006D084)($v1)
/* DAA8 8001D2A8 03210400 */  sra        $a0, $a0, 4
/* DAAC 8001D2AC 2120A400 */  addu       $a0, $a1, $a0
/* DAB0 8001D2B0 43200400 */  sra        $a0, $a0, 1
/* DAB4 8001D2B4 03110200 */  sra        $v0, $v0, 4
/* DAB8 8001D2B8 2110A200 */  addu       $v0, $a1, $v0
/* DABC 8001D2BC 43100200 */  sra        $v0, $v0, 1
/* DAC0 8001D2C0 03190300 */  sra        $v1, $v1, 4
/* DAC4 8001D2C4 2128A300 */  addu       $a1, $a1, $v1
/* DAC8 8001D2C8 43280500 */  sra        $a1, $a1, 1
/* DACC 8001D2CC 0780013C */  lui        $at, %hi(D_8006FC15)
/* DAD0 8001D2D0 15FC24A0 */  sb         $a0, %lo(D_8006FC15)($at)
/* DAD4 8001D2D4 0780013C */  lui        $at, %hi(D_8006FC16)
/* DAD8 8001D2D8 16FC22A0 */  sb         $v0, %lo(D_8006FC16)($at)
/* DADC 8001D2DC 0780013C */  lui        $at, %hi(D_8006FC17)
/* DAE0 8001D2E0 17FC25A0 */  sb         $a1, %lo(D_8006FC17)($at)
/* DAE4 8001D2E4 0780013C */  lui        $at, %hi(D_8006FC89)
/* DAE8 8001D2E8 89FC24A0 */  sb         $a0, %lo(D_8006FC89)($at)
/* DAEC 8001D2EC 0780013C */  lui        $at, %hi(D_8006FC8A)
/* DAF0 8001D2F0 8AFC22A0 */  sb         $v0, %lo(D_8006FC8A)($at)
/* DAF4 8001D2F4 0780013C */  lui        $at, %hi(D_8006FC8B)
/* DAF8 8001D2F8 8BFC25A0 */  sb         $a1, %lo(D_8006FC8B)($at)
/* DAFC 8001D2FC D3740008 */  j          .L8001D34C
/* DB00 8001D300 00000000 */   nop
.L8001D304:
/* DB04 8001D304 0780023C */  lui        $v0, %hi(D_8006E33C)
/* DB08 8001D308 3CE34290 */  lbu        $v0, %lo(D_8006E33C)($v0)
/* DB0C 8001D30C 0780033C */  lui        $v1, %hi(D_8006E33D)
/* DB10 8001D310 3DE36390 */  lbu        $v1, %lo(D_8006E33D)($v1)
/* DB14 8001D314 0780043C */  lui        $a0, %hi(D_8006E33E)
/* DB18 8001D318 3EE38490 */  lbu        $a0, %lo(D_8006E33E)($a0)
/* DB1C 8001D31C 0780013C */  lui        $at, %hi(D_8006FC15)
/* DB20 8001D320 15FC22A0 */  sb         $v0, %lo(D_8006FC15)($at)
/* DB24 8001D324 0780013C */  lui        $at, %hi(D_8006FC16)
/* DB28 8001D328 16FC23A0 */  sb         $v1, %lo(D_8006FC16)($at)
/* DB2C 8001D32C 0780013C */  lui        $at, %hi(D_8006FC17)
/* DB30 8001D330 17FC24A0 */  sb         $a0, %lo(D_8006FC17)($at)
/* DB34 8001D334 0780013C */  lui        $at, %hi(D_8006FC89)
/* DB38 8001D338 89FC22A0 */  sb         $v0, %lo(D_8006FC89)($at)
/* DB3C 8001D33C 0780013C */  lui        $at, %hi(D_8006FC8A)
/* DB40 8001D340 8AFC23A0 */  sb         $v1, %lo(D_8006FC8A)($at)
/* DB44 8001D344 0780013C */  lui        $at, %hi(D_8006FC8B)
/* DB48 8001D348 8BFC24A0 */  sb         $a0, %lo(D_8006FC8B)($at)
.L8001D34C:
/* DB4C 8001D34C 1879000C */  jal        func_8001E460
/* DB50 8001D350 3D000424 */   addiu     $a0, $zero, 0x3D
/* DB54 8001D354 0780043C */  lui        $a0, %hi(D_8006C658)
/* DB58 8001D358 58C6848C */  lw         $a0, %lo(D_8006C658)($a0)
/* DB5C 8001D35C 01000224 */  addiu      $v0, $zero, 0x1
/* DB60 8001D360 2C008214 */  bne        $a0, $v0, .L8001D414
/* DB64 8001D364 00000000 */   nop
/* DB68 8001D368 0780023C */  lui        $v0, %hi(D_80071438)
/* DB6C 8001D36C 38144290 */  lbu        $v0, %lo(D_80071438)($v0)
/* DB70 8001D370 00000000 */  nop
/* DB74 8001D374 0D004014 */  bnez       $v0, .L8001D3AC
/* DB78 8001D378 FF000224 */   addiu     $v0, $zero, 0xFF
/* DB7C 8001D37C 0780033C */  lui        $v1, %hi(D_8007143A)
/* DB80 8001D380 3A146390 */  lbu        $v1, %lo(D_8007143A)($v1)
/* DB84 8001D384 00000000 */  nop
/* DB88 8001D388 06006214 */  bne        $v1, $v0, .L8001D3A4
/* DB8C 8001D38C 00000000 */   nop
/* DB90 8001D390 0780023C */  lui        $v0, %hi(D_8007143B)
/* DB94 8001D394 3B144290 */  lbu        $v0, %lo(D_8007143B)($v0)
/* DB98 8001D398 00000000 */  nop
/* DB9C 8001D39C 03004310 */  beq        $v0, $v1, .L8001D3AC
/* DBA0 8001D3A0 00000000 */   nop
.L8001D3A4:
/* DBA4 8001D3A4 0780013C */  lui        $at, %hi(D_8006C7E4)
/* DBA8 8001D3A8 E4C724AC */  sw         $a0, %lo(D_8006C7E4)($at)
.L8001D3AC:
/* DBAC 8001D3AC 0780023C */  lui        $v0, %hi(D_8006C76C)
/* DBB0 8001D3B0 6CC7428C */  lw         $v0, %lo(D_8006C76C)($v0)
/* DBB4 8001D3B4 00000000 */  nop
/* DBB8 8001D3B8 80100200 */  sll        $v0, $v0, 2
/* DBBC 8001D3BC 0780013C */  lui        $at, %hi(D_80069DE0)
/* DBC0 8001D3C0 21082200 */  addu       $at, $at, $v0
/* DBC4 8001D3C4 E09D248C */  lw         $a0, %lo(D_80069DE0)($at)
/* DBC8 8001D3C8 ECBA000C */  jal        func_8002EBB0
/* DBCC 8001D3CC 00000000 */   nop
/* DBD0 8001D3D0 43100200 */  sra        $v0, $v0, 1
/* DBD4 8001D3D4 F9000424 */  addiu      $a0, $zero, 0xF9
/* DBD8 8001D3D8 23208200 */  subu       $a0, $a0, $v0
/* DBDC 8001D3DC 04014524 */  addiu      $a1, $v0, 0x104
/* DBE0 8001D3E0 32000624 */  addiu      $a2, $zero, 0x32
/* DBE4 8001D3E4 927F000C */  jal        func_8001FE48
/* DBE8 8001D3E8 3F000724 */   addiu     $a3, $zero, 0x3F
/* DBEC 8001D3EC 00010524 */  addiu      $a1, $zero, 0x100
/* DBF0 8001D3F0 0780023C */  lui        $v0, %hi(D_8006C76C)
/* DBF4 8001D3F4 6CC7428C */  lw         $v0, %lo(D_8006C76C)($v0)
/* DBF8 8001D3F8 34000624 */  addiu      $a2, $zero, 0x34
/* DBFC 8001D3FC 80100200 */  sll        $v0, $v0, 2
/* DC00 8001D400 0780013C */  lui        $at, %hi(D_80069DE0)
/* DC04 8001D404 21082200 */  addu       $at, $at, $v0
/* DC08 8001D408 E09D248C */  lw         $a0, %lo(D_80069DE0)($at)
/* DC0C 8001D40C B780000C */  jal        DrawStringCentered
/* DC10 8001D410 01000724 */   addiu     $a3, $zero, 0x1
.L8001D414:
/* DC14 8001D414 1800BF8F */  lw         $ra, 0x18($sp)
/* DC18 8001D418 2000BD27 */  addiu      $sp, $sp, 0x20
/* DC1C 8001D41C 0800E003 */  jr         $ra
/* DC20 8001D420 00000000 */   nop
.size func_8001D274, . - func_8001D274
