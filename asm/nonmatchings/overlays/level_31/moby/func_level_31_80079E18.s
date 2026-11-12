.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_198_level_31
/* 6A94B48 80079E18 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 6A94B4C 80079E1C 1400B1AF */  sw         $s1, 0x14($sp)
/* 6A94B50 80079E20 21888000 */  addu       $s1, $a0, $zero
/* 6A94B54 80079E24 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 6A94B58 80079E28 1800B2AF */  sw         $s2, 0x18($sp)
/* 6A94B5C 80079E2C 1000B0AF */  sw         $s0, 0x10($sp)
/* 6A94B60 80079E30 48002492 */  lbu        $a0, 0x48($s1)
/* 6A94B64 80079E34 0000308E */  lw         $s0, 0x0($s1)
/* 6A94B68 80079E38 05008010 */  beqz       $a0, .Llevel_31_80079E50
/* 6A94B6C 80079E3C 01000224 */   addiu     $v0, $zero, 0x1
/* 6A94B70 80079E40 75008210 */  beq        $a0, $v0, .Llevel_31_8007A018
/* 6A94B74 80079E44 01000224 */   addiu     $v0, $zero, 0x1
/* 6A94B78 80079E48 0FE80108 */  j          .Llevel_31_8007A03C
/* 6A94B7C 80079E4C 00000000 */   nop
.Llevel_31_80079E50:
/* 6A94B80 80079E50 01000292 */  lbu        $v0, 0x1($s0)
/* 6A94B84 80079E54 00000000 */  nop
/* 6A94B88 80079E58 7F004330 */  andi       $v1, $v0, 0x7F
/* 6A94B8C 80079E5C 7F000224 */  addiu      $v0, $zero, 0x7F
/* 6A94B90 80079E60 13006210 */  beq        $v1, $v0, .Llevel_31_80079EB0
/* 6A94B94 80079E64 80200300 */   sll       $a0, $v1, 2
/* 6A94B98 80079E68 0680013C */  lui        $at, %hi(D_80066EAC)
/* 6A94B9C 80079E6C 21082400 */  addu       $at, $at, $a0
/* 6A94BA0 80079E70 AC6E2384 */  lh         $v1, %lo(D_80066EAC)($at)
/* 6A94BA4 80079E74 0780023C */  lui        $v0, %hi(D_8006C71C)
/* 6A94BA8 80079E78 1CC7428C */  lw         $v0, %lo(D_8006C71C)($v0)
/* 6A94BAC 80079E7C 00000000 */  nop
/* 6A94BB0 80079E80 2A104300 */  slt        $v0, $v0, $v1
/* 6A94BB4 80079E84 0A004014 */  bnez       $v0, .Llevel_31_80079EB0
/* 6A94BB8 80079E88 00000000 */   nop
/* 6A94BBC 80079E8C 0680013C */  lui        $at, %hi(D_80066EAE)
/* 6A94BC0 80079E90 21082400 */  addu       $at, $at, $a0
/* 6A94BC4 80079E94 AE6E2284 */  lh         $v0, %lo(D_80066EAE)($at)
/* 6A94BC8 80079E98 00000000 */  nop
/* 6A94BCC 80079E9C 04004014 */  bnez       $v0, .Llevel_31_80079EB0
/* 6A94BD0 80079EA0 01000224 */   addiu     $v0, $zero, 0x1
/* 6A94BD4 80079EA4 050002A2 */  sb         $v0, 0x5($s0)
/* 6A94BD8 80079EA8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 6A94BDC 80079EAC 010002A2 */  sb         $v0, 0x1($s0)
.Llevel_31_80079EB0:
/* 6A94BE0 80079EB0 2C00038E */  lw         $v1, 0x2C($s0)
/* 6A94BE4 80079EB4 FFFF0524 */  addiu      $a1, $zero, -0x1
/* 6A94BE8 80079EB8 2D006510 */  beq        $v1, $a1, .Llevel_31_80079F70
/* 6A94BEC 80079EBC 00000000 */   nop
/* 6A94BF0 80079EC0 0780023C */  lui        $v0, %hi(D_8006C640)
/* 6A94BF4 80079EC4 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 6A94BF8 80079EC8 00000000 */  nop
/* 6A94BFC 80079ECC 0A004228 */  slti       $v0, $v0, 0xA
/* 6A94C00 80079ED0 27004010 */  beqz       $v0, .Llevel_31_80079F70
/* 6A94C04 80079ED4 80100300 */   sll       $v0, $v1, 2
/* 6A94C08 80079ED8 0680013C */  lui        $at, %hi(D_80066EAE)
/* 6A94C0C 80079EDC 21082200 */  addu       $at, $at, $v0
/* 6A94C10 80079EE0 AE6E2284 */  lh         $v0, %lo(D_80066EAE)($at)
/* 6A94C14 80079EE4 00000000 */  nop
/* 6A94C18 80079EE8 0A004014 */  bnez       $v0, .Llevel_31_80079F14
/* 6A94C1C 80079EEC 00000000 */   nop
/* 6A94C20 80079EF0 0680023C */  lui        $v0, %hi(D_80066FCC + 0x2F)
/* 6A94C24 80079EF4 FB6F4290 */  lbu        $v0, %lo(D_80066FCC + 0x2F)($v0)
/* 6A94C28 80079EF8 0780013C */  lui        $at, %hi(D_80070300)
/* 6A94C2C 80079EFC 21082200 */  addu       $at, $at, $v0
/* 6A94C30 80079F00 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 6A94C34 80079F04 00000000 */  nop
/* 6A94C38 80079F08 01004230 */  andi       $v0, $v0, 0x1
/* 6A94C3C 80079F0C 18004010 */  beqz       $v0, .Llevel_31_80079F70
/* 6A94C40 80079F10 00000000 */   nop
.Llevel_31_80079F14:
/* 6A94C44 80079F14 2800038E */  lw         $v1, 0x28($s0)
/* 6A94C48 80079F18 00000000 */  nop
/* 6A94C4C 80079F1C 0A006510 */  beq        $v1, $a1, .Llevel_31_80079F48
/* 6A94C50 80079F20 40100300 */   sll       $v0, $v1, 1
/* 6A94C54 80079F24 21104300 */  addu       $v0, $v0, $v1
/* 6A94C58 80079F28 80100200 */  sll        $v0, $v0, 2
/* 6A94C5C 80079F2C 23104300 */  subu       $v0, $v0, $v1
/* 6A94C60 80079F30 0780033C */  lui        $v1, %hi(D_8006C550)
/* 6A94C64 80079F34 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 6A94C68 80079F38 C0100200 */  sll        $v0, $v0, 3
/* 6A94C6C 80079F3C 21104300 */  addu       $v0, $v0, $v1
/* 6A94C70 80079F40 01000324 */  addiu      $v1, $zero, 0x1
/* 6A94C74 80079F44 490043A0 */  sb         $v1, 0x49($v0)
.Llevel_31_80079F48:
/* 6A94C78 80079F48 3000048E */  lw         $a0, 0x30($s0)
/* 6A94C7C 80079F4C 00000000 */  nop
/* 6A94C80 80079F50 03008510 */  beq        $a0, $a1, .Llevel_31_80079F60
/* 6A94C84 80079F54 FC000524 */   addiu     $a1, $zero, 0xFC
/* 6A94C88 80079F58 B687000C */  jal        func_80021ED8
/* 6A94C8C 80079F5C 21300000 */   addu      $a2, $zero, $zero
.Llevel_31_80079F60:
/* 6A94C90 80079F60 C656010C */  jal        func_80055B18
/* 6A94C94 80079F64 21202002 */   addu      $a0, $s1, $zero
/* 6A94C98 80079F68 0FE80108 */  j          .Llevel_31_8007A03C
/* 6A94C9C 80079F6C 00000000 */   nop
.Llevel_31_80079F70:
/* 6A94CA0 80079F70 2800048E */  lw         $a0, 0x28($s0)
/* 6A94CA4 80079F74 FFFF1224 */  addiu      $s2, $zero, -0x1
/* 6A94CA8 80079F78 05009214 */  bne        $a0, $s2, .Llevel_31_80079F90
/* 6A94CAC 80079F7C 00000000 */   nop
/* 6A94CB0 80079F80 3000028E */  lw         $v0, 0x30($s0)
/* 6A94CB4 80079F84 00000000 */  nop
/* 6A94CB8 80079F88 18005210 */  beq        $v0, $s2, .Llevel_31_80079FEC
/* 6A94CBC 80079F8C 00000000 */   nop
.Llevel_31_80079F90:
/* 6A94CC0 80079F90 02000392 */  lbu        $v1, 0x2($s0)
/* 6A94CC4 80079F94 04000224 */  addiu      $v0, $zero, 0x4
/* 6A94CC8 80079F98 14006214 */  bne        $v1, $v0, .Llevel_31_80079FEC
/* 6A94CCC 80079F9C 00000000 */   nop
/* 6A94CD0 80079FA0 0A009210 */  beq        $a0, $s2, .Llevel_31_80079FCC
/* 6A94CD4 80079FA4 40100400 */   sll       $v0, $a0, 1
/* 6A94CD8 80079FA8 21104400 */  addu       $v0, $v0, $a0
/* 6A94CDC 80079FAC 80100200 */  sll        $v0, $v0, 2
/* 6A94CE0 80079FB0 23104400 */  subu       $v0, $v0, $a0
/* 6A94CE4 80079FB4 0780033C */  lui        $v1, %hi(D_8006C550)
/* 6A94CE8 80079FB8 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 6A94CEC 80079FBC C0100200 */  sll        $v0, $v0, 3
/* 6A94CF0 80079FC0 21104300 */  addu       $v0, $v0, $v1
/* 6A94CF4 80079FC4 01000324 */  addiu      $v1, $zero, 0x1
/* 6A94CF8 80079FC8 490043A0 */  sb         $v1, 0x49($v0)
.Llevel_31_80079FCC:
/* 6A94CFC 80079FCC 3000048E */  lw         $a0, 0x30($s0)
/* 6A94D00 80079FD0 00000000 */  nop
/* 6A94D04 80079FD4 04009210 */  beq        $a0, $s2, .Llevel_31_80079FE8
/* 6A94D08 80079FD8 280012AE */   sw        $s2, 0x28($s0)
/* 6A94D0C 80079FDC FC000524 */  addiu      $a1, $zero, 0xFC
/* 6A94D10 80079FE0 B687000C */  jal        func_80021ED8
/* 6A94D14 80079FE4 21300000 */   addu      $a2, $zero, $zero
.Llevel_31_80079FE8:
/* 6A94D18 80079FE8 300012AE */  sw         $s2, 0x30($s0)
.Llevel_31_80079FEC:
/* 6A94D1C 80079FEC 21202002 */  addu       $a0, $s1, $zero
/* 6A94D20 80079FF0 EFDE000C */  jal        func_80037BBC
/* 6A94D24 80079FF4 21280000 */   addu      $a1, $zero, $zero
/* 6A94D28 80079FF8 10004010 */  beqz       $v0, .Llevel_31_8007A03C
/* 6A94D2C 80079FFC 21202002 */   addu      $a0, $s1, $zero
/* 6A94D30 8007A000 21280000 */  addu       $a1, $zero, $zero
/* 6A94D34 8007A004 B944010C */  jal        func_800512E4
/* 6A94D38 8007A008 01000624 */   addiu     $a2, $zero, 0x1
/* 6A94D3C 8007A00C 01000224 */  addiu      $v0, $zero, 0x1
/* 6A94D40 8007A010 0FE80108 */  j          .Llevel_31_8007A03C
/* 6A94D44 8007A014 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_31_8007A018:
/* 6A94D48 8007A018 0780033C */  lui        $v1, %hi(D_8006E344)
/* 6A94D4C 8007A01C 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 6A94D50 8007A020 0780013C */  lui        $at, %hi(D_80071584)
/* 6A94D54 8007A024 841522A0 */  sb         $v0, %lo(D_80071584)($at)
/* 6A94D58 8007A028 04006410 */  beq        $v1, $a0, .Llevel_31_8007A03C
/* 6A94D5C 8007A02C 21202002 */   addu      $a0, $s1, $zero
/* 6A94D60 8007A030 480020A2 */  sb         $zero, 0x48($s1)
/* 6A94D64 8007A034 D0D3000C */  jal        func_80034F40
/* 6A94D68 8007A038 21280000 */   addu      $a1, $zero, $zero
.Llevel_31_8007A03C:
/* 6A94D6C 8007A03C 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 6A94D70 8007A040 1800B28F */  lw         $s2, 0x18($sp)
/* 6A94D74 8007A044 1400B18F */  lw         $s1, 0x14($sp)
/* 6A94D78 8007A048 1000B08F */  lw         $s0, 0x10($sp)
/* 6A94D7C 8007A04C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 6A94D80 8007A050 0800E003 */  jr         $ra
/* 6A94D84 8007A054 00000000 */   nop
.size MobyUpdate_198_level_31, . - MobyUpdate_198_level_31
