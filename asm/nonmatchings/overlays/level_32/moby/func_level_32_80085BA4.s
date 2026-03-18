.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_80085BA4
/* 6DED0D4 80085BA4 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 6DED0D8 80085BA8 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 6DED0DC 80085BAC 21888000 */  addu       $s1, $a0, $zero
/* 6DED0E0 80085BB0 3000BFAF */  sw         $ra, 0x30($sp)
/* 6DED0E4 80085BB4 2800B0AF */  sw         $s0, 0x28($sp)
/* 6DED0E8 80085BB8 0000308E */  lw         $s0, 0x0($s1)
/* 6DED0EC 80085BBC 00000000 */  nop
/* 6DED0F0 80085BC0 0E000286 */  lh         $v0, 0xE($s0)
/* 6DED0F4 80085BC4 00000000 */  nop
/* 6DED0F8 80085BC8 B7004010 */  beqz       $v0, .Llevel_32_80085EA8
/* 6DED0FC 80085BCC 21184000 */   addu      $v1, $v0, $zero
/* 6DED100 80085BD0 02004228 */  slti       $v0, $v0, 0x2
/* 6DED104 80085BD4 0B004014 */  bnez       $v0, .Llevel_32_80085C04
/* 6DED108 80085BD8 00000000 */   nop
/* 6DED10C 80085BDC 0780023C */  lui        $v0, %hi(D_8006C648)
/* 6DED110 80085BE0 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 6DED114 80085BE4 00000000 */  nop
/* 6DED118 80085BE8 23106200 */  subu       $v0, $v1, $v0
/* 6DED11C 80085BEC 0E0002A6 */  sh         $v0, 0xE($s0)
/* 6DED120 80085BF0 00140200 */  sll        $v0, $v0, 16
/* 6DED124 80085BF4 0400401C */  bgtz       $v0, .Llevel_32_80085C08
/* 6DED128 80085BF8 0C000426 */   addiu     $a0, $s0, 0xC
/* 6DED12C 80085BFC 01000224 */  addiu      $v0, $zero, 0x1
/* 6DED130 80085C00 0E0002A6 */  sh         $v0, 0xE($s0)
.Llevel_32_80085C04:
/* 6DED134 80085C04 0C000426 */  addiu      $a0, $s0, 0xC
.Llevel_32_80085C08:
/* 6DED138 80085C08 69D6000C */  jal        func_800359A4
/* 6DED13C 80085C0C 02000524 */   addiu     $a1, $zero, 0x2
/* 6DED140 80085C10 0A004014 */  bnez       $v0, .Llevel_32_80085C3C
/* 6DED144 80085C14 08000424 */   addiu     $a0, $zero, 0x8
/* 6DED148 80085C18 4D002292 */  lbu        $v0, 0x4D($s1)
/* 6DED14C 80085C1C 00000000 */  nop
/* 6DED150 80085C20 11004014 */  bnez       $v0, .Llevel_32_80085C68
/* 6DED154 80085C24 0C002426 */   addiu     $a0, $s1, 0xC
/* 6DED158 80085C28 0E000386 */  lh         $v1, 0xE($s0)
/* 6DED15C 80085C2C 01000224 */  addiu      $v0, $zero, 0x1
/* 6DED160 80085C30 0D006214 */  bne        $v1, $v0, .Llevel_32_80085C68
/* 6DED164 80085C34 00000000 */   nop
/* 6DED168 80085C38 08000424 */  addiu      $a0, $zero, 0x8
.Llevel_32_80085C3C:
/* 6DED16C 80085C3C 46000524 */  addiu      $a1, $zero, 0x46
/* 6DED170 80085C40 0C002626 */  addiu      $a2, $s1, 0xC
/* 6DED174 80085C44 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DED178 80085C48 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DED17C 80085C4C 00000000 */  nop
/* 6DED180 80085C50 09F84000 */  jalr       $v0
/* 6DED184 80085C54 10000724 */   addiu     $a3, $zero, 0x10
/* 6DED188 80085C58 C656010C */  jal        func_80055B18
/* 6DED18C 80085C5C 21202002 */   addu      $a0, $s1, $zero
/* 6DED190 80085C60 AA170208 */  j          .Llevel_32_80085EA8
/* 6DED194 80085C64 00000000 */   nop
.Llevel_32_80085C68:
/* 6DED198 80085C68 6564000C */  jal        func_80019194
/* 6DED19C 80085C6C 2C010524 */   addiu     $a1, $zero, 0x12C
/* 6DED1A0 80085C70 17004010 */  beqz       $v0, .Llevel_32_80085CD0
/* 6DED1A4 80085C74 1000A427 */   addiu     $a0, $sp, 0x10
/* 6DED1A8 80085C78 00000286 */  lh         $v0, 0x0($s0)
/* 6DED1AC 80085C7C 00000000 */  nop
/* 6DED1B0 80085C80 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DED1B4 80085C84 02000286 */  lh         $v0, 0x2($s0)
/* 6DED1B8 80085C88 0780053C */  lui        $a1, %hi(D_80071918)
/* 6DED1BC 80085C8C 1819A524 */  addiu      $a1, $a1, %lo(D_80071918)
/* 6DED1C0 80085C90 1400A2AF */  sw         $v0, 0x14($sp)
/* 6DED1C4 80085C94 04000286 */  lh         $v0, 0x4($s0)
/* 6DED1C8 80085C98 21308000 */  addu       $a2, $a0, $zero
/* 6DED1CC 80085C9C DD3B010C */  jal        func_8004EF74
/* 6DED1D0 80085CA0 1800A2AF */   sw        $v0, 0x18($sp)
/* 6DED1D4 80085CA4 0A004010 */  beqz       $v0, .Llevel_32_80085CD0
/* 6DED1D8 80085CA8 00000000 */   nop
/* 6DED1DC 80085CAC 1000A28F */  lw         $v0, 0x10($sp)
/* 6DED1E0 80085CB0 00000000 */  nop
/* 6DED1E4 80085CB4 000002A6 */  sh         $v0, 0x0($s0)
/* 6DED1E8 80085CB8 1400A28F */  lw         $v0, 0x14($sp)
/* 6DED1EC 80085CBC 00000000 */  nop
/* 6DED1F0 80085CC0 020002A6 */  sh         $v0, 0x2($s0)
/* 6DED1F4 80085CC4 1800A28F */  lw         $v0, 0x18($sp)
/* 6DED1F8 80085CC8 00000000 */  nop
/* 6DED1FC 80085CCC 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_32_80085CD0:
/* 6DED200 80085CD0 00000386 */  lh         $v1, 0x0($s0)
/* 6DED204 80085CD4 0C00228E */  lw         $v0, 0xC($s1)
/* 6DED208 80085CD8 00000000 */  nop
/* 6DED20C 80085CDC 21104300 */  addu       $v0, $v0, $v1
/* 6DED210 80085CE0 0C0022AE */  sw         $v0, 0xC($s1)
/* 6DED214 80085CE4 02000386 */  lh         $v1, 0x2($s0)
/* 6DED218 80085CE8 1000228E */  lw         $v0, 0x10($s1)
/* 6DED21C 80085CEC 00000000 */  nop
/* 6DED220 80085CF0 21104300 */  addu       $v0, $v0, $v1
/* 6DED224 80085CF4 100022AE */  sw         $v0, 0x10($s1)
/* 6DED228 80085CF8 12000386 */  lh         $v1, 0x12($s0)
/* 6DED22C 80085CFC 03000224 */  addiu      $v0, $zero, 0x3
/* 6DED230 80085D00 04006214 */  bne        $v1, $v0, .Llevel_32_80085D14
/* 6DED234 80085D04 00000000 */   nop
/* 6DED238 80085D08 04000296 */  lhu        $v0, 0x4($s0)
/* 6DED23C 80085D0C 48170208 */  j          .Llevel_32_80085D20
/* 6DED240 80085D10 FBFF4224 */   addiu     $v0, $v0, -0x5
.Llevel_32_80085D14:
/* 6DED244 80085D14 04000296 */  lhu        $v0, 0x4($s0)
/* 6DED248 80085D18 00000000 */  nop
/* 6DED24C 80085D1C F6FF4224 */  addiu      $v0, $v0, -0xA
.Llevel_32_80085D20:
/* 6DED250 80085D20 040002A6 */  sh         $v0, 0x4($s0)
/* 6DED254 80085D24 04000286 */  lh         $v0, 0x4($s0)
/* 6DED258 80085D28 00000000 */  nop
/* 6DED25C 80085D2C 38FF4228 */  slti       $v0, $v0, -0xC8
/* 6DED260 80085D30 02004010 */  beqz       $v0, .Llevel_32_80085D3C
/* 6DED264 80085D34 38FF0224 */   addiu     $v0, $zero, -0xC8
/* 6DED268 80085D38 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_32_80085D3C:
/* 6DED26C 80085D3C 04000386 */  lh         $v1, 0x4($s0)
/* 6DED270 80085D40 1400228E */  lw         $v0, 0x14($s1)
/* 6DED274 80085D44 00000000 */  nop
/* 6DED278 80085D48 21104300 */  addu       $v0, $v0, $v1
/* 6DED27C 80085D4C 140022AE */  sw         $v0, 0x14($s1)
/* 6DED280 80085D50 44002292 */  lbu        $v0, 0x44($s1)
/* 6DED284 80085D54 06000392 */  lbu        $v1, 0x6($s0)
/* 6DED288 80085D58 00000000 */  nop
/* 6DED28C 80085D5C 21104300 */  addu       $v0, $v0, $v1
/* 6DED290 80085D60 440022A2 */  sb         $v0, 0x44($s1)
/* 6DED294 80085D64 45002292 */  lbu        $v0, 0x45($s1)
/* 6DED298 80085D68 08000392 */  lbu        $v1, 0x8($s0)
/* 6DED29C 80085D6C 00000000 */  nop
/* 6DED2A0 80085D70 21104300 */  addu       $v0, $v0, $v1
/* 6DED2A4 80085D74 450022A2 */  sb         $v0, 0x45($s1)
/* 6DED2A8 80085D78 46002292 */  lbu        $v0, 0x46($s1)
/* 6DED2AC 80085D7C 0A000392 */  lbu        $v1, 0xA($s0)
/* 6DED2B0 80085D80 00000000 */  nop
/* 6DED2B4 80085D84 21104300 */  addu       $v0, $v0, $v1
/* 6DED2B8 80085D88 460022A2 */  sb         $v0, 0x46($s1)
/* 6DED2BC 80085D8C 12000386 */  lh         $v1, 0x12($s0)
/* 6DED2C0 80085D90 02000224 */  addiu      $v0, $zero, 0x2
/* 6DED2C4 80085D94 44006210 */  beq        $v1, $v0, .Llevel_32_80085EA8
/* 6DED2C8 80085D98 6666023C */   lui       $v0, (0x66666667 >> 16)
/* 6DED2CC 80085D9C 0780043C */  lui        $a0, %hi(D_8006C640)
/* 6DED2D0 80085DA0 40C6848C */  lw         $a0, %lo(D_8006C640)($a0)
/* 6DED2D4 80085DA4 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
/* 6DED2D8 80085DA8 18008200 */  mult       $a0, $v0
/* 6DED2DC 80085DAC C3170400 */  sra        $v0, $a0, 31
/* 6DED2E0 80085DB0 10480000 */  mfhi       $t1
/* 6DED2E4 80085DB4 43180900 */  sra        $v1, $t1, 1
/* 6DED2E8 80085DB8 23186200 */  subu       $v1, $v1, $v0
/* 6DED2EC 80085DBC 80100300 */  sll        $v0, $v1, 2
/* 6DED2F0 80085DC0 21104300 */  addu       $v0, $v0, $v1
/* 6DED2F4 80085DC4 38008214 */  bne        $a0, $v0, .Llevel_32_80085EA8
/* 6DED2F8 80085DC8 00000000 */   nop
/* 6DED2FC 80085DCC 9171010C */  jal        rand
/* 6DED300 80085DD0 00000000 */   nop
/* 6DED304 80085DD4 03004230 */  andi       $v0, $v0, 0x3
/* 6DED308 80085DD8 9171010C */  jal        rand
/* 6DED30C 80085DDC 1000A2AF */   sw        $v0, 0x10($sp)
/* 6DED310 80085DE0 03004230 */  andi       $v0, $v0, 0x3
/* 6DED314 80085DE4 1400A2AF */  sw         $v0, 0x14($sp)
/* 6DED318 80085DE8 14000224 */  addiu      $v0, $zero, 0x14
/* 6DED31C 80085DEC 1800A2AF */  sw         $v0, 0x18($sp)
/* 6DED320 80085DF0 12000386 */  lh         $v1, 0x12($s0)
/* 6DED324 80085DF4 01000224 */  addiu      $v0, $zero, 0x1
/* 6DED328 80085DF8 03006214 */  bne        $v1, $v0, .Llevel_32_80085E08
/* 6DED32C 80085DFC 01000424 */   addiu     $a0, $zero, 0x1
/* 6DED330 80085E00 86170208 */  j          .Llevel_32_80085E18
/* 6DED334 80085E04 21280000 */   addu      $a1, $zero, $zero
.Llevel_32_80085E08:
/* 6DED338 80085E08 0B006014 */  bnez       $v1, .Llevel_32_80085E38
/* 6DED33C 80085E0C 03000224 */   addiu     $v0, $zero, 0x3
/* 6DED340 80085E10 01000424 */  addiu      $a0, $zero, 0x1
/* 6DED344 80085E14 01000524 */  addiu      $a1, $zero, 0x1
.Llevel_32_80085E18:
/* 6DED348 80085E18 0C002626 */  addiu      $a2, $s1, 0xC
/* 6DED34C 80085E1C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DED350 80085E20 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DED354 80085E24 00000000 */  nop
/* 6DED358 80085E28 09F84000 */  jalr       $v0
/* 6DED35C 80085E2C 1000A727 */   addiu     $a3, $sp, 0x10
/* 6DED360 80085E30 AA170208 */  j          .Llevel_32_80085EA8
/* 6DED364 80085E34 00000000 */   nop
.Llevel_32_80085E38:
/* 6DED368 80085E38 1B006214 */  bne        $v1, $v0, .Llevel_32_80085EA8
/* 6DED36C 80085E3C 0A000424 */   addiu     $a0, $zero, 0xA
/* 6DED370 80085E40 00000296 */  lhu        $v0, 0x0($s0)
/* 6DED374 80085E44 00000000 */  nop
/* 6DED378 80085E48 00140200 */  sll        $v0, $v0, 16
/* 6DED37C 80085E4C 83140200 */  sra        $v0, $v0, 18
/* 6DED380 80085E50 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DED384 80085E54 00000296 */  lhu        $v0, 0x0($s0)
/* 6DED388 80085E58 00000000 */  nop
/* 6DED38C 80085E5C 00140200 */  sll        $v0, $v0, 16
/* 6DED390 80085E60 83140200 */  sra        $v0, $v0, 18
/* 6DED394 80085E64 1400A2AF */  sw         $v0, 0x14($sp)
/* 6DED398 80085E68 04000296 */  lhu        $v0, 0x4($s0)
/* 6DED39C 80085E6C 14000524 */  addiu      $a1, $zero, 0x14
/* 6DED3A0 80085E70 00140200 */  sll        $v0, $v0, 16
/* 6DED3A4 80085E74 83140200 */  sra        $v0, $v0, 18
/* 6DED3A8 80085E78 DBD8000C */  jal        func_8003636C
/* 6DED3AC 80085E7C 1800A2AF */   sw        $v0, 0x18($sp)
/* 6DED3B0 80085E80 01000424 */  addiu      $a0, $zero, 0x1
/* 6DED3B4 80085E84 27000524 */  addiu      $a1, $zero, 0x27
/* 6DED3B8 80085E88 0C002626 */  addiu      $a2, $s1, 0xC
/* 6DED3BC 80085E8C 1000A727 */  addiu      $a3, $sp, 0x10
/* 6DED3C0 80085E90 1800A38F */  lw         $v1, 0x18($sp)
/* 6DED3C4 80085E94 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 6DED3C8 80085E98 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 6DED3CC 80085E9C 21186200 */  addu       $v1, $v1, $v0
/* 6DED3D0 80085EA0 09F80001 */  jalr       $t0
/* 6DED3D4 80085EA4 1800A3AF */   sw        $v1, 0x18($sp)
.Llevel_32_80085EA8:
/* 6DED3D8 80085EA8 3000BF8F */  lw         $ra, 0x30($sp)
/* 6DED3DC 80085EAC 2C00B18F */  lw         $s1, 0x2C($sp)
/* 6DED3E0 80085EB0 2800B08F */  lw         $s0, 0x28($sp)
/* 6DED3E4 80085EB4 3800BD27 */  addiu      $sp, $sp, 0x38
/* 6DED3E8 80085EB8 0800E003 */  jr         $ra
/* 6DED3EC 80085EBC 00000000 */   nop
.size func_level_32_80085BA4, . - func_level_32_80085BA4
