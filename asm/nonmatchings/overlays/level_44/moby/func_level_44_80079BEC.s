.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_44_80079BEC
/* 8B4D11C 80079BEC C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 8B4D120 80079BF0 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 8B4D124 80079BF4 21988000 */  addu       $s3, $a0, $zero
/* 8B4D128 80079BF8 3000BFAF */  sw         $ra, 0x30($sp)
/* 8B4D12C 80079BFC 2800B2AF */  sw         $s2, 0x28($sp)
/* 8B4D130 80079C00 2400B1AF */  sw         $s1, 0x24($sp)
/* 8B4D134 80079C04 2000B0AF */  sw         $s0, 0x20($sp)
/* 8B4D138 80079C08 0000728E */  lw         $s2, 0x0($s3)
/* 8B4D13C 80079C0C 00000000 */  nop
/* 8B4D140 80079C10 0000428E */  lw         $v0, 0x0($s2)
/* 8B4D144 80079C14 00000000 */  nop
/* 8B4D148 80079C18 13004014 */  bnez       $v0, .Llevel_44_80079C68
/* 8B4D14C 80079C1C D3000424 */   addiu     $a0, $zero, 0xD3
/* 8B4D150 80079C20 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8B4D154 80079C24 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8B4D158 80079C28 00000000 */  nop
/* 8B4D15C 80079C2C 09F84000 */  jalr       $v0
/* 8B4D160 80079C30 21286002 */   addu      $a1, $s3, $zero
/* 8B4D164 80079C34 21184000 */  addu       $v1, $v0, $zero
/* 8B4D168 80079C38 0B006010 */  beqz       $v1, .Llevel_44_80079C68
/* 8B4D16C 80079C3C 000043AE */   sw        $v1, 0x0($s2)
/* 8B4D170 80079C40 1400628E */  lw         $v0, 0x14($s3)
/* 8B4D174 80079C44 00000000 */  nop
/* 8B4D178 80079C48 E0004224 */  addiu      $v0, $v0, 0xE0
/* 8B4D17C 80079C4C 140062AC */  sw         $v0, 0x14($v1)
/* 8B4D180 80079C50 0000438E */  lw         $v1, 0x0($s2)
/* 8B4D184 80079C54 02000224 */  addiu      $v0, $zero, 0x2
/* 8B4D188 80079C58 480062A0 */  sb         $v0, 0x48($v1)
/* 8B4D18C 80079C5C 0000428E */  lw         $v0, 0x0($s2)
/* 8B4D190 80079C60 00000000 */  nop
/* 8B4D194 80079C64 1C0040AC */  sw         $zero, 0x1C($v0)
.Llevel_44_80079C68:
/* 8B4D198 80079C68 4D006292 */  lbu        $v0, 0x4D($s3)
/* 8B4D19C 80079C6C 00000000 */  nop
/* 8B4D1A0 80079C70 33004010 */  beqz       $v0, .Llevel_44_80079D40
/* 8B4D1A4 80079C74 00000000 */   nop
/* 8B4D1A8 80079C78 0400438E */  lw         $v1, 0x4($s2)
/* 8B4D1AC 80079C7C 00000000 */  nop
/* 8B4D1B0 80079C80 90016228 */  slti       $v0, $v1, 0x190
/* 8B4D1B4 80079C84 07004010 */  beqz       $v0, .Llevel_44_80079CA4
/* 8B4D1B8 80079C88 00000000 */   nop
/* 8B4D1BC 80079C8C 0780023C */  lui        $v0, %hi(D_8006C648)
/* 8B4D1C0 80079C90 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 8B4D1C4 80079C94 00000000 */  nop
/* 8B4D1C8 80079C98 21106200 */  addu       $v0, $v1, $v0
/* 8B4D1CC 80079C9C 50E70108 */  j          .Llevel_44_80079D40
/* 8B4D1D0 80079CA0 040042AE */   sw        $v0, 0x4($s2)
.Llevel_44_80079CA4:
/* 8B4D1D4 80079CA4 10BC000C */  jal        func_8002F040
/* 8B4D1D8 80079CA8 05000424 */   addiu     $a0, $zero, 0x5
/* 8B4D1DC 80079CAC 21884000 */  addu       $s1, $v0, $zero
/* 8B4D1E0 80079CB0 1C002012 */  beqz       $s1, .Llevel_44_80079D24
/* 8B4D1E4 80079CB4 00000000 */   nop
/* 8B4D1E8 80079CB8 9171010C */  jal        rand
/* 8B4D1EC 80079CBC 00000000 */   nop
/* 8B4D1F0 80079CC0 21202002 */  addu       $a0, $s1, $zero
/* 8B4D1F4 80079CC4 0C006526 */  addiu      $a1, $s3, 0xC
/* 8B4D1F8 80079CC8 5E3C010C */  jal        func_8004F178
/* 8B4D1FC 80079CCC 21804000 */   addu      $s0, $v0, $zero
/* 8B4D200 80079CD0 FF001032 */  andi       $s0, $s0, 0xFF
/* 8B4D204 80079CD4 40801000 */  sll        $s0, $s0, 1
/* 8B4D208 80079CD8 0680013C */  lui        $at, %hi(D_80065920)
/* 8B4D20C 80079CDC 21083000 */  addu       $at, $at, $s0
/* 8B4D210 80079CE0 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 8B4D214 80079CE4 0000238E */  lw         $v1, 0x0($s1)
/* 8B4D218 80079CE8 00140200 */  sll        $v0, $v0, 16
/* 8B4D21C 80079CEC 03150200 */  sra        $v0, $v0, 20
/* 8B4D220 80079CF0 21186200 */  addu       $v1, $v1, $v0
/* 8B4D224 80079CF4 0800228E */  lw         $v0, 0x8($s1)
/* 8B4D228 80079CF8 000023AE */  sw         $v1, 0x0($s1)
/* 8B4D22C 80079CFC 0680013C */  lui        $at, %hi(D_800658A0)
/* 8B4D230 80079D00 21083000 */  addu       $at, $at, $s0
/* 8B4D234 80079D04 A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 8B4D238 80079D08 80014224 */  addiu      $v0, $v0, 0x180
/* 8B4D23C 80079D0C 001C0300 */  sll        $v1, $v1, 16
/* 8B4D240 80079D10 080022AE */  sw         $v0, 0x8($s1)
/* 8B4D244 80079D14 0400228E */  lw         $v0, 0x4($s1)
/* 8B4D248 80079D18 031D0300 */  sra        $v1, $v1, 20
/* 8B4D24C 80079D1C 21104300 */  addu       $v0, $v0, $v1
/* 8B4D250 80079D20 040022AE */  sw         $v0, 0x4($s1)
.Llevel_44_80079D24:
/* 8B4D254 80079D24 9171010C */  jal        rand
/* 8B4D258 80079D28 00000000 */   nop
/* 8B4D25C 80079D2C 0400438E */  lw         $v1, 0x4($s2)
/* 8B4D260 80079D30 FF004230 */  andi       $v0, $v0, 0xFF
/* 8B4D264 80079D34 80FF6324 */  addiu      $v1, $v1, -0x80
/* 8B4D268 80079D38 23186200 */  subu       $v1, $v1, $v0
/* 8B4D26C 80079D3C 040043AE */  sw         $v1, 0x4($s2)
.Llevel_44_80079D40:
/* 8B4D270 80079D40 1800628E */  lw         $v0, 0x18($s3)
/* 8B4D274 80079D44 00000000 */  nop
/* 8B4D278 80079D48 7A004010 */  beqz       $v0, .Llevel_44_80079F34
/* 8B4D27C 80079D4C 00000000 */   nop
/* 8B4D280 80079D50 0000428E */  lw         $v0, 0x0($s2)
/* 8B4D284 80079D54 00000000 */  nop
/* 8B4D288 80079D58 05004010 */  beqz       $v0, .Llevel_44_80079D70
/* 8B4D28C 80079D5C 00000000 */   nop
/* 8B4D290 80079D60 480040A0 */  sb         $zero, 0x48($v0)
/* 8B4D294 80079D64 0000438E */  lw         $v1, 0x0($s2)
/* 8B4D298 80079D68 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 8B4D29C 80079D6C 1C0062AC */  sw         $v0, 0x1C($v1)
.Llevel_44_80079D70:
/* 8B4D2A0 80079D70 70000224 */  addiu      $v0, $zero, 0x70
/* 8B4D2A4 80079D74 490062A2 */  sb         $v0, 0x49($s3)
/* 8B4D2A8 80079D78 21880000 */  addu       $s1, $zero, $zero
/* 8B4D2AC 80079D7C 5555123C */  lui        $s2, (0x55555556 >> 16)
/* 8B4D2B0 80079D80 56555236 */  ori        $s2, $s2, (0x55555556 & 0xFFFF)
.Llevel_44_80079D84:
/* 8B4D2B4 80079D84 0780023C */  lui        $v0, %hi(D_8006C578)
/* 8B4D2B8 80079D88 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 8B4D2BC 80079D8C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 8B4D2C0 80079D90 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 8B4D2C4 80079D94 00000000 */  nop
/* 8B4D2C8 80079D98 23104300 */  subu       $v0, $v0, $v1
/* 8B4D2CC 80079D9C 15004228 */  slti       $v0, $v0, 0x15
/* 8B4D2D0 80079DA0 14004014 */  bnez       $v0, .Llevel_44_80079DF4
/* 8B4D2D4 80079DA4 38020424 */   addiu     $a0, $zero, 0x238
/* 8B4D2D8 80079DA8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8B4D2DC 80079DAC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8B4D2E0 80079DB0 00000000 */  nop
/* 8B4D2E4 80079DB4 09F84000 */  jalr       $v0
/* 8B4D2E8 80079DB8 21286002 */   addu      $a1, $s3, $zero
/* 8B4D2EC 80079DBC 9171010C */  jal        rand
/* 8B4D2F0 80079DC0 21804000 */   addu      $s0, $v0, $zero
/* 8B4D2F4 80079DC4 18005200 */  mult       $v0, $s2
/* 8B4D2F8 80079DC8 01003126 */  addiu      $s1, $s1, 0x1
/* 8B4D2FC 80079DCC C3270200 */  sra        $a0, $v0, 31
/* 8B4D300 80079DD0 10480000 */  mfhi       $t1
/* 8B4D304 80079DD4 23202401 */  subu       $a0, $t1, $a0
/* 8B4D308 80079DD8 40180400 */  sll        $v1, $a0, 1
/* 8B4D30C 80079DDC 21186400 */  addu       $v1, $v1, $a0
/* 8B4D310 80079DE0 23104300 */  subu       $v0, $v0, $v1
/* 8B4D314 80079DE4 3C0002A2 */  sb         $v0, 0x3C($s0)
/* 8B4D318 80079DE8 1000222A */  slti       $v0, $s1, 0x10
/* 8B4D31C 80079DEC E5FF4014 */  bnez       $v0, .Llevel_44_80079D84
/* 8B4D320 80079DF0 00000000 */   nop
.Llevel_44_80079DF4:
/* 8B4D324 80079DF4 21880000 */  addu       $s1, $zero, $zero
.Llevel_44_80079DF8:
/* 8B4D328 80079DF8 1000A427 */  addiu      $a0, $sp, 0x10
/* 8B4D32C 80079DFC 5E3C010C */  jal        func_8004F178
/* 8B4D330 80079E00 0C006526 */   addiu     $a1, $s3, 0xC
/* 8B4D334 80079E04 9171010C */  jal        rand
/* 8B4D338 80079E08 01003126 */   addiu     $s1, $s1, 0x1
/* 8B4D33C 80079E0C 1000A38F */  lw         $v1, 0x10($sp)
/* 8B4D340 80079E10 FF014230 */  andi       $v0, $v0, 0x1FF
/* 8B4D344 80079E14 00016324 */  addiu      $v1, $v1, 0x100
/* 8B4D348 80079E18 23186200 */  subu       $v1, $v1, $v0
/* 8B4D34C 80079E1C 9171010C */  jal        rand
/* 8B4D350 80079E20 1000A3AF */   sw        $v1, 0x10($sp)
/* 8B4D354 80079E24 1400A38F */  lw         $v1, 0x14($sp)
/* 8B4D358 80079E28 FF014230 */  andi       $v0, $v0, 0x1FF
/* 8B4D35C 80079E2C 00016324 */  addiu      $v1, $v1, 0x100
/* 8B4D360 80079E30 23186200 */  subu       $v1, $v1, $v0
/* 8B4D364 80079E34 9171010C */  jal        rand
/* 8B4D368 80079E38 1400A3AF */   sw        $v1, 0x14($sp)
/* 8B4D36C 80079E3C 01000424 */  addiu      $a0, $zero, 0x1
/* 8B4D370 80079E40 02000524 */  addiu      $a1, $zero, 0x2
/* 8B4D374 80079E44 1000A627 */  addiu      $a2, $sp, 0x10
/* 8B4D378 80079E48 21380000 */  addu       $a3, $zero, $zero
/* 8B4D37C 80079E4C FF014230 */  andi       $v0, $v0, 0x1FF
/* 8B4D380 80079E50 1800A38F */  lw         $v1, 0x18($sp)
/* 8B4D384 80079E54 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 8B4D388 80079E58 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 8B4D38C 80079E5C 21186200 */  addu       $v1, $v1, $v0
/* 8B4D390 80079E60 09F80001 */  jalr       $t0
/* 8B4D394 80079E64 1800A3AF */   sw        $v1, 0x18($sp)
/* 8B4D398 80079E68 04000424 */  addiu      $a0, $zero, 0x4
/* 8B4D39C 80079E6C 46000524 */  addiu      $a1, $zero, 0x46
/* 8B4D3A0 80079E70 1000A627 */  addiu      $a2, $sp, 0x10
/* 8B4D3A4 80079E74 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8B4D3A8 80079E78 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8B4D3AC 80079E7C 00000000 */  nop
/* 8B4D3B0 80079E80 09F84000 */  jalr       $v0
/* 8B4D3B4 80079E84 18000724 */   addiu     $a3, $zero, 0x18
/* 8B4D3B8 80079E88 0400222A */  slti       $v0, $s1, 0x4
/* 8B4D3BC 80079E8C DAFF4014 */  bnez       $v0, .Llevel_44_80079DF8
/* 8B4D3C0 80079E90 21206002 */   addu      $a0, $s3, $zero
/* 8B4D3C4 80079E94 21280000 */  addu       $a1, $zero, $zero
/* 8B4D3C8 80079E98 AFEE000C */  jal        func_8003BABC
/* 8B4D3CC 80079E9C 21300000 */   addu      $a2, $zero, $zero
/* 8B4D3D0 80079EA0 80EE000C */  jal        func_8003BA00
/* 8B4D3D4 80079EA4 21206002 */   addu      $a0, $s3, $zero
/* 8B4D3D8 80079EA8 0780023C */  lui        $v0, %hi(D_8006C550)
/* 8B4D3DC 80079EAC 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 8B4D3E0 80079EB0 21206002 */  addu       $a0, $s3, $zero
/* 8B4D3E4 80079EB4 23288200 */  subu       $a1, $a0, $v0
/* 8B4D3E8 80079EB8 40110500 */  sll        $v0, $a1, 5
/* 8B4D3EC 80079EBC 23104500 */  subu       $v0, $v0, $a1
/* 8B4D3F0 80079EC0 40110200 */  sll        $v0, $v0, 5
/* 8B4D3F4 80079EC4 21104500 */  addu       $v0, $v0, $a1
/* 8B4D3F8 80079EC8 C0180200 */  sll        $v1, $v0, 3
/* 8B4D3FC 80079ECC 21104300 */  addu       $v0, $v0, $v1
/* 8B4D400 80079ED0 C01B0200 */  sll        $v1, $v0, 15
/* 8B4D404 80079ED4 23186200 */  subu       $v1, $v1, $v0
/* 8B4D408 80079ED8 80180300 */  sll        $v1, $v1, 2
/* 8B4D40C 80079EDC 21186500 */  addu       $v1, $v1, $a1
/* 8B4D410 80079EE0 23180300 */  negu       $v1, $v1
/* 8B4D414 80079EE4 C3180300 */  sra        $v1, $v1, 3
/* 8B4D418 80079EE8 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 8B4D41C 80079EEC 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 8B4D420 80079EF0 0780053C */  lui        $a1, %hi(D_80071AB0)
/* 8B4D424 80079EF4 B01AA524 */  addiu      $a1, $a1, %lo(D_80071AB0)
/* 8B4D428 80079EF8 21186200 */  addu       $v1, $v1, $v0
/* 8B4D42C 80079EFC 43310300 */  sra        $a2, $v1, 5
/* 8B4D430 80079F00 80300600 */  sll        $a2, $a2, 2
/* 8B4D434 80079F04 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 8B4D438 80079F08 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 8B4D43C 80079F0C 1F006330 */  andi       $v1, $v1, 0x1F
/* 8B4D440 80079F10 40110200 */  sll        $v0, $v0, 5
/* 8B4D444 80079F14 21104500 */  addu       $v0, $v0, $a1
/* 8B4D448 80079F18 2130C200 */  addu       $a2, $a2, $v0
/* 8B4D44C 80079F1C 01000224 */  addiu      $v0, $zero, 0x1
/* 8B4D450 80079F20 0000C58C */  lw         $a1, 0x0($a2)
/* 8B4D454 80079F24 04106200 */  sllv       $v0, $v0, $v1
/* 8B4D458 80079F28 2528A200 */  or         $a1, $a1, $v0
/* 8B4D45C 80079F2C C656010C */  jal        func_80055B18
/* 8B4D460 80079F30 0000C5AC */   sw        $a1, 0x0($a2)
.Llevel_44_80079F34:
/* 8B4D464 80079F34 3000BF8F */  lw         $ra, 0x30($sp)
/* 8B4D468 80079F38 2C00B38F */  lw         $s3, 0x2C($sp)
/* 8B4D46C 80079F3C 2800B28F */  lw         $s2, 0x28($sp)
/* 8B4D470 80079F40 2400B18F */  lw         $s1, 0x24($sp)
/* 8B4D474 80079F44 2000B08F */  lw         $s0, 0x20($sp)
/* 8B4D478 80079F48 3800BD27 */  addiu      $sp, $sp, 0x38
/* 8B4D47C 80079F4C 0800E003 */  jr         $ra
/* 8B4D480 80079F50 00000000 */   nop
.size func_level_44_80079BEC, . - func_level_44_80079BEC
