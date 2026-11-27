.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_170_level_44
/* 8B4D6A0 8007A170 0780023C */  lui        $v0, %hi(D_8006E040)
/* 8B4D6A4 8007A174 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 8B4D6A8 8007A178 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 8B4D6AC 8007A17C 1000B0AF */  sw         $s0, 0x10($sp)
/* 8B4D6B0 8007A180 21808000 */  addu       $s0, $a0, $zero
/* 8B4D6B4 8007A184 1800BFAF */  sw         $ra, 0x18($sp)
/* 8B4D6B8 8007A188 1400B1AF */  sw         $s1, 0x14($sp)
/* 8B4D6BC 8007A18C 00140200 */  sll        $v0, $v0, 16
/* 8B4D6C0 8007A190 03150200 */  sra        $v0, $v0, 20
/* 8B4D6C4 8007A194 80FF4224 */  addiu      $v0, $v0, -0x80
/* 8B4D6C8 8007A198 460002A2 */  sb         $v0, 0x46($s0)
/* 8B4D6CC 8007A19C 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 8B4D6D0 8007A1A0 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 8B4D6D4 8007A1A4 0000118E */  lw         $s1, 0x0($s0)
/* 8B4D6D8 8007A1A8 02110200 */  srl        $v0, $v0, 4
/* 8B4D6DC 8007A1AC 450002A2 */  sb         $v0, 0x45($s0)
/* 8B4D6E0 8007A1B0 00002392 */  lbu        $v1, 0x0($s1)
/* 8B4D6E4 8007A1B4 01000224 */  addiu      $v0, $zero, 0x1
/* 8B4D6E8 8007A1B8 3C006214 */  bne        $v1, $v0, .Llevel_44_8007A2AC
/* 8B4D6EC 8007A1BC 00000000 */   nop
/* 8B4D6F0 8007A1C0 0400238E */  lw         $v1, 0x4($s1)
/* 8B4D6F4 8007A1C4 00000000 */  nop
/* 8B4D6F8 8007A1C8 48006290 */  lbu        $v0, 0x48($v1)
/* 8B4D6FC 8007A1CC 00000000 */  nop
/* 8B4D700 8007A1D0 8000422C */  sltiu      $v0, $v0, 0x80
/* 8B4D704 8007A1D4 06004010 */  beqz       $v0, .Llevel_44_8007A1F0
/* 8B4D708 8007A1D8 00000000 */   nop
/* 8B4D70C 8007A1DC 36006384 */  lh         $v1, 0x36($v1)
/* 8B4D710 8007A1E0 01002292 */  lbu        $v0, 0x1($s1)
/* 8B4D714 8007A1E4 00000000 */  nop
/* 8B4D718 8007A1E8 05006210 */  beq        $v1, $v0, .Llevel_44_8007A200
/* 8B4D71C 8007A1EC 78000224 */   addiu     $v0, $zero, 0x78
.Llevel_44_8007A1F0:
/* 8B4D720 8007A1F0 C656010C */  jal        func_80055B18
/* 8B4D724 8007A1F4 21200002 */   addu      $a0, $s0, $zero
/* 8B4D728 8007A1F8 ABE80108 */  j          .Llevel_44_8007A2AC
/* 8B4D72C 8007A1FC 00000000 */   nop
.Llevel_44_8007A200:
/* 8B4D730 8007A200 21006214 */  bne        $v1, $v0, .Llevel_44_8007A288
/* 8B4D734 8007A204 00000000 */   nop
/* 8B4D738 8007A208 0780033C */  lui        $v1, %hi(D_8006C648)
/* 8B4D73C 8007A20C 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 8B4D740 8007A210 4F000292 */  lbu        $v0, 0x4F($s0)
/* 8B4D744 8007A214 80180300 */  sll        $v1, $v1, 2
/* 8B4D748 8007A218 23104300 */  subu       $v0, $v0, $v1
/* 8B4D74C 8007A21C 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 8B4D750 8007A220 FF004230 */  andi       $v0, $v0, 0xFF
/* 8B4D754 8007A224 1A00422C */  sltiu      $v0, $v0, 0x1A
/* 8B4D758 8007A228 02004010 */  beqz       $v0, .Llevel_44_8007A234
/* 8B4D75C 8007A22C 1A000224 */   addiu     $v0, $zero, 0x1A
/* 8B4D760 8007A230 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_44_8007A234:
/* 8B4D764 8007A234 0780023C */  lui        $v0, %hi(D_80070328 + 0x50)
/* 8B4D768 8007A238 7803428C */  lw         $v0, %lo(D_80070328 + 0x50)($v0)
/* 8B4D76C 8007A23C 00000000 */  nop
/* 8B4D770 8007A240 F5FF4224 */  addiu      $v0, $v0, -0xB
/* 8B4D774 8007A244 0200422C */  sltiu      $v0, $v0, 0x2
/* 8B4D778 8007A248 07004010 */  beqz       $v0, .Llevel_44_8007A268
/* 8B4D77C 8007A24C 00000000 */   nop
/* 8B4D780 8007A250 0400228E */  lw         $v0, 0x4($s1)
/* 8B4D784 8007A254 00000000 */  nop
/* 8B4D788 8007A258 4D004290 */  lbu        $v0, 0x4D($v0)
/* 8B4D78C 8007A25C 00000000 */  nop
/* 8B4D790 8007A260 09004014 */  bnez       $v0, .Llevel_44_8007A288
/* 8B4D794 8007A264 00000000 */   nop
.Llevel_44_8007A268:
/* 8B4D798 8007A268 0400228E */  lw         $v0, 0x4($s1)
/* 8B4D79C 8007A26C 00000000 */  nop
/* 8B4D7A0 8007A270 0000428C */  lw         $v0, 0x0($v0)
/* 8B4D7A4 8007A274 21200002 */  addu       $a0, $s0, $zero
/* 8B4D7A8 8007A278 C656010C */  jal        func_80055B18
/* 8B4D7AC 8007A27C 0A0040A0 */   sb        $zero, 0xA($v0)
/* 8B4D7B0 8007A280 ABE80108 */  j          .Llevel_44_8007A2AC
/* 8B4D7B4 8007A284 00000000 */   nop
.Llevel_44_8007A288:
/* 8B4D7B8 8007A288 0400258E */  lw         $a1, 0x4($s1)
/* 8B4D7BC 8007A28C 0C000426 */  addiu      $a0, $s0, 0xC
/* 8B4D7C0 8007A290 5E3C010C */  jal        func_8004F178
/* 8B4D7C4 8007A294 0C00A524 */   addiu     $a1, $a1, 0xC
/* 8B4D7C8 8007A298 02002386 */  lh         $v1, 0x2($s1)
/* 8B4D7CC 8007A29C 1400028E */  lw         $v0, 0x14($s0)
/* 8B4D7D0 8007A2A0 00000000 */  nop
/* 8B4D7D4 8007A2A4 21104300 */  addu       $v0, $v0, $v1
/* 8B4D7D8 8007A2A8 140002AE */  sw         $v0, 0x14($s0)
.Llevel_44_8007A2AC:
/* 8B4D7DC 8007A2AC 1800BF8F */  lw         $ra, 0x18($sp)
/* 8B4D7E0 8007A2B0 1400B18F */  lw         $s1, 0x14($sp)
/* 8B4D7E4 8007A2B4 1000B08F */  lw         $s0, 0x10($sp)
/* 8B4D7E8 8007A2B8 2000BD27 */  addiu      $sp, $sp, 0x20
/* 8B4D7EC 8007A2BC 0800E003 */  jr         $ra
/* 8B4D7F0 8007A2C0 00000000 */   nop
.size MobyUpdate_170_level_44, . - MobyUpdate_170_level_44
