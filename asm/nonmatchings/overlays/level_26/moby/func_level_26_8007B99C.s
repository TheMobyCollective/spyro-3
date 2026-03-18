.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_26_8007B99C
/* 622B6CC 8007B99C 80FFBD27 */  addiu      $sp, $sp, -0x80
/* 622B6D0 8007B9A0 7000B2AF */  sw         $s2, 0x70($sp)
/* 622B6D4 8007B9A4 21908000 */  addu       $s2, $a0, $zero
/* 622B6D8 8007B9A8 01000224 */  addiu      $v0, $zero, 0x1
/* 622B6DC 8007B9AC 7C00BFAF */  sw         $ra, 0x7C($sp)
/* 622B6E0 8007B9B0 7800B4AF */  sw         $s4, 0x78($sp)
/* 622B6E4 8007B9B4 7400B3AF */  sw         $s3, 0x74($sp)
/* 622B6E8 8007B9B8 6C00B1AF */  sw         $s1, 0x6C($sp)
/* 622B6EC 8007B9BC 6800B0AF */  sw         $s0, 0x68($sp)
/* 622B6F0 8007B9C0 48004392 */  lbu        $v1, 0x48($s2)
/* 622B6F4 8007B9C4 0000538E */  lw         $s3, 0x0($s2)
/* 622B6F8 8007B9C8 76006210 */  beq        $v1, $v0, .Llevel_26_8007BBA4
/* 622B6FC 8007B9CC 02006228 */   slti      $v0, $v1, 0x2
/* 622B700 8007B9D0 05004010 */  beqz       $v0, .Llevel_26_8007B9E8
/* 622B704 8007B9D4 00000000 */   nop
/* 622B708 8007B9D8 08006010 */  beqz       $v1, .Llevel_26_8007B9FC
/* 622B70C 8007B9DC 1000A427 */   addiu     $a0, $sp, 0x10
/* 622B710 8007B9E0 E9EE0108 */  j          .Llevel_26_8007BBA4
/* 622B714 8007B9E4 00000000 */   nop
.Llevel_26_8007B9E8:
/* 622B718 8007B9E8 02000224 */  addiu      $v0, $zero, 0x2
/* 622B71C 8007B9EC 3A006210 */  beq        $v1, $v0, .Llevel_26_8007BAD8
/* 622B720 8007B9F0 21204002 */   addu      $a0, $s2, $zero
/* 622B724 8007B9F4 E9EE0108 */  j          .Llevel_26_8007BBA4
/* 622B728 8007B9F8 00000000 */   nop
.Llevel_26_8007B9FC:
/* 622B72C 8007B9FC 46004292 */  lbu        $v0, 0x46($s2)
/* 622B730 8007BA00 0C005126 */  addiu      $s1, $s2, 0xC
/* 622B734 8007BA04 40100200 */  sll        $v0, $v0, 1
/* 622B738 8007BA08 0680013C */  lui        $at, %hi(D_80065920)
/* 622B73C 8007BA0C 21082200 */  addu       $at, $at, $v0
/* 622B740 8007BA10 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 622B744 8007BA14 21282002 */  addu       $a1, $s1, $zero
/* 622B748 8007BA18 C3100200 */  sra        $v0, $v0, 3
/* 622B74C 8007BA1C 2000A2AF */  sw         $v0, 0x20($sp)
/* 622B750 8007BA20 46004292 */  lbu        $v0, 0x46($s2)
/* 622B754 8007BA24 2000B027 */  addiu      $s0, $sp, 0x20
/* 622B758 8007BA28 40100200 */  sll        $v0, $v0, 1
/* 622B75C 8007BA2C 0680013C */  lui        $at, %hi(D_800658A0)
/* 622B760 8007BA30 21082200 */  addu       $at, $at, $v0
/* 622B764 8007BA34 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 622B768 8007BA38 21300002 */  addu       $a2, $s0, $zero
/* 622B76C 8007BA3C 2800A0AF */  sw         $zero, 0x28($sp)
/* 622B770 8007BA40 C3100200 */  sra        $v0, $v0, 3
/* 622B774 8007BA44 653C010C */  jal        func_8004F194
/* 622B778 8007BA48 2400A2AF */   sw        $v0, 0x24($sp)
/* 622B77C 8007BA4C 21200002 */  addu       $a0, $s0, $zero
/* 622B780 8007BA50 21282002 */  addu       $a1, $s1, $zero
/* 622B784 8007BA54 723C010C */  jal        func_8004F1C8
/* 622B788 8007BA58 21300002 */   addu      $a2, $s0, $zero
/* 622B78C 8007BA5C 1000A427 */  addiu      $a0, $sp, 0x10
/* 622B790 8007BA60 DA60000C */  jal        func_80018368
/* 622B794 8007BA64 21280002 */   addu      $a1, $s0, $zero
/* 622B798 8007BA68 18004010 */  beqz       $v0, .Llevel_26_8007BACC
/* 622B79C 8007BA6C 21202002 */   addu      $a0, $s1, $zero
/* 622B7A0 8007BA70 0780103C */  lui        $s0, %hi(D_80071900)
/* 622B7A4 8007BA74 00191026 */  addiu      $s0, $s0, %lo(D_80071900)
/* 622B7A8 8007BA78 5E3C010C */  jal        func_8004F178
/* 622B7AC 8007BA7C 21280002 */   addu      $a1, $s0, $zero
/* 622B7B0 8007BA80 1800048E */  lw         $a0, 0x18($s0)
/* 622B7B4 8007BA84 0780053C */  lui        $a1, %hi(D_8007191C)
/* 622B7B8 8007BA88 1C19A58C */  lw         $a1, %lo(D_8007191C)($a1)
/* 622B7BC 8007BA8C 203A010C */  jal        func_8004E880
/* 622B7C0 8007BA90 21300000 */   addu      $a2, $zero, $zero
/* 622B7C4 8007BA94 18001026 */  addiu      $s0, $s0, 0x18
/* 622B7C8 8007BA98 21200002 */  addu       $a0, $s0, $zero
/* 622B7CC 8007BA9C 21280000 */  addu       $a1, $zero, $zero
/* 622B7D0 8007BAA0 7A3B010C */  jal        func_8004EDE8
/* 622B7D4 8007BAA4 460042A2 */   sb        $v0, 0x46($s2)
/* 622B7D8 8007BAA8 21204000 */  addu       $a0, $v0, $zero
/* 622B7DC 8007BAAC 0780053C */  lui        $a1, %hi(D_80071920)
/* 622B7E0 8007BAB0 2019A58C */  lw         $a1, %lo(D_80071920)($a1)
/* 622B7E4 8007BAB4 203A010C */  jal        func_8004E880
/* 622B7E8 8007BAB8 21300000 */   addu      $a2, $zero, $zero
/* 622B7EC 8007BABC 21204002 */  addu       $a0, $s2, $zero
/* 622B7F0 8007BAC0 04000524 */  addiu      $a1, $zero, 0x4
/* 622B7F4 8007BAC4 4957010C */  jal        func_80055D24
/* 622B7F8 8007BAC8 450042A2 */   sb        $v0, 0x45($s2)
.Llevel_26_8007BACC:
/* 622B7FC 8007BACC 01000224 */  addiu      $v0, $zero, 0x1
/* 622B800 8007BAD0 E9EE0108 */  j          .Llevel_26_8007BBA4
/* 622B804 8007BAD4 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_26_8007BAD8:
/* 622B808 8007BAD8 21280000 */  addu       $a1, $zero, $zero
/* 622B80C 8007BADC 3000B027 */  addiu      $s0, $sp, 0x30
/* 622B810 8007BAE0 C557010C */  jal        func_80055F14
/* 622B814 8007BAE4 21300002 */   addu      $a2, $s0, $zero
/* 622B818 8007BAE8 46004292 */  lbu        $v0, 0x46($s2)
/* 622B81C 8007BAEC 00000000 */  nop
/* 622B820 8007BAF0 40100200 */  sll        $v0, $v0, 1
/* 622B824 8007BAF4 0680013C */  lui        $at, %hi(D_80065920)
/* 622B828 8007BAF8 21082200 */  addu       $at, $at, $v0
/* 622B82C 8007BAFC 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 622B830 8007BB00 00000000 */  nop
/* 622B834 8007BB04 40100300 */  sll        $v0, $v1, 1
/* 622B838 8007BB08 21104300 */  addu       $v0, $v0, $v1
/* 622B83C 8007BB0C C3110200 */  sra        $v0, $v0, 7
/* 622B840 8007BB10 4000A2AF */  sw         $v0, 0x40($sp)
/* 622B844 8007BB14 46004292 */  lbu        $v0, 0x46($s2)
/* 622B848 8007BB18 00000000 */  nop
/* 622B84C 8007BB1C 40100200 */  sll        $v0, $v0, 1
/* 622B850 8007BB20 0680013C */  lui        $at, %hi(D_800658A0)
/* 622B854 8007BB24 21082200 */  addu       $at, $at, $v0
/* 622B858 8007BB28 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 622B85C 8007BB2C 4800A0AF */  sw         $zero, 0x48($sp)
/* 622B860 8007BB30 40100300 */  sll        $v0, $v1, 1
/* 622B864 8007BB34 21104300 */  addu       $v0, $v0, $v1
/* 622B868 8007BB38 C3110200 */  sra        $v0, $v0, 7
/* 622B86C 8007BB3C 9171010C */  jal        rand
/* 622B870 8007BB40 4400A2AF */   sw        $v0, 0x44($sp)
/* 622B874 8007BB44 4000A38F */  lw         $v1, 0x40($sp)
/* 622B878 8007BB48 0E004230 */  andi       $v0, $v0, 0xE
/* 622B87C 8007BB4C F9FF6324 */  addiu      $v1, $v1, -0x7
/* 622B880 8007BB50 21186200 */  addu       $v1, $v1, $v0
/* 622B884 8007BB54 9171010C */  jal        rand
/* 622B888 8007BB58 4000A3AF */   sw        $v1, 0x40($sp)
/* 622B88C 8007BB5C 4400A38F */  lw         $v1, 0x44($sp)
/* 622B890 8007BB60 0E004230 */  andi       $v0, $v0, 0xE
/* 622B894 8007BB64 F9FF6324 */  addiu      $v1, $v1, -0x7
/* 622B898 8007BB68 21186200 */  addu       $v1, $v1, $v0
/* 622B89C 8007BB6C 9171010C */  jal        rand
/* 622B8A0 8007BB70 4400A3AF */   sw        $v1, 0x44($sp)
/* 622B8A4 8007BB74 01000424 */  addiu      $a0, $zero, 0x1
/* 622B8A8 8007BB78 13000524 */  addiu      $a1, $zero, 0x13
/* 622B8AC 8007BB7C 21300002 */  addu       $a2, $s0, $zero
/* 622B8B0 8007BB80 4800A38F */  lw         $v1, 0x48($sp)
/* 622B8B4 8007BB84 0E004230 */  andi       $v0, $v0, 0xE
/* 622B8B8 8007BB88 F9FF6324 */  addiu      $v1, $v1, -0x7
/* 622B8BC 8007BB8C 21186200 */  addu       $v1, $v1, $v0
/* 622B8C0 8007BB90 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 622B8C4 8007BB94 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 622B8C8 8007BB98 4000A727 */  addiu      $a3, $sp, 0x40
/* 622B8CC 8007BB9C 09F84000 */  jalr       $v0
/* 622B8D0 8007BBA0 4800A3AF */   sw        $v1, 0x48($sp)
.Llevel_26_8007BBA4:
/* 622B8D4 8007BBA4 0780033C */  lui        $v1, %hi(D_8006C644)
/* 622B8D8 8007BBA8 44C6638C */  lw         $v1, %lo(D_8006C644)($v1)
/* 622B8DC 8007BBAC 0000658E */  lw         $a1, 0x0($s3)
/* 622B8E0 8007BBB0 0400648E */  lw         $a0, 0x4($s3)
/* 622B8E4 8007BBB4 0800628E */  lw         $v0, 0x8($s3)
/* 622B8E8 8007BBB8 21186500 */  addu       $v1, $v1, $a1
/* 622B8EC 8007BBBC 21108200 */  addu       $v0, $a0, $v0
/* 622B8F0 8007BBC0 1A006200 */  div        $zero, $v1, $v0
/* 622B8F4 8007BBC4 02004014 */  bnez       $v0, .Llevel_26_8007BBD0
/* 622B8F8 8007BBC8 00000000 */   nop
/* 622B8FC 8007BBCC 0D000700 */  break      7
.Llevel_26_8007BBD0:
/* 622B900 8007BBD0 FFFF0124 */  addiu      $at, $zero, -0x1
/* 622B904 8007BBD4 04004114 */  bne        $v0, $at, .Llevel_26_8007BBE8
/* 622B908 8007BBD8 0080013C */   lui       $at, (0x80000000 >> 16)
/* 622B90C 8007BBDC 02006114 */  bne        $v1, $at, .Llevel_26_8007BBE8
/* 622B910 8007BBE0 00000000 */   nop
/* 622B914 8007BBE4 0D000600 */  break      6
.Llevel_26_8007BBE8:
/* 622B918 8007BBE8 10800000 */  mfhi       $s0
/* 622B91C 8007BBEC 00000000 */  nop
/* 622B920 8007BBF0 2A200402 */  slt        $a0, $s0, $a0
/* 622B924 8007BBF4 0A008010 */  beqz       $a0, .Llevel_26_8007BC20
/* 622B928 8007BBF8 02000224 */   addiu     $v0, $zero, 0x2
/* 622B92C 8007BBFC 48004392 */  lbu        $v1, 0x48($s2)
/* 622B930 8007BC00 00000000 */  nop
/* 622B934 8007BC04 04006210 */  beq        $v1, $v0, .Llevel_26_8007BC18
/* 622B938 8007BC08 21204002 */   addu      $a0, $s2, $zero
/* 622B93C 8007BC0C 21280000 */  addu       $a1, $zero, $zero
/* 622B940 8007BC10 AFEE000C */  jal        func_8003BABC
/* 622B944 8007BC14 21300000 */   addu      $a2, $zero, $zero
.Llevel_26_8007BC18:
/* 622B948 8007BC18 09EF0108 */  j          .Llevel_26_8007BC24
/* 622B94C 8007BC1C 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_26_8007BC20:
/* 622B950 8007BC20 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_26_8007BC24:
/* 622B954 8007BC24 480042A2 */  sb         $v0, 0x48($s2)
/* 622B958 8007BC28 0800628E */  lw         $v0, 0x8($s3)
/* 622B95C 8007BC2C 00000000 */  nop
/* 622B960 8007BC30 04004014 */  bnez       $v0, .Llevel_26_8007BC44
/* 622B964 8007BC34 02000224 */   addiu     $v0, $zero, 0x2
/* 622B968 8007BC38 000C1424 */  addiu      $s4, $zero, 0xC00
/* 622B96C 8007BC3C 29EF0108 */  j          .Llevel_26_8007BCA4
/* 622B970 8007BC40 21980000 */   addu      $s3, $zero, $zero
.Llevel_26_8007BC44:
/* 622B974 8007BC44 48004392 */  lbu        $v1, 0x48($s2)
/* 622B978 8007BC48 00000000 */  nop
/* 622B97C 8007BC4C 0A006214 */  bne        $v1, $v0, .Llevel_26_8007BC78
/* 622B980 8007BC50 4100022A */   slti      $v0, $s0, 0x41
/* 622B984 8007BC54 03004014 */  bnez       $v0, .Llevel_26_8007BC64
/* 622B988 8007BC58 40101000 */   sll       $v0, $s0, 1
/* 622B98C 8007BC5C 40001024 */  addiu      $s0, $zero, 0x40
/* 622B990 8007BC60 40101000 */  sll        $v0, $s0, 1
.Llevel_26_8007BC64:
/* 622B994 8007BC64 21105000 */  addu       $v0, $v0, $s0
/* 622B998 8007BC68 40110200 */  sll        $v0, $v0, 5
/* 622B99C 8007BC6C 43A00200 */  sra        $s4, $v0, 1
/* 622B9A0 8007BC70 29EF0108 */  j          .Llevel_26_8007BCA4
/* 622B9A4 8007BC74 21980000 */   addu      $s3, $zero, $zero
.Llevel_26_8007BC78:
/* 622B9A8 8007BC78 0400628E */  lw         $v0, 0x4($s3)
/* 622B9AC 8007BC7C 00000000 */  nop
/* 622B9B0 8007BC80 40180200 */  sll        $v1, $v0, 1
/* 622B9B4 8007BC84 21186200 */  addu       $v1, $v1, $v0
/* 622B9B8 8007BC88 40190300 */  sll        $v1, $v1, 5
/* 622B9BC 8007BC8C 43A00300 */  sra        $s4, $v1, 1
/* 622B9C0 8007BC90 23100202 */  subu       $v0, $s0, $v0
/* 622B9C4 8007BC94 40180200 */  sll        $v1, $v0, 1
/* 622B9C8 8007BC98 21186200 */  addu       $v1, $v1, $v0
/* 622B9CC 8007BC9C 40190300 */  sll        $v1, $v1, 5
/* 622B9D0 8007BCA0 43980300 */  sra        $s3, $v1, 1
.Llevel_26_8007BCA4:
/* 622B9D4 8007BCA4 2A107402 */  slt        $v0, $s3, $s4
/* 622B9D8 8007BCA8 2E004010 */  beqz       $v0, .Llevel_26_8007BD64
/* 622B9DC 8007BCAC 4000B127 */   addiu     $s1, $sp, 0x40
/* 622B9E0 8007BCB0 21202002 */  addu       $a0, $s1, $zero
/* 622B9E4 8007BCB4 0780053C */  lui        $a1, %hi(D_80070328)
/* 622B9E8 8007BCB8 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 622B9EC 8007BCBC 723C010C */  jal        func_8004F1C8
/* 622B9F0 8007BCC0 0C004626 */   addiu     $a2, $s2, 0xC
/* 622B9F4 8007BCC4 5000B027 */  addiu      $s0, $sp, 0x50
/* 622B9F8 8007BCC8 21200002 */  addu       $a0, $s0, $zero
/* 622B9FC 8007BCCC 3D3B010C */  jal        func_8004ECF4
/* 622BA00 8007BCD0 20004526 */   addiu     $a1, $s2, 0x20
/* 622BA04 8007BCD4 21200002 */  addu       $a0, $s0, $zero
/* 622BA08 8007BCD8 21282002 */  addu       $a1, $s1, $zero
/* 622BA0C 8007BCDC 5B3B010C */  jal        func_8004ED6C
/* 622BA10 8007BCE0 2130A000 */   addu      $a2, $a1, $zero
/* 622BA14 8007BCE4 4000A38F */  lw         $v1, 0x40($sp)
/* 622BA18 8007BCE8 00000000 */  nop
/* 622BA1C 8007BCEC 2A106302 */  slt        $v0, $s3, $v1
/* 622BA20 8007BCF0 1C004010 */  beqz       $v0, .Llevel_26_8007BD64
/* 622BA24 8007BCF4 2A107400 */   slt       $v0, $v1, $s4
/* 622BA28 8007BCF8 1A004010 */  beqz       $v0, .Llevel_26_8007BD64
/* 622BA2C 8007BCFC 00000000 */   nop
/* 622BA30 8007BD00 4400A28F */  lw         $v0, 0x44($sp)
/* 622BA34 8007BD04 00000000 */  nop
/* 622BA38 8007BD08 02004104 */  bgez       $v0, .Llevel_26_8007BD14
/* 622BA3C 8007BD0C 00000000 */   nop
/* 622BA40 8007BD10 23100200 */  negu       $v0, $v0
.Llevel_26_8007BD14:
/* 622BA44 8007BD14 00024228 */  slti       $v0, $v0, 0x200
/* 622BA48 8007BD18 12004010 */  beqz       $v0, .Llevel_26_8007BD64
/* 622BA4C 8007BD1C 00000000 */   nop
/* 622BA50 8007BD20 4800A28F */  lw         $v0, 0x48($sp)
/* 622BA54 8007BD24 00000000 */  nop
/* 622BA58 8007BD28 02004104 */  bgez       $v0, .Llevel_26_8007BD34
/* 622BA5C 8007BD2C 00000000 */   nop
/* 622BA60 8007BD30 23100200 */  negu       $v0, $v0
.Llevel_26_8007BD34:
/* 622BA64 8007BD34 00024228 */  slti       $v0, $v0, 0x200
/* 622BA68 8007BD38 0A004010 */  beqz       $v0, .Llevel_26_8007BD64
/* 622BA6C 8007BD3C 00000000 */   nop
/* 622BA70 8007BD40 0780023C */  lui        $v0, %hi(D_80070328 + 0x24)
/* 622BA74 8007BD44 4C03428C */  lw         $v0, %lo(D_80070328 + 0x24)($v0)
/* 622BA78 8007BD48 00000000 */  nop
/* 622BA7C 8007BD4C 0E004234 */  ori        $v0, $v0, 0xE
/* 622BA80 8007BD50 0780013C */  lui        $at, %hi(D_80070328 + 0x24)
/* 622BA84 8007BD54 4C0322AC */  sw         $v0, %lo(D_80070328 + 0x24)($at)
/* 622BA88 8007BD58 46004292 */  lbu        $v0, 0x46($s2)
/* 622BA8C 8007BD5C 0780013C */  lui        $at, %hi(D_80070328 + 0x298)
/* 622BA90 8007BD60 C00522AC */  sw         $v0, %lo(D_80070328 + 0x298)($at)
.Llevel_26_8007BD64:
/* 622BA94 8007BD64 7C00BF8F */  lw         $ra, 0x7C($sp)
/* 622BA98 8007BD68 7800B48F */  lw         $s4, 0x78($sp)
/* 622BA9C 8007BD6C 7400B38F */  lw         $s3, 0x74($sp)
/* 622BAA0 8007BD70 7000B28F */  lw         $s2, 0x70($sp)
/* 622BAA4 8007BD74 6C00B18F */  lw         $s1, 0x6C($sp)
/* 622BAA8 8007BD78 6800B08F */  lw         $s0, 0x68($sp)
/* 622BAAC 8007BD7C 8000BD27 */  addiu      $sp, $sp, 0x80
/* 622BAB0 8007BD80 0800E003 */  jr         $ra
/* 622BAB4 8007BD84 00000000 */   nop
.size func_level_26_8007B99C, . - func_level_26_8007B99C
