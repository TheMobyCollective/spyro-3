.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_399_level_37
/* 7AA76B8 8007B988 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 7AA76BC 8007B98C 2800B0AF */  sw         $s0, 0x28($sp)
/* 7AA76C0 8007B990 21808000 */  addu       $s0, $a0, $zero
/* 7AA76C4 8007B994 0780023C */  lui        $v0, %hi(D_8006C550)
/* 7AA76C8 8007B998 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 7AA76CC 8007B99C 01000324 */  addiu      $v1, $zero, 0x1
/* 7AA76D0 8007B9A0 3400BFAF */  sw         $ra, 0x34($sp)
/* 7AA76D4 8007B9A4 3000B2AF */  sw         $s2, 0x30($sp)
/* 7AA76D8 8007B9A8 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 7AA76DC 8007B9AC 48000492 */  lbu        $a0, 0x48($s0)
/* 7AA76E0 8007B9B0 0000118E */  lw         $s1, 0x0($s0)
/* 7AA76E4 8007B9B4 0000528C */  lw         $s2, 0x0($v0)
/* 7AA76E8 8007B9B8 3B008310 */  beq        $a0, $v1, .Llevel_37_8007BAA8
/* 7AA76EC 8007B9BC 02008228 */   slti      $v0, $a0, 0x2
/* 7AA76F0 8007B9C0 05004010 */  beqz       $v0, .Llevel_37_8007B9D8
/* 7AA76F4 8007B9C4 00000000 */   nop
/* 7AA76F8 8007B9C8 08008010 */  beqz       $a0, .Llevel_37_8007B9EC
/* 7AA76FC 8007B9CC 01000424 */   addiu     $a0, $zero, 0x1
/* 7AA7700 8007B9D0 3FEF0108 */  j          .Llevel_37_8007BCFC
/* 7AA7704 8007B9D4 00000000 */   nop
.Llevel_37_8007B9D8:
/* 7AA7708 8007B9D8 02000224 */  addiu      $v0, $zero, 0x2
/* 7AA770C 8007B9DC 8E008210 */  beq        $a0, $v0, .Llevel_37_8007BC18
/* 7AA7710 8007B9E0 00000000 */   nop
/* 7AA7714 8007B9E4 3FEF0108 */  j          .Llevel_37_8007BCFC
/* 7AA7718 8007B9E8 00000000 */   nop
.Llevel_37_8007B9EC:
/* 7AA771C 8007B9EC 30000224 */  addiu      $v0, $zero, 0x30
/* 7AA7720 8007B9F0 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 7AA7724 8007B9F4 4C000392 */  lbu        $v1, 0x4C($s0)
/* 7AA7728 8007B9F8 3F000224 */  addiu      $v0, $zero, 0x3F
/* 7AA772C 8007B9FC 410004A2 */  sb         $a0, 0x41($s0)
/* 7AA7730 8007BA00 4D0004A2 */  sb         $a0, 0x4D($s0)
/* 7AA7734 8007BA04 540000A2 */  sb         $zero, 0x54($s0)
/* 7AA7738 8007BA08 550000A2 */  sb         $zero, 0x55($s0)
/* 7AA773C 8007BA0C 560000A2 */  sb         $zero, 0x56($s0)
/* 7AA7740 8007BA10 570002A2 */  sb         $v0, 0x57($s0)
/* 7AA7744 8007BA14 4E0003A2 */  sb         $v1, 0x4E($s0)
/* 7AA7748 8007BA18 0400228E */  lw         $v0, 0x4($s1)
/* 7AA774C 8007BA1C 00000000 */  nop
/* 7AA7750 8007BA20 03004010 */  beqz       $v0, .Llevel_37_8007BA30
/* 7AA7754 8007BA24 5555033C */   lui       $v1, (0x55555556 >> 16)
/* 7AA7758 8007BA28 080000AE */  sw         $zero, 0x8($s0)
/* 7AA775C 8007BA2C 0400228E */  lw         $v0, 0x4($s1)
.Llevel_37_8007BA30:
/* 7AA7760 8007BA30 56556334 */  ori        $v1, $v1, (0x55555556 & 0xFFFF)
/* 7AA7764 8007BA34 00120200 */  sll        $v0, $v0, 8
/* 7AA7768 8007BA38 18004300 */  mult       $v0, $v1
/* 7AA776C 8007BA3C C3170200 */  sra        $v0, $v0, 31
/* 7AA7770 8007BA40 10300000 */  mfhi       $a2
/* 7AA7774 8007BA44 2310C200 */  subu       $v0, $a2, $v0
/* 7AA7778 8007BA48 460002A2 */  sb         $v0, 0x46($s0)
/* 7AA777C 8007BA4C 0400238E */  lw         $v1, 0x4($s1)
/* 7AA7780 8007BA50 480004A2 */  sb         $a0, 0x48($s0)
/* 7AA7784 8007BA54 80100300 */  sll        $v0, $v1, 2
/* 7AA7788 8007BA58 21104300 */  addu       $v0, $v0, $v1
/* 7AA778C 8007BA5C 00190200 */  sll        $v1, $v0, 4
/* 7AA7790 8007BA60 23186200 */  subu       $v1, $v1, $v0
/* 7AA7794 8007BA64 1400028E */  lw         $v0, 0x14($s0)
/* 7AA7798 8007BA68 C0180300 */  sll        $v1, $v1, 3
/* 7AA779C 8007BA6C 21104300 */  addu       $v0, $v0, $v1
/* 7AA77A0 8007BA70 140002AE */  sw         $v0, 0x14($s0)
/* 7AA77A4 8007BA74 0000228E */  lw         $v0, 0x0($s1)
/* 7AA77A8 8007BA78 00000000 */  nop
/* 7AA77AC 8007BA7C 02004014 */  bnez       $v0, .Llevel_37_8007BA88
/* 7AA77B0 8007BA80 40000224 */   addiu     $v0, $zero, 0x40
/* 7AA77B4 8007BA84 80000224 */  addiu      $v0, $zero, 0x80
.Llevel_37_8007BA88:
/* 7AA77B8 8007BA88 080022A6 */  sh         $v0, 0x8($s1)
/* 7AA77BC 8007BA8C D40040AE */  sw         $zero, 0xD4($s2)
/* 7AA77C0 8007BA90 0400238E */  lw         $v1, 0x4($s1)
/* 7AA77C4 8007BA94 00000000 */  nop
/* 7AA77C8 8007BA98 40100300 */  sll        $v0, $v1, 1
/* 7AA77CC 8007BA9C 21104300 */  addu       $v0, $v0, $v1
/* 7AA77D0 8007BAA0 40100200 */  sll        $v0, $v0, 1
/* 7AA77D4 8007BAA4 0A0022A6 */  sh         $v0, 0xA($s1)
.Llevel_37_8007BAA8:
/* 7AA77D8 8007BAA8 0A002426 */  addiu      $a0, $s1, 0xA
/* 7AA77DC 8007BAAC 69D6000C */  jal        func_800359A4
/* 7AA77E0 8007BAB0 02000524 */   addiu     $a1, $zero, 0x2
/* 7AA77E4 8007BAB4 91004010 */  beqz       $v0, .Llevel_37_8007BCFC
/* 7AA77E8 8007BAB8 00000000 */   nop
/* 7AA77EC 8007BABC 0000228E */  lw         $v0, 0x0($s1)
/* 7AA77F0 8007BAC0 00000000 */  nop
/* 7AA77F4 8007BAC4 2B004014 */  bnez       $v0, .Llevel_37_8007BB74
/* 7AA77F8 8007BAC8 00000000 */   nop
/* 7AA77FC 8007BACC 0780023C */  lui        $v0, %hi(D_8006C648)
/* 7AA7800 8007BAD0 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 7AA7804 8007BAD4 54000392 */  lbu        $v1, 0x54($s0)
/* 7AA7808 8007BAD8 00000000 */  nop
/* 7AA780C 8007BADC 21186200 */  addu       $v1, $v1, $v0
/* 7AA7810 8007BAE0 540003A2 */  sb         $v1, 0x54($s0)
/* 7AA7814 8007BAE4 08002296 */  lhu        $v0, 0x8($s1)
/* 7AA7818 8007BAE8 FF006330 */  andi       $v1, $v1, 0xFF
/* 7AA781C 8007BAEC 00140200 */  sll        $v0, $v0, 16
/* 7AA7820 8007BAF0 83140200 */  sra        $v0, $v0, 18
/* 7AA7824 8007BAF4 2A184300 */  slt        $v1, $v0, $v1
/* 7AA7828 8007BAF8 02006010 */  beqz       $v1, .Llevel_37_8007BB04
/* 7AA782C 8007BAFC 00000000 */   nop
/* 7AA7830 8007BB00 540002A2 */  sb         $v0, 0x54($s0)
.Llevel_37_8007BB04:
/* 7AA7834 8007BB04 0780023C */  lui        $v0, %hi(D_8006C648)
/* 7AA7838 8007BB08 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 7AA783C 8007BB0C 55000392 */  lbu        $v1, 0x55($s0)
/* 7AA7840 8007BB10 00000000 */  nop
/* 7AA7844 8007BB14 21186200 */  addu       $v1, $v1, $v0
/* 7AA7848 8007BB18 550003A2 */  sb         $v1, 0x55($s0)
/* 7AA784C 8007BB1C 08002296 */  lhu        $v0, 0x8($s1)
/* 7AA7850 8007BB20 FF006330 */  andi       $v1, $v1, 0xFF
/* 7AA7854 8007BB24 00140200 */  sll        $v0, $v0, 16
/* 7AA7858 8007BB28 83140200 */  sra        $v0, $v0, 18
/* 7AA785C 8007BB2C 2A184300 */  slt        $v1, $v0, $v1
/* 7AA7860 8007BB30 02006010 */  beqz       $v1, .Llevel_37_8007BB3C
/* 7AA7864 8007BB34 00000000 */   nop
/* 7AA7868 8007BB38 550002A2 */  sb         $v0, 0x55($s0)
.Llevel_37_8007BB3C:
/* 7AA786C 8007BB3C 0780023C */  lui        $v0, %hi(D_8006C648)
/* 7AA7870 8007BB40 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 7AA7874 8007BB44 56000392 */  lbu        $v1, 0x56($s0)
/* 7AA7878 8007BB48 80100200 */  sll        $v0, $v0, 2
/* 7AA787C 8007BB4C 21186200 */  addu       $v1, $v1, $v0
/* 7AA7880 8007BB50 560003A2 */  sb         $v1, 0x56($s0)
/* 7AA7884 8007BB54 08002286 */  lh         $v0, 0x8($s1)
/* 7AA7888 8007BB58 FF006330 */  andi       $v1, $v1, 0xFF
/* 7AA788C 8007BB5C 21204000 */  addu       $a0, $v0, $zero
/* 7AA7890 8007BB60 2A104300 */  slt        $v0, $v0, $v1
/* 7AA7894 8007BB64 65004010 */  beqz       $v0, .Llevel_37_8007BCFC
/* 7AA7898 8007BB68 00000000 */   nop
/* 7AA789C 8007BB6C 3FEF0108 */  j          .Llevel_37_8007BCFC
/* 7AA78A0 8007BB70 560004A2 */   sb        $a0, 0x56($s0)
.Llevel_37_8007BB74:
/* 7AA78A4 8007BB74 0780023C */  lui        $v0, %hi(D_8006C648)
/* 7AA78A8 8007BB78 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 7AA78AC 8007BB7C 54000392 */  lbu        $v1, 0x54($s0)
/* 7AA78B0 8007BB80 80100200 */  sll        $v0, $v0, 2
/* 7AA78B4 8007BB84 21186200 */  addu       $v1, $v1, $v0
/* 7AA78B8 8007BB88 540003A2 */  sb         $v1, 0x54($s0)
/* 7AA78BC 8007BB8C 08002286 */  lh         $v0, 0x8($s1)
/* 7AA78C0 8007BB90 FF006330 */  andi       $v1, $v1, 0xFF
/* 7AA78C4 8007BB94 21204000 */  addu       $a0, $v0, $zero
/* 7AA78C8 8007BB98 2A104300 */  slt        $v0, $v0, $v1
/* 7AA78CC 8007BB9C 02004010 */  beqz       $v0, .Llevel_37_8007BBA8
/* 7AA78D0 8007BBA0 00000000 */   nop
/* 7AA78D4 8007BBA4 540004A2 */  sb         $a0, 0x54($s0)
.Llevel_37_8007BBA8:
/* 7AA78D8 8007BBA8 0780023C */  lui        $v0, %hi(D_8006C648)
/* 7AA78DC 8007BBAC 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 7AA78E0 8007BBB0 55000392 */  lbu        $v1, 0x55($s0)
/* 7AA78E4 8007BBB4 80100200 */  sll        $v0, $v0, 2
/* 7AA78E8 8007BBB8 21186200 */  addu       $v1, $v1, $v0
/* 7AA78EC 8007BBBC 550003A2 */  sb         $v1, 0x55($s0)
/* 7AA78F0 8007BBC0 08002286 */  lh         $v0, 0x8($s1)
/* 7AA78F4 8007BBC4 FF006330 */  andi       $v1, $v1, 0xFF
/* 7AA78F8 8007BBC8 21204000 */  addu       $a0, $v0, $zero
/* 7AA78FC 8007BBCC 2A104300 */  slt        $v0, $v0, $v1
/* 7AA7900 8007BBD0 02004010 */  beqz       $v0, .Llevel_37_8007BBDC
/* 7AA7904 8007BBD4 00000000 */   nop
/* 7AA7908 8007BBD8 550004A2 */  sb         $a0, 0x55($s0)
.Llevel_37_8007BBDC:
/* 7AA790C 8007BBDC 0780023C */  lui        $v0, %hi(D_8006C648)
/* 7AA7910 8007BBE0 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 7AA7914 8007BBE4 56000392 */  lbu        $v1, 0x56($s0)
/* 7AA7918 8007BBE8 00000000 */  nop
/* 7AA791C 8007BBEC 21186200 */  addu       $v1, $v1, $v0
/* 7AA7920 8007BBF0 560003A2 */  sb         $v1, 0x56($s0)
/* 7AA7924 8007BBF4 08002296 */  lhu        $v0, 0x8($s1)
/* 7AA7928 8007BBF8 FF006330 */  andi       $v1, $v1, 0xFF
/* 7AA792C 8007BBFC 00140200 */  sll        $v0, $v0, 16
/* 7AA7930 8007BC00 83140200 */  sra        $v0, $v0, 18
/* 7AA7934 8007BC04 2A184300 */  slt        $v1, $v0, $v1
/* 7AA7938 8007BC08 3C006010 */  beqz       $v1, .Llevel_37_8007BCFC
/* 7AA793C 8007BC0C 00000000 */   nop
/* 7AA7940 8007BC10 3FEF0108 */  j          .Llevel_37_8007BCFC
/* 7AA7944 8007BC14 560002A2 */   sb        $v0, 0x56($s0)
.Llevel_37_8007BC18:
/* 7AA7948 8007BC18 0000228E */  lw         $v0, 0x0($s1)
/* 7AA794C 8007BC1C 00000000 */  nop
/* 7AA7950 8007BC20 1E004014 */  bnez       $v0, .Llevel_37_8007BC9C
/* 7AA7954 8007BC24 00000000 */   nop
/* 7AA7958 8007BC28 0780033C */  lui        $v1, %hi(D_8006C648)
/* 7AA795C 8007BC2C 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 7AA7960 8007BC30 54000292 */  lbu        $v0, 0x54($s0)
/* 7AA7964 8007BC34 00000000 */  nop
/* 7AA7968 8007BC38 23104300 */  subu       $v0, $v0, $v1
/* 7AA796C 8007BC3C 540002A2 */  sb         $v0, 0x54($s0)
/* 7AA7970 8007BC40 FF004230 */  andi       $v0, $v0, 0xFF
/* 7AA7974 8007BC44 8100422C */  sltiu      $v0, $v0, 0x81
/* 7AA7978 8007BC48 02004014 */  bnez       $v0, .Llevel_37_8007BC54
/* 7AA797C 8007BC4C 00000000 */   nop
/* 7AA7980 8007BC50 540000A2 */  sb         $zero, 0x54($s0)
.Llevel_37_8007BC54:
/* 7AA7984 8007BC54 0780033C */  lui        $v1, %hi(D_8006C648)
/* 7AA7988 8007BC58 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 7AA798C 8007BC5C 55000292 */  lbu        $v0, 0x55($s0)
/* 7AA7990 8007BC60 00000000 */  nop
/* 7AA7994 8007BC64 23104300 */  subu       $v0, $v0, $v1
/* 7AA7998 8007BC68 550002A2 */  sb         $v0, 0x55($s0)
/* 7AA799C 8007BC6C FF004230 */  andi       $v0, $v0, 0xFF
/* 7AA79A0 8007BC70 8100422C */  sltiu      $v0, $v0, 0x81
/* 7AA79A4 8007BC74 02004014 */  bnez       $v0, .Llevel_37_8007BC80
/* 7AA79A8 8007BC78 00000000 */   nop
/* 7AA79AC 8007BC7C 550000A2 */  sb         $zero, 0x55($s0)
.Llevel_37_8007BC80:
/* 7AA79B0 8007BC80 0780033C */  lui        $v1, %hi(D_8006C648)
/* 7AA79B4 8007BC84 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 7AA79B8 8007BC88 56000292 */  lbu        $v0, 0x56($s0)
/* 7AA79BC 8007BC8C 80180300 */  sll        $v1, $v1, 2
/* 7AA79C0 8007BC90 23104300 */  subu       $v0, $v0, $v1
/* 7AA79C4 8007BC94 37EF0108 */  j          .Llevel_37_8007BCDC
/* 7AA79C8 8007BC98 560002A2 */   sb        $v0, 0x56($s0)
.Llevel_37_8007BC9C:
/* 7AA79CC 8007BC9C 0780033C */  lui        $v1, %hi(D_8006C648)
/* 7AA79D0 8007BCA0 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 7AA79D4 8007BCA4 54000292 */  lbu        $v0, 0x54($s0)
/* 7AA79D8 8007BCA8 80180300 */  sll        $v1, $v1, 2
/* 7AA79DC 8007BCAC 23104300 */  subu       $v0, $v0, $v1
/* 7AA79E0 8007BCB0 540002A2 */  sb         $v0, 0x54($s0)
/* 7AA79E4 8007BCB4 FF004230 */  andi       $v0, $v0, 0xFF
/* 7AA79E8 8007BCB8 8100422C */  sltiu      $v0, $v0, 0x81
/* 7AA79EC 8007BCBC 0B004010 */  beqz       $v0, .Llevel_37_8007BCEC
/* 7AA79F0 8007BCC0 00000000 */   nop
/* 7AA79F4 8007BCC4 0780033C */  lui        $v1, %hi(D_8006C648)
/* 7AA79F8 8007BCC8 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 7AA79FC 8007BCCC 55000292 */  lbu        $v0, 0x55($s0)
/* 7AA7A00 8007BCD0 80180300 */  sll        $v1, $v1, 2
/* 7AA7A04 8007BCD4 23104300 */  subu       $v0, $v0, $v1
/* 7AA7A08 8007BCD8 550002A2 */  sb         $v0, 0x55($s0)
.Llevel_37_8007BCDC:
/* 7AA7A0C 8007BCDC FF004230 */  andi       $v0, $v0, 0xFF
/* 7AA7A10 8007BCE0 8100422C */  sltiu      $v0, $v0, 0x81
/* 7AA7A14 8007BCE4 05004014 */  bnez       $v0, .Llevel_37_8007BCFC
/* 7AA7A18 8007BCE8 00000000 */   nop
.Llevel_37_8007BCEC:
/* 7AA7A1C 8007BCEC C656010C */  jal        func_80055B18
/* 7AA7A20 8007BCF0 21200002 */   addu      $a0, $s0, $zero
/* 7AA7A24 8007BCF4 60EF0108 */  j          .Llevel_37_8007BD80
/* 7AA7A28 8007BCF8 00000000 */   nop
.Llevel_37_8007BCFC:
/* 7AA7A2C 8007BCFC D400428E */  lw         $v0, 0xD4($s2)
/* 7AA7A30 8007BD00 00000000 */  nop
/* 7AA7A34 8007BD04 12004010 */  beqz       $v0, .Llevel_37_8007BD50
/* 7AA7A38 8007BD08 00000000 */   nop
/* 7AA7A3C 8007BD0C 21280000 */  addu       $a1, $zero, $zero
.Llevel_37_8007BD10:
/* 7AA7A40 8007BD10 21200502 */  addu       $a0, $s0, $a1
/* 7AA7A44 8007BD14 0100A524 */  addiu      $a1, $a1, 0x1
/* 7AA7A48 8007BD18 D400428E */  lw         $v0, 0xD4($s2)
/* 7AA7A4C 8007BD1C 54008390 */  lbu        $v1, 0x54($a0)
/* 7AA7A50 8007BD20 40100200 */  sll        $v0, $v0, 1
/* 7AA7A54 8007BD24 21186200 */  addu       $v1, $v1, $v0
/* 7AA7A58 8007BD28 0300A228 */  slti       $v0, $a1, 0x3
/* 7AA7A5C 8007BD2C F8FF4014 */  bnez       $v0, .Llevel_37_8007BD10
/* 7AA7A60 8007BD30 540083A0 */   sb        $v1, 0x54($a0)
/* 7AA7A64 8007BD34 0400228E */  lw         $v0, 0x4($s1)
/* 7AA7A68 8007BD38 00000000 */  nop
/* 7AA7A6C 8007BD3C 07004014 */  bnez       $v0, .Llevel_37_8007BD5C
/* 7AA7A70 8007BD40 01004230 */   andi      $v0, $v0, 0x1
/* 7AA7A74 8007BD44 D4004426 */  addiu      $a0, $s2, 0xD4
/* 7AA7A78 8007BD48 69D6000C */  jal        func_800359A4
/* 7AA7A7C 8007BD4C 04000524 */   addiu     $a1, $zero, 0x4
.Llevel_37_8007BD50:
/* 7AA7A80 8007BD50 0400228E */  lw         $v0, 0x4($s1)
/* 7AA7A84 8007BD54 00000000 */  nop
/* 7AA7A88 8007BD58 01004230 */  andi       $v0, $v0, 0x1
.Llevel_37_8007BD5C:
/* 7AA7A8C 8007BD5C 04004010 */  beqz       $v0, .Llevel_37_8007BD70
/* 7AA7A90 8007BD60 00000000 */   nop
/* 7AA7A94 8007BD64 46000292 */  lbu        $v0, 0x46($s0)
/* 7AA7A98 8007BD68 5FEF0108 */  j          .Llevel_37_8007BD7C
/* 7AA7A9C 8007BD6C 07004224 */   addiu     $v0, $v0, 0x7
.Llevel_37_8007BD70:
/* 7AA7AA0 8007BD70 46000292 */  lbu        $v0, 0x46($s0)
/* 7AA7AA4 8007BD74 00000000 */  nop
/* 7AA7AA8 8007BD78 F9FF4224 */  addiu      $v0, $v0, -0x7
.Llevel_37_8007BD7C:
/* 7AA7AAC 8007BD7C 460002A2 */  sb         $v0, 0x46($s0)
.Llevel_37_8007BD80:
/* 7AA7AB0 8007BD80 3400BF8F */  lw         $ra, 0x34($sp)
/* 7AA7AB4 8007BD84 3000B28F */  lw         $s2, 0x30($sp)
/* 7AA7AB8 8007BD88 2C00B18F */  lw         $s1, 0x2C($sp)
/* 7AA7ABC 8007BD8C 2800B08F */  lw         $s0, 0x28($sp)
/* 7AA7AC0 8007BD90 3800BD27 */  addiu      $sp, $sp, 0x38
/* 7AA7AC4 8007BD94 0800E003 */  jr         $ra
/* 7AA7AC8 8007BD98 00000000 */   nop
.size MobyUpdate_399_level_37, . - MobyUpdate_399_level_37
