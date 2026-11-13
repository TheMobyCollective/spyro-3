.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_170_level_32
/* 6DEC13C 80084C0C 0780023C */  lui        $v0, %hi(D_8006E040)
/* 6DEC140 80084C10 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 6DEC144 80084C14 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 6DEC148 80084C18 1000B0AF */  sw         $s0, 0x10($sp)
/* 6DEC14C 80084C1C 21808000 */  addu       $s0, $a0, $zero
/* 6DEC150 80084C20 1800BFAF */  sw         $ra, 0x18($sp)
/* 6DEC154 80084C24 1400B1AF */  sw         $s1, 0x14($sp)
/* 6DEC158 80084C28 00140200 */  sll        $v0, $v0, 16
/* 6DEC15C 80084C2C 03150200 */  sra        $v0, $v0, 20
/* 6DEC160 80084C30 80FF4224 */  addiu      $v0, $v0, -0x80
/* 6DEC164 80084C34 460002A2 */  sb         $v0, 0x46($s0)
/* 6DEC168 80084C38 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 6DEC16C 80084C3C 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 6DEC170 80084C40 0000118E */  lw         $s1, 0x0($s0)
/* 6DEC174 80084C44 02110200 */  srl        $v0, $v0, 4
/* 6DEC178 80084C48 450002A2 */  sb         $v0, 0x45($s0)
/* 6DEC17C 80084C4C 00002392 */  lbu        $v1, 0x0($s1)
/* 6DEC180 80084C50 01000224 */  addiu      $v0, $zero, 0x1
/* 6DEC184 80084C54 3C006214 */  bne        $v1, $v0, .Llevel_32_80084D48
/* 6DEC188 80084C58 00000000 */   nop
/* 6DEC18C 80084C5C 0400238E */  lw         $v1, 0x4($s1)
/* 6DEC190 80084C60 00000000 */  nop
/* 6DEC194 80084C64 48006290 */  lbu        $v0, 0x48($v1)
/* 6DEC198 80084C68 00000000 */  nop
/* 6DEC19C 80084C6C 8000422C */  sltiu      $v0, $v0, 0x80
/* 6DEC1A0 80084C70 06004010 */  beqz       $v0, .Llevel_32_80084C8C
/* 6DEC1A4 80084C74 00000000 */   nop
/* 6DEC1A8 80084C78 36006384 */  lh         $v1, 0x36($v1)
/* 6DEC1AC 80084C7C 01002292 */  lbu        $v0, 0x1($s1)
/* 6DEC1B0 80084C80 00000000 */  nop
/* 6DEC1B4 80084C84 05006210 */  beq        $v1, $v0, .Llevel_32_80084C9C
/* 6DEC1B8 80084C88 78000224 */   addiu     $v0, $zero, 0x78
.Llevel_32_80084C8C:
/* 6DEC1BC 80084C8C C656010C */  jal        func_80055B18
/* 6DEC1C0 80084C90 21200002 */   addu      $a0, $s0, $zero
/* 6DEC1C4 80084C94 52130208 */  j          .Llevel_32_80084D48
/* 6DEC1C8 80084C98 00000000 */   nop
.Llevel_32_80084C9C:
/* 6DEC1CC 80084C9C 21006214 */  bne        $v1, $v0, .Llevel_32_80084D24
/* 6DEC1D0 80084CA0 00000000 */   nop
/* 6DEC1D4 80084CA4 0780033C */  lui        $v1, %hi(D_8006C648)
/* 6DEC1D8 80084CA8 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 6DEC1DC 80084CAC 4F000292 */  lbu        $v0, 0x4F($s0)
/* 6DEC1E0 80084CB0 80180300 */  sll        $v1, $v1, 2
/* 6DEC1E4 80084CB4 23104300 */  subu       $v0, $v0, $v1
/* 6DEC1E8 80084CB8 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 6DEC1EC 80084CBC FF004230 */  andi       $v0, $v0, 0xFF
/* 6DEC1F0 80084CC0 1A00422C */  sltiu      $v0, $v0, 0x1A
/* 6DEC1F4 80084CC4 02004010 */  beqz       $v0, .Llevel_32_80084CD0
/* 6DEC1F8 80084CC8 1A000224 */   addiu     $v0, $zero, 0x1A
/* 6DEC1FC 80084CCC 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_32_80084CD0:
/* 6DEC200 80084CD0 0780023C */  lui        $v0, %hi(D_80070328 + 0x50)
/* 6DEC204 80084CD4 7803428C */  lw         $v0, %lo(D_80070328 + 0x50)($v0)
/* 6DEC208 80084CD8 00000000 */  nop
/* 6DEC20C 80084CDC F5FF4224 */  addiu      $v0, $v0, -0xB
/* 6DEC210 80084CE0 0200422C */  sltiu      $v0, $v0, 0x2
/* 6DEC214 80084CE4 07004010 */  beqz       $v0, .Llevel_32_80084D04
/* 6DEC218 80084CE8 00000000 */   nop
/* 6DEC21C 80084CEC 0400228E */  lw         $v0, 0x4($s1)
/* 6DEC220 80084CF0 00000000 */  nop
/* 6DEC224 80084CF4 4D004290 */  lbu        $v0, 0x4D($v0)
/* 6DEC228 80084CF8 00000000 */  nop
/* 6DEC22C 80084CFC 09004014 */  bnez       $v0, .Llevel_32_80084D24
/* 6DEC230 80084D00 00000000 */   nop
.Llevel_32_80084D04:
/* 6DEC234 80084D04 0400228E */  lw         $v0, 0x4($s1)
/* 6DEC238 80084D08 00000000 */  nop
/* 6DEC23C 80084D0C 0000428C */  lw         $v0, 0x0($v0)
/* 6DEC240 80084D10 21200002 */  addu       $a0, $s0, $zero
/* 6DEC244 80084D14 C656010C */  jal        func_80055B18
/* 6DEC248 80084D18 0A0040A0 */   sb        $zero, 0xA($v0)
/* 6DEC24C 80084D1C 52130208 */  j          .Llevel_32_80084D48
/* 6DEC250 80084D20 00000000 */   nop
.Llevel_32_80084D24:
/* 6DEC254 80084D24 0400258E */  lw         $a1, 0x4($s1)
/* 6DEC258 80084D28 0C000426 */  addiu      $a0, $s0, 0xC
/* 6DEC25C 80084D2C 5E3C010C */  jal        func_8004F178
/* 6DEC260 80084D30 0C00A524 */   addiu     $a1, $a1, 0xC
/* 6DEC264 80084D34 02002386 */  lh         $v1, 0x2($s1)
/* 6DEC268 80084D38 1400028E */  lw         $v0, 0x14($s0)
/* 6DEC26C 80084D3C 00000000 */  nop
/* 6DEC270 80084D40 21104300 */  addu       $v0, $v0, $v1
/* 6DEC274 80084D44 140002AE */  sw         $v0, 0x14($s0)
.Llevel_32_80084D48:
/* 6DEC278 80084D48 1800BF8F */  lw         $ra, 0x18($sp)
/* 6DEC27C 80084D4C 1400B18F */  lw         $s1, 0x14($sp)
/* 6DEC280 80084D50 1000B08F */  lw         $s0, 0x10($sp)
/* 6DEC284 80084D54 2000BD27 */  addiu      $sp, $sp, 0x20
/* 6DEC288 80084D58 0800E003 */  jr         $ra
/* 6DEC28C 80084D5C 00000000 */   nop
.size MobyUpdate_170_level_32, . - MobyUpdate_170_level_32
