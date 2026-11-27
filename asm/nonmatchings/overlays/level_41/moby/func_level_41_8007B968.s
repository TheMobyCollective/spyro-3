.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_408_level_41
/* 8141698 8007B968 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 814169C 8007B96C 1400B1AF */  sw         $s1, 0x14($sp)
/* 81416A0 8007B970 21888000 */  addu       $s1, $a0, $zero
/* 81416A4 8007B974 1800BFAF */  sw         $ra, 0x18($sp)
/* 81416A8 8007B978 1000B0AF */  sw         $s0, 0x10($sp)
/* 81416AC 8007B97C 48002392 */  lbu        $v1, 0x48($s1)
/* 81416B0 8007B980 0000308E */  lw         $s0, 0x0($s1)
/* 81416B4 8007B984 05006010 */  beqz       $v1, .Llevel_41_8007B99C
/* 81416B8 8007B988 01000224 */   addiu     $v0, $zero, 0x1
/* 81416BC 8007B98C 3D006210 */  beq        $v1, $v0, .Llevel_41_8007BA84
/* 81416C0 8007B990 00000000 */   nop
/* 81416C4 8007B994 A8EE0108 */  j          .Llevel_41_8007BAA0
/* 81416C8 8007B998 00000000 */   nop
.Llevel_41_8007B99C:
/* 81416CC 8007B99C 36002386 */  lh         $v1, 0x36($s1)
/* 81416D0 8007B9A0 98010224 */  addiu      $v0, $zero, 0x198
/* 81416D4 8007B9A4 13006214 */  bne        $v1, $v0, .Llevel_41_8007B9F4
/* 81416D8 8007B9A8 00000000 */   nop
/* 81416DC 8007B9AC 0780023C */  lui        $v0, %hi(D_80071582)
/* 81416E0 8007B9B0 82154290 */  lbu        $v0, %lo(D_80071582)($v0)
/* 81416E4 8007B9B4 00000000 */  nop
/* 81416E8 8007B9B8 03004014 */  bnez       $v0, .Llevel_41_8007B9C8
/* 81416EC 8007B9BC 00000000 */   nop
/* 81416F0 8007B9C0 7DEE0108 */  j          .Llevel_41_8007B9F4
/* 81416F4 8007B9C4 020000A2 */   sb        $zero, 0x2($s0)
.Llevel_41_8007B9C8:
/* 81416F8 8007B9C8 0680023C */  lui        $v0, %hi(D_80066FCC + 0x24)
/* 81416FC 8007B9CC F06F4290 */  lbu        $v0, %lo(D_80066FCC + 0x24)($v0)
/* 8141700 8007B9D0 0780013C */  lui        $at, %hi(D_80070300)
/* 8141704 8007B9D4 21082200 */  addu       $at, $at, $v0
/* 8141708 8007B9D8 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 814170C 8007B9DC 00000000 */  nop
/* 8141710 8007B9E0 01004230 */  andi       $v0, $v0, 0x1
/* 8141714 8007B9E4 02004014 */  bnez       $v0, .Llevel_41_8007B9F0
/* 8141718 8007B9E8 02000224 */   addiu     $v0, $zero, 0x2
/* 814171C 8007B9EC 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_41_8007B9F0:
/* 8141720 8007B9F0 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_41_8007B9F4:
/* 8141724 8007B9F4 02000392 */  lbu        $v1, 0x2($s0)
/* 8141728 8007B9F8 02000224 */  addiu      $v0, $zero, 0x2
/* 814172C 8007B9FC 02006214 */  bne        $v1, $v0, .Llevel_41_8007BA08
/* 8141730 8007BA00 00000000 */   nop
/* 8141734 8007BA04 050000A2 */  sb         $zero, 0x5($s0)
.Llevel_41_8007BA08:
/* 8141738 8007BA08 05000292 */  lbu        $v0, 0x5($s0)
/* 814173C 8007BA0C 00000000 */  nop
/* 8141740 8007BA10 10004014 */  bnez       $v0, .Llevel_41_8007BA54
/* 8141744 8007BA14 21202002 */   addu      $a0, $s1, $zero
/* 8141748 8007BA18 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 814174C 8007BA1C 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 8141750 8007BA20 00000000 */  nop
/* 8141754 8007BA24 10004230 */  andi       $v0, $v0, 0x10
/* 8141758 8007BA28 06004010 */  beqz       $v0, .Llevel_41_8007BA44
/* 814175C 8007BA2C 00000000 */   nop
/* 8141760 8007BA30 EFDE000C */  jal        func_80037BBC
/* 8141764 8007BA34 21280000 */   addu      $a1, $zero, $zero
/* 8141768 8007BA38 0A004014 */  bnez       $v0, .Llevel_41_8007BA64
/* 814176C 8007BA3C 21202002 */   addu      $a0, $s1, $zero
/* 8141770 8007BA40 070000A2 */  sb         $zero, 0x7($s0)
.Llevel_41_8007BA44:
/* 8141774 8007BA44 05000292 */  lbu        $v0, 0x5($s0)
/* 8141778 8007BA48 00000000 */  nop
/* 814177C 8007BA4C 14004010 */  beqz       $v0, .Llevel_41_8007BAA0
/* 8141780 8007BA50 21202002 */   addu      $a0, $s1, $zero
.Llevel_41_8007BA54:
/* 8141784 8007BA54 EFDE000C */  jal        func_80037BBC
/* 8141788 8007BA58 21280000 */   addu      $a1, $zero, $zero
/* 814178C 8007BA5C 07004010 */  beqz       $v0, .Llevel_41_8007BA7C
/* 8141790 8007BA60 21202002 */   addu      $a0, $s1, $zero
.Llevel_41_8007BA64:
/* 8141794 8007BA64 21280000 */  addu       $a1, $zero, $zero
/* 8141798 8007BA68 B944010C */  jal        func_800512E4
/* 814179C 8007BA6C 21300000 */   addu      $a2, $zero, $zero
/* 81417A0 8007BA70 01000224 */  addiu      $v0, $zero, 0x1
/* 81417A4 8007BA74 A8EE0108 */  j          .Llevel_41_8007BAA0
/* 81417A8 8007BA78 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_41_8007BA7C:
/* 81417AC 8007BA7C A8EE0108 */  j          .Llevel_41_8007BAA0
/* 81417B0 8007BA80 070000A2 */   sb        $zero, 0x7($s0)
.Llevel_41_8007BA84:
/* 81417B4 8007BA84 0780023C */  lui        $v0, %hi(D_8006E344)
/* 81417B8 8007BA88 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 81417BC 8007BA8C 00000000 */  nop
/* 81417C0 8007BA90 03004310 */  beq        $v0, $v1, .Llevel_41_8007BAA0
/* 81417C4 8007BA94 00000000 */   nop
/* 81417C8 8007BA98 200003AE */  sw         $v1, 0x20($s0)
/* 81417CC 8007BA9C 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_41_8007BAA0:
/* 81417D0 8007BAA0 1800BF8F */  lw         $ra, 0x18($sp)
/* 81417D4 8007BAA4 1400B18F */  lw         $s1, 0x14($sp)
/* 81417D8 8007BAA8 1000B08F */  lw         $s0, 0x10($sp)
/* 81417DC 8007BAAC 2000BD27 */  addiu      $sp, $sp, 0x20
/* 81417E0 8007BAB0 0800E003 */  jr         $ra
/* 81417E4 8007BAB4 00000000 */   nop
.size MobyUpdate_408_level_41, . - MobyUpdate_408_level_41
