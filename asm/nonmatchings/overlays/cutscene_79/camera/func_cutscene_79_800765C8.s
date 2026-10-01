.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_79_800765C8
/* 2E01AF8 800765C8 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 2E01AFC 800765CC 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 2E01B00 800765D0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 2E01B04 800765D4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 2E01B08 800765D8 0780113C */  lui        $s1, %hi(D_8006EDD8)
/* 2E01B0C 800765DC D8ED3126 */  addiu      $s1, $s1, %lo(D_8006EDD8)
/* 2E01B10 800765E0 2400BFAF */  sw         $ra, 0x24($sp)
/* 2E01B14 800765E4 2000B2AF */  sw         $s2, 0x20($sp)
/* 2E01B18 800765E8 1800B0AF */  sw         $s0, 0x18($sp)
/* 2E01B1C 800765EC 000024AE */  sw         $a0, 0x0($s1)
/* 2E01B20 800765F0 40180200 */  sll        $v1, $v0, 1
/* 2E01B24 800765F4 21186200 */  addu       $v1, $v1, $v0
/* 2E01B28 800765F8 C0180300 */  sll        $v1, $v1, 3
/* 2E01B2C 800765FC 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x44)
/* 2E01B30 80076600 21082300 */  addu       $at, $at, $v1
/* 2E01B34 80076604 1CD9228C */  lw         $v0, %lo(D_8006D8D8 + 0x44)($at)
/* 2E01B38 80076608 00000000 */  nop
/* 2E01B3C 8007660C 03004014 */  bnez       $v0, .Lcutscene_79_8007661C
/* 2E01B40 80076610 00080624 */   addiu     $a2, $zero, 0x800
/* 2E01B44 80076614 01DA0108 */  j          .Lcutscene_79_80076804
/* 2E01B48 80076618 21100000 */   addu      $v0, $zero, $zero
.Lcutscene_79_8007661C:
/* 2E01B4C 8007661C 0780043C */  lui        $a0, %hi(D_8006E470)
/* 2E01B50 80076620 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 2E01B54 80076624 0780103C */  lui        $s0, %hi(D_800722CC)
/* 2E01B58 80076628 CC22108E */  lw         $s0, %lo(D_800722CC)($s0)
/* 2E01B5C 8007662C 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 2E01B60 80076630 21082300 */  addu       $at, $at, $v1
/* 2E01B64 80076634 18D9278C */  lw         $a3, %lo(D_8006D8D8 + 0x40)($at)
/* 2E01B68 80076638 5E41010C */  jal        CDLoadSync
/* 2E01B6C 8007663C 21280002 */   addu      $a1, $s0, $zero
/* 2E01B70 80076640 0100043C */  lui        $a0, (0x1C000 >> 16)
/* 2E01B74 80076644 06000224 */  addiu      $v0, $zero, 0x6
/* 2E01B78 80076648 01001224 */  addiu      $s2, $zero, 0x1
/* 2E01B7C 8007664C 0780013C */  lui        $at, %hi(D_8006E344)
/* 2E01B80 80076650 44E322AC */  sw         $v0, %lo(D_8006E344)($at)
/* 2E01B84 80076654 0780013C */  lui        $at, %hi(D_8006C718)
/* 2E01B88 80076658 18C732AC */  sw         $s2, %lo(D_8006C718)($at)
/* 2E01B8C 8007665C C47E000C */  jal        func_8001FB10
/* 2E01B90 80076660 00C08434 */   ori       $a0, $a0, (0x1C000 & 0xFFFF)
/* 2E01B94 80076664 21200002 */  addu       $a0, $s0, $zero
/* 2E01B98 80076668 4CDB010C */  jal        func_cutscene_79_80076D30
/* 2E01B9C 8007666C 01000524 */   addiu     $a1, $zero, 0x1
/* 2E01BA0 80076670 21280000 */  addu       $a1, $zero, $zero
/* 2E01BA4 80076674 0780043C */  lui        $a0, %hi(D_8006EE08)
/* 2E01BA8 80076678 08EE848C */  lw         $a0, %lo(D_8006EE08)($a0)
/* 2E01BAC 8007667C 0780013C */  lui        $at, %hi(D_8006EDDC)
/* 2E01BB0 80076680 DCED20AC */  sw         $zero, %lo(D_8006EDDC)($at)
/* 2E01BB4 80076684 0780013C */  lui        $at, %hi(D_8006EDE0)
/* 2E01BB8 80076688 E0ED20AC */  sw         $zero, %lo(D_8006EDE0)($at)
/* 2E01BBC 8007668C F8DB010C */  jal        func_cutscene_79_80076FE0
/* 2E01BC0 80076690 01000624 */   addiu     $a2, $zero, 0x1
/* 2E01BC4 80076694 0780033C */  lui        $v1, %hi(D_8006E33C)
/* 2E01BC8 80076698 3CE36390 */  lbu        $v1, %lo(D_8006E33C)($v1)
/* 2E01BCC 8007669C 0780043C */  lui        $a0, %hi(D_8006E33D)
/* 2E01BD0 800766A0 3DE38490 */  lbu        $a0, %lo(D_8006E33D)($a0)
/* 2E01BD4 800766A4 0780023C */  lui        $v0, %hi(D_8006C5BC)
/* 2E01BD8 800766A8 BCC5428C */  lw         $v0, %lo(D_8006C5BC)($v0)
/* 2E01BDC 800766AC 0780053C */  lui        $a1, %hi(D_8006E33E)
/* 2E01BE0 800766B0 3EE3A590 */  lbu        $a1, %lo(D_8006E33E)($a1)
/* 2E01BE4 800766B4 3C004228 */  slti       $v0, $v0, 0x3C
/* 2E01BE8 800766B8 0780013C */  lui        $at, %hi(D_8006FC15)
/* 2E01BEC 800766BC 15FC23A0 */  sb         $v1, %lo(D_8006FC15)($at)
/* 2E01BF0 800766C0 0780013C */  lui        $at, %hi(D_8006FC16)
/* 2E01BF4 800766C4 16FC24A0 */  sb         $a0, %lo(D_8006FC16)($at)
/* 2E01BF8 800766C8 0780013C */  lui        $at, %hi(D_8006FC17)
/* 2E01BFC 800766CC 17FC25A0 */  sb         $a1, %lo(D_8006FC17)($at)
/* 2E01C00 800766D0 0780013C */  lui        $at, %hi(D_8006FC89)
/* 2E01C04 800766D4 89FC23A0 */  sb         $v1, %lo(D_8006FC89)($at)
/* 2E01C08 800766D8 0780013C */  lui        $at, %hi(D_8006FC8A)
/* 2E01C0C 800766DC 8AFC24A0 */  sb         $a0, %lo(D_8006FC8A)($at)
/* 2E01C10 800766E0 0780013C */  lui        $at, %hi(D_8006FC8B)
/* 2E01C14 800766E4 8BFC25A0 */  sb         $a1, %lo(D_8006FC8B)($at)
/* 2E01C18 800766E8 0E004014 */  bnez       $v0, .Lcutscene_79_80076724
/* 2E01C1C 800766EC 00000000 */   nop
/* 2E01C20 800766F0 0780043C */  lui        $a0, %hi(D_800722D0)
/* 2E01C24 800766F4 D022848C */  lw         $a0, %lo(D_800722D0)($a0)
/* 2E01C28 800766F8 DAAD000C */  jal        func_8002B768
/* 2E01C2C 800766FC FCDF8424 */   addiu     $a0, $a0, -0x2004
/* 2E01C30 80076700 21280000 */  addu       $a1, $zero, $zero
/* 2E01C34 80076704 0780043C */  lui        $a0, %hi(D_8006C554)
/* 2E01C38 80076708 54C5848C */  lw         $a0, %lo(D_8006C554)($a0)
/* 2E01C3C 8007670C 00000000 */  nop
/* 2E01C40 80076710 00F08424 */  addiu      $a0, $a0, -0x1000
/* 2E01C44 80076714 0780013C */  lui        $at, %hi(D_8006C7E0)
/* 2E01C48 80076718 E0C724AC */  sw         $a0, %lo(D_8006C7E0)($at)
/* 2E01C4C 8007671C E439010C */  jal        func_8004E790
/* 2E01C50 80076720 00100624 */   addiu     $a2, $zero, 0x1000
.Lcutscene_79_80076724:
/* 2E01C54 80076724 40002426 */  addiu      $a0, $s1, 0x40
/* 2E01C58 80076728 0780053C */  lui        $a1, %hi(D_8006C6A0)
/* 2E01C5C 8007672C A0C6A58C */  lw         $a1, %lo(D_8006C6A0)($a1)
/* 2E01C60 80076730 F539010C */  jal        func_8004E7D4
/* 2E01C64 80076734 14000624 */   addiu     $a2, $zero, 0x14
/* 2E01C68 80076738 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 2E01C6C 8007673C A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 2E01C70 80076740 10100224 */  addiu      $v0, $zero, 0x1010
/* 2E01C74 80076744 000062AC */  sw         $v0, 0x0($v1)
/* 2E01C78 80076748 FF2F0224 */  addiu      $v0, $zero, 0x2FFF
/* 2E01C7C 8007674C 060062A4 */  sh         $v0, 0x6($v1)
/* 2E01C80 80076750 F8070224 */  addiu      $v0, $zero, 0x7F8
/* 2E01C84 80076754 0C0062A4 */  sh         $v0, 0xC($v1)
/* 2E01C88 80076758 0E0062A4 */  sh         $v0, 0xE($v1)
/* 2E01C8C 8007675C 01000224 */  addiu      $v0, $zero, 0x1
/* 2E01C90 80076760 100062A0 */  sb         $v0, 0x10($v1)
/* 2E01C94 80076764 0780043C */  lui        $a0, %hi(D_8006C704)
/* 2E01C98 80076768 04C7848C */  lw         $a0, %lo(D_8006C704)($a0)
/* 2E01C9C 8007676C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 2E01CA0 80076770 0780013C */  lui        $at, %hi(D_8006EE14)
/* 2E01CA4 80076774 14EE22AC */  sw         $v0, %lo(D_8006EE14)($at)
/* 2E01CA8 80076778 0780023C */  lui        $v0, %hi(D_8006C578)
/* 2E01CAC 8007677C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 2E01CB0 80076780 21280000 */  addu       $a1, $zero, $zero
/* 2E01CB4 80076784 0780013C */  lui        $at, %hi(D_80070328 + 0x288)
/* 2E01CB8 80076788 B00532AC */  sw         $s2, %lo(D_80070328 + 0x288)($at)
/* 2E01CBC 8007678C 01004224 */  addiu      $v0, $v0, 0x1
/* 2E01CC0 80076790 40300200 */  sll        $a2, $v0, 1
/* 2E01CC4 80076794 2130C200 */  addu       $a2, $a2, $v0
/* 2E01CC8 80076798 80300600 */  sll        $a2, $a2, 2
/* 2E01CCC 8007679C 2330C200 */  subu       $a2, $a2, $v0
/* 2E01CD0 800767A0 0780013C */  lui        $at, %hi(D_8006C610)
/* 2E01CD4 800767A4 10C624AC */  sw         $a0, %lo(D_8006C610)($at)
/* 2E01CD8 800767A8 E439010C */  jal        func_8004E790
/* 2E01CDC 800767AC C0300600 */   sll       $a2, $a2, 3
/* 2E01CE0 800767B0 0780023C */  lui        $v0, %hi(D_8006C578)
/* 2E01CE4 800767B4 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 2E01CE8 800767B8 00000000 */  nop
/* 2E01CEC 800767BC 01004224 */  addiu      $v0, $v0, 0x1
/* 2E01CF0 800767C0 0F004018 */  blez       $v0, .Lcutscene_79_80076800
/* 2E01CF4 800767C4 21180000 */   addu      $v1, $zero, $zero
/* 2E01CF8 800767C8 FF000524 */  addiu      $a1, $zero, 0xFF
/* 2E01CFC 800767CC 21200000 */  addu       $a0, $zero, $zero
.Lcutscene_79_800767D0:
/* 2E01D00 800767D0 0780023C */  lui        $v0, %hi(D_8006C610)
/* 2E01D04 800767D4 10C6428C */  lw         $v0, %lo(D_8006C610)($v0)
/* 2E01D08 800767D8 01006324 */  addiu      $v1, $v1, 0x1
/* 2E01D0C 800767DC 21108200 */  addu       $v0, $a0, $v0
/* 2E01D10 800767E0 480045A0 */  sb         $a1, 0x48($v0)
/* 2E01D14 800767E4 0780023C */  lui        $v0, %hi(D_8006C578)
/* 2E01D18 800767E8 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 2E01D1C 800767EC 00000000 */  nop
/* 2E01D20 800767F0 01004224 */  addiu      $v0, $v0, 0x1
/* 2E01D24 800767F4 2A106200 */  slt        $v0, $v1, $v0
/* 2E01D28 800767F8 F5FF4014 */  bnez       $v0, .Lcutscene_79_800767D0
/* 2E01D2C 800767FC 58008424 */   addiu     $a0, $a0, 0x58
.Lcutscene_79_80076800:
/* 2E01D30 80076800 01000224 */  addiu      $v0, $zero, 0x1
.Lcutscene_79_80076804:
/* 2E01D34 80076804 2400BF8F */  lw         $ra, 0x24($sp)
/* 2E01D38 80076808 2000B28F */  lw         $s2, 0x20($sp)
/* 2E01D3C 8007680C 1C00B18F */  lw         $s1, 0x1C($sp)
/* 2E01D40 80076810 1800B08F */  lw         $s0, 0x18($sp)
/* 2E01D44 80076814 2800BD27 */  addiu      $sp, $sp, 0x28
/* 2E01D48 80076818 0800E003 */  jr         $ra
/* 2E01D4C 8007681C 00000000 */   nop
.size func_cutscene_79_800765C8, . - func_cutscene_79_800765C8
