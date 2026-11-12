.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_170_level_24
/* 5DF6524 8007B7F4 0780023C */  lui        $v0, %hi(D_8006E040)
/* 5DF6528 8007B7F8 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 5DF652C 8007B7FC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 5DF6530 8007B800 1000B0AF */  sw         $s0, 0x10($sp)
/* 5DF6534 8007B804 21808000 */  addu       $s0, $a0, $zero
/* 5DF6538 8007B808 1800BFAF */  sw         $ra, 0x18($sp)
/* 5DF653C 8007B80C 1400B1AF */  sw         $s1, 0x14($sp)
/* 5DF6540 8007B810 00140200 */  sll        $v0, $v0, 16
/* 5DF6544 8007B814 03150200 */  sra        $v0, $v0, 20
/* 5DF6548 8007B818 80FF4224 */  addiu      $v0, $v0, -0x80
/* 5DF654C 8007B81C 460002A2 */  sb         $v0, 0x46($s0)
/* 5DF6550 8007B820 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 5DF6554 8007B824 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 5DF6558 8007B828 0000118E */  lw         $s1, 0x0($s0)
/* 5DF655C 8007B82C 02110200 */  srl        $v0, $v0, 4
/* 5DF6560 8007B830 450002A2 */  sb         $v0, 0x45($s0)
/* 5DF6564 8007B834 00002392 */  lbu        $v1, 0x0($s1)
/* 5DF6568 8007B838 01000224 */  addiu      $v0, $zero, 0x1
/* 5DF656C 8007B83C 3C006214 */  bne        $v1, $v0, .Llevel_24_8007B930
/* 5DF6570 8007B840 00000000 */   nop
/* 5DF6574 8007B844 0400238E */  lw         $v1, 0x4($s1)
/* 5DF6578 8007B848 00000000 */  nop
/* 5DF657C 8007B84C 48006290 */  lbu        $v0, 0x48($v1)
/* 5DF6580 8007B850 00000000 */  nop
/* 5DF6584 8007B854 8000422C */  sltiu      $v0, $v0, 0x80
/* 5DF6588 8007B858 06004010 */  beqz       $v0, .Llevel_24_8007B874
/* 5DF658C 8007B85C 00000000 */   nop
/* 5DF6590 8007B860 36006384 */  lh         $v1, 0x36($v1)
/* 5DF6594 8007B864 01002292 */  lbu        $v0, 0x1($s1)
/* 5DF6598 8007B868 00000000 */  nop
/* 5DF659C 8007B86C 05006210 */  beq        $v1, $v0, .Llevel_24_8007B884
/* 5DF65A0 8007B870 78000224 */   addiu     $v0, $zero, 0x78
.Llevel_24_8007B874:
/* 5DF65A4 8007B874 C656010C */  jal        func_80055B18
/* 5DF65A8 8007B878 21200002 */   addu      $a0, $s0, $zero
/* 5DF65AC 8007B87C 4CEE0108 */  j          .Llevel_24_8007B930
/* 5DF65B0 8007B880 00000000 */   nop
.Llevel_24_8007B884:
/* 5DF65B4 8007B884 21006214 */  bne        $v1, $v0, .Llevel_24_8007B90C
/* 5DF65B8 8007B888 00000000 */   nop
/* 5DF65BC 8007B88C 0780033C */  lui        $v1, %hi(D_8006C648)
/* 5DF65C0 8007B890 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 5DF65C4 8007B894 4F000292 */  lbu        $v0, 0x4F($s0)
/* 5DF65C8 8007B898 80180300 */  sll        $v1, $v1, 2
/* 5DF65CC 8007B89C 23104300 */  subu       $v0, $v0, $v1
/* 5DF65D0 8007B8A0 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 5DF65D4 8007B8A4 FF004230 */  andi       $v0, $v0, 0xFF
/* 5DF65D8 8007B8A8 1A00422C */  sltiu      $v0, $v0, 0x1A
/* 5DF65DC 8007B8AC 02004010 */  beqz       $v0, .Llevel_24_8007B8B8
/* 5DF65E0 8007B8B0 1A000224 */   addiu     $v0, $zero, 0x1A
/* 5DF65E4 8007B8B4 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_24_8007B8B8:
/* 5DF65E8 8007B8B8 0780023C */  lui        $v0, %hi(D_80070328 + 0x50)
/* 5DF65EC 8007B8BC 7803428C */  lw         $v0, %lo(D_80070328 + 0x50)($v0)
/* 5DF65F0 8007B8C0 00000000 */  nop
/* 5DF65F4 8007B8C4 F5FF4224 */  addiu      $v0, $v0, -0xB
/* 5DF65F8 8007B8C8 0200422C */  sltiu      $v0, $v0, 0x2
/* 5DF65FC 8007B8CC 07004010 */  beqz       $v0, .Llevel_24_8007B8EC
/* 5DF6600 8007B8D0 00000000 */   nop
/* 5DF6604 8007B8D4 0400228E */  lw         $v0, 0x4($s1)
/* 5DF6608 8007B8D8 00000000 */  nop
/* 5DF660C 8007B8DC 4D004290 */  lbu        $v0, 0x4D($v0)
/* 5DF6610 8007B8E0 00000000 */  nop
/* 5DF6614 8007B8E4 09004014 */  bnez       $v0, .Llevel_24_8007B90C
/* 5DF6618 8007B8E8 00000000 */   nop
.Llevel_24_8007B8EC:
/* 5DF661C 8007B8EC 0400228E */  lw         $v0, 0x4($s1)
/* 5DF6620 8007B8F0 00000000 */  nop
/* 5DF6624 8007B8F4 0000428C */  lw         $v0, 0x0($v0)
/* 5DF6628 8007B8F8 21200002 */  addu       $a0, $s0, $zero
/* 5DF662C 8007B8FC C656010C */  jal        func_80055B18
/* 5DF6630 8007B900 0A0040A0 */   sb        $zero, 0xA($v0)
/* 5DF6634 8007B904 4CEE0108 */  j          .Llevel_24_8007B930
/* 5DF6638 8007B908 00000000 */   nop
.Llevel_24_8007B90C:
/* 5DF663C 8007B90C 0400258E */  lw         $a1, 0x4($s1)
/* 5DF6640 8007B910 0C000426 */  addiu      $a0, $s0, 0xC
/* 5DF6644 8007B914 5E3C010C */  jal        func_8004F178
/* 5DF6648 8007B918 0C00A524 */   addiu     $a1, $a1, 0xC
/* 5DF664C 8007B91C 02002386 */  lh         $v1, 0x2($s1)
/* 5DF6650 8007B920 1400028E */  lw         $v0, 0x14($s0)
/* 5DF6654 8007B924 00000000 */  nop
/* 5DF6658 8007B928 21104300 */  addu       $v0, $v0, $v1
/* 5DF665C 8007B92C 140002AE */  sw         $v0, 0x14($s0)
.Llevel_24_8007B930:
/* 5DF6660 8007B930 1800BF8F */  lw         $ra, 0x18($sp)
/* 5DF6664 8007B934 1400B18F */  lw         $s1, 0x14($sp)
/* 5DF6668 8007B938 1000B08F */  lw         $s0, 0x10($sp)
/* 5DF666C 8007B93C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 5DF6670 8007B940 0800E003 */  jr         $ra
/* 5DF6674 8007B944 00000000 */   nop
.size MobyUpdate_170_level_24, . - MobyUpdate_170_level_24
