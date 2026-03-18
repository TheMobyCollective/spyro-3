.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_46_80077938
/* 8F49E68 80077938 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 8F49E6C 8007793C 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 8F49E70 80077940 21888000 */  addu       $s1, $a0, $zero
/* 8F49E74 80077944 3400B3AF */  sw         $s3, 0x34($sp)
/* 8F49E78 80077948 3800B4AF */  sw         $s4, 0x38($sp)
/* 8F49E7C 8007794C 0780143C */  lui        $s4, %hi(D_80070328 + 0x24C)
/* 8F49E80 80077950 74059426 */  addiu      $s4, $s4, %lo(D_80070328 + 0x24C)
/* 8F49E84 80077954 01000324 */  addiu      $v1, $zero, 0x1
/* 8F49E88 80077958 4400BFAF */  sw         $ra, 0x44($sp)
/* 8F49E8C 8007795C 4000B6AF */  sw         $s6, 0x40($sp)
/* 8F49E90 80077960 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 8F49E94 80077964 3000B2AF */  sw         $s2, 0x30($sp)
/* 8F49E98 80077968 2800B0AF */  sw         $s0, 0x28($sp)
/* 8F49E9C 8007796C 0000828E */  lw         $v0, 0x0($s4)
/* 8F49EA0 80077970 0000328E */  lw         $s2, 0x0($s1)
/* 8F49EA4 80077974 02004314 */  bne        $v0, $v1, .Llevel_46_80077980
/* 8F49EA8 80077978 1404133C */   lui       $s3, (0x4140000 >> 16)
/* 8F49EAC 8007797C 1C04133C */  lui        $s3, (0x41C0000 >> 16)
.Llevel_46_80077980:
/* 8F49EB0 80077980 1000428E */  lw         $v0, 0x10($s2)
/* 8F49EB4 80077984 00000000 */  nop
/* 8F49EB8 80077988 03004010 */  beqz       $v0, .Llevel_46_80077998
/* 8F49EBC 8007798C 00000000 */   nop
/* 8F49EC0 80077990 05DC000C */  jal        func_80037014
/* 8F49EC4 80077994 21202002 */   addu      $a0, $s1, $zero
.Llevel_46_80077998:
/* 8F49EC8 80077998 0680023C */  lui        $v0, %hi(D_8006581C)
/* 8F49ECC 8007799C 1C58428C */  lw         $v0, %lo(D_8006581C)($v0)
/* 8F49ED0 800779A0 00000000 */  nop
/* 8F49ED4 800779A4 02004228 */  slti       $v0, $v0, 0x2
/* 8F49ED8 800779A8 45004014 */  bnez       $v0, .Llevel_46_80077AC0
/* 8F49EDC 800779AC C9000224 */   addiu     $v0, $zero, 0xC9
/* 8F49EE0 800779B0 36002386 */  lh         $v1, 0x36($s1)
/* 8F49EE4 800779B4 00000000 */  nop
/* 8F49EE8 800779B8 41006214 */  bne        $v1, $v0, .Llevel_46_80077AC0
/* 8F49EEC 800779BC 0C003026 */   addiu     $s0, $s1, 0xC
/* 8F49EF0 800779C0 21200002 */  addu       $a0, $s0, $zero
/* 8F49EF4 800779C4 CD3C010C */  jal        func_8004F334
/* 8F49EF8 800779C8 B4FD8526 */   addiu     $a1, $s4, -0x24C
/* 8F49EFC 800779CC 0680033C */  lui        $v1, %hi(D_80065810)
/* 8F49F00 800779D0 1058638C */  lw         $v1, %lo(D_80065810)($v1)
/* 8F49F04 800779D4 00000000 */  nop
/* 8F49F08 800779D8 2A104300 */  slt        $v0, $v0, $v1
/* 8F49F0C 800779DC 38004010 */  beqz       $v0, .Llevel_46_80077AC0
/* 8F49F10 800779E0 00000000 */   nop
/* 8F49F14 800779E4 1400228E */  lw         $v0, 0x14($s1)
/* 8F49F18 800779E8 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 8F49F1C 800779EC 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 8F49F20 800779F0 64014224 */  addiu      $v0, $v0, 0x164
/* 8F49F24 800779F4 23186200 */  subu       $v1, $v1, $v0
/* 8F49F28 800779F8 0680023C */  lui        $v0, %hi(D_80065818)
/* 8F49F2C 800779FC 1858428C */  lw         $v0, %lo(D_80065818)($v0)
/* 8F49F30 80077A00 02006104 */  bgez       $v1, .Llevel_46_80077A0C
/* 8F49F34 80077A04 00000000 */   nop
/* 8F49F38 80077A08 23180300 */  negu       $v1, $v1
.Llevel_46_80077A0C:
/* 8F49F3C 80077A0C 2A186200 */  slt        $v1, $v1, $v0
/* 8F49F40 80077A10 2B006010 */  beqz       $v1, .Llevel_46_80077AC0
/* 8F49F44 80077A14 00000000 */   nop
/* 8F49F48 80077A18 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 8F49F4C 80077A1C 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 8F49F50 80077A20 00000000 */  nop
/* 8F49F54 80077A24 26008010 */  beqz       $a0, .Llevel_46_80077AC0
/* 8F49F58 80077A28 0C008424 */   addiu     $a0, $a0, 0xC
/* 8F49F5C 80077A2C 21280002 */  addu       $a1, $s0, $zero
/* 8F49F60 80077A30 8E4F000C */  jal        func_80013E38
/* 8F49F64 80077A34 04000624 */   addiu     $a2, $zero, 0x4
/* 8F49F68 80077A38 21004010 */  beqz       $v0, .Llevel_46_80077AC0
/* 8F49F6C 80077A3C 00000000 */   nop
/* 8F49F70 80077A40 0780033C */  lui        $v1, %hi(D_8006C65C)
/* 8F49F74 80077A44 5CC6638C */  lw         $v1, %lo(D_8006C65C)($v1)
/* 8F49F78 80077A48 00000000 */  nop
/* 8F49F7C 80077A4C 0000708C */  lw         $s0, 0x0($v1)
/* 8F49F80 80077A50 00000000 */  nop
/* 8F49F84 80077A54 1400028E */  lw         $v0, 0x14($s0)
/* 8F49F88 80077A58 00000000 */  nop
/* 8F49F8C 80077A5C 09004010 */  beqz       $v0, .Llevel_46_80077A84
/* 8F49F90 80077A60 00000000 */   nop
/* 8F49F94 80077A64 16005110 */  beq        $v0, $s1, .Llevel_46_80077AC0
/* 8F49F98 80077A68 00000000 */   nop
/* 8F49F9C 80077A6C 00000286 */  lh         $v0, 0x0($s0)
/* 8F49FA0 80077A70 00000000 */  nop
/* 8F49FA4 80077A74 12004018 */  blez       $v0, .Llevel_46_80077AC0
/* 8F49FA8 80077A78 00000000 */   nop
/* 8F49FAC 80077A7C B0DE0108 */  j          .Llevel_46_80077AC0
/* 8F49FB0 80077A80 000000A6 */   sh        $zero, 0x0($s0)
.Llevel_46_80077A84:
/* 8F49FB4 80077A84 09000224 */  addiu      $v0, $zero, 0x9
/* 8F49FB8 80077A88 490062A0 */  sb         $v0, 0x49($v1)
/* 8F49FBC 80077A8C 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 8F49FC0 80077A90 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 8F49FC4 80077A94 02000592 */  lbu        $a1, 0x2($s0)
/* 8F49FC8 80077A98 140011AE */  sw         $s1, 0x14($s0)
/* 8F49FCC 80077A9C F0EF000C */  jal        func_8003BFC0
/* 8F49FD0 80077AA0 000000A6 */   sh        $zero, 0x0($s0)
/* 8F49FD4 80077AA4 06004014 */  bnez       $v0, .Llevel_46_80077AC0
/* 8F49FD8 80077AA8 21280000 */   addu      $a1, $zero, $zero
/* 8F49FDC 80077AAC 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 8F49FE0 80077AB0 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 8F49FE4 80077AB4 AFEE000C */  jal        func_8003BABC
/* 8F49FE8 80077AB8 21300000 */   addu      $a2, $zero, $zero
/* 8F49FEC 80077ABC 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_46_80077AC0:
/* 8F49FF0 80077AC0 0000438E */  lw         $v1, 0x0($s2)
/* 8F49FF4 80077AC4 00000000 */  nop
/* 8F49FF8 80077AC8 39006010 */  beqz       $v1, .Llevel_46_80077BB0
/* 8F49FFC 80077ACC 00000000 */   nop
/* 8F4A000 80077AD0 0780023C */  lui        $v0, %hi(D_8006C648)
/* 8F4A004 80077AD4 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 8F4A008 80077AD8 00000000 */  nop
/* 8F4A00C 80077ADC 21186200 */  addu       $v1, $v1, $v0
/* 8F4A010 80077AE0 40006228 */  slti       $v0, $v1, 0x40
/* 8F4A014 80077AE4 29004010 */  beqz       $v0, .Llevel_46_80077B8C
/* 8F4A018 80077AE8 000043AE */   sw        $v1, 0x0($s2)
/* 8F4A01C 80077AEC 43100300 */  sra        $v0, $v1, 1
/* 8F4A020 80077AF0 1800438E */  lw         $v1, 0x18($s2)
/* 8F4A024 80077AF4 40100200 */  sll        $v0, $v0, 1
/* 8F4A028 80077AF8 21104300 */  addu       $v0, $v0, $v1
/* 8F4A02C 80077AFC 0400438E */  lw         $v1, 0x4($s2)
/* 8F4A030 80077B00 00004290 */  lbu        $v0, 0x0($v0)
/* 8F4A034 80077B04 00000000 */  nop
/* 8F4A038 80077B08 21104300 */  addu       $v0, $v0, $v1
/* 8F4A03C 80077B0C 440022A2 */  sb         $v0, 0x44($s1)
/* 8F4A040 80077B10 0000428E */  lw         $v0, 0x0($s2)
/* 8F4A044 80077B14 1800438E */  lw         $v1, 0x18($s2)
/* 8F4A048 80077B18 43100200 */  sra        $v0, $v0, 1
/* 8F4A04C 80077B1C 40100200 */  sll        $v0, $v0, 1
/* 8F4A050 80077B20 21104300 */  addu       $v0, $v0, $v1
/* 8F4A054 80077B24 0800438E */  lw         $v1, 0x8($s2)
/* 8F4A058 80077B28 01004290 */  lbu        $v0, 0x1($v0)
/* 8F4A05C 80077B2C 00000000 */  nop
/* 8F4A060 80077B30 21104300 */  addu       $v0, $v0, $v1
/* 8F4A064 80077B34 450022A2 */  sb         $v0, 0x45($s1)
/* 8F4A068 80077B38 0000428E */  lw         $v0, 0x0($s2)
/* 8F4A06C 80077B3C 1800438E */  lw         $v1, 0x18($s2)
/* 8F4A070 80077B40 43100200 */  sra        $v0, $v0, 1
/* 8F4A074 80077B44 40100200 */  sll        $v0, $v0, 1
/* 8F4A078 80077B48 21104300 */  addu       $v0, $v0, $v1
/* 8F4A07C 80077B4C 00004380 */  lb         $v1, 0x0($v0)
/* 8F4A080 80077B50 01004280 */  lb         $v0, 0x1($v0)
/* 8F4A084 80077B54 02006104 */  bgez       $v1, .Llevel_46_80077B60
/* 8F4A088 80077B58 00000000 */   nop
/* 8F4A08C 80077B5C 23180300 */  negu       $v1, $v1
.Llevel_46_80077B60:
/* 8F4A090 80077B60 02004104 */  bgez       $v0, .Llevel_46_80077B6C
/* 8F4A094 80077B64 00000000 */   nop
/* 8F4A098 80077B68 23100200 */  negu       $v0, $v0
.Llevel_46_80077B6C:
/* 8F4A09C 80077B6C 21186200 */  addu       $v1, $v1, $v0
/* 8F4A0A0 80077B70 40100300 */  sll        $v0, $v1, 1
/* 8F4A0A4 80077B74 21104300 */  addu       $v0, $v0, $v1
/* 8F4A0A8 80077B78 0C00438E */  lw         $v1, 0xC($s2)
/* 8F4A0AC 80077B7C 40100200 */  sll        $v0, $v0, 1
/* 8F4A0B0 80077B80 21186200 */  addu       $v1, $v1, $v0
/* 8F4A0B4 80077B84 ECDE0108 */  j          .Llevel_46_80077BB0
/* 8F4A0B8 80077B88 140023AE */   sw        $v1, 0x14($s1)
.Llevel_46_80077B8C:
/* 8F4A0BC 80077B8C 0400428E */  lw         $v0, 0x4($s2)
/* 8F4A0C0 80077B90 000040AE */  sw         $zero, 0x0($s2)
/* 8F4A0C4 80077B94 440022A2 */  sb         $v0, 0x44($s1)
/* 8F4A0C8 80077B98 0800428E */  lw         $v0, 0x8($s2)
/* 8F4A0CC 80077B9C 00000000 */  nop
/* 8F4A0D0 80077BA0 450022A2 */  sb         $v0, 0x45($s1)
/* 8F4A0D4 80077BA4 0C00428E */  lw         $v0, 0xC($s2)
/* 8F4A0D8 80077BA8 00000000 */  nop
/* 8F4A0DC 80077BAC 140022AE */  sw         $v0, 0x14($s1)
.Llevel_46_80077BB0:
/* 8F4A0E0 80077BB0 36002386 */  lh         $v1, 0x36($s1)
/* 8F4A0E4 80077BB4 C9000224 */  addiu      $v0, $zero, 0xC9
/* 8F4A0E8 80077BB8 03006214 */  bne        $v1, $v0, .Llevel_46_80077BC8
/* 8F4A0EC 80077BBC CA000224 */   addiu     $v0, $zero, 0xCA
/* 8F4A0F0 80077BC0 F4DE0108 */  j          .Llevel_46_80077BD0
/* 8F4A0F4 80077BC4 8212023C */   lui       $v0, (0x12820000 >> 16)
.Llevel_46_80077BC8:
/* 8F4A0F8 80077BC8 02006214 */  bne        $v1, $v0, .Llevel_46_80077BD4
/* 8F4A0FC 80077BCC 0800023C */   lui       $v0, (0x80000 >> 16)
.Llevel_46_80077BD0:
/* 8F4A100 80077BD0 25986202 */  or         $s3, $s3, $v0
.Llevel_46_80077BD4:
/* 8F4A104 80077BD4 1800228E */  lw         $v0, 0x18($s1)
/* 8F4A108 80077BD8 00000000 */  nop
/* 8F4A10C 80077BDC 24105300 */  and        $v0, $v0, $s3
/* 8F4A110 80077BE0 6F004010 */  beqz       $v0, .Llevel_46_80077DA0
/* 8F4A114 80077BE4 21202002 */   addu      $a0, $s1, $zero
/* 8F4A118 80077BE8 21280000 */  addu       $a1, $zero, $zero
/* 8F4A11C 80077BEC AFEE000C */  jal        func_8003BABC
/* 8F4A120 80077BF0 21300000 */   addu      $a2, $zero, $zero
/* 8F4A124 80077BF4 36002386 */  lh         $v1, 0x36($s1)
/* 8F4A128 80077BF8 C9000224 */  addiu      $v0, $zero, 0xC9
/* 8F4A12C 80077BFC 06006214 */  bne        $v1, $v0, .Llevel_46_80077C18
/* 8F4A130 80077C00 90000224 */   addiu     $v0, $zero, 0x90
/* 8F4A134 80077C04 64000224 */  addiu      $v0, $zero, 0x64
/* 8F4A138 80077C08 0C001224 */  addiu      $s2, $zero, 0xC
/* 8F4A13C 80077C0C 05001424 */  addiu      $s4, $zero, 0x5
/* 8F4A140 80077C10 09DF0108 */  j          .Llevel_46_80077C24
/* 8F4A144 80077C14 33011324 */   addiu     $s3, $zero, 0x133
.Llevel_46_80077C18:
/* 8F4A148 80077C18 10001224 */  addiu      $s2, $zero, 0x10
/* 8F4A14C 80077C1C 08001424 */  addiu      $s4, $zero, 0x8
/* 8F4A150 80077C20 34011324 */  addiu      $s3, $zero, 0x134
.Llevel_46_80077C24:
/* 8F4A154 80077C24 490022A2 */  sb         $v0, 0x49($s1)
/* 8F4A158 80077C28 22004012 */  beqz       $s2, .Llevel_46_80077CB4
/* 8F4A15C 80077C2C 21800000 */   addu      $s0, $zero, $zero
/* 8F4A160 80077C30 05001624 */  addiu      $s6, $zero, 0x5
/* 8F4A164 80077C34 01001524 */  addiu      $s5, $zero, 0x1
.Llevel_46_80077C38:
/* 8F4A168 80077C38 0780023C */  lui        $v0, %hi(D_8006C578)
/* 8F4A16C 80077C3C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 8F4A170 80077C40 0780033C */  lui        $v1, %hi(D_8006C574)
/* 8F4A174 80077C44 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 8F4A178 80077C48 00000000 */  nop
/* 8F4A17C 80077C4C 23104300 */  subu       $v0, $v0, $v1
/* 8F4A180 80077C50 15004228 */  slti       $v0, $v0, 0x15
/* 8F4A184 80077C54 17004014 */  bnez       $v0, .Llevel_46_80077CB4
/* 8F4A188 80077C58 21206002 */   addu      $a0, $s3, $zero
/* 8F4A18C 80077C5C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8F4A190 80077C60 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8F4A194 80077C64 00000000 */  nop
/* 8F4A198 80077C68 09F84000 */  jalr       $v0
/* 8F4A19C 80077C6C 21282002 */   addu      $a1, $s1, $zero
/* 8F4A1A0 80077C70 21204000 */  addu       $a0, $v0, $zero
/* 8F4A1A4 80077C74 2A101402 */  slt        $v0, $s0, $s4
/* 8F4A1A8 80077C78 03004010 */  beqz       $v0, .Llevel_46_80077C88
/* 8F4A1AC 80077C7C 04000224 */   addiu     $v0, $zero, 0x4
/* 8F4A1B0 80077C80 24DF0108 */  j          .Llevel_46_80077C90
/* 8F4A1B4 80077C84 490096A0 */   sb        $s6, 0x49($a0)
.Llevel_46_80077C88:
/* 8F4A1B8 80077C88 3C0095A0 */  sb         $s5, 0x3C($a0)
/* 8F4A1BC 80077C8C 490082A0 */  sb         $v0, 0x49($a0)
.Llevel_46_80077C90:
/* 8F4A1C0 80077C90 36002386 */  lh         $v1, 0x36($s1)
/* 8F4A1C4 80077C94 C9000224 */  addiu      $v0, $zero, 0xC9
/* 8F4A1C8 80077C98 02006210 */  beq        $v1, $v0, .Llevel_46_80077CA4
/* 8F4A1CC 80077C9C 00000000 */   nop
/* 8F4A1D0 80077CA0 540095A0 */  sb         $s5, 0x54($a0)
.Llevel_46_80077CA4:
/* 8F4A1D4 80077CA4 01001026 */  addiu      $s0, $s0, 0x1
/* 8F4A1D8 80077CA8 2A101202 */  slt        $v0, $s0, $s2
/* 8F4A1DC 80077CAC E2FF4014 */  bnez       $v0, .Llevel_46_80077C38
/* 8F4A1E0 80077CB0 00000000 */   nop
.Llevel_46_80077CB4:
/* 8F4A1E4 80077CB4 36002386 */  lh         $v1, 0x36($s1)
/* 8F4A1E8 80077CB8 C9000224 */  addiu      $v0, $zero, 0xC9
/* 8F4A1EC 80077CBC 04006214 */  bne        $v1, $v0, .Llevel_46_80077CD0
/* 8F4A1F0 80077CC0 21800000 */   addu      $s0, $zero, $zero
/* 8F4A1F4 80077CC4 0400022A */  slti       $v0, $s0, 0x4
.Llevel_46_80077CC8:
/* 8F4A1F8 80077CC8 2D004010 */  beqz       $v0, .Llevel_46_80077D80
/* 8F4A1FC 80077CCC 21202002 */   addu      $a0, $s1, $zero
.Llevel_46_80077CD0:
/* 8F4A200 80077CD0 1000A427 */  addiu      $a0, $sp, 0x10
.Llevel_46_80077CD4:
/* 8F4A204 80077CD4 5E3C010C */  jal        func_8004F178
/* 8F4A208 80077CD8 0C002526 */   addiu     $a1, $s1, 0xC
/* 8F4A20C 80077CDC 9171010C */  jal        rand
/* 8F4A210 80077CE0 01001026 */   addiu     $s0, $s0, 0x1
/* 8F4A214 80077CE4 1000A38F */  lw         $v1, 0x10($sp)
/* 8F4A218 80077CE8 FF004230 */  andi       $v0, $v0, 0xFF
/* 8F4A21C 80077CEC 80006324 */  addiu      $v1, $v1, 0x80
/* 8F4A220 80077CF0 23186200 */  subu       $v1, $v1, $v0
/* 8F4A224 80077CF4 9171010C */  jal        rand
/* 8F4A228 80077CF8 1000A3AF */   sw        $v1, 0x10($sp)
/* 8F4A22C 80077CFC 1400A38F */  lw         $v1, 0x14($sp)
/* 8F4A230 80077D00 FF004230 */  andi       $v0, $v0, 0xFF
/* 8F4A234 80077D04 80006324 */  addiu      $v1, $v1, 0x80
/* 8F4A238 80077D08 23186200 */  subu       $v1, $v1, $v0
/* 8F4A23C 80077D0C 9171010C */  jal        rand
/* 8F4A240 80077D10 1400A3AF */   sw        $v1, 0x14($sp)
/* 8F4A244 80077D14 01000424 */  addiu      $a0, $zero, 0x1
/* 8F4A248 80077D18 02000524 */  addiu      $a1, $zero, 0x2
/* 8F4A24C 80077D1C 1000A627 */  addiu      $a2, $sp, 0x10
/* 8F4A250 80077D20 21380000 */  addu       $a3, $zero, $zero
/* 8F4A254 80077D24 FF014230 */  andi       $v0, $v0, 0x1FF
/* 8F4A258 80077D28 1800A38F */  lw         $v1, 0x18($sp)
/* 8F4A25C 80077D2C 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 8F4A260 80077D30 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 8F4A264 80077D34 21186200 */  addu       $v1, $v1, $v0
/* 8F4A268 80077D38 09F80001 */  jalr       $t0
/* 8F4A26C 80077D3C 1800A3AF */   sw        $v1, 0x18($sp)
/* 8F4A270 80077D40 04000424 */  addiu      $a0, $zero, 0x4
/* 8F4A274 80077D44 46000524 */  addiu      $a1, $zero, 0x46
/* 8F4A278 80077D48 1000A627 */  addiu      $a2, $sp, 0x10
/* 8F4A27C 80077D4C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8F4A280 80077D50 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8F4A284 80077D54 00000000 */  nop
/* 8F4A288 80077D58 09F84000 */  jalr       $v0
/* 8F4A28C 80077D5C 18000724 */   addiu     $a3, $zero, 0x18
/* 8F4A290 80077D60 36002386 */  lh         $v1, 0x36($s1)
/* 8F4A294 80077D64 C9000224 */  addiu      $v0, $zero, 0xC9
/* 8F4A298 80077D68 D7FF6210 */  beq        $v1, $v0, .Llevel_46_80077CC8
/* 8F4A29C 80077D6C 0400022A */   slti      $v0, $s0, 0x4
/* 8F4A2A0 80077D70 0800022A */  slti       $v0, $s0, 0x8
/* 8F4A2A4 80077D74 D7FF4014 */  bnez       $v0, .Llevel_46_80077CD4
/* 8F4A2A8 80077D78 1000A427 */   addiu     $a0, $sp, 0x10
/* 8F4A2AC 80077D7C 21202002 */  addu       $a0, $s1, $zero
.Llevel_46_80077D80:
/* 8F4A2B0 80077D80 21280000 */  addu       $a1, $zero, $zero
/* 8F4A2B4 80077D84 21300000 */  addu       $a2, $zero, $zero
/* 8F4A2B8 80077D88 9ADA000C */  jal        func_80036A68
/* 8F4A2BC 80077D8C 21380000 */   addu      $a3, $zero, $zero
/* 8F4A2C0 80077D90 C656010C */  jal        func_80055B18
/* 8F4A2C4 80077D94 21202002 */   addu      $a0, $s1, $zero
/* 8F4A2C8 80077D98 8BDF0108 */  j          .Llevel_46_80077E2C
/* 8F4A2CC 80077D9C 180020AE */   sw        $zero, 0x18($s1)
.Llevel_46_80077DA0:
/* 8F4A2D0 80077DA0 36002686 */  lh         $a2, 0x36($s1)
/* 8F4A2D4 80077DA4 1400458E */  lw         $a1, 0x14($s2)
/* 8F4A2D8 80077DA8 C900C638 */  xori       $a2, $a2, 0xC9
/* 8F4A2DC 80077DAC 29DA000C */  jal        func_800368A4
/* 8F4A2E0 80077DB0 2B300600 */   sltu      $a2, $zero, $a2
/* 8F4A2E4 80077DB4 140042AE */  sw         $v0, 0x14($s2)
/* 8F4A2E8 80077DB8 1800228E */  lw         $v0, 0x18($s1)
/* 8F4A2EC 80077DBC 0300033C */  lui        $v1, (0x30000 >> 16)
/* 8F4A2F0 80077DC0 24104300 */  and        $v0, $v0, $v1
/* 8F4A2F4 80077DC4 18004010 */  beqz       $v0, .Llevel_46_80077E28
/* 8F4A2F8 80077DC8 00000000 */   nop
/* 8F4A2FC 80077DCC 0000428E */  lw         $v0, 0x0($s2)
/* 8F4A300 80077DD0 00000000 */  nop
/* 8F4A304 80077DD4 14004014 */  bnez       $v0, .Llevel_46_80077E28
/* 8F4A308 80077DD8 01000224 */   addiu     $v0, $zero, 0x1
/* 8F4A30C 80077DDC 000042AE */  sw         $v0, 0x0($s2)
/* 8F4A310 80077DE0 44002292 */  lbu        $v0, 0x44($s1)
/* 8F4A314 80077DE4 00000000 */  nop
/* 8F4A318 80077DE8 040042AE */  sw         $v0, 0x4($s2)
/* 8F4A31C 80077DEC 45002292 */  lbu        $v0, 0x45($s1)
/* 8F4A320 80077DF0 00000000 */  nop
/* 8F4A324 80077DF4 080042AE */  sw         $v0, 0x8($s2)
/* 8F4A328 80077DF8 1400228E */  lw         $v0, 0x14($s1)
/* 8F4A32C 80077DFC 00000000 */  nop
/* 8F4A330 80077E00 0C0042AE */  sw         $v0, 0xC($s2)
/* 8F4A334 80077E04 36002296 */  lhu        $v0, 0x36($s1)
/* 8F4A338 80077E08 00000000 */  nop
/* 8F4A33C 80077E0C 36FF4224 */  addiu      $v0, $v0, -0xCA
/* 8F4A340 80077E10 0200422C */  sltiu      $v0, $v0, 0x2
/* 8F4A344 80077E14 04004010 */  beqz       $v0, .Llevel_46_80077E28
/* 8F4A348 80077E18 21202002 */   addu      $a0, $s1, $zero
/* 8F4A34C 80077E1C 01000524 */  addiu      $a1, $zero, 0x1
/* 8F4A350 80077E20 AFEE000C */  jal        func_8003BABC
/* 8F4A354 80077E24 21300000 */   addu      $a2, $zero, $zero
.Llevel_46_80077E28:
/* 8F4A358 80077E28 180020AE */  sw         $zero, 0x18($s1)
.Llevel_46_80077E2C:
/* 8F4A35C 80077E2C 4400BF8F */  lw         $ra, 0x44($sp)
/* 8F4A360 80077E30 4000B68F */  lw         $s6, 0x40($sp)
/* 8F4A364 80077E34 3C00B58F */  lw         $s5, 0x3C($sp)
/* 8F4A368 80077E38 3800B48F */  lw         $s4, 0x38($sp)
/* 8F4A36C 80077E3C 3400B38F */  lw         $s3, 0x34($sp)
/* 8F4A370 80077E40 3000B28F */  lw         $s2, 0x30($sp)
/* 8F4A374 80077E44 2C00B18F */  lw         $s1, 0x2C($sp)
/* 8F4A378 80077E48 2800B08F */  lw         $s0, 0x28($sp)
/* 8F4A37C 80077E4C 4800BD27 */  addiu      $sp, $sp, 0x48
/* 8F4A380 80077E50 0800E003 */  jr         $ra
/* 8F4A384 80077E54 00000000 */   nop
.size func_level_46_80077938, . - func_level_46_80077938
