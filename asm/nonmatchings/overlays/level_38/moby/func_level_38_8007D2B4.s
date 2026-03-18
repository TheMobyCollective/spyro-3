.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_38_8007D2B4
/* 7C3BFE4 8007D2B4 70FFBD27 */  addiu      $sp, $sp, -0x90
/* 7C3BFE8 8007D2B8 7800B2AF */  sw         $s2, 0x78($sp)
/* 7C3BFEC 8007D2BC 21908000 */  addu       $s2, $a0, $zero
/* 7C3BFF0 8007D2C0 03000324 */  addiu      $v1, $zero, 0x3
/* 7C3BFF4 8007D2C4 8800BFAF */  sw         $ra, 0x88($sp)
/* 7C3BFF8 8007D2C8 8400B5AF */  sw         $s5, 0x84($sp)
/* 7C3BFFC 8007D2CC 8000B4AF */  sw         $s4, 0x80($sp)
/* 7C3C000 8007D2D0 7C00B3AF */  sw         $s3, 0x7C($sp)
/* 7C3C004 8007D2D4 7400B1AF */  sw         $s1, 0x74($sp)
/* 7C3C008 8007D2D8 7000B0AF */  sw         $s0, 0x70($sp)
/* 7C3C00C 8007D2DC 48004292 */  lbu        $v0, 0x48($s2)
/* 7C3C010 8007D2E0 0000548E */  lw         $s4, 0x0($s2)
/* 7C3C014 8007D2E4 4D004310 */  beq        $v0, $v1, .Llevel_38_8007D41C
/* 7C3C018 8007D2E8 0100033C */   lui       $v1, (0x10000 >> 16)
/* 7C3C01C 8007D2EC 1800428E */  lw         $v0, 0x18($s2)
/* 7C3C020 8007D2F0 00000000 */  nop
/* 7C3C024 8007D2F4 24104300 */  and        $v0, $v0, $v1
/* 7C3C028 8007D2F8 48004010 */  beqz       $v0, .Llevel_38_8007D41C
/* 7C3C02C 8007D2FC 00000000 */   nop
/* 7C3C030 8007D300 1000828E */  lw         $v0, 0x10($s4)
/* 7C3C034 8007D304 00000000 */  nop
/* 7C3C038 8007D308 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 7C3C03C 8007D30C 06004018 */  blez       $v0, .Llevel_38_8007D328
/* 7C3C040 8007D310 100082AE */   sw        $v0, 0x10($s4)
/* 7C3C044 8007D314 1800428E */  lw         $v0, 0x18($s2)
/* 7C3C048 8007D318 1800033C */  lui        $v1, (0x180000 >> 16)
/* 7C3C04C 8007D31C 24104300 */  and        $v0, $v0, $v1
/* 7C3C050 8007D320 13004010 */  beqz       $v0, .Llevel_38_8007D370
/* 7C3C054 8007D324 C8000224 */   addiu     $v0, $zero, 0xC8
.Llevel_38_8007D328:
/* 7C3C058 8007D328 21204002 */  addu       $a0, $s2, $zero
/* 7C3C05C 8007D32C 01000524 */  addiu      $a1, $zero, 0x1
/* 7C3C060 8007D330 21300000 */  addu       $a2, $zero, $zero
/* 7C3C064 8007D334 9ADA000C */  jal        func_80036A68
/* 7C3C068 8007D338 21380000 */   addu      $a3, $zero, $zero
/* 7C3C06C 8007D33C 21204002 */  addu       $a0, $s2, $zero
/* 7C3C070 8007D340 03000524 */  addiu      $a1, $zero, 0x3
/* 7C3C074 8007D344 FF000224 */  addiu      $v0, $zero, 0xFF
/* 7C3C078 8007D348 4A0042A2 */  sb         $v0, 0x4A($s2)
/* 7C3C07C 8007D34C 03000224 */  addiu      $v0, $zero, 0x3
/* 7C3C080 8007D350 480042A2 */  sb         $v0, 0x48($s2)
/* 7C3C084 8007D354 D0D3000C */  jal        func_80034F40
/* 7C3C088 8007D358 080040AE */   sw        $zero, 0x8($s2)
/* 7C3C08C 8007D35C 21204002 */  addu       $a0, $s2, $zero
/* 7C3C090 8007D360 01000524 */  addiu      $a1, $zero, 0x1
/* 7C3C094 8007D364 AFEE000C */  jal        func_8003BABC
/* 7C3C098 8007D368 21300000 */   addu      $a2, $zero, $zero
/* 7C3C09C 8007D36C C8000224 */  addiu      $v0, $zero, 0xC8
.Llevel_38_8007D370:
/* 7C3C0A0 8007D370 2C0082AE */  sw         $v0, 0x2C($s4)
/* 7C3C0A4 8007D374 96000224 */  addiu      $v0, $zero, 0x96
/* 7C3C0A8 8007D378 280082AE */  sw         $v0, 0x28($s4)
/* 7C3C0AC 8007D37C 51004292 */  lbu        $v0, 0x51($s2)
/* 7C3C0B0 8007D380 00000000 */  nop
/* 7C3C0B4 8007D384 12004014 */  bnez       $v0, .Llevel_38_8007D3D0
/* 7C3C0B8 8007D388 21204002 */   addu      $a0, $s2, $zero
/* 7C3C0BC 8007D38C 21300000 */  addu       $a2, $zero, $zero
/* 7C3C0C0 8007D390 0C00438E */  lw         $v1, 0xC($s2)
/* 7C3C0C4 8007D394 0780043C */  lui        $a0, %hi(D_80070328)
/* 7C3C0C8 8007D398 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 7C3C0CC 8007D39C 1000428E */  lw         $v0, 0x10($s2)
/* 7C3C0D0 8007D3A0 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 7C3C0D4 8007D3A4 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 7C3C0D8 8007D3A8 23206400 */  subu       $a0, $v1, $a0
/* 7C3C0DC 8007D3AC 203A010C */  jal        func_8004E880
/* 7C3C0E0 8007D3B0 23284500 */   subu      $a1, $v0, $a1
/* 7C3C0E4 8007D3B4 21204000 */  addu       $a0, $v0, $zero
/* 7C3C0E8 8007D3B8 20000624 */  addiu      $a2, $zero, 0x20
/* 7C3C0EC 8007D3BC 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 7C3C0F0 8007D3C0 3603A590 */  lbu        $a1, %lo(D_80070328 + 0xE)($a1)
/* 7C3C0F4 8007D3C4 3ED8000C */  jal        func_800360F8
/* 7C3C0F8 8007D3C8 40000724 */   addiu     $a3, $zero, 0x40
/* 7C3C0FC 8007D3CC 21204002 */  addu       $a0, $s2, $zero
.Llevel_38_8007D3D0:
/* 7C3C100 8007D3D0 2C008526 */  addiu      $a1, $s4, 0x2C
/* 7C3C104 8007D3D4 240082AE */  sw         $v0, 0x24($s4)
/* 7C3C108 8007D3D8 08000224 */  addiu      $v0, $zero, 0x8
/* 7C3C10C 8007D3DC 1000A2AF */  sw         $v0, 0x10($sp)
/* 7C3C110 8007D3E0 10000224 */  addiu      $v0, $zero, 0x10
/* 7C3C114 8007D3E4 1400A2AF */  sw         $v0, 0x14($sp)
/* 7C3C118 8007D3E8 00020224 */  addiu      $v0, $zero, 0x200
/* 7C3C11C 8007D3EC 1800A2AF */  sw         $v0, 0x18($sp)
/* 7C3C120 8007D3F0 23000224 */  addiu      $v0, $zero, 0x23
/* 7C3C124 8007D3F4 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 7C3C128 8007D3F8 2400868E */  lw         $a2, 0x24($s4)
/* 7C3C12C 8007D3FC 0CD4000C */  jal        func_80035030
/* 7C3C130 8007D400 28008726 */   addiu     $a3, $s4, 0x28
/* 7C3C134 8007D404 FF000224 */  addiu      $v0, $zero, 0xFF
/* 7C3C138 8007D408 540042A2 */  sb         $v0, 0x54($s2)
/* 7C3C13C 8007D40C 550042A2 */  sb         $v0, 0x55($s2)
/* 7C3C140 8007D410 560042A2 */  sb         $v0, 0x56($s2)
/* 7C3C144 8007D414 3F000224 */  addiu      $v0, $zero, 0x3F
/* 7C3C148 8007D418 570042A2 */  sb         $v0, 0x57($s2)
.Llevel_38_8007D41C:
/* 7C3C14C 8007D41C 1800428E */  lw         $v0, 0x18($s2)
/* 7C3C150 8007D420 00000000 */  nop
/* 7C3C154 8007D424 05004010 */  beqz       $v0, .Llevel_38_8007D43C
/* 7C3C158 8007D428 03000224 */   addiu     $v0, $zero, 0x3
/* 7C3C15C 8007D42C 48004392 */  lbu        $v1, 0x48($s2)
/* 7C3C160 8007D430 00000000 */  nop
/* 7C3C164 8007D434 06006214 */  bne        $v1, $v0, .Llevel_38_8007D450
/* 7C3C168 8007D438 21204002 */   addu      $a0, $s2, $zero
.Llevel_38_8007D43C:
/* 7C3C16C 8007D43C 540040A2 */  sb         $zero, 0x54($s2)
/* 7C3C170 8007D440 550040A2 */  sb         $zero, 0x55($s2)
/* 7C3C174 8007D444 560040A2 */  sb         $zero, 0x56($s2)
/* 7C3C178 8007D448 570040A2 */  sb         $zero, 0x57($s2)
/* 7C3C17C 8007D44C 21204002 */  addu       $a0, $s2, $zero
.Llevel_38_8007D450:
/* 7C3C180 8007D450 05000524 */  addiu      $a1, $zero, 0x5
/* 7C3C184 8007D454 21300000 */  addu       $a2, $zero, $zero
/* 7C3C188 8007D458 CFD5000C */  jal        func_8003573C
/* 7C3C18C 8007D45C 21380000 */   addu      $a3, $zero, $zero
/* 7C3C190 8007D460 2000918E */  lw         $s1, 0x20($s4)
/* 7C3C194 8007D464 00000000 */  nop
/* 7C3C198 8007D468 06002016 */  bnez       $s1, .Llevel_38_8007D484
/* 7C3C19C 8007D46C 01000224 */   addiu     $v0, $zero, 0x1
/* 7C3C1A0 8007D470 2000A427 */  addiu      $a0, $sp, 0x20
/* 7C3C1A4 8007D474 5E3C010C */  jal        func_8004F178
/* 7C3C1A8 8007D478 0C004526 */   addiu     $a1, $s2, 0xC
/* 7C3C1AC 8007D47C 85F50108 */  j          .Llevel_38_8007D614
/* 7C3C1B0 8007D480 21300000 */   addu      $a2, $zero, $zero
.Llevel_38_8007D484:
/* 7C3C1B4 8007D484 1A008386 */  lh         $v1, 0x1A($s4)
/* 7C3C1B8 8007D488 00000000 */  nop
/* 7C3C1BC 8007D48C 26006214 */  bne        $v1, $v0, .Llevel_38_8007D528
/* 7C3C1C0 8007D490 3000B027 */   addiu     $s0, $sp, 0x30
/* 7C3C1C4 8007D494 21300000 */  addu       $a2, $zero, $zero
/* 7C3C1C8 8007D498 0C00228E */  lw         $v0, 0xC($s1)
/* 7C3C1CC 8007D49C 0780073C */  lui        $a3, %hi(D_80070328)
/* 7C3C1D0 8007D4A0 2803E78C */  lw         $a3, %lo(D_80070328)($a3)
/* 7C3C1D4 8007D4A4 0780033C */  lui        $v1, %hi(D_80070328 + 4)
/* 7C3C1D8 8007D4A8 2C03638C */  lw         $v1, %lo(D_80070328 + 4)($v1)
/* 7C3C1DC 8007D4AC 0000448C */  lw         $a0, 0x0($v0)
/* 7C3C1E0 8007D4B0 0400458C */  lw         $a1, 0x4($v0)
/* 7C3C1E4 8007D4B4 2320E400 */  subu       $a0, $a3, $a0
/* 7C3C1E8 8007D4B8 203A010C */  jal        func_8004E880
/* 7C3C1EC 8007D4BC 23286500 */   subu      $a1, $v1, $a1
/* 7C3C1F0 8007D4C0 1C008592 */  lbu        $a1, 0x1C($s4)
/* 7C3C1F4 8007D4C4 1D008692 */  lbu        $a2, 0x1D($s4)
/* 7C3C1F8 8007D4C8 06D8000C */  jal        func_80036018
/* 7C3C1FC 8007D4CC 21204000 */   addu      $a0, $v0, $zero
/* 7C3C200 8007D4D0 00810200 */  sll        $s0, $v0, 4
/* 7C3C204 8007D4D4 8B3A010C */  jal        func_8004EA2C
/* 7C3C208 8007D4D8 21200002 */   addu      $a0, $s0, $zero
/* 7C3C20C 8007D4DC 1E008386 */  lh         $v1, 0x1E($s4)
/* 7C3C210 8007D4E0 00000000 */  nop
/* 7C3C214 8007D4E4 18004300 */  mult       $v0, $v1
/* 7C3C218 8007D4E8 21200002 */  addu       $a0, $s0, $zero
/* 7C3C21C 8007D4EC 12400000 */  mflo       $t0
/* 7C3C220 8007D4F0 03130800 */  sra        $v0, $t0, 12
/* 7C3C224 8007D4F4 793A010C */  jal        func_8004E9E4
/* 7C3C228 8007D4F8 2000A2AF */   sw        $v0, 0x20($sp)
/* 7C3C22C 8007D4FC 1E008386 */  lh         $v1, 0x1E($s4)
/* 7C3C230 8007D500 00000000 */  nop
/* 7C3C234 8007D504 18004300 */  mult       $v0, $v1
/* 7C3C238 8007D508 2000A427 */  addiu      $a0, $sp, 0x20
/* 7C3C23C 8007D50C 2800A0AF */  sw         $zero, 0x28($sp)
/* 7C3C240 8007D510 12400000 */  mflo       $t0
/* 7C3C244 8007D514 03130800 */  sra        $v0, $t0, 12
/* 7C3C248 8007D518 2400A2AF */  sw         $v0, 0x24($sp)
/* 7C3C24C 8007D51C 0C00268E */  lw         $a2, 0xC($s1)
/* 7C3C250 8007D520 82F50108 */  j          .Llevel_38_8007D608
/* 7C3C254 8007D524 21288000 */   addu      $a1, $a0, $zero
.Llevel_38_8007D528:
/* 7C3C258 8007D528 0C00268E */  lw         $a2, 0xC($s1)
/* 7C3C25C 8007D52C 21200002 */  addu       $a0, $s0, $zero
/* 7C3C260 8007D530 723C010C */  jal        func_8004F1C8
/* 7C3C264 8007D534 1000C524 */   addiu     $a1, $a2, 0x10
/* 7C3C268 8007D538 0C00268E */  lw         $a2, 0xC($s1)
/* 7C3C26C 8007D53C 0780053C */  lui        $a1, %hi(D_80070328)
/* 7C3C270 8007D540 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 7C3C274 8007D544 723C010C */  jal        func_8004F1C8
/* 7C3C278 8007D548 4000A427 */   addiu     $a0, $sp, 0x40
/* 7C3C27C 8007D54C 21200002 */  addu       $a0, $s0, $zero
/* 7C3C280 8007D550 7A3B010C */  jal        func_8004EDE8
/* 7C3C284 8007D554 01000524 */   addiu     $a1, $zero, 0x1
/* 7C3C288 8007D558 21200002 */  addu       $a0, $s0, $zero
/* 7C3C28C 8007D55C 00040524 */  addiu      $a1, $zero, 0x400
/* 7C3C290 8007D560 C13B010C */  jal        func_8004EF04
/* 7C3C294 8007D564 21804000 */   addu      $s0, $v0, $zero
/* 7C3C298 8007D568 3000A38F */  lw         $v1, 0x30($sp)
/* 7C3C29C 8007D56C 4000A28F */  lw         $v0, 0x40($sp)
/* 7C3C2A0 8007D570 00000000 */  nop
/* 7C3C2A4 8007D574 18006200 */  mult       $v1, $v0
/* 7C3C2A8 8007D578 3400A38F */  lw         $v1, 0x34($sp)
/* 7C3C2AC 8007D57C 12280000 */  mflo       $a1
/* 7C3C2B0 8007D580 4400A28F */  lw         $v0, 0x44($sp)
/* 7C3C2B4 8007D584 00000000 */  nop
/* 7C3C2B8 8007D588 18006200 */  mult       $v1, $v0
/* 7C3C2BC 8007D58C 3800A38F */  lw         $v1, 0x38($sp)
/* 7C3C2C0 8007D590 12200000 */  mflo       $a0
/* 7C3C2C4 8007D594 4800A28F */  lw         $v0, 0x48($sp)
/* 7C3C2C8 8007D598 00000000 */  nop
/* 7C3C2CC 8007D59C 18006200 */  mult       $v1, $v0
/* 7C3C2D0 8007D5A0 2110A400 */  addu       $v0, $a1, $a0
/* 7C3C2D4 8007D5A4 12180000 */  mflo       $v1
/* 7C3C2D8 8007D5A8 21104300 */  addu       $v0, $v0, $v1
/* 7C3C2DC 8007D5AC 83320200 */  sra        $a2, $v0, 10
/* 7C3C2E0 8007D5B0 2A100602 */  slt        $v0, $s0, $a2
/* 7C3C2E4 8007D5B4 03004010 */  beqz       $v0, .Llevel_38_8007D5C4
/* 7C3C2E8 8007D5B8 00000000 */   nop
/* 7C3C2EC 8007D5BC 74F50108 */  j          .Llevel_38_8007D5D0
/* 7C3C2F0 8007D5C0 21300002 */   addu      $a2, $s0, $zero
.Llevel_38_8007D5C4:
/* 7C3C2F4 8007D5C4 0200C104 */  bgez       $a2, .Llevel_38_8007D5D0
/* 7C3C2F8 8007D5C8 00000000 */   nop
/* 7C3C2FC 8007D5CC 21300000 */  addu       $a2, $zero, $zero
.Llevel_38_8007D5D0:
/* 7C3C300 8007D5D0 4000B027 */  addiu      $s0, $sp, 0x40
/* 7C3C304 8007D5D4 21200002 */  addu       $a0, $s0, $zero
/* 7C3C308 8007D5D8 7F3C010C */  jal        func_8004F1FC
/* 7C3C30C 8007D5DC 3000A527 */   addiu     $a1, $sp, 0x30
/* 7C3C310 8007D5E0 4000A28F */  lw         $v0, 0x40($sp)
/* 7C3C314 8007D5E4 4400A38F */  lw         $v1, 0x44($sp)
/* 7C3C318 8007D5E8 2000A427 */  addiu      $a0, $sp, 0x20
/* 7C3C31C 8007D5EC 4800A0AF */  sw         $zero, 0x48($sp)
/* 7C3C320 8007D5F0 83120200 */  sra        $v0, $v0, 10
/* 7C3C324 8007D5F4 831A0300 */  sra        $v1, $v1, 10
/* 7C3C328 8007D5F8 4000A2AF */  sw         $v0, 0x40($sp)
/* 7C3C32C 8007D5FC 4400A3AF */  sw         $v1, 0x44($sp)
/* 7C3C330 8007D600 0C00268E */  lw         $a2, 0xC($s1)
/* 7C3C334 8007D604 21280002 */  addu       $a1, $s0, $zero
.Llevel_38_8007D608:
/* 7C3C338 8007D608 653C010C */  jal        func_8004F194
/* 7C3C33C 8007D60C 00000000 */   nop
/* 7C3C340 8007D610 21300000 */  addu       $a2, $zero, $zero
.Llevel_38_8007D614:
/* 7C3C344 8007D614 2000A38F */  lw         $v1, 0x20($sp)
/* 7C3C348 8007D618 0C00448E */  lw         $a0, 0xC($s2)
/* 7C3C34C 8007D61C 2400A28F */  lw         $v0, 0x24($sp)
/* 7C3C350 8007D620 1000458E */  lw         $a1, 0x10($s2)
/* 7C3C354 8007D624 23206400 */  subu       $a0, $v1, $a0
/* 7C3C358 8007D628 203A010C */  jal        func_8004E880
/* 7C3C35C 8007D62C 23284500 */   subu      $a1, $v0, $a1
/* 7C3C360 8007D630 0C005526 */  addiu      $s5, $s2, 0xC
/* 7C3C364 8007D634 2120A002 */  addu       $a0, $s5, $zero
/* 7C3C368 8007D638 2000A527 */  addiu      $a1, $sp, 0x20
/* 7C3C36C 8007D63C CD3C010C */  jal        func_8004F334
/* 7C3C370 8007D640 21804000 */   addu      $s0, $v0, $zero
/* 7C3C374 8007D644 01024228 */  slti       $v0, $v0, 0x201
/* 7C3C378 8007D648 07004014 */  bnez       $v0, .Llevel_38_8007D668
/* 7C3C37C 8007D64C 21204002 */   addu      $a0, $s2, $zero
/* 7C3C380 8007D650 21280002 */  addu       $a1, $s0, $zero
/* 7C3C384 8007D654 5A000624 */  addiu      $a2, $zero, 0x5A
/* 7C3C388 8007D658 21380000 */  addu       $a3, $zero, $zero
/* 7C3C38C 8007D65C 1000A0AF */  sw         $zero, 0x10($sp)
/* 7C3C390 8007D660 B8D7000C */  jal        func_80035EE0
/* 7C3C394 8007D664 1400A0AF */   sw        $zero, 0x14($sp)
.Llevel_38_8007D668:
/* 7C3C398 8007D668 48004392 */  lbu        $v1, 0x48($s2)
/* 7C3C39C 8007D66C 01000424 */  addiu      $a0, $zero, 0x1
/* 7C3C3A0 8007D670 35006410 */  beq        $v1, $a0, .Llevel_38_8007D748
/* 7C3C3A4 8007D674 02006228 */   slti      $v0, $v1, 0x2
/* 7C3C3A8 8007D678 05004010 */  beqz       $v0, .Llevel_38_8007D690
/* 7C3C3AC 8007D67C 00000000 */   nop
/* 7C3C3B0 8007D680 0A006010 */  beqz       $v1, .Llevel_38_8007D6AC
/* 7C3C3B4 8007D684 00000000 */   nop
/* 7C3C3B8 8007D688 95F60108 */  j          .Llevel_38_8007DA54
/* 7C3C3BC 8007D68C 180040AE */   sw        $zero, 0x18($s2)
.Llevel_38_8007D690:
/* 7C3C3C0 8007D690 02000224 */  addiu      $v0, $zero, 0x2
/* 7C3C3C4 8007D694 58006210 */  beq        $v1, $v0, .Llevel_38_8007D7F8
/* 7C3C3C8 8007D698 03000224 */   addiu     $v0, $zero, 0x3
/* 7C3C3CC 8007D69C AC006210 */  beq        $v1, $v0, .Llevel_38_8007D950
/* 7C3C3D0 8007D6A0 00000000 */   nop
/* 7C3C3D4 8007D6A4 95F60108 */  j          .Llevel_38_8007DA54
/* 7C3C3D8 8007D6A8 180040AE */   sw        $zero, 0x18($s2)
.Llevel_38_8007D6AC:
/* 7C3C3DC 8007D6AC 49004292 */  lbu        $v0, 0x49($s2)
/* 7C3C3E0 8007D6B0 00000000 */  nop
/* 7C3C3E4 8007D6B4 0D004414 */  bne        $v0, $a0, .Llevel_38_8007D6EC
/* 7C3C3E8 8007D6B8 00000000 */   nop
/* 7C3C3EC 8007D6BC 0780023C */  lui        $v0, %hi(D_8006C770)
/* 7C3C3F0 8007D6C0 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 7C3C3F4 8007D6C4 00000000 */  nop
/* 7C3C3F8 8007D6C8 E1004010 */  beqz       $v0, .Llevel_38_8007DA50
/* 7C3C3FC 8007D6CC 21204002 */   addu      $a0, $s2, $zero
/* 7C3C400 8007D6D0 D0D3000C */  jal        func_80034F40
/* 7C3C404 8007D6D4 01000524 */   addiu     $a1, $zero, 0x1
/* 7C3C408 8007D6D8 01000224 */  addiu      $v0, $zero, 0x1
/* 7C3C40C 8007D6DC 480042A2 */  sb         $v0, 0x48($s2)
/* 7C3C410 8007D6E0 490040A2 */  sb         $zero, 0x49($s2)
/* 7C3C414 8007D6E4 94F60108 */  j          .Llevel_38_8007DA50
/* 7C3C418 8007D6E8 340080AE */   sw        $zero, 0x34($s4)
.Llevel_38_8007D6EC:
/* 7C3C41C 8007D6EC 0780053C */  lui        $a1, %hi(D_80070328)
/* 7C3C420 8007D6F0 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 7C3C424 8007D6F4 CD3C010C */  jal        func_8004F334
/* 7C3C428 8007D6F8 2120A002 */   addu      $a0, $s5, $zero
/* 7C3C42C 8007D6FC 14008386 */  lh         $v1, 0x14($s4)
/* 7C3C430 8007D700 00000000 */  nop
/* 7C3C434 8007D704 2A104300 */  slt        $v0, $v0, $v1
/* 7C3C438 8007D708 05004010 */  beqz       $v0, .Llevel_38_8007D720
/* 7C3C43C 8007D70C 00000000 */   nop
/* 7C3C440 8007D710 4D004292 */  lbu        $v0, 0x4D($s2)
/* 7C3C444 8007D714 00000000 */  nop
/* 7C3C448 8007D718 05004014 */  bnez       $v0, .Llevel_38_8007D730
/* 7C3C44C 8007D71C 00000000 */   nop
.Llevel_38_8007D720:
/* 7C3C450 8007D720 1800428E */  lw         $v0, 0x18($s2)
/* 7C3C454 8007D724 00000000 */  nop
/* 7C3C458 8007D728 C9004010 */  beqz       $v0, .Llevel_38_8007DA50
/* 7C3C45C 8007D72C 00000000 */   nop
.Llevel_38_8007D730:
/* 7C3C460 8007D730 21204002 */  addu       $a0, $s2, $zero
/* 7C3C464 8007D734 D0D3000C */  jal        func_80034F40
/* 7C3C468 8007D738 01000524 */   addiu     $a1, $zero, 0x1
/* 7C3C46C 8007D73C 01000224 */  addiu      $v0, $zero, 0x1
/* 7C3C470 8007D740 94F60108 */  j          .Llevel_38_8007DA50
/* 7C3C474 8007D744 490042A2 */   sb        $v0, 0x49($s2)
.Llevel_38_8007D748:
/* 7C3C478 8007D748 4D004292 */  lbu        $v0, 0x4D($s2)
/* 7C3C47C 8007D74C 00000000 */  nop
/* 7C3C480 8007D750 02004014 */  bnez       $v0, .Llevel_38_8007D75C
/* 7C3C484 8007D754 00000000 */   nop
/* 7C3C488 8007D758 340080AE */  sw         $zero, 0x34($s4)
.Llevel_38_8007D75C:
/* 7C3C48C 8007D75C 3400828E */  lw         $v0, 0x34($s4)
/* 7C3C490 8007D760 00000000 */  nop
/* 7C3C494 8007D764 01004224 */  addiu      $v0, $v0, 0x1
/* 7C3C498 8007D768 340082AE */  sw         $v0, 0x34($s4)
/* 7C3C49C 8007D76C 15004228 */  slti       $v0, $v0, 0x15
/* 7C3C4A0 8007D770 14004014 */  bnez       $v0, .Llevel_38_8007D7C4
/* 7C3C4A4 8007D774 00000000 */   nop
/* 7C3C4A8 8007D778 0780053C */  lui        $a1, %hi(D_80070328)
/* 7C3C4AC 8007D77C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 7C3C4B0 8007D780 CD3C010C */  jal        func_8004F334
/* 7C3C4B4 8007D784 2120A002 */   addu      $a0, $s5, $zero
/* 7C3C4B8 8007D788 16008386 */  lh         $v1, 0x16($s4)
/* 7C3C4BC 8007D78C 00000000 */  nop
/* 7C3C4C0 8007D790 2A104300 */  slt        $v0, $v0, $v1
/* 7C3C4C4 8007D794 05004014 */  bnez       $v0, .Llevel_38_8007D7AC
/* 7C3C4C8 8007D798 00000000 */   nop
/* 7C3C4CC 8007D79C 1800428E */  lw         $v0, 0x18($s2)
/* 7C3C4D0 8007D7A0 00000000 */  nop
/* 7C3C4D4 8007D7A4 07004010 */  beqz       $v0, .Llevel_38_8007D7C4
/* 7C3C4D8 8007D7A8 00000000 */   nop
.Llevel_38_8007D7AC:
/* 7C3C4DC 8007D7AC 21204002 */  addu       $a0, $s2, $zero
/* 7C3C4E0 8007D7B0 D0D3000C */  jal        func_80034F40
/* 7C3C4E4 8007D7B4 02000524 */   addiu     $a1, $zero, 0x2
/* 7C3C4E8 8007D7B8 02000224 */  addiu      $v0, $zero, 0x2
/* 7C3C4EC 8007D7BC 94F60108 */  j          .Llevel_38_8007DA50
/* 7C3C4F0 8007D7C0 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_38_8007D7C4:
/* 7C3C4F4 8007D7C4 0780053C */  lui        $a1, %hi(D_80070328)
/* 7C3C4F8 8007D7C8 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 7C3C4FC 8007D7CC CD3C010C */  jal        func_8004F334
/* 7C3C500 8007D7D0 0C004426 */   addiu     $a0, $s2, 0xC
/* 7C3C504 8007D7D4 18008386 */  lh         $v1, 0x18($s4)
/* 7C3C508 8007D7D8 00000000 */  nop
/* 7C3C50C 8007D7DC 2A186200 */  slt        $v1, $v1, $v0
/* 7C3C510 8007D7E0 9B006010 */  beqz       $v1, .Llevel_38_8007DA50
/* 7C3C514 8007D7E4 21204002 */   addu      $a0, $s2, $zero
/* 7C3C518 8007D7E8 D0D3000C */  jal        func_80034F40
/* 7C3C51C 8007D7EC 21280000 */   addu      $a1, $zero, $zero
/* 7C3C520 8007D7F0 94F60108 */  j          .Llevel_38_8007DA50
/* 7C3C524 8007D7F4 480040A2 */   sb        $zero, 0x48($s2)
.Llevel_38_8007D7F8:
/* 7C3C528 8007D7F8 A157010C */  jal        func_80055E84
/* 7C3C52C 8007D7FC 21204002 */   addu      $a0, $s2, $zero
/* 7C3C530 8007D800 10000324 */  addiu      $v1, $zero, 0x10
/* 7C3C534 8007D804 92004314 */  bne        $v0, $v1, .Llevel_38_8007DA50
/* 7C3C538 8007D808 21204002 */   addu      $a0, $s2, $zero
/* 7C3C53C 8007D80C 21280000 */  addu       $a1, $zero, $zero
/* 7C3C540 8007D810 AFEE000C */  jal        func_8003BABC
/* 7C3C544 8007D814 21300000 */   addu      $a2, $zero, $zero
/* 7C3C548 8007D818 59020424 */  addiu      $a0, $zero, 0x259
/* 7C3C54C 8007D81C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7C3C550 8007D820 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7C3C554 8007D824 00000000 */  nop
/* 7C3C558 8007D828 09F84000 */  jalr       $v0
/* 7C3C55C 8007D82C 21284002 */   addu      $a1, $s2, $zero
/* 7C3C560 8007D830 21984000 */  addu       $s3, $v0, $zero
/* 7C3C564 8007D834 3F006012 */  beqz       $s3, .Llevel_38_8007D934
/* 7C3C568 8007D838 0C007126 */   addiu     $s1, $s3, 0xC
/* 7C3C56C 8007D83C 46004292 */  lbu        $v0, 0x46($s2)
/* 7C3C570 8007D840 21202002 */  addu       $a0, $s1, $zero
/* 7C3C574 8007D844 40100200 */  sll        $v0, $v0, 1
/* 7C3C578 8007D848 0680013C */  lui        $at, %hi(D_80065920)
/* 7C3C57C 8007D84C 21082200 */  addu       $at, $at, $v0
/* 7C3C580 8007D850 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 7C3C584 8007D854 21282002 */  addu       $a1, $s1, $zero
/* 7C3C588 8007D858 83100200 */  sra        $v0, $v0, 2
/* 7C3C58C 8007D85C 0C0062AE */  sw         $v0, 0xC($s3)
/* 7C3C590 8007D860 46004292 */  lbu        $v0, 0x46($s2)
/* 7C3C594 8007D864 0000708E */  lw         $s0, 0x0($s3)
/* 7C3C598 8007D868 40100200 */  sll        $v0, $v0, 1
/* 7C3C59C 8007D86C 0680013C */  lui        $at, %hi(D_800658A0)
/* 7C3C5A0 8007D870 21082200 */  addu       $at, $at, $v0
/* 7C3C5A4 8007D874 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 7C3C5A8 8007D878 2130A002 */  addu       $a2, $s5, $zero
/* 7C3C5AC 8007D87C 140060AE */  sw         $zero, 0x14($s3)
/* 7C3C5B0 8007D880 83100200 */  sra        $v0, $v0, 2
/* 7C3C5B4 8007D884 653C010C */  jal        func_8004F194
/* 7C3C5B8 8007D888 100062AE */   sw        $v0, 0x10($s3)
/* 7C3C5BC 8007D88C 1400628E */  lw         $v0, 0x14($s3)
/* 7C3C5C0 8007D890 40000324 */  addiu      $v1, $zero, 0x40
/* 7C3C5C4 8007D894 440063A2 */  sb         $v1, 0x44($s3)
/* 7C3C5C8 8007D898 00024224 */  addiu      $v0, $v0, 0x200
/* 7C3C5CC 8007D89C 140062AE */  sw         $v0, 0x14($s3)
/* 7C3C5D0 8007D8A0 46004292 */  lbu        $v0, 0x46($s2)
/* 7C3C5D4 8007D8A4 00000000 */  nop
/* 7C3C5D8 8007D8A8 40100200 */  sll        $v0, $v0, 1
/* 7C3C5DC 8007D8AC 0680013C */  lui        $at, %hi(D_80065920)
/* 7C3C5E0 8007D8B0 21082200 */  addu       $at, $at, $v0
/* 7C3C5E4 8007D8B4 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 7C3C5E8 8007D8B8 2120A002 */  addu       $a0, $s5, $zero
/* 7C3C5EC 8007D8BC 40110300 */  sll        $v0, $v1, 5
/* 7C3C5F0 8007D8C0 23104300 */  subu       $v0, $v0, $v1
/* 7C3C5F4 8007D8C4 80100200 */  sll        $v0, $v0, 2
/* 7C3C5F8 8007D8C8 21104300 */  addu       $v0, $v0, $v1
/* 7C3C5FC 8007D8CC C3120200 */  sra        $v0, $v0, 11
/* 7C3C600 8007D8D0 000002AE */  sw         $v0, 0x0($s0)
/* 7C3C604 8007D8D4 46004292 */  lbu        $v0, 0x46($s2)
/* 7C3C608 8007D8D8 21282002 */  addu       $a1, $s1, $zero
/* 7C3C60C 8007D8DC 40100200 */  sll        $v0, $v0, 1
/* 7C3C610 8007D8E0 0680013C */  lui        $at, %hi(D_800658A0)
/* 7C3C614 8007D8E4 21082200 */  addu       $at, $at, $v0
/* 7C3C618 8007D8E8 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 7C3C61C 8007D8EC 23000224 */  addiu      $v0, $zero, 0x23
/* 7C3C620 8007D8F0 080000AE */  sw         $zero, 0x8($s0)
/* 7C3C624 8007D8F4 0C0002AE */  sw         $v0, 0xC($s0)
/* 7C3C628 8007D8F8 40110300 */  sll        $v0, $v1, 5
/* 7C3C62C 8007D8FC 23104300 */  subu       $v0, $v0, $v1
/* 7C3C630 8007D900 80100200 */  sll        $v0, $v0, 2
/* 7C3C634 8007D904 21104300 */  addu       $v0, $v0, $v1
/* 7C3C638 8007D908 C3120200 */  sra        $v0, $v0, 11
/* 7C3C63C 8007D90C DA60000C */  jal        func_80018368
/* 7C3C640 8007D910 040002AE */   sw        $v0, 0x4($s0)
/* 7C3C644 8007D914 04004010 */  beqz       $v0, .Llevel_38_8007D928
/* 7C3C648 8007D918 21206002 */   addu      $a0, $s3, $zero
/* 7C3C64C 8007D91C C656010C */  jal        func_80055B18
/* 7C3C650 8007D920 21206002 */   addu      $a0, $s3, $zero
/* 7C3C654 8007D924 21206002 */  addu       $a0, $s3, $zero
.Llevel_38_8007D928:
/* 7C3C658 8007D928 21280000 */  addu       $a1, $zero, $zero
/* 7C3C65C 8007D92C AFEE000C */  jal        func_8003BABC
/* 7C3C660 8007D930 21300000 */   addu      $a2, $zero, $zero
.Llevel_38_8007D934:
/* 7C3C664 8007D934 21204002 */  addu       $a0, $s2, $zero
/* 7C3C668 8007D938 D0D3000C */  jal        func_80034F40
/* 7C3C66C 8007D93C 01000524 */   addiu     $a1, $zero, 0x1
/* 7C3C670 8007D940 01000224 */  addiu      $v0, $zero, 0x1
/* 7C3C674 8007D944 480042A2 */  sb         $v0, 0x48($s2)
/* 7C3C678 8007D948 94F60108 */  j          .Llevel_38_8007DA50
/* 7C3C67C 8007D94C 340080AE */   sw        $zero, 0x34($s4)
.Llevel_38_8007D950:
/* 7C3C680 8007D950 0780023C */  lui        $v0, %hi(D_8006C770)
/* 7C3C684 8007D954 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 7C3C688 8007D958 00000000 */  nop
/* 7C3C68C 8007D95C 3C004010 */  beqz       $v0, .Llevel_38_8007DA50
/* 7C3C690 8007D960 00000000 */   nop
/* 7C3C694 8007D964 9171010C */  jal        rand
/* 7C3C698 8007D968 21800000 */   addu      $s0, $zero, $zero
/* 7C3C69C 8007D96C FF005130 */  andi       $s1, $v0, 0xFF
/* 7C3C6A0 8007D970 5000B427 */  addiu      $s4, $sp, 0x50
/* 7C3C6A4 8007D974 0680033C */  lui        $v1, %hi(D_80065920)
/* 7C3C6A8 8007D978 20596324 */  addiu      $v1, $v1, %lo(D_80065920)
/* 7C3C6AC 8007D97C 40101100 */  sll        $v0, $s1, 1
/* 7C3C6B0 8007D980 21984300 */  addu       $s3, $v0, $v1
.Llevel_38_8007D984:
/* 7C3C6B4 8007D984 01000424 */  addiu      $a0, $zero, 0x1
/* 7C3C6B8 8007D988 14000524 */  addiu      $a1, $zero, 0x14
/* 7C3C6BC 8007D98C 00006386 */  lh         $v1, 0x0($s3)
/* 7C3C6C0 8007D990 2130A002 */  addu       $a2, $s5, $zero
/* 7C3C6C4 8007D994 40100300 */  sll        $v0, $v1, 1
/* 7C3C6C8 8007D998 21104300 */  addu       $v0, $v0, $v1
/* 7C3C6CC 8007D99C 03120200 */  sra        $v0, $v0, 8
/* 7C3C6D0 8007D9A0 5000A2AF */  sw         $v0, 0x50($sp)
/* 7C3C6D4 8007D9A4 40101100 */  sll        $v0, $s1, 1
/* 7C3C6D8 8007D9A8 0680013C */  lui        $at, %hi(D_800658A0)
/* 7C3C6DC 8007D9AC 21082200 */  addu       $at, $at, $v0
/* 7C3C6E0 8007D9B0 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 7C3C6E4 8007D9B4 21388002 */  addu       $a3, $s4, $zero
/* 7C3C6E8 8007D9B8 5800A0AF */  sw         $zero, 0x58($sp)
/* 7C3C6EC 8007D9BC 40100300 */  sll        $v0, $v1, 1
/* 7C3C6F0 8007D9C0 21104300 */  addu       $v0, $v0, $v1
/* 7C3C6F4 8007D9C4 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 7C3C6F8 8007D9C8 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 7C3C6FC 8007D9CC 03120200 */  sra        $v0, $v0, 8
/* 7C3C700 8007D9D0 09F86000 */  jalr       $v1
/* 7C3C704 8007D9D4 5400A2AF */   sw        $v0, 0x54($sp)
/* 7C3C708 8007D9D8 01000232 */  andi       $v0, $s0, 0x1
/* 7C3C70C 8007D9DC 0B004010 */  beqz       $v0, .Llevel_38_8007DA0C
/* 7C3C710 8007D9E0 21208002 */   addu      $a0, $s4, $zero
/* 7C3C714 8007D9E4 443C010C */  jal        func_8004F110
/* 7C3C718 8007D9E8 01000524 */   addiu     $a1, $zero, 0x1
/* 7C3C71C 8007D9EC 01000424 */  addiu      $a0, $zero, 0x1
/* 7C3C720 8007D9F0 14000524 */  addiu      $a1, $zero, 0x14
/* 7C3C724 8007D9F4 2130A002 */  addu       $a2, $s5, $zero
/* 7C3C728 8007D9F8 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7C3C72C 8007D9FC E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7C3C730 8007DA00 00000000 */  nop
/* 7C3C734 8007DA04 09F84000 */  jalr       $v0
/* 7C3C738 8007DA08 21388002 */   addu      $a3, $s4, $zero
.Llevel_38_8007DA0C:
/* 7C3C73C 8007DA0C 2E007326 */  addiu      $s3, $s3, 0x2E
/* 7C3C740 8007DA10 01001026 */  addiu      $s0, $s0, 0x1
/* 7C3C744 8007DA14 0B00022A */  slti       $v0, $s0, 0xB
/* 7C3C748 8007DA18 DAFF4014 */  bnez       $v0, .Llevel_38_8007D984
/* 7C3C74C 8007DA1C 17003126 */   addiu     $s1, $s1, 0x17
/* 7C3C750 8007DA20 21204002 */  addu       $a0, $s2, $zero
/* 7C3C754 8007DA24 4957010C */  jal        func_80055D24
/* 7C3C758 8007DA28 04000524 */   addiu     $a1, $zero, 0x4
/* 7C3C75C 8007DA2C 80EE000C */  jal        func_8003BA00
/* 7C3C760 8007DA30 21204002 */   addu      $a0, $s2, $zero
/* 7C3C764 8007DA34 21204002 */  addu       $a0, $s2, $zero
/* 7C3C768 8007DA38 6EDA000C */  jal        func_800369B8
/* 7C3C76C 8007DA3C 28000524 */   addiu     $a1, $zero, 0x28
/* 7C3C770 8007DA40 C656010C */  jal        func_80055B18
/* 7C3C774 8007DA44 21204002 */   addu      $a0, $s2, $zero
/* 7C3C778 8007DA48 95F60108 */  j          .Llevel_38_8007DA54
/* 7C3C77C 8007DA4C 00000000 */   nop
.Llevel_38_8007DA50:
/* 7C3C780 8007DA50 180040AE */  sw         $zero, 0x18($s2)
.Llevel_38_8007DA54:
/* 7C3C784 8007DA54 8800BF8F */  lw         $ra, 0x88($sp)
/* 7C3C788 8007DA58 8400B58F */  lw         $s5, 0x84($sp)
/* 7C3C78C 8007DA5C 8000B48F */  lw         $s4, 0x80($sp)
/* 7C3C790 8007DA60 7C00B38F */  lw         $s3, 0x7C($sp)
/* 7C3C794 8007DA64 7800B28F */  lw         $s2, 0x78($sp)
/* 7C3C798 8007DA68 7400B18F */  lw         $s1, 0x74($sp)
/* 7C3C79C 8007DA6C 7000B08F */  lw         $s0, 0x70($sp)
/* 7C3C7A0 8007DA70 9000BD27 */  addiu      $sp, $sp, 0x90
/* 7C3C7A4 8007DA74 0800E003 */  jr         $ra
/* 7C3C7A8 8007DA78 00000000 */   nop
.size func_level_38_8007D2B4, . - func_level_38_8007D2B4
