.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_76_800766B0
/* 264CBE0 800766B0 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 264CBE4 800766B4 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 264CBE8 800766B8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 264CBEC 800766BC 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 264CBF0 800766C0 0780113C */  lui        $s1, %hi(D_8006EDD8)
/* 264CBF4 800766C4 D8ED3126 */  addiu      $s1, $s1, %lo(D_8006EDD8)
/* 264CBF8 800766C8 2400BFAF */  sw         $ra, 0x24($sp)
/* 264CBFC 800766CC 2000B2AF */  sw         $s2, 0x20($sp)
/* 264CC00 800766D0 1800B0AF */  sw         $s0, 0x18($sp)
/* 264CC04 800766D4 000024AE */  sw         $a0, 0x0($s1)
/* 264CC08 800766D8 40180200 */  sll        $v1, $v0, 1
/* 264CC0C 800766DC 21186200 */  addu       $v1, $v1, $v0
/* 264CC10 800766E0 C0180300 */  sll        $v1, $v1, 3
/* 264CC14 800766E4 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x44)
/* 264CC18 800766E8 21082300 */  addu       $at, $at, $v1
/* 264CC1C 800766EC 1CD9228C */  lw         $v0, %lo(D_8006D8D8 + 0x44)($at)
/* 264CC20 800766F0 00000000 */  nop
/* 264CC24 800766F4 03004014 */  bnez       $v0, .Lcutscene_76_80076704
/* 264CC28 800766F8 00080624 */   addiu     $a2, $zero, 0x800
/* 264CC2C 800766FC 3BDA0108 */  j          .Lcutscene_76_800768EC
/* 264CC30 80076700 21100000 */   addu      $v0, $zero, $zero
.Lcutscene_76_80076704:
/* 264CC34 80076704 0780043C */  lui        $a0, %hi(D_8006E470)
/* 264CC38 80076708 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 264CC3C 8007670C 0780103C */  lui        $s0, %hi(D_800722CC)
/* 264CC40 80076710 CC22108E */  lw         $s0, %lo(D_800722CC)($s0)
/* 264CC44 80076714 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 264CC48 80076718 21082300 */  addu       $at, $at, $v1
/* 264CC4C 8007671C 18D9278C */  lw         $a3, %lo(D_8006D8D8 + 0x40)($at)
/* 264CC50 80076720 5E41010C */  jal        CDLoadSync
/* 264CC54 80076724 21280002 */   addu      $a1, $s0, $zero
/* 264CC58 80076728 0100043C */  lui        $a0, (0x1C000 >> 16)
/* 264CC5C 8007672C 06000224 */  addiu      $v0, $zero, 0x6
/* 264CC60 80076730 01001224 */  addiu      $s2, $zero, 0x1
/* 264CC64 80076734 0780013C */  lui        $at, %hi(D_8006E344)
/* 264CC68 80076738 44E322AC */  sw         $v0, %lo(D_8006E344)($at)
/* 264CC6C 8007673C 0780013C */  lui        $at, %hi(D_8006C718)
/* 264CC70 80076740 18C732AC */  sw         $s2, %lo(D_8006C718)($at)
/* 264CC74 80076744 C47E000C */  jal        func_8001FB10
/* 264CC78 80076748 00C08434 */   ori       $a0, $a0, (0x1C000 & 0xFFFF)
/* 264CC7C 8007674C 21200002 */  addu       $a0, $s0, $zero
/* 264CC80 80076750 86DB010C */  jal        func_cutscene_76_80076E18
/* 264CC84 80076754 01000524 */   addiu     $a1, $zero, 0x1
/* 264CC88 80076758 21280000 */  addu       $a1, $zero, $zero
/* 264CC8C 8007675C 0780043C */  lui        $a0, %hi(D_8006EE08)
/* 264CC90 80076760 08EE848C */  lw         $a0, %lo(D_8006EE08)($a0)
/* 264CC94 80076764 0780013C */  lui        $at, %hi(D_8006EDDC)
/* 264CC98 80076768 DCED20AC */  sw         $zero, %lo(D_8006EDDC)($at)
/* 264CC9C 8007676C 0780013C */  lui        $at, %hi(D_8006EDE0)
/* 264CCA0 80076770 E0ED20AC */  sw         $zero, %lo(D_8006EDE0)($at)
/* 264CCA4 80076774 32DC010C */  jal        func_cutscene_76_800770C8
/* 264CCA8 80076778 01000624 */   addiu     $a2, $zero, 0x1
/* 264CCAC 8007677C 0780033C */  lui        $v1, %hi(D_8006E33C)
/* 264CCB0 80076780 3CE36390 */  lbu        $v1, %lo(D_8006E33C)($v1)
/* 264CCB4 80076784 0780043C */  lui        $a0, %hi(D_8006E33D)
/* 264CCB8 80076788 3DE38490 */  lbu        $a0, %lo(D_8006E33D)($a0)
/* 264CCBC 8007678C 0780023C */  lui        $v0, %hi(D_8006C5BC)
/* 264CCC0 80076790 BCC5428C */  lw         $v0, %lo(D_8006C5BC)($v0)
/* 264CCC4 80076794 0780053C */  lui        $a1, %hi(D_8006E33E)
/* 264CCC8 80076798 3EE3A590 */  lbu        $a1, %lo(D_8006E33E)($a1)
/* 264CCCC 8007679C 3C004228 */  slti       $v0, $v0, 0x3C
/* 264CCD0 800767A0 0780013C */  lui        $at, %hi(D_8006FC15)
/* 264CCD4 800767A4 15FC23A0 */  sb         $v1, %lo(D_8006FC15)($at)
/* 264CCD8 800767A8 0780013C */  lui        $at, %hi(D_8006FC16)
/* 264CCDC 800767AC 16FC24A0 */  sb         $a0, %lo(D_8006FC16)($at)
/* 264CCE0 800767B0 0780013C */  lui        $at, %hi(D_8006FC17)
/* 264CCE4 800767B4 17FC25A0 */  sb         $a1, %lo(D_8006FC17)($at)
/* 264CCE8 800767B8 0780013C */  lui        $at, %hi(D_8006FC89)
/* 264CCEC 800767BC 89FC23A0 */  sb         $v1, %lo(D_8006FC89)($at)
/* 264CCF0 800767C0 0780013C */  lui        $at, %hi(D_8006FC8A)
/* 264CCF4 800767C4 8AFC24A0 */  sb         $a0, %lo(D_8006FC8A)($at)
/* 264CCF8 800767C8 0780013C */  lui        $at, %hi(D_8006FC8B)
/* 264CCFC 800767CC 8BFC25A0 */  sb         $a1, %lo(D_8006FC8B)($at)
/* 264CD00 800767D0 0E004014 */  bnez       $v0, .Lcutscene_76_8007680C
/* 264CD04 800767D4 00000000 */   nop
/* 264CD08 800767D8 0780043C */  lui        $a0, %hi(D_800722D0)
/* 264CD0C 800767DC D022848C */  lw         $a0, %lo(D_800722D0)($a0)
/* 264CD10 800767E0 DAAD000C */  jal        func_8002B768
/* 264CD14 800767E4 FCDF8424 */   addiu     $a0, $a0, -0x2004
/* 264CD18 800767E8 21280000 */  addu       $a1, $zero, $zero
/* 264CD1C 800767EC 0780043C */  lui        $a0, %hi(D_8006C554)
/* 264CD20 800767F0 54C5848C */  lw         $a0, %lo(D_8006C554)($a0)
/* 264CD24 800767F4 00000000 */  nop
/* 264CD28 800767F8 00F08424 */  addiu      $a0, $a0, -0x1000
/* 264CD2C 800767FC 0780013C */  lui        $at, %hi(D_8006C7E0)
/* 264CD30 80076800 E0C724AC */  sw         $a0, %lo(D_8006C7E0)($at)
/* 264CD34 80076804 E439010C */  jal        func_8004E790
/* 264CD38 80076808 00100624 */   addiu     $a2, $zero, 0x1000
.Lcutscene_76_8007680C:
/* 264CD3C 8007680C 40002426 */  addiu      $a0, $s1, 0x40
/* 264CD40 80076810 0780053C */  lui        $a1, %hi(D_8006C6A0)
/* 264CD44 80076814 A0C6A58C */  lw         $a1, %lo(D_8006C6A0)($a1)
/* 264CD48 80076818 F539010C */  jal        func_8004E7D4
/* 264CD4C 8007681C 14000624 */   addiu     $a2, $zero, 0x14
/* 264CD50 80076820 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 264CD54 80076824 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 264CD58 80076828 10100224 */  addiu      $v0, $zero, 0x1010
/* 264CD5C 8007682C 000062AC */  sw         $v0, 0x0($v1)
/* 264CD60 80076830 FF2F0224 */  addiu      $v0, $zero, 0x2FFF
/* 264CD64 80076834 060062A4 */  sh         $v0, 0x6($v1)
/* 264CD68 80076838 F8070224 */  addiu      $v0, $zero, 0x7F8
/* 264CD6C 8007683C 0C0062A4 */  sh         $v0, 0xC($v1)
/* 264CD70 80076840 0E0062A4 */  sh         $v0, 0xE($v1)
/* 264CD74 80076844 01000224 */  addiu      $v0, $zero, 0x1
/* 264CD78 80076848 100062A0 */  sb         $v0, 0x10($v1)
/* 264CD7C 8007684C 0780043C */  lui        $a0, %hi(D_8006C704)
/* 264CD80 80076850 04C7848C */  lw         $a0, %lo(D_8006C704)($a0)
/* 264CD84 80076854 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 264CD88 80076858 0780013C */  lui        $at, %hi(D_8006EE14)
/* 264CD8C 8007685C 14EE22AC */  sw         $v0, %lo(D_8006EE14)($at)
/* 264CD90 80076860 0780023C */  lui        $v0, %hi(D_8006C578)
/* 264CD94 80076864 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 264CD98 80076868 21280000 */  addu       $a1, $zero, $zero
/* 264CD9C 8007686C 0780013C */  lui        $at, %hi(D_80070328 + 0x288)
/* 264CDA0 80076870 B00532AC */  sw         $s2, %lo(D_80070328 + 0x288)($at)
/* 264CDA4 80076874 01004224 */  addiu      $v0, $v0, 0x1
/* 264CDA8 80076878 40300200 */  sll        $a2, $v0, 1
/* 264CDAC 8007687C 2130C200 */  addu       $a2, $a2, $v0
/* 264CDB0 80076880 80300600 */  sll        $a2, $a2, 2
/* 264CDB4 80076884 2330C200 */  subu       $a2, $a2, $v0
/* 264CDB8 80076888 0780013C */  lui        $at, %hi(D_8006C610)
/* 264CDBC 8007688C 10C624AC */  sw         $a0, %lo(D_8006C610)($at)
/* 264CDC0 80076890 E439010C */  jal        func_8004E790
/* 264CDC4 80076894 C0300600 */   sll       $a2, $a2, 3
/* 264CDC8 80076898 0780023C */  lui        $v0, %hi(D_8006C578)
/* 264CDCC 8007689C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 264CDD0 800768A0 00000000 */  nop
/* 264CDD4 800768A4 01004224 */  addiu      $v0, $v0, 0x1
/* 264CDD8 800768A8 0F004018 */  blez       $v0, .Lcutscene_76_800768E8
/* 264CDDC 800768AC 21180000 */   addu      $v1, $zero, $zero
/* 264CDE0 800768B0 FF000524 */  addiu      $a1, $zero, 0xFF
/* 264CDE4 800768B4 21200000 */  addu       $a0, $zero, $zero
.Lcutscene_76_800768B8:
/* 264CDE8 800768B8 0780023C */  lui        $v0, %hi(D_8006C610)
/* 264CDEC 800768BC 10C6428C */  lw         $v0, %lo(D_8006C610)($v0)
/* 264CDF0 800768C0 01006324 */  addiu      $v1, $v1, 0x1
/* 264CDF4 800768C4 21108200 */  addu       $v0, $a0, $v0
/* 264CDF8 800768C8 480045A0 */  sb         $a1, 0x48($v0)
/* 264CDFC 800768CC 0780023C */  lui        $v0, %hi(D_8006C578)
/* 264CE00 800768D0 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 264CE04 800768D4 00000000 */  nop
/* 264CE08 800768D8 01004224 */  addiu      $v0, $v0, 0x1
/* 264CE0C 800768DC 2A106200 */  slt        $v0, $v1, $v0
/* 264CE10 800768E0 F5FF4014 */  bnez       $v0, .Lcutscene_76_800768B8
/* 264CE14 800768E4 58008424 */   addiu     $a0, $a0, 0x58
.Lcutscene_76_800768E8:
/* 264CE18 800768E8 01000224 */  addiu      $v0, $zero, 0x1
.Lcutscene_76_800768EC:
/* 264CE1C 800768EC 2400BF8F */  lw         $ra, 0x24($sp)
/* 264CE20 800768F0 2000B28F */  lw         $s2, 0x20($sp)
/* 264CE24 800768F4 1C00B18F */  lw         $s1, 0x1C($sp)
/* 264CE28 800768F8 1800B08F */  lw         $s0, 0x18($sp)
/* 264CE2C 800768FC 2800BD27 */  addiu      $sp, $sp, 0x28
/* 264CE30 80076900 0800E003 */  jr         $ra
/* 264CE34 80076904 00000000 */   nop
.size func_cutscene_76_800766B0, . - func_cutscene_76_800766B0
