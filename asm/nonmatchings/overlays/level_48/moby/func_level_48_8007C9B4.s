.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_48_8007C9B4
/* 926F6E4 8007C9B4 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 926F6E8 8007C9B8 2000B0AF */  sw         $s0, 0x20($sp)
/* 926F6EC 8007C9BC 21808000 */  addu       $s0, $a0, $zero
/* 926F6F0 8007C9C0 01000224 */  addiu      $v0, $zero, 0x1
/* 926F6F4 8007C9C4 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 926F6F8 8007C9C8 2800B2AF */  sw         $s2, 0x28($sp)
/* 926F6FC 8007C9CC 2400B1AF */  sw         $s1, 0x24($sp)
/* 926F700 8007C9D0 48000392 */  lbu        $v1, 0x48($s0)
/* 926F704 8007C9D4 0000128E */  lw         $s2, 0x0($s0)
/* 926F708 8007C9D8 71006210 */  beq        $v1, $v0, .Llevel_48_8007CBA0
/* 926F70C 8007C9DC 02006228 */   slti      $v0, $v1, 0x2
/* 926F710 8007C9E0 05004010 */  beqz       $v0, .Llevel_48_8007C9F8
/* 926F714 8007C9E4 00000000 */   nop
/* 926F718 8007C9E8 0A006010 */  beqz       $v1, .Llevel_48_8007CA14
/* 926F71C 8007C9EC 7F000224 */   addiu     $v0, $zero, 0x7F
/* 926F720 8007C9F0 20F30108 */  j          .Llevel_48_8007CC80
/* 926F724 8007C9F4 00000000 */   nop
.Llevel_48_8007C9F8:
/* 926F728 8007C9F8 02000224 */  addiu      $v0, $zero, 0x2
/* 926F72C 8007C9FC 82006210 */  beq        $v1, $v0, .Llevel_48_8007CC08
/* 926F730 8007CA00 03000224 */   addiu     $v0, $zero, 0x3
/* 926F734 8007CA04 93006210 */  beq        $v1, $v0, .Llevel_48_8007CC54
/* 926F738 8007CA08 00000000 */   nop
/* 926F73C 8007CA0C 20F30108 */  j          .Llevel_48_8007CC80
/* 926F740 8007CA10 00000000 */   nop
.Llevel_48_8007CA14:
/* 926F744 8007CA14 410000A2 */  sb         $zero, 0x41($s0)
/* 926F748 8007CA18 4C0000A2 */  sb         $zero, 0x4C($s0)
/* 926F74C 8007CA1C 4D0000A2 */  sb         $zero, 0x4D($s0)
/* 926F750 8007CA20 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 926F754 8007CA24 0000438E */  lw         $v1, 0x0($s2)
/* 926F758 8007CA28 00000000 */  nop
/* 926F75C 8007CA2C 40100300 */  sll        $v0, $v1, 1
/* 926F760 8007CA30 21104300 */  addu       $v0, $v0, $v1
/* 926F764 8007CA34 80100200 */  sll        $v0, $v0, 2
/* 926F768 8007CA38 23104300 */  subu       $v0, $v0, $v1
/* 926F76C 8007CA3C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 926F770 8007CA40 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 926F774 8007CA44 C0100200 */  sll        $v0, $v0, 3
/* 926F778 8007CA48 21104300 */  addu       $v0, $v0, $v1
/* 926F77C 8007CA4C 48004290 */  lbu        $v0, 0x48($v0)
/* 926F780 8007CA50 00000000 */  nop
/* 926F784 8007CA54 80004230 */  andi       $v0, $v0, 0x80
/* 926F788 8007CA58 89004010 */  beqz       $v0, .Llevel_48_8007CC80
/* 926F78C 8007CA5C 84000424 */   addiu     $a0, $zero, 0x84
/* 926F790 8007CA60 0400428E */  lw         $v0, 0x4($s2)
/* 926F794 8007CA64 00000000 */  nop
/* 926F798 8007CA68 40280200 */  sll        $a1, $v0, 1
/* 926F79C 8007CA6C 2128A200 */  addu       $a1, $a1, $v0
/* 926F7A0 8007CA70 80280500 */  sll        $a1, $a1, 2
/* 926F7A4 8007CA74 2328A200 */  subu       $a1, $a1, $v0
/* 926F7A8 8007CA78 C0280500 */  sll        $a1, $a1, 3
/* 926F7AC 8007CA7C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 926F7B0 8007CA80 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 926F7B4 8007CA84 00000000 */  nop
/* 926F7B8 8007CA88 09F84000 */  jalr       $v0
/* 926F7BC 8007CA8C 21286500 */   addu      $a1, $v1, $a1
/* 926F7C0 8007CA90 21884000 */  addu       $s1, $v0, $zero
/* 926F7C4 8007CA94 7A002012 */  beqz       $s1, .Llevel_48_8007CC80
/* 926F7C8 8007CA98 1000A427 */   addiu     $a0, $sp, 0x10
/* 926F7CC 8007CA9C 0400438E */  lw         $v1, 0x4($s2)
/* 926F7D0 8007CAA0 00000000 */  nop
/* 926F7D4 8007CAA4 40100300 */  sll        $v0, $v1, 1
/* 926F7D8 8007CAA8 21104300 */  addu       $v0, $v0, $v1
/* 926F7DC 8007CAAC 80100200 */  sll        $v0, $v0, 2
/* 926F7E0 8007CAB0 23104300 */  subu       $v0, $v0, $v1
/* 926F7E4 8007CAB4 0780033C */  lui        $v1, %hi(D_8006C550)
/* 926F7E8 8007CAB8 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 926F7EC 8007CABC C0100200 */  sll        $v0, $v0, 3
/* 926F7F0 8007CAC0 21104300 */  addu       $v0, $v0, $v1
/* 926F7F4 8007CAC4 46004290 */  lbu        $v0, 0x46($v0)
/* 926F7F8 8007CAC8 0000238E */  lw         $v1, 0x0($s1)
/* 926F7FC 8007CACC 460022A2 */  sb         $v0, 0x46($s1)
/* 926F800 8007CAD0 01000224 */  addiu      $v0, $zero, 0x1
/* 926F804 8007CAD4 000060A4 */  sh         $zero, 0x0($v1)
/* 926F808 8007CAD8 480022A2 */  sb         $v0, 0x48($s1)
/* 926F80C 8007CADC 480002A2 */  sb         $v0, 0x48($s0)
/* 926F810 8007CAE0 080051AE */  sw         $s1, 0x8($s2)
/* 926F814 8007CAE4 46002292 */  lbu        $v0, 0x46($s1)
/* 926F818 8007CAE8 00000000 */  nop
/* 926F81C 8007CAEC 40100200 */  sll        $v0, $v0, 1
/* 926F820 8007CAF0 0680013C */  lui        $at, %hi(D_80065920)
/* 926F824 8007CAF4 21082200 */  addu       $at, $at, $v0
/* 926F828 8007CAF8 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 926F82C 8007CAFC 00000000 */  nop
/* 926F830 8007CB00 40100300 */  sll        $v0, $v1, 1
/* 926F834 8007CB04 21104300 */  addu       $v0, $v0, $v1
/* 926F838 8007CB08 80100200 */  sll        $v0, $v0, 2
/* 926F83C 8007CB0C 21104300 */  addu       $v0, $v0, $v1
/* 926F840 8007CB10 43110200 */  sra        $v0, $v0, 5
/* 926F844 8007CB14 1000A2AF */  sw         $v0, 0x10($sp)
/* 926F848 8007CB18 46002292 */  lbu        $v0, 0x46($s1)
/* 926F84C 8007CB1C 21288000 */  addu       $a1, $a0, $zero
/* 926F850 8007CB20 40100200 */  sll        $v0, $v0, 1
/* 926F854 8007CB24 0680013C */  lui        $at, %hi(D_800658A0)
/* 926F858 8007CB28 21082200 */  addu       $at, $at, $v0
/* 926F85C 8007CB2C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 926F860 8007CB30 0780023C */  lui        $v0, %hi(D_80070328 + 0x44)
/* 926F864 8007CB34 6C03428C */  lw         $v0, %lo(D_80070328 + 0x44)($v0)
/* 926F868 8007CB38 0C002626 */  addiu      $a2, $s1, 0xC
/* 926F86C 8007CB3C 1800A0AF */  sw         $zero, 0x18($sp)
/* 926F870 8007CB40 1800A2AF */  sw         $v0, 0x18($sp)
/* 926F874 8007CB44 40100300 */  sll        $v0, $v1, 1
/* 926F878 8007CB48 21104300 */  addu       $v0, $v0, $v1
/* 926F87C 8007CB4C 80100200 */  sll        $v0, $v0, 2
/* 926F880 8007CB50 21104300 */  addu       $v0, $v0, $v1
/* 926F884 8007CB54 43110200 */  sra        $v0, $v0, 5
/* 926F888 8007CB58 653C010C */  jal        func_8004F194
/* 926F88C 8007CB5C 1400A2AF */   sw        $v0, 0x14($sp)
/* 926F890 8007CB60 1000A427 */  addiu      $a0, $sp, 0x10
/* 926F894 8007CB64 21300000 */  addu       $a2, $zero, $zero
/* 926F898 8007CB68 46002592 */  lbu        $a1, 0x46($s1)
/* 926F89C 8007CB6C 98000724 */  addiu      $a3, $zero, 0x98
/* 926F8A0 8007CB70 8000A524 */  addiu      $a1, $a1, 0x80
/* 926F8A4 8007CB74 514F000C */  jal        func_80013D44
/* 926F8A8 8007CB78 FF00A530 */   andi      $a1, $a1, 0xFF
/* 926F8AC 8007CB7C 0780023C */  lui        $v0, %hi(D_80070328 + 0x280)
/* 926F8B0 8007CB80 A805428C */  lw         $v0, %lo(D_80070328 + 0x280)($v0)
/* 926F8B4 8007CB84 00000000 */  nop
/* 926F8B8 8007CB88 3D004104 */  bgez       $v0, .Llevel_48_8007CC80
/* 926F8BC 8007CB8C 00000000 */   nop
/* 926F8C0 8007CB90 0780013C */  lui        $at, %hi(D_80070328 + 0x280)
/* 926F8C4 8007CB94 A80520AC */  sw         $zero, %lo(D_80070328 + 0x280)($at)
/* 926F8C8 8007CB98 20F30108 */  j          .Llevel_48_8007CC80
/* 926F8CC 8007CB9C 00000000 */   nop
.Llevel_48_8007CBA0:
/* 926F8D0 8007CBA0 0800428E */  lw         $v0, 0x8($s2)
/* 926F8D4 8007CBA4 00000000 */  nop
/* 926F8D8 8007CBA8 48004290 */  lbu        $v0, 0x48($v0)
/* 926F8DC 8007CBAC 00000000 */  nop
/* 926F8E0 8007CBB0 80004230 */  andi       $v0, $v0, 0x80
/* 926F8E4 8007CBB4 32004010 */  beqz       $v0, .Llevel_48_8007CC80
/* 926F8E8 8007CBB8 0F000224 */   addiu     $v0, $zero, 0xF
/* 926F8EC 8007CBBC 0780033C */  lui        $v1, %hi(D_8006E344)
/* 926F8F0 8007CBC0 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 926F8F4 8007CBC4 00000000 */  nop
/* 926F8F8 8007CBC8 2D006210 */  beq        $v1, $v0, .Llevel_48_8007CC80
/* 926F8FC 8007CBCC 02000224 */   addiu     $v0, $zero, 0x2
/* 926F900 8007CBD0 480002A2 */  sb         $v0, 0x48($s0)
/* 926F904 8007CBD4 48001026 */  addiu      $s0, $s0, 0x48
/* 926F908 8007CBD8 21200002 */  addu       $a0, $s0, $zero
/* 926F90C 8007CBDC 0780063C */  lui        $a2, %hi(D_8006D088)
/* 926F910 8007CBE0 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 926F914 8007CBE4 EDED000C */  jal        func_8003B7B4
/* 926F918 8007CBE8 01000524 */   addiu     $a1, $zero, 0x1
/* 926F91C 8007CBEC 21200002 */  addu       $a0, $s0, $zero
/* 926F920 8007CBF0 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 926F924 8007CBF4 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 926F928 8007CBF8 EDED000C */  jal        func_8003B7B4
/* 926F92C 8007CBFC 01000524 */   addiu     $a1, $zero, 0x1
/* 926F930 8007CC00 20F30108 */  j          .Llevel_48_8007CC80
/* 926F934 8007CC04 00000000 */   nop
.Llevel_48_8007CC08:
/* 926F938 8007CC08 5B020424 */  addiu      $a0, $zero, 0x25B
/* 926F93C 8007CC0C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 926F940 8007CC10 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 926F944 8007CC14 00000000 */  nop
/* 926F948 8007CC18 09F84000 */  jalr       $v0
/* 926F94C 8007CC1C 21280002 */   addu      $a1, $s0, $zero
/* 926F950 8007CC20 1400438C */  lw         $v1, 0x14($v0)
/* 926F954 8007CC24 450040A0 */  sb         $zero, 0x45($v0)
/* 926F958 8007CC28 00FE6324 */  addiu      $v1, $v1, -0x200
/* 926F95C 8007CC2C 140043AC */  sw         $v1, 0x14($v0)
/* 926F960 8007CC30 01000324 */  addiu      $v1, $zero, 0x1
/* 926F964 8007CC34 20000224 */  addiu      $v0, $zero, 0x20
/* 926F968 8007CC38 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 926F96C 8007CC3C 40000224 */  addiu      $v0, $zero, 0x40
/* 926F970 8007CC40 450002A2 */  sb         $v0, 0x45($s0)
/* 926F974 8007CC44 03000224 */  addiu      $v0, $zero, 0x3
/* 926F978 8007CC48 410003A2 */  sb         $v1, 0x41($s0)
/* 926F97C 8007CC4C 4D0003A2 */  sb         $v1, 0x4D($s0)
/* 926F980 8007CC50 480002A2 */  sb         $v0, 0x48($s0)
.Llevel_48_8007CC54:
/* 926F984 8007CC54 0780053C */  lui        $a1, %hi(D_80070328)
/* 926F988 8007CC58 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 926F98C 8007CC5C CD3C010C */  jal        func_8004F334
/* 926F990 8007CC60 0C000426 */   addiu     $a0, $s0, 0xC
/* 926F994 8007CC64 00034228 */  slti       $v0, $v0, 0x300
/* 926F998 8007CC68 05004010 */  beqz       $v0, .Llevel_48_8007CC80
/* 926F99C 8007CC6C 21200000 */   addu      $a0, $zero, $zero
/* 926F9A0 8007CC70 0780053C */  lui        $a1, %hi(D_8006C5BC)
/* 926F9A4 8007CC74 BCC5A58C */  lw         $a1, %lo(D_8006C5BC)($a1)
/* 926F9A8 8007CC78 2F61010C */  jal        WarpToLevel
/* 926F9AC 8007CC7C F8FFA524 */   addiu     $a1, $a1, -0x8
.Llevel_48_8007CC80:
/* 926F9B0 8007CC80 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 926F9B4 8007CC84 2800B28F */  lw         $s2, 0x28($sp)
/* 926F9B8 8007CC88 2400B18F */  lw         $s1, 0x24($sp)
/* 926F9BC 8007CC8C 2000B08F */  lw         $s0, 0x20($sp)
/* 926F9C0 8007CC90 3000BD27 */  addiu      $sp, $sp, 0x30
/* 926F9C4 8007CC94 0800E003 */  jr         $ra
/* 926F9C8 8007CC98 00000000 */   nop
.size func_level_48_8007C9B4, . - func_level_48_8007C9B4
