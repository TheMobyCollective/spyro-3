.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_36_8007DE88
/* 78DE3B8 8007DE88 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 78DE3BC 8007DE8C 1800B2AF */  sw         $s2, 0x18($sp)
/* 78DE3C0 8007DE90 21908000 */  addu       $s2, $a0, $zero
/* 78DE3C4 8007DE94 1000B0AF */  sw         $s0, 0x10($sp)
/* 78DE3C8 8007DE98 01001024 */  addiu      $s0, $zero, 0x1
/* 78DE3CC 8007DE9C 2000BFAF */  sw         $ra, 0x20($sp)
/* 78DE3D0 8007DEA0 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 78DE3D4 8007DEA4 1400B1AF */  sw         $s1, 0x14($sp)
/* 78DE3D8 8007DEA8 48004392 */  lbu        $v1, 0x48($s2)
/* 78DE3DC 8007DEAC 0000518E */  lw         $s1, 0x0($s2)
/* 78DE3E0 8007DEB0 58007010 */  beq        $v1, $s0, .Llevel_36_8007E014
/* 78DE3E4 8007DEB4 02006228 */   slti      $v0, $v1, 0x2
/* 78DE3E8 8007DEB8 05004010 */  beqz       $v0, .Llevel_36_8007DED0
/* 78DE3EC 8007DEBC 00000000 */   nop
/* 78DE3F0 8007DEC0 0A006010 */  beqz       $v1, .Llevel_36_8007DEEC
/* 78DE3F4 8007DEC4 00000000 */   nop
/* 78DE3F8 8007DEC8 66F80108 */  j          .Llevel_36_8007E198
/* 78DE3FC 8007DECC 00000000 */   nop
.Llevel_36_8007DED0:
/* 78DE400 8007DED0 02000224 */  addiu      $v0, $zero, 0x2
/* 78DE404 8007DED4 70006210 */  beq        $v1, $v0, .Llevel_36_8007E098
/* 78DE408 8007DED8 03000224 */   addiu     $v0, $zero, 0x3
/* 78DE40C 8007DEDC 75006210 */  beq        $v1, $v0, .Llevel_36_8007E0B4
/* 78DE410 8007DEE0 00000000 */   nop
/* 78DE414 8007DEE4 66F80108 */  j          .Llevel_36_8007E198
/* 78DE418 8007DEE8 00000000 */   nop
.Llevel_36_8007DEEC:
/* 78DE41C 8007DEEC 0000238E */  lw         $v1, 0x0($s1)
/* 78DE420 8007DEF0 00000000 */  nop
/* 78DE424 8007DEF4 40100300 */  sll        $v0, $v1, 1
/* 78DE428 8007DEF8 21104300 */  addu       $v0, $v0, $v1
/* 78DE42C 8007DEFC 80100200 */  sll        $v0, $v0, 2
/* 78DE430 8007DF00 23104300 */  subu       $v0, $v0, $v1
/* 78DE434 8007DF04 0780033C */  lui        $v1, %hi(D_8006C550)
/* 78DE438 8007DF08 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 78DE43C 8007DF0C C0100200 */  sll        $v0, $v0, 3
/* 78DE440 8007DF10 21284300 */  addu       $a1, $v0, $v1
/* 78DE444 8007DF14 4800A290 */  lbu        $v0, 0x48($a1)
/* 78DE448 8007DF18 00000000 */  nop
/* 78DE44C 8007DF1C 80004230 */  andi       $v0, $v0, 0x80
/* 78DE450 8007DF20 1B004010 */  beqz       $v0, .Llevel_36_8007DF90
/* 78DE454 8007DF24 04003026 */   addiu     $s0, $s1, 0x4
/* 78DE458 8007DF28 21200002 */  addu       $a0, $s0, $zero
/* 78DE45C 8007DF2C 5E3C010C */  jal        func_8004F178
/* 78DE460 8007DF30 0C00A524 */   addiu     $a1, $a1, 0xC
/* 78DE464 8007DF34 21204002 */  addu       $a0, $s2, $zero
/* 78DE468 8007DF38 01000524 */  addiu      $a1, $zero, 0x1
/* 78DE46C 8007DF3C 21300002 */  addu       $a2, $s0, $zero
/* 78DE470 8007DF40 0C005326 */  addiu      $s3, $s2, 0xC
/* 78DE474 8007DF44 9ADA000C */  jal        func_80036A68
/* 78DE478 8007DF48 21386002 */   addu      $a3, $s3, $zero
/* 78DE47C 8007DF4C 21884000 */  addu       $s1, $v0, $zero
/* 78DE480 8007DF50 91002012 */  beqz       $s1, .Llevel_36_8007E198
/* 78DE484 8007DF54 0C003026 */   addiu     $s0, $s1, 0xC
/* 78DE488 8007DF58 21200002 */  addu       $a0, $s0, $zero
/* 78DE48C 8007DF5C 5E3C010C */  jal        func_8004F178
/* 78DE490 8007DF60 21286002 */   addu      $a1, $s3, $zero
/* 78DE494 8007DF64 21200002 */  addu       $a0, $s0, $zero
/* 78DE498 8007DF68 D668000C */  jal        func_8001A358
/* 78DE49C 8007DF6C 00040524 */   addiu     $a1, $zero, 0x400
/* 78DE4A0 8007DF70 02004010 */  beqz       $v0, .Llevel_36_8007DF7C
/* 78DE4A4 8007DF74 00000000 */   nop
/* 78DE4A8 8007DF78 140022AE */  sw         $v0, 0x14($s1)
.Llevel_36_8007DF7C:
/* 78DE4AC 8007DF7C 50004292 */  lbu        $v0, 0x50($s2)
/* 78DE4B0 8007DF80 21204002 */  addu       $a0, $s2, $zero
/* 78DE4B4 8007DF84 480020A2 */  sb         $zero, 0x48($s1)
/* 78DE4B8 8007DF88 64F80108 */  j          .Llevel_36_8007E190
/* 78DE4BC 8007DF8C 500022A2 */   sb        $v0, 0x50($s1)
.Llevel_36_8007DF90:
/* 78DE4C0 8007DF90 04002426 */  addiu      $a0, $s1, 0x4
/* 78DE4C4 8007DF94 0C005026 */  addiu      $s0, $s2, 0xC
/* 78DE4C8 8007DF98 5E3C010C */  jal        func_8004F178
/* 78DE4CC 8007DF9C 21280002 */   addu      $a1, $s0, $zero
/* 78DE4D0 8007DFA0 21200002 */  addu       $a0, $s0, $zero
/* 78DE4D4 8007DFA4 0000238E */  lw         $v1, 0x0($s1)
/* 78DE4D8 8007DFA8 0780053C */  lui        $a1, %hi(D_8006C550)
/* 78DE4DC 8007DFAC 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 78DE4E0 8007DFB0 40100300 */  sll        $v0, $v1, 1
/* 78DE4E4 8007DFB4 21104300 */  addu       $v0, $v0, $v1
/* 78DE4E8 8007DFB8 80100200 */  sll        $v0, $v0, 2
/* 78DE4EC 8007DFBC 23104300 */  subu       $v0, $v0, $v1
/* 78DE4F0 8007DFC0 C0100200 */  sll        $v0, $v0, 3
/* 78DE4F4 8007DFC4 2128A200 */  addu       $a1, $a1, $v0
/* 78DE4F8 8007DFC8 5E3C010C */  jal        func_8004F178
/* 78DE4FC 8007DFCC 0C00A524 */   addiu     $a1, $a1, 0xC
/* 78DE500 8007DFD0 1400228E */  lw         $v0, 0x14($s1)
/* 78DE504 8007DFD4 00000000 */  nop
/* 78DE508 8007DFD8 0000438C */  lw         $v1, 0x0($v0)
/* 78DE50C 8007DFDC 00000000 */  nop
/* 78DE510 8007DFE0 490043A2 */  sb         $v1, 0x49($s2)
/* 78DE514 8007DFE4 FF006330 */  andi       $v1, $v1, 0xFF
/* 78DE518 8007DFE8 00110300 */  sll        $v0, $v1, 4
/* 78DE51C 8007DFEC 1400248E */  lw         $a0, 0x14($s1)
/* 78DE520 8007DFF0 23104300 */  subu       $v0, $v0, $v1
/* 78DE524 8007DFF4 100022AE */  sw         $v0, 0x10($s1)
/* 78DE528 8007DFF8 0000828C */  lw         $v0, 0x0($a0)
/* 78DE52C 8007DFFC 00000000 */  nop
/* 78DE530 8007E000 01004224 */  addiu      $v0, $v0, 0x1
/* 78DE534 8007E004 000082AC */  sw         $v0, 0x0($a0)
/* 78DE538 8007E008 01000224 */  addiu      $v0, $zero, 0x1
/* 78DE53C 8007E00C 66F80108 */  j          .Llevel_36_8007E198
/* 78DE540 8007E010 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_36_8007E014:
/* 78DE544 8007E014 0000238E */  lw         $v1, 0x0($s1)
/* 78DE548 8007E018 00000000 */  nop
/* 78DE54C 8007E01C 40100300 */  sll        $v0, $v1, 1
/* 78DE550 8007E020 21104300 */  addu       $v0, $v0, $v1
/* 78DE554 8007E024 80100200 */  sll        $v0, $v0, 2
/* 78DE558 8007E028 23104300 */  subu       $v0, $v0, $v1
/* 78DE55C 8007E02C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 78DE560 8007E030 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 78DE564 8007E034 C0100200 */  sll        $v0, $v0, 3
/* 78DE568 8007E038 21284300 */  addu       $a1, $v0, $v1
/* 78DE56C 8007E03C 3600A384 */  lh         $v1, 0x36($a1)
/* 78DE570 8007E040 CE000224 */  addiu      $v0, $zero, 0xCE
/* 78DE574 8007E044 03006214 */  bne        $v1, $v0, .Llevel_36_8007E054
/* 78DE578 8007E048 0C004426 */   addiu     $a0, $s2, 0xC
/* 78DE57C 8007E04C 5E3C010C */  jal        func_8004F178
/* 78DE580 8007E050 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_36_8007E054:
/* 78DE584 8007E054 0000238E */  lw         $v1, 0x0($s1)
/* 78DE588 8007E058 00000000 */  nop
/* 78DE58C 8007E05C 40100300 */  sll        $v0, $v1, 1
/* 78DE590 8007E060 21104300 */  addu       $v0, $v0, $v1
/* 78DE594 8007E064 80100200 */  sll        $v0, $v0, 2
/* 78DE598 8007E068 23104300 */  subu       $v0, $v0, $v1
/* 78DE59C 8007E06C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 78DE5A0 8007E070 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 78DE5A4 8007E074 C0100200 */  sll        $v0, $v0, 3
/* 78DE5A8 8007E078 21104300 */  addu       $v0, $v0, $v1
/* 78DE5AC 8007E07C 48004290 */  lbu        $v0, 0x48($v0)
/* 78DE5B0 8007E080 00000000 */  nop
/* 78DE5B4 8007E084 80004230 */  andi       $v0, $v0, 0x80
/* 78DE5B8 8007E088 43004010 */  beqz       $v0, .Llevel_36_8007E198
/* 78DE5BC 8007E08C 02000224 */   addiu     $v0, $zero, 0x2
/* 78DE5C0 8007E090 66F80108 */  j          .Llevel_36_8007E198
/* 78DE5C4 8007E094 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_36_8007E098:
/* 78DE5C8 8007E098 10002426 */  addiu      $a0, $s1, 0x10
/* 78DE5CC 8007E09C 69D6000C */  jal        func_800359A4
/* 78DE5D0 8007E0A0 04000524 */   addiu     $a1, $zero, 0x4
/* 78DE5D4 8007E0A4 3C004010 */  beqz       $v0, .Llevel_36_8007E198
/* 78DE5D8 8007E0A8 03000224 */   addiu     $v0, $zero, 0x3
/* 78DE5DC 8007E0AC 66F80108 */  j          .Llevel_36_8007E198
/* 78DE5E0 8007E0B0 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_36_8007E0B4:
/* 78DE5E4 8007E0B4 0000238E */  lw         $v1, 0x0($s1)
/* 78DE5E8 8007E0B8 00000000 */  nop
/* 78DE5EC 8007E0BC 40100300 */  sll        $v0, $v1, 1
/* 78DE5F0 8007E0C0 21104300 */  addu       $v0, $v0, $v1
/* 78DE5F4 8007E0C4 80100200 */  sll        $v0, $v0, 2
/* 78DE5F8 8007E0C8 23104300 */  subu       $v0, $v0, $v1
/* 78DE5FC 8007E0CC 0780033C */  lui        $v1, %hi(D_8006C550)
/* 78DE600 8007E0D0 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 78DE604 8007E0D4 C0100200 */  sll        $v0, $v0, 3
/* 78DE608 8007E0D8 21204300 */  addu       $a0, $v0, $v1
/* 78DE60C 8007E0DC 50008390 */  lbu        $v1, 0x50($a0)
/* 78DE610 8007E0E0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 78DE614 8007E0E4 15006214 */  bne        $v1, $v0, .Llevel_36_8007E13C
/* 78DE618 8007E0E8 00000000 */   nop
/* 78DE61C 8007E0EC 80EE000C */  jal        func_8003BA00
/* 78DE620 8007E0F0 00000000 */   nop
/* 78DE624 8007E0F4 0000238E */  lw         $v1, 0x0($s1)
/* 78DE628 8007E0F8 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 78DE62C 8007E0FC 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 78DE630 8007E100 0780043C */  lui        $a0, %hi(D_80071AB0)
/* 78DE634 8007E104 B01A8424 */  addiu      $a0, $a0, %lo(D_80071AB0)
/* 78DE638 8007E108 21186200 */  addu       $v1, $v1, $v0
/* 78DE63C 8007E10C 1F006530 */  andi       $a1, $v1, 0x1F
/* 78DE640 8007E110 43190300 */  sra        $v1, $v1, 5
/* 78DE644 8007E114 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 78DE648 8007E118 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 78DE64C 8007E11C 80180300 */  sll        $v1, $v1, 2
/* 78DE650 8007E120 40110200 */  sll        $v0, $v0, 5
/* 78DE654 8007E124 21104400 */  addu       $v0, $v0, $a0
/* 78DE658 8007E128 21186200 */  addu       $v1, $v1, $v0
/* 78DE65C 8007E12C 0000628C */  lw         $v0, 0x0($v1)
/* 78DE660 8007E130 0428B000 */  sllv       $a1, $s0, $a1
/* 78DE664 8007E134 25104500 */  or         $v0, $v0, $a1
/* 78DE668 8007E138 000062AC */  sw         $v0, 0x0($v1)
.Llevel_36_8007E13C:
/* 78DE66C 8007E13C 21204002 */  addu       $a0, $s2, $zero
/* 78DE670 8007E140 01000524 */  addiu      $a1, $zero, 0x1
/* 78DE674 8007E144 0C004626 */  addiu      $a2, $s2, 0xC
/* 78DE678 8007E148 9ADA000C */  jal        func_80036A68
/* 78DE67C 8007E14C 04002726 */   addiu     $a3, $s1, 0x4
/* 78DE680 8007E150 11004010 */  beqz       $v0, .Llevel_36_8007E198
/* 78DE684 8007E154 21284002 */   addu      $a1, $s2, $zero
/* 78DE688 8007E158 0780023C */  lui        $v0, %hi(D_8006C654)
/* 78DE68C 8007E15C 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 78DE690 8007E160 00000000 */  nop
/* 78DE694 8007E164 1A004490 */  lbu        $a0, 0x1A($v0)
/* 78DE698 8007E168 D4EE000C */  jal        PlaySound
/* 78DE69C 8007E16C 21300000 */   addu      $a2, $zero, $zero
/* 78DE6A0 8007E170 06004004 */  bltz       $v0, .Llevel_36_8007E18C
/* 78DE6A4 8007E174 21204000 */   addu      $a0, $v0, $zero
/* 78DE6A8 8007E178 49004592 */  lbu        $a1, 0x49($s2)
/* 78DE6AC 8007E17C 00000000 */  nop
/* 78DE6B0 8007E180 002A0500 */  sll        $a1, $a1, 8
/* 78DE6B4 8007E184 2CF0000C */  jal        func_8003C0B0
/* 78DE6B8 8007E188 0010A524 */   addiu     $a1, $a1, 0x1000
.Llevel_36_8007E18C:
/* 78DE6BC 8007E18C 21204002 */  addu       $a0, $s2, $zero
.Llevel_36_8007E190:
/* 78DE6C0 8007E190 C656010C */  jal        func_80055B18
/* 78DE6C4 8007E194 00000000 */   nop
.Llevel_36_8007E198:
/* 78DE6C8 8007E198 2000BF8F */  lw         $ra, 0x20($sp)
/* 78DE6CC 8007E19C 1C00B38F */  lw         $s3, 0x1C($sp)
/* 78DE6D0 8007E1A0 1800B28F */  lw         $s2, 0x18($sp)
/* 78DE6D4 8007E1A4 1400B18F */  lw         $s1, 0x14($sp)
/* 78DE6D8 8007E1A8 1000B08F */  lw         $s0, 0x10($sp)
/* 78DE6DC 8007E1AC 2800BD27 */  addiu      $sp, $sp, 0x28
/* 78DE6E0 8007E1B0 0800E003 */  jr         $ra
/* 78DE6E4 8007E1B4 00000000 */   nop
.size func_level_36_8007DE88, . - func_level_36_8007DE88
