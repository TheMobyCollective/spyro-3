.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_198_level_20
/* 50CA864 8007AB34 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 50CA868 8007AB38 1400B1AF */  sw         $s1, 0x14($sp)
/* 50CA86C 8007AB3C 21888000 */  addu       $s1, $a0, $zero
/* 50CA870 8007AB40 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 50CA874 8007AB44 1800B2AF */  sw         $s2, 0x18($sp)
/* 50CA878 8007AB48 1000B0AF */  sw         $s0, 0x10($sp)
/* 50CA87C 8007AB4C 48002492 */  lbu        $a0, 0x48($s1)
/* 50CA880 8007AB50 0000308E */  lw         $s0, 0x0($s1)
/* 50CA884 8007AB54 05008010 */  beqz       $a0, .Llevel_20_8007AB6C
/* 50CA888 8007AB58 01000224 */   addiu     $v0, $zero, 0x1
/* 50CA88C 8007AB5C 75008210 */  beq        $a0, $v0, .Llevel_20_8007AD34
/* 50CA890 8007AB60 01000224 */   addiu     $v0, $zero, 0x1
/* 50CA894 8007AB64 56EB0108 */  j          .Llevel_20_8007AD58
/* 50CA898 8007AB68 00000000 */   nop
.Llevel_20_8007AB6C:
/* 50CA89C 8007AB6C 01000292 */  lbu        $v0, 0x1($s0)
/* 50CA8A0 8007AB70 00000000 */  nop
/* 50CA8A4 8007AB74 7F004330 */  andi       $v1, $v0, 0x7F
/* 50CA8A8 8007AB78 7F000224 */  addiu      $v0, $zero, 0x7F
/* 50CA8AC 8007AB7C 13006210 */  beq        $v1, $v0, .Llevel_20_8007ABCC
/* 50CA8B0 8007AB80 80200300 */   sll       $a0, $v1, 2
/* 50CA8B4 8007AB84 0680013C */  lui        $at, %hi(D_80066EAC)
/* 50CA8B8 8007AB88 21082400 */  addu       $at, $at, $a0
/* 50CA8BC 8007AB8C AC6E2384 */  lh         $v1, %lo(D_80066EAC)($at)
/* 50CA8C0 8007AB90 0780023C */  lui        $v0, %hi(D_8006C71C)
/* 50CA8C4 8007AB94 1CC7428C */  lw         $v0, %lo(D_8006C71C)($v0)
/* 50CA8C8 8007AB98 00000000 */  nop
/* 50CA8CC 8007AB9C 2A104300 */  slt        $v0, $v0, $v1
/* 50CA8D0 8007ABA0 0A004014 */  bnez       $v0, .Llevel_20_8007ABCC
/* 50CA8D4 8007ABA4 00000000 */   nop
/* 50CA8D8 8007ABA8 0680013C */  lui        $at, %hi(D_80066EAE)
/* 50CA8DC 8007ABAC 21082400 */  addu       $at, $at, $a0
/* 50CA8E0 8007ABB0 AE6E2284 */  lh         $v0, %lo(D_80066EAE)($at)
/* 50CA8E4 8007ABB4 00000000 */  nop
/* 50CA8E8 8007ABB8 04004014 */  bnez       $v0, .Llevel_20_8007ABCC
/* 50CA8EC 8007ABBC 01000224 */   addiu     $v0, $zero, 0x1
/* 50CA8F0 8007ABC0 050002A2 */  sb         $v0, 0x5($s0)
/* 50CA8F4 8007ABC4 FF000224 */  addiu      $v0, $zero, 0xFF
/* 50CA8F8 8007ABC8 010002A2 */  sb         $v0, 0x1($s0)
.Llevel_20_8007ABCC:
/* 50CA8FC 8007ABCC 2C00038E */  lw         $v1, 0x2C($s0)
/* 50CA900 8007ABD0 FFFF0524 */  addiu      $a1, $zero, -0x1
/* 50CA904 8007ABD4 2D006510 */  beq        $v1, $a1, .Llevel_20_8007AC8C
/* 50CA908 8007ABD8 00000000 */   nop
/* 50CA90C 8007ABDC 0780023C */  lui        $v0, %hi(D_8006C640)
/* 50CA910 8007ABE0 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 50CA914 8007ABE4 00000000 */  nop
/* 50CA918 8007ABE8 0A004228 */  slti       $v0, $v0, 0xA
/* 50CA91C 8007ABEC 27004010 */  beqz       $v0, .Llevel_20_8007AC8C
/* 50CA920 8007ABF0 80100300 */   sll       $v0, $v1, 2
/* 50CA924 8007ABF4 0680013C */  lui        $at, %hi(D_80066EAE)
/* 50CA928 8007ABF8 21082200 */  addu       $at, $at, $v0
/* 50CA92C 8007ABFC AE6E2284 */  lh         $v0, %lo(D_80066EAE)($at)
/* 50CA930 8007AC00 00000000 */  nop
/* 50CA934 8007AC04 0A004014 */  bnez       $v0, .Llevel_20_8007AC30
/* 50CA938 8007AC08 00000000 */   nop
/* 50CA93C 8007AC0C 0680023C */  lui        $v0, %hi(D_80066FCC + 0x2F)
/* 50CA940 8007AC10 FB6F4290 */  lbu        $v0, %lo(D_80066FCC + 0x2F)($v0)
/* 50CA944 8007AC14 0780013C */  lui        $at, %hi(D_80070300)
/* 50CA948 8007AC18 21082200 */  addu       $at, $at, $v0
/* 50CA94C 8007AC1C 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 50CA950 8007AC20 00000000 */  nop
/* 50CA954 8007AC24 01004230 */  andi       $v0, $v0, 0x1
/* 50CA958 8007AC28 18004010 */  beqz       $v0, .Llevel_20_8007AC8C
/* 50CA95C 8007AC2C 00000000 */   nop
.Llevel_20_8007AC30:
/* 50CA960 8007AC30 2800038E */  lw         $v1, 0x28($s0)
/* 50CA964 8007AC34 00000000 */  nop
/* 50CA968 8007AC38 0A006510 */  beq        $v1, $a1, .Llevel_20_8007AC64
/* 50CA96C 8007AC3C 40100300 */   sll       $v0, $v1, 1
/* 50CA970 8007AC40 21104300 */  addu       $v0, $v0, $v1
/* 50CA974 8007AC44 80100200 */  sll        $v0, $v0, 2
/* 50CA978 8007AC48 23104300 */  subu       $v0, $v0, $v1
/* 50CA97C 8007AC4C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 50CA980 8007AC50 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 50CA984 8007AC54 C0100200 */  sll        $v0, $v0, 3
/* 50CA988 8007AC58 21104300 */  addu       $v0, $v0, $v1
/* 50CA98C 8007AC5C 09000324 */  addiu      $v1, $zero, 0x9
/* 50CA990 8007AC60 480043A0 */  sb         $v1, 0x48($v0)
.Llevel_20_8007AC64:
/* 50CA994 8007AC64 3000048E */  lw         $a0, 0x30($s0)
/* 50CA998 8007AC68 00000000 */  nop
/* 50CA99C 8007AC6C 03008510 */  beq        $a0, $a1, .Llevel_20_8007AC7C
/* 50CA9A0 8007AC70 FC000524 */   addiu     $a1, $zero, 0xFC
/* 50CA9A4 8007AC74 B687000C */  jal        func_80021ED8
/* 50CA9A8 8007AC78 21300000 */   addu      $a2, $zero, $zero
.Llevel_20_8007AC7C:
/* 50CA9AC 8007AC7C C656010C */  jal        func_80055B18
/* 50CA9B0 8007AC80 21202002 */   addu      $a0, $s1, $zero
/* 50CA9B4 8007AC84 56EB0108 */  j          .Llevel_20_8007AD58
/* 50CA9B8 8007AC88 00000000 */   nop
.Llevel_20_8007AC8C:
/* 50CA9BC 8007AC8C 2800048E */  lw         $a0, 0x28($s0)
/* 50CA9C0 8007AC90 FFFF1224 */  addiu      $s2, $zero, -0x1
/* 50CA9C4 8007AC94 05009214 */  bne        $a0, $s2, .Llevel_20_8007ACAC
/* 50CA9C8 8007AC98 00000000 */   nop
/* 50CA9CC 8007AC9C 3000028E */  lw         $v0, 0x30($s0)
/* 50CA9D0 8007ACA0 00000000 */  nop
/* 50CA9D4 8007ACA4 18005210 */  beq        $v0, $s2, .Llevel_20_8007AD08
/* 50CA9D8 8007ACA8 00000000 */   nop
.Llevel_20_8007ACAC:
/* 50CA9DC 8007ACAC 02000392 */  lbu        $v1, 0x2($s0)
/* 50CA9E0 8007ACB0 04000224 */  addiu      $v0, $zero, 0x4
/* 50CA9E4 8007ACB4 14006214 */  bne        $v1, $v0, .Llevel_20_8007AD08
/* 50CA9E8 8007ACB8 00000000 */   nop
/* 50CA9EC 8007ACBC 0A009210 */  beq        $a0, $s2, .Llevel_20_8007ACE8
/* 50CA9F0 8007ACC0 40100400 */   sll       $v0, $a0, 1
/* 50CA9F4 8007ACC4 21104400 */  addu       $v0, $v0, $a0
/* 50CA9F8 8007ACC8 80100200 */  sll        $v0, $v0, 2
/* 50CA9FC 8007ACCC 23104400 */  subu       $v0, $v0, $a0
/* 50CAA00 8007ACD0 0780033C */  lui        $v1, %hi(D_8006C550)
/* 50CAA04 8007ACD4 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 50CAA08 8007ACD8 C0100200 */  sll        $v0, $v0, 3
/* 50CAA0C 8007ACDC 21104300 */  addu       $v0, $v0, $v1
/* 50CAA10 8007ACE0 09000324 */  addiu      $v1, $zero, 0x9
/* 50CAA14 8007ACE4 480043A0 */  sb         $v1, 0x48($v0)
.Llevel_20_8007ACE8:
/* 50CAA18 8007ACE8 3000048E */  lw         $a0, 0x30($s0)
/* 50CAA1C 8007ACEC 00000000 */  nop
/* 50CAA20 8007ACF0 04009210 */  beq        $a0, $s2, .Llevel_20_8007AD04
/* 50CAA24 8007ACF4 280012AE */   sw        $s2, 0x28($s0)
/* 50CAA28 8007ACF8 FC000524 */  addiu      $a1, $zero, 0xFC
/* 50CAA2C 8007ACFC B687000C */  jal        func_80021ED8
/* 50CAA30 8007AD00 21300000 */   addu      $a2, $zero, $zero
.Llevel_20_8007AD04:
/* 50CAA34 8007AD04 300012AE */  sw         $s2, 0x30($s0)
.Llevel_20_8007AD08:
/* 50CAA38 8007AD08 21202002 */  addu       $a0, $s1, $zero
/* 50CAA3C 8007AD0C EFDE000C */  jal        func_80037BBC
/* 50CAA40 8007AD10 21280000 */   addu      $a1, $zero, $zero
/* 50CAA44 8007AD14 10004010 */  beqz       $v0, .Llevel_20_8007AD58
/* 50CAA48 8007AD18 21202002 */   addu      $a0, $s1, $zero
/* 50CAA4C 8007AD1C 21280000 */  addu       $a1, $zero, $zero
/* 50CAA50 8007AD20 B944010C */  jal        func_800512E4
/* 50CAA54 8007AD24 01000624 */   addiu     $a2, $zero, 0x1
/* 50CAA58 8007AD28 01000224 */  addiu      $v0, $zero, 0x1
/* 50CAA5C 8007AD2C 56EB0108 */  j          .Llevel_20_8007AD58
/* 50CAA60 8007AD30 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_20_8007AD34:
/* 50CAA64 8007AD34 0780033C */  lui        $v1, %hi(D_8006E344)
/* 50CAA68 8007AD38 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 50CAA6C 8007AD3C 0780013C */  lui        $at, %hi(D_80071584)
/* 50CAA70 8007AD40 841522A0 */  sb         $v0, %lo(D_80071584)($at)
/* 50CAA74 8007AD44 04006410 */  beq        $v1, $a0, .Llevel_20_8007AD58
/* 50CAA78 8007AD48 21202002 */   addu      $a0, $s1, $zero
/* 50CAA7C 8007AD4C 480020A2 */  sb         $zero, 0x48($s1)
/* 50CAA80 8007AD50 D0D3000C */  jal        func_80034F40
/* 50CAA84 8007AD54 21280000 */   addu      $a1, $zero, $zero
.Llevel_20_8007AD58:
/* 50CAA88 8007AD58 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 50CAA8C 8007AD5C 1800B28F */  lw         $s2, 0x18($sp)
/* 50CAA90 8007AD60 1400B18F */  lw         $s1, 0x14($sp)
/* 50CAA94 8007AD64 1000B08F */  lw         $s0, 0x10($sp)
/* 50CAA98 8007AD68 2000BD27 */  addiu      $sp, $sp, 0x20
/* 50CAA9C 8007AD6C 0800E003 */  jr         $ra
/* 50CAAA0 8007AD70 00000000 */   nop
.size MobyUpdate_198_level_20, . - MobyUpdate_198_level_20
