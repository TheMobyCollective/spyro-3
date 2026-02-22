.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_34_8008DAE8
/* 74E9818 8008DAE8 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 74E981C 8008DAEC 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 74E9820 8008DAF0 21988000 */  addu       $s3, $a0, $zero
/* 74E9824 8008DAF4 4000BFAF */  sw         $ra, 0x40($sp)
/* 74E9828 8008DAF8 3C00B7AF */  sw         $s7, 0x3C($sp)
/* 74E982C 8008DAFC 3800B6AF */  sw         $s6, 0x38($sp)
/* 74E9830 8008DB00 3400B5AF */  sw         $s5, 0x34($sp)
/* 74E9834 8008DB04 3000B4AF */  sw         $s4, 0x30($sp)
/* 74E9838 8008DB08 2800B2AF */  sw         $s2, 0x28($sp)
/* 74E983C 8008DB0C 2400B1AF */  sw         $s1, 0x24($sp)
/* 74E9840 8008DB10 2000B0AF */  sw         $s0, 0x20($sp)
/* 74E9844 8008DB14 48006392 */  lbu        $v1, 0x48($s3)
/* 74E9848 8008DB18 0000748E */  lw         $s4, 0x0($s3)
/* 74E984C 8008DB1C FF000224 */  addiu      $v0, $zero, 0xFF
/* 74E9850 8008DB20 06006010 */  beqz       $v1, .Llevel_34_8008DB3C
/* 74E9854 8008DB24 4A0062A2 */   sb        $v0, 0x4A($s3)
/* 74E9858 8008DB28 01000224 */  addiu      $v0, $zero, 0x1
/* 74E985C 8008DB2C 5B006210 */  beq        $v1, $v0, .Llevel_34_8008DC9C
/* 74E9860 8008DB30 00000000 */   nop
/* 74E9864 8008DB34 0C380208 */  j          .Llevel_34_8008E030
/* 74E9868 8008DB38 00000000 */   nop
.Llevel_34_8008DB3C:
/* 74E986C 8008DB3C 0000828E */  lw         $v0, 0x0($s4)
/* 74E9870 8008DB40 0780033C */  lui        $v1, %hi(D_8006D05C)
/* 74E9874 8008DB44 5CD0638C */  lw         $v1, %lo(D_8006D05C)($v1)
/* 74E9878 8008DB48 80100200 */  sll        $v0, $v0, 2
/* 74E987C 8008DB4C 21104300 */  addu       $v0, $v0, $v1
/* 74E9880 8008DB50 0780033C */  lui        $v1, %hi(D_8006C640)
/* 74E9884 8008DB54 40C6638C */  lw         $v1, %lo(D_8006C640)($v1)
/* 74E9888 8008DB58 0000478C */  lw         $a3, 0x0($v0)
/* 74E988C 8008DB5C 02006014 */  bnez       $v1, .Llevel_34_8008DB68
/* 74E9890 8008DB60 00000000 */   nop
/* 74E9894 8008DB64 0400E0AC */  sw         $zero, 0x4($a3)
.Llevel_34_8008DB68:
/* 74E9898 8008DB68 0400E28C */  lw         $v0, 0x4($a3)
/* 74E989C 8008DB6C 0800838E */  lw         $v1, 0x8($s4)
/* 74E98A0 8008DB70 00000000 */  nop
/* 74E98A4 8008DB74 24104300 */  and        $v0, $v0, $v1
/* 74E98A8 8008DB78 2D014010 */  beqz       $v0, .Llevel_34_8008E030
/* 74E98AC 8008DB7C 48006426 */   addiu     $a0, $s3, 0x48
/* 74E98B0 8008DB80 01000524 */  addiu      $a1, $zero, 0x1
/* 74E98B4 8008DB84 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 74E98B8 8008DB88 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 74E98BC 8008DB8C 01000224 */  addiu      $v0, $zero, 0x1
/* 74E98C0 8008DB90 0400E0AC */  sw         $zero, 0x4($a3)
/* 74E98C4 8008DB94 EDED000C */  jal        func_8003B7B4
/* 74E98C8 8008DB98 480062A2 */   sb        $v0, 0x48($s3)
/* 74E98CC 8008DB9C 43006492 */  lbu        $a0, 0x43($s3)
/* 74E98D0 8008DBA0 76DA000C */  jal        func_800369D8
/* 74E98D4 8008DBA4 00000000 */   nop
/* 74E98D8 8008DBA8 01000324 */  addiu      $v1, $zero, 0x1
/* 74E98DC 8008DBAC 20014314 */  bne        $v0, $v1, .Llevel_34_8008E030
/* 74E98E0 8008DBB0 21286002 */   addu      $a1, $s3, $zero
/* 74E98E4 8008DBB4 0780033C */  lui        $v1, %hi(D_8006C654)
/* 74E98E8 8008DBB8 54C6638C */  lw         $v1, %lo(D_8006C654)($v1)
/* 74E98EC 8008DBBC 03000224 */  addiu      $v0, $zero, 0x3
/* 74E98F0 8008DBC0 0680013C */  lui        $at, %hi(D_80066BC8 + 13)
/* 74E98F4 8008DBC4 D56B22A0 */  sb         $v0, %lo(D_80066BC8 + 13)($at)
/* 74E98F8 8008DBC8 01000224 */  addiu      $v0, $zero, 0x1
/* 74E98FC 8008DBCC 0780013C */  lui        $at, %hi(D_800719DC)
/* 74E9900 8008DBD0 DC1922A4 */  sh         $v0, %lo(D_800719DC)($at)
/* 74E9904 8008DBD4 23006490 */  lbu        $a0, 0x23($v1)
/* 74E9908 8008DBD8 D4EE000C */  jal        PlaySound
/* 74E990C 8008DBDC A1000624 */   addiu     $a2, $zero, 0xA1
/* 74E9910 8008DBE0 D3000424 */  addiu      $a0, $zero, 0xD3
/* 74E9914 8008DBE4 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 74E9918 8008DBE8 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 74E991C 8008DBEC 00000000 */  nop
/* 74E9920 8008DBF0 09F84000 */  jalr       $v0
/* 74E9924 8008DBF4 21286002 */   addu      $a1, $s3, $zero
/* 74E9928 8008DBF8 21804000 */  addu       $s0, $v0, $zero
/* 74E992C 8008DBFC 0C010012 */  beqz       $s0, .Llevel_34_8008E030
/* 74E9930 8008DC00 00000000 */   nop
/* 74E9934 8008DC04 0780053C */  lui        $a1, %hi(D_80070328)
/* 74E9938 8008DC08 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 74E993C 8008DC0C 5E3C010C */  jal        func_8004F178
/* 74E9940 8008DC10 0C000426 */   addiu     $a0, $s0, 0xC
/* 74E9944 8008DC14 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 74E9948 8008DC18 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 74E994C 8008DC1C 00000000 */  nop
/* 74E9950 8008DC20 40100200 */  sll        $v0, $v0, 1
/* 74E9954 8008DC24 0680013C */  lui        $at, %hi(D_80065920)
/* 74E9958 8008DC28 21082200 */  addu       $at, $at, $v0
/* 74E995C 8008DC2C 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 74E9960 8008DC30 00000000 */  nop
/* 74E9964 8008DC34 40100300 */  sll        $v0, $v1, 1
/* 74E9968 8008DC38 21104300 */  addu       $v0, $v0, $v1
/* 74E996C 8008DC3C C0100200 */  sll        $v0, $v0, 3
/* 74E9970 8008DC40 21104300 */  addu       $v0, $v0, $v1
/* 74E9974 8008DC44 0C00038E */  lw         $v1, 0xC($s0)
/* 74E9978 8008DC48 C3110200 */  sra        $v0, $v0, 7
/* 74E997C 8008DC4C 21186200 */  addu       $v1, $v1, $v0
/* 74E9980 8008DC50 0C0003AE */  sw         $v1, 0xC($s0)
/* 74E9984 8008DC54 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 74E9988 8008DC58 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 74E998C 8008DC5C 1400038E */  lw         $v1, 0x14($s0)
/* 74E9990 8008DC60 40100200 */  sll        $v0, $v0, 1
/* 74E9994 8008DC64 0680013C */  lui        $at, %hi(D_800658A0)
/* 74E9998 8008DC68 21082200 */  addu       $at, $at, $v0
/* 74E999C 8008DC6C A0582484 */  lh         $a0, %lo(D_800658A0)($at)
/* 74E99A0 8008DC70 F4016324 */  addiu      $v1, $v1, 0x1F4
/* 74E99A4 8008DC74 140003AE */  sw         $v1, 0x14($s0)
/* 74E99A8 8008DC78 1000038E */  lw         $v1, 0x10($s0)
/* 74E99AC 8008DC7C 40100400 */  sll        $v0, $a0, 1
/* 74E99B0 8008DC80 21104400 */  addu       $v0, $v0, $a0
/* 74E99B4 8008DC84 C0100200 */  sll        $v0, $v0, 3
/* 74E99B8 8008DC88 21104400 */  addu       $v0, $v0, $a0
/* 74E99BC 8008DC8C C3110200 */  sra        $v0, $v0, 7
/* 74E99C0 8008DC90 21186200 */  addu       $v1, $v1, $v0
/* 74E99C4 8008DC94 0C380208 */  j          .Llevel_34_8008E030
/* 74E99C8 8008DC98 100003AE */   sw        $v1, 0x10($s0)
.Llevel_34_8008DC9C:
/* 74E99CC 8008DC9C 0780023C */  lui        $v0, %hi(D_8006C640)
/* 74E99D0 8008DCA0 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 74E99D4 8008DCA4 00000000 */  nop
/* 74E99D8 8008DCA8 05004228 */  slti       $v0, $v0, 0x5
/* 74E99DC 8008DCAC DA004014 */  bnez       $v0, .Llevel_34_8008E018
/* 74E99E0 8008DCB0 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 74E99E4 8008DCB4 2000858E */  lw         $a1, 0x20($s4)
/* 74E99E8 8008DCB8 00000000 */  nop
/* 74E99EC 8008DCBC 0300A210 */  beq        $a1, $v0, .Llevel_34_8008DCCC
/* 74E99F0 8008DCC0 21206002 */   addu      $a0, $s3, $zero
/* 74E99F4 8008DCC4 C4EE000C */  jal        func_8003BB10
/* 74E99F8 8008DCC8 21300000 */   addu      $a2, $zero, $zero
.Llevel_34_8008DCCC:
/* 74E99FC 8008DCCC 0C008286 */  lh         $v0, 0xC($s4)
/* 74E9A00 8008DCD0 00000000 */  nop
/* 74E9A04 8008DCD4 D0004004 */  bltz       $v0, .Llevel_34_8008E018
/* 74E9A08 8008DCD8 00000000 */   nop
/* 74E9A0C 8008DCDC 0E008286 */  lh         $v0, 0xE($s4)
/* 74E9A10 8008DCE0 00000000 */  nop
/* 74E9A14 8008DCE4 CC004018 */  blez       $v0, .Llevel_34_8008E018
/* 74E9A18 8008DCE8 00000000 */   nop
/* 74E9A1C 8008DCEC 21206002 */  addu       $a0, $s3, $zero
/* 74E9A20 8008DCF0 4957010C */  jal        func_80055D24
/* 74E9A24 8008DCF4 04000524 */   addiu     $a1, $zero, 0x4
/* 74E9A28 8008DCF8 21880000 */  addu       $s1, $zero, $zero
/* 74E9A2C 8008DCFC 3A001724 */  addiu      $s7, $zero, 0x3A
/* 74E9A30 8008DD00 FF001524 */  addiu      $s5, $zero, 0xFF
/* 74E9A34 8008DD04 20007626 */  addiu      $s6, $s3, 0x20
.Llevel_34_8008DD08:
/* 74E9A38 8008DD08 0780023C */  lui        $v0, %hi(D_8006C578)
/* 74E9A3C 8008DD0C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 74E9A40 8008DD10 0780033C */  lui        $v1, %hi(D_8006C574)
/* 74E9A44 8008DD14 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 74E9A48 8008DD18 00000000 */  nop
/* 74E9A4C 8008DD1C 23104300 */  subu       $v0, $v0, $v1
/* 74E9A50 8008DD20 15004228 */  slti       $v0, $v0, 0x15
/* 74E9A54 8008DD24 BC004014 */  bnez       $v0, .Llevel_34_8008E018
/* 74E9A58 8008DD28 00000000 */   nop
/* 74E9A5C 8008DD2C 0C008486 */  lh         $a0, 0xC($s4)
/* 74E9A60 8008DD30 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 74E9A64 8008DD34 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 74E9A68 8008DD38 00000000 */  nop
/* 74E9A6C 8008DD3C 09F84000 */  jalr       $v0
/* 74E9A70 8008DD40 21286002 */   addu      $a1, $s3, $zero
/* 74E9A74 8008DD44 21804000 */  addu       $s0, $v0, $zero
/* 74E9A78 8008DD48 AF000012 */  beqz       $s0, .Llevel_34_8008E008
/* 74E9A7C 8008DD4C 00000000 */   nop
/* 74E9A80 8008DD50 0000128E */  lw         $s2, 0x0($s0)
/* 74E9A84 8008DD54 5E002012 */  beqz       $s1, .Llevel_34_8008DED0
/* 74E9A88 8008DD58 1F000224 */   addiu     $v0, $zero, 0x1F
/* 74E9A8C 8008DD5C 06002216 */  bne        $s1, $v0, .Llevel_34_8008DD78
/* 74E9A90 8008DD60 00000000 */   nop
/* 74E9A94 8008DD64 9171010C */  jal        func_8005C644
/* 74E9A98 8008DD68 00000000 */   nop
/* 74E9A9C 8008DD6C 01004230 */  andi       $v0, $v0, 0x1
/* 74E9AA0 8008DD70 58004010 */  beqz       $v0, .Llevel_34_8008DED4
/* 74E9AA4 8008DD74 21200000 */   addu      $a0, $zero, $zero
.Llevel_34_8008DD78:
/* 74E9AA8 8008DD78 9171010C */  jal        func_8005C644
/* 74E9AAC 8008DD7C 00000000 */   nop
/* 74E9AB0 8008DD80 21200002 */  addu       $a0, $s0, $zero
/* 74E9AB4 8008DD84 01004230 */  andi       $v0, $v0, 0x1
/* 74E9AB8 8008DD88 E0D3000C */  jal        func_80034F80
/* 74E9ABC 8008DD8C 01004524 */   addiu     $a1, $v0, 0x1
/* 74E9AC0 8008DD90 0C000424 */  addiu      $a0, $zero, 0xC
/* 74E9AC4 8008DD94 DBD8000C */  jal        func_8003636C
/* 74E9AC8 8008DD98 34000524 */   addiu     $a1, $zero, 0x34
/* 74E9ACC 8008DD9C 6666033C */  lui        $v1, (0x66666667 >> 16)
/* 74E9AD0 8008DDA0 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* 74E9AD4 8008DDA4 18002302 */  mult       $s1, $v1
/* 74E9AD8 8008DDA8 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 74E9ADC 8008DDAC C3271100 */  sra        $a0, $s1, 31
/* 74E9AE0 8008DDB0 10400000 */  mfhi       $t0
/* 74E9AE4 8008DDB4 83180800 */  sra        $v1, $t0, 2
/* 74E9AE8 8008DDB8 23186400 */  subu       $v1, $v1, $a0
/* 74E9AEC 8008DDBC 80100300 */  sll        $v0, $v1, 2
/* 74E9AF0 8008DDC0 21104300 */  addu       $v0, $v0, $v1
/* 74E9AF4 8008DDC4 40100200 */  sll        $v0, $v0, 1
/* 74E9AF8 8008DDC8 08002216 */  bne        $s1, $v0, .Llevel_34_8008DDEC
/* 74E9AFC 8008DDCC 8B2E023C */   lui       $v0, (0x2E8BA2E9 >> 16)
/* 74E9B00 8008DDD0 20000424 */  addiu      $a0, $zero, 0x20
/* 74E9B04 8008DDD4 DBD8000C */  jal        func_8003636C
/* 74E9B08 8008DDD8 34000524 */   addiu     $a1, $zero, 0x34
/* 74E9B0C 8008DDDC 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 74E9B10 8008DDE0 570017A2 */  sb         $s7, 0x57($s0)
/* 74E9B14 8008DDE4 B4370208 */  j          .Llevel_34_8008DED0
/* 74E9B18 8008DDE8 540015A2 */   sb        $s5, 0x54($s0)
.Llevel_34_8008DDEC:
/* 74E9B1C 8008DDEC E9A24234 */  ori        $v0, $v0, (0x2E8BA2E9 & 0xFFFF)
/* 74E9B20 8008DDF0 18002202 */  mult       $s1, $v0
/* 74E9B24 8008DDF4 10400000 */  mfhi       $t0
/* 74E9B28 8008DDF8 43180800 */  sra        $v1, $t0, 1
/* 74E9B2C 8008DDFC 23186400 */  subu       $v1, $v1, $a0
/* 74E9B30 8008DE00 40100300 */  sll        $v0, $v1, 1
/* 74E9B34 8008DE04 21104300 */  addu       $v0, $v0, $v1
/* 74E9B38 8008DE08 80100200 */  sll        $v0, $v0, 2
/* 74E9B3C 8008DE0C 23104300 */  subu       $v0, $v0, $v1
/* 74E9B40 8008DE10 08002216 */  bne        $s1, $v0, .Llevel_34_8008DE34
/* 74E9B44 8008DE14 8888023C */   lui       $v0, (0x88888889 >> 16)
/* 74E9B48 8008DE18 20000424 */  addiu      $a0, $zero, 0x20
/* 74E9B4C 8008DE1C DBD8000C */  jal        func_8003636C
/* 74E9B50 8008DE20 34000524 */   addiu     $a1, $zero, 0x34
/* 74E9B54 8008DE24 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 74E9B58 8008DE28 570017A2 */  sb         $s7, 0x57($s0)
/* 74E9B5C 8008DE2C B4370208 */  j          .Llevel_34_8008DED0
/* 74E9B60 8008DE30 550015A2 */   sb        $s5, 0x55($s0)
.Llevel_34_8008DE34:
/* 74E9B64 8008DE34 89884234 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
/* 74E9B68 8008DE38 18002202 */  mult       $s1, $v0
/* 74E9B6C 8008DE3C 10400000 */  mfhi       $t0
/* 74E9B70 8008DE40 21181101 */  addu       $v1, $t0, $s1
/* 74E9B74 8008DE44 C3180300 */  sra        $v1, $v1, 3
/* 74E9B78 8008DE48 23186400 */  subu       $v1, $v1, $a0
/* 74E9B7C 8008DE4C 00110300 */  sll        $v0, $v1, 4
/* 74E9B80 8008DE50 23104300 */  subu       $v0, $v0, $v1
/* 74E9B84 8008DE54 0C002216 */  bne        $s1, $v0, .Llevel_34_8008DE88
/* 74E9B88 8008DE58 0F002232 */   andi      $v0, $s1, 0xF
/* 74E9B8C 8008DE5C 20000424 */  addiu      $a0, $zero, 0x20
/* 74E9B90 8008DE60 DBD8000C */  jal        func_8003636C
/* 74E9B94 8008DE64 34000524 */   addiu     $a1, $zero, 0x34
/* 74E9B98 8008DE68 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 74E9B9C 8008DE6C 80000224 */  addiu      $v0, $zero, 0x80
/* 74E9BA0 8008DE70 550002A2 */  sb         $v0, 0x55($s0)
/* 74E9BA4 8008DE74 40000224 */  addiu      $v0, $zero, 0x40
/* 74E9BA8 8008DE78 570017A2 */  sb         $s7, 0x57($s0)
/* 74E9BAC 8008DE7C 540015A2 */  sb         $s5, 0x54($s0)
/* 74E9BB0 8008DE80 B4370208 */  j          .Llevel_34_8008DED0
/* 74E9BB4 8008DE84 560002A2 */   sb        $v0, 0x56($s0)
.Llevel_34_8008DE88:
/* 74E9BB8 8008DE88 0B004014 */  bnez       $v0, .Llevel_34_8008DEB8
/* 74E9BBC 8008DE8C 1100222A */   slti      $v0, $s1, 0x11
/* 74E9BC0 8008DE90 20000424 */  addiu      $a0, $zero, 0x20
/* 74E9BC4 8008DE94 DBD8000C */  jal        func_8003636C
/* 74E9BC8 8008DE98 34000524 */   addiu     $a1, $zero, 0x34
/* 74E9BCC 8008DE9C 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 74E9BD0 8008DEA0 3C000224 */  addiu      $v0, $zero, 0x3C
/* 74E9BD4 8008DEA4 570002A2 */  sb         $v0, 0x57($s0)
/* 74E9BD8 8008DEA8 540015A2 */  sb         $s5, 0x54($s0)
/* 74E9BDC 8008DEAC 550015A2 */  sb         $s5, 0x55($s0)
/* 74E9BE0 8008DEB0 B4370208 */  j          .Llevel_34_8008DED0
/* 74E9BE4 8008DEB4 560015A2 */   sb        $s5, 0x56($s0)
.Llevel_34_8008DEB8:
/* 74E9BE8 8008DEB8 06004014 */  bnez       $v0, .Llevel_34_8008DED4
/* 74E9BEC 8008DEBC 21200000 */   addu      $a0, $zero, $zero
/* 74E9BF0 8008DEC0 0C000424 */  addiu      $a0, $zero, 0xC
/* 74E9BF4 8008DEC4 DBD8000C */  jal        func_8003636C
/* 74E9BF8 8008DEC8 20000524 */   addiu     $a1, $zero, 0x20
/* 74E9BFC 8008DECC 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_34_8008DED0:
/* 74E9C00 8008DED0 21200000 */  addu       $a0, $zero, $zero
.Llevel_34_8008DED4:
/* 74E9C04 8008DED4 00100524 */  addiu      $a1, $zero, 0x1000
/* 74E9C08 8008DED8 DBD8000C */  jal        func_8003636C
/* 74E9C0C 8008DEDC 1000A0AF */   sw        $zero, 0x10($sp)
/* 74E9C10 8008DEE0 21200000 */  addu       $a0, $zero, $zero
/* 74E9C14 8008DEE4 00140524 */  addiu      $a1, $zero, 0x1400
/* 74E9C18 8008DEE8 00F84224 */  addiu      $v0, $v0, -0x800
/* 74E9C1C 8008DEEC DBD8000C */  jal        func_8003636C
/* 74E9C20 8008DEF0 1400A2AF */   sw        $v0, 0x14($sp)
/* 74E9C24 8008DEF4 2120C002 */  addu       $a0, $s6, $zero
/* 74E9C28 8008DEF8 1000A527 */  addiu      $a1, $sp, 0x10
/* 74E9C2C 8008DEFC 2130A000 */  addu       $a2, $a1, $zero
/* 74E9C30 8008DF00 00F64224 */  addiu      $v0, $v0, -0xA00
/* 74E9C34 8008DF04 5B3B010C */  jal        func_8004ED6C
/* 74E9C38 8008DF08 1800A2AF */   sw        $v0, 0x18($sp)
/* 74E9C3C 8008DF0C 0C000426 */  addiu      $a0, $s0, 0xC
/* 74E9C40 8008DF10 0C006526 */  addiu      $a1, $s3, 0xC
/* 74E9C44 8008DF14 653C010C */  jal        func_8004F194
/* 74E9C48 8008DF18 1000A627 */   addiu     $a2, $sp, 0x10
/* 74E9C4C 8008DF1C 2120C002 */  addu       $a0, $s6, $zero
/* 74E9C50 8008DF20 1000A527 */  addiu      $a1, $sp, 0x10
/* 74E9C54 8008DF24 2130A000 */  addu       $a2, $a1, $zero
/* 74E9C58 8008DF28 64000224 */  addiu      $v0, $zero, 0x64
/* 74E9C5C 8008DF2C 1000A2AF */  sw         $v0, 0x10($sp)
/* 74E9C60 8008DF30 1400A0AF */  sw         $zero, 0x14($sp)
/* 74E9C64 8008DF34 5B3B010C */  jal        func_8004ED6C
/* 74E9C68 8008DF38 1800A0AF */   sw        $zero, 0x18($sp)
/* 74E9C6C 8008DF3C 21200000 */  addu       $a0, $zero, $zero
/* 74E9C70 8008DF40 DBD8000C */  jal        func_8003636C
/* 74E9C74 8008DF44 32000524 */   addiu     $a1, $zero, 0x32
/* 74E9C78 8008DF48 21200000 */  addu       $a0, $zero, $zero
/* 74E9C7C 8008DF4C 1000A38F */  lw         $v1, 0x10($sp)
/* 74E9C80 8008DF50 32000524 */  addiu      $a1, $zero, 0x32
/* 74E9C84 8008DF54 21186200 */  addu       $v1, $v1, $v0
/* 74E9C88 8008DF58 E7FF6324 */  addiu      $v1, $v1, -0x19
/* 74E9C8C 8008DF5C DBD8000C */  jal        func_8003636C
/* 74E9C90 8008DF60 000043A6 */   sh        $v1, 0x0($s2)
/* 74E9C94 8008DF64 21200000 */  addu       $a0, $zero, $zero
/* 74E9C98 8008DF68 1400A38F */  lw         $v1, 0x14($sp)
/* 74E9C9C 8008DF6C 32000524 */  addiu      $a1, $zero, 0x32
/* 74E9CA0 8008DF70 21186200 */  addu       $v1, $v1, $v0
/* 74E9CA4 8008DF74 E7FF6324 */  addiu      $v1, $v1, -0x19
/* 74E9CA8 8008DF78 DBD8000C */  jal        func_8003636C
/* 74E9CAC 8008DF7C 020043A6 */   sh        $v1, 0x2($s2)
/* 74E9CB0 8008DF80 1800A38F */  lw         $v1, 0x18($sp)
/* 74E9CB4 8008DF84 00000000 */  nop
/* 74E9CB8 8008DF88 21186200 */  addu       $v1, $v1, $v0
/* 74E9CBC 8008DF8C 9171010C */  jal        func_8005C644
/* 74E9CC0 8008DF90 040043A6 */   sh        $v1, 0x4($s2)
/* 74E9CC4 8008DF94 9171010C */  jal        func_8005C644
/* 74E9CC8 8008DF98 450002A2 */   sb        $v0, 0x45($s0)
/* 74E9CCC 8008DF9C 9171010C */  jal        func_8005C644
/* 74E9CD0 8008DFA0 460002A2 */   sb        $v0, 0x46($s0)
/* 74E9CD4 8008DFA4 1F004230 */  andi       $v0, $v0, 0x1F
/* 74E9CD8 8008DFA8 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 74E9CDC 8008DFAC 9171010C */  jal        func_8005C644
/* 74E9CE0 8008DFB0 060042A6 */   sh        $v0, 0x6($s2)
/* 74E9CE4 8008DFB4 1F004230 */  andi       $v0, $v0, 0x1F
/* 74E9CE8 8008DFB8 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 74E9CEC 8008DFBC 9171010C */  jal        func_8005C644
/* 74E9CF0 8008DFC0 080042A6 */   sh        $v0, 0x8($s2)
/* 74E9CF4 8008DFC4 1F004230 */  andi       $v0, $v0, 0x1F
/* 74E9CF8 8008DFC8 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 74E9CFC 8008DFCC 0A0042A6 */  sh         $v0, 0xA($s2)
/* 74E9D00 8008DFD0 20000224 */  addiu      $v0, $zero, 0x20
/* 74E9D04 8008DFD4 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 74E9D08 8008DFD8 0C000224 */  addiu      $v0, $zero, 0xC
/* 74E9D0C 8008DFDC 4A0015A2 */  sb         $s5, 0x4A($s0)
/* 74E9D10 8008DFE0 100042A6 */  sh         $v0, 0x10($s2)
/* 74E9D14 8008DFE4 C8000224 */  addiu      $v0, $zero, 0xC8
/* 74E9D18 8008DFE8 120042A6 */  sh         $v0, 0x12($s2)
/* 74E9D1C 8008DFEC 14000224 */  addiu      $v0, $zero, 0x14
/* 74E9D20 8008DFF0 140042AE */  sw         $v0, 0x14($s2)
/* 74E9D24 8008DFF4 1400638E */  lw         $v1, 0x14($s3)
/* 74E9D28 8008DFF8 32000224 */  addiu      $v0, $zero, 0x32
/* 74E9D2C 8008DFFC 0C0042A6 */  sh         $v0, 0xC($s2)
/* 74E9D30 8008E000 00E86324 */  addiu      $v1, $v1, -0x1800
/* 74E9D34 8008E004 0E0043A6 */  sh         $v1, 0xE($s2)
.Llevel_34_8008E008:
/* 74E9D38 8008E008 01003126 */  addiu      $s1, $s1, 0x1
/* 74E9D3C 8008E00C 2000222A */  slti       $v0, $s1, 0x20
/* 74E9D40 8008E010 3DFF4014 */  bnez       $v0, .Llevel_34_8008DD08
/* 74E9D44 8008E014 00000000 */   nop
.Llevel_34_8008E018:
/* 74E9D48 8008E018 0400848E */  lw         $a0, 0x4($s4)
/* 74E9D4C 8008E01C FC000524 */  addiu      $a1, $zero, 0xFC
/* 74E9D50 8008E020 B687000C */  jal        func_80021ED8
/* 74E9D54 8008E024 21300000 */   addu      $a2, $zero, $zero
/* 74E9D58 8008E028 C656010C */  jal        func_80055B18
/* 74E9D5C 8008E02C 21206002 */   addu      $a0, $s3, $zero
.Llevel_34_8008E030:
/* 74E9D60 8008E030 4000BF8F */  lw         $ra, 0x40($sp)
/* 74E9D64 8008E034 3C00B78F */  lw         $s7, 0x3C($sp)
/* 74E9D68 8008E038 3800B68F */  lw         $s6, 0x38($sp)
/* 74E9D6C 8008E03C 3400B58F */  lw         $s5, 0x34($sp)
/* 74E9D70 8008E040 3000B48F */  lw         $s4, 0x30($sp)
/* 74E9D74 8008E044 2C00B38F */  lw         $s3, 0x2C($sp)
/* 74E9D78 8008E048 2800B28F */  lw         $s2, 0x28($sp)
/* 74E9D7C 8008E04C 2400B18F */  lw         $s1, 0x24($sp)
/* 74E9D80 8008E050 2000B08F */  lw         $s0, 0x20($sp)
/* 74E9D84 8008E054 4800BD27 */  addiu      $sp, $sp, 0x48
/* 74E9D88 8008E058 0800E003 */  jr         $ra
/* 74E9D8C 8008E05C 00000000 */   nop
.size func_level_34_8008DAE8, . - func_level_34_8008DAE8
