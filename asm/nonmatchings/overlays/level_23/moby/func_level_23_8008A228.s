.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1000_level_23
/* 5AA6758 8008A228 30FFBD27 */  addiu      $sp, $sp, -0xD0
/* 5AA675C 8008A22C C400B7AF */  sw         $s7, 0xC4($sp)
/* 5AA6760 8008A230 21B88000 */  addu       $s7, $a0, $zero
/* 5AA6764 8008A234 CC00BFAF */  sw         $ra, 0xCC($sp)
/* 5AA6768 8008A238 C800BEAF */  sw         $fp, 0xC8($sp)
/* 5AA676C 8008A23C C000B6AF */  sw         $s6, 0xC0($sp)
/* 5AA6770 8008A240 BC00B5AF */  sw         $s5, 0xBC($sp)
/* 5AA6774 8008A244 B800B4AF */  sw         $s4, 0xB8($sp)
/* 5AA6778 8008A248 B400B3AF */  sw         $s3, 0xB4($sp)
/* 5AA677C 8008A24C B000B2AF */  sw         $s2, 0xB0($sp)
/* 5AA6780 8008A250 AC00B1AF */  sw         $s1, 0xAC($sp)
/* 5AA6784 8008A254 A800B0AF */  sw         $s0, 0xA8($sp)
/* 5AA6788 8008A258 0000F98E */  lw         $t9, 0x0($s7)
/* 5AA678C 8008A25C 00000000 */  nop
/* 5AA6790 8008A260 3800B9AF */  sw         $t9, 0x38($sp)
/* 5AA6794 8008A264 1000228F */  lw         $v0, 0x10($t9)
/* 5AA6798 8008A268 00000000 */  nop
/* 5AA679C 8008A26C 0000428C */  lw         $v0, 0x0($v0)
/* 5AA67A0 8008A270 00000000 */  nop
/* 5AA67A4 8008A274 4000A2AF */  sw         $v0, 0x40($sp)
/* 5AA67A8 8008A278 4800E392 */  lbu        $v1, 0x48($s7)
/* 5AA67AC 8008A27C 01000224 */  addiu      $v0, $zero, 0x1
/* 5AA67B0 8008A280 4100E0A2 */  sb         $zero, 0x41($s7)
/* 5AA67B4 8008A284 4C00E0A2 */  sb         $zero, 0x4C($s7)
/* 5AA67B8 8008A288 3B006214 */  bne        $v1, $v0, .Llevel_23_8008A378
/* 5AA67BC 8008A28C 4D00E0A2 */   sb        $zero, 0x4D($s7)
/* 5AA67C0 8008A290 0C00F026 */  addiu      $s0, $s7, 0xC
/* 5AA67C4 8008A294 21200002 */  addu       $a0, $s0, $zero
/* 5AA67C8 8008A298 00002297 */  lhu        $v0, 0x0($t9)
/* 5AA67CC 8008A29C 21300000 */  addu       $a2, $zero, $zero
/* 5AA67D0 8008A2A0 C8004224 */  addiu      $v0, $v0, 0xC8
/* 5AA67D4 8008A2A4 002C0200 */  sll        $a1, $v0, 16
/* 5AA67D8 8008A2A8 032C0500 */  sra        $a1, $a1, 16
/* 5AA67DC 8008A2AC A270000C */  jal        func_8001C288
/* 5AA67E0 8008A2B0 000022A7 */   sh        $v0, 0x0($t9)
/* 5AA67E4 8008A2B4 1D004010 */  beqz       $v0, .Llevel_23_8008A32C
/* 5AA67E8 8008A2B8 0C00E426 */   addiu     $a0, $s7, 0xC
/* 5AA67EC 8008A2BC 0780053C */  lui        $a1, %hi(D_80070328 + 8)
/* 5AA67F0 8008A2C0 3003A524 */  addiu      $a1, $a1, %lo(D_80070328 + 8)
/* 5AA67F4 8008A2C4 1400E28E */  lw         $v0, 0x14($s7)
/* 5AA67F8 8008A2C8 0000A38C */  lw         $v1, 0x0($a1)
/* 5AA67FC 8008A2CC 00000000 */  nop
/* 5AA6800 8008A2D0 23104300 */  subu       $v0, $v0, $v1
/* 5AA6804 8008A2D4 02004104 */  bgez       $v0, .Llevel_23_8008A2E0
/* 5AA6808 8008A2D8 00000000 */   nop
/* 5AA680C 8008A2DC 23100200 */  negu       $v0, $v0
.Llevel_23_8008A2E0:
/* 5AA6810 8008A2E0 00024228 */  slti       $v0, $v0, 0x200
/* 5AA6814 8008A2E4 10004010 */  beqz       $v0, .Llevel_23_8008A328
/* 5AA6818 8008A2E8 1800A427 */   addiu     $a0, $sp, 0x18
/* 5AA681C 8008A2EC F8FFA524 */  addiu      $a1, $a1, -0x8
/* 5AA6820 8008A2F0 0780023C */  lui        $v0, %hi(D_80070328 + 0x24)
/* 5AA6824 8008A2F4 4C03428C */  lw         $v0, %lo(D_80070328 + 0x24)($v0)
/* 5AA6828 8008A2F8 00000000 */  nop
/* 5AA682C 8008A2FC 07004234 */  ori        $v0, $v0, 0x7
/* 5AA6830 8008A300 0780013C */  lui        $at, %hi(D_80070328 + 0x24)
/* 5AA6834 8008A304 4C0322AC */  sw         $v0, %lo(D_80070328 + 0x24)($at)
/* 5AA6838 8008A308 723C010C */  jal        func_8004F1C8
/* 5AA683C 8008A30C 21300002 */   addu      $a2, $s0, $zero
/* 5AA6840 8008A310 1800A48F */  lw         $a0, 0x18($sp)
/* 5AA6844 8008A314 1C00A58F */  lw         $a1, 0x1C($sp)
/* 5AA6848 8008A318 203A010C */  jal        func_8004E880
/* 5AA684C 8008A31C 21300000 */   addu      $a2, $zero, $zero
/* 5AA6850 8008A320 0780013C */  lui        $at, %hi(D_80070328 + 0x298)
/* 5AA6854 8008A324 C00522AC */  sw         $v0, %lo(D_80070328 + 0x298)($at)
.Llevel_23_8008A328:
/* 5AA6858 8008A328 0C00E426 */  addiu      $a0, $s7, 0xC
.Llevel_23_8008A32C:
/* 5AA685C 8008A32C 01000624 */  addiu      $a2, $zero, 0x1
/* 5AA6860 8008A330 3800B98F */  lw         $t9, 0x38($sp)
/* 5AA6864 8008A334 21380000 */  addu       $a3, $zero, $zero
/* 5AA6868 8008A338 00002587 */  lh         $a1, 0x0($t9)
/* 5AA686C 8008A33C 0100023C */  lui        $v0, (0x10000 >> 16)
/* 5AA6870 8008A340 1000A2AF */  sw         $v0, 0x10($sp)
/* 5AA6874 8008A344 1400B7AF */  sw         $s7, 0x14($sp)
/* 5AA6878 8008A348 8C6E000C */  jal        func_8001BA30
/* 5AA687C 8008A34C C800A524 */   addiu     $a1, $a1, 0xC8
/* 5AA6880 8008A350 3800B98F */  lw         $t9, 0x38($sp)
/* 5AA6884 8008A354 00000000 */  nop
/* 5AA6888 8008A358 00002287 */  lh         $v0, 0x0($t9)
/* 5AA688C 8008A35C 00000000 */  nop
/* 5AA6890 8008A360 010C4228 */  slti       $v0, $v0, 0xC01
/* 5AA6894 8008A364 05004014 */  bnez       $v0, .Llevel_23_8008A37C
/* 5AA6898 8008A368 000C0224 */   addiu     $v0, $zero, 0xC00
/* 5AA689C 8008A36C 000022A7 */  sh         $v0, 0x0($t9)
/* 5AA68A0 8008A370 02000224 */  addiu      $v0, $zero, 0x2
/* 5AA68A4 8008A374 4800E2A2 */  sb         $v0, 0x48($s7)
.Llevel_23_8008A378:
/* 5AA68A8 8008A378 3800B98F */  lw         $t9, 0x38($sp)
.Llevel_23_8008A37C:
/* 5AA68AC 8008A37C 7800A0AF */  sw         $zero, 0x78($sp)
/* 5AA68B0 8008A380 0400398F */  lw         $t9, 0x4($t9)
/* 5AA68B4 8008A384 00000000 */  nop
/* 5AA68B8 8008A388 5000B9AF */  sw         $t9, 0x50($sp)
/* 5AA68BC 8008A38C 3800B98F */  lw         $t9, 0x38($sp)
/* 5AA68C0 8008A390 00000000 */  nop
/* 5AA68C4 8008A394 00003987 */  lh         $t9, 0x0($t9)
/* 5AA68C8 8008A398 00000000 */  nop
/* 5AA68CC 8008A39C 4800B9AF */  sw         $t9, 0x48($sp)
/* 5AA68D0 8008A3A0 5000B98F */  lw         $t9, 0x50($sp)
/* 5AA68D4 8008A3A4 21A80000 */  addu       $s5, $zero, $zero
/* 5AA68D8 8008A3A8 3C043927 */  addiu      $t9, $t9, 0x43C
/* 5AA68DC 8008A3AC 5800B9AF */  sw         $t9, 0x58($sp)
/* 5AA68E0 8008A3B0 5000B98F */  lw         $t9, 0x50($sp)
/* 5AA68E4 8008A3B4 21A00000 */  addu       $s4, $zero, $zero
/* 5AA68E8 8008A3B8 7C043927 */  addiu      $t9, $t9, 0x47C
/* 5AA68EC 8008A3BC 6000B9AF */  sw         $t9, 0x60($sp)
.Llevel_23_8008A3C0:
/* 5AA68F0 8008A3C0 4600E492 */  lbu        $a0, 0x46($s7)
/* 5AA68F4 8008A3C4 7800B98F */  lw         $t9, 0x78($sp)
/* 5AA68F8 8008A3C8 00000000 */  nop
/* 5AA68FC 8008A3CC 21209900 */  addu       $a0, $a0, $t9
/* 5AA6900 8008A3D0 FF008330 */  andi       $v1, $a0, 0xFF
/* 5AA6904 8008A3D4 40180300 */  sll        $v1, $v1, 1
/* 5AA6908 8008A3D8 0680193C */  lui        $t9, %hi(D_80065920)
/* 5AA690C 8008A3DC 20593927 */  addiu      $t9, $t9, %lo(D_80065920)
/* 5AA6910 8008A3E0 21107900 */  addu       $v0, $v1, $t9
/* 5AA6914 8008A3E4 00004284 */  lh         $v0, 0x0($v0)
/* 5AA6918 8008A3E8 4800B98F */  lw         $t9, 0x48($sp)
/* 5AA691C 8008A3EC 00000000 */  nop
/* 5AA6920 8008A3F0 18005900 */  mult       $v0, $t9
/* 5AA6924 8008A3F4 21880000 */  addu       $s1, $zero, $zero
/* 5AA6928 8008A3F8 21900000 */  addu       $s2, $zero, $zero
/* 5AA692C 8008A3FC 0680193C */  lui        $t9, %hi(D_800658A0)
/* 5AA6930 8008A400 A0583927 */  addiu      $t9, $t9, %lo(D_800658A0)
/* 5AA6934 8008A404 21187900 */  addu       $v1, $v1, $t9
/* 5AA6938 8008A408 00006284 */  lh         $v0, 0x0($v1)
/* 5AA693C 8008A40C 12280000 */  mflo       $a1
/* 5AA6940 8008A410 4800B98F */  lw         $t9, 0x48($sp)
/* 5AA6944 8008A414 40008424 */  addiu      $a0, $a0, 0x40
/* 5AA6948 8008A418 18005900 */  mult       $v0, $t9
/* 5AA694C 8008A41C FF008430 */  andi       $a0, $a0, 0xFF
/* 5AA6950 8008A420 40200400 */  sll        $a0, $a0, 1
/* 5AA6954 8008A424 3800B98F */  lw         $t9, 0x38($sp)
/* 5AA6958 8008A428 03F30500 */  sra        $fp, $a1, 12
/* 5AA695C 8008A42C 02003387 */  lh         $s3, 0x2($t9)
/* 5AA6960 8008A430 0680193C */  lui        $t9, %hi(D_800658A0)
/* 5AA6964 8008A434 A0583927 */  addiu      $t9, $t9, %lo(D_800658A0)
/* 5AA6968 8008A438 21C89900 */  addu       $t9, $a0, $t9
/* 5AA696C 8008A43C 6800B9AF */  sw         $t9, 0x68($sp)
/* 5AA6970 8008A440 0680193C */  lui        $t9, %hi(D_80065920)
/* 5AA6974 8008A444 20593927 */  addiu      $t9, $t9, %lo(D_80065920)
/* 5AA6978 8008A448 21C89900 */  addu       $t9, $a0, $t9
/* 5AA697C 8008A44C 7000B9AF */  sw         $t9, 0x70($sp)
/* 5AA6980 8008A450 12180000 */  mflo       $v1
/* 5AA6984 8008A454 03B30300 */  sra        $s6, $v1, 12
.Llevel_23_8008A458:
/* 5AA6988 8008A458 FF004332 */  andi       $v1, $s2, 0xFF
/* 5AA698C 8008A45C 40180300 */  sll        $v1, $v1, 1
/* 5AA6990 8008A460 0680193C */  lui        $t9, %hi(D_80065920)
/* 5AA6994 8008A464 20593927 */  addiu      $t9, $t9, %lo(D_80065920)
/* 5AA6998 8008A468 21107900 */  addu       $v0, $v1, $t9
/* 5AA699C 8008A46C 1800A0AF */  sw         $zero, 0x18($sp)
/* 5AA69A0 8008A470 00004284 */  lh         $v0, 0x0($v0)
/* 5AA69A4 8008A474 00000000 */  nop
/* 5AA69A8 8008A478 18005300 */  mult       $v0, $s3
/* 5AA69AC 8008A47C 12C80000 */  mflo       $t9
/* 5AA69B0 8008A480 03231900 */  sra        $a0, $t9, 12
/* 5AA69B4 8008A484 0680193C */  lui        $t9, %hi(D_800658A0)
/* 5AA69B8 8008A488 A0583927 */  addiu      $t9, $t9, %lo(D_800658A0)
/* 5AA69BC 8008A48C 21187900 */  addu       $v1, $v1, $t9
/* 5AA69C0 8008A490 1C00A4AF */  sw         $a0, 0x1C($sp)
/* 5AA69C4 8008A494 00006284 */  lh         $v0, 0x0($v1)
/* 5AA69C8 8008A498 00000000 */  nop
/* 5AA69CC 8008A49C 18005300 */  mult       $v0, $s3
/* 5AA69D0 8008A4A0 12C80000 */  mflo       $t9
/* 5AA69D4 8008A4A4 03131900 */  sra        $v0, $t9, 12
/* 5AA69D8 8008A4A8 6800B98F */  lw         $t9, 0x68($sp)
/* 5AA69DC 8008A4AC 2000A2AF */  sw         $v0, 0x20($sp)
/* 5AA69E0 8008A4B0 00002287 */  lh         $v0, 0x0($t9)
/* 5AA69E4 8008A4B4 00000000 */  nop
/* 5AA69E8 8008A4B8 18008200 */  mult       $a0, $v0
/* 5AA69EC 8008A4BC 21189102 */  addu       $v1, $s4, $s1
/* 5AA69F0 8008A4C0 5000B98F */  lw         $t9, 0x50($sp)
/* 5AA69F4 8008A4C4 40100300 */  sll        $v0, $v1, 1
/* 5AA69F8 8008A4C8 21104300 */  addu       $v0, $v0, $v1
/* 5AA69FC 8008A4CC 80100200 */  sll        $v0, $v0, 2
/* 5AA6A00 8008A4D0 21802203 */  addu       $s0, $t9, $v0
/* 5AA6A04 8008A4D4 12C80000 */  mflo       $t9
/* 5AA6A08 8008A4D8 23101900 */  negu       $v0, $t9
/* 5AA6A0C 8008A4DC 03130200 */  sra        $v0, $v0, 12
/* 5AA6A10 8008A4E0 000002AE */  sw         $v0, 0x0($s0)
/* 5AA6A14 8008A4E4 7000B98F */  lw         $t9, 0x70($sp)
/* 5AA6A18 8008A4E8 1C00A28F */  lw         $v0, 0x1C($sp)
/* 5AA6A1C 8008A4EC 00002387 */  lh         $v1, 0x0($t9)
/* 5AA6A20 8008A4F0 00000000 */  nop
/* 5AA6A24 8008A4F4 18004300 */  mult       $v0, $v1
/* 5AA6A28 8008A4F8 0C00E526 */  addiu      $a1, $s7, 0xC
/* 5AA6A2C 8008A4FC 21200002 */  addu       $a0, $s0, $zero
/* 5AA6A30 8008A500 12C80000 */  mflo       $t9
/* 5AA6A34 8008A504 03131900 */  sra        $v0, $t9, 12
/* 5AA6A38 8008A508 040002AE */  sw         $v0, 0x4($s0)
/* 5AA6A3C 8008A50C 2000A28F */  lw         $v0, 0x20($sp)
/* 5AA6A40 8008A510 21300002 */  addu       $a2, $s0, $zero
/* 5AA6A44 8008A514 653C010C */  jal        func_8004F194
/* 5AA6A48 8008A518 080002AE */   sw        $v0, 0x8($s0)
/* 5AA6A4C 8008A51C 0000028E */  lw         $v0, 0x0($s0)
/* 5AA6A50 8008A520 0400038E */  lw         $v1, 0x4($s0)
/* 5AA6A54 8008A524 21105E00 */  addu       $v0, $v0, $fp
/* 5AA6A58 8008A528 21187600 */  addu       $v1, $v1, $s6
/* 5AA6A5C 8008A52C 000002AE */  sw         $v0, 0x0($s0)
/* 5AA6A60 8008A530 040003AE */  sw         $v1, 0x4($s0)
/* 5AA6A64 8008A534 4800E392 */  lbu        $v1, 0x48($s7)
/* 5AA6A68 8008A538 01000224 */  addiu      $v0, $zero, 0x1
/* 5AA6A6C 8008A53C 11006214 */  bne        $v1, $v0, .Llevel_23_8008A584
/* 5AA6A70 8008A540 00000000 */   nop
/* 5AA6A74 8008A544 0F002016 */  bnez       $s1, .Llevel_23_8008A584
/* 5AA6A78 8008A548 01000424 */   addiu     $a0, $zero, 0x1
/* 5AA6A7C 8008A54C 3C000524 */  addiu      $a1, $zero, 0x3C
/* 5AA6A80 8008A550 21300002 */  addu       $a2, $s0, $zero
/* 5AA6A84 8008A554 2800A727 */  addiu      $a3, $sp, 0x28
/* 5AA6A88 8008A558 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 5AA6A8C 8008A55C E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 5AA6A90 8008A560 02000224 */  addiu      $v0, $zero, 0x2
/* 5AA6A94 8008A564 2800A0AF */  sw         $zero, 0x28($sp)
/* 5AA6A98 8008A568 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 5AA6A9C 8008A56C 09F86000 */  jalr       $v1
/* 5AA6AA0 8008A570 3000A2AF */   sw        $v0, 0x30($sp)
/* 5AA6AA4 8008A574 21184000 */  addu       $v1, $v0, $zero
/* 5AA6AA8 8008A578 02006010 */  beqz       $v1, .Llevel_23_8008A584
/* 5AA6AAC 8008A57C 28000224 */   addiu     $v0, $zero, 0x28
/* 5AA6AB0 8008A580 0A0062A0 */  sb         $v0, 0xA($v1)
.Llevel_23_8008A584:
/* 5AA6AB4 8008A584 01003126 */  addiu      $s1, $s1, 0x1
/* 5AA6AB8 8008A588 0600222A */  slti       $v0, $s1, 0x6
/* 5AA6ABC 8008A58C B2FF4014 */  bnez       $v0, .Llevel_23_8008A458
/* 5AA6AC0 8008A590 2A005226 */   addiu     $s2, $s2, 0x2A
/* 5AA6AC4 8008A594 06009426 */  addiu      $s4, $s4, 0x6
/* 5AA6AC8 8008A598 0100B526 */  addiu      $s5, $s5, 0x1
/* 5AA6ACC 8008A59C 7800B98F */  lw         $t9, 0x78($sp)
/* 5AA6AD0 8008A5A0 1000A22A */  slti       $v0, $s5, 0x10
/* 5AA6AD4 8008A5A4 11003927 */  addiu      $t9, $t9, 0x11
/* 5AA6AD8 8008A5A8 85FF4014 */  bnez       $v0, .Llevel_23_8008A3C0
/* 5AA6ADC 8008A5AC 7800B9AF */   sw        $t9, 0x78($sp)
/* 5AA6AE0 8008A5B0 21A80000 */  addu       $s5, $zero, $zero
/* 5AA6AE4 8008A5B4 AA2A093C */  lui        $t1, (0x2AAAAAAB >> 16)
/* 5AA6AE8 8008A5B8 ABAA2935 */  ori        $t1, $t1, (0x2AAAAAAB & 0xFFFF)
/* 5AA6AEC 8008A5BC 0BB6083C */  lui        $t0, (0xB60B60B7 >> 16)
/* 5AA6AF0 8008A5C0 B7600835 */  ori        $t0, $t0, (0xB60B60B7 & 0xFFFF)
/* 5AA6AF4 8008A5C4 21380000 */  addu       $a3, $zero, $zero
/* 5AA6AF8 8008A5C8 5000B98F */  lw         $t9, 0x50($sp)
/* 5AA6AFC 8008A5CC FFFF0224 */  addiu      $v0, $zero, -0x1
/* 5AA6B00 8008A5D0 380422AF */  sw         $v0, 0x438($t9)
/* 5AA6B04 8008A5D4 5800B98F */  lw         $t9, 0x58($sp)
/* 5AA6B08 8008A5D8 19000224 */  addiu      $v0, $zero, 0x19
/* 5AA6B0C 8008A5DC 000022A3 */  sb         $v0, 0x0($t9)
/* 5AA6B10 8008A5E0 010022A3 */  sb         $v0, 0x1($t9)
/* 5AA6B14 8008A5E4 32000224 */  addiu      $v0, $zero, 0x32
/* 5AA6B18 8008A5E8 020022A3 */  sb         $v0, 0x2($t9)
.Llevel_23_8008A5EC:
/* 5AA6B1C 8008A5EC 21880000 */  addu       $s1, $zero, $zero
.Llevel_23_8008A5F0:
/* 5AA6B20 8008A5F0 01002226 */  addiu      $v0, $s1, 0x1
/* 5AA6B24 8008A5F4 18004900 */  mult       $v0, $t1
/* 5AA6B28 8008A5F8 2118F100 */  addu       $v1, $a3, $s1
/* 5AA6B2C 8008A5FC 06002626 */  addiu      $a2, $s1, 0x6
/* 5AA6B30 8008A600 21884000 */  addu       $s1, $v0, $zero
/* 5AA6B34 8008A604 C0280300 */  sll        $a1, $v1, 3
/* 5AA6B38 8008A608 2130E600 */  addu       $a2, $a3, $a2
/* 5AA6B3C 8008A60C 6000B98F */  lw         $t9, 0x60($sp)
/* 5AA6B40 8008A610 C3171100 */  sra        $v0, $s1, 31
/* 5AA6B44 8008A614 21282503 */  addu       $a1, $t9, $a1
/* 5AA6B48 8008A618 10500000 */  mfhi       $t2
/* 5AA6B4C 8008A61C 0000A3A0 */  sb         $v1, 0x0($a1)
/* 5AA6B50 8008A620 0400A0A0 */  sb         $zero, 0x4($a1)
/* 5AA6B54 8008A624 1800C800 */  mult       $a2, $t0
/* 5AA6B58 8008A628 0500A0A0 */  sb         $zero, 0x5($a1)
/* 5AA6B5C 8008A62C 0600A0A0 */  sb         $zero, 0x6($a1)
/* 5AA6B60 8008A630 0700A0A0 */  sb         $zero, 0x7($a1)
/* 5AA6B64 8008A634 23104201 */  subu       $v0, $t2, $v0
/* 5AA6B68 8008A638 40200200 */  sll        $a0, $v0, 1
/* 5AA6B6C 8008A63C 21208200 */  addu       $a0, $a0, $v0
/* 5AA6B70 8008A640 40200400 */  sll        $a0, $a0, 1
/* 5AA6B74 8008A644 23202402 */  subu       $a0, $s1, $a0
/* 5AA6B78 8008A648 2110E400 */  addu       $v0, $a3, $a0
/* 5AA6B7C 8008A64C 06008424 */  addiu      $a0, $a0, 0x6
/* 5AA6B80 8008A650 2120E400 */  addu       $a0, $a3, $a0
/* 5AA6B84 8008A654 10180000 */  mfhi       $v1
/* 5AA6B88 8008A658 0100A2A0 */  sb         $v0, 0x1($a1)
/* 5AA6B8C 8008A65C 21106600 */  addu       $v0, $v1, $a2
/* 5AA6B90 8008A660 18008800 */  mult       $a0, $t0
/* 5AA6B94 8008A664 83110200 */  sra        $v0, $v0, 6
/* 5AA6B98 8008A668 C31F0600 */  sra        $v1, $a2, 31
/* 5AA6B9C 8008A66C 23104300 */  subu       $v0, $v0, $v1
/* 5AA6BA0 8008A670 40180200 */  sll        $v1, $v0, 1
/* 5AA6BA4 8008A674 21186200 */  addu       $v1, $v1, $v0
/* 5AA6BA8 8008A678 00110300 */  sll        $v0, $v1, 4
/* 5AA6BAC 8008A67C 23104300 */  subu       $v0, $v0, $v1
/* 5AA6BB0 8008A680 40100200 */  sll        $v0, $v0, 1
/* 5AA6BB4 8008A684 2330C200 */  subu       $a2, $a2, $v0
/* 5AA6BB8 8008A688 C31F0400 */  sra        $v1, $a0, 31
/* 5AA6BBC 8008A68C 0200A6A0 */  sb         $a2, 0x2($a1)
/* 5AA6BC0 8008A690 10500000 */  mfhi       $t2
/* 5AA6BC4 8008A694 21104401 */  addu       $v0, $t2, $a0
/* 5AA6BC8 8008A698 83110200 */  sra        $v0, $v0, 6
/* 5AA6BCC 8008A69C 23104300 */  subu       $v0, $v0, $v1
/* 5AA6BD0 8008A6A0 40180200 */  sll        $v1, $v0, 1
/* 5AA6BD4 8008A6A4 21186200 */  addu       $v1, $v1, $v0
/* 5AA6BD8 8008A6A8 00110300 */  sll        $v0, $v1, 4
/* 5AA6BDC 8008A6AC 23104300 */  subu       $v0, $v0, $v1
/* 5AA6BE0 8008A6B0 40100200 */  sll        $v0, $v0, 1
/* 5AA6BE4 8008A6B4 23208200 */  subu       $a0, $a0, $v0
/* 5AA6BE8 8008A6B8 0600222A */  slti       $v0, $s1, 0x6
/* 5AA6BEC 8008A6BC CCFF4014 */  bnez       $v0, .Llevel_23_8008A5F0
/* 5AA6BF0 8008A6C0 0300A4A0 */   sb        $a0, 0x3($a1)
/* 5AA6BF4 8008A6C4 0100B526 */  addiu      $s5, $s5, 0x1
/* 5AA6BF8 8008A6C8 0F00A22A */  slti       $v0, $s5, 0xF
/* 5AA6BFC 8008A6CC C7FF4014 */  bnez       $v0, .Llevel_23_8008A5EC
/* 5AA6C00 8008A6D0 0600E724 */   addiu     $a3, $a3, 0x6
/* 5AA6C04 8008A6D4 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 5AA6C08 8008A6D8 D00222AF */  sw         $v0, 0x2D0($t9)
/* 5AA6C0C 8008A6DC 3800B98F */  lw         $t9, 0x38($sp)
/* 5AA6C10 8008A6E0 00000000 */  nop
/* 5AA6C14 8008A6E4 0800228F */  lw         $v0, 0x8($t9)
/* 5AA6C18 8008A6E8 00000000 */  nop
/* 5AA6C1C 8008A6EC 0D004014 */  bnez       $v0, .Llevel_23_8008A724
/* 5AA6C20 8008A6F0 21A80000 */   addu      $s5, $zero, $zero
/* 5AA6C24 8008A6F4 5000A48F */  lw         $a0, 0x50($sp)
/* 5AA6C28 8008A6F8 5800A58F */  lw         $a1, 0x58($sp)
/* 5AA6C2C 8008A6FC 6000A68F */  lw         $a2, 0x60($sp)
/* 5AA6C30 8008A700 4000B98F */  lw         $t9, 0x40($sp)
/* 5AA6C34 8008A704 01000224 */  addiu      $v0, $zero, 0x1
/* 5AA6C38 8008A708 1000A2AF */  sw         $v0, 0x10($sp)
/* 5AA6C3C 8008A70C C042010C */  jal        func_80050B00
/* 5AA6C40 8008A710 0C002727 */   addiu     $a3, $t9, 0xC
/* 5AA6C44 8008A714 3800B98F */  lw         $t9, 0x38($sp)
/* 5AA6C48 8008A718 00000000 */  nop
/* 5AA6C4C 8008A71C 080022AF */  sw         $v0, 0x8($t9)
/* 5AA6C50 8008A720 21A80000 */  addu       $s5, $zero, $zero
.Llevel_23_8008A724:
/* 5AA6C54 8008A724 06800D3C */  lui        $t5, %hi(D_800658A0)
/* 5AA6C58 8008A728 A058AD25 */  addiu      $t5, $t5, %lo(D_800658A0)
/* 5AA6C5C 8008A72C 06800E3C */  lui        $t6, %hi(D_80065920)
/* 5AA6C60 8008A730 2059CE25 */  addiu      $t6, $t6, %lo(D_80065920)
/* 5AA6C64 8008A734 3800B98F */  lw         $t9, 0x38($sp)
/* 5AA6C68 8008A738 21B00000 */  addu       $s6, $zero, $zero
/* 5AA6C6C 8008A73C 0400228F */  lw         $v0, 0x4($t9)
/* 5AA6C70 8008A740 21580000 */  addu       $t3, $zero, $zero
/* 5AA6C74 8008A744 58074F24 */  addiu      $t7, $v0, 0x758
/* 5AA6C78 8008A748 940B4C24 */  addiu      $t4, $v0, 0xB94
/* 5AA6C7C 8008A74C D40B5824 */  addiu      $t8, $v0, 0xBD4
.Llevel_23_8008A750:
/* 5AA6C80 8008A750 0780033C */  lui        $v1, %hi(D_8006C640)
/* 5AA6C84 8008A754 40C6638C */  lw         $v1, %lo(D_8006C640)($v1)
/* 5AA6C88 8008A758 3800B98F */  lw         $t9, 0x38($sp)
/* 5AA6C8C 8008A75C 80100300 */  sll        $v0, $v1, 2
/* 5AA6C90 8008A760 21104300 */  addu       $v0, $v0, $v1
/* 5AA6C94 8008A764 80100200 */  sll        $v0, $v0, 2
/* 5AA6C98 8008A768 21106201 */  addu       $v0, $t3, $v0
/* 5AA6C9C 8008A76C FF004230 */  andi       $v0, $v0, 0xFF
/* 5AA6CA0 8008A770 40100200 */  sll        $v0, $v0, 1
/* 5AA6CA4 8008A774 21104D00 */  addu       $v0, $v0, $t5
/* 5AA6CA8 8008A778 00004384 */  lh         $v1, 0x0($v0)
/* 5AA6CAC 8008A77C 16002287 */  lh         $v0, 0x16($t9)
/* 5AA6CB0 8008A780 00000000 */  nop
/* 5AA6CB4 8008A784 18006200 */  mult       $v1, $v0
/* 5AA6CB8 8008A788 4600E492 */  lbu        $a0, 0x46($s7)
/* 5AA6CBC 8008A78C 4800B98F */  lw         $t9, 0x48($sp)
/* 5AA6CC0 8008A790 00111500 */  sll        $v0, $s5, 4
/* 5AA6CC4 8008A794 21105500 */  addu       $v0, $v0, $s5
/* 5AA6CC8 8008A798 21208200 */  addu       $a0, $a0, $v0
/* 5AA6CCC 8008A79C FF008330 */  andi       $v1, $a0, 0xFF
/* 5AA6CD0 8008A7A0 40180300 */  sll        $v1, $v1, 1
/* 5AA6CD4 8008A7A4 21106D00 */  addu       $v0, $v1, $t5
/* 5AA6CD8 8008A7A8 12300000 */  mflo       $a2
/* 5AA6CDC 8008A7AC 00004284 */  lh         $v0, 0x0($v0)
/* 5AA6CE0 8008A7B0 00000000 */  nop
/* 5AA6CE4 8008A7B4 18005900 */  mult       $v0, $t9
/* 5AA6CE8 8008A7B8 21186E00 */  addu       $v1, $v1, $t6
/* 5AA6CEC 8008A7BC 12280000 */  mflo       $a1
/* 5AA6CF0 8008A7C0 00006284 */  lh         $v0, 0x0($v1)
/* 5AA6CF4 8008A7C4 21880000 */  addu       $s1, $zero, $zero
/* 5AA6CF8 8008A7C8 18005900 */  mult       $v0, $t9
/* 5AA6CFC 8008A7CC 2198A001 */  addu       $s3, $t5, $zero
/* 5AA6D00 8008A7D0 2190C001 */  addu       $s2, $t6, $zero
/* 5AA6D04 8008A7D4 40008424 */  addiu      $a0, $a0, 0x40
/* 5AA6D08 8008A7D8 FF008430 */  andi       $a0, $a0, 0xFF
/* 5AA6D0C 8008A7DC 40200400 */  sll        $a0, $a0, 1
/* 5AA6D10 8008A7E0 21508D00 */  addu       $t2, $a0, $t5
/* 5AA6D14 8008A7E4 21488E00 */  addu       $t1, $a0, $t6
/* 5AA6D18 8008A7E8 03430600 */  sra        $t0, $a2, 12
/* 5AA6D1C 8008A7EC 3800B98F */  lw         $t9, 0x38($sp)
/* 5AA6D20 8008A7F0 033B0500 */  sra        $a3, $a1, 12
/* 5AA6D24 8008A7F4 14003487 */  lh         $s4, 0x14($t9)
/* 5AA6D28 8008A7F8 12180000 */  mflo       $v1
/* 5AA6D2C 8008A7FC 03F30300 */  sra        $fp, $v1, 12
.Llevel_23_8008A800:
/* 5AA6D30 8008A800 1800A0AF */  sw         $zero, 0x18($sp)
/* 5AA6D34 8008A804 00004286 */  lh         $v0, 0x0($s2)
/* 5AA6D38 8008A808 00000000 */  nop
/* 5AA6D3C 8008A80C 18005400 */  mult       $v0, $s4
/* 5AA6D40 8008A810 12C80000 */  mflo       $t9
/* 5AA6D44 8008A814 031B1900 */  sra        $v1, $t9, 12
/* 5AA6D48 8008A818 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 5AA6D4C 8008A81C 00006286 */  lh         $v0, 0x0($s3)
/* 5AA6D50 8008A820 00000000 */  nop
/* 5AA6D54 8008A824 18005400 */  mult       $v0, $s4
/* 5AA6D58 8008A828 12C80000 */  mflo       $t9
/* 5AA6D5C 8008A82C 03131900 */  sra        $v0, $t9, 12
/* 5AA6D60 8008A830 2000A2AF */  sw         $v0, 0x20($sp)
/* 5AA6D64 8008A834 00004285 */  lh         $v0, 0x0($t2)
/* 5AA6D68 8008A838 00000000 */  nop
/* 5AA6D6C 8008A83C 18006200 */  mult       $v1, $v0
/* 5AA6D70 8008A840 2110D102 */  addu       $v0, $s6, $s1
/* 5AA6D74 8008A844 40800200 */  sll        $s0, $v0, 1
/* 5AA6D78 8008A848 21800202 */  addu       $s0, $s0, $v0
/* 5AA6D7C 8008A84C 80801000 */  sll        $s0, $s0, 2
/* 5AA6D80 8008A850 2180F001 */  addu       $s0, $t7, $s0
/* 5AA6D84 8008A854 12C80000 */  mflo       $t9
/* 5AA6D88 8008A858 23101900 */  negu       $v0, $t9
/* 5AA6D8C 8008A85C 03130200 */  sra        $v0, $v0, 12
/* 5AA6D90 8008A860 000002AE */  sw         $v0, 0x0($s0)
/* 5AA6D94 8008A864 00002385 */  lh         $v1, 0x0($t1)
/* 5AA6D98 8008A868 1C00A28F */  lw         $v0, 0x1C($sp)
/* 5AA6D9C 8008A86C 00000000 */  nop
/* 5AA6DA0 8008A870 18004300 */  mult       $v0, $v1
/* 5AA6DA4 8008A874 0C00E526 */  addiu      $a1, $s7, 0xC
/* 5AA6DA8 8008A878 54005226 */  addiu      $s2, $s2, 0x54
/* 5AA6DAC 8008A87C 21200002 */  addu       $a0, $s0, $zero
/* 5AA6DB0 8008A880 21300002 */  addu       $a2, $s0, $zero
/* 5AA6DB4 8008A884 12C80000 */  mflo       $t9
/* 5AA6DB8 8008A888 03131900 */  sra        $v0, $t9, 12
/* 5AA6DBC 8008A88C 040002AE */  sw         $v0, 0x4($s0)
/* 5AA6DC0 8008A890 2000A28F */  lw         $v0, 0x20($sp)
/* 5AA6DC4 8008A894 01003126 */  addiu      $s1, $s1, 0x1
/* 5AA6DC8 8008A898 080002AE */  sw         $v0, 0x8($s0)
/* 5AA6DCC 8008A89C 8000A7AF */  sw         $a3, 0x80($sp)
/* 5AA6DD0 8008A8A0 8400A8AF */  sw         $t0, 0x84($sp)
/* 5AA6DD4 8008A8A4 8800A9AF */  sw         $t1, 0x88($sp)
/* 5AA6DD8 8008A8A8 8C00AAAF */  sw         $t2, 0x8C($sp)
/* 5AA6DDC 8008A8AC 9000ABAF */  sw         $t3, 0x90($sp)
/* 5AA6DE0 8008A8B0 9400ACAF */  sw         $t4, 0x94($sp)
/* 5AA6DE4 8008A8B4 9800ADAF */  sw         $t5, 0x98($sp)
/* 5AA6DE8 8008A8B8 9C00AEAF */  sw         $t6, 0x9C($sp)
/* 5AA6DEC 8008A8BC A000AFAF */  sw         $t7, 0xA0($sp)
/* 5AA6DF0 8008A8C0 653C010C */  jal        func_8004F194
/* 5AA6DF4 8008A8C4 A400B8AF */   sw        $t8, 0xA4($sp)
/* 5AA6DF8 8008A8C8 0000028E */  lw         $v0, 0x0($s0)
/* 5AA6DFC 8008A8CC 00000000 */  nop
/* 5AA6E00 8008A8D0 21105E00 */  addu       $v0, $v0, $fp
/* 5AA6E04 8008A8D4 000002AE */  sw         $v0, 0x0($s0)
/* 5AA6E08 8008A8D8 0400028E */  lw         $v0, 0x4($s0)
/* 5AA6E0C 8008A8DC 8000A78F */  lw         $a3, 0x80($sp)
/* 5AA6E10 8008A8E0 0800038E */  lw         $v1, 0x8($s0)
/* 5AA6E14 8008A8E4 21104700 */  addu       $v0, $v0, $a3
/* 5AA6E18 8008A8E8 040002AE */  sw         $v0, 0x4($s0)
/* 5AA6E1C 8008A8EC 8400A88F */  lw         $t0, 0x84($sp)
/* 5AA6E20 8008A8F0 0600222A */  slti       $v0, $s1, 0x6
/* 5AA6E24 8008A8F4 21186800 */  addu       $v1, $v1, $t0
/* 5AA6E28 8008A8F8 080003AE */  sw         $v1, 0x8($s0)
/* 5AA6E2C 8008A8FC 8800A98F */  lw         $t1, 0x88($sp)
/* 5AA6E30 8008A900 8C00AA8F */  lw         $t2, 0x8C($sp)
/* 5AA6E34 8008A904 9000AB8F */  lw         $t3, 0x90($sp)
/* 5AA6E38 8008A908 9400AC8F */  lw         $t4, 0x94($sp)
/* 5AA6E3C 8008A90C 9800AD8F */  lw         $t5, 0x98($sp)
/* 5AA6E40 8008A910 9C00AE8F */  lw         $t6, 0x9C($sp)
/* 5AA6E44 8008A914 A000AF8F */  lw         $t7, 0xA0($sp)
/* 5AA6E48 8008A918 A400B88F */  lw         $t8, 0xA4($sp)
/* 5AA6E4C 8008A91C B8FF4014 */  bnez       $v0, .Llevel_23_8008A800
/* 5AA6E50 8008A920 54007326 */   addiu     $s3, $s3, 0x54
/* 5AA6E54 8008A924 0600D626 */  addiu      $s6, $s6, 0x6
/* 5AA6E58 8008A928 0100B526 */  addiu      $s5, $s5, 0x1
/* 5AA6E5C 8008A92C 1000A22A */  slti       $v0, $s5, 0x10
/* 5AA6E60 8008A930 87FF4014 */  bnez       $v0, .Llevel_23_8008A750
/* 5AA6E64 8008A934 50006B25 */   addiu     $t3, $t3, 0x50
/* 5AA6E68 8008A938 21A80000 */  addu       $s5, $zero, $zero
/* 5AA6E6C 8008A93C 0BB60D3C */  lui        $t5, (0xB60B60B7 >> 16)
/* 5AA6E70 8008A940 B760AD35 */  ori        $t5, $t5, (0xB60B60B7 & 0xFFFF)
/* 5AA6E74 8008A944 02000B24 */  addiu      $t3, $zero, 0x2
/* 5AA6E78 8008A948 21500000 */  addu       $t2, $zero, $zero
/* 5AA6E7C 8008A94C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 5AA6E80 8008A950 3804E2AD */  sw         $v0, 0x438($t7)
/* 5AA6E84 8008A954 96000224 */  addiu      $v0, $zero, 0x96
/* 5AA6E88 8008A958 000082A1 */  sb         $v0, 0x0($t4)
/* 5AA6E8C 8008A95C 010082A1 */  sb         $v0, 0x1($t4)
/* 5AA6E90 8008A960 020082A1 */  sb         $v0, 0x2($t4)
/* 5AA6E94 8008A964 46000224 */  addiu      $v0, $zero, 0x46
/* 5AA6E98 8008A968 040082A1 */  sb         $v0, 0x4($t4)
/* 5AA6E9C 8008A96C 050082A1 */  sb         $v0, 0x5($t4)
/* 5AA6EA0 8008A970 060082A1 */  sb         $v0, 0x6($t4)
/* 5AA6EA4 8008A974 14000224 */  addiu      $v0, $zero, 0x14
/* 5AA6EA8 8008A978 080082A1 */  sb         $v0, 0x8($t4)
/* 5AA6EAC 8008A97C 090082A1 */  sb         $v0, 0x9($t4)
/* 5AA6EB0 8008A980 0A0082A1 */  sb         $v0, 0xA($t4)
.Llevel_23_8008A984:
/* 5AA6EB4 8008A984 21880000 */  addu       $s1, $zero, $zero
/* 5AA6EB8 8008A988 5555023C */  lui        $v0, (0x55555556 >> 16)
.Llevel_23_8008A98C:
/* 5AA6EBC 8008A98C 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
/* 5AA6EC0 8008A990 18002202 */  mult       $s1, $v0
/* 5AA6EC4 8008A994 AA2A023C */  lui        $v0, (0x2AAAAAAB >> 16)
/* 5AA6EC8 8008A998 10400000 */  mfhi       $t0
/* 5AA6ECC 8008A99C ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
/* 5AA6ED0 8008A9A0 01002426 */  addiu      $a0, $s1, 0x1
/* 5AA6ED4 8008A9A4 18008200 */  mult       $a0, $v0
/* 5AA6ED8 8008A9A8 21185101 */  addu       $v1, $t2, $s1
/* 5AA6EDC 8008A9AC 06002526 */  addiu      $a1, $s1, 0x6
/* 5AA6EE0 8008A9B0 21284501 */  addu       $a1, $t2, $a1
/* 5AA6EE4 8008A9B4 C0100300 */  sll        $v0, $v1, 3
/* 5AA6EE8 8008A9B8 21300203 */  addu       $a2, $t8, $v0
/* 5AA6EEC 8008A9BC C3171100 */  sra        $v0, $s1, 31
/* 5AA6EF0 8008A9C0 23380201 */  subu       $a3, $t0, $v0
/* 5AA6EF4 8008A9C4 10480000 */  mfhi       $t1
/* 5AA6EF8 8008A9C8 40100700 */  sll        $v0, $a3, 1
/* 5AA6EFC 8008A9CC 21104700 */  addu       $v0, $v0, $a3
/* 5AA6F00 8008A9D0 1800AD00 */  mult       $a1, $t5
/* 5AA6F04 8008A9D4 23382202 */  subu       $a3, $s1, $v0
/* 5AA6F08 8008A9D8 0000C3A0 */  sb         $v1, 0x0($a2)
/* 5AA6F0C 8008A9DC C31F0400 */  sra        $v1, $a0, 31
/* 5AA6F10 8008A9E0 23182301 */  subu       $v1, $t1, $v1
/* 5AA6F14 8008A9E4 40100300 */  sll        $v0, $v1, 1
/* 5AA6F18 8008A9E8 21104300 */  addu       $v0, $v0, $v1
/* 5AA6F1C 8008A9EC 40100200 */  sll        $v0, $v0, 1
/* 5AA6F20 8008A9F0 23208200 */  subu       $a0, $a0, $v0
/* 5AA6F24 8008A9F4 21104401 */  addu       $v0, $t2, $a0
/* 5AA6F28 8008A9F8 06008424 */  addiu      $a0, $a0, 0x6
/* 5AA6F2C 8008A9FC 21204401 */  addu       $a0, $t2, $a0
/* 5AA6F30 8008AA00 10400000 */  mfhi       $t0
/* 5AA6F34 8008AA04 C31F0500 */  sra        $v1, $a1, 31
/* 5AA6F38 8008AA08 0100C2A0 */  sb         $v0, 0x1($a2)
/* 5AA6F3C 8008AA0C 18008D00 */  mult       $a0, $t5
/* 5AA6F40 8008AA10 21100501 */  addu       $v0, $t0, $a1
/* 5AA6F44 8008AA14 83110200 */  sra        $v0, $v0, 6
/* 5AA6F48 8008AA18 23104300 */  subu       $v0, $v0, $v1
/* 5AA6F4C 8008AA1C 40180200 */  sll        $v1, $v0, 1
/* 5AA6F50 8008AA20 21186200 */  addu       $v1, $v1, $v0
/* 5AA6F54 8008AA24 00110300 */  sll        $v0, $v1, 4
/* 5AA6F58 8008AA28 23104300 */  subu       $v0, $v0, $v1
/* 5AA6F5C 8008AA2C 40100200 */  sll        $v0, $v0, 1
/* 5AA6F60 8008AA30 2328A200 */  subu       $a1, $a1, $v0
/* 5AA6F64 8008AA34 C31F0400 */  sra        $v1, $a0, 31
/* 5AA6F68 8008AA38 0200C5A0 */  sb         $a1, 0x2($a2)
/* 5AA6F6C 8008AA3C 10480000 */  mfhi       $t1
/* 5AA6F70 8008AA40 21102401 */  addu       $v0, $t1, $a0
/* 5AA6F74 8008AA44 83110200 */  sra        $v0, $v0, 6
/* 5AA6F78 8008AA48 23104300 */  subu       $v0, $v0, $v1
/* 5AA6F7C 8008AA4C 40180200 */  sll        $v1, $v0, 1
/* 5AA6F80 8008AA50 21186200 */  addu       $v1, $v1, $v0
/* 5AA6F84 8008AA54 00110300 */  sll        $v0, $v1, 4
/* 5AA6F88 8008AA58 23104300 */  subu       $v0, $v0, $v1
/* 5AA6F8C 8008AA5C 40100200 */  sll        $v0, $v0, 1
/* 5AA6F90 8008AA60 23208200 */  subu       $a0, $a0, $v0
/* 5AA6F94 8008AA64 0600E014 */  bnez       $a3, .Llevel_23_8008AA80
/* 5AA6F98 8008AA68 0300C4A0 */   sb        $a0, 0x3($a2)
/* 5AA6F9C 8008AA6C 0400C0A0 */  sb         $zero, 0x4($a2)
/* 5AA6FA0 8008AA70 0500CBA0 */  sb         $t3, 0x5($a2)
/* 5AA6FA4 8008AA74 0600C0A0 */  sb         $zero, 0x6($a2)
/* 5AA6FA8 8008AA78 AE2A0208 */  j          .Llevel_23_8008AAB8
/* 5AA6FAC 8008AA7C 0700CBA0 */   sb        $t3, 0x7($a2)
.Llevel_23_8008AA80:
/* 5AA6FB0 8008AA80 01000224 */  addiu      $v0, $zero, 0x1
/* 5AA6FB4 8008AA84 0600E214 */  bne        $a3, $v0, .Llevel_23_8008AAA0
/* 5AA6FB8 8008AA88 00000000 */   nop
/* 5AA6FBC 8008AA8C 0400CBA0 */  sb         $t3, 0x4($a2)
/* 5AA6FC0 8008AA90 0500CBA0 */  sb         $t3, 0x5($a2)
/* 5AA6FC4 8008AA94 0600CBA0 */  sb         $t3, 0x6($a2)
/* 5AA6FC8 8008AA98 AE2A0208 */  j          .Llevel_23_8008AAB8
/* 5AA6FCC 8008AA9C 0700CBA0 */   sb        $t3, 0x7($a2)
.Llevel_23_8008AAA0:
/* 5AA6FD0 8008AAA0 0500EB14 */  bne        $a3, $t3, .Llevel_23_8008AAB8
/* 5AA6FD4 8008AAA4 00000000 */   nop
/* 5AA6FD8 8008AAA8 0400CBA0 */  sb         $t3, 0x4($a2)
/* 5AA6FDC 8008AAAC 0500C0A0 */  sb         $zero, 0x5($a2)
/* 5AA6FE0 8008AAB0 0600CBA0 */  sb         $t3, 0x6($a2)
/* 5AA6FE4 8008AAB4 0700C0A0 */  sb         $zero, 0x7($a2)
.Llevel_23_8008AAB8:
/* 5AA6FE8 8008AAB8 01003126 */  addiu      $s1, $s1, 0x1
/* 5AA6FEC 8008AABC 0600222A */  slti       $v0, $s1, 0x6
/* 5AA6FF0 8008AAC0 B2FF4014 */  bnez       $v0, .Llevel_23_8008A98C
/* 5AA6FF4 8008AAC4 5555023C */   lui       $v0, (0x55555556 >> 16)
/* 5AA6FF8 8008AAC8 0100B526 */  addiu      $s5, $s5, 0x1
/* 5AA6FFC 8008AACC 0F00A22A */  slti       $v0, $s5, 0xF
/* 5AA7000 8008AAD0 ACFF4014 */  bnez       $v0, .Llevel_23_8008A984
/* 5AA7004 8008AAD4 06004A25 */   addiu     $t2, $t2, 0x6
/* 5AA7008 8008AAD8 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 5AA700C 8008AADC D00202AF */  sw         $v0, 0x2D0($t8)
/* 5AA7010 8008AAE0 3800B98F */  lw         $t9, 0x38($sp)
/* 5AA7014 8008AAE4 00000000 */  nop
/* 5AA7018 8008AAE8 0C00228F */  lw         $v0, 0xC($t9)
/* 5AA701C 8008AAEC 00000000 */  nop
/* 5AA7020 8008AAF0 0B004014 */  bnez       $v0, .Llevel_23_8008AB20
/* 5AA7024 8008AAF4 2120E001 */   addu      $a0, $t7, $zero
/* 5AA7028 8008AAF8 21288001 */  addu       $a1, $t4, $zero
/* 5AA702C 8008AAFC 21300003 */  addu       $a2, $t8, $zero
/* 5AA7030 8008AB00 4000B98F */  lw         $t9, 0x40($sp)
/* 5AA7034 8008AB04 01000224 */  addiu      $v0, $zero, 0x1
/* 5AA7038 8008AB08 1000A2AF */  sw         $v0, 0x10($sp)
/* 5AA703C 8008AB0C C042010C */  jal        func_80050B00
/* 5AA7040 8008AB10 0C002727 */   addiu     $a3, $t9, 0xC
/* 5AA7044 8008AB14 3800B98F */  lw         $t9, 0x38($sp)
/* 5AA7048 8008AB18 00000000 */  nop
/* 5AA704C 8008AB1C 0C0022AF */  sw         $v0, 0xC($t9)
.Llevel_23_8008AB20:
/* 5AA7050 8008AB20 4800E392 */  lbu        $v1, 0x48($s7)
/* 5AA7054 8008AB24 02000224 */  addiu      $v0, $zero, 0x2
/* 5AA7058 8008AB28 13006214 */  bne        $v1, $v0, .Llevel_23_8008AB78
/* 5AA705C 8008AB2C 00000000 */   nop
/* 5AA7060 8008AB30 3800B98F */  lw         $t9, 0x38($sp)
/* 5AA7064 8008AB34 00000000 */  nop
/* 5AA7068 8008AB38 0800248F */  lw         $a0, 0x8($t9)
/* 5AA706C 8008AB3C 00000000 */  nop
/* 5AA7070 8008AB40 04008010 */  beqz       $a0, .Llevel_23_8008AB54
/* 5AA7074 8008AB44 00000000 */   nop
/* 5AA7078 8008AB48 E242010C */  jal        func_80050B88
/* 5AA707C 8008AB4C 00000000 */   nop
/* 5AA7080 8008AB50 3800B98F */  lw         $t9, 0x38($sp)
.Llevel_23_8008AB54:
/* 5AA7084 8008AB54 00000000 */  nop
/* 5AA7088 8008AB58 0C00248F */  lw         $a0, 0xC($t9)
/* 5AA708C 8008AB5C 00000000 */  nop
/* 5AA7090 8008AB60 03008010 */  beqz       $a0, .Llevel_23_8008AB70
/* 5AA7094 8008AB64 00000000 */   nop
/* 5AA7098 8008AB68 E242010C */  jal        func_80050B88
/* 5AA709C 8008AB6C 00000000 */   nop
.Llevel_23_8008AB70:
/* 5AA70A0 8008AB70 C656010C */  jal        func_80055B18
/* 5AA70A4 8008AB74 2120E002 */   addu      $a0, $s7, $zero
.Llevel_23_8008AB78:
/* 5AA70A8 8008AB78 CC00BF8F */  lw         $ra, 0xCC($sp)
/* 5AA70AC 8008AB7C C800BE8F */  lw         $fp, 0xC8($sp)
/* 5AA70B0 8008AB80 C400B78F */  lw         $s7, 0xC4($sp)
/* 5AA70B4 8008AB84 C000B68F */  lw         $s6, 0xC0($sp)
/* 5AA70B8 8008AB88 BC00B58F */  lw         $s5, 0xBC($sp)
/* 5AA70BC 8008AB8C B800B48F */  lw         $s4, 0xB8($sp)
/* 5AA70C0 8008AB90 B400B38F */  lw         $s3, 0xB4($sp)
/* 5AA70C4 8008AB94 B000B28F */  lw         $s2, 0xB0($sp)
/* 5AA70C8 8008AB98 AC00B18F */  lw         $s1, 0xAC($sp)
/* 5AA70CC 8008AB9C A800B08F */  lw         $s0, 0xA8($sp)
/* 5AA70D0 8008ABA0 D000BD27 */  addiu      $sp, $sp, 0xD0
/* 5AA70D4 8008ABA4 0800E003 */  jr         $ra
/* 5AA70D8 8008ABA8 00000000 */   nop
.size MobyUpdate_1000_level_23, . - MobyUpdate_1000_level_23
