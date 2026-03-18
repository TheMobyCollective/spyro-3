.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_800881F0
/* 6DEF720 800881F0 10FFBD27 */  addiu      $sp, $sp, -0xF0
/* 6DEF724 800881F4 DC00B5AF */  sw         $s5, 0xDC($sp)
/* 6DEF728 800881F8 21A88000 */  addu       $s5, $a0, $zero
/* 6DEF72C 800881FC 04000224 */  addiu      $v0, $zero, 0x4
/* 6DEF730 80088200 EC00BFAF */  sw         $ra, 0xEC($sp)
/* 6DEF734 80088204 E800BEAF */  sw         $fp, 0xE8($sp)
/* 6DEF738 80088208 E400B7AF */  sw         $s7, 0xE4($sp)
/* 6DEF73C 8008820C E000B6AF */  sw         $s6, 0xE0($sp)
/* 6DEF740 80088210 D800B4AF */  sw         $s4, 0xD8($sp)
/* 6DEF744 80088214 D400B3AF */  sw         $s3, 0xD4($sp)
/* 6DEF748 80088218 D000B2AF */  sw         $s2, 0xD0($sp)
/* 6DEF74C 8008821C CC00B1AF */  sw         $s1, 0xCC($sp)
/* 6DEF750 80088220 C800B0AF */  sw         $s0, 0xC8($sp)
/* 6DEF754 80088224 4800A392 */  lbu        $v1, 0x48($s5)
/* 6DEF758 80088228 0000B28E */  lw         $s2, 0x0($s5)
/* 6DEF75C 8008822C 02026210 */  beq        $v1, $v0, .Llevel_32_80088A38
/* 6DEF760 80088230 05006228 */   slti      $v0, $v1, 0x5
/* 6DEF764 80088234 10004010 */  beqz       $v0, .Llevel_32_80088278
/* 6DEF768 80088238 01000224 */   addiu     $v0, $zero, 0x1
/* 6DEF76C 8008823C 43006210 */  beq        $v1, $v0, .Llevel_32_8008834C
/* 6DEF770 80088240 02006228 */   slti      $v0, $v1, 0x2
/* 6DEF774 80088244 05004010 */  beqz       $v0, .Llevel_32_8008825C
/* 6DEF778 80088248 00000000 */   nop
/* 6DEF77C 8008824C 13006010 */  beqz       $v1, .Llevel_32_8008829C
/* 6DEF780 80088250 21300000 */   addu      $a2, $zero, $zero
/* 6DEF784 80088254 66240208 */  j          .Llevel_32_80089198
/* 6DEF788 80088258 00000000 */   nop
.Llevel_32_8008825C:
/* 6DEF78C 8008825C 02000224 */  addiu      $v0, $zero, 0x2
/* 6DEF790 80088260 40006210 */  beq        $v1, $v0, .Llevel_32_80088364
/* 6DEF794 80088264 03000224 */   addiu     $v0, $zero, 0x3
/* 6DEF798 80088268 99016210 */  beq        $v1, $v0, .Llevel_32_800888D0
/* 6DEF79C 8008826C 6800B127 */   addiu     $s1, $sp, 0x68
/* 6DEF7A0 80088270 66240208 */  j          .Llevel_32_80089198
/* 6DEF7A4 80088274 00000000 */   nop
.Llevel_32_80088278:
/* 6DEF7A8 80088278 06000224 */  addiu      $v0, $zero, 0x6
/* 6DEF7AC 8008827C A5026210 */  beq        $v1, $v0, .Llevel_32_80088D14
/* 6DEF7B0 80088280 06006228 */   slti      $v0, $v1, 0x6
/* 6DEF7B4 80088284 4F024014 */  bnez       $v0, .Llevel_32_80088BC4
/* 6DEF7B8 80088288 63000224 */   addiu     $v0, $zero, 0x63
/* 6DEF7BC 8008828C 4A036210 */  beq        $v1, $v0, .Llevel_32_80088FB8
/* 6DEF7C0 80088290 00000000 */   nop
/* 6DEF7C4 80088294 66240208 */  j          .Llevel_32_80089198
/* 6DEF7C8 80088298 00000000 */   nop
.Llevel_32_8008829C:
/* 6DEF7CC 8008829C 0780103C */  lui        $s0, %hi(D_80070328)
/* 6DEF7D0 800882A0 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 6DEF7D4 800882A4 0C00A38E */  lw         $v1, 0xC($s5)
/* 6DEF7D8 800882A8 0000048E */  lw         $a0, 0x0($s0)
/* 6DEF7DC 800882AC 1000A28E */  lw         $v0, 0x10($s5)
/* 6DEF7E0 800882B0 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 6DEF7E4 800882B4 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 6DEF7E8 800882B8 23206400 */  subu       $a0, $v1, $a0
/* 6DEF7EC 800882BC 203A010C */  jal        func_8004E880
/* 6DEF7F0 800882C0 23284500 */   subu      $a1, $v0, $a1
/* 6DEF7F4 800882C4 0780043C */  lui        $a0, %hi(D_80070328 + 0xE)
/* 6DEF7F8 800882C8 36038490 */  lbu        $a0, %lo(D_80070328 + 0xE)($a0)
/* 6DEF7FC 800882CC 993C010C */  jal        func_8004F264
/* 6DEF800 800882D0 21284000 */   addu      $a1, $v0, $zero
/* 6DEF804 800882D4 10004228 */  slti       $v0, $v0, 0x10
/* 6DEF808 800882D8 1A004010 */  beqz       $v0, .Llevel_32_80088344
/* 6DEF80C 800882DC 0C00A426 */   addiu     $a0, $s5, 0xC
/* 6DEF810 800882E0 CD3C010C */  jal        func_8004F334
/* 6DEF814 800882E4 21280002 */   addu      $a1, $s0, $zero
/* 6DEF818 800882E8 A8FD4224 */  addiu      $v0, $v0, -0x258
/* 6DEF81C 800882EC FA004228 */  slti       $v0, $v0, 0xFA
/* 6DEF820 800882F0 1400A38E */  lw         $v1, 0x14($s5)
/* 6DEF824 800882F4 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 6DEF828 800882F8 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 6DEF82C 800882FC 64016324 */  addiu      $v1, $v1, 0x164
/* 6DEF830 80088300 10004010 */  beqz       $v0, .Llevel_32_80088344
/* 6DEF834 80088304 23208300 */   subu      $a0, $a0, $v1
/* 6DEF838 80088308 00018228 */  slti       $v0, $a0, 0x100
/* 6DEF83C 8008830C 0D004010 */  beqz       $v0, .Llevel_32_80088344
/* 6DEF840 80088310 00000000 */   nop
/* 6DEF844 80088314 0780023C */  lui        $v0, %hi(D_80070328 + 0x170)
/* 6DEF848 80088318 9804428C */  lw         $v0, %lo(D_80070328 + 0x170)($v0)
/* 6DEF84C 8008831C 00000000 */  nop
/* 6DEF850 80088320 08004014 */  bnez       $v0, .Llevel_32_80088344
/* 6DEF854 80088324 0010023C */   lui       $v0, (0x10000001 >> 16)
/* 6DEF858 80088328 01004234 */  ori        $v0, $v0, (0x10000001 & 0xFFFF)
/* 6DEF85C 8008832C 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 6DEF860 80088330 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 6DEF864 80088334 20000224 */  addiu      $v0, $zero, 0x20
/* 6DEF868 80088338 0780013C */  lui        $at, %hi(D_80070328 + 0x218)
/* 6DEF86C 8008833C 400535AC */  sw         $s5, %lo(D_80070328 + 0x218)($at)
/* 6DEF870 80088340 4F00A2A2 */  sb         $v0, 0x4F($s5)
.Llevel_32_80088344:
/* 6DEF874 80088344 66240208 */  j          .Llevel_32_80089198
/* 6DEF878 80088348 0C0040AE */   sw        $zero, 0xC($s2)
.Llevel_32_8008834C:
/* 6DEF87C 8008834C FF000224 */  addiu      $v0, $zero, 0xFF
/* 6DEF880 80088350 0800A0AE */  sw         $zero, 0x8($s5)
/* 6DEF884 80088354 4C00A0A2 */  sb         $zero, 0x4C($s5)
/* 6DEF888 80088358 4D00A0A2 */  sb         $zero, 0x4D($s5)
/* 6DEF88C 8008835C 66240208 */  j          .Llevel_32_80089198
/* 6DEF890 80088360 4A00A2A2 */   sb        $v0, 0x4A($s5)
.Llevel_32_80088364:
/* 6DEF894 80088364 20000224 */  addiu      $v0, $zero, 0x20
/* 6DEF898 80088368 4F00A2A2 */  sb         $v0, 0x4F($s5)
/* 6DEF89C 8008836C 50000224 */  addiu      $v0, $zero, 0x50
/* 6DEF8A0 80088370 4C00A2A2 */  sb         $v0, 0x4C($s5)
/* 6DEF8A4 80088374 01000224 */  addiu      $v0, $zero, 0x1
/* 6DEF8A8 80088378 4500A0A2 */  sb         $zero, 0x45($s5)
/* 6DEF8AC 8008837C 4D00A2A2 */  sb         $v0, 0x4D($s5)
/* 6DEF8B0 80088380 0780033C */  lui        $v1, %hi(D_8006E044)
/* 6DEF8B4 80088384 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 6DEF8B8 80088388 07000224 */  addiu      $v0, $zero, 0x7
/* 6DEF8BC 8008838C 05006214 */  bne        $v1, $v0, .Llevel_32_800883A4
/* 6DEF8C0 80088390 0C00A426 */   addiu     $a0, $s5, 0xC
/* 6DEF8C4 80088394 2125010C */  jal        func_80049484
/* 6DEF8C8 80088398 0C00A426 */   addiu     $a0, $s5, 0xC
/* 6DEF8CC 8008839C 08210208 */  j          .Llevel_32_80088420
/* 6DEF8D0 800883A0 1800A427 */   addiu     $a0, $sp, 0x18
.Llevel_32_800883A4:
/* 6DEF8D4 800883A4 0780063C */  lui        $a2, %hi(D_80070328 + 0xE)
/* 6DEF8D8 800883A8 3603C624 */  addiu      $a2, $a2, %lo(D_80070328 + 0xE)
/* 6DEF8DC 800883AC 0000C290 */  lbu        $v0, 0x0($a2)
/* 6DEF8E0 800883B0 00000000 */  nop
/* 6DEF8E4 800883B4 40100200 */  sll        $v0, $v0, 1
/* 6DEF8E8 800883B8 0680013C */  lui        $at, %hi(D_80065920)
/* 6DEF8EC 800883BC 21082200 */  addu       $at, $at, $v0
/* 6DEF8F0 800883C0 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 6DEF8F4 800883C4 21288000 */  addu       $a1, $a0, $zero
/* 6DEF8F8 800883C8 80180200 */  sll        $v1, $v0, 2
/* 6DEF8FC 800883CC 21186200 */  addu       $v1, $v1, $v0
/* 6DEF900 800883D0 00110300 */  sll        $v0, $v1, 4
/* 6DEF904 800883D4 23104300 */  subu       $v0, $v0, $v1
/* 6DEF908 800883D8 43120200 */  sra        $v0, $v0, 9
/* 6DEF90C 800883DC 0C00A2AE */  sw         $v0, 0xC($s5)
/* 6DEF910 800883E0 0000C290 */  lbu        $v0, 0x0($a2)
/* 6DEF914 800883E4 F2FFC624 */  addiu      $a2, $a2, -0xE
/* 6DEF918 800883E8 40100200 */  sll        $v0, $v0, 1
/* 6DEF91C 800883EC 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DEF920 800883F0 21082200 */  addu       $at, $at, $v0
/* 6DEF924 800883F4 A0582784 */  lh         $a3, %lo(D_800658A0)($at)
/* 6DEF928 800883F8 C8000224 */  addiu      $v0, $zero, 0xC8
/* 6DEF92C 800883FC 1400A2AE */  sw         $v0, 0x14($s5)
/* 6DEF930 80088400 80180700 */  sll        $v1, $a3, 2
/* 6DEF934 80088404 21186700 */  addu       $v1, $v1, $a3
/* 6DEF938 80088408 00110300 */  sll        $v0, $v1, 4
/* 6DEF93C 8008840C 23104300 */  subu       $v0, $v0, $v1
/* 6DEF940 80088410 43120200 */  sra        $v0, $v0, 9
/* 6DEF944 80088414 653C010C */  jal        func_8004F194
/* 6DEF948 80088418 1000A2AE */   sw        $v0, 0x10($s5)
/* 6DEF94C 8008841C 1800A427 */  addiu      $a0, $sp, 0x18
.Llevel_32_80088420:
/* 6DEF950 80088420 0780113C */  lui        $s1, %hi(D_80070328 + 0xE)
/* 6DEF954 80088424 36033126 */  addiu      $s1, $s1, %lo(D_80070328 + 0xE)
/* 6DEF958 80088428 00002792 */  lbu        $a3, 0x0($s1)
/* 6DEF95C 8008842C 21288000 */  addu       $a1, $a0, $zero
/* 6DEF960 80088430 40380700 */  sll        $a3, $a3, 1
/* 6DEF964 80088434 0680013C */  lui        $at, %hi(D_80065920)
/* 6DEF968 80088438 21082700 */  addu       $at, $at, $a3
/* 6DEF96C 8008843C 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6DEF970 80088440 F2FF2626 */  addiu      $a2, $s1, -0xE
/* 6DEF974 80088444 40100300 */  sll        $v0, $v1, 1
/* 6DEF978 80088448 21104300 */  addu       $v0, $v0, $v1
/* 6DEF97C 8008844C C0100200 */  sll        $v0, $v0, 3
/* 6DEF980 80088450 21104300 */  addu       $v0, $v0, $v1
/* 6DEF984 80088454 43120200 */  sra        $v0, $v0, 9
/* 6DEF988 80088458 1800A2AF */  sw         $v0, 0x18($sp)
/* 6DEF98C 8008845C 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DEF990 80088460 21082700 */  addu       $at, $at, $a3
/* 6DEF994 80088464 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6DEF998 80088468 C8000224 */  addiu      $v0, $zero, 0xC8
/* 6DEF99C 8008846C 2000A2AF */  sw         $v0, 0x20($sp)
/* 6DEF9A0 80088470 40100300 */  sll        $v0, $v1, 1
/* 6DEF9A4 80088474 21104300 */  addu       $v0, $v0, $v1
/* 6DEF9A8 80088478 C0100200 */  sll        $v0, $v0, 3
/* 6DEF9AC 8008847C 21104300 */  addu       $v0, $v0, $v1
/* 6DEF9B0 80088480 43120200 */  sra        $v0, $v0, 9
/* 6DEF9B4 80088484 653C010C */  jal        func_8004F194
/* 6DEF9B8 80088488 1C00A2AF */   sw        $v0, 0x1C($sp)
/* 6DEF9BC 8008848C 1800A427 */  addiu      $a0, $sp, 0x18
/* 6DEF9C0 80088490 0C00B026 */  addiu      $s0, $s5, 0xC
/* 6DEF9C4 80088494 DA60000C */  jal        func_80018368
/* 6DEF9C8 80088498 21280002 */   addu      $a1, $s0, $zero
/* 6DEF9CC 8008849C 03004010 */  beqz       $v0, .Llevel_32_800884AC
/* 6DEF9D0 800884A0 21200002 */   addu      $a0, $s0, $zero
/* 6DEF9D4 800884A4 5E3C010C */  jal        func_8004F178
/* 6DEF9D8 800884A8 1800A527 */   addiu     $a1, $sp, 0x18
.Llevel_32_800884AC:
/* 6DEF9DC 800884AC 00002292 */  lbu        $v0, 0x0($s1)
/* 6DEF9E0 800884B0 0780033C */  lui        $v1, %hi(D_80070328 + 0x12)
/* 6DEF9E4 800884B4 3A036390 */  lbu        $v1, %lo(D_80070328 + 0x12)($v1)
/* 6DEF9E8 800884B8 00000000 */  nop
/* 6DEF9EC 800884BC 21104300 */  addu       $v0, $v0, $v1
/* 6DEF9F0 800884C0 4600A2A2 */  sb         $v0, 0x46($s5)
/* 6DEF9F4 800884C4 0780033C */  lui        $v1, %hi(D_8006E044)
/* 6DEF9F8 800884C8 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 6DEF9FC 800884CC 07000224 */  addiu      $v0, $zero, 0x7
/* 6DEFA00 800884D0 0E006214 */  bne        $v1, $v0, .Llevel_32_8008850C
/* 6DEFA04 800884D4 0E000224 */   addiu     $v0, $zero, 0xE
/* 6DEFA08 800884D8 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 6DEFA0C 800884DC 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 6DEFA10 800884E0 0E000324 */  addiu      $v1, $zero, 0xE
/* 6DEFA14 800884E4 00140200 */  sll        $v0, $v0, 16
/* 6DEFA18 800884E8 03150200 */  sra        $v0, $v0, 20
/* 6DEFA1C 800884EC 23186200 */  subu       $v1, $v1, $v0
/* 6DEFA20 800884F0 4500A3A2 */  sb         $v1, 0x45($s5)
/* 6DEFA24 800884F4 0780023C */  lui        $v0, %hi(D_8006E040)
/* 6DEFA28 800884F8 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 6DEFA2C 800884FC 00000000 */  nop
/* 6DEFA30 80088500 02110200 */  srl        $v0, $v0, 4
/* 6DEFA34 80088504 44210208 */  j          .Llevel_32_80088510
/* 6DEFA38 80088508 4600A2A2 */   sb        $v0, 0x46($s5)
.Llevel_32_8008850C:
/* 6DEFA3C 8008850C 4500A2A2 */  sb         $v0, 0x45($s5)
.Llevel_32_80088510:
/* 6DEFA40 80088510 4600A292 */  lbu        $v0, 0x46($s5)
/* 6DEFA44 80088514 00000000 */  nop
/* 6DEFA48 80088518 40100200 */  sll        $v0, $v0, 1
/* 6DEFA4C 8008851C 0680013C */  lui        $at, %hi(D_80065920)
/* 6DEFA50 80088520 21082200 */  addu       $at, $at, $v0
/* 6DEFA54 80088524 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6DEFA58 80088528 00000000 */  nop
/* 6DEFA5C 8008852C 80100300 */  sll        $v0, $v1, 2
/* 6DEFA60 80088530 21104300 */  addu       $v0, $v0, $v1
/* 6DEFA64 80088534 40210200 */  sll        $a0, $v0, 5
/* 6DEFA68 80088538 4500A392 */  lbu        $v1, 0x45($s5)
/* 6DEFA6C 8008853C 21104400 */  addu       $v0, $v0, $a0
/* 6DEFA70 80088540 40180300 */  sll        $v1, $v1, 1
/* 6DEFA74 80088544 0680013C */  lui        $at, %hi(D_80065920)
/* 6DEFA78 80088548 21082300 */  addu       $at, $at, $v1
/* 6DEFA7C 8008854C 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6DEFA80 80088550 C3120200 */  sra        $v0, $v0, 11
/* 6DEFA84 80088554 18004300 */  mult       $v0, $v1
/* 6DEFA88 80088558 12400000 */  mflo       $t0
/* 6DEFA8C 8008855C 03130800 */  sra        $v0, $t0, 12
/* 6DEFA90 80088560 000042AE */  sw         $v0, 0x0($s2)
/* 6DEFA94 80088564 4600A292 */  lbu        $v0, 0x46($s5)
/* 6DEFA98 80088568 00000000 */  nop
/* 6DEFA9C 8008856C 40100200 */  sll        $v0, $v0, 1
/* 6DEFAA0 80088570 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DEFAA4 80088574 21082200 */  addu       $at, $at, $v0
/* 6DEFAA8 80088578 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6DEFAAC 8008857C 00000000 */  nop
/* 6DEFAB0 80088580 80100300 */  sll        $v0, $v1, 2
/* 6DEFAB4 80088584 21104300 */  addu       $v0, $v0, $v1
/* 6DEFAB8 80088588 40210200 */  sll        $a0, $v0, 5
/* 6DEFABC 8008858C 4500A392 */  lbu        $v1, 0x45($s5)
/* 6DEFAC0 80088590 21104400 */  addu       $v0, $v0, $a0
/* 6DEFAC4 80088594 40180300 */  sll        $v1, $v1, 1
/* 6DEFAC8 80088598 0680013C */  lui        $at, %hi(D_80065920)
/* 6DEFACC 8008859C 21082300 */  addu       $at, $at, $v1
/* 6DEFAD0 800885A0 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6DEFAD4 800885A4 C3120200 */  sra        $v0, $v0, 11
/* 6DEFAD8 800885A8 18004300 */  mult       $v0, $v1
/* 6DEFADC 800885AC 21F00000 */  addu       $fp, $zero, $zero
/* 6DEFAE0 800885B0 21A00000 */  addu       $s4, $zero, $zero
/* 6DEFAE4 800885B4 0780133C */  lui        $s3, %hi(D_8006E788)
/* 6DEFAE8 800885B8 88E77326 */  addiu      $s3, $s3, %lo(D_8006E788)
/* 6DEFAEC 800885BC C000A0AF */  sw         $zero, 0xC0($sp)
/* 6DEFAF0 800885C0 12400000 */  mflo       $t0
/* 6DEFAF4 800885C4 03130800 */  sra        $v0, $t0, 12
/* 6DEFAF8 800885C8 040042AE */  sw         $v0, 0x4($s2)
/* 6DEFAFC 800885CC 4500A292 */  lbu        $v0, 0x45($s5)
/* 6DEFB00 800885D0 7F001724 */  addiu      $s7, $zero, 0x7F
/* 6DEFB04 800885D4 40100200 */  sll        $v0, $v0, 1
/* 6DEFB08 800885D8 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DEFB0C 800885DC 21082200 */  addu       $at, $at, $v0
/* 6DEFB10 800885E0 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6DEFB14 800885E4 00781624 */  addiu      $s6, $zero, 0x7800
/* 6DEFB18 800885E8 80100300 */  sll        $v0, $v1, 2
/* 6DEFB1C 800885EC 21104300 */  addu       $v0, $v0, $v1
/* 6DEFB20 800885F0 40190200 */  sll        $v1, $v0, 5
/* 6DEFB24 800885F4 21104300 */  addu       $v0, $v0, $v1
/* 6DEFB28 800885F8 C3120200 */  sra        $v0, $v0, 11
/* 6DEFB2C 800885FC A7210208 */  j          .Llevel_32_8008869C
/* 6DEFB30 80088600 080042AE */   sw        $v0, 0x8($s2)
.Llevel_32_80088604:
/* 6DEFB34 80088604 25001512 */  beq        $s0, $s5, .Llevel_32_8008869C
/* 6DEFB38 80088608 00000000 */   nop
/* 6DEFB3C 8008860C 0800028E */  lw         $v0, 0x8($s0)
/* 6DEFB40 80088610 00000000 */  nop
/* 6DEFB44 80088614 21004010 */  beqz       $v0, .Llevel_32_8008869C
/* 6DEFB48 80088618 0C00A426 */   addiu     $a0, $s5, 0xC
/* 6DEFB4C 8008861C CD3C010C */  jal        func_8004F334
/* 6DEFB50 80088620 0C000526 */   addiu     $a1, $s0, 0xC
/* 6DEFB54 80088624 21884000 */  addu       $s1, $v0, $zero
/* 6DEFB58 80088628 21300000 */  addu       $a2, $zero, $zero
/* 6DEFB5C 8008862C 0C00038E */  lw         $v1, 0xC($s0)
/* 6DEFB60 80088630 0C00A48E */  lw         $a0, 0xC($s5)
/* 6DEFB64 80088634 1000028E */  lw         $v0, 0x10($s0)
/* 6DEFB68 80088638 1000A58E */  lw         $a1, 0x10($s5)
/* 6DEFB6C 8008863C 23206400 */  subu       $a0, $v1, $a0
/* 6DEFB70 80088640 203A010C */  jal        func_8004E880
/* 6DEFB74 80088644 23284500 */   subu      $a1, $v0, $a1
/* 6DEFB78 80088648 4600A592 */  lbu        $a1, 0x46($s5)
/* 6DEFB7C 8008864C 993C010C */  jal        func_8004F264
/* 6DEFB80 80088650 21204000 */   addu      $a0, $v0, $zero
/* 6DEFB84 80088654 00180324 */  addiu      $v1, $zero, 0x1800
/* 6DEFB88 80088658 23187100 */  subu       $v1, $v1, $s1
/* 6DEFB8C 8008865C 02006104 */  bgez       $v1, .Llevel_32_80088668
/* 6DEFB90 80088660 21204000 */   addu      $a0, $v0, $zero
/* 6DEFB94 80088664 00E82326 */  addiu      $v1, $s1, -0x1800
.Llevel_32_80088668:
/* 6DEFB98 80088668 04008228 */  slti       $v0, $a0, 0x4
/* 6DEFB9C 8008866C 0B004010 */  beqz       $v0, .Llevel_32_8008869C
/* 6DEFBA0 80088670 21886000 */   addu      $s1, $v1, $zero
/* 6DEFBA4 80088674 0014222A */  slti       $v0, $s1, 0x1400
/* 6DEFBA8 80088678 08004010 */  beqz       $v0, .Llevel_32_8008869C
/* 6DEFBAC 8008867C 2A10E402 */   slt       $v0, $s7, $a0
/* 6DEFBB0 80088680 06004014 */  bnez       $v0, .Llevel_32_8008869C
/* 6DEFBB4 80088684 2A103602 */   slt       $v0, $s1, $s6
/* 6DEFBB8 80088688 04004010 */  beqz       $v0, .Llevel_32_8008869C
/* 6DEFBBC 8008868C 00000000 */   nop
/* 6DEFBC0 80088690 21A00002 */  addu       $s4, $s0, $zero
/* 6DEFBC4 80088694 21B02002 */  addu       $s6, $s1, $zero
/* 6DEFBC8 80088698 21B88000 */  addu       $s7, $a0, $zero
.Llevel_32_8008869C:
/* 6DEFBCC 8008869C 0000708E */  lw         $s0, 0x0($s3)
/* 6DEFBD0 800886A0 00000000 */  nop
/* 6DEFBD4 800886A4 D7FF0016 */  bnez       $s0, .Llevel_32_80088604
/* 6DEFBD8 800886A8 04007326 */   addiu     $s3, $s3, 0x4
/* 6DEFBDC 800886AC 44008012 */  beqz       $s4, .Llevel_32_800887C0
/* 6DEFBE0 800886B0 00000000 */   nop
/* 6DEFBE4 800886B4 3800B127 */  addiu      $s1, $sp, 0x38
/* 6DEFBE8 800886B8 21202002 */  addu       $a0, $s1, $zero
/* 6DEFBEC 800886BC 5E3C010C */  jal        func_8004F178
/* 6DEFBF0 800886C0 21284002 */   addu      $a1, $s2, $zero
/* 6DEFBF4 800886C4 4800B027 */  addiu      $s0, $sp, 0x48
/* 6DEFBF8 800886C8 21200002 */  addu       $a0, $s0, $zero
/* 6DEFBFC 800886CC 5E3C010C */  jal        func_8004F178
/* 6DEFC00 800886D0 0C00A526 */   addiu     $a1, $s5, 0xC
/* 6DEFC04 800886D4 21980000 */  addu       $s3, $zero, $zero
/* 6DEFC08 800886D8 2800A427 */  addiu      $a0, $sp, 0x28
.Llevel_32_800886DC:
/* 6DEFC0C 800886DC 5E3C010C */  jal        func_8004F178
/* 6DEFC10 800886E0 0C00A526 */   addiu     $a1, $s5, 0xC
/* 6DEFC14 800886E4 21200002 */  addu       $a0, $s0, $zero
/* 6DEFC18 800886E8 21280002 */  addu       $a1, $s0, $zero
/* 6DEFC1C 800886EC 653C010C */  jal        func_8004F194
/* 6DEFC20 800886F0 21302002 */   addu      $a2, $s1, $zero
/* 6DEFC24 800886F4 21200002 */  addu       $a0, $s0, $zero
/* 6DEFC28 800886F8 21280002 */  addu       $a1, $s0, $zero
/* 6DEFC2C 800886FC 4000A28F */  lw         $v0, 0x40($sp)
/* 6DEFC30 80088700 21302002 */  addu       $a2, $s1, $zero
/* 6DEFC34 80088704 F6FF4224 */  addiu      $v0, $v0, -0xA
/* 6DEFC38 80088708 653C010C */  jal        func_8004F194
/* 6DEFC3C 8008870C 4000A2AF */   sw        $v0, 0x40($sp)
/* 6DEFC40 80088710 4000A28F */  lw         $v0, 0x40($sp)
/* 6DEFC44 80088714 4800A38F */  lw         $v1, 0x48($sp)
/* 6DEFC48 80088718 F6FF4224 */  addiu      $v0, $v0, -0xA
/* 6DEFC4C 8008871C 28006004 */  bltz       $v1, .Llevel_32_800887C0
/* 6DEFC50 80088720 4000A2AF */   sw        $v0, 0x40($sp)
/* 6DEFC54 80088724 4C00A28F */  lw         $v0, 0x4C($sp)
/* 6DEFC58 80088728 00000000 */  nop
/* 6DEFC5C 8008872C 24004004 */  bltz       $v0, .Llevel_32_800887C0
/* 6DEFC60 80088730 00000000 */   nop
/* 6DEFC64 80088734 5000A28F */  lw         $v0, 0x50($sp)
/* 6DEFC68 80088738 00000000 */  nop
/* 6DEFC6C 8008873C 20004004 */  bltz       $v0, .Llevel_32_800887C0
/* 6DEFC70 80088740 00000000 */   nop
/* 6DEFC74 80088744 1A008012 */  beqz       $s4, .Llevel_32_800887B0
/* 6DEFC78 80088748 0C008426 */   addiu     $a0, $s4, 0xC
/* 6DEFC7C 8008874C CD3C010C */  jal        func_8004F334
/* 6DEFC80 80088750 21280002 */   addu      $a1, $s0, $zero
/* 6DEFC84 80088754 B0044228 */  slti       $v0, $v0, 0x4B0
/* 6DEFC88 80088758 15004010 */  beqz       $v0, .Llevel_32_800887B0
/* 6DEFC8C 8008875C 00000000 */   nop
/* 6DEFC90 80088760 1400828E */  lw         $v0, 0x14($s4)
/* 6DEFC94 80088764 5000A48F */  lw         $a0, 0x50($sp)
/* 6DEFC98 80088768 90014324 */  addiu      $v1, $v0, 0x190
/* 6DEFC9C 8008876C 23106400 */  subu       $v0, $v1, $a0
/* 6DEFCA0 80088770 05004004 */  bltz       $v0, .Llevel_32_80088788
/* 6DEFCA4 80088774 E8034228 */   slti      $v0, $v0, 0x3E8
/* 6DEFCA8 80088778 07004014 */  bnez       $v0, .Llevel_32_80088798
/* 6DEFCAC 8008877C 5800A427 */   addiu     $a0, $sp, 0x58
/* 6DEFCB0 80088780 ED210208 */  j          .Llevel_32_800887B4
/* 6DEFCB4 80088784 01007326 */   addiu     $s3, $s3, 0x1
.Llevel_32_80088788:
/* 6DEFCB8 80088788 23108300 */  subu       $v0, $a0, $v1
/* 6DEFCBC 8008878C E8034228 */  slti       $v0, $v0, 0x3E8
/* 6DEFCC0 80088790 07004010 */  beqz       $v0, .Llevel_32_800887B0
/* 6DEFCC4 80088794 5800A427 */   addiu     $a0, $sp, 0x58
.Llevel_32_80088798:
/* 6DEFCC8 80088798 5E3C010C */  jal        func_8004F178
/* 6DEFCCC 8008879C 4800A527 */   addiu     $a1, $sp, 0x48
/* 6DEFCD0 800887A0 40101300 */  sll        $v0, $s3, 1
/* 6DEFCD4 800887A4 01005E24 */  addiu      $fp, $v0, 0x1
/* 6DEFCD8 800887A8 F0210208 */  j          .Llevel_32_800887C0
/* 6DEFCDC 800887AC C000B4AF */   sw        $s4, 0xC0($sp)
.Llevel_32_800887B0:
/* 6DEFCE0 800887B0 01007326 */  addiu      $s3, $s3, 0x1
.Llevel_32_800887B4:
/* 6DEFCE4 800887B4 1E00622A */  slti       $v0, $s3, 0x1E
/* 6DEFCE8 800887B8 C8FF4014 */  bnez       $v0, .Llevel_32_800886DC
/* 6DEFCEC 800887BC 2800A427 */   addiu     $a0, $sp, 0x28
.Llevel_32_800887C0:
/* 6DEFCF0 800887C0 C000A88F */  lw         $t0, 0xC0($sp)
/* 6DEFCF4 800887C4 00000000 */  nop
/* 6DEFCF8 800887C8 3C000011 */  beqz       $t0, .Llevel_32_800888BC
/* 6DEFCFC 800887CC 2800A427 */   addiu     $a0, $sp, 0x28
/* 6DEFD00 800887D0 0C000525 */  addiu      $a1, $t0, 0xC
/* 6DEFD04 800887D4 5800A627 */  addiu      $a2, $sp, 0x58
/* 6DEFD08 800887D8 723C010C */  jal        func_8004F1C8
/* 6DEFD0C 800887DC 0C0048AE */   sw        $t0, 0xC($s2)
/* 6DEFD10 800887E0 2800A38F */  lw         $v1, 0x28($sp)
/* 6DEFD14 800887E4 00000000 */  nop
/* 6DEFD18 800887E8 1A007E00 */  div        $zero, $v1, $fp
/* 6DEFD1C 800887EC 0200C017 */  bnez       $fp, .Llevel_32_800887F8
/* 6DEFD20 800887F0 00000000 */   nop
/* 6DEFD24 800887F4 0D000700 */  break      7
.Llevel_32_800887F8:
/* 6DEFD28 800887F8 FFFF0124 */  addiu      $at, $zero, -0x1
/* 6DEFD2C 800887FC 0400C117 */  bne        $fp, $at, .Llevel_32_80088810
/* 6DEFD30 80088800 0080013C */   lui       $at, (0x80000000 >> 16)
/* 6DEFD34 80088804 02006114 */  bne        $v1, $at, .Llevel_32_80088810
/* 6DEFD38 80088808 00000000 */   nop
/* 6DEFD3C 8008880C 0D000600 */  break      6
.Llevel_32_80088810:
/* 6DEFD40 80088810 12180000 */  mflo       $v1
/* 6DEFD44 80088814 3000A28F */  lw         $v0, 0x30($sp)
/* 6DEFD48 80088818 00000000 */  nop
/* 6DEFD4C 8008881C 90014224 */  addiu      $v0, $v0, 0x190
/* 6DEFD50 80088820 3000A2AF */  sw         $v0, 0x30($sp)
/* 6DEFD54 80088824 0000428E */  lw         $v0, 0x0($s2)
/* 6DEFD58 80088828 00000000 */  nop
/* 6DEFD5C 8008882C 21104300 */  addu       $v0, $v0, $v1
/* 6DEFD60 80088830 000042AE */  sw         $v0, 0x0($s2)
/* 6DEFD64 80088834 2C00A38F */  lw         $v1, 0x2C($sp)
/* 6DEFD68 80088838 00000000 */  nop
/* 6DEFD6C 8008883C 1A007E00 */  div        $zero, $v1, $fp
/* 6DEFD70 80088840 0200C017 */  bnez       $fp, .Llevel_32_8008884C
/* 6DEFD74 80088844 00000000 */   nop
/* 6DEFD78 80088848 0D000700 */  break      7
.Llevel_32_8008884C:
/* 6DEFD7C 8008884C FFFF0124 */  addiu      $at, $zero, -0x1
/* 6DEFD80 80088850 0400C117 */  bne        $fp, $at, .Llevel_32_80088864
/* 6DEFD84 80088854 0080013C */   lui       $at, (0x80000000 >> 16)
/* 6DEFD88 80088858 02006114 */  bne        $v1, $at, .Llevel_32_80088864
/* 6DEFD8C 8008885C 00000000 */   nop
/* 6DEFD90 80088860 0D000600 */  break      6
.Llevel_32_80088864:
/* 6DEFD94 80088864 12180000 */  mflo       $v1
/* 6DEFD98 80088868 0400428E */  lw         $v0, 0x4($s2)
/* 6DEFD9C 8008886C 00000000 */  nop
/* 6DEFDA0 80088870 21104300 */  addu       $v0, $v0, $v1
/* 6DEFDA4 80088874 040042AE */  sw         $v0, 0x4($s2)
/* 6DEFDA8 80088878 3000A38F */  lw         $v1, 0x30($sp)
/* 6DEFDAC 8008887C 00000000 */  nop
/* 6DEFDB0 80088880 1A007E00 */  div        $zero, $v1, $fp
/* 6DEFDB4 80088884 0200C017 */  bnez       $fp, .Llevel_32_80088890
/* 6DEFDB8 80088888 00000000 */   nop
/* 6DEFDBC 8008888C 0D000700 */  break      7
.Llevel_32_80088890:
/* 6DEFDC0 80088890 FFFF0124 */  addiu      $at, $zero, -0x1
/* 6DEFDC4 80088894 0400C117 */  bne        $fp, $at, .Llevel_32_800888A8
/* 6DEFDC8 80088898 0080013C */   lui       $at, (0x80000000 >> 16)
/* 6DEFDCC 8008889C 02006114 */  bne        $v1, $at, .Llevel_32_800888A8
/* 6DEFDD0 800888A0 00000000 */   nop
/* 6DEFDD4 800888A4 0D000600 */  break      6
.Llevel_32_800888A8:
/* 6DEFDD8 800888A8 12180000 */  mflo       $v1
/* 6DEFDDC 800888AC 0800428E */  lw         $v0, 0x8($s2)
/* 6DEFDE0 800888B0 00000000 */  nop
/* 6DEFDE4 800888B4 21104300 */  addu       $v0, $v0, $v1
/* 6DEFDE8 800888B8 080042AE */  sw         $v0, 0x8($s2)
.Llevel_32_800888BC:
/* 6DEFDEC 800888BC 4A010224 */  addiu      $v0, $zero, 0x14A
/* 6DEFDF0 800888C0 120042A6 */  sh         $v0, 0x12($s2)
/* 6DEFDF4 800888C4 03000224 */  addiu      $v0, $zero, 0x3
/* 6DEFDF8 800888C8 66240208 */  j          .Llevel_32_80089198
/* 6DEFDFC 800888CC 4800A2A2 */   sb        $v0, 0x48($s5)
.Llevel_32_800888D0:
/* 6DEFE00 800888D0 21202002 */  addu       $a0, $s1, $zero
/* 6DEFE04 800888D4 0C00B026 */  addiu      $s0, $s5, 0xC
/* 6DEFE08 800888D8 5E3C010C */  jal        func_8004F178
/* 6DEFE0C 800888DC 21280002 */   addu      $a1, $s0, $zero
/* 6DEFE10 800888E0 21200002 */  addu       $a0, $s0, $zero
/* 6DEFE14 800888E4 21280002 */  addu       $a1, $s0, $zero
/* 6DEFE18 800888E8 653C010C */  jal        func_8004F194
/* 6DEFE1C 800888EC 21304002 */   addu      $a2, $s2, $zero
/* 6DEFE20 800888F0 21204002 */  addu       $a0, $s2, $zero
/* 6DEFE24 800888F4 0800428E */  lw         $v0, 0x8($s2)
/* 6DEFE28 800888F8 01000524 */  addiu      $a1, $zero, 0x1
/* 6DEFE2C 800888FC F6FF4224 */  addiu      $v0, $v0, -0xA
/* 6DEFE30 80088900 7A3B010C */  jal        func_8004EDE8
/* 6DEFE34 80088904 080042AE */   sw        $v0, 0x8($s2)
/* 6DEFE38 80088908 0C00A28E */  lw         $v0, 0xC($s5)
/* 6DEFE3C 8008890C 00000000 */  nop
/* 6DEFE40 80088910 00044228 */  slti       $v0, $v0, 0x400
/* 6DEFE44 80088914 FB014014 */  bnez       $v0, .Llevel_32_80089104
/* 6DEFE48 80088918 00000000 */   nop
/* 6DEFE4C 8008891C 1000A28E */  lw         $v0, 0x10($s5)
/* 6DEFE50 80088920 00000000 */  nop
/* 6DEFE54 80088924 00044228 */  slti       $v0, $v0, 0x400
/* 6DEFE58 80088928 F6014014 */  bnez       $v0, .Llevel_32_80089104
/* 6DEFE5C 8008892C 00000000 */   nop
/* 6DEFE60 80088930 1400A28E */  lw         $v0, 0x14($s5)
/* 6DEFE64 80088934 00000000 */  nop
/* 6DEFE68 80088938 00044228 */  slti       $v0, $v0, 0x400
/* 6DEFE6C 8008893C F1014014 */  bnez       $v0, .Llevel_32_80089104
/* 6DEFE70 80088940 21202002 */   addu      $a0, $s1, $zero
/* 6DEFE74 80088944 DA60000C */  jal        func_80018368
/* 6DEFE78 80088948 21280002 */   addu      $a1, $s0, $zero
/* 6DEFE7C 8008894C 06004010 */  beqz       $v0, .Llevel_32_80088968
/* 6DEFE80 80088950 21200002 */   addu      $a0, $s0, $zero
/* 6DEFE84 80088954 21280002 */  addu       $a1, $s0, $zero
/* 6DEFE88 80088958 723C010C */  jal        func_8004F1C8
/* 6DEFE8C 8008895C 21304002 */   addu      $a2, $s2, $zero
/* 6DEFE90 80088960 04000224 */  addiu      $v0, $zero, 0x4
/* 6DEFE94 80088964 4800A2A2 */  sb         $v0, 0x48($s5)
.Llevel_32_80088968:
/* 6DEFE98 80088968 21200002 */  addu       $a0, $s0, $zero
/* 6DEFE9C 8008896C 2C010524 */  addiu      $a1, $zero, 0x12C
/* 6DEFEA0 80088970 21300000 */  addu       $a2, $zero, $zero
/* 6DEFEA4 80088974 21380000 */  addu       $a3, $zero, $zero
/* 6DEFEA8 80088978 8000023C */  lui        $v0, (0x800000 >> 16)
/* 6DEFEAC 8008897C 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DEFEB0 80088980 8C6E000C */  jal        func_8001BA30
/* 6DEFEB4 80088984 1400B5AF */   sw        $s5, 0x14($sp)
/* 6DEFEB8 80088988 21804000 */  addu       $s0, $v0, $zero
/* 6DEFEBC 8008898C 0E000012 */  beqz       $s0, .Llevel_32_800889C8
/* 6DEFEC0 80088990 21200000 */   addu      $a0, $zero, $zero
/* 6DEFEC4 80088994 0000448E */  lw         $a0, 0x0($s2)
/* 6DEFEC8 80088998 0400458E */  lw         $a1, 0x4($s2)
/* 6DEFECC 8008899C 203A010C */  jal        func_8004E880
/* 6DEFED0 800889A0 21300000 */   addu      $a2, $zero, $zero
/* 6DEFED4 800889A4 510002A2 */  sb         $v0, 0x51($s0)
/* 6DEFED8 800889A8 FF004230 */  andi       $v0, $v0, 0xFF
/* 6DEFEDC 800889AC 04004014 */  bnez       $v0, .Llevel_32_800889C0
/* 6DEFEE0 800889B0 04000224 */   addiu     $v0, $zero, 0x4
/* 6DEFEE4 800889B4 01000224 */  addiu      $v0, $zero, 0x1
/* 6DEFEE8 800889B8 510002A2 */  sb         $v0, 0x51($s0)
/* 6DEFEEC 800889BC 04000224 */  addiu      $v0, $zero, 0x4
.Llevel_32_800889C0:
/* 6DEFEF0 800889C0 4800A2A2 */  sb         $v0, 0x48($s5)
/* 6DEFEF4 800889C4 21200000 */  addu       $a0, $zero, $zero
.Llevel_32_800889C8:
/* 6DEFEF8 800889C8 F7D8000C */  jal        func_800363DC
/* 6DEFEFC 800889CC 07000524 */   addiu     $a1, $zero, 0x7
/* 6DEFF00 800889D0 21200000 */  addu       $a0, $zero, $zero
/* 6DEFF04 800889D4 07000524 */  addiu      $a1, $zero, 0x7
/* 6DEFF08 800889D8 F7D8000C */  jal        func_800363DC
/* 6DEFF0C 800889DC 6800A2AF */   sw        $v0, 0x68($sp)
/* 6DEFF10 800889E0 6C00A2AF */  sw         $v0, 0x6C($sp)
/* 6DEFF14 800889E4 0780023C */  lui        $v0, %hi(D_8006C640)
/* 6DEFF18 800889E8 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 6DEFF1C 800889EC 0F000324 */  addiu      $v1, $zero, 0xF
/* 6DEFF20 800889F0 01004230 */  andi       $v0, $v0, 0x1
/* 6DEFF24 800889F4 09004010 */  beqz       $v0, .Llevel_32_80088A1C
/* 6DEFF28 800889F8 7000A3AF */   sw        $v1, 0x70($sp)
/* 6DEFF2C 800889FC 01000424 */  addiu      $a0, $zero, 0x1
/* 6DEFF30 80088A00 3A000524 */  addiu      $a1, $zero, 0x3A
/* 6DEFF34 80088A04 0C00A626 */  addiu      $a2, $s5, 0xC
/* 6DEFF38 80088A08 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DEFF3C 80088A0C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DEFF40 80088A10 00000000 */  nop
/* 6DEFF44 80088A14 09F84000 */  jalr       $v0
/* 6DEFF48 80088A18 6800A727 */   addiu     $a3, $sp, 0x68
.Llevel_32_80088A1C:
/* 6DEFF4C 80088A1C 0C00A426 */  addiu      $a0, $s5, 0xC
/* 6DEFF50 80088A20 6564000C */  jal        func_80019194
/* 6DEFF54 80088A24 7D000524 */   addiu     $a1, $zero, 0x7D
/* 6DEFF58 80088A28 D7014010 */  beqz       $v0, .Llevel_32_80089188
/* 6DEFF5C 80088A2C 04000224 */   addiu     $v0, $zero, 0x4
/* 6DEFF60 80088A30 62240208 */  j          .Llevel_32_80089188
/* 6DEFF64 80088A34 4800A2A2 */   sb        $v0, 0x48($s5)
.Llevel_32_80088A38:
/* 6DEFF68 80088A38 21B00000 */  addu       $s6, $zero, $zero
/* 6DEFF6C 80088A3C 21200000 */  addu       $a0, $zero, $zero
.Llevel_32_80088A40:
/* 6DEFF70 80088A40 F7D8000C */  jal        func_800363DC
/* 6DEFF74 80088A44 28000524 */   addiu     $a1, $zero, 0x28
/* 6DEFF78 80088A48 21200000 */  addu       $a0, $zero, $zero
/* 6DEFF7C 80088A4C 28000524 */  addiu      $a1, $zero, 0x28
/* 6DEFF80 80088A50 F7D8000C */  jal        func_800363DC
/* 6DEFF84 80088A54 7800A2AF */   sw        $v0, 0x78($sp)
/* 6DEFF88 80088A58 21200000 */  addu       $a0, $zero, $zero
/* 6DEFF8C 80088A5C 28000524 */  addiu      $a1, $zero, 0x28
/* 6DEFF90 80088A60 F7D8000C */  jal        func_800363DC
/* 6DEFF94 80088A64 7C00A2AF */   sw        $v0, 0x7C($sp)
/* 6DEFF98 80088A68 01000424 */  addiu      $a0, $zero, 0x1
/* 6DEFF9C 80088A6C 3A000524 */  addiu      $a1, $zero, 0x3A
/* 6DEFFA0 80088A70 0C00A626 */  addiu      $a2, $s5, 0xC
/* 6DEFFA4 80088A74 7800A727 */  addiu      $a3, $sp, 0x78
/* 6DEFFA8 80088A78 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 6DEFFAC 80088A7C E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 6DEFFB0 80088A80 0100D626 */  addiu      $s6, $s6, 0x1
/* 6DEFFB4 80088A84 09F86000 */  jalr       $v1
/* 6DEFFB8 80088A88 8000A2AF */   sw        $v0, 0x80($sp)
/* 6DEFFBC 80088A8C 0500C22A */  slti       $v0, $s6, 0x5
/* 6DEFFC0 80088A90 EBFF4014 */  bnez       $v0, .Llevel_32_80088A40
/* 6DEFFC4 80088A94 21200000 */   addu      $a0, $zero, $zero
/* 6DEFFC8 80088A98 21B00000 */  addu       $s6, $zero, $zero
/* 6DEFFCC 80088A9C 50001724 */  addiu      $s7, $zero, 0x50
.Llevel_32_80088AA0:
/* 6DEFFD0 80088AA0 0780023C */  lui        $v0, %hi(D_8006C578)
/* 6DEFFD4 80088AA4 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 6DEFFD8 80088AA8 0780033C */  lui        $v1, %hi(D_8006C574)
/* 6DEFFDC 80088AAC 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 6DEFFE0 80088AB0 00000000 */  nop
/* 6DEFFE4 80088AB4 23104300 */  subu       $v0, $v0, $v1
/* 6DEFFE8 80088AB8 15004228 */  slti       $v0, $v0, 0x15
/* 6DEFFEC 80088ABC 3C004014 */  bnez       $v0, .Llevel_32_80088BB0
/* 6DEFFF0 80088AC0 2120A002 */   addu      $a0, $s5, $zero
/* 6DEFFF4 80088AC4 3600A486 */  lh         $a0, 0x36($s5)
/* 6DEFFF8 80088AC8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6DEFFFC 80088ACC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6DF0000 80088AD0 00000000 */  nop
/* 6DF0004 80088AD4 09F84000 */  jalr       $v0
/* 6DF0008 80088AD8 2128A002 */   addu      $a1, $s5, $zero
/* 6DF000C 80088ADC 21A04000 */  addu       $s4, $v0, $zero
/* 6DF0010 80088AE0 2F008012 */  beqz       $s4, .Llevel_32_80088BA0
/* 6DF0014 80088AE4 00000000 */   nop
/* 6DF0018 80088AE8 0000928E */  lw         $s2, 0x0($s4)
/* 6DF001C 80088AEC 9171010C */  jal        rand
/* 6DF0020 80088AF0 00000000 */   nop
/* 6DF0024 80088AF4 9171010C */  jal        rand
/* 6DF0028 80088AF8 FF0F5330 */   andi      $s3, $v0, 0xFFF
/* 6DF002C 80088AFC 0C008426 */  addiu      $a0, $s4, 0xC
/* 6DF0030 80088B00 0C00A526 */  addiu      $a1, $s5, 0xC
/* 6DF0034 80088B04 FFFF0324 */  addiu      $v1, $zero, -0x1
/* 6DF0038 80088B08 FF0F5130 */  andi       $s1, $v0, 0xFFF
/* 6DF003C 80088B0C 080080AE */  sw         $zero, 0x8($s4)
/* 6DF0040 80088B10 5E3C010C */  jal        func_8004F178
/* 6DF0044 80088B14 1C0083AE */   sw        $v1, 0x1C($s4)
/* 6DF0048 80088B18 8B3A010C */  jal        func_8004EA2C
/* 6DF004C 80088B1C 21202002 */   addu      $a0, $s1, $zero
/* 6DF0050 80088B20 21206002 */  addu       $a0, $s3, $zero
/* 6DF0054 80088B24 8B3A010C */  jal        func_8004EA2C
/* 6DF0058 80088B28 21804000 */   addu      $s0, $v0, $zero
/* 6DF005C 80088B2C 83811000 */  sra        $s0, $s0, 6
/* 6DF0060 80088B30 18000202 */  mult       $s0, $v0
/* 6DF0064 80088B34 21202002 */  addu       $a0, $s1, $zero
/* 6DF0068 80088B38 12400000 */  mflo       $t0
/* 6DF006C 80088B3C 03130800 */  sra        $v0, $t0, 12
/* 6DF0070 80088B40 8B3A010C */  jal        func_8004EA2C
/* 6DF0074 80088B44 000042AE */   sw        $v0, 0x0($s2)
/* 6DF0078 80088B48 21206002 */  addu       $a0, $s3, $zero
/* 6DF007C 80088B4C 793A010C */  jal        func_8004E9E4
/* 6DF0080 80088B50 21804000 */   addu      $s0, $v0, $zero
/* 6DF0084 80088B54 83811000 */  sra        $s0, $s0, 6
/* 6DF0088 80088B58 18000202 */  mult       $s0, $v0
/* 6DF008C 80088B5C 21202002 */  addu       $a0, $s1, $zero
/* 6DF0090 80088B60 12400000 */  mflo       $t0
/* 6DF0094 80088B64 03130800 */  sra        $v0, $t0, 12
/* 6DF0098 80088B68 793A010C */  jal        func_8004E9E4
/* 6DF009C 80088B6C 040042AE */   sw        $v0, 0x4($s2)
/* 6DF00A0 80088B70 1E000424 */  addiu      $a0, $zero, 0x1E
/* 6DF00A4 80088B74 32000524 */  addiu      $a1, $zero, 0x32
/* 6DF00A8 80088B78 83110200 */  sra        $v0, $v0, 6
/* 6DF00AC 80088B7C DBD8000C */  jal        func_8003636C
/* 6DF00B0 80088B80 080042AE */   sw        $v0, 0x8($s2)
/* 6DF00B4 80088B84 100042A6 */  sh         $v0, 0x10($s2)
/* 6DF00B8 80088B88 05000224 */  addiu      $v0, $zero, 0x5
/* 6DF00BC 80088B8C 140040A2 */  sb         $zero, 0x14($s2)
/* 6DF00C0 80088B90 480082A2 */  sb         $v0, 0x48($s4)
/* 6DF00C4 80088B94 4F0097A2 */  sb         $s7, 0x4F($s4)
/* 6DF00C8 80088B98 4C0097A2 */  sb         $s7, 0x4C($s4)
/* 6DF00CC 80088B9C 4E0097A2 */  sb         $s7, 0x4E($s4)
.Llevel_32_80088BA0:
/* 6DF00D0 80088BA0 0100D626 */  addiu      $s6, $s6, 0x1
/* 6DF00D4 80088BA4 0800C22A */  slti       $v0, $s6, 0x8
/* 6DF00D8 80088BA8 BDFF4014 */  bnez       $v0, .Llevel_32_80088AA0
/* 6DF00DC 80088BAC 2120A002 */   addu      $a0, $s5, $zero
.Llevel_32_80088BB0:
/* 6DF00E0 80088BB0 02000524 */  addiu      $a1, $zero, 0x2
/* 6DF00E4 80088BB4 AFEE000C */  jal        func_8003BABC
/* 6DF00E8 80088BB8 21300000 */   addu      $a2, $zero, $zero
/* 6DF00EC 80088BBC 41240208 */  j          .Llevel_32_80089104
/* 6DF00F0 80088BC0 00000000 */   nop
.Llevel_32_80088BC4:
/* 6DF00F4 80088BC4 0C00A28E */  lw         $v0, 0xC($s5)
/* 6DF00F8 80088BC8 00000000 */  nop
/* 6DF00FC 80088BCC 00044228 */  slti       $v0, $v0, 0x400
/* 6DF0100 80088BD0 4C014014 */  bnez       $v0, .Llevel_32_80089104
/* 6DF0104 80088BD4 00000000 */   nop
/* 6DF0108 80088BD8 1000A28E */  lw         $v0, 0x10($s5)
/* 6DF010C 80088BDC 00000000 */  nop
/* 6DF0110 80088BE0 00044228 */  slti       $v0, $v0, 0x400
/* 6DF0114 80088BE4 47014014 */  bnez       $v0, .Llevel_32_80089104
/* 6DF0118 80088BE8 00000000 */   nop
/* 6DF011C 80088BEC 1400A28E */  lw         $v0, 0x14($s5)
/* 6DF0120 80088BF0 00000000 */  nop
/* 6DF0124 80088BF4 00044228 */  slti       $v0, $v0, 0x400
/* 6DF0128 80088BF8 42014014 */  bnez       $v0, .Llevel_32_80089104
/* 6DF012C 80088BFC 0C00A426 */   addiu     $a0, $s5, 0xC
/* 6DF0130 80088C00 6564000C */  jal        func_80019194
/* 6DF0134 80088C04 96000524 */   addiu     $a1, $zero, 0x96
/* 6DF0138 80088C08 30004010 */  beqz       $v0, .Llevel_32_80088CCC
/* 6DF013C 80088C0C 0C00A426 */   addiu     $a0, $s5, 0xC
/* 6DF0140 80088C10 0780053C */  lui        $a1, %hi(D_80071918)
/* 6DF0144 80088C14 1819A524 */  addiu      $a1, $a1, %lo(D_80071918)
/* 6DF0148 80088C18 0000438E */  lw         $v1, 0x0($s2)
/* 6DF014C 80088C1C 0000A28C */  lw         $v0, 0x0($a1)
/* 6DF0150 80088C20 00000000 */  nop
/* 6DF0154 80088C24 18006200 */  mult       $v1, $v0
/* 6DF0158 80088C28 0400438E */  lw         $v1, 0x4($s2)
/* 6DF015C 80088C2C 12300000 */  mflo       $a2
/* 6DF0160 80088C30 0780023C */  lui        $v0, %hi(D_8007191C)
/* 6DF0164 80088C34 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 6DF0168 80088C38 00000000 */  nop
/* 6DF016C 80088C3C 18006200 */  mult       $v1, $v0
/* 6DF0170 80088C40 0800438E */  lw         $v1, 0x8($s2)
/* 6DF0174 80088C44 12200000 */  mflo       $a0
/* 6DF0178 80088C48 0780023C */  lui        $v0, %hi(D_80071920)
/* 6DF017C 80088C4C 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 6DF0180 80088C50 00000000 */  nop
/* 6DF0184 80088C54 18006200 */  mult       $v1, $v0
/* 6DF0188 80088C58 2110C400 */  addu       $v0, $a2, $a0
/* 6DF018C 80088C5C 12180000 */  mflo       $v1
/* 6DF0190 80088C60 21104300 */  addu       $v0, $v0, $v1
/* 6DF0194 80088C64 19004104 */  bgez       $v0, .Llevel_32_80088CCC
/* 6DF0198 80088C68 0C00A426 */   addiu     $a0, $s5, 0xC
/* 6DF019C 80088C6C 21204002 */  addu       $a0, $s2, $zero
/* 6DF01A0 80088C70 DD3B010C */  jal        func_8004EF74
/* 6DF01A4 80088C74 21304002 */   addu      $a2, $s2, $zero
/* 6DF01A8 80088C78 14004010 */  beqz       $v0, .Llevel_32_80088CCC
/* 6DF01AC 80088C7C 0C00A426 */   addiu     $a0, $s5, 0xC
/* 6DF01B0 80088C80 0000438E */  lw         $v1, 0x0($s2)
/* 6DF01B4 80088C84 00000000 */  nop
/* 6DF01B8 80088C88 40100300 */  sll        $v0, $v1, 1
/* 6DF01BC 80088C8C 21104300 */  addu       $v0, $v0, $v1
/* 6DF01C0 80088C90 40100200 */  sll        $v0, $v0, 1
/* 6DF01C4 80088C94 0400438E */  lw         $v1, 0x4($s2)
/* 6DF01C8 80088C98 C3100200 */  sra        $v0, $v0, 3
/* 6DF01CC 80088C9C 000042AE */  sw         $v0, 0x0($s2)
/* 6DF01D0 80088CA0 40100300 */  sll        $v0, $v1, 1
/* 6DF01D4 80088CA4 21104300 */  addu       $v0, $v0, $v1
/* 6DF01D8 80088CA8 40100200 */  sll        $v0, $v0, 1
/* 6DF01DC 80088CAC 0800438E */  lw         $v1, 0x8($s2)
/* 6DF01E0 80088CB0 C3100200 */  sra        $v0, $v0, 3
/* 6DF01E4 80088CB4 040042AE */  sw         $v0, 0x4($s2)
/* 6DF01E8 80088CB8 40100300 */  sll        $v0, $v1, 1
/* 6DF01EC 80088CBC 21104300 */  addu       $v0, $v0, $v1
/* 6DF01F0 80088CC0 40100200 */  sll        $v0, $v0, 1
/* 6DF01F4 80088CC4 C3100200 */  sra        $v0, $v0, 3
/* 6DF01F8 80088CC8 080042AE */  sw         $v0, 0x8($s2)
.Llevel_32_80088CCC:
/* 6DF01FC 80088CCC 21288000 */  addu       $a1, $a0, $zero
/* 6DF0200 80088CD0 653C010C */  jal        func_8004F194
/* 6DF0204 80088CD4 21304002 */   addu      $a2, $s2, $zero
/* 6DF0208 80088CD8 0800428E */  lw         $v0, 0x8($s2)
/* 6DF020C 80088CDC 00000000 */  nop
/* 6DF0210 80088CE0 FAFF4224 */  addiu      $v0, $v0, -0x6
/* 6DF0214 80088CE4 080042AE */  sw         $v0, 0x8($s2)
/* 6DF0218 80088CE8 80FF4228 */  slti       $v0, $v0, -0x80
/* 6DF021C 80088CEC 02004010 */  beqz       $v0, .Llevel_32_80088CF8
/* 6DF0220 80088CF0 80FF0224 */   addiu     $v0, $zero, -0x80
/* 6DF0224 80088CF4 080042AE */  sw         $v0, 0x8($s2)
.Llevel_32_80088CF8:
/* 6DF0228 80088CF8 10004426 */  addiu      $a0, $s2, 0x10
/* 6DF022C 80088CFC 69D6000C */  jal        func_800359A4
/* 6DF0230 80088D00 02000524 */   addiu     $a1, $zero, 0x2
/* 6DF0234 80088D04 24014010 */  beqz       $v0, .Llevel_32_80089198
/* 6DF0238 80088D08 00000000 */   nop
/* 6DF023C 80088D0C 41240208 */  j          .Llevel_32_80089104
/* 6DF0240 80088D10 00000000 */   nop
.Llevel_32_80088D14:
/* 6DF0244 80088D14 0C00A28E */  lw         $v0, 0xC($s5)
/* 6DF0248 80088D18 00000000 */  nop
/* 6DF024C 80088D1C 00044228 */  slti       $v0, $v0, 0x400
/* 6DF0250 80088D20 0B004014 */  bnez       $v0, .Llevel_32_80088D50
/* 6DF0254 80088D24 04000224 */   addiu     $v0, $zero, 0x4
/* 6DF0258 80088D28 1000A28E */  lw         $v0, 0x10($s5)
/* 6DF025C 80088D2C 00000000 */  nop
/* 6DF0260 80088D30 00044228 */  slti       $v0, $v0, 0x400
/* 6DF0264 80088D34 06004014 */  bnez       $v0, .Llevel_32_80088D50
/* 6DF0268 80088D38 04000224 */   addiu     $v0, $zero, 0x4
/* 6DF026C 80088D3C 1400A28E */  lw         $v0, 0x14($s5)
/* 6DF0270 80088D40 00000000 */  nop
/* 6DF0274 80088D44 00044228 */  slti       $v0, $v0, 0x400
/* 6DF0278 80088D48 02004010 */  beqz       $v0, .Llevel_32_80088D54
/* 6DF027C 80088D4C 04000224 */   addiu     $v0, $zero, 0x4
.Llevel_32_80088D50:
/* 6DF0280 80088D50 4800A2A2 */  sb         $v0, 0x48($s5)
.Llevel_32_80088D54:
/* 6DF0284 80088D54 8800A427 */  addiu      $a0, $sp, 0x88
/* 6DF0288 80088D58 0C00B026 */  addiu      $s0, $s5, 0xC
/* 6DF028C 80088D5C 5E3C010C */  jal        func_8004F178
/* 6DF0290 80088D60 21280002 */   addu      $a1, $s0, $zero
/* 6DF0294 80088D64 21200002 */  addu       $a0, $s0, $zero
/* 6DF0298 80088D68 21280002 */  addu       $a1, $s0, $zero
/* 6DF029C 80088D6C 653C010C */  jal        func_8004F194
/* 6DF02A0 80088D70 21304002 */   addu      $a2, $s2, $zero
/* 6DF02A4 80088D74 21204002 */  addu       $a0, $s2, $zero
/* 6DF02A8 80088D78 01000524 */  addiu      $a1, $zero, 0x1
/* 6DF02AC 80088D7C 0800428E */  lw         $v0, 0x8($s2)
/* 6DF02B0 80088D80 7D001324 */  addiu      $s3, $zero, 0x7D
/* 6DF02B4 80088D84 F6FF4224 */  addiu      $v0, $v0, -0xA
/* 6DF02B8 80088D88 7A3B010C */  jal        func_8004EDE8
/* 6DF02BC 80088D8C 080042AE */   sw        $v0, 0x8($s2)
/* 6DF02C0 80088D90 08004324 */  addiu      $v1, $v0, 0x8
/* 6DF02C4 80088D94 2A106302 */  slt        $v0, $s3, $v1
/* 6DF02C8 80088D98 02004010 */  beqz       $v0, .Llevel_32_80088DA4
/* 6DF02CC 80088D9C 21200002 */   addu      $a0, $s0, $zero
/* 6DF02D0 80088DA0 21986000 */  addu       $s3, $v1, $zero
.Llevel_32_80088DA4:
/* 6DF02D4 80088DA4 6564000C */  jal        func_80019194
/* 6DF02D8 80088DA8 21286002 */   addu      $a1, $s3, $zero
/* 6DF02DC 80088DAC 69004010 */  beqz       $v0, .Llevel_32_80088F54
/* 6DF02E0 80088DB0 00000000 */   nop
/* 6DF02E4 80088DB4 0780113C */  lui        $s1, %hi(D_80071920)
/* 6DF02E8 80088DB8 20193126 */  addiu      $s1, $s1, %lo(D_80071920)
/* 6DF02EC 80088DBC F8FF3426 */  addiu      $s4, $s1, -0x8
/* 6DF02F0 80088DC0 21208002 */  addu       $a0, $s4, $zero
/* 6DF02F4 80088DC4 140040A2 */  sb         $zero, 0x14($s2)
/* 6DF02F8 80088DC8 0000308E */  lw         $s0, 0x0($s1)
/* 6DF02FC 80088DCC 00000000 */  nop
/* 6DF0300 80088DD0 02000106 */  bgez       $s0, .Llevel_32_80088DDC
/* 6DF0304 80088DD4 00000000 */   nop
/* 6DF0308 80088DD8 23801000 */  negu       $s0, $s0
.Llevel_32_80088DDC:
/* 6DF030C 80088DDC 7A3B010C */  jal        func_8004EDE8
/* 6DF0310 80088DE0 21280000 */   addu      $a1, $zero, $zero
/* 6DF0314 80088DE4 2A800202 */  slt        $s0, $s0, $v0
/* 6DF0318 80088DE8 2D000012 */  beqz       $s0, .Llevel_32_80088EA0
/* 6DF031C 80088DEC 9800B027 */   addiu     $s0, $sp, 0x98
/* 6DF0320 80088DF0 21200002 */  addu       $a0, $s0, $zero
/* 6DF0324 80088DF4 5E3C010C */  jal        func_8004F178
/* 6DF0328 80088DF8 21288002 */   addu      $a1, $s4, $zero
/* 6DF032C 80088DFC 21204002 */  addu       $a0, $s2, $zero
/* 6DF0330 80088E00 21280002 */  addu       $a1, $s0, $zero
/* 6DF0334 80088E04 DD3B010C */  jal        func_8004EF74
/* 6DF0338 80088E08 21304002 */   addu      $a2, $s2, $zero
/* 6DF033C 80088E0C 51004010 */  beqz       $v0, .Llevel_32_80088F54
/* 6DF0340 80088E10 2120A002 */   addu      $a0, $s5, $zero
/* 6DF0344 80088E14 21280000 */  addu       $a1, $zero, $zero
/* 6DF0348 80088E18 0000438E */  lw         $v1, 0x0($s2)
/* 6DF034C 80088E1C 21300000 */  addu       $a2, $zero, $zero
/* 6DF0350 80088E20 40100300 */  sll        $v0, $v1, 1
/* 6DF0354 80088E24 21104300 */  addu       $v0, $v0, $v1
/* 6DF0358 80088E28 40100200 */  sll        $v0, $v0, 1
/* 6DF035C 80088E2C 0400438E */  lw         $v1, 0x4($s2)
/* 6DF0360 80088E30 C3100200 */  sra        $v0, $v0, 3
/* 6DF0364 80088E34 000042AE */  sw         $v0, 0x0($s2)
/* 6DF0368 80088E38 40100300 */  sll        $v0, $v1, 1
/* 6DF036C 80088E3C 21104300 */  addu       $v0, $v0, $v1
/* 6DF0370 80088E40 40100200 */  sll        $v0, $v0, 1
/* 6DF0374 80088E44 0800438E */  lw         $v1, 0x8($s2)
/* 6DF0378 80088E48 C3100200 */  sra        $v0, $v0, 3
/* 6DF037C 80088E4C 040042AE */  sw         $v0, 0x4($s2)
/* 6DF0380 80088E50 40100300 */  sll        $v0, $v1, 1
/* 6DF0384 80088E54 21104300 */  addu       $v0, $v0, $v1
/* 6DF0388 80088E58 40100200 */  sll        $v0, $v0, 1
/* 6DF038C 80088E5C C3100200 */  sra        $v0, $v0, 3
/* 6DF0390 80088E60 AFEE000C */  jal        func_8003BABC
/* 6DF0394 80088E64 080042AE */   sw        $v0, 0x8($s2)
/* 6DF0398 80088E68 21204000 */  addu       $a0, $v0, $zero
/* 6DF039C 80088E6C 39008004 */  bltz       $a0, .Llevel_32_80088F54
/* 6DF03A0 80088E70 00000000 */   nop
/* 6DF03A4 80088E74 0800428E */  lw         $v0, 0x8($s2)
/* 6DF03A8 80088E78 00000000 */  nop
/* 6DF03AC 80088E7C 02004104 */  bgez       $v0, .Llevel_32_80088E88
/* 6DF03B0 80088E80 00000000 */   nop
/* 6DF03B4 80088E84 23100200 */  negu       $v0, $v0
.Llevel_32_80088E88:
/* 6DF03B8 80088E88 80280200 */  sll        $a1, $v0, 2
/* 6DF03BC 80088E8C 2128A200 */  addu       $a1, $a1, $v0
/* 6DF03C0 80088E90 50F0000C */  jal        func_8003C140
/* 6DF03C4 80088E94 C0280500 */   sll       $a1, $a1, 3
/* 6DF03C8 80088E98 D5230208 */  j          .Llevel_32_80088F54
/* 6DF03CC 80088E9C 00000000 */   nop
.Llevel_32_80088EA0:
/* 6DF03D0 80088EA0 0000308E */  lw         $s0, 0x0($s1)
/* 6DF03D4 80088EA4 00000000 */  nop
/* 6DF03D8 80088EA8 05000106 */  bgez       $s0, .Llevel_32_80088EC0
/* 6DF03DC 80088EAC 00000000 */   nop
/* 6DF03E0 80088EB0 0800428E */  lw         $v0, 0x8($s2)
/* 6DF03E4 80088EB4 00000000 */  nop
/* 6DF03E8 80088EB8 0700401C */  bgtz       $v0, .Llevel_32_80088ED8
/* 6DF03EC 80088EBC 2120A002 */   addu      $a0, $s5, $zero
.Llevel_32_80088EC0:
/* 6DF03F0 80088EC0 2400001A */  blez       $s0, .Llevel_32_80088F54
/* 6DF03F4 80088EC4 00000000 */   nop
/* 6DF03F8 80088EC8 0800428E */  lw         $v0, 0x8($s2)
/* 6DF03FC 80088ECC 00000000 */  nop
/* 6DF0400 80088ED0 20004104 */  bgez       $v0, .Llevel_32_80088F54
/* 6DF0404 80088ED4 2120A002 */   addu      $a0, $s5, $zero
.Llevel_32_80088ED8:
/* 6DF0408 80088ED8 21280000 */  addu       $a1, $zero, $zero
/* 6DF040C 80088EDC 0800428E */  lw         $v0, 0x8($s2)
/* 6DF0410 80088EE0 21300000 */  addu       $a2, $zero, $zero
/* 6DF0414 80088EE4 000040AE */  sw         $zero, 0x0($s2)
/* 6DF0418 80088EE8 040040AE */  sw         $zero, 0x4($s2)
/* 6DF041C 80088EEC 23100200 */  negu       $v0, $v0
/* 6DF0420 80088EF0 43100200 */  sra        $v0, $v0, 1
/* 6DF0424 80088EF4 AFEE000C */  jal        func_8003BABC
/* 6DF0428 80088EF8 080042AE */   sw        $v0, 0x8($s2)
/* 6DF042C 80088EFC 21204000 */  addu       $a0, $v0, $zero
/* 6DF0430 80088F00 0A008004 */  bltz       $a0, .Llevel_32_80088F2C
/* 6DF0434 80088F04 00000000 */   nop
/* 6DF0438 80088F08 0800428E */  lw         $v0, 0x8($s2)
/* 6DF043C 80088F0C 00000000 */  nop
/* 6DF0440 80088F10 02004104 */  bgez       $v0, .Llevel_32_80088F1C
/* 6DF0444 80088F14 00000000 */   nop
/* 6DF0448 80088F18 23100200 */  negu       $v0, $v0
.Llevel_32_80088F1C:
/* 6DF044C 80088F1C 80280200 */  sll        $a1, $v0, 2
/* 6DF0450 80088F20 2128A200 */  addu       $a1, $a1, $v0
/* 6DF0454 80088F24 50F0000C */  jal        func_8003C140
/* 6DF0458 80088F28 C0280500 */   sll       $a1, $a1, 3
.Llevel_32_80088F2C:
/* 6DF045C 80088F2C 0800428E */  lw         $v0, 0x8($s2)
/* 6DF0460 80088F30 00000000 */  nop
/* 6DF0464 80088F34 0E004228 */  slti       $v0, $v0, 0xE
/* 6DF0468 80088F38 06004010 */  beqz       $v0, .Llevel_32_80088F54
/* 6DF046C 80088F3C 00000000 */   nop
/* 6DF0470 80088F40 4ED7000C */  jal        func_80035D38
/* 6DF0474 80088F44 2120A002 */   addu      $a0, $s5, $zero
/* 6DF0478 80088F48 21105300 */  addu       $v0, $v0, $s3
/* 6DF047C 80088F4C 1400A2AE */  sw         $v0, 0x14($s5)
/* 6DF0480 80088F50 4800A0A2 */  sb         $zero, 0x48($s5)
.Llevel_32_80088F54:
/* 6DF0484 80088F54 9171010C */  jal        rand
/* 6DF0488 80088F58 00000000 */   nop
/* 6DF048C 80088F5C 03004230 */  andi       $v0, $v0, 0x3
/* 6DF0490 80088F60 9171010C */  jal        rand
/* 6DF0494 80088F64 8800A2AF */   sw        $v0, 0x88($sp)
/* 6DF0498 80088F68 03004230 */  andi       $v0, $v0, 0x3
/* 6DF049C 80088F6C 8C00A2AF */  sw         $v0, 0x8C($sp)
/* 6DF04A0 80088F70 14000224 */  addiu      $v0, $zero, 0x14
/* 6DF04A4 80088F74 9000A2AF */  sw         $v0, 0x90($sp)
/* 6DF04A8 80088F78 14004292 */  lbu        $v0, 0x14($s2)
/* 6DF04AC 80088F7C 00000000 */  nop
/* 6DF04B0 80088F80 81004010 */  beqz       $v0, .Llevel_32_80089188
/* 6DF04B4 80088F84 00000000 */   nop
/* 6DF04B8 80088F88 0780023C */  lui        $v0, %hi(D_8006C640)
/* 6DF04BC 80088F8C 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 6DF04C0 80088F90 00000000 */  nop
/* 6DF04C4 80088F94 01004230 */  andi       $v0, $v0, 0x1
/* 6DF04C8 80088F98 7B004010 */  beqz       $v0, .Llevel_32_80089188
/* 6DF04CC 80088F9C 01000424 */   addiu     $a0, $zero, 0x1
/* 6DF04D0 80088FA0 3A000524 */  addiu      $a1, $zero, 0x3A
/* 6DF04D4 80088FA4 0C00A626 */  addiu      $a2, $s5, 0xC
/* 6DF04D8 80088FA8 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DF04DC 80088FAC E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DF04E0 80088FB0 60240208 */  j          .Llevel_32_80089180
/* 6DF04E4 80088FB4 8800A727 */   addiu     $a3, $sp, 0x88
.Llevel_32_80088FB8:
/* 6DF04E8 80088FB8 0C00A28E */  lw         $v0, 0xC($s5)
/* 6DF04EC 80088FBC 00000000 */  nop
/* 6DF04F0 80088FC0 00044228 */  slti       $v0, $v0, 0x400
/* 6DF04F4 80088FC4 4F004014 */  bnez       $v0, .Llevel_32_80089104
/* 6DF04F8 80088FC8 00000000 */   nop
/* 6DF04FC 80088FCC 1000A28E */  lw         $v0, 0x10($s5)
/* 6DF0500 80088FD0 00000000 */  nop
/* 6DF0504 80088FD4 00044228 */  slti       $v0, $v0, 0x400
/* 6DF0508 80088FD8 4A004014 */  bnez       $v0, .Llevel_32_80089104
/* 6DF050C 80088FDC 00000000 */   nop
/* 6DF0510 80088FE0 1400A28E */  lw         $v0, 0x14($s5)
/* 6DF0514 80088FE4 00000000 */  nop
/* 6DF0518 80088FE8 00044228 */  slti       $v0, $v0, 0x400
/* 6DF051C 80088FEC 45004014 */  bnez       $v0, .Llevel_32_80089104
/* 6DF0520 80088FF0 9800A427 */   addiu     $a0, $sp, 0x98
/* 6DF0524 80088FF4 0C00B026 */  addiu      $s0, $s5, 0xC
/* 6DF0528 80088FF8 5E3C010C */  jal        func_8004F178
/* 6DF052C 80088FFC 21280002 */   addu      $a1, $s0, $zero
/* 6DF0530 80089000 21200002 */  addu       $a0, $s0, $zero
/* 6DF0534 80089004 21280002 */  addu       $a1, $s0, $zero
/* 6DF0538 80089008 653C010C */  jal        func_8004F194
/* 6DF053C 8008900C 21304002 */   addu      $a2, $s2, $zero
/* 6DF0540 80089010 0C00458E */  lw         $a1, 0xC($s2)
/* 6DF0544 80089014 00000000 */  nop
/* 6DF0548 80089018 1700A010 */  beqz       $a1, .Llevel_32_80089078
/* 6DF054C 8008901C 21200002 */   addu      $a0, $s0, $zero
/* 6DF0550 80089020 CD3C010C */  jal        func_8004F334
/* 6DF0554 80089024 0C00A524 */   addiu     $a1, $a1, 0xC
/* 6DF0558 80089028 F4014228 */  slti       $v0, $v0, 0x1F4
/* 6DF055C 8008902C 12004010 */  beqz       $v0, .Llevel_32_80089078
/* 6DF0560 80089030 00000000 */   nop
/* 6DF0564 80089034 3800A286 */  lh         $v0, 0x38($s5)
/* 6DF0568 80089038 0C00438E */  lw         $v1, 0xC($s2)
/* 6DF056C 8008903C 1400A48E */  lw         $a0, 0x14($s5)
/* 6DF0570 80089040 1400638C */  lw         $v1, 0x14($v1)
/* 6DF0574 80089044 23208200 */  subu       $a0, $a0, $v0
/* 6DF0578 80089048 23108300 */  subu       $v0, $a0, $v1
/* 6DF057C 8008904C 05004004 */  bltz       $v0, .Llevel_32_80089064
/* 6DF0580 80089050 58024228 */   slti      $v0, $v0, 0x258
/* 6DF0584 80089054 07004014 */  bnez       $v0, .Llevel_32_80089074
/* 6DF0588 80089058 04000224 */   addiu     $v0, $zero, 0x4
/* 6DF058C 8008905C 1F240208 */  j          .Llevel_32_8008907C
/* 6DF0590 80089060 0C00B026 */   addiu     $s0, $s5, 0xC
.Llevel_32_80089064:
/* 6DF0594 80089064 23106400 */  subu       $v0, $v1, $a0
/* 6DF0598 80089068 58024228 */  slti       $v0, $v0, 0x258
/* 6DF059C 8008906C 02004010 */  beqz       $v0, .Llevel_32_80089078
/* 6DF05A0 80089070 04000224 */   addiu     $v0, $zero, 0x4
.Llevel_32_80089074:
/* 6DF05A4 80089074 4800A2A2 */  sb         $v0, 0x48($s5)
.Llevel_32_80089078:
/* 6DF05A8 80089078 0C00B026 */  addiu      $s0, $s5, 0xC
.Llevel_32_8008907C:
/* 6DF05AC 8008907C 21200002 */  addu       $a0, $s0, $zero
/* 6DF05B0 80089080 64000524 */  addiu      $a1, $zero, 0x64
/* 6DF05B4 80089084 A270000C */  jal        func_8001C288
/* 6DF05B8 80089088 07000624 */   addiu     $a2, $zero, 0x7
/* 6DF05BC 8008908C 0A004010 */  beqz       $v0, .Llevel_32_800890B8
/* 6DF05C0 80089090 15004426 */   addiu     $a0, $s2, 0x15
/* 6DF05C4 80089094 0000448E */  lw         $a0, 0x0($s2)
/* 6DF05C8 80089098 0400458E */  lw         $a1, 0x4($s2)
/* 6DF05CC 8008909C 203A010C */  jal        func_8004E880
/* 6DF05D0 800890A0 21300000 */   addu      $a2, $zero, $zero
/* 6DF05D4 800890A4 0780013C */  lui        $at, %hi(D_80070328 + 0x298)
/* 6DF05D8 800890A8 C00522AC */  sw         $v0, %lo(D_80070328 + 0x298)($at)
/* 6DF05DC 800890AC 04000224 */  addiu      $v0, $zero, 0x4
/* 6DF05E0 800890B0 4800A2A2 */  sb         $v0, 0x48($s5)
/* 6DF05E4 800890B4 15004426 */  addiu      $a0, $s2, 0x15
.Llevel_32_800890B8:
/* 6DF05E8 800890B8 69D6000C */  jal        func_800359A4
/* 6DF05EC 800890BC 01000524 */   addiu     $a1, $zero, 0x1
/* 6DF05F0 800890C0 0B004010 */  beqz       $v0, .Llevel_32_800890F0
/* 6DF05F4 800890C4 21200002 */   addu      $a0, $s0, $zero
/* 6DF05F8 800890C8 96000524 */  addiu      $a1, $zero, 0x96
/* 6DF05FC 800890CC 21300000 */  addu       $a2, $zero, $zero
/* 6DF0600 800890D0 21380000 */  addu       $a3, $zero, $zero
/* 6DF0604 800890D4 0010023C */  lui        $v0, (0x10000000 >> 16)
/* 6DF0608 800890D8 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DF060C 800890DC 8C6E000C */  jal        func_8001BA30
/* 6DF0610 800890E0 1400B5AF */   sw        $s5, 0x14($sp)
/* 6DF0614 800890E4 02004010 */  beqz       $v0, .Llevel_32_800890F0
/* 6DF0618 800890E8 04000224 */   addiu     $v0, $zero, 0x4
/* 6DF061C 800890EC 4800A2A2 */  sb         $v0, 0x48($s5)
.Llevel_32_800890F0:
/* 6DF0620 800890F0 10004426 */  addiu      $a0, $s2, 0x10
/* 6DF0624 800890F4 69D6000C */  jal        func_800359A4
/* 6DF0628 800890F8 02000524 */   addiu     $a1, $zero, 0x2
/* 6DF062C 800890FC 05004010 */  beqz       $v0, .Llevel_32_80089114
/* 6DF0630 80089100 9800B127 */   addiu     $s1, $sp, 0x98
.Llevel_32_80089104:
/* 6DF0634 80089104 C656010C */  jal        func_80055B18
/* 6DF0638 80089108 2120A002 */   addu      $a0, $s5, $zero
/* 6DF063C 8008910C 66240208 */  j          .Llevel_32_80089198
/* 6DF0640 80089110 00000000 */   nop
.Llevel_32_80089114:
/* 6DF0644 80089114 21202002 */  addu       $a0, $s1, $zero
/* 6DF0648 80089118 0C00B026 */  addiu      $s0, $s5, 0xC
/* 6DF064C 8008911C DA60000C */  jal        func_80018368
/* 6DF0650 80089120 21280002 */   addu      $a1, $s0, $zero
/* 6DF0654 80089124 02004010 */  beqz       $v0, .Llevel_32_80089130
/* 6DF0658 80089128 04000224 */   addiu     $v0, $zero, 0x4
/* 6DF065C 8008912C 4800A2A2 */  sb         $v0, 0x48($s5)
.Llevel_32_80089130:
/* 6DF0660 80089130 21200000 */  addu       $a0, $zero, $zero
/* 6DF0664 80089134 F7D8000C */  jal        func_800363DC
/* 6DF0668 80089138 07000524 */   addiu     $a1, $zero, 0x7
/* 6DF066C 8008913C 21200000 */  addu       $a0, $zero, $zero
/* 6DF0670 80089140 07000524 */  addiu      $a1, $zero, 0x7
/* 6DF0674 80089144 F7D8000C */  jal        func_800363DC
/* 6DF0678 80089148 9800A2AF */   sw        $v0, 0x98($sp)
/* 6DF067C 8008914C 9C00A2AF */  sw         $v0, 0x9C($sp)
/* 6DF0680 80089150 0780023C */  lui        $v0, %hi(D_8006C640)
/* 6DF0684 80089154 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 6DF0688 80089158 0F000324 */  addiu      $v1, $zero, 0xF
/* 6DF068C 8008915C 01004230 */  andi       $v0, $v0, 0x1
/* 6DF0690 80089160 09004010 */  beqz       $v0, .Llevel_32_80089188
/* 6DF0694 80089164 A000A3AF */   sw        $v1, 0xA0($sp)
/* 6DF0698 80089168 01000424 */  addiu      $a0, $zero, 0x1
/* 6DF069C 8008916C 3A000524 */  addiu      $a1, $zero, 0x3A
/* 6DF06A0 80089170 21300002 */  addu       $a2, $s0, $zero
/* 6DF06A4 80089174 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DF06A8 80089178 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DF06AC 8008917C 21382002 */  addu       $a3, $s1, $zero
.Llevel_32_80089180:
/* 6DF06B0 80089180 09F84000 */  jalr       $v0
/* 6DF06B4 80089184 00000000 */   nop
.Llevel_32_80089188:
/* 6DF06B8 80089188 4ED7000C */  jal        func_80035D38
/* 6DF06BC 8008918C 2120A002 */   addu      $a0, $s5, $zero
/* 6DF06C0 80089190 A758010C */  jal        func_8005629C
/* 6DF06C4 80089194 2120A002 */   addu      $a0, $s5, $zero
.Llevel_32_80089198:
/* 6DF06C8 80089198 EC00BF8F */  lw         $ra, 0xEC($sp)
/* 6DF06CC 8008919C E800BE8F */  lw         $fp, 0xE8($sp)
/* 6DF06D0 800891A0 E400B78F */  lw         $s7, 0xE4($sp)
/* 6DF06D4 800891A4 E000B68F */  lw         $s6, 0xE0($sp)
/* 6DF06D8 800891A8 DC00B58F */  lw         $s5, 0xDC($sp)
/* 6DF06DC 800891AC D800B48F */  lw         $s4, 0xD8($sp)
/* 6DF06E0 800891B0 D400B38F */  lw         $s3, 0xD4($sp)
/* 6DF06E4 800891B4 D000B28F */  lw         $s2, 0xD0($sp)
/* 6DF06E8 800891B8 CC00B18F */  lw         $s1, 0xCC($sp)
/* 6DF06EC 800891BC C800B08F */  lw         $s0, 0xC8($sp)
/* 6DF06F0 800891C0 F000BD27 */  addiu      $sp, $sp, 0xF0
/* 6DF06F4 800891C4 0800E003 */  jr         $ra
/* 6DF06F8 800891C8 00000000 */   nop
.size func_level_32_800881F0, . - func_level_32_800881F0
