.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_83_level_23
/* 5AA217C 80085C4C C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 5AA2180 80085C50 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 5AA2184 80085C54 21888000 */  addu       $s1, $a0, $zero
/* 5AA2188 80085C58 3800BFAF */  sw         $ra, 0x38($sp)
/* 5AA218C 80085C5C 3400B3AF */  sw         $s3, 0x34($sp)
/* 5AA2190 80085C60 3000B2AF */  sw         $s2, 0x30($sp)
/* 5AA2194 80085C64 2800B0AF */  sw         $s0, 0x28($sp)
/* 5AA2198 80085C68 48002392 */  lbu        $v1, 0x48($s1)
/* 5AA219C 80085C6C 0000338E */  lw         $s3, 0x0($s1)
/* 5AA21A0 80085C70 02006228 */  slti       $v0, $v1, 0x2
/* 5AA21A4 80085C74 96004010 */  beqz       $v0, .Llevel_23_80085ED0
/* 5AA21A8 80085C78 00000000 */   nop
/* 5AA21AC 80085C7C 94006004 */  bltz       $v1, .Llevel_23_80085ED0
/* 5AA21B0 80085C80 02000224 */   addiu     $v0, $zero, 0x2
/* 5AA21B4 80085C84 1800A0AF */  sw         $zero, 0x18($sp)
/* 5AA21B8 80085C88 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 5AA21BC 80085C8C 2000A2AF */  sw         $v0, 0x20($sp)
/* 5AA21C0 80085C90 48002392 */  lbu        $v1, 0x48($s1)
/* 5AA21C4 80085C94 01000224 */  addiu      $v0, $zero, 0x1
/* 5AA21C8 80085C98 02006214 */  bne        $v1, $v0, .Llevel_23_80085CA4
/* 5AA21CC 80085C9C 01000424 */   addiu     $a0, $zero, 0x1
/* 5AA21D0 80085CA0 2000A3AF */  sw         $v1, 0x20($sp)
.Llevel_23_80085CA4:
/* 5AA21D4 80085CA4 3C000524 */  addiu      $a1, $zero, 0x3C
/* 5AA21D8 80085CA8 0C003226 */  addiu      $s2, $s1, 0xC
/* 5AA21DC 80085CAC 21304002 */  addu       $a2, $s2, $zero
/* 5AA21E0 80085CB0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 5AA21E4 80085CB4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 5AA21E8 80085CB8 00000000 */  nop
/* 5AA21EC 80085CBC 09F84000 */  jalr       $v0
/* 5AA21F0 80085CC0 1800A727 */   addiu     $a3, $sp, 0x18
/* 5AA21F4 80085CC4 21184000 */  addu       $v1, $v0, $zero
/* 5AA21F8 80085CC8 02006010 */  beqz       $v1, .Llevel_23_80085CD4
/* 5AA21FC 80085CCC 9B000224 */   addiu     $v0, $zero, 0x9B
/* 5AA2200 80085CD0 0A0062A0 */  sb         $v0, 0xA($v1)
.Llevel_23_80085CD4:
/* 5AA2204 80085CD4 1800A427 */  addiu      $a0, $sp, 0x18
/* 5AA2208 80085CD8 5E3C010C */  jal        func_8004F178
/* 5AA220C 80085CDC 21284002 */   addu      $a1, $s2, $zero
/* 5AA2210 80085CE0 21202002 */  addu       $a0, $s1, $zero
/* 5AA2214 80085CE4 2C010524 */  addiu      $a1, $zero, 0x12C
/* 5AA2218 80085CE8 21300000 */  addu       $a2, $zero, $zero
/* 5AA221C 80085CEC 21380000 */  addu       $a3, $zero, $zero
/* 5AA2220 80085CF0 00040224 */  addiu      $v0, $zero, 0x400
/* 5AA2224 80085CF4 77D7000C */  jal        func_80035DDC
/* 5AA2228 80085CF8 1000A2AF */   sw        $v0, 0x10($sp)
/* 5AA222C 80085CFC 1400228E */  lw         $v0, 0x14($s1)
/* 5AA2230 80085D00 0800638E */  lw         $v1, 0x8($s3)
/* 5AA2234 80085D04 21800000 */  addu       $s0, $zero, $zero
/* 5AA2238 80085D08 21104300 */  addu       $v0, $v0, $v1
/* 5AA223C 80085D0C 140022AE */  sw         $v0, 0x14($s1)
/* 5AA2240 80085D10 0800628E */  lw         $v0, 0x8($s3)
/* 5AA2244 80085D14 0000638E */  lw         $v1, 0x0($s3)
/* 5AA2248 80085D18 F4FF4224 */  addiu      $v0, $v0, -0xC
/* 5AA224C 80085D1C FFFF6324 */  addiu      $v1, $v1, -0x1
/* 5AA2250 80085D20 080062AE */  sw         $v0, 0x8($s3)
/* 5AA2254 80085D24 14006018 */  blez       $v1, .Llevel_23_80085D78
/* 5AA2258 80085D28 000063AE */   sw        $v1, 0x0($s3)
/* 5AA225C 80085D2C 48002292 */  lbu        $v0, 0x48($s1)
/* 5AA2260 80085D30 00000000 */  nop
/* 5AA2264 80085D34 07004014 */  bnez       $v0, .Llevel_23_80085D54
/* 5AA2268 80085D38 21204002 */   addu      $a0, $s2, $zero
/* 5AA226C 80085D3C 00020524 */  addiu      $a1, $zero, 0x200
/* 5AA2270 80085D40 A270000C */  jal        func_8001C288
/* 5AA2274 80085D44 07000624 */   addiu     $a2, $zero, 0x7
/* 5AA2278 80085D48 0C004014 */  bnez       $v0, .Llevel_23_80085D7C
/* 5AA227C 80085D4C 21202002 */   addu      $a0, $s1, $zero
/* 5AA2280 80085D50 21204002 */  addu       $a0, $s2, $zero
.Llevel_23_80085D54:
/* 5AA2284 80085D54 2C010524 */  addiu      $a1, $zero, 0x12C
/* 5AA2288 80085D58 01000624 */  addiu      $a2, $zero, 0x1
/* 5AA228C 80085D5C 21380000 */  addu       $a3, $zero, $zero
/* 5AA2290 80085D60 1000A0AF */  sw         $zero, 0x10($sp)
/* 5AA2294 80085D64 4E64000C */  jal        func_80019138
/* 5AA2298 80085D68 1400A0AF */   sw        $zero, 0x14($sp)
/* 5AA229C 80085D6C 21804000 */  addu       $s0, $v0, $zero
/* 5AA22A0 80085D70 4E000012 */  beqz       $s0, .Llevel_23_80085EAC
/* 5AA22A4 80085D74 1800A427 */   addiu     $a0, $sp, 0x18
.Llevel_23_80085D78:
/* 5AA22A8 80085D78 21202002 */  addu       $a0, $s1, $zero
.Llevel_23_80085D7C:
/* 5AA22AC 80085D7C 21280000 */  addu       $a1, $zero, $zero
/* 5AA22B0 80085D80 AFEE000C */  jal        func_8003BABC
/* 5AA22B4 80085D84 21300000 */   addu      $a2, $zero, $zero
/* 5AA22B8 80085D88 48002392 */  lbu        $v1, 0x48($s1)
/* 5AA22BC 80085D8C 01000224 */  addiu      $v0, $zero, 0x1
/* 5AA22C0 80085D90 2A006214 */  bne        $v1, $v0, .Llevel_23_80085E3C
/* 5AA22C4 80085D94 0C002426 */   addiu     $a0, $s1, 0xC
/* 5AA22C8 80085D98 00080524 */  addiu      $a1, $zero, 0x800
/* 5AA22CC 80085D9C 01000624 */  addiu      $a2, $zero, 0x1
/* 5AA22D0 80085DA0 C468000C */  jal        func_8001A310
/* 5AA22D4 80085DA4 21380000 */   addu      $a3, $zero, $zero
/* 5AA22D8 80085DA8 21904000 */  addu       $s2, $v0, $zero
/* 5AA22DC 80085DAC 3B004012 */  beqz       $s2, .Llevel_23_80085E9C
/* 5AA22E0 80085DB0 94010424 */   addiu     $a0, $zero, 0x194
/* 5AA22E4 80085DB4 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5AA22E8 80085DB8 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5AA22EC 80085DBC 00000000 */  nop
/* 5AA22F0 80085DC0 09F84000 */  jalr       $v0
/* 5AA22F4 80085DC4 21282002 */   addu      $a1, $s1, $zero
/* 5AA22F8 80085DC8 21804000 */  addu       $s0, $v0, $zero
/* 5AA22FC 80085DCC 33000012 */  beqz       $s0, .Llevel_23_80085E9C
/* 5AA2300 80085DD0 21200002 */   addu      $a0, $s0, $zero
/* 5AA2304 80085DD4 04000524 */  addiu      $a1, $zero, 0x4
/* 5AA2308 80085DD8 20000224 */  addiu      $v0, $zero, 0x20
/* 5AA230C 80085DDC 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 5AA2310 80085DE0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 5AA2314 80085DE4 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 5AA2318 80085DE8 140012AE */  sw         $s2, 0x14($s0)
/* 5AA231C 80085DEC 46002392 */  lbu        $v1, 0x46($s1)
/* 5AA2320 80085DF0 0000128E */  lw         $s2, 0x0($s0)
/* 5AA2324 80085DF4 04000224 */  addiu      $v0, $zero, 0x4
/* 5AA2328 80085DF8 480002A2 */  sb         $v0, 0x48($s0)
/* 5AA232C 80085DFC D0D3000C */  jal        func_80034F40
/* 5AA2330 80085E00 460003A2 */   sb        $v1, 0x46($s0)
/* 5AA2334 80085E04 60000224 */  addiu      $v0, $zero, 0x60
/* 5AA2338 80085E08 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 5AA233C 80085E0C 1400628E */  lw         $v0, 0x14($s3)
/* 5AA2340 80085E10 00000000 */  nop
/* 5AA2344 80085E14 21004010 */  beqz       $v0, .Llevel_23_80085E9C
/* 5AA2348 80085E18 00000000 */   nop
/* 5AA234C 80085E1C 0000428C */  lw         $v0, 0x0($v0)
/* 5AA2350 80085E20 00000000 */  nop
/* 5AA2354 80085E24 1C00438C */  lw         $v1, 0x1C($v0)
/* 5AA2358 80085E28 00000000 */  nop
/* 5AA235C 80085E2C 0C0043AE */  sw         $v1, 0xC($s2)
/* 5AA2360 80085E30 2000428C */  lw         $v0, 0x20($v0)
/* 5AA2364 80085E34 A7170208 */  j          .Llevel_23_80085E9C
/* 5AA2368 80085E38 080042AE */   sw        $v0, 0x8($s2)
.Llevel_23_80085E3C:
/* 5AA236C 80085E3C 17000012 */  beqz       $s0, .Llevel_23_80085E9C
/* 5AA2370 80085E40 00080524 */   addiu     $a1, $zero, 0x800
/* 5AA2374 80085E44 01000624 */  addiu      $a2, $zero, 0x1
/* 5AA2378 80085E48 C468000C */  jal        func_8001A310
/* 5AA237C 80085E4C 21380000 */   addu      $a3, $zero, $zero
/* 5AA2380 80085E50 02004010 */  beqz       $v0, .Llevel_23_80085E5C
/* 5AA2384 80085E54 E8030424 */   addiu     $a0, $zero, 0x3E8
/* 5AA2388 80085E58 140022AE */  sw         $v0, 0x14($s1)
.Llevel_23_80085E5C:
/* 5AA238C 80085E5C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5AA2390 80085E60 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5AA2394 80085E64 00000000 */  nop
/* 5AA2398 80085E68 09F84000 */  jalr       $v0
/* 5AA239C 80085E6C 21282002 */   addu      $a1, $s1, $zero
/* 5AA23A0 80085E70 21804000 */  addu       $s0, $v0, $zero
/* 5AA23A4 80085E74 09000012 */  beqz       $s0, .Llevel_23_80085E9C
/* 5AA23A8 80085E78 01000224 */   addiu     $v0, $zero, 0x1
/* 5AA23AC 80085E7C 0000038E */  lw         $v1, 0x0($s0)
/* 5AA23B0 80085E80 480002A2 */  sb         $v0, 0x48($s0)
/* 5AA23B4 80085E84 90010224 */  addiu      $v0, $zero, 0x190
/* 5AA23B8 80085E88 020062A4 */  sh         $v0, 0x2($v1)
/* 5AA23BC 80085E8C 1E000224 */  addiu      $v0, $zero, 0x1E
/* 5AA23C0 80085E90 140062A4 */  sh         $v0, 0x14($v1)
/* 5AA23C4 80085E94 50000224 */  addiu      $v0, $zero, 0x50
/* 5AA23C8 80085E98 160062A4 */  sh         $v0, 0x16($v1)
.Llevel_23_80085E9C:
/* 5AA23CC 80085E9C C656010C */  jal        func_80055B18
/* 5AA23D0 80085EA0 21202002 */   addu      $a0, $s1, $zero
/* 5AA23D4 80085EA4 B4170208 */  j          .Llevel_23_80085ED0
/* 5AA23D8 80085EA8 00000000 */   nop
.Llevel_23_80085EAC:
/* 5AA23DC 80085EAC CD3C010C */  jal        func_8004F334
/* 5AA23E0 80085EB0 21284002 */   addu      $a1, $s2, $zero
/* 5AA23E4 80085EB4 21204000 */  addu       $a0, $v0, $zero
/* 5AA23E8 80085EB8 1400228E */  lw         $v0, 0x14($s1)
/* 5AA23EC 80085EBC 2000A58F */  lw         $a1, 0x20($sp)
/* 5AA23F0 80085EC0 21300000 */  addu       $a2, $zero, $zero
/* 5AA23F4 80085EC4 203A010C */  jal        func_8004E880
/* 5AA23F8 80085EC8 23284500 */   subu      $a1, $v0, $a1
/* 5AA23FC 80085ECC 450022A2 */  sb         $v0, 0x45($s1)
.Llevel_23_80085ED0:
/* 5AA2400 80085ED0 3800BF8F */  lw         $ra, 0x38($sp)
/* 5AA2404 80085ED4 3400B38F */  lw         $s3, 0x34($sp)
/* 5AA2408 80085ED8 3000B28F */  lw         $s2, 0x30($sp)
/* 5AA240C 80085EDC 2C00B18F */  lw         $s1, 0x2C($sp)
/* 5AA2410 80085EE0 2800B08F */  lw         $s0, 0x28($sp)
/* 5AA2414 80085EE4 4000BD27 */  addiu      $sp, $sp, 0x40
/* 5AA2418 80085EE8 0800E003 */  jr         $ra
/* 5AA241C 80085EEC 00000000 */   nop
.size MobyUpdate_83_level_23, . - MobyUpdate_83_level_23
