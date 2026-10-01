.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_70_80077378
/* 1C8B8A8 80077378 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 1C8B8AC 8007737C 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 1C8B8B0 80077380 21A88000 */  addu       $s5, $a0, $zero
/* 1C8B8B4 80077384 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 1C8B8B8 80077388 2188A002 */  addu       $s1, $s5, $zero
/* 1C8B8BC 8007738C 3000BFAF */  sw         $ra, 0x30($sp)
/* 1C8B8C0 80077390 2800B4AF */  sw         $s4, 0x28($sp)
/* 1C8B8C4 80077394 2400B3AF */  sw         $s3, 0x24($sp)
/* 1C8B8C8 80077398 2000B2AF */  sw         $s2, 0x20($sp)
/* 1C8B8CC 8007739C 1800B0AF */  sw         $s0, 0x18($sp)
/* 1C8B8D0 800773A0 0000228E */  lw         $v0, 0x0($s1)
/* 1C8B8D4 800773A4 04003126 */  addiu      $s1, $s1, 0x4
/* 1C8B8D8 800773A8 40100200 */  sll        $v0, $v0, 1
/* 1C8B8DC 800773AC 0780013C */  lui        $at, %hi(D_8006EDEC)
/* 1C8B8E0 800773B0 ECED22AC */  sw         $v0, %lo(D_8006EDEC)($at)
/* 1C8B8E4 800773B4 0000238E */  lw         $v1, 0x0($s1)
/* 1C8B8E8 800773B8 04003126 */  addiu      $s1, $s1, 0x4
/* 1C8B8EC 800773BC 0780013C */  lui        $at, %hi(D_8006EDF0)
/* 1C8B8F0 800773C0 F0ED23AC */  sw         $v1, %lo(D_8006EDF0)($at)
/* 1C8B8F4 800773C4 0000228E */  lw         $v0, 0x0($s1)
/* 1C8B8F8 800773C8 04003126 */  addiu      $s1, $s1, 0x4
/* 1C8B8FC 800773CC 80180300 */  sll        $v1, $v1, 2
/* 1C8B900 800773D0 0780013C */  lui        $at, %hi(D_8006EDFC)
/* 1C8B904 800773D4 FCED22AC */  sw         $v0, %lo(D_8006EDFC)($at)
/* 1C8B908 800773D8 0000278E */  lw         $a3, 0x0($s1)
/* 1C8B90C 800773DC 04003126 */  addiu      $s1, $s1, 0x4
/* 1C8B910 800773E0 0780013C */  lui        $at, %hi(D_8006EE00)
/* 1C8B914 800773E4 00EE27AC */  sw         $a3, %lo(D_8006EE00)($at)
/* 1C8B918 800773E8 0000248E */  lw         $a0, 0x0($s1)
/* 1C8B91C 800773EC 04003126 */  addiu      $s1, $s1, 0x4
/* 1C8B920 800773F0 0780013C */  lui        $at, %hi(D_8006EDF4)
/* 1C8B924 800773F4 F4ED31AC */  sw         $s1, %lo(D_8006EDF4)($at)
/* 1C8B928 800773F8 21882302 */  addu       $s1, $s1, $v1
/* 1C8B92C 800773FC 0780013C */  lui        $at, %hi(D_8006EDF8)
/* 1C8B930 80077400 F8ED31AC */  sw         $s1, %lo(D_8006EDF8)($at)
/* 1C8B934 80077404 2110A702 */  addu       $v0, $s5, $a3
/* 1C8B938 80077408 0780013C */  lui        $at, %hi(D_8006EE08)
/* 1C8B93C 8007740C 08EE22AC */  sw         $v0, %lo(D_8006EE08)($at)
/* 1C8B940 80077410 21104400 */  addu       $v0, $v0, $a0
/* 1C8B944 80077414 0780013C */  lui        $at, %hi(D_8006EE04)
/* 1C8B948 80077418 04EE24AC */  sw         $a0, %lo(D_8006EE04)($at)
/* 1C8B94C 8007741C 0780013C */  lui        $at, %hi(D_8006EE0C)
/* 1C8B950 80077420 0CEE22AC */  sw         $v0, %lo(D_8006EE0C)($at)
/* 1C8B954 80077424 1300A010 */  beqz       $a1, .Lcutscene_70_80077474
/* 1C8B958 80077428 21882302 */   addu      $s1, $s1, $v1
/* 1C8B95C 8007742C 0008A526 */  addiu      $a1, $s5, 0x800
/* 1C8B960 80077430 0780023C */  lui        $v0, %hi(D_8006EDF8)
/* 1C8B964 80077434 F8ED428C */  lw         $v0, %lo(D_8006EDF8)($v0)
/* 1C8B968 80077438 0780043C */  lui        $a0, %hi(D_8006E470)
/* 1C8B96C 8007743C 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 1C8B970 80077440 0780033C */  lui        $v1, %hi(D_8006C58C)
/* 1C8B974 80077444 8CC5638C */  lw         $v1, %lo(D_8006C58C)($v1)
/* 1C8B978 80077448 0000468C */  lw         $a2, 0x0($v0)
/* 1C8B97C 8007744C 40100300 */  sll        $v0, $v1, 1
/* 1C8B980 80077450 21104300 */  addu       $v0, $v0, $v1
/* 1C8B984 80077454 C0100200 */  sll        $v0, $v0, 3
/* 1C8B988 80077458 2130E600 */  addu       $a2, $a3, $a2
/* 1C8B98C 8007745C 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 1C8B990 80077460 21082200 */  addu       $at, $at, $v0
/* 1C8B994 80077464 18D9278C */  lw         $a3, %lo(D_8006D8D8 + 0x40)($at)
/* 1C8B998 80077468 00F8C624 */  addiu      $a2, $a2, -0x800
/* 1C8B99C 8007746C 5E41010C */  jal        CDLoadSync
/* 1C8B9A0 80077470 0008E724 */   addiu     $a3, $a3, 0x800
.Lcutscene_70_80077474:
/* 1C8B9A4 80077474 0000228E */  lw         $v0, 0x0($s1)
/* 1C8B9A8 80077478 04003126 */  addiu      $s1, $s1, 0x4
/* 1C8B9AC 8007747C 0780103C */  lui        $s0, %hi(D_8006EE2C)
/* 1C8B9B0 80077480 2CEE1026 */  addiu      $s0, $s0, %lo(D_8006EE2C)
/* 1C8B9B4 80077484 0780043C */  lui        $a0, %hi(D_8006EE00)
/* 1C8B9B8 80077488 00EE848C */  lw         $a0, %lo(D_8006EE00)($a0)
/* 1C8B9BC 8007748C 0780063C */  lui        $a2, %hi(D_8006EDFC)
/* 1C8B9C0 80077490 FCEDC68C */  lw         $a2, %lo(D_8006EDFC)($a2)
/* 1C8B9C4 80077494 2120A402 */  addu       $a0, $s5, $a0
/* 1C8B9C8 80077498 80300600 */  sll        $a2, $a2, 2
/* 1C8B9CC 8007749C 23208600 */  subu       $a0, $a0, $a2
/* 1C8B9D0 800774A0 2110A202 */  addu       $v0, $s5, $v0
/* 1C8B9D4 800774A4 0780013C */  lui        $at, %hi(D_8006C550)
/* 1C8B9D8 800774A8 50C522AC */  sw         $v0, %lo(D_8006C550)($at)
/* 1C8B9DC 800774AC 0780013C */  lui        $at, %hi(D_8006EE10)
/* 1C8B9E0 800774B0 10EE24AC */  sw         $a0, %lo(D_8006EE10)($at)
/* 1C8B9E4 800774B4 F539010C */  jal        func_8004E7D4
/* 1C8B9E8 800774B8 21280002 */   addu      $a1, $s0, $zero
/* 1C8B9EC 800774BC 0780023C */  lui        $v0, %hi(D_8006EDFC)
/* 1C8B9F0 800774C0 FCED428C */  lw         $v0, %lo(D_8006EDFC)($v0)
/* 1C8B9F4 800774C4 00000000 */  nop
/* 1C8B9F8 800774C8 40004018 */  blez       $v0, .Lcutscene_70_800775CC
/* 1C8B9FC 800774CC 21980000 */   addu      $s3, $zero, $zero
/* 1C8BA00 800774D0 21900000 */  addu       $s2, $zero, $zero
/* 1C8BA04 800774D4 21A00002 */  addu       $s4, $s0, $zero
.Lcutscene_70_800774D8:
/* 1C8BA08 800774D8 0000228E */  lw         $v0, 0x0($s1)
/* 1C8BA0C 800774DC 00000000 */  nop
/* 1C8BA10 800774E0 2120A202 */  addu       $a0, $s5, $v0
/* 1C8BA14 800774E4 000084AE */  sw         $a0, 0x0($s4)
/* 1C8BA18 800774E8 0000828C */  lw         $v0, 0x0($a0)
/* 1C8BA1C 800774EC 00000000 */  nop
/* 1C8BA20 800774F0 06004104 */  bgez       $v0, .Lcutscene_70_8007750C
/* 1C8BA24 800774F4 04003126 */   addiu     $s1, $s1, 0x4
/* 1C8BA28 800774F8 21286002 */  addu       $a1, $s3, $zero
/* 1C8BA2C 800774FC E7AB000C */  jal        func_8002AF9C
/* 1C8BA30 80077500 8080063C */   lui       $a2, (0x80800000 >> 16)
/* 1C8BA34 80077504 50DD0108 */  j          .Lcutscene_70_80077540
/* 1C8BA38 80077508 21280000 */   addu      $a1, $zero, $zero
.Lcutscene_70_8007750C:
/* 1C8BA3C 8007750C 3400828C */  lw         $v0, 0x34($a0)
/* 1C8BA40 80077510 00000000 */  nop
/* 1C8BA44 80077514 02004010 */  beqz       $v0, .Lcutscene_70_80077520
/* 1C8BA48 80077518 21108200 */   addu      $v0, $a0, $v0
/* 1C8BA4C 8007751C 340082AC */  sw         $v0, 0x34($a0)
.Lcutscene_70_80077520:
/* 1C8BA50 80077520 0000838E */  lw         $v1, 0x0($s4)
/* 1C8BA54 80077524 00000000 */  nop
/* 1C8BA58 80077528 3800628C */  lw         $v0, 0x38($v1)
/* 1C8BA5C 8007752C 00000000 */  nop
/* 1C8BA60 80077530 02004010 */  beqz       $v0, .Lcutscene_70_8007753C
/* 1C8BA64 80077534 21106200 */   addu      $v0, $v1, $v0
/* 1C8BA68 80077538 380062AC */  sw         $v0, 0x38($v1)
.Lcutscene_70_8007753C:
/* 1C8BA6C 8007753C 21280000 */  addu       $a1, $zero, $zero
.Lcutscene_70_80077540:
/* 1C8BA70 80077540 0780043C */  lui        $a0, %hi(D_8006C550)
/* 1C8BA74 80077544 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 1C8BA78 80077548 00000000 */  nop
/* 1C8BA7C 8007754C 21204402 */  addu       $a0, $s2, $a0
/* 1C8BA80 80077550 38009084 */  lh         $s0, 0x38($a0)
/* 1C8BA84 80077554 E439010C */  jal        func_8004E790
/* 1C8BA88 80077558 58000624 */   addiu     $a2, $zero, 0x58
/* 1C8BA8C 8007755C 20000224 */  addiu      $v0, $zero, 0x20
/* 1C8BA90 80077560 0780033C */  lui        $v1, %hi(D_8006C550)
/* 1C8BA94 80077564 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 1C8BA98 80077568 04009426 */  addiu      $s4, $s4, 0x4
/* 1C8BA9C 8007756C 21184302 */  addu       $v1, $s2, $v1
/* 1C8BAA0 80077570 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 1C8BAA4 80077574 0780043C */  lui        $a0, %hi(D_8006C550)
/* 1C8BAA8 80077578 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 1C8BAAC 8007757C 40000224 */  addiu      $v0, $zero, 0x40
/* 1C8BAB0 80077580 360073A4 */  sh         $s3, 0x36($v1)
/* 1C8BAB4 80077584 21204402 */  addu       $a0, $s2, $a0
/* 1C8BAB8 80077588 4E0082A0 */  sb         $v0, 0x4E($a0)
/* 1C8BABC 8007758C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 1C8BAC0 80077590 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 1C8BAC4 80077594 FF000224 */  addiu      $v0, $zero, 0xFF
/* 1C8BAC8 80077598 21184302 */  addu       $v1, $s2, $v1
/* 1C8BACC 8007759C 520062A0 */  sb         $v0, 0x52($v1)
/* 1C8BAD0 800775A0 0780023C */  lui        $v0, %hi(D_8006C550)
/* 1C8BAD4 800775A4 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 1C8BAD8 800775A8 01007326 */  addiu      $s3, $s3, 0x1
/* 1C8BADC 800775AC 21104202 */  addu       $v0, $s2, $v0
/* 1C8BAE0 800775B0 380050A4 */  sh         $s0, 0x38($v0)
/* 1C8BAE4 800775B4 0780023C */  lui        $v0, %hi(D_8006EDFC)
/* 1C8BAE8 800775B8 FCED428C */  lw         $v0, %lo(D_8006EDFC)($v0)
/* 1C8BAEC 800775BC 00000000 */  nop
/* 1C8BAF0 800775C0 2A106202 */  slt        $v0, $s3, $v0
/* 1C8BAF4 800775C4 C4FF4014 */  bnez       $v0, .Lcutscene_70_800774D8
/* 1C8BAF8 800775C8 58005226 */   addiu     $s2, $s2, 0x58
.Lcutscene_70_800775CC:
/* 1C8BAFC 800775CC 0780033C */  lui        $v1, %hi(D_8006EDFC)
/* 1C8BB00 800775D0 FCED638C */  lw         $v1, %lo(D_8006EDFC)($v1)
/* 1C8BB04 800775D4 00000000 */  nop
/* 1C8BB08 800775D8 40100300 */  sll        $v0, $v1, 1
/* 1C8BB0C 800775DC 21104300 */  addu       $v0, $v0, $v1
/* 1C8BB10 800775E0 80100200 */  sll        $v0, $v0, 2
/* 1C8BB14 800775E4 23104300 */  subu       $v0, $v0, $v1
/* 1C8BB18 800775E8 0780033C */  lui        $v1, %hi(D_8006C550)
/* 1C8BB1C 800775EC 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 1C8BB20 800775F0 C0100200 */  sll        $v0, $v0, 3
/* 1C8BB24 800775F4 21104300 */  addu       $v0, $v0, $v1
/* 1C8BB28 800775F8 FF000324 */  addiu      $v1, $zero, 0xFF
/* 1C8BB2C 800775FC 480043A0 */  sb         $v1, 0x48($v0)
/* 1C8BB30 80077600 3000BF8F */  lw         $ra, 0x30($sp)
/* 1C8BB34 80077604 2C00B58F */  lw         $s5, 0x2C($sp)
/* 1C8BB38 80077608 2800B48F */  lw         $s4, 0x28($sp)
/* 1C8BB3C 8007760C 2400B38F */  lw         $s3, 0x24($sp)
/* 1C8BB40 80077610 2000B28F */  lw         $s2, 0x20($sp)
/* 1C8BB44 80077614 1C00B18F */  lw         $s1, 0x1C($sp)
/* 1C8BB48 80077618 1800B08F */  lw         $s0, 0x18($sp)
/* 1C8BB4C 8007761C 3800BD27 */  addiu      $sp, $sp, 0x38
/* 1C8BB50 80077620 0800E003 */  jr         $ra
/* 1C8BB54 80077624 00000000 */   nop
.size func_cutscene_70_80077378, . - func_cutscene_70_80077378
