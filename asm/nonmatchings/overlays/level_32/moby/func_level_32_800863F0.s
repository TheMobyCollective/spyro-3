.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_408_level_32
/* 6DED920 800863F0 0780023C */  lui        $v0, %hi(D_8006C640)
/* 6DED924 800863F4 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 6DED928 800863F8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 6DED92C 800863FC 1000B0AF */  sw         $s0, 0x10($sp)
/* 6DED930 80086400 21808000 */  addu       $s0, $a0, $zero
/* 6DED934 80086404 1800BFAF */  sw         $ra, 0x18($sp)
/* 6DED938 80086408 1400B1AF */  sw         $s1, 0x14($sp)
/* 6DED93C 8008640C 0000118E */  lw         $s1, 0x0($s0)
/* 6DED940 80086410 0E004014 */  bnez       $v0, .Llevel_32_8008644C
/* 6DED944 80086414 20020224 */   addiu     $v0, $zero, 0x220
/* 6DED948 80086418 36000386 */  lh         $v1, 0x36($s0)
/* 6DED94C 8008641C 00000000 */  nop
/* 6DED950 80086420 0A006214 */  bne        $v1, $v0, .Llevel_32_8008644C
/* 6DED954 80086424 00000000 */   nop
/* 6DED958 80086428 0780023C */  lui        $v0, %hi(D_8007159A)
/* 6DED95C 8008642C 9A154290 */  lbu        $v0, %lo(D_8007159A)($v0)
/* 6DED960 80086430 00000000 */  nop
/* 6DED964 80086434 05004014 */  bnez       $v0, .Llevel_32_8008644C
/* 6DED968 80086438 00000000 */   nop
/* 6DED96C 8008643C C656010C */  jal        func_80055B18
/* 6DED970 80086440 00000000 */   nop
/* 6DED974 80086444 46190208 */  j          .Llevel_32_80086518
/* 6DED978 80086448 00000000 */   nop
.Llevel_32_8008644C:
/* 6DED97C 8008644C 48000392 */  lbu        $v1, 0x48($s0)
/* 6DED980 80086450 00000000 */  nop
/* 6DED984 80086454 05006010 */  beqz       $v1, .Llevel_32_8008646C
/* 6DED988 80086458 01000224 */   addiu     $v0, $zero, 0x1
/* 6DED98C 8008645C 27006210 */  beq        $v1, $v0, .Llevel_32_800864FC
/* 6DED990 80086460 00000000 */   nop
/* 6DED994 80086464 46190208 */  j          .Llevel_32_80086518
/* 6DED998 80086468 00000000 */   nop
.Llevel_32_8008646C:
/* 6DED99C 8008646C 02002392 */  lbu        $v1, 0x2($s1)
/* 6DED9A0 80086470 02000224 */  addiu      $v0, $zero, 0x2
/* 6DED9A4 80086474 02006214 */  bne        $v1, $v0, .Llevel_32_80086480
/* 6DED9A8 80086478 00000000 */   nop
/* 6DED9AC 8008647C 050020A2 */  sb         $zero, 0x5($s1)
.Llevel_32_80086480:
/* 6DED9B0 80086480 05002292 */  lbu        $v0, 0x5($s1)
/* 6DED9B4 80086484 00000000 */  nop
/* 6DED9B8 80086488 10004014 */  bnez       $v0, .Llevel_32_800864CC
/* 6DED9BC 8008648C 21200002 */   addu      $a0, $s0, $zero
/* 6DED9C0 80086490 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 6DED9C4 80086494 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 6DED9C8 80086498 00000000 */  nop
/* 6DED9CC 8008649C 10004230 */  andi       $v0, $v0, 0x10
/* 6DED9D0 800864A0 06004010 */  beqz       $v0, .Llevel_32_800864BC
/* 6DED9D4 800864A4 00000000 */   nop
/* 6DED9D8 800864A8 EFDE000C */  jal        func_80037BBC
/* 6DED9DC 800864AC 21280000 */   addu      $a1, $zero, $zero
/* 6DED9E0 800864B0 0A004014 */  bnez       $v0, .Llevel_32_800864DC
/* 6DED9E4 800864B4 21200002 */   addu      $a0, $s0, $zero
/* 6DED9E8 800864B8 070020A2 */  sb         $zero, 0x7($s1)
.Llevel_32_800864BC:
/* 6DED9EC 800864BC 05002292 */  lbu        $v0, 0x5($s1)
/* 6DED9F0 800864C0 00000000 */  nop
/* 6DED9F4 800864C4 14004010 */  beqz       $v0, .Llevel_32_80086518
/* 6DED9F8 800864C8 21200002 */   addu      $a0, $s0, $zero
.Llevel_32_800864CC:
/* 6DED9FC 800864CC EFDE000C */  jal        func_80037BBC
/* 6DEDA00 800864D0 21280000 */   addu      $a1, $zero, $zero
/* 6DEDA04 800864D4 07004010 */  beqz       $v0, .Llevel_32_800864F4
/* 6DEDA08 800864D8 21200002 */   addu      $a0, $s0, $zero
.Llevel_32_800864DC:
/* 6DEDA0C 800864DC 21280000 */  addu       $a1, $zero, $zero
/* 6DEDA10 800864E0 B944010C */  jal        func_800512E4
/* 6DEDA14 800864E4 21300000 */   addu      $a2, $zero, $zero
/* 6DEDA18 800864E8 01000224 */  addiu      $v0, $zero, 0x1
/* 6DEDA1C 800864EC 46190208 */  j          .Llevel_32_80086518
/* 6DEDA20 800864F0 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_32_800864F4:
/* 6DEDA24 800864F4 46190208 */  j          .Llevel_32_80086518
/* 6DEDA28 800864F8 070020A2 */   sb        $zero, 0x7($s1)
.Llevel_32_800864FC:
/* 6DEDA2C 800864FC 0780023C */  lui        $v0, %hi(D_8006E344)
/* 6DEDA30 80086500 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 6DEDA34 80086504 00000000 */  nop
/* 6DEDA38 80086508 03004310 */  beq        $v0, $v1, .Llevel_32_80086518
/* 6DEDA3C 8008650C 00000000 */   nop
/* 6DEDA40 80086510 200023AE */  sw         $v1, 0x20($s1)
/* 6DEDA44 80086514 480000A2 */  sb         $zero, 0x48($s0)
.Llevel_32_80086518:
/* 6DEDA48 80086518 1800BF8F */  lw         $ra, 0x18($sp)
/* 6DEDA4C 8008651C 1400B18F */  lw         $s1, 0x14($sp)
/* 6DEDA50 80086520 1000B08F */  lw         $s0, 0x10($sp)
/* 6DEDA54 80086524 2000BD27 */  addiu      $sp, $sp, 0x20
/* 6DEDA58 80086528 0800E003 */  jr         $ra
/* 6DEDA5C 8008652C 00000000 */   nop
.size MobyUpdate_408_level_32, . - MobyUpdate_408_level_32
