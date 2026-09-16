.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_67_80076920
/* 14EF650 80076920 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 14EF654 80076924 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 14EF658 80076928 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 14EF65C 8007692C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 14EF660 80076930 0780113C */  lui        $s1, %hi(D_8006EDD8)
/* 14EF664 80076934 D8ED3126 */  addiu      $s1, $s1, %lo(D_8006EDD8)
/* 14EF668 80076938 2400BFAF */  sw         $ra, 0x24($sp)
/* 14EF66C 8007693C 2000B2AF */  sw         $s2, 0x20($sp)
/* 14EF670 80076940 1800B0AF */  sw         $s0, 0x18($sp)
/* 14EF674 80076944 000024AE */  sw         $a0, 0x0($s1)
/* 14EF678 80076948 40180200 */  sll        $v1, $v0, 1
/* 14EF67C 8007694C 21186200 */  addu       $v1, $v1, $v0
/* 14EF680 80076950 C0180300 */  sll        $v1, $v1, 3
/* 14EF684 80076954 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x44)
/* 14EF688 80076958 21082300 */  addu       $at, $at, $v1
/* 14EF68C 8007695C 1CD9228C */  lw         $v0, %lo(D_8006D8D8 + 0x44)($at)
/* 14EF690 80076960 00000000 */  nop
/* 14EF694 80076964 03004014 */  bnez       $v0, .Lcutscene_67_80076974
/* 14EF698 80076968 00080624 */   addiu     $a2, $zero, 0x800
/* 14EF69C 8007696C D7DA0108 */  j          .Lcutscene_67_80076B5C
/* 14EF6A0 80076970 21100000 */   addu      $v0, $zero, $zero
.Lcutscene_67_80076974:
/* 14EF6A4 80076974 0780043C */  lui        $a0, %hi(D_8006E470)
/* 14EF6A8 80076978 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 14EF6AC 8007697C 0780103C */  lui        $s0, %hi(D_800722CC)
/* 14EF6B0 80076980 CC22108E */  lw         $s0, %lo(D_800722CC)($s0)
/* 14EF6B4 80076984 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 14EF6B8 80076988 21082300 */  addu       $at, $at, $v1
/* 14EF6BC 8007698C 18D9278C */  lw         $a3, %lo(D_8006D8D8 + 0x40)($at)
/* 14EF6C0 80076990 5E41010C */  jal        CDLoadSync
/* 14EF6C4 80076994 21280002 */   addu      $a1, $s0, $zero
/* 14EF6C8 80076998 0100043C */  lui        $a0, (0x1C000 >> 16)
/* 14EF6CC 8007699C 06000224 */  addiu      $v0, $zero, 0x6
/* 14EF6D0 800769A0 01001224 */  addiu      $s2, $zero, 0x1
/* 14EF6D4 800769A4 0780013C */  lui        $at, %hi(D_8006E344)
/* 14EF6D8 800769A8 44E322AC */  sw         $v0, %lo(D_8006E344)($at)
/* 14EF6DC 800769AC 0780013C */  lui        $at, %hi(D_8006C718)
/* 14EF6E0 800769B0 18C732AC */  sw         $s2, %lo(D_8006C718)($at)
/* 14EF6E4 800769B4 C47E000C */  jal        func_8001FB10
/* 14EF6E8 800769B8 00C08434 */   ori       $a0, $a0, (0x1C000 & 0xFFFF)
/* 14EF6EC 800769BC 21200002 */  addu       $a0, $s0, $zero
/* 14EF6F0 800769C0 22DC010C */  jal        func_cutscene_67_80077088
/* 14EF6F4 800769C4 01000524 */   addiu     $a1, $zero, 0x1
/* 14EF6F8 800769C8 21280000 */  addu       $a1, $zero, $zero
/* 14EF6FC 800769CC 0780043C */  lui        $a0, %hi(D_8006EE08)
/* 14EF700 800769D0 08EE848C */  lw         $a0, %lo(D_8006EE08)($a0)
/* 14EF704 800769D4 0780013C */  lui        $at, %hi(D_8006EDDC)
/* 14EF708 800769D8 DCED20AC */  sw         $zero, %lo(D_8006EDDC)($at)
/* 14EF70C 800769DC 0780013C */  lui        $at, %hi(D_8006EDE0)
/* 14EF710 800769E0 E0ED20AC */  sw         $zero, %lo(D_8006EDE0)($at)
/* 14EF714 800769E4 CEDC010C */  jal        func_cutscene_67_80077338
/* 14EF718 800769E8 01000624 */   addiu     $a2, $zero, 0x1
/* 14EF71C 800769EC 0780033C */  lui        $v1, %hi(D_8006E33C)
/* 14EF720 800769F0 3CE36390 */  lbu        $v1, %lo(D_8006E33C)($v1)
/* 14EF724 800769F4 0780043C */  lui        $a0, %hi(D_8006E33D)
/* 14EF728 800769F8 3DE38490 */  lbu        $a0, %lo(D_8006E33D)($a0)
/* 14EF72C 800769FC 0780023C */  lui        $v0, %hi(D_8006C5BC)
/* 14EF730 80076A00 BCC5428C */  lw         $v0, %lo(D_8006C5BC)($v0)
/* 14EF734 80076A04 0780053C */  lui        $a1, %hi(D_8006E33E)
/* 14EF738 80076A08 3EE3A590 */  lbu        $a1, %lo(D_8006E33E)($a1)
/* 14EF73C 80076A0C 3C004228 */  slti       $v0, $v0, 0x3C
/* 14EF740 80076A10 0780013C */  lui        $at, %hi(D_8006FC15)
/* 14EF744 80076A14 15FC23A0 */  sb         $v1, %lo(D_8006FC15)($at)
/* 14EF748 80076A18 0780013C */  lui        $at, %hi(D_8006FC16)
/* 14EF74C 80076A1C 16FC24A0 */  sb         $a0, %lo(D_8006FC16)($at)
/* 14EF750 80076A20 0780013C */  lui        $at, %hi(D_8006FC17)
/* 14EF754 80076A24 17FC25A0 */  sb         $a1, %lo(D_8006FC17)($at)
/* 14EF758 80076A28 0780013C */  lui        $at, %hi(D_8006FC89)
/* 14EF75C 80076A2C 89FC23A0 */  sb         $v1, %lo(D_8006FC89)($at)
/* 14EF760 80076A30 0780013C */  lui        $at, %hi(D_8006FC8A)
/* 14EF764 80076A34 8AFC24A0 */  sb         $a0, %lo(D_8006FC8A)($at)
/* 14EF768 80076A38 0780013C */  lui        $at, %hi(D_8006FC8B)
/* 14EF76C 80076A3C 8BFC25A0 */  sb         $a1, %lo(D_8006FC8B)($at)
/* 14EF770 80076A40 0E004014 */  bnez       $v0, .Lcutscene_67_80076A7C
/* 14EF774 80076A44 00000000 */   nop
/* 14EF778 80076A48 0780043C */  lui        $a0, %hi(D_800722D0)
/* 14EF77C 80076A4C D022848C */  lw         $a0, %lo(D_800722D0)($a0)
/* 14EF780 80076A50 DAAD000C */  jal        func_8002B768
/* 14EF784 80076A54 FCDF8424 */   addiu     $a0, $a0, -0x2004
/* 14EF788 80076A58 21280000 */  addu       $a1, $zero, $zero
/* 14EF78C 80076A5C 0780043C */  lui        $a0, %hi(D_8006C554)
/* 14EF790 80076A60 54C5848C */  lw         $a0, %lo(D_8006C554)($a0)
/* 14EF794 80076A64 00000000 */  nop
/* 14EF798 80076A68 00F08424 */  addiu      $a0, $a0, -0x1000
/* 14EF79C 80076A6C 0780013C */  lui        $at, %hi(D_8006C7E0)
/* 14EF7A0 80076A70 E0C724AC */  sw         $a0, %lo(D_8006C7E0)($at)
/* 14EF7A4 80076A74 E439010C */  jal        func_8004E790
/* 14EF7A8 80076A78 00100624 */   addiu     $a2, $zero, 0x1000
.Lcutscene_67_80076A7C:
/* 14EF7AC 80076A7C 40002426 */  addiu      $a0, $s1, 0x40
/* 14EF7B0 80076A80 0780053C */  lui        $a1, %hi(D_8006C6A0)
/* 14EF7B4 80076A84 A0C6A58C */  lw         $a1, %lo(D_8006C6A0)($a1)
/* 14EF7B8 80076A88 F539010C */  jal        func_8004E7D4
/* 14EF7BC 80076A8C 14000624 */   addiu     $a2, $zero, 0x14
/* 14EF7C0 80076A90 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 14EF7C4 80076A94 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 14EF7C8 80076A98 10100224 */  addiu      $v0, $zero, 0x1010
/* 14EF7CC 80076A9C 000062AC */  sw         $v0, 0x0($v1)
/* 14EF7D0 80076AA0 FF2F0224 */  addiu      $v0, $zero, 0x2FFF
/* 14EF7D4 80076AA4 060062A4 */  sh         $v0, 0x6($v1)
/* 14EF7D8 80076AA8 F8070224 */  addiu      $v0, $zero, 0x7F8
/* 14EF7DC 80076AAC 0C0062A4 */  sh         $v0, 0xC($v1)
/* 14EF7E0 80076AB0 0E0062A4 */  sh         $v0, 0xE($v1)
/* 14EF7E4 80076AB4 01000224 */  addiu      $v0, $zero, 0x1
/* 14EF7E8 80076AB8 100062A0 */  sb         $v0, 0x10($v1)
/* 14EF7EC 80076ABC 0780043C */  lui        $a0, %hi(D_8006C704)
/* 14EF7F0 80076AC0 04C7848C */  lw         $a0, %lo(D_8006C704)($a0)
/* 14EF7F4 80076AC4 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 14EF7F8 80076AC8 0780013C */  lui        $at, %hi(D_8006EE14)
/* 14EF7FC 80076ACC 14EE22AC */  sw         $v0, %lo(D_8006EE14)($at)
/* 14EF800 80076AD0 0780023C */  lui        $v0, %hi(D_8006C578)
/* 14EF804 80076AD4 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 14EF808 80076AD8 21280000 */  addu       $a1, $zero, $zero
/* 14EF80C 80076ADC 0780013C */  lui        $at, %hi(D_80070328 + 0x288)
/* 14EF810 80076AE0 B00532AC */  sw         $s2, %lo(D_80070328 + 0x288)($at)
/* 14EF814 80076AE4 01004224 */  addiu      $v0, $v0, 0x1
/* 14EF818 80076AE8 40300200 */  sll        $a2, $v0, 1
/* 14EF81C 80076AEC 2130C200 */  addu       $a2, $a2, $v0
/* 14EF820 80076AF0 80300600 */  sll        $a2, $a2, 2
/* 14EF824 80076AF4 2330C200 */  subu       $a2, $a2, $v0
/* 14EF828 80076AF8 0780013C */  lui        $at, %hi(D_8006C610)
/* 14EF82C 80076AFC 10C624AC */  sw         $a0, %lo(D_8006C610)($at)
/* 14EF830 80076B00 E439010C */  jal        func_8004E790
/* 14EF834 80076B04 C0300600 */   sll       $a2, $a2, 3
/* 14EF838 80076B08 0780023C */  lui        $v0, %hi(D_8006C578)
/* 14EF83C 80076B0C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 14EF840 80076B10 00000000 */  nop
/* 14EF844 80076B14 01004224 */  addiu      $v0, $v0, 0x1
/* 14EF848 80076B18 0F004018 */  blez       $v0, .Lcutscene_67_80076B58
/* 14EF84C 80076B1C 21180000 */   addu      $v1, $zero, $zero
/* 14EF850 80076B20 FF000524 */  addiu      $a1, $zero, 0xFF
/* 14EF854 80076B24 21200000 */  addu       $a0, $zero, $zero
.Lcutscene_67_80076B28:
/* 14EF858 80076B28 0780023C */  lui        $v0, %hi(D_8006C610)
/* 14EF85C 80076B2C 10C6428C */  lw         $v0, %lo(D_8006C610)($v0)
/* 14EF860 80076B30 01006324 */  addiu      $v1, $v1, 0x1
/* 14EF864 80076B34 21108200 */  addu       $v0, $a0, $v0
/* 14EF868 80076B38 480045A0 */  sb         $a1, 0x48($v0)
/* 14EF86C 80076B3C 0780023C */  lui        $v0, %hi(D_8006C578)
/* 14EF870 80076B40 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 14EF874 80076B44 00000000 */  nop
/* 14EF878 80076B48 01004224 */  addiu      $v0, $v0, 0x1
/* 14EF87C 80076B4C 2A106200 */  slt        $v0, $v1, $v0
/* 14EF880 80076B50 F5FF4014 */  bnez       $v0, .Lcutscene_67_80076B28
/* 14EF884 80076B54 58008424 */   addiu     $a0, $a0, 0x58
.Lcutscene_67_80076B58:
/* 14EF888 80076B58 01000224 */  addiu      $v0, $zero, 0x1
.Lcutscene_67_80076B5C:
/* 14EF88C 80076B5C 2400BF8F */  lw         $ra, 0x24($sp)
/* 14EF890 80076B60 2000B28F */  lw         $s2, 0x20($sp)
/* 14EF894 80076B64 1C00B18F */  lw         $s1, 0x1C($sp)
/* 14EF898 80076B68 1800B08F */  lw         $s0, 0x18($sp)
/* 14EF89C 80076B6C 2800BD27 */  addiu      $sp, $sp, 0x28
/* 14EF8A0 80076B70 0800E003 */  jr         $ra
/* 14EF8A4 80076B74 00000000 */   nop
.size func_cutscene_67_80076920, . - func_cutscene_67_80076920
