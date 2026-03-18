.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_27_8007A3C0
/* 63EE8F0 8007A3C0 60FFBD27 */  addiu      $sp, $sp, -0xA0
/* 63EE8F4 8007A3C4 8C00B5AF */  sw         $s5, 0x8C($sp)
/* 63EE8F8 8007A3C8 21A88000 */  addu       $s5, $a0, $zero
/* 63EE8FC 8007A3CC 0C00A426 */  addiu      $a0, $s5, 0xC
/* 63EE900 8007A3D0 9800BEAF */  sw         $fp, 0x98($sp)
/* 63EE904 8007A3D4 21F00000 */  addu       $fp, $zero, $zero
/* 63EE908 8007A3D8 9C00BFAF */  sw         $ra, 0x9C($sp)
/* 63EE90C 8007A3DC 9400B7AF */  sw         $s7, 0x94($sp)
/* 63EE910 8007A3E0 9000B6AF */  sw         $s6, 0x90($sp)
/* 63EE914 8007A3E4 8800B4AF */  sw         $s4, 0x88($sp)
/* 63EE918 8007A3E8 8400B3AF */  sw         $s3, 0x84($sp)
/* 63EE91C 8007A3EC 8000B2AF */  sw         $s2, 0x80($sp)
/* 63EE920 8007A3F0 7C00B1AF */  sw         $s1, 0x7C($sp)
/* 63EE924 8007A3F4 7800B0AF */  sw         $s0, 0x78($sp)
/* 63EE928 8007A3F8 6000A0AF */  sw         $zero, 0x60($sp)
/* 63EE92C 8007A3FC 0000B48E */  lw         $s4, 0x0($s5)
/* 63EE930 8007A400 21800000 */  addu       $s0, $zero, $zero
/* 63EE934 8007A404 3800838E */  lw         $v1, 0x38($s4)
/* 63EE938 8007A408 01001124 */  addiu      $s1, $zero, 0x1
/* 63EE93C 8007A40C 40100300 */  sll        $v0, $v1, 1
/* 63EE940 8007A410 21104300 */  addu       $v0, $v0, $v1
/* 63EE944 8007A414 80100200 */  sll        $v0, $v0, 2
/* 63EE948 8007A418 23104300 */  subu       $v0, $v0, $v1
/* 63EE94C 8007A41C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 63EE950 8007A420 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 63EE954 8007A424 C0100200 */  sll        $v0, $v0, 3
/* 63EE958 8007A428 21906200 */  addu       $s2, $v1, $v0
/* 63EE95C 8007A42C 0000498E */  lw         $t1, 0x0($s2)
/* 63EE960 8007A430 0C004526 */  addiu      $a1, $s2, 0xC
/* 63EE964 8007A434 CD3C010C */  jal        func_8004F334
/* 63EE968 8007A438 5000A9AF */   sw        $t1, 0x50($sp)
/* 63EE96C 8007A43C 5800A2AF */  sw         $v0, 0x58($sp)
/* 63EE970 8007A440 02000224 */  addiu      $v0, $zero, 0x2
/* 63EE974 8007A444 0780043C */  lui        $a0, %hi(D_8006C7C4)
/* 63EE978 8007A448 C4C7848C */  lw         $a0, %lo(D_8006C7C4)($a0)
/* 63EE97C 8007A44C 0780033C */  lui        $v1, %hi(D_8006C409)
/* 63EE980 8007A450 09C46390 */  lbu        $v1, %lo(D_8006C409)($v1)
/* 63EE984 8007A454 06008214 */  bne        $a0, $v0, .Llevel_27_8007A470
/* 63EE988 8007A458 00000000 */   nop
/* 63EE98C 8007A45C FCFF6324 */  addiu      $v1, $v1, -0x4
/* 63EE990 8007A460 0A006104 */  bgez       $v1, .Llevel_27_8007A48C
/* 63EE994 8007A464 00000000 */   nop
/* 63EE998 8007A468 23E90108 */  j          .Llevel_27_8007A48C
/* 63EE99C 8007A46C 21180000 */   addu      $v1, $zero, $zero
.Llevel_27_8007A470:
/* 63EE9A0 8007A470 03009114 */  bne        $a0, $s1, .Llevel_27_8007A480
/* 63EE9A4 8007A474 00000000 */   nop
/* 63EE9A8 8007A478 23E90108 */  j          .Llevel_27_8007A48C
/* 63EE9AC 8007A47C 02006324 */   addiu     $v1, $v1, 0x2
.Llevel_27_8007A480:
/* 63EE9B0 8007A480 02008014 */  bnez       $a0, .Llevel_27_8007A48C
/* 63EE9B4 8007A484 00000000 */   nop
/* 63EE9B8 8007A488 05006324 */  addiu      $v1, $v1, 0x5
.Llevel_27_8007A48C:
/* 63EE9BC 8007A48C 0780023C */  lui        $v0, %hi(D_8007158D)
/* 63EE9C0 8007A490 8D154290 */  lbu        $v0, %lo(D_8007158D)($v0)
/* 63EE9C4 8007A494 00000000 */  nop
/* 63EE9C8 8007A498 02004010 */  beqz       $v0, .Llevel_27_8007A4A4
/* 63EE9CC 8007A49C 00000000 */   nop
/* 63EE9D0 8007A4A0 21180000 */  addu       $v1, $zero, $zero
.Llevel_27_8007A4A4:
/* 63EE9D4 8007A4A4 0200601C */  bgtz       $v1, .Llevel_27_8007A4B0
/* 63EE9D8 8007A4A8 05006228 */   slti      $v0, $v1, 0x5
/* 63EE9DC 8007A4AC 21880000 */  addu       $s1, $zero, $zero
.Llevel_27_8007A4B0:
/* 63EE9E0 8007A4B0 02004014 */  bnez       $v0, .Llevel_27_8007A4BC
/* 63EE9E4 8007A4B4 00000000 */   nop
/* 63EE9E8 8007A4B8 02001124 */  addiu      $s1, $zero, 0x2
.Llevel_27_8007A4BC:
/* 63EE9EC 8007A4BC 36008286 */  lh         $v0, 0x36($s4)
/* 63EE9F0 8007A4C0 00000000 */  nop
/* 63EE9F4 8007A4C4 06004014 */  bnez       $v0, .Llevel_27_8007A4E0
/* 63EE9F8 8007A4C8 B4000424 */   addiu     $a0, $zero, 0xB4
/* 63EE9FC 8007A4CC F4010524 */  addiu      $a1, $zero, 0x1F4
/* 63EEA00 8007A4D0 01000224 */  addiu      $v0, $zero, 0x1
/* 63EEA04 8007A4D4 DBD8000C */  jal        func_8003636C
/* 63EEA08 8007A4D8 360082A6 */   sh        $v0, 0x36($s4)
/* 63EEA0C 8007A4DC 340082A6 */  sh         $v0, 0x34($s4)
.Llevel_27_8007A4E0:
/* 63EEA10 8007A4E0 4C00828E */  lw         $v0, 0x4C($s4)
/* 63EEA14 8007A4E4 00000000 */  nop
/* 63EEA18 8007A4E8 04004014 */  bnez       $v0, .Llevel_27_8007A4FC
/* 63EEA1C 8007A4EC 00000000 */   nop
/* 63EEA20 8007A4F0 0480023C */  lui        $v0, %hi(func_8003A40C)
/* 63EEA24 8007A4F4 0CA44224 */  addiu      $v0, $v0, %lo(func_8003A40C)
/* 63EEA28 8007A4F8 4C0082AE */  sw         $v0, 0x4C($s4)
.Llevel_27_8007A4FC:
/* 63EEA2C 8007A4FC 4C00838E */  lw         $v1, 0x4C($s4)
/* 63EEA30 8007A500 0480023C */  lui        $v0, %hi(func_8003A584)
/* 63EEA34 8007A504 84A54224 */  addiu      $v0, $v0, %lo(func_8003A584)
/* 63EEA38 8007A508 2B106200 */  sltu       $v0, $v1, $v0
/* 63EEA3C 8007A50C 19004010 */  beqz       $v0, .Llevel_27_8007A574
/* 63EEA40 8007A510 21200000 */   addu      $a0, $zero, $zero
/* 63EEA44 8007A514 0580053C */  lui        $a1, (0x80050000 >> 16)
/* 63EEA48 8007A518 00006290 */  lbu        $v0, 0x0($v1)
/* 63EEA4C 8007A51C 4800838E */  lw         $v1, 0x48($s4)
/* 63EEA50 8007A520 00160200 */  sll        $v0, $v0, 24
/* 63EEA54 8007A524 26186200 */  xor        $v1, $v1, $v0
/* 63EEA58 8007A528 480083AE */  sw         $v1, 0x48($s4)
.Llevel_27_8007A52C:
/* 63EEA5C 8007A52C 4800828E */  lw         $v0, 0x48($s4)
/* 63EEA60 8007A530 00000000 */  nop
/* 63EEA64 8007A534 04004104 */  bgez       $v0, .Llevel_27_8007A548
/* 63EEA68 8007A538 00000000 */   nop
/* 63EEA6C 8007A53C 40100200 */  sll        $v0, $v0, 1
/* 63EEA70 8007A540 53E90108 */  j          .Llevel_27_8007A54C
/* 63EEA74 8007A544 26104500 */   xor       $v0, $v0, $a1
.Llevel_27_8007A548:
/* 63EEA78 8007A548 40100200 */  sll        $v0, $v0, 1
.Llevel_27_8007A54C:
/* 63EEA7C 8007A54C 480082AE */  sw         $v0, 0x48($s4)
/* 63EEA80 8007A550 01008424 */  addiu      $a0, $a0, 0x1
/* 63EEA84 8007A554 08008228 */  slti       $v0, $a0, 0x8
/* 63EEA88 8007A558 F4FF4014 */  bnez       $v0, .Llevel_27_8007A52C
/* 63EEA8C 8007A55C 00000000 */   nop
/* 63EEA90 8007A560 4C00828E */  lw         $v0, 0x4C($s4)
/* 63EEA94 8007A564 00000000 */  nop
/* 63EEA98 8007A568 01004224 */  addiu      $v0, $v0, 0x1
/* 63EEA9C 8007A56C 98E90108 */  j          .Llevel_27_8007A660
/* 63EEAA0 8007A570 4C0082AE */   sw        $v0, 0x4C($s4)
.Llevel_27_8007A574:
/* 63EEAA4 8007A574 0F00053C */  lui        $a1, (0xFFFF0 >> 16)
/* 63EEAA8 8007A578 F0FFA534 */  ori        $a1, $a1, (0xFFFF0 & 0xFFFF)
/* 63EEAAC 8007A57C F0FF043C */  lui        $a0, (0xFFF0000F >> 16)
/* 63EEAB0 8007A580 0F008434 */  ori        $a0, $a0, (0xFFF0000F & 0xFFFF)
/* 63EEAB4 8007A584 4800828E */  lw         $v0, 0x48($s4)
/* 63EEAB8 8007A588 0780033C */  lui        $v1, %hi(D_800722B8)
/* 63EEABC 8007A58C B822638C */  lw         $v1, %lo(D_800722B8)($v1)
/* 63EEAC0 8007A590 03130200 */  sra        $v0, $v0, 12
/* 63EEAC4 8007A594 24104500 */  and        $v0, $v0, $a1
/* 63EEAC8 8007A598 24186400 */  and        $v1, $v1, $a0
/* 63EEACC 8007A59C 0780043C */  lui        $a0, %hi(unk_ovlheader_80074448)
/* 63EEAD0 8007A5A0 4844848C */  lw         $a0, %lo(unk_ovlheader_80074448)($a0)
/* 63EEAD4 8007A5A4 25104300 */  or         $v0, $v0, $v1
/* 63EEAD8 8007A5A8 2D004410 */  beq        $v0, $a0, .Llevel_27_8007A660
/* 63EEADC 8007A5AC 00000000 */   nop
/* 63EEAE0 8007A5B0 0780023C */  lui        $v0, %hi(D_80070300 + 1)
/* 63EEAE4 8007A5B4 01034290 */  lbu        $v0, %lo(D_80070300 + 1)($v0)
/* 63EEAE8 8007A5B8 0780043C */  lui        $a0, %hi(D_80070300 + 3)
/* 63EEAEC 8007A5BC 03038490 */  lbu        $a0, %lo(D_80070300 + 3)($a0)
/* 63EEAF0 8007A5C0 0780033C */  lui        $v1, %hi(D_80070300 + 4)
/* 63EEAF4 8007A5C4 04036390 */  lbu        $v1, %lo(D_80070300 + 4)($v1)
/* 63EEAF8 8007A5C8 01004238 */  xori       $v0, $v0, 0x1
/* 63EEAFC 8007A5CC 0780013C */  lui        $at, %hi(D_80070300 + 1)
/* 63EEB00 8007A5D0 010322A0 */  sb         $v0, %lo(D_80070300 + 1)($at)
/* 63EEB04 8007A5D4 0780023C */  lui        $v0, %hi(D_80070300 + 2)
/* 63EEB08 8007A5D8 02034290 */  lbu        $v0, %lo(D_80070300 + 2)($v0)
/* 63EEB0C 8007A5DC 01006338 */  xori       $v1, $v1, 0x1
/* 63EEB10 8007A5E0 0780013C */  lui        $at, %hi(D_80070300 + 4)
/* 63EEB14 8007A5E4 040323A0 */  sb         $v1, %lo(D_80070300 + 4)($at)
/* 63EEB18 8007A5E8 0780033C */  lui        $v1, %hi(D_80070300 + 11)
/* 63EEB1C 8007A5EC 0B036390 */  lbu        $v1, %lo(D_80070300 + 11)($v1)
/* 63EEB20 8007A5F0 0780013C */  lui        $at, %hi(D_80071587)
/* 63EEB24 8007A5F4 871520A0 */  sb         $zero, %lo(D_80071587)($at)
/* 63EEB28 8007A5F8 0780013C */  lui        $at, %hi(D_80071586)
/* 63EEB2C 8007A5FC 861520A0 */  sb         $zero, %lo(D_80071586)($at)
/* 63EEB30 8007A600 0780013C */  lui        $at, %hi(D_80070300 + 3)
/* 63EEB34 8007A604 030324A0 */  sb         $a0, %lo(D_80070300 + 3)($at)
/* 63EEB38 8007A608 01004238 */  xori       $v0, $v0, 0x1
/* 63EEB3C 8007A60C 0780013C */  lui        $at, %hi(D_80070300 + 2)
/* 63EEB40 8007A610 020322A0 */  sb         $v0, %lo(D_80070300 + 2)($at)
/* 63EEB44 8007A614 0780023C */  lui        $v0, %hi(D_80070300 + 10)
/* 63EEB48 8007A618 0A034290 */  lbu        $v0, %lo(D_80070300 + 10)($v0)
/* 63EEB4C 8007A61C 01006338 */  xori       $v1, $v1, 0x1
/* 63EEB50 8007A620 0780013C */  lui        $at, %hi(D_80070300 + 11)
/* 63EEB54 8007A624 0B0323A0 */  sb         $v1, %lo(D_80070300 + 11)($at)
/* 63EEB58 8007A628 0780033C */  lui        $v1, %hi(D_80070300 + 13)
/* 63EEB5C 8007A62C 0D036390 */  lbu        $v1, %lo(D_80070300 + 13)($v1)
/* 63EEB60 8007A630 01004238 */  xori       $v0, $v0, 0x1
/* 63EEB64 8007A634 0780013C */  lui        $at, %hi(D_80070300 + 10)
/* 63EEB68 8007A638 0A0322A0 */  sb         $v0, %lo(D_80070300 + 10)($at)
/* 63EEB6C 8007A63C 0780023C */  lui        $v0, %hi(D_80070300 + 12)
/* 63EEB70 8007A640 0C034290 */  lbu        $v0, %lo(D_80070300 + 12)($v0)
/* 63EEB74 8007A644 01006338 */  xori       $v1, $v1, 0x1
/* 63EEB78 8007A648 0780013C */  lui        $at, %hi(D_80070300 + 13)
/* 63EEB7C 8007A64C 0D0323A0 */  sb         $v1, %lo(D_80070300 + 13)($at)
/* 63EEB80 8007A650 01004238 */  xori       $v0, $v0, 0x1
/* 63EEB84 8007A654 0780013C */  lui        $at, %hi(D_80070300 + 12)
/* 63EEB88 8007A658 0C0322A0 */  sb         $v0, %lo(D_80070300 + 12)($at)
/* 63EEB8C 8007A65C 480080AE */  sw         $zero, 0x48($s4)
.Llevel_27_8007A660:
/* 63EEB90 8007A660 4800A392 */  lbu        $v1, 0x48($s5)
/* 63EEB94 8007A664 00000000 */  nop
/* 63EEB98 8007A668 05006010 */  beqz       $v1, .Llevel_27_8007A680
/* 63EEB9C 8007A66C 01000224 */   addiu     $v0, $zero, 0x1
/* 63EEBA0 8007A670 44006210 */  beq        $v1, $v0, .Llevel_27_8007A784
/* 63EEBA4 8007A674 00000000 */   nop
/* 63EEBA8 8007A678 07EC0108 */  j          .Llevel_27_8007B01C
/* 63EEBAC 8007A67C 00000000 */   nop
.Llevel_27_8007A680:
/* 63EEBB0 8007A680 4900A292 */  lbu        $v0, 0x49($s5)
/* 63EEBB4 8007A684 00000000 */  nop
/* 63EEBB8 8007A688 18004010 */  beqz       $v0, .Llevel_27_8007A6EC
/* 63EEBBC 8007A68C 01000324 */   addiu     $v1, $zero, 0x1
/* 63EEBC0 8007A690 0780023C */  lui        $v0, %hi(D_8006E344)
/* 63EEBC4 8007A694 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 63EEBC8 8007A698 00000000 */  nop
/* 63EEBCC 8007A69C 5F024310 */  beq        $v0, $v1, .Llevel_27_8007B01C
/* 63EEBD0 8007A6A0 44009026 */   addiu     $s0, $s4, 0x44
/* 63EEBD4 8007A6A4 21200002 */  addu       $a0, $s0, $zero
/* 63EEBD8 8007A6A8 04000524 */  addiu      $a1, $zero, 0x4
/* 63EEBDC 8007A6AC 0780123C */  lui        $s2, %hi(D_8006D088)
/* 63EEBE0 8007A6B0 88D05226 */  addiu      $s2, $s2, %lo(D_8006D088)
/* 63EEBE4 8007A6B4 21304002 */  addu       $a2, $s2, $zero
/* 63EEBE8 8007A6B8 EDED000C */  jal        func_8003B7B4
/* 63EEBEC 8007A6BC 440083AE */   sw        $v1, 0x44($s4)
/* 63EEBF0 8007A6C0 21200002 */  addu       $a0, $s0, $zero
/* 63EEBF4 8007A6C4 04000524 */  addiu      $a1, $zero, 0x4
/* 63EEBF8 8007A6C8 0780113C */  lui        $s1, %hi(D_8006C7F8)
/* 63EEBFC 8007A6CC F8C73126 */  addiu      $s1, $s1, %lo(D_8006C7F8)
/* 63EEC00 8007A6D0 EDED000C */  jal        func_8003B7B4
/* 63EEC04 8007A6D4 21302002 */   addu      $a2, $s1, $zero
/* 63EEC08 8007A6D8 2120A002 */  addu       $a0, $s5, $zero
/* 63EEC0C 8007A6DC 01000524 */  addiu      $a1, $zero, 0x1
/* 63EEC10 8007A6E0 01000224 */  addiu      $v0, $zero, 0x1
/* 63EEC14 8007A6E4 C2E90108 */  j          .Llevel_27_8007A708
/* 63EEC18 8007A6E8 4800A2A2 */   sb        $v0, 0x48($s5)
.Llevel_27_8007A6EC:
/* 63EEC1C 8007A6EC 4400828E */  lw         $v0, 0x44($s4)
/* 63EEC20 8007A6F0 00000000 */  nop
/* 63EEC24 8007A6F4 12004010 */  beqz       $v0, .Llevel_27_8007A740
/* 63EEC28 8007A6F8 01000224 */   addiu     $v0, $zero, 0x1
/* 63EEC2C 8007A6FC 4800A2A2 */  sb         $v0, 0x48($s5)
/* 63EEC30 8007A700 2120A002 */  addu       $a0, $s5, $zero
/* 63EEC34 8007A704 01000524 */  addiu      $a1, $zero, 0x1
.Llevel_27_8007A708:
/* 63EEC38 8007A708 D0D3000C */  jal        func_80034F40
/* 63EEC3C 8007A70C 4800B026 */   addiu     $s0, $s5, 0x48
/* 63EEC40 8007A710 21200002 */  addu       $a0, $s0, $zero
/* 63EEC44 8007A714 0780063C */  lui        $a2, %hi(D_8006D088)
/* 63EEC48 8007A718 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 63EEC4C 8007A71C EDED000C */  jal        func_8003B7B4
/* 63EEC50 8007A720 01000524 */   addiu     $a1, $zero, 0x1
/* 63EEC54 8007A724 21200002 */  addu       $a0, $s0, $zero
/* 63EEC58 8007A728 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 63EEC5C 8007A72C F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 63EEC60 8007A730 EDED000C */  jal        func_8003B7B4
/* 63EEC64 8007A734 01000524 */   addiu     $a1, $zero, 0x1
/* 63EEC68 8007A738 07EC0108 */  j          .Llevel_27_8007B01C
/* 63EEC6C 8007A73C 00000000 */   nop
.Llevel_27_8007A740:
/* 63EEC70 8007A740 01001024 */  addiu      $s0, $zero, 0x1
/* 63EEC74 8007A744 3800A0A6 */  sh         $zero, 0x38($s5)
/* 63EEC78 8007A748 050090A2 */  sb         $s0, 0x5($s4)
/* 63EEC7C 8007A74C 0780023C */  lui        $v0, %hi(D_8006C598)
/* 63EEC80 8007A750 98C5428C */  lw         $v0, %lo(D_8006C598)($v0)
/* 63EEC84 8007A754 00000000 */  nop
/* 63EEC88 8007A758 30024014 */  bnez       $v0, .Llevel_27_8007B01C
/* 63EEC8C 8007A75C 2120A002 */   addu      $a0, $s5, $zero
/* 63EEC90 8007A760 EFDE000C */  jal        func_80037BBC
/* 63EEC94 8007A764 21280000 */   addu      $a1, $zero, $zero
/* 63EEC98 8007A768 2C024010 */  beqz       $v0, .Llevel_27_8007B01C
/* 63EEC9C 8007A76C 2120A002 */   addu      $a0, $s5, $zero
/* 63EECA0 8007A770 01000524 */  addiu      $a1, $zero, 0x1
/* 63EECA4 8007A774 B944010C */  jal        func_800512E4
/* 63EECA8 8007A778 21300000 */   addu      $a2, $zero, $zero
/* 63EECAC 8007A77C 07EC0108 */  j          .Llevel_27_8007B01C
/* 63EECB0 8007A780 4900B0A2 */   sb        $s0, 0x49($s5)
.Llevel_27_8007A784:
/* 63EECB4 8007A784 0780033C */  lui        $v1, %hi(D_8006E788)
/* 63EECB8 8007A788 88E76324 */  addiu      $v1, $v1, %lo(D_8006E788)
/* 63EECBC 8007A78C 0000628C */  lw         $v0, 0x0($v1)
/* 63EECC0 8007A790 00000000 */  nop
/* 63EECC4 8007A794 1D004010 */  beqz       $v0, .Llevel_27_8007A80C
/* 63EECC8 8007A798 04006324 */   addiu     $v1, $v1, 0x4
/* 63EECCC 8007A79C 7F020824 */  addiu      $t0, $zero, 0x27F
/* 63EECD0 8007A7A0 80020724 */  addiu      $a3, $zero, 0x280
/* 63EECD4 8007A7A4 BF010624 */  addiu      $a2, $zero, 0x1BF
/* 63EECD8 8007A7A8 10000524 */  addiu      $a1, $zero, 0x10
/* 63EECDC 8007A7AC D3000424 */  addiu      $a0, $zero, 0xD3
.Llevel_27_8007A7B0:
/* 63EECE0 8007A7B0 36004284 */  lh         $v0, 0x36($v0)
/* 63EECE4 8007A7B4 00000000 */  nop
/* 63EECE8 8007A7B8 05004814 */  bne        $v0, $t0, .Llevel_27_8007A7D0
/* 63EECEC 8007A7BC 00000000 */   nop
/* 63EECF0 8007A7C0 6000A98F */  lw         $t1, 0x60($sp)
/* 63EECF4 8007A7C4 00000000 */  nop
/* 63EECF8 8007A7C8 01002925 */  addiu      $t1, $t1, 0x1
/* 63EECFC 8007A7CC 6000A9AF */  sw         $t1, 0x60($sp)
.Llevel_27_8007A7D0:
/* 63EED00 8007A7D0 02004714 */  bne        $v0, $a3, .Llevel_27_8007A7DC
/* 63EED04 8007A7D4 00000000 */   nop
/* 63EED08 8007A7D8 0100DE27 */  addiu      $fp, $fp, 0x1
.Llevel_27_8007A7DC:
/* 63EED0C 8007A7DC 02004614 */  bne        $v0, $a2, .Llevel_27_8007A7E8
/* 63EED10 8007A7E0 00000000 */   nop
/* 63EED14 8007A7E4 01001026 */  addiu      $s0, $s0, 0x1
.Llevel_27_8007A7E8:
/* 63EED18 8007A7E8 03004510 */  beq        $v0, $a1, .Llevel_27_8007A7F8
/* 63EED1C 8007A7EC 00000000 */   nop
/* 63EED20 8007A7F0 02004414 */  bne        $v0, $a0, .Llevel_27_8007A7FC
/* 63EED24 8007A7F4 00000000 */   nop
.Llevel_27_8007A7F8:
/* 63EED28 8007A7F8 01001026 */  addiu      $s0, $s0, 0x1
.Llevel_27_8007A7FC:
/* 63EED2C 8007A7FC 0000628C */  lw         $v0, 0x0($v1)
/* 63EED30 8007A800 00000000 */  nop
/* 63EED34 8007A804 EAFF4014 */  bnez       $v0, .Llevel_27_8007A7B0
/* 63EED38 8007A808 04006324 */   addiu     $v1, $v1, 0x4
.Llevel_27_8007A80C:
/* 63EED3C 8007A80C 3D00A392 */  lbu        $v1, 0x3D($s5)
/* 63EED40 8007A810 01000224 */  addiu      $v0, $zero, 0x1
/* 63EED44 8007A814 09006210 */  beq        $v1, $v0, .Llevel_27_8007A83C
/* 63EED48 8007A818 2120A002 */   addu      $a0, $s5, $zero
/* 63EED4C 8007A81C 72000224 */  addiu      $v0, $zero, 0x72
/* 63EED50 8007A820 0780013C */  lui        $at, %hi(D_8006C770)
/* 63EED54 8007A824 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 63EED58 8007A828 4000A2A2 */  sb         $v0, 0x40($s5)
/* 63EED5C 8007A82C 01000224 */  addiu      $v0, $zero, 0x1
/* 63EED60 8007A830 3D00A2A2 */  sb         $v0, 0x3D($s5)
/* 63EED64 8007A834 CDD5000C */  jal        func_80035734
/* 63EED68 8007A838 3F00A0A2 */   sb        $zero, 0x3F($s5)
.Llevel_27_8007A83C:
/* 63EED6C 8007A83C 1400A28E */  lw         $v0, 0x14($s5)
/* 63EED70 8007A840 00000000 */  nop
/* 63EED74 8007A844 19204228 */  slti       $v0, $v0, 0x2019
/* 63EED78 8007A848 0F004014 */  bnez       $v0, .Llevel_27_8007A888
/* 63EED7C 8007A84C 00000000 */   nop
/* 63EED80 8007A850 4F00A292 */  lbu        $v0, 0x4F($s5)
/* 63EED84 8007A854 00000000 */  nop
/* 63EED88 8007A858 02004014 */  bnez       $v0, .Llevel_27_8007A864
/* 63EED8C 8007A85C 20000224 */   addiu     $v0, $zero, 0x20
/* 63EED90 8007A860 4F00A2A2 */  sb         $v0, 0x4F($s5)
.Llevel_27_8007A864:
/* 63EED94 8007A864 4F00A292 */  lbu        $v0, 0x4F($s5)
/* 63EED98 8007A868 00000000 */  nop
/* 63EED9C 8007A86C FFFF4224 */  addiu      $v0, $v0, -0x1
/* 63EEDA0 8007A870 4F00A2A2 */  sb         $v0, 0x4F($s5)
/* 63EEDA4 8007A874 FF004230 */  andi       $v0, $v0, 0xFF
/* 63EEDA8 8007A878 1800422C */  sltiu      $v0, $v0, 0x18
/* 63EEDAC 8007A87C 02004010 */  beqz       $v0, .Llevel_27_8007A888
/* 63EEDB0 8007A880 18000224 */   addiu     $v0, $zero, 0x18
/* 63EEDB4 8007A884 4F00A2A2 */  sb         $v0, 0x4F($s5)
.Llevel_27_8007A888:
/* 63EEDB8 8007A888 1400A48E */  lw         $a0, 0x14($s5)
/* 63EEDBC 8007A88C 00240224 */  addiu      $v0, $zero, 0x2400
/* 63EEDC0 8007A890 23184400 */  subu       $v1, $v0, $a0
/* 63EEDC4 8007A894 79006228 */  slti       $v0, $v1, 0x79
/* 63EEDC8 8007A898 03004014 */  bnez       $v0, .Llevel_27_8007A8A8
/* 63EEDCC 8007A89C 88FF6228 */   slti      $v0, $v1, -0x78
/* 63EEDD0 8007A8A0 78000324 */  addiu      $v1, $zero, 0x78
/* 63EEDD4 8007A8A4 88FF6228 */  slti       $v0, $v1, -0x78
.Llevel_27_8007A8A8:
/* 63EEDD8 8007A8A8 03004010 */  beqz       $v0, .Llevel_27_8007A8B8
/* 63EEDDC 8007A8AC 21108300 */   addu      $v0, $a0, $v1
/* 63EEDE0 8007A8B0 88FF0324 */  addiu      $v1, $zero, -0x78
/* 63EEDE4 8007A8B4 21108300 */  addu       $v0, $a0, $v1
.Llevel_27_8007A8B8:
/* 63EEDE8 8007A8B8 1400A2AE */  sw         $v0, 0x14($s5)
/* 63EEDEC 8007A8BC 3C00828E */  lw         $v0, 0x3C($s4)
/* 63EEDF0 8007A8C0 00000000 */  nop
/* 63EEDF4 8007A8C4 30004014 */  bnez       $v0, .Llevel_27_8007A988
/* 63EEDF8 8007A8C8 21300000 */   addu      $a2, $zero, $zero
/* 63EEDFC 8007A8CC 5000A98F */  lw         $t1, 0x50($sp)
/* 63EEE00 8007A8D0 00000000 */  nop
/* 63EEE04 8007A8D4 2800228D */  lw         $v0, 0x28($t1)
/* 63EEE08 8007A8D8 00000000 */  nop
/* 63EEE0C 8007A8DC 2A004018 */  blez       $v0, .Llevel_27_8007A988
/* 63EEE10 8007A8E0 0400C22B */   slti      $v0, $fp, 0x4
/* 63EEE14 8007A8E4 28004010 */  beqz       $v0, .Llevel_27_8007A988
/* 63EEE18 8007A8E8 00000000 */   nop
/* 63EEE1C 8007A8EC 0C00A38E */  lw         $v1, 0xC($s5)
/* 63EEE20 8007A8F0 0780043C */  lui        $a0, %hi(D_80070328)
/* 63EEE24 8007A8F4 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 63EEE28 8007A8F8 1000A28E */  lw         $v0, 0x10($s5)
/* 63EEE2C 8007A8FC 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 63EEE30 8007A900 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 63EEE34 8007A904 23206400 */  subu       $a0, $v1, $a0
/* 63EEE38 8007A908 203A010C */  jal        func_8004E880
/* 63EEE3C 8007A90C 23284500 */   subu      $a1, $v0, $a1
/* 63EEE40 8007A910 2400838E */  lw         $v1, 0x24($s4)
/* 63EEE44 8007A914 21204000 */  addu       $a0, $v0, $zero
/* 63EEE48 8007A918 0A006384 */  lh         $v1, 0xA($v1)
/* 63EEE4C 8007A91C 01000224 */  addiu      $v0, $zero, 0x1
/* 63EEE50 8007A920 02006214 */  bne        $v1, $v0, .Llevel_27_8007A92C
/* 63EEE54 8007A924 F8FF8724 */   addiu     $a3, $a0, -0x8
/* 63EEE58 8007A928 08008724 */  addiu      $a3, $a0, 0x8
.Llevel_27_8007A92C:
/* 63EEE5C 8007A92C 2120A002 */  addu       $a0, $s5, $zero
/* 63EEE60 8007A930 0780053C */  lui        $a1, %hi(D_80070328)
/* 63EEE64 8007A934 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 63EEE68 8007A938 3000868E */  lw         $a2, 0x30($s4)
/* 63EEE6C 8007A93C 04000224 */  addiu      $v0, $zero, 0x4
/* 63EEE70 8007A940 1000A2AF */  sw         $v0, 0x10($sp)
/* 63EEE74 8007A944 C8000224 */  addiu      $v0, $zero, 0xC8
/* 63EEE78 8007A948 1400A2AF */  sw         $v0, 0x14($sp)
/* 63EEE7C 8007A94C 03000224 */  addiu      $v0, $zero, 0x3
/* 63EEE80 8007A950 1800A2AF */  sw         $v0, 0x18($sp)
/* 63EEE84 8007A954 80000224 */  addiu      $v0, $zero, 0x80
/* 63EEE88 8007A958 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 63EEE8C 8007A95C FF000224 */  addiu      $v0, $zero, 0xFF
/* 63EEE90 8007A960 2000A2AF */  sw         $v0, 0x20($sp)
/* 63EEE94 8007A964 2400A2AF */  sw         $v0, 0x24($sp)
/* 63EEE98 8007A968 0780023C */  lui        $v0, %hi(unk_ovlheader_80074314)
/* 63EEE9C 8007A96C 1443428C */  lw         $v0, %lo(unk_ovlheader_80074314)($v0)
/* 63EEEA0 8007A970 FF00E730 */  andi       $a3, $a3, 0xFF
/* 63EEEA4 8007A974 2800A0AF */  sw         $zero, 0x28($sp)
/* 63EEEA8 8007A978 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 63EEEAC 8007A97C 3000A0AF */  sw         $zero, 0x30($sp)
/* 63EEEB0 8007A980 87EA0108 */  j          .Llevel_27_8007AA1C
/* 63EEEB4 8007A984 43300600 */   sra       $a2, $a2, 1
.Llevel_27_8007A988:
/* 63EEEB8 8007A988 2400828E */  lw         $v0, 0x24($s4)
/* 63EEEBC 8007A98C 0C00A78E */  lw         $a3, 0xC($s5)
/* 63EEEC0 8007A990 0C00428C */  lw         $v0, 0xC($v0)
/* 63EEEC4 8007A994 1000A38E */  lw         $v1, 0x10($s5)
/* 63EEEC8 8007A998 0000448C */  lw         $a0, 0x0($v0)
/* 63EEECC 8007A99C 0400458C */  lw         $a1, 0x4($v0)
/* 63EEED0 8007A9A0 2320E400 */  subu       $a0, $a3, $a0
/* 63EEED4 8007A9A4 203A010C */  jal        func_8004E880
/* 63EEED8 8007A9A8 23286500 */   subu      $a1, $v1, $a1
/* 63EEEDC 8007A9AC 2400838E */  lw         $v1, 0x24($s4)
/* 63EEEE0 8007A9B0 21204000 */  addu       $a0, $v0, $zero
/* 63EEEE4 8007A9B4 0A006384 */  lh         $v1, 0xA($v1)
/* 63EEEE8 8007A9B8 01000224 */  addiu      $v0, $zero, 0x1
/* 63EEEEC 8007A9BC 02006214 */  bne        $v1, $v0, .Llevel_27_8007A9C8
/* 63EEEF0 8007A9C0 F8FF8724 */   addiu     $a3, $a0, -0x8
/* 63EEEF4 8007A9C4 08008724 */  addiu      $a3, $a0, 0x8
.Llevel_27_8007A9C8:
/* 63EEEF8 8007A9C8 2120A002 */  addu       $a0, $s5, $zero
/* 63EEEFC 8007A9CC 2400838E */  lw         $v1, 0x24($s4)
/* 63EEF00 8007A9D0 04000224 */  addiu      $v0, $zero, 0x4
/* 63EEF04 8007A9D4 1000A2AF */  sw         $v0, 0x10($sp)
/* 63EEF08 8007A9D8 C8000224 */  addiu      $v0, $zero, 0xC8
/* 63EEF0C 8007A9DC 1400A2AF */  sw         $v0, 0x14($sp)
/* 63EEF10 8007A9E0 03000224 */  addiu      $v0, $zero, 0x3
/* 63EEF14 8007A9E4 1800A2AF */  sw         $v0, 0x18($sp)
/* 63EEF18 8007A9E8 80000224 */  addiu      $v0, $zero, 0x80
/* 63EEF1C 8007A9EC 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 63EEF20 8007A9F0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 63EEF24 8007A9F4 2000A2AF */  sw         $v0, 0x20($sp)
/* 63EEF28 8007A9F8 2400A2AF */  sw         $v0, 0x24($sp)
/* 63EEF2C 8007A9FC 2800A0AF */  sw         $zero, 0x28($sp)
/* 63EEF30 8007AA00 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 63EEF34 8007AA04 3000A0AF */  sw         $zero, 0x30($sp)
/* 63EEF38 8007AA08 3000868E */  lw         $a2, 0x30($s4)
/* 63EEF3C 8007AA0C 0780023C */  lui        $v0, %hi(unk_ovlheader_80074314)
/* 63EEF40 8007AA10 1443428C */  lw         $v0, %lo(unk_ovlheader_80074314)($v0)
/* 63EEF44 8007AA14 0C00658C */  lw         $a1, 0xC($v1)
/* 63EEF48 8007AA18 FF00E730 */  andi       $a3, $a3, 0xFF
.Llevel_27_8007AA1C:
/* 63EEF4C 8007AA1C 09F84000 */  jalr       $v0
/* 63EEF50 8007AA20 00000000 */   nop
/* 63EEF54 8007AA24 48004292 */  lbu        $v0, 0x48($s2)
/* 63EEF58 8007AA28 00000000 */  nop
/* 63EEF5C 8007AA2C 8000422C */  sltiu      $v0, $v0, 0x80
/* 63EEF60 8007AA30 7A014010 */  beqz       $v0, .Llevel_27_8007B01C
/* 63EEF64 8007AA34 00000000 */   nop
/* 63EEF68 8007AA38 4C00A292 */  lbu        $v0, 0x4C($s5)
/* 63EEF6C 8007AA3C 00000000 */  nop
/* 63EEF70 8007AA40 22004010 */  beqz       $v0, .Llevel_27_8007AACC
/* 63EEF74 8007AA44 2A101102 */   slt       $v0, $s0, $s1
/* 63EEF78 8007AA48 20004010 */  beqz       $v0, .Llevel_27_8007AACC
/* 63EEF7C 8007AA4C 00000000 */   nop
/* 63EEF80 8007AA50 0780023C */  lui        $v0, %hi(D_80070328 + 0x280)
/* 63EEF84 8007AA54 A805428C */  lw         $v0, %lo(D_80070328 + 0x280)($v0)
/* 63EEF88 8007AA58 00000000 */  nop
/* 63EEF8C 8007AA5C 02004228 */  slti       $v0, $v0, 0x2
/* 63EEF90 8007AA60 1A004010 */  beqz       $v0, .Llevel_27_8007AACC
/* 63EEF94 8007AA64 34008426 */   addiu     $a0, $s4, 0x34
/* 63EEF98 8007AA68 69D6000C */  jal        func_800359A4
/* 63EEF9C 8007AA6C 02000524 */   addiu     $a1, $zero, 0x2
/* 63EEFA0 8007AA70 16004010 */  beqz       $v0, .Llevel_27_8007AACC
/* 63EEFA4 8007AA74 BF010424 */   addiu     $a0, $zero, 0x1BF
/* 63EEFA8 8007AA78 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 63EEFAC 8007AA7C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 63EEFB0 8007AA80 00000000 */  nop
/* 63EEFB4 8007AA84 09F84000 */  jalr       $v0
/* 63EEFB8 8007AA88 2128A002 */   addu      $a1, $s5, $zero
/* 63EEFBC 8007AA8C 21884000 */  addu       $s1, $v0, $zero
/* 63EEFC0 8007AA90 0A002012 */  beqz       $s1, .Llevel_27_8007AABC
/* 63EEFC4 8007AA94 0C002426 */   addiu     $a0, $s1, 0xC
/* 63EEFC8 8007AA98 0000308E */  lw         $s0, 0x0($s1)
/* 63EEFCC 8007AA9C 5E3C010C */  jal        func_8004F178
/* 63EEFD0 8007AAA0 0C00A526 */   addiu     $a1, $s5, 0xC
/* 63EEFD4 8007AAA4 FF000224 */  addiu      $v0, $zero, 0xFF
/* 63EEFD8 8007AAA8 4A0022A2 */  sb         $v0, 0x4A($s1)
/* 63EEFDC 8007AAAC 0A000224 */  addiu      $v0, $zero, 0xA
/* 63EEFE0 8007AAB0 480022A2 */  sb         $v0, 0x48($s1)
/* 63EEFE4 8007AAB4 D8FF0224 */  addiu      $v0, $zero, -0x28
/* 63EEFE8 8007AAB8 080002AE */  sw         $v0, 0x8($s0)
.Llevel_27_8007AABC:
/* 63EEFEC 8007AABC 2C010424 */  addiu      $a0, $zero, 0x12C
/* 63EEFF0 8007AAC0 DBD8000C */  jal        func_8003636C
/* 63EEFF4 8007AAC4 BC020524 */   addiu     $a1, $zero, 0x2BC
/* 63EEFF8 8007AAC8 340082A6 */  sh         $v0, 0x34($s4)
.Llevel_27_8007AACC:
/* 63EEFFC 8007AACC 5000A98F */  lw         $t1, 0x50($sp)
/* 63EF000 8007AAD0 00000000 */  nop
/* 63EF004 8007AAD4 2800228D */  lw         $v0, 0x28($t1)
/* 63EF008 8007AAD8 00000000 */  nop
/* 63EF00C 8007AADC A0004014 */  bnez       $v0, .Llevel_27_8007AD60
/* 63EF010 8007AAE0 00000000 */   nop
/* 63EF014 8007AAE4 6000A98F */  lw         $t1, 0x60($sp)
/* 63EF018 8007AAE8 00000000 */  nop
/* 63EF01C 8007AAEC 04002229 */  slti       $v0, $t1, 0x4
/* 63EF020 8007AAF0 98004010 */  beqz       $v0, .Llevel_27_8007AD54
/* 63EF024 8007AAF4 40008426 */   addiu     $a0, $s4, 0x40
/* 63EF028 8007AAF8 69D6000C */  jal        func_800359A4
/* 63EF02C 8007AAFC 02000524 */   addiu     $a1, $zero, 0x2
/* 63EF030 8007AB00 80004010 */  beqz       $v0, .Llevel_27_8007AD04
/* 63EF034 8007AB04 7F020424 */   addiu     $a0, $zero, 0x27F
/* 63EF038 8007AB08 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 63EF03C 8007AB0C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 63EF040 8007AB10 00000000 */  nop
/* 63EF044 8007AB14 09F84000 */  jalr       $v0
/* 63EF048 8007AB18 2128A002 */   addu      $a1, $s5, $zero
/* 63EF04C 8007AB1C 21B04000 */  addu       $s6, $v0, $zero
/* 63EF050 8007AB20 7800C012 */  beqz       $s6, .Llevel_27_8007AD04
/* 63EF054 8007AB24 0080033C */   lui       $v1, (0x80000000 >> 16)
/* 63EF058 8007AB28 1C00C28E */  lw         $v0, 0x1C($s6)
/* 63EF05C 8007AB2C 0000D28E */  lw         $s2, 0x0($s6)
/* 63EF060 8007AB30 25104300 */  or         $v0, $v0, $v1
/* 63EF064 8007AB34 9171010C */  jal        rand
/* 63EF068 8007AB38 1C00C2AE */   sw        $v0, 0x1C($s6)
/* 63EF06C 8007AB3C FF005730 */  andi       $s7, $v0, 0xFF
/* 63EF070 8007AB40 40201700 */  sll        $a0, $s7, 1
/* 63EF074 8007AB44 0680013C */  lui        $at, %hi(D_80065920)
/* 63EF078 8007AB48 21082400 */  addu       $at, $at, $a0
/* 63EF07C 8007AB4C 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 63EF080 8007AB50 0680103C */  lui        $s0, %hi(D_80065920)
/* 63EF084 8007AB54 20591026 */  addiu      $s0, $s0, %lo(D_80065920)
/* 63EF088 8007AB58 40110300 */  sll        $v0, $v1, 5
/* 63EF08C 8007AB5C 23104300 */  subu       $v0, $v0, $v1
/* 63EF090 8007AB60 80100200 */  sll        $v0, $v0, 2
/* 63EF094 8007AB64 21104300 */  addu       $v0, $v0, $v1
/* 63EF098 8007AB68 C3120200 */  sra        $v0, $v0, 11
/* 63EF09C 8007AB6C 000042AE */  sw         $v0, 0x0($s2)
/* 63EF0A0 8007AB70 8000E226 */  addiu      $v0, $s7, 0x80
/* 63EF0A4 8007AB74 FF005730 */  andi       $s7, $v0, 0xFF
/* 63EF0A8 8007AB78 40881700 */  sll        $s1, $s7, 1
/* 63EF0AC 8007AB7C 0680013C */  lui        $at, %hi(D_800658A0)
/* 63EF0B0 8007AB80 21082400 */  addu       $at, $at, $a0
/* 63EF0B4 8007AB84 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 63EF0B8 8007AB88 21803002 */  addu       $s0, $s1, $s0
/* 63EF0BC 8007AB8C 080040AE */  sw         $zero, 0x8($s2)
/* 63EF0C0 8007AB90 40110300 */  sll        $v0, $v1, 5
/* 63EF0C4 8007AB94 23104300 */  subu       $v0, $v0, $v1
/* 63EF0C8 8007AB98 80100200 */  sll        $v0, $v0, 2
/* 63EF0CC 8007AB9C 21104300 */  addu       $v0, $v0, $v1
/* 63EF0D0 8007ABA0 C3120200 */  sra        $v0, $v0, 11
/* 63EF0D4 8007ABA4 040042AE */  sw         $v0, 0x4($s2)
/* 63EF0D8 8007ABA8 00000386 */  lh         $v1, 0x0($s0)
/* 63EF0DC 8007ABAC 00000000 */  nop
/* 63EF0E0 8007ABB0 00110300 */  sll        $v0, $v1, 4
/* 63EF0E4 8007ABB4 23104300 */  subu       $v0, $v0, $v1
/* 63EF0E8 8007ABB8 83100200 */  sra        $v0, $v0, 2
/* 63EF0EC 8007ABBC 3800A2AF */  sw         $v0, 0x38($sp)
/* 63EF0F0 8007ABC0 0680023C */  lui        $v0, %hi(D_800658A0)
/* 63EF0F4 8007ABC4 A0584224 */  addiu      $v0, $v0, %lo(D_800658A0)
/* 63EF0F8 8007ABC8 21882202 */  addu       $s1, $s1, $v0
/* 63EF0FC 8007ABCC 00002386 */  lh         $v1, 0x0($s1)
/* 63EF100 8007ABD0 0C00D326 */  addiu      $s3, $s6, 0xC
/* 63EF104 8007ABD4 4000A0AF */  sw         $zero, 0x40($sp)
/* 63EF108 8007ABD8 00110300 */  sll        $v0, $v1, 4
/* 63EF10C 8007ABDC 23104300 */  subu       $v0, $v0, $v1
/* 63EF110 8007ABE0 83100200 */  sra        $v0, $v0, 2
/* 63EF114 8007ABE4 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 63EF118 8007ABE8 2400828E */  lw         $v0, 0x24($s4)
/* 63EF11C 8007ABEC 3800A627 */  addiu      $a2, $sp, 0x38
/* 63EF120 8007ABF0 0C00458C */  lw         $a1, 0xC($v0)
/* 63EF124 8007ABF4 653C010C */  jal        func_8004F194
/* 63EF128 8007ABF8 21206002 */   addu      $a0, $s3, $zero
/* 63EF12C 8007ABFC 70170424 */  addiu      $a0, $zero, 0x1770
/* 63EF130 8007AC00 DBD8000C */  jal        func_8003636C
/* 63EF134 8007AC04 F82A0524 */   addiu     $a1, $zero, 0x2AF8
/* 63EF138 8007AC08 00000386 */  lh         $v1, 0x0($s0)
/* 63EF13C 8007AC0C 00000000 */  nop
/* 63EF140 8007AC10 18006200 */  mult       $v1, $v0
/* 63EF144 8007AC14 12480000 */  mflo       $t1
/* 63EF148 8007AC18 031B0900 */  sra        $v1, $t1, 12
/* 63EF14C 8007AC1C 3800A3AF */  sw         $v1, 0x38($sp)
/* 63EF150 8007AC20 00002386 */  lh         $v1, 0x0($s1)
/* 63EF154 8007AC24 00000000 */  nop
/* 63EF158 8007AC28 18006200 */  mult       $v1, $v0
/* 63EF15C 8007AC2C 6000A98F */  lw         $t1, 0x60($sp)
/* 63EF160 8007AC30 4000A0AF */  sw         $zero, 0x40($sp)
/* 63EF164 8007AC34 01002925 */  addiu      $t1, $t1, 0x1
/* 63EF168 8007AC38 6000A9AF */  sw         $t1, 0x60($sp)
/* 63EF16C 8007AC3C 12480000 */  mflo       $t1
/* 63EF170 8007AC40 031B0900 */  sra        $v1, $t1, 12
/* 63EF174 8007AC44 3C00A3AF */  sw         $v1, 0x3C($sp)
/* 63EF178 8007AC48 2400838E */  lw         $v1, 0x24($s4)
/* 63EF17C 8007AC4C 3800A427 */  addiu      $a0, $sp, 0x38
/* 63EF180 8007AC50 0C00658C */  lw         $a1, 0xC($v1)
/* 63EF184 8007AC54 21308000 */  addu       $a2, $a0, $zero
/* 63EF188 8007AC58 653C010C */  jal        func_8004F194
/* 63EF18C 8007AC5C 4800A2AF */   sw        $v0, 0x48($sp)
/* 63EF190 8007AC60 21206002 */  addu       $a0, $s3, $zero
/* 63EF194 8007AC64 3800A527 */  addiu      $a1, $sp, 0x38
/* 63EF198 8007AC68 FA000624 */  addiu      $a2, $zero, 0xFA
/* 63EF19C 8007AC6C F0FF0724 */  addiu      $a3, $zero, -0x10
/* 63EF1A0 8007AC70 4800A227 */  addiu      $v0, $sp, 0x48
/* 63EF1A4 8007AC74 79D9000C */  jal        func_800365E4
/* 63EF1A8 8007AC78 1000A2AF */   sw        $v0, 0x10($sp)
/* 63EF1AC 8007AC7C 2120C002 */  addu       $a0, $s6, $zero
/* 63EF1B0 8007AC80 21280000 */  addu       $a1, $zero, $zero
/* 63EF1B4 8007AC84 21300000 */  addu       $a2, $zero, $zero
/* 63EF1B8 8007AC88 080042AE */  sw         $v0, 0x8($s2)
/* 63EF1BC 8007AC8C 0A000224 */  addiu      $v0, $zero, 0xA
/* 63EF1C0 8007AC90 480082A0 */  sb         $v0, 0x48($a0)
/* 63EF1C4 8007AC94 3F000224 */  addiu      $v0, $zero, 0x3F
/* 63EF1C8 8007AC98 4C0082A0 */  sb         $v0, 0x4C($a0)
/* 63EF1CC 8007AC9C 4E0082A0 */  sb         $v0, 0x4E($a0)
/* 63EF1D0 8007ACA0 0A000224 */  addiu      $v0, $zero, 0xA
/* 63EF1D4 8007ACA4 460097A0 */  sb         $s7, 0x46($a0)
/* 63EF1D8 8007ACA8 130040A2 */  sb         $zero, 0x13($s2)
/* 63EF1DC 8007ACAC AFEE000C */  jal        func_8003BABC
/* 63EF1E0 8007ACB0 140042A6 */   sh        $v0, 0x14($s2)
/* 63EF1E4 8007ACB4 6000A98F */  lw         $t1, 0x60($sp)
/* 63EF1E8 8007ACB8 00000000 */  nop
/* 63EF1EC 8007ACBC 00110900 */  sll        $v0, $t1, 4
/* 63EF1F0 8007ACC0 23104900 */  subu       $v0, $v0, $t1
/* 63EF1F4 8007ACC4 00110200 */  sll        $v0, $v0, 4
/* 63EF1F8 8007ACC8 400082A6 */  sh         $v0, 0x40($s4)
/* 63EF1FC 8007ACCC 5000A98F */  lw         $t1, 0x50($sp)
/* 63EF200 8007ACD0 00000000 */  nop
/* 63EF204 8007ACD4 2800228D */  lw         $v0, 0x28($t1)
/* 63EF208 8007ACD8 00000000 */  nop
/* 63EF20C 8007ACDC 09004014 */  bnez       $v0, .Llevel_27_8007AD04
/* 63EF210 8007ACE0 A00F0424 */   addiu     $a0, $zero, 0xFA0
/* 63EF214 8007ACE4 2400838E */  lw         $v1, 0x24($s4)
/* 63EF218 8007ACE8 00000000 */  nop
/* 63EF21C 8007ACEC 0A006284 */  lh         $v0, 0xA($v1)
/* 63EF220 8007ACF0 28230524 */  addiu      $a1, $zero, 0x2328
/* 63EF224 8007ACF4 23100200 */  negu       $v0, $v0
/* 63EF228 8007ACF8 DBD8000C */  jal        func_8003636C
/* 63EF22C 8007ACFC 0A0062A4 */   sh        $v0, 0xA($v1)
/* 63EF230 8007AD00 300082AE */  sw         $v0, 0x30($s4)
.Llevel_27_8007AD04:
/* 63EF234 8007AD04 42008286 */  lh         $v0, 0x42($s4)
/* 63EF238 8007AD08 6000A98F */  lw         $t1, 0x60($sp)
/* 63EF23C 8007AD0C 00000000 */  nop
/* 63EF240 8007AD10 2A102201 */  slt        $v0, $t1, $v0
/* 63EF244 8007AD14 0F004010 */  beqz       $v0, .Llevel_27_8007AD54
/* 63EF248 8007AD18 00000000 */   nop
/* 63EF24C 8007AD1C 05002011 */  beqz       $t1, .Llevel_27_8007AD34
/* 63EF250 8007AD20 01000224 */   addiu     $v0, $zero, 0x1
/* 63EF254 8007AD24 05002211 */  beq        $t1, $v0, .Llevel_27_8007AD3C
/* 63EF258 8007AD28 00000000 */   nop
/* 63EF25C 8007AD2C 55EB0108 */  j          .Llevel_27_8007AD54
/* 63EF260 8007AD30 00000000 */   nop
.Llevel_27_8007AD34:
/* 63EF264 8007AD34 55EB0108 */  j          .Llevel_27_8007AD54
/* 63EF268 8007AD38 400080A6 */   sh        $zero, 0x40($s4)
.Llevel_27_8007AD3C:
/* 63EF26C 8007AD3C 40008286 */  lh         $v0, 0x40($s4)
/* 63EF270 8007AD40 00000000 */  nop
/* 63EF274 8007AD44 F1004228 */  slti       $v0, $v0, 0xF1
/* 63EF278 8007AD48 02004014 */  bnez       $v0, .Llevel_27_8007AD54
/* 63EF27C 8007AD4C F0000224 */   addiu     $v0, $zero, 0xF0
/* 63EF280 8007AD50 400082A6 */  sh         $v0, 0x40($s4)
.Llevel_27_8007AD54:
/* 63EF284 8007AD54 5000A98F */  lw         $t1, 0x50($sp)
/* 63EF288 8007AD58 00000000 */  nop
/* 63EF28C 8007AD5C 2800228D */  lw         $v0, 0x28($t1)
.Llevel_27_8007AD60:
/* 63EF290 8007AD60 00000000 */  nop
/* 63EF294 8007AD64 AA004018 */  blez       $v0, .Llevel_27_8007B010
/* 63EF298 8007AD68 0400C22B */   slti      $v0, $fp, 0x4
/* 63EF29C 8007AD6C 67004010 */  beqz       $v0, .Llevel_27_8007AF0C
/* 63EF2A0 8007AD70 00000000 */   nop
/* 63EF2A4 8007AD74 3C00828E */  lw         $v0, 0x3C($s4)
/* 63EF2A8 8007AD78 00000000 */  nop
/* 63EF2AC 8007AD7C 67004014 */  bnez       $v0, .Llevel_27_8007AF1C
/* 63EF2B0 8007AD80 2C008426 */   addiu     $a0, $s4, 0x2C
/* 63EF2B4 8007AD84 69D6000C */  jal        func_800359A4
/* 63EF2B8 8007AD88 02000524 */   addiu     $a1, $zero, 0x2
/* 63EF2BC 8007AD8C 48004010 */  beqz       $v0, .Llevel_27_8007AEB0
/* 63EF2C0 8007AD90 00000000 */   nop
/* 63EF2C4 8007AD94 5800A98F */  lw         $t1, 0x58($sp)
/* 63EF2C8 8007AD98 00000000 */  nop
/* 63EF2CC 8007AD9C C5092229 */  slti       $v0, $t1, 0x9C5
/* 63EF2D0 8007ADA0 43004014 */  bnez       $v0, .Llevel_27_8007AEB0
/* 63EF2D4 8007ADA4 00000000 */   nop
/* 63EF2D8 8007ADA8 4D00A292 */  lbu        $v0, 0x4D($s5)
/* 63EF2DC 8007ADAC 00000000 */  nop
/* 63EF2E0 8007ADB0 3F004014 */  bnez       $v0, .Llevel_27_8007AEB0
/* 63EF2E4 8007ADB4 80020424 */   addiu     $a0, $zero, 0x280
/* 63EF2E8 8007ADB8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 63EF2EC 8007ADBC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 63EF2F0 8007ADC0 00000000 */  nop
/* 63EF2F4 8007ADC4 09F84000 */  jalr       $v0
/* 63EF2F8 8007ADC8 2128A002 */   addu      $a1, $s5, $zero
/* 63EF2FC 8007ADCC 21284000 */  addu       $a1, $v0, $zero
/* 63EF300 8007ADD0 3B00A010 */  beqz       $a1, .Llevel_27_8007AEC0
/* 63EF304 8007ADD4 3C0085AE */   sw        $a1, 0x3C($s4)
/* 63EF308 8007ADD8 0080043C */  lui        $a0, (0x80000000 >> 16)
/* 63EF30C 8007ADDC 1C00A28C */  lw         $v0, 0x1C($a1)
/* 63EF310 8007ADE0 0000A38C */  lw         $v1, 0x0($a1)
/* 63EF314 8007ADE4 25104400 */  or         $v0, $v0, $a0
/* 63EF318 8007ADE8 1C00A2AC */  sw         $v0, 0x1C($a1)
/* 63EF31C 8007ADEC 000060A4 */  sh         $zero, 0x0($v1)
/* 63EF320 8007ADF0 020060A4 */  sh         $zero, 0x2($v1)
/* 63EF324 8007ADF4 040060A4 */  sh         $zero, 0x4($v1)
/* 63EF328 8007ADF8 3C00848E */  lw         $a0, 0x3C($s4)
/* 63EF32C 8007ADFC 0D000224 */  addiu      $v0, $zero, 0xD
/* 63EF330 8007AE00 480082A0 */  sb         $v0, 0x48($a0)
/* 63EF334 8007AE04 3C00828E */  lw         $v0, 0x3C($s4)
/* 63EF338 8007AE08 3F000424 */  addiu      $a0, $zero, 0x3F
/* 63EF33C 8007AE0C 4C0044A0 */  sb         $a0, 0x4C($v0)
/* 63EF340 8007AE10 3C00828E */  lw         $v0, 0x3C($s4)
/* 63EF344 8007AE14 00000000 */  nop
/* 63EF348 8007AE18 4E0044A0 */  sb         $a0, 0x4E($v0)
/* 63EF34C 8007AE1C 01000224 */  addiu      $v0, $zero, 0x1
/* 63EF350 8007AE20 130062A0 */  sb         $v0, 0x13($v1)
/* 63EF354 8007AE24 0A000224 */  addiu      $v0, $zero, 0xA
/* 63EF358 8007AE28 140062A0 */  sb         $v0, 0x14($v1)
/* 63EF35C 8007AE2C 5000A98F */  lw         $t1, 0x50($sp)
/* 63EF360 8007AE30 00000000 */  nop
/* 63EF364 8007AE34 2800228D */  lw         $v0, 0x28($t1)
/* 63EF368 8007AE38 00000000 */  nop
/* 63EF36C 8007AE3C 150062A0 */  sb         $v0, 0x15($v1)
/* 63EF370 8007AE40 3800828E */  lw         $v0, 0x38($s4)
/* 63EF374 8007AE44 00000000 */  nop
/* 63EF378 8007AE48 0E0062A4 */  sh         $v0, 0xE($v1)
/* 63EF37C 8007AE4C 3C00838E */  lw         $v1, 0x3C($s4)
/* 63EF380 8007AE50 4600A292 */  lbu        $v0, 0x46($s5)
/* 63EF384 8007AE54 00000000 */  nop
/* 63EF388 8007AE58 460062A0 */  sb         $v0, 0x46($v1)
/* 63EF38C 8007AE5C 3C00848E */  lw         $a0, 0x3C($s4)
/* 63EF390 8007AE60 0C00A526 */  addiu      $a1, $s5, 0xC
/* 63EF394 8007AE64 5E3C010C */  jal        func_8004F178
/* 63EF398 8007AE68 0C008424 */   addiu     $a0, $a0, 0xC
/* 63EF39C 8007AE6C 0100DE27 */  addiu      $fp, $fp, 0x1
/* 63EF3A0 8007AE70 3C00858E */  lw         $a1, 0x3C($s4)
/* 63EF3A4 8007AE74 0780033C */  lui        $v1, %hi(D_80070328 + 0x44)
/* 63EF3A8 8007AE78 6C03638C */  lw         $v1, %lo(D_80070328 + 0x44)($v1)
/* 63EF3AC 8007AE7C 1400A28C */  lw         $v0, 0x14($a1)
/* 63EF3B0 8007AE80 A00F0424 */  addiu      $a0, $zero, 0xFA0
/* 63EF3B4 8007AE84 23104300 */  subu       $v0, $v0, $v1
/* 63EF3B8 8007AE88 1400A2AC */  sw         $v0, 0x14($a1)
/* 63EF3BC 8007AE8C 2400838E */  lw         $v1, 0x24($s4)
/* 63EF3C0 8007AE90 96000224 */  addiu      $v0, $zero, 0x96
/* 63EF3C4 8007AE94 2C0082A6 */  sh         $v0, 0x2C($s4)
/* 63EF3C8 8007AE98 0A006284 */  lh         $v0, 0xA($v1)
/* 63EF3CC 8007AE9C 28230524 */  addiu      $a1, $zero, 0x2328
/* 63EF3D0 8007AEA0 23100200 */  negu       $v0, $v0
/* 63EF3D4 8007AEA4 DBD8000C */  jal        func_8003636C
/* 63EF3D8 8007AEA8 0A0062A4 */   sh        $v0, 0xA($v1)
/* 63EF3DC 8007AEAC 300082AE */  sw         $v0, 0x30($s4)
.Llevel_27_8007AEB0:
/* 63EF3E0 8007AEB0 3C00828E */  lw         $v0, 0x3C($s4)
/* 63EF3E4 8007AEB4 00000000 */  nop
/* 63EF3E8 8007AEB8 18004014 */  bnez       $v0, .Llevel_27_8007AF1C
/* 63EF3EC 8007AEBC 00000000 */   nop
.Llevel_27_8007AEC0:
/* 63EF3F0 8007AEC0 2E008286 */  lh         $v0, 0x2E($s4)
/* 63EF3F4 8007AEC4 00000000 */  nop
/* 63EF3F8 8007AEC8 2A10C203 */  slt        $v0, $fp, $v0
/* 63EF3FC 8007AECC 0F004010 */  beqz       $v0, .Llevel_27_8007AF0C
/* 63EF400 8007AED0 00000000 */   nop
/* 63EF404 8007AED4 0500C013 */  beqz       $fp, .Llevel_27_8007AEEC
/* 63EF408 8007AED8 01000224 */   addiu     $v0, $zero, 0x1
/* 63EF40C 8007AEDC 0500C213 */  beq        $fp, $v0, .Llevel_27_8007AEF4
/* 63EF410 8007AEE0 00000000 */   nop
/* 63EF414 8007AEE4 C3EB0108 */  j          .Llevel_27_8007AF0C
/* 63EF418 8007AEE8 00000000 */   nop
.Llevel_27_8007AEEC:
/* 63EF41C 8007AEEC C3EB0108 */  j          .Llevel_27_8007AF0C
/* 63EF420 8007AEF0 2C0080A6 */   sh        $zero, 0x2C($s4)
.Llevel_27_8007AEF4:
/* 63EF424 8007AEF4 2C008286 */  lh         $v0, 0x2C($s4)
/* 63EF428 8007AEF8 00000000 */  nop
/* 63EF42C 8007AEFC B5004228 */  slti       $v0, $v0, 0xB5
/* 63EF430 8007AF00 02004014 */  bnez       $v0, .Llevel_27_8007AF0C
/* 63EF434 8007AF04 B4000224 */   addiu     $v0, $zero, 0xB4
/* 63EF438 8007AF08 2C0082A6 */  sh         $v0, 0x2C($s4)
.Llevel_27_8007AF0C:
/* 63EF43C 8007AF0C 3C00828E */  lw         $v0, 0x3C($s4)
/* 63EF440 8007AF10 00000000 */  nop
/* 63EF444 8007AF14 3E004010 */  beqz       $v0, .Llevel_27_8007B010
/* 63EF448 8007AF18 00000000 */   nop
.Llevel_27_8007AF1C:
/* 63EF44C 8007AF1C 2400828E */  lw         $v0, 0x24($s4)
/* 63EF450 8007AF20 0C00B026 */  addiu      $s0, $s5, 0xC
/* 63EF454 8007AF24 0C00458C */  lw         $a1, 0xC($v0)
/* 63EF458 8007AF28 CD3C010C */  jal        func_8004F334
/* 63EF45C 8007AF2C 21200002 */   addu      $a0, $s0, $zero
/* 63EF460 8007AF30 3C00858E */  lw         $a1, 0x3C($s4)
/* 63EF464 8007AF34 00000000 */  nop
/* 63EF468 8007AF38 0000A38C */  lw         $v1, 0x0($a1)
/* 63EF46C 8007AF3C 5000A98F */  lw         $t1, 0x50($sp)
/* 63EF470 8007AF40 15006490 */  lbu        $a0, 0x15($v1)
/* 63EF474 8007AF44 2800238D */  lw         $v1, 0x28($t1)
/* 63EF478 8007AF48 00000000 */  nop
/* 63EF47C 8007AF4C 06008310 */  beq        $a0, $v1, .Llevel_27_8007AF68
/* 63EF480 8007AF50 21884000 */   addu      $s1, $v0, $zero
/* 63EF484 8007AF54 C656010C */  jal        func_80055B18
/* 63EF488 8007AF58 2120A000 */   addu      $a0, $a1, $zero
/* 63EF48C 8007AF5C 3C0080AE */  sw         $zero, 0x3C($s4)
/* 63EF490 8007AF60 07EC0108 */  j          .Llevel_27_8007B01C
/* 63EF494 8007AF64 2C0080A6 */   sh        $zero, 0x2C($s4)
.Llevel_27_8007AF68:
/* 63EF498 8007AF68 0C00A424 */  addiu      $a0, $a1, 0xC
/* 63EF49C 8007AF6C 5E3C010C */  jal        func_8004F178
/* 63EF4A0 8007AF70 21280002 */   addu      $a1, $s0, $zero
/* 63EF4A4 8007AF74 2C008426 */  addiu      $a0, $s4, 0x2C
/* 63EF4A8 8007AF78 3C00828E */  lw         $v0, 0x3C($s4)
/* 63EF4AC 8007AF7C 0780063C */  lui        $a2, %hi(D_80070328 + 0x44)
/* 63EF4B0 8007AF80 6C03C68C */  lw         $a2, %lo(D_80070328 + 0x44)($a2)
/* 63EF4B4 8007AF84 1400438C */  lw         $v1, 0x14($v0)
/* 63EF4B8 8007AF88 02000524 */  addiu      $a1, $zero, 0x2
/* 63EF4BC 8007AF8C 23186600 */  subu       $v1, $v1, $a2
/* 63EF4C0 8007AF90 69D6000C */  jal        func_800359A4
/* 63EF4C4 8007AF94 140043AC */   sw        $v1, 0x14($v0)
/* 63EF4C8 8007AF98 1D004010 */  beqz       $v0, .Llevel_27_8007B010
/* 63EF4CC 8007AF9C 00000000 */   nop
/* 63EF4D0 8007AFA0 3000838E */  lw         $v1, 0x30($s4)
/* 63EF4D4 8007AFA4 00000000 */  nop
/* 63EF4D8 8007AFA8 23107100 */  subu       $v0, $v1, $s1
/* 63EF4DC 8007AFAC 05004004 */  bltz       $v0, .Llevel_27_8007AFC4
/* 63EF4E0 8007AFB0 E8034228 */   slti      $v0, $v0, 0x3E8
/* 63EF4E4 8007AFB4 16004010 */  beqz       $v0, .Llevel_27_8007B010
/* 63EF4E8 8007AFB8 00000000 */   nop
/* 63EF4EC 8007AFBC F5EB0108 */  j          .Llevel_27_8007AFD4
/* 63EF4F0 8007AFC0 00000000 */   nop
.Llevel_27_8007AFC4:
/* 63EF4F4 8007AFC4 23102302 */  subu       $v0, $s1, $v1
/* 63EF4F8 8007AFC8 E8034228 */  slti       $v0, $v0, 0x3E8
/* 63EF4FC 8007AFCC 10004010 */  beqz       $v0, .Llevel_27_8007B010
/* 63EF500 8007AFD0 00000000 */   nop
.Llevel_27_8007AFD4:
/* 63EF504 8007AFD4 3C00828E */  lw         $v0, 0x3C($s4)
/* 63EF508 8007AFD8 00000000 */  nop
/* 63EF50C 8007AFDC 36004384 */  lh         $v1, 0x36($v0)
/* 63EF510 8007AFE0 80020224 */  addiu      $v0, $zero, 0x280
/* 63EF514 8007AFE4 06006214 */  bne        $v1, $v0, .Llevel_27_8007B000
/* 63EF518 8007AFE8 40181E00 */   sll       $v1, $fp, 1
/* 63EF51C 8007AFEC 21187E00 */  addu       $v1, $v1, $fp
/* 63EF520 8007AFF0 00110300 */  sll        $v0, $v1, 4
/* 63EF524 8007AFF4 23104300 */  subu       $v0, $v0, $v1
/* 63EF528 8007AFF8 80100200 */  sll        $v0, $v0, 2
/* 63EF52C 8007AFFC 2C0082A6 */  sh         $v0, 0x2C($s4)
.Llevel_27_8007B000:
/* 63EF530 8007B000 3C00838E */  lw         $v1, 0x3C($s4)
/* 63EF534 8007B004 01000224 */  addiu      $v0, $zero, 0x1
/* 63EF538 8007B008 490062A0 */  sb         $v0, 0x49($v1)
/* 63EF53C 8007B00C 3C0080AE */  sw         $zero, 0x3C($s4)
.Llevel_27_8007B010:
/* 63EF540 8007B010 6000A997 */  lhu        $t1, 0x60($sp)
/* 63EF544 8007B014 2E009EA6 */  sh         $fp, 0x2E($s4)
/* 63EF548 8007B018 420089A6 */  sh         $t1, 0x42($s4)
.Llevel_27_8007B01C:
/* 63EF54C 8007B01C 9C00BF8F */  lw         $ra, 0x9C($sp)
/* 63EF550 8007B020 9800BE8F */  lw         $fp, 0x98($sp)
/* 63EF554 8007B024 9400B78F */  lw         $s7, 0x94($sp)
/* 63EF558 8007B028 9000B68F */  lw         $s6, 0x90($sp)
/* 63EF55C 8007B02C 8C00B58F */  lw         $s5, 0x8C($sp)
/* 63EF560 8007B030 8800B48F */  lw         $s4, 0x88($sp)
/* 63EF564 8007B034 8400B38F */  lw         $s3, 0x84($sp)
/* 63EF568 8007B038 8000B28F */  lw         $s2, 0x80($sp)
/* 63EF56C 8007B03C 7C00B18F */  lw         $s1, 0x7C($sp)
/* 63EF570 8007B040 7800B08F */  lw         $s0, 0x78($sp)
/* 63EF574 8007B044 A000BD27 */  addiu      $sp, $sp, 0xA0
/* 63EF578 8007B048 0800E003 */  jr         $ra
/* 63EF57C 8007B04C 00000000 */   nop
.size func_level_27_8007A3C0, . - func_level_27_8007A3C0
