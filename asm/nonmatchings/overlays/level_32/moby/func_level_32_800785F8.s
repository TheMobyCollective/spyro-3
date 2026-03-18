.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_800785F8
/* 6DDFB28 800785F8 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 6DDFB2C 800785FC 2400B1AF */  sw         $s1, 0x24($sp)
/* 6DDFB30 80078600 21888000 */  addu       $s1, $a0, $zero
/* 6DDFB34 80078604 3000BFAF */  sw         $ra, 0x30($sp)
/* 6DDFB38 80078608 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 6DDFB3C 8007860C 2800B2AF */  sw         $s2, 0x28($sp)
/* 6DDFB40 80078610 2000B0AF */  sw         $s0, 0x20($sp)
/* 6DDFB44 80078614 0000228E */  lw         $v0, 0x0($s1)
/* 6DDFB48 80078618 00000000 */  nop
/* 6DDFB4C 8007861C 0000428C */  lw         $v0, 0x0($v0)
/* 6DDFB50 80078620 00000000 */  nop
/* 6DDFB54 80078624 03004010 */  beqz       $v0, .Llevel_32_80078634
/* 6DDFB58 80078628 00000000 */   nop
/* 6DDFB5C 8007862C 05DC000C */  jal        func_80037014
/* 6DDFB60 80078630 00000000 */   nop
.Llevel_32_80078634:
/* 6DDFB64 80078634 0680023C */  lui        $v0, %hi(D_8006581C)
/* 6DDFB68 80078638 1C58428C */  lw         $v0, %lo(D_8006581C)($v0)
/* 6DDFB6C 8007863C 00000000 */  nop
/* 6DDFB70 80078640 42004018 */  blez       $v0, .Llevel_32_8007874C
/* 6DDFB74 80078644 0C003026 */   addiu     $s0, $s1, 0xC
/* 6DDFB78 80078648 0780053C */  lui        $a1, %hi(D_80070328)
/* 6DDFB7C 8007864C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 6DDFB80 80078650 CD3C010C */  jal        func_8004F334
/* 6DDFB84 80078654 21200002 */   addu      $a0, $s0, $zero
/* 6DDFB88 80078658 0680033C */  lui        $v1, %hi(D_80065810)
/* 6DDFB8C 8007865C 1058638C */  lw         $v1, %lo(D_80065810)($v1)
/* 6DDFB90 80078660 00000000 */  nop
/* 6DDFB94 80078664 2A104300 */  slt        $v0, $v0, $v1
/* 6DDFB98 80078668 38004010 */  beqz       $v0, .Llevel_32_8007874C
/* 6DDFB9C 8007866C 00000000 */   nop
/* 6DDFBA0 80078670 1400228E */  lw         $v0, 0x14($s1)
/* 6DDFBA4 80078674 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 6DDFBA8 80078678 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 6DDFBAC 8007867C 64014224 */  addiu      $v0, $v0, 0x164
/* 6DDFBB0 80078680 23186200 */  subu       $v1, $v1, $v0
/* 6DDFBB4 80078684 0680023C */  lui        $v0, %hi(D_80065818)
/* 6DDFBB8 80078688 1858428C */  lw         $v0, %lo(D_80065818)($v0)
/* 6DDFBBC 8007868C 02006104 */  bgez       $v1, .Llevel_32_80078698
/* 6DDFBC0 80078690 00000000 */   nop
/* 6DDFBC4 80078694 23180300 */  negu       $v1, $v1
.Llevel_32_80078698:
/* 6DDFBC8 80078698 2A186200 */  slt        $v1, $v1, $v0
/* 6DDFBCC 8007869C 2B006010 */  beqz       $v1, .Llevel_32_8007874C
/* 6DDFBD0 800786A0 00000000 */   nop
/* 6DDFBD4 800786A4 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 6DDFBD8 800786A8 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 6DDFBDC 800786AC 00000000 */  nop
/* 6DDFBE0 800786B0 26008010 */  beqz       $a0, .Llevel_32_8007874C
/* 6DDFBE4 800786B4 0C008424 */   addiu     $a0, $a0, 0xC
/* 6DDFBE8 800786B8 21280002 */  addu       $a1, $s0, $zero
/* 6DDFBEC 800786BC 8E4F000C */  jal        func_80013E38
/* 6DDFBF0 800786C0 04000624 */   addiu     $a2, $zero, 0x4
/* 6DDFBF4 800786C4 21004010 */  beqz       $v0, .Llevel_32_8007874C
/* 6DDFBF8 800786C8 00000000 */   nop
/* 6DDFBFC 800786CC 0780033C */  lui        $v1, %hi(D_8006C65C)
/* 6DDFC00 800786D0 5CC6638C */  lw         $v1, %lo(D_8006C65C)($v1)
/* 6DDFC04 800786D4 00000000 */  nop
/* 6DDFC08 800786D8 0000708C */  lw         $s0, 0x0($v1)
/* 6DDFC0C 800786DC 00000000 */  nop
/* 6DDFC10 800786E0 1400028E */  lw         $v0, 0x14($s0)
/* 6DDFC14 800786E4 00000000 */  nop
/* 6DDFC18 800786E8 09004010 */  beqz       $v0, .Llevel_32_80078710
/* 6DDFC1C 800786EC 00000000 */   nop
/* 6DDFC20 800786F0 16005110 */  beq        $v0, $s1, .Llevel_32_8007874C
/* 6DDFC24 800786F4 00000000 */   nop
/* 6DDFC28 800786F8 00000286 */  lh         $v0, 0x0($s0)
/* 6DDFC2C 800786FC 00000000 */  nop
/* 6DDFC30 80078700 12004018 */  blez       $v0, .Llevel_32_8007874C
/* 6DDFC34 80078704 00000000 */   nop
/* 6DDFC38 80078708 D3E10108 */  j          .Llevel_32_8007874C
/* 6DDFC3C 8007870C 000000A6 */   sh        $zero, 0x0($s0)
.Llevel_32_80078710:
/* 6DDFC40 80078710 09000224 */  addiu      $v0, $zero, 0x9
/* 6DDFC44 80078714 490062A0 */  sb         $v0, 0x49($v1)
/* 6DDFC48 80078718 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 6DDFC4C 8007871C 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 6DDFC50 80078720 02000592 */  lbu        $a1, 0x2($s0)
/* 6DDFC54 80078724 140011AE */  sw         $s1, 0x14($s0)
/* 6DDFC58 80078728 F0EF000C */  jal        func_8003BFC0
/* 6DDFC5C 8007872C 000000A6 */   sh        $zero, 0x0($s0)
/* 6DDFC60 80078730 06004014 */  bnez       $v0, .Llevel_32_8007874C
/* 6DDFC64 80078734 21280000 */   addu      $a1, $zero, $zero
/* 6DDFC68 80078738 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 6DDFC6C 8007873C 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 6DDFC70 80078740 AFEE000C */  jal        func_8003BABC
/* 6DDFC74 80078744 21300000 */   addu      $a2, $zero, $zero
/* 6DDFC78 80078748 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_32_8007874C:
/* 6DDFC7C 8007874C 1800228E */  lw         $v0, 0x18($s1)
/* 6DDFC80 80078750 00000000 */  nop
/* 6DDFC84 80078754 50004010 */  beqz       $v0, .Llevel_32_80078898
/* 6DDFC88 80078758 21202002 */   addu      $a0, $s1, $zero
/* 6DDFC8C 8007875C 21280000 */  addu       $a1, $zero, $zero
/* 6DDFC90 80078760 AFEE000C */  jal        func_8003BABC
/* 6DDFC94 80078764 21300000 */   addu      $a2, $zero, $zero
/* 6DDFC98 80078768 70000224 */  addiu      $v0, $zero, 0x70
/* 6DDFC9C 8007876C 490022A2 */  sb         $v0, 0x49($s1)
/* 6DDFCA0 80078770 21800000 */  addu       $s0, $zero, $zero
/* 6DDFCA4 80078774 03001324 */  addiu      $s3, $zero, 0x3
/* 6DDFCA8 80078778 01001224 */  addiu      $s2, $zero, 0x1
.Llevel_32_8007877C:
/* 6DDFCAC 8007877C 0780023C */  lui        $v0, %hi(D_8006C578)
/* 6DDFCB0 80078780 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 6DDFCB4 80078784 0780033C */  lui        $v1, %hi(D_8006C574)
/* 6DDFCB8 80078788 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 6DDFCBC 8007878C 00000000 */  nop
/* 6DDFCC0 80078790 23104300 */  subu       $v0, $v0, $v1
/* 6DDFCC4 80078794 15004228 */  slti       $v0, $v0, 0x15
/* 6DDFCC8 80078798 11004014 */  bnez       $v0, .Llevel_32_800787E0
/* 6DDFCCC 8007879C 32010424 */   addiu     $a0, $zero, 0x132
/* 6DDFCD0 800787A0 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6DDFCD4 800787A4 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6DDFCD8 800787A8 00000000 */  nop
/* 6DDFCDC 800787AC 09F84000 */  jalr       $v0
/* 6DDFCE0 800787B0 21282002 */   addu      $a1, $s1, $zero
/* 6DDFCE4 800787B4 21184000 */  addu       $v1, $v0, $zero
/* 6DDFCE8 800787B8 0500022A */  slti       $v0, $s0, 0x5
/* 6DDFCEC 800787BC 03004010 */  beqz       $v0, .Llevel_32_800787CC
/* 6DDFCF0 800787C0 00000000 */   nop
/* 6DDFCF4 800787C4 F4E10108 */  j          .Llevel_32_800787D0
/* 6DDFCF8 800787C8 490073A0 */   sb        $s3, 0x49($v1)
.Llevel_32_800787CC:
/* 6DDFCFC 800787CC 3C0072A0 */  sb         $s2, 0x3C($v1)
.Llevel_32_800787D0:
/* 6DDFD00 800787D0 01001026 */  addiu      $s0, $s0, 0x1
/* 6DDFD04 800787D4 0C00022A */  slti       $v0, $s0, 0xC
/* 6DDFD08 800787D8 E8FF4014 */  bnez       $v0, .Llevel_32_8007877C
/* 6DDFD0C 800787DC 00000000 */   nop
.Llevel_32_800787E0:
/* 6DDFD10 800787E0 21800000 */  addu       $s0, $zero, $zero
.Llevel_32_800787E4:
/* 6DDFD14 800787E4 1000A427 */  addiu      $a0, $sp, 0x10
/* 6DDFD18 800787E8 5E3C010C */  jal        func_8004F178
/* 6DDFD1C 800787EC 0C002526 */   addiu     $a1, $s1, 0xC
/* 6DDFD20 800787F0 9171010C */  jal        rand
/* 6DDFD24 800787F4 01001026 */   addiu     $s0, $s0, 0x1
/* 6DDFD28 800787F8 1000A38F */  lw         $v1, 0x10($sp)
/* 6DDFD2C 800787FC FF014230 */  andi       $v0, $v0, 0x1FF
/* 6DDFD30 80078800 00016324 */  addiu      $v1, $v1, 0x100
/* 6DDFD34 80078804 23186200 */  subu       $v1, $v1, $v0
/* 6DDFD38 80078808 9171010C */  jal        rand
/* 6DDFD3C 8007880C 1000A3AF */   sw        $v1, 0x10($sp)
/* 6DDFD40 80078810 1400A38F */  lw         $v1, 0x14($sp)
/* 6DDFD44 80078814 FF014230 */  andi       $v0, $v0, 0x1FF
/* 6DDFD48 80078818 00016324 */  addiu      $v1, $v1, 0x100
/* 6DDFD4C 8007881C 23186200 */  subu       $v1, $v1, $v0
/* 6DDFD50 80078820 9171010C */  jal        rand
/* 6DDFD54 80078824 1400A3AF */   sw        $v1, 0x14($sp)
/* 6DDFD58 80078828 01000424 */  addiu      $a0, $zero, 0x1
/* 6DDFD5C 8007882C 02000524 */  addiu      $a1, $zero, 0x2
/* 6DDFD60 80078830 1000A627 */  addiu      $a2, $sp, 0x10
/* 6DDFD64 80078834 21380000 */  addu       $a3, $zero, $zero
/* 6DDFD68 80078838 FF014230 */  andi       $v0, $v0, 0x1FF
/* 6DDFD6C 8007883C 1800A38F */  lw         $v1, 0x18($sp)
/* 6DDFD70 80078840 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 6DDFD74 80078844 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 6DDFD78 80078848 21186200 */  addu       $v1, $v1, $v0
/* 6DDFD7C 8007884C 09F80001 */  jalr       $t0
/* 6DDFD80 80078850 1800A3AF */   sw        $v1, 0x18($sp)
/* 6DDFD84 80078854 04000424 */  addiu      $a0, $zero, 0x4
/* 6DDFD88 80078858 46000524 */  addiu      $a1, $zero, 0x46
/* 6DDFD8C 8007885C 1000A627 */  addiu      $a2, $sp, 0x10
/* 6DDFD90 80078860 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DDFD94 80078864 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DDFD98 80078868 00000000 */  nop
/* 6DDFD9C 8007886C 09F84000 */  jalr       $v0
/* 6DDFDA0 80078870 18000724 */   addiu     $a3, $zero, 0x18
/* 6DDFDA4 80078874 0400022A */  slti       $v0, $s0, 0x4
/* 6DDFDA8 80078878 DAFF4014 */  bnez       $v0, .Llevel_32_800787E4
/* 6DDFDAC 8007887C 21202002 */   addu      $a0, $s1, $zero
/* 6DDFDB0 80078880 21280000 */  addu       $a1, $zero, $zero
/* 6DDFDB4 80078884 21300000 */  addu       $a2, $zero, $zero
/* 6DDFDB8 80078888 9ADA000C */  jal        func_80036A68
/* 6DDFDBC 8007888C 21380000 */   addu      $a3, $zero, $zero
/* 6DDFDC0 80078890 C656010C */  jal        func_80055B18
/* 6DDFDC4 80078894 21202002 */   addu      $a0, $s1, $zero
.Llevel_32_80078898:
/* 6DDFDC8 80078898 3000BF8F */  lw         $ra, 0x30($sp)
/* 6DDFDCC 8007889C 2C00B38F */  lw         $s3, 0x2C($sp)
/* 6DDFDD0 800788A0 2800B28F */  lw         $s2, 0x28($sp)
/* 6DDFDD4 800788A4 2400B18F */  lw         $s1, 0x24($sp)
/* 6DDFDD8 800788A8 2000B08F */  lw         $s0, 0x20($sp)
/* 6DDFDDC 800788AC 3800BD27 */  addiu      $sp, $sp, 0x38
/* 6DDFDE0 800788B0 0800E003 */  jr         $ra
/* 6DDFDE4 800788B4 00000000 */   nop
.size func_level_32_800785F8, . - func_level_32_800785F8
