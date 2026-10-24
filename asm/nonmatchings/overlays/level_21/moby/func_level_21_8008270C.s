.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_733_level_21
/* 53FEC3C 8008270C C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 53FEC40 80082710 3000B0AF */  sw         $s0, 0x30($sp)
/* 53FEC44 80082714 21808000 */  addu       $s0, $a0, $zero
/* 53FEC48 80082718 3800BFAF */  sw         $ra, 0x38($sp)
/* 53FEC4C 8008271C 3400B1AF */  sw         $s1, 0x34($sp)
/* 53FEC50 80082720 0C00028E */  lw         $v0, 0xC($s0)
/* 53FEC54 80082724 0000118E */  lw         $s1, 0x0($s0)
/* 53FEC58 80082728 00044228 */  slti       $v0, $v0, 0x400
/* 53FEC5C 8008272C 0F004014 */  bnez       $v0, .Llevel_21_8008276C
/* 53FEC60 80082730 00000000 */   nop
/* 53FEC64 80082734 1000028E */  lw         $v0, 0x10($s0)
/* 53FEC68 80082738 00000000 */  nop
/* 53FEC6C 8008273C 00044228 */  slti       $v0, $v0, 0x400
/* 53FEC70 80082740 0A004014 */  bnez       $v0, .Llevel_21_8008276C
/* 53FEC74 80082744 00000000 */   nop
/* 53FEC78 80082748 1400028E */  lw         $v0, 0x14($s0)
/* 53FEC7C 8008274C 00000000 */  nop
/* 53FEC80 80082750 00044228 */  slti       $v0, $v0, 0x400
/* 53FEC84 80082754 05004014 */  bnez       $v0, .Llevel_21_8008276C
/* 53FEC88 80082758 21202002 */   addu      $a0, $s1, $zero
/* 53FEC8C 8008275C 69D6000C */  jal        func_800359A4
/* 53FEC90 80082760 04000524 */   addiu     $a1, $zero, 0x4
/* 53FEC94 80082764 05004010 */  beqz       $v0, .Llevel_21_8008277C
/* 53FEC98 80082768 00000000 */   nop
.Llevel_21_8008276C:
/* 53FEC9C 8008276C C656010C */  jal        func_80055B18
/* 53FECA0 80082770 21200002 */   addu      $a0, $s0, $zero
/* 53FECA4 80082774 290A0208 */  j          .Llevel_21_800828A4
/* 53FECA8 80082778 00000000 */   nop
.Llevel_21_8008277C:
/* 53FECAC 8008277C 0000228E */  lw         $v0, 0x0($s1)
/* 53FECB0 80082780 0680053C */  lui        $a1, %hi(D_800658A0)
/* 53FECB4 80082784 A058A524 */  addiu      $a1, $a1, %lo(D_800658A0)
/* 53FECB8 80082788 C0100200 */  sll        $v0, $v0, 3
/* 53FECBC 8008278C F8014230 */  andi       $v0, $v0, 0x1F8
/* 53FECC0 80082790 0680013C */  lui        $at, %hi(D_800658A0)
/* 53FECC4 80082794 21082200 */  addu       $at, $at, $v0
/* 53FECC8 80082798 A0582294 */  lhu        $v0, %lo(D_800658A0)($at)
/* 53FECCC 8008279C 36000386 */  lh         $v1, 0x36($s0)
/* 53FECD0 800827A0 00140200 */  sll        $v0, $v0, 16
/* 53FECD4 800827A4 C3250200 */  sra        $a0, $v0, 23
/* 53FECD8 800827A8 DA020224 */  addiu      $v0, $zero, 0x2DA
/* 53FECDC 800827AC 03006210 */  beq        $v1, $v0, .Llevel_21_800827BC
/* 53FECE0 800827B0 450004A2 */   sb        $a0, 0x45($s0)
/* 53FECE4 800827B4 40008224 */  addiu      $v0, $a0, 0x40
/* 53FECE8 800827B8 450002A2 */  sb         $v0, 0x45($s0)
.Llevel_21_800827BC:
/* 53FECEC 800827BC 0000228E */  lw         $v0, 0x0($s1)
/* 53FECF0 800827C0 00000000 */  nop
/* 53FECF4 800827C4 C0100200 */  sll        $v0, $v0, 3
/* 53FECF8 800827C8 F8014230 */  andi       $v0, $v0, 0x1F8
/* 53FECFC 800827CC 21104500 */  addu       $v0, $v0, $a1
/* 53FED00 800827D0 00004394 */  lhu        $v1, 0x0($v0)
/* 53FED04 800827D4 46000292 */  lbu        $v0, 0x46($s0)
/* 53FED08 800827D8 001C0300 */  sll        $v1, $v1, 16
/* 53FED0C 800827DC 40100200 */  sll        $v0, $v0, 1
/* 53FED10 800827E0 0680013C */  lui        $at, %hi(D_80065920)
/* 53FED14 800827E4 21082200 */  addu       $at, $at, $v0
/* 53FED18 800827E8 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 53FED1C 800827EC 031E0300 */  sra        $v1, $v1, 24
/* 53FED20 800827F0 18004300 */  mult       $v0, $v1
/* 53FED24 800827F4 12380000 */  mflo       $a3
/* 53FED28 800827F8 03130700 */  sra        $v0, $a3, 12
/* 53FED2C 800827FC 1000A2AF */  sw         $v0, 0x10($sp)
/* 53FED30 80082800 46000292 */  lbu        $v0, 0x46($s0)
/* 53FED34 80082804 00000000 */  nop
/* 53FED38 80082808 40100200 */  sll        $v0, $v0, 1
/* 53FED3C 8008280C 21104500 */  addu       $v0, $v0, $a1
/* 53FED40 80082810 00004284 */  lh         $v0, 0x0($v0)
/* 53FED44 80082814 00000000 */  nop
/* 53FED48 80082818 18004300 */  mult       $v0, $v1
/* 53FED4C 8008281C 1000A627 */  addiu      $a2, $sp, 0x10
/* 53FED50 80082820 0C001026 */  addiu      $s0, $s0, 0xC
/* 53FED54 80082824 1800A0AF */  sw         $zero, 0x18($sp)
/* 53FED58 80082828 12380000 */  mflo       $a3
/* 53FED5C 8008282C 03130700 */  sra        $v0, $a3, 12
/* 53FED60 80082830 1400A2AF */  sw         $v0, 0x14($sp)
/* 53FED64 80082834 0000228E */  lw         $v0, 0x0($s1)
/* 53FED68 80082838 21200002 */  addu       $a0, $s0, $zero
/* 53FED6C 8008283C C0100200 */  sll        $v0, $v0, 3
/* 53FED70 80082840 F8014230 */  andi       $v0, $v0, 0x1F8
/* 53FED74 80082844 0680013C */  lui        $at, %hi(D_80065920)
/* 53FED78 80082848 21082200 */  addu       $at, $at, $v0
/* 53FED7C 8008284C 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 53FED80 80082850 21280002 */  addu       $a1, $s0, $zero
/* 53FED84 80082854 00140200 */  sll        $v0, $v0, 16
/* 53FED88 80082858 03160200 */  sra        $v0, $v0, 24
/* 53FED8C 8008285C 02004104 */  bgez       $v0, .Llevel_21_80082868
/* 53FED90 80082860 00000000 */   nop
/* 53FED94 80082864 23100200 */  negu       $v0, $v0
.Llevel_21_80082868:
/* 53FED98 80082868 23100200 */  negu       $v0, $v0
/* 53FED9C 8008286C 653C010C */  jal        func_8004F194
/* 53FEDA0 80082870 1800A2AF */   sw        $v0, 0x18($sp)
/* 53FEDA4 80082874 21200002 */  addu       $a0, $s0, $zero
/* 53FEDA8 80082878 21288000 */  addu       $a1, $a0, $zero
/* 53FEDAC 8008287C 04003026 */  addiu      $s0, $s1, 0x4
/* 53FEDB0 80082880 653C010C */  jal        func_8004F194
/* 53FEDB4 80082884 21300002 */   addu      $a2, $s0, $zero
/* 53FEDB8 80082888 21200002 */  addu       $a0, $s0, $zero
/* 53FEDBC 8008288C 21280002 */  addu       $a1, $s0, $zero
/* 53FEDC0 80082890 7F3C010C */  jal        func_8004F1FC
/* 53FEDC4 80082894 C0000624 */   addiu     $a2, $zero, 0xC0
/* 53FEDC8 80082898 21200002 */  addu       $a0, $s0, $zero
/* 53FEDCC 8008289C 443C010C */  jal        func_8004F110
/* 53FEDD0 800828A0 08000524 */   addiu     $a1, $zero, 0x8
.Llevel_21_800828A4:
/* 53FEDD4 800828A4 3800BF8F */  lw         $ra, 0x38($sp)
/* 53FEDD8 800828A8 3400B18F */  lw         $s1, 0x34($sp)
/* 53FEDDC 800828AC 3000B08F */  lw         $s0, 0x30($sp)
/* 53FEDE0 800828B0 4000BD27 */  addiu      $sp, $sp, 0x40
/* 53FEDE4 800828B4 0800E003 */  jr         $ra
/* 53FEDE8 800828B8 00000000 */   nop
.size MobyUpdate_733_level_21, . - MobyUpdate_733_level_21
