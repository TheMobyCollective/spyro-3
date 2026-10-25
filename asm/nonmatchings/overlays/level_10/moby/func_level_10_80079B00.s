.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_198_level_10
/* 3ADE830 80079B00 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3ADE834 80079B04 1800B2AF */  sw         $s2, 0x18($sp)
/* 3ADE838 80079B08 21908000 */  addu       $s2, $a0, $zero
/* 3ADE83C 80079B0C 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 3ADE840 80079B10 1400B1AF */  sw         $s1, 0x14($sp)
/* 3ADE844 80079B14 1000B0AF */  sw         $s0, 0x10($sp)
/* 3ADE848 80079B18 48004492 */  lbu        $a0, 0x48($s2)
/* 3ADE84C 80079B1C 0000508E */  lw         $s0, 0x0($s2)
/* 3ADE850 80079B20 05008010 */  beqz       $a0, .Llevel_10_80079B38
/* 3ADE854 80079B24 01000224 */   addiu     $v0, $zero, 0x1
/* 3ADE858 80079B28 7B008210 */  beq        $a0, $v0, .Llevel_10_80079D18
/* 3ADE85C 80079B2C 01000224 */   addiu     $v0, $zero, 0x1
/* 3ADE860 80079B30 4FE70108 */  j          .Llevel_10_80079D3C
/* 3ADE864 80079B34 00000000 */   nop
.Llevel_10_80079B38:
/* 3ADE868 80079B38 0780023C */  lui        $v0, %hi(D_80071584)
/* 3ADE86C 80079B3C 84154290 */  lbu        $v0, %lo(D_80071584)($v0)
/* 3ADE870 80079B40 00000000 */  nop
/* 3ADE874 80079B44 02004014 */  bnez       $v0, .Llevel_10_80079B50
/* 3ADE878 80079B48 05000224 */   addiu     $v0, $zero, 0x5
/* 3ADE87C 80079B4C 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_10_80079B50:
/* 3ADE880 80079B50 01000292 */  lbu        $v0, 0x1($s0)
/* 3ADE884 80079B54 00000000 */  nop
/* 3ADE888 80079B58 7F004330 */  andi       $v1, $v0, 0x7F
/* 3ADE88C 80079B5C 7F000224 */  addiu      $v0, $zero, 0x7F
/* 3ADE890 80079B60 13006210 */  beq        $v1, $v0, .Llevel_10_80079BB0
/* 3ADE894 80079B64 80200300 */   sll       $a0, $v1, 2
/* 3ADE898 80079B68 0680013C */  lui        $at, %hi(D_80066EAC)
/* 3ADE89C 80079B6C 21082400 */  addu       $at, $at, $a0
/* 3ADE8A0 80079B70 AC6E2384 */  lh         $v1, %lo(D_80066EAC)($at)
/* 3ADE8A4 80079B74 0780023C */  lui        $v0, %hi(D_8006C71C)
/* 3ADE8A8 80079B78 1CC7428C */  lw         $v0, %lo(D_8006C71C)($v0)
/* 3ADE8AC 80079B7C 00000000 */  nop
/* 3ADE8B0 80079B80 2A104300 */  slt        $v0, $v0, $v1
/* 3ADE8B4 80079B84 0A004014 */  bnez       $v0, .Llevel_10_80079BB0
/* 3ADE8B8 80079B88 00000000 */   nop
/* 3ADE8BC 80079B8C 0680013C */  lui        $at, %hi(D_80066EAE)
/* 3ADE8C0 80079B90 21082400 */  addu       $at, $at, $a0
/* 3ADE8C4 80079B94 AE6E2284 */  lh         $v0, %lo(D_80066EAE)($at)
/* 3ADE8C8 80079B98 00000000 */  nop
/* 3ADE8CC 80079B9C 04004014 */  bnez       $v0, .Llevel_10_80079BB0
/* 3ADE8D0 80079BA0 01000224 */   addiu     $v0, $zero, 0x1
/* 3ADE8D4 80079BA4 050002A2 */  sb         $v0, 0x5($s0)
/* 3ADE8D8 80079BA8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 3ADE8DC 80079BAC 010002A2 */  sb         $v0, 0x1($s0)
.Llevel_10_80079BB0:
/* 3ADE8E0 80079BB0 2C00038E */  lw         $v1, 0x2C($s0)
/* 3ADE8E4 80079BB4 FFFF0524 */  addiu      $a1, $zero, -0x1
/* 3ADE8E8 80079BB8 2D006510 */  beq        $v1, $a1, .Llevel_10_80079C70
/* 3ADE8EC 80079BBC 00000000 */   nop
/* 3ADE8F0 80079BC0 0780023C */  lui        $v0, %hi(D_8006C640)
/* 3ADE8F4 80079BC4 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 3ADE8F8 80079BC8 00000000 */  nop
/* 3ADE8FC 80079BCC 0A004228 */  slti       $v0, $v0, 0xA
/* 3ADE900 80079BD0 27004010 */  beqz       $v0, .Llevel_10_80079C70
/* 3ADE904 80079BD4 80100300 */   sll       $v0, $v1, 2
/* 3ADE908 80079BD8 0680013C */  lui        $at, %hi(D_80066EAE)
/* 3ADE90C 80079BDC 21082200 */  addu       $at, $at, $v0
/* 3ADE910 80079BE0 AE6E2284 */  lh         $v0, %lo(D_80066EAE)($at)
/* 3ADE914 80079BE4 00000000 */  nop
/* 3ADE918 80079BE8 0A004014 */  bnez       $v0, .Llevel_10_80079C14
/* 3ADE91C 80079BEC 00000000 */   nop
/* 3ADE920 80079BF0 0680023C */  lui        $v0, %hi(D_80066FCC + 0x2F)
/* 3ADE924 80079BF4 FB6F4290 */  lbu        $v0, %lo(D_80066FCC + 0x2F)($v0)
/* 3ADE928 80079BF8 0780013C */  lui        $at, %hi(D_80070300)
/* 3ADE92C 80079BFC 21082200 */  addu       $at, $at, $v0
/* 3ADE930 80079C00 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 3ADE934 80079C04 00000000 */  nop
/* 3ADE938 80079C08 01004230 */  andi       $v0, $v0, 0x1
/* 3ADE93C 80079C0C 18004010 */  beqz       $v0, .Llevel_10_80079C70
/* 3ADE940 80079C10 00000000 */   nop
.Llevel_10_80079C14:
/* 3ADE944 80079C14 2800038E */  lw         $v1, 0x28($s0)
/* 3ADE948 80079C18 00000000 */  nop
/* 3ADE94C 80079C1C 0A006510 */  beq        $v1, $a1, .Llevel_10_80079C48
/* 3ADE950 80079C20 40100300 */   sll       $v0, $v1, 1
/* 3ADE954 80079C24 21104300 */  addu       $v0, $v0, $v1
/* 3ADE958 80079C28 80100200 */  sll        $v0, $v0, 2
/* 3ADE95C 80079C2C 23104300 */  subu       $v0, $v0, $v1
/* 3ADE960 80079C30 0780033C */  lui        $v1, %hi(D_8006C550)
/* 3ADE964 80079C34 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 3ADE968 80079C38 C0100200 */  sll        $v0, $v0, 3
/* 3ADE96C 80079C3C 21104300 */  addu       $v0, $v0, $v1
/* 3ADE970 80079C40 09000324 */  addiu      $v1, $zero, 0x9
/* 3ADE974 80079C44 480043A0 */  sb         $v1, 0x48($v0)
.Llevel_10_80079C48:
/* 3ADE978 80079C48 3000048E */  lw         $a0, 0x30($s0)
/* 3ADE97C 80079C4C 00000000 */  nop
/* 3ADE980 80079C50 03008510 */  beq        $a0, $a1, .Llevel_10_80079C60
/* 3ADE984 80079C54 FC000524 */   addiu     $a1, $zero, 0xFC
/* 3ADE988 80079C58 B687000C */  jal        func_80021ED8
/* 3ADE98C 80079C5C 21300000 */   addu      $a2, $zero, $zero
.Llevel_10_80079C60:
/* 3ADE990 80079C60 C656010C */  jal        func_80055B18
/* 3ADE994 80079C64 21204002 */   addu      $a0, $s2, $zero
/* 3ADE998 80079C68 4FE70108 */  j          .Llevel_10_80079D3C
/* 3ADE99C 80079C6C 00000000 */   nop
.Llevel_10_80079C70:
/* 3ADE9A0 80079C70 2800048E */  lw         $a0, 0x28($s0)
/* 3ADE9A4 80079C74 FFFF1124 */  addiu      $s1, $zero, -0x1
/* 3ADE9A8 80079C78 05009114 */  bne        $a0, $s1, .Llevel_10_80079C90
/* 3ADE9AC 80079C7C 00000000 */   nop
/* 3ADE9B0 80079C80 3000028E */  lw         $v0, 0x30($s0)
/* 3ADE9B4 80079C84 00000000 */  nop
/* 3ADE9B8 80079C88 18005110 */  beq        $v0, $s1, .Llevel_10_80079CEC
/* 3ADE9BC 80079C8C 00000000 */   nop
.Llevel_10_80079C90:
/* 3ADE9C0 80079C90 02000392 */  lbu        $v1, 0x2($s0)
/* 3ADE9C4 80079C94 04000224 */  addiu      $v0, $zero, 0x4
/* 3ADE9C8 80079C98 14006214 */  bne        $v1, $v0, .Llevel_10_80079CEC
/* 3ADE9CC 80079C9C 00000000 */   nop
/* 3ADE9D0 80079CA0 0A009110 */  beq        $a0, $s1, .Llevel_10_80079CCC
/* 3ADE9D4 80079CA4 40100400 */   sll       $v0, $a0, 1
/* 3ADE9D8 80079CA8 21104400 */  addu       $v0, $v0, $a0
/* 3ADE9DC 80079CAC 80100200 */  sll        $v0, $v0, 2
/* 3ADE9E0 80079CB0 23104400 */  subu       $v0, $v0, $a0
/* 3ADE9E4 80079CB4 0780033C */  lui        $v1, %hi(D_8006C550)
/* 3ADE9E8 80079CB8 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 3ADE9EC 80079CBC C0100200 */  sll        $v0, $v0, 3
/* 3ADE9F0 80079CC0 21104300 */  addu       $v0, $v0, $v1
/* 3ADE9F4 80079CC4 09000324 */  addiu      $v1, $zero, 0x9
/* 3ADE9F8 80079CC8 480043A0 */  sb         $v1, 0x48($v0)
.Llevel_10_80079CCC:
/* 3ADE9FC 80079CCC 3000048E */  lw         $a0, 0x30($s0)
/* 3ADEA00 80079CD0 00000000 */  nop
/* 3ADEA04 80079CD4 04009110 */  beq        $a0, $s1, .Llevel_10_80079CE8
/* 3ADEA08 80079CD8 280011AE */   sw        $s1, 0x28($s0)
/* 3ADEA0C 80079CDC FC000524 */  addiu      $a1, $zero, 0xFC
/* 3ADEA10 80079CE0 B687000C */  jal        func_80021ED8
/* 3ADEA14 80079CE4 21300000 */   addu      $a2, $zero, $zero
.Llevel_10_80079CE8:
/* 3ADEA18 80079CE8 300011AE */  sw         $s1, 0x30($s0)
.Llevel_10_80079CEC:
/* 3ADEA1C 80079CEC 21204002 */  addu       $a0, $s2, $zero
/* 3ADEA20 80079CF0 EFDE000C */  jal        func_80037BBC
/* 3ADEA24 80079CF4 21280000 */   addu      $a1, $zero, $zero
/* 3ADEA28 80079CF8 10004010 */  beqz       $v0, .Llevel_10_80079D3C
/* 3ADEA2C 80079CFC 21204002 */   addu      $a0, $s2, $zero
/* 3ADEA30 80079D00 21280000 */  addu       $a1, $zero, $zero
/* 3ADEA34 80079D04 B944010C */  jal        func_800512E4
/* 3ADEA38 80079D08 01000624 */   addiu     $a2, $zero, 0x1
/* 3ADEA3C 80079D0C 01000224 */  addiu      $v0, $zero, 0x1
/* 3ADEA40 80079D10 4FE70108 */  j          .Llevel_10_80079D3C
/* 3ADEA44 80079D14 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_10_80079D18:
/* 3ADEA48 80079D18 0780033C */  lui        $v1, %hi(D_8006E344)
/* 3ADEA4C 80079D1C 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 3ADEA50 80079D20 0780013C */  lui        $at, %hi(D_80071584)
/* 3ADEA54 80079D24 841522A0 */  sb         $v0, %lo(D_80071584)($at)
/* 3ADEA58 80079D28 04006410 */  beq        $v1, $a0, .Llevel_10_80079D3C
/* 3ADEA5C 80079D2C 21204002 */   addu      $a0, $s2, $zero
/* 3ADEA60 80079D30 480040A2 */  sb         $zero, 0x48($s2)
/* 3ADEA64 80079D34 D0D3000C */  jal        func_80034F40
/* 3ADEA68 80079D38 21280000 */   addu      $a1, $zero, $zero
.Llevel_10_80079D3C:
/* 3ADEA6C 80079D3C 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 3ADEA70 80079D40 1800B28F */  lw         $s2, 0x18($sp)
/* 3ADEA74 80079D44 1400B18F */  lw         $s1, 0x14($sp)
/* 3ADEA78 80079D48 1000B08F */  lw         $s0, 0x10($sp)
/* 3ADEA7C 80079D4C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 3ADEA80 80079D50 0800E003 */  jr         $ra
/* 3ADEA84 80079D54 00000000 */   nop
.size MobyUpdate_198_level_10, . - MobyUpdate_198_level_10
