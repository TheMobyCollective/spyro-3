.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_44_800785C4
/* 8B4BAF4 800785C4 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 8B4BAF8 800785C8 3400B1AF */  sw         $s1, 0x34($sp)
/* 8B4BAFC 800785CC 21888000 */  addu       $s1, $a0, $zero
/* 8B4BB00 800785D0 4000BFAF */  sw         $ra, 0x40($sp)
/* 8B4BB04 800785D4 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 8B4BB08 800785D8 3800B2AF */  sw         $s2, 0x38($sp)
/* 8B4BB0C 800785DC 3000B0AF */  sw         $s0, 0x30($sp)
/* 8B4BB10 800785E0 49002292 */  lbu        $v0, 0x49($s1)
/* 8B4BB14 800785E4 00000000 */  nop
/* 8B4BB18 800785E8 04004014 */  bnez       $v0, .Llevel_44_800785FC
/* 8B4BB1C 800785EC 00000000 */   nop
/* 8B4BB20 800785F0 9171010C */  jal        rand
/* 8B4BB24 800785F4 00000000 */   nop
/* 8B4BB28 800785F8 490022A2 */  sb         $v0, 0x49($s1)
.Llevel_44_800785FC:
/* 8B4BB2C 800785FC 0680023C */  lui        $v0, %hi(D_8006581C)
/* 8B4BB30 80078600 1C58428C */  lw         $v0, %lo(D_8006581C)($v0)
/* 8B4BB34 80078604 00000000 */  nop
/* 8B4BB38 80078608 02004228 */  slti       $v0, $v0, 0x2
/* 8B4BB3C 8007860C 42004014 */  bnez       $v0, .Llevel_44_80078718
/* 8B4BB40 80078610 0C003026 */   addiu     $s0, $s1, 0xC
/* 8B4BB44 80078614 0780053C */  lui        $a1, %hi(D_80070328)
/* 8B4BB48 80078618 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 8B4BB4C 8007861C CD3C010C */  jal        func_8004F334
/* 8B4BB50 80078620 21200002 */   addu      $a0, $s0, $zero
/* 8B4BB54 80078624 0680033C */  lui        $v1, %hi(D_80065810)
/* 8B4BB58 80078628 1058638C */  lw         $v1, %lo(D_80065810)($v1)
/* 8B4BB5C 8007862C 00000000 */  nop
/* 8B4BB60 80078630 2A104300 */  slt        $v0, $v0, $v1
/* 8B4BB64 80078634 38004010 */  beqz       $v0, .Llevel_44_80078718
/* 8B4BB68 80078638 00000000 */   nop
/* 8B4BB6C 8007863C 1400228E */  lw         $v0, 0x14($s1)
/* 8B4BB70 80078640 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 8B4BB74 80078644 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 8B4BB78 80078648 64014224 */  addiu      $v0, $v0, 0x164
/* 8B4BB7C 8007864C 23186200 */  subu       $v1, $v1, $v0
/* 8B4BB80 80078650 0680023C */  lui        $v0, %hi(D_80065818)
/* 8B4BB84 80078654 1858428C */  lw         $v0, %lo(D_80065818)($v0)
/* 8B4BB88 80078658 02006104 */  bgez       $v1, .Llevel_44_80078664
/* 8B4BB8C 8007865C 00000000 */   nop
/* 8B4BB90 80078660 23180300 */  negu       $v1, $v1
.Llevel_44_80078664:
/* 8B4BB94 80078664 2A186200 */  slt        $v1, $v1, $v0
/* 8B4BB98 80078668 2B006010 */  beqz       $v1, .Llevel_44_80078718
/* 8B4BB9C 8007866C 00000000 */   nop
/* 8B4BBA0 80078670 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 8B4BBA4 80078674 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 8B4BBA8 80078678 00000000 */  nop
/* 8B4BBAC 8007867C 26008010 */  beqz       $a0, .Llevel_44_80078718
/* 8B4BBB0 80078680 0C008424 */   addiu     $a0, $a0, 0xC
/* 8B4BBB4 80078684 21280002 */  addu       $a1, $s0, $zero
/* 8B4BBB8 80078688 8E4F000C */  jal        func_80013E38
/* 8B4BBBC 8007868C 21300000 */   addu      $a2, $zero, $zero
/* 8B4BBC0 80078690 21004010 */  beqz       $v0, .Llevel_44_80078718
/* 8B4BBC4 80078694 00000000 */   nop
/* 8B4BBC8 80078698 0780033C */  lui        $v1, %hi(D_8006C65C)
/* 8B4BBCC 8007869C 5CC6638C */  lw         $v1, %lo(D_8006C65C)($v1)
/* 8B4BBD0 800786A0 00000000 */  nop
/* 8B4BBD4 800786A4 0000708C */  lw         $s0, 0x0($v1)
/* 8B4BBD8 800786A8 00000000 */  nop
/* 8B4BBDC 800786AC 1400028E */  lw         $v0, 0x14($s0)
/* 8B4BBE0 800786B0 00000000 */  nop
/* 8B4BBE4 800786B4 09004010 */  beqz       $v0, .Llevel_44_800786DC
/* 8B4BBE8 800786B8 00000000 */   nop
/* 8B4BBEC 800786BC 16005110 */  beq        $v0, $s1, .Llevel_44_80078718
/* 8B4BBF0 800786C0 00000000 */   nop
/* 8B4BBF4 800786C4 00000286 */  lh         $v0, 0x0($s0)
/* 8B4BBF8 800786C8 00000000 */  nop
/* 8B4BBFC 800786CC 12004018 */  blez       $v0, .Llevel_44_80078718
/* 8B4BC00 800786D0 00000000 */   nop
/* 8B4BC04 800786D4 C6E10108 */  j          .Llevel_44_80078718
/* 8B4BC08 800786D8 000000A6 */   sh        $zero, 0x0($s0)
.Llevel_44_800786DC:
/* 8B4BC0C 800786DC 09000224 */  addiu      $v0, $zero, 0x9
/* 8B4BC10 800786E0 490062A0 */  sb         $v0, 0x49($v1)
/* 8B4BC14 800786E4 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 8B4BC18 800786E8 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 8B4BC1C 800786EC 02000592 */  lbu        $a1, 0x2($s0)
/* 8B4BC20 800786F0 140011AE */  sw         $s1, 0x14($s0)
/* 8B4BC24 800786F4 F0EF000C */  jal        func_8003BFC0
/* 8B4BC28 800786F8 000000A6 */   sh        $zero, 0x0($s0)
/* 8B4BC2C 800786FC 06004014 */  bnez       $v0, .Llevel_44_80078718
/* 8B4BC30 80078700 21280000 */   addu      $a1, $zero, $zero
/* 8B4BC34 80078704 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 8B4BC38 80078708 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 8B4BC3C 8007870C AFEE000C */  jal        func_8003BABC
/* 8B4BC40 80078710 21300000 */   addu      $a2, $zero, $zero
/* 8B4BC44 80078714 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_44_80078718:
/* 8B4BC48 80078718 1800228E */  lw         $v0, 0x18($s1)
/* 8B4BC4C 8007871C 1B10033C */  lui        $v1, (0x101B0000 >> 16)
/* 8B4BC50 80078720 24104300 */  and        $v0, $v0, $v1
/* 8B4BC54 80078724 63004010 */  beqz       $v0, .Llevel_44_800788B4
/* 8B4BC58 80078728 21202002 */   addu      $a0, $s1, $zero
/* 8B4BC5C 8007872C 21280000 */  addu       $a1, $zero, $zero
/* 8B4BC60 80078730 AFEE000C */  jal        func_8003BABC
/* 8B4BC64 80078734 21300000 */   addu      $a2, $zero, $zero
/* 8B4BC68 80078738 64000224 */  addiu      $v0, $zero, 0x64
/* 8B4BC6C 8007873C 490022A2 */  sb         $v0, 0x49($s1)
/* 8B4BC70 80078740 21800000 */  addu       $s0, $zero, $zero
/* 8B4BC74 80078744 01001324 */  addiu      $s3, $zero, 0x1
/* 8B4BC78 80078748 09001224 */  addiu      $s2, $zero, 0x9
.Llevel_44_8007874C:
/* 8B4BC7C 8007874C 0780023C */  lui        $v0, %hi(D_8006C578)
/* 8B4BC80 80078750 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 8B4BC84 80078754 0780033C */  lui        $v1, %hi(D_8006C574)
/* 8B4BC88 80078758 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 8B4BC8C 8007875C 00000000 */  nop
/* 8B4BC90 80078760 23104300 */  subu       $v0, $v0, $v1
/* 8B4BC94 80078764 15004228 */  slti       $v0, $v0, 0x15
/* 8B4BC98 80078768 13004014 */  bnez       $v0, .Llevel_44_800787B8
/* 8B4BC9C 8007876C 36010424 */   addiu     $a0, $zero, 0x136
/* 8B4BCA0 80078770 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8B4BCA4 80078774 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8B4BCA8 80078778 00000000 */  nop
/* 8B4BCAC 8007877C 09F84000 */  jalr       $v0
/* 8B4BCB0 80078780 21282002 */   addu      $a1, $s1, $zero
/* 8B4BCB4 80078784 21184000 */  addu       $v1, $v0, $zero
/* 8B4BCB8 80078788 07006010 */  beqz       $v1, .Llevel_44_800787A8
/* 8B4BCBC 8007878C 0600022A */   slti      $v0, $s0, 0x6
/* 8B4BCC0 80078790 03004010 */  beqz       $v0, .Llevel_44_800787A0
/* 8B4BCC4 80078794 00000000 */   nop
/* 8B4BCC8 80078798 EAE10108 */  j          .Llevel_44_800787A8
/* 8B4BCCC 8007879C 490072A0 */   sb        $s2, 0x49($v1)
.Llevel_44_800787A0:
/* 8B4BCD0 800787A0 3C0073A0 */  sb         $s3, 0x3C($v1)
/* 8B4BCD4 800787A4 490060A0 */  sb         $zero, 0x49($v1)
.Llevel_44_800787A8:
/* 8B4BCD8 800787A8 01001026 */  addiu      $s0, $s0, 0x1
/* 8B4BCDC 800787AC 0C00022A */  slti       $v0, $s0, 0xC
/* 8B4BCE0 800787B0 E6FF4014 */  bnez       $v0, .Llevel_44_8007874C
/* 8B4BCE4 800787B4 00000000 */   nop
.Llevel_44_800787B8:
/* 8B4BCE8 800787B8 21800000 */  addu       $s0, $zero, $zero
/* 8B4BCEC 800787BC 40001224 */  addiu      $s2, $zero, 0x40
/* 8B4BCF0 800787C0 1000A427 */  addiu      $a0, $sp, 0x10
.Llevel_44_800787C4:
/* 8B4BCF4 800787C4 5E3C010C */  jal        func_8004F178
/* 8B4BCF8 800787C8 0C002526 */   addiu     $a1, $s1, 0xC
/* 8B4BCFC 800787CC 9171010C */  jal        rand
/* 8B4BD00 800787D0 01001026 */   addiu     $s0, $s0, 0x1
/* 8B4BD04 800787D4 1000A38F */  lw         $v1, 0x10($sp)
/* 8B4BD08 800787D8 FF004230 */  andi       $v0, $v0, 0xFF
/* 8B4BD0C 800787DC 80006324 */  addiu      $v1, $v1, 0x80
/* 8B4BD10 800787E0 23186200 */  subu       $v1, $v1, $v0
/* 8B4BD14 800787E4 9171010C */  jal        rand
/* 8B4BD18 800787E8 1000A3AF */   sw        $v1, 0x10($sp)
/* 8B4BD1C 800787EC 1400A38F */  lw         $v1, 0x14($sp)
/* 8B4BD20 800787F0 FF004230 */  andi       $v0, $v0, 0xFF
/* 8B4BD24 800787F4 80006324 */  addiu      $v1, $v1, 0x80
/* 8B4BD28 800787F8 23186200 */  subu       $v1, $v1, $v0
/* 8B4BD2C 800787FC 9171010C */  jal        rand
/* 8B4BD30 80078800 1400A3AF */   sw        $v1, 0x14($sp)
/* 8B4BD34 80078804 1800A38F */  lw         $v1, 0x18($sp)
/* 8B4BD38 80078808 FF014230 */  andi       $v0, $v0, 0x1FF
/* 8B4BD3C 8007880C 21186200 */  addu       $v1, $v1, $v0
/* 8B4BD40 80078810 9171010C */  jal        rand
/* 8B4BD44 80078814 1800A3AF */   sw        $v1, 0x18($sp)
/* 8B4BD48 80078818 7F004230 */  andi       $v0, $v0, 0x7F
/* 8B4BD4C 8007881C 23104202 */  subu       $v0, $s2, $v0
/* 8B4BD50 80078820 9171010C */  jal        rand
/* 8B4BD54 80078824 2000A2AF */   sw        $v0, 0x20($sp)
/* 8B4BD58 80078828 7F004230 */  andi       $v0, $v0, 0x7F
/* 8B4BD5C 8007882C 23104202 */  subu       $v0, $s2, $v0
/* 8B4BD60 80078830 9171010C */  jal        rand
/* 8B4BD64 80078834 2400A2AF */   sw        $v0, 0x24($sp)
/* 8B4BD68 80078838 01000424 */  addiu      $a0, $zero, 0x1
/* 8B4BD6C 8007883C 27000524 */  addiu      $a1, $zero, 0x27
/* 8B4BD70 80078840 1000A627 */  addiu      $a2, $sp, 0x10
/* 8B4BD74 80078844 2000A727 */  addiu      $a3, $sp, 0x20
/* 8B4BD78 80078848 1F004230 */  andi       $v0, $v0, 0x1F
/* 8B4BD7C 8007884C 10000324 */  addiu      $v1, $zero, 0x10
/* 8B4BD80 80078850 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 8B4BD84 80078854 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 8B4BD88 80078858 23186200 */  subu       $v1, $v1, $v0
/* 8B4BD8C 8007885C 09F80001 */  jalr       $t0
/* 8B4BD90 80078860 2800A3AF */   sw        $v1, 0x28($sp)
/* 8B4BD94 80078864 02000424 */  addiu      $a0, $zero, 0x2
/* 8B4BD98 80078868 46000524 */  addiu      $a1, $zero, 0x46
/* 8B4BD9C 8007886C 1000A627 */  addiu      $a2, $sp, 0x10
/* 8B4BDA0 80078870 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8B4BDA4 80078874 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8B4BDA8 80078878 00000000 */  nop
/* 8B4BDAC 8007887C 09F84000 */  jalr       $v0
/* 8B4BDB0 80078880 18000724 */   addiu     $a3, $zero, 0x18
/* 8B4BDB4 80078884 0800022A */  slti       $v0, $s0, 0x8
/* 8B4BDB8 80078888 CEFF4014 */  bnez       $v0, .Llevel_44_800787C4
/* 8B4BDBC 8007888C 1000A427 */   addiu     $a0, $sp, 0x10
/* 8B4BDC0 80078890 21202002 */  addu       $a0, $s1, $zero
/* 8B4BDC4 80078894 21280000 */  addu       $a1, $zero, $zero
/* 8B4BDC8 80078898 21300000 */  addu       $a2, $zero, $zero
/* 8B4BDCC 8007889C 9ADA000C */  jal        func_80036A68
/* 8B4BDD0 800788A0 21380000 */   addu      $a3, $zero, $zero
/* 8B4BDD4 800788A4 C656010C */  jal        func_80055B18
/* 8B4BDD8 800788A8 21202002 */   addu      $a0, $s1, $zero
/* 8B4BDDC 800788AC 49E20108 */  j          .Llevel_44_80078924
/* 8B4BDE0 800788B0 00000000 */   nop
.Llevel_44_800788B4:
/* 8B4BDE4 800788B4 0780023C */  lui        $v0, %hi(D_8006C644)
/* 8B4BDE8 800788B8 44C6428C */  lw         $v0, %lo(D_8006C644)($v0)
/* 8B4BDEC 800788BC 49002392 */  lbu        $v1, 0x49($s1)
/* 8B4BDF0 800788C0 40100200 */  sll        $v0, $v0, 1
/* 8B4BDF4 800788C4 21104300 */  addu       $v0, $v0, $v1
/* 8B4BDF8 800788C8 FF004230 */  andi       $v0, $v0, 0xFF
/* 8B4BDFC 800788CC 40100200 */  sll        $v0, $v0, 1
/* 8B4BE00 800788D0 0680013C */  lui        $at, %hi(D_80065920)
/* 8B4BE04 800788D4 21082200 */  addu       $at, $at, $v0
/* 8B4BE08 800788D8 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 8B4BE0C 800788DC 00000000 */  nop
/* 8B4BE10 800788E0 00140200 */  sll        $v0, $v0, 16
/* 8B4BE14 800788E4 43160200 */  sra        $v0, $v0, 25
/* 8B4BE18 800788E8 440022A2 */  sb         $v0, 0x44($s1)
/* 8B4BE1C 800788EC 0780023C */  lui        $v0, %hi(D_8006C644)
/* 8B4BE20 800788F0 44C6428C */  lw         $v0, %lo(D_8006C644)($v0)
/* 8B4BE24 800788F4 49002392 */  lbu        $v1, 0x49($s1)
/* 8B4BE28 800788F8 40100200 */  sll        $v0, $v0, 1
/* 8B4BE2C 800788FC 21104300 */  addu       $v0, $v0, $v1
/* 8B4BE30 80078900 FF004230 */  andi       $v0, $v0, 0xFF
/* 8B4BE34 80078904 40100200 */  sll        $v0, $v0, 1
/* 8B4BE38 80078908 0680013C */  lui        $at, %hi(D_800658A0)
/* 8B4BE3C 8007890C 21082200 */  addu       $at, $at, $v0
/* 8B4BE40 80078910 A0582294 */  lhu        $v0, %lo(D_800658A0)($at)
/* 8B4BE44 80078914 00000000 */  nop
/* 8B4BE48 80078918 00140200 */  sll        $v0, $v0, 16
/* 8B4BE4C 8007891C 43160200 */  sra        $v0, $v0, 25
/* 8B4BE50 80078920 450022A2 */  sb         $v0, 0x45($s1)
.Llevel_44_80078924:
/* 8B4BE54 80078924 4000BF8F */  lw         $ra, 0x40($sp)
/* 8B4BE58 80078928 3C00B38F */  lw         $s3, 0x3C($sp)
/* 8B4BE5C 8007892C 3800B28F */  lw         $s2, 0x38($sp)
/* 8B4BE60 80078930 3400B18F */  lw         $s1, 0x34($sp)
/* 8B4BE64 80078934 3000B08F */  lw         $s0, 0x30($sp)
/* 8B4BE68 80078938 4800BD27 */  addiu      $sp, $sp, 0x48
/* 8B4BE6C 8007893C 0800E003 */  jr         $ra
/* 8B4BE70 80078940 00000000 */   nop
.size func_level_44_800785C4, . - func_level_44_800785C4
