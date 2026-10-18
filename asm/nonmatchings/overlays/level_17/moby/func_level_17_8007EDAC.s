.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_311_level_17
/* 4D0C2DC 8007EDAC D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 4D0C2E0 8007EDB0 21508000 */  addu       $t2, $a0, $zero
/* 4D0C2E4 8007EDB4 2800BFAF */  sw         $ra, 0x28($sp)
/* 4D0C2E8 8007EDB8 00004E8D */  lw         $t6, 0x0($t2)
/* 4D0C2EC 8007EDBC 00000000 */  nop
/* 4D0C2F0 8007EDC0 0000CB8D */  lw         $t3, 0x0($t6)
/* 4D0C2F4 8007EDC4 00000000 */  nop
/* 4D0C2F8 8007EDC8 0000628D */  lw         $v0, 0x0($t3)
/* 4D0C2FC 8007EDCC 00000000 */  nop
/* 4D0C300 8007EDD0 07004290 */  lbu        $v0, 0x7($v0)
/* 4D0C304 8007EDD4 00000000 */  nop
/* 4D0C308 8007EDD8 05004014 */  bnez       $v0, .Llevel_17_8007EDF0
/* 4D0C30C 8007EDDC 6666063C */   lui       $a2, (0x66666667 >> 16)
/* 4D0C310 8007EDE0 C656010C */  jal        func_80055B18
/* 4D0C314 8007EDE4 00000000 */   nop
/* 4D0C318 8007EDE8 E7FB0108 */  j          .Llevel_17_8007EF9C
/* 4D0C31C 8007EDEC 00000000 */   nop
.Llevel_17_8007EDF0:
/* 4D0C320 8007EDF0 46006791 */  lbu        $a3, 0x46($t3)
/* 4D0C324 8007EDF4 00000000 */  nop
/* 4D0C328 8007EDF8 40280700 */  sll        $a1, $a3, 1
/* 4D0C32C 8007EDFC 0680013C */  lui        $at, %hi(D_80065920)
/* 4D0C330 8007EE00 21082500 */  addu       $at, $at, $a1
/* 4D0C334 8007EE04 20592494 */  lhu        $a0, %lo(D_80065920)($at)
/* 4D0C338 8007EE08 6766C634 */  ori        $a2, $a2, (0x66666667 & 0xFFFF)
/* 4D0C33C 8007EE0C 00240400 */  sll        $a0, $a0, 16
/* 4D0C340 8007EE10 03140400 */  sra        $v0, $a0, 16
/* 4D0C344 8007EE14 18004600 */  mult       $v0, $a2
/* 4D0C348 8007EE18 49004291 */  lbu        $v0, 0x49($t2)
/* 4D0C34C 8007EE1C 5555093C */  lui        $t1, (0x55555556 >> 16)
/* 4D0C350 8007EE20 80100200 */  sll        $v0, $v0, 2
/* 4D0C354 8007EE24 0680013C */  lui        $at, %hi(D_80067555)
/* 4D0C358 8007EE28 21082200 */  addu       $at, $at, $v0
/* 4D0C35C 8007EE2C 55752290 */  lbu        $v0, %lo(D_80067555)($at)
/* 4D0C360 8007EE30 56552935 */  ori        $t1, $t1, (0x55555556 & 0xFFFF)
/* 4D0C364 8007EE34 2138E200 */  addu       $a3, $a3, $v0
/* 4D0C368 8007EE38 FF00E830 */  andi       $t0, $a3, 0xFF
/* 4D0C36C 8007EE3C 40400800 */  sll        $t0, $t0, 1
/* 4D0C370 8007EE40 0680013C */  lui        $at, %hi(D_80065920)
/* 4D0C374 8007EE44 21082800 */  addu       $at, $at, $t0
/* 4D0C378 8007EE48 20592394 */  lhu        $v1, %lo(D_80065920)($at)
/* 4D0C37C 8007EE4C 10600000 */  mfhi       $t4
/* 4D0C380 8007EE50 001C0300 */  sll        $v1, $v1, 16
/* 4D0C384 8007EE54 03140300 */  sra        $v0, $v1, 16
/* 4D0C388 8007EE58 18004900 */  mult       $v0, $t1
/* 4D0C38C 8007EE5C 0680013C */  lui        $at, %hi(D_800658A0)
/* 4D0C390 8007EE60 21082500 */  addu       $at, $at, $a1
/* 4D0C394 8007EE64 A0582594 */  lhu        $a1, %lo(D_800658A0)($at)
/* 4D0C398 8007EE68 C3270400 */  sra        $a0, $a0, 31
/* 4D0C39C 8007EE6C 002C0500 */  sll        $a1, $a1, 16
/* 4D0C3A0 8007EE70 43100C00 */  sra        $v0, $t4, 1
/* 4D0C3A4 8007EE74 23104400 */  subu       $v0, $v0, $a0
/* 4D0C3A8 8007EE78 00140200 */  sll        $v0, $v0, 16
/* 4D0C3AC 8007EE7C 03140200 */  sra        $v0, $v0, 16
/* 4D0C3B0 8007EE80 0C00648D */  lw         $a0, 0xC($t3)
/* 4D0C3B4 8007EE84 10680000 */  mfhi       $t5
/* 4D0C3B8 8007EE88 23208200 */  subu       $a0, $a0, $v0
/* 4D0C3BC 8007EE8C 03140500 */  sra        $v0, $a1, 16
/* 4D0C3C0 8007EE90 18004600 */  mult       $v0, $a2
/* 4D0C3C4 8007EE94 C31F0300 */  sra        $v1, $v1, 31
/* 4D0C3C8 8007EE98 2318A301 */  subu       $v1, $t5, $v1
/* 4D0C3CC 8007EE9C 001C0300 */  sll        $v1, $v1, 16
/* 4D0C3D0 8007EEA0 031C0300 */  sra        $v1, $v1, 16
/* 4D0C3D4 8007EEA4 1000668D */  lw         $a2, 0x10($t3)
/* 4D0C3D8 8007EEA8 21208300 */  addu       $a0, $a0, $v1
/* 4D0C3DC 8007EEAC 0C0044AD */  sw         $a0, 0xC($t2)
/* 4D0C3E0 8007EEB0 0680013C */  lui        $at, %hi(D_800658A0)
/* 4D0C3E4 8007EEB4 21082800 */  addu       $at, $at, $t0
/* 4D0C3E8 8007EEB8 A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 4D0C3EC 8007EEBC 10600000 */  mfhi       $t4
/* 4D0C3F0 8007EEC0 001C0300 */  sll        $v1, $v1, 16
/* 4D0C3F4 8007EEC4 03140300 */  sra        $v0, $v1, 16
/* 4D0C3F8 8007EEC8 18004900 */  mult       $v0, $t1
/* 4D0C3FC 8007EECC C32F0500 */  sra        $a1, $a1, 31
/* 4D0C400 8007EED0 C31F0300 */  sra        $v1, $v1, 31
/* 4D0C404 8007EED4 43100C00 */  sra        $v0, $t4, 1
/* 4D0C408 8007EED8 23104500 */  subu       $v0, $v0, $a1
/* 4D0C40C 8007EEDC 00140200 */  sll        $v0, $v0, 16
/* 4D0C410 8007EEE0 03140200 */  sra        $v0, $v0, 16
/* 4D0C414 8007EEE4 2330C200 */  subu       $a2, $a2, $v0
/* 4D0C418 8007EEE8 0780053C */  lui        $a1, %hi(D_8006C644)
/* 4D0C41C 8007EEEC 44C6A58C */  lw         $a1, %lo(D_8006C644)($a1)
/* 4D0C420 8007EEF0 10400000 */  mfhi       $t0
/* 4D0C424 8007EEF4 23180301 */  subu       $v1, $t0, $v1
/* 4D0C428 8007EEF8 001C0300 */  sll        $v1, $v1, 16
/* 4D0C42C 8007EEFC 031C0300 */  sra        $v1, $v1, 16
/* 4D0C430 8007EF00 2130C300 */  addu       $a2, $a2, $v1
/* 4D0C434 8007EF04 100046AD */  sw         $a2, 0x10($t2)
/* 4D0C438 8007EF08 0000C48D */  lw         $a0, 0x0($t6)
/* 4D0C43C 8007EF0C 00000000 */  nop
/* 4D0C440 8007EF10 0000828C */  lw         $v0, 0x0($a0)
/* 4D0C444 8007EF14 1400848C */  lw         $a0, 0x14($a0)
/* 4D0C448 8007EF18 06004380 */  lb         $v1, 0x6($v0)
/* 4D0C44C 8007EF1C 49004291 */  lbu        $v0, 0x49($t2)
/* 4D0C450 8007EF20 00190300 */  sll        $v1, $v1, 4
/* 4D0C454 8007EF24 21208300 */  addu       $a0, $a0, $v1
/* 4D0C458 8007EF28 80100200 */  sll        $v0, $v0, 2
/* 4D0C45C 8007EF2C 0680013C */  lui        $at, %hi(D_80067556)
/* 4D0C460 8007EF30 21082200 */  addu       $at, $at, $v0
/* 4D0C464 8007EF34 56752390 */  lbu        $v1, %lo(D_80067556)($at)
/* 4D0C468 8007EF38 49004291 */  lbu        $v0, 0x49($t2)
/* 4D0C46C 8007EF3C 21208300 */  addu       $a0, $a0, $v1
/* 4D0C470 8007EF40 21104500 */  addu       $v0, $v0, $a1
/* 4D0C474 8007EF44 C0100200 */  sll        $v0, $v0, 3
/* 4D0C478 8007EF48 F8014230 */  andi       $v0, $v0, 0x1F8
/* 4D0C47C 8007EF4C 140044AD */  sw         $a0, 0x14($t2)
/* 4D0C480 8007EF50 0680013C */  lui        $at, %hi(D_80065920)
/* 4D0C484 8007EF54 21082200 */  addu       $at, $at, $v0
/* 4D0C488 8007EF58 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 4D0C48C 8007EF5C 8000E724 */  addiu      $a3, $a3, 0x80
/* 4D0C490 8007EF60 40100300 */  sll        $v0, $v1, 1
/* 4D0C494 8007EF64 21104300 */  addu       $v0, $v0, $v1
/* 4D0C498 8007EF68 43120200 */  sra        $v0, $v0, 9
/* 4D0C49C 8007EF6C 3C004391 */  lbu        $v1, 0x3C($t2)
/* 4D0C4A0 8007EF70 2138E200 */  addu       $a3, $a3, $v0
/* 4D0C4A4 8007EF74 09006014 */  bnez       $v1, .Llevel_17_8007EF9C
/* 4D0C4A8 8007EF78 460047A1 */   sb        $a3, 0x46($t2)
/* 4D0C4AC 8007EF7C 0000C28D */  lw         $v0, 0x0($t6)
/* 4D0C4B0 8007EF80 00000000 */  nop
/* 4D0C4B4 8007EF84 0000438C */  lw         $v1, 0x0($v0)
/* 4D0C4B8 8007EF88 00000000 */  nop
/* 4D0C4BC 8007EF8C 07006290 */  lbu        $v0, 0x7($v1)
/* 4D0C4C0 8007EF90 00000000 */  nop
/* 4D0C4C4 8007EF94 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 4D0C4C8 8007EF98 070062A0 */  sb         $v0, 0x7($v1)
.Llevel_17_8007EF9C:
/* 4D0C4CC 8007EF9C 2800BF8F */  lw         $ra, 0x28($sp)
/* 4D0C4D0 8007EFA0 3000BD27 */  addiu      $sp, $sp, 0x30
/* 4D0C4D4 8007EFA4 0800E003 */  jr         $ra
/* 4D0C4D8 8007EFA8 00000000 */   nop
.size MobyUpdate_311_level_17, . - MobyUpdate_311_level_17
