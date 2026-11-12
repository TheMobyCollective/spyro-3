.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_13_level_24
/* 5DFD60C 800828DC B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 5DFD610 800828E0 3800B2AF */  sw         $s2, 0x38($sp)
/* 5DFD614 800828E4 21908000 */  addu       $s2, $a0, $zero
/* 5DFD618 800828E8 4400BFAF */  sw         $ra, 0x44($sp)
/* 5DFD61C 800828EC 4000B4AF */  sw         $s4, 0x40($sp)
/* 5DFD620 800828F0 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 5DFD624 800828F4 3400B1AF */  sw         $s1, 0x34($sp)
/* 5DFD628 800828F8 3000B0AF */  sw         $s0, 0x30($sp)
/* 5DFD62C 800828FC 49004292 */  lbu        $v0, 0x49($s2)
/* 5DFD630 80082900 0000518E */  lw         $s1, 0x0($s2)
/* 5DFD634 80082904 02004014 */  bnez       $v0, .Llevel_24_80082910
/* 5DFD638 80082908 01000224 */   addiu     $v0, $zero, 0x1
/* 5DFD63C 8008290C 490042A2 */  sb         $v0, 0x49($s2)
.Llevel_24_80082910:
/* 5DFD640 80082910 49004392 */  lbu        $v1, 0x49($s2)
/* 5DFD644 80082914 01000224 */  addiu      $v0, $zero, 0x1
/* 5DFD648 80082918 3D006214 */  bne        $v1, $v0, .Llevel_24_80082A10
/* 5DFD64C 8008291C 00000000 */   nop
/* 5DFD650 80082920 0000238E */  lw         $v1, 0x0($s1)
/* 5DFD654 80082924 00000000 */  nop
/* 5DFD658 80082928 1B006004 */  bltz       $v1, .Llevel_24_80082998
/* 5DFD65C 8008292C 40100300 */   sll       $v0, $v1, 1
/* 5DFD660 80082930 21104300 */  addu       $v0, $v0, $v1
/* 5DFD664 80082934 80100200 */  sll        $v0, $v0, 2
/* 5DFD668 80082938 23104300 */  subu       $v0, $v0, $v1
/* 5DFD66C 8008293C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 5DFD670 80082940 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 5DFD674 80082944 C0100200 */  sll        $v0, $v0, 3
/* 5DFD678 80082948 21806200 */  addu       $s0, $v1, $v0
/* 5DFD67C 8008294C 48000392 */  lbu        $v1, 0x48($s0)
/* 5DFD680 80082950 00000000 */  nop
/* 5DFD684 80082954 07006010 */  beqz       $v1, .Llevel_24_80082974
/* 5DFD688 80082958 04000224 */   addiu     $v0, $zero, 0x4
/* 5DFD68C 8008295C 05006210 */  beq        $v1, $v0, .Llevel_24_80082974
/* 5DFD690 80082960 08000224 */   addiu     $v0, $zero, 0x8
/* 5DFD694 80082964 03006210 */  beq        $v1, $v0, .Llevel_24_80082974
/* 5DFD698 80082968 0B000224 */   addiu     $v0, $zero, 0xB
/* 5DFD69C 8008296C 0A006214 */  bne        $v1, $v0, .Llevel_24_80082998
/* 5DFD6A0 80082970 00000000 */   nop
.Llevel_24_80082974:
/* 5DFD6A4 80082974 0C000426 */  addiu      $a0, $s0, 0xC
/* 5DFD6A8 80082978 5E3C010C */  jal        func_8004F178
/* 5DFD6AC 8008297C 0C004526 */   addiu     $a1, $s2, 0xC
/* 5DFD6B0 80082980 21200002 */  addu       $a0, $s0, $zero
/* 5DFD6B4 80082984 1400828C */  lw         $v0, 0x14($a0)
/* 5DFD6B8 80082988 06000524 */  addiu      $a1, $zero, 0x6
/* 5DFD6BC 8008298C 00074224 */  addiu      $v0, $v0, 0x700
/* 5DFD6C0 80082990 4957010C */  jal        func_80055D24
/* 5DFD6C4 80082994 140082AC */   sw        $v0, 0x14($a0)
.Llevel_24_80082998:
/* 5DFD6C8 80082998 0400238E */  lw         $v1, 0x4($s1)
/* 5DFD6CC 8008299C 00000000 */  nop
/* 5DFD6D0 800829A0 18006004 */  bltz       $v1, .Llevel_24_80082A04
/* 5DFD6D4 800829A4 20004426 */   addiu     $a0, $s2, 0x20
/* 5DFD6D8 800829A8 1000A527 */  addiu      $a1, $sp, 0x10
/* 5DFD6DC 800829AC 2130A000 */  addu       $a2, $a1, $zero
/* 5DFD6E0 800829B0 E0FC0224 */  addiu      $v0, $zero, -0x320
/* 5DFD6E4 800829B4 1000A2AF */  sw         $v0, 0x10($sp)
/* 5DFD6E8 800829B8 24FA0224 */  addiu      $v0, $zero, -0x5DC
/* 5DFD6EC 800829BC 1400A2AF */  sw         $v0, 0x14($sp)
/* 5DFD6F0 800829C0 40100300 */  sll        $v0, $v1, 1
/* 5DFD6F4 800829C4 21104300 */  addu       $v0, $v0, $v1
/* 5DFD6F8 800829C8 80100200 */  sll        $v0, $v0, 2
/* 5DFD6FC 800829CC 23104300 */  subu       $v0, $v0, $v1
/* 5DFD700 800829D0 0780033C */  lui        $v1, %hi(D_8006C550)
/* 5DFD704 800829D4 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 5DFD708 800829D8 C0100200 */  sll        $v0, $v0, 3
/* 5DFD70C 800829DC 1800A0AF */  sw         $zero, 0x18($sp)
/* 5DFD710 800829E0 5B3B010C */  jal        func_8004ED6C
/* 5DFD714 800829E4 21806200 */   addu      $s0, $v1, $v0
/* 5DFD718 800829E8 0C000426 */  addiu      $a0, $s0, 0xC
/* 5DFD71C 800829EC 0C004526 */  addiu      $a1, $s2, 0xC
/* 5DFD720 800829F0 653C010C */  jal        func_8004F194
/* 5DFD724 800829F4 1000A627 */   addiu     $a2, $sp, 0x10
/* 5DFD728 800829F8 46004292 */  lbu        $v0, 0x46($s2)
/* 5DFD72C 800829FC 00000000 */  nop
/* 5DFD730 80082A00 460002A2 */  sb         $v0, 0x46($s0)
.Llevel_24_80082A04:
/* 5DFD734 80082A04 02000224 */  addiu      $v0, $zero, 0x2
/* 5DFD738 80082A08 F20A0208 */  j          .Llevel_24_80082BC8
/* 5DFD73C 80082A0C 490042A2 */   sb        $v0, 0x49($s2)
.Llevel_24_80082A10:
/* 5DFD740 80082A10 1800428E */  lw         $v0, 0x18($s2)
/* 5DFD744 80082A14 00000000 */  nop
/* 5DFD748 80082A18 6B004010 */  beqz       $v0, .Llevel_24_80082BC8
/* 5DFD74C 80082A1C 00000000 */   nop
/* 5DFD750 80082A20 0000238E */  lw         $v1, 0x0($s1)
/* 5DFD754 80082A24 00000000 */  nop
/* 5DFD758 80082A28 17006004 */  bltz       $v1, .Llevel_24_80082A88
/* 5DFD75C 80082A2C 40100300 */   sll       $v0, $v1, 1
/* 5DFD760 80082A30 21104300 */  addu       $v0, $v0, $v1
/* 5DFD764 80082A34 80100200 */  sll        $v0, $v0, 2
/* 5DFD768 80082A38 23104300 */  subu       $v0, $v0, $v1
/* 5DFD76C 80082A3C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 5DFD770 80082A40 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 5DFD774 80082A44 C0100200 */  sll        $v0, $v0, 3
/* 5DFD778 80082A48 21806200 */  addu       $s0, $v1, $v0
/* 5DFD77C 80082A4C 48000392 */  lbu        $v1, 0x48($s0)
/* 5DFD780 80082A50 0000118E */  lw         $s1, 0x0($s0)
/* 5DFD784 80082A54 0200622C */  sltiu      $v0, $v1, 0x2
/* 5DFD788 80082A58 04004014 */  bnez       $v0, .Llevel_24_80082A6C
/* 5DFD78C 80082A5C 21200002 */   addu      $a0, $s0, $zero
/* 5DFD790 80082A60 0C000224 */  addiu      $v0, $zero, 0xC
/* 5DFD794 80082A64 08006214 */  bne        $v1, $v0, .Llevel_24_80082A88
/* 5DFD798 80082A68 00000000 */   nop
.Llevel_24_80082A6C:
/* 5DFD79C 80082A6C 02000524 */  addiu      $a1, $zero, 0x2
/* 5DFD7A0 80082A70 AFEE000C */  jal        func_8003BABC
/* 5DFD7A4 80082A74 21300000 */   addu      $a2, $zero, $zero
/* 5DFD7A8 80082A78 0F000224 */  addiu      $v0, $zero, 0xF
/* 5DFD7AC 80082A7C 480002A2 */  sb         $v0, 0x48($s0)
/* 5DFD7B0 80082A80 0C0020AE */  sw         $zero, 0xC($s1)
/* 5DFD7B4 80082A84 100020A6 */  sh         $zero, 0x10($s1)
.Llevel_24_80082A88:
/* 5DFD7B8 80082A88 21880000 */  addu       $s1, $zero, $zero
/* 5DFD7BC 80082A8C 01001424 */  addiu      $s4, $zero, 0x1
/* 5DFD7C0 80082A90 2000B327 */  addiu      $s3, $sp, 0x20
.Llevel_24_80082A94:
/* 5DFD7C4 80082A94 0780023C */  lui        $v0, %hi(D_8006C578)
/* 5DFD7C8 80082A98 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 5DFD7CC 80082A9C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 5DFD7D0 80082AA0 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 5DFD7D4 80082AA4 00000000 */  nop
/* 5DFD7D8 80082AA8 23104300 */  subu       $v0, $v0, $v1
/* 5DFD7DC 80082AAC 15004228 */  slti       $v0, $v0, 0x15
/* 5DFD7E0 80082AB0 3E004014 */  bnez       $v0, .Llevel_24_80082BAC
/* 5DFD7E4 80082AB4 21204002 */   addu      $a0, $s2, $zero
/* 5DFD7E8 80082AB8 08000424 */  addiu      $a0, $zero, 0x8
/* 5DFD7EC 80082ABC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5DFD7F0 80082AC0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5DFD7F4 80082AC4 00000000 */  nop
/* 5DFD7F8 80082AC8 09F84000 */  jalr       $v0
/* 5DFD7FC 80082ACC 21284002 */   addu      $a1, $s2, $zero
/* 5DFD800 80082AD0 21804000 */  addu       $s0, $v0, $zero
/* 5DFD804 80082AD4 31000012 */  beqz       $s0, .Llevel_24_80082B9C
/* 5DFD808 80082AD8 2C000224 */   addiu     $v0, $zero, 0x2C
/* 5DFD80C 80082ADC 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 5DFD810 80082AE0 3F000224 */  addiu      $v0, $zero, 0x3F
/* 5DFD814 80082AE4 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 5DFD818 80082AE8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 5DFD81C 80082AEC 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 5DFD820 80082AF0 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 5DFD824 80082AF4 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 5DFD828 80082AF8 13003412 */  beq        $s1, $s4, .Llevel_24_80082B48
/* 5DFD82C 80082AFC 460002A2 */   sb        $v0, 0x46($s0)
/* 5DFD830 80082B00 0200222A */  slti       $v0, $s1, 0x2
/* 5DFD834 80082B04 05004010 */  beqz       $v0, .Llevel_24_80082B1C
/* 5DFD838 80082B08 00000000 */   nop
/* 5DFD83C 80082B0C 08002012 */  beqz       $s1, .Llevel_24_80082B30
/* 5DFD840 80082B10 A6010224 */   addiu     $v0, $zero, 0x1A6
/* 5DFD844 80082B14 DF0A0208 */  j          .Llevel_24_80082B7C
/* 5DFD848 80082B18 20004426 */   addiu     $a0, $s2, 0x20
.Llevel_24_80082B1C:
/* 5DFD84C 80082B1C 02000224 */  addiu      $v0, $zero, 0x2
/* 5DFD850 80082B20 0F002212 */  beq        $s1, $v0, .Llevel_24_80082B60
/* 5DFD854 80082B24 0A000224 */   addiu     $v0, $zero, 0xA
/* 5DFD858 80082B28 DF0A0208 */  j          .Llevel_24_80082B7C
/* 5DFD85C 80082B2C 20004426 */   addiu     $a0, $s2, 0x20
.Llevel_24_80082B30:
/* 5DFD860 80082B30 3C0014A2 */  sb         $s4, 0x3C($s0)
/* 5DFD864 80082B34 2000A2AF */  sw         $v0, 0x20($sp)
/* 5DFD868 80082B38 32000224 */  addiu      $v0, $zero, 0x32
/* 5DFD86C 80082B3C 2400A2AF */  sw         $v0, 0x24($sp)
/* 5DFD870 80082B40 DD0A0208 */  j          .Llevel_24_80082B74
/* 5DFD874 80082B44 80010224 */   addiu     $v0, $zero, 0x180
.Llevel_24_80082B48:
/* 5DFD878 80082B48 74FF0224 */  addiu      $v0, $zero, -0x8C
/* 5DFD87C 80082B4C 3C0011A2 */  sb         $s1, 0x3C($s0)
/* 5DFD880 80082B50 2400A2AF */  sw         $v0, 0x24($sp)
/* 5DFD884 80082B54 00040224 */  addiu      $v0, $zero, 0x400
/* 5DFD888 80082B58 DD0A0208 */  j          .Llevel_24_80082B74
/* 5DFD88C 80082B5C 2000A0AF */   sw        $zero, 0x20($sp)
.Llevel_24_80082B60:
/* 5DFD890 80082B60 3C0011A2 */  sb         $s1, 0x3C($s0)
/* 5DFD894 80082B64 2000A2AF */  sw         $v0, 0x20($sp)
/* 5DFD898 80082B68 B8FE0224 */  addiu      $v0, $zero, -0x148
/* 5DFD89C 80082B6C 2400A2AF */  sw         $v0, 0x24($sp)
/* 5DFD8A0 80082B70 00020224 */  addiu      $v0, $zero, 0x200
.Llevel_24_80082B74:
/* 5DFD8A4 80082B74 2800A2AF */  sw         $v0, 0x28($sp)
/* 5DFD8A8 80082B78 20004426 */  addiu      $a0, $s2, 0x20
.Llevel_24_80082B7C:
/* 5DFD8AC 80082B7C 21286002 */  addu       $a1, $s3, $zero
/* 5DFD8B0 80082B80 5B3B010C */  jal        func_8004ED6C
/* 5DFD8B4 80082B84 21306002 */   addu      $a2, $s3, $zero
/* 5DFD8B8 80082B88 0C000426 */  addiu      $a0, $s0, 0xC
/* 5DFD8BC 80082B8C 21288000 */  addu       $a1, $a0, $zero
/* 5DFD8C0 80082B90 653C010C */  jal        func_8004F194
/* 5DFD8C4 80082B94 21306002 */   addu      $a2, $s3, $zero
/* 5DFD8C8 80082B98 2800A0AF */  sw         $zero, 0x28($sp)
.Llevel_24_80082B9C:
/* 5DFD8CC 80082B9C 01003126 */  addiu      $s1, $s1, 0x1
/* 5DFD8D0 80082BA0 0300222A */  slti       $v0, $s1, 0x3
/* 5DFD8D4 80082BA4 BBFF4014 */  bnez       $v0, .Llevel_24_80082A94
/* 5DFD8D8 80082BA8 21204002 */   addu      $a0, $s2, $zero
.Llevel_24_80082BAC:
/* 5DFD8DC 80082BAC 21280000 */  addu       $a1, $zero, $zero
/* 5DFD8E0 80082BB0 AFEE000C */  jal        func_8003BABC
/* 5DFD8E4 80082BB4 21300000 */   addu      $a2, $zero, $zero
/* 5DFD8E8 80082BB8 80EE000C */  jal        func_8003BA00
/* 5DFD8EC 80082BBC 21204002 */   addu      $a0, $s2, $zero
/* 5DFD8F0 80082BC0 C656010C */  jal        func_80055B18
/* 5DFD8F4 80082BC4 21204002 */   addu      $a0, $s2, $zero
.Llevel_24_80082BC8:
/* 5DFD8F8 80082BC8 4400BF8F */  lw         $ra, 0x44($sp)
/* 5DFD8FC 80082BCC 4000B48F */  lw         $s4, 0x40($sp)
/* 5DFD900 80082BD0 3C00B38F */  lw         $s3, 0x3C($sp)
/* 5DFD904 80082BD4 3800B28F */  lw         $s2, 0x38($sp)
/* 5DFD908 80082BD8 3400B18F */  lw         $s1, 0x34($sp)
/* 5DFD90C 80082BDC 3000B08F */  lw         $s0, 0x30($sp)
/* 5DFD910 80082BE0 4800BD27 */  addiu      $sp, $sp, 0x48
/* 5DFD914 80082BE4 0800E003 */  jr         $ra
/* 5DFD918 80082BE8 00000000 */   nop
.size MobyUpdate_13_level_24, . - MobyUpdate_13_level_24
