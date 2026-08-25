.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_14_8007AD84
/* 47BA2B4 8007AD84 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 47BA2B8 8007AD88 5800B4AF */  sw         $s4, 0x58($sp)
/* 47BA2BC 8007AD8C 21A08000 */  addu       $s4, $a0, $zero
/* 47BA2C0 8007AD90 6000BFAF */  sw         $ra, 0x60($sp)
/* 47BA2C4 8007AD94 5C00B5AF */  sw         $s5, 0x5C($sp)
/* 47BA2C8 8007AD98 5400B3AF */  sw         $s3, 0x54($sp)
/* 47BA2CC 8007AD9C 5000B2AF */  sw         $s2, 0x50($sp)
/* 47BA2D0 8007ADA0 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 47BA2D4 8007ADA4 4800B0AF */  sw         $s0, 0x48($sp)
/* 47BA2D8 8007ADA8 48009092 */  lbu        $s0, 0x48($s4)
/* 47BA2DC 8007ADAC 0000928E */  lw         $s2, 0x0($s4)
/* 47BA2E0 8007ADB0 05000012 */  beqz       $s0, .Llevel_14_8007ADC8
/* 47BA2E4 8007ADB4 01000224 */   addiu     $v0, $zero, 0x1
/* 47BA2E8 8007ADB8 51000212 */  beq        $s0, $v0, .Llevel_14_8007AF00
/* 47BA2EC 8007ADBC 00000000 */   nop
/* 47BA2F0 8007ADC0 65EC0108 */  j          .Llevel_14_8007B194
/* 47BA2F4 8007ADC4 00000000 */   nop
.Llevel_14_8007ADC8:
/* 47BA2F8 8007ADC8 2400428E */  lw         $v0, 0x24($s2)
/* 47BA2FC 8007ADCC 00000000 */  nop
/* 47BA300 8007ADD0 1D004010 */  beqz       $v0, .Llevel_14_8007AE48
/* 47BA304 8007ADD4 00000000 */   nop
/* 47BA308 8007ADD8 0780023C */  lui        $v0, %hi(D_8006C640)
/* 47BA30C 8007ADDC 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 47BA310 8007ADE0 00000000 */  nop
/* 47BA314 8007ADE4 18004014 */  bnez       $v0, .Llevel_14_8007AE48
/* 47BA318 8007ADE8 00000000 */   nop
/* 47BA31C 8007ADEC 0780023C */  lui        $v0, %hi(D_8006C7B4)
/* 47BA320 8007ADF0 B4C74290 */  lbu        $v0, %lo(D_8006C7B4)($v0)
/* 47BA324 8007ADF4 00000000 */  nop
/* 47BA328 8007ADF8 01004230 */  andi       $v0, $v0, 0x1
/* 47BA32C 8007ADFC 0A004014 */  bnez       $v0, .Llevel_14_8007AE28
/* 47BA330 8007AE00 48008426 */   addiu     $a0, $s4, 0x48
/* 47BA334 8007AE04 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 47BA338 8007AE08 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 47BA33C 8007AE0C 0780013C */  lui        $at, %hi(D_80070300)
/* 47BA340 8007AE10 21082200 */  addu       $at, $at, $v0
/* 47BA344 8007AE14 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 47BA348 8007AE18 00000000 */  nop
/* 47BA34C 8007AE1C 01004230 */  andi       $v0, $v0, 0x1
/* 47BA350 8007AE20 09004010 */  beqz       $v0, .Llevel_14_8007AE48
/* 47BA354 8007AE24 00000000 */   nop
.Llevel_14_8007AE28:
/* 47BA358 8007AE28 01000524 */  addiu      $a1, $zero, 0x1
/* 47BA35C 8007AE2C 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 47BA360 8007AE30 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 47BA364 8007AE34 FF000224 */  addiu      $v0, $zero, 0xFF
/* 47BA368 8007AE38 4A0082A2 */  sb         $v0, 0x4A($s4)
/* 47BA36C 8007AE3C 01000224 */  addiu      $v0, $zero, 0x1
/* 47BA370 8007AE40 EDED000C */  jal        func_8003B7B4
/* 47BA374 8007AE44 480082A2 */   sb        $v0, 0x48($s4)
.Llevel_14_8007AE48:
/* 47BA378 8007AE48 0000428E */  lw         $v0, 0x0($s2)
/* 47BA37C 8007AE4C 0780033C */  lui        $v1, %hi(D_8006D048 + 0x14)
/* 47BA380 8007AE50 5CD0638C */  lw         $v1, %lo(D_8006D048 + 0x14)($v1)
/* 47BA384 8007AE54 80100200 */  sll        $v0, $v0, 2
/* 47BA388 8007AE58 21104300 */  addu       $v0, $v0, $v1
/* 47BA38C 8007AE5C 0780033C */  lui        $v1, %hi(D_8006C640)
/* 47BA390 8007AE60 40C6638C */  lw         $v1, %lo(D_8006C640)($v1)
/* 47BA394 8007AE64 0000448C */  lw         $a0, 0x0($v0)
/* 47BA398 8007AE68 02006014 */  bnez       $v1, .Llevel_14_8007AE74
/* 47BA39C 8007AE6C 00000000 */   nop
/* 47BA3A0 8007AE70 040080AC */  sw         $zero, 0x4($a0)
.Llevel_14_8007AE74:
/* 47BA3A4 8007AE74 0400828C */  lw         $v0, 0x4($a0)
/* 47BA3A8 8007AE78 0800438E */  lw         $v1, 0x8($s2)
/* 47BA3AC 8007AE7C 00000000 */  nop
/* 47BA3B0 8007AE80 24104300 */  and        $v0, $v0, $v1
/* 47BA3B4 8007AE84 C3004010 */  beqz       $v0, .Llevel_14_8007B194
/* 47BA3B8 8007AE88 01000224 */   addiu     $v0, $zero, 0x1
/* 47BA3BC 8007AE8C 040080AC */  sw         $zero, 0x4($a0)
/* 47BA3C0 8007AE90 480082A2 */  sb         $v0, 0x48($s4)
/* 47BA3C4 8007AE94 0780043C */  lui        $a0, %hi(D_8006C5BC)
/* 47BA3C8 8007AE98 BCC5848C */  lw         $a0, %lo(D_8006C5BC)($a0)
/* 47BA3CC 8007AE9C 15000224 */  addiu      $v0, $zero, 0x15
/* 47BA3D0 8007AEA0 06008214 */  bne        $a0, $v0, .Llevel_14_8007AEBC
/* 47BA3D4 8007AEA4 1A000224 */   addiu     $v0, $zero, 0x1A
/* 47BA3D8 8007AEA8 0780033C */  lui        $v1, %hi(D_8006C5C8)
/* 47BA3DC 8007AEAC C8C5638C */  lw         $v1, %lo(D_8006C5C8)($v1)
/* 47BA3E0 8007AEB0 01000224 */  addiu      $v0, $zero, 0x1
/* 47BA3E4 8007AEB4 03006210 */  beq        $v1, $v0, .Llevel_14_8007AEC4
/* 47BA3E8 8007AEB8 1A000224 */   addiu     $v0, $zero, 0x1A
.Llevel_14_8007AEBC:
/* 47BA3EC 8007AEBC 09008214 */  bne        $a0, $v0, .Llevel_14_8007AEE4
/* 47BA3F0 8007AEC0 00000000 */   nop
.Llevel_14_8007AEC4:
/* 47BA3F4 8007AEC4 48009026 */  addiu      $s0, $s4, 0x48
/* 47BA3F8 8007AEC8 21200002 */  addu       $a0, $s0, $zero
/* 47BA3FC 8007AECC 0780063C */  lui        $a2, %hi(D_8006D088)
/* 47BA400 8007AED0 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 47BA404 8007AED4 EDED000C */  jal        func_8003B7B4
/* 47BA408 8007AED8 01000524 */   addiu     $a1, $zero, 0x1
/* 47BA40C 8007AEDC BAEB0108 */  j          .Llevel_14_8007AEE8
/* 47BA410 8007AEE0 21200002 */   addu      $a0, $s0, $zero
.Llevel_14_8007AEE4:
/* 47BA414 8007AEE4 48008426 */  addiu      $a0, $s4, 0x48
.Llevel_14_8007AEE8:
/* 47BA418 8007AEE8 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 47BA41C 8007AEEC F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 47BA420 8007AEF0 EDED000C */  jal        func_8003B7B4
/* 47BA424 8007AEF4 01000524 */   addiu     $a1, $zero, 0x1
/* 47BA428 8007AEF8 65EC0108 */  j          .Llevel_14_8007B194
/* 47BA42C 8007AEFC 00000000 */   nop
.Llevel_14_8007AF00:
/* 47BA430 8007AF00 0780023C */  lui        $v0, %hi(D_8006C640)
/* 47BA434 8007AF04 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 47BA438 8007AF08 00000000 */  nop
/* 47BA43C 8007AF0C 05004228 */  slti       $v0, $v0, 0x5
/* 47BA440 8007AF10 9A004014 */  bnez       $v0, .Llevel_14_8007B17C
/* 47BA444 8007AF14 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 47BA448 8007AF18 2000458E */  lw         $a1, 0x20($s2)
/* 47BA44C 8007AF1C 00000000 */  nop
/* 47BA450 8007AF20 0300A210 */  beq        $a1, $v0, .Llevel_14_8007AF30
/* 47BA454 8007AF24 21208002 */   addu      $a0, $s4, $zero
/* 47BA458 8007AF28 C4EE000C */  jal        func_8003BB10
/* 47BA45C 8007AF2C 21300000 */   addu      $a2, $zero, $zero
.Llevel_14_8007AF30:
/* 47BA460 8007AF30 1000438E */  lw         $v1, 0x10($s2)
/* 47BA464 8007AF34 00000000 */  nop
/* 47BA468 8007AF38 0F006014 */  bnez       $v1, .Llevel_14_8007AF78
/* 47BA46C 8007AF3C 00000000 */   nop
/* 47BA470 8007AF40 0C004586 */  lh         $a1, 0xC($s2)
/* 47BA474 8007AF44 00000000 */  nop
/* 47BA478 8007AF48 8C00A004 */  bltz       $a1, .Llevel_14_8007B17C
/* 47BA47C 8007AF4C 00020224 */   addiu     $v0, $zero, 0x200
/* 47BA480 8007AF50 0E004486 */  lh         $a0, 0xE($s2)
/* 47BA484 8007AF54 1400A2AF */  sw         $v0, 0x14($sp)
/* 47BA488 8007AF58 0780023C */  lui        $v0, %hi(SpawnFragments)
/* 47BA48C 8007AF5C 5C43428C */  lw         $v0, %lo(SpawnFragments)($v0)
/* 47BA490 8007AF60 1000A0AF */  sw         $zero, 0x10($sp)
/* 47BA494 8007AF64 1400478E */  lw         $a3, 0x14($s2)
/* 47BA498 8007AF68 09F84000 */  jalr       $v0
/* 47BA49C 8007AF6C 21308002 */   addu      $a2, $s4, $zero
/* 47BA4A0 8007AF70 5FEC0108 */  j          .Llevel_14_8007B17C
/* 47BA4A4 8007AF74 00000000 */   nop
.Llevel_14_8007AF78:
/* 47BA4A8 8007AF78 2C007014 */  bne        $v1, $s0, .Llevel_14_8007B02C
/* 47BA4AC 8007AF7C 02000224 */   addiu     $v0, $zero, 0x2
/* 47BA4B0 8007AF80 0C004286 */  lh         $v0, 0xC($s2)
/* 47BA4B4 8007AF84 00000000 */  nop
/* 47BA4B8 8007AF88 7C004004 */  bltz       $v0, .Llevel_14_8007B17C
/* 47BA4BC 8007AF8C 00000000 */   nop
/* 47BA4C0 8007AF90 0E004286 */  lh         $v0, 0xE($s2)
/* 47BA4C4 8007AF94 00000000 */  nop
/* 47BA4C8 8007AF98 78004018 */  blez       $v0, .Llevel_14_8007B17C
/* 47BA4CC 8007AF9C 00000000 */   nop
/* 47BA4D0 8007AFA0 21208002 */  addu       $a0, $s4, $zero
/* 47BA4D4 8007AFA4 4957010C */  jal        func_80055D24
/* 47BA4D8 8007AFA8 04000524 */   addiu     $a1, $zero, 0x4
/* 47BA4DC 8007AFAC 0E004286 */  lh         $v0, 0xE($s2)
/* 47BA4E0 8007AFB0 00000000 */  nop
/* 47BA4E4 8007AFB4 71004018 */  blez       $v0, .Llevel_14_8007B17C
/* 47BA4E8 8007AFB8 21880000 */   addu      $s1, $zero, $zero
/* 47BA4EC 8007AFBC 21980000 */  addu       $s3, $zero, $zero
.Llevel_14_8007AFC0:
/* 47BA4F0 8007AFC0 0C004486 */  lh         $a0, 0xC($s2)
/* 47BA4F4 8007AFC4 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 47BA4F8 8007AFC8 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 47BA4FC 8007AFCC 00000000 */  nop
/* 47BA500 8007AFD0 09F84000 */  jalr       $v0
/* 47BA504 8007AFD4 21288002 */   addu      $a1, $s4, $zero
/* 47BA508 8007AFD8 21804000 */  addu       $s0, $v0, $zero
/* 47BA50C 8007AFDC 0C000012 */  beqz       $s0, .Llevel_14_8007B010
/* 47BA510 8007AFE0 1800A427 */   addiu     $a0, $sp, 0x18
/* 47BA514 8007AFE4 1400458E */  lw         $a1, 0x14($s2)
/* 47BA518 8007AFE8 5E3C010C */  jal        func_8004F178
/* 47BA51C 8007AFEC 2128B300 */   addu      $a1, $a1, $s3
/* 47BA520 8007AFF0 20008426 */  addiu      $a0, $s4, 0x20
/* 47BA524 8007AFF4 1800A527 */  addiu      $a1, $sp, 0x18
/* 47BA528 8007AFF8 5B3B010C */  jal        func_8004ED6C
/* 47BA52C 8007AFFC 2130A000 */   addu      $a2, $a1, $zero
/* 47BA530 8007B000 0C000426 */  addiu      $a0, $s0, 0xC
/* 47BA534 8007B004 21288000 */  addu       $a1, $a0, $zero
/* 47BA538 8007B008 653C010C */  jal        func_8004F194
/* 47BA53C 8007B00C 1800A627 */   addiu     $a2, $sp, 0x18
.Llevel_14_8007B010:
/* 47BA540 8007B010 0E004286 */  lh         $v0, 0xE($s2)
/* 47BA544 8007B014 01003126 */  addiu      $s1, $s1, 0x1
/* 47BA548 8007B018 2A102202 */  slt        $v0, $s1, $v0
/* 47BA54C 8007B01C E8FF4014 */  bnez       $v0, .Llevel_14_8007AFC0
/* 47BA550 8007B020 0C007326 */   addiu     $s3, $s3, 0xC
/* 47BA554 8007B024 5FEC0108 */  j          .Llevel_14_8007B17C
/* 47BA558 8007B028 00000000 */   nop
.Llevel_14_8007B02C:
/* 47BA55C 8007B02C 53006214 */  bne        $v1, $v0, .Llevel_14_8007B17C
/* 47BA560 8007B030 00000000 */   nop
/* 47BA564 8007B034 0C004286 */  lh         $v0, 0xC($s2)
/* 47BA568 8007B038 00000000 */  nop
/* 47BA56C 8007B03C 4F004004 */  bltz       $v0, .Llevel_14_8007B17C
/* 47BA570 8007B040 00000000 */   nop
/* 47BA574 8007B044 1C00428E */  lw         $v0, 0x1C($s2)
/* 47BA578 8007B048 00000000 */  nop
/* 47BA57C 8007B04C 4B004010 */  beqz       $v0, .Llevel_14_8007B17C
/* 47BA580 8007B050 00000000 */   nop
/* 47BA584 8007B054 00004284 */  lh         $v0, 0x0($v0)
/* 47BA588 8007B058 00000000 */  nop
/* 47BA58C 8007B05C 47004018 */  blez       $v0, .Llevel_14_8007B17C
/* 47BA590 8007B060 21980000 */   addu      $s3, $zero, $zero
/* 47BA594 8007B064 2800B527 */  addiu      $s5, $sp, 0x28
.Llevel_14_8007B068:
/* 47BA598 8007B068 0C004486 */  lh         $a0, 0xC($s2)
/* 47BA59C 8007B06C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 47BA5A0 8007B070 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 47BA5A4 8007B074 00000000 */  nop
/* 47BA5A8 8007B078 09F84000 */  jalr       $v0
/* 47BA5AC 8007B07C 21288002 */   addu      $a1, $s4, $zero
/* 47BA5B0 8007B080 21804000 */  addu       $s0, $v0, $zero
/* 47BA5B4 8007B084 36000012 */  beqz       $s0, .Llevel_14_8007B160
/* 47BA5B8 8007B088 0C001126 */   addiu     $s1, $s0, 0xC
/* 47BA5BC 8007B08C 21202002 */  addu       $a0, $s1, $zero
/* 47BA5C0 8007B090 1C00428E */  lw         $v0, 0x1C($s2)
/* 47BA5C4 8007B094 00291300 */  sll        $a1, $s3, 4
/* 47BA5C8 8007B098 0C00428C */  lw         $v0, 0xC($v0)
/* 47BA5CC 8007B09C 0000108E */  lw         $s0, 0x0($s0)
/* 47BA5D0 8007B0A0 5E3C010C */  jal        func_8004F178
/* 47BA5D4 8007B0A4 21284500 */   addu      $a1, $v0, $a1
/* 47BA5D8 8007B0A8 2120A002 */  addu       $a0, $s5, $zero
/* 47BA5DC 8007B0AC 21282002 */  addu       $a1, $s1, $zero
/* 47BA5E0 8007B0B0 723C010C */  jal        func_8004F1C8
/* 47BA5E4 8007B0B4 0C008626 */   addiu     $a2, $s4, 0xC
/* 47BA5E8 8007B0B8 2120A002 */  addu       $a0, $s5, $zero
/* 47BA5EC 8007B0BC 7A3B010C */  jal        func_8004EDE8
/* 47BA5F0 8007B0C0 01000524 */   addiu     $a1, $zero, 0x1
/* 47BA5F4 8007B0C4 2120A002 */  addu       $a0, $s5, $zero
/* 47BA5F8 8007B0C8 21284000 */  addu       $a1, $v0, $zero
/* 47BA5FC 8007B0CC 233C010C */  jal        func_8004F08C
/* 47BA600 8007B0D0 5A000624 */   addiu     $a2, $zero, 0x5A
/* 47BA604 8007B0D4 46008292 */  lbu        $v0, 0x46($s4)
/* 47BA608 8007B0D8 00000000 */  nop
/* 47BA60C 8007B0DC 40100200 */  sll        $v0, $v0, 1
/* 47BA610 8007B0E0 0680013C */  lui        $at, %hi(D_80065920)
/* 47BA614 8007B0E4 21082200 */  addu       $at, $at, $v0
/* 47BA618 8007B0E8 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 47BA61C 8007B0EC 00000000 */  nop
/* 47BA620 8007B0F0 00110300 */  sll        $v0, $v1, 4
/* 47BA624 8007B0F4 23104300 */  subu       $v0, $v0, $v1
/* 47BA628 8007B0F8 00000396 */  lhu        $v1, 0x0($s0)
/* 47BA62C 8007B0FC 43120200 */  sra        $v0, $v0, 9
/* 47BA630 8007B100 21186200 */  addu       $v1, $v1, $v0
/* 47BA634 8007B104 000003A6 */  sh         $v1, 0x0($s0)
/* 47BA638 8007B108 46008292 */  lbu        $v0, 0x46($s4)
/* 47BA63C 8007B10C 00000000 */  nop
/* 47BA640 8007B110 40100200 */  sll        $v0, $v0, 1
/* 47BA644 8007B114 0680013C */  lui        $at, %hi(D_800658A0)
/* 47BA648 8007B118 21082200 */  addu       $at, $at, $v0
/* 47BA64C 8007B11C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 47BA650 8007B120 00000000 */  nop
/* 47BA654 8007B124 00110300 */  sll        $v0, $v1, 4
/* 47BA658 8007B128 23104300 */  subu       $v0, $v0, $v1
/* 47BA65C 8007B12C 02000396 */  lhu        $v1, 0x2($s0)
/* 47BA660 8007B130 43120200 */  sra        $v0, $v0, 9
/* 47BA664 8007B134 21186200 */  addu       $v1, $v1, $v0
/* 47BA668 8007B138 020003A6 */  sh         $v1, 0x2($s0)
/* 47BA66C 8007B13C 2800A28F */  lw         $v0, 0x28($sp)
/* 47BA670 8007B140 00000000 */  nop
/* 47BA674 8007B144 000002A6 */  sh         $v0, 0x0($s0)
/* 47BA678 8007B148 2C00A28F */  lw         $v0, 0x2C($sp)
/* 47BA67C 8007B14C 00000000 */  nop
/* 47BA680 8007B150 020002A6 */  sh         $v0, 0x2($s0)
/* 47BA684 8007B154 3000A28F */  lw         $v0, 0x30($sp)
/* 47BA688 8007B158 00000000 */  nop
/* 47BA68C 8007B15C 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_14_8007B160:
/* 47BA690 8007B160 1C00428E */  lw         $v0, 0x1C($s2)
/* 47BA694 8007B164 00000000 */  nop
/* 47BA698 8007B168 00004284 */  lh         $v0, 0x0($v0)
/* 47BA69C 8007B16C 01007326 */  addiu      $s3, $s3, 0x1
/* 47BA6A0 8007B170 2A106202 */  slt        $v0, $s3, $v0
/* 47BA6A4 8007B174 BCFF4014 */  bnez       $v0, .Llevel_14_8007B068
/* 47BA6A8 8007B178 00000000 */   nop
.Llevel_14_8007B17C:
/* 47BA6AC 8007B17C 0400448E */  lw         $a0, 0x4($s2)
/* 47BA6B0 8007B180 FC000524 */  addiu      $a1, $zero, 0xFC
/* 47BA6B4 8007B184 B687000C */  jal        func_80021ED8
/* 47BA6B8 8007B188 21300000 */   addu      $a2, $zero, $zero
/* 47BA6BC 8007B18C C656010C */  jal        func_80055B18
/* 47BA6C0 8007B190 21208002 */   addu      $a0, $s4, $zero
.Llevel_14_8007B194:
/* 47BA6C4 8007B194 6000BF8F */  lw         $ra, 0x60($sp)
/* 47BA6C8 8007B198 5C00B58F */  lw         $s5, 0x5C($sp)
/* 47BA6CC 8007B19C 5800B48F */  lw         $s4, 0x58($sp)
/* 47BA6D0 8007B1A0 5400B38F */  lw         $s3, 0x54($sp)
/* 47BA6D4 8007B1A4 5000B28F */  lw         $s2, 0x50($sp)
/* 47BA6D8 8007B1A8 4C00B18F */  lw         $s1, 0x4C($sp)
/* 47BA6DC 8007B1AC 4800B08F */  lw         $s0, 0x48($sp)
/* 47BA6E0 8007B1B0 6800BD27 */  addiu      $sp, $sp, 0x68
/* 47BA6E4 8007B1B4 0800E003 */  jr         $ra
/* 47BA6E8 8007B1B8 00000000 */   nop
.size func_level_14_8007AD84, . - func_level_14_8007AD84
