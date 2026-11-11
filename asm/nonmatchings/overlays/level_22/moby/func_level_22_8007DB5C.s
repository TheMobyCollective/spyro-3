.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_408_level_22
/* 576D88C 8007DB5C 0780023C */  lui        $v0, %hi(D_8006C640)
/* 576D890 8007DB60 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 576D894 8007DB64 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 576D898 8007DB68 1400B1AF */  sw         $s1, 0x14($sp)
/* 576D89C 8007DB6C 21888000 */  addu       $s1, $a0, $zero
/* 576D8A0 8007DB70 1800BFAF */  sw         $ra, 0x18($sp)
/* 576D8A4 8007DB74 1000B0AF */  sw         $s0, 0x10($sp)
/* 576D8A8 8007DB78 0000308E */  lw         $s0, 0x0($s1)
/* 576D8AC 8007DB7C 0E004014 */  bnez       $v0, .Llevel_22_8007DBB8
/* 576D8B0 8007DB80 20020224 */   addiu     $v0, $zero, 0x220
/* 576D8B4 8007DB84 36002386 */  lh         $v1, 0x36($s1)
/* 576D8B8 8007DB88 00000000 */  nop
/* 576D8BC 8007DB8C 0A006214 */  bne        $v1, $v0, .Llevel_22_8007DBB8
/* 576D8C0 8007DB90 00000000 */   nop
/* 576D8C4 8007DB94 0780023C */  lui        $v0, %hi(D_8007159A)
/* 576D8C8 8007DB98 9A154290 */  lbu        $v0, %lo(D_8007159A)($v0)
/* 576D8CC 8007DB9C 00000000 */  nop
/* 576D8D0 8007DBA0 05004014 */  bnez       $v0, .Llevel_22_8007DBB8
/* 576D8D4 8007DBA4 00000000 */   nop
/* 576D8D8 8007DBA8 C656010C */  jal        func_80055B18
/* 576D8DC 8007DBAC 00000000 */   nop
/* 576D8E0 8007DBB0 37F70108 */  j          .Llevel_22_8007DCDC
/* 576D8E4 8007DBB4 00000000 */   nop
.Llevel_22_8007DBB8:
/* 576D8E8 8007DBB8 48002392 */  lbu        $v1, 0x48($s1)
/* 576D8EC 8007DBBC 00000000 */  nop
/* 576D8F0 8007DBC0 05006010 */  beqz       $v1, .Llevel_22_8007DBD8
/* 576D8F4 8007DBC4 01000224 */   addiu     $v0, $zero, 0x1
/* 576D8F8 8007DBC8 3D006210 */  beq        $v1, $v0, .Llevel_22_8007DCC0
/* 576D8FC 8007DBCC 00000000 */   nop
/* 576D900 8007DBD0 37F70108 */  j          .Llevel_22_8007DCDC
/* 576D904 8007DBD4 00000000 */   nop
.Llevel_22_8007DBD8:
/* 576D908 8007DBD8 36002386 */  lh         $v1, 0x36($s1)
/* 576D90C 8007DBDC AC020224 */  addiu      $v0, $zero, 0x2AC
/* 576D910 8007DBE0 13006214 */  bne        $v1, $v0, .Llevel_22_8007DC30
/* 576D914 8007DBE4 00000000 */   nop
/* 576D918 8007DBE8 0780023C */  lui        $v0, %hi(D_80071581)
/* 576D91C 8007DBEC 81154290 */  lbu        $v0, %lo(D_80071581)($v0)
/* 576D920 8007DBF0 00000000 */  nop
/* 576D924 8007DBF4 03004014 */  bnez       $v0, .Llevel_22_8007DC04
/* 576D928 8007DBF8 00000000 */   nop
/* 576D92C 8007DBFC 0CF70108 */  j          .Llevel_22_8007DC30
/* 576D930 8007DC00 020000A2 */   sb        $zero, 0x2($s0)
.Llevel_22_8007DC04:
/* 576D934 8007DC04 0680023C */  lui        $v0, %hi(D_80066FCC + 0x1A)
/* 576D938 8007DC08 E66F4290 */  lbu        $v0, %lo(D_80066FCC + 0x1A)($v0)
/* 576D93C 8007DC0C 0780013C */  lui        $at, %hi(D_80070300)
/* 576D940 8007DC10 21082200 */  addu       $at, $at, $v0
/* 576D944 8007DC14 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 576D948 8007DC18 00000000 */  nop
/* 576D94C 8007DC1C 01004230 */  andi       $v0, $v0, 0x1
/* 576D950 8007DC20 02004014 */  bnez       $v0, .Llevel_22_8007DC2C
/* 576D954 8007DC24 02000224 */   addiu     $v0, $zero, 0x2
/* 576D958 8007DC28 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_22_8007DC2C:
/* 576D95C 8007DC2C 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_22_8007DC30:
/* 576D960 8007DC30 02000392 */  lbu        $v1, 0x2($s0)
/* 576D964 8007DC34 02000224 */  addiu      $v0, $zero, 0x2
/* 576D968 8007DC38 02006214 */  bne        $v1, $v0, .Llevel_22_8007DC44
/* 576D96C 8007DC3C 00000000 */   nop
/* 576D970 8007DC40 050000A2 */  sb         $zero, 0x5($s0)
.Llevel_22_8007DC44:
/* 576D974 8007DC44 05000292 */  lbu        $v0, 0x5($s0)
/* 576D978 8007DC48 00000000 */  nop
/* 576D97C 8007DC4C 10004014 */  bnez       $v0, .Llevel_22_8007DC90
/* 576D980 8007DC50 21202002 */   addu      $a0, $s1, $zero
/* 576D984 8007DC54 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 576D988 8007DC58 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 576D98C 8007DC5C 00000000 */  nop
/* 576D990 8007DC60 10004230 */  andi       $v0, $v0, 0x10
/* 576D994 8007DC64 06004010 */  beqz       $v0, .Llevel_22_8007DC80
/* 576D998 8007DC68 00000000 */   nop
/* 576D99C 8007DC6C EFDE000C */  jal        func_80037BBC
/* 576D9A0 8007DC70 21280000 */   addu      $a1, $zero, $zero
/* 576D9A4 8007DC74 0A004014 */  bnez       $v0, .Llevel_22_8007DCA0
/* 576D9A8 8007DC78 21202002 */   addu      $a0, $s1, $zero
/* 576D9AC 8007DC7C 070000A2 */  sb         $zero, 0x7($s0)
.Llevel_22_8007DC80:
/* 576D9B0 8007DC80 05000292 */  lbu        $v0, 0x5($s0)
/* 576D9B4 8007DC84 00000000 */  nop
/* 576D9B8 8007DC88 14004010 */  beqz       $v0, .Llevel_22_8007DCDC
/* 576D9BC 8007DC8C 21202002 */   addu      $a0, $s1, $zero
.Llevel_22_8007DC90:
/* 576D9C0 8007DC90 EFDE000C */  jal        func_80037BBC
/* 576D9C4 8007DC94 21280000 */   addu      $a1, $zero, $zero
/* 576D9C8 8007DC98 07004010 */  beqz       $v0, .Llevel_22_8007DCB8
/* 576D9CC 8007DC9C 21202002 */   addu      $a0, $s1, $zero
.Llevel_22_8007DCA0:
/* 576D9D0 8007DCA0 21280000 */  addu       $a1, $zero, $zero
/* 576D9D4 8007DCA4 B944010C */  jal        func_800512E4
/* 576D9D8 8007DCA8 21300000 */   addu      $a2, $zero, $zero
/* 576D9DC 8007DCAC 01000224 */  addiu      $v0, $zero, 0x1
/* 576D9E0 8007DCB0 37F70108 */  j          .Llevel_22_8007DCDC
/* 576D9E4 8007DCB4 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_22_8007DCB8:
/* 576D9E8 8007DCB8 37F70108 */  j          .Llevel_22_8007DCDC
/* 576D9EC 8007DCBC 070000A2 */   sb        $zero, 0x7($s0)
.Llevel_22_8007DCC0:
/* 576D9F0 8007DCC0 0780023C */  lui        $v0, %hi(D_8006E344)
/* 576D9F4 8007DCC4 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 576D9F8 8007DCC8 00000000 */  nop
/* 576D9FC 8007DCCC 03004310 */  beq        $v0, $v1, .Llevel_22_8007DCDC
/* 576DA00 8007DCD0 00000000 */   nop
/* 576DA04 8007DCD4 200003AE */  sw         $v1, 0x20($s0)
/* 576DA08 8007DCD8 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_22_8007DCDC:
/* 576DA0C 8007DCDC 1800BF8F */  lw         $ra, 0x18($sp)
/* 576DA10 8007DCE0 1400B18F */  lw         $s1, 0x14($sp)
/* 576DA14 8007DCE4 1000B08F */  lw         $s0, 0x10($sp)
/* 576DA18 8007DCE8 2000BD27 */  addiu      $sp, $sp, 0x20
/* 576DA1C 8007DCEC 0800E003 */  jr         $ra
/* 576DA20 8007DCF0 00000000 */   nop
.size MobyUpdate_408_level_22, . - MobyUpdate_408_level_22
