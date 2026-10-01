.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_18_8007DBA8
/* 4EB08D8 8007DBA8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 4EB08DC 8007DBAC 2000B0AF */  sw         $s0, 0x20($sp)
/* 4EB08E0 8007DBB0 21808000 */  addu       $s0, $a0, $zero
/* 4EB08E4 8007DBB4 01000224 */  addiu      $v0, $zero, 0x1
/* 4EB08E8 8007DBB8 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 4EB08EC 8007DBBC 2800B2AF */  sw         $s2, 0x28($sp)
/* 4EB08F0 8007DBC0 2400B1AF */  sw         $s1, 0x24($sp)
/* 4EB08F4 8007DBC4 48000392 */  lbu        $v1, 0x48($s0)
/* 4EB08F8 8007DBC8 0000128E */  lw         $s2, 0x0($s0)
/* 4EB08FC 8007DBCC 71006210 */  beq        $v1, $v0, .Llevel_18_8007DD94
/* 4EB0900 8007DBD0 02006228 */   slti      $v0, $v1, 0x2
/* 4EB0904 8007DBD4 05004010 */  beqz       $v0, .Llevel_18_8007DBEC
/* 4EB0908 8007DBD8 00000000 */   nop
/* 4EB090C 8007DBDC 0A006010 */  beqz       $v1, .Llevel_18_8007DC08
/* 4EB0910 8007DBE0 7F000224 */   addiu     $v0, $zero, 0x7F
/* 4EB0914 8007DBE4 9DF70108 */  j          .Llevel_18_8007DE74
/* 4EB0918 8007DBE8 00000000 */   nop
.Llevel_18_8007DBEC:
/* 4EB091C 8007DBEC 02000224 */  addiu      $v0, $zero, 0x2
/* 4EB0920 8007DBF0 82006210 */  beq        $v1, $v0, .Llevel_18_8007DDFC
/* 4EB0924 8007DBF4 03000224 */   addiu     $v0, $zero, 0x3
/* 4EB0928 8007DBF8 93006210 */  beq        $v1, $v0, .Llevel_18_8007DE48
/* 4EB092C 8007DBFC 00000000 */   nop
/* 4EB0930 8007DC00 9DF70108 */  j          .Llevel_18_8007DE74
/* 4EB0934 8007DC04 00000000 */   nop
.Llevel_18_8007DC08:
/* 4EB0938 8007DC08 410000A2 */  sb         $zero, 0x41($s0)
/* 4EB093C 8007DC0C 4C0000A2 */  sb         $zero, 0x4C($s0)
/* 4EB0940 8007DC10 4D0000A2 */  sb         $zero, 0x4D($s0)
/* 4EB0944 8007DC14 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 4EB0948 8007DC18 0000438E */  lw         $v1, 0x0($s2)
/* 4EB094C 8007DC1C 00000000 */  nop
/* 4EB0950 8007DC20 40100300 */  sll        $v0, $v1, 1
/* 4EB0954 8007DC24 21104300 */  addu       $v0, $v0, $v1
/* 4EB0958 8007DC28 80100200 */  sll        $v0, $v0, 2
/* 4EB095C 8007DC2C 23104300 */  subu       $v0, $v0, $v1
/* 4EB0960 8007DC30 0780033C */  lui        $v1, %hi(D_8006C550)
/* 4EB0964 8007DC34 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 4EB0968 8007DC38 C0100200 */  sll        $v0, $v0, 3
/* 4EB096C 8007DC3C 21104300 */  addu       $v0, $v0, $v1
/* 4EB0970 8007DC40 48004290 */  lbu        $v0, 0x48($v0)
/* 4EB0974 8007DC44 00000000 */  nop
/* 4EB0978 8007DC48 80004230 */  andi       $v0, $v0, 0x80
/* 4EB097C 8007DC4C 89004010 */  beqz       $v0, .Llevel_18_8007DE74
/* 4EB0980 8007DC50 84000424 */   addiu     $a0, $zero, 0x84
/* 4EB0984 8007DC54 0400428E */  lw         $v0, 0x4($s2)
/* 4EB0988 8007DC58 00000000 */  nop
/* 4EB098C 8007DC5C 40280200 */  sll        $a1, $v0, 1
/* 4EB0990 8007DC60 2128A200 */  addu       $a1, $a1, $v0
/* 4EB0994 8007DC64 80280500 */  sll        $a1, $a1, 2
/* 4EB0998 8007DC68 2328A200 */  subu       $a1, $a1, $v0
/* 4EB099C 8007DC6C C0280500 */  sll        $a1, $a1, 3
/* 4EB09A0 8007DC70 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 4EB09A4 8007DC74 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 4EB09A8 8007DC78 00000000 */  nop
/* 4EB09AC 8007DC7C 09F84000 */  jalr       $v0
/* 4EB09B0 8007DC80 21286500 */   addu      $a1, $v1, $a1
/* 4EB09B4 8007DC84 21884000 */  addu       $s1, $v0, $zero
/* 4EB09B8 8007DC88 7A002012 */  beqz       $s1, .Llevel_18_8007DE74
/* 4EB09BC 8007DC8C 1000A427 */   addiu     $a0, $sp, 0x10
/* 4EB09C0 8007DC90 0400438E */  lw         $v1, 0x4($s2)
/* 4EB09C4 8007DC94 00000000 */  nop
/* 4EB09C8 8007DC98 40100300 */  sll        $v0, $v1, 1
/* 4EB09CC 8007DC9C 21104300 */  addu       $v0, $v0, $v1
/* 4EB09D0 8007DCA0 80100200 */  sll        $v0, $v0, 2
/* 4EB09D4 8007DCA4 23104300 */  subu       $v0, $v0, $v1
/* 4EB09D8 8007DCA8 0780033C */  lui        $v1, %hi(D_8006C550)
/* 4EB09DC 8007DCAC 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 4EB09E0 8007DCB0 C0100200 */  sll        $v0, $v0, 3
/* 4EB09E4 8007DCB4 21104300 */  addu       $v0, $v0, $v1
/* 4EB09E8 8007DCB8 46004290 */  lbu        $v0, 0x46($v0)
/* 4EB09EC 8007DCBC 0000238E */  lw         $v1, 0x0($s1)
/* 4EB09F0 8007DCC0 460022A2 */  sb         $v0, 0x46($s1)
/* 4EB09F4 8007DCC4 01000224 */  addiu      $v0, $zero, 0x1
/* 4EB09F8 8007DCC8 000060A4 */  sh         $zero, 0x0($v1)
/* 4EB09FC 8007DCCC 480022A2 */  sb         $v0, 0x48($s1)
/* 4EB0A00 8007DCD0 480002A2 */  sb         $v0, 0x48($s0)
/* 4EB0A04 8007DCD4 080051AE */  sw         $s1, 0x8($s2)
/* 4EB0A08 8007DCD8 46002292 */  lbu        $v0, 0x46($s1)
/* 4EB0A0C 8007DCDC 00000000 */  nop
/* 4EB0A10 8007DCE0 40100200 */  sll        $v0, $v0, 1
/* 4EB0A14 8007DCE4 0680013C */  lui        $at, %hi(D_80065920)
/* 4EB0A18 8007DCE8 21082200 */  addu       $at, $at, $v0
/* 4EB0A1C 8007DCEC 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 4EB0A20 8007DCF0 00000000 */  nop
/* 4EB0A24 8007DCF4 40100300 */  sll        $v0, $v1, 1
/* 4EB0A28 8007DCF8 21104300 */  addu       $v0, $v0, $v1
/* 4EB0A2C 8007DCFC 80100200 */  sll        $v0, $v0, 2
/* 4EB0A30 8007DD00 21104300 */  addu       $v0, $v0, $v1
/* 4EB0A34 8007DD04 43110200 */  sra        $v0, $v0, 5
/* 4EB0A38 8007DD08 1000A2AF */  sw         $v0, 0x10($sp)
/* 4EB0A3C 8007DD0C 46002292 */  lbu        $v0, 0x46($s1)
/* 4EB0A40 8007DD10 21288000 */  addu       $a1, $a0, $zero
/* 4EB0A44 8007DD14 40100200 */  sll        $v0, $v0, 1
/* 4EB0A48 8007DD18 0680013C */  lui        $at, %hi(D_800658A0)
/* 4EB0A4C 8007DD1C 21082200 */  addu       $at, $at, $v0
/* 4EB0A50 8007DD20 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 4EB0A54 8007DD24 0780023C */  lui        $v0, %hi(D_80070328 + 0x44)
/* 4EB0A58 8007DD28 6C03428C */  lw         $v0, %lo(D_80070328 + 0x44)($v0)
/* 4EB0A5C 8007DD2C 0C002626 */  addiu      $a2, $s1, 0xC
/* 4EB0A60 8007DD30 1800A0AF */  sw         $zero, 0x18($sp)
/* 4EB0A64 8007DD34 1800A2AF */  sw         $v0, 0x18($sp)
/* 4EB0A68 8007DD38 40100300 */  sll        $v0, $v1, 1
/* 4EB0A6C 8007DD3C 21104300 */  addu       $v0, $v0, $v1
/* 4EB0A70 8007DD40 80100200 */  sll        $v0, $v0, 2
/* 4EB0A74 8007DD44 21104300 */  addu       $v0, $v0, $v1
/* 4EB0A78 8007DD48 43110200 */  sra        $v0, $v0, 5
/* 4EB0A7C 8007DD4C 653C010C */  jal        func_8004F194
/* 4EB0A80 8007DD50 1400A2AF */   sw        $v0, 0x14($sp)
/* 4EB0A84 8007DD54 1000A427 */  addiu      $a0, $sp, 0x10
/* 4EB0A88 8007DD58 21300000 */  addu       $a2, $zero, $zero
/* 4EB0A8C 8007DD5C 46002592 */  lbu        $a1, 0x46($s1)
/* 4EB0A90 8007DD60 98000724 */  addiu      $a3, $zero, 0x98
/* 4EB0A94 8007DD64 8000A524 */  addiu      $a1, $a1, 0x80
/* 4EB0A98 8007DD68 514F000C */  jal        func_80013D44
/* 4EB0A9C 8007DD6C FF00A530 */   andi      $a1, $a1, 0xFF
/* 4EB0AA0 8007DD70 0780023C */  lui        $v0, %hi(D_80070328 + 0x280)
/* 4EB0AA4 8007DD74 A805428C */  lw         $v0, %lo(D_80070328 + 0x280)($v0)
/* 4EB0AA8 8007DD78 00000000 */  nop
/* 4EB0AAC 8007DD7C 3D004104 */  bgez       $v0, .Llevel_18_8007DE74
/* 4EB0AB0 8007DD80 00000000 */   nop
/* 4EB0AB4 8007DD84 0780013C */  lui        $at, %hi(D_80070328 + 0x280)
/* 4EB0AB8 8007DD88 A80520AC */  sw         $zero, %lo(D_80070328 + 0x280)($at)
/* 4EB0ABC 8007DD8C 9DF70108 */  j          .Llevel_18_8007DE74
/* 4EB0AC0 8007DD90 00000000 */   nop
.Llevel_18_8007DD94:
/* 4EB0AC4 8007DD94 0800428E */  lw         $v0, 0x8($s2)
/* 4EB0AC8 8007DD98 00000000 */  nop
/* 4EB0ACC 8007DD9C 48004290 */  lbu        $v0, 0x48($v0)
/* 4EB0AD0 8007DDA0 00000000 */  nop
/* 4EB0AD4 8007DDA4 80004230 */  andi       $v0, $v0, 0x80
/* 4EB0AD8 8007DDA8 32004010 */  beqz       $v0, .Llevel_18_8007DE74
/* 4EB0ADC 8007DDAC 0F000224 */   addiu     $v0, $zero, 0xF
/* 4EB0AE0 8007DDB0 0780033C */  lui        $v1, %hi(D_8006E344)
/* 4EB0AE4 8007DDB4 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 4EB0AE8 8007DDB8 00000000 */  nop
/* 4EB0AEC 8007DDBC 2D006210 */  beq        $v1, $v0, .Llevel_18_8007DE74
/* 4EB0AF0 8007DDC0 02000224 */   addiu     $v0, $zero, 0x2
/* 4EB0AF4 8007DDC4 480002A2 */  sb         $v0, 0x48($s0)
/* 4EB0AF8 8007DDC8 48001026 */  addiu      $s0, $s0, 0x48
/* 4EB0AFC 8007DDCC 21200002 */  addu       $a0, $s0, $zero
/* 4EB0B00 8007DDD0 0780063C */  lui        $a2, %hi(D_8006D088)
/* 4EB0B04 8007DDD4 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 4EB0B08 8007DDD8 EDED000C */  jal        func_8003B7B4
/* 4EB0B0C 8007DDDC 01000524 */   addiu     $a1, $zero, 0x1
/* 4EB0B10 8007DDE0 21200002 */  addu       $a0, $s0, $zero
/* 4EB0B14 8007DDE4 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 4EB0B18 8007DDE8 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 4EB0B1C 8007DDEC EDED000C */  jal        func_8003B7B4
/* 4EB0B20 8007DDF0 01000524 */   addiu     $a1, $zero, 0x1
/* 4EB0B24 8007DDF4 9DF70108 */  j          .Llevel_18_8007DE74
/* 4EB0B28 8007DDF8 00000000 */   nop
.Llevel_18_8007DDFC:
/* 4EB0B2C 8007DDFC 5B020424 */  addiu      $a0, $zero, 0x25B
/* 4EB0B30 8007DE00 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 4EB0B34 8007DE04 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 4EB0B38 8007DE08 00000000 */  nop
/* 4EB0B3C 8007DE0C 09F84000 */  jalr       $v0
/* 4EB0B40 8007DE10 21280002 */   addu      $a1, $s0, $zero
/* 4EB0B44 8007DE14 1400438C */  lw         $v1, 0x14($v0)
/* 4EB0B48 8007DE18 450040A0 */  sb         $zero, 0x45($v0)
/* 4EB0B4C 8007DE1C 00FE6324 */  addiu      $v1, $v1, -0x200
/* 4EB0B50 8007DE20 140043AC */  sw         $v1, 0x14($v0)
/* 4EB0B54 8007DE24 01000324 */  addiu      $v1, $zero, 0x1
/* 4EB0B58 8007DE28 20000224 */  addiu      $v0, $zero, 0x20
/* 4EB0B5C 8007DE2C 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 4EB0B60 8007DE30 40000224 */  addiu      $v0, $zero, 0x40
/* 4EB0B64 8007DE34 450002A2 */  sb         $v0, 0x45($s0)
/* 4EB0B68 8007DE38 03000224 */  addiu      $v0, $zero, 0x3
/* 4EB0B6C 8007DE3C 410003A2 */  sb         $v1, 0x41($s0)
/* 4EB0B70 8007DE40 4D0003A2 */  sb         $v1, 0x4D($s0)
/* 4EB0B74 8007DE44 480002A2 */  sb         $v0, 0x48($s0)
.Llevel_18_8007DE48:
/* 4EB0B78 8007DE48 0780053C */  lui        $a1, %hi(D_80070328)
/* 4EB0B7C 8007DE4C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 4EB0B80 8007DE50 CD3C010C */  jal        func_8004F334
/* 4EB0B84 8007DE54 0C000426 */   addiu     $a0, $s0, 0xC
/* 4EB0B88 8007DE58 00034228 */  slti       $v0, $v0, 0x300
/* 4EB0B8C 8007DE5C 05004010 */  beqz       $v0, .Llevel_18_8007DE74
/* 4EB0B90 8007DE60 21200000 */   addu      $a0, $zero, $zero
/* 4EB0B94 8007DE64 0780053C */  lui        $a1, %hi(D_8006C5BC)
/* 4EB0B98 8007DE68 BCC5A58C */  lw         $a1, %lo(D_8006C5BC)($a1)
/* 4EB0B9C 8007DE6C 2F61010C */  jal        WarpToLevel
/* 4EB0BA0 8007DE70 F8FFA524 */   addiu     $a1, $a1, -0x8
.Llevel_18_8007DE74:
/* 4EB0BA4 8007DE74 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 4EB0BA8 8007DE78 2800B28F */  lw         $s2, 0x28($sp)
/* 4EB0BAC 8007DE7C 2400B18F */  lw         $s1, 0x24($sp)
/* 4EB0BB0 8007DE80 2000B08F */  lw         $s0, 0x20($sp)
/* 4EB0BB4 8007DE84 3000BD27 */  addiu      $sp, $sp, 0x30
/* 4EB0BB8 8007DE88 0800E003 */  jr         $ra
/* 4EB0BBC 8007DE8C 00000000 */   nop
.size func_level_18_8007DBA8, . - func_level_18_8007DBA8
