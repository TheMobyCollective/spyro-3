.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_408_level_31
/* 6A94D88 8007A058 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 6A94D8C 8007A05C 1400B1AF */  sw         $s1, 0x14($sp)
/* 6A94D90 8007A060 21888000 */  addu       $s1, $a0, $zero
/* 6A94D94 8007A064 1800BFAF */  sw         $ra, 0x18($sp)
/* 6A94D98 8007A068 1000B0AF */  sw         $s0, 0x10($sp)
/* 6A94D9C 8007A06C 48002392 */  lbu        $v1, 0x48($s1)
/* 6A94DA0 8007A070 0000308E */  lw         $s0, 0x0($s1)
/* 6A94DA4 8007A074 05006010 */  beqz       $v1, .Llevel_31_8007A08C
/* 6A94DA8 8007A078 01000224 */   addiu     $v0, $zero, 0x1
/* 6A94DAC 8007A07C 3D006210 */  beq        $v1, $v0, .Llevel_31_8007A174
/* 6A94DB0 8007A080 00000000 */   nop
/* 6A94DB4 8007A084 64E80108 */  j          .Llevel_31_8007A190
/* 6A94DB8 8007A088 00000000 */   nop
.Llevel_31_8007A08C:
/* 6A94DBC 8007A08C 36002386 */  lh         $v1, 0x36($s1)
/* 6A94DC0 8007A090 98010224 */  addiu      $v0, $zero, 0x198
/* 6A94DC4 8007A094 13006214 */  bne        $v1, $v0, .Llevel_31_8007A0E4
/* 6A94DC8 8007A098 00000000 */   nop
/* 6A94DCC 8007A09C 0780023C */  lui        $v0, %hi(D_80071582)
/* 6A94DD0 8007A0A0 82154290 */  lbu        $v0, %lo(D_80071582)($v0)
/* 6A94DD4 8007A0A4 00000000 */  nop
/* 6A94DD8 8007A0A8 03004014 */  bnez       $v0, .Llevel_31_8007A0B8
/* 6A94DDC 8007A0AC 00000000 */   nop
/* 6A94DE0 8007A0B0 39E80108 */  j          .Llevel_31_8007A0E4
/* 6A94DE4 8007A0B4 020000A2 */   sb        $zero, 0x2($s0)
.Llevel_31_8007A0B8:
/* 6A94DE8 8007A0B8 0680023C */  lui        $v0, %hi(D_80066FCC + 0x24)
/* 6A94DEC 8007A0BC F06F4290 */  lbu        $v0, %lo(D_80066FCC + 0x24)($v0)
/* 6A94DF0 8007A0C0 0780013C */  lui        $at, %hi(D_80070300)
/* 6A94DF4 8007A0C4 21082200 */  addu       $at, $at, $v0
/* 6A94DF8 8007A0C8 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 6A94DFC 8007A0CC 00000000 */  nop
/* 6A94E00 8007A0D0 01004230 */  andi       $v0, $v0, 0x1
/* 6A94E04 8007A0D4 02004014 */  bnez       $v0, .Llevel_31_8007A0E0
/* 6A94E08 8007A0D8 02000224 */   addiu     $v0, $zero, 0x2
/* 6A94E0C 8007A0DC 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_31_8007A0E0:
/* 6A94E10 8007A0E0 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_31_8007A0E4:
/* 6A94E14 8007A0E4 02000392 */  lbu        $v1, 0x2($s0)
/* 6A94E18 8007A0E8 02000224 */  addiu      $v0, $zero, 0x2
/* 6A94E1C 8007A0EC 02006214 */  bne        $v1, $v0, .Llevel_31_8007A0F8
/* 6A94E20 8007A0F0 00000000 */   nop
/* 6A94E24 8007A0F4 050000A2 */  sb         $zero, 0x5($s0)
.Llevel_31_8007A0F8:
/* 6A94E28 8007A0F8 05000292 */  lbu        $v0, 0x5($s0)
/* 6A94E2C 8007A0FC 00000000 */  nop
/* 6A94E30 8007A100 10004014 */  bnez       $v0, .Llevel_31_8007A144
/* 6A94E34 8007A104 21202002 */   addu      $a0, $s1, $zero
/* 6A94E38 8007A108 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 6A94E3C 8007A10C 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 6A94E40 8007A110 00000000 */  nop
/* 6A94E44 8007A114 10004230 */  andi       $v0, $v0, 0x10
/* 6A94E48 8007A118 06004010 */  beqz       $v0, .Llevel_31_8007A134
/* 6A94E4C 8007A11C 00000000 */   nop
/* 6A94E50 8007A120 EFDE000C */  jal        func_80037BBC
/* 6A94E54 8007A124 21280000 */   addu      $a1, $zero, $zero
/* 6A94E58 8007A128 0A004014 */  bnez       $v0, .Llevel_31_8007A154
/* 6A94E5C 8007A12C 21202002 */   addu      $a0, $s1, $zero
/* 6A94E60 8007A130 070000A2 */  sb         $zero, 0x7($s0)
.Llevel_31_8007A134:
/* 6A94E64 8007A134 05000292 */  lbu        $v0, 0x5($s0)
/* 6A94E68 8007A138 00000000 */  nop
/* 6A94E6C 8007A13C 14004010 */  beqz       $v0, .Llevel_31_8007A190
/* 6A94E70 8007A140 21202002 */   addu      $a0, $s1, $zero
.Llevel_31_8007A144:
/* 6A94E74 8007A144 EFDE000C */  jal        func_80037BBC
/* 6A94E78 8007A148 21280000 */   addu      $a1, $zero, $zero
/* 6A94E7C 8007A14C 07004010 */  beqz       $v0, .Llevel_31_8007A16C
/* 6A94E80 8007A150 21202002 */   addu      $a0, $s1, $zero
.Llevel_31_8007A154:
/* 6A94E84 8007A154 21280000 */  addu       $a1, $zero, $zero
/* 6A94E88 8007A158 B944010C */  jal        func_800512E4
/* 6A94E8C 8007A15C 21300000 */   addu      $a2, $zero, $zero
/* 6A94E90 8007A160 01000224 */  addiu      $v0, $zero, 0x1
/* 6A94E94 8007A164 64E80108 */  j          .Llevel_31_8007A190
/* 6A94E98 8007A168 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_31_8007A16C:
/* 6A94E9C 8007A16C 64E80108 */  j          .Llevel_31_8007A190
/* 6A94EA0 8007A170 070000A2 */   sb        $zero, 0x7($s0)
.Llevel_31_8007A174:
/* 6A94EA4 8007A174 0780023C */  lui        $v0, %hi(D_8006E344)
/* 6A94EA8 8007A178 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 6A94EAC 8007A17C 00000000 */  nop
/* 6A94EB0 8007A180 03004310 */  beq        $v0, $v1, .Llevel_31_8007A190
/* 6A94EB4 8007A184 00000000 */   nop
/* 6A94EB8 8007A188 200003AE */  sw         $v1, 0x20($s0)
/* 6A94EBC 8007A18C 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_31_8007A190:
/* 6A94EC0 8007A190 1800BF8F */  lw         $ra, 0x18($sp)
/* 6A94EC4 8007A194 1400B18F */  lw         $s1, 0x14($sp)
/* 6A94EC8 8007A198 1000B08F */  lw         $s0, 0x10($sp)
/* 6A94ECC 8007A19C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 6A94ED0 8007A1A0 0800E003 */  jr         $ra
/* 6A94ED4 8007A1A4 00000000 */   nop
.size MobyUpdate_408_level_31, . - MobyUpdate_408_level_31
