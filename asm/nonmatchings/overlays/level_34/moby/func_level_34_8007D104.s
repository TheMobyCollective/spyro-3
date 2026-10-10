.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_34_8007D104
/* 74D8E34 8007D104 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 74D8E38 8007D108 2000B2AF */  sw         $s2, 0x20($sp)
/* 74D8E3C 8007D10C 21908000 */  addu       $s2, $a0, $zero
/* 74D8E40 8007D110 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 74D8E44 8007D114 2800B4AF */  sw         $s4, 0x28($sp)
/* 74D8E48 8007D118 2400B3AF */  sw         $s3, 0x24($sp)
/* 74D8E4C 8007D11C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 74D8E50 8007D120 1800B0AF */  sw         $s0, 0x18($sp)
/* 74D8E54 8007D124 0000508E */  lw         $s0, 0x0($s2)
/* 74D8E58 8007D128 0780023C */  lui        $v0, %hi(D_8006C5C8)
/* 74D8E5C 8007D12C C8C5428C */  lw         $v0, %lo(D_8006C5C8)($v0)
/* 74D8E60 8007D130 4000038E */  lw         $v1, 0x40($s0)
/* 74D8E64 8007D134 00000000 */  nop
/* 74D8E68 8007D138 94006214 */  bne        $v1, $v0, .Llevel_34_8007D38C
/* 74D8E6C 8007D13C 00000000 */   nop
/* 74D8E70 8007D140 0780143C */  lui        $s4, %hi(D_8006E480)
/* 74D8E74 8007D144 80E49426 */  addiu      $s4, $s4, %lo(D_8006E480)
/* 74D8E78 8007D148 0000828E */  lw         $v0, 0x0($s4)
/* 74D8E7C 8007D14C 00000000 */  nop
/* 74D8E80 8007D150 8E004014 */  bnez       $v0, .Llevel_34_8007D38C
/* 74D8E84 8007D154 01001324 */   addiu     $s3, $zero, 0x1
/* 74D8E88 8007D158 0780033C */  lui        $v1, %hi(D_8006E344)
/* 74D8E8C 8007D15C 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 74D8E90 8007D160 00000000 */  nop
/* 74D8E94 8007D164 89007310 */  beq        $v1, $s3, .Llevel_34_8007D38C
/* 74D8E98 8007D168 0F000224 */   addiu     $v0, $zero, 0xF
/* 74D8E9C 8007D16C 87006210 */  beq        $v1, $v0, .Llevel_34_8007D38C
/* 74D8EA0 8007D170 21280002 */   addu      $a1, $s0, $zero
/* 74D8EA4 8007D174 0780113C */  lui        $s1, %hi(D_80070328)
/* 74D8EA8 8007D178 28033126 */  addiu      $s1, $s1, %lo(D_80070328)
/* 74D8EAC 8007D17C 21202002 */  addu       $a0, $s1, $zero
/* 74D8EB0 8007D180 3800078E */  lw         $a3, 0x38($s0)
/* 74D8EB4 8007D184 88D8000C */  jal        func_80036220
/* 74D8EB8 8007D188 21300000 */   addu      $a2, $zero, $zero
/* 74D8EBC 8007D18C 0E004010 */  beqz       $v0, .Llevel_34_8007D1C8
/* 74D8EC0 8007D190 00000000 */   nop
/* 74D8EC4 8007D194 3000028E */  lw         $v0, 0x30($s0)
/* 74D8EC8 8007D198 3400048E */  lw         $a0, 0x34($s0)
/* 74D8ECC 8007D19C 40280200 */  sll        $a1, $v0, 1
/* 74D8ED0 8007D1A0 2128A200 */  addu       $a1, $a1, $v0
/* 74D8ED4 8007D1A4 80280500 */  sll        $a1, $a1, 2
/* 74D8ED8 8007D1A8 2328A200 */  subu       $a1, $a1, $v0
/* 74D8EDC 8007D1AC 0780023C */  lui        $v0, %hi(D_8006C550)
/* 74D8EE0 8007D1B0 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 74D8EE4 8007D1B4 C0280500 */  sll        $a1, $a1, 3
/* 74D8EE8 8007D1B8 464A010C */  jal        func_80052918
/* 74D8EEC 8007D1BC 21284500 */   addu      $a1, $v0, $a1
/* 74D8EF0 8007D1C0 E3F40108 */  j          .Llevel_34_8007D38C
/* 74D8EF4 8007D1C4 00000000 */   nop
.Llevel_34_8007D1C8:
/* 74D8EF8 8007D1C8 48004392 */  lbu        $v1, 0x48($s2)
/* 74D8EFC 8007D1CC 00000000 */  nop
/* 74D8F00 8007D1D0 14007310 */  beq        $v1, $s3, .Llevel_34_8007D224
/* 74D8F04 8007D1D4 02006228 */   slti      $v0, $v1, 0x2
/* 74D8F08 8007D1D8 05004010 */  beqz       $v0, .Llevel_34_8007D1F0
/* 74D8F0C 8007D1DC 00000000 */   nop
/* 74D8F10 8007D1E0 0A006010 */  beqz       $v1, .Llevel_34_8007D20C
/* 74D8F14 8007D1E4 21202002 */   addu      $a0, $s1, $zero
/* 74D8F18 8007D1E8 E3F40108 */  j          .Llevel_34_8007D38C
/* 74D8F1C 8007D1EC 00000000 */   nop
.Llevel_34_8007D1F0:
/* 74D8F20 8007D1F0 02001424 */  addiu      $s4, $zero, 0x2
/* 74D8F24 8007D1F4 43007410 */  beq        $v1, $s4, .Llevel_34_8007D304
/* 74D8F28 8007D1F8 03000224 */   addiu     $v0, $zero, 0x3
/* 74D8F2C 8007D1FC 56006210 */  beq        $v1, $v0, .Llevel_34_8007D358
/* 74D8F30 8007D200 00000000 */   nop
/* 74D8F34 8007D204 E3F40108 */  j          .Llevel_34_8007D38C
/* 74D8F38 8007D208 00000000 */   nop
.Llevel_34_8007D20C:
/* 74D8F3C 8007D20C 18000526 */  addiu      $a1, $s0, 0x18
/* 74D8F40 8007D210 3C00078E */  lw         $a3, 0x3C($s0)
/* 74D8F44 8007D214 88D8000C */  jal        func_80036220
/* 74D8F48 8007D218 21300000 */   addu      $a2, $zero, $zero
/* 74D8F4C 8007D21C CFF40108 */  j          .Llevel_34_8007D33C
/* 74D8F50 8007D220 00000000 */   nop
.Llevel_34_8007D224:
/* 74D8F54 8007D224 21202002 */  addu       $a0, $s1, $zero
/* 74D8F58 8007D228 18000526 */  addiu      $a1, $s0, 0x18
/* 74D8F5C 8007D22C 3C00078E */  lw         $a3, 0x3C($s0)
/* 74D8F60 8007D230 00040624 */  addiu      $a2, $zero, 0x400
/* 74D8F64 8007D234 88D8000C */  jal        func_80036220
/* 74D8F68 8007D238 0004E724 */   addiu     $a3, $a3, 0x400
/* 74D8F6C 8007D23C 39004010 */  beqz       $v0, .Llevel_34_8007D324
/* 74D8F70 8007D240 00000000 */   nop
/* 74D8F74 8007D244 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 74D8F78 8007D248 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
/* 74D8F7C 8007D24C 00000000 */  nop
/* 74D8F80 8007D250 4E004014 */  bnez       $v0, .Llevel_34_8007D38C
/* 74D8F84 8007D254 02000324 */   addiu     $v1, $zero, 0x2
/* 74D8F88 8007D258 0780043C */  lui        $a0, %hi(D_8006C5C8)
/* 74D8F8C 8007D25C C8C5848C */  lw         $a0, %lo(D_8006C5C8)($a0)
/* 74D8F90 8007D260 80000224 */  addiu      $v0, $zero, 0x80
/* 74D8F94 8007D264 03008010 */  beqz       $a0, .Llevel_34_8007D274
/* 74D8F98 8007D268 1000A2A3 */   sb        $v0, 0x10($sp)
/* 74D8F9C 8007D26C 40100400 */  sll        $v0, $a0, 1
/* 74D8FA0 8007D270 02004324 */  addiu      $v1, $v0, 0x2
.Llevel_34_8007D274:
/* 74D8FA4 8007D274 0E000424 */  addiu      $a0, $zero, 0xE
/* 74D8FA8 8007D278 1000A527 */  addiu      $a1, $sp, 0x10
/* 74D8FAC 8007D27C C0180300 */  sll        $v1, $v1, 3
/* 74D8FB0 8007D280 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 74D8FB4 8007D284 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 74D8FB8 8007D288 0780013C */  lui        $at, %hi(D_80072098)
/* 74D8FBC 8007D28C 21082300 */  addu       $at, $at, $v1
/* 74D8FC0 8007D290 9820308C */  lw         $s0, %lo(D_80072098)($at)
/* 74D8FC4 8007D294 00110200 */  sll        $v0, $v0, 4
/* 74D8FC8 8007D298 0780013C */  lui        $at, %hi(D_8006DBE8)
/* 74D8FCC 8007D29C 21082200 */  addu       $at, $at, $v0
/* 74D8FD0 8007D2A0 E8DB228C */  lw         $v0, %lo(D_8006DBE8)($at)
/* 74D8FD4 8007D2A4 21300000 */  addu       $a2, $zero, $zero
/* 74D8FD8 8007D2A8 2F78010C */  jal        func_8005E0BC
/* 74D8FDC 8007D2AC 21800202 */   addu      $s0, $s0, $v0
/* 74D8FE0 8007D2B0 21200002 */  addu       $a0, $s0, $zero
/* 74D8FE4 8007D2B4 02008104 */  bgez       $a0, .Llevel_34_8007D2C0
/* 74D8FE8 8007D2B8 F8FF9026 */   addiu     $s0, $s4, -0x8
/* 74D8FEC 8007D2BC FF078424 */  addiu      $a0, $a0, 0x7FF
.Llevel_34_8007D2C0:
/* 74D8FF0 8007D2C0 21280002 */  addu       $a1, $s0, $zero
/* 74D8FF4 8007D2C4 0780023C */  lui        $v0, %hi(D_8006E470)
/* 74D8FF8 8007D2C8 70E4428C */  lw         $v0, %lo(D_8006E470)($v0)
/* 74D8FFC 8007D2CC C3220400 */  sra        $a0, $a0, 11
/* 74D9000 8007D2D0 1B7D010C */  jal        CdIntToPos
/* 74D9004 8007D2D4 21204400 */   addu      $a0, $v0, $a0
/* 74D9008 8007D2D8 02000424 */  addiu      $a0, $zero, 0x2
/* 74D900C 8007D2DC 21280002 */  addu       $a1, $s0, $zero
/* 74D9010 8007D2E0 2F78010C */  jal        func_8005E0BC
/* 74D9014 8007D2E4 21300000 */   addu      $a2, $zero, $zero
/* 74D9018 8007D2E8 16000424 */  addiu      $a0, $zero, 0x16
/* 74D901C 8007D2EC 21280000 */  addu       $a1, $zero, $zero
/* 74D9020 8007D2F0 2F78010C */  jal        func_8005E0BC
/* 74D9024 8007D2F4 21300000 */   addu      $a2, $zero, $zero
/* 74D9028 8007D2F8 02000224 */  addiu      $v0, $zero, 0x2
/* 74D902C 8007D2FC E3F40108 */  j          .Llevel_34_8007D38C
/* 74D9030 8007D300 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_34_8007D304:
/* 74D9034 8007D304 21202002 */  addu       $a0, $s1, $zero
/* 74D9038 8007D308 18000526 */  addiu      $a1, $s0, 0x18
/* 74D903C 8007D30C 3C00078E */  lw         $a3, 0x3C($s0)
/* 74D9040 8007D310 00040624 */  addiu      $a2, $zero, 0x400
/* 74D9044 8007D314 88D8000C */  jal        func_80036220
/* 74D9048 8007D318 0004E724 */   addiu     $a3, $a3, 0x400
/* 74D904C 8007D31C 05004014 */  bnez       $v0, .Llevel_34_8007D334
/* 74D9050 8007D320 00000000 */   nop
.Llevel_34_8007D324:
/* 74D9054 8007D324 0780013C */  lui        $at, %hi(D_8006E49C)
/* 74D9058 8007D328 9CE420AC */  sw         $zero, %lo(D_8006E49C)($at)
/* 74D905C 8007D32C E3F40108 */  j          .Llevel_34_8007D38C
/* 74D9060 8007D330 480040A2 */   sb        $zero, 0x48($s2)
.Llevel_34_8007D334:
/* 74D9064 8007D334 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 74D9068 8007D338 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
.Llevel_34_8007D33C:
/* 74D906C 8007D33C 00000000 */  nop
/* 74D9070 8007D340 12004010 */  beqz       $v0, .Llevel_34_8007D38C
/* 74D9074 8007D344 01000224 */   addiu     $v0, $zero, 0x1
/* 74D9078 8007D348 0780013C */  lui        $at, %hi(D_8006E49C)
/* 74D907C 8007D34C 9CE433AC */  sw         $s3, %lo(D_8006E49C)($at)
/* 74D9080 8007D350 E3F40108 */  j          .Llevel_34_8007D38C
/* 74D9084 8007D354 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_34_8007D358:
/* 74D9088 8007D358 3000028E */  lw         $v0, 0x30($s0)
/* 74D908C 8007D35C 3400048E */  lw         $a0, 0x34($s0)
/* 74D9090 8007D360 40280200 */  sll        $a1, $v0, 1
/* 74D9094 8007D364 2128A200 */  addu       $a1, $a1, $v0
/* 74D9098 8007D368 80280500 */  sll        $a1, $a1, 2
/* 74D909C 8007D36C 2328A200 */  subu       $a1, $a1, $v0
/* 74D90A0 8007D370 0780023C */  lui        $v0, %hi(D_8006C550)
/* 74D90A4 8007D374 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 74D90A8 8007D378 C0280500 */  sll        $a1, $a1, 3
/* 74D90AC 8007D37C 464A010C */  jal        func_80052918
/* 74D90B0 8007D380 21284500 */   addu      $a1, $v0, $a1
/* 74D90B4 8007D384 0780013C */  lui        $at, %hi(D_8006C4F8)
/* 74D90B8 8007D388 F8C434AC */  sw         $s4, %lo(D_8006C4F8)($at)
.Llevel_34_8007D38C:
/* 74D90BC 8007D38C 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 74D90C0 8007D390 2800B48F */  lw         $s4, 0x28($sp)
/* 74D90C4 8007D394 2400B38F */  lw         $s3, 0x24($sp)
/* 74D90C8 8007D398 2000B28F */  lw         $s2, 0x20($sp)
/* 74D90CC 8007D39C 1C00B18F */  lw         $s1, 0x1C($sp)
/* 74D90D0 8007D3A0 1800B08F */  lw         $s0, 0x18($sp)
/* 74D90D4 8007D3A4 3000BD27 */  addiu      $sp, $sp, 0x30
/* 74D90D8 8007D3A8 0800E003 */  jr         $ra
/* 74D90DC 8007D3AC 00000000 */   nop
.size func_level_34_8007D104, . - func_level_34_8007D104
