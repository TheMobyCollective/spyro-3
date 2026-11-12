.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_60_level_31
/* 6A98A48 8007DD18 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 6A98A4C 8007DD1C 1000B0AF */  sw         $s0, 0x10($sp)
/* 6A98A50 8007DD20 21808000 */  addu       $s0, $a0, $zero
/* 6A98A54 8007DD24 01000324 */  addiu      $v1, $zero, 0x1
/* 6A98A58 8007DD28 1800BFAF */  sw         $ra, 0x18($sp)
/* 6A98A5C 8007DD2C 1400B1AF */  sw         $s1, 0x14($sp)
/* 6A98A60 8007DD30 48000292 */  lbu        $v0, 0x48($s0)
/* 6A98A64 8007DD34 0000118E */  lw         $s1, 0x0($s0)
/* 6A98A68 8007DD38 33004310 */  beq        $v0, $v1, .Llevel_31_8007DE08
/* 6A98A6C 8007DD3C 0110023C */   lui       $v0, (0x10010000 >> 16)
/* 6A98A70 8007DD40 1800038E */  lw         $v1, 0x18($s0)
/* 6A98A74 8007DD44 00000000 */  nop
/* 6A98A78 8007DD48 24106200 */  and        $v0, $v1, $v0
/* 6A98A7C 8007DD4C 1A004010 */  beqz       $v0, .Llevel_31_8007DDB8
/* 6A98A80 8007DD50 1C002526 */   addiu     $a1, $s1, 0x1C
/* 6A98A84 8007DD54 07000624 */  addiu      $a2, $zero, 0x7
/* 6A98A88 8007DD58 FEE2000C */  jal        func_80038BF8
/* 6A98A8C 8007DD5C 01000724 */   addiu     $a3, $zero, 0x1
/* 6A98A90 8007DD60 10000424 */  addiu      $a0, $zero, 0x10
/* 6A98A94 8007DD64 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6A98A98 8007DD68 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6A98A9C 8007DD6C 00000000 */  nop
/* 6A98AA0 8007DD70 09F84000 */  jalr       $v0
/* 6A98AA4 8007DD74 21280002 */   addu      $a1, $s0, $zero
/* 6A98AA8 8007DD78 1800028E */  lw         $v0, 0x18($s0)
/* 6A98AAC 8007DD7C 1000033C */  lui        $v1, (0x100000 >> 16)
/* 6A98AB0 8007DD80 24104300 */  and        $v0, $v0, $v1
/* 6A98AB4 8007DD84 08004010 */  beqz       $v0, .Llevel_31_8007DDA8
/* 6A98AB8 8007DD88 01000224 */   addiu     $v0, $zero, 0x1
/* 6A98ABC 8007DD8C 20002296 */  lhu        $v0, 0x20($s1)
/* 6A98AC0 8007DD90 22002396 */  lhu        $v1, 0x22($s1)
/* 6A98AC4 8007DD94 C8004224 */  addiu      $v0, $v0, 0xC8
/* 6A98AC8 8007DD98 32006324 */  addiu      $v1, $v1, 0x32
/* 6A98ACC 8007DD9C 200022A6 */  sh         $v0, 0x20($s1)
/* 6A98AD0 8007DDA0 220023A6 */  sh         $v1, 0x22($s1)
/* 6A98AD4 8007DDA4 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_31_8007DDA8:
/* 6A98AD8 8007DDA8 480002A2 */  sb         $v0, 0x48($s0)
/* 6A98ADC 8007DDAC 21200002 */  addu       $a0, $s0, $zero
/* 6A98AE0 8007DDB0 80F70108 */  j          .Llevel_31_8007DE00
/* 6A98AE4 8007DDB4 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_31_8007DDB8:
/* 6A98AE8 8007DDB8 0200023C */  lui        $v0, (0x20000 >> 16)
/* 6A98AEC 8007DDBC 24106200 */  and        $v0, $v1, $v0
/* 6A98AF0 8007DDC0 11004010 */  beqz       $v0, .Llevel_31_8007DE08
/* 6A98AF4 8007DDC4 21200002 */   addu      $a0, $s0, $zero
/* 6A98AF8 8007DDC8 1C002526 */  addiu      $a1, $s1, 0x1C
/* 6A98AFC 8007DDCC 07000624 */  addiu      $a2, $zero, 0x7
/* 6A98B00 8007DDD0 FEE2000C */  jal        func_80038BF8
/* 6A98B04 8007DDD4 01000724 */   addiu     $a3, $zero, 0x1
/* 6A98B08 8007DDD8 10000424 */  addiu      $a0, $zero, 0x10
/* 6A98B0C 8007DDDC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6A98B10 8007DDE0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6A98B14 8007DDE4 00000000 */  nop
/* 6A98B18 8007DDE8 09F84000 */  jalr       $v0
/* 6A98B1C 8007DDEC 21280002 */   addu      $a1, $s0, $zero
/* 6A98B20 8007DDF0 21200002 */  addu       $a0, $s0, $zero
/* 6A98B24 8007DDF4 01000524 */  addiu      $a1, $zero, 0x1
/* 6A98B28 8007DDF8 01000224 */  addiu      $v0, $zero, 0x1
/* 6A98B2C 8007DDFC 480002A2 */  sb         $v0, 0x48($s0)
.Llevel_31_8007DE00:
/* 6A98B30 8007DE00 D0D3000C */  jal        func_80034F40
/* 6A98B34 8007DE04 00000000 */   nop
.Llevel_31_8007DE08:
/* 6A98B38 8007DE08 48000392 */  lbu        $v1, 0x48($s0)
/* 6A98B3C 8007DE0C 01000224 */  addiu      $v0, $zero, 0x1
/* 6A98B40 8007DE10 18006210 */  beq        $v1, $v0, .Llevel_31_8007DE74
/* 6A98B44 8007DE14 02006228 */   slti      $v0, $v1, 0x2
/* 6A98B48 8007DE18 05004010 */  beqz       $v0, .Llevel_31_8007DE30
/* 6A98B4C 8007DE1C 00000000 */   nop
/* 6A98B50 8007DE20 08006010 */  beqz       $v1, .Llevel_31_8007DE44
/* 6A98B54 8007DE24 21200002 */   addu      $a0, $s0, $zero
/* 6A98B58 8007DE28 B9F70108 */  j          .Llevel_31_8007DEE4
/* 6A98B5C 8007DE2C 00000000 */   nop
.Llevel_31_8007DE30:
/* 6A98B60 8007DE30 02000224 */  addiu      $v0, $zero, 0x2
/* 6A98B64 8007DE34 1E006210 */  beq        $v1, $v0, .Llevel_31_8007DEB0
/* 6A98B68 8007DE38 00000000 */   nop
/* 6A98B6C 8007DE3C B9F70108 */  j          .Llevel_31_8007DEE4
/* 6A98B70 8007DE40 00000000 */   nop
.Llevel_31_8007DE44:
/* 6A98B74 8007DE44 21282002 */  addu       $a1, $s1, $zero
/* 6A98B78 8007DE48 5ADC000C */  jal        func_80037168
/* 6A98B7C 8007DE4C 01000624 */   addiu     $a2, $zero, 0x1
/* 6A98B80 8007DE50 18002426 */  addiu      $a0, $s1, 0x18
/* 6A98B84 8007DE54 69D6000C */  jal        func_800359A4
/* 6A98B88 8007DE58 04000524 */   addiu     $a1, $zero, 0x4
/* 6A98B8C 8007DE5C 21004010 */  beqz       $v0, .Llevel_31_8007DEE4
/* 6A98B90 8007DE60 02000224 */   addiu     $v0, $zero, 0x2
/* 6A98B94 8007DE64 480002A2 */  sb         $v0, 0x48($s0)
/* 6A98B98 8007DE68 21200002 */  addu       $a0, $s0, $zero
/* 6A98B9C 8007DE6C B7F70108 */  j          .Llevel_31_8007DEDC
/* 6A98BA0 8007DE70 02000524 */   addiu     $a1, $zero, 0x2
.Llevel_31_8007DE74:
/* 6A98BA4 8007DE74 21200002 */  addu       $a0, $s0, $zero
/* 6A98BA8 8007DE78 65D4000C */  jal        func_80035194
/* 6A98BAC 8007DE7C 1C002526 */   addiu     $a1, $s1, 0x1C
/* 6A98BB0 8007DE80 00010324 */  addiu      $v1, $zero, 0x100
/* 6A98BB4 8007DE84 17004314 */  bne        $v0, $v1, .Llevel_31_8007DEE4
/* 6A98BB8 8007DE88 21200002 */   addu      $a0, $s0, $zero
/* 6A98BBC 8007DE8C 4957010C */  jal        func_80055D24
/* 6A98BC0 8007DE90 04000524 */   addiu     $a1, $zero, 0x4
/* 6A98BC4 8007DE94 21200002 */  addu       $a0, $s0, $zero
/* 6A98BC8 8007DE98 6EDA000C */  jal        func_800369B8
/* 6A98BCC 8007DE9C 18000524 */   addiu     $a1, $zero, 0x18
/* 6A98BD0 8007DEA0 C656010C */  jal        func_80055B18
/* 6A98BD4 8007DEA4 21200002 */   addu      $a0, $s0, $zero
/* 6A98BD8 8007DEA8 B9F70108 */  j          .Llevel_31_8007DEE4
/* 6A98BDC 8007DEAC 00000000 */   nop
.Llevel_31_8007DEB0:
/* 6A98BE0 8007DEB0 0780023C */  lui        $v0, %hi(D_8006C770)
/* 6A98BE4 8007DEB4 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 6A98BE8 8007DEB8 00000000 */  nop
/* 6A98BEC 8007DEBC 09004010 */  beqz       $v0, .Llevel_31_8007DEE4
/* 6A98BF0 8007DEC0 5A000424 */   addiu     $a0, $zero, 0x5A
/* 6A98BF4 8007DEC4 DBD8000C */  jal        func_8003636C
/* 6A98BF8 8007DEC8 2C010524 */   addiu     $a1, $zero, 0x12C
/* 6A98BFC 8007DECC 21200002 */  addu       $a0, $s0, $zero
/* 6A98C00 8007DED0 21280000 */  addu       $a1, $zero, $zero
/* 6A98C04 8007DED4 180022AE */  sw         $v0, 0x18($s1)
/* 6A98C08 8007DED8 480080A0 */  sb         $zero, 0x48($a0)
.Llevel_31_8007DEDC:
/* 6A98C0C 8007DEDC D0D3000C */  jal        func_80034F40
/* 6A98C10 8007DEE0 00000000 */   nop
.Llevel_31_8007DEE4:
/* 6A98C14 8007DEE4 1800BF8F */  lw         $ra, 0x18($sp)
/* 6A98C18 8007DEE8 1400B18F */  lw         $s1, 0x14($sp)
/* 6A98C1C 8007DEEC 1000B08F */  lw         $s0, 0x10($sp)
/* 6A98C20 8007DEF0 2000BD27 */  addiu      $sp, $sp, 0x20
/* 6A98C24 8007DEF4 0800E003 */  jr         $ra
/* 6A98C28 8007DEF8 00000000 */   nop
.size MobyUpdate_60_level_31, . - MobyUpdate_60_level_31
