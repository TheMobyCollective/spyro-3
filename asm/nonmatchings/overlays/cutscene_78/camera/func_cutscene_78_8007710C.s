.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_78_8007710C
/* 2BE8E3C 8007710C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2BE8E40 80077110 0780043C */  lui        $a0, %hi(D_8006EDDC)
/* 2BE8E44 80077114 DCED8424 */  addiu      $a0, $a0, %lo(D_8006EDDC)
/* 2BE8E48 80077118 1400BFAF */  sw         $ra, 0x14($sp)
/* 2BE8E4C 8007711C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2BE8E50 80077120 0000828C */  lw         $v0, 0x0($a0)
/* 2BE8E54 80077124 0780033C */  lui        $v1, %hi(D_8006C648)
/* 2BE8E58 80077128 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 2BE8E5C 8007712C 1000858C */  lw         $a1, 0x10($a0)
/* 2BE8E60 80077130 21104300 */  addu       $v0, $v0, $v1
/* 2BE8E64 80077134 FFFFA324 */  addiu      $v1, $a1, -0x1
/* 2BE8E68 80077138 000082AC */  sw         $v0, 0x0($a0)
/* 2BE8E6C 8007713C 2A106200 */  slt        $v0, $v1, $v0
/* 2BE8E70 80077140 02004010 */  beqz       $v0, .Lcutscene_78_8007714C
/* 2BE8E74 80077144 00000000 */   nop
/* 2BE8E78 80077148 000083AC */  sw         $v1, 0x0($a0)
.Lcutscene_78_8007714C:
/* 2BE8E7C 8007714C 0000848C */  lw         $a0, 0x0($a0)
/* 2BE8E80 80077150 00000000 */  nop
/* 2BE8E84 80077154 14008228 */  slti       $v0, $a0, 0x14
/* 2BE8E88 80077158 0B004010 */  beqz       $v0, .Lcutscene_78_80077188
/* 2BE8E8C 8007715C 0F000224 */   addiu     $v0, $zero, 0xF
/* 2BE8E90 80077160 23104400 */  subu       $v0, $v0, $a0
/* 2BE8E94 80077164 00110200 */  sll        $v0, $v0, 4
/* 2BE8E98 80077168 0780013C */  lui        $at, %hi(D_8006C598)
/* 2BE8E9C 8007716C 98C522AC */  sw         $v0, %lo(D_8006C598)($at)
/* 2BE8EA0 80077170 21004104 */  bgez       $v0, .Lcutscene_78_800771F8
/* 2BE8EA4 80077174 00000000 */   nop
/* 2BE8EA8 80077178 0780013C */  lui        $at, %hi(D_8006C598)
/* 2BE8EAC 8007717C 98C520AC */  sw         $zero, %lo(D_8006C598)($at)
/* 2BE8EB0 80077180 7EDC0108 */  j          .Lcutscene_78_800771F8
/* 2BE8EB4 80077184 00000000 */   nop
.Lcutscene_78_80077188:
/* 2BE8EB8 80077188 2118A000 */  addu       $v1, $a1, $zero
/* 2BE8EBC 8007718C F6FF6224 */  addiu      $v0, $v1, -0xA
/* 2BE8EC0 80077190 2A104400 */  slt        $v0, $v0, $a0
/* 2BE8EC4 80077194 05004010 */  beqz       $v0, .Lcutscene_78_800771AC
/* 2BE8EC8 80077198 23186400 */   subu      $v1, $v1, $a0
/* 2BE8ECC 8007719C 0A000224 */  addiu      $v0, $zero, 0xA
/* 2BE8ED0 800771A0 23104300 */  subu       $v0, $v0, $v1
/* 2BE8ED4 800771A4 7CDC0108 */  j          .Lcutscene_78_800771F0
/* 2BE8ED8 800771A8 40110200 */   sll       $v0, $v0, 5
.Lcutscene_78_800771AC:
/* 2BE8EDC 800771AC 0780023C */  lui        $v0, %hi(D_8006C598)
/* 2BE8EE0 800771B0 98C5428C */  lw         $v0, %lo(D_8006C598)($v0)
/* 2BE8EE4 800771B4 00000000 */  nop
/* 2BE8EE8 800771B8 0D004014 */  bnez       $v0, .Lcutscene_78_800771F0
/* 2BE8EEC 800771BC 20004224 */   addiu     $v0, $v0, 0x20
/* 2BE8EF0 800771C0 78008228 */  slti       $v0, $a0, 0x78
/* 2BE8EF4 800771C4 0C004014 */  bnez       $v0, .Lcutscene_78_800771F8
/* 2BE8EF8 800771C8 E0FFA224 */   addiu     $v0, $a1, -0x20
/* 2BE8EFC 800771CC 2A108200 */  slt        $v0, $a0, $v0
/* 2BE8F00 800771D0 09004010 */  beqz       $v0, .Lcutscene_78_800771F8
/* 2BE8F04 800771D4 00000000 */   nop
/* 2BE8F08 800771D8 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 2BE8F0C 800771DC 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 2BE8F10 800771E0 00000000 */  nop
/* 2BE8F14 800771E4 40094230 */  andi       $v0, $v0, 0x940
/* 2BE8F18 800771E8 03004010 */  beqz       $v0, .Lcutscene_78_800771F8
/* 2BE8F1C 800771EC 20000224 */   addiu     $v0, $zero, 0x20
.Lcutscene_78_800771F0:
/* 2BE8F20 800771F0 0780013C */  lui        $at, %hi(D_8006C598)
/* 2BE8F24 800771F4 98C522AC */  sw         $v0, %lo(D_8006C598)($at)
.Lcutscene_78_800771F8:
/* 2BE8F28 800771F8 0780033C */  lui        $v1, %hi(D_8006C598)
/* 2BE8F2C 800771FC 98C5638C */  lw         $v1, %lo(D_8006C598)($v1)
/* 2BE8F30 80077200 00000000 */  nop
/* 2BE8F34 80077204 FF006228 */  slti       $v0, $v1, 0xFF
/* 2BE8F38 80077208 07004014 */  bnez       $v0, .Lcutscene_78_80077228
/* 2BE8F3C 8007720C FF000224 */   addiu     $v0, $zero, 0xFF
/* 2BE8F40 80077210 0780013C */  lui        $at, %hi(D_8006C598)
/* 2BE8F44 80077214 98C522AC */  sw         $v0, %lo(D_8006C598)($at)
/* 2BE8F48 80077218 DCDB010C */  jal        func_cutscene_78_80076F70
/* 2BE8F4C 8007721C 00000000 */   nop
/* 2BE8F50 80077220 1BDD0108 */  j          .Lcutscene_78_8007746C
/* 2BE8F54 80077224 00000000 */   nop
.Lcutscene_78_80077228:
/* 2BE8F58 80077228 0780023C */  lui        $v0, %hi(D_8006EDDC)
/* 2BE8F5C 8007722C DCED428C */  lw         $v0, %lo(D_8006EDDC)($v0)
/* 2BE8F60 80077230 00000000 */  nop
/* 2BE8F64 80077234 02004228 */  slti       $v0, $v0, 0x2
/* 2BE8F68 80077238 13004014 */  bnez       $v0, .Lcutscene_78_80077288
/* 2BE8F6C 8007723C 00000000 */   nop
/* 2BE8F70 80077240 0780043C */  lui        $a0, %hi(D_8006EE14)
/* 2BE8F74 80077244 14EE848C */  lw         $a0, %lo(D_8006EE14)($a0)
/* 2BE8F78 80077248 00000000 */  nop
/* 2BE8F7C 8007724C 09008104 */  bgez       $a0, .Lcutscene_78_80077274
/* 2BE8F80 80077250 00010224 */   addiu     $v0, $zero, 0x100
/* 2BE8F84 80077254 21200000 */  addu       $a0, $zero, $zero
/* 2BE8F88 80077258 21280000 */  addu       $a1, $zero, $zero
/* 2BE8F8C 8007725C D4EE000C */  jal        PlaySound
/* 2BE8F90 80077260 04000624 */   addiu     $a2, $zero, 0x4
/* 2BE8F94 80077264 0780013C */  lui        $at, %hi(D_8006EE14)
/* 2BE8F98 80077268 14EE22AC */  sw         $v0, %lo(D_8006EE14)($at)
/* 2BE8F9C 8007726C A2DC0108 */  j          .Lcutscene_78_80077288
/* 2BE8FA0 80077270 00000000 */   nop
.Lcutscene_78_80077274:
/* 2BE8FA4 80077274 23104300 */  subu       $v0, $v0, $v1
/* 2BE8FA8 80077278 40280200 */  sll        $a1, $v0, 1
/* 2BE8FAC 8007727C 2128A200 */  addu       $a1, $a1, $v0
/* 2BE8FB0 80077280 50F0000C */  jal        func_8003C140
/* 2BE8FB4 80077284 C0280500 */   sll       $a1, $a1, 3
.Lcutscene_78_80077288:
/* 2BE8FB8 80077288 0780103C */  lui        $s0, %hi(D_8006EDE8)
/* 2BE8FBC 8007728C E8ED1026 */  addiu      $s0, $s0, %lo(D_8006EDE8)
/* 2BE8FC0 80077290 0000028E */  lw         $v0, 0x0($s0)
/* 2BE8FC4 80077294 00000000 */  nop
/* 2BE8FC8 80077298 10004104 */  bgez       $v0, .Lcutscene_78_800772DC
/* 2BE8FCC 8007729C 8888063C */   lui       $a2, (0x88888889 >> 16)
/* 2BE8FD0 800772A0 FE40010C */  jal        func_800503F8
/* 2BE8FD4 800772A4 00000000 */   nop
/* 2BE8FD8 800772A8 0C004014 */  bnez       $v0, .Lcutscene_78_800772DC
/* 2BE8FDC 800772AC 8888063C */   lui       $a2, (0x88888889 >> 16)
/* 2BE8FE0 800772B0 0780053C */  lui        $a1, %hi(D_8006EDE0)
/* 2BE8FE4 800772B4 E0EDA58C */  lw         $a1, %lo(D_8006EDE0)($a1)
/* 2BE8FE8 800772B8 00000000 */  nop
/* 2BE8FEC 800772BC 0100A524 */  addiu      $a1, $a1, 0x1
/* 2BE8FF0 800772C0 0100A230 */  andi       $v0, $a1, 0x1
/* 2BE8FF4 800772C4 80100200 */  sll        $v0, $v0, 2
/* 2BE8FF8 800772C8 21100202 */  addu       $v0, $s0, $v0
/* 2BE8FFC 800772CC 2000448C */  lw         $a0, 0x20($v0)
/* 2BE9000 800772D0 CCDD010C */  jal        func_cutscene_78_80077730
/* 2BE9004 800772D4 01000624 */   addiu     $a2, $zero, 0x1
/* 2BE9008 800772D8 8888063C */  lui        $a2, (0x88888889 >> 16)
.Lcutscene_78_800772DC:
/* 2BE900C 800772DC 0780043C */  lui        $a0, %hi(D_8006EDDC)
/* 2BE9010 800772E0 DCED848C */  lw         $a0, %lo(D_8006EDDC)($a0)
/* 2BE9014 800772E4 8988C634 */  ori        $a2, $a2, (0x88888889 & 0xFFFF)
/* 2BE9018 800772E8 18008600 */  mult       $a0, $a2
/* 2BE901C 800772EC 0780073C */  lui        $a3, %hi(D_8006EDE0)
/* 2BE9020 800772F0 E0EDE724 */  addiu      $a3, $a3, %lo(D_8006EDE0)
/* 2BE9024 800772F4 0780053C */  lui        $a1, %hi(D_8006C648)
/* 2BE9028 800772F8 48C6A58C */  lw         $a1, %lo(D_8006C648)($a1)
/* 2BE902C 800772FC C31F0400 */  sra        $v1, $a0, 31
/* 2BE9030 80077300 10480000 */  mfhi       $t1
/* 2BE9034 80077304 21102401 */  addu       $v0, $t1, $a0
/* 2BE9038 80077308 83110200 */  sra        $v0, $v0, 6
/* 2BE903C 8007730C 23184300 */  subu       $v1, $v0, $v1
/* 2BE9040 80077310 00110300 */  sll        $v0, $v1, 4
/* 2BE9044 80077314 23104300 */  subu       $v0, $v0, $v1
/* 2BE9048 80077318 C0100200 */  sll        $v0, $v0, 3
/* 2BE904C 8007731C 23108200 */  subu       $v0, $a0, $v0
/* 2BE9050 80077320 0000E3AC */  sw         $v1, 0x0($a3)
/* 2BE9054 80077324 0780013C */  lui        $at, %hi(D_8006EDE4)
/* 2BE9058 80077328 E4ED22AC */  sw         $v0, %lo(D_8006EDE4)($at)
/* 2BE905C 8007732C 2A104500 */  slt        $v0, $v0, $a1
/* 2BE9060 80077330 18004010 */  beqz       $v0, .Lcutscene_78_80077394
/* 2BE9064 80077334 00000000 */   nop
/* 2BE9068 80077338 0780023C */  lui        $v0, %hi(D_8006EDE8)
/* 2BE906C 8007733C E8ED428C */  lw         $v0, %lo(D_8006EDE8)($v0)
/* 2BE9070 80077340 00000000 */  nop
/* 2BE9074 80077344 2A104300 */  slt        $v0, $v0, $v1
/* 2BE9078 80077348 12004010 */  beqz       $v0, .Lcutscene_78_80077394
/* 2BE907C 8007734C 23208500 */   subu      $a0, $a0, $a1
/* 2BE9080 80077350 18008600 */  mult       $a0, $a2
/* 2BE9084 80077354 C31F0400 */  sra        $v1, $a0, 31
/* 2BE9088 80077358 0780013C */  lui        $at, %hi(D_8006EDDC)
/* 2BE908C 8007735C DCED24AC */  sw         $a0, %lo(D_8006EDDC)($at)
/* 2BE9090 80077360 10480000 */  mfhi       $t1
/* 2BE9094 80077364 21102401 */  addu       $v0, $t1, $a0
/* 2BE9098 80077368 83110200 */  sra        $v0, $v0, 6
/* 2BE909C 8007736C 23104300 */  subu       $v0, $v0, $v1
/* 2BE90A0 80077370 00190200 */  sll        $v1, $v0, 4
/* 2BE90A4 80077374 23186200 */  subu       $v1, $v1, $v0
/* 2BE90A8 80077378 C0180300 */  sll        $v1, $v1, 3
/* 2BE90AC 8007737C 23208300 */  subu       $a0, $a0, $v1
/* 2BE90B0 80077380 0000E2AC */  sw         $v0, 0x0($a3)
/* 2BE90B4 80077384 0780013C */  lui        $at, %hi(D_8006EDE4)
/* 2BE90B8 80077388 E4ED24AC */  sw         $a0, %lo(D_8006EDE4)($at)
/* 2BE90BC 8007738C B7EF000C */  jal        func_8003BEDC
/* 2BE90C0 80077390 00000000 */   nop
.Lcutscene_78_80077394:
/* 2BE90C4 80077394 0780063C */  lui        $a2, %hi(D_8006EDE4)
/* 2BE90C8 80077398 E4EDC624 */  addiu      $a2, $a2, %lo(D_8006EDE4)
/* 2BE90CC 8007739C 0000C38C */  lw         $v1, 0x0($a2)
/* 2BE90D0 800773A0 00000000 */  nop
/* 2BE90D4 800773A4 2A006010 */  beqz       $v1, .Lcutscene_78_80077450
/* 2BE90D8 800773A8 00000000 */   nop
/* 2BE90DC 800773AC 0780023C */  lui        $v0, %hi(D_8006C648)
/* 2BE90E0 800773B0 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 2BE90E4 800773B4 00000000 */  nop
/* 2BE90E8 800773B8 2A104300 */  slt        $v0, $v0, $v1
/* 2BE90EC 800773BC 24004014 */  bnez       $v0, .Lcutscene_78_80077450
/* 2BE90F0 800773C0 00000000 */   nop
/* 2BE90F4 800773C4 0780033C */  lui        $v1, %hi(D_8006EDE0)
/* 2BE90F8 800773C8 E0ED638C */  lw         $v1, %lo(D_8006EDE0)($v1)
/* 2BE90FC 800773CC 0780023C */  lui        $v0, %hi(D_8006EDF0)
/* 2BE9100 800773D0 F0ED428C */  lw         $v0, %lo(D_8006EDF0)($v0)
/* 2BE9104 800773D4 01006524 */  addiu      $a1, $v1, 0x1
/* 2BE9108 800773D8 2A10A200 */  slt        $v0, $a1, $v0
/* 2BE910C 800773DC 1C004010 */  beqz       $v0, .Lcutscene_78_80077450
/* 2BE9110 800773E0 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 2BE9114 800773E4 0780013C */  lui        $at, %hi(D_8006EDE8)
/* 2BE9118 800773E8 E8ED22AC */  sw         $v0, %lo(D_8006EDE8)($at)
/* 2BE911C 800773EC 0100A230 */  andi       $v0, $a1, 0x1
/* 2BE9120 800773F0 80100200 */  sll        $v0, $v0, 2
/* 2BE9124 800773F4 2110C200 */  addu       $v0, $a2, $v0
/* 2BE9128 800773F8 80180300 */  sll        $v1, $v1, 2
/* 2BE912C 800773FC 0780043C */  lui        $a0, %hi(D_8006E470)
/* 2BE9130 80077400 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 2BE9134 80077404 2400458C */  lw         $a1, 0x24($v0)
/* 2BE9138 80077408 0780083C */  lui        $t0, %hi(D_8006EDF8)
/* 2BE913C 8007740C F8ED088D */  lw         $t0, %lo(D_8006EDF8)($t0)
/* 2BE9140 80077410 0780063C */  lui        $a2, %hi(D_8006C58C)
/* 2BE9144 80077414 8CC5C68C */  lw         $a2, %lo(D_8006C58C)($a2)
/* 2BE9148 80077418 21406800 */  addu       $t0, $v1, $t0
/* 2BE914C 8007741C 40100600 */  sll        $v0, $a2, 1
/* 2BE9150 80077420 21104600 */  addu       $v0, $v0, $a2
/* 2BE9154 80077424 C0100200 */  sll        $v0, $v0, 3
/* 2BE9158 80077428 0780063C */  lui        $a2, %hi(D_8006EDF4)
/* 2BE915C 8007742C F4EDC68C */  lw         $a2, %lo(D_8006EDF4)($a2)
/* 2BE9160 80077430 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 2BE9164 80077434 21082200 */  addu       $at, $at, $v0
/* 2BE9168 80077438 18D9228C */  lw         $v0, %lo(D_8006D8D8 + 0x40)($at)
/* 2BE916C 8007743C 21186600 */  addu       $v1, $v1, $a2
/* 2BE9170 80077440 0400678C */  lw         $a3, 0x4($v1)
/* 2BE9174 80077444 0400068D */  lw         $a2, 0x4($t0)
/* 2BE9178 80077448 A041010C */  jal        func_80050680
/* 2BE917C 8007744C 21384700 */   addu      $a3, $v0, $a3
.Lcutscene_78_80077450:
/* 2BE9180 80077450 0780033C */  lui        $v1, %hi(D_8006EDE4)
/* 2BE9184 80077454 E4ED6324 */  addiu      $v1, $v1, %lo(D_8006EDE4)
/* 2BE9188 80077458 0000628C */  lw         $v0, 0x0($v1)
/* 2BE918C 8007745C 00000000 */  nop
/* 2BE9190 80077460 FE004230 */  andi       $v0, $v0, 0xFE
/* 2BE9194 80077464 44DE010C */  jal        func_cutscene_78_80077910
/* 2BE9198 80077468 000062AC */   sw        $v0, 0x0($v1)
.Lcutscene_78_8007746C:
/* 2BE919C 8007746C 1400BF8F */  lw         $ra, 0x14($sp)
/* 2BE91A0 80077470 1000B08F */  lw         $s0, 0x10($sp)
/* 2BE91A4 80077474 1800BD27 */  addiu      $sp, $sp, 0x18
/* 2BE91A8 80077478 0800E003 */  jr         $ra
/* 2BE91AC 8007747C 00000000 */   nop
.size func_cutscene_78_8007710C, . - func_cutscene_78_8007710C
