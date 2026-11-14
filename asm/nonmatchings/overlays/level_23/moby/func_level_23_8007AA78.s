.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_408_level_23
/* 5A96FA8 8007AA78 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 5A96FAC 8007AA7C 1400B1AF */  sw         $s1, 0x14($sp)
/* 5A96FB0 8007AA80 21888000 */  addu       $s1, $a0, $zero
/* 5A96FB4 8007AA84 1800BFAF */  sw         $ra, 0x18($sp)
/* 5A96FB8 8007AA88 1000B0AF */  sw         $s0, 0x10($sp)
/* 5A96FBC 8007AA8C 48002392 */  lbu        $v1, 0x48($s1)
/* 5A96FC0 8007AA90 0000308E */  lw         $s0, 0x0($s1)
/* 5A96FC4 8007AA94 05006010 */  beqz       $v1, .Llevel_23_8007AAAC
/* 5A96FC8 8007AA98 01000224 */   addiu     $v0, $zero, 0x1
/* 5A96FCC 8007AA9C 3D006210 */  beq        $v1, $v0, .Llevel_23_8007AB94
/* 5A96FD0 8007AAA0 00000000 */   nop
/* 5A96FD4 8007AAA4 ECEA0108 */  j          .Llevel_23_8007ABB0
/* 5A96FD8 8007AAA8 00000000 */   nop
.Llevel_23_8007AAAC:
/* 5A96FDC 8007AAAC 36002386 */  lh         $v1, 0x36($s1)
/* 5A96FE0 8007AAB0 AB020224 */  addiu      $v0, $zero, 0x2AB
/* 5A96FE4 8007AAB4 13006214 */  bne        $v1, $v0, .Llevel_23_8007AB04
/* 5A96FE8 8007AAB8 00000000 */   nop
/* 5A96FEC 8007AABC 0780023C */  lui        $v0, %hi(D_8007158A)
/* 5A96FF0 8007AAC0 8A154290 */  lbu        $v0, %lo(D_8007158A)($v0)
/* 5A96FF4 8007AAC4 00000000 */  nop
/* 5A96FF8 8007AAC8 03004014 */  bnez       $v0, .Llevel_23_8007AAD8
/* 5A96FFC 8007AACC 00000000 */   nop
/* 5A97000 8007AAD0 C1EA0108 */  j          .Llevel_23_8007AB04
/* 5A97004 8007AAD4 020000A2 */   sb        $zero, 0x2($s0)
.Llevel_23_8007AAD8:
/* 5A97008 8007AAD8 0680023C */  lui        $v0, %hi(D_80066FCC + 0x10)
/* 5A9700C 8007AADC DC6F4290 */  lbu        $v0, %lo(D_80066FCC + 0x10)($v0)
/* 5A97010 8007AAE0 0780013C */  lui        $at, %hi(D_80070300)
/* 5A97014 8007AAE4 21082200 */  addu       $at, $at, $v0
/* 5A97018 8007AAE8 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 5A9701C 8007AAEC 00000000 */  nop
/* 5A97020 8007AAF0 01004230 */  andi       $v0, $v0, 0x1
/* 5A97024 8007AAF4 02004014 */  bnez       $v0, .Llevel_23_8007AB00
/* 5A97028 8007AAF8 02000224 */   addiu     $v0, $zero, 0x2
/* 5A9702C 8007AAFC 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_23_8007AB00:
/* 5A97030 8007AB00 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_23_8007AB04:
/* 5A97034 8007AB04 02000392 */  lbu        $v1, 0x2($s0)
/* 5A97038 8007AB08 02000224 */  addiu      $v0, $zero, 0x2
/* 5A9703C 8007AB0C 02006214 */  bne        $v1, $v0, .Llevel_23_8007AB18
/* 5A97040 8007AB10 00000000 */   nop
/* 5A97044 8007AB14 050000A2 */  sb         $zero, 0x5($s0)
.Llevel_23_8007AB18:
/* 5A97048 8007AB18 05000292 */  lbu        $v0, 0x5($s0)
/* 5A9704C 8007AB1C 00000000 */  nop
/* 5A97050 8007AB20 10004014 */  bnez       $v0, .Llevel_23_8007AB64
/* 5A97054 8007AB24 21202002 */   addu      $a0, $s1, $zero
/* 5A97058 8007AB28 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 5A9705C 8007AB2C 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 5A97060 8007AB30 00000000 */  nop
/* 5A97064 8007AB34 10004230 */  andi       $v0, $v0, 0x10
/* 5A97068 8007AB38 06004010 */  beqz       $v0, .Llevel_23_8007AB54
/* 5A9706C 8007AB3C 00000000 */   nop
/* 5A97070 8007AB40 EFDE000C */  jal        func_80037BBC
/* 5A97074 8007AB44 21280000 */   addu      $a1, $zero, $zero
/* 5A97078 8007AB48 0A004014 */  bnez       $v0, .Llevel_23_8007AB74
/* 5A9707C 8007AB4C 21202002 */   addu      $a0, $s1, $zero
/* 5A97080 8007AB50 070000A2 */  sb         $zero, 0x7($s0)
.Llevel_23_8007AB54:
/* 5A97084 8007AB54 05000292 */  lbu        $v0, 0x5($s0)
/* 5A97088 8007AB58 00000000 */  nop
/* 5A9708C 8007AB5C 14004010 */  beqz       $v0, .Llevel_23_8007ABB0
/* 5A97090 8007AB60 21202002 */   addu      $a0, $s1, $zero
.Llevel_23_8007AB64:
/* 5A97094 8007AB64 EFDE000C */  jal        func_80037BBC
/* 5A97098 8007AB68 21280000 */   addu      $a1, $zero, $zero
/* 5A9709C 8007AB6C 07004010 */  beqz       $v0, .Llevel_23_8007AB8C
/* 5A970A0 8007AB70 21202002 */   addu      $a0, $s1, $zero
.Llevel_23_8007AB74:
/* 5A970A4 8007AB74 21280000 */  addu       $a1, $zero, $zero
/* 5A970A8 8007AB78 B944010C */  jal        func_800512E4
/* 5A970AC 8007AB7C 21300000 */   addu      $a2, $zero, $zero
/* 5A970B0 8007AB80 01000224 */  addiu      $v0, $zero, 0x1
/* 5A970B4 8007AB84 ECEA0108 */  j          .Llevel_23_8007ABB0
/* 5A970B8 8007AB88 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_23_8007AB8C:
/* 5A970BC 8007AB8C ECEA0108 */  j          .Llevel_23_8007ABB0
/* 5A970C0 8007AB90 070000A2 */   sb        $zero, 0x7($s0)
.Llevel_23_8007AB94:
/* 5A970C4 8007AB94 0780023C */  lui        $v0, %hi(D_8006E344)
/* 5A970C8 8007AB98 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 5A970CC 8007AB9C 00000000 */  nop
/* 5A970D0 8007ABA0 03004310 */  beq        $v0, $v1, .Llevel_23_8007ABB0
/* 5A970D4 8007ABA4 00000000 */   nop
/* 5A970D8 8007ABA8 200003AE */  sw         $v1, 0x20($s0)
/* 5A970DC 8007ABAC 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_23_8007ABB0:
/* 5A970E0 8007ABB0 1800BF8F */  lw         $ra, 0x18($sp)
/* 5A970E4 8007ABB4 1400B18F */  lw         $s1, 0x14($sp)
/* 5A970E8 8007ABB8 1000B08F */  lw         $s0, 0x10($sp)
/* 5A970EC 8007ABBC 2000BD27 */  addiu      $sp, $sp, 0x20
/* 5A970F0 8007ABC0 0800E003 */  jr         $ra
/* 5A970F4 8007ABC4 00000000 */   nop
.size MobyUpdate_408_level_23, . - MobyUpdate_408_level_23
