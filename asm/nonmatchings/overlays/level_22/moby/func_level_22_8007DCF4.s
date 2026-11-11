.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_548_level_22
/* 576DA24 8007DCF4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 576DA28 8007DCF8 1000B0AF */  sw         $s0, 0x10($sp)
/* 576DA2C 8007DCFC 21808000 */  addu       $s0, $a0, $zero
/* 576DA30 8007DD00 2400BFAF */  sw         $ra, 0x24($sp)
/* 576DA34 8007DD04 2000B4AF */  sw         $s4, 0x20($sp)
/* 576DA38 8007DD08 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 576DA3C 8007DD0C 1800B2AF */  sw         $s2, 0x18($sp)
/* 576DA40 8007DD10 1400B1AF */  sw         $s1, 0x14($sp)
/* 576DA44 8007DD14 0000118E */  lw         $s1, 0x0($s0)
/* 576DA48 8007DD18 21980000 */  addu       $s3, $zero, $zero
/* 576DA4C 8007DD1C 0400238E */  lw         $v1, 0x4($s1)
/* 576DA50 8007DD20 0000248E */  lw         $a0, 0x0($s1)
/* 576DA54 8007DD24 40100300 */  sll        $v0, $v1, 1
/* 576DA58 8007DD28 21104300 */  addu       $v0, $v0, $v1
/* 576DA5C 8007DD2C 80100200 */  sll        $v0, $v0, 2
/* 576DA60 8007DD30 23104300 */  subu       $v0, $v0, $v1
/* 576DA64 8007DD34 0780033C */  lui        $v1, %hi(D_8006C550)
/* 576DA68 8007DD38 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 576DA6C 8007DD3C C0100200 */  sll        $v0, $v0, 3
/* 576DA70 8007DD40 CF87000C */  jal        func_80021F3C
/* 576DA74 8007DD44 21A06200 */   addu      $s4, $v1, $v0
/* 576DA78 8007DD48 42900200 */  srl        $s2, $v0, 1
/* 576DA7C 8007DD4C 0780053C */  lui        $a1, %hi(D_80070328 + 0xB8)
/* 576DA80 8007DD50 E003A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0xB8)
/* 576DA84 8007DD54 0000A28C */  lw         $v0, 0x0($a1)
/* 576DA88 8007DD58 00000000 */  nop
/* 576DA8C 8007DD5C 05004014 */  bnez       $v0, .Llevel_22_8007DD74
/* 576DA90 8007DD60 01005232 */   andi      $s2, $s2, 0x1
/* 576DA94 8007DD64 0C000426 */  addiu      $a0, $s0, 0xC
/* 576DA98 8007DD68 CD3C010C */  jal        func_8004F334
/* 576DA9C 8007DD6C 48FFA524 */   addiu     $a1, $a1, -0xB8
/* 576DAA0 8007DD70 BC025328 */  slti       $s3, $v0, 0x2BC
.Llevel_22_8007DD74:
/* 576DAA4 8007DD74 0C000426 */  addiu      $a0, $s0, 0xC
/* 576DAA8 8007DD78 CD3C010C */  jal        func_8004F334
/* 576DAAC 8007DD7C 0C008526 */   addiu     $a1, $s4, 0xC
/* 576DAB0 8007DD80 8A024228 */  slti       $v0, $v0, 0x28A
/* 576DAB4 8007DD84 02004010 */  beqz       $v0, .Llevel_22_8007DD90
/* 576DAB8 8007DD88 00000000 */   nop
/* 576DABC 8007DD8C 01001324 */  addiu      $s3, $zero, 0x1
.Llevel_22_8007DD90:
/* 576DAC0 8007DD90 05DC000C */  jal        func_80037014
/* 576DAC4 8007DD94 21200002 */   addu      $a0, $s0, $zero
/* 576DAC8 8007DD98 48000392 */  lbu        $v1, 0x48($s0)
/* 576DACC 8007DD9C 00000000 */  nop
/* 576DAD0 8007DDA0 05006010 */  beqz       $v1, .Llevel_22_8007DDB8
/* 576DAD4 8007DDA4 01000224 */   addiu     $v0, $zero, 0x1
/* 576DAD8 8007DDA8 39006210 */  beq        $v1, $v0, .Llevel_22_8007DE90
/* 576DADC 8007DDAC 08002426 */   addiu     $a0, $s1, 0x8
/* 576DAE0 8007DDB0 D5F70108 */  j          .Llevel_22_8007DF54
/* 576DAE4 8007DDB4 00000000 */   nop
.Llevel_22_8007DDB8:
/* 576DAE8 8007DDB8 66006012 */  beqz       $s3, .Llevel_22_8007DF54
/* 576DAEC 8007DDBC 00000000 */   nop
/* 576DAF0 8007DDC0 0D004012 */  beqz       $s2, .Llevel_22_8007DDF8
/* 576DAF4 8007DDC4 FC000524 */   addiu     $a1, $zero, 0xFC
/* 576DAF8 8007DDC8 0000248E */  lw         $a0, 0x0($s1)
/* 576DAFC 8007DDCC B687000C */  jal        func_80021ED8
/* 576DB00 8007DDD0 21300000 */   addu      $a2, $zero, $zero
/* 576DB04 8007DDD4 21200002 */  addu       $a0, $s0, $zero
/* 576DB08 8007DDD8 0C00258E */  lw         $a1, 0xC($s1)
/* 576DB0C 8007DDDC C4EE000C */  jal        func_8003BB10
/* 576DB10 8007DDE0 21300000 */   addu      $a2, $zero, $zero
/* 576DB14 8007DDE4 21200002 */  addu       $a0, $s0, $zero
/* 576DB18 8007DDE8 01000524 */  addiu      $a1, $zero, 0x1
/* 576DB1C 8007DDEC 01000224 */  addiu      $v0, $zero, 0x1
/* 576DB20 8007DDF0 D3F70108 */  j          .Llevel_22_8007DF4C
/* 576DB24 8007DDF4 480082A0 */   sb        $v0, 0x48($a0)
.Llevel_22_8007DDF8:
/* 576DB28 8007DDF8 0000248E */  lw         $a0, 0x0($s1)
/* 576DB2C 8007DDFC 0F001224 */  addiu      $s2, $zero, 0xF
/* 576DB30 8007DE00 54009210 */  beq        $a0, $s2, .Llevel_22_8007DF54
/* 576DB34 8007DE04 00000000 */   nop
/* 576DB38 8007DE08 CF87000C */  jal        func_80021F3C
/* 576DB3C 8007DE0C 00000000 */   nop
/* 576DB40 8007DE10 03120200 */  sra        $v0, $v0, 8
/* 576DB44 8007DE14 FF004230 */  andi       $v0, $v0, 0xFF
/* 576DB48 8007DE18 40000324 */  addiu      $v1, $zero, 0x40
/* 576DB4C 8007DE1C 23286200 */  subu       $a1, $v1, $v0
/* 576DB50 8007DE20 0300A01C */  bgtz       $a1, .Llevel_22_8007DE30
/* 576DB54 8007DE24 3D00A228 */   slti      $v0, $a1, 0x3D
/* 576DB58 8007DE28 01000524 */  addiu      $a1, $zero, 0x1
/* 576DB5C 8007DE2C 3D00A228 */  slti       $v0, $a1, 0x3D
.Llevel_22_8007DE30:
/* 576DB60 8007DE30 02004014 */  bnez       $v0, .Llevel_22_8007DE3C
/* 576DB64 8007DE34 20000224 */   addiu     $v0, $zero, 0x20
/* 576DB68 8007DE38 3C000524 */  addiu      $a1, $zero, 0x3C
.Llevel_22_8007DE3C:
/* 576DB6C 8007DE3C 0200A214 */  bne        $a1, $v0, .Llevel_22_8007DE48
/* 576DB70 8007DE40 00000000 */   nop
/* 576DB74 8007DE44 21000524 */  addiu      $a1, $zero, 0x21
.Llevel_22_8007DE48:
/* 576DB78 8007DE48 0000248E */  lw         $a0, 0x0($s1)
/* 576DB7C 8007DE4C E387000C */  jal        func_80021F8C
/* 576DB80 8007DE50 21300000 */   addu      $a2, $zero, $zero
/* 576DB84 8007DE54 21200002 */  addu       $a0, $s0, $zero
/* 576DB88 8007DE58 0C00258E */  lw         $a1, 0xC($s1)
/* 576DB8C 8007DE5C C4EE000C */  jal        func_8003BB10
/* 576DB90 8007DE60 21300000 */   addu      $a2, $zero, $zero
/* 576DB94 8007DE64 0000228E */  lw         $v0, 0x0($s1)
/* 576DB98 8007DE68 00000000 */  nop
/* 576DB9C 8007DE6C 04005214 */  bne        $v0, $s2, .Llevel_22_8007DE80
/* 576DBA0 8007DE70 01000224 */   addiu     $v0, $zero, 0x1
/* 576DBA4 8007DE74 04000224 */  addiu      $v0, $zero, 0x4
/* 576DBA8 8007DE78 490002A2 */  sb         $v0, 0x49($s0)
/* 576DBAC 8007DE7C 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_22_8007DE80:
/* 576DBB0 8007DE80 480002A2 */  sb         $v0, 0x48($s0)
/* 576DBB4 8007DE84 21200002 */  addu       $a0, $s0, $zero
/* 576DBB8 8007DE88 D3F70108 */  j          .Llevel_22_8007DF4C
/* 576DBBC 8007DE8C 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_22_8007DE90:
/* 576DBC0 8007DE90 69D6000C */  jal        func_800359A4
/* 576DBC4 8007DE94 04000524 */   addiu     $a1, $zero, 0x4
/* 576DBC8 8007DE98 2E004010 */  beqz       $v0, .Llevel_22_8007DF54
/* 576DBCC 8007DE9C 00000000 */   nop
/* 576DBD0 8007DEA0 2C006016 */  bnez       $s3, .Llevel_22_8007DF54
/* 576DBD4 8007DEA4 00000000 */   nop
/* 576DBD8 8007DEA8 0A004012 */  beqz       $s2, .Llevel_22_8007DED4
/* 576DBDC 8007DEAC 49000426 */   addiu     $a0, $s0, 0x49
/* 576DBE0 8007DEB0 69D6000C */  jal        func_800359A4
/* 576DBE4 8007DEB4 01000524 */   addiu     $a1, $zero, 0x1
/* 576DBE8 8007DEB8 06004010 */  beqz       $v0, .Llevel_22_8007DED4
/* 576DBEC 8007DEBC FC000524 */   addiu     $a1, $zero, 0xFC
/* 576DBF0 8007DEC0 0000248E */  lw         $a0, 0x0($s1)
/* 576DBF4 8007DEC4 B687000C */  jal        func_80021ED8
/* 576DBF8 8007DEC8 21300000 */   addu      $a2, $zero, $zero
/* 576DBFC 8007DECC CDF70108 */  j          .Llevel_22_8007DF34
/* 576DC00 8007DED0 21200002 */   addu      $a0, $s0, $zero
.Llevel_22_8007DED4:
/* 576DC04 8007DED4 0000248E */  lw         $a0, 0x0($s1)
/* 576DC08 8007DED8 0F000224 */  addiu      $v0, $zero, 0xF
/* 576DC0C 8007DEDC 1D008210 */  beq        $a0, $v0, .Llevel_22_8007DF54
/* 576DC10 8007DEE0 00000000 */   nop
/* 576DC14 8007DEE4 CF87000C */  jal        func_80021F3C
/* 576DC18 8007DEE8 00000000 */   nop
/* 576DC1C 8007DEEC 03120200 */  sra        $v0, $v0, 8
/* 576DC20 8007DEF0 FF004230 */  andi       $v0, $v0, 0xFF
/* 576DC24 8007DEF4 40000324 */  addiu      $v1, $zero, 0x40
/* 576DC28 8007DEF8 23286200 */  subu       $a1, $v1, $v0
/* 576DC2C 8007DEFC 0300A01C */  bgtz       $a1, .Llevel_22_8007DF0C
/* 576DC30 8007DF00 3D00A228 */   slti      $v0, $a1, 0x3D
/* 576DC34 8007DF04 01000524 */  addiu      $a1, $zero, 0x1
/* 576DC38 8007DF08 3D00A228 */  slti       $v0, $a1, 0x3D
.Llevel_22_8007DF0C:
/* 576DC3C 8007DF0C 02004014 */  bnez       $v0, .Llevel_22_8007DF18
/* 576DC40 8007DF10 20000224 */   addiu     $v0, $zero, 0x20
/* 576DC44 8007DF14 3C000524 */  addiu      $a1, $zero, 0x3C
.Llevel_22_8007DF18:
/* 576DC48 8007DF18 0200A214 */  bne        $a1, $v0, .Llevel_22_8007DF24
/* 576DC4C 8007DF1C 00000000 */   nop
/* 576DC50 8007DF20 21000524 */  addiu      $a1, $zero, 0x21
.Llevel_22_8007DF24:
/* 576DC54 8007DF24 0000248E */  lw         $a0, 0x0($s1)
/* 576DC58 8007DF28 E387000C */  jal        func_80021F8C
/* 576DC5C 8007DF2C 21300000 */   addu      $a2, $zero, $zero
/* 576DC60 8007DF30 21200002 */  addu       $a0, $s0, $zero
.Llevel_22_8007DF34:
/* 576DC64 8007DF34 0C00258E */  lw         $a1, 0xC($s1)
/* 576DC68 8007DF38 C4EE000C */  jal        func_8003BB10
/* 576DC6C 8007DF3C 21300000 */   addu      $a2, $zero, $zero
/* 576DC70 8007DF40 21200002 */  addu       $a0, $s0, $zero
/* 576DC74 8007DF44 21280000 */  addu       $a1, $zero, $zero
/* 576DC78 8007DF48 480080A0 */  sb         $zero, 0x48($a0)
.Llevel_22_8007DF4C:
/* 576DC7C 8007DF4C D0D3000C */  jal        func_80034F40
/* 576DC80 8007DF50 00000000 */   nop
.Llevel_22_8007DF54:
/* 576DC84 8007DF54 2400BF8F */  lw         $ra, 0x24($sp)
/* 576DC88 8007DF58 2000B48F */  lw         $s4, 0x20($sp)
/* 576DC8C 8007DF5C 1C00B38F */  lw         $s3, 0x1C($sp)
/* 576DC90 8007DF60 1800B28F */  lw         $s2, 0x18($sp)
/* 576DC94 8007DF64 1400B18F */  lw         $s1, 0x14($sp)
/* 576DC98 8007DF68 1000B08F */  lw         $s0, 0x10($sp)
/* 576DC9C 8007DF6C 2800BD27 */  addiu      $sp, $sp, 0x28
/* 576DCA0 8007DF70 0800E003 */  jr         $ra
/* 576DCA4 8007DF74 00000000 */   nop
.size MobyUpdate_548_level_22, . - MobyUpdate_548_level_22
