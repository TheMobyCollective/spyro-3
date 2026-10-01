.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_70_80076C10
/* 1C8B140 80076C10 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 1C8B144 80076C14 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 1C8B148 80076C18 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 1C8B14C 80076C1C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 1C8B150 80076C20 0780113C */  lui        $s1, %hi(D_8006EDD8)
/* 1C8B154 80076C24 D8ED3126 */  addiu      $s1, $s1, %lo(D_8006EDD8)
/* 1C8B158 80076C28 2400BFAF */  sw         $ra, 0x24($sp)
/* 1C8B15C 80076C2C 2000B2AF */  sw         $s2, 0x20($sp)
/* 1C8B160 80076C30 1800B0AF */  sw         $s0, 0x18($sp)
/* 1C8B164 80076C34 000024AE */  sw         $a0, 0x0($s1)
/* 1C8B168 80076C38 40180200 */  sll        $v1, $v0, 1
/* 1C8B16C 80076C3C 21186200 */  addu       $v1, $v1, $v0
/* 1C8B170 80076C40 C0180300 */  sll        $v1, $v1, 3
/* 1C8B174 80076C44 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x44)
/* 1C8B178 80076C48 21082300 */  addu       $at, $at, $v1
/* 1C8B17C 80076C4C 1CD9228C */  lw         $v0, %lo(D_8006D8D8 + 0x44)($at)
/* 1C8B180 80076C50 00000000 */  nop
/* 1C8B184 80076C54 03004014 */  bnez       $v0, .Lcutscene_70_80076C64
/* 1C8B188 80076C58 00080624 */   addiu     $a2, $zero, 0x800
/* 1C8B18C 80076C5C 93DB0108 */  j          .Lcutscene_70_80076E4C
/* 1C8B190 80076C60 21100000 */   addu      $v0, $zero, $zero
.Lcutscene_70_80076C64:
/* 1C8B194 80076C64 0780043C */  lui        $a0, %hi(D_8006E470)
/* 1C8B198 80076C68 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 1C8B19C 80076C6C 0780103C */  lui        $s0, %hi(D_800722CC)
/* 1C8B1A0 80076C70 CC22108E */  lw         $s0, %lo(D_800722CC)($s0)
/* 1C8B1A4 80076C74 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 1C8B1A8 80076C78 21082300 */  addu       $at, $at, $v1
/* 1C8B1AC 80076C7C 18D9278C */  lw         $a3, %lo(D_8006D8D8 + 0x40)($at)
/* 1C8B1B0 80076C80 5E41010C */  jal        CDLoadSync
/* 1C8B1B4 80076C84 21280002 */   addu      $a1, $s0, $zero
/* 1C8B1B8 80076C88 0100043C */  lui        $a0, (0x1C000 >> 16)
/* 1C8B1BC 80076C8C 06000224 */  addiu      $v0, $zero, 0x6
/* 1C8B1C0 80076C90 01001224 */  addiu      $s2, $zero, 0x1
/* 1C8B1C4 80076C94 0780013C */  lui        $at, %hi(D_8006E344)
/* 1C8B1C8 80076C98 44E322AC */  sw         $v0, %lo(D_8006E344)($at)
/* 1C8B1CC 80076C9C 0780013C */  lui        $at, %hi(D_8006C718)
/* 1C8B1D0 80076CA0 18C732AC */  sw         $s2, %lo(D_8006C718)($at)
/* 1C8B1D4 80076CA4 C47E000C */  jal        func_8001FB10
/* 1C8B1D8 80076CA8 00C08434 */   ori       $a0, $a0, (0x1C000 & 0xFFFF)
/* 1C8B1DC 80076CAC 21200002 */  addu       $a0, $s0, $zero
/* 1C8B1E0 80076CB0 DEDC010C */  jal        func_cutscene_70_80077378
/* 1C8B1E4 80076CB4 01000524 */   addiu     $a1, $zero, 0x1
/* 1C8B1E8 80076CB8 21280000 */  addu       $a1, $zero, $zero
/* 1C8B1EC 80076CBC 0780043C */  lui        $a0, %hi(D_8006EE08)
/* 1C8B1F0 80076CC0 08EE848C */  lw         $a0, %lo(D_8006EE08)($a0)
/* 1C8B1F4 80076CC4 0780013C */  lui        $at, %hi(D_8006EDDC)
/* 1C8B1F8 80076CC8 DCED20AC */  sw         $zero, %lo(D_8006EDDC)($at)
/* 1C8B1FC 80076CCC 0780013C */  lui        $at, %hi(D_8006EDE0)
/* 1C8B200 80076CD0 E0ED20AC */  sw         $zero, %lo(D_8006EDE0)($at)
/* 1C8B204 80076CD4 8ADD010C */  jal        func_cutscene_70_80077628
/* 1C8B208 80076CD8 01000624 */   addiu     $a2, $zero, 0x1
/* 1C8B20C 80076CDC 0780033C */  lui        $v1, %hi(D_8006E33C)
/* 1C8B210 80076CE0 3CE36390 */  lbu        $v1, %lo(D_8006E33C)($v1)
/* 1C8B214 80076CE4 0780043C */  lui        $a0, %hi(D_8006E33D)
/* 1C8B218 80076CE8 3DE38490 */  lbu        $a0, %lo(D_8006E33D)($a0)
/* 1C8B21C 80076CEC 0780023C */  lui        $v0, %hi(D_8006C5BC)
/* 1C8B220 80076CF0 BCC5428C */  lw         $v0, %lo(D_8006C5BC)($v0)
/* 1C8B224 80076CF4 0780053C */  lui        $a1, %hi(D_8006E33E)
/* 1C8B228 80076CF8 3EE3A590 */  lbu        $a1, %lo(D_8006E33E)($a1)
/* 1C8B22C 80076CFC 3C004228 */  slti       $v0, $v0, 0x3C
/* 1C8B230 80076D00 0780013C */  lui        $at, %hi(D_8006FC15)
/* 1C8B234 80076D04 15FC23A0 */  sb         $v1, %lo(D_8006FC15)($at)
/* 1C8B238 80076D08 0780013C */  lui        $at, %hi(D_8006FC16)
/* 1C8B23C 80076D0C 16FC24A0 */  sb         $a0, %lo(D_8006FC16)($at)
/* 1C8B240 80076D10 0780013C */  lui        $at, %hi(D_8006FC17)
/* 1C8B244 80076D14 17FC25A0 */  sb         $a1, %lo(D_8006FC17)($at)
/* 1C8B248 80076D18 0780013C */  lui        $at, %hi(D_8006FC89)
/* 1C8B24C 80076D1C 89FC23A0 */  sb         $v1, %lo(D_8006FC89)($at)
/* 1C8B250 80076D20 0780013C */  lui        $at, %hi(D_8006FC8A)
/* 1C8B254 80076D24 8AFC24A0 */  sb         $a0, %lo(D_8006FC8A)($at)
/* 1C8B258 80076D28 0780013C */  lui        $at, %hi(D_8006FC8B)
/* 1C8B25C 80076D2C 8BFC25A0 */  sb         $a1, %lo(D_8006FC8B)($at)
/* 1C8B260 80076D30 0E004014 */  bnez       $v0, .Lcutscene_70_80076D6C
/* 1C8B264 80076D34 00000000 */   nop
/* 1C8B268 80076D38 0780043C */  lui        $a0, %hi(D_800722D0)
/* 1C8B26C 80076D3C D022848C */  lw         $a0, %lo(D_800722D0)($a0)
/* 1C8B270 80076D40 DAAD000C */  jal        func_8002B768
/* 1C8B274 80076D44 FCDF8424 */   addiu     $a0, $a0, -0x2004
/* 1C8B278 80076D48 21280000 */  addu       $a1, $zero, $zero
/* 1C8B27C 80076D4C 0780043C */  lui        $a0, %hi(D_8006C554)
/* 1C8B280 80076D50 54C5848C */  lw         $a0, %lo(D_8006C554)($a0)
/* 1C8B284 80076D54 00000000 */  nop
/* 1C8B288 80076D58 00F08424 */  addiu      $a0, $a0, -0x1000
/* 1C8B28C 80076D5C 0780013C */  lui        $at, %hi(D_8006C7E0)
/* 1C8B290 80076D60 E0C724AC */  sw         $a0, %lo(D_8006C7E0)($at)
/* 1C8B294 80076D64 E439010C */  jal        func_8004E790
/* 1C8B298 80076D68 00100624 */   addiu     $a2, $zero, 0x1000
.Lcutscene_70_80076D6C:
/* 1C8B29C 80076D6C 40002426 */  addiu      $a0, $s1, 0x40
/* 1C8B2A0 80076D70 0780053C */  lui        $a1, %hi(D_8006C6A0)
/* 1C8B2A4 80076D74 A0C6A58C */  lw         $a1, %lo(D_8006C6A0)($a1)
/* 1C8B2A8 80076D78 F539010C */  jal        func_8004E7D4
/* 1C8B2AC 80076D7C 14000624 */   addiu     $a2, $zero, 0x14
/* 1C8B2B0 80076D80 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 1C8B2B4 80076D84 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 1C8B2B8 80076D88 10100224 */  addiu      $v0, $zero, 0x1010
/* 1C8B2BC 80076D8C 000062AC */  sw         $v0, 0x0($v1)
/* 1C8B2C0 80076D90 FF2F0224 */  addiu      $v0, $zero, 0x2FFF
/* 1C8B2C4 80076D94 060062A4 */  sh         $v0, 0x6($v1)
/* 1C8B2C8 80076D98 F8070224 */  addiu      $v0, $zero, 0x7F8
/* 1C8B2CC 80076D9C 0C0062A4 */  sh         $v0, 0xC($v1)
/* 1C8B2D0 80076DA0 0E0062A4 */  sh         $v0, 0xE($v1)
/* 1C8B2D4 80076DA4 01000224 */  addiu      $v0, $zero, 0x1
/* 1C8B2D8 80076DA8 100062A0 */  sb         $v0, 0x10($v1)
/* 1C8B2DC 80076DAC 0780043C */  lui        $a0, %hi(D_8006C704)
/* 1C8B2E0 80076DB0 04C7848C */  lw         $a0, %lo(D_8006C704)($a0)
/* 1C8B2E4 80076DB4 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 1C8B2E8 80076DB8 0780013C */  lui        $at, %hi(D_8006EE14)
/* 1C8B2EC 80076DBC 14EE22AC */  sw         $v0, %lo(D_8006EE14)($at)
/* 1C8B2F0 80076DC0 0780023C */  lui        $v0, %hi(D_8006C578)
/* 1C8B2F4 80076DC4 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 1C8B2F8 80076DC8 21280000 */  addu       $a1, $zero, $zero
/* 1C8B2FC 80076DCC 0780013C */  lui        $at, %hi(D_80070328 + 0x288)
/* 1C8B300 80076DD0 B00532AC */  sw         $s2, %lo(D_80070328 + 0x288)($at)
/* 1C8B304 80076DD4 01004224 */  addiu      $v0, $v0, 0x1
/* 1C8B308 80076DD8 40300200 */  sll        $a2, $v0, 1
/* 1C8B30C 80076DDC 2130C200 */  addu       $a2, $a2, $v0
/* 1C8B310 80076DE0 80300600 */  sll        $a2, $a2, 2
/* 1C8B314 80076DE4 2330C200 */  subu       $a2, $a2, $v0
/* 1C8B318 80076DE8 0780013C */  lui        $at, %hi(D_8006C610)
/* 1C8B31C 80076DEC 10C624AC */  sw         $a0, %lo(D_8006C610)($at)
/* 1C8B320 80076DF0 E439010C */  jal        func_8004E790
/* 1C8B324 80076DF4 C0300600 */   sll       $a2, $a2, 3
/* 1C8B328 80076DF8 0780023C */  lui        $v0, %hi(D_8006C578)
/* 1C8B32C 80076DFC 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 1C8B330 80076E00 00000000 */  nop
/* 1C8B334 80076E04 01004224 */  addiu      $v0, $v0, 0x1
/* 1C8B338 80076E08 0F004018 */  blez       $v0, .Lcutscene_70_80076E48
/* 1C8B33C 80076E0C 21180000 */   addu      $v1, $zero, $zero
/* 1C8B340 80076E10 FF000524 */  addiu      $a1, $zero, 0xFF
/* 1C8B344 80076E14 21200000 */  addu       $a0, $zero, $zero
.Lcutscene_70_80076E18:
/* 1C8B348 80076E18 0780023C */  lui        $v0, %hi(D_8006C610)
/* 1C8B34C 80076E1C 10C6428C */  lw         $v0, %lo(D_8006C610)($v0)
/* 1C8B350 80076E20 01006324 */  addiu      $v1, $v1, 0x1
/* 1C8B354 80076E24 21108200 */  addu       $v0, $a0, $v0
/* 1C8B358 80076E28 480045A0 */  sb         $a1, 0x48($v0)
/* 1C8B35C 80076E2C 0780023C */  lui        $v0, %hi(D_8006C578)
/* 1C8B360 80076E30 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 1C8B364 80076E34 00000000 */  nop
/* 1C8B368 80076E38 01004224 */  addiu      $v0, $v0, 0x1
/* 1C8B36C 80076E3C 2A106200 */  slt        $v0, $v1, $v0
/* 1C8B370 80076E40 F5FF4014 */  bnez       $v0, .Lcutscene_70_80076E18
/* 1C8B374 80076E44 58008424 */   addiu     $a0, $a0, 0x58
.Lcutscene_70_80076E48:
/* 1C8B378 80076E48 01000224 */  addiu      $v0, $zero, 0x1
.Lcutscene_70_80076E4C:
/* 1C8B37C 80076E4C 2400BF8F */  lw         $ra, 0x24($sp)
/* 1C8B380 80076E50 2000B28F */  lw         $s2, 0x20($sp)
/* 1C8B384 80076E54 1C00B18F */  lw         $s1, 0x1C($sp)
/* 1C8B388 80076E58 1800B08F */  lw         $s0, 0x18($sp)
/* 1C8B38C 80076E5C 2800BD27 */  addiu      $sp, $sp, 0x28
/* 1C8B390 80076E60 0800E003 */  jr         $ra
/* 1C8B394 80076E64 00000000 */   nop
.size func_cutscene_70_80076C10, . - func_cutscene_70_80076C10
