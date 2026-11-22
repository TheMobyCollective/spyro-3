.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_311_level_45
/* 8D3A2EC 8007DDBC D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 8D3A2F0 8007DDC0 21508000 */  addu       $t2, $a0, $zero
/* 8D3A2F4 8007DDC4 2800BFAF */  sw         $ra, 0x28($sp)
/* 8D3A2F8 8007DDC8 00004E8D */  lw         $t6, 0x0($t2)
/* 8D3A2FC 8007DDCC 00000000 */  nop
/* 8D3A300 8007DDD0 0000CB8D */  lw         $t3, 0x0($t6)
/* 8D3A304 8007DDD4 00000000 */  nop
/* 8D3A308 8007DDD8 0000628D */  lw         $v0, 0x0($t3)
/* 8D3A30C 8007DDDC 00000000 */  nop
/* 8D3A310 8007DDE0 07004290 */  lbu        $v0, 0x7($v0)
/* 8D3A314 8007DDE4 00000000 */  nop
/* 8D3A318 8007DDE8 05004014 */  bnez       $v0, .Llevel_45_8007DE00
/* 8D3A31C 8007DDEC 6666063C */   lui       $a2, (0x66666667 >> 16)
/* 8D3A320 8007DDF0 C656010C */  jal        func_80055B18
/* 8D3A324 8007DDF4 00000000 */   nop
/* 8D3A328 8007DDF8 EBF70108 */  j          .Llevel_45_8007DFAC
/* 8D3A32C 8007DDFC 00000000 */   nop
.Llevel_45_8007DE00:
/* 8D3A330 8007DE00 46006791 */  lbu        $a3, 0x46($t3)
/* 8D3A334 8007DE04 00000000 */  nop
/* 8D3A338 8007DE08 40280700 */  sll        $a1, $a3, 1
/* 8D3A33C 8007DE0C 0680013C */  lui        $at, %hi(D_80065920)
/* 8D3A340 8007DE10 21082500 */  addu       $at, $at, $a1
/* 8D3A344 8007DE14 20592494 */  lhu        $a0, %lo(D_80065920)($at)
/* 8D3A348 8007DE18 6766C634 */  ori        $a2, $a2, (0x66666667 & 0xFFFF)
/* 8D3A34C 8007DE1C 00240400 */  sll        $a0, $a0, 16
/* 8D3A350 8007DE20 03140400 */  sra        $v0, $a0, 16
/* 8D3A354 8007DE24 18004600 */  mult       $v0, $a2
/* 8D3A358 8007DE28 49004291 */  lbu        $v0, 0x49($t2)
/* 8D3A35C 8007DE2C 5555093C */  lui        $t1, (0x55555556 >> 16)
/* 8D3A360 8007DE30 80100200 */  sll        $v0, $v0, 2
/* 8D3A364 8007DE34 0680013C */  lui        $at, %hi(D_80067555)
/* 8D3A368 8007DE38 21082200 */  addu       $at, $at, $v0
/* 8D3A36C 8007DE3C 55752290 */  lbu        $v0, %lo(D_80067555)($at)
/* 8D3A370 8007DE40 56552935 */  ori        $t1, $t1, (0x55555556 & 0xFFFF)
/* 8D3A374 8007DE44 2138E200 */  addu       $a3, $a3, $v0
/* 8D3A378 8007DE48 FF00E830 */  andi       $t0, $a3, 0xFF
/* 8D3A37C 8007DE4C 40400800 */  sll        $t0, $t0, 1
/* 8D3A380 8007DE50 0680013C */  lui        $at, %hi(D_80065920)
/* 8D3A384 8007DE54 21082800 */  addu       $at, $at, $t0
/* 8D3A388 8007DE58 20592394 */  lhu        $v1, %lo(D_80065920)($at)
/* 8D3A38C 8007DE5C 10600000 */  mfhi       $t4
/* 8D3A390 8007DE60 001C0300 */  sll        $v1, $v1, 16
/* 8D3A394 8007DE64 03140300 */  sra        $v0, $v1, 16
/* 8D3A398 8007DE68 18004900 */  mult       $v0, $t1
/* 8D3A39C 8007DE6C 0680013C */  lui        $at, %hi(D_800658A0)
/* 8D3A3A0 8007DE70 21082500 */  addu       $at, $at, $a1
/* 8D3A3A4 8007DE74 A0582594 */  lhu        $a1, %lo(D_800658A0)($at)
/* 8D3A3A8 8007DE78 C3270400 */  sra        $a0, $a0, 31
/* 8D3A3AC 8007DE7C 002C0500 */  sll        $a1, $a1, 16
/* 8D3A3B0 8007DE80 43100C00 */  sra        $v0, $t4, 1
/* 8D3A3B4 8007DE84 23104400 */  subu       $v0, $v0, $a0
/* 8D3A3B8 8007DE88 00140200 */  sll        $v0, $v0, 16
/* 8D3A3BC 8007DE8C 03140200 */  sra        $v0, $v0, 16
/* 8D3A3C0 8007DE90 0C00648D */  lw         $a0, 0xC($t3)
/* 8D3A3C4 8007DE94 10680000 */  mfhi       $t5
/* 8D3A3C8 8007DE98 23208200 */  subu       $a0, $a0, $v0
/* 8D3A3CC 8007DE9C 03140500 */  sra        $v0, $a1, 16
/* 8D3A3D0 8007DEA0 18004600 */  mult       $v0, $a2
/* 8D3A3D4 8007DEA4 C31F0300 */  sra        $v1, $v1, 31
/* 8D3A3D8 8007DEA8 2318A301 */  subu       $v1, $t5, $v1
/* 8D3A3DC 8007DEAC 001C0300 */  sll        $v1, $v1, 16
/* 8D3A3E0 8007DEB0 031C0300 */  sra        $v1, $v1, 16
/* 8D3A3E4 8007DEB4 1000668D */  lw         $a2, 0x10($t3)
/* 8D3A3E8 8007DEB8 21208300 */  addu       $a0, $a0, $v1
/* 8D3A3EC 8007DEBC 0C0044AD */  sw         $a0, 0xC($t2)
/* 8D3A3F0 8007DEC0 0680013C */  lui        $at, %hi(D_800658A0)
/* 8D3A3F4 8007DEC4 21082800 */  addu       $at, $at, $t0
/* 8D3A3F8 8007DEC8 A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 8D3A3FC 8007DECC 10600000 */  mfhi       $t4
/* 8D3A400 8007DED0 001C0300 */  sll        $v1, $v1, 16
/* 8D3A404 8007DED4 03140300 */  sra        $v0, $v1, 16
/* 8D3A408 8007DED8 18004900 */  mult       $v0, $t1
/* 8D3A40C 8007DEDC C32F0500 */  sra        $a1, $a1, 31
/* 8D3A410 8007DEE0 C31F0300 */  sra        $v1, $v1, 31
/* 8D3A414 8007DEE4 43100C00 */  sra        $v0, $t4, 1
/* 8D3A418 8007DEE8 23104500 */  subu       $v0, $v0, $a1
/* 8D3A41C 8007DEEC 00140200 */  sll        $v0, $v0, 16
/* 8D3A420 8007DEF0 03140200 */  sra        $v0, $v0, 16
/* 8D3A424 8007DEF4 2330C200 */  subu       $a2, $a2, $v0
/* 8D3A428 8007DEF8 0780053C */  lui        $a1, %hi(D_8006C644)
/* 8D3A42C 8007DEFC 44C6A58C */  lw         $a1, %lo(D_8006C644)($a1)
/* 8D3A430 8007DF00 10400000 */  mfhi       $t0
/* 8D3A434 8007DF04 23180301 */  subu       $v1, $t0, $v1
/* 8D3A438 8007DF08 001C0300 */  sll        $v1, $v1, 16
/* 8D3A43C 8007DF0C 031C0300 */  sra        $v1, $v1, 16
/* 8D3A440 8007DF10 2130C300 */  addu       $a2, $a2, $v1
/* 8D3A444 8007DF14 100046AD */  sw         $a2, 0x10($t2)
/* 8D3A448 8007DF18 0000C48D */  lw         $a0, 0x0($t6)
/* 8D3A44C 8007DF1C 00000000 */  nop
/* 8D3A450 8007DF20 0000828C */  lw         $v0, 0x0($a0)
/* 8D3A454 8007DF24 1400848C */  lw         $a0, 0x14($a0)
/* 8D3A458 8007DF28 06004380 */  lb         $v1, 0x6($v0)
/* 8D3A45C 8007DF2C 49004291 */  lbu        $v0, 0x49($t2)
/* 8D3A460 8007DF30 00190300 */  sll        $v1, $v1, 4
/* 8D3A464 8007DF34 21208300 */  addu       $a0, $a0, $v1
/* 8D3A468 8007DF38 80100200 */  sll        $v0, $v0, 2
/* 8D3A46C 8007DF3C 0680013C */  lui        $at, %hi(D_80067556)
/* 8D3A470 8007DF40 21082200 */  addu       $at, $at, $v0
/* 8D3A474 8007DF44 56752390 */  lbu        $v1, %lo(D_80067556)($at)
/* 8D3A478 8007DF48 49004291 */  lbu        $v0, 0x49($t2)
/* 8D3A47C 8007DF4C 21208300 */  addu       $a0, $a0, $v1
/* 8D3A480 8007DF50 21104500 */  addu       $v0, $v0, $a1
/* 8D3A484 8007DF54 C0100200 */  sll        $v0, $v0, 3
/* 8D3A488 8007DF58 F8014230 */  andi       $v0, $v0, 0x1F8
/* 8D3A48C 8007DF5C 140044AD */  sw         $a0, 0x14($t2)
/* 8D3A490 8007DF60 0680013C */  lui        $at, %hi(D_80065920)
/* 8D3A494 8007DF64 21082200 */  addu       $at, $at, $v0
/* 8D3A498 8007DF68 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 8D3A49C 8007DF6C 8000E724 */  addiu      $a3, $a3, 0x80
/* 8D3A4A0 8007DF70 40100300 */  sll        $v0, $v1, 1
/* 8D3A4A4 8007DF74 21104300 */  addu       $v0, $v0, $v1
/* 8D3A4A8 8007DF78 43120200 */  sra        $v0, $v0, 9
/* 8D3A4AC 8007DF7C 3C004391 */  lbu        $v1, 0x3C($t2)
/* 8D3A4B0 8007DF80 2138E200 */  addu       $a3, $a3, $v0
/* 8D3A4B4 8007DF84 09006014 */  bnez       $v1, .Llevel_45_8007DFAC
/* 8D3A4B8 8007DF88 460047A1 */   sb        $a3, 0x46($t2)
/* 8D3A4BC 8007DF8C 0000C28D */  lw         $v0, 0x0($t6)
/* 8D3A4C0 8007DF90 00000000 */  nop
/* 8D3A4C4 8007DF94 0000438C */  lw         $v1, 0x0($v0)
/* 8D3A4C8 8007DF98 00000000 */  nop
/* 8D3A4CC 8007DF9C 07006290 */  lbu        $v0, 0x7($v1)
/* 8D3A4D0 8007DFA0 00000000 */  nop
/* 8D3A4D4 8007DFA4 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 8D3A4D8 8007DFA8 070062A0 */  sb         $v0, 0x7($v1)
.Llevel_45_8007DFAC:
/* 8D3A4DC 8007DFAC 2800BF8F */  lw         $ra, 0x28($sp)
/* 8D3A4E0 8007DFB0 3000BD27 */  addiu      $sp, $sp, 0x30
/* 8D3A4E4 8007DFB4 0800E003 */  jr         $ra
/* 8D3A4E8 8007DFB8 00000000 */   nop
.size MobyUpdate_311_level_45, . - MobyUpdate_311_level_45
