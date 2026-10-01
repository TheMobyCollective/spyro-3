.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_38_8007C900
/* 7C3B630 8007C900 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 7C3B634 8007C904 2000B0AF */  sw         $s0, 0x20($sp)
/* 7C3B638 8007C908 21808000 */  addu       $s0, $a0, $zero
/* 7C3B63C 8007C90C 01000224 */  addiu      $v0, $zero, 0x1
/* 7C3B640 8007C910 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 7C3B644 8007C914 2800B2AF */  sw         $s2, 0x28($sp)
/* 7C3B648 8007C918 2400B1AF */  sw         $s1, 0x24($sp)
/* 7C3B64C 8007C91C 48000392 */  lbu        $v1, 0x48($s0)
/* 7C3B650 8007C920 0000128E */  lw         $s2, 0x0($s0)
/* 7C3B654 8007C924 71006210 */  beq        $v1, $v0, .Llevel_38_8007CAEC
/* 7C3B658 8007C928 02006228 */   slti      $v0, $v1, 0x2
/* 7C3B65C 8007C92C 05004010 */  beqz       $v0, .Llevel_38_8007C944
/* 7C3B660 8007C930 00000000 */   nop
/* 7C3B664 8007C934 0A006010 */  beqz       $v1, .Llevel_38_8007C960
/* 7C3B668 8007C938 7F000224 */   addiu     $v0, $zero, 0x7F
/* 7C3B66C 8007C93C F3F20108 */  j          .Llevel_38_8007CBCC
/* 7C3B670 8007C940 00000000 */   nop
.Llevel_38_8007C944:
/* 7C3B674 8007C944 02000224 */  addiu      $v0, $zero, 0x2
/* 7C3B678 8007C948 82006210 */  beq        $v1, $v0, .Llevel_38_8007CB54
/* 7C3B67C 8007C94C 03000224 */   addiu     $v0, $zero, 0x3
/* 7C3B680 8007C950 93006210 */  beq        $v1, $v0, .Llevel_38_8007CBA0
/* 7C3B684 8007C954 00000000 */   nop
/* 7C3B688 8007C958 F3F20108 */  j          .Llevel_38_8007CBCC
/* 7C3B68C 8007C95C 00000000 */   nop
.Llevel_38_8007C960:
/* 7C3B690 8007C960 410000A2 */  sb         $zero, 0x41($s0)
/* 7C3B694 8007C964 4C0000A2 */  sb         $zero, 0x4C($s0)
/* 7C3B698 8007C968 4D0000A2 */  sb         $zero, 0x4D($s0)
/* 7C3B69C 8007C96C 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 7C3B6A0 8007C970 0000438E */  lw         $v1, 0x0($s2)
/* 7C3B6A4 8007C974 00000000 */  nop
/* 7C3B6A8 8007C978 40100300 */  sll        $v0, $v1, 1
/* 7C3B6AC 8007C97C 21104300 */  addu       $v0, $v0, $v1
/* 7C3B6B0 8007C980 80100200 */  sll        $v0, $v0, 2
/* 7C3B6B4 8007C984 23104300 */  subu       $v0, $v0, $v1
/* 7C3B6B8 8007C988 0780033C */  lui        $v1, %hi(D_8006C550)
/* 7C3B6BC 8007C98C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 7C3B6C0 8007C990 C0100200 */  sll        $v0, $v0, 3
/* 7C3B6C4 8007C994 21104300 */  addu       $v0, $v0, $v1
/* 7C3B6C8 8007C998 48004290 */  lbu        $v0, 0x48($v0)
/* 7C3B6CC 8007C99C 00000000 */  nop
/* 7C3B6D0 8007C9A0 80004230 */  andi       $v0, $v0, 0x80
/* 7C3B6D4 8007C9A4 89004010 */  beqz       $v0, .Llevel_38_8007CBCC
/* 7C3B6D8 8007C9A8 84000424 */   addiu     $a0, $zero, 0x84
/* 7C3B6DC 8007C9AC 0400428E */  lw         $v0, 0x4($s2)
/* 7C3B6E0 8007C9B0 00000000 */  nop
/* 7C3B6E4 8007C9B4 40280200 */  sll        $a1, $v0, 1
/* 7C3B6E8 8007C9B8 2128A200 */  addu       $a1, $a1, $v0
/* 7C3B6EC 8007C9BC 80280500 */  sll        $a1, $a1, 2
/* 7C3B6F0 8007C9C0 2328A200 */  subu       $a1, $a1, $v0
/* 7C3B6F4 8007C9C4 C0280500 */  sll        $a1, $a1, 3
/* 7C3B6F8 8007C9C8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7C3B6FC 8007C9CC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7C3B700 8007C9D0 00000000 */  nop
/* 7C3B704 8007C9D4 09F84000 */  jalr       $v0
/* 7C3B708 8007C9D8 21286500 */   addu      $a1, $v1, $a1
/* 7C3B70C 8007C9DC 21884000 */  addu       $s1, $v0, $zero
/* 7C3B710 8007C9E0 7A002012 */  beqz       $s1, .Llevel_38_8007CBCC
/* 7C3B714 8007C9E4 1000A427 */   addiu     $a0, $sp, 0x10
/* 7C3B718 8007C9E8 0400438E */  lw         $v1, 0x4($s2)
/* 7C3B71C 8007C9EC 00000000 */  nop
/* 7C3B720 8007C9F0 40100300 */  sll        $v0, $v1, 1
/* 7C3B724 8007C9F4 21104300 */  addu       $v0, $v0, $v1
/* 7C3B728 8007C9F8 80100200 */  sll        $v0, $v0, 2
/* 7C3B72C 8007C9FC 23104300 */  subu       $v0, $v0, $v1
/* 7C3B730 8007CA00 0780033C */  lui        $v1, %hi(D_8006C550)
/* 7C3B734 8007CA04 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 7C3B738 8007CA08 C0100200 */  sll        $v0, $v0, 3
/* 7C3B73C 8007CA0C 21104300 */  addu       $v0, $v0, $v1
/* 7C3B740 8007CA10 46004290 */  lbu        $v0, 0x46($v0)
/* 7C3B744 8007CA14 0000238E */  lw         $v1, 0x0($s1)
/* 7C3B748 8007CA18 460022A2 */  sb         $v0, 0x46($s1)
/* 7C3B74C 8007CA1C 01000224 */  addiu      $v0, $zero, 0x1
/* 7C3B750 8007CA20 000060A4 */  sh         $zero, 0x0($v1)
/* 7C3B754 8007CA24 480022A2 */  sb         $v0, 0x48($s1)
/* 7C3B758 8007CA28 480002A2 */  sb         $v0, 0x48($s0)
/* 7C3B75C 8007CA2C 080051AE */  sw         $s1, 0x8($s2)
/* 7C3B760 8007CA30 46002292 */  lbu        $v0, 0x46($s1)
/* 7C3B764 8007CA34 00000000 */  nop
/* 7C3B768 8007CA38 40100200 */  sll        $v0, $v0, 1
/* 7C3B76C 8007CA3C 0680013C */  lui        $at, %hi(D_80065920)
/* 7C3B770 8007CA40 21082200 */  addu       $at, $at, $v0
/* 7C3B774 8007CA44 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 7C3B778 8007CA48 00000000 */  nop
/* 7C3B77C 8007CA4C 40100300 */  sll        $v0, $v1, 1
/* 7C3B780 8007CA50 21104300 */  addu       $v0, $v0, $v1
/* 7C3B784 8007CA54 80100200 */  sll        $v0, $v0, 2
/* 7C3B788 8007CA58 21104300 */  addu       $v0, $v0, $v1
/* 7C3B78C 8007CA5C 43110200 */  sra        $v0, $v0, 5
/* 7C3B790 8007CA60 1000A2AF */  sw         $v0, 0x10($sp)
/* 7C3B794 8007CA64 46002292 */  lbu        $v0, 0x46($s1)
/* 7C3B798 8007CA68 21288000 */  addu       $a1, $a0, $zero
/* 7C3B79C 8007CA6C 40100200 */  sll        $v0, $v0, 1
/* 7C3B7A0 8007CA70 0680013C */  lui        $at, %hi(D_800658A0)
/* 7C3B7A4 8007CA74 21082200 */  addu       $at, $at, $v0
/* 7C3B7A8 8007CA78 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 7C3B7AC 8007CA7C 0780023C */  lui        $v0, %hi(D_80070328 + 0x44)
/* 7C3B7B0 8007CA80 6C03428C */  lw         $v0, %lo(D_80070328 + 0x44)($v0)
/* 7C3B7B4 8007CA84 0C002626 */  addiu      $a2, $s1, 0xC
/* 7C3B7B8 8007CA88 1800A0AF */  sw         $zero, 0x18($sp)
/* 7C3B7BC 8007CA8C 1800A2AF */  sw         $v0, 0x18($sp)
/* 7C3B7C0 8007CA90 40100300 */  sll        $v0, $v1, 1
/* 7C3B7C4 8007CA94 21104300 */  addu       $v0, $v0, $v1
/* 7C3B7C8 8007CA98 80100200 */  sll        $v0, $v0, 2
/* 7C3B7CC 8007CA9C 21104300 */  addu       $v0, $v0, $v1
/* 7C3B7D0 8007CAA0 43110200 */  sra        $v0, $v0, 5
/* 7C3B7D4 8007CAA4 653C010C */  jal        func_8004F194
/* 7C3B7D8 8007CAA8 1400A2AF */   sw        $v0, 0x14($sp)
/* 7C3B7DC 8007CAAC 1000A427 */  addiu      $a0, $sp, 0x10
/* 7C3B7E0 8007CAB0 21300000 */  addu       $a2, $zero, $zero
/* 7C3B7E4 8007CAB4 46002592 */  lbu        $a1, 0x46($s1)
/* 7C3B7E8 8007CAB8 98000724 */  addiu      $a3, $zero, 0x98
/* 7C3B7EC 8007CABC 8000A524 */  addiu      $a1, $a1, 0x80
/* 7C3B7F0 8007CAC0 514F000C */  jal        func_80013D44
/* 7C3B7F4 8007CAC4 FF00A530 */   andi      $a1, $a1, 0xFF
/* 7C3B7F8 8007CAC8 0780023C */  lui        $v0, %hi(D_80070328 + 0x280)
/* 7C3B7FC 8007CACC A805428C */  lw         $v0, %lo(D_80070328 + 0x280)($v0)
/* 7C3B800 8007CAD0 00000000 */  nop
/* 7C3B804 8007CAD4 3D004104 */  bgez       $v0, .Llevel_38_8007CBCC
/* 7C3B808 8007CAD8 00000000 */   nop
/* 7C3B80C 8007CADC 0780013C */  lui        $at, %hi(D_80070328 + 0x280)
/* 7C3B810 8007CAE0 A80520AC */  sw         $zero, %lo(D_80070328 + 0x280)($at)
/* 7C3B814 8007CAE4 F3F20108 */  j          .Llevel_38_8007CBCC
/* 7C3B818 8007CAE8 00000000 */   nop
.Llevel_38_8007CAEC:
/* 7C3B81C 8007CAEC 0800428E */  lw         $v0, 0x8($s2)
/* 7C3B820 8007CAF0 00000000 */  nop
/* 7C3B824 8007CAF4 48004290 */  lbu        $v0, 0x48($v0)
/* 7C3B828 8007CAF8 00000000 */  nop
/* 7C3B82C 8007CAFC 80004230 */  andi       $v0, $v0, 0x80
/* 7C3B830 8007CB00 32004010 */  beqz       $v0, .Llevel_38_8007CBCC
/* 7C3B834 8007CB04 0F000224 */   addiu     $v0, $zero, 0xF
/* 7C3B838 8007CB08 0780033C */  lui        $v1, %hi(D_8006E344)
/* 7C3B83C 8007CB0C 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 7C3B840 8007CB10 00000000 */  nop
/* 7C3B844 8007CB14 2D006210 */  beq        $v1, $v0, .Llevel_38_8007CBCC
/* 7C3B848 8007CB18 02000224 */   addiu     $v0, $zero, 0x2
/* 7C3B84C 8007CB1C 480002A2 */  sb         $v0, 0x48($s0)
/* 7C3B850 8007CB20 48001026 */  addiu      $s0, $s0, 0x48
/* 7C3B854 8007CB24 21200002 */  addu       $a0, $s0, $zero
/* 7C3B858 8007CB28 0780063C */  lui        $a2, %hi(D_8006D088)
/* 7C3B85C 8007CB2C 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 7C3B860 8007CB30 EDED000C */  jal        func_8003B7B4
/* 7C3B864 8007CB34 01000524 */   addiu     $a1, $zero, 0x1
/* 7C3B868 8007CB38 21200002 */  addu       $a0, $s0, $zero
/* 7C3B86C 8007CB3C 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 7C3B870 8007CB40 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 7C3B874 8007CB44 EDED000C */  jal        func_8003B7B4
/* 7C3B878 8007CB48 01000524 */   addiu     $a1, $zero, 0x1
/* 7C3B87C 8007CB4C F3F20108 */  j          .Llevel_38_8007CBCC
/* 7C3B880 8007CB50 00000000 */   nop
.Llevel_38_8007CB54:
/* 7C3B884 8007CB54 5B020424 */  addiu      $a0, $zero, 0x25B
/* 7C3B888 8007CB58 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7C3B88C 8007CB5C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7C3B890 8007CB60 00000000 */  nop
/* 7C3B894 8007CB64 09F84000 */  jalr       $v0
/* 7C3B898 8007CB68 21280002 */   addu      $a1, $s0, $zero
/* 7C3B89C 8007CB6C 1400438C */  lw         $v1, 0x14($v0)
/* 7C3B8A0 8007CB70 450040A0 */  sb         $zero, 0x45($v0)
/* 7C3B8A4 8007CB74 00FE6324 */  addiu      $v1, $v1, -0x200
/* 7C3B8A8 8007CB78 140043AC */  sw         $v1, 0x14($v0)
/* 7C3B8AC 8007CB7C 01000324 */  addiu      $v1, $zero, 0x1
/* 7C3B8B0 8007CB80 20000224 */  addiu      $v0, $zero, 0x20
/* 7C3B8B4 8007CB84 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 7C3B8B8 8007CB88 40000224 */  addiu      $v0, $zero, 0x40
/* 7C3B8BC 8007CB8C 450002A2 */  sb         $v0, 0x45($s0)
/* 7C3B8C0 8007CB90 03000224 */  addiu      $v0, $zero, 0x3
/* 7C3B8C4 8007CB94 410003A2 */  sb         $v1, 0x41($s0)
/* 7C3B8C8 8007CB98 4D0003A2 */  sb         $v1, 0x4D($s0)
/* 7C3B8CC 8007CB9C 480002A2 */  sb         $v0, 0x48($s0)
.Llevel_38_8007CBA0:
/* 7C3B8D0 8007CBA0 0780053C */  lui        $a1, %hi(D_80070328)
/* 7C3B8D4 8007CBA4 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 7C3B8D8 8007CBA8 CD3C010C */  jal        func_8004F334
/* 7C3B8DC 8007CBAC 0C000426 */   addiu     $a0, $s0, 0xC
/* 7C3B8E0 8007CBB0 00034228 */  slti       $v0, $v0, 0x300
/* 7C3B8E4 8007CBB4 05004010 */  beqz       $v0, .Llevel_38_8007CBCC
/* 7C3B8E8 8007CBB8 21200000 */   addu      $a0, $zero, $zero
/* 7C3B8EC 8007CBBC 0780053C */  lui        $a1, %hi(D_8006C5BC)
/* 7C3B8F0 8007CBC0 BCC5A58C */  lw         $a1, %lo(D_8006C5BC)($a1)
/* 7C3B8F4 8007CBC4 2F61010C */  jal        WarpToLevel
/* 7C3B8F8 8007CBC8 F8FFA524 */   addiu     $a1, $a1, -0x8
.Llevel_38_8007CBCC:
/* 7C3B8FC 8007CBCC 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 7C3B900 8007CBD0 2800B28F */  lw         $s2, 0x28($sp)
/* 7C3B904 8007CBD4 2400B18F */  lw         $s1, 0x24($sp)
/* 7C3B908 8007CBD8 2000B08F */  lw         $s0, 0x20($sp)
/* 7C3B90C 8007CBDC 3000BD27 */  addiu      $sp, $sp, 0x30
/* 7C3B910 8007CBE0 0800E003 */  jr         $ra
/* 7C3B914 8007CBE4 00000000 */   nop
.size func_level_38_8007C900, . - func_level_38_8007C900
