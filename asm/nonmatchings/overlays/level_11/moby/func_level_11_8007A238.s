.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_11_8007A238
/* 3E1E768 8007A238 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 3E1E76C 8007A23C 2000B2AF */  sw         $s2, 0x20($sp)
/* 3E1E770 8007A240 21908000 */  addu       $s2, $a0, $zero
/* 3E1E774 8007A244 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 3E1E778 8007A248 2800B4AF */  sw         $s4, 0x28($sp)
/* 3E1E77C 8007A24C 2400B3AF */  sw         $s3, 0x24($sp)
/* 3E1E780 8007A250 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 3E1E784 8007A254 1800B0AF */  sw         $s0, 0x18($sp)
/* 3E1E788 8007A258 0000508E */  lw         $s0, 0x0($s2)
/* 3E1E78C 8007A25C 0780023C */  lui        $v0, %hi(D_8006C5C8)
/* 3E1E790 8007A260 C8C5428C */  lw         $v0, %lo(D_8006C5C8)($v0)
/* 3E1E794 8007A264 4000038E */  lw         $v1, 0x40($s0)
/* 3E1E798 8007A268 00000000 */  nop
/* 3E1E79C 8007A26C 94006214 */  bne        $v1, $v0, .Llevel_11_8007A4C0
/* 3E1E7A0 8007A270 00000000 */   nop
/* 3E1E7A4 8007A274 0780143C */  lui        $s4, %hi(D_8006E480)
/* 3E1E7A8 8007A278 80E49426 */  addiu      $s4, $s4, %lo(D_8006E480)
/* 3E1E7AC 8007A27C 0000828E */  lw         $v0, 0x0($s4)
/* 3E1E7B0 8007A280 00000000 */  nop
/* 3E1E7B4 8007A284 8E004014 */  bnez       $v0, .Llevel_11_8007A4C0
/* 3E1E7B8 8007A288 01001324 */   addiu     $s3, $zero, 0x1
/* 3E1E7BC 8007A28C 0780033C */  lui        $v1, %hi(D_8006E344)
/* 3E1E7C0 8007A290 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 3E1E7C4 8007A294 00000000 */  nop
/* 3E1E7C8 8007A298 89007310 */  beq        $v1, $s3, .Llevel_11_8007A4C0
/* 3E1E7CC 8007A29C 0F000224 */   addiu     $v0, $zero, 0xF
/* 3E1E7D0 8007A2A0 87006210 */  beq        $v1, $v0, .Llevel_11_8007A4C0
/* 3E1E7D4 8007A2A4 21280002 */   addu      $a1, $s0, $zero
/* 3E1E7D8 8007A2A8 0780113C */  lui        $s1, %hi(D_80070328)
/* 3E1E7DC 8007A2AC 28033126 */  addiu      $s1, $s1, %lo(D_80070328)
/* 3E1E7E0 8007A2B0 21202002 */  addu       $a0, $s1, $zero
/* 3E1E7E4 8007A2B4 3800078E */  lw         $a3, 0x38($s0)
/* 3E1E7E8 8007A2B8 88D8000C */  jal        func_80036220
/* 3E1E7EC 8007A2BC 21300000 */   addu      $a2, $zero, $zero
/* 3E1E7F0 8007A2C0 0E004010 */  beqz       $v0, .Llevel_11_8007A2FC
/* 3E1E7F4 8007A2C4 00000000 */   nop
/* 3E1E7F8 8007A2C8 3000028E */  lw         $v0, 0x30($s0)
/* 3E1E7FC 8007A2CC 3400048E */  lw         $a0, 0x34($s0)
/* 3E1E800 8007A2D0 40280200 */  sll        $a1, $v0, 1
/* 3E1E804 8007A2D4 2128A200 */  addu       $a1, $a1, $v0
/* 3E1E808 8007A2D8 80280500 */  sll        $a1, $a1, 2
/* 3E1E80C 8007A2DC 2328A200 */  subu       $a1, $a1, $v0
/* 3E1E810 8007A2E0 0780023C */  lui        $v0, %hi(D_8006C550)
/* 3E1E814 8007A2E4 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 3E1E818 8007A2E8 C0280500 */  sll        $a1, $a1, 3
/* 3E1E81C 8007A2EC 464A010C */  jal        func_80052918
/* 3E1E820 8007A2F0 21284500 */   addu      $a1, $v0, $a1
/* 3E1E824 8007A2F4 30E90108 */  j          .Llevel_11_8007A4C0
/* 3E1E828 8007A2F8 00000000 */   nop
.Llevel_11_8007A2FC:
/* 3E1E82C 8007A2FC 48004392 */  lbu        $v1, 0x48($s2)
/* 3E1E830 8007A300 00000000 */  nop
/* 3E1E834 8007A304 14007310 */  beq        $v1, $s3, .Llevel_11_8007A358
/* 3E1E838 8007A308 02006228 */   slti      $v0, $v1, 0x2
/* 3E1E83C 8007A30C 05004010 */  beqz       $v0, .Llevel_11_8007A324
/* 3E1E840 8007A310 00000000 */   nop
/* 3E1E844 8007A314 0A006010 */  beqz       $v1, .Llevel_11_8007A340
/* 3E1E848 8007A318 21202002 */   addu      $a0, $s1, $zero
/* 3E1E84C 8007A31C 30E90108 */  j          .Llevel_11_8007A4C0
/* 3E1E850 8007A320 00000000 */   nop
.Llevel_11_8007A324:
/* 3E1E854 8007A324 02001424 */  addiu      $s4, $zero, 0x2
/* 3E1E858 8007A328 43007410 */  beq        $v1, $s4, .Llevel_11_8007A438
/* 3E1E85C 8007A32C 03000224 */   addiu     $v0, $zero, 0x3
/* 3E1E860 8007A330 56006210 */  beq        $v1, $v0, .Llevel_11_8007A48C
/* 3E1E864 8007A334 00000000 */   nop
/* 3E1E868 8007A338 30E90108 */  j          .Llevel_11_8007A4C0
/* 3E1E86C 8007A33C 00000000 */   nop
.Llevel_11_8007A340:
/* 3E1E870 8007A340 18000526 */  addiu      $a1, $s0, 0x18
/* 3E1E874 8007A344 3C00078E */  lw         $a3, 0x3C($s0)
/* 3E1E878 8007A348 88D8000C */  jal        func_80036220
/* 3E1E87C 8007A34C 21300000 */   addu      $a2, $zero, $zero
/* 3E1E880 8007A350 1CE90108 */  j          .Llevel_11_8007A470
/* 3E1E884 8007A354 00000000 */   nop
.Llevel_11_8007A358:
/* 3E1E888 8007A358 21202002 */  addu       $a0, $s1, $zero
/* 3E1E88C 8007A35C 18000526 */  addiu      $a1, $s0, 0x18
/* 3E1E890 8007A360 3C00078E */  lw         $a3, 0x3C($s0)
/* 3E1E894 8007A364 00040624 */  addiu      $a2, $zero, 0x400
/* 3E1E898 8007A368 88D8000C */  jal        func_80036220
/* 3E1E89C 8007A36C 0004E724 */   addiu     $a3, $a3, 0x400
/* 3E1E8A0 8007A370 39004010 */  beqz       $v0, .Llevel_11_8007A458
/* 3E1E8A4 8007A374 00000000 */   nop
/* 3E1E8A8 8007A378 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 3E1E8AC 8007A37C 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
/* 3E1E8B0 8007A380 00000000 */  nop
/* 3E1E8B4 8007A384 4E004014 */  bnez       $v0, .Llevel_11_8007A4C0
/* 3E1E8B8 8007A388 02000324 */   addiu     $v1, $zero, 0x2
/* 3E1E8BC 8007A38C 0780043C */  lui        $a0, %hi(D_8006C5C8)
/* 3E1E8C0 8007A390 C8C5848C */  lw         $a0, %lo(D_8006C5C8)($a0)
/* 3E1E8C4 8007A394 80000224 */  addiu      $v0, $zero, 0x80
/* 3E1E8C8 8007A398 03008010 */  beqz       $a0, .Llevel_11_8007A3A8
/* 3E1E8CC 8007A39C 1000A2A3 */   sb        $v0, 0x10($sp)
/* 3E1E8D0 8007A3A0 40100400 */  sll        $v0, $a0, 1
/* 3E1E8D4 8007A3A4 02004324 */  addiu      $v1, $v0, 0x2
.Llevel_11_8007A3A8:
/* 3E1E8D8 8007A3A8 0E000424 */  addiu      $a0, $zero, 0xE
/* 3E1E8DC 8007A3AC 1000A527 */  addiu      $a1, $sp, 0x10
/* 3E1E8E0 8007A3B0 C0180300 */  sll        $v1, $v1, 3
/* 3E1E8E4 8007A3B4 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 3E1E8E8 8007A3B8 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 3E1E8EC 8007A3BC 0780013C */  lui        $at, %hi(D_80072098)
/* 3E1E8F0 8007A3C0 21082300 */  addu       $at, $at, $v1
/* 3E1E8F4 8007A3C4 9820308C */  lw         $s0, %lo(D_80072098)($at)
/* 3E1E8F8 8007A3C8 00110200 */  sll        $v0, $v0, 4
/* 3E1E8FC 8007A3CC 0780013C */  lui        $at, %hi(D_8006DBE8)
/* 3E1E900 8007A3D0 21082200 */  addu       $at, $at, $v0
/* 3E1E904 8007A3D4 E8DB228C */  lw         $v0, %lo(D_8006DBE8)($at)
/* 3E1E908 8007A3D8 21300000 */  addu       $a2, $zero, $zero
/* 3E1E90C 8007A3DC 2F78010C */  jal        func_8005E0BC
/* 3E1E910 8007A3E0 21800202 */   addu      $s0, $s0, $v0
/* 3E1E914 8007A3E4 21200002 */  addu       $a0, $s0, $zero
/* 3E1E918 8007A3E8 02008104 */  bgez       $a0, .Llevel_11_8007A3F4
/* 3E1E91C 8007A3EC F8FF9026 */   addiu     $s0, $s4, -0x8
/* 3E1E920 8007A3F0 FF078424 */  addiu      $a0, $a0, 0x7FF
.Llevel_11_8007A3F4:
/* 3E1E924 8007A3F4 21280002 */  addu       $a1, $s0, $zero
/* 3E1E928 8007A3F8 0780023C */  lui        $v0, %hi(D_8006E470)
/* 3E1E92C 8007A3FC 70E4428C */  lw         $v0, %lo(D_8006E470)($v0)
/* 3E1E930 8007A400 C3220400 */  sra        $a0, $a0, 11
/* 3E1E934 8007A404 1B7D010C */  jal        CdIntToPos
/* 3E1E938 8007A408 21204400 */   addu      $a0, $v0, $a0
/* 3E1E93C 8007A40C 02000424 */  addiu      $a0, $zero, 0x2
/* 3E1E940 8007A410 21280002 */  addu       $a1, $s0, $zero
/* 3E1E944 8007A414 2F78010C */  jal        func_8005E0BC
/* 3E1E948 8007A418 21300000 */   addu      $a2, $zero, $zero
/* 3E1E94C 8007A41C 16000424 */  addiu      $a0, $zero, 0x16
/* 3E1E950 8007A420 21280000 */  addu       $a1, $zero, $zero
/* 3E1E954 8007A424 2F78010C */  jal        func_8005E0BC
/* 3E1E958 8007A428 21300000 */   addu      $a2, $zero, $zero
/* 3E1E95C 8007A42C 02000224 */  addiu      $v0, $zero, 0x2
/* 3E1E960 8007A430 30E90108 */  j          .Llevel_11_8007A4C0
/* 3E1E964 8007A434 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_11_8007A438:
/* 3E1E968 8007A438 21202002 */  addu       $a0, $s1, $zero
/* 3E1E96C 8007A43C 18000526 */  addiu      $a1, $s0, 0x18
/* 3E1E970 8007A440 3C00078E */  lw         $a3, 0x3C($s0)
/* 3E1E974 8007A444 00040624 */  addiu      $a2, $zero, 0x400
/* 3E1E978 8007A448 88D8000C */  jal        func_80036220
/* 3E1E97C 8007A44C 0004E724 */   addiu     $a3, $a3, 0x400
/* 3E1E980 8007A450 05004014 */  bnez       $v0, .Llevel_11_8007A468
/* 3E1E984 8007A454 00000000 */   nop
.Llevel_11_8007A458:
/* 3E1E988 8007A458 0780013C */  lui        $at, %hi(D_8006E49C)
/* 3E1E98C 8007A45C 9CE420AC */  sw         $zero, %lo(D_8006E49C)($at)
/* 3E1E990 8007A460 30E90108 */  j          .Llevel_11_8007A4C0
/* 3E1E994 8007A464 480040A2 */   sb        $zero, 0x48($s2)
.Llevel_11_8007A468:
/* 3E1E998 8007A468 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 3E1E99C 8007A46C 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
.Llevel_11_8007A470:
/* 3E1E9A0 8007A470 00000000 */  nop
/* 3E1E9A4 8007A474 12004010 */  beqz       $v0, .Llevel_11_8007A4C0
/* 3E1E9A8 8007A478 01000224 */   addiu     $v0, $zero, 0x1
/* 3E1E9AC 8007A47C 0780013C */  lui        $at, %hi(D_8006E49C)
/* 3E1E9B0 8007A480 9CE433AC */  sw         $s3, %lo(D_8006E49C)($at)
/* 3E1E9B4 8007A484 30E90108 */  j          .Llevel_11_8007A4C0
/* 3E1E9B8 8007A488 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_11_8007A48C:
/* 3E1E9BC 8007A48C 3000028E */  lw         $v0, 0x30($s0)
/* 3E1E9C0 8007A490 3400048E */  lw         $a0, 0x34($s0)
/* 3E1E9C4 8007A494 40280200 */  sll        $a1, $v0, 1
/* 3E1E9C8 8007A498 2128A200 */  addu       $a1, $a1, $v0
/* 3E1E9CC 8007A49C 80280500 */  sll        $a1, $a1, 2
/* 3E1E9D0 8007A4A0 2328A200 */  subu       $a1, $a1, $v0
/* 3E1E9D4 8007A4A4 0780023C */  lui        $v0, %hi(D_8006C550)
/* 3E1E9D8 8007A4A8 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 3E1E9DC 8007A4AC C0280500 */  sll        $a1, $a1, 3
/* 3E1E9E0 8007A4B0 464A010C */  jal        func_80052918
/* 3E1E9E4 8007A4B4 21284500 */   addu      $a1, $v0, $a1
/* 3E1E9E8 8007A4B8 0780013C */  lui        $at, %hi(D_8006C4F8)
/* 3E1E9EC 8007A4BC F8C434AC */  sw         $s4, %lo(D_8006C4F8)($at)
.Llevel_11_8007A4C0:
/* 3E1E9F0 8007A4C0 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 3E1E9F4 8007A4C4 2800B48F */  lw         $s4, 0x28($sp)
/* 3E1E9F8 8007A4C8 2400B38F */  lw         $s3, 0x24($sp)
/* 3E1E9FC 8007A4CC 2000B28F */  lw         $s2, 0x20($sp)
/* 3E1EA00 8007A4D0 1C00B18F */  lw         $s1, 0x1C($sp)
/* 3E1EA04 8007A4D4 1800B08F */  lw         $s0, 0x18($sp)
/* 3E1EA08 8007A4D8 3000BD27 */  addiu      $sp, $sp, 0x30
/* 3E1EA0C 8007A4DC 0800E003 */  jr         $ra
/* 3E1EA10 8007A4E0 00000000 */   nop
.size func_level_11_8007A238, . - func_level_11_8007A238
