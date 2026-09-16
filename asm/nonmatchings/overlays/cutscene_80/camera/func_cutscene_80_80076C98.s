.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_80_80076C98
/* 30C41C8 80076C98 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 30C41CC 80076C9C 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 30C41D0 80076CA0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 30C41D4 80076CA4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 30C41D8 80076CA8 0780113C */  lui        $s1, %hi(D_8006EDD8)
/* 30C41DC 80076CAC D8ED3126 */  addiu      $s1, $s1, %lo(D_8006EDD8)
/* 30C41E0 80076CB0 2400BFAF */  sw         $ra, 0x24($sp)
/* 30C41E4 80076CB4 2000B2AF */  sw         $s2, 0x20($sp)
/* 30C41E8 80076CB8 1800B0AF */  sw         $s0, 0x18($sp)
/* 30C41EC 80076CBC 000024AE */  sw         $a0, 0x0($s1)
/* 30C41F0 80076CC0 40180200 */  sll        $v1, $v0, 1
/* 30C41F4 80076CC4 21186200 */  addu       $v1, $v1, $v0
/* 30C41F8 80076CC8 C0180300 */  sll        $v1, $v1, 3
/* 30C41FC 80076CCC 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x44)
/* 30C4200 80076CD0 21082300 */  addu       $at, $at, $v1
/* 30C4204 80076CD4 1CD9228C */  lw         $v0, %lo(D_8006D8D8 + 0x44)($at)
/* 30C4208 80076CD8 00000000 */  nop
/* 30C420C 80076CDC 03004014 */  bnez       $v0, .Lcutscene_80_80076CEC
/* 30C4210 80076CE0 00080624 */   addiu     $a2, $zero, 0x800
/* 30C4214 80076CE4 B5DB0108 */  j          .Lcutscene_80_80076ED4
/* 30C4218 80076CE8 21100000 */   addu      $v0, $zero, $zero
.Lcutscene_80_80076CEC:
/* 30C421C 80076CEC 0780043C */  lui        $a0, %hi(D_8006E470)
/* 30C4220 80076CF0 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 30C4224 80076CF4 0780103C */  lui        $s0, %hi(D_800722CC)
/* 30C4228 80076CF8 CC22108E */  lw         $s0, %lo(D_800722CC)($s0)
/* 30C422C 80076CFC 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 30C4230 80076D00 21082300 */  addu       $at, $at, $v1
/* 30C4234 80076D04 18D9278C */  lw         $a3, %lo(D_8006D8D8 + 0x40)($at)
/* 30C4238 80076D08 5E41010C */  jal        CDLoadSync
/* 30C423C 80076D0C 21280002 */   addu      $a1, $s0, $zero
/* 30C4240 80076D10 0100043C */  lui        $a0, (0x1C000 >> 16)
/* 30C4244 80076D14 06000224 */  addiu      $v0, $zero, 0x6
/* 30C4248 80076D18 01001224 */  addiu      $s2, $zero, 0x1
/* 30C424C 80076D1C 0780013C */  lui        $at, %hi(D_8006E344)
/* 30C4250 80076D20 44E322AC */  sw         $v0, %lo(D_8006E344)($at)
/* 30C4254 80076D24 0780013C */  lui        $at, %hi(D_8006C718)
/* 30C4258 80076D28 18C732AC */  sw         $s2, %lo(D_8006C718)($at)
/* 30C425C 80076D2C C47E000C */  jal        func_8001FB10
/* 30C4260 80076D30 00C08434 */   ori       $a0, $a0, (0x1C000 & 0xFFFF)
/* 30C4264 80076D34 21200002 */  addu       $a0, $s0, $zero
/* 30C4268 80076D38 00DD010C */  jal        func_cutscene_80_80077400
/* 30C426C 80076D3C 01000524 */   addiu     $a1, $zero, 0x1
/* 30C4270 80076D40 21280000 */  addu       $a1, $zero, $zero
/* 30C4274 80076D44 0780043C */  lui        $a0, %hi(D_8006EE08)
/* 30C4278 80076D48 08EE848C */  lw         $a0, %lo(D_8006EE08)($a0)
/* 30C427C 80076D4C 0780013C */  lui        $at, %hi(D_8006EDDC)
/* 30C4280 80076D50 DCED20AC */  sw         $zero, %lo(D_8006EDDC)($at)
/* 30C4284 80076D54 0780013C */  lui        $at, %hi(D_8006EDE0)
/* 30C4288 80076D58 E0ED20AC */  sw         $zero, %lo(D_8006EDE0)($at)
/* 30C428C 80076D5C ACDD010C */  jal        func_cutscene_80_800776B0
/* 30C4290 80076D60 01000624 */   addiu     $a2, $zero, 0x1
/* 30C4294 80076D64 0780033C */  lui        $v1, %hi(D_8006E33C)
/* 30C4298 80076D68 3CE36390 */  lbu        $v1, %lo(D_8006E33C)($v1)
/* 30C429C 80076D6C 0780043C */  lui        $a0, %hi(D_8006E33D)
/* 30C42A0 80076D70 3DE38490 */  lbu        $a0, %lo(D_8006E33D)($a0)
/* 30C42A4 80076D74 0780023C */  lui        $v0, %hi(D_8006C5BC)
/* 30C42A8 80076D78 BCC5428C */  lw         $v0, %lo(D_8006C5BC)($v0)
/* 30C42AC 80076D7C 0780053C */  lui        $a1, %hi(D_8006E33E)
/* 30C42B0 80076D80 3EE3A590 */  lbu        $a1, %lo(D_8006E33E)($a1)
/* 30C42B4 80076D84 3C004228 */  slti       $v0, $v0, 0x3C
/* 30C42B8 80076D88 0780013C */  lui        $at, %hi(D_8006FC15)
/* 30C42BC 80076D8C 15FC23A0 */  sb         $v1, %lo(D_8006FC15)($at)
/* 30C42C0 80076D90 0780013C */  lui        $at, %hi(D_8006FC16)
/* 30C42C4 80076D94 16FC24A0 */  sb         $a0, %lo(D_8006FC16)($at)
/* 30C42C8 80076D98 0780013C */  lui        $at, %hi(D_8006FC17)
/* 30C42CC 80076D9C 17FC25A0 */  sb         $a1, %lo(D_8006FC17)($at)
/* 30C42D0 80076DA0 0780013C */  lui        $at, %hi(D_8006FC89)
/* 30C42D4 80076DA4 89FC23A0 */  sb         $v1, %lo(D_8006FC89)($at)
/* 30C42D8 80076DA8 0780013C */  lui        $at, %hi(D_8006FC8A)
/* 30C42DC 80076DAC 8AFC24A0 */  sb         $a0, %lo(D_8006FC8A)($at)
/* 30C42E0 80076DB0 0780013C */  lui        $at, %hi(D_8006FC8B)
/* 30C42E4 80076DB4 8BFC25A0 */  sb         $a1, %lo(D_8006FC8B)($at)
/* 30C42E8 80076DB8 0E004014 */  bnez       $v0, .Lcutscene_80_80076DF4
/* 30C42EC 80076DBC 00000000 */   nop
/* 30C42F0 80076DC0 0780043C */  lui        $a0, %hi(D_800722D0)
/* 30C42F4 80076DC4 D022848C */  lw         $a0, %lo(D_800722D0)($a0)
/* 30C42F8 80076DC8 DAAD000C */  jal        func_8002B768
/* 30C42FC 80076DCC FCDF8424 */   addiu     $a0, $a0, -0x2004
/* 30C4300 80076DD0 21280000 */  addu       $a1, $zero, $zero
/* 30C4304 80076DD4 0780043C */  lui        $a0, %hi(D_8006C554)
/* 30C4308 80076DD8 54C5848C */  lw         $a0, %lo(D_8006C554)($a0)
/* 30C430C 80076DDC 00000000 */  nop
/* 30C4310 80076DE0 00F08424 */  addiu      $a0, $a0, -0x1000
/* 30C4314 80076DE4 0780013C */  lui        $at, %hi(D_8006C7E0)
/* 30C4318 80076DE8 E0C724AC */  sw         $a0, %lo(D_8006C7E0)($at)
/* 30C431C 80076DEC E439010C */  jal        func_8004E790
/* 30C4320 80076DF0 00100624 */   addiu     $a2, $zero, 0x1000
.Lcutscene_80_80076DF4:
/* 30C4324 80076DF4 40002426 */  addiu      $a0, $s1, 0x40
/* 30C4328 80076DF8 0780053C */  lui        $a1, %hi(D_8006C6A0)
/* 30C432C 80076DFC A0C6A58C */  lw         $a1, %lo(D_8006C6A0)($a1)
/* 30C4330 80076E00 F539010C */  jal        func_8004E7D4
/* 30C4334 80076E04 14000624 */   addiu     $a2, $zero, 0x14
/* 30C4338 80076E08 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 30C433C 80076E0C A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 30C4340 80076E10 10100224 */  addiu      $v0, $zero, 0x1010
/* 30C4344 80076E14 000062AC */  sw         $v0, 0x0($v1)
/* 30C4348 80076E18 FF2F0224 */  addiu      $v0, $zero, 0x2FFF
/* 30C434C 80076E1C 060062A4 */  sh         $v0, 0x6($v1)
/* 30C4350 80076E20 F8070224 */  addiu      $v0, $zero, 0x7F8
/* 30C4354 80076E24 0C0062A4 */  sh         $v0, 0xC($v1)
/* 30C4358 80076E28 0E0062A4 */  sh         $v0, 0xE($v1)
/* 30C435C 80076E2C 01000224 */  addiu      $v0, $zero, 0x1
/* 30C4360 80076E30 100062A0 */  sb         $v0, 0x10($v1)
/* 30C4364 80076E34 0780043C */  lui        $a0, %hi(D_8006C704)
/* 30C4368 80076E38 04C7848C */  lw         $a0, %lo(D_8006C704)($a0)
/* 30C436C 80076E3C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 30C4370 80076E40 0780013C */  lui        $at, %hi(D_8006EE14)
/* 30C4374 80076E44 14EE22AC */  sw         $v0, %lo(D_8006EE14)($at)
/* 30C4378 80076E48 0780023C */  lui        $v0, %hi(D_8006C578)
/* 30C437C 80076E4C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 30C4380 80076E50 21280000 */  addu       $a1, $zero, $zero
/* 30C4384 80076E54 0780013C */  lui        $at, %hi(D_80070328 + 0x288)
/* 30C4388 80076E58 B00532AC */  sw         $s2, %lo(D_80070328 + 0x288)($at)
/* 30C438C 80076E5C 01004224 */  addiu      $v0, $v0, 0x1
/* 30C4390 80076E60 40300200 */  sll        $a2, $v0, 1
/* 30C4394 80076E64 2130C200 */  addu       $a2, $a2, $v0
/* 30C4398 80076E68 80300600 */  sll        $a2, $a2, 2
/* 30C439C 80076E6C 2330C200 */  subu       $a2, $a2, $v0
/* 30C43A0 80076E70 0780013C */  lui        $at, %hi(D_8006C610)
/* 30C43A4 80076E74 10C624AC */  sw         $a0, %lo(D_8006C610)($at)
/* 30C43A8 80076E78 E439010C */  jal        func_8004E790
/* 30C43AC 80076E7C C0300600 */   sll       $a2, $a2, 3
/* 30C43B0 80076E80 0780023C */  lui        $v0, %hi(D_8006C578)
/* 30C43B4 80076E84 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 30C43B8 80076E88 00000000 */  nop
/* 30C43BC 80076E8C 01004224 */  addiu      $v0, $v0, 0x1
/* 30C43C0 80076E90 0F004018 */  blez       $v0, .Lcutscene_80_80076ED0
/* 30C43C4 80076E94 21180000 */   addu      $v1, $zero, $zero
/* 30C43C8 80076E98 FF000524 */  addiu      $a1, $zero, 0xFF
/* 30C43CC 80076E9C 21200000 */  addu       $a0, $zero, $zero
.Lcutscene_80_80076EA0:
/* 30C43D0 80076EA0 0780023C */  lui        $v0, %hi(D_8006C610)
/* 30C43D4 80076EA4 10C6428C */  lw         $v0, %lo(D_8006C610)($v0)
/* 30C43D8 80076EA8 01006324 */  addiu      $v1, $v1, 0x1
/* 30C43DC 80076EAC 21108200 */  addu       $v0, $a0, $v0
/* 30C43E0 80076EB0 480045A0 */  sb         $a1, 0x48($v0)
/* 30C43E4 80076EB4 0780023C */  lui        $v0, %hi(D_8006C578)
/* 30C43E8 80076EB8 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 30C43EC 80076EBC 00000000 */  nop
/* 30C43F0 80076EC0 01004224 */  addiu      $v0, $v0, 0x1
/* 30C43F4 80076EC4 2A106200 */  slt        $v0, $v1, $v0
/* 30C43F8 80076EC8 F5FF4014 */  bnez       $v0, .Lcutscene_80_80076EA0
/* 30C43FC 80076ECC 58008424 */   addiu     $a0, $a0, 0x58
.Lcutscene_80_80076ED0:
/* 30C4400 80076ED0 01000224 */  addiu      $v0, $zero, 0x1
.Lcutscene_80_80076ED4:
/* 30C4404 80076ED4 2400BF8F */  lw         $ra, 0x24($sp)
/* 30C4408 80076ED8 2000B28F */  lw         $s2, 0x20($sp)
/* 30C440C 80076EDC 1C00B18F */  lw         $s1, 0x1C($sp)
/* 30C4410 80076EE0 1800B08F */  lw         $s0, 0x18($sp)
/* 30C4414 80076EE4 2800BD27 */  addiu      $sp, $sp, 0x28
/* 30C4418 80076EE8 0800E003 */  jr         $ra
/* 30C441C 80076EEC 00000000 */   nop
.size func_cutscene_80_80076C98, . - func_cutscene_80_80076C98
