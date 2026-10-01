.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_75_800766B0
/* 24DBBE0 800766B0 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 24DBBE4 800766B4 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 24DBBE8 800766B8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 24DBBEC 800766BC 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 24DBBF0 800766C0 0780113C */  lui        $s1, %hi(D_8006EDD8)
/* 24DBBF4 800766C4 D8ED3126 */  addiu      $s1, $s1, %lo(D_8006EDD8)
/* 24DBBF8 800766C8 2400BFAF */  sw         $ra, 0x24($sp)
/* 24DBBFC 800766CC 2000B2AF */  sw         $s2, 0x20($sp)
/* 24DBC00 800766D0 1800B0AF */  sw         $s0, 0x18($sp)
/* 24DBC04 800766D4 000024AE */  sw         $a0, 0x0($s1)
/* 24DBC08 800766D8 40180200 */  sll        $v1, $v0, 1
/* 24DBC0C 800766DC 21186200 */  addu       $v1, $v1, $v0
/* 24DBC10 800766E0 C0180300 */  sll        $v1, $v1, 3
/* 24DBC14 800766E4 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x44)
/* 24DBC18 800766E8 21082300 */  addu       $at, $at, $v1
/* 24DBC1C 800766EC 1CD9228C */  lw         $v0, %lo(D_8006D8D8 + 0x44)($at)
/* 24DBC20 800766F0 00000000 */  nop
/* 24DBC24 800766F4 03004014 */  bnez       $v0, .Lcutscene_75_80076704
/* 24DBC28 800766F8 00080624 */   addiu     $a2, $zero, 0x800
/* 24DBC2C 800766FC 3BDA0108 */  j          .Lcutscene_75_800768EC
/* 24DBC30 80076700 21100000 */   addu      $v0, $zero, $zero
.Lcutscene_75_80076704:
/* 24DBC34 80076704 0780043C */  lui        $a0, %hi(D_8006E470)
/* 24DBC38 80076708 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 24DBC3C 8007670C 0780103C */  lui        $s0, %hi(D_800722CC)
/* 24DBC40 80076710 CC22108E */  lw         $s0, %lo(D_800722CC)($s0)
/* 24DBC44 80076714 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 24DBC48 80076718 21082300 */  addu       $at, $at, $v1
/* 24DBC4C 8007671C 18D9278C */  lw         $a3, %lo(D_8006D8D8 + 0x40)($at)
/* 24DBC50 80076720 5E41010C */  jal        CDLoadSync
/* 24DBC54 80076724 21280002 */   addu      $a1, $s0, $zero
/* 24DBC58 80076728 0100043C */  lui        $a0, (0x1C000 >> 16)
/* 24DBC5C 8007672C 06000224 */  addiu      $v0, $zero, 0x6
/* 24DBC60 80076730 01001224 */  addiu      $s2, $zero, 0x1
/* 24DBC64 80076734 0780013C */  lui        $at, %hi(D_8006E344)
/* 24DBC68 80076738 44E322AC */  sw         $v0, %lo(D_8006E344)($at)
/* 24DBC6C 8007673C 0780013C */  lui        $at, %hi(D_8006C718)
/* 24DBC70 80076740 18C732AC */  sw         $s2, %lo(D_8006C718)($at)
/* 24DBC74 80076744 C47E000C */  jal        func_8001FB10
/* 24DBC78 80076748 00C08434 */   ori       $a0, $a0, (0x1C000 & 0xFFFF)
/* 24DBC7C 8007674C 21200002 */  addu       $a0, $s0, $zero
/* 24DBC80 80076750 86DB010C */  jal        func_cutscene_75_80076E18
/* 24DBC84 80076754 01000524 */   addiu     $a1, $zero, 0x1
/* 24DBC88 80076758 21280000 */  addu       $a1, $zero, $zero
/* 24DBC8C 8007675C 0780043C */  lui        $a0, %hi(D_8006EE08)
/* 24DBC90 80076760 08EE848C */  lw         $a0, %lo(D_8006EE08)($a0)
/* 24DBC94 80076764 0780013C */  lui        $at, %hi(D_8006EDDC)
/* 24DBC98 80076768 DCED20AC */  sw         $zero, %lo(D_8006EDDC)($at)
/* 24DBC9C 8007676C 0780013C */  lui        $at, %hi(D_8006EDE0)
/* 24DBCA0 80076770 E0ED20AC */  sw         $zero, %lo(D_8006EDE0)($at)
/* 24DBCA4 80076774 32DC010C */  jal        func_cutscene_75_800770C8
/* 24DBCA8 80076778 01000624 */   addiu     $a2, $zero, 0x1
/* 24DBCAC 8007677C 0780033C */  lui        $v1, %hi(D_8006E33C)
/* 24DBCB0 80076780 3CE36390 */  lbu        $v1, %lo(D_8006E33C)($v1)
/* 24DBCB4 80076784 0780043C */  lui        $a0, %hi(D_8006E33D)
/* 24DBCB8 80076788 3DE38490 */  lbu        $a0, %lo(D_8006E33D)($a0)
/* 24DBCBC 8007678C 0780023C */  lui        $v0, %hi(D_8006C5BC)
/* 24DBCC0 80076790 BCC5428C */  lw         $v0, %lo(D_8006C5BC)($v0)
/* 24DBCC4 80076794 0780053C */  lui        $a1, %hi(D_8006E33E)
/* 24DBCC8 80076798 3EE3A590 */  lbu        $a1, %lo(D_8006E33E)($a1)
/* 24DBCCC 8007679C 3C004228 */  slti       $v0, $v0, 0x3C
/* 24DBCD0 800767A0 0780013C */  lui        $at, %hi(D_8006FC15)
/* 24DBCD4 800767A4 15FC23A0 */  sb         $v1, %lo(D_8006FC15)($at)
/* 24DBCD8 800767A8 0780013C */  lui        $at, %hi(D_8006FC16)
/* 24DBCDC 800767AC 16FC24A0 */  sb         $a0, %lo(D_8006FC16)($at)
/* 24DBCE0 800767B0 0780013C */  lui        $at, %hi(D_8006FC17)
/* 24DBCE4 800767B4 17FC25A0 */  sb         $a1, %lo(D_8006FC17)($at)
/* 24DBCE8 800767B8 0780013C */  lui        $at, %hi(D_8006FC89)
/* 24DBCEC 800767BC 89FC23A0 */  sb         $v1, %lo(D_8006FC89)($at)
/* 24DBCF0 800767C0 0780013C */  lui        $at, %hi(D_8006FC8A)
/* 24DBCF4 800767C4 8AFC24A0 */  sb         $a0, %lo(D_8006FC8A)($at)
/* 24DBCF8 800767C8 0780013C */  lui        $at, %hi(D_8006FC8B)
/* 24DBCFC 800767CC 8BFC25A0 */  sb         $a1, %lo(D_8006FC8B)($at)
/* 24DBD00 800767D0 0E004014 */  bnez       $v0, .Lcutscene_75_8007680C
/* 24DBD04 800767D4 00000000 */   nop
/* 24DBD08 800767D8 0780043C */  lui        $a0, %hi(D_800722D0)
/* 24DBD0C 800767DC D022848C */  lw         $a0, %lo(D_800722D0)($a0)
/* 24DBD10 800767E0 DAAD000C */  jal        func_8002B768
/* 24DBD14 800767E4 FCDF8424 */   addiu     $a0, $a0, -0x2004
/* 24DBD18 800767E8 21280000 */  addu       $a1, $zero, $zero
/* 24DBD1C 800767EC 0780043C */  lui        $a0, %hi(D_8006C554)
/* 24DBD20 800767F0 54C5848C */  lw         $a0, %lo(D_8006C554)($a0)
/* 24DBD24 800767F4 00000000 */  nop
/* 24DBD28 800767F8 00F08424 */  addiu      $a0, $a0, -0x1000
/* 24DBD2C 800767FC 0780013C */  lui        $at, %hi(D_8006C7E0)
/* 24DBD30 80076800 E0C724AC */  sw         $a0, %lo(D_8006C7E0)($at)
/* 24DBD34 80076804 E439010C */  jal        func_8004E790
/* 24DBD38 80076808 00100624 */   addiu     $a2, $zero, 0x1000
.Lcutscene_75_8007680C:
/* 24DBD3C 8007680C 40002426 */  addiu      $a0, $s1, 0x40
/* 24DBD40 80076810 0780053C */  lui        $a1, %hi(D_8006C6A0)
/* 24DBD44 80076814 A0C6A58C */  lw         $a1, %lo(D_8006C6A0)($a1)
/* 24DBD48 80076818 F539010C */  jal        func_8004E7D4
/* 24DBD4C 8007681C 14000624 */   addiu     $a2, $zero, 0x14
/* 24DBD50 80076820 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 24DBD54 80076824 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 24DBD58 80076828 10100224 */  addiu      $v0, $zero, 0x1010
/* 24DBD5C 8007682C 000062AC */  sw         $v0, 0x0($v1)
/* 24DBD60 80076830 FF2F0224 */  addiu      $v0, $zero, 0x2FFF
/* 24DBD64 80076834 060062A4 */  sh         $v0, 0x6($v1)
/* 24DBD68 80076838 F8070224 */  addiu      $v0, $zero, 0x7F8
/* 24DBD6C 8007683C 0C0062A4 */  sh         $v0, 0xC($v1)
/* 24DBD70 80076840 0E0062A4 */  sh         $v0, 0xE($v1)
/* 24DBD74 80076844 01000224 */  addiu      $v0, $zero, 0x1
/* 24DBD78 80076848 100062A0 */  sb         $v0, 0x10($v1)
/* 24DBD7C 8007684C 0780043C */  lui        $a0, %hi(D_8006C704)
/* 24DBD80 80076850 04C7848C */  lw         $a0, %lo(D_8006C704)($a0)
/* 24DBD84 80076854 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 24DBD88 80076858 0780013C */  lui        $at, %hi(D_8006EE14)
/* 24DBD8C 8007685C 14EE22AC */  sw         $v0, %lo(D_8006EE14)($at)
/* 24DBD90 80076860 0780023C */  lui        $v0, %hi(D_8006C578)
/* 24DBD94 80076864 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 24DBD98 80076868 21280000 */  addu       $a1, $zero, $zero
/* 24DBD9C 8007686C 0780013C */  lui        $at, %hi(D_80070328 + 0x288)
/* 24DBDA0 80076870 B00532AC */  sw         $s2, %lo(D_80070328 + 0x288)($at)
/* 24DBDA4 80076874 01004224 */  addiu      $v0, $v0, 0x1
/* 24DBDA8 80076878 40300200 */  sll        $a2, $v0, 1
/* 24DBDAC 8007687C 2130C200 */  addu       $a2, $a2, $v0
/* 24DBDB0 80076880 80300600 */  sll        $a2, $a2, 2
/* 24DBDB4 80076884 2330C200 */  subu       $a2, $a2, $v0
/* 24DBDB8 80076888 0780013C */  lui        $at, %hi(D_8006C610)
/* 24DBDBC 8007688C 10C624AC */  sw         $a0, %lo(D_8006C610)($at)
/* 24DBDC0 80076890 E439010C */  jal        func_8004E790
/* 24DBDC4 80076894 C0300600 */   sll       $a2, $a2, 3
/* 24DBDC8 80076898 0780023C */  lui        $v0, %hi(D_8006C578)
/* 24DBDCC 8007689C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 24DBDD0 800768A0 00000000 */  nop
/* 24DBDD4 800768A4 01004224 */  addiu      $v0, $v0, 0x1
/* 24DBDD8 800768A8 0F004018 */  blez       $v0, .Lcutscene_75_800768E8
/* 24DBDDC 800768AC 21180000 */   addu      $v1, $zero, $zero
/* 24DBDE0 800768B0 FF000524 */  addiu      $a1, $zero, 0xFF
/* 24DBDE4 800768B4 21200000 */  addu       $a0, $zero, $zero
.Lcutscene_75_800768B8:
/* 24DBDE8 800768B8 0780023C */  lui        $v0, %hi(D_8006C610)
/* 24DBDEC 800768BC 10C6428C */  lw         $v0, %lo(D_8006C610)($v0)
/* 24DBDF0 800768C0 01006324 */  addiu      $v1, $v1, 0x1
/* 24DBDF4 800768C4 21108200 */  addu       $v0, $a0, $v0
/* 24DBDF8 800768C8 480045A0 */  sb         $a1, 0x48($v0)
/* 24DBDFC 800768CC 0780023C */  lui        $v0, %hi(D_8006C578)
/* 24DBE00 800768D0 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 24DBE04 800768D4 00000000 */  nop
/* 24DBE08 800768D8 01004224 */  addiu      $v0, $v0, 0x1
/* 24DBE0C 800768DC 2A106200 */  slt        $v0, $v1, $v0
/* 24DBE10 800768E0 F5FF4014 */  bnez       $v0, .Lcutscene_75_800768B8
/* 24DBE14 800768E4 58008424 */   addiu     $a0, $a0, 0x58
.Lcutscene_75_800768E8:
/* 24DBE18 800768E8 01000224 */  addiu      $v0, $zero, 0x1
.Lcutscene_75_800768EC:
/* 24DBE1C 800768EC 2400BF8F */  lw         $ra, 0x24($sp)
/* 24DBE20 800768F0 2000B28F */  lw         $s2, 0x20($sp)
/* 24DBE24 800768F4 1C00B18F */  lw         $s1, 0x1C($sp)
/* 24DBE28 800768F8 1800B08F */  lw         $s0, 0x18($sp)
/* 24DBE2C 800768FC 2800BD27 */  addiu      $sp, $sp, 0x28
/* 24DBE30 80076900 0800E003 */  jr         $ra
/* 24DBE34 80076904 00000000 */   nop
.size func_cutscene_75_800766B0, . - func_cutscene_75_800766B0
