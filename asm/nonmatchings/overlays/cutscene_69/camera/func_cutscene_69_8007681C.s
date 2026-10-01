.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_69_8007681C
/* 19EFD4C 8007681C 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 19EFD50 80076820 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 19EFD54 80076824 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 19EFD58 80076828 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 19EFD5C 8007682C 0780113C */  lui        $s1, %hi(D_8006EDD8)
/* 19EFD60 80076830 D8ED3126 */  addiu      $s1, $s1, %lo(D_8006EDD8)
/* 19EFD64 80076834 2400BFAF */  sw         $ra, 0x24($sp)
/* 19EFD68 80076838 2000B2AF */  sw         $s2, 0x20($sp)
/* 19EFD6C 8007683C 1800B0AF */  sw         $s0, 0x18($sp)
/* 19EFD70 80076840 000024AE */  sw         $a0, 0x0($s1)
/* 19EFD74 80076844 40180200 */  sll        $v1, $v0, 1
/* 19EFD78 80076848 21186200 */  addu       $v1, $v1, $v0
/* 19EFD7C 8007684C C0180300 */  sll        $v1, $v1, 3
/* 19EFD80 80076850 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x44)
/* 19EFD84 80076854 21082300 */  addu       $at, $at, $v1
/* 19EFD88 80076858 1CD9228C */  lw         $v0, %lo(D_8006D8D8 + 0x44)($at)
/* 19EFD8C 8007685C 00000000 */  nop
/* 19EFD90 80076860 03004014 */  bnez       $v0, .Lcutscene_69_80076870
/* 19EFD94 80076864 00080624 */   addiu     $a2, $zero, 0x800
/* 19EFD98 80076868 96DA0108 */  j          .Lcutscene_69_80076A58
/* 19EFD9C 8007686C 21100000 */   addu      $v0, $zero, $zero
.Lcutscene_69_80076870:
/* 19EFDA0 80076870 0780043C */  lui        $a0, %hi(D_8006E470)
/* 19EFDA4 80076874 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 19EFDA8 80076878 0780103C */  lui        $s0, %hi(D_800722CC)
/* 19EFDAC 8007687C CC22108E */  lw         $s0, %lo(D_800722CC)($s0)
/* 19EFDB0 80076880 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 19EFDB4 80076884 21082300 */  addu       $at, $at, $v1
/* 19EFDB8 80076888 18D9278C */  lw         $a3, %lo(D_8006D8D8 + 0x40)($at)
/* 19EFDBC 8007688C 5E41010C */  jal        CDLoadSync
/* 19EFDC0 80076890 21280002 */   addu      $a1, $s0, $zero
/* 19EFDC4 80076894 0100043C */  lui        $a0, (0x1C000 >> 16)
/* 19EFDC8 80076898 06000224 */  addiu      $v0, $zero, 0x6
/* 19EFDCC 8007689C 01001224 */  addiu      $s2, $zero, 0x1
/* 19EFDD0 800768A0 0780013C */  lui        $at, %hi(D_8006E344)
/* 19EFDD4 800768A4 44E322AC */  sw         $v0, %lo(D_8006E344)($at)
/* 19EFDD8 800768A8 0780013C */  lui        $at, %hi(D_8006C718)
/* 19EFDDC 800768AC 18C732AC */  sw         $s2, %lo(D_8006C718)($at)
/* 19EFDE0 800768B0 C47E000C */  jal        func_8001FB10
/* 19EFDE4 800768B4 00C08434 */   ori       $a0, $a0, (0x1C000 & 0xFFFF)
/* 19EFDE8 800768B8 21200002 */  addu       $a0, $s0, $zero
/* 19EFDEC 800768BC E1DB010C */  jal        func_cutscene_69_80076F84
/* 19EFDF0 800768C0 01000524 */   addiu     $a1, $zero, 0x1
/* 19EFDF4 800768C4 21280000 */  addu       $a1, $zero, $zero
/* 19EFDF8 800768C8 0780043C */  lui        $a0, %hi(D_8006EE08)
/* 19EFDFC 800768CC 08EE848C */  lw         $a0, %lo(D_8006EE08)($a0)
/* 19EFE00 800768D0 0780013C */  lui        $at, %hi(D_8006EDDC)
/* 19EFE04 800768D4 DCED20AC */  sw         $zero, %lo(D_8006EDDC)($at)
/* 19EFE08 800768D8 0780013C */  lui        $at, %hi(D_8006EDE0)
/* 19EFE0C 800768DC E0ED20AC */  sw         $zero, %lo(D_8006EDE0)($at)
/* 19EFE10 800768E0 8DDC010C */  jal        func_cutscene_69_80077234
/* 19EFE14 800768E4 01000624 */   addiu     $a2, $zero, 0x1
/* 19EFE18 800768E8 0780033C */  lui        $v1, %hi(D_8006E33C)
/* 19EFE1C 800768EC 3CE36390 */  lbu        $v1, %lo(D_8006E33C)($v1)
/* 19EFE20 800768F0 0780043C */  lui        $a0, %hi(D_8006E33D)
/* 19EFE24 800768F4 3DE38490 */  lbu        $a0, %lo(D_8006E33D)($a0)
/* 19EFE28 800768F8 0780023C */  lui        $v0, %hi(D_8006C5BC)
/* 19EFE2C 800768FC BCC5428C */  lw         $v0, %lo(D_8006C5BC)($v0)
/* 19EFE30 80076900 0780053C */  lui        $a1, %hi(D_8006E33E)
/* 19EFE34 80076904 3EE3A590 */  lbu        $a1, %lo(D_8006E33E)($a1)
/* 19EFE38 80076908 3C004228 */  slti       $v0, $v0, 0x3C
/* 19EFE3C 8007690C 0780013C */  lui        $at, %hi(D_8006FC15)
/* 19EFE40 80076910 15FC23A0 */  sb         $v1, %lo(D_8006FC15)($at)
/* 19EFE44 80076914 0780013C */  lui        $at, %hi(D_8006FC16)
/* 19EFE48 80076918 16FC24A0 */  sb         $a0, %lo(D_8006FC16)($at)
/* 19EFE4C 8007691C 0780013C */  lui        $at, %hi(D_8006FC17)
/* 19EFE50 80076920 17FC25A0 */  sb         $a1, %lo(D_8006FC17)($at)
/* 19EFE54 80076924 0780013C */  lui        $at, %hi(D_8006FC89)
/* 19EFE58 80076928 89FC23A0 */  sb         $v1, %lo(D_8006FC89)($at)
/* 19EFE5C 8007692C 0780013C */  lui        $at, %hi(D_8006FC8A)
/* 19EFE60 80076930 8AFC24A0 */  sb         $a0, %lo(D_8006FC8A)($at)
/* 19EFE64 80076934 0780013C */  lui        $at, %hi(D_8006FC8B)
/* 19EFE68 80076938 8BFC25A0 */  sb         $a1, %lo(D_8006FC8B)($at)
/* 19EFE6C 8007693C 0E004014 */  bnez       $v0, .Lcutscene_69_80076978
/* 19EFE70 80076940 00000000 */   nop
/* 19EFE74 80076944 0780043C */  lui        $a0, %hi(D_800722D0)
/* 19EFE78 80076948 D022848C */  lw         $a0, %lo(D_800722D0)($a0)
/* 19EFE7C 8007694C DAAD000C */  jal        func_8002B768
/* 19EFE80 80076950 FCDF8424 */   addiu     $a0, $a0, -0x2004
/* 19EFE84 80076954 21280000 */  addu       $a1, $zero, $zero
/* 19EFE88 80076958 0780043C */  lui        $a0, %hi(D_8006C554)
/* 19EFE8C 8007695C 54C5848C */  lw         $a0, %lo(D_8006C554)($a0)
/* 19EFE90 80076960 00000000 */  nop
/* 19EFE94 80076964 00F08424 */  addiu      $a0, $a0, -0x1000
/* 19EFE98 80076968 0780013C */  lui        $at, %hi(D_8006C7E0)
/* 19EFE9C 8007696C E0C724AC */  sw         $a0, %lo(D_8006C7E0)($at)
/* 19EFEA0 80076970 E439010C */  jal        func_8004E790
/* 19EFEA4 80076974 00100624 */   addiu     $a2, $zero, 0x1000
.Lcutscene_69_80076978:
/* 19EFEA8 80076978 40002426 */  addiu      $a0, $s1, 0x40
/* 19EFEAC 8007697C 0780053C */  lui        $a1, %hi(D_8006C6A0)
/* 19EFEB0 80076980 A0C6A58C */  lw         $a1, %lo(D_8006C6A0)($a1)
/* 19EFEB4 80076984 F539010C */  jal        func_8004E7D4
/* 19EFEB8 80076988 14000624 */   addiu     $a2, $zero, 0x14
/* 19EFEBC 8007698C 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 19EFEC0 80076990 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 19EFEC4 80076994 10100224 */  addiu      $v0, $zero, 0x1010
/* 19EFEC8 80076998 000062AC */  sw         $v0, 0x0($v1)
/* 19EFECC 8007699C FF2F0224 */  addiu      $v0, $zero, 0x2FFF
/* 19EFED0 800769A0 060062A4 */  sh         $v0, 0x6($v1)
/* 19EFED4 800769A4 F8070224 */  addiu      $v0, $zero, 0x7F8
/* 19EFED8 800769A8 0C0062A4 */  sh         $v0, 0xC($v1)
/* 19EFEDC 800769AC 0E0062A4 */  sh         $v0, 0xE($v1)
/* 19EFEE0 800769B0 01000224 */  addiu      $v0, $zero, 0x1
/* 19EFEE4 800769B4 100062A0 */  sb         $v0, 0x10($v1)
/* 19EFEE8 800769B8 0780043C */  lui        $a0, %hi(D_8006C704)
/* 19EFEEC 800769BC 04C7848C */  lw         $a0, %lo(D_8006C704)($a0)
/* 19EFEF0 800769C0 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 19EFEF4 800769C4 0780013C */  lui        $at, %hi(D_8006EE14)
/* 19EFEF8 800769C8 14EE22AC */  sw         $v0, %lo(D_8006EE14)($at)
/* 19EFEFC 800769CC 0780023C */  lui        $v0, %hi(D_8006C578)
/* 19EFF00 800769D0 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 19EFF04 800769D4 21280000 */  addu       $a1, $zero, $zero
/* 19EFF08 800769D8 0780013C */  lui        $at, %hi(D_80070328 + 0x288)
/* 19EFF0C 800769DC B00532AC */  sw         $s2, %lo(D_80070328 + 0x288)($at)
/* 19EFF10 800769E0 01004224 */  addiu      $v0, $v0, 0x1
/* 19EFF14 800769E4 40300200 */  sll        $a2, $v0, 1
/* 19EFF18 800769E8 2130C200 */  addu       $a2, $a2, $v0
/* 19EFF1C 800769EC 80300600 */  sll        $a2, $a2, 2
/* 19EFF20 800769F0 2330C200 */  subu       $a2, $a2, $v0
/* 19EFF24 800769F4 0780013C */  lui        $at, %hi(D_8006C610)
/* 19EFF28 800769F8 10C624AC */  sw         $a0, %lo(D_8006C610)($at)
/* 19EFF2C 800769FC E439010C */  jal        func_8004E790
/* 19EFF30 80076A00 C0300600 */   sll       $a2, $a2, 3
/* 19EFF34 80076A04 0780023C */  lui        $v0, %hi(D_8006C578)
/* 19EFF38 80076A08 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 19EFF3C 80076A0C 00000000 */  nop
/* 19EFF40 80076A10 01004224 */  addiu      $v0, $v0, 0x1
/* 19EFF44 80076A14 0F004018 */  blez       $v0, .Lcutscene_69_80076A54
/* 19EFF48 80076A18 21180000 */   addu      $v1, $zero, $zero
/* 19EFF4C 80076A1C FF000524 */  addiu      $a1, $zero, 0xFF
/* 19EFF50 80076A20 21200000 */  addu       $a0, $zero, $zero
.Lcutscene_69_80076A24:
/* 19EFF54 80076A24 0780023C */  lui        $v0, %hi(D_8006C610)
/* 19EFF58 80076A28 10C6428C */  lw         $v0, %lo(D_8006C610)($v0)
/* 19EFF5C 80076A2C 01006324 */  addiu      $v1, $v1, 0x1
/* 19EFF60 80076A30 21108200 */  addu       $v0, $a0, $v0
/* 19EFF64 80076A34 480045A0 */  sb         $a1, 0x48($v0)
/* 19EFF68 80076A38 0780023C */  lui        $v0, %hi(D_8006C578)
/* 19EFF6C 80076A3C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 19EFF70 80076A40 00000000 */  nop
/* 19EFF74 80076A44 01004224 */  addiu      $v0, $v0, 0x1
/* 19EFF78 80076A48 2A106200 */  slt        $v0, $v1, $v0
/* 19EFF7C 80076A4C F5FF4014 */  bnez       $v0, .Lcutscene_69_80076A24
/* 19EFF80 80076A50 58008424 */   addiu     $a0, $a0, 0x58
.Lcutscene_69_80076A54:
/* 19EFF84 80076A54 01000224 */  addiu      $v0, $zero, 0x1
.Lcutscene_69_80076A58:
/* 19EFF88 80076A58 2400BF8F */  lw         $ra, 0x24($sp)
/* 19EFF8C 80076A5C 2000B28F */  lw         $s2, 0x20($sp)
/* 19EFF90 80076A60 1C00B18F */  lw         $s1, 0x1C($sp)
/* 19EFF94 80076A64 1800B08F */  lw         $s0, 0x18($sp)
/* 19EFF98 80076A68 2800BD27 */  addiu      $sp, $sp, 0x28
/* 19EFF9C 80076A6C 0800E003 */  jr         $ra
/* 19EFFA0 80076A70 00000000 */   nop
.size func_cutscene_69_8007681C, . - func_cutscene_69_8007681C
