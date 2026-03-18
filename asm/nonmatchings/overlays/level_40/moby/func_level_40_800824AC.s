.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_40_800824AC
/* 7E6D9DC 800824AC C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 7E6D9E0 800824B0 2400B1AF */  sw         $s1, 0x24($sp)
/* 7E6D9E4 800824B4 21888000 */  addu       $s1, $a0, $zero
/* 7E6D9E8 800824B8 3400B5AF */  sw         $s5, 0x34($sp)
/* 7E6D9EC 800824BC 21A8A000 */  addu       $s5, $a1, $zero
/* 7E6D9F0 800824C0 3800BFAF */  sw         $ra, 0x38($sp)
/* 7E6D9F4 800824C4 3000B4AF */  sw         $s4, 0x30($sp)
/* 7E6D9F8 800824C8 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 7E6D9FC 800824CC 2800B2AF */  sw         $s2, 0x28($sp)
/* 7E6DA00 800824D0 9F56010C */  jal        func_80055A7C
/* 7E6DA04 800824D4 2000B0AF */   sw        $s0, 0x20($sp)
/* 7E6DA08 800824D8 21984000 */  addu       $s3, $v0, $zero
/* 7E6DA0C 800824DC 03006016 */  bnez       $s3, .Llevel_40_800824EC
/* 7E6DA10 800824E0 21206002 */   addu      $a0, $s3, $zero
/* 7E6DA14 800824E4 410B0208 */  j          .Llevel_40_80082D04
/* 7E6DA18 800824E8 21100000 */   addu      $v0, $zero, $zero
.Llevel_40_800824EC:
/* 7E6DA1C 800824EC 21280000 */  addu       $a1, $zero, $zero
/* 7E6DA20 800824F0 0000708E */  lw         $s0, 0x0($s3)
/* 7E6DA24 800824F4 E439010C */  jal        func_8004E790
/* 7E6DA28 800824F8 58000624 */   addiu     $a2, $zero, 0x58
/* 7E6DA2C 800824FC 21280000 */  addu       $a1, $zero, $zero
/* 7E6DA30 80082500 18000624 */  addiu      $a2, $zero, 0x18
/* 7E6DA34 80082504 21200002 */  addu       $a0, $s0, $zero
/* 7E6DA38 80082508 E439010C */  jal        func_8004E790
/* 7E6DA3C 8008250C 000064AE */   sw        $a0, 0x0($s3)
/* 7E6DA40 80082510 1600A012 */  beqz       $s5, .Llevel_40_8008256C
/* 7E6DA44 80082514 360071A6 */   sh        $s1, 0x36($s3)
/* 7E6DA48 80082518 0780043C */  lui        $a0, %hi(D_8006C550)
/* 7E6DA4C 8008251C 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 7E6DA50 80082520 00000000 */  nop
/* 7E6DA54 80082524 2320A402 */  subu       $a0, $s5, $a0
/* 7E6DA58 80082528 40190400 */  sll        $v1, $a0, 5
/* 7E6DA5C 8008252C 23186400 */  subu       $v1, $v1, $a0
/* 7E6DA60 80082530 40190300 */  sll        $v1, $v1, 5
/* 7E6DA64 80082534 21186400 */  addu       $v1, $v1, $a0
/* 7E6DA68 80082538 C0100300 */  sll        $v0, $v1, 3
/* 7E6DA6C 8008253C 21186200 */  addu       $v1, $v1, $v0
/* 7E6DA70 80082540 C0130300 */  sll        $v0, $v1, 15
/* 7E6DA74 80082544 23104300 */  subu       $v0, $v0, $v1
/* 7E6DA78 80082548 80100200 */  sll        $v0, $v0, 2
/* 7E6DA7C 8008254C 21104400 */  addu       $v0, $v0, $a0
/* 7E6DA80 80082550 23100200 */  negu       $v0, $v0
/* 7E6DA84 80082554 C3180200 */  sra        $v1, $v0, 3
/* 7E6DA88 80082558 0001622C */  sltiu      $v0, $v1, 0x100
/* 7E6DA8C 8008255C 04004010 */  beqz       $v0, .Llevel_40_80082570
/* 7E6DA90 80082560 FF000224 */   addiu     $v0, $zero, 0xFF
/* 7E6DA94 80082564 5D090208 */  j          .Llevel_40_80082574
/* 7E6DA98 80082568 3A0063A2 */   sb        $v1, 0x3A($s3)
.Llevel_40_8008256C:
/* 7E6DA9C 8008256C FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_40_80082570:
/* 7E6DAA0 80082570 3A0062A2 */  sb         $v0, 0x3A($s3)
.Llevel_40_80082574:
/* 7E6DAA4 80082574 FBD3000C */  jal        func_80034FEC
/* 7E6DAA8 80082578 21206002 */   addu      $a0, $s3, $zero
/* 7E6DAAC 8008257C 10010224 */  addiu      $v0, $zero, 0x110
/* 7E6DAB0 80082580 CD002212 */  beq        $s1, $v0, .Llevel_40_800828B8
/* 7E6DAB4 80082584 1101222A */   slti      $v0, $s1, 0x111
/* 7E6DAB8 80082588 19004010 */  beqz       $v0, .Llevel_40_800825F0
/* 7E6DABC 8008258C 78000224 */   addiu     $v0, $zero, 0x78
/* 7E6DAC0 80082590 6A002212 */  beq        $s1, $v0, .Llevel_40_8008273C
/* 7E6DAC4 80082594 7900222A */   slti      $v0, $s1, 0x79
/* 7E6DAC8 80082598 07004010 */  beqz       $v0, .Llevel_40_800825B8
/* 7E6DACC 8008259C 01000224 */   addiu     $v0, $zero, 0x1
/* 7E6DAD0 800825A0 2C002212 */  beq        $s1, $v0, .Llevel_40_80082654
/* 7E6DAD4 800825A4 10000224 */   addiu     $v0, $zero, 0x10
/* 7E6DAD8 800825A8 32002212 */  beq        $s1, $v0, .Llevel_40_80082674
/* 7E6DADC 800825AC 10000324 */   addiu     $v1, $zero, 0x10
/* 7E6DAE0 800825B0 350B0208 */  j          .Llevel_40_80082CD4
/* 7E6DAE4 800825B4 00000000 */   nop
.Llevel_40_800825B8:
/* 7E6DAE8 800825B8 D3000224 */  addiu      $v0, $zero, 0xD3
/* 7E6DAEC 800825BC 2C002212 */  beq        $s1, $v0, .Llevel_40_80082670
/* 7E6DAF0 800825C0 D400222A */   slti      $v0, $s1, 0xD4
/* 7E6DAF4 800825C4 05004010 */  beqz       $v0, .Llevel_40_800825DC
/* 7E6DAF8 800825C8 84000224 */   addiu     $v0, $zero, 0x84
/* 7E6DAFC 800825CC 97002212 */  beq        $s1, $v0, .Llevel_40_8008282C
/* 7E6DB00 800825D0 0C006426 */   addiu     $a0, $s3, 0xC
/* 7E6DB04 800825D4 350B0208 */  j          .Llevel_40_80082CD4
/* 7E6DB08 800825D8 00000000 */   nop
.Llevel_40_800825DC:
/* 7E6DB0C 800825DC 04010224 */  addiu      $v0, $zero, 0x104
/* 7E6DB10 800825E0 A0002212 */  beq        $s1, $v0, .Llevel_40_80082864
/* 7E6DB14 800825E4 00000000 */   nop
/* 7E6DB18 800825E8 350B0208 */  j          .Llevel_40_80082CD4
/* 7E6DB1C 800825EC 00000000 */   nop
.Llevel_40_800825F0:
/* 7E6DB20 800825F0 41010224 */  addiu      $v0, $zero, 0x141
/* 7E6DB24 800825F4 17002212 */  beq        $s1, $v0, .Llevel_40_80082654
/* 7E6DB28 800825F8 4201222A */   slti      $v0, $s1, 0x142
/* 7E6DB2C 800825FC 07004010 */  beqz       $v0, .Llevel_40_8008261C
/* 7E6DB30 80082600 3501222A */   slti      $v0, $s1, 0x135
/* 7E6DB34 80082604 B3014010 */  beqz       $v0, .Llevel_40_80082CD4
/* 7E6DB38 80082608 3201222A */   slti      $v0, $s1, 0x132
/* 7E6DB3C 8008260C B1014014 */  bnez       $v0, .Llevel_40_80082CD4
/* 7E6DB40 80082610 0C006426 */   addiu     $a0, $s3, 0xC
/* 7E6DB44 80082614 490A0208 */  j          .Llevel_40_80082924
/* 7E6DB48 80082618 00000000 */   nop
.Llevel_40_8008261C:
/* 7E6DB4C 8008261C AB010224 */  addiu      $v0, $zero, 0x1AB
/* 7E6DB50 80082620 94012212 */  beq        $s1, $v0, .Llevel_40_80082C74
/* 7E6DB54 80082624 AC01222A */   slti      $v0, $s1, 0x1AC
/* 7E6DB58 80082628 05004010 */  beqz       $v0, .Llevel_40_80082640
/* 7E6DB5C 8008262C AA010224 */   addiu     $v0, $zero, 0x1AA
/* 7E6DB60 80082630 81012212 */  beq        $s1, $v0, .Llevel_40_80082C38
/* 7E6DB64 80082634 0C006426 */   addiu     $a0, $s3, 0xC
/* 7E6DB68 80082638 350B0208 */  j          .Llevel_40_80082CD4
/* 7E6DB6C 8008263C 00000000 */   nop
.Llevel_40_80082640:
/* 7E6DB70 80082640 38020224 */  addiu      $v0, $zero, 0x238
/* 7E6DB74 80082644 B7002212 */  beq        $s1, $v0, .Llevel_40_80082924
/* 7E6DB78 80082648 0C006426 */   addiu     $a0, $s3, 0xC
/* 7E6DB7C 8008264C 350B0208 */  j          .Llevel_40_80082CD4
/* 7E6DB80 80082650 00000000 */   nop
.Llevel_40_80082654:
/* 7E6DB84 80082654 0957010C */  jal        func_80055C24
/* 7E6DB88 80082658 21206002 */   addu      $a0, $s3, $zero
/* 7E6DB8C 8008265C 18000224 */  addiu      $v0, $zero, 0x18
/* 7E6DB90 80082660 4C0062A2 */  sb         $v0, 0x4C($s3)
/* 7E6DB94 80082664 40000224 */  addiu      $v0, $zero, 0x40
/* 7E6DB98 80082668 2B0A0208 */  j          .Llevel_40_800828AC
/* 7E6DB9C 8008266C 4A0062A2 */   sb        $v0, 0x4A($s3)
.Llevel_40_80082670:
/* 7E6DBA0 80082670 10000324 */  addiu      $v1, $zero, 0x10
.Llevel_40_80082674:
/* 7E6DBA4 80082674 36006286 */  lh         $v0, 0x36($s3)
/* 7E6DBA8 80082678 0000718E */  lw         $s1, 0x0($s3)
/* 7E6DBAC 8008267C 19004314 */  bne        $v0, $v1, .Llevel_40_800826E4
/* 7E6DBB0 80082680 0C007026 */   addiu     $s0, $s3, 0xC
/* 7E6DBB4 80082684 0780043C */  lui        $a0, %hi(D_8006C784)
/* 7E6DBB8 80082688 84C7848C */  lw         $a0, %lo(D_8006C784)($a0)
/* 7E6DBBC 8008268C 00000000 */  nop
/* 7E6DBC0 80082690 04008228 */  slti       $v0, $a0, 0x4
/* 7E6DBC4 80082694 03004010 */  beqz       $v0, .Llevel_40_800826A4
/* 7E6DBC8 80082698 0A000324 */   addiu     $v1, $zero, 0xA
/* 7E6DBCC 8008269C AD090208 */  j          .Llevel_40_800826B4
/* 7E6DBD0 800826A0 07000324 */   addiu     $v1, $zero, 0x7
.Llevel_40_800826A4:
/* 7E6DBD4 800826A4 07008228 */  slti       $v0, $a0, 0x7
/* 7E6DBD8 800826A8 02004010 */  beqz       $v0, .Llevel_40_800826B4
/* 7E6DBDC 800826AC 00000000 */   nop
/* 7E6DBE0 800826B0 09000324 */  addiu      $v1, $zero, 0x9
.Llevel_40_800826B4:
/* 7E6DBE4 800826B4 0680043C */  lui        $a0, %hi(D_8006582C)
/* 7E6DBE8 800826B8 2C588424 */  addiu      $a0, $a0, %lo(D_8006582C)
/* 7E6DBEC 800826BC 0000828C */  lw         $v0, 0x0($a0)
/* 7E6DBF0 800826C0 00000000 */  nop
/* 7E6DBF4 800826C4 01004224 */  addiu      $v0, $v0, 0x1
/* 7E6DBF8 800826C8 000082AC */  sw         $v0, 0x0($a0)
/* 7E6DBFC 800826CC 2A104300 */  slt        $v0, $v0, $v1
/* 7E6DC00 800826D0 04004014 */  bnez       $v0, .Llevel_40_800826E4
/* 7E6DC04 800826D4 0C007026 */   addiu     $s0, $s3, 0xC
/* 7E6DC08 800826D8 D3000224 */  addiu      $v0, $zero, 0xD3
/* 7E6DC0C 800826DC 000080AC */  sw         $zero, 0x0($a0)
/* 7E6DC10 800826E0 360062A6 */  sh         $v0, 0x36($s3)
.Llevel_40_800826E4:
/* 7E6DC14 800826E4 21200002 */  addu       $a0, $s0, $zero
/* 7E6DC18 800826E8 5E3C010C */  jal        func_8004F178
/* 7E6DC1C 800826EC 0C00A526 */   addiu     $a1, $s5, 0xC
/* 7E6DC20 800826F0 0957010C */  jal        func_80055C24
/* 7E6DC24 800826F4 21206002 */   addu      $a0, $s3, $zero
/* 7E6DC28 800826F8 21202002 */  addu       $a0, $s1, $zero
/* 7E6DC2C 800826FC 1400628E */  lw         $v0, 0x14($s3)
/* 7E6DC30 80082700 21280002 */  addu       $a1, $s0, $zero
/* 7E6DC34 80082704 00024224 */  addiu      $v0, $v0, 0x200
/* 7E6DC38 80082708 5E3C010C */  jal        func_8004F178
/* 7E6DC3C 8008270C 140062AE */   sw        $v0, 0x14($s3)
/* 7E6DC40 80082710 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 7E6DC44 80082714 1C0062AE */  sw         $v0, 0x1C($s3)
/* 7E6DC48 80082718 02000224 */  addiu      $v0, $zero, 0x2
/* 7E6DC4C 8008271C 470062A2 */  sb         $v0, 0x47($s3)
/* 7E6DC50 80082720 08070224 */  addiu      $v0, $zero, 0x708
/* 7E6DC54 80082724 0E0022A6 */  sh         $v0, 0xE($s1)
/* 7E6DC58 80082728 9171010C */  jal        rand
/* 7E6DC5C 8008272C 110020A2 */   sb        $zero, 0x11($s1)
/* 7E6DC60 80082730 FC004230 */  andi       $v0, $v0, 0xFC
/* 7E6DC64 80082734 400B0208 */  j          .Llevel_40_80082D00
/* 7E6DC68 80082738 120022A2 */   sb        $v0, 0x12($s1)
.Llevel_40_8008273C:
/* 7E6DC6C 8008273C 3600A286 */  lh         $v0, 0x36($s5)
/* 7E6DC70 80082740 00000000 */  nop
/* 7E6DC74 80082744 06005110 */  beq        $v0, $s1, .Llevel_40_80082760
/* 7E6DC78 80082748 21280000 */   addu      $a1, $zero, $zero
/* 7E6DC7C 8008274C 0780043C */  lui        $a0, %hi(D_8006E394)
/* 7E6DC80 80082750 94E38424 */  addiu      $a0, $a0, %lo(D_8006E394)
/* 7E6DC84 80082754 000064AE */  sw         $a0, 0x0($s3)
/* 7E6DC88 80082758 E439010C */  jal        func_8004E790
/* 7E6DC8C 8008275C 1C000624 */   addiu     $a2, $zero, 0x1C
.Llevel_40_80082760:
/* 7E6DC90 80082760 0000708E */  lw         $s0, 0x0($s3)
/* 7E6DC94 80082764 0957010C */  jal        func_80055C24
/* 7E6DC98 80082768 21206002 */   addu      $a0, $s3, $zero
/* 7E6DC9C 8008276C 78000224 */  addiu      $v0, $zero, 0x78
/* 7E6DCA0 80082770 490060A2 */  sb         $zero, 0x49($s3)
/* 7E6DCA4 80082774 000000A6 */  sh         $zero, 0x0($s0)
/* 7E6DCA8 80082778 080000A6 */  sh         $zero, 0x8($s0)
/* 7E6DCAC 8008277C 060000A6 */  sh         $zero, 0x6($s0)
/* 7E6DCB0 80082780 040000A6 */  sh         $zero, 0x4($s0)
/* 7E6DCB4 80082784 0D0002A2 */  sb         $v0, 0xD($s0)
/* 7E6DCB8 80082788 100000AE */  sw         $zero, 0x10($s0)
/* 7E6DCBC 8008278C 0600A012 */  beqz       $s5, .Llevel_40_800827A8
/* 7E6DCC0 80082790 140000AE */   sw        $zero, 0x14($s0)
/* 7E6DCC4 80082794 0C006426 */  addiu      $a0, $s3, 0xC
/* 7E6DCC8 80082798 5E3C010C */  jal        func_8004F178
/* 7E6DCCC 8008279C 0C00A526 */   addiu     $a1, $s5, 0xC
/* 7E6DCD0 800827A0 090A0208 */  j          .Llevel_40_80082824
/* 7E6DCD4 800827A4 FF000224 */   addiu     $v0, $zero, 0xFF
.Llevel_40_800827A8:
/* 7E6DCD8 800827A8 0C006426 */  addiu      $a0, $s3, 0xC
/* 7E6DCDC 800827AC 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 7E6DCE0 800827B0 3603A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0xE)
/* 7E6DCE4 800827B4 0000A390 */  lbu        $v1, 0x0($a1)
/* 7E6DCE8 800827B8 F2FFA524 */  addiu      $a1, $a1, -0xE
/* 7E6DCEC 800827BC 80FF6324 */  addiu      $v1, $v1, -0x80
/* 7E6DCF0 800827C0 FF006330 */  andi       $v1, $v1, 0xFF
/* 7E6DCF4 800827C4 40180300 */  sll        $v1, $v1, 1
/* 7E6DCF8 800827C8 0680013C */  lui        $at, %hi(D_80065920)
/* 7E6DCFC 800827CC 21082300 */  addu       $at, $at, $v1
/* 7E6DD00 800827D0 20592784 */  lh         $a3, %lo(D_80065920)($at)
/* 7E6DD04 800827D4 1000A627 */  addiu      $a2, $sp, 0x10
/* 7E6DD08 800827D8 40110700 */  sll        $v0, $a3, 5
/* 7E6DD0C 800827DC 23104700 */  subu       $v0, $v0, $a3
/* 7E6DD10 800827E0 80100200 */  sll        $v0, $v0, 2
/* 7E6DD14 800827E4 21104700 */  addu       $v0, $v0, $a3
/* 7E6DD18 800827E8 43120200 */  sra        $v0, $v0, 9
/* 7E6DD1C 800827EC 1000A2AF */  sw         $v0, 0x10($sp)
/* 7E6DD20 800827F0 0680013C */  lui        $at, %hi(D_800658A0)
/* 7E6DD24 800827F4 21082300 */  addu       $at, $at, $v1
/* 7E6DD28 800827F8 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 7E6DD2C 800827FC E8030224 */  addiu      $v0, $zero, 0x3E8
/* 7E6DD30 80082800 1800A2AF */  sw         $v0, 0x18($sp)
/* 7E6DD34 80082804 40110300 */  sll        $v0, $v1, 5
/* 7E6DD38 80082808 23104300 */  subu       $v0, $v0, $v1
/* 7E6DD3C 8008280C 80100200 */  sll        $v0, $v0, 2
/* 7E6DD40 80082810 21104300 */  addu       $v0, $v0, $v1
/* 7E6DD44 80082814 43120200 */  sra        $v0, $v0, 9
/* 7E6DD48 80082818 653C010C */  jal        func_8004F194
/* 7E6DD4C 8008281C 1400A2AF */   sw        $v0, 0x14($sp)
/* 7E6DD50 80082820 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_40_80082824:
/* 7E6DD54 80082824 400B0208 */  j          .Llevel_40_80082D00
/* 7E6DD58 80082828 020002A2 */   sb        $v0, 0x2($s0)
.Llevel_40_8008282C:
/* 7E6DD5C 8008282C 4600A292 */  lbu        $v0, 0x46($s5)
/* 7E6DD60 80082830 0C00A526 */  addiu      $a1, $s5, 0xC
/* 7E6DD64 80082834 5E3C010C */  jal        func_8004F178
/* 7E6DD68 80082838 460062A2 */   sb        $v0, 0x46($s3)
/* 7E6DD6C 8008283C 0957010C */  jal        func_80055C24
/* 7E6DD70 80082840 21206002 */   addu      $a0, $s3, $zero
/* 7E6DD74 80082844 4ED7000C */  jal        func_80035D38
/* 7E6DD78 80082848 21206002 */   addu      $a0, $s3, $zero
/* 7E6DD7C 8008284C 02004010 */  beqz       $v0, .Llevel_40_80082858
/* 7E6DD80 80082850 00000000 */   nop
/* 7E6DD84 80082854 140062AE */  sw         $v0, 0x14($s3)
.Llevel_40_80082858:
/* 7E6DD88 80082858 06000224 */  addiu      $v0, $zero, 0x6
/* 7E6DD8C 8008285C 400B0208 */  j          .Llevel_40_80082D00
/* 7E6DD90 80082860 480062A2 */   sb        $v0, 0x48($s3)
.Llevel_40_80082864:
/* 7E6DD94 80082864 0957010C */  jal        func_80055C24
/* 7E6DD98 80082868 21206002 */   addu      $a0, $s3, $zero
/* 7E6DD9C 8008286C 02000224 */  addiu      $v0, $zero, 0x2
/* 7E6DDA0 80082870 0E00A012 */  beqz       $s5, .Llevel_40_800828AC
/* 7E6DDA4 80082874 540062A2 */   sb        $v0, 0x54($s3)
/* 7E6DDA8 80082878 0C006426 */  addiu      $a0, $s3, 0xC
/* 7E6DDAC 8008287C 0000628E */  lw         $v0, 0x0($s3)
/* 7E6DDB0 80082880 0C00A526 */  addiu      $a1, $s5, 0xC
/* 7E6DDB4 80082884 5E3C010C */  jal        func_8004F178
/* 7E6DDB8 80082888 000055AC */   sw        $s5, 0x0($v0)
/* 7E6DDBC 8008288C 0A000224 */  addiu      $v0, $zero, 0xA
/* 7E6DDC0 80082890 4A0062A2 */  sb         $v0, 0x4A($s3)
/* 7E6DDC4 80082894 1400628E */  lw         $v0, 0x14($s3)
/* 7E6DDC8 80082898 08000324 */  addiu      $v1, $zero, 0x8
/* 7E6DDCC 8008289C 4C0063A2 */  sb         $v1, 0x4C($s3)
/* 7E6DDD0 800828A0 00044224 */  addiu      $v0, $v0, 0x400
/* 7E6DDD4 800828A4 400B0208 */  j          .Llevel_40_80082D00
/* 7E6DDD8 800828A8 140062AE */   sw        $v0, 0x14($s3)
.Llevel_40_800828AC:
/* 7E6DDDC 800828AC FFFF0224 */  addiu      $v0, $zero, -0x1
/* 7E6DDE0 800828B0 400B0208 */  j          .Llevel_40_80082D00
/* 7E6DDE4 800828B4 1C0062AE */   sw        $v0, 0x1C($s3)
.Llevel_40_800828B8:
/* 7E6DDE8 800828B8 0780053C */  lui        $a1, %hi(D_80070328)
/* 7E6DDEC 800828BC 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 7E6DDF0 800828C0 0000708E */  lw         $s0, 0x0($s3)
/* 7E6DDF4 800828C4 5E3C010C */  jal        func_8004F178
/* 7E6DDF8 800828C8 0C006426 */   addiu     $a0, $s3, 0xC
/* 7E6DDFC 800828CC 1400628E */  lw         $v0, 0x14($s3)
/* 7E6DE00 800828D0 00000000 */  nop
/* 7E6DE04 800828D4 00044224 */  addiu      $v0, $v0, 0x400
/* 7E6DE08 800828D8 140062AE */  sw         $v0, 0x14($s3)
/* 7E6DE0C 800828DC 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 7E6DE10 800828E0 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 7E6DE14 800828E4 21206002 */  addu       $a0, $s3, $zero
/* 7E6DE18 800828E8 0957010C */  jal        func_80055C24
/* 7E6DE1C 800828EC 460062A2 */   sb        $v0, 0x46($s3)
/* 7E6DE20 800828F0 02000224 */  addiu      $v0, $zero, 0x2
/* 7E6DE24 800828F4 020002A2 */  sb         $v0, 0x2($s0)
/* 7E6DE28 800828F8 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 7E6DE2C 800828FC 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 7E6DE30 80082900 00000000 */  nop
/* 7E6DE34 80082904 030002A2 */  sb         $v0, 0x3($s0)
/* 7E6DE38 80082908 0780033C */  lui        $v1, %hi(D_80070328 + 0xE)
/* 7E6DE3C 8008290C 36036390 */  lbu        $v1, %lo(D_80070328 + 0xE)($v1)
/* 7E6DE40 80082910 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 7E6DE44 80082914 100002AE */  sw         $v0, 0x10($s0)
/* 7E6DE48 80082918 040003A2 */  sb         $v1, 0x4($s0)
/* 7E6DE4C 8008291C 1A0B0208 */  j          .Llevel_40_80082C68
/* 7E6DE50 80082920 410060A2 */   sb        $zero, 0x41($s3)
.Llevel_40_80082924:
/* 7E6DE54 80082924 0C00A526 */  addiu      $a1, $s5, 0xC
/* 7E6DE58 80082928 0000748E */  lw         $s4, 0x0($s3)
/* 7E6DE5C 8008292C 20000224 */  addiu      $v0, $zero, 0x20
/* 7E6DE60 80082930 5E3C010C */  jal        func_8004F178
/* 7E6DE64 80082934 4C0062A2 */   sb        $v0, 0x4C($s3)
/* 7E6DE68 80082938 0957010C */  jal        func_80055C24
/* 7E6DE6C 8008293C 21206002 */   addu      $a0, $s3, $zero
/* 7E6DE70 80082940 9171010C */  jal        rand
/* 7E6DE74 80082944 00000000 */   nop
/* 7E6DE78 80082948 9171010C */  jal        rand
/* 7E6DE7C 8008294C FF0F5230 */   andi      $s2, $v0, 0xFFF
/* 7E6DE80 80082950 FF075130 */  andi       $s1, $v0, 0x7FF
/* 7E6DE84 80082954 8B3A010C */  jal        func_8004EA2C
/* 7E6DE88 80082958 21202002 */   addu      $a0, $s1, $zero
/* 7E6DE8C 8008295C 21204002 */  addu       $a0, $s2, $zero
/* 7E6DE90 80082960 8B3A010C */  jal        func_8004EA2C
/* 7E6DE94 80082964 21804000 */   addu      $s0, $v0, $zero
/* 7E6DE98 80082968 18000202 */  mult       $s0, $v0
/* 7E6DE9C 8008296C 12400000 */  mflo       $t0
/* 7E6DEA0 80082970 4900A292 */  lbu        $v0, 0x49($s5)
/* 7E6DEA4 80082974 00000000 */  nop
/* 7E6DEA8 80082978 18000201 */  mult       $t0, $v0
/* 7E6DEAC 8008297C 21202002 */  addu       $a0, $s1, $zero
/* 7E6DEB0 80082980 12400000 */  mflo       $t0
/* 7E6DEB4 80082984 03160800 */  sra        $v0, $t0, 24
/* 7E6DEB8 80082988 8B3A010C */  jal        func_8004EA2C
/* 7E6DEBC 8008298C 000082A6 */   sh        $v0, 0x0($s4)
/* 7E6DEC0 80082990 21204002 */  addu       $a0, $s2, $zero
/* 7E6DEC4 80082994 793A010C */  jal        func_8004E9E4
/* 7E6DEC8 80082998 21804000 */   addu      $s0, $v0, $zero
/* 7E6DECC 8008299C 18000202 */  mult       $s0, $v0
/* 7E6DED0 800829A0 12400000 */  mflo       $t0
/* 7E6DED4 800829A4 4900A292 */  lbu        $v0, 0x49($s5)
/* 7E6DED8 800829A8 00000000 */  nop
/* 7E6DEDC 800829AC 18000201 */  mult       $t0, $v0
/* 7E6DEE0 800829B0 21202002 */  addu       $a0, $s1, $zero
/* 7E6DEE4 800829B4 12400000 */  mflo       $t0
/* 7E6DEE8 800829B8 03160800 */  sra        $v0, $t0, 24
/* 7E6DEEC 800829BC 793A010C */  jal        func_8004E9E4
/* 7E6DEF0 800829C0 020082A6 */   sh        $v0, 0x2($s4)
/* 7E6DEF4 800829C4 4900A392 */  lbu        $v1, 0x49($s5)
/* 7E6DEF8 800829C8 00000000 */  nop
/* 7E6DEFC 800829CC 18004300 */  mult       $v0, $v1
/* 7E6DF00 800829D0 12400000 */  mflo       $t0
/* 7E6DF04 800829D4 03130800 */  sra        $v0, $t0, 12
/* 7E6DF08 800829D8 040082A6 */  sh         $v0, 0x4($s4)
/* 7E6DF0C 800829DC 1800A38E */  lw         $v1, 0x18($s5)
/* 7E6DF10 800829E0 0002023C */  lui        $v0, (0x2000000 >> 16)
/* 7E6DF14 800829E4 24106200 */  and        $v0, $v1, $v0
/* 7E6DF18 800829E8 2C004010 */  beqz       $v0, .Llevel_40_80082A9C
/* 7E6DF1C 800829EC 21300000 */   addu      $a2, $zero, $zero
/* 7E6DF20 800829F0 0780103C */  lui        $s0, %hi(D_80070328)
/* 7E6DF24 800829F4 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 7E6DF28 800829F8 0C00638E */  lw         $v1, 0xC($s3)
/* 7E6DF2C 800829FC 0000048E */  lw         $a0, 0x0($s0)
/* 7E6DF30 80082A00 1000628E */  lw         $v0, 0x10($s3)
/* 7E6DF34 80082A04 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 7E6DF38 80082A08 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 7E6DF3C 80082A0C 23206400 */  subu       $a0, $v1, $a0
/* 7E6DF40 80082A10 203A010C */  jal        func_8004E880
/* 7E6DF44 80082A14 23284500 */   subu      $a1, $v0, $a1
/* 7E6DF48 80082A18 40100200 */  sll        $v0, $v0, 1
/* 7E6DF4C 80082A1C 21300000 */  addu       $a2, $zero, $zero
/* 7E6DF50 80082A20 0680013C */  lui        $at, %hi(D_80065920)
/* 7E6DF54 80082A24 21082200 */  addu       $at, $at, $v0
/* 7E6DF58 80082A28 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 7E6DF5C 80082A2C 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 7E6DF60 80082A30 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 7E6DF64 80082A34 03110200 */  sra        $v0, $v0, 4
/* 7E6DF68 80082A38 1000A2AF */  sw         $v0, 0x10($sp)
/* 7E6DF6C 80082A3C 0C00638E */  lw         $v1, 0xC($s3)
/* 7E6DF70 80082A40 0000048E */  lw         $a0, 0x0($s0)
/* 7E6DF74 80082A44 1000628E */  lw         $v0, 0x10($s3)
/* 7E6DF78 80082A48 23206400 */  subu       $a0, $v1, $a0
/* 7E6DF7C 80082A4C 203A010C */  jal        func_8004E880
/* 7E6DF80 80082A50 23284500 */   subu      $a1, $v0, $a1
/* 7E6DF84 80082A54 40100200 */  sll        $v0, $v0, 1
/* 7E6DF88 80082A58 0680013C */  lui        $at, %hi(D_800658A0)
/* 7E6DF8C 80082A5C 21082200 */  addu       $at, $at, $v0
/* 7E6DF90 80082A60 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 7E6DF94 80082A64 1000A38F */  lw         $v1, 0x10($sp)
/* 7E6DF98 80082A68 1800A0AF */  sw         $zero, 0x18($sp)
/* 7E6DF9C 80082A6C 03110200 */  sra        $v0, $v0, 4
/* 7E6DFA0 80082A70 1400A2AF */  sw         $v0, 0x14($sp)
/* 7E6DFA4 80082A74 00008296 */  lhu        $v0, 0x0($s4)
/* 7E6DFA8 80082A78 00000000 */  nop
/* 7E6DFAC 80082A7C 21104300 */  addu       $v0, $v0, $v1
/* 7E6DFB0 80082A80 000082A6 */  sh         $v0, 0x0($s4)
/* 7E6DFB4 80082A84 1400A38F */  lw         $v1, 0x14($sp)
/* 7E6DFB8 80082A88 02008296 */  lhu        $v0, 0x2($s4)
/* 7E6DFBC 80082A8C 00000000 */  nop
/* 7E6DFC0 80082A90 21104300 */  addu       $v0, $v0, $v1
/* 7E6DFC4 80082A94 BE0A0208 */  j          .Llevel_40_80082AF8
/* 7E6DFC8 80082A98 020082A6 */   sh        $v0, 0x2($s4)
.Llevel_40_80082A9C:
/* 7E6DFCC 80082A9C 0200023C */  lui        $v0, (0x20000 >> 16)
/* 7E6DFD0 80082AA0 24106200 */  and        $v0, $v1, $v0
/* 7E6DFD4 80082AA4 14004010 */  beqz       $v0, .Llevel_40_80082AF8
/* 7E6DFD8 80082AA8 04000224 */   addiu     $v0, $zero, 0x4
/* 7E6DFDC 80082AAC 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 7E6DFE0 80082AB0 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 7E6DFE4 80082AB4 00000000 */  nop
/* 7E6DFE8 80082AB8 03006210 */  beq        $v1, $v0, .Llevel_40_80082AC8
/* 7E6DFEC 80082ABC 0C000224 */   addiu     $v0, $zero, 0xC
/* 7E6DFF0 80082AC0 0D006214 */  bne        $v1, $v0, .Llevel_40_80082AF8
/* 7E6DFF4 80082AC4 00000000 */   nop
.Llevel_40_80082AC8:
/* 7E6DFF8 80082AC8 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 7E6DFFC 80082ACC B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 7E6E000 80082AD0 00008396 */  lhu        $v1, 0x0($s4)
/* 7E6E004 80082AD4 83110200 */  sra        $v0, $v0, 6
/* 7E6E008 80082AD8 21186200 */  addu       $v1, $v1, $v0
/* 7E6E00C 80082ADC 000083A6 */  sh         $v1, 0x0($s4)
/* 7E6E010 80082AE0 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 7E6E014 80082AE4 B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 7E6E018 80082AE8 02008396 */  lhu        $v1, 0x2($s4)
/* 7E6E01C 80082AEC 83110200 */  sra        $v0, $v0, 6
/* 7E6E020 80082AF0 21186200 */  addu       $v1, $v1, $v0
/* 7E6E024 80082AF4 020083A6 */  sh         $v1, 0x2($s4)
.Llevel_40_80082AF8:
/* 7E6E028 80082AF8 5100A492 */  lbu        $a0, 0x51($s5)
/* 7E6E02C 80082AFC 00000000 */  nop
/* 7E6E030 80082B00 26008010 */  beqz       $a0, .Llevel_40_80082B9C
/* 7E6E034 80082B04 1000033C */   lui       $v1, (0x100000 >> 16)
/* 7E6E038 80082B08 1800A28E */  lw         $v0, 0x18($s5)
/* 7E6E03C 80082B0C 00000000 */  nop
/* 7E6E040 80082B10 24104300 */  and        $v0, $v0, $v1
/* 7E6E044 80082B14 21004010 */  beqz       $v0, .Llevel_40_80082B9C
/* 7E6E048 80082B18 40100400 */   sll       $v0, $a0, 1
/* 7E6E04C 80082B1C 0680013C */  lui        $at, %hi(D_80065920)
/* 7E6E050 80082B20 21082200 */  addu       $at, $at, $v0
/* 7E6E054 80082B24 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 7E6E058 80082B28 00000000 */  nop
/* 7E6E05C 80082B2C 80100300 */  sll        $v0, $v1, 2
/* 7E6E060 80082B30 21104300 */  addu       $v0, $v0, $v1
/* 7E6E064 80082B34 00190200 */  sll        $v1, $v0, 4
/* 7E6E068 80082B38 23186200 */  subu       $v1, $v1, $v0
/* 7E6E06C 80082B3C 00008296 */  lhu        $v0, 0x0($s4)
/* 7E6E070 80082B40 C31A0300 */  sra        $v1, $v1, 11
/* 7E6E074 80082B44 21104300 */  addu       $v0, $v0, $v1
/* 7E6E078 80082B48 000082A6 */  sh         $v0, 0x0($s4)
/* 7E6E07C 80082B4C 5100A292 */  lbu        $v0, 0x51($s5)
/* 7E6E080 80082B50 28000424 */  addiu      $a0, $zero, 0x28
/* 7E6E084 80082B54 40100200 */  sll        $v0, $v0, 1
/* 7E6E088 80082B58 0680013C */  lui        $at, %hi(D_800658A0)
/* 7E6E08C 80082B5C 21082200 */  addu       $at, $at, $v0
/* 7E6E090 80082B60 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 7E6E094 80082B64 46000524 */  addiu      $a1, $zero, 0x46
/* 7E6E098 80082B68 80100300 */  sll        $v0, $v1, 2
/* 7E6E09C 80082B6C 21104300 */  addu       $v0, $v0, $v1
/* 7E6E0A0 80082B70 00190200 */  sll        $v1, $v0, 4
/* 7E6E0A4 80082B74 23186200 */  subu       $v1, $v1, $v0
/* 7E6E0A8 80082B78 02008296 */  lhu        $v0, 0x2($s4)
/* 7E6E0AC 80082B7C C31A0300 */  sra        $v1, $v1, 11
/* 7E6E0B0 80082B80 21104300 */  addu       $v0, $v0, $v1
/* 7E6E0B4 80082B84 DBD8000C */  jal        func_8003636C
/* 7E6E0B8 80082B88 020082A6 */   sh        $v0, 0x2($s4)
/* 7E6E0BC 80082B8C 04008396 */  lhu        $v1, 0x4($s4)
/* 7E6E0C0 80082B90 00000000 */  nop
/* 7E6E0C4 80082B94 21186200 */  addu       $v1, $v1, $v0
/* 7E6E0C8 80082B98 040083A6 */  sh         $v1, 0x4($s4)
.Llevel_40_80082B9C:
/* 7E6E0CC 80082B9C 00008286 */  lh         $v0, 0x0($s4)
/* 7E6E0D0 80082BA0 0C00638E */  lw         $v1, 0xC($s3)
/* 7E6E0D4 80082BA4 80100200 */  sll        $v0, $v0, 2
/* 7E6E0D8 80082BA8 21186200 */  addu       $v1, $v1, $v0
/* 7E6E0DC 80082BAC 0C0063AE */  sw         $v1, 0xC($s3)
/* 7E6E0E0 80082BB0 02008286 */  lh         $v0, 0x2($s4)
/* 7E6E0E4 80082BB4 1000638E */  lw         $v1, 0x10($s3)
/* 7E6E0E8 80082BB8 80100200 */  sll        $v0, $v0, 2
/* 7E6E0EC 80082BBC 21186200 */  addu       $v1, $v1, $v0
/* 7E6E0F0 80082BC0 100063AE */  sw         $v1, 0x10($s3)
/* 7E6E0F4 80082BC4 04008286 */  lh         $v0, 0x4($s4)
/* 7E6E0F8 80082BC8 1400638E */  lw         $v1, 0x14($s3)
/* 7E6E0FC 80082BCC 80100200 */  sll        $v0, $v0, 2
/* 7E6E100 80082BD0 21186200 */  addu       $v1, $v1, $v0
/* 7E6E104 80082BD4 9171010C */  jal        rand
/* 7E6E108 80082BD8 140063AE */   sw        $v1, 0x14($s3)
/* 7E6E10C 80082BDC 9171010C */  jal        rand
/* 7E6E110 80082BE0 450062A2 */   sb        $v0, 0x45($s3)
/* 7E6E114 80082BE4 9171010C */  jal        rand
/* 7E6E118 80082BE8 460062A2 */   sb        $v0, 0x46($s3)
/* 7E6E11C 80082BEC 1F004230 */  andi       $v0, $v0, 0x1F
/* 7E6E120 80082BF0 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 7E6E124 80082BF4 9171010C */  jal        rand
/* 7E6E128 80082BF8 060082A6 */   sh        $v0, 0x6($s4)
/* 7E6E12C 80082BFC 1F004230 */  andi       $v0, $v0, 0x1F
/* 7E6E130 80082C00 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 7E6E134 80082C04 9171010C */  jal        rand
/* 7E6E138 80082C08 080082A6 */   sh        $v0, 0x8($s4)
/* 7E6E13C 80082C0C 32000424 */  addiu      $a0, $zero, 0x32
/* 7E6E140 80082C10 1F004230 */  andi       $v0, $v0, 0x1F
/* 7E6E144 80082C14 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 7E6E148 80082C18 0A0082A6 */  sh         $v0, 0xA($s4)
/* 7E6E14C 80082C1C 1400A28E */  lw         $v0, 0x14($s5)
/* 7E6E150 80082C20 50000524 */  addiu      $a1, $zero, 0x50
/* 7E6E154 80082C24 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 7E6E158 80082C28 DBD8000C */  jal        func_8003636C
/* 7E6E15C 80082C2C 100082AE */   sw        $v0, 0x10($s4)
/* 7E6E160 80082C30 400B0208 */  j          .Llevel_40_80082D00
/* 7E6E164 80082C34 0C0082AE */   sw        $v0, 0xC($s4)
.Llevel_40_80082C38:
/* 7E6E168 80082C38 0000708E */  lw         $s0, 0x0($s3)
/* 7E6E16C 80082C3C 0000B18E */  lw         $s1, 0x0($s5)
/* 7E6E170 80082C40 5E3C010C */  jal        func_8004F178
/* 7E6E174 80082C44 0C00A526 */   addiu     $a1, $s5, 0xC
/* 7E6E178 80082C48 21206002 */  addu       $a0, $s3, $zero
/* 7E6E17C 80082C4C 20000224 */  addiu      $v0, $zero, 0x20
/* 7E6E180 80082C50 0957010C */  jal        func_80055C24
/* 7E6E184 80082C54 450062A2 */   sb        $v0, 0x45($s3)
/* 7E6E188 80082C58 000000AE */  sw         $zero, 0x0($s0)
/* 7E6E18C 80082C5C 5400228E */  lw         $v0, 0x54($s1)
/* 7E6E190 80082C60 00000000 */  nop
/* 7E6E194 80082C64 040002AE */  sw         $v0, 0x4($s0)
.Llevel_40_80082C68:
/* 7E6E198 80082C68 4C0060A2 */  sb         $zero, 0x4C($s3)
/* 7E6E19C 80082C6C 400B0208 */  j          .Llevel_40_80082D00
/* 7E6E1A0 80082C70 4D0060A2 */   sb        $zero, 0x4D($s3)
.Llevel_40_80082C74:
/* 7E6E1A4 80082C74 0C007126 */  addiu      $s1, $s3, 0xC
/* 7E6E1A8 80082C78 21202002 */  addu       $a0, $s1, $zero
/* 7E6E1AC 80082C7C 0000708E */  lw         $s0, 0x0($s3)
/* 7E6E1B0 80082C80 0000B28E */  lw         $s2, 0x0($s5)
/* 7E6E1B4 80082C84 5E3C010C */  jal        func_8004F178
/* 7E6E1B8 80082C88 0C00A526 */   addiu     $a1, $s5, 0xC
/* 7E6E1BC 80082C8C 9171010C */  jal        rand
/* 7E6E1C0 80082C90 00000000 */   nop
/* 7E6E1C4 80082C94 9171010C */  jal        rand
/* 7E6E1C8 80082C98 450062A2 */   sb        $v0, 0x45($s3)
/* 7E6E1CC 80082C9C 21206002 */  addu       $a0, $s3, $zero
/* 7E6E1D0 80082CA0 0957010C */  jal        func_80055C24
/* 7E6E1D4 80082CA4 460062A2 */   sb        $v0, 0x46($s3)
/* 7E6E1D8 80082CA8 21202002 */  addu       $a0, $s1, $zero
/* 7E6E1DC 80082CAC 06000524 */  addiu      $a1, $zero, 0x6
/* 7E6E1E0 80082CB0 06000624 */  addiu      $a2, $zero, 0x6
/* 7E6E1E4 80082CB4 FF00073C */  lui        $a3, (0xFFFFFF >> 16)
/* 7E6E1E8 80082CB8 000000AE */  sw         $zero, 0x0($s0)
/* 7E6E1EC 80082CBC 5400428E */  lw         $v0, 0x54($s2)
/* 7E6E1F0 80082CC0 FFFFE734 */  ori        $a3, $a3, (0xFFFFFF & 0xFFFF)
/* 7E6E1F4 80082CC4 1142010C */  jal        func_80050844
/* 7E6E1F8 80082CC8 040002AE */   sw        $v0, 0x4($s0)
/* 7E6E1FC 80082CCC 400B0208 */  j          .Llevel_40_80082D00
/* 7E6E200 80082CD0 080002AE */   sw        $v0, 0x8($s0)
.Llevel_40_80082CD4:
/* 7E6E204 80082CD4 0300A012 */  beqz       $s5, .Llevel_40_80082CE4
/* 7E6E208 80082CD8 0C00A526 */   addiu     $a1, $s5, 0xC
/* 7E6E20C 80082CDC 3C0B0208 */  j          .Llevel_40_80082CF0
/* 7E6E210 80082CE0 0C006426 */   addiu     $a0, $s3, 0xC
.Llevel_40_80082CE4:
/* 7E6E214 80082CE4 0C006426 */  addiu      $a0, $s3, 0xC
/* 7E6E218 80082CE8 0780053C */  lui        $a1, %hi(D_80070328)
/* 7E6E21C 80082CEC 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
.Llevel_40_80082CF0:
/* 7E6E220 80082CF0 5E3C010C */  jal        func_8004F178
/* 7E6E224 80082CF4 00000000 */   nop
/* 7E6E228 80082CF8 0957010C */  jal        func_80055C24
/* 7E6E22C 80082CFC 21206002 */   addu      $a0, $s3, $zero
.Llevel_40_80082D00:
/* 7E6E230 80082D00 21106002 */  addu       $v0, $s3, $zero
.Llevel_40_80082D04:
/* 7E6E234 80082D04 3800BF8F */  lw         $ra, 0x38($sp)
/* 7E6E238 80082D08 3400B58F */  lw         $s5, 0x34($sp)
/* 7E6E23C 80082D0C 3000B48F */  lw         $s4, 0x30($sp)
/* 7E6E240 80082D10 2C00B38F */  lw         $s3, 0x2C($sp)
/* 7E6E244 80082D14 2800B28F */  lw         $s2, 0x28($sp)
/* 7E6E248 80082D18 2400B18F */  lw         $s1, 0x24($sp)
/* 7E6E24C 80082D1C 2000B08F */  lw         $s0, 0x20($sp)
/* 7E6E250 80082D20 4000BD27 */  addiu      $sp, $sp, 0x40
/* 7E6E254 80082D24 0800E003 */  jr         $ra
/* 7E6E258 80082D28 00000000 */   nop
.size func_level_40_800824AC, . - func_level_40_800824AC
