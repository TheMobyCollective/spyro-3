.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_408_level_24
/* 5DF6B34 8007BE04 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 5DF6B38 8007BE08 1400B1AF */  sw         $s1, 0x14($sp)
/* 5DF6B3C 8007BE0C 21888000 */  addu       $s1, $a0, $zero
/* 5DF6B40 8007BE10 1800BFAF */  sw         $ra, 0x18($sp)
/* 5DF6B44 8007BE14 1000B0AF */  sw         $s0, 0x10($sp)
/* 5DF6B48 8007BE18 48002392 */  lbu        $v1, 0x48($s1)
/* 5DF6B4C 8007BE1C 0000308E */  lw         $s0, 0x0($s1)
/* 5DF6B50 8007BE20 05006010 */  beqz       $v1, .Llevel_24_8007BE38
/* 5DF6B54 8007BE24 01000224 */   addiu     $v0, $zero, 0x1
/* 5DF6B58 8007BE28 3D006210 */  beq        $v1, $v0, .Llevel_24_8007BF20
/* 5DF6B5C 8007BE2C 00000000 */   nop
/* 5DF6B60 8007BE30 CFEF0108 */  j          .Llevel_24_8007BF3C
/* 5DF6B64 8007BE34 00000000 */   nop
.Llevel_24_8007BE38:
/* 5DF6B68 8007BE38 36002386 */  lh         $v1, 0x36($s1)
/* 5DF6B6C 8007BE3C 98010224 */  addiu      $v0, $zero, 0x198
/* 5DF6B70 8007BE40 13006214 */  bne        $v1, $v0, .Llevel_24_8007BE90
/* 5DF6B74 8007BE44 00000000 */   nop
/* 5DF6B78 8007BE48 0780023C */  lui        $v0, %hi(D_80071582)
/* 5DF6B7C 8007BE4C 82154290 */  lbu        $v0, %lo(D_80071582)($v0)
/* 5DF6B80 8007BE50 00000000 */  nop
/* 5DF6B84 8007BE54 03004014 */  bnez       $v0, .Llevel_24_8007BE64
/* 5DF6B88 8007BE58 00000000 */   nop
/* 5DF6B8C 8007BE5C A4EF0108 */  j          .Llevel_24_8007BE90
/* 5DF6B90 8007BE60 020000A2 */   sb        $zero, 0x2($s0)
.Llevel_24_8007BE64:
/* 5DF6B94 8007BE64 0680023C */  lui        $v0, %hi(D_80066FCC + 0x24)
/* 5DF6B98 8007BE68 F06F4290 */  lbu        $v0, %lo(D_80066FCC + 0x24)($v0)
/* 5DF6B9C 8007BE6C 0780013C */  lui        $at, %hi(D_80070300)
/* 5DF6BA0 8007BE70 21082200 */  addu       $at, $at, $v0
/* 5DF6BA4 8007BE74 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 5DF6BA8 8007BE78 00000000 */  nop
/* 5DF6BAC 8007BE7C 01004230 */  andi       $v0, $v0, 0x1
/* 5DF6BB0 8007BE80 02004014 */  bnez       $v0, .Llevel_24_8007BE8C
/* 5DF6BB4 8007BE84 02000224 */   addiu     $v0, $zero, 0x2
/* 5DF6BB8 8007BE88 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_24_8007BE8C:
/* 5DF6BBC 8007BE8C 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_24_8007BE90:
/* 5DF6BC0 8007BE90 02000392 */  lbu        $v1, 0x2($s0)
/* 5DF6BC4 8007BE94 02000224 */  addiu      $v0, $zero, 0x2
/* 5DF6BC8 8007BE98 02006214 */  bne        $v1, $v0, .Llevel_24_8007BEA4
/* 5DF6BCC 8007BE9C 00000000 */   nop
/* 5DF6BD0 8007BEA0 050000A2 */  sb         $zero, 0x5($s0)
.Llevel_24_8007BEA4:
/* 5DF6BD4 8007BEA4 05000292 */  lbu        $v0, 0x5($s0)
/* 5DF6BD8 8007BEA8 00000000 */  nop
/* 5DF6BDC 8007BEAC 10004014 */  bnez       $v0, .Llevel_24_8007BEF0
/* 5DF6BE0 8007BEB0 21202002 */   addu      $a0, $s1, $zero
/* 5DF6BE4 8007BEB4 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 5DF6BE8 8007BEB8 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 5DF6BEC 8007BEBC 00000000 */  nop
/* 5DF6BF0 8007BEC0 10004230 */  andi       $v0, $v0, 0x10
/* 5DF6BF4 8007BEC4 06004010 */  beqz       $v0, .Llevel_24_8007BEE0
/* 5DF6BF8 8007BEC8 00000000 */   nop
/* 5DF6BFC 8007BECC EFDE000C */  jal        func_80037BBC
/* 5DF6C00 8007BED0 21280000 */   addu      $a1, $zero, $zero
/* 5DF6C04 8007BED4 0A004014 */  bnez       $v0, .Llevel_24_8007BF00
/* 5DF6C08 8007BED8 21202002 */   addu      $a0, $s1, $zero
/* 5DF6C0C 8007BEDC 070000A2 */  sb         $zero, 0x7($s0)
.Llevel_24_8007BEE0:
/* 5DF6C10 8007BEE0 05000292 */  lbu        $v0, 0x5($s0)
/* 5DF6C14 8007BEE4 00000000 */  nop
/* 5DF6C18 8007BEE8 14004010 */  beqz       $v0, .Llevel_24_8007BF3C
/* 5DF6C1C 8007BEEC 21202002 */   addu      $a0, $s1, $zero
.Llevel_24_8007BEF0:
/* 5DF6C20 8007BEF0 EFDE000C */  jal        func_80037BBC
/* 5DF6C24 8007BEF4 21280000 */   addu      $a1, $zero, $zero
/* 5DF6C28 8007BEF8 07004010 */  beqz       $v0, .Llevel_24_8007BF18
/* 5DF6C2C 8007BEFC 21202002 */   addu      $a0, $s1, $zero
.Llevel_24_8007BF00:
/* 5DF6C30 8007BF00 21280000 */  addu       $a1, $zero, $zero
/* 5DF6C34 8007BF04 B944010C */  jal        func_800512E4
/* 5DF6C38 8007BF08 21300000 */   addu      $a2, $zero, $zero
/* 5DF6C3C 8007BF0C 01000224 */  addiu      $v0, $zero, 0x1
/* 5DF6C40 8007BF10 CFEF0108 */  j          .Llevel_24_8007BF3C
/* 5DF6C44 8007BF14 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_24_8007BF18:
/* 5DF6C48 8007BF18 CFEF0108 */  j          .Llevel_24_8007BF3C
/* 5DF6C4C 8007BF1C 070000A2 */   sb        $zero, 0x7($s0)
.Llevel_24_8007BF20:
/* 5DF6C50 8007BF20 0780023C */  lui        $v0, %hi(D_8006E344)
/* 5DF6C54 8007BF24 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 5DF6C58 8007BF28 00000000 */  nop
/* 5DF6C5C 8007BF2C 03004310 */  beq        $v0, $v1, .Llevel_24_8007BF3C
/* 5DF6C60 8007BF30 00000000 */   nop
/* 5DF6C64 8007BF34 200003AE */  sw         $v1, 0x20($s0)
/* 5DF6C68 8007BF38 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_24_8007BF3C:
/* 5DF6C6C 8007BF3C 1800BF8F */  lw         $ra, 0x18($sp)
/* 5DF6C70 8007BF40 1400B18F */  lw         $s1, 0x14($sp)
/* 5DF6C74 8007BF44 1000B08F */  lw         $s0, 0x10($sp)
/* 5DF6C78 8007BF48 2000BD27 */  addiu      $sp, $sp, 0x20
/* 5DF6C7C 8007BF4C 0800E003 */  jr         $ra
/* 5DF6C80 8007BF50 00000000 */   nop
.size MobyUpdate_408_level_24, . - MobyUpdate_408_level_24
