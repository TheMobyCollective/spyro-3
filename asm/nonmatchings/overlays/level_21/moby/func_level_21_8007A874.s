.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_198_level_21
/* 53F6DA4 8007A874 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 53F6DA8 8007A878 1400B1AF */  sw         $s1, 0x14($sp)
/* 53F6DAC 8007A87C 21888000 */  addu       $s1, $a0, $zero
/* 53F6DB0 8007A880 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 53F6DB4 8007A884 1800B2AF */  sw         $s2, 0x18($sp)
/* 53F6DB8 8007A888 1000B0AF */  sw         $s0, 0x10($sp)
/* 53F6DBC 8007A88C 48002492 */  lbu        $a0, 0x48($s1)
/* 53F6DC0 8007A890 0000308E */  lw         $s0, 0x0($s1)
/* 53F6DC4 8007A894 05008010 */  beqz       $a0, .Llevel_21_8007A8AC
/* 53F6DC8 8007A898 01000224 */   addiu     $v0, $zero, 0x1
/* 53F6DCC 8007A89C 75008210 */  beq        $a0, $v0, .Llevel_21_8007AA74
/* 53F6DD0 8007A8A0 01000224 */   addiu     $v0, $zero, 0x1
/* 53F6DD4 8007A8A4 A6EA0108 */  j          .Llevel_21_8007AA98
/* 53F6DD8 8007A8A8 00000000 */   nop
.Llevel_21_8007A8AC:
/* 53F6DDC 8007A8AC 01000292 */  lbu        $v0, 0x1($s0)
/* 53F6DE0 8007A8B0 00000000 */  nop
/* 53F6DE4 8007A8B4 7F004330 */  andi       $v1, $v0, 0x7F
/* 53F6DE8 8007A8B8 7F000224 */  addiu      $v0, $zero, 0x7F
/* 53F6DEC 8007A8BC 13006210 */  beq        $v1, $v0, .Llevel_21_8007A90C
/* 53F6DF0 8007A8C0 80200300 */   sll       $a0, $v1, 2
/* 53F6DF4 8007A8C4 0680013C */  lui        $at, %hi(D_80066EAC)
/* 53F6DF8 8007A8C8 21082400 */  addu       $at, $at, $a0
/* 53F6DFC 8007A8CC AC6E2384 */  lh         $v1, %lo(D_80066EAC)($at)
/* 53F6E00 8007A8D0 0780023C */  lui        $v0, %hi(D_8006C71C)
/* 53F6E04 8007A8D4 1CC7428C */  lw         $v0, %lo(D_8006C71C)($v0)
/* 53F6E08 8007A8D8 00000000 */  nop
/* 53F6E0C 8007A8DC 2A104300 */  slt        $v0, $v0, $v1
/* 53F6E10 8007A8E0 0A004014 */  bnez       $v0, .Llevel_21_8007A90C
/* 53F6E14 8007A8E4 00000000 */   nop
/* 53F6E18 8007A8E8 0680013C */  lui        $at, %hi(D_80066EAE)
/* 53F6E1C 8007A8EC 21082400 */  addu       $at, $at, $a0
/* 53F6E20 8007A8F0 AE6E2284 */  lh         $v0, %lo(D_80066EAE)($at)
/* 53F6E24 8007A8F4 00000000 */  nop
/* 53F6E28 8007A8F8 04004014 */  bnez       $v0, .Llevel_21_8007A90C
/* 53F6E2C 8007A8FC 01000224 */   addiu     $v0, $zero, 0x1
/* 53F6E30 8007A900 050002A2 */  sb         $v0, 0x5($s0)
/* 53F6E34 8007A904 FF000224 */  addiu      $v0, $zero, 0xFF
/* 53F6E38 8007A908 010002A2 */  sb         $v0, 0x1($s0)
.Llevel_21_8007A90C:
/* 53F6E3C 8007A90C 2C00038E */  lw         $v1, 0x2C($s0)
/* 53F6E40 8007A910 FFFF0524 */  addiu      $a1, $zero, -0x1
/* 53F6E44 8007A914 2D006510 */  beq        $v1, $a1, .Llevel_21_8007A9CC
/* 53F6E48 8007A918 00000000 */   nop
/* 53F6E4C 8007A91C 0780023C */  lui        $v0, %hi(D_8006C640)
/* 53F6E50 8007A920 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 53F6E54 8007A924 00000000 */  nop
/* 53F6E58 8007A928 0A004228 */  slti       $v0, $v0, 0xA
/* 53F6E5C 8007A92C 27004010 */  beqz       $v0, .Llevel_21_8007A9CC
/* 53F6E60 8007A930 80100300 */   sll       $v0, $v1, 2
/* 53F6E64 8007A934 0680013C */  lui        $at, %hi(D_80066EAE)
/* 53F6E68 8007A938 21082200 */  addu       $at, $at, $v0
/* 53F6E6C 8007A93C AE6E2284 */  lh         $v0, %lo(D_80066EAE)($at)
/* 53F6E70 8007A940 00000000 */  nop
/* 53F6E74 8007A944 0A004014 */  bnez       $v0, .Llevel_21_8007A970
/* 53F6E78 8007A948 00000000 */   nop
/* 53F6E7C 8007A94C 0680023C */  lui        $v0, %hi(D_80066FCC + 0x2F)
/* 53F6E80 8007A950 FB6F4290 */  lbu        $v0, %lo(D_80066FCC + 0x2F)($v0)
/* 53F6E84 8007A954 0780013C */  lui        $at, %hi(D_80070300)
/* 53F6E88 8007A958 21082200 */  addu       $at, $at, $v0
/* 53F6E8C 8007A95C 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 53F6E90 8007A960 00000000 */  nop
/* 53F6E94 8007A964 01004230 */  andi       $v0, $v0, 0x1
/* 53F6E98 8007A968 18004010 */  beqz       $v0, .Llevel_21_8007A9CC
/* 53F6E9C 8007A96C 00000000 */   nop
.Llevel_21_8007A970:
/* 53F6EA0 8007A970 2800038E */  lw         $v1, 0x28($s0)
/* 53F6EA4 8007A974 00000000 */  nop
/* 53F6EA8 8007A978 0A006510 */  beq        $v1, $a1, .Llevel_21_8007A9A4
/* 53F6EAC 8007A97C 40100300 */   sll       $v0, $v1, 1
/* 53F6EB0 8007A980 21104300 */  addu       $v0, $v0, $v1
/* 53F6EB4 8007A984 80100200 */  sll        $v0, $v0, 2
/* 53F6EB8 8007A988 23104300 */  subu       $v0, $v0, $v1
/* 53F6EBC 8007A98C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 53F6EC0 8007A990 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 53F6EC4 8007A994 C0100200 */  sll        $v0, $v0, 3
/* 53F6EC8 8007A998 21104300 */  addu       $v0, $v0, $v1
/* 53F6ECC 8007A99C 01000324 */  addiu      $v1, $zero, 0x1
/* 53F6ED0 8007A9A0 490043A0 */  sb         $v1, 0x49($v0)
.Llevel_21_8007A9A4:
/* 53F6ED4 8007A9A4 3000048E */  lw         $a0, 0x30($s0)
/* 53F6ED8 8007A9A8 00000000 */  nop
/* 53F6EDC 8007A9AC 03008510 */  beq        $a0, $a1, .Llevel_21_8007A9BC
/* 53F6EE0 8007A9B0 FC000524 */   addiu     $a1, $zero, 0xFC
/* 53F6EE4 8007A9B4 B687000C */  jal        func_80021ED8
/* 53F6EE8 8007A9B8 21300000 */   addu      $a2, $zero, $zero
.Llevel_21_8007A9BC:
/* 53F6EEC 8007A9BC C656010C */  jal        func_80055B18
/* 53F6EF0 8007A9C0 21202002 */   addu      $a0, $s1, $zero
/* 53F6EF4 8007A9C4 A6EA0108 */  j          .Llevel_21_8007AA98
/* 53F6EF8 8007A9C8 00000000 */   nop
.Llevel_21_8007A9CC:
/* 53F6EFC 8007A9CC 2800048E */  lw         $a0, 0x28($s0)
/* 53F6F00 8007A9D0 FFFF1224 */  addiu      $s2, $zero, -0x1
/* 53F6F04 8007A9D4 05009214 */  bne        $a0, $s2, .Llevel_21_8007A9EC
/* 53F6F08 8007A9D8 00000000 */   nop
/* 53F6F0C 8007A9DC 3000028E */  lw         $v0, 0x30($s0)
/* 53F6F10 8007A9E0 00000000 */  nop
/* 53F6F14 8007A9E4 18005210 */  beq        $v0, $s2, .Llevel_21_8007AA48
/* 53F6F18 8007A9E8 00000000 */   nop
.Llevel_21_8007A9EC:
/* 53F6F1C 8007A9EC 02000392 */  lbu        $v1, 0x2($s0)
/* 53F6F20 8007A9F0 04000224 */  addiu      $v0, $zero, 0x4
/* 53F6F24 8007A9F4 14006214 */  bne        $v1, $v0, .Llevel_21_8007AA48
/* 53F6F28 8007A9F8 00000000 */   nop
/* 53F6F2C 8007A9FC 0A009210 */  beq        $a0, $s2, .Llevel_21_8007AA28
/* 53F6F30 8007AA00 40100400 */   sll       $v0, $a0, 1
/* 53F6F34 8007AA04 21104400 */  addu       $v0, $v0, $a0
/* 53F6F38 8007AA08 80100200 */  sll        $v0, $v0, 2
/* 53F6F3C 8007AA0C 23104400 */  subu       $v0, $v0, $a0
/* 53F6F40 8007AA10 0780033C */  lui        $v1, %hi(D_8006C550)
/* 53F6F44 8007AA14 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 53F6F48 8007AA18 C0100200 */  sll        $v0, $v0, 3
/* 53F6F4C 8007AA1C 21104300 */  addu       $v0, $v0, $v1
/* 53F6F50 8007AA20 01000324 */  addiu      $v1, $zero, 0x1
/* 53F6F54 8007AA24 490043A0 */  sb         $v1, 0x49($v0)
.Llevel_21_8007AA28:
/* 53F6F58 8007AA28 3000048E */  lw         $a0, 0x30($s0)
/* 53F6F5C 8007AA2C 00000000 */  nop
/* 53F6F60 8007AA30 04009210 */  beq        $a0, $s2, .Llevel_21_8007AA44
/* 53F6F64 8007AA34 280012AE */   sw        $s2, 0x28($s0)
/* 53F6F68 8007AA38 FC000524 */  addiu      $a1, $zero, 0xFC
/* 53F6F6C 8007AA3C B687000C */  jal        func_80021ED8
/* 53F6F70 8007AA40 21300000 */   addu      $a2, $zero, $zero
.Llevel_21_8007AA44:
/* 53F6F74 8007AA44 300012AE */  sw         $s2, 0x30($s0)
.Llevel_21_8007AA48:
/* 53F6F78 8007AA48 21202002 */  addu       $a0, $s1, $zero
/* 53F6F7C 8007AA4C EFDE000C */  jal        func_80037BBC
/* 53F6F80 8007AA50 21280000 */   addu      $a1, $zero, $zero
/* 53F6F84 8007AA54 10004010 */  beqz       $v0, .Llevel_21_8007AA98
/* 53F6F88 8007AA58 21202002 */   addu      $a0, $s1, $zero
/* 53F6F8C 8007AA5C 21280000 */  addu       $a1, $zero, $zero
/* 53F6F90 8007AA60 B944010C */  jal        func_800512E4
/* 53F6F94 8007AA64 01000624 */   addiu     $a2, $zero, 0x1
/* 53F6F98 8007AA68 01000224 */  addiu      $v0, $zero, 0x1
/* 53F6F9C 8007AA6C A6EA0108 */  j          .Llevel_21_8007AA98
/* 53F6FA0 8007AA70 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_21_8007AA74:
/* 53F6FA4 8007AA74 0780033C */  lui        $v1, %hi(D_8006E344)
/* 53F6FA8 8007AA78 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 53F6FAC 8007AA7C 0780013C */  lui        $at, %hi(D_80071584)
/* 53F6FB0 8007AA80 841522A0 */  sb         $v0, %lo(D_80071584)($at)
/* 53F6FB4 8007AA84 04006410 */  beq        $v1, $a0, .Llevel_21_8007AA98
/* 53F6FB8 8007AA88 21202002 */   addu      $a0, $s1, $zero
/* 53F6FBC 8007AA8C 480020A2 */  sb         $zero, 0x48($s1)
/* 53F6FC0 8007AA90 D0D3000C */  jal        func_80034F40
/* 53F6FC4 8007AA94 21280000 */   addu      $a1, $zero, $zero
.Llevel_21_8007AA98:
/* 53F6FC8 8007AA98 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 53F6FCC 8007AA9C 1800B28F */  lw         $s2, 0x18($sp)
/* 53F6FD0 8007AAA0 1400B18F */  lw         $s1, 0x14($sp)
/* 53F6FD4 8007AAA4 1000B08F */  lw         $s0, 0x10($sp)
/* 53F6FD8 8007AAA8 2000BD27 */  addiu      $sp, $sp, 0x20
/* 53F6FDC 8007AAAC 0800E003 */  jr         $ra
/* 53F6FE0 8007AAB0 00000000 */   nop
.size MobyUpdate_198_level_21, . - MobyUpdate_198_level_21
