.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_509_level_20
/* 50CD590 8007D860 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 50CD594 8007D864 5400B1AF */  sw         $s1, 0x54($sp)
/* 50CD598 8007D868 21888000 */  addu       $s1, $a0, $zero
/* 50CD59C 8007D86C 5C00BFAF */  sw         $ra, 0x5C($sp)
/* 50CD5A0 8007D870 5800B2AF */  sw         $s2, 0x58($sp)
/* 50CD5A4 8007D874 5000B0AF */  sw         $s0, 0x50($sp)
/* 50CD5A8 8007D878 3C002292 */  lbu        $v0, 0x3C($s1)
/* 50CD5AC 8007D87C 0000308E */  lw         $s0, 0x0($s1)
/* 50CD5B0 8007D880 2A004010 */  beqz       $v0, .Llevel_20_8007D92C
/* 50CD5B4 8007D884 01000224 */   addiu     $v0, $zero, 0x1
/* 50CD5B8 8007D888 C5E5000C */  jal        func_80039714
/* 50CD5BC 8007D88C 21900000 */   addu      $s2, $zero, $zero
.Llevel_20_8007D890:
/* 50CD5C0 8007D890 0C00228E */  lw         $v0, 0xC($s1)
/* 50CD5C4 8007D894 21200000 */  addu       $a0, $zero, $zero
/* 50CD5C8 8007D898 2000A2AF */  sw         $v0, 0x20($sp)
/* 50CD5CC 8007D89C 1000228E */  lw         $v0, 0x10($s1)
/* 50CD5D0 8007D8A0 2C010524 */  addiu      $a1, $zero, 0x12C
/* 50CD5D4 8007D8A4 2400A2AF */  sw         $v0, 0x24($sp)
/* 50CD5D8 8007D8A8 1400228E */  lw         $v0, 0x14($s1)
/* 50CD5DC 8007D8AC 01005226 */  addiu      $s2, $s2, 0x1
/* 50CD5E0 8007D8B0 3000A0AF */  sw         $zero, 0x30($sp)
/* 50CD5E4 8007D8B4 3400A0AF */  sw         $zero, 0x34($sp)
/* 50CD5E8 8007D8B8 3800A0AF */  sw         $zero, 0x38($sp)
/* 50CD5EC 8007D8BC F7D8000C */  jal        func_800363DC
/* 50CD5F0 8007D8C0 2800A2AF */   sw        $v0, 0x28($sp)
/* 50CD5F4 8007D8C4 21200000 */  addu       $a0, $zero, $zero
/* 50CD5F8 8007D8C8 2000A38F */  lw         $v1, 0x20($sp)
/* 50CD5FC 8007D8CC 2C010524 */  addiu      $a1, $zero, 0x12C
/* 50CD600 8007D8D0 21186200 */  addu       $v1, $v1, $v0
/* 50CD604 8007D8D4 F7D8000C */  jal        func_800363DC
/* 50CD608 8007D8D8 2000A3AF */   sw        $v1, 0x20($sp)
/* 50CD60C 8007D8DC 21200000 */  addu       $a0, $zero, $zero
/* 50CD610 8007D8E0 2400A38F */  lw         $v1, 0x24($sp)
/* 50CD614 8007D8E4 2C010524 */  addiu      $a1, $zero, 0x12C
/* 50CD618 8007D8E8 21186200 */  addu       $v1, $v1, $v0
/* 50CD61C 8007D8EC F7D8000C */  jal        func_800363DC
/* 50CD620 8007D8F0 2400A3AF */   sw        $v1, 0x24($sp)
/* 50CD624 8007D8F4 01000424 */  addiu      $a0, $zero, 0x1
/* 50CD628 8007D8F8 37000524 */  addiu      $a1, $zero, 0x37
/* 50CD62C 8007D8FC 2000A627 */  addiu      $a2, $sp, 0x20
/* 50CD630 8007D900 3000A727 */  addiu      $a3, $sp, 0x30
/* 50CD634 8007D904 2800A38F */  lw         $v1, 0x28($sp)
/* 50CD638 8007D908 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 50CD63C 8007D90C E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 50CD640 8007D910 21186200 */  addu       $v1, $v1, $v0
/* 50CD644 8007D914 09F80001 */  jalr       $t0
/* 50CD648 8007D918 2800A3AF */   sw        $v1, 0x28($sp)
/* 50CD64C 8007D91C DCFF401A */  blez       $s2, .Llevel_20_8007D890
/* 50CD650 8007D920 00000000 */   nop
/* 50CD654 8007D924 01F80108 */  j          .Llevel_20_8007E004
/* 50CD658 8007D928 00000000 */   nop
.Llevel_20_8007D92C:
/* 50CD65C 8007D92C 0780033C */  lui        $v1, %hi(D_80071A04)
/* 50CD660 8007D930 041A6390 */  lbu        $v1, %lo(D_80071A04)($v1)
/* 50CD664 8007D934 00000000 */  nop
/* 50CD668 8007D938 1A006214 */  bne        $v1, $v0, .Llevel_20_8007D9A4
/* 50CD66C 8007D93C 00000000 */   nop
/* 50CD670 8007D940 1400028E */  lw         $v0, 0x14($s0)
/* 50CD674 8007D944 00000000 */  nop
/* 50CD678 8007D948 0000428C */  lw         $v0, 0x0($v0)
/* 50CD67C 8007D94C 00000000 */  nop
/* 50CD680 8007D950 14004014 */  bnez       $v0, .Llevel_20_8007D9A4
/* 50CD684 8007D954 07000424 */   addiu     $a0, $zero, 0x7
/* 50CD688 8007D958 C8000524 */  addiu      $a1, $zero, 0xC8
/* 50CD68C 8007D95C 0280063C */  lui        $a2, %hi(func_80027EE4)
/* 50CD690 8007D960 E47EC624 */  addiu      $a2, $a2, %lo(func_80027EE4)
/* 50CD694 8007D964 0280073C */  lui        $a3, %hi(func_80027A60)
/* 50CD698 8007D968 607AE724 */  addiu      $a3, $a3, %lo(func_80027A60)
/* 50CD69C 8007D96C 0780033C */  lui        $v1, %hi(D_8006C628)
/* 50CD6A0 8007D970 28C6638C */  lw         $v1, %lo(D_8006C628)($v1)
/* 50CD6A4 8007D974 0380023C */  lui        $v0, %hi(func_80029AA0)
/* 50CD6A8 8007D978 A09A4224 */  addiu      $v0, $v0, %lo(func_80029AA0)
/* 50CD6AC 8007D97C 1000A2AF */  sw         $v0, 0x10($sp)
/* 50CD6B0 8007D980 0780023C */  lui        $v0, %hi(D_8006C6C4)
/* 50CD6B4 8007D984 C4C64224 */  addiu      $v0, $v0, %lo(D_8006C6C4)
/* 50CD6B8 8007D988 1400A2AF */  sw         $v0, 0x14($sp)
/* 50CD6BC 8007D98C 0FA0000C */  jal        func_8002803C
/* 50CD6C0 8007D990 1800A3AF */   sw        $v1, 0x18($sp)
/* 50CD6C4 8007D994 00140200 */  sll        $v0, $v0, 16
/* 50CD6C8 8007D998 1400038E */  lw         $v1, 0x14($s0)
/* 50CD6CC 8007D99C 03140200 */  sra        $v0, $v0, 16
/* 50CD6D0 8007D9A0 000062AC */  sw         $v0, 0x0($v1)
.Llevel_20_8007D9A4:
/* 50CD6D4 8007D9A4 49002392 */  lbu        $v1, 0x49($s1)
/* 50CD6D8 8007D9A8 01000224 */  addiu      $v0, $zero, 0x1
/* 50CD6DC 8007D9AC 29006210 */  beq        $v1, $v0, .Llevel_20_8007DA54
/* 50CD6E0 8007D9B0 02006228 */   slti      $v0, $v1, 0x2
/* 50CD6E4 8007D9B4 05004010 */  beqz       $v0, .Llevel_20_8007D9CC
/* 50CD6E8 8007D9B8 00000000 */   nop
/* 50CD6EC 8007D9BC 0A006010 */  beqz       $v1, .Llevel_20_8007D9E8
/* 50CD6F0 8007D9C0 00000000 */   nop
/* 50CD6F4 8007D9C4 01F80108 */  j          .Llevel_20_8007E004
/* 50CD6F8 8007D9C8 00000000 */   nop
.Llevel_20_8007D9CC:
/* 50CD6FC 8007D9CC 02000224 */  addiu      $v0, $zero, 0x2
/* 50CD700 8007D9D0 5F006210 */  beq        $v1, $v0, .Llevel_20_8007DB50
/* 50CD704 8007D9D4 03000224 */   addiu     $v0, $zero, 0x3
/* 50CD708 8007D9D8 55016210 */  beq        $v1, $v0, .Llevel_20_8007DF30
/* 50CD70C 8007D9DC 00000000 */   nop
/* 50CD710 8007D9E0 01F80108 */  j          .Llevel_20_8007E004
/* 50CD714 8007D9E4 00000000 */   nop
.Llevel_20_8007D9E8:
/* 50CD718 8007D9E8 0780023C */  lui        $v0, %hi(D_8006C7B4)
/* 50CD71C 8007D9EC B4C74290 */  lbu        $v0, %lo(D_8006C7B4)($v0)
/* 50CD720 8007D9F0 00000000 */  nop
/* 50CD724 8007D9F4 08004230 */  andi       $v0, $v0, 0x8
/* 50CD728 8007D9F8 80014014 */  bnez       $v0, .Llevel_20_8007DFFC
/* 50CD72C 8007D9FC 21202002 */   addu      $a0, $s1, $zero
/* 50CD730 8007DA00 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 50CD734 8007DA04 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 50CD738 8007DA08 0780013C */  lui        $at, %hi(D_80070300)
/* 50CD73C 8007DA0C 21082200 */  addu       $at, $at, $v0
/* 50CD740 8007DA10 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 50CD744 8007DA14 00000000 */  nop
/* 50CD748 8007DA18 08004230 */  andi       $v0, $v0, 0x8
/* 50CD74C 8007DA1C 77014014 */  bnez       $v0, .Llevel_20_8007DFFC
/* 50CD750 8007DA20 00000000 */   nop
/* 50CD754 8007DA24 0780023C */  lui        $v0, %hi(D_8006C628)
/* 50CD758 8007DA28 28C6428C */  lw         $v0, %lo(D_8006C628)($v0)
/* 50CD75C 8007DA2C 0780013C */  lui        $at, %hi(D_8006C6C4)
/* 50CD760 8007DA30 C4C620AC */  sw         $zero, %lo(D_8006C6C4)($at)
/* 50CD764 8007DA34 01004224 */  addiu      $v0, $v0, 0x1
/* 50CD768 8007DA38 0780013C */  lui        $at, %hi(D_8006C628)
/* 50CD76C 8007DA3C 28C622AC */  sw         $v0, %lo(D_8006C628)($at)
/* 50CD770 8007DA40 FF000224 */  addiu      $v0, $zero, 0xFF
/* 50CD774 8007DA44 4A0022A2 */  sb         $v0, 0x4A($s1)
/* 50CD778 8007DA48 01000224 */  addiu      $v0, $zero, 0x1
/* 50CD77C 8007DA4C 01F80108 */  j          .Llevel_20_8007E004
/* 50CD780 8007DA50 490022A2 */   sb        $v0, 0x49($s1)
.Llevel_20_8007DA54:
/* 50CD784 8007DA54 1800248E */  lw         $a0, 0x18($s1)
/* 50CD788 8007DA58 1000023C */  lui        $v0, (0x100000 >> 16)
/* 50CD78C 8007DA5C 24108200 */  and        $v0, $a0, $v0
/* 50CD790 8007DA60 03004010 */  beqz       $v0, .Llevel_20_8007DA70
/* 50CD794 8007DA64 02000224 */   addiu     $v0, $zero, 0x2
/* 50CD798 8007DA68 AFF60108 */  j          .Llevel_20_8007DABC
/* 50CD79C 8007DA6C 490022A2 */   sb        $v0, 0x49($s1)
.Llevel_20_8007DA70:
/* 50CD7A0 8007DA70 0200023C */  lui        $v0, (0x20000 >> 16)
/* 50CD7A4 8007DA74 24108200 */  and        $v0, $a0, $v0
/* 50CD7A8 8007DA78 10004010 */  beqz       $v0, .Llevel_20_8007DABC
/* 50CD7AC 8007DA7C 00000000 */   nop
/* 50CD7B0 8007DA80 0000028E */  lw         $v0, 0x0($s0)
/* 50CD7B4 8007DA84 00000000 */  nop
/* 50CD7B8 8007DA88 10004014 */  bnez       $v0, .Llevel_20_8007DACC
/* 50CD7BC 8007DA8C 00000000 */   nop
/* 50CD7C0 8007DA90 180020AE */  sw         $zero, 0x18($s1)
/* 50CD7C4 8007DA94 000003AE */  sw         $v1, 0x0($s0)
/* 50CD7C8 8007DA98 44002292 */  lbu        $v0, 0x44($s1)
/* 50CD7CC 8007DA9C 00000000 */  nop
/* 50CD7D0 8007DAA0 040002AE */  sw         $v0, 0x4($s0)
/* 50CD7D4 8007DAA4 45002292 */  lbu        $v0, 0x45($s1)
/* 50CD7D8 8007DAA8 00000000 */  nop
/* 50CD7DC 8007DAAC 080002AE */  sw         $v0, 0x8($s0)
/* 50CD7E0 8007DAB0 1400228E */  lw         $v0, 0x14($s1)
/* 50CD7E4 8007DAB4 00000000 */  nop
/* 50CD7E8 8007DAB8 0C0002AE */  sw         $v0, 0xC($s0)
.Llevel_20_8007DABC:
/* 50CD7EC 8007DABC 0000028E */  lw         $v0, 0x0($s0)
/* 50CD7F0 8007DAC0 00000000 */  nop
/* 50CD7F4 8007DAC4 4F014010 */  beqz       $v0, .Llevel_20_8007E004
/* 50CD7F8 8007DAC8 00000000 */   nop
.Llevel_20_8007DACC:
/* 50CD7FC 8007DACC 0780033C */  lui        $v1, %hi(D_8006C648)
/* 50CD800 8007DAD0 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 50CD804 8007DAD4 00000000 */  nop
/* 50CD808 8007DAD8 21184300 */  addu       $v1, $v0, $v1
/* 50CD80C 8007DADC 40006228 */  slti       $v0, $v1, 0x40
/* 50CD810 8007DAE0 15004010 */  beqz       $v0, .Llevel_20_8007DB38
/* 50CD814 8007DAE4 000003AE */   sw        $v1, 0x0($s0)
/* 50CD818 8007DAE8 43100300 */  sra        $v0, $v1, 1
/* 50CD81C 8007DAEC 1000038E */  lw         $v1, 0x10($s0)
/* 50CD820 8007DAF0 40100200 */  sll        $v0, $v0, 1
/* 50CD824 8007DAF4 21104300 */  addu       $v0, $v0, $v1
/* 50CD828 8007DAF8 0400038E */  lw         $v1, 0x4($s0)
/* 50CD82C 8007DAFC 00004290 */  lbu        $v0, 0x0($v0)
/* 50CD830 8007DB00 00000000 */  nop
/* 50CD834 8007DB04 21104300 */  addu       $v0, $v0, $v1
/* 50CD838 8007DB08 440022A2 */  sb         $v0, 0x44($s1)
/* 50CD83C 8007DB0C 0000028E */  lw         $v0, 0x0($s0)
/* 50CD840 8007DB10 1000038E */  lw         $v1, 0x10($s0)
/* 50CD844 8007DB14 43100200 */  sra        $v0, $v0, 1
/* 50CD848 8007DB18 40100200 */  sll        $v0, $v0, 1
/* 50CD84C 8007DB1C 21104300 */  addu       $v0, $v0, $v1
/* 50CD850 8007DB20 0800038E */  lw         $v1, 0x8($s0)
/* 50CD854 8007DB24 01004290 */  lbu        $v0, 0x1($v0)
/* 50CD858 8007DB28 00000000 */  nop
/* 50CD85C 8007DB2C 21104300 */  addu       $v0, $v0, $v1
/* 50CD860 8007DB30 01F80108 */  j          .Llevel_20_8007E004
/* 50CD864 8007DB34 450022A2 */   sb        $v0, 0x45($s1)
.Llevel_20_8007DB38:
/* 50CD868 8007DB38 0400028E */  lw         $v0, 0x4($s0)
/* 50CD86C 8007DB3C 000000AE */  sw         $zero, 0x0($s0)
/* 50CD870 8007DB40 440022A2 */  sb         $v0, 0x44($s1)
/* 50CD874 8007DB44 0800028E */  lw         $v0, 0x8($s0)
/* 50CD878 8007DB48 01F80108 */  j          .Llevel_20_8007E004
/* 50CD87C 8007DB4C 450022A2 */   sb        $v0, 0x45($s1)
.Llevel_20_8007DB50:
/* 50CD880 8007DB50 21202002 */  addu       $a0, $s1, $zero
/* 50CD884 8007DB54 21280000 */  addu       $a1, $zero, $zero
/* 50CD888 8007DB58 AFEE000C */  jal        func_8003BABC
/* 50CD88C 8007DB5C 21300000 */   addu      $a2, $zero, $zero
/* 50CD890 8007DB60 0780023C */  lui        $v0, %hi(D_80071A04)
/* 50CD894 8007DB64 041A4290 */  lbu        $v0, %lo(D_80071A04)($v0)
/* 50CD898 8007DB68 00000000 */  nop
/* 50CD89C 8007DB6C 1A004014 */  bnez       $v0, .Llevel_20_8007DBD8
/* 50CD8A0 8007DB70 00000000 */   nop
/* 50CD8A4 8007DB74 1400028E */  lw         $v0, 0x14($s0)
/* 50CD8A8 8007DB78 00000000 */  nop
/* 50CD8AC 8007DB7C 0000428C */  lw         $v0, 0x0($v0)
/* 50CD8B0 8007DB80 00000000 */  nop
/* 50CD8B4 8007DB84 14004014 */  bnez       $v0, .Llevel_20_8007DBD8
/* 50CD8B8 8007DB88 07000424 */   addiu     $a0, $zero, 0x7
/* 50CD8BC 8007DB8C C8000524 */  addiu      $a1, $zero, 0xC8
/* 50CD8C0 8007DB90 0280063C */  lui        $a2, %hi(func_80027EE4)
/* 50CD8C4 8007DB94 E47EC624 */  addiu      $a2, $a2, %lo(func_80027EE4)
/* 50CD8C8 8007DB98 0280073C */  lui        $a3, %hi(func_80027A60)
/* 50CD8CC 8007DB9C 607AE724 */  addiu      $a3, $a3, %lo(func_80027A60)
/* 50CD8D0 8007DBA0 0780033C */  lui        $v1, %hi(D_8006C628)
/* 50CD8D4 8007DBA4 28C6638C */  lw         $v1, %lo(D_8006C628)($v1)
/* 50CD8D8 8007DBA8 0380023C */  lui        $v0, %hi(func_80029AA0)
/* 50CD8DC 8007DBAC A09A4224 */  addiu      $v0, $v0, %lo(func_80029AA0)
/* 50CD8E0 8007DBB0 1000A2AF */  sw         $v0, 0x10($sp)
/* 50CD8E4 8007DBB4 0780023C */  lui        $v0, %hi(D_8006C6C4)
/* 50CD8E8 8007DBB8 C4C64224 */  addiu      $v0, $v0, %lo(D_8006C6C4)
/* 50CD8EC 8007DBBC 1400A2AF */  sw         $v0, 0x14($sp)
/* 50CD8F0 8007DBC0 0FA0000C */  jal        func_8002803C
/* 50CD8F4 8007DBC4 1800A3AF */   sw        $v1, 0x18($sp)
/* 50CD8F8 8007DBC8 00140200 */  sll        $v0, $v0, 16
/* 50CD8FC 8007DBCC 1400038E */  lw         $v1, 0x14($s0)
/* 50CD900 8007DBD0 03140200 */  sra        $v0, $v0, 16
/* 50CD904 8007DBD4 000062AC */  sw         $v0, 0x0($v1)
.Llevel_20_8007DBD8:
/* 50CD908 8007DBD8 0780123C */  lui        $s2, %hi(D_80071A04)
/* 50CD90C 8007DBDC 041A5226 */  addiu      $s2, $s2, %lo(D_80071A04)
/* 50CD910 8007DBE0 01000224 */  addiu      $v0, $zero, 0x1
/* 50CD914 8007DBE4 000042A2 */  sb         $v0, 0x0($s2)
/* 50CD918 8007DBE8 0780033C */  lui        $v1, %hi(D_8006C628)
/* 50CD91C 8007DBEC 28C6638C */  lw         $v1, %lo(D_8006C628)($v1)
/* 50CD920 8007DBF0 0780023C */  lui        $v0, %hi(D_8006C6C4)
/* 50CD924 8007DBF4 C4C6428C */  lw         $v0, %lo(D_8006C6C4)($v0)
/* 50CD928 8007DBF8 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 50CD92C 8007DBFC 01004224 */  addiu      $v0, $v0, 0x1
/* 50CD930 8007DC00 0780013C */  lui        $at, %hi(D_8006C628)
/* 50CD934 8007DC04 28C623AC */  sw         $v1, %lo(D_8006C628)($at)
/* 50CD938 8007DC08 0780013C */  lui        $at, %hi(D_8006C6C4)
/* 50CD93C 8007DC0C C4C622AC */  sw         $v0, %lo(D_8006C6C4)($at)
/* 50CD940 8007DC10 93006014 */  bnez       $v1, .Llevel_20_8007DE60
/* 50CD944 8007DC14 05000424 */   addiu     $a0, $zero, 0x5
/* 50CD948 8007DC18 1400028E */  lw         $v0, 0x14($s0)
/* 50CD94C 8007DC1C 00000000 */  nop
/* 50CD950 8007DC20 0000448C */  lw         $a0, 0x0($v0)
/* 50CD954 8007DC24 00000000 */  nop
/* 50CD958 8007DC28 08008010 */  beqz       $a0, .Llevel_20_8007DC4C
/* 50CD95C 8007DC2C 00000000 */   nop
/* 50CD960 8007DC30 55A0000C */  jal        func_80028154
/* 50CD964 8007DC34 00000000 */   nop
/* 50CD968 8007DC38 1400028E */  lw         $v0, 0x14($s0)
/* 50CD96C 8007DC3C 00000000 */  nop
/* 50CD970 8007DC40 000040AC */  sw         $zero, 0x0($v0)
/* 50CD974 8007DC44 02000224 */  addiu      $v0, $zero, 0x2
/* 50CD978 8007DC48 000042A2 */  sb         $v0, 0x0($s2)
.Llevel_20_8007DC4C:
/* 50CD97C 8007DC4C 05000424 */  addiu      $a0, $zero, 0x5
/* 50CD980 8007DC50 21302002 */  addu       $a2, $s1, $zero
/* 50CD984 8007DC54 36002586 */  lh         $a1, 0x36($s1)
/* 50CD988 8007DC58 01000224 */  addiu      $v0, $zero, 0x1
/* 50CD98C 8007DC5C 1000A2AF */  sw         $v0, 0x10($sp)
/* 50CD990 8007DC60 00010224 */  addiu      $v0, $zero, 0x100
/* 50CD994 8007DC64 1400A2AF */  sw         $v0, 0x14($sp)
/* 50CD998 8007DC68 2000078E */  lw         $a3, 0x20($s0)
/* 50CD99C 8007DC6C 0780023C */  lui        $v0, %hi(SpawnFragments)
/* 50CD9A0 8007DC70 5C43428C */  lw         $v0, %lo(SpawnFragments)($v0)
/* 50CD9A4 8007DC74 00000000 */  nop
/* 50CD9A8 8007DC78 09F84000 */  jalr       $v0
/* 50CD9AC 8007DC7C 21900000 */   addu      $s2, $zero, $zero
.Llevel_20_8007DC80:
/* 50CD9B0 8007DC80 0C00228E */  lw         $v0, 0xC($s1)
/* 50CD9B4 8007DC84 21200000 */  addu       $a0, $zero, $zero
/* 50CD9B8 8007DC88 2000A2AF */  sw         $v0, 0x20($sp)
/* 50CD9BC 8007DC8C 1000228E */  lw         $v0, 0x10($s1)
/* 50CD9C0 8007DC90 BC020524 */  addiu      $a1, $zero, 0x2BC
/* 50CD9C4 8007DC94 2400A2AF */  sw         $v0, 0x24($sp)
/* 50CD9C8 8007DC98 1400228E */  lw         $v0, 0x14($s1)
/* 50CD9CC 8007DC9C 01005226 */  addiu      $s2, $s2, 0x1
/* 50CD9D0 8007DCA0 4000A0AF */  sw         $zero, 0x40($sp)
/* 50CD9D4 8007DCA4 4400A0AF */  sw         $zero, 0x44($sp)
/* 50CD9D8 8007DCA8 4800A0AF */  sw         $zero, 0x48($sp)
/* 50CD9DC 8007DCAC F7D8000C */  jal        func_800363DC
/* 50CD9E0 8007DCB0 2800A2AF */   sw        $v0, 0x28($sp)
/* 50CD9E4 8007DCB4 21200000 */  addu       $a0, $zero, $zero
/* 50CD9E8 8007DCB8 2000A38F */  lw         $v1, 0x20($sp)
/* 50CD9EC 8007DCBC BC020524 */  addiu      $a1, $zero, 0x2BC
/* 50CD9F0 8007DCC0 21186200 */  addu       $v1, $v1, $v0
/* 50CD9F4 8007DCC4 F7D8000C */  jal        func_800363DC
/* 50CD9F8 8007DCC8 2000A3AF */   sw        $v1, 0x20($sp)
/* 50CD9FC 8007DCCC 21200000 */  addu       $a0, $zero, $zero
/* 50CDA00 8007DCD0 2400A38F */  lw         $v1, 0x24($sp)
/* 50CDA04 8007DCD4 DC050524 */  addiu      $a1, $zero, 0x5DC
/* 50CDA08 8007DCD8 21186200 */  addu       $v1, $v1, $v0
/* 50CDA0C 8007DCDC DBD8000C */  jal        func_8003636C
/* 50CDA10 8007DCE0 2400A3AF */   sw        $v1, 0x24($sp)
/* 50CDA14 8007DCE4 01000424 */  addiu      $a0, $zero, 0x1
/* 50CDA18 8007DCE8 37000524 */  addiu      $a1, $zero, 0x37
/* 50CDA1C 8007DCEC 2000A627 */  addiu      $a2, $sp, 0x20
/* 50CDA20 8007DCF0 4000A727 */  addiu      $a3, $sp, 0x40
/* 50CDA24 8007DCF4 2800A38F */  lw         $v1, 0x28($sp)
/* 50CDA28 8007DCF8 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 50CDA2C 8007DCFC E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 50CDA30 8007DD00 21186200 */  addu       $v1, $v1, $v0
/* 50CDA34 8007DD04 09F80001 */  jalr       $t0
/* 50CDA38 8007DD08 2800A3AF */   sw        $v1, 0x28($sp)
/* 50CDA3C 8007DD0C 0A00422A */  slti       $v0, $s2, 0xA
/* 50CDA40 8007DD10 DBFF4014 */  bnez       $v0, .Llevel_20_8007DC80
/* 50CDA44 8007DD14 84000424 */   addiu     $a0, $zero, 0x84
/* 50CDA48 8007DD18 410020A2 */  sb         $zero, 0x41($s1)
/* 50CDA4C 8007DD1C 4C0020A2 */  sb         $zero, 0x4C($s1)
/* 50CDA50 8007DD20 4D0020A2 */  sb         $zero, 0x4D($s1)
/* 50CDA54 8007DD24 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 50CDA58 8007DD28 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 50CDA5C 8007DD2C 21282002 */  addu       $a1, $s1, $zero
/* 50CDA60 8007DD30 09F84000 */  jalr       $v0
/* 50CDA64 8007DD34 080020AE */   sw        $zero, 0x8($s1)
/* 50CDA68 8007DD38 06000324 */  addiu      $v1, $zero, 0x6
/* 50CDA6C 8007DD3C 1C0002AE */  sw         $v0, 0x1C($s0)
/* 50CDA70 8007DD40 480043A0 */  sb         $v1, 0x48($v0)
/* 50CDA74 8007DD44 FF000324 */  addiu      $v1, $zero, 0xFF
/* 50CDA78 8007DD48 4A0023A2 */  sb         $v1, 0x4A($s1)
/* 50CDA7C 8007DD4C 1C00028E */  lw         $v0, 0x1C($s0)
/* 50CDA80 8007DD50 00000000 */  nop
/* 50CDA84 8007DD54 4A0043A0 */  sb         $v1, 0x4A($v0)
/* 50CDA88 8007DD58 1C00038E */  lw         $v1, 0x1C($s0)
/* 50CDA8C 8007DD5C 30000224 */  addiu      $v0, $zero, 0x30
/* 50CDA90 8007DD60 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 50CDA94 8007DD64 1C00028E */  lw         $v0, 0x1C($s0)
/* 50CDA98 8007DD68 00000000 */  nop
/* 50CDA9C 8007DD6C 0000438C */  lw         $v1, 0x0($v0)
/* 50CDAA0 8007DD70 03000224 */  addiu      $v0, $zero, 0x3
/* 50CDAA4 8007DD74 000062A4 */  sh         $v0, 0x0($v1)
/* 50CDAA8 8007DD78 1800038E */  lw         $v1, 0x18($s0)
/* 50CDAAC 8007DD7C 00000000 */  nop
/* 50CDAB0 8007DD80 2C006010 */  beqz       $v1, .Llevel_20_8007DE34
/* 50CDAB4 8007DD84 21300000 */   addu      $a2, $zero, $zero
/* 50CDAB8 8007DD88 02006284 */  lh         $v0, 0x2($v1)
/* 50CDABC 8007DD8C 0C00638C */  lw         $v1, 0xC($v1)
/* 50CDAC0 8007DD90 0C00248E */  lw         $a0, 0xC($s1)
/* 50CDAC4 8007DD94 1000258E */  lw         $a1, 0x10($s1)
/* 50CDAC8 8007DD98 00110200 */  sll        $v0, $v0, 4
/* 50CDACC 8007DD9C 21104300 */  addu       $v0, $v0, $v1
/* 50CDAD0 8007DDA0 0000438C */  lw         $v1, 0x0($v0)
/* 50CDAD4 8007DDA4 0400428C */  lw         $v0, 0x4($v0)
/* 50CDAD8 8007DDA8 23206400 */  subu       $a0, $v1, $a0
/* 50CDADC 8007DDAC 203A010C */  jal        func_8004E880
/* 50CDAE0 8007DDB0 23284500 */   subu      $a1, $v0, $a1
/* 50CDAE4 8007DDB4 0C002426 */  addiu      $a0, $s1, 0xC
/* 50CDAE8 8007DDB8 40100200 */  sll        $v0, $v0, 1
/* 50CDAEC 8007DDBC 0680013C */  lui        $at, %hi(D_80065920)
/* 50CDAF0 8007DDC0 21082200 */  addu       $at, $at, $v0
/* 50CDAF4 8007DDC4 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 50CDAF8 8007DDC8 80000624 */  addiu      $a2, $zero, 0x80
/* 50CDAFC 8007DDCC 43190300 */  sra        $v1, $v1, 5
/* 50CDB00 8007DDD0 040003AE */  sw         $v1, 0x4($s0)
/* 50CDB04 8007DDD4 0680013C */  lui        $at, %hi(D_800658A0)
/* 50CDB08 8007DDD8 21082200 */  addu       $at, $at, $v0
/* 50CDB0C 8007DDDC A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 50CDB10 8007DDE0 1800038E */  lw         $v1, 0x18($s0)
/* 50CDB14 8007DDE4 43110200 */  sra        $v0, $v0, 5
/* 50CDB18 8007DDE8 080002AE */  sw         $v0, 0x8($s0)
/* 50CDB1C 8007DDEC 1000A0AF */  sw         $zero, 0x10($sp)
/* 50CDB20 8007DDF0 0C00658C */  lw         $a1, 0xC($v1)
/* 50CDB24 8007DDF4 79D9000C */  jal        func_800365E4
/* 50CDB28 8007DDF8 F8FF0724 */   addiu     $a3, $zero, -0x8
/* 50CDB2C 8007DDFC 1800038E */  lw         $v1, 0x18($s0)
/* 50CDB30 8007DE00 0C0002AE */  sw         $v0, 0xC($s0)
/* 50CDB34 8007DE04 0C00628C */  lw         $v0, 0xC($v1)
/* 50CDB38 8007DE08 21300000 */  addu       $a2, $zero, $zero
/* 50CDB3C 8007DE0C 1000478C */  lw         $a3, 0x10($v0)
/* 50CDB40 8007DE10 0000448C */  lw         $a0, 0x0($v0)
/* 50CDB44 8007DE14 1400438C */  lw         $v1, 0x14($v0)
/* 50CDB48 8007DE18 0400458C */  lw         $a1, 0x4($v0)
/* 50CDB4C 8007DE1C 2320E400 */  subu       $a0, $a3, $a0
/* 50CDB50 8007DE20 203A010C */  jal        func_8004E880
/* 50CDB54 8007DE24 23286500 */   subu      $a1, $v1, $a1
/* 50CDB58 8007DE28 1C00038E */  lw         $v1, 0x1C($s0)
/* 50CDB5C 8007DE2C 95F70108 */  j          .Llevel_20_8007DE54
/* 50CDB60 8007DE30 460062A0 */   sb        $v0, 0x46($v1)
.Llevel_20_8007DE34:
/* 50CDB64 8007DE34 1C00038E */  lw         $v1, 0x1C($s0)
/* 50CDB68 8007DE38 C0000224 */  addiu      $v0, $zero, 0xC0
/* 50CDB6C 8007DE3C 040000AE */  sw         $zero, 0x4($s0)
/* 50CDB70 8007DE40 080000AE */  sw         $zero, 0x8($s0)
/* 50CDB74 8007DE44 0C0002AE */  sw         $v0, 0xC($s0)
/* 50CDB78 8007DE48 46002292 */  lbu        $v0, 0x46($s1)
/* 50CDB7C 8007DE4C 00000000 */  nop
/* 50CDB80 8007DE50 460062A0 */  sb         $v0, 0x46($v1)
.Llevel_20_8007DE54:
/* 50CDB84 8007DE54 03000224 */  addiu      $v0, $zero, 0x3
/* 50CDB88 8007DE58 01F80108 */  j          .Llevel_20_8007E004
/* 50CDB8C 8007DE5C 490022A2 */   sb        $v0, 0x49($s1)
.Llevel_20_8007DE60:
/* 50CDB90 8007DE60 21302002 */  addu       $a2, $s1, $zero
/* 50CDB94 8007DE64 36002586 */  lh         $a1, 0x36($s1)
/* 50CDB98 8007DE68 01000224 */  addiu      $v0, $zero, 0x1
/* 50CDB9C 8007DE6C 1000A2AF */  sw         $v0, 0x10($sp)
/* 50CDBA0 8007DE70 00020224 */  addiu      $v0, $zero, 0x200
/* 50CDBA4 8007DE74 1400A2AF */  sw         $v0, 0x14($sp)
/* 50CDBA8 8007DE78 2000078E */  lw         $a3, 0x20($s0)
/* 50CDBAC 8007DE7C 0780023C */  lui        $v0, %hi(SpawnFragments)
/* 50CDBB0 8007DE80 5C43428C */  lw         $v0, %lo(SpawnFragments)($v0)
/* 50CDBB4 8007DE84 00000000 */  nop
/* 50CDBB8 8007DE88 09F84000 */  jalr       $v0
/* 50CDBBC 8007DE8C 21900000 */   addu      $s2, $zero, $zero
.Llevel_20_8007DE90:
/* 50CDBC0 8007DE90 0C00228E */  lw         $v0, 0xC($s1)
/* 50CDBC4 8007DE94 21200000 */  addu       $a0, $zero, $zero
/* 50CDBC8 8007DE98 2000A2AF */  sw         $v0, 0x20($sp)
/* 50CDBCC 8007DE9C 1000228E */  lw         $v0, 0x10($s1)
/* 50CDBD0 8007DEA0 BC020524 */  addiu      $a1, $zero, 0x2BC
/* 50CDBD4 8007DEA4 2400A2AF */  sw         $v0, 0x24($sp)
/* 50CDBD8 8007DEA8 1400228E */  lw         $v0, 0x14($s1)
/* 50CDBDC 8007DEAC 01005226 */  addiu      $s2, $s2, 0x1
/* 50CDBE0 8007DEB0 3000A0AF */  sw         $zero, 0x30($sp)
/* 50CDBE4 8007DEB4 3400A0AF */  sw         $zero, 0x34($sp)
/* 50CDBE8 8007DEB8 3800A0AF */  sw         $zero, 0x38($sp)
/* 50CDBEC 8007DEBC F7D8000C */  jal        func_800363DC
/* 50CDBF0 8007DEC0 2800A2AF */   sw        $v0, 0x28($sp)
/* 50CDBF4 8007DEC4 21200000 */  addu       $a0, $zero, $zero
/* 50CDBF8 8007DEC8 2000A38F */  lw         $v1, 0x20($sp)
/* 50CDBFC 8007DECC BC020524 */  addiu      $a1, $zero, 0x2BC
/* 50CDC00 8007DED0 21186200 */  addu       $v1, $v1, $v0
/* 50CDC04 8007DED4 F7D8000C */  jal        func_800363DC
/* 50CDC08 8007DED8 2000A3AF */   sw        $v1, 0x20($sp)
/* 50CDC0C 8007DEDC 21200000 */  addu       $a0, $zero, $zero
/* 50CDC10 8007DEE0 2400A38F */  lw         $v1, 0x24($sp)
/* 50CDC14 8007DEE4 DC050524 */  addiu      $a1, $zero, 0x5DC
/* 50CDC18 8007DEE8 21186200 */  addu       $v1, $v1, $v0
/* 50CDC1C 8007DEEC DBD8000C */  jal        func_8003636C
/* 50CDC20 8007DEF0 2400A3AF */   sw        $v1, 0x24($sp)
/* 50CDC24 8007DEF4 01000424 */  addiu      $a0, $zero, 0x1
/* 50CDC28 8007DEF8 37000524 */  addiu      $a1, $zero, 0x37
/* 50CDC2C 8007DEFC 2000A627 */  addiu      $a2, $sp, 0x20
/* 50CDC30 8007DF00 3000A727 */  addiu      $a3, $sp, 0x30
/* 50CDC34 8007DF04 2800A38F */  lw         $v1, 0x28($sp)
/* 50CDC38 8007DF08 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 50CDC3C 8007DF0C E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 50CDC40 8007DF10 21186200 */  addu       $v1, $v1, $v0
/* 50CDC44 8007DF14 09F80001 */  jalr       $t0
/* 50CDC48 8007DF18 2800A3AF */   sw        $v1, 0x28($sp)
/* 50CDC4C 8007DF1C 0A00422A */  slti       $v0, $s2, 0xA
/* 50CDC50 8007DF20 DBFF4014 */  bnez       $v0, .Llevel_20_8007DE90
/* 50CDC54 8007DF24 21202002 */   addu      $a0, $s1, $zero
/* 50CDC58 8007DF28 FFF70108 */  j          .Llevel_20_8007DFFC
/* 50CDC5C 8007DF2C 00000000 */   nop
.Llevel_20_8007DF30:
/* 50CDC60 8007DF30 0C00028E */  lw         $v0, 0xC($s0)
/* 50CDC64 8007DF34 1C00048E */  lw         $a0, 0x1C($s0)
/* 50CDC68 8007DF38 0400038E */  lw         $v1, 0x4($s0)
/* 50CDC6C 8007DF3C F8FF4224 */  addiu      $v0, $v0, -0x8
/* 50CDC70 8007DF40 0C0002AE */  sw         $v0, 0xC($s0)
/* 50CDC74 8007DF44 0C00828C */  lw         $v0, 0xC($a0)
/* 50CDC78 8007DF48 00000000 */  nop
/* 50CDC7C 8007DF4C 21104300 */  addu       $v0, $v0, $v1
/* 50CDC80 8007DF50 0C0082AC */  sw         $v0, 0xC($a0)
/* 50CDC84 8007DF54 1C00048E */  lw         $a0, 0x1C($s0)
/* 50CDC88 8007DF58 0800038E */  lw         $v1, 0x8($s0)
/* 50CDC8C 8007DF5C 1000828C */  lw         $v0, 0x10($a0)
/* 50CDC90 8007DF60 00000000 */  nop
/* 50CDC94 8007DF64 21104300 */  addu       $v0, $v0, $v1
/* 50CDC98 8007DF68 100082AC */  sw         $v0, 0x10($a0)
/* 50CDC9C 8007DF6C 1C00048E */  lw         $a0, 0x1C($s0)
/* 50CDCA0 8007DF70 0C00038E */  lw         $v1, 0xC($s0)
/* 50CDCA4 8007DF74 1400828C */  lw         $v0, 0x14($a0)
/* 50CDCA8 8007DF78 00000000 */  nop
/* 50CDCAC 8007DF7C 21104300 */  addu       $v0, $v0, $v1
/* 50CDCB0 8007DF80 140082AC */  sw         $v0, 0x14($a0)
/* 50CDCB4 8007DF84 1C00058E */  lw         $a1, 0x1C($s0)
/* 50CDCB8 8007DF88 2000A427 */  addiu      $a0, $sp, 0x20
/* 50CDCBC 8007DF8C 5E3C010C */  jal        func_8004F178
/* 50CDCC0 8007DF90 0C00A524 */   addiu     $a1, $a1, 0xC
/* 50CDCC4 8007DF94 2000A427 */  addiu      $a0, $sp, 0x20
/* 50CDCC8 8007DF98 2800A28F */  lw         $v0, 0x28($sp)
/* 50CDCCC 8007DF9C 00020524 */  addiu      $a1, $zero, 0x200
/* 50CDCD0 8007DFA0 00024224 */  addiu      $v0, $v0, 0x200
/* 50CDCD4 8007DFA4 D668000C */  jal        func_8001A358
/* 50CDCD8 8007DFA8 2800A2AF */   sw        $v0, 0x28($sp)
/* 50CDCDC 8007DFAC 21184000 */  addu       $v1, $v0, $zero
/* 50CDCE0 8007DFB0 14006010 */  beqz       $v1, .Llevel_20_8007E004
/* 50CDCE4 8007DFB4 2800A3AF */   sw        $v1, 0x28($sp)
/* 50CDCE8 8007DFB8 1C00028E */  lw         $v0, 0x1C($s0)
/* 50CDCEC 8007DFBC 00000000 */  nop
/* 50CDCF0 8007DFC0 140043AC */  sw         $v1, 0x14($v0)
/* 50CDCF4 8007DFC4 0C00028E */  lw         $v0, 0xC($s0)
/* 50CDCF8 8007DFC8 00000000 */  nop
/* 50CDCFC 8007DFCC 0D004104 */  bgez       $v0, .Llevel_20_8007E004
/* 50CDD00 8007DFD0 23100200 */   negu      $v0, $v0
/* 50CDD04 8007DFD4 040000AE */  sw         $zero, 0x4($s0)
/* 50CDD08 8007DFD8 080000AE */  sw         $zero, 0x8($s0)
/* 50CDD0C 8007DFDC 43100200 */  sra        $v0, $v0, 1
/* 50CDD10 8007DFE0 0C0002AE */  sw         $v0, 0xC($s0)
/* 50CDD14 8007DFE4 10004228 */  slti       $v0, $v0, 0x10
/* 50CDD18 8007DFE8 06004010 */  beqz       $v0, .Llevel_20_8007E004
/* 50CDD1C 8007DFEC 21202002 */   addu      $a0, $s1, $zero
/* 50CDD20 8007DFF0 1C00028E */  lw         $v0, 0x1C($s0)
/* 50CDD24 8007DFF4 00000000 */  nop
/* 50CDD28 8007DFF8 480040A0 */  sb         $zero, 0x48($v0)
.Llevel_20_8007DFFC:
/* 50CDD2C 8007DFFC C656010C */  jal        func_80055B18
/* 50CDD30 8007E000 00000000 */   nop
.Llevel_20_8007E004:
/* 50CDD34 8007E004 5C00BF8F */  lw         $ra, 0x5C($sp)
/* 50CDD38 8007E008 5800B28F */  lw         $s2, 0x58($sp)
/* 50CDD3C 8007E00C 5400B18F */  lw         $s1, 0x54($sp)
/* 50CDD40 8007E010 5000B08F */  lw         $s0, 0x50($sp)
/* 50CDD44 8007E014 6000BD27 */  addiu      $sp, $sp, 0x60
/* 50CDD48 8007E018 0800E003 */  jr         $ra
/* 50CDD4C 8007E01C 00000000 */   nop
.size MobyUpdate_509_level_20, . - MobyUpdate_509_level_20
