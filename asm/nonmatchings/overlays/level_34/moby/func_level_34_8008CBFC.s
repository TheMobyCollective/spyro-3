.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_587_level_34
/* 74E892C 8008CBFC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 74E8930 8008CC00 1000B0AF */  sw         $s0, 0x10($sp)
/* 74E8934 8008CC04 21808000 */  addu       $s0, $a0, $zero
/* 74E8938 8008CC08 1400BFAF */  sw         $ra, 0x14($sp)
/* 74E893C 8008CC0C 48000392 */  lbu        $v1, 0x48($s0)
/* 74E8940 8008CC10 00000000 */  nop
/* 74E8944 8008CC14 03006010 */  beqz       $v1, .Llevel_34_8008CC24
/* 74E8948 8008CC18 02000224 */   addiu     $v0, $zero, 0x2
/* 74E894C 8008CC1C 0A006214 */  bne        $v1, $v0, .Llevel_34_8008CC48
/* 74E8950 8008CC20 00000000 */   nop
.Llevel_34_8008CC24:
/* 74E8954 8008CC24 1800028E */  lw         $v0, 0x18($s0)
/* 74E8958 8008CC28 0100033C */  lui        $v1, (0x10000 >> 16)
/* 74E895C 8008CC2C 24104300 */  and        $v0, $v0, $v1
/* 74E8960 8008CC30 05004010 */  beqz       $v0, .Llevel_34_8008CC48
/* 74E8964 8008CC34 03000224 */   addiu     $v0, $zero, 0x3
/* 74E8968 8008CC38 480002A2 */  sb         $v0, 0x48($s0)
/* 74E896C 8008CC3C 21200002 */  addu       $a0, $s0, $zero
/* 74E8970 8008CC40 D0D3000C */  jal        func_80034F40
/* 74E8974 8008CC44 03000524 */   addiu     $a1, $zero, 0x3
.Llevel_34_8008CC48:
/* 74E8978 8008CC48 48000292 */  lbu        $v0, 0x48($s0)
/* 74E897C 8008CC4C 00000000 */  nop
/* 74E8980 8008CC50 0A004014 */  bnez       $v0, .Llevel_34_8008CC7C
/* 74E8984 8008CC54 0200033C */   lui       $v1, (0x20000 >> 16)
/* 74E8988 8008CC58 1800028E */  lw         $v0, 0x18($s0)
/* 74E898C 8008CC5C 00000000 */  nop
/* 74E8990 8008CC60 24104300 */  and        $v0, $v0, $v1
/* 74E8994 8008CC64 05004010 */  beqz       $v0, .Llevel_34_8008CC7C
/* 74E8998 8008CC68 02000224 */   addiu     $v0, $zero, 0x2
/* 74E899C 8008CC6C 480002A2 */  sb         $v0, 0x48($s0)
/* 74E89A0 8008CC70 21200002 */  addu       $a0, $s0, $zero
/* 74E89A4 8008CC74 D0D3000C */  jal        func_80034F40
/* 74E89A8 8008CC78 02000524 */   addiu     $a1, $zero, 0x2
.Llevel_34_8008CC7C:
/* 74E89AC 8008CC7C 48000392 */  lbu        $v1, 0x48($s0)
/* 74E89B0 8008CC80 01000224 */  addiu      $v0, $zero, 0x1
/* 74E89B4 8008CC84 30006210 */  beq        $v1, $v0, .Llevel_34_8008CD48
/* 74E89B8 8008CC88 02006228 */   slti      $v0, $v1, 0x2
/* 74E89BC 8008CC8C 05004010 */  beqz       $v0, .Llevel_34_8008CCA4
/* 74E89C0 8008CC90 00000000 */   nop
/* 74E89C4 8008CC94 0A006010 */  beqz       $v1, .Llevel_34_8008CCC0
/* 74E89C8 8008CC98 21200002 */   addu      $a0, $s0, $zero
/* 74E89CC 8008CC9C 75330208 */  j          .Llevel_34_8008CDD4
/* 74E89D0 8008CCA0 00000000 */   nop
.Llevel_34_8008CCA4:
/* 74E89D4 8008CCA4 02000224 */  addiu      $v0, $zero, 0x2
/* 74E89D8 8008CCA8 32006210 */  beq        $v1, $v0, .Llevel_34_8008CD74
/* 74E89DC 8008CCAC 03000224 */   addiu     $v0, $zero, 0x3
/* 74E89E0 8008CCB0 41006210 */  beq        $v1, $v0, .Llevel_34_8008CDB8
/* 74E89E4 8008CCB4 00000000 */   nop
/* 74E89E8 8008CCB8 75330208 */  j          .Llevel_34_8008CDD4
/* 74E89EC 8008CCBC 00000000 */   nop
.Llevel_34_8008CCC0:
/* 74E89F0 8008CCC0 4957010C */  jal        func_80055D24
/* 74E89F4 8008CCC4 07000524 */   addiu     $a1, $zero, 0x7
/* 74E89F8 8008CCC8 49000292 */  lbu        $v0, 0x49($s0)
/* 74E89FC 8008CCCC 00000000 */  nop
/* 74E8A00 8008CCD0 0E004014 */  bnez       $v0, .Llevel_34_8008CD0C
/* 74E8A04 8008CCD4 00000000 */   nop
/* 74E8A08 8008CCD8 0780023C */  lui        $v0, %hi(D_80070328 + 0x13C)
/* 74E8A0C 8008CCDC 6404428C */  lw         $v0, %lo(D_80070328 + 0x13C)($v0)
/* 74E8A10 8008CCE0 00000000 */  nop
/* 74E8A14 8008CCE4 09005014 */  bne        $v0, $s0, .Llevel_34_8008CD0C
/* 74E8A18 8008CCE8 21200002 */   addu      $a0, $s0, $zero
/* 74E8A1C 8008CCEC 02000524 */  addiu      $a1, $zero, 0x2
/* 74E8A20 8008CCF0 01000224 */  addiu      $v0, $zero, 0x1
/* 74E8A24 8008CCF4 490082A0 */  sb         $v0, 0x49($a0)
/* 74E8A28 8008CCF8 02000224 */  addiu      $v0, $zero, 0x2
/* 74E8A2C 8008CCFC D0D3000C */  jal        func_80034F40
/* 74E8A30 8008CD00 480082A0 */   sb        $v0, 0x48($a0)
/* 74E8A34 8008CD04 75330208 */  j          .Llevel_34_8008CDD4
/* 74E8A38 8008CD08 00000000 */   nop
.Llevel_34_8008CD0C:
/* 74E8A3C 8008CD0C 49000392 */  lbu        $v1, 0x49($s0)
/* 74E8A40 8008CD10 01000224 */  addiu      $v0, $zero, 0x1
/* 74E8A44 8008CD14 2F006214 */  bne        $v1, $v0, .Llevel_34_8008CDD4
/* 74E8A48 8008CD18 00000000 */   nop
/* 74E8A4C 8008CD1C 0780023C */  lui        $v0, %hi(D_80070328 + 0x13C)
/* 74E8A50 8008CD20 6404428C */  lw         $v0, %lo(D_80070328 + 0x13C)($v0)
/* 74E8A54 8008CD24 00000000 */  nop
/* 74E8A58 8008CD28 2A005010 */  beq        $v0, $s0, .Llevel_34_8008CDD4
/* 74E8A5C 8008CD2C 21200002 */   addu      $a0, $s0, $zero
/* 74E8A60 8008CD30 02000524 */  addiu      $a1, $zero, 0x2
/* 74E8A64 8008CD34 02000224 */  addiu      $v0, $zero, 0x2
/* 74E8A68 8008CD38 D0D3000C */  jal        func_80034F40
/* 74E8A6C 8008CD3C 480002A2 */   sb        $v0, 0x48($s0)
/* 74E8A70 8008CD40 75330208 */  j          .Llevel_34_8008CDD4
/* 74E8A74 8008CD44 490000A2 */   sb        $zero, 0x49($s0)
.Llevel_34_8008CD48:
/* 74E8A78 8008CD48 0780023C */  lui        $v0, %hi(D_8006C770)
/* 74E8A7C 8008CD4C 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 74E8A80 8008CD50 00000000 */  nop
/* 74E8A84 8008CD54 1F004010 */  beqz       $v0, .Llevel_34_8008CDD4
/* 74E8A88 8008CD58 080000AE */   sw        $zero, 0x8($s0)
/* 74E8A8C 8008CD5C 480000A2 */  sb         $zero, 0x48($s0)
/* 74E8A90 8008CD60 21200002 */  addu       $a0, $s0, $zero
/* 74E8A94 8008CD64 D0D3000C */  jal        func_80034F40
/* 74E8A98 8008CD68 21280000 */   addu      $a1, $zero, $zero
/* 74E8A9C 8008CD6C 75330208 */  j          .Llevel_34_8008CDD4
/* 74E8AA0 8008CD70 00000000 */   nop
.Llevel_34_8008CD74:
/* 74E8AA4 8008CD74 0780023C */  lui        $v0, %hi(D_80070328 + 0x13C)
/* 74E8AA8 8008CD78 6404428C */  lw         $v0, %lo(D_80070328 + 0x13C)($v0)
/* 74E8AAC 8008CD7C 00000000 */  nop
/* 74E8AB0 8008CD80 02005010 */  beq        $v0, $s0, .Llevel_34_8008CD8C
/* 74E8AB4 8008CD84 00000000 */   nop
/* 74E8AB8 8008CD88 490000A2 */  sb         $zero, 0x49($s0)
.Llevel_34_8008CD8C:
/* 74E8ABC 8008CD8C 0780023C */  lui        $v0, %hi(D_8006C770)
/* 74E8AC0 8008CD90 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 74E8AC4 8008CD94 00000000 */  nop
/* 74E8AC8 8008CD98 0E004010 */  beqz       $v0, .Llevel_34_8008CDD4
/* 74E8ACC 8008CD9C 21200002 */   addu      $a0, $s0, $zero
/* 74E8AD0 8008CDA0 21280000 */  addu       $a1, $zero, $zero
/* 74E8AD4 8008CDA4 180080AC */  sw         $zero, 0x18($a0)
/* 74E8AD8 8008CDA8 D0D3000C */  jal        func_80034F40
/* 74E8ADC 8008CDAC 480080A0 */   sb        $zero, 0x48($a0)
/* 74E8AE0 8008CDB0 75330208 */  j          .Llevel_34_8008CDD4
/* 74E8AE4 8008CDB4 00000000 */   nop
.Llevel_34_8008CDB8:
/* 74E8AE8 8008CDB8 0780023C */  lui        $v0, %hi(D_8006C770)
/* 74E8AEC 8008CDBC 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 74E8AF0 8008CDC0 00000000 */  nop
/* 74E8AF4 8008CDC4 03004010 */  beqz       $v0, .Llevel_34_8008CDD4
/* 74E8AF8 8008CDC8 080000AE */   sw        $zero, 0x8($s0)
/* 74E8AFC 8008CDCC C656010C */  jal        func_80055B18
/* 74E8B00 8008CDD0 21200002 */   addu      $a0, $s0, $zero
.Llevel_34_8008CDD4:
/* 74E8B04 8008CDD4 1400BF8F */  lw         $ra, 0x14($sp)
/* 74E8B08 8008CDD8 1000B08F */  lw         $s0, 0x10($sp)
/* 74E8B0C 8008CDDC 1800BD27 */  addiu      $sp, $sp, 0x18
/* 74E8B10 8008CDE0 0800E003 */  jr         $ra
/* 74E8B14 8008CDE4 00000000 */   nop
.size MobyUpdate_587_level_34, . - MobyUpdate_587_level_34
