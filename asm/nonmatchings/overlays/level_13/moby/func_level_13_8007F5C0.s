.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_13_8007F5C0
/* 441DAF0 8007F5C0 80FFBD27 */  addiu      $sp, $sp, -0x80
/* 441DAF4 8007F5C4 6400B3AF */  sw         $s3, 0x64($sp)
/* 441DAF8 8007F5C8 21988000 */  addu       $s3, $a0, $zero
/* 441DAFC 8007F5CC 7400B7AF */  sw         $s7, 0x74($sp)
/* 441DB00 8007F5D0 7800BFAF */  sw         $ra, 0x78($sp)
/* 441DB04 8007F5D4 7000B6AF */  sw         $s6, 0x70($sp)
/* 441DB08 8007F5D8 6C00B5AF */  sw         $s5, 0x6C($sp)
/* 441DB0C 8007F5DC 6800B4AF */  sw         $s4, 0x68($sp)
/* 441DB10 8007F5E0 6000B2AF */  sw         $s2, 0x60($sp)
/* 441DB14 8007F5E4 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 441DB18 8007F5E8 5800B0AF */  sw         $s0, 0x58($sp)
/* 441DB1C 8007F5EC 49006292 */  lbu        $v0, 0x49($s3)
/* 441DB20 8007F5F0 0000728E */  lw         $s2, 0x0($s3)
/* 441DB24 8007F5F4 32004014 */  bnez       $v0, .Llevel_13_8007F6C0
/* 441DB28 8007F5F8 21B80000 */   addu      $s7, $zero, $zero
/* 441DB2C 8007F5FC 21204002 */  addu       $a0, $s2, $zero
/* 441DB30 8007F600 0C007026 */  addiu      $s0, $s3, 0xC
/* 441DB34 8007F604 21280002 */  addu       $a1, $s0, $zero
/* 441DB38 8007F608 2000438E */  lw         $v1, 0x20($s2)
/* 441DB3C 8007F60C 0780063C */  lui        $a2, %hi(D_8006C550)
/* 441DB40 8007F610 50C5C68C */  lw         $a2, %lo(D_8006C550)($a2)
/* 441DB44 8007F614 40100300 */  sll        $v0, $v1, 1
/* 441DB48 8007F618 21104300 */  addu       $v0, $v0, $v1
/* 441DB4C 8007F61C 80100200 */  sll        $v0, $v0, 2
/* 441DB50 8007F620 23104300 */  subu       $v0, $v0, $v1
/* 441DB54 8007F624 C0100200 */  sll        $v0, $v0, 3
/* 441DB58 8007F628 2130C200 */  addu       $a2, $a2, $v0
/* 441DB5C 8007F62C 653C010C */  jal        func_8004F194
/* 441DB60 8007F630 0C00C624 */   addiu     $a2, $a2, 0xC
/* 441DB64 8007F634 21204002 */  addu       $a0, $s2, $zero
/* 441DB68 8007F638 443C010C */  jal        func_8004F110
/* 441DB6C 8007F63C 01000524 */   addiu     $a1, $zero, 0x1
/* 441DB70 8007F640 1000A427 */  addiu      $a0, $sp, 0x10
/* 441DB74 8007F644 21280002 */  addu       $a1, $s0, $zero
/* 441DB78 8007F648 723C010C */  jal        func_8004F1C8
/* 441DB7C 8007F64C 21304002 */   addu      $a2, $s2, $zero
/* 441DB80 8007F650 1000A48F */  lw         $a0, 0x10($sp)
/* 441DB84 8007F654 1400A58F */  lw         $a1, 0x14($sp)
/* 441DB88 8007F658 203A010C */  jal        func_8004E880
/* 441DB8C 8007F65C 01000624 */   addiu     $a2, $zero, 0x1
/* 441DB90 8007F660 0C00438E */  lw         $v1, 0xC($s2)
/* 441DB94 8007F664 1C0042AE */  sw         $v0, 0x1C($s2)
/* 441DB98 8007F668 0000628C */  lw         $v0, 0x0($v1)
/* 441DB9C 8007F66C 00000000 */  nop
/* 441DBA0 8007F670 1000401C */  bgtz       $v0, .Llevel_13_8007F6B4
/* 441DBA4 8007F674 1000A427 */   addiu     $a0, $sp, 0x10
/* 441DBA8 8007F678 7A3B010C */  jal        func_8004EDE8
/* 441DBAC 8007F67C 21280000 */   addu      $a1, $zero, $zero
/* 441DBB0 8007F680 0C00438E */  lw         $v1, 0xC($s2)
/* 441DBB4 8007F684 00000000 */  nop
/* 441DBB8 8007F688 000062AC */  sw         $v0, 0x0($v1)
/* 441DBBC 8007F68C 1400428E */  lw         $v0, 0x14($s2)
/* 441DBC0 8007F690 00000000 */  nop
/* 441DBC4 8007F694 000040AC */  sw         $zero, 0x0($v0)
/* 441DBC8 8007F698 1800438E */  lw         $v1, 0x18($s2)
/* 441DBCC 8007F69C 1400628E */  lw         $v0, 0x14($s3)
/* 441DBD0 8007F6A0 00000000 */  nop
/* 441DBD4 8007F6A4 000062AC */  sw         $v0, 0x0($v1)
/* 441DBD8 8007F6A8 01000224 */  addiu      $v0, $zero, 0x1
/* 441DBDC 8007F6AC AEFD0108 */  j          .Llevel_13_8007F6B8
/* 441DBE0 8007F6B0 100042AE */   sw        $v0, 0x10($s2)
.Llevel_13_8007F6B4:
/* 441DBE4 8007F6B4 100040AE */  sw         $zero, 0x10($s2)
.Llevel_13_8007F6B8:
/* 441DBE8 8007F6B8 01000224 */  addiu      $v0, $zero, 0x1
/* 441DBEC 8007F6BC 490062A2 */  sb         $v0, 0x49($s3)
.Llevel_13_8007F6C0:
/* 441DBF0 8007F6C0 48006392 */  lbu        $v1, 0x48($s3)
/* 441DBF4 8007F6C4 01000224 */  addiu      $v0, $zero, 0x1
/* 441DBF8 8007F6C8 C0006210 */  beq        $v1, $v0, .Llevel_13_8007F9CC
/* 441DBFC 8007F6CC 02006228 */   slti      $v0, $v1, 0x2
/* 441DC00 8007F6D0 05004010 */  beqz       $v0, .Llevel_13_8007F6E8
/* 441DC04 8007F6D4 00000000 */   nop
/* 441DC08 8007F6D8 0A006010 */  beqz       $v1, .Llevel_13_8007F704
/* 441DC0C 8007F6DC 00000000 */   nop
/* 441DC10 8007F6E0 08FF0108 */  j          .Llevel_13_8007FC20
/* 441DC14 8007F6E4 00000000 */   nop
.Llevel_13_8007F6E8:
/* 441DC18 8007F6E8 02000224 */  addiu      $v0, $zero, 0x2
/* 441DC1C 8007F6EC D0006210 */  beq        $v1, $v0, .Llevel_13_8007FA30
/* 441DC20 8007F6F0 03000224 */   addiu     $v0, $zero, 0x3
/* 441DC24 8007F6F4 DD006210 */  beq        $v1, $v0, .Llevel_13_8007FA6C
/* 441DC28 8007F6F8 00000000 */   nop
/* 441DC2C 8007F6FC 08FF0108 */  j          .Llevel_13_8007FC20
/* 441DC30 8007F700 00000000 */   nop
.Llevel_13_8007F704:
/* 441DC34 8007F704 1800628E */  lw         $v0, 0x18($s3)
/* 441DC38 8007F708 00000000 */  nop
/* 441DC3C 8007F70C 2B004010 */  beqz       $v0, .Llevel_13_8007F7BC
/* 441DC40 8007F710 21800000 */   addu      $s0, $zero, $zero
.Llevel_13_8007F714:
/* 441DC44 8007F714 0780023C */  lui        $v0, %hi(D_8006C578)
/* 441DC48 8007F718 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 441DC4C 8007F71C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 441DC50 8007F720 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 441DC54 8007F724 00000000 */  nop
/* 441DC58 8007F728 23104300 */  subu       $v0, $v0, $v1
/* 441DC5C 8007F72C 15004228 */  slti       $v0, $v0, 0x15
/* 441DC60 8007F730 0A004014 */  bnez       $v0, .Llevel_13_8007F75C
/* 441DC64 8007F734 F5000424 */   addiu     $a0, $zero, 0xF5
/* 441DC68 8007F738 21286002 */  addu       $a1, $s3, $zero
/* 441DC6C 8007F73C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 441DC70 8007F740 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 441DC74 8007F744 00000000 */  nop
/* 441DC78 8007F748 09F84000 */  jalr       $v0
/* 441DC7C 8007F74C 01001026 */   addiu     $s0, $s0, 0x1
/* 441DC80 8007F750 0800022A */  slti       $v0, $s0, 0x8
/* 441DC84 8007F754 EFFF4014 */  bnez       $v0, .Llevel_13_8007F714
/* 441DC88 8007F758 00000000 */   nop
.Llevel_13_8007F75C:
/* 441DC8C 8007F75C 21206002 */  addu       $a0, $s3, $zero
/* 441DC90 8007F760 2C004526 */  addiu      $a1, $s2, 0x2C
/* 441DC94 8007F764 01000624 */  addiu      $a2, $zero, 0x1
/* 441DC98 8007F768 FEE2000C */  jal        func_80038BF8
/* 441DC9C 8007F76C 01000724 */   addiu     $a3, $zero, 0x1
/* 441DCA0 8007F770 080060AE */  sw         $zero, 0x8($s3)
/* 441DCA4 8007F774 1000428E */  lw         $v0, 0x10($s2)
/* 441DCA8 8007F778 00000000 */  nop
/* 441DCAC 8007F77C 28014010 */  beqz       $v0, .Llevel_13_8007FC20
/* 441DCB0 8007F780 00000000 */   nop
/* 441DCB4 8007F784 2000438E */  lw         $v1, 0x20($s2)
/* 441DCB8 8007F788 00000000 */  nop
/* 441DCBC 8007F78C 40100300 */  sll        $v0, $v1, 1
/* 441DCC0 8007F790 21104300 */  addu       $v0, $v0, $v1
/* 441DCC4 8007F794 80100200 */  sll        $v0, $v0, 2
/* 441DCC8 8007F798 23104300 */  subu       $v0, $v0, $v1
/* 441DCCC 8007F79C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 441DCD0 8007F7A0 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 441DCD4 8007F7A4 C0100200 */  sll        $v0, $v0, 3
/* 441DCD8 8007F7A8 21104300 */  addu       $v0, $v0, $v1
/* 441DCDC 8007F7AC 0000438C */  lw         $v1, 0x0($v0)
/* 441DCE0 8007F7B0 01000224 */  addiu      $v0, $zero, 0x1
/* 441DCE4 8007F7B4 08FF0108 */  j          .Llevel_13_8007FC20
/* 441DCE8 8007F7B8 100062AC */   sw        $v0, 0x10($v1)
.Llevel_13_8007F7BC:
/* 441DCEC 8007F7BC 1000428E */  lw         $v0, 0x10($s2)
/* 441DCF0 8007F7C0 00000000 */  nop
/* 441DCF4 8007F7C4 08004010 */  beqz       $v0, .Llevel_13_8007F7E8
/* 441DCF8 8007F7C8 00000000 */   nop
/* 441DCFC 8007F7CC 1400438E */  lw         $v1, 0x14($s2)
/* 441DD00 8007F7D0 00000000 */  nop
/* 441DD04 8007F7D4 0000628C */  lw         $v0, 0x0($v1)
/* 441DD08 8007F7D8 00000000 */  nop
/* 441DD0C 8007F7DC 20004224 */  addiu      $v0, $v0, 0x20
/* 441DD10 8007F7E0 FF0F4230 */  andi       $v0, $v0, 0xFFF
/* 441DD14 8007F7E4 000062AC */  sw         $v0, 0x0($v1)
.Llevel_13_8007F7E8:
/* 441DD18 8007F7E8 1400428E */  lw         $v0, 0x14($s2)
/* 441DD1C 8007F7EC 1C00438E */  lw         $v1, 0x1C($s2)
/* 441DD20 8007F7F0 0000428C */  lw         $v0, 0x0($v0)
/* 441DD24 8007F7F4 00000000 */  nop
/* 441DD28 8007F7F8 21104300 */  addu       $v0, $v0, $v1
/* 441DD2C 8007F7FC FF0F5030 */  andi       $s0, $v0, 0xFFF
/* 441DD30 8007F800 8B3A010C */  jal        func_8004EA2C
/* 441DD34 8007F804 21200002 */   addu      $a0, $s0, $zero
/* 441DD38 8007F808 0C00438E */  lw         $v1, 0xC($s2)
/* 441DD3C 8007F80C 00000000 */  nop
/* 441DD40 8007F810 0000638C */  lw         $v1, 0x0($v1)
/* 441DD44 8007F814 00000000 */  nop
/* 441DD48 8007F818 18006200 */  mult       $v1, $v0
/* 441DD4C 8007F81C 21200002 */  addu       $a0, $s0, $zero
/* 441DD50 8007F820 12400000 */  mflo       $t0
/* 441DD54 8007F824 03130800 */  sra        $v0, $t0, 12
/* 441DD58 8007F828 793A010C */  jal        func_8004E9E4
/* 441DD5C 8007F82C 2000A2AF */   sw        $v0, 0x20($sp)
/* 441DD60 8007F830 0C00438E */  lw         $v1, 0xC($s2)
/* 441DD64 8007F834 00000000 */  nop
/* 441DD68 8007F838 0000638C */  lw         $v1, 0x0($v1)
/* 441DD6C 8007F83C 00000000 */  nop
/* 441DD70 8007F840 18006200 */  mult       $v1, $v0
/* 441DD74 8007F844 0C006426 */  addiu      $a0, $s3, 0xC
/* 441DD78 8007F848 21284002 */  addu       $a1, $s2, $zero
/* 441DD7C 8007F84C 2000A627 */  addiu      $a2, $sp, 0x20
/* 441DD80 8007F850 2800A0AF */  sw         $zero, 0x28($sp)
/* 441DD84 8007F854 12400000 */  mflo       $t0
/* 441DD88 8007F858 03130800 */  sra        $v0, $t0, 12
/* 441DD8C 8007F85C 653C010C */  jal        func_8004F194
/* 441DD90 8007F860 2400A2AF */   sw        $v0, 0x24($sp)
/* 441DD94 8007F864 1000428E */  lw         $v0, 0x10($s2)
/* 441DD98 8007F868 00000000 */  nop
/* 441DD9C 8007F86C 2A004010 */  beqz       $v0, .Llevel_13_8007F918
/* 441DDA0 8007F870 00040326 */   addiu     $v1, $s0, 0x400
/* 441DDA4 8007F874 2800428E */  lw         $v0, 0x28($s2)
/* 441DDA8 8007F878 00000000 */  nop
/* 441DDAC 8007F87C 26004010 */  beqz       $v0, .Llevel_13_8007F918
/* 441DDB0 8007F880 00000000 */   nop
/* 441DDB4 8007F884 1800458E */  lw         $a1, 0x18($s2)
/* 441DDB8 8007F888 0780023C */  lui        $v0, %hi(D_80070328 + 8)
/* 441DDBC 8007F88C 3003428C */  lw         $v0, %lo(D_80070328 + 8)($v0)
/* 441DDC0 8007F890 0000A48C */  lw         $a0, 0x0($a1)
/* 441DDC4 8007F894 00000000 */  nop
/* 441DDC8 8007F898 23184400 */  subu       $v1, $v0, $a0
/* 441DDCC 8007F89C F0FF6228 */  slti       $v0, $v1, -0x10
/* 441DDD0 8007F8A0 03004010 */  beqz       $v0, .Llevel_13_8007F8B0
/* 441DDD4 8007F8A4 11006228 */   slti      $v0, $v1, 0x11
/* 441DDD8 8007F8A8 F0FF0324 */  addiu      $v1, $zero, -0x10
/* 441DDDC 8007F8AC 11006228 */  slti       $v0, $v1, 0x11
.Llevel_13_8007F8B0:
/* 441DDE0 8007F8B0 03004014 */  bnez       $v0, .Llevel_13_8007F8C0
/* 441DDE4 8007F8B4 21108300 */   addu      $v0, $a0, $v1
/* 441DDE8 8007F8B8 10000324 */  addiu      $v1, $zero, 0x10
/* 441DDEC 8007F8BC 21108300 */  addu       $v0, $a0, $v1
.Llevel_13_8007F8C0:
/* 441DDF0 8007F8C0 0000A2AC */  sw         $v0, 0x0($a1)
/* 441DDF4 8007F8C4 2800428E */  lw         $v0, 0x28($s2)
/* 441DDF8 8007F8C8 1800448E */  lw         $a0, 0x18($s2)
/* 441DDFC 8007F8CC 0C00438C */  lw         $v1, 0xC($v0)
/* 441DE00 8007F8D0 0000828C */  lw         $v0, 0x0($a0)
/* 441DE04 8007F8D4 0800638C */  lw         $v1, 0x8($v1)
/* 441DE08 8007F8D8 00000000 */  nop
/* 441DE0C 8007F8DC 2A104300 */  slt        $v0, $v0, $v1
/* 441DE10 8007F8E0 02004010 */  beqz       $v0, .Llevel_13_8007F8EC
/* 441DE14 8007F8E4 00000000 */   nop
/* 441DE18 8007F8E8 000083AC */  sw         $v1, 0x0($a0)
.Llevel_13_8007F8EC:
/* 441DE1C 8007F8EC 2800428E */  lw         $v0, 0x28($s2)
/* 441DE20 8007F8F0 1800448E */  lw         $a0, 0x18($s2)
/* 441DE24 8007F8F4 0C00438C */  lw         $v1, 0xC($v0)
/* 441DE28 8007F8F8 0000828C */  lw         $v0, 0x0($a0)
/* 441DE2C 8007F8FC 1800638C */  lw         $v1, 0x18($v1)
/* 441DE30 8007F900 00000000 */  nop
/* 441DE34 8007F904 2A106200 */  slt        $v0, $v1, $v0
/* 441DE38 8007F908 02004010 */  beqz       $v0, .Llevel_13_8007F914
/* 441DE3C 8007F90C 00000000 */   nop
/* 441DE40 8007F910 000083AC */  sw         $v1, 0x0($a0)
.Llevel_13_8007F914:
/* 441DE44 8007F914 00040326 */  addiu      $v1, $s0, 0x400
.Llevel_13_8007F918:
/* 441DE48 8007F918 1800428E */  lw         $v0, 0x18($s2)
/* 441DE4C 8007F91C 4F006492 */  lbu        $a0, 0x4F($s3)
/* 441DE50 8007F920 0000428C */  lw         $v0, 0x0($v0)
/* 441DE54 8007F924 03190300 */  sra        $v1, $v1, 4
/* 441DE58 8007F928 460063A2 */  sb         $v1, 0x46($s3)
/* 441DE5C 8007F92C 08008010 */  beqz       $a0, .Llevel_13_8007F950
/* 441DE60 8007F930 140062AE */   sw        $v0, 0x14($s3)
/* 441DE64 8007F934 F0FF8224 */  addiu      $v0, $a0, -0x10
/* 441DE68 8007F938 4F0062A2 */  sb         $v0, 0x4F($s3)
/* 441DE6C 8007F93C FF004230 */  andi       $v0, $v0, 0xFF
/* 441DE70 8007F940 2100422C */  sltiu      $v0, $v0, 0x21
/* 441DE74 8007F944 02004010 */  beqz       $v0, .Llevel_13_8007F950
/* 441DE78 8007F948 00000000 */   nop
/* 441DE7C 8007F94C 4F0060A2 */  sb         $zero, 0x4F($s3)
.Llevel_13_8007F950:
/* 441DE80 8007F950 0780023C */  lui        $v0, %hi(D_80070328 + 0x138)
/* 441DE84 8007F954 6004428C */  lw         $v0, %lo(D_80070328 + 0x138)($v0)
/* 441DE88 8007F958 00000000 */  nop
/* 441DE8C 8007F95C 14005314 */  bne        $v0, $s3, .Llevel_13_8007F9B0
/* 441DE90 8007F960 0C006426 */   addiu     $a0, $s3, 0xC
/* 441DE94 8007F964 0780033C */  lui        $v1, %hi(D_80070328 + 0x24C)
/* 441DE98 8007F968 7405638C */  lw         $v1, %lo(D_80070328 + 0x24C)($v1)
/* 441DE9C 8007F96C 03000224 */  addiu      $v0, $zero, 0x3
/* 441DEA0 8007F970 0F006214 */  bne        $v1, $v0, .Llevel_13_8007F9B0
/* 441DEA4 8007F974 00000000 */   nop
/* 441DEA8 8007F978 0780023C */  lui        $v0, %hi(D_80070328 + 0x50)
/* 441DEAC 8007F97C 7803428C */  lw         $v0, %lo(D_80070328 + 0x50)($v0)
/* 441DEB0 8007F980 00000000 */  nop
/* 441DEB4 8007F984 F9FF4224 */  addiu      $v0, $v0, -0x7
/* 441DEB8 8007F988 0200422C */  sltiu      $v0, $v0, 0x2
/* 441DEBC 8007F98C 08004014 */  bnez       $v0, .Llevel_13_8007F9B0
/* 441DEC0 8007F990 0010023C */   lui       $v0, (0x10000080 >> 16)
/* 441DEC4 8007F994 80004234 */  ori        $v0, $v0, (0x10000080 & 0xFFFF)
/* 441DEC8 8007F998 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 441DECC 8007F99C 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 441DED0 8007F9A0 68000224 */  addiu      $v0, $zero, 0x68
/* 441DED4 8007F9A4 0780013C */  lui        $at, %hi(D_80070328 + 0x23C)
/* 441DED8 8007F9A8 640522AC */  sw         $v0, %lo(D_80070328 + 0x23C)($at)
/* 441DEDC 8007F9AC 0C006426 */  addiu      $a0, $s3, 0xC
.Llevel_13_8007F9B0:
/* 441DEE0 8007F9B0 D668000C */  jal        func_8001A358
/* 441DEE4 8007F9B4 00300524 */   addiu     $a1, $zero, 0x3000
/* 441DEE8 8007F9B8 A758010C */  jal        func_8005629C
/* 441DEEC 8007F9BC 21206002 */   addu      $a0, $s3, $zero
/* 441DEF0 8007F9C0 21206002 */  addu       $a0, $s3, $zero
/* 441DEF4 8007F9C4 06FF0108 */  j          .Llevel_13_8007FC18
/* 441DEF8 8007F9C8 02000524 */   addiu     $a1, $zero, 0x2
.Llevel_13_8007F9CC:
/* 441DEFC 8007F9CC 21206002 */  addu       $a0, $s3, $zero
/* 441DF00 8007F9D0 45006292 */  lbu        $v0, 0x45($s3)
/* 441DF04 8007F9D4 2C004526 */  addiu      $a1, $s2, 0x2C
/* 441DF08 8007F9D8 08004224 */  addiu      $v0, $v0, 0x8
/* 441DF0C 8007F9DC 65D4000C */  jal        func_80035194
/* 441DF10 8007F9E0 450062A2 */   sb        $v0, 0x45($s3)
/* 441DF14 8007F9E4 21184000 */  addu       $v1, $v0, $zero
/* 441DF18 8007F9E8 00010224 */  addiu      $v0, $zero, 0x100
/* 441DF1C 8007F9EC 03006210 */  beq        $v1, $v0, .Llevel_13_8007F9FC
/* 441DF20 8007F9F0 03000224 */   addiu     $v0, $zero, 0x3
/* 441DF24 8007F9F4 8A006214 */  bne        $v1, $v0, .Llevel_13_8007FC20
/* 441DF28 8007F9F8 00000000 */   nop
.Llevel_13_8007F9FC:
/* 441DF2C 8007F9FC 21206002 */  addu       $a0, $s3, $zero
/* 441DF30 8007FA00 4957010C */  jal        func_80055D24
/* 441DF34 8007FA04 04000524 */   addiu     $a1, $zero, 0x4
/* 441DF38 8007FA08 21206002 */  addu       $a0, $s3, $zero
/* 441DF3C 8007FA0C 6EDA000C */  jal        func_800369B8
/* 441DF40 8007FA10 20000524 */   addiu     $a1, $zero, 0x20
/* 441DF44 8007FA14 B4000224 */  addiu      $v0, $zero, 0xB4
/* 441DF48 8007FA18 4C0060A2 */  sb         $zero, 0x4C($s3)
/* 441DF4C 8007FA1C 4D0060A2 */  sb         $zero, 0x4D($s3)
/* 441DF50 8007FA20 240042AE */  sw         $v0, 0x24($s2)
/* 441DF54 8007FA24 02000224 */  addiu      $v0, $zero, 0x2
/* 441DF58 8007FA28 08FF0108 */  j          .Llevel_13_8007FC20
/* 441DF5C 8007FA2C 480062A2 */   sb        $v0, 0x48($s3)
.Llevel_13_8007FA30:
/* 441DF60 8007FA30 2400428E */  lw         $v0, 0x24($s2)
/* 441DF64 8007FA34 00000000 */  nop
/* 441DF68 8007FA38 3D004228 */  slti       $v0, $v0, 0x3D
/* 441DF6C 8007FA3C 06004014 */  bnez       $v0, .Llevel_13_8007FA58
/* 441DF70 8007FA40 21206002 */   addu      $a0, $s3, $zero
/* 441DF74 8007FA44 24004426 */  addiu      $a0, $s2, 0x24
/* 441DF78 8007FA48 69D6000C */  jal        func_800359A4
/* 441DF7C 8007FA4C 04000524 */   addiu     $a1, $zero, 0x4
/* 441DF80 8007FA50 08FF0108 */  j          .Llevel_13_8007FC20
/* 441DF84 8007FA54 00000000 */   nop
.Llevel_13_8007FA58:
/* 441DF88 8007FA58 21280000 */  addu       $a1, $zero, $zero
/* 441DF8C 8007FA5C AFEE000C */  jal        func_8003BABC
/* 441DF90 8007FA60 21300000 */   addu      $a2, $zero, $zero
/* 441DF94 8007FA64 03000224 */  addiu      $v0, $zero, 0x3
/* 441DF98 8007FA68 480062A2 */  sb         $v0, 0x48($s3)
.Llevel_13_8007FA6C:
/* 441DF9C 8007FA6C 2400428E */  lw         $v0, 0x24($s2)
/* 441DFA0 8007FA70 00000000 */  nop
/* 441DFA4 8007FA74 3D004228 */  slti       $v0, $v0, 0x3D
/* 441DFA8 8007FA78 32004010 */  beqz       $v0, .Llevel_13_8007FB44
/* 441DFAC 8007FA7C 24004426 */   addiu     $a0, $s2, 0x24
/* 441DFB0 8007FA80 1400428E */  lw         $v0, 0x14($s2)
/* 441DFB4 8007FA84 00000000 */  nop
/* 441DFB8 8007FA88 0000508C */  lw         $s0, 0x0($v0)
/* 441DFBC 8007FA8C 1C00428E */  lw         $v0, 0x1C($s2)
/* 441DFC0 8007FA90 00000000 */  nop
/* 441DFC4 8007FA94 21800202 */  addu       $s0, $s0, $v0
/* 441DFC8 8007FA98 FF0F1032 */  andi       $s0, $s0, 0xFFF
/* 441DFCC 8007FA9C 8B3A010C */  jal        func_8004EA2C
/* 441DFD0 8007FAA0 21200002 */   addu      $a0, $s0, $zero
/* 441DFD4 8007FAA4 0C00438E */  lw         $v1, 0xC($s2)
/* 441DFD8 8007FAA8 00000000 */  nop
/* 441DFDC 8007FAAC 0000638C */  lw         $v1, 0x0($v1)
/* 441DFE0 8007FAB0 00000000 */  nop
/* 441DFE4 8007FAB4 18006200 */  mult       $v1, $v0
/* 441DFE8 8007FAB8 21200002 */  addu       $a0, $s0, $zero
/* 441DFEC 8007FABC 12400000 */  mflo       $t0
/* 441DFF0 8007FAC0 03130800 */  sra        $v0, $t0, 12
/* 441DFF4 8007FAC4 793A010C */  jal        func_8004E9E4
/* 441DFF8 8007FAC8 3000A2AF */   sw        $v0, 0x30($sp)
/* 441DFFC 8007FACC 0C00438E */  lw         $v1, 0xC($s2)
/* 441E000 8007FAD0 00000000 */  nop
/* 441E004 8007FAD4 0000638C */  lw         $v1, 0x0($v1)
/* 441E008 8007FAD8 00000000 */  nop
/* 441E00C 8007FADC 18006200 */  mult       $v1, $v0
/* 441E010 8007FAE0 0C007126 */  addiu      $s1, $s3, 0xC
/* 441E014 8007FAE4 21202002 */  addu       $a0, $s1, $zero
/* 441E018 8007FAE8 21284002 */  addu       $a1, $s2, $zero
/* 441E01C 8007FAEC 3000A627 */  addiu      $a2, $sp, 0x30
/* 441E020 8007FAF0 3800A0AF */  sw         $zero, 0x38($sp)
/* 441E024 8007FAF4 12400000 */  mflo       $t0
/* 441E028 8007FAF8 03130800 */  sra        $v0, $t0, 12
/* 441E02C 8007FAFC 653C010C */  jal        func_8004F194
/* 441E030 8007FB00 3400A2AF */   sw        $v0, 0x34($sp)
/* 441E034 8007FB04 02000424 */  addiu      $a0, $zero, 0x2
/* 441E038 8007FB08 47000524 */  addiu      $a1, $zero, 0x47
/* 441E03C 8007FB0C 21302002 */  addu       $a2, $s1, $zero
/* 441E040 8007FB10 1800428E */  lw         $v0, 0x18($s2)
/* 441E044 8007FB14 00041026 */  addiu      $s0, $s0, 0x400
/* 441E048 8007FB18 0000438C */  lw         $v1, 0x0($v0)
/* 441E04C 8007FB1C 03811000 */  sra        $s0, $s0, 4
/* 441E050 8007FB20 440060A2 */  sb         $zero, 0x44($s3)
/* 441E054 8007FB24 450060A2 */  sb         $zero, 0x45($s3)
/* 441E058 8007FB28 460070A2 */  sb         $s0, 0x46($s3)
/* 441E05C 8007FB2C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 441E060 8007FB30 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 441E064 8007FB34 21380000 */  addu       $a3, $zero, $zero
/* 441E068 8007FB38 09F84000 */  jalr       $v0
/* 441E06C 8007FB3C 140063AE */   sw        $v1, 0x14($s3)
/* 441E070 8007FB40 24004426 */  addiu      $a0, $s2, 0x24
.Llevel_13_8007FB44:
/* 441E074 8007FB44 69D6000C */  jal        func_800359A4
/* 441E078 8007FB48 04000524 */   addiu     $a1, $zero, 0x4
/* 441E07C 8007FB4C 34004010 */  beqz       $v0, .Llevel_13_8007FC20
/* 441E080 8007FB50 00000000 */   nop
/* 441E084 8007FB54 2000438E */  lw         $v1, 0x20($s2)
/* 441E088 8007FB58 00000000 */  nop
/* 441E08C 8007FB5C 40100300 */  sll        $v0, $v1, 1
/* 441E090 8007FB60 21104300 */  addu       $v0, $v0, $v1
/* 441E094 8007FB64 80100200 */  sll        $v0, $v0, 2
/* 441E098 8007FB68 23104300 */  subu       $v0, $v0, $v1
/* 441E09C 8007FB6C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 441E0A0 8007FB70 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 441E0A4 8007FB74 C0100200 */  sll        $v0, $v0, 3
/* 441E0A8 8007FB78 21104300 */  addu       $v0, $v0, $v1
/* 441E0AC 8007FB7C 48004390 */  lbu        $v1, 0x48($v0)
/* 441E0B0 8007FB80 00000000 */  nop
/* 441E0B4 8007FB84 FFFF6224 */  addiu      $v0, $v1, -0x1
/* 441E0B8 8007FB88 0200422C */  sltiu      $v0, $v0, 0x2
/* 441E0BC 8007FB8C 05004014 */  bnez       $v0, .Llevel_13_8007FBA4
/* 441E0C0 8007FB90 01000224 */   addiu     $v0, $zero, 0x1
/* 441E0C4 8007FB94 FF006330 */  andi       $v1, $v1, 0xFF
/* 441E0C8 8007FB98 03000224 */  addiu      $v0, $zero, 0x3
/* 441E0CC 8007FB9C 03006214 */  bne        $v1, $v0, .Llevel_13_8007FBAC
/* 441E0D0 8007FBA0 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_13_8007FBA4:
/* 441E0D4 8007FBA4 ECFE0108 */  j          .Llevel_13_8007FBB0
/* 441E0D8 8007FBA8 100042AE */   sw        $v0, 0x10($s2)
.Llevel_13_8007FBAC:
/* 441E0DC 8007FBAC 100040AE */  sw         $zero, 0x10($s2)
.Llevel_13_8007FBB0:
/* 441E0E0 8007FBB0 20000224 */  addiu      $v0, $zero, 0x20
/* 441E0E4 8007FBB4 4C0062A2 */  sb         $v0, 0x4C($s3)
/* 441E0E8 8007FBB8 7F000224 */  addiu      $v0, $zero, 0x7F
/* 441E0EC 8007FBBC 36006386 */  lh         $v1, 0x36($s3)
/* 441E0F0 8007FBC0 21206002 */  addu       $a0, $s3, $zero
/* 441E0F4 8007FBC4 180060AE */  sw         $zero, 0x18($s3)
/* 441E0F8 8007FBC8 4F0062A2 */  sb         $v0, 0x4F($s3)
/* 441E0FC 8007FBCC 480060A2 */  sb         $zero, 0x48($s3)
/* 441E100 8007FBD0 80180300 */  sll        $v1, $v1, 2
/* 441E104 8007FBD4 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 441E108 8007FBD8 21082300 */  addu       $at, $at, $v1
/* 441E10C 8007FBDC 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 441E110 8007FBE0 07000524 */  addiu      $a1, $zero, 0x7
/* 441E114 8007FBE4 3C00428C */  lw         $v0, 0x3C($v0)
/* 441E118 8007FBE8 10001724 */  addiu      $s7, $zero, 0x10
/* 441E11C 8007FBEC 00004290 */  lbu        $v0, 0x0($v0)
/* 441E120 8007FBF0 01000324 */  addiu      $v1, $zero, 0x1
/* 441E124 8007FBF4 3C0060A2 */  sb         $zero, 0x3C($s3)
/* 441E128 8007FBF8 3D0060A2 */  sb         $zero, 0x3D($s3)
/* 441E12C 8007FBFC 3E0060A2 */  sb         $zero, 0x3E($s3)
/* 441E130 8007FC00 3F0063A2 */  sb         $v1, 0x3F($s3)
/* 441E134 8007FC04 0200422C */  sltiu      $v0, $v0, 0x2
/* 441E138 8007FC08 01004238 */  xori       $v0, $v0, 0x1
/* 441E13C 8007FC0C 23100200 */  negu       $v0, $v0
/* 441E140 8007FC10 30004230 */  andi       $v0, $v0, 0x30
/* 441E144 8007FC14 400062A2 */  sb         $v0, 0x40($s3)
.Llevel_13_8007FC18:
/* 441E148 8007FC18 4957010C */  jal        func_80055D24
/* 441E14C 8007FC1C 00000000 */   nop
.Llevel_13_8007FC20:
/* 441E150 8007FC20 4200E012 */  beqz       $s7, .Llevel_13_8007FD2C
/* 441E154 8007FC24 00000000 */   nop
/* 441E158 8007FC28 3800E012 */  beqz       $s7, .Llevel_13_8007FD0C
/* 441E15C 8007FC2C 21900000 */   addu      $s2, $zero, $zero
/* 441E160 8007FC30 0680163C */  lui        $s6, %hi(D_80065920)
/* 441E164 8007FC34 2059D626 */  addiu      $s6, $s6, %lo(D_80065920)
/* 441E168 8007FC38 0680153C */  lui        $s5, %hi(D_800658A0)
/* 441E16C 8007FC3C A058B526 */  addiu      $s5, $s5, %lo(D_800658A0)
/* 441E170 8007FC40 2000B127 */  addiu      $s1, $sp, 0x20
/* 441E174 8007FC44 4000B427 */  addiu      $s4, $sp, 0x40
.Llevel_13_8007FC48:
/* 441E178 8007FC48 9171010C */  jal        rand
/* 441E17C 8007FC4C 01005226 */   addiu     $s2, $s2, 0x1
/* 441E180 8007FC50 9171010C */  jal        rand
/* 441E184 8007FC54 FF005030 */   andi      $s0, $v0, 0xFF
/* 441E188 8007FC58 FF004230 */  andi       $v0, $v0, 0xFF
/* 441E18C 8007FC5C 40801000 */  sll        $s0, $s0, 1
/* 441E190 8007FC60 21181602 */  addu       $v1, $s0, $s6
/* 441E194 8007FC64 40100200 */  sll        $v0, $v0, 1
/* 441E198 8007FC68 21285600 */  addu       $a1, $v0, $s6
/* 441E19C 8007FC6C 00006384 */  lh         $v1, 0x0($v1)
/* 441E1A0 8007FC70 0000A484 */  lh         $a0, 0x0($a1)
/* 441E1A4 8007FC74 C3190300 */  sra        $v1, $v1, 7
/* 441E1A8 8007FC78 18006400 */  mult       $v1, $a0
/* 441E1AC 8007FC7C 21801502 */  addu       $s0, $s0, $s5
/* 441E1B0 8007FC80 12400000 */  mflo       $t0
/* 441E1B4 8007FC84 031B0800 */  sra        $v1, $t0, 12
/* 441E1B8 8007FC88 4000A3AF */  sw         $v1, 0x40($sp)
/* 441E1BC 8007FC8C 00000386 */  lh         $v1, 0x0($s0)
/* 441E1C0 8007FC90 0000A484 */  lh         $a0, 0x0($a1)
/* 441E1C4 8007FC94 C3190300 */  sra        $v1, $v1, 7
/* 441E1C8 8007FC98 18006400 */  mult       $v1, $a0
/* 441E1CC 8007FC9C 21105500 */  addu       $v0, $v0, $s5
/* 441E1D0 8007FCA0 21288002 */  addu       $a1, $s4, $zero
/* 441E1D4 8007FCA4 12400000 */  mflo       $t0
/* 441E1D8 8007FCA8 031B0800 */  sra        $v1, $t0, 12
/* 441E1DC 8007FCAC 4400A3AF */  sw         $v1, 0x44($sp)
/* 441E1E0 8007FCB0 00004284 */  lh         $v0, 0x0($v0)
/* 441E1E4 8007FCB4 21202002 */  addu       $a0, $s1, $zero
/* 441E1E8 8007FCB8 C3110200 */  sra        $v0, $v0, 7
/* 441E1EC 8007FCBC 5E3C010C */  jal        func_8004F178
/* 441E1F0 8007FCC0 4800A2AF */   sw        $v0, 0x48($sp)
/* 441E1F4 8007FCC4 21202002 */  addu       $a0, $s1, $zero
/* 441E1F8 8007FCC8 3A3C010C */  jal        func_8004F0E8
/* 441E1FC 8007FCCC 02000524 */   addiu     $a1, $zero, 0x2
/* 441E200 8007FCD0 21202002 */  addu       $a0, $s1, $zero
/* 441E204 8007FCD4 21282002 */  addu       $a1, $s1, $zero
/* 441E208 8007FCD8 653C010C */  jal        func_8004F194
/* 441E20C 8007FCDC 0C006626 */   addiu     $a2, $s3, 0xC
/* 441E210 8007FCE0 01000424 */  addiu      $a0, $zero, 0x1
/* 441E214 8007FCE4 21280000 */  addu       $a1, $zero, $zero
/* 441E218 8007FCE8 21302002 */  addu       $a2, $s1, $zero
/* 441E21C 8007FCEC 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 441E220 8007FCF0 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 441E224 8007FCF4 00000000 */  nop
/* 441E228 8007FCF8 09F84000 */  jalr       $v0
/* 441E22C 8007FCFC 21388002 */   addu      $a3, $s4, $zero
/* 441E230 8007FD00 2A105702 */  slt        $v0, $s2, $s7
/* 441E234 8007FD04 D0FF4014 */  bnez       $v0, .Llevel_13_8007FC48
/* 441E238 8007FD08 00000000 */   nop
.Llevel_13_8007FD0C:
/* 441E23C 8007FD0C 2120E002 */  addu       $a0, $s7, $zero
/* 441E240 8007FD10 47000524 */  addiu      $a1, $zero, 0x47
/* 441E244 8007FD14 0C006626 */  addiu      $a2, $s3, 0xC
/* 441E248 8007FD18 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 441E24C 8007FD1C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 441E250 8007FD20 00000000 */  nop
/* 441E254 8007FD24 09F84000 */  jalr       $v0
/* 441E258 8007FD28 21380000 */   addu      $a3, $zero, $zero
.Llevel_13_8007FD2C:
/* 441E25C 8007FD2C 7800BF8F */  lw         $ra, 0x78($sp)
/* 441E260 8007FD30 7400B78F */  lw         $s7, 0x74($sp)
/* 441E264 8007FD34 7000B68F */  lw         $s6, 0x70($sp)
/* 441E268 8007FD38 6C00B58F */  lw         $s5, 0x6C($sp)
/* 441E26C 8007FD3C 6800B48F */  lw         $s4, 0x68($sp)
/* 441E270 8007FD40 6400B38F */  lw         $s3, 0x64($sp)
/* 441E274 8007FD44 6000B28F */  lw         $s2, 0x60($sp)
/* 441E278 8007FD48 5C00B18F */  lw         $s1, 0x5C($sp)
/* 441E27C 8007FD4C 5800B08F */  lw         $s0, 0x58($sp)
/* 441E280 8007FD50 8000BD27 */  addiu      $sp, $sp, 0x80
/* 441E284 8007FD54 0800E003 */  jr         $ra
/* 441E288 8007FD58 00000000 */   nop
.size func_level_13_8007F5C0, . - func_level_13_8007F5C0
