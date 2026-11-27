.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_408_level_44
/* 8B4D7F4 8007A2C4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 8B4D7F8 8007A2C8 1400B1AF */  sw         $s1, 0x14($sp)
/* 8B4D7FC 8007A2CC 21888000 */  addu       $s1, $a0, $zero
/* 8B4D800 8007A2D0 1800BFAF */  sw         $ra, 0x18($sp)
/* 8B4D804 8007A2D4 1000B0AF */  sw         $s0, 0x10($sp)
/* 8B4D808 8007A2D8 48002392 */  lbu        $v1, 0x48($s1)
/* 8B4D80C 8007A2DC 0000308E */  lw         $s0, 0x0($s1)
/* 8B4D810 8007A2E0 05006010 */  beqz       $v1, .Llevel_44_8007A2F8
/* 8B4D814 8007A2E4 01000224 */   addiu     $v0, $zero, 0x1
/* 8B4D818 8007A2E8 3D006210 */  beq        $v1, $v0, .Llevel_44_8007A3E0
/* 8B4D81C 8007A2EC 00000000 */   nop
/* 8B4D820 8007A2F0 FFE80108 */  j          .Llevel_44_8007A3FC
/* 8B4D824 8007A2F4 00000000 */   nop
.Llevel_44_8007A2F8:
/* 8B4D828 8007A2F8 36002386 */  lh         $v1, 0x36($s1)
/* 8B4D82C 8007A2FC AD020224 */  addiu      $v0, $zero, 0x2AD
/* 8B4D830 8007A300 13006214 */  bne        $v1, $v0, .Llevel_44_8007A350
/* 8B4D834 8007A304 00000000 */   nop
/* 8B4D838 8007A308 0780023C */  lui        $v0, %hi(D_8007157E)
/* 8B4D83C 8007A30C 7E154290 */  lbu        $v0, %lo(D_8007157E)($v0)
/* 8B4D840 8007A310 00000000 */  nop
/* 8B4D844 8007A314 03004014 */  bnez       $v0, .Llevel_44_8007A324
/* 8B4D848 8007A318 00000000 */   nop
/* 8B4D84C 8007A31C D4E80108 */  j          .Llevel_44_8007A350
/* 8B4D850 8007A320 020000A2 */   sb        $zero, 0x2($s0)
.Llevel_44_8007A324:
/* 8B4D854 8007A324 0680023C */  lui        $v0, %hi(D_80066FCC + 0x2E)
/* 8B4D858 8007A328 FA6F4290 */  lbu        $v0, %lo(D_80066FCC + 0x2E)($v0)
/* 8B4D85C 8007A32C 0780013C */  lui        $at, %hi(D_80070300)
/* 8B4D860 8007A330 21082200 */  addu       $at, $at, $v0
/* 8B4D864 8007A334 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 8B4D868 8007A338 00000000 */  nop
/* 8B4D86C 8007A33C 01004230 */  andi       $v0, $v0, 0x1
/* 8B4D870 8007A340 02004014 */  bnez       $v0, .Llevel_44_8007A34C
/* 8B4D874 8007A344 02000224 */   addiu     $v0, $zero, 0x2
/* 8B4D878 8007A348 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_44_8007A34C:
/* 8B4D87C 8007A34C 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_44_8007A350:
/* 8B4D880 8007A350 02000392 */  lbu        $v1, 0x2($s0)
/* 8B4D884 8007A354 02000224 */  addiu      $v0, $zero, 0x2
/* 8B4D888 8007A358 02006214 */  bne        $v1, $v0, .Llevel_44_8007A364
/* 8B4D88C 8007A35C 00000000 */   nop
/* 8B4D890 8007A360 050000A2 */  sb         $zero, 0x5($s0)
.Llevel_44_8007A364:
/* 8B4D894 8007A364 05000292 */  lbu        $v0, 0x5($s0)
/* 8B4D898 8007A368 00000000 */  nop
/* 8B4D89C 8007A36C 10004014 */  bnez       $v0, .Llevel_44_8007A3B0
/* 8B4D8A0 8007A370 21202002 */   addu      $a0, $s1, $zero
/* 8B4D8A4 8007A374 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 8B4D8A8 8007A378 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 8B4D8AC 8007A37C 00000000 */  nop
/* 8B4D8B0 8007A380 10004230 */  andi       $v0, $v0, 0x10
/* 8B4D8B4 8007A384 06004010 */  beqz       $v0, .Llevel_44_8007A3A0
/* 8B4D8B8 8007A388 00000000 */   nop
/* 8B4D8BC 8007A38C EFDE000C */  jal        func_80037BBC
/* 8B4D8C0 8007A390 21280000 */   addu      $a1, $zero, $zero
/* 8B4D8C4 8007A394 0A004014 */  bnez       $v0, .Llevel_44_8007A3C0
/* 8B4D8C8 8007A398 21202002 */   addu      $a0, $s1, $zero
/* 8B4D8CC 8007A39C 070000A2 */  sb         $zero, 0x7($s0)
.Llevel_44_8007A3A0:
/* 8B4D8D0 8007A3A0 05000292 */  lbu        $v0, 0x5($s0)
/* 8B4D8D4 8007A3A4 00000000 */  nop
/* 8B4D8D8 8007A3A8 14004010 */  beqz       $v0, .Llevel_44_8007A3FC
/* 8B4D8DC 8007A3AC 21202002 */   addu      $a0, $s1, $zero
.Llevel_44_8007A3B0:
/* 8B4D8E0 8007A3B0 EFDE000C */  jal        func_80037BBC
/* 8B4D8E4 8007A3B4 21280000 */   addu      $a1, $zero, $zero
/* 8B4D8E8 8007A3B8 07004010 */  beqz       $v0, .Llevel_44_8007A3D8
/* 8B4D8EC 8007A3BC 21202002 */   addu      $a0, $s1, $zero
.Llevel_44_8007A3C0:
/* 8B4D8F0 8007A3C0 21280000 */  addu       $a1, $zero, $zero
/* 8B4D8F4 8007A3C4 B944010C */  jal        func_800512E4
/* 8B4D8F8 8007A3C8 21300000 */   addu      $a2, $zero, $zero
/* 8B4D8FC 8007A3CC 01000224 */  addiu      $v0, $zero, 0x1
/* 8B4D900 8007A3D0 FFE80108 */  j          .Llevel_44_8007A3FC
/* 8B4D904 8007A3D4 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_44_8007A3D8:
/* 8B4D908 8007A3D8 FFE80108 */  j          .Llevel_44_8007A3FC
/* 8B4D90C 8007A3DC 070000A2 */   sb        $zero, 0x7($s0)
.Llevel_44_8007A3E0:
/* 8B4D910 8007A3E0 0780023C */  lui        $v0, %hi(D_8006E344)
/* 8B4D914 8007A3E4 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 8B4D918 8007A3E8 00000000 */  nop
/* 8B4D91C 8007A3EC 03004310 */  beq        $v0, $v1, .Llevel_44_8007A3FC
/* 8B4D920 8007A3F0 00000000 */   nop
/* 8B4D924 8007A3F4 200003AE */  sw         $v1, 0x20($s0)
/* 8B4D928 8007A3F8 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_44_8007A3FC:
/* 8B4D92C 8007A3FC 1800BF8F */  lw         $ra, 0x18($sp)
/* 8B4D930 8007A400 1400B18F */  lw         $s1, 0x14($sp)
/* 8B4D934 8007A404 1000B08F */  lw         $s0, 0x10($sp)
/* 8B4D938 8007A408 2000BD27 */  addiu      $sp, $sp, 0x20
/* 8B4D93C 8007A40C 0800E003 */  jr         $ra
/* 8B4D940 8007A410 00000000 */   nop
.size MobyUpdate_408_level_44, . - MobyUpdate_408_level_44
