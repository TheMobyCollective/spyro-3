.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_31_8007A1A8
/* 6A94ED8 8007A1A8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 6A94EDC 8007A1AC 2000B2AF */  sw         $s2, 0x20($sp)
/* 6A94EE0 8007A1B0 21908000 */  addu       $s2, $a0, $zero
/* 6A94EE4 8007A1B4 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 6A94EE8 8007A1B8 2800B4AF */  sw         $s4, 0x28($sp)
/* 6A94EEC 8007A1BC 2400B3AF */  sw         $s3, 0x24($sp)
/* 6A94EF0 8007A1C0 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 6A94EF4 8007A1C4 1800B0AF */  sw         $s0, 0x18($sp)
/* 6A94EF8 8007A1C8 0000508E */  lw         $s0, 0x0($s2)
/* 6A94EFC 8007A1CC 0780023C */  lui        $v0, %hi(D_8006C5C8)
/* 6A94F00 8007A1D0 C8C5428C */  lw         $v0, %lo(D_8006C5C8)($v0)
/* 6A94F04 8007A1D4 4000038E */  lw         $v1, 0x40($s0)
/* 6A94F08 8007A1D8 00000000 */  nop
/* 6A94F0C 8007A1DC 94006214 */  bne        $v1, $v0, .Llevel_31_8007A430
/* 6A94F10 8007A1E0 00000000 */   nop
/* 6A94F14 8007A1E4 0780143C */  lui        $s4, %hi(D_8006E480)
/* 6A94F18 8007A1E8 80E49426 */  addiu      $s4, $s4, %lo(D_8006E480)
/* 6A94F1C 8007A1EC 0000828E */  lw         $v0, 0x0($s4)
/* 6A94F20 8007A1F0 00000000 */  nop
/* 6A94F24 8007A1F4 8E004014 */  bnez       $v0, .Llevel_31_8007A430
/* 6A94F28 8007A1F8 01001324 */   addiu     $s3, $zero, 0x1
/* 6A94F2C 8007A1FC 0780033C */  lui        $v1, %hi(D_8006E344)
/* 6A94F30 8007A200 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 6A94F34 8007A204 00000000 */  nop
/* 6A94F38 8007A208 89007310 */  beq        $v1, $s3, .Llevel_31_8007A430
/* 6A94F3C 8007A20C 0F000224 */   addiu     $v0, $zero, 0xF
/* 6A94F40 8007A210 87006210 */  beq        $v1, $v0, .Llevel_31_8007A430
/* 6A94F44 8007A214 21280002 */   addu      $a1, $s0, $zero
/* 6A94F48 8007A218 0780113C */  lui        $s1, %hi(D_80070328)
/* 6A94F4C 8007A21C 28033126 */  addiu      $s1, $s1, %lo(D_80070328)
/* 6A94F50 8007A220 21202002 */  addu       $a0, $s1, $zero
/* 6A94F54 8007A224 3800078E */  lw         $a3, 0x38($s0)
/* 6A94F58 8007A228 88D8000C */  jal        func_80036220
/* 6A94F5C 8007A22C 21300000 */   addu      $a2, $zero, $zero
/* 6A94F60 8007A230 0E004010 */  beqz       $v0, .Llevel_31_8007A26C
/* 6A94F64 8007A234 00000000 */   nop
/* 6A94F68 8007A238 3000028E */  lw         $v0, 0x30($s0)
/* 6A94F6C 8007A23C 3400048E */  lw         $a0, 0x34($s0)
/* 6A94F70 8007A240 40280200 */  sll        $a1, $v0, 1
/* 6A94F74 8007A244 2128A200 */  addu       $a1, $a1, $v0
/* 6A94F78 8007A248 80280500 */  sll        $a1, $a1, 2
/* 6A94F7C 8007A24C 2328A200 */  subu       $a1, $a1, $v0
/* 6A94F80 8007A250 0780023C */  lui        $v0, %hi(D_8006C550)
/* 6A94F84 8007A254 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 6A94F88 8007A258 C0280500 */  sll        $a1, $a1, 3
/* 6A94F8C 8007A25C 464A010C */  jal        func_80052918
/* 6A94F90 8007A260 21284500 */   addu      $a1, $v0, $a1
/* 6A94F94 8007A264 0CE90108 */  j          .Llevel_31_8007A430
/* 6A94F98 8007A268 00000000 */   nop
.Llevel_31_8007A26C:
/* 6A94F9C 8007A26C 48004392 */  lbu        $v1, 0x48($s2)
/* 6A94FA0 8007A270 00000000 */  nop
/* 6A94FA4 8007A274 14007310 */  beq        $v1, $s3, .Llevel_31_8007A2C8
/* 6A94FA8 8007A278 02006228 */   slti      $v0, $v1, 0x2
/* 6A94FAC 8007A27C 05004010 */  beqz       $v0, .Llevel_31_8007A294
/* 6A94FB0 8007A280 00000000 */   nop
/* 6A94FB4 8007A284 0A006010 */  beqz       $v1, .Llevel_31_8007A2B0
/* 6A94FB8 8007A288 21202002 */   addu      $a0, $s1, $zero
/* 6A94FBC 8007A28C 0CE90108 */  j          .Llevel_31_8007A430
/* 6A94FC0 8007A290 00000000 */   nop
.Llevel_31_8007A294:
/* 6A94FC4 8007A294 02001424 */  addiu      $s4, $zero, 0x2
/* 6A94FC8 8007A298 43007410 */  beq        $v1, $s4, .Llevel_31_8007A3A8
/* 6A94FCC 8007A29C 03000224 */   addiu     $v0, $zero, 0x3
/* 6A94FD0 8007A2A0 56006210 */  beq        $v1, $v0, .Llevel_31_8007A3FC
/* 6A94FD4 8007A2A4 00000000 */   nop
/* 6A94FD8 8007A2A8 0CE90108 */  j          .Llevel_31_8007A430
/* 6A94FDC 8007A2AC 00000000 */   nop
.Llevel_31_8007A2B0:
/* 6A94FE0 8007A2B0 18000526 */  addiu      $a1, $s0, 0x18
/* 6A94FE4 8007A2B4 3C00078E */  lw         $a3, 0x3C($s0)
/* 6A94FE8 8007A2B8 88D8000C */  jal        func_80036220
/* 6A94FEC 8007A2BC 21300000 */   addu      $a2, $zero, $zero
/* 6A94FF0 8007A2C0 F8E80108 */  j          .Llevel_31_8007A3E0
/* 6A94FF4 8007A2C4 00000000 */   nop
.Llevel_31_8007A2C8:
/* 6A94FF8 8007A2C8 21202002 */  addu       $a0, $s1, $zero
/* 6A94FFC 8007A2CC 18000526 */  addiu      $a1, $s0, 0x18
/* 6A95000 8007A2D0 3C00078E */  lw         $a3, 0x3C($s0)
/* 6A95004 8007A2D4 00040624 */  addiu      $a2, $zero, 0x400
/* 6A95008 8007A2D8 88D8000C */  jal        func_80036220
/* 6A9500C 8007A2DC 0004E724 */   addiu     $a3, $a3, 0x400
/* 6A95010 8007A2E0 39004010 */  beqz       $v0, .Llevel_31_8007A3C8
/* 6A95014 8007A2E4 00000000 */   nop
/* 6A95018 8007A2E8 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 6A9501C 8007A2EC 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
/* 6A95020 8007A2F0 00000000 */  nop
/* 6A95024 8007A2F4 4E004014 */  bnez       $v0, .Llevel_31_8007A430
/* 6A95028 8007A2F8 02000324 */   addiu     $v1, $zero, 0x2
/* 6A9502C 8007A2FC 0780043C */  lui        $a0, %hi(D_8006C5C8)
/* 6A95030 8007A300 C8C5848C */  lw         $a0, %lo(D_8006C5C8)($a0)
/* 6A95034 8007A304 80000224 */  addiu      $v0, $zero, 0x80
/* 6A95038 8007A308 03008010 */  beqz       $a0, .Llevel_31_8007A318
/* 6A9503C 8007A30C 1000A2A3 */   sb        $v0, 0x10($sp)
/* 6A95040 8007A310 40100400 */  sll        $v0, $a0, 1
/* 6A95044 8007A314 02004324 */  addiu      $v1, $v0, 0x2
.Llevel_31_8007A318:
/* 6A95048 8007A318 0E000424 */  addiu      $a0, $zero, 0xE
/* 6A9504C 8007A31C 1000A527 */  addiu      $a1, $sp, 0x10
/* 6A95050 8007A320 C0180300 */  sll        $v1, $v1, 3
/* 6A95054 8007A324 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 6A95058 8007A328 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 6A9505C 8007A32C 0780013C */  lui        $at, %hi(D_80072098)
/* 6A95060 8007A330 21082300 */  addu       $at, $at, $v1
/* 6A95064 8007A334 9820308C */  lw         $s0, %lo(D_80072098)($at)
/* 6A95068 8007A338 00110200 */  sll        $v0, $v0, 4
/* 6A9506C 8007A33C 0780013C */  lui        $at, %hi(D_8006DBE8)
/* 6A95070 8007A340 21082200 */  addu       $at, $at, $v0
/* 6A95074 8007A344 E8DB228C */  lw         $v0, %lo(D_8006DBE8)($at)
/* 6A95078 8007A348 21300000 */  addu       $a2, $zero, $zero
/* 6A9507C 8007A34C 2F78010C */  jal        func_8005E0BC
/* 6A95080 8007A350 21800202 */   addu      $s0, $s0, $v0
/* 6A95084 8007A354 21200002 */  addu       $a0, $s0, $zero
/* 6A95088 8007A358 02008104 */  bgez       $a0, .Llevel_31_8007A364
/* 6A9508C 8007A35C F8FF9026 */   addiu     $s0, $s4, -0x8
/* 6A95090 8007A360 FF078424 */  addiu      $a0, $a0, 0x7FF
.Llevel_31_8007A364:
/* 6A95094 8007A364 21280002 */  addu       $a1, $s0, $zero
/* 6A95098 8007A368 0780023C */  lui        $v0, %hi(D_8006E470)
/* 6A9509C 8007A36C 70E4428C */  lw         $v0, %lo(D_8006E470)($v0)
/* 6A950A0 8007A370 C3220400 */  sra        $a0, $a0, 11
/* 6A950A4 8007A374 1B7D010C */  jal        CdIntToPos
/* 6A950A8 8007A378 21204400 */   addu      $a0, $v0, $a0
/* 6A950AC 8007A37C 02000424 */  addiu      $a0, $zero, 0x2
/* 6A950B0 8007A380 21280002 */  addu       $a1, $s0, $zero
/* 6A950B4 8007A384 2F78010C */  jal        func_8005E0BC
/* 6A950B8 8007A388 21300000 */   addu      $a2, $zero, $zero
/* 6A950BC 8007A38C 16000424 */  addiu      $a0, $zero, 0x16
/* 6A950C0 8007A390 21280000 */  addu       $a1, $zero, $zero
/* 6A950C4 8007A394 2F78010C */  jal        func_8005E0BC
/* 6A950C8 8007A398 21300000 */   addu      $a2, $zero, $zero
/* 6A950CC 8007A39C 02000224 */  addiu      $v0, $zero, 0x2
/* 6A950D0 8007A3A0 0CE90108 */  j          .Llevel_31_8007A430
/* 6A950D4 8007A3A4 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_31_8007A3A8:
/* 6A950D8 8007A3A8 21202002 */  addu       $a0, $s1, $zero
/* 6A950DC 8007A3AC 18000526 */  addiu      $a1, $s0, 0x18
/* 6A950E0 8007A3B0 3C00078E */  lw         $a3, 0x3C($s0)
/* 6A950E4 8007A3B4 00040624 */  addiu      $a2, $zero, 0x400
/* 6A950E8 8007A3B8 88D8000C */  jal        func_80036220
/* 6A950EC 8007A3BC 0004E724 */   addiu     $a3, $a3, 0x400
/* 6A950F0 8007A3C0 05004014 */  bnez       $v0, .Llevel_31_8007A3D8
/* 6A950F4 8007A3C4 00000000 */   nop
.Llevel_31_8007A3C8:
/* 6A950F8 8007A3C8 0780013C */  lui        $at, %hi(D_8006E49C)
/* 6A950FC 8007A3CC 9CE420AC */  sw         $zero, %lo(D_8006E49C)($at)
/* 6A95100 8007A3D0 0CE90108 */  j          .Llevel_31_8007A430
/* 6A95104 8007A3D4 480040A2 */   sb        $zero, 0x48($s2)
.Llevel_31_8007A3D8:
/* 6A95108 8007A3D8 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 6A9510C 8007A3DC 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
.Llevel_31_8007A3E0:
/* 6A95110 8007A3E0 00000000 */  nop
/* 6A95114 8007A3E4 12004010 */  beqz       $v0, .Llevel_31_8007A430
/* 6A95118 8007A3E8 01000224 */   addiu     $v0, $zero, 0x1
/* 6A9511C 8007A3EC 0780013C */  lui        $at, %hi(D_8006E49C)
/* 6A95120 8007A3F0 9CE433AC */  sw         $s3, %lo(D_8006E49C)($at)
/* 6A95124 8007A3F4 0CE90108 */  j          .Llevel_31_8007A430
/* 6A95128 8007A3F8 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_31_8007A3FC:
/* 6A9512C 8007A3FC 3000028E */  lw         $v0, 0x30($s0)
/* 6A95130 8007A400 3400048E */  lw         $a0, 0x34($s0)
/* 6A95134 8007A404 40280200 */  sll        $a1, $v0, 1
/* 6A95138 8007A408 2128A200 */  addu       $a1, $a1, $v0
/* 6A9513C 8007A40C 80280500 */  sll        $a1, $a1, 2
/* 6A95140 8007A410 2328A200 */  subu       $a1, $a1, $v0
/* 6A95144 8007A414 0780023C */  lui        $v0, %hi(D_8006C550)
/* 6A95148 8007A418 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 6A9514C 8007A41C C0280500 */  sll        $a1, $a1, 3
/* 6A95150 8007A420 464A010C */  jal        func_80052918
/* 6A95154 8007A424 21284500 */   addu      $a1, $v0, $a1
/* 6A95158 8007A428 0780013C */  lui        $at, %hi(D_8006C4F8)
/* 6A9515C 8007A42C F8C434AC */  sw         $s4, %lo(D_8006C4F8)($at)
.Llevel_31_8007A430:
/* 6A95160 8007A430 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 6A95164 8007A434 2800B48F */  lw         $s4, 0x28($sp)
/* 6A95168 8007A438 2400B38F */  lw         $s3, 0x24($sp)
/* 6A9516C 8007A43C 2000B28F */  lw         $s2, 0x20($sp)
/* 6A95170 8007A440 1C00B18F */  lw         $s1, 0x1C($sp)
/* 6A95174 8007A444 1800B08F */  lw         $s0, 0x18($sp)
/* 6A95178 8007A448 3000BD27 */  addiu      $sp, $sp, 0x30
/* 6A9517C 8007A44C 0800E003 */  jr         $ra
/* 6A95180 8007A450 00000000 */   nop
.size func_level_31_8007A1A8, . - func_level_31_8007A1A8
