.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_33_8007AF98
/* 71B2CC8 8007AF98 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 71B2CCC 8007AF9C 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 71B2CD0 8007AFA0 21988000 */  addu       $s3, $a0, $zero
/* 71B2CD4 8007AFA4 3000BFAF */  sw         $ra, 0x30($sp)
/* 71B2CD8 8007AFA8 2800B2AF */  sw         $s2, 0x28($sp)
/* 71B2CDC 8007AFAC 2400B1AF */  sw         $s1, 0x24($sp)
/* 71B2CE0 8007AFB0 2000B0AF */  sw         $s0, 0x20($sp)
/* 71B2CE4 8007AFB4 0000728E */  lw         $s2, 0x0($s3)
/* 71B2CE8 8007AFB8 00000000 */  nop
/* 71B2CEC 8007AFBC 0000428E */  lw         $v0, 0x0($s2)
/* 71B2CF0 8007AFC0 00000000 */  nop
/* 71B2CF4 8007AFC4 13004014 */  bnez       $v0, .Llevel_33_8007B014
/* 71B2CF8 8007AFC8 D3000424 */   addiu     $a0, $zero, 0xD3
/* 71B2CFC 8007AFCC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 71B2D00 8007AFD0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 71B2D04 8007AFD4 00000000 */  nop
/* 71B2D08 8007AFD8 09F84000 */  jalr       $v0
/* 71B2D0C 8007AFDC 21286002 */   addu      $a1, $s3, $zero
/* 71B2D10 8007AFE0 21184000 */  addu       $v1, $v0, $zero
/* 71B2D14 8007AFE4 0B006010 */  beqz       $v1, .Llevel_33_8007B014
/* 71B2D18 8007AFE8 000043AE */   sw        $v1, 0x0($s2)
/* 71B2D1C 8007AFEC 1400628E */  lw         $v0, 0x14($s3)
/* 71B2D20 8007AFF0 00000000 */  nop
/* 71B2D24 8007AFF4 E0004224 */  addiu      $v0, $v0, 0xE0
/* 71B2D28 8007AFF8 140062AC */  sw         $v0, 0x14($v1)
/* 71B2D2C 8007AFFC 0000438E */  lw         $v1, 0x0($s2)
/* 71B2D30 8007B000 02000224 */  addiu      $v0, $zero, 0x2
/* 71B2D34 8007B004 480062A0 */  sb         $v0, 0x48($v1)
/* 71B2D38 8007B008 0000428E */  lw         $v0, 0x0($s2)
/* 71B2D3C 8007B00C 00000000 */  nop
/* 71B2D40 8007B010 1C0040AC */  sw         $zero, 0x1C($v0)
.Llevel_33_8007B014:
/* 71B2D44 8007B014 4D006292 */  lbu        $v0, 0x4D($s3)
/* 71B2D48 8007B018 00000000 */  nop
/* 71B2D4C 8007B01C 33004010 */  beqz       $v0, .Llevel_33_8007B0EC
/* 71B2D50 8007B020 00000000 */   nop
/* 71B2D54 8007B024 0400438E */  lw         $v1, 0x4($s2)
/* 71B2D58 8007B028 00000000 */  nop
/* 71B2D5C 8007B02C 90016228 */  slti       $v0, $v1, 0x190
/* 71B2D60 8007B030 07004010 */  beqz       $v0, .Llevel_33_8007B050
/* 71B2D64 8007B034 00000000 */   nop
/* 71B2D68 8007B038 0780023C */  lui        $v0, %hi(D_8006C648)
/* 71B2D6C 8007B03C 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 71B2D70 8007B040 00000000 */  nop
/* 71B2D74 8007B044 21106200 */  addu       $v0, $v1, $v0
/* 71B2D78 8007B048 3BEC0108 */  j          .Llevel_33_8007B0EC
/* 71B2D7C 8007B04C 040042AE */   sw        $v0, 0x4($s2)
.Llevel_33_8007B050:
/* 71B2D80 8007B050 10BC000C */  jal        func_8002F040
/* 71B2D84 8007B054 05000424 */   addiu     $a0, $zero, 0x5
/* 71B2D88 8007B058 21884000 */  addu       $s1, $v0, $zero
/* 71B2D8C 8007B05C 1C002012 */  beqz       $s1, .Llevel_33_8007B0D0
/* 71B2D90 8007B060 00000000 */   nop
/* 71B2D94 8007B064 9171010C */  jal        rand
/* 71B2D98 8007B068 00000000 */   nop
/* 71B2D9C 8007B06C 21202002 */  addu       $a0, $s1, $zero
/* 71B2DA0 8007B070 0C006526 */  addiu      $a1, $s3, 0xC
/* 71B2DA4 8007B074 5E3C010C */  jal        func_8004F178
/* 71B2DA8 8007B078 21804000 */   addu      $s0, $v0, $zero
/* 71B2DAC 8007B07C FF001032 */  andi       $s0, $s0, 0xFF
/* 71B2DB0 8007B080 40801000 */  sll        $s0, $s0, 1
/* 71B2DB4 8007B084 0680013C */  lui        $at, %hi(D_80065920)
/* 71B2DB8 8007B088 21083000 */  addu       $at, $at, $s0
/* 71B2DBC 8007B08C 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 71B2DC0 8007B090 0000238E */  lw         $v1, 0x0($s1)
/* 71B2DC4 8007B094 00140200 */  sll        $v0, $v0, 16
/* 71B2DC8 8007B098 03150200 */  sra        $v0, $v0, 20
/* 71B2DCC 8007B09C 21186200 */  addu       $v1, $v1, $v0
/* 71B2DD0 8007B0A0 0800228E */  lw         $v0, 0x8($s1)
/* 71B2DD4 8007B0A4 000023AE */  sw         $v1, 0x0($s1)
/* 71B2DD8 8007B0A8 0680013C */  lui        $at, %hi(D_800658A0)
/* 71B2DDC 8007B0AC 21083000 */  addu       $at, $at, $s0
/* 71B2DE0 8007B0B0 A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 71B2DE4 8007B0B4 80014224 */  addiu      $v0, $v0, 0x180
/* 71B2DE8 8007B0B8 001C0300 */  sll        $v1, $v1, 16
/* 71B2DEC 8007B0BC 080022AE */  sw         $v0, 0x8($s1)
/* 71B2DF0 8007B0C0 0400228E */  lw         $v0, 0x4($s1)
/* 71B2DF4 8007B0C4 031D0300 */  sra        $v1, $v1, 20
/* 71B2DF8 8007B0C8 21104300 */  addu       $v0, $v0, $v1
/* 71B2DFC 8007B0CC 040022AE */  sw         $v0, 0x4($s1)
.Llevel_33_8007B0D0:
/* 71B2E00 8007B0D0 9171010C */  jal        rand
/* 71B2E04 8007B0D4 00000000 */   nop
/* 71B2E08 8007B0D8 0400438E */  lw         $v1, 0x4($s2)
/* 71B2E0C 8007B0DC FF004230 */  andi       $v0, $v0, 0xFF
/* 71B2E10 8007B0E0 80FF6324 */  addiu      $v1, $v1, -0x80
/* 71B2E14 8007B0E4 23186200 */  subu       $v1, $v1, $v0
/* 71B2E18 8007B0E8 040043AE */  sw         $v1, 0x4($s2)
.Llevel_33_8007B0EC:
/* 71B2E1C 8007B0EC 1800628E */  lw         $v0, 0x18($s3)
/* 71B2E20 8007B0F0 00000000 */  nop
/* 71B2E24 8007B0F4 7A004010 */  beqz       $v0, .Llevel_33_8007B2E0
/* 71B2E28 8007B0F8 00000000 */   nop
/* 71B2E2C 8007B0FC 0000428E */  lw         $v0, 0x0($s2)
/* 71B2E30 8007B100 00000000 */  nop
/* 71B2E34 8007B104 05004010 */  beqz       $v0, .Llevel_33_8007B11C
/* 71B2E38 8007B108 00000000 */   nop
/* 71B2E3C 8007B10C 480040A0 */  sb         $zero, 0x48($v0)
/* 71B2E40 8007B110 0000438E */  lw         $v1, 0x0($s2)
/* 71B2E44 8007B114 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 71B2E48 8007B118 1C0062AC */  sw         $v0, 0x1C($v1)
.Llevel_33_8007B11C:
/* 71B2E4C 8007B11C 70000224 */  addiu      $v0, $zero, 0x70
/* 71B2E50 8007B120 490062A2 */  sb         $v0, 0x49($s3)
/* 71B2E54 8007B124 21880000 */  addu       $s1, $zero, $zero
/* 71B2E58 8007B128 5555123C */  lui        $s2, (0x55555556 >> 16)
/* 71B2E5C 8007B12C 56555236 */  ori        $s2, $s2, (0x55555556 & 0xFFFF)
.Llevel_33_8007B130:
/* 71B2E60 8007B130 0780023C */  lui        $v0, %hi(D_8006C578)
/* 71B2E64 8007B134 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 71B2E68 8007B138 0780033C */  lui        $v1, %hi(D_8006C574)
/* 71B2E6C 8007B13C 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 71B2E70 8007B140 00000000 */  nop
/* 71B2E74 8007B144 23104300 */  subu       $v0, $v0, $v1
/* 71B2E78 8007B148 15004228 */  slti       $v0, $v0, 0x15
/* 71B2E7C 8007B14C 14004014 */  bnez       $v0, .Llevel_33_8007B1A0
/* 71B2E80 8007B150 38020424 */   addiu     $a0, $zero, 0x238
/* 71B2E84 8007B154 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 71B2E88 8007B158 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 71B2E8C 8007B15C 00000000 */  nop
/* 71B2E90 8007B160 09F84000 */  jalr       $v0
/* 71B2E94 8007B164 21286002 */   addu      $a1, $s3, $zero
/* 71B2E98 8007B168 9171010C */  jal        rand
/* 71B2E9C 8007B16C 21804000 */   addu      $s0, $v0, $zero
/* 71B2EA0 8007B170 18005200 */  mult       $v0, $s2
/* 71B2EA4 8007B174 01003126 */  addiu      $s1, $s1, 0x1
/* 71B2EA8 8007B178 C3270200 */  sra        $a0, $v0, 31
/* 71B2EAC 8007B17C 10480000 */  mfhi       $t1
/* 71B2EB0 8007B180 23202401 */  subu       $a0, $t1, $a0
/* 71B2EB4 8007B184 40180400 */  sll        $v1, $a0, 1
/* 71B2EB8 8007B188 21186400 */  addu       $v1, $v1, $a0
/* 71B2EBC 8007B18C 23104300 */  subu       $v0, $v0, $v1
/* 71B2EC0 8007B190 3C0002A2 */  sb         $v0, 0x3C($s0)
/* 71B2EC4 8007B194 1000222A */  slti       $v0, $s1, 0x10
/* 71B2EC8 8007B198 E5FF4014 */  bnez       $v0, .Llevel_33_8007B130
/* 71B2ECC 8007B19C 00000000 */   nop
.Llevel_33_8007B1A0:
/* 71B2ED0 8007B1A0 21880000 */  addu       $s1, $zero, $zero
.Llevel_33_8007B1A4:
/* 71B2ED4 8007B1A4 1000A427 */  addiu      $a0, $sp, 0x10
/* 71B2ED8 8007B1A8 5E3C010C */  jal        func_8004F178
/* 71B2EDC 8007B1AC 0C006526 */   addiu     $a1, $s3, 0xC
/* 71B2EE0 8007B1B0 9171010C */  jal        rand
/* 71B2EE4 8007B1B4 01003126 */   addiu     $s1, $s1, 0x1
/* 71B2EE8 8007B1B8 1000A38F */  lw         $v1, 0x10($sp)
/* 71B2EEC 8007B1BC FF014230 */  andi       $v0, $v0, 0x1FF
/* 71B2EF0 8007B1C0 00016324 */  addiu      $v1, $v1, 0x100
/* 71B2EF4 8007B1C4 23186200 */  subu       $v1, $v1, $v0
/* 71B2EF8 8007B1C8 9171010C */  jal        rand
/* 71B2EFC 8007B1CC 1000A3AF */   sw        $v1, 0x10($sp)
/* 71B2F00 8007B1D0 1400A38F */  lw         $v1, 0x14($sp)
/* 71B2F04 8007B1D4 FF014230 */  andi       $v0, $v0, 0x1FF
/* 71B2F08 8007B1D8 00016324 */  addiu      $v1, $v1, 0x100
/* 71B2F0C 8007B1DC 23186200 */  subu       $v1, $v1, $v0
/* 71B2F10 8007B1E0 9171010C */  jal        rand
/* 71B2F14 8007B1E4 1400A3AF */   sw        $v1, 0x14($sp)
/* 71B2F18 8007B1E8 01000424 */  addiu      $a0, $zero, 0x1
/* 71B2F1C 8007B1EC 02000524 */  addiu      $a1, $zero, 0x2
/* 71B2F20 8007B1F0 1000A627 */  addiu      $a2, $sp, 0x10
/* 71B2F24 8007B1F4 21380000 */  addu       $a3, $zero, $zero
/* 71B2F28 8007B1F8 FF014230 */  andi       $v0, $v0, 0x1FF
/* 71B2F2C 8007B1FC 1800A38F */  lw         $v1, 0x18($sp)
/* 71B2F30 8007B200 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 71B2F34 8007B204 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 71B2F38 8007B208 21186200 */  addu       $v1, $v1, $v0
/* 71B2F3C 8007B20C 09F80001 */  jalr       $t0
/* 71B2F40 8007B210 1800A3AF */   sw        $v1, 0x18($sp)
/* 71B2F44 8007B214 04000424 */  addiu      $a0, $zero, 0x4
/* 71B2F48 8007B218 46000524 */  addiu      $a1, $zero, 0x46
/* 71B2F4C 8007B21C 1000A627 */  addiu      $a2, $sp, 0x10
/* 71B2F50 8007B220 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 71B2F54 8007B224 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 71B2F58 8007B228 00000000 */  nop
/* 71B2F5C 8007B22C 09F84000 */  jalr       $v0
/* 71B2F60 8007B230 18000724 */   addiu     $a3, $zero, 0x18
/* 71B2F64 8007B234 0400222A */  slti       $v0, $s1, 0x4
/* 71B2F68 8007B238 DAFF4014 */  bnez       $v0, .Llevel_33_8007B1A4
/* 71B2F6C 8007B23C 21206002 */   addu      $a0, $s3, $zero
/* 71B2F70 8007B240 21280000 */  addu       $a1, $zero, $zero
/* 71B2F74 8007B244 AFEE000C */  jal        func_8003BABC
/* 71B2F78 8007B248 21300000 */   addu      $a2, $zero, $zero
/* 71B2F7C 8007B24C 80EE000C */  jal        func_8003BA00
/* 71B2F80 8007B250 21206002 */   addu      $a0, $s3, $zero
/* 71B2F84 8007B254 0780023C */  lui        $v0, %hi(D_8006C550)
/* 71B2F88 8007B258 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 71B2F8C 8007B25C 21206002 */  addu       $a0, $s3, $zero
/* 71B2F90 8007B260 23288200 */  subu       $a1, $a0, $v0
/* 71B2F94 8007B264 40110500 */  sll        $v0, $a1, 5
/* 71B2F98 8007B268 23104500 */  subu       $v0, $v0, $a1
/* 71B2F9C 8007B26C 40110200 */  sll        $v0, $v0, 5
/* 71B2FA0 8007B270 21104500 */  addu       $v0, $v0, $a1
/* 71B2FA4 8007B274 C0180200 */  sll        $v1, $v0, 3
/* 71B2FA8 8007B278 21104300 */  addu       $v0, $v0, $v1
/* 71B2FAC 8007B27C C01B0200 */  sll        $v1, $v0, 15
/* 71B2FB0 8007B280 23186200 */  subu       $v1, $v1, $v0
/* 71B2FB4 8007B284 80180300 */  sll        $v1, $v1, 2
/* 71B2FB8 8007B288 21186500 */  addu       $v1, $v1, $a1
/* 71B2FBC 8007B28C 23180300 */  negu       $v1, $v1
/* 71B2FC0 8007B290 C3180300 */  sra        $v1, $v1, 3
/* 71B2FC4 8007B294 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 71B2FC8 8007B298 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 71B2FCC 8007B29C 0780053C */  lui        $a1, %hi(D_80071AB0)
/* 71B2FD0 8007B2A0 B01AA524 */  addiu      $a1, $a1, %lo(D_80071AB0)
/* 71B2FD4 8007B2A4 21186200 */  addu       $v1, $v1, $v0
/* 71B2FD8 8007B2A8 43310300 */  sra        $a2, $v1, 5
/* 71B2FDC 8007B2AC 80300600 */  sll        $a2, $a2, 2
/* 71B2FE0 8007B2B0 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 71B2FE4 8007B2B4 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 71B2FE8 8007B2B8 1F006330 */  andi       $v1, $v1, 0x1F
/* 71B2FEC 8007B2BC 40110200 */  sll        $v0, $v0, 5
/* 71B2FF0 8007B2C0 21104500 */  addu       $v0, $v0, $a1
/* 71B2FF4 8007B2C4 2130C200 */  addu       $a2, $a2, $v0
/* 71B2FF8 8007B2C8 01000224 */  addiu      $v0, $zero, 0x1
/* 71B2FFC 8007B2CC 0000C58C */  lw         $a1, 0x0($a2)
/* 71B3000 8007B2D0 04106200 */  sllv       $v0, $v0, $v1
/* 71B3004 8007B2D4 2528A200 */  or         $a1, $a1, $v0
/* 71B3008 8007B2D8 C656010C */  jal        func_80055B18
/* 71B300C 8007B2DC 0000C5AC */   sw        $a1, 0x0($a2)
.Llevel_33_8007B2E0:
/* 71B3010 8007B2E0 3000BF8F */  lw         $ra, 0x30($sp)
/* 71B3014 8007B2E4 2C00B38F */  lw         $s3, 0x2C($sp)
/* 71B3018 8007B2E8 2800B28F */  lw         $s2, 0x28($sp)
/* 71B301C 8007B2EC 2400B18F */  lw         $s1, 0x24($sp)
/* 71B3020 8007B2F0 2000B08F */  lw         $s0, 0x20($sp)
/* 71B3024 8007B2F4 3800BD27 */  addiu      $sp, $sp, 0x38
/* 71B3028 8007B2F8 0800E003 */  jr         $ra
/* 71B302C 8007B2FC 00000000 */   nop
.size func_level_33_8007AF98, . - func_level_33_8007AF98
