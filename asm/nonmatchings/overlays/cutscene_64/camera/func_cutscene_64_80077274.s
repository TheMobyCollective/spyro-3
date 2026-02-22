.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_64_80077274
/* BCC7A4 80077274 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BCC7A8 80077278 0780043C */  lui        $a0, %hi(D_8006EDDC)
/* BCC7AC 8007727C DCED8424 */  addiu      $a0, $a0, %lo(D_8006EDDC)
/* BCC7B0 80077280 1400BFAF */  sw         $ra, 0x14($sp)
/* BCC7B4 80077284 1000B0AF */  sw         $s0, 0x10($sp)
/* BCC7B8 80077288 0000828C */  lw         $v0, 0x0($a0)
/* BCC7BC 8007728C 0780033C */  lui        $v1, %hi(D_8006C648)
/* BCC7C0 80077290 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* BCC7C4 80077294 1000858C */  lw         $a1, 0x10($a0)
/* BCC7C8 80077298 21104300 */  addu       $v0, $v0, $v1
/* BCC7CC 8007729C FFFFA324 */  addiu      $v1, $a1, -0x1
/* BCC7D0 800772A0 000082AC */  sw         $v0, 0x0($a0)
/* BCC7D4 800772A4 2A106200 */  slt        $v0, $v1, $v0
/* BCC7D8 800772A8 02004010 */  beqz       $v0, .Lcutscene_64_800772B4
/* BCC7DC 800772AC 00000000 */   nop
/* BCC7E0 800772B0 000083AC */  sw         $v1, 0x0($a0)
.Lcutscene_64_800772B4:
/* BCC7E4 800772B4 0000848C */  lw         $a0, 0x0($a0)
/* BCC7E8 800772B8 00000000 */  nop
/* BCC7EC 800772BC 14008228 */  slti       $v0, $a0, 0x14
/* BCC7F0 800772C0 0B004010 */  beqz       $v0, .Lcutscene_64_800772F0
/* BCC7F4 800772C4 0F000224 */   addiu     $v0, $zero, 0xF
/* BCC7F8 800772C8 23104400 */  subu       $v0, $v0, $a0
/* BCC7FC 800772CC 00110200 */  sll        $v0, $v0, 4
/* BCC800 800772D0 0780013C */  lui        $at, %hi(D_8006C598)
/* BCC804 800772D4 98C522AC */  sw         $v0, %lo(D_8006C598)($at)
/* BCC808 800772D8 21004104 */  bgez       $v0, .Lcutscene_64_80077360
/* BCC80C 800772DC 00000000 */   nop
/* BCC810 800772E0 0780013C */  lui        $at, %hi(D_8006C598)
/* BCC814 800772E4 98C520AC */  sw         $zero, %lo(D_8006C598)($at)
/* BCC818 800772E8 D8DC0108 */  j          .Lcutscene_64_80077360
/* BCC81C 800772EC 00000000 */   nop
.Lcutscene_64_800772F0:
/* BCC820 800772F0 2118A000 */  addu       $v1, $a1, $zero
/* BCC824 800772F4 F6FF6224 */  addiu      $v0, $v1, -0xA
/* BCC828 800772F8 2A104400 */  slt        $v0, $v0, $a0
/* BCC82C 800772FC 05004010 */  beqz       $v0, .Lcutscene_64_80077314
/* BCC830 80077300 23186400 */   subu      $v1, $v1, $a0
/* BCC834 80077304 0A000224 */  addiu      $v0, $zero, 0xA
/* BCC838 80077308 23104300 */  subu       $v0, $v0, $v1
/* BCC83C 8007730C D6DC0108 */  j          .Lcutscene_64_80077358
/* BCC840 80077310 40110200 */   sll       $v0, $v0, 5
.Lcutscene_64_80077314:
/* BCC844 80077314 0780023C */  lui        $v0, %hi(D_8006C598)
/* BCC848 80077318 98C5428C */  lw         $v0, %lo(D_8006C598)($v0)
/* BCC84C 8007731C 00000000 */  nop
/* BCC850 80077320 0D004014 */  bnez       $v0, .Lcutscene_64_80077358
/* BCC854 80077324 20004224 */   addiu     $v0, $v0, 0x20
/* BCC858 80077328 78008228 */  slti       $v0, $a0, 0x78
/* BCC85C 8007732C 0C004014 */  bnez       $v0, .Lcutscene_64_80077360
/* BCC860 80077330 E0FFA224 */   addiu     $v0, $a1, -0x20
/* BCC864 80077334 2A108200 */  slt        $v0, $a0, $v0
/* BCC868 80077338 09004010 */  beqz       $v0, .Lcutscene_64_80077360
/* BCC86C 8007733C 00000000 */   nop
/* BCC870 80077340 0780023C */  lui        $v0, %hi(D_8006E53C)
/* BCC874 80077344 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* BCC878 80077348 00000000 */  nop
/* BCC87C 8007734C 40094230 */  andi       $v0, $v0, 0x940
/* BCC880 80077350 03004010 */  beqz       $v0, .Lcutscene_64_80077360
/* BCC884 80077354 20000224 */   addiu     $v0, $zero, 0x20
.Lcutscene_64_80077358:
/* BCC888 80077358 0780013C */  lui        $at, %hi(D_8006C598)
/* BCC88C 8007735C 98C522AC */  sw         $v0, %lo(D_8006C598)($at)
.Lcutscene_64_80077360:
/* BCC890 80077360 0780033C */  lui        $v1, %hi(D_8006C598)
/* BCC894 80077364 98C5638C */  lw         $v1, %lo(D_8006C598)($v1)
/* BCC898 80077368 00000000 */  nop
/* BCC89C 8007736C FF006228 */  slti       $v0, $v1, 0xFF
/* BCC8A0 80077370 07004014 */  bnez       $v0, .Lcutscene_64_80077390
/* BCC8A4 80077374 FF000224 */   addiu     $v0, $zero, 0xFF
/* BCC8A8 80077378 0780013C */  lui        $at, %hi(D_8006C598)
/* BCC8AC 8007737C 98C522AC */  sw         $v0, %lo(D_8006C598)($at)
/* BCC8B0 80077380 36DC010C */  jal        func_cutscene_64_800770D8
/* BCC8B4 80077384 00000000 */   nop
/* BCC8B8 80077388 75DD0108 */  j          .Lcutscene_64_800775D4
/* BCC8BC 8007738C 00000000 */   nop
.Lcutscene_64_80077390:
/* BCC8C0 80077390 0780023C */  lui        $v0, %hi(D_8006EDDC)
/* BCC8C4 80077394 DCED428C */  lw         $v0, %lo(D_8006EDDC)($v0)
/* BCC8C8 80077398 00000000 */  nop
/* BCC8CC 8007739C 02004228 */  slti       $v0, $v0, 0x2
/* BCC8D0 800773A0 13004014 */  bnez       $v0, .Lcutscene_64_800773F0
/* BCC8D4 800773A4 00000000 */   nop
/* BCC8D8 800773A8 0780043C */  lui        $a0, %hi(D_8006EE14)
/* BCC8DC 800773AC 14EE848C */  lw         $a0, %lo(D_8006EE14)($a0)
/* BCC8E0 800773B0 00000000 */  nop
/* BCC8E4 800773B4 09008104 */  bgez       $a0, .Lcutscene_64_800773DC
/* BCC8E8 800773B8 00010224 */   addiu     $v0, $zero, 0x100
/* BCC8EC 800773BC 21200000 */  addu       $a0, $zero, $zero
/* BCC8F0 800773C0 21280000 */  addu       $a1, $zero, $zero
/* BCC8F4 800773C4 D4EE000C */  jal        PlaySound
/* BCC8F8 800773C8 04000624 */   addiu     $a2, $zero, 0x4
/* BCC8FC 800773CC 0780013C */  lui        $at, %hi(D_8006EE14)
/* BCC900 800773D0 14EE22AC */  sw         $v0, %lo(D_8006EE14)($at)
/* BCC904 800773D4 FCDC0108 */  j          .Lcutscene_64_800773F0
/* BCC908 800773D8 00000000 */   nop
.Lcutscene_64_800773DC:
/* BCC90C 800773DC 23104300 */  subu       $v0, $v0, $v1
/* BCC910 800773E0 40280200 */  sll        $a1, $v0, 1
/* BCC914 800773E4 2128A200 */  addu       $a1, $a1, $v0
/* BCC918 800773E8 50F0000C */  jal        func_8003C140
/* BCC91C 800773EC C0280500 */   sll       $a1, $a1, 3
.Lcutscene_64_800773F0:
/* BCC920 800773F0 0780103C */  lui        $s0, %hi(D_8006EDE8)
/* BCC924 800773F4 E8ED1026 */  addiu      $s0, $s0, %lo(D_8006EDE8)
/* BCC928 800773F8 0000028E */  lw         $v0, 0x0($s0)
/* BCC92C 800773FC 00000000 */  nop
/* BCC930 80077400 10004104 */  bgez       $v0, .Lcutscene_64_80077444
/* BCC934 80077404 8888063C */   lui       $a2, (0x88888889 >> 16)
/* BCC938 80077408 FE40010C */  jal        func_800503F8
/* BCC93C 8007740C 00000000 */   nop
/* BCC940 80077410 0C004014 */  bnez       $v0, .Lcutscene_64_80077444
/* BCC944 80077414 8888063C */   lui       $a2, (0x88888889 >> 16)
/* BCC948 80077418 0780053C */  lui        $a1, %hi(D_8006EDE0)
/* BCC94C 8007741C E0EDA58C */  lw         $a1, %lo(D_8006EDE0)($a1)
/* BCC950 80077420 00000000 */  nop
/* BCC954 80077424 0100A524 */  addiu      $a1, $a1, 0x1
/* BCC958 80077428 0100A230 */  andi       $v0, $a1, 0x1
/* BCC95C 8007742C 80100200 */  sll        $v0, $v0, 2
/* BCC960 80077430 21100202 */  addu       $v0, $s0, $v0
/* BCC964 80077434 2000448C */  lw         $a0, 0x20($v0)
/* BCC968 80077438 26DE010C */  jal        func_cutscene_64_80077898
/* BCC96C 8007743C 01000624 */   addiu     $a2, $zero, 0x1
/* BCC970 80077440 8888063C */  lui        $a2, (0x88888889 >> 16)
.Lcutscene_64_80077444:
/* BCC974 80077444 0780043C */  lui        $a0, %hi(D_8006EDDC)
/* BCC978 80077448 DCED848C */  lw         $a0, %lo(D_8006EDDC)($a0)
/* BCC97C 8007744C 8988C634 */  ori        $a2, $a2, (0x88888889 & 0xFFFF)
/* BCC980 80077450 18008600 */  mult       $a0, $a2
/* BCC984 80077454 0780073C */  lui        $a3, %hi(D_8006EDE0)
/* BCC988 80077458 E0EDE724 */  addiu      $a3, $a3, %lo(D_8006EDE0)
/* BCC98C 8007745C 0780053C */  lui        $a1, %hi(D_8006C648)
/* BCC990 80077460 48C6A58C */  lw         $a1, %lo(D_8006C648)($a1)
/* BCC994 80077464 C31F0400 */  sra        $v1, $a0, 31
/* BCC998 80077468 10480000 */  mfhi       $t1
/* BCC99C 8007746C 21102401 */  addu       $v0, $t1, $a0
/* BCC9A0 80077470 83110200 */  sra        $v0, $v0, 6
/* BCC9A4 80077474 23184300 */  subu       $v1, $v0, $v1
/* BCC9A8 80077478 00110300 */  sll        $v0, $v1, 4
/* BCC9AC 8007747C 23104300 */  subu       $v0, $v0, $v1
/* BCC9B0 80077480 C0100200 */  sll        $v0, $v0, 3
/* BCC9B4 80077484 23108200 */  subu       $v0, $a0, $v0
/* BCC9B8 80077488 0000E3AC */  sw         $v1, 0x0($a3)
/* BCC9BC 8007748C 0780013C */  lui        $at, %hi(D_8006EDE4)
/* BCC9C0 80077490 E4ED22AC */  sw         $v0, %lo(D_8006EDE4)($at)
/* BCC9C4 80077494 2A104500 */  slt        $v0, $v0, $a1
/* BCC9C8 80077498 18004010 */  beqz       $v0, .Lcutscene_64_800774FC
/* BCC9CC 8007749C 00000000 */   nop
/* BCC9D0 800774A0 0780023C */  lui        $v0, %hi(D_8006EDE8)
/* BCC9D4 800774A4 E8ED428C */  lw         $v0, %lo(D_8006EDE8)($v0)
/* BCC9D8 800774A8 00000000 */  nop
/* BCC9DC 800774AC 2A104300 */  slt        $v0, $v0, $v1
/* BCC9E0 800774B0 12004010 */  beqz       $v0, .Lcutscene_64_800774FC
/* BCC9E4 800774B4 23208500 */   subu      $a0, $a0, $a1
/* BCC9E8 800774B8 18008600 */  mult       $a0, $a2
/* BCC9EC 800774BC C31F0400 */  sra        $v1, $a0, 31
/* BCC9F0 800774C0 0780013C */  lui        $at, %hi(D_8006EDDC)
/* BCC9F4 800774C4 DCED24AC */  sw         $a0, %lo(D_8006EDDC)($at)
/* BCC9F8 800774C8 10480000 */  mfhi       $t1
/* BCC9FC 800774CC 21102401 */  addu       $v0, $t1, $a0
/* BCCA00 800774D0 83110200 */  sra        $v0, $v0, 6
/* BCCA04 800774D4 23104300 */  subu       $v0, $v0, $v1
/* BCCA08 800774D8 00190200 */  sll        $v1, $v0, 4
/* BCCA0C 800774DC 23186200 */  subu       $v1, $v1, $v0
/* BCCA10 800774E0 C0180300 */  sll        $v1, $v1, 3
/* BCCA14 800774E4 23208300 */  subu       $a0, $a0, $v1
/* BCCA18 800774E8 0000E2AC */  sw         $v0, 0x0($a3)
/* BCCA1C 800774EC 0780013C */  lui        $at, %hi(D_8006EDE4)
/* BCCA20 800774F0 E4ED24AC */  sw         $a0, %lo(D_8006EDE4)($at)
/* BCCA24 800774F4 B7EF000C */  jal        func_8003BEDC
/* BCCA28 800774F8 00000000 */   nop
.Lcutscene_64_800774FC:
/* BCCA2C 800774FC 0780063C */  lui        $a2, %hi(D_8006EDE4)
/* BCCA30 80077500 E4EDC624 */  addiu      $a2, $a2, %lo(D_8006EDE4)
/* BCCA34 80077504 0000C38C */  lw         $v1, 0x0($a2)
/* BCCA38 80077508 00000000 */  nop
/* BCCA3C 8007750C 2A006010 */  beqz       $v1, .Lcutscene_64_800775B8
/* BCCA40 80077510 00000000 */   nop
/* BCCA44 80077514 0780023C */  lui        $v0, %hi(D_8006C648)
/* BCCA48 80077518 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* BCCA4C 8007751C 00000000 */  nop
/* BCCA50 80077520 2A104300 */  slt        $v0, $v0, $v1
/* BCCA54 80077524 24004014 */  bnez       $v0, .Lcutscene_64_800775B8
/* BCCA58 80077528 00000000 */   nop
/* BCCA5C 8007752C 0780033C */  lui        $v1, %hi(D_8006EDE0)
/* BCCA60 80077530 E0ED638C */  lw         $v1, %lo(D_8006EDE0)($v1)
/* BCCA64 80077534 0780023C */  lui        $v0, %hi(D_8006EDF0)
/* BCCA68 80077538 F0ED428C */  lw         $v0, %lo(D_8006EDF0)($v0)
/* BCCA6C 8007753C 01006524 */  addiu      $a1, $v1, 0x1
/* BCCA70 80077540 2A10A200 */  slt        $v0, $a1, $v0
/* BCCA74 80077544 1C004010 */  beqz       $v0, .Lcutscene_64_800775B8
/* BCCA78 80077548 FFFF0224 */   addiu     $v0, $zero, -0x1
/* BCCA7C 8007754C 0780013C */  lui        $at, %hi(D_8006EDE8)
/* BCCA80 80077550 E8ED22AC */  sw         $v0, %lo(D_8006EDE8)($at)
/* BCCA84 80077554 0100A230 */  andi       $v0, $a1, 0x1
/* BCCA88 80077558 80100200 */  sll        $v0, $v0, 2
/* BCCA8C 8007755C 2110C200 */  addu       $v0, $a2, $v0
/* BCCA90 80077560 80180300 */  sll        $v1, $v1, 2
/* BCCA94 80077564 0780043C */  lui        $a0, %hi(D_8006E470)
/* BCCA98 80077568 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* BCCA9C 8007756C 2400458C */  lw         $a1, 0x24($v0)
/* BCCAA0 80077570 0780083C */  lui        $t0, %hi(D_8006EDF8)
/* BCCAA4 80077574 F8ED088D */  lw         $t0, %lo(D_8006EDF8)($t0)
/* BCCAA8 80077578 0780063C */  lui        $a2, %hi(D_8006C58C)
/* BCCAAC 8007757C 8CC5C68C */  lw         $a2, %lo(D_8006C58C)($a2)
/* BCCAB0 80077580 21406800 */  addu       $t0, $v1, $t0
/* BCCAB4 80077584 40100600 */  sll        $v0, $a2, 1
/* BCCAB8 80077588 21104600 */  addu       $v0, $v0, $a2
/* BCCABC 8007758C C0100200 */  sll        $v0, $v0, 3
/* BCCAC0 80077590 0780063C */  lui        $a2, %hi(D_8006EDF4)
/* BCCAC4 80077594 F4EDC68C */  lw         $a2, %lo(D_8006EDF4)($a2)
/* BCCAC8 80077598 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* BCCACC 8007759C 21082200 */  addu       $at, $at, $v0
/* BCCAD0 800775A0 18D9228C */  lw         $v0, %lo(D_8006D8D8 + 0x40)($at)
/* BCCAD4 800775A4 21186600 */  addu       $v1, $v1, $a2
/* BCCAD8 800775A8 0400678C */  lw         $a3, 0x4($v1)
/* BCCADC 800775AC 0400068D */  lw         $a2, 0x4($t0)
/* BCCAE0 800775B0 A041010C */  jal        func_80050680
/* BCCAE4 800775B4 21384700 */   addu      $a3, $v0, $a3
.Lcutscene_64_800775B8:
/* BCCAE8 800775B8 0780033C */  lui        $v1, %hi(D_8006EDE4)
/* BCCAEC 800775BC E4ED6324 */  addiu      $v1, $v1, %lo(D_8006EDE4)
/* BCCAF0 800775C0 0000628C */  lw         $v0, 0x0($v1)
/* BCCAF4 800775C4 00000000 */  nop
/* BCCAF8 800775C8 FE004230 */  andi       $v0, $v0, 0xFE
/* BCCAFC 800775CC 9EDE010C */  jal        func_cutscene_64_80077A78
/* BCCB00 800775D0 000062AC */   sw        $v0, 0x0($v1)
.Lcutscene_64_800775D4:
/* BCCB04 800775D4 1400BF8F */  lw         $ra, 0x14($sp)
/* BCCB08 800775D8 1000B08F */  lw         $s0, 0x10($sp)
/* BCCB0C 800775DC 1800BD27 */  addiu      $sp, $sp, 0x18
/* BCCB10 800775E0 0800E003 */  jr         $ra
/* BCCB14 800775E4 00000000 */   nop
.size func_cutscene_64_80077274, . - func_cutscene_64_80077274
