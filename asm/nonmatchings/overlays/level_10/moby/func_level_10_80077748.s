.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_10_80077748
/* 3ADC478 80077748 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 3ADC47C 8007774C 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 3ADC480 80077750 21888000 */  addu       $s1, $a0, $zero
/* 3ADC484 80077754 3400B3AF */  sw         $s3, 0x34($sp)
/* 3ADC488 80077758 3800B4AF */  sw         $s4, 0x38($sp)
/* 3ADC48C 8007775C 0780143C */  lui        $s4, %hi(D_80070328 + 0x24C)
/* 3ADC490 80077760 74059426 */  addiu      $s4, $s4, %lo(D_80070328 + 0x24C)
/* 3ADC494 80077764 01000324 */  addiu      $v1, $zero, 0x1
/* 3ADC498 80077768 4400BFAF */  sw         $ra, 0x44($sp)
/* 3ADC49C 8007776C 4000B6AF */  sw         $s6, 0x40($sp)
/* 3ADC4A0 80077770 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 3ADC4A4 80077774 3000B2AF */  sw         $s2, 0x30($sp)
/* 3ADC4A8 80077778 2800B0AF */  sw         $s0, 0x28($sp)
/* 3ADC4AC 8007777C 0000828E */  lw         $v0, 0x0($s4)
/* 3ADC4B0 80077780 0000328E */  lw         $s2, 0x0($s1)
/* 3ADC4B4 80077784 02004314 */  bne        $v0, $v1, .Llevel_10_80077790
/* 3ADC4B8 80077788 1404133C */   lui       $s3, (0x4140000 >> 16)
/* 3ADC4BC 8007778C 1C04133C */  lui        $s3, (0x41C0000 >> 16)
.Llevel_10_80077790:
/* 3ADC4C0 80077790 1000428E */  lw         $v0, 0x10($s2)
/* 3ADC4C4 80077794 00000000 */  nop
/* 3ADC4C8 80077798 03004010 */  beqz       $v0, .Llevel_10_800777A8
/* 3ADC4CC 8007779C 00000000 */   nop
/* 3ADC4D0 800777A0 05DC000C */  jal        func_80037014
/* 3ADC4D4 800777A4 21202002 */   addu      $a0, $s1, $zero
.Llevel_10_800777A8:
/* 3ADC4D8 800777A8 0680023C */  lui        $v0, %hi(D_8006581C)
/* 3ADC4DC 800777AC 1C58428C */  lw         $v0, %lo(D_8006581C)($v0)
/* 3ADC4E0 800777B0 00000000 */  nop
/* 3ADC4E4 800777B4 02004228 */  slti       $v0, $v0, 0x2
/* 3ADC4E8 800777B8 45004014 */  bnez       $v0, .Llevel_10_800778D0
/* 3ADC4EC 800777BC C9000224 */   addiu     $v0, $zero, 0xC9
/* 3ADC4F0 800777C0 36002386 */  lh         $v1, 0x36($s1)
/* 3ADC4F4 800777C4 00000000 */  nop
/* 3ADC4F8 800777C8 41006214 */  bne        $v1, $v0, .Llevel_10_800778D0
/* 3ADC4FC 800777CC 0C003026 */   addiu     $s0, $s1, 0xC
/* 3ADC500 800777D0 21200002 */  addu       $a0, $s0, $zero
/* 3ADC504 800777D4 CD3C010C */  jal        func_8004F334
/* 3ADC508 800777D8 B4FD8526 */   addiu     $a1, $s4, -0x24C
/* 3ADC50C 800777DC 0680033C */  lui        $v1, %hi(D_80065810)
/* 3ADC510 800777E0 1058638C */  lw         $v1, %lo(D_80065810)($v1)
/* 3ADC514 800777E4 00000000 */  nop
/* 3ADC518 800777E8 2A104300 */  slt        $v0, $v0, $v1
/* 3ADC51C 800777EC 38004010 */  beqz       $v0, .Llevel_10_800778D0
/* 3ADC520 800777F0 00000000 */   nop
/* 3ADC524 800777F4 1400228E */  lw         $v0, 0x14($s1)
/* 3ADC528 800777F8 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 3ADC52C 800777FC 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 3ADC530 80077800 64014224 */  addiu      $v0, $v0, 0x164
/* 3ADC534 80077804 23186200 */  subu       $v1, $v1, $v0
/* 3ADC538 80077808 0680023C */  lui        $v0, %hi(D_80065818)
/* 3ADC53C 8007780C 1858428C */  lw         $v0, %lo(D_80065818)($v0)
/* 3ADC540 80077810 02006104 */  bgez       $v1, .Llevel_10_8007781C
/* 3ADC544 80077814 00000000 */   nop
/* 3ADC548 80077818 23180300 */  negu       $v1, $v1
.Llevel_10_8007781C:
/* 3ADC54C 8007781C 2A186200 */  slt        $v1, $v1, $v0
/* 3ADC550 80077820 2B006010 */  beqz       $v1, .Llevel_10_800778D0
/* 3ADC554 80077824 00000000 */   nop
/* 3ADC558 80077828 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 3ADC55C 8007782C 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 3ADC560 80077830 00000000 */  nop
/* 3ADC564 80077834 26008010 */  beqz       $a0, .Llevel_10_800778D0
/* 3ADC568 80077838 0C008424 */   addiu     $a0, $a0, 0xC
/* 3ADC56C 8007783C 21280002 */  addu       $a1, $s0, $zero
/* 3ADC570 80077840 8E4F000C */  jal        func_80013E38
/* 3ADC574 80077844 04000624 */   addiu     $a2, $zero, 0x4
/* 3ADC578 80077848 21004010 */  beqz       $v0, .Llevel_10_800778D0
/* 3ADC57C 8007784C 00000000 */   nop
/* 3ADC580 80077850 0780033C */  lui        $v1, %hi(D_8006C65C)
/* 3ADC584 80077854 5CC6638C */  lw         $v1, %lo(D_8006C65C)($v1)
/* 3ADC588 80077858 00000000 */  nop
/* 3ADC58C 8007785C 0000708C */  lw         $s0, 0x0($v1)
/* 3ADC590 80077860 00000000 */  nop
/* 3ADC594 80077864 1400028E */  lw         $v0, 0x14($s0)
/* 3ADC598 80077868 00000000 */  nop
/* 3ADC59C 8007786C 09004010 */  beqz       $v0, .Llevel_10_80077894
/* 3ADC5A0 80077870 00000000 */   nop
/* 3ADC5A4 80077874 16005110 */  beq        $v0, $s1, .Llevel_10_800778D0
/* 3ADC5A8 80077878 00000000 */   nop
/* 3ADC5AC 8007787C 00000286 */  lh         $v0, 0x0($s0)
/* 3ADC5B0 80077880 00000000 */  nop
/* 3ADC5B4 80077884 12004018 */  blez       $v0, .Llevel_10_800778D0
/* 3ADC5B8 80077888 00000000 */   nop
/* 3ADC5BC 8007788C 34DE0108 */  j          .Llevel_10_800778D0
/* 3ADC5C0 80077890 000000A6 */   sh        $zero, 0x0($s0)
.Llevel_10_80077894:
/* 3ADC5C4 80077894 09000224 */  addiu      $v0, $zero, 0x9
/* 3ADC5C8 80077898 490062A0 */  sb         $v0, 0x49($v1)
/* 3ADC5CC 8007789C 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 3ADC5D0 800778A0 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 3ADC5D4 800778A4 02000592 */  lbu        $a1, 0x2($s0)
/* 3ADC5D8 800778A8 140011AE */  sw         $s1, 0x14($s0)
/* 3ADC5DC 800778AC F0EF000C */  jal        func_8003BFC0
/* 3ADC5E0 800778B0 000000A6 */   sh        $zero, 0x0($s0)
/* 3ADC5E4 800778B4 06004014 */  bnez       $v0, .Llevel_10_800778D0
/* 3ADC5E8 800778B8 21280000 */   addu      $a1, $zero, $zero
/* 3ADC5EC 800778BC 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 3ADC5F0 800778C0 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 3ADC5F4 800778C4 AFEE000C */  jal        func_8003BABC
/* 3ADC5F8 800778C8 21300000 */   addu      $a2, $zero, $zero
/* 3ADC5FC 800778CC 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_10_800778D0:
/* 3ADC600 800778D0 0000438E */  lw         $v1, 0x0($s2)
/* 3ADC604 800778D4 00000000 */  nop
/* 3ADC608 800778D8 39006010 */  beqz       $v1, .Llevel_10_800779C0
/* 3ADC60C 800778DC 00000000 */   nop
/* 3ADC610 800778E0 0780023C */  lui        $v0, %hi(D_8006C648)
/* 3ADC614 800778E4 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 3ADC618 800778E8 00000000 */  nop
/* 3ADC61C 800778EC 21186200 */  addu       $v1, $v1, $v0
/* 3ADC620 800778F0 40006228 */  slti       $v0, $v1, 0x40
/* 3ADC624 800778F4 29004010 */  beqz       $v0, .Llevel_10_8007799C
/* 3ADC628 800778F8 000043AE */   sw        $v1, 0x0($s2)
/* 3ADC62C 800778FC 43100300 */  sra        $v0, $v1, 1
/* 3ADC630 80077900 1800438E */  lw         $v1, 0x18($s2)
/* 3ADC634 80077904 40100200 */  sll        $v0, $v0, 1
/* 3ADC638 80077908 21104300 */  addu       $v0, $v0, $v1
/* 3ADC63C 8007790C 0400438E */  lw         $v1, 0x4($s2)
/* 3ADC640 80077910 00004290 */  lbu        $v0, 0x0($v0)
/* 3ADC644 80077914 00000000 */  nop
/* 3ADC648 80077918 21104300 */  addu       $v0, $v0, $v1
/* 3ADC64C 8007791C 440022A2 */  sb         $v0, 0x44($s1)
/* 3ADC650 80077920 0000428E */  lw         $v0, 0x0($s2)
/* 3ADC654 80077924 1800438E */  lw         $v1, 0x18($s2)
/* 3ADC658 80077928 43100200 */  sra        $v0, $v0, 1
/* 3ADC65C 8007792C 40100200 */  sll        $v0, $v0, 1
/* 3ADC660 80077930 21104300 */  addu       $v0, $v0, $v1
/* 3ADC664 80077934 0800438E */  lw         $v1, 0x8($s2)
/* 3ADC668 80077938 01004290 */  lbu        $v0, 0x1($v0)
/* 3ADC66C 8007793C 00000000 */  nop
/* 3ADC670 80077940 21104300 */  addu       $v0, $v0, $v1
/* 3ADC674 80077944 450022A2 */  sb         $v0, 0x45($s1)
/* 3ADC678 80077948 0000428E */  lw         $v0, 0x0($s2)
/* 3ADC67C 8007794C 1800438E */  lw         $v1, 0x18($s2)
/* 3ADC680 80077950 43100200 */  sra        $v0, $v0, 1
/* 3ADC684 80077954 40100200 */  sll        $v0, $v0, 1
/* 3ADC688 80077958 21104300 */  addu       $v0, $v0, $v1
/* 3ADC68C 8007795C 00004380 */  lb         $v1, 0x0($v0)
/* 3ADC690 80077960 01004280 */  lb         $v0, 0x1($v0)
/* 3ADC694 80077964 02006104 */  bgez       $v1, .Llevel_10_80077970
/* 3ADC698 80077968 00000000 */   nop
/* 3ADC69C 8007796C 23180300 */  negu       $v1, $v1
.Llevel_10_80077970:
/* 3ADC6A0 80077970 02004104 */  bgez       $v0, .Llevel_10_8007797C
/* 3ADC6A4 80077974 00000000 */   nop
/* 3ADC6A8 80077978 23100200 */  negu       $v0, $v0
.Llevel_10_8007797C:
/* 3ADC6AC 8007797C 21186200 */  addu       $v1, $v1, $v0
/* 3ADC6B0 80077980 40100300 */  sll        $v0, $v1, 1
/* 3ADC6B4 80077984 21104300 */  addu       $v0, $v0, $v1
/* 3ADC6B8 80077988 0C00438E */  lw         $v1, 0xC($s2)
/* 3ADC6BC 8007798C 40100200 */  sll        $v0, $v0, 1
/* 3ADC6C0 80077990 21186200 */  addu       $v1, $v1, $v0
/* 3ADC6C4 80077994 70DE0108 */  j          .Llevel_10_800779C0
/* 3ADC6C8 80077998 140023AE */   sw        $v1, 0x14($s1)
.Llevel_10_8007799C:
/* 3ADC6CC 8007799C 0400428E */  lw         $v0, 0x4($s2)
/* 3ADC6D0 800779A0 000040AE */  sw         $zero, 0x0($s2)
/* 3ADC6D4 800779A4 440022A2 */  sb         $v0, 0x44($s1)
/* 3ADC6D8 800779A8 0800428E */  lw         $v0, 0x8($s2)
/* 3ADC6DC 800779AC 00000000 */  nop
/* 3ADC6E0 800779B0 450022A2 */  sb         $v0, 0x45($s1)
/* 3ADC6E4 800779B4 0C00428E */  lw         $v0, 0xC($s2)
/* 3ADC6E8 800779B8 00000000 */  nop
/* 3ADC6EC 800779BC 140022AE */  sw         $v0, 0x14($s1)
.Llevel_10_800779C0:
/* 3ADC6F0 800779C0 36002386 */  lh         $v1, 0x36($s1)
/* 3ADC6F4 800779C4 C9000224 */  addiu      $v0, $zero, 0xC9
/* 3ADC6F8 800779C8 03006214 */  bne        $v1, $v0, .Llevel_10_800779D8
/* 3ADC6FC 800779CC CA000224 */   addiu     $v0, $zero, 0xCA
/* 3ADC700 800779D0 78DE0108 */  j          .Llevel_10_800779E0
/* 3ADC704 800779D4 8212023C */   lui       $v0, (0x12820000 >> 16)
.Llevel_10_800779D8:
/* 3ADC708 800779D8 02006214 */  bne        $v1, $v0, .Llevel_10_800779E4
/* 3ADC70C 800779DC 0800023C */   lui       $v0, (0x80000 >> 16)
.Llevel_10_800779E0:
/* 3ADC710 800779E0 25986202 */  or         $s3, $s3, $v0
.Llevel_10_800779E4:
/* 3ADC714 800779E4 1800228E */  lw         $v0, 0x18($s1)
/* 3ADC718 800779E8 00000000 */  nop
/* 3ADC71C 800779EC 24105300 */  and        $v0, $v0, $s3
/* 3ADC720 800779F0 6F004010 */  beqz       $v0, .Llevel_10_80077BB0
/* 3ADC724 800779F4 21202002 */   addu      $a0, $s1, $zero
/* 3ADC728 800779F8 21280000 */  addu       $a1, $zero, $zero
/* 3ADC72C 800779FC AFEE000C */  jal        func_8003BABC
/* 3ADC730 80077A00 21300000 */   addu      $a2, $zero, $zero
/* 3ADC734 80077A04 36002386 */  lh         $v1, 0x36($s1)
/* 3ADC738 80077A08 C9000224 */  addiu      $v0, $zero, 0xC9
/* 3ADC73C 80077A0C 06006214 */  bne        $v1, $v0, .Llevel_10_80077A28
/* 3ADC740 80077A10 90000224 */   addiu     $v0, $zero, 0x90
/* 3ADC744 80077A14 64000224 */  addiu      $v0, $zero, 0x64
/* 3ADC748 80077A18 0C001224 */  addiu      $s2, $zero, 0xC
/* 3ADC74C 80077A1C 05001424 */  addiu      $s4, $zero, 0x5
/* 3ADC750 80077A20 8DDE0108 */  j          .Llevel_10_80077A34
/* 3ADC754 80077A24 33011324 */   addiu     $s3, $zero, 0x133
.Llevel_10_80077A28:
/* 3ADC758 80077A28 10001224 */  addiu      $s2, $zero, 0x10
/* 3ADC75C 80077A2C 08001424 */  addiu      $s4, $zero, 0x8
/* 3ADC760 80077A30 34011324 */  addiu      $s3, $zero, 0x134
.Llevel_10_80077A34:
/* 3ADC764 80077A34 490022A2 */  sb         $v0, 0x49($s1)
/* 3ADC768 80077A38 22004012 */  beqz       $s2, .Llevel_10_80077AC4
/* 3ADC76C 80077A3C 21800000 */   addu      $s0, $zero, $zero
/* 3ADC770 80077A40 05001624 */  addiu      $s6, $zero, 0x5
/* 3ADC774 80077A44 01001524 */  addiu      $s5, $zero, 0x1
.Llevel_10_80077A48:
/* 3ADC778 80077A48 0780023C */  lui        $v0, %hi(D_8006C578)
/* 3ADC77C 80077A4C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 3ADC780 80077A50 0780033C */  lui        $v1, %hi(D_8006C574)
/* 3ADC784 80077A54 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 3ADC788 80077A58 00000000 */  nop
/* 3ADC78C 80077A5C 23104300 */  subu       $v0, $v0, $v1
/* 3ADC790 80077A60 15004228 */  slti       $v0, $v0, 0x15
/* 3ADC794 80077A64 17004014 */  bnez       $v0, .Llevel_10_80077AC4
/* 3ADC798 80077A68 21206002 */   addu      $a0, $s3, $zero
/* 3ADC79C 80077A6C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 3ADC7A0 80077A70 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 3ADC7A4 80077A74 00000000 */  nop
/* 3ADC7A8 80077A78 09F84000 */  jalr       $v0
/* 3ADC7AC 80077A7C 21282002 */   addu      $a1, $s1, $zero
/* 3ADC7B0 80077A80 21204000 */  addu       $a0, $v0, $zero
/* 3ADC7B4 80077A84 2A101402 */  slt        $v0, $s0, $s4
/* 3ADC7B8 80077A88 03004010 */  beqz       $v0, .Llevel_10_80077A98
/* 3ADC7BC 80077A8C 04000224 */   addiu     $v0, $zero, 0x4
/* 3ADC7C0 80077A90 A8DE0108 */  j          .Llevel_10_80077AA0
/* 3ADC7C4 80077A94 490096A0 */   sb        $s6, 0x49($a0)
.Llevel_10_80077A98:
/* 3ADC7C8 80077A98 3C0095A0 */  sb         $s5, 0x3C($a0)
/* 3ADC7CC 80077A9C 490082A0 */  sb         $v0, 0x49($a0)
.Llevel_10_80077AA0:
/* 3ADC7D0 80077AA0 36002386 */  lh         $v1, 0x36($s1)
/* 3ADC7D4 80077AA4 C9000224 */  addiu      $v0, $zero, 0xC9
/* 3ADC7D8 80077AA8 02006210 */  beq        $v1, $v0, .Llevel_10_80077AB4
/* 3ADC7DC 80077AAC 00000000 */   nop
/* 3ADC7E0 80077AB0 540095A0 */  sb         $s5, 0x54($a0)
.Llevel_10_80077AB4:
/* 3ADC7E4 80077AB4 01001026 */  addiu      $s0, $s0, 0x1
/* 3ADC7E8 80077AB8 2A101202 */  slt        $v0, $s0, $s2
/* 3ADC7EC 80077ABC E2FF4014 */  bnez       $v0, .Llevel_10_80077A48
/* 3ADC7F0 80077AC0 00000000 */   nop
.Llevel_10_80077AC4:
/* 3ADC7F4 80077AC4 36002386 */  lh         $v1, 0x36($s1)
/* 3ADC7F8 80077AC8 C9000224 */  addiu      $v0, $zero, 0xC9
/* 3ADC7FC 80077ACC 04006214 */  bne        $v1, $v0, .Llevel_10_80077AE0
/* 3ADC800 80077AD0 21800000 */   addu      $s0, $zero, $zero
/* 3ADC804 80077AD4 0400022A */  slti       $v0, $s0, 0x4
.Llevel_10_80077AD8:
/* 3ADC808 80077AD8 2D004010 */  beqz       $v0, .Llevel_10_80077B90
/* 3ADC80C 80077ADC 21202002 */   addu      $a0, $s1, $zero
.Llevel_10_80077AE0:
/* 3ADC810 80077AE0 1000A427 */  addiu      $a0, $sp, 0x10
.Llevel_10_80077AE4:
/* 3ADC814 80077AE4 5E3C010C */  jal        func_8004F178
/* 3ADC818 80077AE8 0C002526 */   addiu     $a1, $s1, 0xC
/* 3ADC81C 80077AEC 9171010C */  jal        rand
/* 3ADC820 80077AF0 01001026 */   addiu     $s0, $s0, 0x1
/* 3ADC824 80077AF4 1000A38F */  lw         $v1, 0x10($sp)
/* 3ADC828 80077AF8 FF004230 */  andi       $v0, $v0, 0xFF
/* 3ADC82C 80077AFC 80006324 */  addiu      $v1, $v1, 0x80
/* 3ADC830 80077B00 23186200 */  subu       $v1, $v1, $v0
/* 3ADC834 80077B04 9171010C */  jal        rand
/* 3ADC838 80077B08 1000A3AF */   sw        $v1, 0x10($sp)
/* 3ADC83C 80077B0C 1400A38F */  lw         $v1, 0x14($sp)
/* 3ADC840 80077B10 FF004230 */  andi       $v0, $v0, 0xFF
/* 3ADC844 80077B14 80006324 */  addiu      $v1, $v1, 0x80
/* 3ADC848 80077B18 23186200 */  subu       $v1, $v1, $v0
/* 3ADC84C 80077B1C 9171010C */  jal        rand
/* 3ADC850 80077B20 1400A3AF */   sw        $v1, 0x14($sp)
/* 3ADC854 80077B24 01000424 */  addiu      $a0, $zero, 0x1
/* 3ADC858 80077B28 02000524 */  addiu      $a1, $zero, 0x2
/* 3ADC85C 80077B2C 1000A627 */  addiu      $a2, $sp, 0x10
/* 3ADC860 80077B30 21380000 */  addu       $a3, $zero, $zero
/* 3ADC864 80077B34 FF014230 */  andi       $v0, $v0, 0x1FF
/* 3ADC868 80077B38 1800A38F */  lw         $v1, 0x18($sp)
/* 3ADC86C 80077B3C 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 3ADC870 80077B40 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 3ADC874 80077B44 21186200 */  addu       $v1, $v1, $v0
/* 3ADC878 80077B48 09F80001 */  jalr       $t0
/* 3ADC87C 80077B4C 1800A3AF */   sw        $v1, 0x18($sp)
/* 3ADC880 80077B50 04000424 */  addiu      $a0, $zero, 0x4
/* 3ADC884 80077B54 46000524 */  addiu      $a1, $zero, 0x46
/* 3ADC888 80077B58 1000A627 */  addiu      $a2, $sp, 0x10
/* 3ADC88C 80077B5C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 3ADC890 80077B60 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 3ADC894 80077B64 00000000 */  nop
/* 3ADC898 80077B68 09F84000 */  jalr       $v0
/* 3ADC89C 80077B6C 18000724 */   addiu     $a3, $zero, 0x18
/* 3ADC8A0 80077B70 36002386 */  lh         $v1, 0x36($s1)
/* 3ADC8A4 80077B74 C9000224 */  addiu      $v0, $zero, 0xC9
/* 3ADC8A8 80077B78 D7FF6210 */  beq        $v1, $v0, .Llevel_10_80077AD8
/* 3ADC8AC 80077B7C 0400022A */   slti      $v0, $s0, 0x4
/* 3ADC8B0 80077B80 0800022A */  slti       $v0, $s0, 0x8
/* 3ADC8B4 80077B84 D7FF4014 */  bnez       $v0, .Llevel_10_80077AE4
/* 3ADC8B8 80077B88 1000A427 */   addiu     $a0, $sp, 0x10
/* 3ADC8BC 80077B8C 21202002 */  addu       $a0, $s1, $zero
.Llevel_10_80077B90:
/* 3ADC8C0 80077B90 21280000 */  addu       $a1, $zero, $zero
/* 3ADC8C4 80077B94 21300000 */  addu       $a2, $zero, $zero
/* 3ADC8C8 80077B98 9ADA000C */  jal        func_80036A68
/* 3ADC8CC 80077B9C 21380000 */   addu      $a3, $zero, $zero
/* 3ADC8D0 80077BA0 C656010C */  jal        func_80055B18
/* 3ADC8D4 80077BA4 21202002 */   addu      $a0, $s1, $zero
/* 3ADC8D8 80077BA8 0FDF0108 */  j          .Llevel_10_80077C3C
/* 3ADC8DC 80077BAC 180020AE */   sw        $zero, 0x18($s1)
.Llevel_10_80077BB0:
/* 3ADC8E0 80077BB0 36002686 */  lh         $a2, 0x36($s1)
/* 3ADC8E4 80077BB4 1400458E */  lw         $a1, 0x14($s2)
/* 3ADC8E8 80077BB8 C900C638 */  xori       $a2, $a2, 0xC9
/* 3ADC8EC 80077BBC 29DA000C */  jal        func_800368A4
/* 3ADC8F0 80077BC0 2B300600 */   sltu      $a2, $zero, $a2
/* 3ADC8F4 80077BC4 140042AE */  sw         $v0, 0x14($s2)
/* 3ADC8F8 80077BC8 1800228E */  lw         $v0, 0x18($s1)
/* 3ADC8FC 80077BCC 0300033C */  lui        $v1, (0x30000 >> 16)
/* 3ADC900 80077BD0 24104300 */  and        $v0, $v0, $v1
/* 3ADC904 80077BD4 18004010 */  beqz       $v0, .Llevel_10_80077C38
/* 3ADC908 80077BD8 00000000 */   nop
/* 3ADC90C 80077BDC 0000428E */  lw         $v0, 0x0($s2)
/* 3ADC910 80077BE0 00000000 */  nop
/* 3ADC914 80077BE4 14004014 */  bnez       $v0, .Llevel_10_80077C38
/* 3ADC918 80077BE8 01000224 */   addiu     $v0, $zero, 0x1
/* 3ADC91C 80077BEC 000042AE */  sw         $v0, 0x0($s2)
/* 3ADC920 80077BF0 44002292 */  lbu        $v0, 0x44($s1)
/* 3ADC924 80077BF4 00000000 */  nop
/* 3ADC928 80077BF8 040042AE */  sw         $v0, 0x4($s2)
/* 3ADC92C 80077BFC 45002292 */  lbu        $v0, 0x45($s1)
/* 3ADC930 80077C00 00000000 */  nop
/* 3ADC934 80077C04 080042AE */  sw         $v0, 0x8($s2)
/* 3ADC938 80077C08 1400228E */  lw         $v0, 0x14($s1)
/* 3ADC93C 80077C0C 00000000 */  nop
/* 3ADC940 80077C10 0C0042AE */  sw         $v0, 0xC($s2)
/* 3ADC944 80077C14 36002296 */  lhu        $v0, 0x36($s1)
/* 3ADC948 80077C18 00000000 */  nop
/* 3ADC94C 80077C1C 36FF4224 */  addiu      $v0, $v0, -0xCA
/* 3ADC950 80077C20 0200422C */  sltiu      $v0, $v0, 0x2
/* 3ADC954 80077C24 04004010 */  beqz       $v0, .Llevel_10_80077C38
/* 3ADC958 80077C28 21202002 */   addu      $a0, $s1, $zero
/* 3ADC95C 80077C2C 01000524 */  addiu      $a1, $zero, 0x1
/* 3ADC960 80077C30 AFEE000C */  jal        func_8003BABC
/* 3ADC964 80077C34 21300000 */   addu      $a2, $zero, $zero
.Llevel_10_80077C38:
/* 3ADC968 80077C38 180020AE */  sw         $zero, 0x18($s1)
.Llevel_10_80077C3C:
/* 3ADC96C 80077C3C 4400BF8F */  lw         $ra, 0x44($sp)
/* 3ADC970 80077C40 4000B68F */  lw         $s6, 0x40($sp)
/* 3ADC974 80077C44 3C00B58F */  lw         $s5, 0x3C($sp)
/* 3ADC978 80077C48 3800B48F */  lw         $s4, 0x38($sp)
/* 3ADC97C 80077C4C 3400B38F */  lw         $s3, 0x34($sp)
/* 3ADC980 80077C50 3000B28F */  lw         $s2, 0x30($sp)
/* 3ADC984 80077C54 2C00B18F */  lw         $s1, 0x2C($sp)
/* 3ADC988 80077C58 2800B08F */  lw         $s0, 0x28($sp)
/* 3ADC98C 80077C5C 4800BD27 */  addiu      $sp, $sp, 0x48
/* 3ADC990 80077C60 0800E003 */  jr         $ra
/* 3ADC994 80077C64 00000000 */   nop
.size func_level_10_80077748, . - func_level_10_80077748
