.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_198_level_13
/* 44192DC 8007ADAC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 44192E0 8007ADB0 1800B2AF */  sw         $s2, 0x18($sp)
/* 44192E4 8007ADB4 21908000 */  addu       $s2, $a0, $zero
/* 44192E8 8007ADB8 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 44192EC 8007ADBC 1400B1AF */  sw         $s1, 0x14($sp)
/* 44192F0 8007ADC0 1000B0AF */  sw         $s0, 0x10($sp)
/* 44192F4 8007ADC4 48004492 */  lbu        $a0, 0x48($s2)
/* 44192F8 8007ADC8 0000508E */  lw         $s0, 0x0($s2)
/* 44192FC 8007ADCC 05008010 */  beqz       $a0, .Llevel_13_8007ADE4
/* 4419300 8007ADD0 01000224 */   addiu     $v0, $zero, 0x1
/* 4419304 8007ADD4 79008210 */  beq        $a0, $v0, .Llevel_13_8007AFBC
/* 4419308 8007ADD8 01000224 */   addiu     $v0, $zero, 0x1
/* 441930C 8007ADDC F8EB0108 */  j          .Llevel_13_8007AFE0
/* 4419310 8007ADE0 00000000 */   nop
.Llevel_13_8007ADE4:
/* 4419314 8007ADE4 01000292 */  lbu        $v0, 0x1($s0)
/* 4419318 8007ADE8 00000000 */  nop
/* 441931C 8007ADEC 7F004330 */  andi       $v1, $v0, 0x7F
/* 4419320 8007ADF0 7F000224 */  addiu      $v0, $zero, 0x7F
/* 4419324 8007ADF4 13006210 */  beq        $v1, $v0, .Llevel_13_8007AE44
/* 4419328 8007ADF8 80200300 */   sll       $a0, $v1, 2
/* 441932C 8007ADFC 0680013C */  lui        $at, %hi(D_80066EAC)
/* 4419330 8007AE00 21082400 */  addu       $at, $at, $a0
/* 4419334 8007AE04 AC6E2384 */  lh         $v1, %lo(D_80066EAC)($at)
/* 4419338 8007AE08 0780023C */  lui        $v0, %hi(D_8006C71C)
/* 441933C 8007AE0C 1CC7428C */  lw         $v0, %lo(D_8006C71C)($v0)
/* 4419340 8007AE10 00000000 */  nop
/* 4419344 8007AE14 2A104300 */  slt        $v0, $v0, $v1
/* 4419348 8007AE18 0A004014 */  bnez       $v0, .Llevel_13_8007AE44
/* 441934C 8007AE1C 00000000 */   nop
/* 4419350 8007AE20 0680013C */  lui        $at, %hi(D_80066EAE)
/* 4419354 8007AE24 21082400 */  addu       $at, $at, $a0
/* 4419358 8007AE28 AE6E2284 */  lh         $v0, %lo(D_80066EAE)($at)
/* 441935C 8007AE2C 00000000 */  nop
/* 4419360 8007AE30 04004014 */  bnez       $v0, .Llevel_13_8007AE44
/* 4419364 8007AE34 01000224 */   addiu     $v0, $zero, 0x1
/* 4419368 8007AE38 050002A2 */  sb         $v0, 0x5($s0)
/* 441936C 8007AE3C FF000224 */  addiu      $v0, $zero, 0xFF
/* 4419370 8007AE40 010002A2 */  sb         $v0, 0x1($s0)
.Llevel_13_8007AE44:
/* 4419374 8007AE44 2C00038E */  lw         $v1, 0x2C($s0)
/* 4419378 8007AE48 FFFF0524 */  addiu      $a1, $zero, -0x1
/* 441937C 8007AE4C 31006510 */  beq        $v1, $a1, .Llevel_13_8007AF14
/* 4419380 8007AE50 00000000 */   nop
/* 4419384 8007AE54 0780023C */  lui        $v0, %hi(D_8006C640)
/* 4419388 8007AE58 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 441938C 8007AE5C 00000000 */  nop
/* 4419390 8007AE60 0A004228 */  slti       $v0, $v0, 0xA
/* 4419394 8007AE64 2B004010 */  beqz       $v0, .Llevel_13_8007AF14
/* 4419398 8007AE68 80100300 */   sll       $v0, $v1, 2
/* 441939C 8007AE6C 0680013C */  lui        $at, %hi(D_80066EAE)
/* 44193A0 8007AE70 21082200 */  addu       $at, $at, $v0
/* 44193A4 8007AE74 AE6E2284 */  lh         $v0, %lo(D_80066EAE)($at)
/* 44193A8 8007AE78 00000000 */  nop
/* 44193AC 8007AE7C 0A004014 */  bnez       $v0, .Llevel_13_8007AEA8
/* 44193B0 8007AE80 00000000 */   nop
/* 44193B4 8007AE84 0680023C */  lui        $v0, %hi(D_80066FCC + 0x2F)
/* 44193B8 8007AE88 FB6F4290 */  lbu        $v0, %lo(D_80066FCC + 0x2F)($v0)
/* 44193BC 8007AE8C 0780013C */  lui        $at, %hi(D_80070300)
/* 44193C0 8007AE90 21082200 */  addu       $at, $at, $v0
/* 44193C4 8007AE94 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 44193C8 8007AE98 00000000 */  nop
/* 44193CC 8007AE9C 01004230 */  andi       $v0, $v0, 0x1
/* 44193D0 8007AEA0 1C004010 */  beqz       $v0, .Llevel_13_8007AF14
/* 44193D4 8007AEA4 00000000 */   nop
.Llevel_13_8007AEA8:
/* 44193D8 8007AEA8 2800038E */  lw         $v1, 0x28($s0)
/* 44193DC 8007AEAC 00000000 */  nop
/* 44193E0 8007AEB0 0A006510 */  beq        $v1, $a1, .Llevel_13_8007AEDC
/* 44193E4 8007AEB4 40100300 */   sll       $v0, $v1, 1
/* 44193E8 8007AEB8 21104300 */  addu       $v0, $v0, $v1
/* 44193EC 8007AEBC 80100200 */  sll        $v0, $v0, 2
/* 44193F0 8007AEC0 23104300 */  subu       $v0, $v0, $v1
/* 44193F4 8007AEC4 0780033C */  lui        $v1, %hi(D_8006C550)
/* 44193F8 8007AEC8 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 44193FC 8007AECC C0100200 */  sll        $v0, $v0, 3
/* 4419400 8007AED0 21104300 */  addu       $v0, $v0, $v1
/* 4419404 8007AED4 01000324 */  addiu      $v1, $zero, 0x1
/* 4419408 8007AED8 490043A0 */  sb         $v1, 0x49($v0)
.Llevel_13_8007AEDC:
/* 441940C 8007AEDC 3000048E */  lw         $a0, 0x30($s0)
/* 4419410 8007AEE0 00000000 */  nop
/* 4419414 8007AEE4 07008510 */  beq        $a0, $a1, .Llevel_13_8007AF04
/* 4419418 8007AEE8 3B000524 */   addiu     $a1, $zero, 0x3B
/* 441941C 8007AEEC E387000C */  jal        func_80021F8C
/* 4419420 8007AEF0 21300000 */   addu      $a2, $zero, $zero
/* 4419424 8007AEF4 3000048E */  lw         $a0, 0x30($s0)
/* 4419428 8007AEF8 FC000524 */  addiu      $a1, $zero, 0xFC
/* 441942C 8007AEFC B687000C */  jal        func_80021ED8
/* 4419430 8007AF00 21300000 */   addu      $a2, $zero, $zero
.Llevel_13_8007AF04:
/* 4419434 8007AF04 C656010C */  jal        func_80055B18
/* 4419438 8007AF08 21204002 */   addu      $a0, $s2, $zero
/* 441943C 8007AF0C F8EB0108 */  j          .Llevel_13_8007AFE0
/* 4419440 8007AF10 00000000 */   nop
.Llevel_13_8007AF14:
/* 4419444 8007AF14 2800048E */  lw         $a0, 0x28($s0)
/* 4419448 8007AF18 FFFF1124 */  addiu      $s1, $zero, -0x1
/* 441944C 8007AF1C 05009114 */  bne        $a0, $s1, .Llevel_13_8007AF34
/* 4419450 8007AF20 00000000 */   nop
/* 4419454 8007AF24 3000028E */  lw         $v0, 0x30($s0)
/* 4419458 8007AF28 00000000 */  nop
/* 441945C 8007AF2C 18005110 */  beq        $v0, $s1, .Llevel_13_8007AF90
/* 4419460 8007AF30 00000000 */   nop
.Llevel_13_8007AF34:
/* 4419464 8007AF34 02000392 */  lbu        $v1, 0x2($s0)
/* 4419468 8007AF38 04000224 */  addiu      $v0, $zero, 0x4
/* 441946C 8007AF3C 14006214 */  bne        $v1, $v0, .Llevel_13_8007AF90
/* 4419470 8007AF40 00000000 */   nop
/* 4419474 8007AF44 0A009110 */  beq        $a0, $s1, .Llevel_13_8007AF70
/* 4419478 8007AF48 40100400 */   sll       $v0, $a0, 1
/* 441947C 8007AF4C 21104400 */  addu       $v0, $v0, $a0
/* 4419480 8007AF50 80100200 */  sll        $v0, $v0, 2
/* 4419484 8007AF54 23104400 */  subu       $v0, $v0, $a0
/* 4419488 8007AF58 0780033C */  lui        $v1, %hi(D_8006C550)
/* 441948C 8007AF5C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 4419490 8007AF60 C0100200 */  sll        $v0, $v0, 3
/* 4419494 8007AF64 21104300 */  addu       $v0, $v0, $v1
/* 4419498 8007AF68 01000324 */  addiu      $v1, $zero, 0x1
/* 441949C 8007AF6C 490043A0 */  sb         $v1, 0x49($v0)
.Llevel_13_8007AF70:
/* 44194A0 8007AF70 3000048E */  lw         $a0, 0x30($s0)
/* 44194A4 8007AF74 00000000 */  nop
/* 44194A8 8007AF78 04009110 */  beq        $a0, $s1, .Llevel_13_8007AF8C
/* 44194AC 8007AF7C 280011AE */   sw        $s1, 0x28($s0)
/* 44194B0 8007AF80 FC000524 */  addiu      $a1, $zero, 0xFC
/* 44194B4 8007AF84 B687000C */  jal        func_80021ED8
/* 44194B8 8007AF88 21300000 */   addu      $a2, $zero, $zero
.Llevel_13_8007AF8C:
/* 44194BC 8007AF8C 300011AE */  sw         $s1, 0x30($s0)
.Llevel_13_8007AF90:
/* 44194C0 8007AF90 21204002 */  addu       $a0, $s2, $zero
/* 44194C4 8007AF94 EFDE000C */  jal        func_80037BBC
/* 44194C8 8007AF98 21280000 */   addu      $a1, $zero, $zero
/* 44194CC 8007AF9C 10004010 */  beqz       $v0, .Llevel_13_8007AFE0
/* 44194D0 8007AFA0 21204002 */   addu      $a0, $s2, $zero
/* 44194D4 8007AFA4 21280000 */  addu       $a1, $zero, $zero
/* 44194D8 8007AFA8 B944010C */  jal        func_800512E4
/* 44194DC 8007AFAC 01000624 */   addiu     $a2, $zero, 0x1
/* 44194E0 8007AFB0 01000224 */  addiu      $v0, $zero, 0x1
/* 44194E4 8007AFB4 F8EB0108 */  j          .Llevel_13_8007AFE0
/* 44194E8 8007AFB8 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_13_8007AFBC:
/* 44194EC 8007AFBC 0780033C */  lui        $v1, %hi(D_8006E344)
/* 44194F0 8007AFC0 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 44194F4 8007AFC4 0780013C */  lui        $at, %hi(D_80071584)
/* 44194F8 8007AFC8 841522A0 */  sb         $v0, %lo(D_80071584)($at)
/* 44194FC 8007AFCC 04006410 */  beq        $v1, $a0, .Llevel_13_8007AFE0
/* 4419500 8007AFD0 21204002 */   addu      $a0, $s2, $zero
/* 4419504 8007AFD4 480040A2 */  sb         $zero, 0x48($s2)
/* 4419508 8007AFD8 D0D3000C */  jal        func_80034F40
/* 441950C 8007AFDC 21280000 */   addu      $a1, $zero, $zero
.Llevel_13_8007AFE0:
/* 4419510 8007AFE0 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 4419514 8007AFE4 1800B28F */  lw         $s2, 0x18($sp)
/* 4419518 8007AFE8 1400B18F */  lw         $s1, 0x14($sp)
/* 441951C 8007AFEC 1000B08F */  lw         $s0, 0x10($sp)
/* 4419520 8007AFF0 2000BD27 */  addiu      $sp, $sp, 0x20
/* 4419524 8007AFF4 0800E003 */  jr         $ra
/* 4419528 8007AFF8 00000000 */   nop
.size MobyUpdate_198_level_13, . - MobyUpdate_198_level_13
