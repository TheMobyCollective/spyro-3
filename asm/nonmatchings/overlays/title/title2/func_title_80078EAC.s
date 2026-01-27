.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_title_80078EAC
/* 27BDC 80078EAC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 27BE0 80078EB0 1000B0AF */  sw         $s0, 0x10($sp)
/* 27BE4 80078EB4 21808000 */  addu       $s0, $a0, $zero
/* 27BE8 80078EB8 1400BFAF */  sw         $ra, 0x14($sp)
/* 27BEC 80078EBC 05000292 */  lbu        $v0, 0x5($s0)
/* 27BF0 80078EC0 0780013C */  lui        $at, %hi(D_8006C5BC)
/* 27BF4 80078EC4 BCC522AC */  sw         $v0, %lo(D_8006C5BC)($at)
/* 27BF8 80078EC8 06000292 */  lbu        $v0, 0x6($s0)
/* 27BFC 80078ECC 0780013C */  lui        $at, %hi(D_8006C784)
/* 27C00 80078ED0 84C722AC */  sw         $v0, %lo(D_8006C784)($at)
/* 27C04 80078ED4 64004228 */  slti       $v0, $v0, 0x64
/* 27C08 80078ED8 03004014 */  bnez       $v0, .Ltitle_80078EE8
/* 27C0C 80078EDC 00000000 */   nop
/* 27C10 80078EE0 0780013C */  lui        $at, %hi(D_8006C784)
/* 27C14 80078EE4 84C720AC */  sw         $zero, %lo(D_8006C784)($at)
.Ltitle_80078EE8:
/* 27C18 80078EE8 0780023C */  lui        $v0, %hi(D_8006C784)
/* 27C1C 80078EEC 84C7428C */  lw         $v0, %lo(D_8006C784)($v0)
/* 27C20 80078EF0 00000000 */  nop
/* 27C24 80078EF4 04004228 */  slti       $v0, $v0, 0x4
/* 27C28 80078EF8 03004010 */  beqz       $v0, .Ltitle_80078F08
/* 27C2C 80078EFC 04000224 */   addiu     $v0, $zero, 0x4
/* 27C30 80078F00 0780013C */  lui        $at, %hi(D_8006C784)
/* 27C34 80078F04 84C722AC */  sw         $v0, %lo(D_8006C784)($at)
.Ltitle_80078F08:
/* 27C38 80078F08 0780043C */  lui        $a0, %hi(D_80071FB0)
/* 27C3C 80078F0C B01F8424 */  addiu      $a0, $a0, %lo(D_80071FB0)
/* 27C40 80078F10 08000526 */  addiu      $a1, $s0, 0x8
/* 27C44 80078F14 F539010C */  jal        func_8004E7D4
/* 27C48 80078F18 28000624 */   addiu     $a2, $zero, 0x28
/* 27C4C 80078F1C 0780043C */  lui        $a0, %hi(D_80071AB0)
/* 27C50 80078F20 B01A8424 */  addiu      $a0, $a0, %lo(D_80071AB0)
/* 27C54 80078F24 30000526 */  addiu      $a1, $s0, 0x30
/* 27C58 80078F28 F539010C */  jal        func_8004E7D4
/* 27C5C 80078F2C 00050624 */   addiu     $a2, $zero, 0x500
/* 27C60 80078F30 21280000 */  addu       $a1, $zero, $zero
/* 27C64 80078F34 0780073C */  lui        $a3, %hi(D_80070300)
/* 27C68 80078F38 0003E724 */  addiu      $a3, $a3, %lo(D_80070300)
/* 27C6C 80078F3C 0780063C */  lui        $a2, %hi(D_80071A10)
/* 27C70 80078F40 101AC624 */  addiu      $a2, $a2, %lo(D_80071A10)
/* 27C74 80078F44 21400002 */  addu       $t0, $s0, $zero
/* 27C78 80078F48 0780013C */  lui        $at, %hi(D_8006C71C)
/* 27C7C 80078F4C 1CC720AC */  sw         $zero, %lo(D_8006C71C)($at)
/* 27C80 80078F50 0780013C */  lui        $at, %hi(D_8006C660)
/* 27C84 80078F54 60C620AC */  sw         $zero, %lo(D_8006C660)($at)
.Ltitle_80078F58:
/* 27C88 80078F58 30050485 */  lh         $a0, 0x530($t0)
/* 27C8C 80078F5C 2700A228 */  slti       $v0, $a1, 0x27
/* 27C90 80078F60 0E004010 */  beqz       $v0, .Ltitle_80078F9C
/* 27C94 80078F64 0000C4AC */   sw        $a0, 0x0($a2)
/* 27C98 80078F68 0680013C */  lui        $at, %hi(D_80066F54)
/* 27C9C 80078F6C 21082500 */  addu       $at, $at, $a1
/* 27CA0 80078F70 546F2290 */  lbu        $v0, %lo(D_80066F54)($at)
/* 27CA4 80078F74 00000000 */  nop
/* 27CA8 80078F78 40180200 */  sll        $v1, $v0, 1
/* 27CAC 80078F7C 21186200 */  addu       $v1, $v1, $v0
/* 27CB0 80078F80 C0180300 */  sll        $v1, $v1, 3
/* 27CB4 80078F84 21186200 */  addu       $v1, $v1, $v0
/* 27CB8 80078F88 80180300 */  sll        $v1, $v1, 2
/* 27CBC 80078F8C 2A106400 */  slt        $v0, $v1, $a0
/* 27CC0 80078F90 02004010 */  beqz       $v0, .Ltitle_80078F9C
/* 27CC4 80078F94 00000000 */   nop
/* 27CC8 80078F98 0000C3AC */  sw         $v1, 0x0($a2)
.Ltitle_80078F9C:
/* 27CCC 80078F9C 0780023C */  lui        $v0, %hi(D_8006C71C)
/* 27CD0 80078FA0 1CC7428C */  lw         $v0, %lo(D_8006C71C)($v0)
/* 27CD4 80078FA4 0000C38C */  lw         $v1, 0x0($a2)
/* 27CD8 80078FA8 00000000 */  nop
/* 27CDC 80078FAC 21104300 */  addu       $v0, $v0, $v1
/* 27CE0 80078FB0 0780013C */  lui        $at, %hi(D_8006C71C)
/* 27CE4 80078FB4 1CC722AC */  sw         $v0, %lo(D_8006C71C)($at)
/* 27CE8 80078FB8 21100502 */  addu       $v0, $s0, $a1
/* 27CEC 80078FBC 80054290 */  lbu        $v0, 0x580($v0)
/* 27CF0 80078FC0 21180000 */  addu       $v1, $zero, $zero
/* 27CF4 80078FC4 0000E2A0 */  sb         $v0, 0x0($a3)
.Ltitle_80078FC8:
/* 27CF8 80078FC8 0000E290 */  lbu        $v0, 0x0($a3)
/* 27CFC 80078FCC 00000000 */  nop
/* 27D00 80078FD0 07106200 */  srav       $v0, $v0, $v1
/* 27D04 80078FD4 01004230 */  andi       $v0, $v0, 0x1
/* 27D08 80078FD8 07004010 */  beqz       $v0, .Ltitle_80078FF8
/* 27D0C 80078FDC 00000000 */   nop
/* 27D10 80078FE0 0780023C */  lui        $v0, %hi(D_8006C660)
/* 27D14 80078FE4 60C6428C */  lw         $v0, %lo(D_8006C660)($v0)
/* 27D18 80078FE8 00000000 */  nop
/* 27D1C 80078FEC 01004224 */  addiu      $v0, $v0, 0x1
/* 27D20 80078FF0 0780013C */  lui        $at, %hi(D_8006C660)
/* 27D24 80078FF4 60C622AC */  sw         $v0, %lo(D_8006C660)($at)
.Ltitle_80078FF8:
/* 27D28 80078FF8 01006324 */  addiu      $v1, $v1, 0x1
/* 27D2C 80078FFC 08006228 */  slti       $v0, $v1, 0x8
/* 27D30 80079000 F1FF4014 */  bnez       $v0, .Ltitle_80078FC8
/* 27D34 80079004 00000000 */   nop
/* 27D38 80079008 0100E724 */  addiu      $a3, $a3, 0x1
/* 27D3C 8007900C 0400C624 */  addiu      $a2, $a2, 0x4
/* 27D40 80079010 0100A524 */  addiu      $a1, $a1, 0x1
/* 27D44 80079014 2800A228 */  slti       $v0, $a1, 0x28
/* 27D48 80079018 CFFF4014 */  bnez       $v0, .Ltitle_80078F58
/* 27D4C 8007901C 02000825 */   addiu     $t0, $t0, 0x2
/* 27D50 80079020 0780043C */  lui        $a0, %hi(D_800715BC)
/* 27D54 80079024 BC158424 */  addiu      $a0, $a0, %lo(D_800715BC)
/* 27D58 80079028 5C060526 */  addiu      $a1, $s0, 0x65C
/* 27D5C 8007902C 4C06028E */  lw         $v0, 0x64C($s0)
/* 27D60 80079030 5006038E */  lw         $v1, 0x650($s0)
/* 27D64 80079034 5406078E */  lw         $a3, 0x654($s0)
/* 27D68 80079038 5806088E */  lw         $t0, 0x658($s0)
/* 27D6C 8007903C 0780013C */  lui        $at, %hi(D_8006C5D0)
/* 27D70 80079040 D0C522AC */  sw         $v0, %lo(D_8006C5D0)($at)
/* 27D74 80079044 0780013C */  lui        $at, %hi(D_8006C70C)
/* 27D78 80079048 0CC723AC */  sw         $v1, %lo(D_8006C70C)($at)
/* 27D7C 8007904C 0780013C */  lui        $at, %hi(D_8006C710)
/* 27D80 80079050 10C727AC */  sw         $a3, %lo(D_8006C710)($at)
/* 27D84 80079054 0780013C */  lui        $at, %hi(D_8006C7A8)
/* 27D88 80079058 A8C728AC */  sw         $t0, %lo(D_8006C7A8)($at)
/* 27D8C 8007905C F539010C */  jal        func_8004E7D4
/* 27D90 80079060 F0000624 */   addiu     $a2, $zero, 0xF0
/* 27D94 80079064 0780043C */  lui        $a0, %hi(D_800716AC)
/* 27D98 80079068 AC168424 */  addiu      $a0, $a0, %lo(D_800716AC)
/* 27D9C 8007906C 4C070526 */  addiu      $a1, $s0, 0x74C
/* 27DA0 80079070 F539010C */  jal        func_8004E7D4
/* 27DA4 80079074 F0000624 */   addiu     $a2, $zero, 0xF0
/* 27DA8 80079078 0680043C */  lui        $a0, %hi(D_80066EAC)
/* 27DAC 8007907C AC6E8424 */  addiu      $a0, $a0, %lo(D_80066EAC)
/* 27DB0 80079080 A8050526 */  addiu      $a1, $s0, 0x5A8
/* 27DB4 80079084 F539010C */  jal        func_8004E7D4
/* 27DB8 80079088 30000624 */   addiu     $a2, $zero, 0x30
/* 27DBC 8007908C 0780023C */  lui        $v0, %hi(D_80071573)
/* 27DC0 80079090 73154290 */  lbu        $v0, %lo(D_80071573)($v0)
/* 27DC4 80079094 00000000 */  nop
/* 27DC8 80079098 15004014 */  bnez       $v0, .Ltitle_800790F0
/* 27DCC 8007909C 01000524 */   addiu     $a1, $zero, 0x1
/* 27DD0 800790A0 21200000 */  addu       $a0, $zero, $zero
.Ltitle_800790A4:
/* 27DD4 800790A4 0680013C */  lui        $at, %hi(D_80066EAE)
/* 27DD8 800790A8 21082400 */  addu       $at, $at, $a0
/* 27DDC 800790AC AE6E2284 */  lh         $v0, %lo(D_80066EAE)($at)
/* 27DE0 800790B0 00000000 */  nop
/* 27DE4 800790B4 0A004514 */  bne        $v0, $a1, .Ltitle_800790E0
/* 27DE8 800790B8 00000000 */   nop
/* 27DEC 800790BC 0680013C */  lui        $at, %hi(D_80066EAC)
/* 27DF0 800790C0 21082400 */  addu       $at, $at, $a0
/* 27DF4 800790C4 AC6E2384 */  lh         $v1, %lo(D_80066EAC)($at)
/* 27DF8 800790C8 0780023C */  lui        $v0, %hi(D_8006C71C)
/* 27DFC 800790CC 1CC7428C */  lw         $v0, %lo(D_8006C71C)($v0)
/* 27E00 800790D0 00000000 */  nop
/* 27E04 800790D4 23104300 */  subu       $v0, $v0, $v1
/* 27E08 800790D8 0780013C */  lui        $at, %hi(D_8006C71C)
/* 27E0C 800790DC 1CC722AC */  sw         $v0, %lo(D_8006C71C)($at)
.Ltitle_800790E0:
/* 27E10 800790E0 04008424 */  addiu      $a0, $a0, 0x4
/* 27E14 800790E4 30008228 */  slti       $v0, $a0, 0x30
/* 27E18 800790E8 EEFF4014 */  bnez       $v0, .Ltitle_800790A4
/* 27E1C 800790EC 00000000 */   nop
.Ltitle_800790F0:
/* 27E20 800790F0 0780043C */  lui        $a0, %hi(D_80071570)
/* 27E24 800790F4 70158424 */  addiu      $a0, $a0, %lo(D_80071570)
/* 27E28 800790F8 D8050526 */  addiu      $a1, $s0, 0x5D8
/* 27E2C 800790FC F539010C */  jal        func_8004E7D4
/* 27E30 80079100 4C000624 */   addiu     $a2, $zero, 0x4C
/* 27E34 80079104 0780043C */  lui        $a0, %hi(D_8007145C)
/* 27E38 80079108 5C148424 */  addiu      $a0, $a0, %lo(D_8007145C)
/* 27E3C 8007910C 24060526 */  addiu      $a1, $s0, 0x624
/* 27E40 80079110 F539010C */  jal        func_8004E7D4
/* 27E44 80079114 28000624 */   addiu     $a2, $zero, 0x28
/* 27E48 80079118 0680043C */  lui        $a0, %hi(D_80066BC8)
/* 27E4C 8007911C C86B8424 */  addiu      $a0, $a0, %lo(D_80066BC8)
/* 27E50 80079120 74080526 */  addiu      $a1, $s0, 0x874
/* 27E54 80079124 F539010C */  jal        func_8004E7D4
/* 27E58 80079128 4C000624 */   addiu     $a2, $zero, 0x4C
/* 27E5C 8007912C 21280000 */  addu       $a1, $zero, $zero
/* 27E60 80079130 9F8C0934 */  ori        $t1, $zero, 0x8C9F
/* 27E64 80079134 01000824 */  addiu      $t0, $zero, 0x1
/* 27E68 80079138 0680073C */  lui        $a3, %hi(speedwayRecords + 0x24)
/* 27E6C 8007913C 8057E724 */  addiu      $a3, $a3, %lo(speedwayRecords + 0x24)
/* 27E70 80079140 21300002 */  addu       $a2, $s0, $zero
/* 27E74 80079144 21200000 */  addu       $a0, $zero, $zero
.Ltitle_80079148:
/* 27E78 80079148 21180502 */  addu       $v1, $s0, $a1
/* 27E7C 8007914C 3C086290 */  lbu        $v0, 0x83C($v1)
/* 27E80 80079150 0680013C */  lui        $at, %hi(speedwayRecords + 0x10)
/* 27E84 80079154 21082400 */  addu       $at, $at, $a0
/* 27E88 80079158 6C5722AC */  sw         $v0, %lo(speedwayRecords + 0x10)($at)
/* 27E8C 8007915C 4008C28C */  lw         $v0, 0x840($a2)
/* 27E90 80079160 0680013C */  lui        $at, %hi(speedwayRecords + 0x14)
/* 27E94 80079164 21082400 */  addu       $at, $at, $a0
/* 27E98 80079168 705722AC */  sw         $v0, %lo(speedwayRecords + 0x14)($at)
/* 27E9C 8007916C 50086290 */  lbu        $v0, 0x850($v1)
/* 27EA0 80079170 0680013C */  lui        $at, %hi(speedwayRecords + 0x1C)
/* 27EA4 80079174 21082400 */  addu       $at, $at, $a0
/* 27EA8 80079178 785722AC */  sw         $v0, %lo(speedwayRecords + 0x1C)($at)
/* 27EAC 8007917C 5408C28C */  lw         $v0, 0x854($a2)
/* 27EB0 80079180 0680013C */  lui        $at, %hi(speedwayRecords + 0x28)
/* 27EB4 80079184 21082400 */  addu       $at, $at, $a0
/* 27EB8 80079188 845722AC */  sw         $v0, %lo(speedwayRecords + 0x28)($at)
/* 27EBC 8007918C 2A102201 */  slt        $v0, $t1, $v0
/* 27EC0 80079190 03004014 */  bnez       $v0, .Ltitle_800791A0
/* 27EC4 80079194 00000000 */   nop
/* 27EC8 80079198 69E40108 */  j          .Ltitle_800791A4
/* 27ECC 8007919C 0000E8AC */   sw        $t0, 0x0($a3)
.Ltitle_800791A0:
/* 27ED0 800791A0 0000E0AC */  sw         $zero, 0x0($a3)
.Ltitle_800791A4:
/* 27ED4 800791A4 2C00E724 */  addiu      $a3, $a3, 0x2C
/* 27ED8 800791A8 0400C624 */  addiu      $a2, $a2, 0x4
/* 27EDC 800791AC 0100A524 */  addiu      $a1, $a1, 0x1
/* 27EE0 800791B0 0400A228 */  slti       $v0, $a1, 0x4
/* 27EE4 800791B4 E4FF4014 */  bnez       $v0, .Ltitle_80079148
/* 27EE8 800791B8 2C008424 */   addiu     $a0, $a0, 0x2C
/* 27EEC 800791BC 21280000 */  addu       $a1, $zero, $zero
/* 27EF0 800791C0 0780043C */  lui        $a0, %hi(D_800718CC)
/* 27EF4 800791C4 CC188424 */  addiu      $a0, $a0, %lo(D_800718CC)
/* 27EF8 800791C8 21180002 */  addu       $v1, $s0, $zero
.Ltitle_800791CC:
/* 27EFC 800791CC 6408628C */  lw         $v0, 0x864($v1)
/* 27F00 800791D0 04006324 */  addiu      $v1, $v1, 0x4
/* 27F04 800791D4 0100A524 */  addiu      $a1, $a1, 0x1
/* 27F08 800791D8 000082AC */  sw         $v0, 0x0($a0)
/* 27F0C 800791DC 0400A228 */  slti       $v0, $a1, 0x4
/* 27F10 800791E0 FAFF4014 */  bnez       $v0, .Ltitle_800791CC
/* 27F14 800791E4 04008424 */   addiu     $a0, $a0, 0x4
/* 27F18 800791E8 89080292 */  lbu        $v0, 0x889($s0)
/* 27F1C 800791EC 0780013C */  lui        $at, %hi(g_CheatFlags + 2)
/* 27F20 800791F0 92FB22A0 */  sb         $v0, %lo(g_CheatFlags + 2)($at)
/* 27F24 800791F4 8A080292 */  lbu        $v0, 0x88A($s0)
/* 27F28 800791F8 0780013C */  lui        $at, %hi(D_8006E50C)
/* 27F2C 800791FC 0CE522A0 */  sb         $v0, %lo(D_8006E50C)($at)
/* 27F30 80079200 8A080292 */  lbu        $v0, 0x88A($s0)
/* 27F34 80079204 0780013C */  lui        $at, %hi(D_8007201C)
/* 27F38 80079208 1C2022A0 */  sb         $v0, %lo(D_8007201C)($at)
/* 27F3C 8007920C 8B080292 */  lbu        $v0, 0x88B($s0)
/* 27F40 80079210 0780013C */  lui        $at, %hi(D_8006C7B0)
/* 27F44 80079214 B0C722AC */  sw         $v0, %lo(D_8006C7B0)($at)
/* 27F48 80079218 8C080292 */  lbu        $v0, 0x88C($s0)
/* 27F4C 8007921C 6666043C */  lui        $a0, (0x66666667 >> 16)
/* 27F50 80079220 0780013C */  lui        $at, %hi(D_8006C3F8)
/* 27F54 80079224 F8C322AC */  sw         $v0, %lo(D_8006C3F8)($at)
/* 27F58 80079228 8D080392 */  lbu        $v1, 0x88D($s0)
/* 27F5C 8007922C 67668434 */  ori        $a0, $a0, (0x66666667 & 0xFFFF)
/* 27F60 80079230 40100300 */  sll        $v0, $v1, 1
/* 27F64 80079234 21104300 */  addu       $v0, $v0, $v1
/* 27F68 80079238 40130200 */  sll        $v0, $v0, 13
/* 27F6C 8007923C 23104300 */  subu       $v0, $v0, $v1
/* 27F70 80079240 18004400 */  mult       $v0, $a0
/* 27F74 80079244 C3170200 */  sra        $v0, $v0, 31
/* 27F78 80079248 0780013C */  lui        $at, %hi(D_8006C3FC)
/* 27F7C 8007924C FCC323AC */  sw         $v1, %lo(D_8006C3FC)($at)
/* 27F80 80079250 10500000 */  mfhi       $t2
/* 27F84 80079254 83180A00 */  sra        $v1, $t2, 2
/* 27F88 80079258 23186200 */  subu       $v1, $v1, $v0
/* 27F8C 8007925C 0780013C */  lui        $at, %hi(D_8006E4AC)
/* 27F90 80079260 ACE423AC */  sw         $v1, %lo(D_8006E4AC)($at)
/* 27F94 80079264 8E080292 */  lbu        $v0, 0x88E($s0)
/* 27F98 80079268 0780013C */  lui        $at, %hi(D_8006C400)
/* 27F9C 8007926C 00C422AC */  sw         $v0, %lo(D_8006C400)($at)
/* 27FA0 80079270 7055010C */  jal        ActivateSparxPowers
/* 27FA4 80079274 00000000 */   nop
/* 27FA8 80079278 1400BF8F */  lw         $ra, 0x14($sp)
/* 27FAC 8007927C 1000B08F */  lw         $s0, 0x10($sp)
/* 27FB0 80079280 1800BD27 */  addiu      $sp, $sp, 0x18
/* 27FB4 80079284 0800E003 */  jr         $ra
/* 27FB8 80079288 00000000 */   nop
.size func_title_80078EAC, . - func_title_80078EAC
