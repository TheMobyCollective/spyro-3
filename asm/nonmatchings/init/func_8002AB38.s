.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002AB38
/* 1B338 8002AB38 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 1B33C 8002AB3C 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 1B340 8002AB40 3800B2AF */  sw         $s2, 0x38($sp)
/* 1B344 8002AB44 3400B1AF */  sw         $s1, 0x34($sp)
/* 1B348 8002AB48 A171010C */  jal        func_8005C684
/* 1B34C 8002AB4C 3000B0AF */   sw        $s0, 0x30($sp)
/* 1B350 8002AB50 0DAA000C */  jal        func_8002A834
/* 1B354 8002AB54 00000000 */   nop
/* 1B358 8002AB58 E5A9000C */  jal        func_8002A794
/* 1B35C 8002AB5C 00000000 */   nop
/* 1B360 8002AB60 EDA9000C */  jal        func_8002A7B4
/* 1B364 8002AB64 00000000 */   nop
/* 1B368 8002AB68 3B3E010C */  jal        func_8004F8EC
/* 1B36C 8002AB6C 00000000 */   nop
/* 1B370 8002AB70 67AA000C */  jal        func_8002A99C
/* 1B374 8002AB74 00000000 */   nop
/* 1B378 8002AB78 0780103C */  lui        $s0, %hi(D_8006D8E4)
/* 1B37C 8002AB7C E4D81026 */  addiu      $s0, $s0, %lo(D_8006D8E4)
/* 1B380 8002AB80 0780043C */  lui        $a0, %hi(D_8006E470)
/* 1B384 8002AB84 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 1B388 8002AB88 0180053C */  lui        $a1, %hi(D_80011254)
/* 1B38C 8002AB8C 5412A58C */  lw         $a1, %lo(D_80011254)($a1)
/* 1B390 8002AB90 0000068E */  lw         $a2, 0x0($s0)
/* 1B394 8002AB94 0780073C */  lui        $a3, %hi(D_8006D8E0)
/* 1B398 8002AB98 E0D8E78C */  lw         $a3, %lo(D_8006D8E0)($a3)
/* 1B39C 8002AB9C 0780113C */  lui        $s1, %hi(func_title_80074DEC)
/* 1B3A0 8002ABA0 EC4D3126 */  addiu      $s1, $s1, %lo(func_title_80074DEC)
/* 1B3A4 8002ABA4 5E41010C */  jal        func_80050578
/* 1B3A8 8002ABA8 00000000 */   nop
/* 1B3AC 8002ABAC 0000028E */  lw         $v0, 0x0($s0)
/* 1B3B0 8002ABB0 0880103C */  lui        $s0, %hi(title_text_end)
/* 1B3B4 8002ABB4 9CEC1026 */  addiu      $s0, $s0, %lo(title_text_end)
/* 1B3B8 8002ABB8 0780013C */  lui        $at, %hi(D_8006C714)
/* 1B3BC 8002ABBC 14C722AC */  sw         $v0, %lo(D_8006C714)($at)
/* 1B3C0 8002ABC0 2B103002 */  sltu       $v0, $s1, $s0
/* 1B3C4 8002ABC4 0A004010 */  beqz       $v0, .L8002ABF0
/* 1B3C8 8002ABC8 21280000 */   addu      $a1, $zero, $zero
.L8002ABCC:
/* 1B3CC 8002ABCC BFAA000C */  jal        crc16
/* 1B3D0 8002ABD0 21202002 */   addu      $a0, $s1, $zero
/* 1B3D4 8002ABD4 21284000 */  addu       $a1, $v0, $zero
/* 1B3D8 8002ABD8 0300A230 */  andi       $v0, $a1, 0x3
/* 1B3DC 8002ABDC 01004224 */  addiu      $v0, $v0, 0x1
/* 1B3E0 8002ABE0 21882202 */  addu       $s1, $s1, $v0
/* 1B3E4 8002ABE4 2B103002 */  sltu       $v0, $s1, $s0
/* 1B3E8 8002ABE8 F8FF4014 */  bnez       $v0, .L8002ABCC
/* 1B3EC 8002ABEC 00000000 */   nop
.L8002ABF0:
/* 1B3F0 8002ABF0 0180113C */  lui        $s1, %hi(main)
/* 1B3F4 8002ABF4 0C203126 */  addiu      $s1, $s1, %lo(main)
/* 1B3F8 8002ABF8 0680023C */  lui        $v0, %hi(main_TEXT_END)
/* 1B3FC 8002ABFC 9C4F4224 */  addiu      $v0, $v0, %lo(main_TEXT_END)
/* 1B400 8002AC00 23905100 */  subu       $s2, $v0, $s1
/* 1B404 8002AC04 0800401A */  blez       $s2, .L8002AC28
/* 1B408 8002AC08 21800000 */   addu      $s0, $zero, $zero
.L8002AC0C:
/* 1B40C 8002AC0C BFAA000C */  jal        crc16
/* 1B410 8002AC10 21202002 */   addu      $a0, $s1, $zero
/* 1B414 8002AC14 21284000 */  addu       $a1, $v0, $zero
/* 1B418 8002AC18 01001026 */  addiu      $s0, $s0, 0x1
/* 1B41C 8002AC1C 2A101202 */  slt        $v0, $s0, $s2
/* 1B420 8002AC20 FAFF4014 */  bnez       $v0, .L8002AC0C
/* 1B424 8002AC24 01003126 */   addiu     $s1, $s1, 0x1
.L8002AC28:
/* 1B428 8002AC28 FFFFA530 */  andi       $a1, $a1, 0xFFFF
/* 1B42C 8002AC2C 0800A010 */  beqz       $a1, .L8002AC50
/* 1B430 8002AC30 00000000 */   nop
/* 1B434 8002AC34 9171010C */  jal        rand
/* 1B438 8002AC38 00000000 */   nop
/* 1B43C 8002AC3C 0F004230 */  andi       $v0, $v0, 0xF
/* 1B440 8002AC40 80100200 */  sll        $v0, $v0, 2
/* 1B444 8002AC44 0380013C */  lui        $at, %hi(func_8002A7B4)
/* 1B448 8002AC48 21082200 */  addu       $at, $at, $v0
/* 1B44C 8002AC4C B4A720AC */  sw         $zero, %lo(func_8002A7B4)($at)
.L8002AC50:
/* 1B450 8002AC50 0780113C */  lui        $s1, %hi(func_title_80074DEC)
/* 1B454 8002AC54 EC4D3126 */  addiu      $s1, $s1, %lo(func_title_80074DEC)
/* 1B458 8002AC58 0880023C */  lui        $v0, %hi(title_text_end)
/* 1B45C 8002AC5C 9CEC4224 */  addiu      $v0, $v0, %lo(title_text_end)
/* 1B460 8002AC60 23905100 */  subu       $s2, $v0, $s1
/* 1B464 8002AC64 21800000 */  addu       $s0, $zero, $zero
/* 1B468 8002AC68 0800401A */  blez       $s2, .L8002AC8C
/* 1B46C 8002AC6C 21280000 */   addu      $a1, $zero, $zero
.L8002AC70:
/* 1B470 8002AC70 BFAA000C */  jal        crc16
/* 1B474 8002AC74 21202002 */   addu      $a0, $s1, $zero
/* 1B478 8002AC78 21284000 */  addu       $a1, $v0, $zero
/* 1B47C 8002AC7C 01001026 */  addiu      $s0, $s0, 0x1
/* 1B480 8002AC80 2A101202 */  slt        $v0, $s0, $s2
/* 1B484 8002AC84 FAFF4014 */  bnez       $v0, .L8002AC70
/* 1B488 8002AC88 01003126 */   addiu     $s1, $s1, 0x1
.L8002AC8C:
/* 1B48C 8002AC8C FFFFA530 */  andi       $a1, $a1, 0xFFFF
/* 1B490 8002AC90 0800A010 */  beqz       $a1, .L8002ACB4
/* 1B494 8002AC94 00000000 */   nop
/* 1B498 8002AC98 9171010C */  jal        rand
/* 1B49C 8002AC9C 00000000 */   nop
/* 1B4A0 8002ACA0 1F004230 */  andi       $v0, $v0, 0x1F
/* 1B4A4 8002ACA4 80100200 */  sll        $v0, $v0, 2
/* 1B4A8 8002ACA8 0380013C */  lui        $at, %hi(func_8002A834)
/* 1B4AC 8002ACAC 21082200 */  addu       $at, $at, $v0
/* 1B4B0 8002ACB0 34A820AC */  sw         $zero, %lo(func_8002A834)($at)
.L8002ACB4:
/* 1B4B4 8002ACB4 7BD3010C */  jal        func_title_80074DEC
/* 1B4B8 8002ACB8 01000424 */   addiu     $a0, $zero, 0x1
/* 1B4BC 8002ACBC 0780103C */  lui        $s0, %hi(func_title_80074DEC)
/* 1B4C0 8002ACC0 EC4D1026 */  addiu      $s0, $s0, %lo(func_title_80074DEC)
/* 1B4C4 8002ACC4 0880113C */  lui        $s1, %hi(title_text_end)
/* 1B4C8 8002ACC8 9CEC3126 */  addiu      $s1, $s1, %lo(title_text_end)
/* 1B4CC 8002ACCC 2B101102 */  sltu       $v0, $s0, $s1
/* 1B4D0 8002ACD0 0A004010 */  beqz       $v0, .L8002ACFC
/* 1B4D4 8002ACD4 21280000 */   addu      $a1, $zero, $zero
.L8002ACD8:
/* 1B4D8 8002ACD8 BFAA000C */  jal        crc16
/* 1B4DC 8002ACDC 21200002 */   addu      $a0, $s0, $zero
/* 1B4E0 8002ACE0 21284000 */  addu       $a1, $v0, $zero
/* 1B4E4 8002ACE4 0300A230 */  andi       $v0, $a1, 0x3
/* 1B4E8 8002ACE8 01004224 */  addiu      $v0, $v0, 0x1
/* 1B4EC 8002ACEC 21800202 */  addu       $s0, $s0, $v0
/* 1B4F0 8002ACF0 2B101102 */  sltu       $v0, $s0, $s1
/* 1B4F4 8002ACF4 F8FF4014 */  bnez       $v0, .L8002ACD8
/* 1B4F8 8002ACF8 00000000 */   nop
.L8002ACFC:
/* 1B4FC 8002ACFC 0180103C */  lui        $s0, %hi(main)
/* 1B500 8002AD00 0C201026 */  addiu      $s0, $s0, %lo(main)
/* 1B504 8002AD04 0680023C */  lui        $v0, %hi(main_TEXT_END)
/* 1B508 8002AD08 9C4F4224 */  addiu      $v0, $v0, %lo(main_TEXT_END)
/* 1B50C 8002AD0C 23905000 */  subu       $s2, $v0, $s0
/* 1B510 8002AD10 0800401A */  blez       $s2, .L8002AD34
/* 1B514 8002AD14 21880000 */   addu      $s1, $zero, $zero
.L8002AD18:
/* 1B518 8002AD18 BFAA000C */  jal        crc16
/* 1B51C 8002AD1C 21200002 */   addu      $a0, $s0, $zero
/* 1B520 8002AD20 21284000 */  addu       $a1, $v0, $zero
/* 1B524 8002AD24 01003126 */  addiu      $s1, $s1, 0x1
/* 1B528 8002AD28 2A103202 */  slt        $v0, $s1, $s2
/* 1B52C 8002AD2C FAFF4014 */  bnez       $v0, .L8002AD18
/* 1B530 8002AD30 01001026 */   addiu     $s0, $s0, 0x1
.L8002AD34:
/* 1B534 8002AD34 FFFFA530 */  andi       $a1, $a1, 0xFFFF
/* 1B538 8002AD38 0800A010 */  beqz       $a1, .L8002AD5C
/* 1B53C 8002AD3C 00000000 */   nop
/* 1B540 8002AD40 9171010C */  jal        rand
/* 1B544 8002AD44 00000000 */   nop
/* 1B548 8002AD48 3F004230 */  andi       $v0, $v0, 0x3F
/* 1B54C 8002AD4C 80100200 */  sll        $v0, $v0, 2
/* 1B550 8002AD50 0380013C */  lui        $at, %hi(func_8002AB38)
/* 1B554 8002AD54 21082200 */  addu       $at, $at, $v0
/* 1B558 8002AD58 38AB20AC */  sw         $zero, %lo(func_8002AB38)($at)
.L8002AD5C:
/* 1B55C 8002AD5C 0780103C */  lui        $s0, %hi(func_title_80074DEC)
/* 1B560 8002AD60 EC4D1026 */  addiu      $s0, $s0, %lo(func_title_80074DEC)
/* 1B564 8002AD64 0880023C */  lui        $v0, %hi(title_text_end)
/* 1B568 8002AD68 9CEC4224 */  addiu      $v0, $v0, %lo(title_text_end)
/* 1B56C 8002AD6C 23905000 */  subu       $s2, $v0, $s0
/* 1B570 8002AD70 21880000 */  addu       $s1, $zero, $zero
/* 1B574 8002AD74 0800401A */  blez       $s2, .L8002AD98
/* 1B578 8002AD78 21280000 */   addu      $a1, $zero, $zero
.L8002AD7C:
/* 1B57C 8002AD7C BFAA000C */  jal        crc16
/* 1B580 8002AD80 21200002 */   addu      $a0, $s0, $zero
/* 1B584 8002AD84 21284000 */  addu       $a1, $v0, $zero
/* 1B588 8002AD88 01003126 */  addiu      $s1, $s1, 0x1
/* 1B58C 8002AD8C 2A103202 */  slt        $v0, $s1, $s2
/* 1B590 8002AD90 FAFF4014 */  bnez       $v0, .L8002AD7C
/* 1B594 8002AD94 01001026 */   addiu     $s0, $s0, 0x1
.L8002AD98:
/* 1B598 8002AD98 FFFFA530 */  andi       $a1, $a1, 0xFFFF
/* 1B59C 8002AD9C 0A00A010 */  beqz       $a1, .L8002ADC8
/* 1B5A0 8002ADA0 00000000 */   nop
/* 1B5A4 8002ADA4 9171010C */  jal        rand
/* 1B5A8 8002ADA8 00000000 */   nop
/* 1B5AC 8002ADAC 3F004230 */  andi       $v0, $v0, 0x3F
/* 1B5B0 8002ADB0 80100200 */  sll        $v0, $v0, 2
/* 1B5B4 8002ADB4 0380013C */  lui        $at, %hi(crc16)
/* 1B5B8 8002ADB8 21082200 */  addu       $at, $at, $v0
/* 1B5BC 8002ADBC FCAA20AC */  sw         $zero, %lo(crc16)($at)
/* 1B5C0 8002ADC0 75AB0008 */  j          .L8002ADD4
/* 1B5C4 8002ADC4 01000224 */   addiu     $v0, $zero, 0x1
.L8002ADC8:
/* 1B5C8 8002ADC8 B6EB010C */  jal        func_title_8007AED8
/* 1B5CC 8002ADCC 00000000 */   nop
/* 1B5D0 8002ADD0 01000224 */  addiu      $v0, $zero, 0x1
.L8002ADD4:
/* 1B5D4 8002ADD4 0780013C */  lui        $at, %hi(D_8006C7B8)
/* 1B5D8 8002ADD8 B8C722AC */  sw         $v0, %lo(D_8006C7B8)($at)
/* 1B5DC 8002ADDC 9753010C */  jal        func_80054E5C
/* 1B5E0 8002ADE0 00000000 */   nop
/* 1B5E4 8002ADE4 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 1B5E8 8002ADE8 3800B28F */  lw         $s2, 0x38($sp)
/* 1B5EC 8002ADEC 3400B18F */  lw         $s1, 0x34($sp)
/* 1B5F0 8002ADF0 3000B08F */  lw         $s0, 0x30($sp)
/* 1B5F4 8002ADF4 4000BD27 */  addiu      $sp, $sp, 0x40
/* 1B5F8 8002ADF8 0800E003 */  jr         $ra
/* 1B5FC 8002ADFC 00000000 */   nop
.size func_8002AB38, . - func_8002AB38
