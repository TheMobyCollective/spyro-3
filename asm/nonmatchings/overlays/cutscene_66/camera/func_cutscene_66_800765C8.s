.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_66_800765C8
/* 12CCAF8 800765C8 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 12CCAFC 800765CC 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 12CCB00 800765D0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 12CCB04 800765D4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 12CCB08 800765D8 0780113C */  lui        $s1, %hi(D_8006EDD8)
/* 12CCB0C 800765DC D8ED3126 */  addiu      $s1, $s1, %lo(D_8006EDD8)
/* 12CCB10 800765E0 2400BFAF */  sw         $ra, 0x24($sp)
/* 12CCB14 800765E4 2000B2AF */  sw         $s2, 0x20($sp)
/* 12CCB18 800765E8 1800B0AF */  sw         $s0, 0x18($sp)
/* 12CCB1C 800765EC 000024AE */  sw         $a0, 0x0($s1)
/* 12CCB20 800765F0 40180200 */  sll        $v1, $v0, 1
/* 12CCB24 800765F4 21186200 */  addu       $v1, $v1, $v0
/* 12CCB28 800765F8 C0180300 */  sll        $v1, $v1, 3
/* 12CCB2C 800765FC 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x44)
/* 12CCB30 80076600 21082300 */  addu       $at, $at, $v1
/* 12CCB34 80076604 1CD9228C */  lw         $v0, %lo(D_8006D8D8 + 0x44)($at)
/* 12CCB38 80076608 00000000 */  nop
/* 12CCB3C 8007660C 03004014 */  bnez       $v0, .Lcutscene_66_8007661C
/* 12CCB40 80076610 00080624 */   addiu     $a2, $zero, 0x800
/* 12CCB44 80076614 01DA0108 */  j          .Lcutscene_66_80076804
/* 12CCB48 80076618 21100000 */   addu      $v0, $zero, $zero
.Lcutscene_66_8007661C:
/* 12CCB4C 8007661C 0780043C */  lui        $a0, %hi(D_8006E470)
/* 12CCB50 80076620 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 12CCB54 80076624 0780103C */  lui        $s0, %hi(D_800722CC)
/* 12CCB58 80076628 CC22108E */  lw         $s0, %lo(D_800722CC)($s0)
/* 12CCB5C 8007662C 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 12CCB60 80076630 21082300 */  addu       $at, $at, $v1
/* 12CCB64 80076634 18D9278C */  lw         $a3, %lo(D_8006D8D8 + 0x40)($at)
/* 12CCB68 80076638 5E41010C */  jal        CDLoadSync
/* 12CCB6C 8007663C 21280002 */   addu      $a1, $s0, $zero
/* 12CCB70 80076640 0100043C */  lui        $a0, (0x1C000 >> 16)
/* 12CCB74 80076644 06000224 */  addiu      $v0, $zero, 0x6
/* 12CCB78 80076648 01001224 */  addiu      $s2, $zero, 0x1
/* 12CCB7C 8007664C 0780013C */  lui        $at, %hi(D_8006E344)
/* 12CCB80 80076650 44E322AC */  sw         $v0, %lo(D_8006E344)($at)
/* 12CCB84 80076654 0780013C */  lui        $at, %hi(D_8006C718)
/* 12CCB88 80076658 18C732AC */  sw         $s2, %lo(D_8006C718)($at)
/* 12CCB8C 8007665C C47E000C */  jal        func_8001FB10
/* 12CCB90 80076660 00C08434 */   ori       $a0, $a0, (0x1C000 & 0xFFFF)
/* 12CCB94 80076664 21200002 */  addu       $a0, $s0, $zero
/* 12CCB98 80076668 4CDB010C */  jal        func_cutscene_66_80076D30
/* 12CCB9C 8007666C 01000524 */   addiu     $a1, $zero, 0x1
/* 12CCBA0 80076670 21280000 */  addu       $a1, $zero, $zero
/* 12CCBA4 80076674 0780043C */  lui        $a0, %hi(D_8006EE08)
/* 12CCBA8 80076678 08EE848C */  lw         $a0, %lo(D_8006EE08)($a0)
/* 12CCBAC 8007667C 0780013C */  lui        $at, %hi(D_8006EDDC)
/* 12CCBB0 80076680 DCED20AC */  sw         $zero, %lo(D_8006EDDC)($at)
/* 12CCBB4 80076684 0780013C */  lui        $at, %hi(D_8006EDE0)
/* 12CCBB8 80076688 E0ED20AC */  sw         $zero, %lo(D_8006EDE0)($at)
/* 12CCBBC 8007668C F8DB010C */  jal        func_cutscene_66_80076FE0
/* 12CCBC0 80076690 01000624 */   addiu     $a2, $zero, 0x1
/* 12CCBC4 80076694 0780033C */  lui        $v1, %hi(D_8006E33C)
/* 12CCBC8 80076698 3CE36390 */  lbu        $v1, %lo(D_8006E33C)($v1)
/* 12CCBCC 8007669C 0780043C */  lui        $a0, %hi(D_8006E33D)
/* 12CCBD0 800766A0 3DE38490 */  lbu        $a0, %lo(D_8006E33D)($a0)
/* 12CCBD4 800766A4 0780023C */  lui        $v0, %hi(D_8006C5BC)
/* 12CCBD8 800766A8 BCC5428C */  lw         $v0, %lo(D_8006C5BC)($v0)
/* 12CCBDC 800766AC 0780053C */  lui        $a1, %hi(D_8006E33E)
/* 12CCBE0 800766B0 3EE3A590 */  lbu        $a1, %lo(D_8006E33E)($a1)
/* 12CCBE4 800766B4 3C004228 */  slti       $v0, $v0, 0x3C
/* 12CCBE8 800766B8 0780013C */  lui        $at, %hi(D_8006FC15)
/* 12CCBEC 800766BC 15FC23A0 */  sb         $v1, %lo(D_8006FC15)($at)
/* 12CCBF0 800766C0 0780013C */  lui        $at, %hi(D_8006FC16)
/* 12CCBF4 800766C4 16FC24A0 */  sb         $a0, %lo(D_8006FC16)($at)
/* 12CCBF8 800766C8 0780013C */  lui        $at, %hi(D_8006FC17)
/* 12CCBFC 800766CC 17FC25A0 */  sb         $a1, %lo(D_8006FC17)($at)
/* 12CCC00 800766D0 0780013C */  lui        $at, %hi(D_8006FC89)
/* 12CCC04 800766D4 89FC23A0 */  sb         $v1, %lo(D_8006FC89)($at)
/* 12CCC08 800766D8 0780013C */  lui        $at, %hi(D_8006FC8A)
/* 12CCC0C 800766DC 8AFC24A0 */  sb         $a0, %lo(D_8006FC8A)($at)
/* 12CCC10 800766E0 0780013C */  lui        $at, %hi(D_8006FC8B)
/* 12CCC14 800766E4 8BFC25A0 */  sb         $a1, %lo(D_8006FC8B)($at)
/* 12CCC18 800766E8 0E004014 */  bnez       $v0, .Lcutscene_66_80076724
/* 12CCC1C 800766EC 00000000 */   nop
/* 12CCC20 800766F0 0780043C */  lui        $a0, %hi(D_800722D0)
/* 12CCC24 800766F4 D022848C */  lw         $a0, %lo(D_800722D0)($a0)
/* 12CCC28 800766F8 DAAD000C */  jal        func_8002B768
/* 12CCC2C 800766FC FCDF8424 */   addiu     $a0, $a0, -0x2004
/* 12CCC30 80076700 21280000 */  addu       $a1, $zero, $zero
/* 12CCC34 80076704 0780043C */  lui        $a0, %hi(D_8006C554)
/* 12CCC38 80076708 54C5848C */  lw         $a0, %lo(D_8006C554)($a0)
/* 12CCC3C 8007670C 00000000 */  nop
/* 12CCC40 80076710 00F08424 */  addiu      $a0, $a0, -0x1000
/* 12CCC44 80076714 0780013C */  lui        $at, %hi(D_8006C7E0)
/* 12CCC48 80076718 E0C724AC */  sw         $a0, %lo(D_8006C7E0)($at)
/* 12CCC4C 8007671C E439010C */  jal        func_8004E790
/* 12CCC50 80076720 00100624 */   addiu     $a2, $zero, 0x1000
.Lcutscene_66_80076724:
/* 12CCC54 80076724 40002426 */  addiu      $a0, $s1, 0x40
/* 12CCC58 80076728 0780053C */  lui        $a1, %hi(D_8006C6A0)
/* 12CCC5C 8007672C A0C6A58C */  lw         $a1, %lo(D_8006C6A0)($a1)
/* 12CCC60 80076730 F539010C */  jal        func_8004E7D4
/* 12CCC64 80076734 14000624 */   addiu     $a2, $zero, 0x14
/* 12CCC68 80076738 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 12CCC6C 8007673C A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 12CCC70 80076740 10100224 */  addiu      $v0, $zero, 0x1010
/* 12CCC74 80076744 000062AC */  sw         $v0, 0x0($v1)
/* 12CCC78 80076748 FF2F0224 */  addiu      $v0, $zero, 0x2FFF
/* 12CCC7C 8007674C 060062A4 */  sh         $v0, 0x6($v1)
/* 12CCC80 80076750 F8070224 */  addiu      $v0, $zero, 0x7F8
/* 12CCC84 80076754 0C0062A4 */  sh         $v0, 0xC($v1)
/* 12CCC88 80076758 0E0062A4 */  sh         $v0, 0xE($v1)
/* 12CCC8C 8007675C 01000224 */  addiu      $v0, $zero, 0x1
/* 12CCC90 80076760 100062A0 */  sb         $v0, 0x10($v1)
/* 12CCC94 80076764 0780043C */  lui        $a0, %hi(D_8006C704)
/* 12CCC98 80076768 04C7848C */  lw         $a0, %lo(D_8006C704)($a0)
/* 12CCC9C 8007676C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 12CCCA0 80076770 0780013C */  lui        $at, %hi(D_8006EE14)
/* 12CCCA4 80076774 14EE22AC */  sw         $v0, %lo(D_8006EE14)($at)
/* 12CCCA8 80076778 0780023C */  lui        $v0, %hi(D_8006C578)
/* 12CCCAC 8007677C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 12CCCB0 80076780 21280000 */  addu       $a1, $zero, $zero
/* 12CCCB4 80076784 0780013C */  lui        $at, %hi(D_80070328 + 0x288)
/* 12CCCB8 80076788 B00532AC */  sw         $s2, %lo(D_80070328 + 0x288)($at)
/* 12CCCBC 8007678C 01004224 */  addiu      $v0, $v0, 0x1
/* 12CCCC0 80076790 40300200 */  sll        $a2, $v0, 1
/* 12CCCC4 80076794 2130C200 */  addu       $a2, $a2, $v0
/* 12CCCC8 80076798 80300600 */  sll        $a2, $a2, 2
/* 12CCCCC 8007679C 2330C200 */  subu       $a2, $a2, $v0
/* 12CCCD0 800767A0 0780013C */  lui        $at, %hi(D_8006C610)
/* 12CCCD4 800767A4 10C624AC */  sw         $a0, %lo(D_8006C610)($at)
/* 12CCCD8 800767A8 E439010C */  jal        func_8004E790
/* 12CCCDC 800767AC C0300600 */   sll       $a2, $a2, 3
/* 12CCCE0 800767B0 0780023C */  lui        $v0, %hi(D_8006C578)
/* 12CCCE4 800767B4 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 12CCCE8 800767B8 00000000 */  nop
/* 12CCCEC 800767BC 01004224 */  addiu      $v0, $v0, 0x1
/* 12CCCF0 800767C0 0F004018 */  blez       $v0, .Lcutscene_66_80076800
/* 12CCCF4 800767C4 21180000 */   addu      $v1, $zero, $zero
/* 12CCCF8 800767C8 FF000524 */  addiu      $a1, $zero, 0xFF
/* 12CCCFC 800767CC 21200000 */  addu       $a0, $zero, $zero
.Lcutscene_66_800767D0:
/* 12CCD00 800767D0 0780023C */  lui        $v0, %hi(D_8006C610)
/* 12CCD04 800767D4 10C6428C */  lw         $v0, %lo(D_8006C610)($v0)
/* 12CCD08 800767D8 01006324 */  addiu      $v1, $v1, 0x1
/* 12CCD0C 800767DC 21108200 */  addu       $v0, $a0, $v0
/* 12CCD10 800767E0 480045A0 */  sb         $a1, 0x48($v0)
/* 12CCD14 800767E4 0780023C */  lui        $v0, %hi(D_8006C578)
/* 12CCD18 800767E8 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 12CCD1C 800767EC 00000000 */  nop
/* 12CCD20 800767F0 01004224 */  addiu      $v0, $v0, 0x1
/* 12CCD24 800767F4 2A106200 */  slt        $v0, $v1, $v0
/* 12CCD28 800767F8 F5FF4014 */  bnez       $v0, .Lcutscene_66_800767D0
/* 12CCD2C 800767FC 58008424 */   addiu     $a0, $a0, 0x58
.Lcutscene_66_80076800:
/* 12CCD30 80076800 01000224 */  addiu      $v0, $zero, 0x1
.Lcutscene_66_80076804:
/* 12CCD34 80076804 2400BF8F */  lw         $ra, 0x24($sp)
/* 12CCD38 80076808 2000B28F */  lw         $s2, 0x20($sp)
/* 12CCD3C 8007680C 1C00B18F */  lw         $s1, 0x1C($sp)
/* 12CCD40 80076810 1800B08F */  lw         $s0, 0x18($sp)
/* 12CCD44 80076814 2800BD27 */  addiu      $sp, $sp, 0x28
/* 12CCD48 80076818 0800E003 */  jr         $ra
/* 12CCD4C 8007681C 00000000 */   nop
.size func_cutscene_66_800765C8, . - func_cutscene_66_800765C8
