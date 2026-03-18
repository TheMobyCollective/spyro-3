.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002B810
/* 1C010 8002B810 58FFBD27 */  addiu      $sp, $sp, -0xA8
/* 1C014 8002B814 8400B1AF */  sw         $s1, 0x84($sp)
/* 1C018 8002B818 21888000 */  addu       $s1, $a0, $zero
/* 1C01C 8002B81C A400BFAF */  sw         $ra, 0xA4($sp)
/* 1C020 8002B820 A000BEAF */  sw         $fp, 0xA0($sp)
/* 1C024 8002B824 9C00B7AF */  sw         $s7, 0x9C($sp)
/* 1C028 8002B828 9800B6AF */  sw         $s6, 0x98($sp)
/* 1C02C 8002B82C 9400B5AF */  sw         $s5, 0x94($sp)
/* 1C030 8002B830 9000B4AF */  sw         $s4, 0x90($sp)
/* 1C034 8002B834 8C00B3AF */  sw         $s3, 0x8C($sp)
/* 1C038 8002B838 8800B2AF */  sw         $s2, 0x88($sp)
/* 1C03C 8002B83C E442010C */  jal        func_80050B90
/* 1C040 8002B840 8000B0AF */   sw        $s0, 0x80($sp)
/* 1C044 8002B844 0780023C */  lui        $v0, %hi(D_8006C5BC)
/* 1C048 8002B848 BCC5428C */  lw         $v0, %lo(D_8006C5BC)($v0)
/* 1C04C 8002B84C 00000000 */  nop
/* 1C050 8002B850 3C004228 */  slti       $v0, $v0, 0x3C
/* 1C054 8002B854 07004010 */  beqz       $v0, .L8002B874
/* 1C058 8002B858 21982002 */   addu      $s3, $s1, $zero
/* 1C05C 8002B85C 0780033C */  lui        $v1, %hi(D_8006C58C)
/* 1C060 8002B860 8CC5638C */  lw         $v1, %lo(D_8006C58C)($v1)
/* 1C064 8002B864 01000224 */  addiu      $v0, $zero, 0x1
/* 1C068 8002B868 0780013C */  lui        $at, %hi(D_80071FB0)
/* 1C06C 8002B86C 21082300 */  addu       $at, $at, $v1
/* 1C070 8002B870 B01F22A0 */  sb         $v0, %lo(D_80071FB0)($at)
.L8002B874:
/* 1C074 8002B874 09001224 */  addiu      $s2, $zero, 0x9
/* 1C078 8002B878 0780043C */  lui        $a0, %hi(D_80071A0D)
/* 1C07C 8002B87C 0D1A8424 */  addiu      $a0, $a0, %lo(D_80071A0D)
/* 1C080 8002B880 0780033C */  lui        $v1, %hi(D_8006FA40)
/* 1C084 8002B884 40FA638C */  lw         $v1, %lo(D_8006FA40)($v1)
/* 1C088 8002B888 01000224 */  addiu      $v0, $zero, 0x1
/* 1C08C 8002B88C 0780013C */  lui        $at, %hi(D_8006C644)
/* 1C090 8002B890 44C620AC */  sw         $zero, %lo(D_8006C644)($at)
/* 1C094 8002B894 0780013C */  lui        $at, %hi(D_8006C640)
/* 1C098 8002B898 40C620AC */  sw         $zero, %lo(D_8006C640)($at)
/* 1C09C 8002B89C 0780013C */  lui        $at, %hi(D_8006C74C)
/* 1C0A0 8002B8A0 4CC720AC */  sw         $zero, %lo(D_8006C74C)($at)
/* 1C0A4 8002B8A4 0780013C */  lui        $at, %hi(D_8006C64C)
/* 1C0A8 8002B8A8 4CC620AC */  sw         $zero, %lo(D_8006C64C)($at)
/* 1C0AC 8002B8AC 0780013C */  lui        $at, %hi(D_8006C5B8)
/* 1C0B0 8002B8B0 B8C522AC */  sw         $v0, %lo(D_8006C5B8)($at)
/* 1C0B4 8002B8B4 0780013C */  lui        $at, %hi(D_8006C628)
/* 1C0B8 8002B8B8 28C620AC */  sw         $zero, %lo(D_8006C628)($at)
/* 1C0BC 8002B8BC 0780013C */  lui        $at, %hi(D_8006C6C4)
/* 1C0C0 8002B8C0 C4C620AC */  sw         $zero, %lo(D_8006C6C4)($at)
/* 1C0C4 8002B8C4 0780013C */  lui        $at, %hi(D_8006C6C8)
/* 1C0C8 8002B8C8 C8C620AC */  sw         $zero, %lo(D_8006C6C8)($at)
/* 1C0CC 8002B8CC 0780013C */  lui        $at, %hi(D_8006C6CC)
/* 1C0D0 8002B8D0 CCC620AC */  sw         $zero, %lo(D_8006C6CC)($at)
/* 1C0D4 8002B8D4 0780013C */  lui        $at, %hi(D_8006C568)
/* 1C0D8 8002B8D8 68C520AC */  sw         $zero, %lo(D_8006C568)($at)
/* 1C0DC 8002B8DC 0780013C */  lui        $at, %hi(D_8006C5E8)
/* 1C0E0 8002B8E0 E8C520AC */  sw         $zero, %lo(D_8006C5E8)($at)
/* 1C0E4 8002B8E4 0780013C */  lui        $at, %hi(D_8006C52C)
/* 1C0E8 8002B8E8 2CC520AC */  sw         $zero, %lo(D_8006C52C)($at)
/* 1C0EC 8002B8EC 0780013C */  lui        $at, %hi(D_8006C588)
/* 1C0F0 8002B8F0 88C520AC */  sw         $zero, %lo(D_8006C588)($at)
/* 1C0F4 8002B8F4 0780013C */  lui        $at, %hi(D_8006C670)
/* 1C0F8 8002B8F8 70C620A0 */  sb         $zero, %lo(D_8006C670)($at)
/* 1C0FC 8002B8FC 0780013C */  lui        $at, %hi(D_8006C748)
/* 1C100 8002B900 48C720A0 */  sb         $zero, %lo(D_8006C748)($at)
/* 1C104 8002B904 0780013C */  lui        $at, %hi(D_8006FA3C)
/* 1C108 8002B908 3CFA23AC */  sw         $v1, %lo(D_8006FA3C)($at)
.L8002B90C:
/* 1C10C 8002B90C 000080A0 */  sb         $zero, 0x0($a0)
/* 1C110 8002B910 FFFF5226 */  addiu      $s2, $s2, -0x1
/* 1C114 8002B914 FDFF4106 */  bgez       $s2, .L8002B90C
/* 1C118 8002B918 FFFF8424 */   addiu     $a0, $a0, -0x1
/* 1C11C 8002B91C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 1C120 8002B920 0780103C */  lui        $s0, %hi(D_8006D088)
/* 1C124 8002B924 88D01026 */  addiu      $s0, $s0, %lo(D_8006D088)
/* 1C128 8002B928 0780013C */  lui        $at, %hi(D_8006C590)
/* 1C12C 8002B92C 90C522AC */  sw         $v0, %lo(D_8006C590)($at)
/* 1C130 8002B930 0000028E */  lw         $v0, 0x0($s0)
/* 1C134 8002B934 0780123C */  lui        $s2, %hi(D_80070328 + 0x5C)
/* 1C138 8002B938 84035226 */  addiu      $s2, $s2, %lo(D_80070328 + 0x5C)
/* 1C13C 8002B93C 0780013C */  lui        $at, %hi(D_8006C650)
/* 1C140 8002B940 50C620AC */  sw         $zero, %lo(D_8006C650)($at)
/* 1C144 8002B944 000040AE */  sw         $zero, 0x0($s2)
/* 1C148 8002B948 0780013C */  lui        $at, %hi(D_80070328 + 0x60)
/* 1C14C 8002B94C 880320AC */  sw         $zero, %lo(D_80070328 + 0x60)($at)
/* 1C150 8002B950 0D004010 */  beqz       $v0, .L8002B988
/* 1C154 8002B954 A4FF4426 */   addiu     $a0, $s2, -0x5C
/* 1C158 8002B958 24001026 */  addiu      $s0, $s0, 0x24
/* 1C15C 8002B95C 5E3C010C */  jal        func_8004F178
/* 1C160 8002B960 21280002 */   addu      $a1, $s0, $zero
/* 1C164 8002B964 C8004426 */  addiu      $a0, $s2, 0xC8
/* 1C168 8002B968 5E3C010C */  jal        func_8004F178
/* 1C16C 8002B96C 21280002 */   addu      $a1, $s0, $zero
/* 1C170 8002B970 0780023C */  lui        $v0, %hi(D_8006D0B8)
/* 1C174 8002B974 B8D0428C */  lw         $v0, %lo(D_8006D0B8)($v0)
/* 1C178 8002B978 0780013C */  lui        $at, %hi(D_80070328 + 0x64)
/* 1C17C 8002B97C 8C0322AC */  sw         $v0, %lo(D_80070328 + 0x64)($at)
/* 1C180 8002B980 EBAE0008 */  j          .L8002BBAC
/* 1C184 8002B984 10003126 */   addiu     $s1, $s1, 0x10
.L8002B988:
/* 1C188 8002B988 0780023C */  lui        $v0, %hi(D_8006C658)
/* 1C18C 8002B98C 58C6428C */  lw         $v0, %lo(D_8006C658)($v0)
/* 1C190 8002B990 00000000 */  nop
/* 1C194 8002B994 15004010 */  beqz       $v0, .L8002B9EC
/* 1C198 8002B998 21000224 */   addiu     $v0, $zero, 0x21
/* 1C19C 8002B99C 0780033C */  lui        $v1, %hi(D_8006C5BC)
/* 1C1A0 8002B9A0 BCC5638C */  lw         $v1, %lo(D_8006C5BC)($v1)
/* 1C1A4 8002B9A4 00000000 */  nop
/* 1C1A8 8002B9A8 4C006214 */  bne        $v1, $v0, .L8002BADC
/* 1C1AC 8002B9AC 00000000 */   nop
/* 1C1B0 8002B9B0 0780023C */  lui        $v0, %hi(D_8006C5C8)
/* 1C1B4 8002B9B4 C8C5428C */  lw         $v0, %lo(D_8006C5C8)($v0)
/* 1C1B8 8002B9B8 00000000 */  nop
/* 1C1BC 8002B9BC 50004014 */  bnez       $v0, .L8002BB00
/* 1C1C0 8002B9C0 FFA70234 */   ori       $v0, $zero, 0xA7FF
/* 1C1C4 8002B9C4 0780013C */  lui        $at, %hi(D_80070328)
/* 1C1C8 8002B9C8 280322AC */  sw         $v0, %lo(D_80070328)($at)
/* 1C1CC 8002B9CC 499E0234 */  ori        $v0, $zero, 0x9E49
/* 1C1D0 8002B9D0 0780013C */  lui        $at, %hi(D_80070328 + 4)
/* 1C1D4 8002B9D4 2C0322AC */  sw         $v0, %lo(D_80070328 + 4)($at)
/* 1C1D8 8002B9D8 68150224 */  addiu      $v0, $zero, 0x1568
/* 1C1DC 8002B9DC 0780013C */  lui        $at, %hi(D_80070328 + 8)
/* 1C1E0 8002B9E0 300322AC */  sw         $v0, %lo(D_80070328 + 8)($at)
/* 1C1E4 8002B9E4 BEAE0008 */  j          .L8002BAF8
/* 1C1E8 8002B9E8 A2000224 */   addiu     $v0, $zero, 0xA2
.L8002B9EC:
/* 1C1EC 8002B9EC 0780033C */  lui        $v1, %hi(D_8006C5BC)
/* 1C1F0 8002B9F0 BCC5638C */  lw         $v1, %lo(D_8006C5BC)($v1)
/* 1C1F4 8002B9F4 12000224 */  addiu      $v0, $zero, 0x12
/* 1C1F8 8002B9F8 11006214 */  bne        $v1, $v0, .L8002BA40
/* 1C1FC 8002B9FC 00000000 */   nop
/* 1C200 8002BA00 0780023C */  lui        $v0, %hi(D_80071599)
/* 1C204 8002BA04 99154290 */  lbu        $v0, %lo(D_80071599)($v0)
/* 1C208 8002BA08 00000000 */  nop
/* 1C20C 8002BA0C 0C004010 */  beqz       $v0, .L8002BA40
/* 1C210 8002BA10 0100033C */   lui       $v1, (0x1257B >> 16)
/* 1C214 8002BA14 7B256334 */  ori        $v1, $v1, (0x1257B & 0xFFFF)
/* 1C218 8002BA18 8F6F0224 */  addiu      $v0, $zero, 0x6F8F
/* 1C21C 8002BA1C 0780013C */  lui        $at, %hi(D_80070328)
/* 1C220 8002BA20 280322AC */  sw         $v0, %lo(D_80070328)($at)
/* 1C224 8002BA24 81290224 */  addiu      $v0, $zero, 0x2981
/* 1C228 8002BA28 0780013C */  lui        $at, %hi(D_80070328 + 8)
/* 1C22C 8002BA2C 300322AC */  sw         $v0, %lo(D_80070328 + 8)($at)
/* 1C230 8002BA30 0780013C */  lui        $at, %hi(D_80070328 + 4)
/* 1C234 8002BA34 2C0323AC */  sw         $v1, %lo(D_80070328 + 4)($at)
/* 1C238 8002BA38 BEAE0008 */  j          .L8002BAF8
/* 1C23C 8002BA3C 00040224 */   addiu     $v0, $zero, 0x400
.L8002BA40:
/* 1C240 8002BA40 0780043C */  lui        $a0, %hi(D_8006C5BC)
/* 1C244 8002BA44 BCC5848C */  lw         $a0, %lo(D_8006C5BC)($a0)
/* 1C248 8002BA48 0780033C */  lui        $v1, %hi(D_8006C73C)
/* 1C24C 8002BA4C 3CC7638C */  lw         $v1, %lo(D_8006C73C)($v1)
/* 1C250 8002BA50 08008224 */  addiu      $v0, $a0, 0x8
/* 1C254 8002BA54 21006214 */  bne        $v1, $v0, .L8002BADC
/* 1C258 8002BA58 6666103C */   lui       $s0, (0x66666667 >> 16)
/* 1C25C 8002BA5C 67661036 */  ori        $s0, $s0, (0x66666667 & 0xFFFF)
/* 1C260 8002BA60 18009000 */  mult       $a0, $s0
/* 1C264 8002BA64 C3170400 */  sra        $v0, $a0, 31
/* 1C268 8002BA68 10400000 */  mfhi       $t0
/* 1C26C 8002BA6C 83180800 */  sra        $v1, $t0, 2
/* 1C270 8002BA70 23186200 */  subu       $v1, $v1, $v0
/* 1C274 8002BA74 80100300 */  sll        $v0, $v1, 2
/* 1C278 8002BA78 21104300 */  addu       $v0, $v0, $v1
/* 1C27C 8002BA7C 40100200 */  sll        $v0, $v0, 1
/* 1C280 8002BA80 16008214 */  bne        $a0, $v0, .L8002BADC
/* 1C284 8002BA84 00110300 */   sll       $v0, $v1, 4
/* 1C288 8002BA88 0780043C */  lui        $a0, %hi(D_80070328)
/* 1C28C 8002BA8C 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 1C290 8002BA90 0680053C */  lui        $a1, %hi(D_800671B8)
/* 1C294 8002BA94 B871A524 */  addiu      $a1, $a1, %lo(D_800671B8)
/* 1C298 8002BA98 5E3C010C */  jal        func_8004F178
/* 1C29C 8002BA9C 21284500 */   addu      $a1, $v0, $a1
/* 1C2A0 8002BAA0 0780033C */  lui        $v1, %hi(D_8006C5BC)
/* 1C2A4 8002BAA4 BCC5638C */  lw         $v1, %lo(D_8006C5BC)($v1)
/* 1C2A8 8002BAA8 00000000 */  nop
/* 1C2AC 8002BAAC 18007000 */  mult       $v1, $s0
/* 1C2B0 8002BAB0 C31F0300 */  sra        $v1, $v1, 31
/* 1C2B4 8002BAB4 10400000 */  mfhi       $t0
/* 1C2B8 8002BAB8 83100800 */  sra        $v0, $t0, 2
/* 1C2BC 8002BABC 23104300 */  subu       $v0, $v0, $v1
/* 1C2C0 8002BAC0 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 1C2C4 8002BAC4 00110200 */  sll        $v0, $v0, 4
/* 1C2C8 8002BAC8 0680013C */  lui        $at, %hi(D_800671D4)
/* 1C2CC 8002BACC 21082200 */  addu       $at, $at, $v0
/* 1C2D0 8002BAD0 D471228C */  lw         $v0, %lo(D_800671D4)($at)
/* 1C2D4 8002BAD4 BEAE0008 */  j          .L8002BAF8
/* 1C2D8 8002BAD8 00000000 */   nop
.L8002BADC:
/* 1C2DC 8002BADC 0780043C */  lui        $a0, %hi(D_80070328)
/* 1C2E0 8002BAE0 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 1C2E4 8002BAE4 5E3C010C */  jal        func_8004F178
/* 1C2E8 8002BAE8 21282002 */   addu      $a1, $s1, $zero
/* 1C2EC 8002BAEC 0E002292 */  lbu        $v0, 0xE($s1)
/* 1C2F0 8002BAF0 00000000 */  nop
/* 1C2F4 8002BAF4 00110200 */  sll        $v0, $v0, 4
.L8002BAF8:
/* 1C2F8 8002BAF8 0780013C */  lui        $at, %hi(D_80070328 + 0x64)
/* 1C2FC 8002BAFC 8C0322AC */  sw         $v0, %lo(D_80070328 + 0x64)($at)
.L8002BB00:
/* 1C300 8002BB00 0780123C */  lui        $s2, %hi(D_80070328 + 0x124)
/* 1C304 8002BB04 4C045226 */  addiu      $s2, $s2, %lo(D_80070328 + 0x124)
/* 1C308 8002BB08 21204002 */  addu       $a0, $s2, $zero
/* 1C30C 8002BB0C DCFE5026 */  addiu      $s0, $s2, -0x124
/* 1C310 8002BB10 5E3C010C */  jal        func_8004F178
/* 1C314 8002BB14 21280002 */   addu      $a1, $s0, $zero
/* 1C318 8002BB18 0780023C */  lui        $v0, %hi(D_8006C784)
/* 1C31C 8002BB1C 84C7428C */  lw         $v0, %lo(D_8006C784)($v0)
/* 1C320 8002BB20 00000000 */  nop
/* 1C324 8002BB24 1E004104 */  bgez       $v0, .L8002BBA0
/* 1C328 8002BB28 21200002 */   addu      $a0, $s0, $zero
/* 1C32C 8002BB2C 0780023C */  lui        $v0, %hi(D_8006C60C)
/* 1C330 8002BB30 0CC6428C */  lw         $v0, %lo(D_8006C60C)($v0)
/* 1C334 8002BB34 0680013C */  lui        $at, %hi(D_80067150)
/* 1C338 8002BB38 21082200 */  addu       $at, $at, $v0
/* 1C33C 8002BB3C 50712590 */  lbu        $a1, %lo(D_80067150)($at)
/* 1C340 8002BB40 0680023C */  lui        $v0, %hi(D_80067178)
/* 1C344 8002BB44 78714224 */  addiu      $v0, $v0, %lo(D_80067178)
/* 1C348 8002BB48 C0280500 */  sll        $a1, $a1, 3
/* 1C34C 8002BB4C 4B3D010C */  jal        func_8004F52C
/* 1C350 8002BB50 2128A200 */   addu      $a1, $a1, $v0
/* 1C354 8002BB54 21204002 */  addu       $a0, $s2, $zero
/* 1C358 8002BB58 5E3C010C */  jal        func_8004F178
/* 1C35C 8002BB5C 21280002 */   addu      $a1, $s0, $zero
/* 1C360 8002BB60 0780023C */  lui        $v0, %hi(D_8006C60C)
/* 1C364 8002BB64 0CC6428C */  lw         $v0, %lo(D_8006C60C)($v0)
/* 1C368 8002BB68 0680013C */  lui        $at, %hi(D_80067150)
/* 1C36C 8002BB6C 21082200 */  addu       $at, $at, $v0
/* 1C370 8002BB70 50712290 */  lbu        $v0, %lo(D_80067150)($at)
/* 1C374 8002BB74 0780033C */  lui        $v1, %hi(D_8006C784)
/* 1C378 8002BB78 84C7638C */  lw         $v1, %lo(D_8006C784)($v1)
/* 1C37C 8002BB7C C0100200 */  sll        $v0, $v0, 3
/* 1C380 8002BB80 0680013C */  lui        $at, %hi(D_8006717E)
/* 1C384 8002BB84 21082200 */  addu       $at, $at, $v0
/* 1C388 8002BB88 7E712284 */  lh         $v0, %lo(D_8006717E)($at)
/* 1C38C 8002BB8C 04006104 */  bgez       $v1, .L8002BBA0
/* 1C390 8002BB90 40FF42AE */   sw        $v0, -0xC0($s2)
/* 1C394 8002BB94 04000224 */  addiu      $v0, $zero, 0x4
/* 1C398 8002BB98 0780013C */  lui        $at, %hi(D_8006C784)
/* 1C39C 8002BB9C 84C722AC */  sw         $v0, %lo(D_8006C784)($at)
.L8002BBA0:
/* 1C3A0 8002BBA0 0780013C */  lui        $at, %hi(D_8006C60C)
/* 1C3A4 8002BBA4 0CC620AC */  sw         $zero, %lo(D_8006C60C)($at)
/* 1C3A8 8002BBA8 10003126 */  addiu      $s1, $s1, 0x10
.L8002BBAC:
/* 1C3AC 8002BBAC 0000228E */  lw         $v0, 0x0($s1)
/* 1C3B0 8002BBB0 0780033C */  lui        $v1, %hi(D_8006C5BC)
/* 1C3B4 8002BBB4 BCC5638C */  lw         $v1, %lo(D_8006C5BC)($v1)
/* 1C3B8 8002BBB8 04003126 */  addiu      $s1, $s1, 0x4
/* 1C3BC 8002BBBC 0780013C */  lui        $at, %hi(D_8006C79C)
/* 1C3C0 8002BBC0 9CC722AC */  sw         $v0, %lo(D_8006C79C)($at)
/* 1C3C4 8002BBC4 0000228E */  lw         $v0, 0x0($s1)
/* 1C3C8 8002BBC8 0780013C */  lui        $at, %hi(D_8006C4F4)
/* 1C3CC 8002BBCC F4C422AC */  sw         $v0, %lo(D_8006C4F4)($at)
/* 1C3D0 8002BBD0 1B006010 */  beqz       $v1, .L8002BC40
/* 1C3D4 8002BBD4 04003126 */   addiu     $s1, $s1, 0x4
/* 1C3D8 8002BBD8 0780043C */  lui        $a0, %hi(D_8007179C)
/* 1C3DC 8002BBDC 9C178424 */  addiu      $a0, $a0, %lo(D_8007179C)
/* 1C3E0 8002BBE0 21280000 */  addu       $a1, $zero, $zero
/* 1C3E4 8002BBE4 E439010C */  jal        func_8004E790
/* 1C3E8 8002BBE8 30010624 */   addiu     $a2, $zero, 0x130
/* 1C3EC 8002BBEC 0000228E */  lw         $v0, 0x0($s1)
/* 1C3F0 8002BBF0 0780013C */  lui        $at, %hi(D_800717AC)
/* 1C3F4 8002BBF4 AC1722AC */  sw         $v0, %lo(D_800717AC)($at)
/* 1C3F8 8002BBF8 0400228E */  lw         $v0, 0x4($s1)
/* 1C3FC 8002BBFC 08003126 */  addiu      $s1, $s1, 0x8
/* 1C400 8002BC00 0780013C */  lui        $at, %hi(D_800717B0)
/* 1C404 8002BC04 B01722AC */  sw         $v0, %lo(D_800717B0)($at)
/* 1C408 8002BC08 0000228E */  lw         $v0, 0x0($s1)
/* 1C40C 8002BC0C 0780013C */  lui        $at, %hi(D_8006E388)
/* 1C410 8002BC10 88E322AC */  sw         $v0, %lo(D_8006E388)($at)
/* 1C414 8002BC14 0400228E */  lw         $v0, 0x4($s1)
/* 1C418 8002BC18 08003126 */  addiu      $s1, $s1, 0x8
/* 1C41C 8002BC1C 0780013C */  lui        $at, %hi(D_8006E38C)
/* 1C420 8002BC20 8CE322AC */  sw         $v0, %lo(D_8006E38C)($at)
/* 1C424 8002BC24 0000228E */  lw         $v0, 0x0($s1)
/* 1C428 8002BC28 0400238E */  lw         $v1, 0x4($s1)
/* 1C42C 8002BC2C 08003126 */  addiu      $s1, $s1, 0x8
/* 1C430 8002BC30 0780013C */  lui        $at, %hi(D_8006C618)
/* 1C434 8002BC34 18C622AC */  sw         $v0, %lo(D_8006C618)($at)
/* 1C438 8002BC38 0780013C */  lui        $at, %hi(D_8006C61C)
/* 1C43C 8002BC3C 1CC623AC */  sw         $v1, %lo(D_8006C61C)($at)
.L8002BC40:
/* 1C440 8002BC40 0000228E */  lw         $v0, 0x0($s1)
/* 1C444 8002BC44 00000000 */  nop
/* 1C448 8002BC48 05004228 */  slti       $v0, $v0, 0x5
/* 1C44C 8002BC4C 06004014 */  bnez       $v0, .L8002BC68
/* 1C450 8002BC50 21900000 */   addu      $s2, $zero, $zero
/* 1C454 8002BC54 04002226 */  addiu      $v0, $s1, 0x4
/* 1C458 8002BC58 0780013C */  lui        $at, %hi(D_8006E340)
/* 1C45C 8002BC5C 40E322AC */  sw         $v0, %lo(D_8006E340)($at)
/* 1C460 8002BC60 B2AD000C */  jal        func_8002B6C8
/* 1C464 8002BC64 00000000 */   nop
.L8002BC68:
/* 1C468 8002BC68 0000228E */  lw         $v0, 0x0($s1)
/* 1C46C 8002BC6C 0780033C */  lui        $v1, %hi(D_8006E350)
/* 1C470 8002BC70 50E36324 */  addiu      $v1, $v1, %lo(D_8006E350)
/* 1C474 8002BC74 21A82202 */  addu       $s5, $s1, $v0
/* 1C478 8002BC78 0400A28E */  lw         $v0, 0x4($s5)
/* 1C47C 8002BC7C 0800B126 */  addiu      $s1, $s5, 0x8
/* 1C480 8002BC80 0780013C */  lui        $at, %hi(D_8006E354)
/* 1C484 8002BC84 54E331AC */  sw         $s1, %lo(D_8006E354)($at)
/* 1C488 8002BC88 0B004018 */  blez       $v0, .L8002BCB8
/* 1C48C 8002BC8C 000062AC */   sw        $v0, 0x0($v1)
.L8002BC90:
/* 1C490 8002BC90 0000228E */  lw         $v0, 0x0($s1)
/* 1C494 8002BC94 01005226 */  addiu      $s2, $s2, 0x1
/* 1C498 8002BC98 04004224 */  addiu      $v0, $v0, 0x4
/* 1C49C 8002BC9C 2110A202 */  addu       $v0, $s5, $v0
/* 1C4A0 8002BCA0 000022AE */  sw         $v0, 0x0($s1)
/* 1C4A4 8002BCA4 0000628C */  lw         $v0, 0x0($v1)
/* 1C4A8 8002BCA8 00000000 */  nop
/* 1C4AC 8002BCAC 2A104202 */  slt        $v0, $s2, $v0
/* 1C4B0 8002BCB0 F7FF4014 */  bnez       $v0, .L8002BC90
/* 1C4B4 8002BCB4 04003126 */   addiu     $s1, $s1, 0x4
.L8002BCB8:
/* 1C4B8 8002BCB8 21900000 */  addu       $s2, $zero, $zero
/* 1C4BC 8002BCBC 0000A28E */  lw         $v0, 0x0($s5)
/* 1C4C0 8002BCC0 0780033C */  lui        $v1, %hi(D_8006E358)
/* 1C4C4 8002BCC4 58E36324 */  addiu      $v1, $v1, %lo(D_8006E358)
/* 1C4C8 8002BCC8 21A8A202 */  addu       $s5, $s5, $v0
/* 1C4CC 8002BCCC 0400A28E */  lw         $v0, 0x4($s5)
/* 1C4D0 8002BCD0 0800B126 */  addiu      $s1, $s5, 0x8
/* 1C4D4 8002BCD4 0780013C */  lui        $at, %hi(D_8006E35C)
/* 1C4D8 8002BCD8 5CE331AC */  sw         $s1, %lo(D_8006E35C)($at)
/* 1C4DC 8002BCDC 0C004018 */  blez       $v0, .L8002BD10
/* 1C4E0 8002BCE0 000062AC */   sw        $v0, 0x0($v1)
.L8002BCE4:
/* 1C4E4 8002BCE4 0000228E */  lw         $v0, 0x0($s1)
/* 1C4E8 8002BCE8 01005226 */  addiu      $s2, $s2, 0x1
/* 1C4EC 8002BCEC 04004224 */  addiu      $v0, $v0, 0x4
/* 1C4F0 8002BCF0 2110A202 */  addu       $v0, $s5, $v0
/* 1C4F4 8002BCF4 000022AE */  sw         $v0, 0x0($s1)
/* 1C4F8 8002BCF8 0000628C */  lw         $v0, 0x0($v1)
/* 1C4FC 8002BCFC 00000000 */  nop
/* 1C500 8002BD00 2A104202 */  slt        $v0, $s2, $v0
/* 1C504 8002BD04 F7FF4014 */  bnez       $v0, .L8002BCE4
/* 1C508 8002BD08 04003126 */   addiu     $s1, $s1, 0x4
/* 1C50C 8002BD0C 21900000 */  addu       $s2, $zero, $zero
.L8002BD10:
/* 1C510 8002BD10 0000A28E */  lw         $v0, 0x0($s5)
/* 1C514 8002BD14 0780033C */  lui        $v1, %hi(D_8006E370)
/* 1C518 8002BD18 70E36324 */  addiu      $v1, $v1, %lo(D_8006E370)
/* 1C51C 8002BD1C 21A8A202 */  addu       $s5, $s5, $v0
/* 1C520 8002BD20 0400A28E */  lw         $v0, 0x4($s5)
/* 1C524 8002BD24 0800B126 */  addiu      $s1, $s5, 0x8
/* 1C528 8002BD28 0780013C */  lui        $at, %hi(D_8006E374)
/* 1C52C 8002BD2C 74E331AC */  sw         $s1, %lo(D_8006E374)($at)
/* 1C530 8002BD30 0B004018 */  blez       $v0, .L8002BD60
/* 1C534 8002BD34 000062AC */   sw        $v0, 0x0($v1)
.L8002BD38:
/* 1C538 8002BD38 0000228E */  lw         $v0, 0x0($s1)
/* 1C53C 8002BD3C 01005226 */  addiu      $s2, $s2, 0x1
/* 1C540 8002BD40 04004224 */  addiu      $v0, $v0, 0x4
/* 1C544 8002BD44 2110A202 */  addu       $v0, $s5, $v0
/* 1C548 8002BD48 000022AE */  sw         $v0, 0x0($s1)
/* 1C54C 8002BD4C 0000628C */  lw         $v0, 0x0($v1)
/* 1C550 8002BD50 00000000 */  nop
/* 1C554 8002BD54 2A104202 */  slt        $v0, $s2, $v0
/* 1C558 8002BD58 F7FF4014 */  bnez       $v0, .L8002BD38
/* 1C55C 8002BD5C 04003126 */   addiu     $s1, $s1, 0x4
.L8002BD60:
/* 1C560 8002BD60 21900000 */  addu       $s2, $zero, $zero
/* 1C564 8002BD64 0000A28E */  lw         $v0, 0x0($s5)
/* 1C568 8002BD68 0780033C */  lui        $v1, %hi(D_8006E360)
/* 1C56C 8002BD6C 60E36324 */  addiu      $v1, $v1, %lo(D_8006E360)
/* 1C570 8002BD70 21A8A202 */  addu       $s5, $s5, $v0
/* 1C574 8002BD74 0400A28E */  lw         $v0, 0x4($s5)
/* 1C578 8002BD78 0800B126 */  addiu      $s1, $s5, 0x8
/* 1C57C 8002BD7C 0780013C */  lui        $at, %hi(D_8006E364)
/* 1C580 8002BD80 64E331AC */  sw         $s1, %lo(D_8006E364)($at)
/* 1C584 8002BD84 0C004018 */  blez       $v0, .L8002BDB8
/* 1C588 8002BD88 000062AC */   sw        $v0, 0x0($v1)
.L8002BD8C:
/* 1C58C 8002BD8C 0000228E */  lw         $v0, 0x0($s1)
/* 1C590 8002BD90 01005226 */  addiu      $s2, $s2, 0x1
/* 1C594 8002BD94 04004224 */  addiu      $v0, $v0, 0x4
/* 1C598 8002BD98 2110A202 */  addu       $v0, $s5, $v0
/* 1C59C 8002BD9C 000022AE */  sw         $v0, 0x0($s1)
/* 1C5A0 8002BDA0 0000628C */  lw         $v0, 0x0($v1)
/* 1C5A4 8002BDA4 00000000 */  nop
/* 1C5A8 8002BDA8 2A104202 */  slt        $v0, $s2, $v0
/* 1C5AC 8002BDAC F7FF4014 */  bnez       $v0, .L8002BD8C
/* 1C5B0 8002BDB0 04003126 */   addiu     $s1, $s1, 0x4
/* 1C5B4 8002BDB4 21900000 */  addu       $s2, $zero, $zero
.L8002BDB8:
/* 1C5B8 8002BDB8 0000A28E */  lw         $v0, 0x0($s5)
/* 1C5BC 8002BDBC 0780033C */  lui        $v1, %hi(D_8006E380)
/* 1C5C0 8002BDC0 80E36324 */  addiu      $v1, $v1, %lo(D_8006E380)
/* 1C5C4 8002BDC4 21A8A202 */  addu       $s5, $s5, $v0
/* 1C5C8 8002BDC8 0400A28E */  lw         $v0, 0x4($s5)
/* 1C5CC 8002BDCC 0800B126 */  addiu      $s1, $s5, 0x8
/* 1C5D0 8002BDD0 0780013C */  lui        $at, %hi(D_8006E384)
/* 1C5D4 8002BDD4 84E331AC */  sw         $s1, %lo(D_8006E384)($at)
/* 1C5D8 8002BDD8 0B004018 */  blez       $v0, .L8002BE08
/* 1C5DC 8002BDDC 000062AC */   sw        $v0, 0x0($v1)
.L8002BDE0:
/* 1C5E0 8002BDE0 0000228E */  lw         $v0, 0x0($s1)
/* 1C5E4 8002BDE4 01005226 */  addiu      $s2, $s2, 0x1
/* 1C5E8 8002BDE8 04004224 */  addiu      $v0, $v0, 0x4
/* 1C5EC 8002BDEC 2110A202 */  addu       $v0, $s5, $v0
/* 1C5F0 8002BDF0 000022AE */  sw         $v0, 0x0($s1)
/* 1C5F4 8002BDF4 0000628C */  lw         $v0, 0x0($v1)
/* 1C5F8 8002BDF8 00000000 */  nop
/* 1C5FC 8002BDFC 2A104202 */  slt        $v0, $s2, $v0
/* 1C600 8002BE00 F7FF4014 */  bnez       $v0, .L8002BDE0
/* 1C604 8002BE04 04003126 */   addiu     $s1, $s1, 0x4
.L8002BE08:
/* 1C608 8002BE08 21900000 */  addu       $s2, $zero, $zero
/* 1C60C 8002BE0C 0000A28E */  lw         $v0, 0x0($s5)
/* 1C610 8002BE10 0780033C */  lui        $v1, %hi(D_8006E378)
/* 1C614 8002BE14 78E36324 */  addiu      $v1, $v1, %lo(D_8006E378)
/* 1C618 8002BE18 21A8A202 */  addu       $s5, $s5, $v0
/* 1C61C 8002BE1C 0400A28E */  lw         $v0, 0x4($s5)
/* 1C620 8002BE20 0800B126 */  addiu      $s1, $s5, 0x8
/* 1C624 8002BE24 0780013C */  lui        $at, %hi(D_8006E37C)
/* 1C628 8002BE28 7CE331AC */  sw         $s1, %lo(D_8006E37C)($at)
/* 1C62C 8002BE2C 0C004018 */  blez       $v0, .L8002BE60
/* 1C630 8002BE30 000062AC */   sw        $v0, 0x0($v1)
.L8002BE34:
/* 1C634 8002BE34 0000228E */  lw         $v0, 0x0($s1)
/* 1C638 8002BE38 01005226 */  addiu      $s2, $s2, 0x1
/* 1C63C 8002BE3C 04004224 */  addiu      $v0, $v0, 0x4
/* 1C640 8002BE40 2110A202 */  addu       $v0, $s5, $v0
/* 1C644 8002BE44 000022AE */  sw         $v0, 0x0($s1)
/* 1C648 8002BE48 0000628C */  lw         $v0, 0x0($v1)
/* 1C64C 8002BE4C 00000000 */  nop
/* 1C650 8002BE50 2A104202 */  slt        $v0, $s2, $v0
/* 1C654 8002BE54 F7FF4014 */  bnez       $v0, .L8002BE34
/* 1C658 8002BE58 04003126 */   addiu     $s1, $s1, 0x4
/* 1C65C 8002BE5C 21900000 */  addu       $s2, $zero, $zero
.L8002BE60:
/* 1C660 8002BE60 0000A28E */  lw         $v0, 0x0($s5)
/* 1C664 8002BE64 0780033C */  lui        $v1, %hi(D_8006E368)
/* 1C668 8002BE68 68E36324 */  addiu      $v1, $v1, %lo(D_8006E368)
/* 1C66C 8002BE6C 21A8A202 */  addu       $s5, $s5, $v0
/* 1C670 8002BE70 0400A28E */  lw         $v0, 0x4($s5)
/* 1C674 8002BE74 0800B126 */  addiu      $s1, $s5, 0x8
/* 1C678 8002BE78 0780013C */  lui        $at, %hi(D_8006E36C)
/* 1C67C 8002BE7C 6CE331AC */  sw         $s1, %lo(D_8006E36C)($at)
/* 1C680 8002BE80 0B004018 */  blez       $v0, .L8002BEB0
/* 1C684 8002BE84 000062AC */   sw        $v0, 0x0($v1)
.L8002BE88:
/* 1C688 8002BE88 0000228E */  lw         $v0, 0x0($s1)
/* 1C68C 8002BE8C 01005226 */  addiu      $s2, $s2, 0x1
/* 1C690 8002BE90 04004224 */  addiu      $v0, $v0, 0x4
/* 1C694 8002BE94 2110A202 */  addu       $v0, $s5, $v0
/* 1C698 8002BE98 000022AE */  sw         $v0, 0x0($s1)
/* 1C69C 8002BE9C 0000628C */  lw         $v0, 0x0($v1)
/* 1C6A0 8002BEA0 00000000 */  nop
/* 1C6A4 8002BEA4 2A104202 */  slt        $v0, $s2, $v0
/* 1C6A8 8002BEA8 F7FF4014 */  bnez       $v0, .L8002BE88
/* 1C6AC 8002BEAC 04003126 */   addiu     $s1, $s1, 0x4
.L8002BEB0:
/* 1C6B0 8002BEB0 0000A28E */  lw         $v0, 0x0($s5)
/* 1C6B4 8002BEB4 9C86000C */  jal        func_80021A70
/* 1C6B8 8002BEB8 2188A202 */   addu      $s1, $s5, $v0
/* 1C6BC 8002BEBC 21A82002 */  addu       $s5, $s1, $zero
/* 1C6C0 8002BEC0 0400B126 */  addiu      $s1, $s5, 0x4
/* 1C6C4 8002BEC4 21200000 */  addu       $a0, $zero, $zero
/* 1C6C8 8002BEC8 0780023C */  lui        $v0, %hi(D_8006C76C)
/* 1C6CC 8002BECC 6CC7428C */  lw         $v0, %lo(D_8006C76C)($v0)
/* 1C6D0 8002BED0 0780033C */  lui        $v1, %hi(D_80071484)
/* 1C6D4 8002BED4 84146324 */  addiu      $v1, $v1, %lo(D_80071484)
/* 1C6D8 8002BED8 80280200 */  sll        $a1, $v0, 2
.L8002BEDC:
/* 1C6DC 8002BEDC 2110A300 */  addu       $v0, $a1, $v1
/* 1C6E0 8002BEE0 000040AC */  sw         $zero, 0x0($v0)
/* 1C6E4 8002BEE4 01008424 */  addiu      $a0, $a0, 0x1
/* 1C6E8 8002BEE8 1C008228 */  slti       $v0, $a0, 0x1C
/* 1C6EC 8002BEEC FBFF4014 */  bnez       $v0, .L8002BEDC
/* 1C6F0 8002BEF0 04006324 */   addiu     $v1, $v1, 0x4
/* 1C6F4 8002BEF4 0000238E */  lw         $v1, 0x0($s1)
/* 1C6F8 8002BEF8 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 1C6FC 8002BEFC 20006210 */  beq        $v1, $v0, .L8002BF80
/* 1C700 8002BF00 00000000 */   nop
/* 1C704 8002BF04 0780063C */  lui        $a2, %hi(D_80071484)
/* 1C708 8002BF08 8414C624 */  addiu      $a2, $a2, %lo(D_80071484)
/* 1C70C 8002BF0C FFFF0524 */  addiu      $a1, $zero, -0x1
.L8002BF10:
/* 1C710 8002BF10 0000228E */  lw         $v0, 0x0($s1)
/* 1C714 8002BF14 00000000 */  nop
/* 1C718 8002BF18 21202202 */  addu       $a0, $s1, $v0
/* 1C71C 8002BF1C 04003126 */  addiu      $s1, $s1, 0x4
/* 1C720 8002BF20 0000238E */  lw         $v1, 0x0($s1)
/* 1C724 8002BF24 04003126 */  addiu      $s1, $s1, 0x4
/* 1C728 8002BF28 0780023C */  lui        $v0, %hi(D_8006C76C)
/* 1C72C 8002BF2C 6CC7428C */  lw         $v0, %lo(D_8006C76C)($v0)
/* 1C730 8002BF30 80180300 */  sll        $v1, $v1, 2
/* 1C734 8002BF34 21186600 */  addu       $v1, $v1, $a2
/* 1C738 8002BF38 80100200 */  sll        $v0, $v0, 2
/* 1C73C 8002BF3C 21104300 */  addu       $v0, $v0, $v1
/* 1C740 8002BF40 000051AC */  sw         $s1, 0x0($v0)
/* 1C744 8002BF44 0000228E */  lw         $v0, 0x0($s1)
/* 1C748 8002BF48 00000000 */  nop
/* 1C74C 8002BF4C 08004510 */  beq        $v0, $a1, .L8002BF70
/* 1C750 8002BF50 21105100 */   addu      $v0, $v0, $s1
/* 1C754 8002BF54 FFFF0324 */  addiu      $v1, $zero, -0x1
.L8002BF58:
/* 1C758 8002BF58 000022AE */  sw         $v0, 0x0($s1)
/* 1C75C 8002BF5C 04003126 */  addiu      $s1, $s1, 0x4
/* 1C760 8002BF60 0000228E */  lw         $v0, 0x0($s1)
/* 1C764 8002BF64 00000000 */  nop
/* 1C768 8002BF68 FBFF4314 */  bne        $v0, $v1, .L8002BF58
/* 1C76C 8002BF6C 21105100 */   addu      $v0, $v0, $s1
.L8002BF70:
/* 1C770 8002BF70 0000828C */  lw         $v0, 0x0($a0)
/* 1C774 8002BF74 00000000 */  nop
/* 1C778 8002BF78 E5FF4514 */  bne        $v0, $a1, .L8002BF10
/* 1C77C 8002BF7C 21888000 */   addu      $s1, $a0, $zero
.L8002BF80:
/* 1C780 8002BF80 0000A28E */  lw         $v0, 0x0($s5)
/* 1C784 8002BF84 00000000 */  nop
/* 1C788 8002BF88 21A8A202 */  addu       $s5, $s5, $v0
/* 1C78C 8002BF8C 0000A28E */  lw         $v0, 0x0($s5)
/* 1C790 8002BF90 00000000 */  nop
/* 1C794 8002BF94 05004228 */  slti       $v0, $v0, 0x5
/* 1C798 8002BF98 0B004014 */  bnez       $v0, .L8002BFC8
/* 1C79C 8002BF9C 0400A226 */   addiu     $v0, $s5, 0x4
/* 1C7A0 8002BFA0 0780013C */  lui        $at, %hi(D_8006C754)
/* 1C7A4 8002BFA4 54C722AC */  sw         $v0, %lo(D_8006C754)($at)
/* 1C7A8 8002BFA8 0000A28E */  lw         $v0, 0x0($s5)
/* 1C7AC 8002BFAC 00000000 */  nop
/* 1C7B0 8002BFB0 21A8A202 */  addu       $s5, $s5, $v0
/* 1C7B4 8002BFB4 0400A226 */  addiu      $v0, $s5, 0x4
/* 1C7B8 8002BFB8 0780013C */  lui        $at, %hi(D_8006C758)
/* 1C7BC 8002BFBC 58C722AC */  sw         $v0, %lo(D_8006C758)($at)
/* 1C7C0 8002BFC0 F6AF0008 */  j          .L8002BFD8
/* 1C7C4 8002BFC4 00000000 */   nop
.L8002BFC8:
/* 1C7C8 8002BFC8 0780013C */  lui        $at, %hi(D_8006C754)
/* 1C7CC 8002BFCC 54C720AC */  sw         $zero, %lo(D_8006C754)($at)
/* 1C7D0 8002BFD0 0780013C */  lui        $at, %hi(D_8006C758)
/* 1C7D4 8002BFD4 58C720AC */  sw         $zero, %lo(D_8006C758)($at)
.L8002BFD8:
/* 1C7D8 8002BFD8 0000A28E */  lw         $v0, 0x0($s5)
/* 1C7DC 8002BFDC 00000000 */  nop
/* 1C7E0 8002BFE0 21A8A202 */  addu       $s5, $s5, $v0
/* 1C7E4 8002BFE4 0400B126 */  addiu      $s1, $s5, 0x4
/* 1C7E8 8002BFE8 0780013C */  lui        $at, %hi(D_8006C788)
/* 1C7EC 8002BFEC 88C731AC */  sw         $s1, %lo(D_8006C788)($at)
/* 1C7F0 8002BFF0 0000A28E */  lw         $v0, 0x0($s5)
/* 1C7F4 8002BFF4 9224053C */  lui        $a1, (0x24924926 >> 16)
/* 1C7F8 8002BFF8 21A8A202 */  addu       $s5, $s5, $v0
/* 1C7FC 8002BFFC 0400B126 */  addiu      $s1, $s5, 0x4
/* 1C800 8002C000 0780013C */  lui        $at, %hi(D_8006C738)
/* 1C804 8002C004 38C731AC */  sw         $s1, %lo(D_8006C738)($at)
/* 1C808 8002C008 0000A28E */  lw         $v0, 0x0($s5)
/* 1C80C 8002C00C 2649A534 */  ori        $a1, $a1, (0x24924926 & 0xFFFF)
/* 1C810 8002C010 21A8A202 */  addu       $s5, $s5, $v0
/* 1C814 8002C014 0800B126 */  addiu      $s1, $s5, 0x8
/* 1C818 8002C018 0400B78E */  lw         $s7, 0x4($s5)
/* 1C81C 8002C01C 0800A326 */  addiu      $v1, $s5, 0x8
/* 1C820 8002C020 0780013C */  lui        $at, %hi(D_8006C550)
/* 1C824 8002C024 50C531AC */  sw         $s1, %lo(D_8006C550)($at)
/* 1C828 8002C028 0000A48E */  lw         $a0, 0x0($s5)
/* 1C82C 8002C02C 40101700 */  sll        $v0, $s7, 1
/* 1C830 8002C030 21105700 */  addu       $v0, $v0, $s7
/* 1C834 8002C034 80100200 */  sll        $v0, $v0, 2
/* 1C838 8002C038 23105700 */  subu       $v0, $v0, $s7
/* 1C83C 8002C03C C0100200 */  sll        $v0, $v0, 3
/* 1C840 8002C040 21186200 */  addu       $v1, $v1, $v0
/* 1C844 8002C044 FF000224 */  addiu      $v0, $zero, 0xFF
/* 1C848 8002C048 0780013C */  lui        $at, %hi(D_8006C704)
/* 1C84C 8002C04C 04C723AC */  sw         $v1, %lo(D_8006C704)($at)
/* 1C850 8002C050 0780013C */  lui        $at, %hi(D_8006C610)
/* 1C854 8002C054 10C623AC */  sw         $v1, %lo(D_8006C610)($at)
/* 1C858 8002C058 480062A0 */  sb         $v0, 0x48($v1)
/* 1C85C 8002C05C 0780033C */  lui        $v1, %hi(D_8006C704)
/* 1C860 8002C060 04C7638C */  lw         $v1, %lo(D_8006C704)($v1)
/* 1C864 8002C064 2188A402 */  addu       $s1, $s5, $a0
/* 1C868 8002C068 23102302 */  subu       $v0, $s1, $v1
/* 1C86C 8002C06C 02110200 */  srl        $v0, $v0, 4
/* 1C870 8002C070 19004500 */  multu      $v0, $a1
/* 1C874 8002C074 0780013C */  lui        $at, %hi(D_8006C574)
/* 1C878 8002C078 74C520AC */  sw         $zero, %lo(D_8006C574)($at)
/* 1C87C 8002C07C 10900000 */  mfhi       $s2
/* 1C880 8002C080 FFFF4226 */  addiu      $v0, $s2, -0x1
/* 1C884 8002C084 0780013C */  lui        $at, %hi(D_8006C578)
/* 1C888 8002C088 78C522AC */  sw         $v0, %lo(D_8006C578)($at)
/* 1C88C 8002C08C 40101200 */  sll        $v0, $s2, 1
/* 1C890 8002C090 21105200 */  addu       $v0, $v0, $s2
/* 1C894 8002C094 80100200 */  sll        $v0, $v0, 2
/* 1C898 8002C098 23105200 */  subu       $v0, $v0, $s2
/* 1C89C 8002C09C C0100200 */  sll        $v0, $v0, 3
/* 1C8A0 8002C0A0 21186200 */  addu       $v1, $v1, $v0
/* 1C8A4 8002C0A4 0780013C */  lui        $at, %hi(D_8006C5EC)
/* 1C8A8 8002C0A8 ECC523AC */  sw         $v1, %lo(D_8006C5EC)($at)
/* 1C8AC 8002C0AC 0780013C */  lui        $at, %hi(D_8006C728)
/* 1C8B0 8002C0B0 28C723AC */  sw         $v1, %lo(D_8006C728)($at)
/* 1C8B4 8002C0B4 0000228E */  lw         $v0, 0x0($s1)
/* 1C8B8 8002C0B8 00000000 */  nop
/* 1C8BC 8002C0BC 21A82202 */  addu       $s5, $s1, $v0
/* 1C8C0 8002C0C0 0400A28E */  lw         $v0, 0x4($s5)
/* 1C8C4 8002C0C4 0800B126 */  addiu      $s1, $s5, 0x8
/* 1C8C8 8002C0C8 0780013C */  lui        $at, %hi(D_8006C730)
/* 1C8CC 8002C0CC 30C731AC */  sw         $s1, %lo(D_8006C730)($at)
/* 1C8D0 8002C0D0 FFFF5224 */  addiu      $s2, $v0, -0x1
/* 1C8D4 8002C0D4 0780013C */  lui        $at, %hi(D_8006C580)
/* 1C8D8 8002C0D8 80C522AC */  sw         $v0, %lo(D_8006C580)($at)
/* 1C8DC 8002C0DC 08004006 */  bltz       $s2, .L8002C100
/* 1C8E0 8002C0E0 80101200 */   sll       $v0, $s2, 2
/* 1C8E4 8002C0E4 21185100 */  addu       $v1, $v0, $s1
.L8002C0E8:
/* 1C8E8 8002C0E8 0000628C */  lw         $v0, 0x0($v1)
/* 1C8EC 8002C0EC FFFF5226 */  addiu      $s2, $s2, -0x1
/* 1C8F0 8002C0F0 21105500 */  addu       $v0, $v0, $s5
/* 1C8F4 8002C0F4 000062AC */  sw         $v0, 0x0($v1)
/* 1C8F8 8002C0F8 FBFF4106 */  bgez       $s2, .L8002C0E8
/* 1C8FC 8002C0FC FCFF6324 */   addiu     $v1, $v1, -0x4
.L8002C100:
/* 1C900 8002C100 0000A28E */  lw         $v0, 0x0($s5)
/* 1C904 8002C104 21900000 */  addu       $s2, $zero, $zero
/* 1C908 8002C108 21A8A202 */  addu       $s5, $s5, $v0
/* 1C90C 8002C10C 0000A28E */  lw         $v0, 0x0($s5)
/* 1C910 8002C110 00000000 */  nop
/* 1C914 8002C114 0D004018 */  blez       $v0, .L8002C14C
/* 1C918 8002C118 0400B126 */   addiu     $s1, $s5, 0x4
.L8002C11C:
/* 1C91C 8002C11C 0000228E */  lw         $v0, 0x0($s1)
/* 1C920 8002C120 00000000 */  nop
/* 1C924 8002C124 21106202 */  addu       $v0, $s3, $v0
/* 1C928 8002C128 0000438C */  lw         $v1, 0x0($v0)
/* 1C92C 8002C12C 01005226 */  addiu      $s2, $s2, 0x1
/* 1C930 8002C130 21187300 */  addu       $v1, $v1, $s3
/* 1C934 8002C134 000043AC */  sw         $v1, 0x0($v0)
/* 1C938 8002C138 0000A28E */  lw         $v0, 0x0($s5)
/* 1C93C 8002C13C 00000000 */  nop
/* 1C940 8002C140 2A104202 */  slt        $v0, $s2, $v0
/* 1C944 8002C144 F5FF4014 */  bnez       $v0, .L8002C11C
/* 1C948 8002C148 04003126 */   addiu     $s1, $s1, 0x4
.L8002C14C:
/* 1C94C 8002C14C 21300000 */  addu       $a2, $zero, $zero
/* 1C950 8002C150 21280000 */  addu       $a1, $zero, $zero
/* 1C954 8002C154 18000424 */  addiu      $a0, $zero, 0x18
.L8002C158:
/* 1C958 8002C158 0780013C */  lui        $at, %hi(D_8007209C)
/* 1C95C 8002C15C 21082400 */  addu       $at, $at, $a0
/* 1C960 8002C160 9C20238C */  lw         $v1, %lo(D_8007209C)($at)
/* 1C964 8002C164 00000000 */  nop
/* 1C968 8002C168 2A10C300 */  slt        $v0, $a2, $v1
/* 1C96C 8002C16C 02004010 */  beqz       $v0, .L8002C178
/* 1C970 8002C170 00000000 */   nop
/* 1C974 8002C174 21306000 */  addu       $a2, $v1, $zero
.L8002C178:
/* 1C978 8002C178 0100A524 */  addiu      $a1, $a1, 0x1
/* 1C97C 8002C17C 0400A228 */  slti       $v0, $a1, 0x4
/* 1C980 8002C180 F5FF4014 */  bnez       $v0, .L8002C158
/* 1C984 8002C184 10008424 */   addiu     $a0, $a0, 0x10
/* 1C988 8002C188 0780023C */  lui        $v0, %hi(D_800722C8)
/* 1C98C 8002C18C C822428C */  lw         $v0, %lo(D_800722C8)($v0)
/* 1C990 8002C190 0780033C */  lui        $v1, %hi(D_8006C658)
/* 1C994 8002C194 58C6638C */  lw         $v1, %lo(D_8006C658)($v1)
/* 1C998 8002C198 2110C200 */  addu       $v0, $a2, $v0
/* 1C99C 8002C19C 04304424 */  addiu      $a0, $v0, 0x3004
/* 1C9A0 8002C1A0 01000224 */  addiu      $v0, $zero, 0x1
/* 1C9A4 8002C1A4 0780013C */  lui        $at, %hi(D_800722CC)
/* 1C9A8 8002C1A8 CC2224AC */  sw         $a0, %lo(D_800722CC)($at)
/* 1C9AC 8002C1AC 06006214 */  bne        $v1, $v0, .L8002C1C8
/* 1C9B0 8002C1B0 21282002 */   addu      $a1, $s1, $zero
/* 1C9B4 8002C1B4 0000268E */  lw         $a2, 0x0($s1)
/* 1C9B8 8002C1B8 00000000 */  nop
/* 1C9BC 8002C1BC C0300600 */  sll        $a2, $a2, 3
/* 1C9C0 8002C1C0 F539010C */  jal        func_8004E7D4
/* 1C9C4 8002C1C4 0400C634 */   ori       $a2, $a2, 0x4
.L8002C1C8:
/* 1C9C8 8002C1C8 2120A002 */  addu       $a0, $s5, $zero
/* 1C9CC 8002C1CC 21280000 */  addu       $a1, $zero, $zero
/* 1C9D0 8002C1D0 0780013C */  lui        $at, %hi(D_8006C7E0)
/* 1C9D4 8002C1D4 E0C735AC */  sw         $s5, %lo(D_8006C7E0)($at)
/* 1C9D8 8002C1D8 E439010C */  jal        func_8004E790
/* 1C9DC 8002C1DC 00100624 */   addiu     $a2, $zero, 0x1000
/* 1C9E0 8002C1E0 0780023C */  lui        $v0, %hi(D_8006C5BC)
/* 1C9E4 8002C1E4 BCC5428C */  lw         $v0, %lo(D_8006C5BC)($v0)
/* 1C9E8 8002C1E8 00000000 */  nop
/* 1C9EC 8002C1EC 3C004228 */  slti       $v0, $v0, 0x3C
/* 1C9F0 8002C1F0 4B014010 */  beqz       $v0, .L8002C720
/* 1C9F4 8002C1F4 00000000 */   nop
/* 1C9F8 8002C1F8 0780033C */  lui        $v1, %hi(D_8006D088)
/* 1C9FC 8002C1FC 88D06324 */  addiu      $v1, $v1, %lo(D_8006D088)
/* 1CA00 8002C200 0000628C */  lw         $v0, 0x0($v1)
/* 1CA04 8002C204 00000000 */  nop
/* 1CA08 8002C208 44004010 */  beqz       $v0, .L8002C31C
/* 1CA0C 8002C20C 2800A0AF */   sw        $zero, 0x28($sp)
/* 1CA10 8002C210 4200E01A */  blez       $s7, .L8002C31C
/* 1CA14 8002C214 21900000 */   addu      $s2, $zero, $zero
/* 1CA18 8002C218 04006724 */  addiu      $a3, $v1, 0x4
/* 1CA1C 8002C21C 0780033C */  lui        $v1, %hi(D_80071AB0)
/* 1CA20 8002C220 B01A6324 */  addiu      $v1, $v1, %lo(D_80071AB0)
/* 1CA24 8002C224 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 1CA28 8002C228 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 1CA2C 8002C22C 0780053C */  lui        $a1, %hi(D_8006C550)
/* 1CA30 8002C230 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 1CA34 8002C234 40110200 */  sll        $v0, $v0, 5
/* 1CA38 8002C238 21304300 */  addu       $a2, $v0, $v1
.L8002C23C:
/* 1CA3C 8002C23C 3B00A290 */  lbu        $v0, 0x3B($a1)
/* 1CA40 8002C240 00000000 */  nop
/* 1CA44 8002C244 31004010 */  beqz       $v0, .L8002C30C
/* 1CA48 8002C248 2100422C */   sltiu     $v0, $v0, 0x21
/* 1CA4C 8002C24C 2F004010 */  beqz       $v0, .L8002C30C
/* 1CA50 8002C250 00000000 */   nop
/* 1CA54 8002C254 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 1CA58 8002C258 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 1CA5C 8002C25C 5000A490 */  lbu        $a0, 0x50($a1)
/* 1CA60 8002C260 21104202 */  addu       $v0, $s2, $v0
/* 1CA64 8002C264 43990200 */  sra        $s3, $v0, 5
/* 1CA68 8002C268 1F005130 */  andi       $s1, $v0, 0x1F
/* 1CA6C 8002C26C FFFF8224 */  addiu      $v0, $a0, -0x1
/* 1CA70 8002C270 0200422C */  sltiu      $v0, $v0, 0x2
/* 1CA74 8002C274 0A004014 */  bnez       $v0, .L8002C2A0
/* 1CA78 8002C278 0001422A */   slti      $v0, $s2, 0x100
/* 1CA7C 8002C27C 05000224 */  addiu      $v0, $zero, 0x5
/* 1CA80 8002C280 06008210 */  beq        $a0, $v0, .L8002C29C
/* 1CA84 8002C284 0A000224 */   addiu     $v0, $zero, 0xA
/* 1CA88 8002C288 04008210 */  beq        $a0, $v0, .L8002C29C
/* 1CA8C 8002C28C 19000224 */   addiu     $v0, $zero, 0x19
/* 1CA90 8002C290 03008210 */  beq        $a0, $v0, .L8002C2A0
/* 1CA94 8002C294 0001422A */   slti      $v0, $s2, 0x100
/* 1CA98 8002C298 21200000 */  addu       $a0, $zero, $zero
.L8002C29C:
/* 1CA9C 8002C29C 0001422A */  slti       $v0, $s2, 0x100
.L8002C2A0:
/* 1CAA0 8002C2A0 12004010 */  beqz       $v0, .L8002C2EC
/* 1CAA4 8002C2A4 01001024 */   addiu     $s0, $zero, 0x1
/* 1CAA8 8002C2A8 80181300 */  sll        $v1, $s3, 2
/* 1CAAC 8002C2AC 21106700 */  addu       $v0, $v1, $a3
/* 1CAB0 8002C2B0 0000428C */  lw         $v0, 0x0($v0)
/* 1CAB4 8002C2B4 00000000 */  nop
/* 1CAB8 8002C2B8 07102202 */  srav       $v0, $v0, $s1
/* 1CABC 8002C2BC 01004230 */  andi       $v0, $v0, 0x1
/* 1CAC0 8002C2C0 0A004010 */  beqz       $v0, .L8002C2EC
/* 1CAC4 8002C2C4 00000000 */   nop
/* 1CAC8 8002C2C8 07008010 */  beqz       $a0, .L8002C2E8
/* 1CACC 8002C2CC 21106600 */   addu      $v0, $v1, $a2
/* 1CAD0 8002C2D0 0000428C */  lw         $v0, 0x0($v0)
/* 1CAD4 8002C2D4 00000000 */  nop
/* 1CAD8 8002C2D8 07102202 */  srav       $v0, $v0, $s1
/* 1CADC 8002C2DC 01004230 */  andi       $v0, $v0, 0x1
/* 1CAE0 8002C2E0 02004010 */  beqz       $v0, .L8002C2EC
/* 1CAE4 8002C2E4 00000000 */   nop
.L8002C2E8:
/* 1CAE8 8002C2E8 21800000 */  addu       $s0, $zero, $zero
.L8002C2EC:
/* 1CAEC 8002C2EC 07000012 */  beqz       $s0, .L8002C30C
/* 1CAF0 8002C2F0 01000224 */   addiu     $v0, $zero, 0x1
/* 1CAF4 8002C2F4 3B00A390 */  lbu        $v1, 0x3B($a1)
/* 1CAF8 8002C2F8 2800A88F */  lw         $t0, 0x28($sp)
/* 1CAFC 8002C2FC FFFF6324 */  addiu      $v1, $v1, -0x1
/* 1CB00 8002C300 04106200 */  sllv       $v0, $v0, $v1
/* 1CB04 8002C304 25400201 */  or         $t0, $t0, $v0
/* 1CB08 8002C308 2800A8AF */  sw         $t0, 0x28($sp)
.L8002C30C:
/* 1CB0C 8002C30C 01005226 */  addiu      $s2, $s2, 0x1
/* 1CB10 8002C310 2A105702 */  slt        $v0, $s2, $s7
/* 1CB14 8002C314 C9FF4014 */  bnez       $v0, .L8002C23C
/* 1CB18 8002C318 5800A524 */   addiu     $a1, $a1, 0x58
.L8002C31C:
/* 1CB1C 8002C31C 0001E01A */  blez       $s7, .L8002C720
/* 1CB20 8002C320 21900000 */   addu      $s2, $zero, $zero
/* 1CB24 8002C324 07801E3C */  lui        $fp, %hi(D_80071AB0)
/* 1CB28 8002C328 B01ADE27 */  addiu      $fp, $fp, %lo(D_80071AB0)
/* 1CB2C 8002C32C 21B00000 */  addu       $s6, $zero, $zero
.L8002C330:
/* 1CB30 8002C330 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 1CB34 8002C334 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 1CB38 8002C338 0780033C */  lui        $v1, %hi(D_8006C550)
/* 1CB3C 8002C33C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 1CB40 8002C340 21104202 */  addu       $v0, $s2, $v0
/* 1CB44 8002C344 43990200 */  sra        $s3, $v0, 5
/* 1CB48 8002C348 2120C302 */  addu       $a0, $s6, $v1
/* 1CB4C 8002C34C 36008384 */  lh         $v1, 0x36($a0)
/* 1CB50 8002C350 1F005130 */  andi       $s1, $v0, 0x1F
/* 1CB54 8002C354 00036228 */  slti       $v0, $v1, 0x300
/* 1CB58 8002C358 0C004010 */  beqz       $v0, .L8002C38C
/* 1CB5C 8002C35C 01001024 */   addiu     $s0, $zero, 0x1
/* 1CB60 8002C360 80100300 */  sll        $v0, $v1, 2
/* 1CB64 8002C364 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 1CB68 8002C368 21082200 */  addu       $at, $at, $v0
/* 1CB6C 8002C36C 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 1CB70 8002C370 00000000 */  nop
/* 1CB74 8002C374 05004010 */  beqz       $v0, .L8002C38C
/* 1CB78 8002C378 00000000 */   nop
/* 1CB7C 8002C37C 0957010C */  jal        func_80055C24
/* 1CB80 8002C380 00000000 */   nop
/* 1CB84 8002C384 E7B00008 */  j          .L8002C39C
/* 1CB88 8002C388 00000000 */   nop
.L8002C38C:
/* 1CB8C 8002C38C 0780043C */  lui        $a0, %hi(D_8006C550)
/* 1CB90 8002C390 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 1CB94 8002C394 4457010C */  jal        func_80055D10
/* 1CB98 8002C398 21209600 */   addu      $a0, $a0, $s6
.L8002C39C:
/* 1CB9C 8002C39C 0780023C */  lui        $v0, %hi(D_8006C550)
/* 1CBA0 8002C3A0 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 1CBA4 8002C3A4 00000000 */  nop
/* 1CBA8 8002C3A8 2110C202 */  addu       $v0, $s6, $v0
/* 1CBAC 8002C3AC 50004490 */  lbu        $a0, 0x50($v0)
/* 1CBB0 8002C3B0 00000000 */  nop
/* 1CBB4 8002C3B4 FFFF8224 */  addiu      $v0, $a0, -0x1
/* 1CBB8 8002C3B8 0200422C */  sltiu      $v0, $v0, 0x2
/* 1CBBC 8002C3BC 08004014 */  bnez       $v0, .L8002C3E0
/* 1CBC0 8002C3C0 05000224 */   addiu     $v0, $zero, 0x5
/* 1CBC4 8002C3C4 06008210 */  beq        $a0, $v0, .L8002C3E0
/* 1CBC8 8002C3C8 0A000224 */   addiu     $v0, $zero, 0xA
/* 1CBCC 8002C3CC 04008210 */  beq        $a0, $v0, .L8002C3E0
/* 1CBD0 8002C3D0 19000224 */   addiu     $v0, $zero, 0x19
/* 1CBD4 8002C3D4 02008210 */  beq        $a0, $v0, .L8002C3E0
/* 1CBD8 8002C3D8 00000000 */   nop
/* 1CBDC 8002C3DC 21200000 */  addu       $a0, $zero, $zero
.L8002C3E0:
/* 1CBE0 8002C3E0 0780023C */  lui        $v0, %hi(D_8006C550)
/* 1CBE4 8002C3E4 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 1CBE8 8002C3E8 00000000 */  nop
/* 1CBEC 8002C3EC 2128C202 */  addu       $a1, $s6, $v0
/* 1CBF0 8002C3F0 5300A290 */  lbu        $v0, 0x53($a1)
/* 1CBF4 8002C3F4 0780033C */  lui        $v1, %hi(D_8006C7C4)
/* 1CBF8 8002C3F8 C4C7638C */  lw         $v1, %lo(D_8006C7C4)($v1)
/* 1CBFC 8002C3FC 07004230 */  andi       $v0, $v0, 0x7
/* 1CC00 8002C400 07106200 */  srav       $v0, $v0, $v1
/* 1CC04 8002C404 01004230 */  andi       $v0, $v0, 0x1
/* 1CC08 8002C408 02004014 */  bnez       $v0, .L8002C414
/* 1CC0C 8002C40C FF000224 */   addiu     $v0, $zero, 0xFF
/* 1CC10 8002C410 21800000 */  addu       $s0, $zero, $zero
.L8002C414:
/* 1CC14 8002C414 3A00A2A0 */  sb         $v0, 0x3A($a1)
/* 1CC18 8002C418 0780023C */  lui        $v0, %hi(D_8006C550)
/* 1CC1C 8002C41C 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 1CC20 8002C420 00000000 */  nop
/* 1CC24 8002C424 2110C202 */  addu       $v0, $s6, $v0
/* 1CC28 8002C428 3B004390 */  lbu        $v1, 0x3B($v0)
/* 1CC2C 8002C42C 7E000224 */  addiu      $v0, $zero, 0x7E
/* 1CC30 8002C430 12006214 */  bne        $v1, $v0, .L8002C47C
/* 1CC34 8002C434 7D000224 */   addiu     $v0, $zero, 0x7D
/* 1CC38 8002C438 0001422A */  slti       $v0, $s2, 0x100
/* 1CC3C 8002C43C 44004010 */  beqz       $v0, .L8002C550
/* 1CC40 8002C440 01001024 */   addiu     $s0, $zero, 0x1
/* 1CC44 8002C444 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 1CC48 8002C448 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 1CC4C 8002C44C 80181300 */  sll        $v1, $s3, 2
/* 1CC50 8002C450 40110200 */  sll        $v0, $v0, 5
/* 1CC54 8002C454 21105E00 */  addu       $v0, $v0, $fp
/* 1CC58 8002C458 21186200 */  addu       $v1, $v1, $v0
/* 1CC5C 8002C45C 0000628C */  lw         $v0, 0x0($v1)
/* 1CC60 8002C460 00000000 */  nop
/* 1CC64 8002C464 07102202 */  srav       $v0, $v0, $s1
/* 1CC68 8002C468 01004230 */  andi       $v0, $v0, 0x1
/* 1CC6C 8002C46C 38004010 */  beqz       $v0, .L8002C550
/* 1CC70 8002C470 00000000 */   nop
/* 1CC74 8002C474 54B10008 */  j          .L8002C550
/* 1CC78 8002C478 21200000 */   addu      $a0, $zero, $zero
.L8002C47C:
/* 1CC7C 8002C47C 0C006214 */  bne        $v1, $v0, .L8002C4B0
/* 1CC80 8002C480 0001422A */   slti      $v0, $s2, 0x100
/* 1CC84 8002C484 32004010 */  beqz       $v0, .L8002C550
/* 1CC88 8002C488 80181300 */   sll       $v1, $s3, 2
/* 1CC8C 8002C48C 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 1CC90 8002C490 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 1CC94 8002C494 00000000 */  nop
/* 1CC98 8002C498 40110200 */  sll        $v0, $v0, 5
/* 1CC9C 8002C49C 21105E00 */  addu       $v0, $v0, $fp
/* 1CCA0 8002C4A0 21186200 */  addu       $v1, $v1, $v0
/* 1CCA4 8002C4A4 0000628C */  lw         $v0, 0x0($v1)
/* 1CCA8 8002C4A8 4FB10008 */  j          .L8002C53C
/* 1CCAC 8002C4AC 07102202 */   srav      $v0, $v0, $s1
.L8002C4B0:
/* 1CCB0 8002C4B0 0780023C */  lui        $v0, %hi(D_8006D088)
/* 1CCB4 8002C4B4 88D0428C */  lw         $v0, %lo(D_8006D088)($v0)
/* 1CCB8 8002C4B8 00000000 */  nop
/* 1CCBC 8002C4BC 24004010 */  beqz       $v0, .L8002C550
/* 1CCC0 8002C4C0 2100622C */   sltiu     $v0, $v1, 0x21
/* 1CCC4 8002C4C4 22004010 */  beqz       $v0, .L8002C550
/* 1CCC8 8002C4C8 FFFF6224 */   addiu     $v0, $v1, -0x1
/* 1CCCC 8002C4CC 2800A88F */  lw         $t0, 0x28($sp)
/* 1CCD0 8002C4D0 00000000 */  nop
/* 1CCD4 8002C4D4 07104800 */  srav       $v0, $t0, $v0
/* 1CCD8 8002C4D8 01004230 */  andi       $v0, $v0, 0x1
/* 1CCDC 8002C4DC 1C004014 */  bnez       $v0, .L8002C550
/* 1CCE0 8002C4E0 0001422A */   slti      $v0, $s2, 0x100
/* 1CCE4 8002C4E4 1A004010 */  beqz       $v0, .L8002C550
/* 1CCE8 8002C4E8 80181300 */   sll       $v1, $s3, 2
/* 1CCEC 8002C4EC 0780083C */  lui        $t0, %hi(D_8006D08C)
/* 1CCF0 8002C4F0 8CD00825 */  addiu      $t0, $t0, %lo(D_8006D08C)
/* 1CCF4 8002C4F4 21106800 */  addu       $v0, $v1, $t0
/* 1CCF8 8002C4F8 0000428C */  lw         $v0, 0x0($v0)
/* 1CCFC 8002C4FC 00000000 */  nop
/* 1CD00 8002C500 07102202 */  srav       $v0, $v0, $s1
/* 1CD04 8002C504 01004230 */  andi       $v0, $v0, 0x1
/* 1CD08 8002C508 11004010 */  beqz       $v0, .L8002C550
/* 1CD0C 8002C50C 00000000 */   nop
/* 1CD10 8002C510 0D008010 */  beqz       $a0, .L8002C548
/* 1CD14 8002C514 00000000 */   nop
/* 1CD18 8002C518 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 1CD1C 8002C51C 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 1CD20 8002C520 00000000 */  nop
/* 1CD24 8002C524 40110200 */  sll        $v0, $v0, 5
/* 1CD28 8002C528 21105E00 */  addu       $v0, $v0, $fp
/* 1CD2C 8002C52C 21106200 */  addu       $v0, $v1, $v0
/* 1CD30 8002C530 0000428C */  lw         $v0, 0x0($v0)
/* 1CD34 8002C534 00000000 */  nop
/* 1CD38 8002C538 07102202 */  srav       $v0, $v0, $s1
.L8002C53C:
/* 1CD3C 8002C53C 01004230 */  andi       $v0, $v0, 0x1
/* 1CD40 8002C540 03004010 */  beqz       $v0, .L8002C550
/* 1CD44 8002C544 00000000 */   nop
.L8002C548:
/* 1CD48 8002C548 21800000 */  addu       $s0, $zero, $zero
/* 1CD4C 8002C54C 21200000 */  addu       $a0, $zero, $zero
.L8002C550:
/* 1CD50 8002C550 38000016 */  bnez       $s0, .L8002C634
/* 1CD54 8002C554 80181300 */   sll       $v1, $s3, 2
/* 1CD58 8002C558 0001422A */  slti       $v0, $s2, 0x100
/* 1CD5C 8002C55C 0E004010 */  beqz       $v0, .L8002C598
/* 1CD60 8002C560 00000000 */   nop
/* 1CD64 8002C564 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 1CD68 8002C568 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 1CD6C 8002C56C 00000000 */  nop
/* 1CD70 8002C570 40110200 */  sll        $v0, $v0, 5
/* 1CD74 8002C574 21105E00 */  addu       $v0, $v0, $fp
/* 1CD78 8002C578 21186200 */  addu       $v1, $v1, $v0
/* 1CD7C 8002C57C 0000628C */  lw         $v0, 0x0($v1)
/* 1CD80 8002C580 00000000 */  nop
/* 1CD84 8002C584 07102202 */  srav       $v0, $v0, $s1
/* 1CD88 8002C588 01004230 */  andi       $v0, $v0, 0x1
/* 1CD8C 8002C58C 02004010 */  beqz       $v0, .L8002C598
/* 1CD90 8002C590 00000000 */   nop
/* 1CD94 8002C594 21200000 */  addu       $a0, $zero, $zero
.L8002C598:
/* 1CD98 8002C598 20008010 */  beqz       $a0, .L8002C61C
/* 1CD9C 8002C59C 00000000 */   nop
/* 1CDA0 8002C5A0 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 1CDA4 8002C5A4 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 1CDA8 8002C5A8 00000000 */  nop
/* 1CDAC 8002C5AC 1B004010 */  beqz       $v0, .L8002C61C
/* 1CDB0 8002C5B0 01000524 */   addiu     $a1, $zero, 0x1
/* 1CDB4 8002C5B4 0780023C */  lui        $v0, %hi(D_8006C550)
/* 1CDB8 8002C5B8 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 1CDBC 8002C5BC 21300000 */  addu       $a2, $zero, $zero
/* 1CDC0 8002C5C0 21A05600 */  addu       $s4, $v0, $s6
/* 1CDC4 8002C5C4 21208002 */  addu       $a0, $s4, $zero
/* 1CDC8 8002C5C8 0C009326 */  addiu      $s3, $s4, 0xC
/* 1CDCC 8002C5CC 9ADA000C */  jal        func_80036A68
/* 1CDD0 8002C5D0 21386002 */   addu      $a3, $s3, $zero
/* 1CDD4 8002C5D4 21884000 */  addu       $s1, $v0, $zero
/* 1CDD8 8002C5D8 10002012 */  beqz       $s1, .L8002C61C
/* 1CDDC 8002C5DC 0C003026 */   addiu     $s0, $s1, 0xC
/* 1CDE0 8002C5E0 21286002 */  addu       $a1, $s3, $zero
/* 1CDE4 8002C5E4 0000338E */  lw         $s3, 0x0($s1)
/* 1CDE8 8002C5E8 5E3C010C */  jal        func_8004F178
/* 1CDEC 8002C5EC 21200002 */   addu      $a0, $s0, $zero
/* 1CDF0 8002C5F0 21200002 */  addu       $a0, $s0, $zero
/* 1CDF4 8002C5F4 D668000C */  jal        func_8001A358
/* 1CDF8 8002C5F8 00040524 */   addiu     $a1, $zero, 0x400
/* 1CDFC 8002C5FC 02004010 */  beqz       $v0, .L8002C608
/* 1CE00 8002C600 00000000 */   nop
/* 1CE04 8002C604 140022AE */  sw         $v0, 0x14($s1)
.L8002C608:
/* 1CE08 8002C608 50008292 */  lbu        $v0, 0x50($s4)
/* 1CE0C 8002C60C 480020A2 */  sb         $zero, 0x48($s1)
/* 1CE10 8002C610 500022A2 */  sb         $v0, 0x50($s1)
/* 1CE14 8002C614 01000224 */  addiu      $v0, $zero, 0x1
/* 1CE18 8002C618 110062A2 */  sb         $v0, 0x11($s3)
.L8002C61C:
/* 1CE1C 8002C61C 0780043C */  lui        $a0, %hi(D_8006C550)
/* 1CE20 8002C620 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 1CE24 8002C624 C656010C */  jal        func_80055B18
/* 1CE28 8002C628 21209600 */   addu      $a0, $a0, $s6
/* 1CE2C 8002C62C C5B10008 */  j          .L8002C714
/* 1CE30 8002C630 01005226 */   addiu     $s2, $s2, 0x1
.L8002C634:
/* 1CE34 8002C634 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 1CE38 8002C638 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 1CE3C 8002C63C 00000000 */  nop
/* 1CE40 8002C640 40110200 */  sll        $v0, $v0, 5
/* 1CE44 8002C644 21105E00 */  addu       $v0, $v0, $fp
/* 1CE48 8002C648 21186200 */  addu       $v1, $v1, $v0
/* 1CE4C 8002C64C 0000628C */  lw         $v0, 0x0($v1)
/* 1CE50 8002C650 00000000 */  nop
/* 1CE54 8002C654 07102202 */  srav       $v0, $v0, $s1
/* 1CE58 8002C658 01004230 */  andi       $v0, $v0, 0x1
/* 1CE5C 8002C65C 06004010 */  beqz       $v0, .L8002C678
/* 1CE60 8002C660 FF000324 */   addiu     $v1, $zero, 0xFF
/* 1CE64 8002C664 0780023C */  lui        $v0, %hi(D_8006C550)
/* 1CE68 8002C668 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 1CE6C 8002C66C 00000000 */  nop
/* 1CE70 8002C670 2110C202 */  addu       $v0, $s6, $v0
/* 1CE74 8002C674 500043A0 */  sb         $v1, 0x50($v0)
.L8002C678:
/* 1CE78 8002C678 0780053C */  lui        $a1, %hi(D_8006C550)
/* 1CE7C 8002C67C 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 1CE80 8002C680 1000A427 */  addiu      $a0, $sp, 0x10
/* 1CE84 8002C684 2128B600 */  addu       $a1, $a1, $s6
/* 1CE88 8002C688 5E3C010C */  jal        func_8004F178
/* 1CE8C 8002C68C 0C00A524 */   addiu     $a1, $a1, 0xC
/* 1CE90 8002C690 1000A427 */  addiu      $a0, $sp, 0x10
/* 1CE94 8002C694 0100053C */  lui        $a1, (0x10000 >> 16)
/* 1CE98 8002C698 21300000 */  addu       $a2, $zero, $zero
/* 1CE9C 8002C69C 0780073C */  lui        $a3, %hi(D_8006C550)
/* 1CEA0 8002C6A0 50C5E78C */  lw         $a3, %lo(D_8006C550)($a3)
/* 1CEA4 8002C6A4 1800A28F */  lw         $v0, 0x18($sp)
/* 1CEA8 8002C6A8 2138F600 */  addu       $a3, $a3, $s6
/* 1CEAC 8002C6AC 00044224 */  addiu      $v0, $v0, 0x400
/* 1CEB0 8002C6B0 C468000C */  jal        func_8001A310
/* 1CEB4 8002C6B4 1800A2AF */   sw        $v0, 0x18($sp)
/* 1CEB8 8002C6B8 0780043C */  lui        $a0, %hi(D_8006C550)
/* 1CEBC 8002C6BC 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 1CEC0 8002C6C0 A758010C */  jal        func_8005629C
/* 1CEC4 8002C6C4 21209600 */   addu      $a0, $a0, $s6
/* 1CEC8 8002C6C8 0780023C */  lui        $v0, %hi(D_8006C550)
/* 1CECC 8002C6CC 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 1CED0 8002C6D0 00000000 */  nop
/* 1CED4 8002C6D4 2118C202 */  addu       $v1, $s6, $v0
/* 1CED8 8002C6D8 52006290 */  lbu        $v0, 0x52($v1)
/* 1CEDC 8002C6DC 00000000 */  nop
/* 1CEE0 8002C6E0 05004010 */  beqz       $v0, .L8002C6F8
/* 1CEE4 8002C6E4 FF000224 */   addiu     $v0, $zero, 0xFF
/* 1CEE8 8002C6E8 0780023C */  lui        $v0, %hi(D_80071928)
/* 1CEEC 8002C6EC 2819428C */  lw         $v0, %lo(D_80071928)($v0)
/* 1CEF0 8002C6F0 BFB10008 */  j          .L8002C6FC
/* 1CEF4 8002C6F4 520062A0 */   sb        $v0, 0x52($v1)
.L8002C6F8:
/* 1CEF8 8002C6F8 520062A0 */  sb         $v0, 0x52($v1)
.L8002C6FC:
/* 1CEFC 8002C6FC 0780023C */  lui        $v0, %hi(D_8006C550)
/* 1CF00 8002C700 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 1CF04 8002C704 01000324 */  addiu      $v1, $zero, 0x1
/* 1CF08 8002C708 2110C202 */  addu       $v0, $s6, $v0
/* 1CF0C 8002C70C 4D0043A0 */  sb         $v1, 0x4D($v0)
/* 1CF10 8002C710 01005226 */  addiu      $s2, $s2, 0x1
.L8002C714:
/* 1CF14 8002C714 2A105702 */  slt        $v0, $s2, $s7
/* 1CF18 8002C718 05FF4014 */  bnez       $v0, .L8002C330
/* 1CF1C 8002C71C 5800D626 */   addiu     $s6, $s6, 0x58
.L8002C720:
/* 1CF20 8002C720 0780043C */  lui        $a0, %hi(D_8006D088)
/* 1CF24 8002C724 88D08424 */  addiu      $a0, $a0, %lo(D_8006D088)
/* 1CF28 8002C728 0000828C */  lw         $v0, 0x0($a0)
/* 1CF2C 8002C72C 00000000 */  nop
/* 1CF30 8002C730 13004010 */  beqz       $v0, .L8002C780
/* 1CF34 8002C734 0E000224 */   addiu     $v0, $zero, 0xE
/* 1CF38 8002C738 46EE000C */  jal        func_8003B918
/* 1CF3C 8002C73C 00000000 */   nop
/* 1CF40 8002C740 0780033C */  lui        $v1, %hi(D_8006E344)
/* 1CF44 8002C744 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 1CF48 8002C748 0D000224 */  addiu      $v0, $zero, 0xD
/* 1CF4C 8002C74C 14006210 */  beq        $v1, $v0, .L8002C7A0
/* 1CF50 8002C750 01000224 */   addiu     $v0, $zero, 0x1
/* 1CF54 8002C754 0780033C */  lui        $v1, %hi(D_8006D8D0)
/* 1CF58 8002C758 D0D8638C */  lw         $v1, %lo(D_8006D8D0)($v1)
/* 1CF5C 8002C75C 00000000 */  nop
/* 1CF60 8002C760 05006210 */  beq        $v1, $v0, .L8002C778
/* 1CF64 8002C764 02000224 */   addiu     $v0, $zero, 0x2
/* 1CF68 8002C768 0A006210 */  beq        $v1, $v0, .L8002C794
/* 1CF6C 8002C76C 00000000 */   nop
/* 1CF70 8002C770 E8B10008 */  j          .L8002C7A0
/* 1CF74 8002C774 00000000 */   nop
.L8002C778:
/* 1CF78 8002C778 E6B10008 */  j          .L8002C798
/* 1CF7C 8002C77C 2C000424 */   addiu     $a0, $zero, 0x2C
.L8002C780:
/* 1CF80 8002C780 0780033C */  lui        $v1, %hi(D_8006C5BC)
/* 1CF84 8002C784 BCC5638C */  lw         $v1, %lo(D_8006C5BC)($v1)
/* 1CF88 8002C788 00000000 */  nop
/* 1CF8C 8002C78C 04006214 */  bne        $v1, $v0, .L8002C7A0
/* 1CF90 8002C790 00000000 */   nop
.L8002C794:
/* 1CF94 8002C794 29000424 */  addiu      $a0, $zero, 0x29
.L8002C798:
/* 1CF98 8002C798 BE2F010C */  jal        func_8004BEF8
/* 1CF9C 8002C79C 00000000 */   nop
.L8002C7A0:
/* 1CFA0 8002C7A0 0780043C */  lui        $a0, %hi(D_8006C7E0)
/* 1CFA4 8002C7A4 E0C7848C */  lw         $a0, %lo(D_8006C7E0)($a0)
/* 1CFA8 8002C7A8 DAAD000C */  jal        func_8002B768
/* 1CFAC 8002C7AC 00108424 */   addiu     $a0, $a0, 0x1000
/* 1CFB0 8002C7B0 0780023C */  lui        $v0, %hi(D_8006C658)
/* 1CFB4 8002C7B4 58C6428C */  lw         $v0, %lo(D_8006C658)($v0)
/* 1CFB8 8002C7B8 00000000 */  nop
/* 1CFBC 8002C7BC 1D004010 */  beqz       $v0, .L8002C834
/* 1CFC0 8002C7C0 00000000 */   nop
/* 1CFC4 8002C7C4 9D71010C */  jal        srand
/* 1CFC8 8002C7C8 D2040424 */   addiu     $a0, $zero, 0x4D2
/* 1CFCC 8002C7CC 0780033C */  lui        $v1, %hi(D_8006C658)
/* 1CFD0 8002C7D0 58C6638C */  lw         $v1, %lo(D_8006C658)($v1)
/* 1CFD4 8002C7D4 01000224 */  addiu      $v0, $zero, 0x1
/* 1CFD8 8002C7D8 0780013C */  lui        $at, %hi(D_8006C678)
/* 1CFDC 8002C7DC 78C622AC */  sw         $v0, %lo(D_8006C678)($at)
/* 1CFE0 8002C7E0 0A006214 */  bne        $v1, $v0, .L8002C80C
/* 1CFE4 8002C7E4 6080033C */   lui       $v1, (0x80600004 >> 16)
/* 1CFE8 8002C7E8 0780023C */  lui        $v0, %hi(D_800722CC)
/* 1CFEC 8002C7EC CC22428C */  lw         $v0, %lo(D_800722CC)($v0)
/* 1CFF0 8002C7F0 0780013C */  lui        $at, %hi(D_8006C55C)
/* 1CFF4 8002C7F4 5CC522AC */  sw         $v0, %lo(D_8006C55C)($at)
/* 1CFF8 8002C7F8 04004224 */  addiu      $v0, $v0, 0x4
/* 1CFFC 8002C7FC 0780013C */  lui        $at, %hi(D_8006C538)
/* 1D000 8002C800 38C522AC */  sw         $v0, %lo(D_8006C538)($at)
/* 1D004 8002C804 0DB20008 */  j          .L8002C834
/* 1D008 8002C808 00000000 */   nop
.L8002C80C:
/* 1D00C 8002C80C 04006334 */  ori        $v1, $v1, (0x80600004 & 0xFFFF)
/* 1D010 8002C810 6080043C */  lui        $a0, (0x80600000 >> 16)
/* 1D014 8002C814 21280000 */  addu       $a1, $zero, $zero
/* 1D018 8002C818 6080023C */  lui        $v0, (0x80600000 >> 16)
/* 1D01C 8002C81C 0780013C */  lui        $at, %hi(D_8006C55C)
/* 1D020 8002C820 5CC522AC */  sw         $v0, %lo(D_8006C55C)($at)
/* 1D024 8002C824 0780013C */  lui        $at, %hi(D_8006C538)
/* 1D028 8002C828 38C523AC */  sw         $v1, %lo(D_8006C538)($at)
/* 1D02C 8002C82C E439010C */  jal        func_8004E790
/* 1D030 8002C830 00400624 */   addiu     $a2, $zero, 0x4000
.L8002C834:
/* 1D034 8002C834 0780043C */  lui        $a0, %hi(D_8006C5BC)
/* 1D038 8002C838 BCC5848C */  lw         $a0, %lo(D_8006C5BC)($a0)
/* 1D03C 8002C83C 00000000 */  nop
/* 1D040 8002C840 3D008010 */  beqz       $a0, .L8002C938
/* 1D044 8002C844 00000000 */   nop
/* 1D048 8002C848 0780063C */  lui        $a2, %hi(SpawnMoby)
/* 1D04C 8002C84C E042C68C */  lw         $a2, %lo(SpawnMoby)($a2)
/* 1D050 8002C850 00000000 */  nop
/* 1D054 8002C854 1800C010 */  beqz       $a2, .L8002C8B8
/* 1D058 8002C858 00000000 */   nop
/* 1D05C 8002C85C 0780023C */  lui        $v0, %hi(D_8006FA38)
/* 1D060 8002C860 38FA428C */  lw         $v0, %lo(D_8006FA38)($v0)
/* 1D064 8002C864 00000000 */  nop
/* 1D068 8002C868 13004104 */  bgez       $v0, .L8002C8B8
/* 1D06C 8002C86C 6666023C */   lui       $v0, (0x66666667 >> 16)
/* 1D070 8002C870 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
/* 1D074 8002C874 18008200 */  mult       $a0, $v0
/* 1D078 8002C878 C3170400 */  sra        $v0, $a0, 31
/* 1D07C 8002C87C 10400000 */  mfhi       $t0
/* 1D080 8002C880 83180800 */  sra        $v1, $t0, 2
/* 1D084 8002C884 23186200 */  subu       $v1, $v1, $v0
/* 1D088 8002C888 80100300 */  sll        $v0, $v1, 2
/* 1D08C 8002C88C 21104300 */  addu       $v0, $v0, $v1
/* 1D090 8002C890 40100200 */  sll        $v0, $v0, 1
/* 1D094 8002C894 F8FF8324 */  addiu      $v1, $a0, -0x8
/* 1D098 8002C898 07004310 */  beq        $v0, $v1, .L8002C8B8
/* 1D09C 8002C89C 78000424 */   addiu     $a0, $zero, 0x78
/* 1D0A0 8002C8A0 09F8C000 */  jalr       $a2
/* 1D0A4 8002C8A4 21280000 */   addu      $a1, $zero, $zero
/* 1D0A8 8002C8A8 0780013C */  lui        $at, %hi(D_8006C65C)
/* 1D0AC 8002C8AC 5CC622AC */  sw         $v0, %lo(D_8006C65C)($at)
/* 1D0B0 8002C8B0 30B20008 */  j          .L8002C8C0
/* 1D0B4 8002C8B4 00000000 */   nop
.L8002C8B8:
/* 1D0B8 8002C8B8 0780013C */  lui        $at, %hi(D_8006C65C)
/* 1D0BC 8002C8BC 5CC620AC */  sw         $zero, %lo(D_8006C65C)($at)
.L8002C8C0:
/* 1D0C0 8002C8C0 0780043C */  lui        $a0, %hi(D_80068F7C)
/* 1D0C4 8002C8C4 7C8F8424 */  addiu      $a0, $a0, %lo(D_80068F7C)
/* 1D0C8 8002C8C8 EA4A000C */  jal        func_80012BA8
/* 1D0CC 8002C8CC 00000000 */   nop
/* 1D0D0 8002C8D0 0780043C */  lui        $a0, %hi(D_80072330)
/* 1D0D4 8002C8D4 30238424 */  addiu      $a0, $a0, %lo(D_80072330)
/* 1D0D8 8002C8D8 0303053C */  lui        $a1, (0x3030303 >> 16)
/* 1D0DC 8002C8DC 0303A534 */  ori        $a1, $a1, (0x3030303 & 0xFFFF)
/* 1D0E0 8002C8E0 0780023C */  lui        $v0, %hi(D_8006E33C)
/* 1D0E4 8002C8E4 3CE34290 */  lbu        $v0, %lo(D_8006E33C)($v0)
/* 1D0E8 8002C8E8 0780033C */  lui        $v1, %hi(D_8006E33D)
/* 1D0EC 8002C8EC 3DE36390 */  lbu        $v1, %lo(D_8006E33D)($v1)
/* 1D0F0 8002C8F0 0780073C */  lui        $a3, %hi(D_8006E33E)
/* 1D0F4 8002C8F4 3EE3E790 */  lbu        $a3, %lo(D_8006E33E)($a3)
/* 1D0F8 8002C8F8 0780013C */  lui        $at, %hi(D_8006E038)
/* 1D0FC 8002C8FC 38E020AC */  sw         $zero, %lo(D_8006E038)($at)
/* 1D100 8002C900 0780013C */  lui        $at, %hi(D_8006FC15)
/* 1D104 8002C904 15FC22A0 */  sb         $v0, %lo(D_8006FC15)($at)
/* 1D108 8002C908 0780013C */  lui        $at, %hi(D_8006FC16)
/* 1D10C 8002C90C 16FC23A0 */  sb         $v1, %lo(D_8006FC16)($at)
/* 1D110 8002C910 0780013C */  lui        $at, %hi(D_8006FC17)
/* 1D114 8002C914 17FC27A0 */  sb         $a3, %lo(D_8006FC17)($at)
/* 1D118 8002C918 0780013C */  lui        $at, %hi(D_8006FC89)
/* 1D11C 8002C91C 89FC22A0 */  sb         $v0, %lo(D_8006FC89)($at)
/* 1D120 8002C920 0780013C */  lui        $at, %hi(D_8006FC8A)
/* 1D124 8002C924 8AFC23A0 */  sb         $v1, %lo(D_8006FC8A)($at)
/* 1D128 8002C928 0780013C */  lui        $at, %hi(D_8006FC8B)
/* 1D12C 8002C92C 8BFC27A0 */  sb         $a3, %lo(D_8006FC8B)($at)
/* 1D130 8002C930 E439010C */  jal        func_8004E790
/* 1D134 8002C934 00010624 */   addiu     $a2, $zero, 0x100
.L8002C938:
/* 1D138 8002C938 DC9E000C */  jal        func_80027B70
/* 1D13C 8002C93C 00000000 */   nop
/* 1D140 8002C940 0780023C */  lui        $v0, %hi(D_8006C5BC)
/* 1D144 8002C944 BCC5428C */  lw         $v0, %lo(D_8006C5BC)($v0)
/* 1D148 8002C948 00000000 */  nop
/* 1D14C 8002C94C 07004010 */  beqz       $v0, .L8002C96C
/* 1D150 8002C950 00000000 */   nop
/* 1D154 8002C954 0380023C */  lui        $v0, %hi(func_8003038C)
/* 1D158 8002C958 8C034224 */  addiu      $v0, $v0, %lo(func_8003038C)
/* 1D15C 8002C95C 03004010 */  beqz       $v0, .L8002C96C
/* 1D160 8002C960 00000000 */   nop
/* 1D164 8002C964 E3C0000C */  jal        func_8003038C
/* 1D168 8002C968 00000000 */   nop
.L8002C96C:
/* 1D16C 8002C96C 0780023C */  lui        $v0, %hi(D_8006C508)
/* 1D170 8002C970 08C5428C */  lw         $v0, %lo(D_8006C508)($v0)
/* 1D174 8002C974 00000000 */  nop
/* 1D178 8002C978 11004014 */  bnez       $v0, .L8002C9C0
/* 1D17C 8002C97C 2110A002 */   addu      $v0, $s5, $zero
/* 1D180 8002C980 0780023C */  lui        $v0, %hi(D_8006C5BC)
/* 1D184 8002C984 BCC5428C */  lw         $v0, %lo(D_8006C5BC)($v0)
/* 1D188 8002C988 00000000 */  nop
/* 1D18C 8002C98C 3C004228 */  slti       $v0, $v0, 0x3C
/* 1D190 8002C990 0B004010 */  beqz       $v0, .L8002C9C0
/* 1D194 8002C994 2110A002 */   addu      $v0, $s5, $zero
/* 1D198 8002C998 0780023C */  lui        $v0, %hi(D_8006C5E0)
/* 1D19C 8002C99C E0C5428C */  lw         $v0, %lo(D_8006C5E0)($v0)
/* 1D1A0 8002C9A0 00000000 */  nop
/* 1D1A4 8002C9A4 06004010 */  beqz       $v0, .L8002C9C0
/* 1D1A8 8002C9A8 2110A002 */   addu      $v0, $s5, $zero
/* 1D1AC 8002C9AC 0780023C */  lui        $v0, %hi(D_8006C530)
/* 1D1B0 8002C9B0 30C5428C */  lw         $v0, %lo(D_8006C530)($v0)
/* 1D1B4 8002C9B4 00000000 */  nop
/* 1D1B8 8002C9B8 400040A0 */  sb         $zero, 0x40($v0)
/* 1D1BC 8002C9BC 2110A002 */  addu       $v0, $s5, $zero
.L8002C9C0:
/* 1D1C0 8002C9C0 A400BF8F */  lw         $ra, 0xA4($sp)
/* 1D1C4 8002C9C4 A000BE8F */  lw         $fp, 0xA0($sp)
/* 1D1C8 8002C9C8 9C00B78F */  lw         $s7, 0x9C($sp)
/* 1D1CC 8002C9CC 9800B68F */  lw         $s6, 0x98($sp)
/* 1D1D0 8002C9D0 9400B58F */  lw         $s5, 0x94($sp)
/* 1D1D4 8002C9D4 9000B48F */  lw         $s4, 0x90($sp)
/* 1D1D8 8002C9D8 8C00B38F */  lw         $s3, 0x8C($sp)
/* 1D1DC 8002C9DC 8800B28F */  lw         $s2, 0x88($sp)
/* 1D1E0 8002C9E0 8400B18F */  lw         $s1, 0x84($sp)
/* 1D1E4 8002C9E4 8000B08F */  lw         $s0, 0x80($sp)
/* 1D1E8 8002C9E8 A800BD27 */  addiu      $sp, $sp, 0xA8
/* 1D1EC 8002C9EC 0800E003 */  jr         $ra
/* 1D1F0 8002C9F0 00000000 */   nop
.size func_8002B810, . - func_8002B810
