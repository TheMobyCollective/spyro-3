.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_62_8007746C
/* 66D99C 8007746C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 66D9A0 80077470 0780043C */  lui        $a0, %hi(D_8006EDDC)
/* 66D9A4 80077474 DCED8424 */  addiu      $a0, $a0, %lo(D_8006EDDC)
/* 66D9A8 80077478 1400BFAF */  sw         $ra, 0x14($sp)
/* 66D9AC 8007747C 1000B0AF */  sw         $s0, 0x10($sp)
/* 66D9B0 80077480 0000828C */  lw         $v0, 0x0($a0)
/* 66D9B4 80077484 0780033C */  lui        $v1, %hi(D_8006C648)
/* 66D9B8 80077488 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 66D9BC 8007748C 1000858C */  lw         $a1, 0x10($a0)
/* 66D9C0 80077490 21104300 */  addu       $v0, $v0, $v1
/* 66D9C4 80077494 FFFFA324 */  addiu      $v1, $a1, -0x1
/* 66D9C8 80077498 000082AC */  sw         $v0, 0x0($a0)
/* 66D9CC 8007749C 2A106200 */  slt        $v0, $v1, $v0
/* 66D9D0 800774A0 02004010 */  beqz       $v0, .Lcutscene_62_800774AC
/* 66D9D4 800774A4 00000000 */   nop
/* 66D9D8 800774A8 000083AC */  sw         $v1, 0x0($a0)
.Lcutscene_62_800774AC:
/* 66D9DC 800774AC 0000848C */  lw         $a0, 0x0($a0)
/* 66D9E0 800774B0 00000000 */  nop
/* 66D9E4 800774B4 14008228 */  slti       $v0, $a0, 0x14
/* 66D9E8 800774B8 0B004010 */  beqz       $v0, .Lcutscene_62_800774E8
/* 66D9EC 800774BC 0F000224 */   addiu     $v0, $zero, 0xF
/* 66D9F0 800774C0 23104400 */  subu       $v0, $v0, $a0
/* 66D9F4 800774C4 00110200 */  sll        $v0, $v0, 4
/* 66D9F8 800774C8 0780013C */  lui        $at, %hi(D_8006C598)
/* 66D9FC 800774CC 98C522AC */  sw         $v0, %lo(D_8006C598)($at)
/* 66DA00 800774D0 21004104 */  bgez       $v0, .Lcutscene_62_80077558
/* 66DA04 800774D4 00000000 */   nop
/* 66DA08 800774D8 0780013C */  lui        $at, %hi(D_8006C598)
/* 66DA0C 800774DC 98C520AC */  sw         $zero, %lo(D_8006C598)($at)
/* 66DA10 800774E0 56DD0108 */  j          .Lcutscene_62_80077558
/* 66DA14 800774E4 00000000 */   nop
.Lcutscene_62_800774E8:
/* 66DA18 800774E8 2118A000 */  addu       $v1, $a1, $zero
/* 66DA1C 800774EC F6FF6224 */  addiu      $v0, $v1, -0xA
/* 66DA20 800774F0 2A104400 */  slt        $v0, $v0, $a0
/* 66DA24 800774F4 05004010 */  beqz       $v0, .Lcutscene_62_8007750C
/* 66DA28 800774F8 23186400 */   subu      $v1, $v1, $a0
/* 66DA2C 800774FC 0A000224 */  addiu      $v0, $zero, 0xA
/* 66DA30 80077500 23104300 */  subu       $v0, $v0, $v1
/* 66DA34 80077504 54DD0108 */  j          .Lcutscene_62_80077550
/* 66DA38 80077508 40110200 */   sll       $v0, $v0, 5
.Lcutscene_62_8007750C:
/* 66DA3C 8007750C 0780023C */  lui        $v0, %hi(D_8006C598)
/* 66DA40 80077510 98C5428C */  lw         $v0, %lo(D_8006C598)($v0)
/* 66DA44 80077514 00000000 */  nop
/* 66DA48 80077518 0D004014 */  bnez       $v0, .Lcutscene_62_80077550
/* 66DA4C 8007751C 20004224 */   addiu     $v0, $v0, 0x20
/* 66DA50 80077520 78008228 */  slti       $v0, $a0, 0x78
/* 66DA54 80077524 0C004014 */  bnez       $v0, .Lcutscene_62_80077558
/* 66DA58 80077528 E0FFA224 */   addiu     $v0, $a1, -0x20
/* 66DA5C 8007752C 2A108200 */  slt        $v0, $a0, $v0
/* 66DA60 80077530 09004010 */  beqz       $v0, .Lcutscene_62_80077558
/* 66DA64 80077534 00000000 */   nop
/* 66DA68 80077538 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 66DA6C 8007753C 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 66DA70 80077540 00000000 */  nop
/* 66DA74 80077544 40094230 */  andi       $v0, $v0, 0x940
/* 66DA78 80077548 03004010 */  beqz       $v0, .Lcutscene_62_80077558
/* 66DA7C 8007754C 20000224 */   addiu     $v0, $zero, 0x20
.Lcutscene_62_80077550:
/* 66DA80 80077550 0780013C */  lui        $at, %hi(D_8006C598)
/* 66DA84 80077554 98C522AC */  sw         $v0, %lo(D_8006C598)($at)
.Lcutscene_62_80077558:
/* 66DA88 80077558 0780033C */  lui        $v1, %hi(D_8006C598)
/* 66DA8C 8007755C 98C5638C */  lw         $v1, %lo(D_8006C598)($v1)
/* 66DA90 80077560 00000000 */  nop
/* 66DA94 80077564 FF006228 */  slti       $v0, $v1, 0xFF
/* 66DA98 80077568 07004014 */  bnez       $v0, .Lcutscene_62_80077588
/* 66DA9C 8007756C FF000224 */   addiu     $v0, $zero, 0xFF
/* 66DAA0 80077570 0780013C */  lui        $at, %hi(D_8006C598)
/* 66DAA4 80077574 98C522AC */  sw         $v0, %lo(D_8006C598)($at)
/* 66DAA8 80077578 B4DC010C */  jal        func_cutscene_62_800772D0
/* 66DAAC 8007757C 00000000 */   nop
/* 66DAB0 80077580 F3DD0108 */  j          .Lcutscene_62_800777CC
/* 66DAB4 80077584 00000000 */   nop
.Lcutscene_62_80077588:
/* 66DAB8 80077588 0780023C */  lui        $v0, %hi(D_8006EDDC)
/* 66DABC 8007758C DCED428C */  lw         $v0, %lo(D_8006EDDC)($v0)
/* 66DAC0 80077590 00000000 */  nop
/* 66DAC4 80077594 02004228 */  slti       $v0, $v0, 0x2
/* 66DAC8 80077598 13004014 */  bnez       $v0, .Lcutscene_62_800775E8
/* 66DACC 8007759C 00000000 */   nop
/* 66DAD0 800775A0 0780043C */  lui        $a0, %hi(D_8006EE14)
/* 66DAD4 800775A4 14EE848C */  lw         $a0, %lo(D_8006EE14)($a0)
/* 66DAD8 800775A8 00000000 */  nop
/* 66DADC 800775AC 09008104 */  bgez       $a0, .Lcutscene_62_800775D4
/* 66DAE0 800775B0 00010224 */   addiu     $v0, $zero, 0x100
/* 66DAE4 800775B4 21200000 */  addu       $a0, $zero, $zero
/* 66DAE8 800775B8 21280000 */  addu       $a1, $zero, $zero
/* 66DAEC 800775BC D4EE000C */  jal        PlaySound
/* 66DAF0 800775C0 04000624 */   addiu     $a2, $zero, 0x4
/* 66DAF4 800775C4 0780013C */  lui        $at, %hi(D_8006EE14)
/* 66DAF8 800775C8 14EE22AC */  sw         $v0, %lo(D_8006EE14)($at)
/* 66DAFC 800775CC 7ADD0108 */  j          .Lcutscene_62_800775E8
/* 66DB00 800775D0 00000000 */   nop
.Lcutscene_62_800775D4:
/* 66DB04 800775D4 23104300 */  subu       $v0, $v0, $v1
/* 66DB08 800775D8 40280200 */  sll        $a1, $v0, 1
/* 66DB0C 800775DC 2128A200 */  addu       $a1, $a1, $v0
/* 66DB10 800775E0 50F0000C */  jal        func_8003C140
/* 66DB14 800775E4 C0280500 */   sll       $a1, $a1, 3
.Lcutscene_62_800775E8:
/* 66DB18 800775E8 0780103C */  lui        $s0, %hi(D_8006EDE8)
/* 66DB1C 800775EC E8ED1026 */  addiu      $s0, $s0, %lo(D_8006EDE8)
/* 66DB20 800775F0 0000028E */  lw         $v0, 0x0($s0)
/* 66DB24 800775F4 00000000 */  nop
/* 66DB28 800775F8 10004104 */  bgez       $v0, .Lcutscene_62_8007763C
/* 66DB2C 800775FC 8888063C */   lui       $a2, (0x88888889 >> 16)
/* 66DB30 80077600 FE40010C */  jal        func_800503F8
/* 66DB34 80077604 00000000 */   nop
/* 66DB38 80077608 0C004014 */  bnez       $v0, .Lcutscene_62_8007763C
/* 66DB3C 8007760C 8888063C */   lui       $a2, (0x88888889 >> 16)
/* 66DB40 80077610 0780053C */  lui        $a1, %hi(D_8006EDE0)
/* 66DB44 80077614 E0EDA58C */  lw         $a1, %lo(D_8006EDE0)($a1)
/* 66DB48 80077618 00000000 */  nop
/* 66DB4C 8007761C 0100A524 */  addiu      $a1, $a1, 0x1
/* 66DB50 80077620 0100A230 */  andi       $v0, $a1, 0x1
/* 66DB54 80077624 80100200 */  sll        $v0, $v0, 2
/* 66DB58 80077628 21100202 */  addu       $v0, $s0, $v0
/* 66DB5C 8007762C 2000448C */  lw         $a0, 0x20($v0)
/* 66DB60 80077630 A4DE010C */  jal        func_cutscene_62_80077A90
/* 66DB64 80077634 01000624 */   addiu     $a2, $zero, 0x1
/* 66DB68 80077638 8888063C */  lui        $a2, (0x88888889 >> 16)
.Lcutscene_62_8007763C:
/* 66DB6C 8007763C 0780043C */  lui        $a0, %hi(D_8006EDDC)
/* 66DB70 80077640 DCED848C */  lw         $a0, %lo(D_8006EDDC)($a0)
/* 66DB74 80077644 8988C634 */  ori        $a2, $a2, (0x88888889 & 0xFFFF)
/* 66DB78 80077648 18008600 */  mult       $a0, $a2
/* 66DB7C 8007764C 0780073C */  lui        $a3, %hi(D_8006EDE0)
/* 66DB80 80077650 E0EDE724 */  addiu      $a3, $a3, %lo(D_8006EDE0)
/* 66DB84 80077654 0780053C */  lui        $a1, %hi(D_8006C648)
/* 66DB88 80077658 48C6A58C */  lw         $a1, %lo(D_8006C648)($a1)
/* 66DB8C 8007765C C31F0400 */  sra        $v1, $a0, 31
/* 66DB90 80077660 10480000 */  mfhi       $t1
/* 66DB94 80077664 21102401 */  addu       $v0, $t1, $a0
/* 66DB98 80077668 83110200 */  sra        $v0, $v0, 6
/* 66DB9C 8007766C 23184300 */  subu       $v1, $v0, $v1
/* 66DBA0 80077670 00110300 */  sll        $v0, $v1, 4
/* 66DBA4 80077674 23104300 */  subu       $v0, $v0, $v1
/* 66DBA8 80077678 C0100200 */  sll        $v0, $v0, 3
/* 66DBAC 8007767C 23108200 */  subu       $v0, $a0, $v0
/* 66DBB0 80077680 0000E3AC */  sw         $v1, 0x0($a3)
/* 66DBB4 80077684 0780013C */  lui        $at, %hi(D_8006EDE4)
/* 66DBB8 80077688 E4ED22AC */  sw         $v0, %lo(D_8006EDE4)($at)
/* 66DBBC 8007768C 2A104500 */  slt        $v0, $v0, $a1
/* 66DBC0 80077690 18004010 */  beqz       $v0, .Lcutscene_62_800776F4
/* 66DBC4 80077694 00000000 */   nop
/* 66DBC8 80077698 0780023C */  lui        $v0, %hi(D_8006EDE8)
/* 66DBCC 8007769C E8ED428C */  lw         $v0, %lo(D_8006EDE8)($v0)
/* 66DBD0 800776A0 00000000 */  nop
/* 66DBD4 800776A4 2A104300 */  slt        $v0, $v0, $v1
/* 66DBD8 800776A8 12004010 */  beqz       $v0, .Lcutscene_62_800776F4
/* 66DBDC 800776AC 23208500 */   subu      $a0, $a0, $a1
/* 66DBE0 800776B0 18008600 */  mult       $a0, $a2
/* 66DBE4 800776B4 C31F0400 */  sra        $v1, $a0, 31
/* 66DBE8 800776B8 0780013C */  lui        $at, %hi(D_8006EDDC)
/* 66DBEC 800776BC DCED24AC */  sw         $a0, %lo(D_8006EDDC)($at)
/* 66DBF0 800776C0 10480000 */  mfhi       $t1
/* 66DBF4 800776C4 21102401 */  addu       $v0, $t1, $a0
/* 66DBF8 800776C8 83110200 */  sra        $v0, $v0, 6
/* 66DBFC 800776CC 23104300 */  subu       $v0, $v0, $v1
/* 66DC00 800776D0 00190200 */  sll        $v1, $v0, 4
/* 66DC04 800776D4 23186200 */  subu       $v1, $v1, $v0
/* 66DC08 800776D8 C0180300 */  sll        $v1, $v1, 3
/* 66DC0C 800776DC 23208300 */  subu       $a0, $a0, $v1
/* 66DC10 800776E0 0000E2AC */  sw         $v0, 0x0($a3)
/* 66DC14 800776E4 0780013C */  lui        $at, %hi(D_8006EDE4)
/* 66DC18 800776E8 E4ED24AC */  sw         $a0, %lo(D_8006EDE4)($at)
/* 66DC1C 800776EC B7EF000C */  jal        func_8003BEDC
/* 66DC20 800776F0 00000000 */   nop
.Lcutscene_62_800776F4:
/* 66DC24 800776F4 0780063C */  lui        $a2, %hi(D_8006EDE4)
/* 66DC28 800776F8 E4EDC624 */  addiu      $a2, $a2, %lo(D_8006EDE4)
/* 66DC2C 800776FC 0000C38C */  lw         $v1, 0x0($a2)
/* 66DC30 80077700 00000000 */  nop
/* 66DC34 80077704 2A006010 */  beqz       $v1, .Lcutscene_62_800777B0
/* 66DC38 80077708 00000000 */   nop
/* 66DC3C 8007770C 0780023C */  lui        $v0, %hi(D_8006C648)
/* 66DC40 80077710 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 66DC44 80077714 00000000 */  nop
/* 66DC48 80077718 2A104300 */  slt        $v0, $v0, $v1
/* 66DC4C 8007771C 24004014 */  bnez       $v0, .Lcutscene_62_800777B0
/* 66DC50 80077720 00000000 */   nop
/* 66DC54 80077724 0780033C */  lui        $v1, %hi(D_8006EDE0)
/* 66DC58 80077728 E0ED638C */  lw         $v1, %lo(D_8006EDE0)($v1)
/* 66DC5C 8007772C 0780023C */  lui        $v0, %hi(D_8006EDF0)
/* 66DC60 80077730 F0ED428C */  lw         $v0, %lo(D_8006EDF0)($v0)
/* 66DC64 80077734 01006524 */  addiu      $a1, $v1, 0x1
/* 66DC68 80077738 2A10A200 */  slt        $v0, $a1, $v0
/* 66DC6C 8007773C 1C004010 */  beqz       $v0, .Lcutscene_62_800777B0
/* 66DC70 80077740 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 66DC74 80077744 0780013C */  lui        $at, %hi(D_8006EDE8)
/* 66DC78 80077748 E8ED22AC */  sw         $v0, %lo(D_8006EDE8)($at)
/* 66DC7C 8007774C 0100A230 */  andi       $v0, $a1, 0x1
/* 66DC80 80077750 80100200 */  sll        $v0, $v0, 2
/* 66DC84 80077754 2110C200 */  addu       $v0, $a2, $v0
/* 66DC88 80077758 80180300 */  sll        $v1, $v1, 2
/* 66DC8C 8007775C 0780043C */  lui        $a0, %hi(D_8006E470)
/* 66DC90 80077760 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 66DC94 80077764 2400458C */  lw         $a1, 0x24($v0)
/* 66DC98 80077768 0780083C */  lui        $t0, %hi(D_8006EDF8)
/* 66DC9C 8007776C F8ED088D */  lw         $t0, %lo(D_8006EDF8)($t0)
/* 66DCA0 80077770 0780063C */  lui        $a2, %hi(D_8006C58C)
/* 66DCA4 80077774 8CC5C68C */  lw         $a2, %lo(D_8006C58C)($a2)
/* 66DCA8 80077778 21406800 */  addu       $t0, $v1, $t0
/* 66DCAC 8007777C 40100600 */  sll        $v0, $a2, 1
/* 66DCB0 80077780 21104600 */  addu       $v0, $v0, $a2
/* 66DCB4 80077784 C0100200 */  sll        $v0, $v0, 3
/* 66DCB8 80077788 0780063C */  lui        $a2, %hi(D_8006EDF4)
/* 66DCBC 8007778C F4EDC68C */  lw         $a2, %lo(D_8006EDF4)($a2)
/* 66DCC0 80077790 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 66DCC4 80077794 21082200 */  addu       $at, $at, $v0
/* 66DCC8 80077798 18D9228C */  lw         $v0, %lo(D_8006D8D8 + 0x40)($at)
/* 66DCCC 8007779C 21186600 */  addu       $v1, $v1, $a2
/* 66DCD0 800777A0 0400678C */  lw         $a3, 0x4($v1)
/* 66DCD4 800777A4 0400068D */  lw         $a2, 0x4($t0)
/* 66DCD8 800777A8 A041010C */  jal        func_80050680
/* 66DCDC 800777AC 21384700 */   addu      $a3, $v0, $a3
.Lcutscene_62_800777B0:
/* 66DCE0 800777B0 0780033C */  lui        $v1, %hi(D_8006EDE4)
/* 66DCE4 800777B4 E4ED6324 */  addiu      $v1, $v1, %lo(D_8006EDE4)
/* 66DCE8 800777B8 0000628C */  lw         $v0, 0x0($v1)
/* 66DCEC 800777BC 00000000 */  nop
/* 66DCF0 800777C0 FE004230 */  andi       $v0, $v0, 0xFE
/* 66DCF4 800777C4 1CDF010C */  jal        func_cutscene_62_80077C70
/* 66DCF8 800777C8 000062AC */   sw        $v0, 0x0($v1)
.Lcutscene_62_800777CC:
/* 66DCFC 800777CC 1400BF8F */  lw         $ra, 0x14($sp)
/* 66DD00 800777D0 1000B08F */  lw         $s0, 0x10($sp)
/* 66DD04 800777D4 1800BD27 */  addiu      $sp, $sp, 0x18
/* 66DD08 800777D8 0800E003 */  jr         $ra
/* 66DD0C 800777DC 00000000 */   nop
.size func_cutscene_62_8007746C, . - func_cutscene_62_8007746C
