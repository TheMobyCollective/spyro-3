.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_311_level_37
/* 7AAFCF8 80083FC8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 7AAFCFC 80083FCC 21508000 */  addu       $t2, $a0, $zero
/* 7AAFD00 80083FD0 2800BFAF */  sw         $ra, 0x28($sp)
/* 7AAFD04 80083FD4 00004E8D */  lw         $t6, 0x0($t2)
/* 7AAFD08 80083FD8 00000000 */  nop
/* 7AAFD0C 80083FDC 0000CB8D */  lw         $t3, 0x0($t6)
/* 7AAFD10 80083FE0 00000000 */  nop
/* 7AAFD14 80083FE4 0000628D */  lw         $v0, 0x0($t3)
/* 7AAFD18 80083FE8 00000000 */  nop
/* 7AAFD1C 80083FEC 07004290 */  lbu        $v0, 0x7($v0)
/* 7AAFD20 80083FF0 00000000 */  nop
/* 7AAFD24 80083FF4 05004014 */  bnez       $v0, .Llevel_37_8008400C
/* 7AAFD28 80083FF8 6666063C */   lui       $a2, (0x66666667 >> 16)
/* 7AAFD2C 80083FFC C656010C */  jal        func_80055B18
/* 7AAFD30 80084000 00000000 */   nop
/* 7AAFD34 80084004 6E100208 */  j          .Llevel_37_800841B8
/* 7AAFD38 80084008 00000000 */   nop
.Llevel_37_8008400C:
/* 7AAFD3C 8008400C 46006791 */  lbu        $a3, 0x46($t3)
/* 7AAFD40 80084010 00000000 */  nop
/* 7AAFD44 80084014 40280700 */  sll        $a1, $a3, 1
/* 7AAFD48 80084018 0680013C */  lui        $at, %hi(D_80065920)
/* 7AAFD4C 8008401C 21082500 */  addu       $at, $at, $a1
/* 7AAFD50 80084020 20592494 */  lhu        $a0, %lo(D_80065920)($at)
/* 7AAFD54 80084024 6766C634 */  ori        $a2, $a2, (0x66666667 & 0xFFFF)
/* 7AAFD58 80084028 00240400 */  sll        $a0, $a0, 16
/* 7AAFD5C 8008402C 03140400 */  sra        $v0, $a0, 16
/* 7AAFD60 80084030 18004600 */  mult       $v0, $a2
/* 7AAFD64 80084034 49004291 */  lbu        $v0, 0x49($t2)
/* 7AAFD68 80084038 5555093C */  lui        $t1, (0x55555556 >> 16)
/* 7AAFD6C 8008403C 80100200 */  sll        $v0, $v0, 2
/* 7AAFD70 80084040 0680013C */  lui        $at, %hi(D_80067555)
/* 7AAFD74 80084044 21082200 */  addu       $at, $at, $v0
/* 7AAFD78 80084048 55752290 */  lbu        $v0, %lo(D_80067555)($at)
/* 7AAFD7C 8008404C 56552935 */  ori        $t1, $t1, (0x55555556 & 0xFFFF)
/* 7AAFD80 80084050 2138E200 */  addu       $a3, $a3, $v0
/* 7AAFD84 80084054 FF00E830 */  andi       $t0, $a3, 0xFF
/* 7AAFD88 80084058 40400800 */  sll        $t0, $t0, 1
/* 7AAFD8C 8008405C 0680013C */  lui        $at, %hi(D_80065920)
/* 7AAFD90 80084060 21082800 */  addu       $at, $at, $t0
/* 7AAFD94 80084064 20592394 */  lhu        $v1, %lo(D_80065920)($at)
/* 7AAFD98 80084068 10600000 */  mfhi       $t4
/* 7AAFD9C 8008406C 001C0300 */  sll        $v1, $v1, 16
/* 7AAFDA0 80084070 03140300 */  sra        $v0, $v1, 16
/* 7AAFDA4 80084074 18004900 */  mult       $v0, $t1
/* 7AAFDA8 80084078 0680013C */  lui        $at, %hi(D_800658A0)
/* 7AAFDAC 8008407C 21082500 */  addu       $at, $at, $a1
/* 7AAFDB0 80084080 A0582594 */  lhu        $a1, %lo(D_800658A0)($at)
/* 7AAFDB4 80084084 C3270400 */  sra        $a0, $a0, 31
/* 7AAFDB8 80084088 002C0500 */  sll        $a1, $a1, 16
/* 7AAFDBC 8008408C 43100C00 */  sra        $v0, $t4, 1
/* 7AAFDC0 80084090 23104400 */  subu       $v0, $v0, $a0
/* 7AAFDC4 80084094 00140200 */  sll        $v0, $v0, 16
/* 7AAFDC8 80084098 03140200 */  sra        $v0, $v0, 16
/* 7AAFDCC 8008409C 0C00648D */  lw         $a0, 0xC($t3)
/* 7AAFDD0 800840A0 10680000 */  mfhi       $t5
/* 7AAFDD4 800840A4 23208200 */  subu       $a0, $a0, $v0
/* 7AAFDD8 800840A8 03140500 */  sra        $v0, $a1, 16
/* 7AAFDDC 800840AC 18004600 */  mult       $v0, $a2
/* 7AAFDE0 800840B0 C31F0300 */  sra        $v1, $v1, 31
/* 7AAFDE4 800840B4 2318A301 */  subu       $v1, $t5, $v1
/* 7AAFDE8 800840B8 001C0300 */  sll        $v1, $v1, 16
/* 7AAFDEC 800840BC 031C0300 */  sra        $v1, $v1, 16
/* 7AAFDF0 800840C0 1000668D */  lw         $a2, 0x10($t3)
/* 7AAFDF4 800840C4 21208300 */  addu       $a0, $a0, $v1
/* 7AAFDF8 800840C8 0C0044AD */  sw         $a0, 0xC($t2)
/* 7AAFDFC 800840CC 0680013C */  lui        $at, %hi(D_800658A0)
/* 7AAFE00 800840D0 21082800 */  addu       $at, $at, $t0
/* 7AAFE04 800840D4 A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 7AAFE08 800840D8 10600000 */  mfhi       $t4
/* 7AAFE0C 800840DC 001C0300 */  sll        $v1, $v1, 16
/* 7AAFE10 800840E0 03140300 */  sra        $v0, $v1, 16
/* 7AAFE14 800840E4 18004900 */  mult       $v0, $t1
/* 7AAFE18 800840E8 C32F0500 */  sra        $a1, $a1, 31
/* 7AAFE1C 800840EC C31F0300 */  sra        $v1, $v1, 31
/* 7AAFE20 800840F0 43100C00 */  sra        $v0, $t4, 1
/* 7AAFE24 800840F4 23104500 */  subu       $v0, $v0, $a1
/* 7AAFE28 800840F8 00140200 */  sll        $v0, $v0, 16
/* 7AAFE2C 800840FC 03140200 */  sra        $v0, $v0, 16
/* 7AAFE30 80084100 2330C200 */  subu       $a2, $a2, $v0
/* 7AAFE34 80084104 0780053C */  lui        $a1, %hi(D_8006C644)
/* 7AAFE38 80084108 44C6A58C */  lw         $a1, %lo(D_8006C644)($a1)
/* 7AAFE3C 8008410C 10400000 */  mfhi       $t0
/* 7AAFE40 80084110 23180301 */  subu       $v1, $t0, $v1
/* 7AAFE44 80084114 001C0300 */  sll        $v1, $v1, 16
/* 7AAFE48 80084118 031C0300 */  sra        $v1, $v1, 16
/* 7AAFE4C 8008411C 2130C300 */  addu       $a2, $a2, $v1
/* 7AAFE50 80084120 100046AD */  sw         $a2, 0x10($t2)
/* 7AAFE54 80084124 0000C48D */  lw         $a0, 0x0($t6)
/* 7AAFE58 80084128 00000000 */  nop
/* 7AAFE5C 8008412C 0000828C */  lw         $v0, 0x0($a0)
/* 7AAFE60 80084130 1400848C */  lw         $a0, 0x14($a0)
/* 7AAFE64 80084134 06004380 */  lb         $v1, 0x6($v0)
/* 7AAFE68 80084138 49004291 */  lbu        $v0, 0x49($t2)
/* 7AAFE6C 8008413C 00190300 */  sll        $v1, $v1, 4
/* 7AAFE70 80084140 21208300 */  addu       $a0, $a0, $v1
/* 7AAFE74 80084144 80100200 */  sll        $v0, $v0, 2
/* 7AAFE78 80084148 0680013C */  lui        $at, %hi(D_80067556)
/* 7AAFE7C 8008414C 21082200 */  addu       $at, $at, $v0
/* 7AAFE80 80084150 56752390 */  lbu        $v1, %lo(D_80067556)($at)
/* 7AAFE84 80084154 49004291 */  lbu        $v0, 0x49($t2)
/* 7AAFE88 80084158 21208300 */  addu       $a0, $a0, $v1
/* 7AAFE8C 8008415C 21104500 */  addu       $v0, $v0, $a1
/* 7AAFE90 80084160 C0100200 */  sll        $v0, $v0, 3
/* 7AAFE94 80084164 F8014230 */  andi       $v0, $v0, 0x1F8
/* 7AAFE98 80084168 140044AD */  sw         $a0, 0x14($t2)
/* 7AAFE9C 8008416C 0680013C */  lui        $at, %hi(D_80065920)
/* 7AAFEA0 80084170 21082200 */  addu       $at, $at, $v0
/* 7AAFEA4 80084174 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 7AAFEA8 80084178 8000E724 */  addiu      $a3, $a3, 0x80
/* 7AAFEAC 8008417C 40100300 */  sll        $v0, $v1, 1
/* 7AAFEB0 80084180 21104300 */  addu       $v0, $v0, $v1
/* 7AAFEB4 80084184 43120200 */  sra        $v0, $v0, 9
/* 7AAFEB8 80084188 3C004391 */  lbu        $v1, 0x3C($t2)
/* 7AAFEBC 8008418C 2138E200 */  addu       $a3, $a3, $v0
/* 7AAFEC0 80084190 09006014 */  bnez       $v1, .Llevel_37_800841B8
/* 7AAFEC4 80084194 460047A1 */   sb        $a3, 0x46($t2)
/* 7AAFEC8 80084198 0000C28D */  lw         $v0, 0x0($t6)
/* 7AAFECC 8008419C 00000000 */  nop
/* 7AAFED0 800841A0 0000438C */  lw         $v1, 0x0($v0)
/* 7AAFED4 800841A4 00000000 */  nop
/* 7AAFED8 800841A8 07006290 */  lbu        $v0, 0x7($v1)
/* 7AAFEDC 800841AC 00000000 */  nop
/* 7AAFEE0 800841B0 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 7AAFEE4 800841B4 070062A0 */  sb         $v0, 0x7($v1)
.Llevel_37_800841B8:
/* 7AAFEE8 800841B8 2800BF8F */  lw         $ra, 0x28($sp)
/* 7AAFEEC 800841BC 3000BD27 */  addiu      $sp, $sp, 0x30
/* 7AAFEF0 800841C0 0800E003 */  jr         $ra
/* 7AAFEF4 800841C4 00000000 */   nop
.size MobyUpdate_311_level_37, . - MobyUpdate_311_level_37
