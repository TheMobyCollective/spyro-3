.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_38_80080854
/* 7C3F584 80080854 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 7C3F588 80080858 5800B2AF */  sw         $s2, 0x58($sp)
/* 7C3F58C 8008085C 21908000 */  addu       $s2, $a0, $zero
/* 7C3F590 80080860 6C00BFAF */  sw         $ra, 0x6C($sp)
/* 7C3F594 80080864 6800B6AF */  sw         $s6, 0x68($sp)
/* 7C3F598 80080868 6400B5AF */  sw         $s5, 0x64($sp)
/* 7C3F59C 8008086C 6000B4AF */  sw         $s4, 0x60($sp)
/* 7C3F5A0 80080870 5C00B3AF */  sw         $s3, 0x5C($sp)
/* 7C3F5A4 80080874 5400B1AF */  sw         $s1, 0x54($sp)
/* 7C3F5A8 80080878 5000B0AF */  sw         $s0, 0x50($sp)
/* 7C3F5AC 8008087C 0000558E */  lw         $s5, 0x0($s2)
/* 7C3F5B0 80080880 00000000 */  nop
/* 7C3F5B4 80080884 0C00A38E */  lw         $v1, 0xC($s5)
/* 7C3F5B8 80080888 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 7C3F5BC 8008088C 0B006210 */  beq        $v1, $v0, .Llevel_38_800808BC
/* 7C3F5C0 80080890 00000000 */   nop
/* 7C3F5C4 80080894 1800428E */  lw         $v0, 0x18($s2)
/* 7C3F5C8 80080898 00000000 */  nop
/* 7C3F5CC 8008089C 07004010 */  beqz       $v0, .Llevel_38_800808BC
/* 7C3F5D0 800808A0 00000000 */   nop
/* 7C3F5D4 800808A4 43004492 */  lbu        $a0, 0x43($s2)
/* 7C3F5D8 800808A8 0780023C */  lui        $v0, %hi(unk_ovlheader_800743E0)
/* 7C3F5DC 800808AC E043428C */  lw         $v0, %lo(unk_ovlheader_800743E0)($v0)
/* 7C3F5E0 800808B0 00000000 */  nop
/* 7C3F5E4 800808B4 09F84000 */  jalr       $v0
/* 7C3F5E8 800808B8 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_38_800808BC:
/* 7C3F5EC 800808BC 1400A38E */  lw         $v1, 0x14($s5)
/* 7C3F5F0 800808C0 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 7C3F5F4 800808C4 21006210 */  beq        $v1, $v0, .Llevel_38_8008094C
/* 7C3F5F8 800808C8 40100300 */   sll       $v0, $v1, 1
/* 7C3F5FC 800808CC 21104300 */  addu       $v0, $v0, $v1
/* 7C3F600 800808D0 80100200 */  sll        $v0, $v0, 2
/* 7C3F604 800808D4 23104300 */  subu       $v0, $v0, $v1
/* 7C3F608 800808D8 0780033C */  lui        $v1, %hi(D_8006C550)
/* 7C3F60C 800808DC 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 7C3F610 800808E0 C0100200 */  sll        $v0, $v0, 3
/* 7C3F614 800808E4 21186200 */  addu       $v1, $v1, $v0
/* 7C3F618 800808E8 0000628C */  lw         $v0, 0x0($v1)
/* 7C3F61C 800808EC 00000000 */  nop
/* 7C3F620 800808F0 0000428C */  lw         $v0, 0x0($v0)
/* 7C3F624 800808F4 00000000 */  nop
/* 7C3F628 800808F8 0D004010 */  beqz       $v0, .Llevel_38_80080930
/* 7C3F62C 800808FC 00000000 */   nop
/* 7C3F630 80080900 180040AE */  sw         $zero, 0x18($s2)
/* 7C3F634 80080904 1800A28E */  lw         $v0, 0x18($s5)
/* 7C3F638 80080908 00000000 */  nop
/* 7C3F63C 8008090C 0F004014 */  bnez       $v0, .Llevel_38_8008094C
/* 7C3F640 80080910 41020424 */   addiu     $a0, $zero, 0x241
/* 7C3F644 80080914 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7C3F648 80080918 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7C3F64C 8008091C 00000000 */  nop
/* 7C3F650 80080920 09F84000 */  jalr       $v0
/* 7C3F654 80080924 21284002 */   addu      $a1, $s2, $zero
/* 7C3F658 80080928 53020208 */  j          .Llevel_38_8008094C
/* 7C3F65C 8008092C 1800A2AE */   sw        $v0, 0x18($s5)
.Llevel_38_80080930:
/* 7C3F660 80080930 1800A48E */  lw         $a0, 0x18($s5)
/* 7C3F664 80080934 00000000 */  nop
/* 7C3F668 80080938 04008010 */  beqz       $a0, .Llevel_38_8008094C
/* 7C3F66C 8008093C 00000000 */   nop
/* 7C3F670 80080940 C656010C */  jal        func_80055B18
/* 7C3F674 80080944 00000000 */   nop
/* 7C3F678 80080948 1800A0AE */  sw         $zero, 0x18($s5)
.Llevel_38_8008094C:
/* 7C3F67C 8008094C 1800428E */  lw         $v0, 0x18($s2)
/* 7C3F680 80080950 00000000 */  nop
/* 7C3F684 80080954 1E004010 */  beqz       $v0, .Llevel_38_800809D0
/* 7C3F688 80080958 00000000 */   nop
/* 7C3F68C 8008095C 48004292 */  lbu        $v0, 0x48($s2)
/* 7C3F690 80080960 00000000 */  nop
/* 7C3F694 80080964 FEFF4224 */  addiu      $v0, $v0, -0x2
/* 7C3F698 80080968 0200422C */  sltiu      $v0, $v0, 0x2
/* 7C3F69C 8008096C 18004014 */  bnez       $v0, .Llevel_38_800809D0
/* 7C3F6A0 80080970 00000000 */   nop
/* 7C3F6A4 80080974 1000A28E */  lw         $v0, 0x10($s5)
/* 7C3F6A8 80080978 00000000 */  nop
/* 7C3F6AC 8008097C FFFF4224 */  addiu      $v0, $v0, -0x1
/* 7C3F6B0 80080980 06004018 */  blez       $v0, .Llevel_38_8008099C
/* 7C3F6B4 80080984 1000A2AE */   sw        $v0, 0x10($s5)
/* 7C3F6B8 80080988 1800428E */  lw         $v0, 0x18($s2)
/* 7C3F6BC 8008098C 1800033C */  lui        $v1, (0x180000 >> 16)
/* 7C3F6C0 80080990 24104300 */  and        $v0, $v0, $v1
/* 7C3F6C4 80080994 08004010 */  beqz       $v0, .Llevel_38_800809B8
/* 7C3F6C8 80080998 FF000224 */   addiu     $v0, $zero, 0xFF
.Llevel_38_8008099C:
/* 7C3F6CC 8008099C 02000224 */  addiu      $v0, $zero, 0x2
/* 7C3F6D0 800809A0 480042A2 */  sb         $v0, 0x48($s2)
/* 7C3F6D4 800809A4 21204002 */  addu       $a0, $s2, $zero
/* 7C3F6D8 800809A8 21280000 */  addu       $a1, $zero, $zero
/* 7C3F6DC 800809AC AFEE000C */  jal        func_8003BABC
/* 7C3F6E0 800809B0 21300000 */   addu      $a2, $zero, $zero
/* 7C3F6E4 800809B4 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_38_800809B8:
/* 7C3F6E8 800809B8 540042A2 */  sb         $v0, 0x54($s2)
/* 7C3F6EC 800809BC 550042A2 */  sb         $v0, 0x55($s2)
/* 7C3F6F0 800809C0 560042A2 */  sb         $v0, 0x56($s2)
/* 7C3F6F4 800809C4 3F000224 */  addiu      $v0, $zero, 0x3F
/* 7C3F6F8 800809C8 78020208 */  j          .Llevel_38_800809E0
/* 7C3F6FC 800809CC 570042A2 */   sb        $v0, 0x57($s2)
.Llevel_38_800809D0:
/* 7C3F700 800809D0 540040A2 */  sb         $zero, 0x54($s2)
/* 7C3F704 800809D4 550040A2 */  sb         $zero, 0x55($s2)
/* 7C3F708 800809D8 560040A2 */  sb         $zero, 0x56($s2)
/* 7C3F70C 800809DC 570040A2 */  sb         $zero, 0x57($s2)
.Llevel_38_800809E0:
/* 7C3F710 800809E0 48004392 */  lbu        $v1, 0x48($s2)
/* 7C3F714 800809E4 01000224 */  addiu      $v0, $zero, 0x1
/* 7C3F718 800809E8 35006210 */  beq        $v1, $v0, .Llevel_38_80080AC0
/* 7C3F71C 800809EC 02006228 */   slti      $v0, $v1, 0x2
/* 7C3F720 800809F0 05004010 */  beqz       $v0, .Llevel_38_80080A08
/* 7C3F724 800809F4 00000000 */   nop
/* 7C3F728 800809F8 0A006010 */  beqz       $v1, .Llevel_38_80080A24
/* 7C3F72C 800809FC 0400A426 */   addiu     $a0, $s5, 0x4
/* 7C3F730 80080A00 C1030208 */  j          .Llevel_38_80080F04
/* 7C3F734 80080A04 180040AE */   sw        $zero, 0x18($s2)
.Llevel_38_80080A08:
/* 7C3F738 80080A08 02000224 */  addiu      $v0, $zero, 0x2
/* 7C3F73C 80080A0C 36006210 */  beq        $v1, $v0, .Llevel_38_80080AE8
/* 7C3F740 80080A10 03000224 */   addiu     $v0, $zero, 0x3
/* 7C3F744 80080A14 90006210 */  beq        $v1, $v0, .Llevel_38_80080C58
/* 7C3F748 80080A18 00000000 */   nop
/* 7C3F74C 80080A1C C1030208 */  j          .Llevel_38_80080F04
/* 7C3F750 80080A20 180040AE */   sw        $zero, 0x18($s2)
.Llevel_38_80080A24:
/* 7C3F754 80080A24 69D6000C */  jal        func_800359A4
/* 7C3F758 80080A28 04000524 */   addiu     $a1, $zero, 0x4
/* 7C3F75C 80080A2C 34014010 */  beqz       $v0, .Llevel_38_80080F00
/* 7C3F760 80080A30 00000000 */   nop
/* 7C3F764 80080A34 0780073C */  lui        $a3, %hi(D_8006C550)
/* 7C3F768 80080A38 50C5E78C */  lw         $a3, %lo(D_8006C550)($a3)
/* 7C3F76C 80080A3C 0780063C */  lui        $a2, %hi(D_8006C7C4)
/* 7C3F770 80080A40 C4C7C68C */  lw         $a2, %lo(D_8006C7C4)($a2)
/* 7C3F774 80080A44 0C00A28E */  lw         $v0, 0xC($s5)
/* 7C3F778 80080A48 0780033C */  lui        $v1, %hi(D_8006C730)
/* 7C3F77C 80080A4C 30C7638C */  lw         $v1, %lo(D_8006C730)($v1)
/* 7C3F780 80080A50 80100200 */  sll        $v0, $v0, 2
/* 7C3F784 80080A54 21104300 */  addu       $v0, $v0, $v1
/* 7C3F788 80080A58 0000448C */  lw         $a0, 0x0($v0)
.Llevel_38_80080A5C:
/* 7C3F78C 80080A5C 00000000 */  nop
/* 7C3F790 80080A60 00008594 */  lhu        $a1, 0x0($a0)
/* 7C3F794 80080A64 00000000 */  nop
/* 7C3F798 80080A68 FF7FA230 */  andi       $v0, $a1, 0x7FFF
/* 7C3F79C 80080A6C 40180200 */  sll        $v1, $v0, 1
/* 7C3F7A0 80080A70 21186200 */  addu       $v1, $v1, $v0
/* 7C3F7A4 80080A74 80180300 */  sll        $v1, $v1, 2
/* 7C3F7A8 80080A78 23186200 */  subu       $v1, $v1, $v0
/* 7C3F7AC 80080A7C C0180300 */  sll        $v1, $v1, 3
/* 7C3F7B0 80080A80 21886700 */  addu       $s1, $v1, $a3
/* 7C3F7B4 80080A84 48002292 */  lbu        $v0, 0x48($s1)
/* 7C3F7B8 80080A88 00000000 */  nop
/* 7C3F7BC 80080A8C 80004230 */  andi       $v0, $v0, 0x80
/* 7C3F7C0 80080A90 07004010 */  beqz       $v0, .Llevel_38_80080AB0
/* 7C3F7C4 80080A94 00140500 */   sll       $v0, $a1, 16
/* 7C3F7C8 80080A98 53002292 */  lbu        $v0, 0x53($s1)
/* 7C3F7CC 80080A9C 00000000 */  nop
/* 7C3F7D0 80080AA0 0710C200 */  srav       $v0, $v0, $a2
/* 7C3F7D4 80080AA4 01004230 */  andi       $v0, $v0, 0x1
/* 7C3F7D8 80080AA8 EC004014 */  bnez       $v0, .Llevel_38_80080E5C
/* 7C3F7DC 80080AAC 00140500 */   sll       $v0, $a1, 16
.Llevel_38_80080AB0:
/* 7C3F7E0 80080AB0 EAFF4104 */  bgez       $v0, .Llevel_38_80080A5C
/* 7C3F7E4 80080AB4 02008424 */   addiu     $a0, $a0, 0x2
/* 7C3F7E8 80080AB8 C1030208 */  j          .Llevel_38_80080F04
/* 7C3F7EC 80080ABC 180040AE */   sw        $zero, 0x18($s2)
.Llevel_38_80080AC0:
/* 7C3F7F0 80080AC0 0400A426 */  addiu      $a0, $s5, 0x4
/* 7C3F7F4 80080AC4 69D6000C */  jal        func_800359A4
/* 7C3F7F8 80080AC8 04000524 */   addiu     $a1, $zero, 0x4
/* 7C3F7FC 80080ACC 0C014010 */  beqz       $v0, .Llevel_38_80080F00
/* 7C3F800 80080AD0 00000000 */   nop
/* 7C3F804 80080AD4 0800A28E */  lw         $v0, 0x8($s5)
/* 7C3F808 80080AD8 00000000 */  nop
/* 7C3F80C 80080ADC 0400A2AE */  sw         $v0, 0x4($s5)
/* 7C3F810 80080AE0 C0030208 */  j          .Llevel_38_80080F00
/* 7C3F814 80080AE4 480040A2 */   sb        $zero, 0x48($s2)
.Llevel_38_80080AE8:
/* 7C3F818 80080AE8 0780023C */  lui        $v0, %hi(D_8006C578)
/* 7C3F81C 80080AEC 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 7C3F820 80080AF0 0780033C */  lui        $v1, %hi(D_8006C574)
/* 7C3F824 80080AF4 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 7C3F828 80080AF8 00000000 */  nop
/* 7C3F82C 80080AFC 23104300 */  subu       $v0, $v0, $v1
/* 7C3F830 80080B00 15004228 */  slti       $v0, $v0, 0x15
/* 7C3F834 80080B04 10004014 */  bnez       $v0, .Llevel_38_80080B48
/* 7C3F838 80080B08 00000000 */   nop
/* 7C3F83C 80080B0C 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 7C3F840 80080B10 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 7C3F844 80080B14 00000000 */  nop
/* 7C3F848 80080B18 31754228 */  slti       $v0, $v0, 0x7531
/* 7C3F84C 80080B1C 0A004014 */  bnez       $v0, .Llevel_38_80080B48
/* 7C3F850 80080B20 46010424 */   addiu     $a0, $zero, 0x146
/* 7C3F854 80080B24 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7C3F858 80080B28 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7C3F85C 80080B2C 00000000 */  nop
/* 7C3F860 80080B30 09F84000 */  jalr       $v0
/* 7C3F864 80080B34 21284002 */   addu      $a1, $s2, $zero
/* 7C3F868 80080B38 21184000 */  addu       $v1, $v0, $zero
/* 7C3F86C 80080B3C 02006010 */  beqz       $v1, .Llevel_38_80080B48
/* 7C3F870 80080B40 07000224 */   addiu     $v0, $zero, 0x7
/* 7C3F874 80080B44 470062A0 */  sb         $v0, 0x47($v1)
.Llevel_38_80080B48:
/* 7C3F878 80080B48 0780023C */  lui        $v0, %hi(D_8006C578)
/* 7C3F87C 80080B4C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 7C3F880 80080B50 0780033C */  lui        $v1, %hi(D_8006C574)
/* 7C3F884 80080B54 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 7C3F888 80080B58 00000000 */  nop
/* 7C3F88C 80080B5C 23104300 */  subu       $v0, $v0, $v1
/* 7C3F890 80080B60 15004228 */  slti       $v0, $v0, 0x15
/* 7C3F894 80080B64 35004014 */  bnez       $v0, .Llevel_38_80080C3C
/* 7C3F898 80080B68 21A00000 */   addu      $s4, $zero, $zero
/* 7C3F89C 80080B6C 0780163C */  lui        $s6, %hi(D_8006E020)
/* 7C3F8A0 80080B70 20E0D626 */  addiu      $s6, $s6, %lo(D_8006E020)
/* 7C3F8A4 80080B74 21980000 */  addu       $s3, $zero, $zero
.Llevel_38_80080B78:
/* 7C3F8A8 80080B78 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 7C3F8AC 80080B7C E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 7C3F8B0 80080B80 00000000 */  nop
/* 7C3F8B4 80080B84 31754228 */  slti       $v0, $v0, 0x7531
/* 7C3F8B8 80080B88 2C004014 */  bnez       $v0, .Llevel_38_80080C3C
/* 7C3F8BC 80080B8C 1D020424 */   addiu     $a0, $zero, 0x21D
/* 7C3F8C0 80080B90 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7C3F8C4 80080B94 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7C3F8C8 80080B98 00000000 */  nop
/* 7C3F8CC 80080B9C 09F84000 */  jalr       $v0
/* 7C3F8D0 80080BA0 21284002 */   addu      $a1, $s2, $zero
/* 7C3F8D4 80080BA4 21884000 */  addu       $s1, $v0, $zero
/* 7C3F8D8 80080BA8 17002012 */  beqz       $s1, .Llevel_38_80080C08
/* 7C3F8DC 80080BAC 21300000 */   addu      $a2, $zero, $zero
/* 7C3F8E0 80080BB0 0C00438E */  lw         $v1, 0xC($s2)
/* 7C3F8E4 80080BB4 0000C48E */  lw         $a0, 0x0($s6)
/* 7C3F8E8 80080BB8 1000428E */  lw         $v0, 0x10($s2)
/* 7C3F8EC 80080BBC 0400C58E */  lw         $a1, 0x4($s6)
/* 7C3F8F0 80080BC0 23206400 */  subu       $a0, $v1, $a0
/* 7C3F8F4 80080BC4 203A010C */  jal        func_8004E880
/* 7C3F8F8 80080BC8 23284500 */   subu      $a1, $v0, $a1
/* 7C3F8FC 80080BCC 9171010C */  jal        rand
/* 7C3F900 80080BD0 21804000 */   addu      $s0, $v0, $zero
/* 7C3F904 80080BD4 40001026 */  addiu      $s0, $s0, 0x40
/* 7C3F908 80080BD8 1F004230 */  andi       $v0, $v0, 0x1F
/* 7C3F90C 80080BDC 21800202 */  addu       $s0, $s0, $v0
/* 7C3F910 80080BE0 9171010C */  jal        rand
/* 7C3F914 80080BE4 460030A2 */   sb        $s0, 0x46($s1)
/* 7C3F918 80080BE8 1E004230 */  andi       $v0, $v0, 0x1E
/* 7C3F91C 80080BEC 21106202 */  addu       $v0, $s3, $v0
/* 7C3F920 80080BF0 F1FF4224 */  addiu      $v0, $v0, -0xF
/* 7C3F924 80080BF4 450022A2 */  sb         $v0, 0x45($s1)
/* 7C3F928 80080BF8 08000224 */  addiu      $v0, $zero, 0x8
/* 7C3F92C 80080BFC 470022A2 */  sb         $v0, 0x47($s1)
/* 7C3F930 80080C00 2A000224 */  addiu      $v0, $zero, 0x2A
/* 7C3F934 80080C04 4C0022A2 */  sb         $v0, 0x4C($s1)
.Llevel_38_80080C08:
/* 7C3F938 80080C08 01009426 */  addiu      $s4, $s4, 0x1
/* 7C3F93C 80080C0C 0500822A */  slti       $v0, $s4, 0x5
/* 7C3F940 80080C10 0A004010 */  beqz       $v0, .Llevel_38_80080C3C
/* 7C3F944 80080C14 33007326 */   addiu     $s3, $s3, 0x33
/* 7C3F948 80080C18 0780023C */  lui        $v0, %hi(D_8006C578)
/* 7C3F94C 80080C1C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 7C3F950 80080C20 0780033C */  lui        $v1, %hi(D_8006C574)
/* 7C3F954 80080C24 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 7C3F958 80080C28 00000000 */  nop
/* 7C3F95C 80080C2C 23104300 */  subu       $v0, $v0, $v1
/* 7C3F960 80080C30 15004228 */  slti       $v0, $v0, 0x15
/* 7C3F964 80080C34 D0FF4010 */  beqz       $v0, .Llevel_38_80080B78
/* 7C3F968 80080C38 00000000 */   nop
.Llevel_38_80080C3C:
/* 7C3F96C 80080C3C 14000224 */  addiu      $v0, $zero, 0x14
/* 7C3F970 80080C40 410040A2 */  sb         $zero, 0x41($s2)
/* 7C3F974 80080C44 4C0040A2 */  sb         $zero, 0x4C($s2)
/* 7C3F978 80080C48 4D0040A2 */  sb         $zero, 0x4D($s2)
/* 7C3F97C 80080C4C 0400A2AE */  sw         $v0, 0x4($s5)
/* 7C3F980 80080C50 03000224 */  addiu      $v0, $zero, 0x3
/* 7C3F984 80080C54 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_38_80080C58:
/* 7C3F988 80080C58 0400A28E */  lw         $v0, 0x4($s5)
/* 7C3F98C 80080C5C 00000000 */  nop
/* 7C3F990 80080C60 06004228 */  slti       $v0, $v0, 0x6
/* 7C3F994 80080C64 47004014 */  bnez       $v0, .Llevel_38_80080D84
/* 7C3F998 80080C68 00000000 */   nop
/* 7C3F99C 80080C6C 21880000 */  addu       $s1, $zero, $zero
/* 7C3F9A0 80080C70 3000B327 */  addiu      $s3, $sp, 0x30
/* 7C3F9A4 80080C74 2000B027 */  addiu      $s0, $sp, 0x20
.Llevel_38_80080C78:
/* 7C3F9A8 80080C78 9171010C */  jal        rand
/* 7C3F9AC 80080C7C 4800A0A3 */   sb        $zero, 0x48($sp)
/* 7C3F9B0 80080C80 9171010C */  jal        rand
/* 7C3F9B4 80080C84 4900A2A3 */   sb        $v0, 0x49($sp)
/* 7C3F9B8 80080C88 4800A427 */  addiu      $a0, $sp, 0x48
/* 7C3F9BC 80080C8C 21286002 */  addu       $a1, $s3, $zero
/* 7C3F9C0 80080C90 21300000 */  addu       $a2, $zero, $zero
/* 7C3F9C4 80080C94 A43A010C */  jal        func_8004EA90
/* 7C3F9C8 80080C98 4A00A2A3 */   sb        $v0, 0x4A($sp)
/* 7C3F9CC 80080C9C 9171010C */  jal        rand
/* 7C3F9D0 80080CA0 01003126 */   addiu     $s1, $s1, 0x1
/* 7C3F9D4 80080CA4 21206002 */  addu       $a0, $s3, $zero
/* 7C3F9D8 80080CA8 1000A527 */  addiu      $a1, $sp, 0x10
/* 7C3F9DC 80080CAC 2130A000 */  addu       $a2, $a1, $zero
/* 7C3F9E0 80080CB0 1F004230 */  andi       $v0, $v0, 0x1F
/* 7C3F9E4 80080CB4 30004224 */  addiu      $v0, $v0, 0x30
/* 7C3F9E8 80080CB8 1000A2AF */  sw         $v0, 0x10($sp)
/* 7C3F9EC 80080CBC 1400A0AF */  sw         $zero, 0x14($sp)
/* 7C3F9F0 80080CC0 5B3B010C */  jal        func_8004ED6C
/* 7C3F9F4 80080CC4 1800A0AF */   sw        $zero, 0x18($sp)
/* 7C3F9F8 80080CC8 21200002 */  addu       $a0, $s0, $zero
/* 7C3F9FC 80080CCC 5E3C010C */  jal        func_8004F178
/* 7C3FA00 80080CD0 1000A527 */   addiu     $a1, $sp, 0x10
/* 7C3FA04 80080CD4 21200002 */  addu       $a0, $s0, $zero
/* 7C3FA08 80080CD8 21280002 */  addu       $a1, $s0, $zero
/* 7C3FA0C 80080CDC 653C010C */  jal        func_8004F194
/* 7C3FA10 80080CE0 0C004626 */   addiu     $a2, $s2, 0xC
/* 7C3FA14 80080CE4 01000424 */  addiu      $a0, $zero, 0x1
/* 7C3FA18 80080CE8 14000524 */  addiu      $a1, $zero, 0x14
/* 7C3FA1C 80080CEC 21300002 */  addu       $a2, $s0, $zero
/* 7C3FA20 80080CF0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7C3FA24 80080CF4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7C3FA28 80080CF8 00000000 */  nop
/* 7C3FA2C 80080CFC 09F84000 */  jalr       $v0
/* 7C3FA30 80080D00 1000A727 */   addiu     $a3, $sp, 0x10
/* 7C3FA34 80080D04 21200002 */  addu       $a0, $s0, $zero
/* 7C3FA38 80080D08 3A3C010C */  jal        func_8004F0E8
/* 7C3FA3C 80080D0C 02000524 */   addiu     $a1, $zero, 0x2
/* 7C3FA40 80080D10 01000424 */  addiu      $a0, $zero, 0x1
/* 7C3FA44 80080D14 14000524 */  addiu      $a1, $zero, 0x14
/* 7C3FA48 80080D18 21300002 */  addu       $a2, $s0, $zero
/* 7C3FA4C 80080D1C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7C3FA50 80080D20 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7C3FA54 80080D24 00000000 */  nop
/* 7C3FA58 80080D28 09F84000 */  jalr       $v0
/* 7C3FA5C 80080D2C 1000A727 */   addiu     $a3, $sp, 0x10
/* 7C3FA60 80080D30 1000A427 */  addiu      $a0, $sp, 0x10
/* 7C3FA64 80080D34 3A3C010C */  jal        func_8004F0E8
/* 7C3FA68 80080D38 02000524 */   addiu     $a1, $zero, 0x2
/* 7C3FA6C 80080D3C 01000424 */  addiu      $a0, $zero, 0x1
/* 7C3FA70 80080D40 14000524 */  addiu      $a1, $zero, 0x14
/* 7C3FA74 80080D44 21300002 */  addu       $a2, $s0, $zero
/* 7C3FA78 80080D48 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7C3FA7C 80080D4C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7C3FA80 80080D50 00000000 */  nop
/* 7C3FA84 80080D54 09F84000 */  jalr       $v0
/* 7C3FA88 80080D58 1000A727 */   addiu     $a3, $sp, 0x10
/* 7C3FA8C 80080D5C 0400222A */  slti       $v0, $s1, 0x4
/* 7C3FA90 80080D60 C5FF4014 */  bnez       $v0, .Llevel_38_80080C78
/* 7C3FA94 80080D64 06000424 */   addiu     $a0, $zero, 0x6
/* 7C3FA98 80080D68 46000524 */  addiu      $a1, $zero, 0x46
/* 7C3FA9C 80080D6C 0C004626 */  addiu      $a2, $s2, 0xC
/* 7C3FAA0 80080D70 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7C3FAA4 80080D74 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7C3FAA8 80080D78 00000000 */  nop
/* 7C3FAAC 80080D7C 09F84000 */  jalr       $v0
/* 7C3FAB0 80080D80 10000724 */   addiu     $a3, $zero, 0x10
.Llevel_38_80080D84:
/* 7C3FAB4 80080D84 0780023C */  lui        $v0, %hi(D_8006C640)
/* 7C3FAB8 80080D88 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 7C3FABC 80080D8C 00000000 */  nop
/* 7C3FAC0 80080D90 01004230 */  andi       $v0, $v0, 0x1
/* 7C3FAC4 80080D94 1D004014 */  bnez       $v0, .Llevel_38_80080E0C
/* 7C3FAC8 80080D98 0400A426 */   addiu     $a0, $s5, 0x4
/* 7C3FACC 80080D9C 0780023C */  lui        $v0, %hi(D_8006C578)
/* 7C3FAD0 80080DA0 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 7C3FAD4 80080DA4 0780033C */  lui        $v1, %hi(D_8006C574)
/* 7C3FAD8 80080DA8 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 7C3FADC 80080DAC 00000000 */  nop
/* 7C3FAE0 80080DB0 23104300 */  subu       $v0, $v0, $v1
/* 7C3FAE4 80080DB4 15004228 */  slti       $v0, $v0, 0x15
/* 7C3FAE8 80080DB8 14004014 */  bnez       $v0, .Llevel_38_80080E0C
/* 7C3FAEC 80080DBC 00000000 */   nop
/* 7C3FAF0 80080DC0 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 7C3FAF4 80080DC4 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 7C3FAF8 80080DC8 00000000 */  nop
/* 7C3FAFC 80080DCC 31754228 */  slti       $v0, $v0, 0x7531
/* 7C3FB00 80080DD0 0E004014 */  bnez       $v0, .Llevel_38_80080E0C
/* 7C3FB04 80080DD4 00000000 */   nop
/* 7C3FB08 80080DD8 E2010424 */  addiu      $a0, $zero, 0x1E2
/* 7C3FB0C 80080DDC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7C3FB10 80080DE0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7C3FB14 80080DE4 00000000 */  nop
/* 7C3FB18 80080DE8 09F84000 */  jalr       $v0
/* 7C3FB1C 80080DEC 21284002 */   addu      $a1, $s2, $zero
/* 7C3FB20 80080DF0 21184000 */  addu       $v1, $v0, $zero
/* 7C3FB24 80080DF4 04006010 */  beqz       $v1, .Llevel_38_80080E08
/* 7C3FB28 80080DF8 2A000224 */   addiu     $v0, $zero, 0x2A
/* 7C3FB2C 80080DFC 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 7C3FB30 80080E00 0A000224 */  addiu      $v0, $zero, 0xA
/* 7C3FB34 80080E04 470062A0 */  sb         $v0, 0x47($v1)
.Llevel_38_80080E08:
/* 7C3FB38 80080E08 0400A426 */  addiu      $a0, $s5, 0x4
.Llevel_38_80080E0C:
/* 7C3FB3C 80080E0C 69D6000C */  jal        func_800359A4
/* 7C3FB40 80080E10 04000524 */   addiu     $a1, $zero, 0x4
/* 7C3FB44 80080E14 3A004010 */  beqz       $v0, .Llevel_38_80080F00
/* 7C3FB48 80080E18 01000524 */   addiu     $a1, $zero, 0x1
/* 7C3FB4C 80080E1C 21204002 */  addu       $a0, $s2, $zero
/* 7C3FB50 80080E20 21300000 */  addu       $a2, $zero, $zero
/* 7C3FB54 80080E24 9ADA000C */  jal        func_80036A68
/* 7C3FB58 80080E28 21380000 */   addu      $a3, $zero, $zero
/* 7C3FB5C 80080E2C 21204002 */  addu       $a0, $s2, $zero
/* 7C3FB60 80080E30 4957010C */  jal        func_80055D24
/* 7C3FB64 80080E34 04000524 */   addiu     $a1, $zero, 0x4
/* 7C3FB68 80080E38 80EE000C */  jal        func_8003BA00
/* 7C3FB6C 80080E3C 21204002 */   addu      $a0, $s2, $zero
/* 7C3FB70 80080E40 21204002 */  addu       $a0, $s2, $zero
/* 7C3FB74 80080E44 6EDA000C */  jal        func_800369B8
/* 7C3FB78 80080E48 30000524 */   addiu     $a1, $zero, 0x30
/* 7C3FB7C 80080E4C C656010C */  jal        func_80055B18
/* 7C3FB80 80080E50 21204002 */   addu      $a0, $s2, $zero
/* 7C3FB84 80080E54 C1030208 */  j          .Llevel_38_80080F04
/* 7C3FB88 80080E58 00000000 */   nop
.Llevel_38_80080E5C:
/* 7C3FB8C 80080E5C 0C002426 */  addiu      $a0, $s1, 0xC
/* 7C3FB90 80080E60 5E3C010C */  jal        func_8004F178
/* 7C3FB94 80080E64 0C004526 */   addiu     $a1, $s2, 0xC
/* 7C3FB98 80080E68 0957010C */  jal        func_80055C24
/* 7C3FB9C 80080E6C 21202002 */   addu      $a0, $s1, $zero
/* 7C3FBA0 80080E70 36002286 */  lh         $v0, 0x36($s1)
/* 7C3FBA4 80080E74 180020AE */  sw         $zero, 0x18($s1)
/* 7C3FBA8 80080E78 510020A2 */  sb         $zero, 0x51($s1)
/* 7C3FBAC 80080E7C 480020A2 */  sb         $zero, 0x48($s1)
/* 7C3FBB0 80080E80 420020A2 */  sb         $zero, 0x42($s1)
/* 7C3FBB4 80080E84 80100200 */  sll        $v0, $v0, 2
/* 7C3FBB8 80080E88 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 7C3FBBC 80080E8C 21082200 */  addu       $at, $at, $v0
/* 7C3FBC0 80080E90 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 7C3FBC4 80080E94 00000000 */  nop
/* 7C3FBC8 80080E98 3C00428C */  lw         $v0, 0x3C($v0)
/* 7C3FBCC 80080E9C 21202002 */  addu       $a0, $s1, $zero
/* 7C3FBD0 80080EA0 00004290 */  lbu        $v0, 0x0($v0)
/* 7C3FBD4 80080EA4 01001024 */  addiu      $s0, $zero, 0x1
/* 7C3FBD8 80080EA8 3C0020A2 */  sb         $zero, 0x3C($s1)
/* 7C3FBDC 80080EAC 3D0020A2 */  sb         $zero, 0x3D($s1)
/* 7C3FBE0 80080EB0 3E0020A2 */  sb         $zero, 0x3E($s1)
/* 7C3FBE4 80080EB4 3F0030A2 */  sb         $s0, 0x3F($s1)
/* 7C3FBE8 80080EB8 440020A2 */  sb         $zero, 0x44($s1)
/* 7C3FBEC 80080EBC 450020A2 */  sb         $zero, 0x45($s1)
/* 7C3FBF0 80080EC0 0200422C */  sltiu      $v0, $v0, 0x2
/* 7C3FBF4 80080EC4 01004238 */  xori       $v0, $v0, 0x1
/* 7C3FBF8 80080EC8 23100200 */  negu       $v0, $v0
/* 7C3FBFC 80080ECC 30004230 */  andi       $v0, $v0, 0x30
/* 7C3FC00 80080ED0 400022A2 */  sb         $v0, 0x40($s1)
/* 7C3FC04 80080ED4 1400228E */  lw         $v0, 0x14($s1)
/* 7C3FC08 80080ED8 46004392 */  lbu        $v1, 0x46($s2)
/* 7C3FC0C 80080EDC 00024224 */  addiu      $v0, $v0, 0x200
/* 7C3FC10 80080EE0 140022AE */  sw         $v0, 0x14($s1)
/* 7C3FC14 80080EE4 4ED7000C */  jal        func_80035D38
/* 7C3FC18 80080EE8 460023A2 */   sb        $v1, 0x46($s1)
/* 7C3FC1C 80080EEC A758010C */  jal        func_8005629C
/* 7C3FC20 80080EF0 21202002 */   addu      $a0, $s1, $zero
/* 7C3FC24 80080EF4 3C000224 */  addiu      $v0, $zero, 0x3C
/* 7C3FC28 80080EF8 0400A2AE */  sw         $v0, 0x4($s5)
/* 7C3FC2C 80080EFC 480050A2 */  sb         $s0, 0x48($s2)
.Llevel_38_80080F00:
/* 7C3FC30 80080F00 180040AE */  sw         $zero, 0x18($s2)
.Llevel_38_80080F04:
/* 7C3FC34 80080F04 6C00BF8F */  lw         $ra, 0x6C($sp)
/* 7C3FC38 80080F08 6800B68F */  lw         $s6, 0x68($sp)
/* 7C3FC3C 80080F0C 6400B58F */  lw         $s5, 0x64($sp)
/* 7C3FC40 80080F10 6000B48F */  lw         $s4, 0x60($sp)
/* 7C3FC44 80080F14 5C00B38F */  lw         $s3, 0x5C($sp)
/* 7C3FC48 80080F18 5800B28F */  lw         $s2, 0x58($sp)
/* 7C3FC4C 80080F1C 5400B18F */  lw         $s1, 0x54($sp)
/* 7C3FC50 80080F20 5000B08F */  lw         $s0, 0x50($sp)
/* 7C3FC54 80080F24 7000BD27 */  addiu      $sp, $sp, 0x70
/* 7C3FC58 80080F28 0800E003 */  jr         $ra
/* 7C3FC5C 80080F2C 00000000 */   nop
.size func_level_38_80080854, . - func_level_38_80080854
