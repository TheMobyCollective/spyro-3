.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_601_level_28
/* 655E200 8007DCD0 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 655E204 8007DCD4 6000B2AF */  sw         $s2, 0x60($sp)
/* 655E208 8007DCD8 21908000 */  addu       $s2, $a0, $zero
/* 655E20C 8007DCDC 6800BFAF */  sw         $ra, 0x68($sp)
/* 655E210 8007DCE0 6400B3AF */  sw         $s3, 0x64($sp)
/* 655E214 8007DCE4 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 655E218 8007DCE8 5800B0AF */  sw         $s0, 0x58($sp)
/* 655E21C 8007DCEC 0C00468E */  lw         $a2, 0xC($s2)
/* 655E220 8007DCF0 0000508E */  lw         $s0, 0x0($s2)
/* 655E224 8007DCF4 20000224 */  addiu      $v0, $zero, 0x20
/* 655E228 8007DCF8 4F0042A2 */  sb         $v0, 0x4F($s2)
/* 655E22C 8007DCFC 0004C228 */  slti       $v0, $a2, 0x400
/* 655E230 8007DD00 C0004014 */  bnez       $v0, .Llevel_28_8007E004
/* 655E234 8007DD04 00000000 */   nop
/* 655E238 8007DD08 1000458E */  lw         $a1, 0x10($s2)
/* 655E23C 8007DD0C 00000000 */  nop
/* 655E240 8007DD10 0004A228 */  slti       $v0, $a1, 0x400
/* 655E244 8007DD14 BB004014 */  bnez       $v0, .Llevel_28_8007E004
/* 655E248 8007DD18 00000000 */   nop
/* 655E24C 8007DD1C 1400448E */  lw         $a0, 0x14($s2)
/* 655E250 8007DD20 00000000 */  nop
/* 655E254 8007DD24 00048228 */  slti       $v0, $a0, 0x400
/* 655E258 8007DD28 B6004014 */  bnez       $v0, .Llevel_28_8007E004
/* 655E25C 8007DD2C 0300033C */   lui       $v1, (0x3E800 >> 16)
/* 655E260 8007DD30 00E86334 */  ori        $v1, $v1, (0x3E800 & 0xFFFF)
/* 655E264 8007DD34 2A106600 */  slt        $v0, $v1, $a2
/* 655E268 8007DD38 B2004014 */  bnez       $v0, .Llevel_28_8007E004
/* 655E26C 8007DD3C 2A106500 */   slt       $v0, $v1, $a1
/* 655E270 8007DD40 B0004014 */  bnez       $v0, .Llevel_28_8007E004
/* 655E274 8007DD44 2A106400 */   slt       $v0, $v1, $a0
/* 655E278 8007DD48 AE004014 */  bnez       $v0, .Llevel_28_8007E004
/* 655E27C 8007DD4C 0EEA043C */   lui       $a0, (0xEA0EA0EB >> 16)
/* 655E280 8007DD50 0C00038E */  lw         $v1, 0xC($s0)
/* 655E284 8007DD54 EBA08434 */  ori        $a0, $a0, (0xEA0EA0EB & 0xFFFF)
/* 655E288 8007DD58 00120300 */  sll        $v0, $v1, 8
/* 655E28C 8007DD5C 23104300 */  subu       $v0, $v0, $v1
/* 655E290 8007DD60 18004400 */  mult       $v0, $a0
/* 655E294 8007DD64 10480000 */  mfhi       $t1
/* 655E298 8007DD68 21182201 */  addu       $v1, $t1, $v0
/* 655E29C 8007DD6C 43190300 */  sra        $v1, $v1, 5
/* 655E2A0 8007DD70 C3170200 */  sra        $v0, $v0, 31
/* 655E2A4 8007DD74 23386200 */  subu       $a3, $v1, $v0
/* 655E2A8 8007DD78 0001E228 */  slti       $v0, $a3, 0x100
/* 655E2AC 8007DD7C 03004014 */  bnez       $v0, .Llevel_28_8007DD8C
/* 655E2B0 8007DD80 00000000 */   nop
/* 655E2B4 8007DD84 66F70108 */  j          .Llevel_28_8007DD98
/* 655E2B8 8007DD88 FF000724 */   addiu     $a3, $zero, 0xFF
.Llevel_28_8007DD8C:
/* 655E2BC 8007DD8C 0300E104 */  bgez       $a3, .Llevel_28_8007DD9C
/* 655E2C0 8007DD90 0EEA043C */   lui       $a0, (0xEA0EA0EB >> 16)
/* 655E2C4 8007DD94 21380000 */  addu       $a3, $zero, $zero
.Llevel_28_8007DD98:
/* 655E2C8 8007DD98 0EEA043C */  lui        $a0, (0xEA0EA0EB >> 16)
.Llevel_28_8007DD9C:
/* 655E2CC 8007DD9C 0C00038E */  lw         $v1, 0xC($s0)
/* 655E2D0 8007DDA0 EBA08434 */  ori        $a0, $a0, (0xEA0EA0EB & 0xFFFF)
/* 655E2D4 8007DDA4 00110300 */  sll        $v0, $v1, 4
/* 655E2D8 8007DDA8 23104300 */  subu       $v0, $v0, $v1
/* 655E2DC 8007DDAC 18004400 */  mult       $v0, $a0
/* 655E2E0 8007DDB0 10480000 */  mfhi       $t1
/* 655E2E4 8007DDB4 21182201 */  addu       $v1, $t1, $v0
/* 655E2E8 8007DDB8 43190300 */  sra        $v1, $v1, 5
/* 655E2EC 8007DDBC C3170200 */  sra        $v0, $v0, 31
/* 655E2F0 8007DDC0 23186200 */  subu       $v1, $v1, $v0
/* 655E2F4 8007DDC4 01000424 */  addiu      $a0, $zero, 0x1
/* 655E2F8 8007DDC8 0C000524 */  addiu      $a1, $zero, 0xC
/* 655E2FC 8007DDCC 21304002 */  addu       $a2, $s2, $zero
/* 655E300 8007DDD0 3F000224 */  addiu      $v0, $zero, 0x3F
/* 655E304 8007DDD4 540047A2 */  sb         $a3, 0x54($s2)
/* 655E308 8007DDD8 550040A2 */  sb         $zero, 0x55($s2)
/* 655E30C 8007DDDC 560040A2 */  sb         $zero, 0x56($s2)
/* 655E310 8007DDE0 570042A2 */  sb         $v0, 0x57($s2)
/* 655E314 8007DDE4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 655E318 8007DDE8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 655E31C 8007DDEC 00000000 */  nop
/* 655E320 8007DDF0 09F84000 */  jalr       $v0
/* 655E324 8007DDF4 04000724 */   addiu     $a3, $zero, 0x4
/* 655E328 8007DDF8 1800A427 */  addiu      $a0, $sp, 0x18
/* 655E32C 8007DDFC 0C005126 */  addiu      $s1, $s2, 0xC
/* 655E330 8007DE00 5E3C010C */  jal        func_8004F178
/* 655E334 8007DE04 21282002 */   addu      $a1, $s1, $zero
/* 655E338 8007DE08 0C00428E */  lw         $v0, 0xC($s2)
/* 655E33C 8007DE0C 0000038E */  lw         $v1, 0x0($s0)
/* 655E340 8007DE10 00000000 */  nop
/* 655E344 8007DE14 21104300 */  addu       $v0, $v0, $v1
/* 655E348 8007DE18 0C0042AE */  sw         $v0, 0xC($s2)
/* 655E34C 8007DE1C 1000428E */  lw         $v0, 0x10($s2)
/* 655E350 8007DE20 0400038E */  lw         $v1, 0x4($s0)
/* 655E354 8007DE24 00000000 */  nop
/* 655E358 8007DE28 21104300 */  addu       $v0, $v0, $v1
/* 655E35C 8007DE2C 100042AE */  sw         $v0, 0x10($s2)
/* 655E360 8007DE30 1400428E */  lw         $v0, 0x14($s2)
/* 655E364 8007DE34 0800038E */  lw         $v1, 0x8($s0)
/* 655E368 8007DE38 48004492 */  lbu        $a0, 0x48($s2)
/* 655E36C 8007DE3C 21104300 */  addu       $v0, $v0, $v1
/* 655E370 8007DE40 6C008014 */  bnez       $a0, .Llevel_28_8007DFF4
/* 655E374 8007DE44 140042AE */   sw        $v0, 0x14($s2)
/* 655E378 8007DE48 21202002 */  addu       $a0, $s1, $zero
/* 655E37C 8007DE4C 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 655E380 8007DE50 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 655E384 8007DE54 0780053C */  lui        $a1, %hi(D_80070328)
/* 655E388 8007DE58 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 655E38C 8007DE5C 0000518C */  lw         $s1, 0x0($v0)
/* 655E390 8007DE60 CD3C010C */  jal        func_8004F334
/* 655E394 8007DE64 00000000 */   nop
/* 655E398 8007DE68 21204000 */  addu       $a0, $v0, $zero
/* 655E39C 8007DE6C 48004392 */  lbu        $v1, 0x48($s2)
/* 655E3A0 8007DE70 62000224 */  addiu      $v0, $zero, 0x62
/* 655E3A4 8007DE74 11006210 */  beq        $v1, $v0, .Llevel_28_8007DEBC
/* 655E3A8 8007DE78 00028228 */   slti      $v0, $a0, 0x200
/* 655E3AC 8007DE7C 0F004010 */  beqz       $v0, .Llevel_28_8007DEBC
/* 655E3B0 8007DE80 00000000 */   nop
/* 655E3B4 8007DE84 1C00228E */  lw         $v0, 0x1C($s1)
/* 655E3B8 8007DE88 00000000 */  nop
/* 655E3BC 8007DE8C 01004230 */  andi       $v0, $v0, 0x1
/* 655E3C0 8007DE90 08004014 */  bnez       $v0, .Llevel_28_8007DEB4
/* 655E3C4 8007DE94 62000224 */   addiu     $v0, $zero, 0x62
/* 655E3C8 8007DE98 0780023C */  lui        $v0, %hi(D_80070328 + 0x24)
/* 655E3CC 8007DE9C 4C03428C */  lw         $v0, %lo(D_80070328 + 0x24)($v0)
/* 655E3D0 8007DEA0 00000000 */  nop
/* 655E3D4 8007DEA4 01004234 */  ori        $v0, $v0, 0x1
/* 655E3D8 8007DEA8 0780013C */  lui        $at, %hi(D_80070328 + 0x24)
/* 655E3DC 8007DEAC 4C0322AC */  sw         $v0, %lo(D_80070328 + 0x24)($at)
/* 655E3E0 8007DEB0 62000224 */  addiu      $v0, $zero, 0x62
.Llevel_28_8007DEB4:
/* 655E3E4 8007DEB4 FDF70108 */  j          .Llevel_28_8007DFF4
/* 655E3E8 8007DEB8 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_28_8007DEBC:
/* 655E3EC 8007DEBC 0C000426 */  addiu      $a0, $s0, 0xC
/* 655E3F0 8007DEC0 69D6000C */  jal        func_800359A4
/* 655E3F4 8007DEC4 04000524 */   addiu     $a1, $zero, 0x4
/* 655E3F8 8007DEC8 09004014 */  bnez       $v0, .Llevel_28_8007DEF0
/* 655E3FC 8007DECC 62000224 */   addiu     $v0, $zero, 0x62
/* 655E400 8007DED0 1000B2AF */  sw         $s2, 0x10($sp)
/* 655E404 8007DED4 1800A427 */  addiu      $a0, $sp, 0x18
/* 655E408 8007DED8 0C004526 */  addiu      $a1, $s2, 0xC
/* 655E40C 8007DEDC 21300000 */  addu       $a2, $zero, $zero
/* 655E410 8007DEE0 C360000C */  jal        func_8001830C
/* 655E414 8007DEE4 21380000 */   addu      $a3, $zero, $zero
/* 655E418 8007DEE8 02004010 */  beqz       $v0, .Llevel_28_8007DEF4
/* 655E41C 8007DEEC 62000224 */   addiu     $v0, $zero, 0x62
.Llevel_28_8007DEF0:
/* 655E420 8007DEF0 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_28_8007DEF4:
/* 655E424 8007DEF4 0000048E */  lw         $a0, 0x0($s0)
/* 655E428 8007DEF8 0400058E */  lw         $a1, 0x4($s0)
/* 655E42C 8007DEFC 203A010C */  jal        func_8004E880
/* 655E430 8007DF00 21300000 */   addu      $a2, $zero, $zero
/* 655E434 8007DF04 21200000 */  addu       $a0, $zero, $zero
/* 655E438 8007DF08 0E000524 */  addiu      $a1, $zero, 0xE
/* 655E43C 8007DF0C F7D8000C */  jal        func_800363DC
/* 655E440 8007DF10 21804000 */   addu      $s0, $v0, $zero
/* 655E444 8007DF14 21800202 */  addu       $s0, $s0, $v0
/* 655E448 8007DF18 21980002 */  addu       $s3, $s0, $zero
/* 655E44C 8007DF1C 2800B127 */  addiu      $s1, $sp, 0x28
/* 655E450 8007DF20 21202002 */  addu       $a0, $s1, $zero
/* 655E454 8007DF24 5E3C010C */  jal        func_8004F178
/* 655E458 8007DF28 0C004526 */   addiu     $a1, $s2, 0xC
/* 655E45C 8007DF2C FF006332 */  andi       $v1, $s3, 0xFF
/* 655E460 8007DF30 80FF1326 */  addiu      $s3, $s0, -0x80
/* 655E464 8007DF34 40180300 */  sll        $v1, $v1, 1
/* 655E468 8007DF38 01000424 */  addiu      $a0, $zero, 0x1
/* 655E46C 8007DF3C FF006732 */  andi       $a3, $s3, 0xFF
/* 655E470 8007DF40 40380700 */  sll        $a3, $a3, 1
/* 655E474 8007DF44 0680013C */  lui        $at, %hi(D_80065920)
/* 655E478 8007DF48 21082300 */  addu       $at, $at, $v1
/* 655E47C 8007DF4C 20592584 */  lh         $a1, %lo(D_80065920)($at)
/* 655E480 8007DF50 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 655E484 8007DF54 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 655E488 8007DF58 00110500 */  sll        $v0, $a1, 4
/* 655E48C 8007DF5C 23104500 */  subu       $v0, $v0, $a1
/* 655E490 8007DF60 C3120200 */  sra        $v0, $v0, 11
/* 655E494 8007DF64 3800A2AF */  sw         $v0, 0x38($sp)
/* 655E498 8007DF68 0680013C */  lui        $at, %hi(D_800658A0)
/* 655E49C 8007DF6C 21082300 */  addu       $at, $at, $v1
/* 655E4A0 8007DF70 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 655E4A4 8007DF74 21302002 */  addu       $a2, $s1, $zero
/* 655E4A8 8007DF78 4000A0AF */  sw         $zero, 0x40($sp)
/* 655E4AC 8007DF7C 00110300 */  sll        $v0, $v1, 4
/* 655E4B0 8007DF80 23104300 */  subu       $v0, $v0, $v1
/* 655E4B4 8007DF84 C3120200 */  sra        $v0, $v0, 11
/* 655E4B8 8007DF88 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 655E4BC 8007DF8C 0680013C */  lui        $at, %hi(D_80065920)
/* 655E4C0 8007DF90 21082700 */  addu       $at, $at, $a3
/* 655E4C4 8007DF94 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 655E4C8 8007DF98 0D000524 */  addiu      $a1, $zero, 0xD
/* 655E4CC 8007DF9C 80100300 */  sll        $v0, $v1, 2
/* 655E4D0 8007DFA0 21104300 */  addu       $v0, $v0, $v1
/* 655E4D4 8007DFA4 2800A38F */  lw         $v1, 0x28($sp)
/* 655E4D8 8007DFA8 43120200 */  sra        $v0, $v0, 9
/* 655E4DC 8007DFAC 21186200 */  addu       $v1, $v1, $v0
/* 655E4E0 8007DFB0 2800A3AF */  sw         $v1, 0x28($sp)
/* 655E4E4 8007DFB4 0680013C */  lui        $at, %hi(D_800658A0)
/* 655E4E8 8007DFB8 21082700 */  addu       $at, $at, $a3
/* 655E4EC 8007DFBC A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 655E4F0 8007DFC0 3800A727 */  addiu      $a3, $sp, 0x38
/* 655E4F4 8007DFC4 80180200 */  sll        $v1, $v0, 2
/* 655E4F8 8007DFC8 21186200 */  addu       $v1, $v1, $v0
/* 655E4FC 8007DFCC 2C00A28F */  lw         $v0, 0x2C($sp)
/* 655E500 8007DFD0 431A0300 */  sra        $v1, $v1, 9
/* 655E504 8007DFD4 21104300 */  addu       $v0, $v0, $v1
/* 655E508 8007DFD8 09F80001 */  jalr       $t0
/* 655E50C 8007DFDC 2C00A2AF */   sw        $v0, 0x2C($sp)
/* 655E510 8007DFE0 0A004390 */  lbu        $v1, 0xA($v0)
/* 655E514 8007DFE4 0E000424 */  addiu      $a0, $zero, 0xE
/* 655E518 8007DFE8 020044A0 */  sb         $a0, 0x2($v0)
/* 655E51C 8007DFEC 38006324 */  addiu      $v1, $v1, 0x38
/* 655E520 8007DFF0 0A0043A0 */  sb         $v1, 0xA($v0)
.Llevel_28_8007DFF4:
/* 655E524 8007DFF4 48004392 */  lbu        $v1, 0x48($s2)
/* 655E528 8007DFF8 62000224 */  addiu      $v0, $zero, 0x62
/* 655E52C 8007DFFC 14006214 */  bne        $v1, $v0, .Llevel_28_8007E050
/* 655E530 8007E000 00000000 */   nop
.Llevel_28_8007E004:
/* 655E534 8007E004 3A004392 */  lbu        $v1, 0x3A($s2)
/* 655E538 8007E008 00000000 */  nop
/* 655E53C 8007E00C 40100300 */  sll        $v0, $v1, 1
/* 655E540 8007E010 21104300 */  addu       $v0, $v0, $v1
/* 655E544 8007E014 80100200 */  sll        $v0, $v0, 2
/* 655E548 8007E018 23104300 */  subu       $v0, $v0, $v1
/* 655E54C 8007E01C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 655E550 8007E020 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 655E554 8007E024 C0100200 */  sll        $v0, $v0, 3
/* 655E558 8007E028 21104300 */  addu       $v0, $v0, $v1
/* 655E55C 8007E02C 0000438C */  lw         $v1, 0x0($v0)
/* 655E560 8007E030 00000000 */  nop
/* 655E564 8007E034 0000628C */  lw         $v0, 0x0($v1)
/* 655E568 8007E038 00000000 */  nop
/* 655E56C 8007E03C 02005214 */  bne        $v0, $s2, .Llevel_28_8007E048
/* 655E570 8007E040 00000000 */   nop
/* 655E574 8007E044 000060AC */  sw         $zero, 0x0($v1)
.Llevel_28_8007E048:
/* 655E578 8007E048 C656010C */  jal        func_80055B18
/* 655E57C 8007E04C 21204002 */   addu      $a0, $s2, $zero
.Llevel_28_8007E050:
/* 655E580 8007E050 6800BF8F */  lw         $ra, 0x68($sp)
/* 655E584 8007E054 6400B38F */  lw         $s3, 0x64($sp)
/* 655E588 8007E058 6000B28F */  lw         $s2, 0x60($sp)
/* 655E58C 8007E05C 5C00B18F */  lw         $s1, 0x5C($sp)
/* 655E590 8007E060 5800B08F */  lw         $s0, 0x58($sp)
/* 655E594 8007E064 7000BD27 */  addiu      $sp, $sp, 0x70
/* 655E598 8007E068 0800E003 */  jr         $ra
/* 655E59C 8007E06C 00000000 */   nop
.size MobyUpdate_601_level_28, . - MobyUpdate_601_level_28
