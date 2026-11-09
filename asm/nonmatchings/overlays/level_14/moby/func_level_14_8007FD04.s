.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_257_level_14
/* 47BF234 8007FD04 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 47BF238 8007FD08 3400B1AF */  sw         $s1, 0x34($sp)
/* 47BF23C 8007FD0C 21888000 */  addu       $s1, $a0, $zero
/* 47BF240 8007FD10 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 47BF244 8007FD14 03000324 */  addiu      $v1, $zero, 0x3
/* 47BF248 8007FD18 4000BFAF */  sw         $ra, 0x40($sp)
/* 47BF24C 8007FD1C 3800B2AF */  sw         $s2, 0x38($sp)
/* 47BF250 8007FD20 3000B0AF */  sw         $s0, 0x30($sp)
/* 47BF254 8007FD24 48002292 */  lbu        $v0, 0x48($s1)
/* 47BF258 8007FD28 0000328E */  lw         $s2, 0x0($s1)
/* 47BF25C 8007FD2C 2F004310 */  beq        $v0, $v1, .Llevel_14_8007FDEC
/* 47BF260 8007FD30 21980000 */   addu      $s3, $zero, $zero
/* 47BF264 8007FD34 1800228E */  lw         $v0, 0x18($s1)
/* 47BF268 8007FD38 1500033C */  lui        $v1, (0x150000 >> 16)
/* 47BF26C 8007FD3C 24104300 */  and        $v0, $v0, $v1
/* 47BF270 8007FD40 0F004014 */  bnez       $v0, .Llevel_14_8007FD80
/* 47BF274 8007FD44 00000000 */   nop
/* 47BF278 8007FD48 0000448E */  lw         $a0, 0x0($s2)
/* 47BF27C 8007FD4C 00000000 */  nop
/* 47BF280 8007FD50 26008010 */  beqz       $a0, .Llevel_14_8007FDEC
/* 47BF284 8007FD54 1600033C */   lui       $v1, (0x160000 >> 16)
/* 47BF288 8007FD58 1800828C */  lw         $v0, 0x18($a0)
/* 47BF28C 8007FD5C 00000000 */  nop
/* 47BF290 8007FD60 24104300 */  and        $v0, $v0, $v1
/* 47BF294 8007FD64 06004014 */  bnez       $v0, .Llevel_14_8007FD80
/* 47BF298 8007FD68 00000000 */   nop
/* 47BF29C 8007FD6C 48008290 */  lbu        $v0, 0x48($a0)
/* 47BF2A0 8007FD70 00000000 */  nop
/* 47BF2A4 8007FD74 80004230 */  andi       $v0, $v0, 0x80
/* 47BF2A8 8007FD78 1C004010 */  beqz       $v0, .Llevel_14_8007FDEC
/* 47BF2AC 8007FD7C 00000000 */   nop
.Llevel_14_8007FD80:
/* 47BF2B0 8007FD80 0000438E */  lw         $v1, 0x0($s2)
/* 47BF2B4 8007FD84 00000000 */  nop
/* 47BF2B8 8007FD88 0C006010 */  beqz       $v1, .Llevel_14_8007FDBC
/* 47BF2BC 8007FD8C 01000224 */   addiu     $v0, $zero, 0x1
/* 47BF2C0 8007FD90 480062A0 */  sb         $v0, 0x48($v1)
/* 47BF2C4 8007FD94 0000638C */  lw         $v1, 0x0($v1)
/* 47BF2C8 8007FD98 0000448E */  lw         $a0, 0x0($s2)
/* 47BF2CC 8007FD9C 20000224 */  addiu      $v0, $zero, 0x20
/* 47BF2D0 8007FDA0 4F0082A0 */  sb         $v0, 0x4F($a0)
/* 47BF2D4 8007FDA4 10000224 */  addiu      $v0, $zero, 0x10
/* 47BF2D8 8007FDA8 000060AC */  sw         $zero, 0x0($v1)
/* 47BF2DC 8007FDAC 040060AC */  sw         $zero, 0x4($v1)
/* 47BF2E0 8007FDB0 080060AC */  sw         $zero, 0x8($v1)
/* 47BF2E4 8007FDB4 0E0062A4 */  sh         $v0, 0xE($v1)
/* 47BF2E8 8007FDB8 000040AE */  sw         $zero, 0x0($s2)
.Llevel_14_8007FDBC:
/* 47BF2EC 8007FDBC 21202002 */  addu       $a0, $s1, $zero
/* 47BF2F0 8007FDC0 01000524 */  addiu      $a1, $zero, 0x1
/* 47BF2F4 8007FDC4 21300000 */  addu       $a2, $zero, $zero
/* 47BF2F8 8007FDC8 9ADA000C */  jal        func_80036A68
/* 47BF2FC 8007FDCC 21380000 */   addu      $a3, $zero, $zero
/* 47BF300 8007FDD0 21202002 */  addu       $a0, $s1, $zero
/* 47BF304 8007FDD4 04004526 */  addiu      $a1, $s2, 0x4
/* 47BF308 8007FDD8 01000624 */  addiu      $a2, $zero, 0x1
/* 47BF30C 8007FDDC C5E3000C */  jal        func_80038F14
/* 47BF310 8007FDE0 03000724 */   addiu     $a3, $zero, 0x3
/* 47BF314 8007FDE4 BC020224 */  addiu      $v0, $zero, 0x2BC
/* 47BF318 8007FDE8 0E0042A6 */  sh         $v0, 0xE($s2)
.Llevel_14_8007FDEC:
/* 47BF31C 8007FDEC 48003092 */  lbu        $s0, 0x48($s1)
/* 47BF320 8007FDF0 01000224 */  addiu      $v0, $zero, 0x1
/* 47BF324 8007FDF4 25000212 */  beq        $s0, $v0, .Llevel_14_8007FE8C
/* 47BF328 8007FDF8 0200022A */   slti      $v0, $s0, 0x2
/* 47BF32C 8007FDFC 05004010 */  beqz       $v0, .Llevel_14_8007FE14
/* 47BF330 8007FE00 00000000 */   nop
/* 47BF334 8007FE04 0A000012 */  beqz       $s0, .Llevel_14_8007FE30
/* 47BF338 8007FE08 00000000 */   nop
/* 47BF33C 8007FE0C 3B000208 */  j          .Llevel_14_800800EC
/* 47BF340 8007FE10 00000000 */   nop
.Llevel_14_8007FE14:
/* 47BF344 8007FE14 02000224 */  addiu      $v0, $zero, 0x2
/* 47BF348 8007FE18 5A000212 */  beq        $s0, $v0, .Llevel_14_8007FF84
/* 47BF34C 8007FE1C 03000224 */   addiu     $v0, $zero, 0x3
/* 47BF350 8007FE20 A2000212 */  beq        $s0, $v0, .Llevel_14_800800AC
/* 47BF354 8007FE24 21202002 */   addu      $a0, $s1, $zero
/* 47BF358 8007FE28 3B000208 */  j          .Llevel_14_800800EC
/* 47BF35C 8007FE2C 00000000 */   nop
.Llevel_14_8007FE30:
/* 47BF360 8007FE30 0000428E */  lw         $v0, 0x0($s2)
/* 47BF364 8007FE34 00000000 */  nop
/* 47BF368 8007FE38 05004014 */  bnez       $v0, .Llevel_14_8007FE50
/* 47BF36C 8007FE3C 02000224 */   addiu     $v0, $zero, 0x2
/* 47BF370 8007FE40 480022A2 */  sb         $v0, 0x48($s1)
/* 47BF374 8007FE44 21202002 */  addu       $a0, $s1, $zero
/* 47BF378 8007FE48 D0D3000C */  jal        func_80034F40
/* 47BF37C 8007FE4C 02000524 */   addiu     $a1, $zero, 0x2
.Llevel_14_8007FE50:
/* 47BF380 8007FE50 0780053C */  lui        $a1, %hi(D_80070328)
/* 47BF384 8007FE54 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 47BF388 8007FE58 CD3C010C */  jal        func_8004F334
/* 47BF38C 8007FE5C 0C002426 */   addiu     $a0, $s1, 0xC
/* 47BF390 8007FE60 1C00438E */  lw         $v1, 0x1C($s2)
/* 47BF394 8007FE64 00000000 */  nop
/* 47BF398 8007FE68 2A104300 */  slt        $v0, $v0, $v1
/* 47BF39C 8007FE6C 05004010 */  beqz       $v0, .Llevel_14_8007FE84
/* 47BF3A0 8007FE70 01000224 */   addiu     $v0, $zero, 0x1
/* 47BF3A4 8007FE74 480022A2 */  sb         $v0, 0x48($s1)
/* 47BF3A8 8007FE78 21202002 */  addu       $a0, $s1, $zero
/* 47BF3AC 8007FE7C D0D3000C */  jal        func_80034F40
/* 47BF3B0 8007FE80 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_14_8007FE84:
/* 47BF3B4 8007FE84 3B000208 */  j          .Llevel_14_800800EC
/* 47BF3B8 8007FE88 01001324 */   addiu     $s3, $zero, 0x1
.Llevel_14_8007FE8C:
/* 47BF3BC 8007FE8C 3C002292 */  lbu        $v0, 0x3C($s1)
/* 47BF3C0 8007FE90 00000000 */  nop
/* 47BF3C4 8007FE94 2E005014 */  bne        $v0, $s0, .Llevel_14_8007FF50
/* 47BF3C8 8007FE98 00000000 */   nop
/* 47BF3CC 8007FE9C A157010C */  jal        func_80055E84
/* 47BF3D0 8007FEA0 21202002 */   addu      $a0, $s1, $zero
/* 47BF3D4 8007FEA4 0D004228 */  slti       $v0, $v0, 0xD
/* 47BF3D8 8007FEA8 29004014 */  bnez       $v0, .Llevel_14_8007FF50
/* 47BF3DC 8007FEAC 00000000 */   nop
/* 47BF3E0 8007FEB0 0000508E */  lw         $s0, 0x0($s2)
/* 47BF3E4 8007FEB4 00000000 */  nop
/* 47BF3E8 8007FEB8 25000012 */  beqz       $s0, .Llevel_14_8007FF50
/* 47BF3EC 8007FEBC 00000000 */   nop
/* 47BF3F0 8007FEC0 49002292 */  lbu        $v0, 0x49($s1)
/* 47BF3F4 8007FEC4 00000000 */  nop
/* 47BF3F8 8007FEC8 22004014 */  bnez       $v0, .Llevel_14_8007FF54
/* 47BF3FC 8007FECC 21202002 */   addu      $a0, $s1, $zero
/* 47BF400 8007FED0 04000524 */  addiu      $a1, $zero, 0x4
/* 47BF404 8007FED4 0000108E */  lw         $s0, 0x0($s0)
/* 47BF408 8007FED8 02000224 */  addiu      $v0, $zero, 0x2
/* 47BF40C 8007FEDC 4957010C */  jal        func_80055D24
/* 47BF410 8007FEE0 490022A2 */   sb        $v0, 0x49($s1)
/* 47BF414 8007FEE4 20002426 */  addiu      $a0, $s1, 0x20
/* 47BF418 8007FEE8 1000A527 */  addiu      $a1, $sp, 0x10
/* 47BF41C 8007FEEC C8000224 */  addiu      $v0, $zero, 0xC8
/* 47BF420 8007FEF0 1000A2AF */  sw         $v0, 0x10($sp)
/* 47BF424 8007FEF4 1400A0AF */  sw         $zero, 0x14($sp)
/* 47BF428 8007FEF8 1800A0AF */  sw         $zero, 0x18($sp)
/* 47BF42C 8007FEFC 5B3B010C */  jal        func_8004ED6C
/* 47BF430 8007FF00 21300002 */   addu      $a2, $s0, $zero
/* 47BF434 8007FF04 12000224 */  addiu      $v0, $zero, 0x12
/* 47BF438 8007FF08 0E0002A6 */  sh         $v0, 0xE($s0)
/* 47BF43C 8007FF0C 0000438E */  lw         $v1, 0x0($s2)
/* 47BF440 8007FF10 01000224 */  addiu      $v0, $zero, 0x1
/* 47BF444 8007FF14 480062A0 */  sb         $v0, 0x48($v1)
/* 47BF448 8007FF18 0000438E */  lw         $v1, 0x0($s2)
/* 47BF44C 8007FF1C 40000224 */  addiu      $v0, $zero, 0x40
/* 47BF450 8007FF20 440062A0 */  sb         $v0, 0x44($v1)
/* 47BF454 8007FF24 46002292 */  lbu        $v0, 0x46($s1)
/* 47BF458 8007FF28 0000438E */  lw         $v1, 0x0($s2)
/* 47BF45C 8007FF2C 80004224 */  addiu      $v0, $v0, 0x80
/* 47BF460 8007FF30 460062A0 */  sb         $v0, 0x46($v1)
/* 47BF464 8007FF34 0000428E */  lw         $v0, 0x0($s2)
/* 47BF468 8007FF38 00000000 */  nop
/* 47BF46C 8007FF3C 0000438C */  lw         $v1, 0x0($v0)
/* 47BF470 8007FF40 2C010224 */  addiu      $v0, $zero, 0x12C
/* 47BF474 8007FF44 0C0062A4 */  sh         $v0, 0xC($v1)
/* 47BF478 8007FF48 D5FF0108 */  j          .Llevel_14_8007FF54
/* 47BF47C 8007FF4C 000040AE */   sw        $zero, 0x0($s2)
.Llevel_14_8007FF50:
/* 47BF480 8007FF50 01001324 */  addiu      $s3, $zero, 0x1
.Llevel_14_8007FF54:
/* 47BF484 8007FF54 0780023C */  lui        $v0, %hi(D_8006C770)
/* 47BF488 8007FF58 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 47BF48C 8007FF5C 00000000 */  nop
/* 47BF490 8007FF60 62004010 */  beqz       $v0, .Llevel_14_800800EC
/* 47BF494 8007FF64 21202002 */   addu      $a0, $s1, $zero
/* 47BF498 8007FF68 02000524 */  addiu      $a1, $zero, 0x2
/* 47BF49C 8007FF6C 02000224 */  addiu      $v0, $zero, 0x2
/* 47BF4A0 8007FF70 490020A2 */  sb         $zero, 0x49($s1)
/* 47BF4A4 8007FF74 D0D3000C */  jal        func_80034F40
/* 47BF4A8 8007FF78 480022A2 */   sb        $v0, 0x48($s1)
/* 47BF4AC 8007FF7C 3B000208 */  j          .Llevel_14_800800EC
/* 47BF4B0 8007FF80 00000000 */   nop
.Llevel_14_8007FF84:
/* 47BF4B4 8007FF84 A157010C */  jal        func_80055E84
/* 47BF4B8 8007FF88 21202002 */   addu      $a0, $s1, $zero
/* 47BF4BC 8007FF8C 01001324 */  addiu      $s3, $zero, 0x1
/* 47BF4C0 8007FF90 3C002392 */  lbu        $v1, 0x3C($s1)
/* 47BF4C4 8007FF94 00000000 */  nop
/* 47BF4C8 8007FF98 39007014 */  bne        $v1, $s0, .Llevel_14_80080080
/* 47BF4CC 8007FF9C 21204000 */   addu      $a0, $v0, $zero
/* 47BF4D0 8007FFA0 22008228 */  slti       $v0, $a0, 0x22
/* 47BF4D4 8007FFA4 07004010 */  beqz       $v0, .Llevel_14_8007FFC4
/* 47BF4D8 8007FFA8 00000000 */   nop
/* 47BF4DC 8007FFAC 0000438E */  lw         $v1, 0x0($s2)
/* 47BF4E0 8007FFB0 00000000 */  nop
/* 47BF4E4 8007FFB4 03006010 */  beqz       $v1, .Llevel_14_8007FFC4
/* 47BF4E8 8007FFB8 46000224 */   addiu     $v0, $zero, 0x46
/* 47BF4EC 8007FFBC 20000208 */  j          .Llevel_14_80080080
/* 47BF4F0 8007FFC0 4F0062A0 */   sb        $v0, 0x4F($v1)
.Llevel_14_8007FFC4:
/* 47BF4F4 8007FFC4 2E008228 */  slti       $v0, $a0, 0x2E
/* 47BF4F8 8007FFC8 07004014 */  bnez       $v0, .Llevel_14_8007FFE8
/* 47BF4FC 8007FFCC 00000000 */   nop
/* 47BF500 8007FFD0 0000438E */  lw         $v1, 0x0($s2)
/* 47BF504 8007FFD4 00000000 */  nop
/* 47BF508 8007FFD8 03006010 */  beqz       $v1, .Llevel_14_8007FFE8
/* 47BF50C 8007FFDC 1A000224 */   addiu     $v0, $zero, 0x1A
/* 47BF510 8007FFE0 20000208 */  j          .Llevel_14_80080080
/* 47BF514 8007FFE4 4F0062A0 */   sb        $v0, 0x4F($v1)
.Llevel_14_8007FFE8:
/* 47BF518 8007FFE8 22008228 */  slti       $v0, $a0, 0x22
/* 47BF51C 8007FFEC 0B004014 */  bnez       $v0, .Llevel_14_8008001C
/* 47BF520 8007FFF0 00000000 */   nop
/* 47BF524 8007FFF4 0000458E */  lw         $a1, 0x0($s2)
/* 47BF528 8007FFF8 00000000 */  nop
/* 47BF52C 8007FFFC 0700A010 */  beqz       $a1, .Llevel_14_8008001C
/* 47BF530 80080000 2D000324 */   addiu     $v1, $zero, 0x2D
/* 47BF534 80080004 23186400 */  subu       $v1, $v1, $a0
/* 47BF538 80080008 40100300 */  sll        $v0, $v1, 1
/* 47BF53C 8008000C 21104300 */  addu       $v0, $v0, $v1
/* 47BF540 80080010 1A004224 */  addiu      $v0, $v0, 0x1A
/* 47BF544 80080014 20000208 */  j          .Llevel_14_80080080
/* 47BF548 80080018 4F00A2A0 */   sb        $v0, 0x4F($a1)
.Llevel_14_8008001C:
/* 47BF54C 8008001C 1E008228 */  slti       $v0, $a0, 0x1E
/* 47BF550 80080020 17004014 */  bnez       $v0, .Llevel_14_80080080
/* 47BF554 80080024 00000000 */   nop
/* 47BF558 80080028 49002292 */  lbu        $v0, 0x49($s1)
/* 47BF55C 8008002C 00000000 */  nop
/* 47BF560 80080030 13004014 */  bnez       $v0, .Llevel_14_80080080
/* 47BF564 80080034 66010424 */   addiu     $a0, $zero, 0x166
/* 47BF568 80080038 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 47BF56C 8008003C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 47BF570 80080040 00000000 */  nop
/* 47BF574 80080044 09F84000 */  jalr       $v0
/* 47BF578 80080048 21282002 */   addu      $a1, $s1, $zero
/* 47BF57C 8008004C 21184000 */  addu       $v1, $v0, $zero
/* 47BF580 80080050 0B006010 */  beqz       $v1, .Llevel_14_80080080
/* 47BF584 80080054 20000224 */   addiu     $v0, $zero, 0x20
/* 47BF588 80080058 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 47BF58C 8008005C 10000224 */  addiu      $v0, $zero, 0x10
/* 47BF590 80080060 4E0062A0 */  sb         $v0, 0x4E($v1)
/* 47BF594 80080064 50000224 */  addiu      $v0, $zero, 0x50
/* 47BF598 80080068 4F0062A0 */  sb         $v0, 0x4F($v1)
/* 47BF59C 8008006C 2F000224 */  addiu      $v0, $zero, 0x2F
/* 47BF5A0 80080070 570062A0 */  sb         $v0, 0x57($v1)
/* 47BF5A4 80080074 01000224 */  addiu      $v0, $zero, 0x1
/* 47BF5A8 80080078 000043AE */  sw         $v1, 0x0($s2)
/* 47BF5AC 8008007C 490022A2 */  sb         $v0, 0x49($s1)
.Llevel_14_80080080:
/* 47BF5B0 80080080 0780023C */  lui        $v0, %hi(D_8006C770)
/* 47BF5B4 80080084 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 47BF5B8 80080088 00000000 */  nop
/* 47BF5BC 8008008C 17004010 */  beqz       $v0, .Llevel_14_800800EC
/* 47BF5C0 80080090 21202002 */   addu      $a0, $s1, $zero
/* 47BF5C4 80080094 21280000 */  addu       $a1, $zero, $zero
/* 47BF5C8 80080098 490020A2 */  sb         $zero, 0x49($s1)
/* 47BF5CC 8008009C D0D3000C */  jal        func_80034F40
/* 47BF5D0 800800A0 480020A2 */   sb        $zero, 0x48($s1)
/* 47BF5D4 800800A4 3B000208 */  j          .Llevel_14_800800EC
/* 47BF5D8 800800A8 00000000 */   nop
.Llevel_14_800800AC:
/* 47BF5DC 800800AC 65D4000C */  jal        func_80035194
/* 47BF5E0 800800B0 04004526 */   addiu     $a1, $s2, 0x4
/* 47BF5E4 800800B4 00010324 */  addiu      $v1, $zero, 0x100
/* 47BF5E8 800800B8 0C004314 */  bne        $v0, $v1, .Llevel_14_800800EC
/* 47BF5EC 800800BC 21202002 */   addu      $a0, $s1, $zero
/* 47BF5F0 800800C0 4957010C */  jal        func_80055D24
/* 47BF5F4 800800C4 04000524 */   addiu     $a1, $zero, 0x4
/* 47BF5F8 800800C8 80EE000C */  jal        func_8003BA00
/* 47BF5FC 800800CC 21202002 */   addu      $a0, $s1, $zero
/* 47BF600 800800D0 21202002 */  addu       $a0, $s1, $zero
/* 47BF604 800800D4 6EDA000C */  jal        func_800369B8
/* 47BF608 800800D8 40000524 */   addiu     $a1, $zero, 0x40
/* 47BF60C 800800DC C656010C */  jal        func_80055B18
/* 47BF610 800800E0 21202002 */   addu      $a0, $s1, $zero
/* 47BF614 800800E4 6D000208 */  j          .Llevel_14_800801B4
/* 47BF618 800800E8 00000000 */   nop
.Llevel_14_800800EC:
/* 47BF61C 800800EC 31006012 */  beqz       $s3, .Llevel_14_800801B4
/* 47BF620 800800F0 00000000 */   nop
/* 47BF624 800800F4 0000528E */  lw         $s2, 0x0($s2)
/* 47BF628 800800F8 00000000 */  nop
/* 47BF62C 800800FC 2D004012 */  beqz       $s2, .Llevel_14_800801B4
/* 47BF630 80080100 21202002 */   addu      $a0, $s1, $zero
/* 47BF634 80080104 4957010C */  jal        func_80055D24
/* 47BF638 80080108 05000524 */   addiu     $a1, $zero, 0x5
/* 47BF63C 8008010C 21202002 */  addu       $a0, $s1, $zero
/* 47BF640 80080110 21280000 */  addu       $a1, $zero, $zero
/* 47BF644 80080114 0C005026 */  addiu      $s0, $s2, 0xC
/* 47BF648 80080118 C557010C */  jal        func_80055F14
/* 47BF64C 8008011C 21300002 */   addu      $a2, $s0, $zero
/* 47BF650 80080120 21202002 */  addu       $a0, $s1, $zero
/* 47BF654 80080124 01000524 */  addiu      $a1, $zero, 0x1
/* 47BF658 80080128 C557010C */  jal        func_80055F14
/* 47BF65C 8008012C 1000A627 */   addiu     $a2, $sp, 0x10
/* 47BF660 80080130 1000A427 */  addiu      $a0, $sp, 0x10
/* 47BF664 80080134 1800A28F */  lw         $v0, 0x18($sp)
/* 47BF668 80080138 1400438E */  lw         $v1, 0x14($s2)
/* 47BF66C 8008013C 21280002 */  addu       $a1, $s0, $zero
/* 47BF670 80080140 23104300 */  subu       $v0, $v0, $v1
/* 47BF674 80080144 CD3C010C */  jal        func_8004F334
/* 47BF678 80080148 2800A2AF */   sw        $v0, 0x28($sp)
/* 47BF67C 8008014C 21204000 */  addu       $a0, $v0, $zero
/* 47BF680 80080150 2800A58F */  lw         $a1, 0x28($sp)
/* 47BF684 80080154 21300000 */  addu       $a2, $zero, $zero
/* 47BF688 80080158 203A010C */  jal        func_8004E880
/* 47BF68C 8008015C 2000A4AF */   sw        $a0, 0x20($sp)
/* 47BF690 80080160 40004224 */  addiu      $v0, $v0, 0x40
/* 47BF694 80080164 440042A2 */  sb         $v0, 0x44($s2)
/* 47BF698 80080168 1000A48F */  lw         $a0, 0x10($sp)
/* 47BF69C 8008016C 0C00428E */  lw         $v0, 0xC($s2)
/* 47BF6A0 80080170 1400A58F */  lw         $a1, 0x14($sp)
/* 47BF6A4 80080174 23208200 */  subu       $a0, $a0, $v0
/* 47BF6A8 80080178 2000A4AF */  sw         $a0, 0x20($sp)
/* 47BF6AC 8008017C 1000428E */  lw         $v0, 0x10($s2)
/* 47BF6B0 80080180 21300000 */  addu       $a2, $zero, $zero
/* 47BF6B4 80080184 2328A200 */  subu       $a1, $a1, $v0
/* 47BF6B8 80080188 203A010C */  jal        func_8004E880
/* 47BF6BC 8008018C 2400A5AF */   sw        $a1, 0x24($sp)
/* 47BF6C0 80080190 21200002 */  addu       $a0, $s0, $zero
/* 47BF6C4 80080194 1000A527 */  addiu      $a1, $sp, 0x10
/* 47BF6C8 80080198 21300002 */  addu       $a2, $s0, $zero
/* 47BF6CC 8008019C 40004224 */  addiu      $v0, $v0, 0x40
/* 47BF6D0 800801A0 653C010C */  jal        func_8004F194
/* 47BF6D4 800801A4 460042A2 */   sb        $v0, 0x46($s2)
/* 47BF6D8 800801A8 21200002 */  addu       $a0, $s0, $zero
/* 47BF6DC 800801AC 443C010C */  jal        func_8004F110
/* 47BF6E0 800801B0 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_14_800801B4:
/* 47BF6E4 800801B4 4000BF8F */  lw         $ra, 0x40($sp)
/* 47BF6E8 800801B8 3C00B38F */  lw         $s3, 0x3C($sp)
/* 47BF6EC 800801BC 3800B28F */  lw         $s2, 0x38($sp)
/* 47BF6F0 800801C0 3400B18F */  lw         $s1, 0x34($sp)
/* 47BF6F4 800801C4 3000B08F */  lw         $s0, 0x30($sp)
/* 47BF6F8 800801C8 4800BD27 */  addiu      $sp, $sp, 0x48
/* 47BF6FC 800801CC 0800E003 */  jr         $ra
/* 47BF700 800801D0 00000000 */   nop
.size MobyUpdate_257_level_14, . - MobyUpdate_257_level_14
