.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_34_8007DA38
/* 74D9768 8007DA38 40FFBD27 */  addiu      $sp, $sp, -0xC0
/* 74D976C 8007DA3C A800B4AF */  sw         $s4, 0xA8($sp)
/* 74D9770 8007DA40 21A08000 */  addu       $s4, $a0, $zero
/* 74D9774 8007DA44 01000224 */  addiu      $v0, $zero, 0x1
/* 74D9778 8007DA48 BC00BFAF */  sw         $ra, 0xBC($sp)
/* 74D977C 8007DA4C B800BEAF */  sw         $fp, 0xB8($sp)
/* 74D9780 8007DA50 B400B7AF */  sw         $s7, 0xB4($sp)
/* 74D9784 8007DA54 B000B6AF */  sw         $s6, 0xB0($sp)
/* 74D9788 8007DA58 AC00B5AF */  sw         $s5, 0xAC($sp)
/* 74D978C 8007DA5C A400B3AF */  sw         $s3, 0xA4($sp)
/* 74D9790 8007DA60 A000B2AF */  sw         $s2, 0xA0($sp)
/* 74D9794 8007DA64 9C00B1AF */  sw         $s1, 0x9C($sp)
/* 74D9798 8007DA68 9800B0AF */  sw         $s0, 0x98($sp)
/* 74D979C 8007DA6C 48008392 */  lbu        $v1, 0x48($s4)
/* 74D97A0 8007DA70 0000958E */  lw         $s5, 0x0($s4)
/* 74D97A4 8007DA74 80006210 */  beq        $v1, $v0, .Llevel_34_8007DC78
/* 74D97A8 8007DA78 02006228 */   slti      $v0, $v1, 0x2
/* 74D97AC 8007DA7C 05004010 */  beqz       $v0, .Llevel_34_8007DA94
/* 74D97B0 8007DA80 00000000 */   nop
/* 74D97B4 8007DA84 0A006010 */  beqz       $v1, .Llevel_34_8007DAB0
/* 74D97B8 8007DA88 01001E3C */   lui       $fp, (0x1869F >> 16)
/* 74D97BC 8007DA8C B5F80108 */  j          .Llevel_34_8007E2D4
/* 74D97C0 8007DA90 00000000 */   nop
.Llevel_34_8007DA94:
/* 74D97C4 8007DA94 02000224 */  addiu      $v0, $zero, 0x2
/* 74D97C8 8007DA98 84016210 */  beq        $v1, $v0, .Llevel_34_8007E0AC
/* 74D97CC 8007DA9C 03000224 */   addiu     $v0, $zero, 0x3
/* 74D97D0 8007DAA0 BB016210 */  beq        $v1, $v0, .Llevel_34_8007E190
/* 74D97D4 8007DAA4 00000000 */   nop
/* 74D97D8 8007DAA8 B5F80108 */  j          .Llevel_34_8007E2D4
/* 74D97DC 8007DAAC 00000000 */   nop
.Llevel_34_8007DAB0:
/* 74D97E0 8007DAB0 9F86DE37 */  ori        $fp, $fp, (0x1869F & 0xFFFF)
/* 74D97E4 8007DAB4 0780163C */  lui        $s6, %hi(D_8006E788)
/* 74D97E8 8007DAB8 88E7D626 */  addiu      $s6, $s6, %lo(D_8006E788)
/* 74D97EC 8007DABC 0000A0AE */  sw         $zero, 0x0($s5)
/* 74D97F0 8007DAC0 0000D38E */  lw         $s3, 0x0($s6)
/* 74D97F4 8007DAC4 00000000 */  nop
/* 74D97F8 8007DAC8 53006012 */  beqz       $s3, .Llevel_34_8007DC18
/* 74D97FC 8007DACC 0400D626 */   addiu     $s6, $s6, 0x4
/* 74D9800 8007DAD0 0C009726 */  addiu      $s7, $s4, 0xC
.Llevel_34_8007DAD4:
/* 74D9804 8007DAD4 48006292 */  lbu        $v0, 0x48($s3)
/* 74D9808 8007DAD8 00000000 */  nop
/* 74D980C 8007DADC 80004230 */  andi       $v0, $v0, 0x80
/* 74D9810 8007DAE0 49004014 */  bnez       $v0, .Llevel_34_8007DC08
/* 74D9814 8007DAE4 00000000 */   nop
/* 74D9818 8007DAE8 0800628E */  lw         $v0, 0x8($s3)
/* 74D981C 8007DAEC 00000000 */  nop
/* 74D9820 8007DAF0 45004010 */  beqz       $v0, .Llevel_34_8007DC08
/* 74D9824 8007DAF4 1800A427 */   addiu     $a0, $sp, 0x18
/* 74D9828 8007DAF8 5E3C010C */  jal        func_8004F178
/* 74D982C 8007DAFC 0C006526 */   addiu     $a1, $s3, 0xC
/* 74D9830 8007DB00 21300000 */  addu       $a2, $zero, $zero
/* 74D9834 8007DB04 2000A28F */  lw         $v0, 0x20($sp)
/* 74D9838 8007DB08 1800A38F */  lw         $v1, 0x18($sp)
/* 74D983C 8007DB0C 80004224 */  addiu      $v0, $v0, 0x80
/* 74D9840 8007DB10 2000A2AF */  sw         $v0, 0x20($sp)
/* 74D9844 8007DB14 0C00848E */  lw         $a0, 0xC($s4)
/* 74D9848 8007DB18 1C00A28F */  lw         $v0, 0x1C($sp)
/* 74D984C 8007DB1C 1000858E */  lw         $a1, 0x10($s4)
/* 74D9850 8007DB20 23206400 */  subu       $a0, $v1, $a0
/* 74D9854 8007DB24 203A010C */  jal        func_8004E880
/* 74D9858 8007DB28 23284500 */   subu      $a1, $v0, $a1
/* 74D985C 8007DB2C 46008392 */  lbu        $v1, 0x46($s4)
/* 74D9860 8007DB30 00000000 */  nop
/* 74D9864 8007DB34 23104300 */  subu       $v0, $v0, $v1
/* 74D9868 8007DB38 FF005230 */  andi       $s2, $v0, 0xFF
/* 74D986C 8007DB3C 8100422A */  slti       $v0, $s2, 0x81
/* 74D9870 8007DB40 02004014 */  bnez       $v0, .Llevel_34_8007DB4C
/* 74D9874 8007DB44 2120E002 */   addu      $a0, $s7, $zero
/* 74D9878 8007DB48 00FF5226 */  addiu      $s2, $s2, -0x100
.Llevel_34_8007DB4C:
/* 74D987C 8007DB4C CD3C010C */  jal        func_8004F334
/* 74D9880 8007DB50 1800A527 */   addiu     $a1, $sp, 0x18
/* 74D9884 8007DB54 21204000 */  addu       $a0, $v0, $zero
/* 74D9888 8007DB58 2000A28F */  lw         $v0, 0x20($sp)
/* 74D988C 8007DB5C 1400858E */  lw         $a1, 0x14($s4)
/* 74D9890 8007DB60 21300000 */  addu       $a2, $zero, $zero
/* 74D9894 8007DB64 203A010C */  jal        func_8004E880
/* 74D9898 8007DB68 23284500 */   subu      $a1, $v0, $a1
/* 74D989C 8007DB6C 45008392 */  lbu        $v1, 0x45($s4)
/* 74D98A0 8007DB70 00000000 */  nop
/* 74D98A4 8007DB74 23104300 */  subu       $v0, $v0, $v1
/* 74D98A8 8007DB78 FF005030 */  andi       $s0, $v0, 0xFF
/* 74D98AC 8007DB7C 8100022A */  slti       $v0, $s0, 0x81
/* 74D98B0 8007DB80 02004014 */  bnez       $v0, .Llevel_34_8007DB8C
/* 74D98B4 8007DB84 00000000 */   nop
/* 74D98B8 8007DB88 00FF1026 */  addiu      $s0, $s0, -0x100
.Llevel_34_8007DB8C:
/* 74D98BC 8007DB8C 02004106 */  bgez       $s2, .Llevel_34_8007DB98
/* 74D98C0 8007DB90 00000000 */   nop
/* 74D98C4 8007DB94 23901200 */  negu       $s2, $s2
.Llevel_34_8007DB98:
/* 74D98C8 8007DB98 02000106 */  bgez       $s0, .Llevel_34_8007DBA4
/* 74D98CC 8007DB9C 00000000 */   nop
/* 74D98D0 8007DBA0 23801000 */  negu       $s0, $s0
.Llevel_34_8007DBA4:
/* 74D98D4 8007DBA4 0C00422A */  slti       $v0, $s2, 0xC
/* 74D98D8 8007DBA8 17004010 */  beqz       $v0, .Llevel_34_8007DC08
/* 74D98DC 8007DBAC 0C00022A */   slti      $v0, $s0, 0xC
/* 74D98E0 8007DBB0 15004010 */  beqz       $v0, .Llevel_34_8007DC08
/* 74D98E4 8007DBB4 2120E002 */   addu      $a0, $s7, $zero
/* 74D98E8 8007DBB8 CD3C010C */  jal        func_8004F334
/* 74D98EC 8007DBBC 1800A527 */   addiu     $a1, $sp, 0x18
/* 74D98F0 8007DBC0 00280324 */  addiu      $v1, $zero, 0x2800
/* 74D98F4 8007DBC4 23186200 */  subu       $v1, $v1, $v0
/* 74D98F8 8007DBC8 02006104 */  bgez       $v1, .Llevel_34_8007DBD4
/* 74D98FC 8007DBCC 21886000 */   addu      $s1, $v1, $zero
/* 74D9900 8007DBD0 23881100 */  negu       $s1, $s1
.Llevel_34_8007DBD4:
/* 74D9904 8007DBD4 21105002 */  addu       $v0, $s2, $s0
/* 74D9908 8007DBD8 80120200 */  sll        $v0, $v0, 10
/* 74D990C 8007DBDC 21882202 */  addu       $s1, $s1, $v0
/* 74D9910 8007DBE0 2A103E02 */  slt        $v0, $s1, $fp
/* 74D9914 8007DBE4 08004010 */  beqz       $v0, .Llevel_34_8007DC08
/* 74D9918 8007DBE8 2120E002 */   addu      $a0, $s7, $zero
/* 74D991C 8007DBEC 1800A527 */  addiu      $a1, $sp, 0x18
/* 74D9920 8007DBF0 8E4F000C */  jal        func_80013E38
/* 74D9924 8007DBF4 04000624 */   addiu     $a2, $zero, 0x4
/* 74D9928 8007DBF8 03004010 */  beqz       $v0, .Llevel_34_8007DC08
/* 74D992C 8007DBFC 00000000 */   nop
/* 74D9930 8007DC00 0000B3AE */  sw         $s3, 0x0($s5)
/* 74D9934 8007DC04 21F02002 */  addu       $fp, $s1, $zero
.Llevel_34_8007DC08:
/* 74D9938 8007DC08 0000D38E */  lw         $s3, 0x0($s6)
/* 74D993C 8007DC0C 00000000 */  nop
/* 74D9940 8007DC10 B0FF6016 */  bnez       $s3, .Llevel_34_8007DAD4
/* 74D9944 8007DC14 0400D626 */   addiu     $s6, $s6, 0x4
.Llevel_34_8007DC18:
/* 74D9948 8007DC18 0100023C */  lui        $v0, (0x1869F >> 16)
/* 74D994C 8007DC1C 9F864234 */  ori        $v0, $v0, (0x1869F & 0xFFFF)
/* 74D9950 8007DC20 0200C217 */  bne        $fp, $v0, .Llevel_34_8007DC2C
/* 74D9954 8007DC24 00000000 */   nop
/* 74D9958 8007DC28 0000A0AE */  sw         $zero, 0x0($s5)
.Llevel_34_8007DC2C:
/* 74D995C 8007DC2C 44008292 */  lbu        $v0, 0x44($s4)
/* 74D9960 8007DC30 00000000 */  nop
/* 74D9964 8007DC34 00110200 */  sll        $v0, $v0, 4
/* 74D9968 8007DC38 0400A2A6 */  sh         $v0, 0x4($s5)
/* 74D996C 8007DC3C 45008292 */  lbu        $v0, 0x45($s4)
/* 74D9970 8007DC40 00000000 */  nop
/* 74D9974 8007DC44 00110200 */  sll        $v0, $v0, 4
/* 74D9978 8007DC48 0600A2A6 */  sh         $v0, 0x6($s5)
/* 74D997C 8007DC4C 46008392 */  lbu        $v1, 0x46($s4)
/* 74D9980 8007DC50 B4000224 */  addiu      $v0, $zero, 0xB4
/* 74D9984 8007DC54 0E00A2A6 */  sh         $v0, 0xE($s5)
/* 74D9988 8007DC58 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 74D998C 8007DC5C 1000A2AE */  sw         $v0, 0x10($s5)
/* 74D9990 8007DC60 01000224 */  addiu      $v0, $zero, 0x1
/* 74D9994 8007DC64 0A00A0A6 */  sh         $zero, 0xA($s5)
/* 74D9998 8007DC68 0C00A0A6 */  sh         $zero, 0xC($s5)
/* 74D999C 8007DC6C 00190300 */  sll        $v1, $v1, 4
/* 74D99A0 8007DC70 0800A3A6 */  sh         $v1, 0x8($s5)
/* 74D99A4 8007DC74 480082A2 */  sb         $v0, 0x48($s4)
.Llevel_34_8007DC78:
/* 74D99A8 8007DC78 0300033C */  lui        $v1, (0x3D400 >> 16)
/* 74D99AC 8007DC7C 0C00858E */  lw         $a1, 0xC($s4)
/* 74D99B0 8007DC80 00D46334 */  ori        $v1, $v1, (0x3D400 & 0xFFFF)
/* 74D99B4 8007DC84 2A106500 */  slt        $v0, $v1, $a1
/* 74D99B8 8007DC88 15004014 */  bnez       $v0, .Llevel_34_8007DCE0
/* 74D99BC 8007DC8C 00000000 */   nop
/* 74D99C0 8007DC90 1000848E */  lw         $a0, 0x10($s4)
/* 74D99C4 8007DC94 00000000 */  nop
/* 74D99C8 8007DC98 2A106400 */  slt        $v0, $v1, $a0
/* 74D99CC 8007DC9C 10004014 */  bnez       $v0, .Llevel_34_8007DCE0
/* 74D99D0 8007DCA0 0100023C */   lui       $v0, (0x1E000 >> 16)
/* 74D99D4 8007DCA4 1400838E */  lw         $v1, 0x14($s4)
/* 74D99D8 8007DCA8 00E04234 */  ori        $v0, $v0, (0x1E000 & 0xFFFF)
/* 74D99DC 8007DCAC 2A104300 */  slt        $v0, $v0, $v1
/* 74D99E0 8007DCB0 0B004014 */  bnez       $v0, .Llevel_34_8007DCE0
/* 74D99E4 8007DCB4 0004A228 */   slti      $v0, $a1, 0x400
/* 74D99E8 8007DCB8 09004014 */  bnez       $v0, .Llevel_34_8007DCE0
/* 74D99EC 8007DCBC 00048228 */   slti      $v0, $a0, 0x400
/* 74D99F0 8007DCC0 07004014 */  bnez       $v0, .Llevel_34_8007DCE0
/* 74D99F4 8007DCC4 00046228 */   slti      $v0, $v1, 0x400
/* 74D99F8 8007DCC8 05004014 */  bnez       $v0, .Llevel_34_8007DCE0
/* 74D99FC 8007DCCC 0E00A426 */   addiu     $a0, $s5, 0xE
/* 74D9A00 8007DCD0 69D6000C */  jal        func_800359A4
/* 74D9A04 8007DCD4 02000524 */   addiu     $a1, $zero, 0x2
/* 74D9A08 8007DCD8 0B004010 */  beqz       $v0, .Llevel_34_8007DD08
/* 74D9A0C 8007DCDC 2800A427 */   addiu     $a0, $sp, 0x28
.Llevel_34_8007DCE0:
/* 74D9A10 8007DCE0 1000A58E */  lw         $a1, 0x10($s5)
/* 74D9A14 8007DCE4 F0EF000C */  jal        func_8003BFC0
/* 74D9A18 8007DCE8 21208002 */   addu      $a0, $s4, $zero
/* 74D9A1C 8007DCEC 77014010 */  beqz       $v0, .Llevel_34_8007E2CC
/* 74D9A20 8007DCF0 00000000 */   nop
/* 74D9A24 8007DCF4 1000A48E */  lw         $a0, 0x10($s5)
/* 74D9A28 8007DCF8 9CEF000C */  jal        func_8003BE70
/* 74D9A2C 8007DCFC 00000000 */   nop
/* 74D9A30 8007DD00 B3F80108 */  j          .Llevel_34_8007E2CC
/* 74D9A34 8007DD04 00000000 */   nop
.Llevel_34_8007DD08:
/* 74D9A38 8007DD08 0C009126 */  addiu      $s1, $s4, 0xC
/* 74D9A3C 8007DD0C 5E3C010C */  jal        func_8004F178
/* 74D9A40 8007DD10 21282002 */   addu      $a1, $s1, $zero
/* 74D9A44 8007DD14 0000A28E */  lw         $v0, 0x0($s5)
/* 74D9A48 8007DD18 00000000 */  nop
/* 74D9A4C 8007DD1C 48004290 */  lbu        $v0, 0x48($v0)
/* 74D9A50 8007DD20 00000000 */  nop
/* 74D9A54 8007DD24 80004230 */  andi       $v0, $v0, 0x80
/* 74D9A58 8007DD28 02004010 */  beqz       $v0, .Llevel_34_8007DD34
/* 74D9A5C 8007DD2C 00000000 */   nop
/* 74D9A60 8007DD30 0000A0AE */  sw         $zero, 0x0($s5)
.Llevel_34_8007DD34:
/* 74D9A64 8007DD34 0000A58E */  lw         $a1, 0x0($s5)
/* 74D9A68 8007DD38 00000000 */  nop
/* 74D9A6C 8007DD3C 5700A010 */  beqz       $a1, .Llevel_34_8007DE9C
/* 74D9A70 8007DD40 4800B027 */   addiu     $s0, $sp, 0x48
/* 74D9A74 8007DD44 21200002 */  addu       $a0, $s0, $zero
/* 74D9A78 8007DD48 5E3C010C */  jal        func_8004F178
/* 74D9A7C 8007DD4C 0C00A524 */   addiu     $a1, $a1, 0xC
/* 74D9A80 8007DD50 3800B227 */  addiu      $s2, $sp, 0x38
/* 74D9A84 8007DD54 21204002 */  addu       $a0, $s2, $zero
/* 74D9A88 8007DD58 21280002 */  addu       $a1, $s0, $zero
/* 74D9A8C 8007DD5C 5000A28F */  lw         $v0, 0x50($sp)
/* 74D9A90 8007DD60 21302002 */  addu       $a2, $s1, $zero
/* 74D9A94 8007DD64 80004224 */  addiu      $v0, $v0, 0x80
/* 74D9A98 8007DD68 723C010C */  jal        func_8004F1C8
/* 74D9A9C 8007DD6C 5000A2AF */   sw        $v0, 0x50($sp)
/* 74D9AA0 8007DD70 01000624 */  addiu      $a2, $zero, 0x1
/* 74D9AA4 8007DD74 3800A48F */  lw         $a0, 0x38($sp)
/* 74D9AA8 8007DD78 4000A28F */  lw         $v0, 0x40($sp)
/* 74D9AAC 8007DD7C 3C00A58F */  lw         $a1, 0x3C($sp)
/* 74D9AB0 8007DD80 00014224 */  addiu      $v0, $v0, 0x100
/* 74D9AB4 8007DD84 203A010C */  jal        func_8004E880
/* 74D9AB8 8007DD88 4000A2AF */   sw        $v0, 0x40($sp)
/* 74D9ABC 8007DD8C 3800A48F */  lw         $a0, 0x38($sp)
/* 74D9AC0 8007DD90 3C00A58F */  lw         $a1, 0x3C($sp)
/* 74D9AC4 8007DD94 203A010C */  jal        func_8004E880
/* 74D9AC8 8007DD98 01000624 */   addiu     $a2, $zero, 0x1
/* 74D9ACC 8007DD9C 0800A386 */  lh         $v1, 0x8($s5)
/* 74D9AD0 8007DDA0 00000000 */  nop
/* 74D9AD4 8007DDA4 23104300 */  subu       $v0, $v0, $v1
/* 74D9AD8 8007DDA8 FF0F4630 */  andi       $a2, $v0, 0xFFF
/* 74D9ADC 8007DDAC 0108C228 */  slti       $v0, $a2, 0x801
/* 74D9AE0 8007DDB0 02004014 */  bnez       $v0, .Llevel_34_8007DDBC
/* 74D9AE4 8007DDB4 21386000 */   addu      $a3, $v1, $zero
/* 74D9AE8 8007DDB8 00F0C624 */  addiu      $a2, $a2, -0x1000
.Llevel_34_8007DDBC:
/* 74D9AEC 8007DDBC 0200C104 */  bgez       $a2, .Llevel_34_8007DDC8
/* 74D9AF0 8007DDC0 2110C000 */   addu      $v0, $a2, $zero
/* 74D9AF4 8007DDC4 23100200 */  negu       $v0, $v0
.Llevel_34_8007DDC8:
/* 74D9AF8 8007DDC8 00034228 */  slti       $v0, $v0, 0x300
/* 74D9AFC 8007DDCC 32004010 */  beqz       $v0, .Llevel_34_8007DE98
/* 74D9B00 8007DDD0 B4000324 */   addiu     $v1, $zero, 0xB4
/* 74D9B04 8007DDD4 0E00A286 */  lh         $v0, 0xE($s5)
/* 74D9B08 8007DDD8 00000000 */  nop
/* 74D9B0C 8007DDDC 23186200 */  subu       $v1, $v1, $v0
/* 74D9B10 8007DDE0 83800300 */  sra        $s0, $v1, 2
/* 74D9B14 8007DDE4 0900022A */  slti       $v0, $s0, 0x9
/* 74D9B18 8007DDE8 03004014 */  bnez       $v0, .Llevel_34_8007DDF8
/* 74D9B1C 8007DDEC 23881000 */   negu      $s1, $s0
/* 74D9B20 8007DDF0 08001024 */  addiu      $s0, $zero, 0x8
/* 74D9B24 8007DDF4 23881000 */  negu       $s1, $s0
.Llevel_34_8007DDF8:
/* 74D9B28 8007DDF8 2A10D100 */  slt        $v0, $a2, $s1
/* 74D9B2C 8007DDFC 03004010 */  beqz       $v0, .Llevel_34_8007DE0C
/* 74D9B30 8007DE00 2A100602 */   slt       $v0, $s0, $a2
/* 74D9B34 8007DE04 21302002 */  addu       $a2, $s1, $zero
/* 74D9B38 8007DE08 2A100602 */  slt        $v0, $s0, $a2
.Llevel_34_8007DE0C:
/* 74D9B3C 8007DE0C 02004010 */  beqz       $v0, .Llevel_34_8007DE18
/* 74D9B40 8007DE10 21204002 */   addu      $a0, $s2, $zero
/* 74D9B44 8007DE14 21300002 */  addu       $a2, $s0, $zero
.Llevel_34_8007DE18:
/* 74D9B48 8007DE18 21280000 */  addu       $a1, $zero, $zero
/* 74D9B4C 8007DE1C 2110E600 */  addu       $v0, $a3, $a2
/* 74D9B50 8007DE20 7A3B010C */  jal        func_8004EDE8
/* 74D9B54 8007DE24 0800A2A6 */   sh        $v0, 0x8($s5)
/* 74D9B58 8007DE28 21204000 */  addu       $a0, $v0, $zero
/* 74D9B5C 8007DE2C 4000A58F */  lw         $a1, 0x40($sp)
/* 74D9B60 8007DE30 203A010C */  jal        func_8004E880
/* 74D9B64 8007DE34 01000624 */   addiu     $a2, $zero, 0x1
/* 74D9B68 8007DE38 0600A386 */  lh         $v1, 0x6($s5)
/* 74D9B6C 8007DE3C 00000000 */  nop
/* 74D9B70 8007DE40 23104300 */  subu       $v0, $v0, $v1
/* 74D9B74 8007DE44 FF0F4630 */  andi       $a2, $v0, 0xFFF
/* 74D9B78 8007DE48 0108C228 */  slti       $v0, $a2, 0x801
/* 74D9B7C 8007DE4C 02004014 */  bnez       $v0, .Llevel_34_8007DE58
/* 74D9B80 8007DE50 00000000 */   nop
/* 74D9B84 8007DE54 00F0C624 */  addiu      $a2, $a2, -0x1000
.Llevel_34_8007DE58:
/* 74D9B88 8007DE58 0200C104 */  bgez       $a2, .Llevel_34_8007DE64
/* 74D9B8C 8007DE5C 2110C000 */   addu      $v0, $a2, $zero
/* 74D9B90 8007DE60 23100200 */  negu       $v0, $v0
.Llevel_34_8007DE64:
/* 74D9B94 8007DE64 00034228 */  slti       $v0, $v0, 0x300
/* 74D9B98 8007DE68 0B004010 */  beqz       $v0, .Llevel_34_8007DE98
/* 74D9B9C 8007DE6C 2A10D100 */   slt       $v0, $a2, $s1
/* 74D9BA0 8007DE70 03004010 */  beqz       $v0, .Llevel_34_8007DE80
/* 74D9BA4 8007DE74 2A100602 */   slt       $v0, $s0, $a2
/* 74D9BA8 8007DE78 21302002 */  addu       $a2, $s1, $zero
/* 74D9BAC 8007DE7C 2A100602 */  slt        $v0, $s0, $a2
.Llevel_34_8007DE80:
/* 74D9BB0 8007DE80 03004010 */  beqz       $v0, .Llevel_34_8007DE90
/* 74D9BB4 8007DE84 21106600 */   addu      $v0, $v1, $a2
/* 74D9BB8 8007DE88 21300002 */  addu       $a2, $s0, $zero
/* 74D9BBC 8007DE8C 21106600 */  addu       $v0, $v1, $a2
.Llevel_34_8007DE90:
/* 74D9BC0 8007DE90 A7F70108 */  j          .Llevel_34_8007DE9C
/* 74D9BC4 8007DE94 0600A2A6 */   sh        $v0, 0x6($s5)
.Llevel_34_8007DE98:
/* 74D9BC8 8007DE98 0000A0AE */  sw         $zero, 0x0($s5)
.Llevel_34_8007DE9C:
/* 74D9BCC 8007DE9C 0400A296 */  lhu        $v0, 0x4($s5)
/* 74D9BD0 8007DEA0 00000000 */  nop
/* 74D9BD4 8007DEA4 02110200 */  srl        $v0, $v0, 4
/* 74D9BD8 8007DEA8 440082A2 */  sb         $v0, 0x44($s4)
/* 74D9BDC 8007DEAC 0600A296 */  lhu        $v0, 0x6($s5)
/* 74D9BE0 8007DEB0 21208002 */  addu       $a0, $s4, $zero
/* 74D9BE4 8007DEB4 02110200 */  srl        $v0, $v0, 4
/* 74D9BE8 8007DEB8 450082A2 */  sb         $v0, 0x45($s4)
/* 74D9BEC 8007DEBC 0800A296 */  lhu        $v0, 0x8($s5)
/* 74D9BF0 8007DEC0 04000524 */  addiu      $a1, $zero, 0x4
/* 74D9BF4 8007DEC4 02110200 */  srl        $v0, $v0, 4
/* 74D9BF8 8007DEC8 4957010C */  jal        func_80055D24
/* 74D9BFC 8007DECC 460082A2 */   sb        $v0, 0x46($s4)
/* 74D9C00 8007DED0 20008426 */  addiu      $a0, $s4, 0x20
/* 74D9C04 8007DED4 3800B027 */  addiu      $s0, $sp, 0x38
/* 74D9C08 8007DED8 21280002 */  addu       $a1, $s0, $zero
/* 74D9C0C 8007DEDC 21300002 */  addu       $a2, $s0, $zero
/* 74D9C10 8007DEE0 80010224 */  addiu      $v0, $zero, 0x180
/* 74D9C14 8007DEE4 3800A2AF */  sw         $v0, 0x38($sp)
/* 74D9C18 8007DEE8 3C00A0AF */  sw         $zero, 0x3C($sp)
/* 74D9C1C 8007DEEC 5B3B010C */  jal        func_8004ED6C
/* 74D9C20 8007DEF0 4000A0AF */   sw        $zero, 0x40($sp)
/* 74D9C24 8007DEF4 0C009226 */  addiu      $s2, $s4, 0xC
/* 74D9C28 8007DEF8 21204002 */  addu       $a0, $s2, $zero
/* 74D9C2C 8007DEFC 21284002 */  addu       $a1, $s2, $zero
/* 74D9C30 8007DF00 653C010C */  jal        func_8004F194
/* 74D9C34 8007DF04 21300002 */   addu      $a2, $s0, $zero
/* 74D9C38 8007DF08 2800B127 */  addiu      $s1, $sp, 0x28
/* 74D9C3C 8007DF0C 21202002 */  addu       $a0, $s1, $zero
/* 74D9C40 8007DF10 21284002 */  addu       $a1, $s2, $zero
/* 74D9C44 8007DF14 21300000 */  addu       $a2, $zero, $zero
/* 74D9C48 8007DF18 0100073C */  lui        $a3, (0x10000 >> 16)
/* 74D9C4C 8007DF1C C360000C */  jal        func_8001830C
/* 74D9C50 8007DF20 1000B4AF */   sw        $s4, 0x10($sp)
/* 74D9C54 8007DF24 1A004010 */  beqz       $v0, .Llevel_34_8007DF90
/* 74D9C58 8007DF28 21204002 */   addu      $a0, $s2, $zero
/* 74D9C5C 8007DF2C 0780103C */  lui        $s0, %hi(D_80071924)
/* 74D9C60 8007DF30 24191026 */  addiu      $s0, $s0, %lo(D_80071924)
/* 74D9C64 8007DF34 0000048E */  lw         $a0, 0x0($s0)
/* 74D9C68 8007DF38 5502010C */  jal        func_80040954
/* 74D9C6C 8007DF3C 00000000 */   nop
/* 74D9C70 8007DF40 03000324 */  addiu      $v1, $zero, 0x3
/* 74D9C74 8007DF44 0E004314 */  bne        $v0, $v1, .Llevel_34_8007DF80
/* 74D9C78 8007DF48 21204002 */   addu      $a0, $s2, $zero
/* 74D9C7C 8007DF4C 0000028E */  lw         $v0, 0x0($s0)
/* 74D9C80 8007DF50 0780033C */  lui        $v1, %hi(D_8006D048 + 0x14)
/* 74D9C84 8007DF54 5CD0638C */  lw         $v1, %lo(D_8006D048 + 0x14)($v1)
/* 74D9C88 8007DF58 3F004230 */  andi       $v0, $v0, 0x3F
/* 74D9C8C 8007DF5C 80100200 */  sll        $v0, $v0, 2
/* 74D9C90 8007DF60 21104300 */  addu       $v0, $v0, $v1
/* 74D9C94 8007DF64 0000448C */  lw         $a0, 0x0($v0)
/* 74D9C98 8007DF68 00000000 */  nop
/* 74D9C9C 8007DF6C 0400828C */  lw         $v0, 0x4($a0)
/* 74D9CA0 8007DF70 0100033C */  lui        $v1, (0x10000 >> 16)
/* 74D9CA4 8007DF74 25104300 */  or         $v0, $v0, $v1
/* 74D9CA8 8007DF78 040082AC */  sw         $v0, 0x4($a0)
/* 74D9CAC 8007DF7C 21204002 */  addu       $a0, $s2, $zero
.Llevel_34_8007DF80:
/* 74D9CB0 8007DF80 5E3C010C */  jal        func_8004F178
/* 74D9CB4 8007DF84 21282002 */   addu      $a1, $s1, $zero
/* 74D9CB8 8007DF88 FDF70108 */  j          .Llevel_34_8007DFF4
/* 74D9CBC 8007DF8C 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_34_8007DF90:
/* 74D9CC0 8007DF90 00020524 */  addiu      $a1, $zero, 0x200
/* 74D9CC4 8007DF94 01000624 */  addiu      $a2, $zero, 0x1
/* 74D9CC8 8007DF98 21380000 */  addu       $a3, $zero, $zero
/* 74D9CCC 8007DF9C 1000A0AF */  sw         $zero, 0x10($sp)
/* 74D9CD0 8007DFA0 8C6E000C */  jal        func_8001BA30
/* 74D9CD4 8007DFA4 1400B4AF */   sw        $s4, 0x14($sp)
/* 74D9CD8 8007DFA8 21884000 */  addu       $s1, $v0, $zero
/* 74D9CDC 8007DFAC 12002012 */  beqz       $s1, .Llevel_34_8007DFF8
/* 74D9CE0 8007DFB0 5800B027 */   addiu     $s0, $sp, 0x58
/* 74D9CE4 8007DFB4 21200002 */  addu       $a0, $s0, $zero
/* 74D9CE8 8007DFB8 5E3C010C */  jal        func_8004F178
/* 74D9CEC 8007DFBC 0C002526 */   addiu     $a1, $s1, 0xC
/* 74D9CF0 8007DFC0 21204002 */  addu       $a0, $s2, $zero
/* 74D9CF4 8007DFC4 6000A28F */  lw         $v0, 0x60($sp)
/* 74D9CF8 8007DFC8 21280002 */  addu       $a1, $s0, $zero
/* 74D9CFC 8007DFCC 80004224 */  addiu      $v0, $v0, 0x80
/* 74D9D00 8007DFD0 DA60000C */  jal        func_80018368
/* 74D9D04 8007DFD4 6000A2AF */   sw        $v0, 0x60($sp)
/* 74D9D08 8007DFD8 07004014 */  bnez       $v0, .Llevel_34_8007DFF8
/* 74D9D0C 8007DFDC 0100033C */   lui       $v1, (0x10000 >> 16)
/* 74D9D10 8007DFE0 1800228E */  lw         $v0, 0x18($s1)
/* 74D9D14 8007DFE4 00000000 */  nop
/* 74D9D18 8007DFE8 25104300 */  or         $v0, $v0, $v1
/* 74D9D1C 8007DFEC 180022AE */  sw         $v0, 0x18($s1)
/* 74D9D20 8007DFF0 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_34_8007DFF4:
/* 74D9D24 8007DFF4 480082A2 */  sb         $v0, 0x48($s4)
.Llevel_34_8007DFF8:
/* 74D9D28 8007DFF8 1000A58E */  lw         $a1, 0x10($s5)
/* 74D9D2C 8007DFFC F0EF000C */  jal        func_8003BFC0
/* 74D9D30 8007E000 21208002 */   addu      $a0, $s4, $zero
/* 74D9D34 8007E004 07004014 */  bnez       $v0, .Llevel_34_8007E024
/* 74D9D38 8007E008 0BB6043C */   lui       $a0, (0xB60B60B7 >> 16)
/* 74D9D3C 8007E00C 21208002 */  addu       $a0, $s4, $zero
/* 74D9D40 8007E010 21280000 */  addu       $a1, $zero, $zero
/* 74D9D44 8007E014 AFEE000C */  jal        func_8003BABC
/* 74D9D48 8007E018 04000624 */   addiu     $a2, $zero, 0x4
/* 74D9D4C 8007E01C 1DF80108 */  j          .Llevel_34_8007E074
/* 74D9D50 8007E020 1000A2AE */   sw        $v0, 0x10($s5)
.Llevel_34_8007E024:
/* 74D9D54 8007E024 B7608434 */  ori        $a0, $a0, (0xB60B60B7 & 0xFFFF)
/* 74D9D58 8007E028 0E00A386 */  lh         $v1, 0xE($s5)
/* 74D9D5C 8007E02C B4000224 */  addiu      $v0, $zero, 0xB4
/* 74D9D60 8007E030 23104300 */  subu       $v0, $v0, $v1
/* 74D9D64 8007E034 40130200 */  sll        $v0, $v0, 13
/* 74D9D68 8007E038 18004400 */  mult       $v0, $a0
/* 74D9D6C 8007E03C 10400000 */  mfhi       $t0
/* 74D9D70 8007E040 21180201 */  addu       $v1, $t0, $v0
/* 74D9D74 8007E044 C3190300 */  sra        $v1, $v1, 7
/* 74D9D78 8007E048 C3170200 */  sra        $v0, $v0, 31
/* 74D9D7C 8007E04C 23186200 */  subu       $v1, $v1, $v0
/* 74D9D80 8007E050 00100224 */  addiu      $v0, $zero, 0x1000
/* 74D9D84 8007E054 23804300 */  subu       $s0, $v0, $v1
/* 74D9D88 8007E058 000A022A */  slti       $v0, $s0, 0xA00
/* 74D9D8C 8007E05C 02004010 */  beqz       $v0, .Llevel_34_8007E068
/* 74D9D90 8007E060 00000000 */   nop
/* 74D9D94 8007E064 000A1024 */  addiu      $s0, $zero, 0xA00
.Llevel_34_8007E068:
/* 74D9D98 8007E068 1000A48E */  lw         $a0, 0x10($s5)
/* 74D9D9C 8007E06C 2CF0000C */  jal        func_8003C0B0
/* 74D9DA0 8007E070 21280002 */   addu      $a1, $s0, $zero
.Llevel_34_8007E074:
/* 74D9DA4 8007E074 3800B027 */  addiu      $s0, $sp, 0x38
/* 74D9DA8 8007E078 21200002 */  addu       $a0, $s0, $zero
/* 74D9DAC 8007E07C 443C010C */  jal        func_8004F110
/* 74D9DB0 8007E080 02000524 */   addiu     $a1, $zero, 0x2
/* 74D9DB4 8007E084 01000424 */  addiu      $a0, $zero, 0x1
/* 74D9DB8 8007E088 37000524 */  addiu      $a1, $zero, 0x37
/* 74D9DBC 8007E08C 0C008626 */  addiu      $a2, $s4, 0xC
/* 74D9DC0 8007E090 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 74D9DC4 8007E094 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 74D9DC8 8007E098 00000000 */  nop
/* 74D9DCC 8007E09C 09F84000 */  jalr       $v0
/* 74D9DD0 8007E0A0 21380002 */   addu      $a3, $s0, $zero
/* 74D9DD4 8007E0A4 B5F80108 */  j          .Llevel_34_8007E2D4
/* 74D9DD8 8007E0A8 00000000 */   nop
.Llevel_34_8007E0AC:
/* 74D9DDC 8007E0AC 0C009126 */  addiu      $s1, $s4, 0xC
/* 74D9DE0 8007E0B0 21202002 */  addu       $a0, $s1, $zero
/* 74D9DE4 8007E0B4 00040524 */  addiu      $a1, $zero, 0x400
/* 74D9DE8 8007E0B8 01000624 */  addiu      $a2, $zero, 0x1
/* 74D9DEC 8007E0BC 21380000 */  addu       $a3, $zero, $zero
/* 74D9DF0 8007E0C0 1000A0AF */  sw         $zero, 0x10($sp)
/* 74D9DF4 8007E0C4 8C6E000C */  jal        func_8001BA30
/* 74D9DF8 8007E0C8 1400B4AF */   sw        $s4, 0x14($sp)
/* 74D9DFC 8007E0CC 21804000 */  addu       $s0, $v0, $zero
/* 74D9E00 8007E0D0 09000012 */  beqz       $s0, .Llevel_34_8007E0F8
/* 74D9E04 8007E0D4 21202002 */   addu      $a0, $s1, $zero
/* 74D9E08 8007E0D8 DA60000C */  jal        func_80018368
/* 74D9E0C 8007E0DC 0C000526 */   addiu     $a1, $s0, 0xC
/* 74D9E10 8007E0E0 05004014 */  bnez       $v0, .Llevel_34_8007E0F8
/* 74D9E14 8007E0E4 0100033C */   lui       $v1, (0x10000 >> 16)
/* 74D9E18 8007E0E8 1800028E */  lw         $v0, 0x18($s0)
/* 74D9E1C 8007E0EC 00000000 */  nop
/* 74D9E20 8007E0F0 25104300 */  or         $v0, $v0, $v1
/* 74D9E24 8007E0F4 180002AE */  sw         $v0, 0x18($s0)
.Llevel_34_8007E0F8:
/* 74D9E28 8007E0F8 1000A58E */  lw         $a1, 0x10($s5)
/* 74D9E2C 8007E0FC F0EF000C */  jal        func_8003BFC0
/* 74D9E30 8007E100 21208002 */   addu      $a0, $s4, $zero
/* 74D9E34 8007E104 04004010 */  beqz       $v0, .Llevel_34_8007E118
/* 74D9E38 8007E108 00000000 */   nop
/* 74D9E3C 8007E10C 1000A48E */  lw         $a0, 0x10($s5)
/* 74D9E40 8007E110 9CEF000C */  jal        func_8003BE70
/* 74D9E44 8007E114 00000000 */   nop
.Llevel_34_8007E118:
/* 74D9E48 8007E118 0780023C */  lui        $v0, %hi(D_8006C578)
/* 74D9E4C 8007E11C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 74D9E50 8007E120 0780033C */  lui        $v1, %hi(D_8006C574)
/* 74D9E54 8007E124 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 74D9E58 8007E128 00000000 */  nop
/* 74D9E5C 8007E12C 23104300 */  subu       $v0, $v0, $v1
/* 74D9E60 8007E130 15004228 */  slti       $v0, $v0, 0x15
/* 74D9E64 8007E134 0F004014 */  bnez       $v0, .Llevel_34_8007E174
/* 74D9E68 8007E138 21208002 */   addu      $a0, $s4, $zero
/* 74D9E6C 8007E13C 46010424 */  addiu      $a0, $zero, 0x146
/* 74D9E70 8007E140 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 74D9E74 8007E144 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 74D9E78 8007E148 00000000 */  nop
/* 74D9E7C 8007E14C 09F84000 */  jalr       $v0
/* 74D9E80 8007E150 21288002 */   addu      $a1, $s4, $zero
/* 74D9E84 8007E154 21804000 */  addu       $s0, $v0, $zero
/* 74D9E88 8007E158 05000012 */  beqz       $s0, .Llevel_34_8007E170
/* 74D9E8C 8007E15C 08000224 */   addiu     $v0, $zero, 0x8
/* 74D9E90 8007E160 470002A2 */  sb         $v0, 0x47($s0)
/* 74D9E94 8007E164 3F000224 */  addiu      $v0, $zero, 0x3F
/* 74D9E98 8007E168 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 74D9E9C 8007E16C 4E0002A2 */  sb         $v0, 0x4E($s0)
.Llevel_34_8007E170:
/* 74D9EA0 8007E170 21208002 */  addu       $a0, $s4, $zero
.Llevel_34_8007E174:
/* 74D9EA4 8007E174 01000524 */  addiu      $a1, $zero, 0x1
/* 74D9EA8 8007E178 AFEE000C */  jal        func_8003BABC
/* 74D9EAC 8007E17C 21300000 */   addu      $a2, $zero, $zero
/* 74D9EB0 8007E180 04000224 */  addiu      $v0, $zero, 0x4
/* 74D9EB4 8007E184 0E00A2A6 */  sh         $v0, 0xE($s5)
/* 74D9EB8 8007E188 03000224 */  addiu      $v0, $zero, 0x3
/* 74D9EBC 8007E18C 480082A2 */  sb         $v0, 0x48($s4)
.Llevel_34_8007E190:
/* 74D9EC0 8007E190 0E00A286 */  lh         $v0, 0xE($s5)
/* 74D9EC4 8007E194 00000000 */  nop
/* 74D9EC8 8007E198 00110200 */  sll        $v0, $v0, 4
/* 74D9ECC 8007E19C 03004104 */  bgez       $v0, .Llevel_34_8007E1AC
/* 74D9ED0 8007E1A0 83900200 */   sra       $s2, $v0, 2
/* 74D9ED4 8007E1A4 03004224 */  addiu      $v0, $v0, 0x3
/* 74D9ED8 8007E1A8 83900200 */  sra        $s2, $v0, 2
.Llevel_34_8007E1AC:
/* 74D9EDC 8007E1AC 21880000 */  addu       $s1, $zero, $zero
/* 74D9EE0 8007E1B0 0680173C */  lui        $s7, %hi(D_80065920)
/* 74D9EE4 8007E1B4 2059F726 */  addiu      $s7, $s7, %lo(D_80065920)
/* 74D9EE8 8007E1B8 0680163C */  lui        $s6, %hi(D_800658A0)
/* 74D9EEC 8007E1BC A058D626 */  addiu      $s6, $s6, %lo(D_800658A0)
/* 74D9EF0 8007E1C0 6800B027 */  addiu      $s0, $sp, 0x68
/* 74D9EF4 8007E1C4 7800B327 */  addiu      $s3, $sp, 0x78
.Llevel_34_8007E1C8:
/* 74D9EF8 8007E1C8 1400A38E */  lw         $v1, 0x14($s5)
/* 74D9EFC 8007E1CC 40101100 */  sll        $v0, $s1, 1
/* 74D9F00 8007E1D0 21186200 */  addu       $v1, $v1, $v0
/* 74D9F04 8007E1D4 00006490 */  lbu        $a0, 0x0($v1)
/* 74D9F08 8007E1D8 00000000 */  nop
/* 74D9F0C 8007E1DC 40200400 */  sll        $a0, $a0, 1
/* 74D9F10 8007E1E0 21109700 */  addu       $v0, $a0, $s7
/* 74D9F14 8007E1E4 00004284 */  lh         $v0, 0x0($v0)
/* 74D9F18 8007E1E8 00000000 */  nop
/* 74D9F1C 8007E1EC 18005200 */  mult       $v0, $s2
/* 74D9F20 8007E1F0 01006590 */  lbu        $a1, 0x1($v1)
/* 74D9F24 8007E1F4 00000000 */  nop
/* 74D9F28 8007E1F8 40280500 */  sll        $a1, $a1, 1
/* 74D9F2C 8007E1FC 2130B700 */  addu       $a2, $a1, $s7
/* 74D9F30 8007E200 12400000 */  mflo       $t0
/* 74D9F34 8007E204 0000C384 */  lh         $v1, 0x0($a2)
/* 74D9F38 8007E208 03130800 */  sra        $v0, $t0, 12
/* 74D9F3C 8007E20C 18004300 */  mult       $v0, $v1
/* 74D9F40 8007E210 21209600 */  addu       $a0, $a0, $s6
/* 74D9F44 8007E214 12400000 */  mflo       $t0
/* 74D9F48 8007E218 03130800 */  sra        $v0, $t0, 12
/* 74D9F4C 8007E21C 7800A2AF */  sw         $v0, 0x78($sp)
/* 74D9F50 8007E220 00008284 */  lh         $v0, 0x0($a0)
/* 74D9F54 8007E224 00000000 */  nop
/* 74D9F58 8007E228 18005200 */  mult       $v0, $s2
/* 74D9F5C 8007E22C 12400000 */  mflo       $t0
/* 74D9F60 8007E230 0000C384 */  lh         $v1, 0x0($a2)
/* 74D9F64 8007E234 03130800 */  sra        $v0, $t0, 12
/* 74D9F68 8007E238 18004300 */  mult       $v0, $v1
/* 74D9F6C 8007E23C 2128B600 */  addu       $a1, $a1, $s6
/* 74D9F70 8007E240 12400000 */  mflo       $t0
/* 74D9F74 8007E244 03130800 */  sra        $v0, $t0, 12
/* 74D9F78 8007E248 7C00A2AF */  sw         $v0, 0x7C($sp)
/* 74D9F7C 8007E24C 0000A284 */  lh         $v0, 0x0($a1)
/* 74D9F80 8007E250 00000000 */  nop
/* 74D9F84 8007E254 18005200 */  mult       $v0, $s2
/* 74D9F88 8007E258 01003126 */  addiu      $s1, $s1, 0x1
/* 74D9F8C 8007E25C 21200002 */  addu       $a0, $s0, $zero
/* 74D9F90 8007E260 21286002 */  addu       $a1, $s3, $zero
/* 74D9F94 8007E264 12400000 */  mflo       $t0
/* 74D9F98 8007E268 03130800 */  sra        $v0, $t0, 12
/* 74D9F9C 8007E26C 5E3C010C */  jal        func_8004F178
/* 74D9FA0 8007E270 8000A2AF */   sw        $v0, 0x80($sp)
/* 74D9FA4 8007E274 21200002 */  addu       $a0, $s0, $zero
/* 74D9FA8 8007E278 3A3C010C */  jal        func_8004F0E8
/* 74D9FAC 8007E27C 04000524 */   addiu     $a1, $zero, 0x4
/* 74D9FB0 8007E280 21200002 */  addu       $a0, $s0, $zero
/* 74D9FB4 8007E284 21280002 */  addu       $a1, $s0, $zero
/* 74D9FB8 8007E288 653C010C */  jal        func_8004F194
/* 74D9FBC 8007E28C 0C008626 */   addiu     $a2, $s4, 0xC
/* 74D9FC0 8007E290 01000424 */  addiu      $a0, $zero, 0x1
/* 74D9FC4 8007E294 13000524 */  addiu      $a1, $zero, 0x13
/* 74D9FC8 8007E298 21300002 */  addu       $a2, $s0, $zero
/* 74D9FCC 8007E29C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 74D9FD0 8007E2A0 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 74D9FD4 8007E2A4 00000000 */  nop
/* 74D9FD8 8007E2A8 09F84000 */  jalr       $v0
/* 74D9FDC 8007E2AC 21386002 */   addu      $a3, $s3, $zero
/* 74D9FE0 8007E2B0 0C00222A */  slti       $v0, $s1, 0xC
/* 74D9FE4 8007E2B4 C4FF4014 */  bnez       $v0, .Llevel_34_8007E1C8
/* 74D9FE8 8007E2B8 0E00A426 */   addiu     $a0, $s5, 0xE
/* 74D9FEC 8007E2BC 69D6000C */  jal        func_800359A4
/* 74D9FF0 8007E2C0 02000524 */   addiu     $a1, $zero, 0x2
/* 74D9FF4 8007E2C4 03004010 */  beqz       $v0, .Llevel_34_8007E2D4
/* 74D9FF8 8007E2C8 00000000 */   nop
.Llevel_34_8007E2CC:
/* 74D9FFC 8007E2CC C656010C */  jal        func_80055B18
/* 74DA000 8007E2D0 21208002 */   addu      $a0, $s4, $zero
.Llevel_34_8007E2D4:
/* 74DA004 8007E2D4 BC00BF8F */  lw         $ra, 0xBC($sp)
/* 74DA008 8007E2D8 B800BE8F */  lw         $fp, 0xB8($sp)
/* 74DA00C 8007E2DC B400B78F */  lw         $s7, 0xB4($sp)
/* 74DA010 8007E2E0 B000B68F */  lw         $s6, 0xB0($sp)
/* 74DA014 8007E2E4 AC00B58F */  lw         $s5, 0xAC($sp)
/* 74DA018 8007E2E8 A800B48F */  lw         $s4, 0xA8($sp)
/* 74DA01C 8007E2EC A400B38F */  lw         $s3, 0xA4($sp)
/* 74DA020 8007E2F0 A000B28F */  lw         $s2, 0xA0($sp)
/* 74DA024 8007E2F4 9C00B18F */  lw         $s1, 0x9C($sp)
/* 74DA028 8007E2F8 9800B08F */  lw         $s0, 0x98($sp)
/* 74DA02C 8007E2FC C000BD27 */  addiu      $sp, $sp, 0xC0
/* 74DA030 8007E300 0800E003 */  jr         $ra
/* 74DA034 8007E304 00000000 */   nop
.size func_level_34_8007DA38, . - func_level_34_8007DA38
