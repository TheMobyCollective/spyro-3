.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_38_8007E73C
/* 7C3D46C 8007E73C 60FFBD27 */  addiu      $sp, $sp, -0xA0
/* 7C3D470 8007E740 8000B2AF */  sw         $s2, 0x80($sp)
/* 7C3D474 8007E744 21908000 */  addu       $s2, $a0, $zero
/* 7C3D478 8007E748 9800BFAF */  sw         $ra, 0x98($sp)
/* 7C3D47C 8007E74C 9400B7AF */  sw         $s7, 0x94($sp)
/* 7C3D480 8007E750 9000B6AF */  sw         $s6, 0x90($sp)
/* 7C3D484 8007E754 8C00B5AF */  sw         $s5, 0x8C($sp)
/* 7C3D488 8007E758 8800B4AF */  sw         $s4, 0x88($sp)
/* 7C3D48C 8007E75C 8400B3AF */  sw         $s3, 0x84($sp)
/* 7C3D490 8007E760 7C00B1AF */  sw         $s1, 0x7C($sp)
/* 7C3D494 8007E764 7800B0AF */  sw         $s0, 0x78($sp)
/* 7C3D498 8007E768 0C00468E */  lw         $a2, 0xC($s2)
/* 7C3D49C 8007E76C 0000548E */  lw         $s4, 0x0($s2)
/* 7C3D4A0 8007E770 0004C228 */  slti       $v0, $a2, 0x400
/* 7C3D4A4 8007E774 76014014 */  bnez       $v0, .Llevel_38_8007ED50
/* 7C3D4A8 8007E778 00000000 */   nop
/* 7C3D4AC 8007E77C 1000458E */  lw         $a1, 0x10($s2)
/* 7C3D4B0 8007E780 00000000 */  nop
/* 7C3D4B4 8007E784 0004A228 */  slti       $v0, $a1, 0x400
/* 7C3D4B8 8007E788 71014014 */  bnez       $v0, .Llevel_38_8007ED50
/* 7C3D4BC 8007E78C 00000000 */   nop
/* 7C3D4C0 8007E790 1400448E */  lw         $a0, 0x14($s2)
/* 7C3D4C4 8007E794 00000000 */  nop
/* 7C3D4C8 8007E798 00048228 */  slti       $v0, $a0, 0x400
/* 7C3D4CC 8007E79C 6C014014 */  bnez       $v0, .Llevel_38_8007ED50
/* 7C3D4D0 8007E7A0 0300033C */   lui       $v1, (0x3E800 >> 16)
/* 7C3D4D4 8007E7A4 00E86334 */  ori        $v1, $v1, (0x3E800 & 0xFFFF)
/* 7C3D4D8 8007E7A8 2A106600 */  slt        $v0, $v1, $a2
/* 7C3D4DC 8007E7AC 68014014 */  bnez       $v0, .Llevel_38_8007ED50
/* 7C3D4E0 8007E7B0 2A106500 */   slt       $v0, $v1, $a1
/* 7C3D4E4 8007E7B4 66014014 */  bnez       $v0, .Llevel_38_8007ED50
/* 7C3D4E8 8007E7B8 2A106400 */   slt       $v0, $v1, $a0
/* 7C3D4EC 8007E7BC 64014014 */  bnez       $v0, .Llevel_38_8007ED50
/* 7C3D4F0 8007E7C0 1800A427 */   addiu     $a0, $sp, 0x18
/* 7C3D4F4 8007E7C4 0C005026 */  addiu      $s0, $s2, 0xC
/* 7C3D4F8 8007E7C8 5E3C010C */  jal        func_8004F178
/* 7C3D4FC 8007E7CC 21280002 */   addu      $a1, $s0, $zero
/* 7C3D500 8007E7D0 0C00428E */  lw         $v0, 0xC($s2)
/* 7C3D504 8007E7D4 0000838E */  lw         $v1, 0x0($s4)
/* 7C3D508 8007E7D8 00000000 */  nop
/* 7C3D50C 8007E7DC 21104300 */  addu       $v0, $v0, $v1
/* 7C3D510 8007E7E0 0C0042AE */  sw         $v0, 0xC($s2)
/* 7C3D514 8007E7E4 1000428E */  lw         $v0, 0x10($s2)
/* 7C3D518 8007E7E8 0400838E */  lw         $v1, 0x4($s4)
/* 7C3D51C 8007E7EC 00000000 */  nop
/* 7C3D520 8007E7F0 21104300 */  addu       $v0, $v0, $v1
/* 7C3D524 8007E7F4 100042AE */  sw         $v0, 0x10($s2)
/* 7C3D528 8007E7F8 0800848E */  lw         $a0, 0x8($s4)
/* 7C3D52C 8007E7FC 45004392 */  lbu        $v1, 0x45($s2)
/* 7C3D530 8007E800 44004292 */  lbu        $v0, 0x44($s2)
/* 7C3D534 8007E804 02006324 */  addiu      $v1, $v1, 0x2
/* 7C3D538 8007E808 450043A2 */  sb         $v1, 0x45($s2)
/* 7C3D53C 8007E80C 1400438E */  lw         $v1, 0x14($s2)
/* 7C3D540 8007E810 05004224 */  addiu      $v0, $v0, 0x5
/* 7C3D544 8007E814 440042A2 */  sb         $v0, 0x44($s2)
/* 7C3D548 8007E818 46004292 */  lbu        $v0, 0x46($s2)
/* 7C3D54C 8007E81C 21186400 */  addu       $v1, $v1, $a0
/* 7C3D550 8007E820 140043AE */  sw         $v1, 0x14($s2)
/* 7C3D554 8007E824 48004392 */  lbu        $v1, 0x48($s2)
/* 7C3D558 8007E828 03004224 */  addiu      $v0, $v0, 0x3
/* 7C3D55C 8007E82C 460042A2 */  sb         $v0, 0x46($s2)
/* 7C3D560 8007E830 01000224 */  addiu      $v0, $zero, 0x1
/* 7C3D564 8007E834 2D006210 */  beq        $v1, $v0, .Llevel_38_8007E8EC
/* 7C3D568 8007E838 02006228 */   slti      $v0, $v1, 0x2
/* 7C3D56C 8007E83C 05004010 */  beqz       $v0, .Llevel_38_8007E854
/* 7C3D570 8007E840 00000000 */   nop
/* 7C3D574 8007E844 0A006010 */  beqz       $v1, .Llevel_38_8007E870
/* 7C3D578 8007E848 21200002 */   addu      $a0, $s0, $zero
/* 7C3D57C 8007E84C 56FB0108 */  j          .Llevel_38_8007ED58
/* 7C3D580 8007E850 00000000 */   nop
.Llevel_38_8007E854:
/* 7C3D584 8007E854 02000224 */  addiu      $v0, $zero, 0x2
/* 7C3D588 8007E858 CA006210 */  beq        $v1, $v0, .Llevel_38_8007EB84
/* 7C3D58C 8007E85C 03000224 */   addiu     $v0, $zero, 0x3
/* 7C3D590 8007E860 DC006210 */  beq        $v1, $v0, .Llevel_38_8007EBD4
/* 7C3D594 8007E864 00081724 */   addiu     $s7, $zero, 0x800
/* 7C3D598 8007E868 56FB0108 */  j          .Llevel_38_8007ED58
/* 7C3D59C 8007E86C 00000000 */   nop
.Llevel_38_8007E870:
/* 7C3D5A0 8007E870 80010524 */  addiu      $a1, $zero, 0x180
/* 7C3D5A4 8007E874 01000624 */  addiu      $a2, $zero, 0x1
/* 7C3D5A8 8007E878 21380000 */  addu       $a3, $zero, $zero
/* 7C3D5AC 8007E87C 1000A0AF */  sw         $zero, 0x10($sp)
/* 7C3D5B0 8007E880 8C6E000C */  jal        func_8001BA30
/* 7C3D5B4 8007E884 1400B2AF */   sw        $s2, 0x14($sp)
/* 7C3D5B8 8007E888 06004014 */  bnez       $v0, .Llevel_38_8007E8A4
/* 7C3D5BC 8007E88C 21200002 */   addu      $a0, $s0, $zero
/* 7C3D5C0 8007E890 1800A427 */  addiu      $a0, $sp, 0x18
/* 7C3D5C4 8007E894 DA60000C */  jal        func_80018368
/* 7C3D5C8 8007E898 21280002 */   addu      $a1, $s0, $zero
/* 7C3D5CC 8007E89C 0B004010 */  beqz       $v0, .Llevel_38_8007E8CC
/* 7C3D5D0 8007E8A0 21200002 */   addu      $a0, $s0, $zero
.Llevel_38_8007E8A4:
/* 7C3D5D4 8007E8A4 1800A527 */  addiu      $a1, $sp, 0x18
/* 7C3D5D8 8007E8A8 000080AE */  sw         $zero, 0x0($s4)
/* 7C3D5DC 8007E8AC 040080AE */  sw         $zero, 0x4($s4)
/* 7C3D5E0 8007E8B0 5E3C010C */  jal        func_8004F178
/* 7C3D5E4 8007E8B4 080080AE */   sw        $zero, 0x8($s4)
/* 7C3D5E8 8007E8B8 01000224 */  addiu      $v0, $zero, 0x1
/* 7C3D5EC 8007E8BC 480042A2 */  sb         $v0, 0x48($s2)
/* 7C3D5F0 8007E8C0 06000224 */  addiu      $v0, $zero, 0x6
/* 7C3D5F4 8007E8C4 56FB0108 */  j          .Llevel_38_8007ED58
/* 7C3D5F8 8007E8C8 0C0082AE */   sw        $v0, 0xC($s4)
.Llevel_38_8007E8CC:
/* 7C3D5FC 8007E8CC 0C008426 */  addiu      $a0, $s4, 0xC
/* 7C3D600 8007E8D0 69D6000C */  jal        func_800359A4
/* 7C3D604 8007E8D4 04000524 */   addiu     $a1, $zero, 0x4
/* 7C3D608 8007E8D8 1F014010 */  beqz       $v0, .Llevel_38_8007ED58
/* 7C3D60C 8007E8DC 01000224 */   addiu     $v0, $zero, 0x1
/* 7C3D610 8007E8E0 480042A2 */  sb         $v0, 0x48($s2)
/* 7C3D614 8007E8E4 06000224 */  addiu      $v0, $zero, 0x6
/* 7C3D618 8007E8E8 0C0082AE */  sw         $v0, 0xC($s4)
.Llevel_38_8007E8EC:
/* 7C3D61C 8007E8EC 9171010C */  jal        rand
/* 7C3D620 8007E8F0 21980000 */   addu      $s3, $zero, $zero
/* 7C3D624 8007E8F4 FF005530 */  andi       $s5, $v0, 0xFF
/* 7C3D628 8007E8F8 0C005426 */  addiu      $s4, $s2, 0xC
/* 7C3D62C 8007E8FC 2800B127 */  addiu      $s1, $sp, 0x28
.Llevel_38_8007E900:
/* 7C3D630 8007E900 9171010C */  jal        rand
/* 7C3D634 8007E904 40801500 */   sll       $s0, $s5, 1
/* 7C3D638 8007E908 21204000 */  addu       $a0, $v0, $zero
/* 7C3D63C 8007E90C 0680013C */  lui        $at, %hi(D_80065920)
/* 7C3D640 8007E910 21083000 */  addu       $at, $at, $s0
/* 7C3D644 8007E914 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 7C3D648 8007E918 21288000 */  addu       $a1, $a0, $zero
/* 7C3D64C 8007E91C 40100300 */  sll        $v0, $v1, 1
/* 7C3D650 8007E920 21104300 */  addu       $v0, $v0, $v1
/* 7C3D654 8007E924 02008104 */  bgez       $a0, .Llevel_38_8007E930
/* 7C3D658 8007E928 00190200 */   sll       $v1, $v0, 4
/* 7C3D65C 8007E92C 0F008524 */  addiu      $a1, $a0, 0xF
.Llevel_38_8007E930:
/* 7C3D660 8007E930 03110500 */  sra        $v0, $a1, 4
/* 7C3D664 8007E934 00110200 */  sll        $v0, $v0, 4
/* 7C3D668 8007E938 23108200 */  subu       $v0, $a0, $v0
/* 7C3D66C 8007E93C 21106200 */  addu       $v0, $v1, $v0
/* 7C3D670 8007E940 03130200 */  sra        $v0, $v0, 12
/* 7C3D674 8007E944 9171010C */  jal        rand
/* 7C3D678 8007E948 2800A2AF */   sw        $v0, 0x28($sp)
/* 7C3D67C 8007E94C 21404000 */  addu       $t0, $v0, $zero
/* 7C3D680 8007E950 0680013C */  lui        $at, %hi(D_800658A0)
/* 7C3D684 8007E954 21083000 */  addu       $at, $at, $s0
/* 7C3D688 8007E958 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 7C3D68C 8007E95C 21480001 */  addu       $t1, $t0, $zero
/* 7C3D690 8007E960 40100300 */  sll        $v0, $v1, 1
/* 7C3D694 8007E964 21104300 */  addu       $v0, $v0, $v1
/* 7C3D698 8007E968 02000105 */  bgez       $t0, .Llevel_38_8007E974
/* 7C3D69C 8007E96C 00190200 */   sll       $v1, $v0, 4
/* 7C3D6A0 8007E970 0F000925 */  addiu      $t1, $t0, 0xF
.Llevel_38_8007E974:
/* 7C3D6A4 8007E974 01000424 */  addiu      $a0, $zero, 0x1
/* 7C3D6A8 8007E978 14000524 */  addiu      $a1, $zero, 0x14
/* 7C3D6AC 8007E97C 21308002 */  addu       $a2, $s4, $zero
/* 7C3D6B0 8007E980 21382002 */  addu       $a3, $s1, $zero
/* 7C3D6B4 8007E984 03110900 */  sra        $v0, $t1, 4
/* 7C3D6B8 8007E988 00110200 */  sll        $v0, $v0, 4
/* 7C3D6BC 8007E98C 23100201 */  subu       $v0, $t0, $v0
/* 7C3D6C0 8007E990 21106200 */  addu       $v0, $v1, $v0
/* 7C3D6C4 8007E994 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 7C3D6C8 8007E998 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 7C3D6CC 8007E99C 03130200 */  sra        $v0, $v0, 12
/* 7C3D6D0 8007E9A0 2C00A2AF */  sw         $v0, 0x2C($sp)
/* 7C3D6D4 8007E9A4 09F86000 */  jalr       $v1
/* 7C3D6D8 8007E9A8 3000A0AF */   sw        $zero, 0x30($sp)
/* 7C3D6DC 8007E9AC 01006232 */  andi       $v0, $s3, 0x1
/* 7C3D6E0 8007E9B0 0B004010 */  beqz       $v0, .Llevel_38_8007E9E0
/* 7C3D6E4 8007E9B4 21202002 */   addu      $a0, $s1, $zero
/* 7C3D6E8 8007E9B8 443C010C */  jal        func_8004F110
/* 7C3D6EC 8007E9BC 01000524 */   addiu     $a1, $zero, 0x1
/* 7C3D6F0 8007E9C0 01000424 */  addiu      $a0, $zero, 0x1
/* 7C3D6F4 8007E9C4 14000524 */  addiu      $a1, $zero, 0x14
/* 7C3D6F8 8007E9C8 21308002 */  addu       $a2, $s4, $zero
/* 7C3D6FC 8007E9CC 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7C3D700 8007E9D0 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7C3D704 8007E9D4 00000000 */  nop
/* 7C3D708 8007E9D8 09F84000 */  jalr       $v0
/* 7C3D70C 8007E9DC 21382002 */   addu      $a3, $s1, $zero
.Llevel_38_8007E9E0:
/* 7C3D710 8007E9E0 0A00B526 */  addiu      $s5, $s5, 0xA
/* 7C3D714 8007E9E4 06000424 */  addiu      $a0, $zero, 0x6
/* 7C3D718 8007E9E8 46000524 */  addiu      $a1, $zero, 0x46
/* 7C3D71C 8007E9EC 21308002 */  addu       $a2, $s4, $zero
/* 7C3D720 8007E9F0 10000724 */  addiu      $a3, $zero, 0x10
/* 7C3D724 8007E9F4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7C3D728 8007E9F8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7C3D72C 8007E9FC 00000000 */  nop
/* 7C3D730 8007EA00 09F84000 */  jalr       $v0
/* 7C3D734 8007EA04 01007326 */   addiu     $s3, $s3, 0x1
/* 7C3D738 8007EA08 1800622A */  slti       $v0, $s3, 0x18
/* 7C3D73C 8007EA0C BCFF4014 */  bnez       $v0, .Llevel_38_8007E900
/* 7C3D740 8007EA10 00000000 */   nop
/* 7C3D744 8007EA14 0780023C */  lui        $v0, %hi(D_8006C578)
/* 7C3D748 8007EA18 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 7C3D74C 8007EA1C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 7C3D750 8007EA20 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 7C3D754 8007EA24 00000000 */  nop
/* 7C3D758 8007EA28 23104300 */  subu       $v0, $v0, $v1
/* 7C3D75C 8007EA2C 15004228 */  slti       $v0, $v0, 0x15
/* 7C3D760 8007EA30 10004014 */  bnez       $v0, .Llevel_38_8007EA74
/* 7C3D764 8007EA34 00000000 */   nop
/* 7C3D768 8007EA38 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 7C3D76C 8007EA3C E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 7C3D770 8007EA40 00000000 */  nop
/* 7C3D774 8007EA44 31754228 */  slti       $v0, $v0, 0x7531
/* 7C3D778 8007EA48 0A004014 */  bnez       $v0, .Llevel_38_8007EA74
/* 7C3D77C 8007EA4C 46010424 */   addiu     $a0, $zero, 0x146
/* 7C3D780 8007EA50 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7C3D784 8007EA54 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7C3D788 8007EA58 00000000 */  nop
/* 7C3D78C 8007EA5C 09F84000 */  jalr       $v0
/* 7C3D790 8007EA60 21284002 */   addu      $a1, $s2, $zero
/* 7C3D794 8007EA64 21184000 */  addu       $v1, $v0, $zero
/* 7C3D798 8007EA68 02006010 */  beqz       $v1, .Llevel_38_8007EA74
/* 7C3D79C 8007EA6C 07000224 */   addiu     $v0, $zero, 0x7
/* 7C3D7A0 8007EA70 470062A0 */  sb         $v0, 0x47($v1)
.Llevel_38_8007EA74:
/* 7C3D7A4 8007EA74 0780023C */  lui        $v0, %hi(D_8006C578)
/* 7C3D7A8 8007EA78 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 7C3D7AC 8007EA7C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 7C3D7B0 8007EA80 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 7C3D7B4 8007EA84 00000000 */  nop
/* 7C3D7B8 8007EA88 23104300 */  subu       $v0, $v0, $v1
/* 7C3D7BC 8007EA8C 15004228 */  slti       $v0, $v0, 0x15
/* 7C3D7C0 8007EA90 35004014 */  bnez       $v0, .Llevel_38_8007EB68
/* 7C3D7C4 8007EA94 21980000 */   addu      $s3, $zero, $zero
/* 7C3D7C8 8007EA98 0780153C */  lui        $s5, %hi(D_8006E020)
/* 7C3D7CC 8007EA9C 20E0B526 */  addiu      $s5, $s5, %lo(D_8006E020)
/* 7C3D7D0 8007EAA0 21A00000 */  addu       $s4, $zero, $zero
.Llevel_38_8007EAA4:
/* 7C3D7D4 8007EAA4 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 7C3D7D8 8007EAA8 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 7C3D7DC 8007EAAC 00000000 */  nop
/* 7C3D7E0 8007EAB0 31754228 */  slti       $v0, $v0, 0x7531
/* 7C3D7E4 8007EAB4 2C004014 */  bnez       $v0, .Llevel_38_8007EB68
/* 7C3D7E8 8007EAB8 1D020424 */   addiu     $a0, $zero, 0x21D
/* 7C3D7EC 8007EABC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7C3D7F0 8007EAC0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7C3D7F4 8007EAC4 00000000 */  nop
/* 7C3D7F8 8007EAC8 09F84000 */  jalr       $v0
/* 7C3D7FC 8007EACC 21284002 */   addu      $a1, $s2, $zero
/* 7C3D800 8007EAD0 21884000 */  addu       $s1, $v0, $zero
/* 7C3D804 8007EAD4 17002012 */  beqz       $s1, .Llevel_38_8007EB34
/* 7C3D808 8007EAD8 21300000 */   addu      $a2, $zero, $zero
/* 7C3D80C 8007EADC 0C00438E */  lw         $v1, 0xC($s2)
/* 7C3D810 8007EAE0 0000A48E */  lw         $a0, 0x0($s5)
/* 7C3D814 8007EAE4 1000428E */  lw         $v0, 0x10($s2)
/* 7C3D818 8007EAE8 0400A58E */  lw         $a1, 0x4($s5)
/* 7C3D81C 8007EAEC 23206400 */  subu       $a0, $v1, $a0
/* 7C3D820 8007EAF0 203A010C */  jal        func_8004E880
/* 7C3D824 8007EAF4 23284500 */   subu      $a1, $v0, $a1
/* 7C3D828 8007EAF8 9171010C */  jal        rand
/* 7C3D82C 8007EAFC 21804000 */   addu      $s0, $v0, $zero
/* 7C3D830 8007EB00 40001026 */  addiu      $s0, $s0, 0x40
/* 7C3D834 8007EB04 1F004230 */  andi       $v0, $v0, 0x1F
/* 7C3D838 8007EB08 21800202 */  addu       $s0, $s0, $v0
/* 7C3D83C 8007EB0C 9171010C */  jal        rand
/* 7C3D840 8007EB10 460030A2 */   sb        $s0, 0x46($s1)
/* 7C3D844 8007EB14 1E004230 */  andi       $v0, $v0, 0x1E
/* 7C3D848 8007EB18 21108202 */  addu       $v0, $s4, $v0
/* 7C3D84C 8007EB1C F1FF4224 */  addiu      $v0, $v0, -0xF
/* 7C3D850 8007EB20 450022A2 */  sb         $v0, 0x45($s1)
/* 7C3D854 8007EB24 08000224 */  addiu      $v0, $zero, 0x8
/* 7C3D858 8007EB28 470022A2 */  sb         $v0, 0x47($s1)
/* 7C3D85C 8007EB2C 2A000224 */  addiu      $v0, $zero, 0x2A
/* 7C3D860 8007EB30 4C0022A2 */  sb         $v0, 0x4C($s1)
.Llevel_38_8007EB34:
/* 7C3D864 8007EB34 01007326 */  addiu      $s3, $s3, 0x1
/* 7C3D868 8007EB38 1900622A */  slti       $v0, $s3, 0x19
/* 7C3D86C 8007EB3C 0A004010 */  beqz       $v0, .Llevel_38_8007EB68
/* 7C3D870 8007EB40 33009426 */   addiu     $s4, $s4, 0x33
/* 7C3D874 8007EB44 0780023C */  lui        $v0, %hi(D_8006C578)
/* 7C3D878 8007EB48 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 7C3D87C 8007EB4C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 7C3D880 8007EB50 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 7C3D884 8007EB54 00000000 */  nop
/* 7C3D888 8007EB58 23104300 */  subu       $v0, $v0, $v1
/* 7C3D88C 8007EB5C 15004228 */  slti       $v0, $v0, 0x15
/* 7C3D890 8007EB60 D0FF4010 */  beqz       $v0, .Llevel_38_8007EAA4
/* 7C3D894 8007EB64 00000000 */   nop
.Llevel_38_8007EB68:
/* 7C3D898 8007EB68 21204002 */  addu       $a0, $s2, $zero
/* 7C3D89C 8007EB6C 21280000 */  addu       $a1, $zero, $zero
/* 7C3D8A0 8007EB70 AFEE000C */  jal        func_8003BABC
/* 7C3D8A4 8007EB74 21300000 */   addu      $a2, $zero, $zero
/* 7C3D8A8 8007EB78 02000224 */  addiu      $v0, $zero, 0x2
/* 7C3D8AC 8007EB7C 56FB0108 */  j          .Llevel_38_8007ED58
/* 7C3D8B0 8007EB80 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_38_8007EB84:
/* 7C3D8B4 8007EB84 0C008426 */  addiu      $a0, $s4, 0xC
/* 7C3D8B8 8007EB88 69D6000C */  jal        func_800359A4
/* 7C3D8BC 8007EB8C 04000524 */   addiu     $a1, $zero, 0x4
/* 7C3D8C0 8007EB90 71004010 */  beqz       $v0, .Llevel_38_8007ED58
/* 7C3D8C4 8007EB94 21200002 */   addu      $a0, $s0, $zero
/* 7C3D8C8 8007EB98 00080524 */  addiu      $a1, $zero, 0x800
/* 7C3D8CC 8007EB9C 01000624 */  addiu      $a2, $zero, 0x1
/* 7C3D8D0 8007EBA0 21380000 */  addu       $a3, $zero, $zero
/* 7C3D8D4 8007EBA4 1100023C */  lui        $v0, (0x110000 >> 16)
/* 7C3D8D8 8007EBA8 1000A2AF */  sw         $v0, 0x10($sp)
/* 7C3D8DC 8007EBAC 8C6E000C */  jal        func_8001BA30
/* 7C3D8E0 8007EBB0 1400B2AF */   sw        $s2, 0x14($sp)
/* 7C3D8E4 8007EBB4 03000224 */  addiu      $v0, $zero, 0x3
/* 7C3D8E8 8007EBB8 480042A2 */  sb         $v0, 0x48($s2)
/* 7C3D8EC 8007EBBC 14000224 */  addiu      $v0, $zero, 0x14
/* 7C3D8F0 8007EBC0 0C0082AE */  sw         $v0, 0xC($s4)
/* 7C3D8F4 8007EBC4 410040A2 */  sb         $zero, 0x41($s2)
/* 7C3D8F8 8007EBC8 4C0040A2 */  sb         $zero, 0x4C($s2)
/* 7C3D8FC 8007EBCC 4D0040A2 */  sb         $zero, 0x4D($s2)
/* 7C3D900 8007EBD0 00081724 */  addiu      $s7, $zero, 0x800
.Llevel_38_8007EBD4:
/* 7C3D904 8007EBD4 21980000 */  addu       $s3, $zero, $zero
/* 7C3D908 8007EBD8 5800B527 */  addiu      $s5, $sp, 0x58
/* 7C3D90C 8007EBDC 70001624 */  addiu      $s6, $zero, 0x70
/* 7C3D910 8007EBE0 3800B127 */  addiu      $s1, $sp, 0x38
/* 7C3D914 8007EBE4 4800B027 */  addiu      $s0, $sp, 0x48
.Llevel_38_8007EBE8:
/* 7C3D918 8007EBE8 9171010C */  jal        rand
/* 7C3D91C 8007EBEC 7000A0A3 */   sb        $zero, 0x70($sp)
/* 7C3D920 8007EBF0 9171010C */  jal        rand
/* 7C3D924 8007EBF4 7100A2A3 */   sb        $v0, 0x71($sp)
/* 7C3D928 8007EBF8 7000A427 */  addiu      $a0, $sp, 0x70
/* 7C3D92C 8007EBFC 2128A002 */  addu       $a1, $s5, $zero
/* 7C3D930 8007EC00 21300000 */  addu       $a2, $zero, $zero
/* 7C3D934 8007EC04 A43A010C */  jal        func_8004EA90
/* 7C3D938 8007EC08 7200A2A3 */   sb        $v0, 0x72($sp)
/* 7C3D93C 8007EC0C 9171010C */  jal        rand
/* 7C3D940 8007EC10 00000000 */   nop
/* 7C3D944 8007EC14 2120A002 */  addu       $a0, $s5, $zero
/* 7C3D948 8007EC18 21282002 */  addu       $a1, $s1, $zero
/* 7C3D94C 8007EC1C 21302002 */  addu       $a2, $s1, $zero
/* 7C3D950 8007EC20 1F004230 */  andi       $v0, $v0, 0x1F
/* 7C3D954 8007EC24 21105600 */  addu       $v0, $v0, $s6
/* 7C3D958 8007EC28 3800A2AF */  sw         $v0, 0x38($sp)
/* 7C3D95C 8007EC2C 3C00A0AF */  sw         $zero, 0x3C($sp)
/* 7C3D960 8007EC30 5B3B010C */  jal        func_8004ED6C
/* 7C3D964 8007EC34 4000A0AF */   sw        $zero, 0x40($sp)
/* 7C3D968 8007EC38 21200002 */  addu       $a0, $s0, $zero
/* 7C3D96C 8007EC3C 5E3C010C */  jal        func_8004F178
/* 7C3D970 8007EC40 21282002 */   addu      $a1, $s1, $zero
/* 7C3D974 8007EC44 21200002 */  addu       $a0, $s0, $zero
/* 7C3D978 8007EC48 3A3C010C */  jal        func_8004F0E8
/* 7C3D97C 8007EC4C 02000524 */   addiu     $a1, $zero, 0x2
/* 7C3D980 8007EC50 21200002 */  addu       $a0, $s0, $zero
/* 7C3D984 8007EC54 21280002 */  addu       $a1, $s0, $zero
/* 7C3D988 8007EC58 653C010C */  jal        func_8004F194
/* 7C3D98C 8007EC5C 0C004626 */   addiu     $a2, $s2, 0xC
/* 7C3D990 8007EC60 0104E22A */  slti       $v0, $s7, 0x401
/* 7C3D994 8007EC64 02004014 */  bnez       $v0, .Llevel_38_8007EC70
/* 7C3D998 8007EC68 37000524 */   addiu     $a1, $zero, 0x37
/* 7C3D99C 8007EC6C 14000524 */  addiu      $a1, $zero, 0x14
.Llevel_38_8007EC70:
/* 7C3D9A0 8007EC70 01000424 */  addiu      $a0, $zero, 0x1
/* 7C3D9A4 8007EC74 21300002 */  addu       $a2, $s0, $zero
/* 7C3D9A8 8007EC78 21382002 */  addu       $a3, $s1, $zero
/* 7C3D9AC 8007EC7C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7C3D9B0 8007EC80 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7C3D9B4 8007EC84 00000000 */  nop
/* 7C3D9B8 8007EC88 09F84000 */  jalr       $v0
/* 7C3D9BC 8007EC8C 01007326 */   addiu     $s3, $s3, 0x1
/* 7C3D9C0 8007EC90 1800622A */  slti       $v0, $s3, 0x18
/* 7C3D9C4 8007EC94 D4FF4014 */  bnez       $v0, .Llevel_38_8007EBE8
/* 7C3D9C8 8007EC98 06000424 */   addiu     $a0, $zero, 0x6
/* 7C3D9CC 8007EC9C 46000524 */  addiu      $a1, $zero, 0x46
/* 7C3D9D0 8007ECA0 0C004626 */  addiu      $a2, $s2, 0xC
/* 7C3D9D4 8007ECA4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7C3D9D8 8007ECA8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7C3D9DC 8007ECAC 00000000 */  nop
/* 7C3D9E0 8007ECB0 09F84000 */  jalr       $v0
/* 7C3D9E4 8007ECB4 10000724 */   addiu     $a3, $zero, 0x10
/* 7C3D9E8 8007ECB8 0780023C */  lui        $v0, %hi(D_8006C640)
/* 7C3D9EC 8007ECBC 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 7C3D9F0 8007ECC0 00000000 */  nop
/* 7C3D9F4 8007ECC4 01004230 */  andi       $v0, $v0, 0x1
/* 7C3D9F8 8007ECC8 1D004014 */  bnez       $v0, .Llevel_38_8007ED40
/* 7C3D9FC 8007ECCC 0C008426 */   addiu     $a0, $s4, 0xC
/* 7C3DA00 8007ECD0 0780023C */  lui        $v0, %hi(D_8006C578)
/* 7C3DA04 8007ECD4 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 7C3DA08 8007ECD8 0780033C */  lui        $v1, %hi(D_8006C574)
/* 7C3DA0C 8007ECDC 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 7C3DA10 8007ECE0 00000000 */  nop
/* 7C3DA14 8007ECE4 23104300 */  subu       $v0, $v0, $v1
/* 7C3DA18 8007ECE8 15004228 */  slti       $v0, $v0, 0x15
/* 7C3DA1C 8007ECEC 14004014 */  bnez       $v0, .Llevel_38_8007ED40
/* 7C3DA20 8007ECF0 00000000 */   nop
/* 7C3DA24 8007ECF4 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 7C3DA28 8007ECF8 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 7C3DA2C 8007ECFC 00000000 */  nop
/* 7C3DA30 8007ED00 31754228 */  slti       $v0, $v0, 0x7531
/* 7C3DA34 8007ED04 0E004014 */  bnez       $v0, .Llevel_38_8007ED40
/* 7C3DA38 8007ED08 00000000 */   nop
/* 7C3DA3C 8007ED0C E2010424 */  addiu      $a0, $zero, 0x1E2
/* 7C3DA40 8007ED10 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7C3DA44 8007ED14 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7C3DA48 8007ED18 00000000 */  nop
/* 7C3DA4C 8007ED1C 09F84000 */  jalr       $v0
/* 7C3DA50 8007ED20 21284002 */   addu      $a1, $s2, $zero
/* 7C3DA54 8007ED24 21184000 */  addu       $v1, $v0, $zero
/* 7C3DA58 8007ED28 04006010 */  beqz       $v1, .Llevel_38_8007ED3C
/* 7C3DA5C 8007ED2C 2A000224 */   addiu     $v0, $zero, 0x2A
/* 7C3DA60 8007ED30 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 7C3DA64 8007ED34 0A000224 */  addiu      $v0, $zero, 0xA
/* 7C3DA68 8007ED38 470062A0 */  sb         $v0, 0x47($v1)
.Llevel_38_8007ED3C:
/* 7C3DA6C 8007ED3C 0C008426 */  addiu      $a0, $s4, 0xC
.Llevel_38_8007ED40:
/* 7C3DA70 8007ED40 69D6000C */  jal        func_800359A4
/* 7C3DA74 8007ED44 04000524 */   addiu     $a1, $zero, 0x4
/* 7C3DA78 8007ED48 03004010 */  beqz       $v0, .Llevel_38_8007ED58
/* 7C3DA7C 8007ED4C 00000000 */   nop
.Llevel_38_8007ED50:
/* 7C3DA80 8007ED50 C656010C */  jal        func_80055B18
/* 7C3DA84 8007ED54 21204002 */   addu      $a0, $s2, $zero
.Llevel_38_8007ED58:
/* 7C3DA88 8007ED58 9800BF8F */  lw         $ra, 0x98($sp)
/* 7C3DA8C 8007ED5C 9400B78F */  lw         $s7, 0x94($sp)
/* 7C3DA90 8007ED60 9000B68F */  lw         $s6, 0x90($sp)
/* 7C3DA94 8007ED64 8C00B58F */  lw         $s5, 0x8C($sp)
/* 7C3DA98 8007ED68 8800B48F */  lw         $s4, 0x88($sp)
/* 7C3DA9C 8007ED6C 8400B38F */  lw         $s3, 0x84($sp)
/* 7C3DAA0 8007ED70 8000B28F */  lw         $s2, 0x80($sp)
/* 7C3DAA4 8007ED74 7C00B18F */  lw         $s1, 0x7C($sp)
/* 7C3DAA8 8007ED78 7800B08F */  lw         $s0, 0x78($sp)
/* 7C3DAAC 8007ED7C A000BD27 */  addiu      $sp, $sp, 0xA0
/* 7C3DAB0 8007ED80 0800E003 */  jr         $ra
/* 7C3DAB4 8007ED84 00000000 */   nop
.size func_level_38_8007E73C, . - func_level_38_8007E73C
