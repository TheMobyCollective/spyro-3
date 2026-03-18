.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_34_8007BFC4
/* 74D7CF4 8007BFC4 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 74D7CF8 8007BFC8 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 74D7CFC 8007BFCC 21988000 */  addu       $s3, $a0, $zero
/* 74D7D00 8007BFD0 3000BFAF */  sw         $ra, 0x30($sp)
/* 74D7D04 8007BFD4 2800B2AF */  sw         $s2, 0x28($sp)
/* 74D7D08 8007BFD8 2400B1AF */  sw         $s1, 0x24($sp)
/* 74D7D0C 8007BFDC 2000B0AF */  sw         $s0, 0x20($sp)
/* 74D7D10 8007BFE0 0000728E */  lw         $s2, 0x0($s3)
/* 74D7D14 8007BFE4 00000000 */  nop
/* 74D7D18 8007BFE8 0000428E */  lw         $v0, 0x0($s2)
/* 74D7D1C 8007BFEC 00000000 */  nop
/* 74D7D20 8007BFF0 13004014 */  bnez       $v0, .Llevel_34_8007C040
/* 74D7D24 8007BFF4 D3000424 */   addiu     $a0, $zero, 0xD3
/* 74D7D28 8007BFF8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 74D7D2C 8007BFFC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 74D7D30 8007C000 00000000 */  nop
/* 74D7D34 8007C004 09F84000 */  jalr       $v0
/* 74D7D38 8007C008 21286002 */   addu      $a1, $s3, $zero
/* 74D7D3C 8007C00C 21184000 */  addu       $v1, $v0, $zero
/* 74D7D40 8007C010 0B006010 */  beqz       $v1, .Llevel_34_8007C040
/* 74D7D44 8007C014 000043AE */   sw        $v1, 0x0($s2)
/* 74D7D48 8007C018 1400628E */  lw         $v0, 0x14($s3)
/* 74D7D4C 8007C01C 00000000 */  nop
/* 74D7D50 8007C020 E0004224 */  addiu      $v0, $v0, 0xE0
/* 74D7D54 8007C024 140062AC */  sw         $v0, 0x14($v1)
/* 74D7D58 8007C028 0000438E */  lw         $v1, 0x0($s2)
/* 74D7D5C 8007C02C 02000224 */  addiu      $v0, $zero, 0x2
/* 74D7D60 8007C030 480062A0 */  sb         $v0, 0x48($v1)
/* 74D7D64 8007C034 0000428E */  lw         $v0, 0x0($s2)
/* 74D7D68 8007C038 00000000 */  nop
/* 74D7D6C 8007C03C 1C0040AC */  sw         $zero, 0x1C($v0)
.Llevel_34_8007C040:
/* 74D7D70 8007C040 4D006292 */  lbu        $v0, 0x4D($s3)
/* 74D7D74 8007C044 00000000 */  nop
/* 74D7D78 8007C048 33004010 */  beqz       $v0, .Llevel_34_8007C118
/* 74D7D7C 8007C04C 00000000 */   nop
/* 74D7D80 8007C050 0400438E */  lw         $v1, 0x4($s2)
/* 74D7D84 8007C054 00000000 */  nop
/* 74D7D88 8007C058 90016228 */  slti       $v0, $v1, 0x190
/* 74D7D8C 8007C05C 07004010 */  beqz       $v0, .Llevel_34_8007C07C
/* 74D7D90 8007C060 00000000 */   nop
/* 74D7D94 8007C064 0780023C */  lui        $v0, %hi(D_8006C648)
/* 74D7D98 8007C068 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 74D7D9C 8007C06C 00000000 */  nop
/* 74D7DA0 8007C070 21106200 */  addu       $v0, $v1, $v0
/* 74D7DA4 8007C074 46F00108 */  j          .Llevel_34_8007C118
/* 74D7DA8 8007C078 040042AE */   sw        $v0, 0x4($s2)
.Llevel_34_8007C07C:
/* 74D7DAC 8007C07C 10BC000C */  jal        func_8002F040
/* 74D7DB0 8007C080 05000424 */   addiu     $a0, $zero, 0x5
/* 74D7DB4 8007C084 21884000 */  addu       $s1, $v0, $zero
/* 74D7DB8 8007C088 1C002012 */  beqz       $s1, .Llevel_34_8007C0FC
/* 74D7DBC 8007C08C 00000000 */   nop
/* 74D7DC0 8007C090 9171010C */  jal        rand
/* 74D7DC4 8007C094 00000000 */   nop
/* 74D7DC8 8007C098 21202002 */  addu       $a0, $s1, $zero
/* 74D7DCC 8007C09C 0C006526 */  addiu      $a1, $s3, 0xC
/* 74D7DD0 8007C0A0 5E3C010C */  jal        func_8004F178
/* 74D7DD4 8007C0A4 21804000 */   addu      $s0, $v0, $zero
/* 74D7DD8 8007C0A8 FF001032 */  andi       $s0, $s0, 0xFF
/* 74D7DDC 8007C0AC 40801000 */  sll        $s0, $s0, 1
/* 74D7DE0 8007C0B0 0680013C */  lui        $at, %hi(D_80065920)
/* 74D7DE4 8007C0B4 21083000 */  addu       $at, $at, $s0
/* 74D7DE8 8007C0B8 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 74D7DEC 8007C0BC 0000238E */  lw         $v1, 0x0($s1)
/* 74D7DF0 8007C0C0 00140200 */  sll        $v0, $v0, 16
/* 74D7DF4 8007C0C4 03150200 */  sra        $v0, $v0, 20
/* 74D7DF8 8007C0C8 21186200 */  addu       $v1, $v1, $v0
/* 74D7DFC 8007C0CC 0800228E */  lw         $v0, 0x8($s1)
/* 74D7E00 8007C0D0 000023AE */  sw         $v1, 0x0($s1)
/* 74D7E04 8007C0D4 0680013C */  lui        $at, %hi(D_800658A0)
/* 74D7E08 8007C0D8 21083000 */  addu       $at, $at, $s0
/* 74D7E0C 8007C0DC A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 74D7E10 8007C0E0 80014224 */  addiu      $v0, $v0, 0x180
/* 74D7E14 8007C0E4 001C0300 */  sll        $v1, $v1, 16
/* 74D7E18 8007C0E8 080022AE */  sw         $v0, 0x8($s1)
/* 74D7E1C 8007C0EC 0400228E */  lw         $v0, 0x4($s1)
/* 74D7E20 8007C0F0 031D0300 */  sra        $v1, $v1, 20
/* 74D7E24 8007C0F4 21104300 */  addu       $v0, $v0, $v1
/* 74D7E28 8007C0F8 040022AE */  sw         $v0, 0x4($s1)
.Llevel_34_8007C0FC:
/* 74D7E2C 8007C0FC 9171010C */  jal        rand
/* 74D7E30 8007C100 00000000 */   nop
/* 74D7E34 8007C104 0400438E */  lw         $v1, 0x4($s2)
/* 74D7E38 8007C108 FF004230 */  andi       $v0, $v0, 0xFF
/* 74D7E3C 8007C10C 80FF6324 */  addiu      $v1, $v1, -0x80
/* 74D7E40 8007C110 23186200 */  subu       $v1, $v1, $v0
/* 74D7E44 8007C114 040043AE */  sw         $v1, 0x4($s2)
.Llevel_34_8007C118:
/* 74D7E48 8007C118 1800628E */  lw         $v0, 0x18($s3)
/* 74D7E4C 8007C11C 00000000 */  nop
/* 74D7E50 8007C120 7A004010 */  beqz       $v0, .Llevel_34_8007C30C
/* 74D7E54 8007C124 00000000 */   nop
/* 74D7E58 8007C128 0000428E */  lw         $v0, 0x0($s2)
/* 74D7E5C 8007C12C 00000000 */  nop
/* 74D7E60 8007C130 05004010 */  beqz       $v0, .Llevel_34_8007C148
/* 74D7E64 8007C134 00000000 */   nop
/* 74D7E68 8007C138 480040A0 */  sb         $zero, 0x48($v0)
/* 74D7E6C 8007C13C 0000438E */  lw         $v1, 0x0($s2)
/* 74D7E70 8007C140 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 74D7E74 8007C144 1C0062AC */  sw         $v0, 0x1C($v1)
.Llevel_34_8007C148:
/* 74D7E78 8007C148 70000224 */  addiu      $v0, $zero, 0x70
/* 74D7E7C 8007C14C 490062A2 */  sb         $v0, 0x49($s3)
/* 74D7E80 8007C150 21880000 */  addu       $s1, $zero, $zero
/* 74D7E84 8007C154 5555123C */  lui        $s2, (0x55555556 >> 16)
/* 74D7E88 8007C158 56555236 */  ori        $s2, $s2, (0x55555556 & 0xFFFF)
.Llevel_34_8007C15C:
/* 74D7E8C 8007C15C 0780023C */  lui        $v0, %hi(D_8006C578)
/* 74D7E90 8007C160 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 74D7E94 8007C164 0780033C */  lui        $v1, %hi(D_8006C574)
/* 74D7E98 8007C168 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 74D7E9C 8007C16C 00000000 */  nop
/* 74D7EA0 8007C170 23104300 */  subu       $v0, $v0, $v1
/* 74D7EA4 8007C174 15004228 */  slti       $v0, $v0, 0x15
/* 74D7EA8 8007C178 14004014 */  bnez       $v0, .Llevel_34_8007C1CC
/* 74D7EAC 8007C17C 38020424 */   addiu     $a0, $zero, 0x238
/* 74D7EB0 8007C180 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 74D7EB4 8007C184 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 74D7EB8 8007C188 00000000 */  nop
/* 74D7EBC 8007C18C 09F84000 */  jalr       $v0
/* 74D7EC0 8007C190 21286002 */   addu      $a1, $s3, $zero
/* 74D7EC4 8007C194 9171010C */  jal        rand
/* 74D7EC8 8007C198 21804000 */   addu      $s0, $v0, $zero
/* 74D7ECC 8007C19C 18005200 */  mult       $v0, $s2
/* 74D7ED0 8007C1A0 01003126 */  addiu      $s1, $s1, 0x1
/* 74D7ED4 8007C1A4 C3270200 */  sra        $a0, $v0, 31
/* 74D7ED8 8007C1A8 10480000 */  mfhi       $t1
/* 74D7EDC 8007C1AC 23202401 */  subu       $a0, $t1, $a0
/* 74D7EE0 8007C1B0 40180400 */  sll        $v1, $a0, 1
/* 74D7EE4 8007C1B4 21186400 */  addu       $v1, $v1, $a0
/* 74D7EE8 8007C1B8 23104300 */  subu       $v0, $v0, $v1
/* 74D7EEC 8007C1BC 3C0002A2 */  sb         $v0, 0x3C($s0)
/* 74D7EF0 8007C1C0 1000222A */  slti       $v0, $s1, 0x10
/* 74D7EF4 8007C1C4 E5FF4014 */  bnez       $v0, .Llevel_34_8007C15C
/* 74D7EF8 8007C1C8 00000000 */   nop
.Llevel_34_8007C1CC:
/* 74D7EFC 8007C1CC 21880000 */  addu       $s1, $zero, $zero
.Llevel_34_8007C1D0:
/* 74D7F00 8007C1D0 1000A427 */  addiu      $a0, $sp, 0x10
/* 74D7F04 8007C1D4 5E3C010C */  jal        func_8004F178
/* 74D7F08 8007C1D8 0C006526 */   addiu     $a1, $s3, 0xC
/* 74D7F0C 8007C1DC 9171010C */  jal        rand
/* 74D7F10 8007C1E0 01003126 */   addiu     $s1, $s1, 0x1
/* 74D7F14 8007C1E4 1000A38F */  lw         $v1, 0x10($sp)
/* 74D7F18 8007C1E8 FF014230 */  andi       $v0, $v0, 0x1FF
/* 74D7F1C 8007C1EC 00016324 */  addiu      $v1, $v1, 0x100
/* 74D7F20 8007C1F0 23186200 */  subu       $v1, $v1, $v0
/* 74D7F24 8007C1F4 9171010C */  jal        rand
/* 74D7F28 8007C1F8 1000A3AF */   sw        $v1, 0x10($sp)
/* 74D7F2C 8007C1FC 1400A38F */  lw         $v1, 0x14($sp)
/* 74D7F30 8007C200 FF014230 */  andi       $v0, $v0, 0x1FF
/* 74D7F34 8007C204 00016324 */  addiu      $v1, $v1, 0x100
/* 74D7F38 8007C208 23186200 */  subu       $v1, $v1, $v0
/* 74D7F3C 8007C20C 9171010C */  jal        rand
/* 74D7F40 8007C210 1400A3AF */   sw        $v1, 0x14($sp)
/* 74D7F44 8007C214 01000424 */  addiu      $a0, $zero, 0x1
/* 74D7F48 8007C218 02000524 */  addiu      $a1, $zero, 0x2
/* 74D7F4C 8007C21C 1000A627 */  addiu      $a2, $sp, 0x10
/* 74D7F50 8007C220 21380000 */  addu       $a3, $zero, $zero
/* 74D7F54 8007C224 FF014230 */  andi       $v0, $v0, 0x1FF
/* 74D7F58 8007C228 1800A38F */  lw         $v1, 0x18($sp)
/* 74D7F5C 8007C22C 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 74D7F60 8007C230 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 74D7F64 8007C234 21186200 */  addu       $v1, $v1, $v0
/* 74D7F68 8007C238 09F80001 */  jalr       $t0
/* 74D7F6C 8007C23C 1800A3AF */   sw        $v1, 0x18($sp)
/* 74D7F70 8007C240 04000424 */  addiu      $a0, $zero, 0x4
/* 74D7F74 8007C244 46000524 */  addiu      $a1, $zero, 0x46
/* 74D7F78 8007C248 1000A627 */  addiu      $a2, $sp, 0x10
/* 74D7F7C 8007C24C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 74D7F80 8007C250 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 74D7F84 8007C254 00000000 */  nop
/* 74D7F88 8007C258 09F84000 */  jalr       $v0
/* 74D7F8C 8007C25C 18000724 */   addiu     $a3, $zero, 0x18
/* 74D7F90 8007C260 0400222A */  slti       $v0, $s1, 0x4
/* 74D7F94 8007C264 DAFF4014 */  bnez       $v0, .Llevel_34_8007C1D0
/* 74D7F98 8007C268 21206002 */   addu      $a0, $s3, $zero
/* 74D7F9C 8007C26C 21280000 */  addu       $a1, $zero, $zero
/* 74D7FA0 8007C270 AFEE000C */  jal        func_8003BABC
/* 74D7FA4 8007C274 21300000 */   addu      $a2, $zero, $zero
/* 74D7FA8 8007C278 80EE000C */  jal        func_8003BA00
/* 74D7FAC 8007C27C 21206002 */   addu      $a0, $s3, $zero
/* 74D7FB0 8007C280 0780023C */  lui        $v0, %hi(D_8006C550)
/* 74D7FB4 8007C284 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 74D7FB8 8007C288 21206002 */  addu       $a0, $s3, $zero
/* 74D7FBC 8007C28C 23288200 */  subu       $a1, $a0, $v0
/* 74D7FC0 8007C290 40110500 */  sll        $v0, $a1, 5
/* 74D7FC4 8007C294 23104500 */  subu       $v0, $v0, $a1
/* 74D7FC8 8007C298 40110200 */  sll        $v0, $v0, 5
/* 74D7FCC 8007C29C 21104500 */  addu       $v0, $v0, $a1
/* 74D7FD0 8007C2A0 C0180200 */  sll        $v1, $v0, 3
/* 74D7FD4 8007C2A4 21104300 */  addu       $v0, $v0, $v1
/* 74D7FD8 8007C2A8 C01B0200 */  sll        $v1, $v0, 15
/* 74D7FDC 8007C2AC 23186200 */  subu       $v1, $v1, $v0
/* 74D7FE0 8007C2B0 80180300 */  sll        $v1, $v1, 2
/* 74D7FE4 8007C2B4 21186500 */  addu       $v1, $v1, $a1
/* 74D7FE8 8007C2B8 23180300 */  negu       $v1, $v1
/* 74D7FEC 8007C2BC C3180300 */  sra        $v1, $v1, 3
/* 74D7FF0 8007C2C0 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 74D7FF4 8007C2C4 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 74D7FF8 8007C2C8 0780053C */  lui        $a1, %hi(D_80071AB0)
/* 74D7FFC 8007C2CC B01AA524 */  addiu      $a1, $a1, %lo(D_80071AB0)
/* 74D8000 8007C2D0 21186200 */  addu       $v1, $v1, $v0
/* 74D8004 8007C2D4 43310300 */  sra        $a2, $v1, 5
/* 74D8008 8007C2D8 80300600 */  sll        $a2, $a2, 2
/* 74D800C 8007C2DC 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 74D8010 8007C2E0 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 74D8014 8007C2E4 1F006330 */  andi       $v1, $v1, 0x1F
/* 74D8018 8007C2E8 40110200 */  sll        $v0, $v0, 5
/* 74D801C 8007C2EC 21104500 */  addu       $v0, $v0, $a1
/* 74D8020 8007C2F0 2130C200 */  addu       $a2, $a2, $v0
/* 74D8024 8007C2F4 01000224 */  addiu      $v0, $zero, 0x1
/* 74D8028 8007C2F8 0000C58C */  lw         $a1, 0x0($a2)
/* 74D802C 8007C2FC 04106200 */  sllv       $v0, $v0, $v1
/* 74D8030 8007C300 2528A200 */  or         $a1, $a1, $v0
/* 74D8034 8007C304 C656010C */  jal        func_80055B18
/* 74D8038 8007C308 0000C5AC */   sw        $a1, 0x0($a2)
.Llevel_34_8007C30C:
/* 74D803C 8007C30C 3000BF8F */  lw         $ra, 0x30($sp)
/* 74D8040 8007C310 2C00B38F */  lw         $s3, 0x2C($sp)
/* 74D8044 8007C314 2800B28F */  lw         $s2, 0x28($sp)
/* 74D8048 8007C318 2400B18F */  lw         $s1, 0x24($sp)
/* 74D804C 8007C31C 2000B08F */  lw         $s0, 0x20($sp)
/* 74D8050 8007C320 3800BD27 */  addiu      $sp, $sp, 0x38
/* 74D8054 8007C324 0800E003 */  jr         $ra
/* 74D8058 8007C328 00000000 */   nop
.size func_level_34_8007BFC4, . - func_level_34_8007BFC4
