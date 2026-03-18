.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_24_8007B948
/* 5DF6678 8007B948 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 5DF667C 8007B94C 4C00B3AF */  sw         $s3, 0x4C($sp)
/* 5DF6680 8007B950 21988000 */  addu       $s3, $a0, $zero
/* 5DF6684 8007B954 02000224 */  addiu      $v0, $zero, 0x2
/* 5DF6688 8007B958 5C00BFAF */  sw         $ra, 0x5C($sp)
/* 5DF668C 8007B95C 5800B6AF */  sw         $s6, 0x58($sp)
/* 5DF6690 8007B960 5400B5AF */  sw         $s5, 0x54($sp)
/* 5DF6694 8007B964 5000B4AF */  sw         $s4, 0x50($sp)
/* 5DF6698 8007B968 4800B2AF */  sw         $s2, 0x48($sp)
/* 5DF669C 8007B96C 4400B1AF */  sw         $s1, 0x44($sp)
/* 5DF66A0 8007B970 4000B0AF */  sw         $s0, 0x40($sp)
/* 5DF66A4 8007B974 48006392 */  lbu        $v1, 0x48($s3)
/* 5DF66A8 8007B978 0000728E */  lw         $s2, 0x0($s3)
/* 5DF66AC 8007B97C A6006210 */  beq        $v1, $v0, .Llevel_24_8007BC18
/* 5DF66B0 8007B980 03006228 */   slti      $v0, $v1, 0x3
/* 5DF66B4 8007B984 05004010 */  beqz       $v0, .Llevel_24_8007B99C
/* 5DF66B8 8007B988 00000000 */   nop
/* 5DF66BC 8007B98C 08006010 */  beqz       $v1, .Llevel_24_8007B9B0
/* 5DF66C0 8007B990 21A80000 */   addu      $s5, $zero, $zero
/* 5DF66C4 8007B994 76EF0108 */  j          .Llevel_24_8007BDD8
/* 5DF66C8 8007B998 00000000 */   nop
.Llevel_24_8007B99C:
/* 5DF66CC 8007B99C 0A000224 */  addiu      $v0, $zero, 0xA
/* 5DF66D0 8007B9A0 54006210 */  beq        $v1, $v0, .Llevel_24_8007BAF4
/* 5DF66D4 8007B9A4 0C007126 */   addiu     $s1, $s3, 0xC
/* 5DF66D8 8007B9A8 76EF0108 */  j          .Llevel_24_8007BDD8
/* 5DF66DC 8007B9AC 00000000 */   nop
.Llevel_24_8007B9B0:
/* 5DF66E0 8007B9B0 02001624 */  addiu      $s6, $zero, 0x2
.Llevel_24_8007B9B4:
/* 5DF66E4 8007B9B4 0C00428E */  lw         $v0, 0xC($s2)
/* 5DF66E8 8007B9B8 40A01500 */  sll        $s4, $s5, 1
/* 5DF66EC 8007B9BC 21108202 */  addu       $v0, $s4, $v0
/* 5DF66F0 8007B9C0 01004490 */  lbu        $a0, 0x1($v0)
/* 5DF66F4 8007B9C4 993C010C */  jal        func_8004F264
/* 5DF66F8 8007B9C8 40000524 */   addiu     $a1, $zero, 0x40
/* 5DF66FC 8007B9CC 3C004228 */  slti       $v0, $v0, 0x3C
/* 5DF6700 8007B9D0 3E004010 */  beqz       $v0, .Llevel_24_8007BACC
/* 5DF6704 8007B9D4 00000000 */   nop
/* 5DF6708 8007B9D8 36006486 */  lh         $a0, 0x36($s3)
/* 5DF670C 8007B9DC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5DF6710 8007B9E0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5DF6714 8007B9E4 00000000 */  nop
/* 5DF6718 8007B9E8 09F84000 */  jalr       $v0
/* 5DF671C 8007B9EC 21286002 */   addu      $a1, $s3, $zero
/* 5DF6720 8007B9F0 21804000 */  addu       $s0, $v0, $zero
/* 5DF6724 8007B9F4 35000012 */  beqz       $s0, .Llevel_24_8007BACC
/* 5DF6728 8007B9F8 00000000 */   nop
/* 5DF672C 8007B9FC 3C000292 */  lbu        $v0, 0x3C($s0)
/* 5DF6730 8007BA00 0000118E */  lw         $s1, 0x0($s0)
/* 5DF6734 8007BA04 14005610 */  beq        $v0, $s6, .Llevel_24_8007BA58
/* 5DF6738 8007BA08 01000324 */   addiu     $v1, $zero, 0x1
/* 5DF673C 8007BA0C 36000286 */  lh         $v0, 0x36($s0)
/* 5DF6740 8007BA10 420000A2 */  sb         $zero, 0x42($s0)
/* 5DF6744 8007BA14 80100200 */  sll        $v0, $v0, 2
/* 5DF6748 8007BA18 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 5DF674C 8007BA1C 21082200 */  addu       $at, $at, $v0
/* 5DF6750 8007BA20 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 5DF6754 8007BA24 00000000 */  nop
/* 5DF6758 8007BA28 4400428C */  lw         $v0, 0x44($v0)
/* 5DF675C 8007BA2C 00000000 */  nop
/* 5DF6760 8007BA30 00004290 */  lbu        $v0, 0x0($v0)
/* 5DF6764 8007BA34 3C0016A2 */  sb         $s6, 0x3C($s0)
/* 5DF6768 8007BA38 3D0016A2 */  sb         $s6, 0x3D($s0)
/* 5DF676C 8007BA3C 3E0000A2 */  sb         $zero, 0x3E($s0)
/* 5DF6770 8007BA40 3F0003A2 */  sb         $v1, 0x3F($s0)
/* 5DF6774 8007BA44 0200422C */  sltiu      $v0, $v0, 0x2
/* 5DF6778 8007BA48 01004238 */  xori       $v0, $v0, 0x1
/* 5DF677C 8007BA4C 23100200 */  negu       $v0, $v0
/* 5DF6780 8007BA50 30004230 */  andi       $v0, $v0, 0x30
/* 5DF6784 8007BA54 400002A2 */  sb         $v0, 0x40($s0)
.Llevel_24_8007BA58:
/* 5DF6788 8007BA58 0C000426 */  addiu      $a0, $s0, 0xC
/* 5DF678C 8007BA5C 07000524 */  addiu      $a1, $zero, 0x7
/* 5DF6790 8007BA60 0A000624 */  addiu      $a2, $zero, 0xA
/* 5DF6794 8007BA64 4000073C */  lui        $a3, (0x4080E0 >> 16)
/* 5DF6798 8007BA68 1142010C */  jal        func_80050844
/* 5DF679C 8007BA6C E080E734 */   ori       $a3, $a3, (0x4080E0 & 0xFFFF)
/* 5DF67A0 8007BA70 080022AE */  sw         $v0, 0x8($s1)
/* 5DF67A4 8007BA74 0C00428E */  lw         $v0, 0xC($s2)
/* 5DF67A8 8007BA78 0780033C */  lui        $v1, %hi(D_8006E040)
/* 5DF67AC 8007BA7C 40E06394 */  lhu        $v1, %lo(D_8006E040)($v1)
/* 5DF67B0 8007BA80 21108202 */  addu       $v0, $s4, $v0
/* 5DF67B4 8007BA84 001C0300 */  sll        $v1, $v1, 16
/* 5DF67B8 8007BA88 00004290 */  lbu        $v0, 0x0($v0)
/* 5DF67BC 8007BA8C 031D0300 */  sra        $v1, $v1, 20
/* 5DF67C0 8007BA90 21104300 */  addu       $v0, $v0, $v1
/* 5DF67C4 8007BA94 40004224 */  addiu      $v0, $v0, 0x40
/* 5DF67C8 8007BA98 010022A2 */  sb         $v0, 0x1($s1)
/* 5DF67CC 8007BA9C 0C00428E */  lw         $v0, 0xC($s2)
/* 5DF67D0 8007BAA0 00000000 */  nop
/* 5DF67D4 8007BAA4 21108202 */  addu       $v0, $s4, $v0
/* 5DF67D8 8007BAA8 01004390 */  lbu        $v1, 0x1($v0)
/* 5DF67DC 8007BAAC 32000224 */  addiu      $v0, $zero, 0x32
/* 5DF67E0 8007BAB0 040022AE */  sw         $v0, 0x4($s1)
/* 5DF67E4 8007BAB4 C2010224 */  addiu      $v0, $zero, 0x1C2
/* 5DF67E8 8007BAB8 020022A6 */  sh         $v0, 0x2($s1)
/* 5DF67EC 8007BABC 9171010C */  jal        rand
/* 5DF67F0 8007BAC0 000023A2 */   sb        $v1, 0x0($s1)
/* 5DF67F4 8007BAC4 440002A2 */  sb         $v0, 0x44($s0)
/* 5DF67F8 8007BAC8 480016A2 */  sb         $s6, 0x48($s0)
.Llevel_24_8007BACC:
/* 5DF67FC 8007BACC 0100B526 */  addiu      $s5, $s5, 0x1
/* 5DF6800 8007BAD0 2000A22A */  slti       $v0, $s5, 0x20
/* 5DF6804 8007BAD4 B7FF4014 */  bnez       $v0, .Llevel_24_8007B9B4
/* 5DF6808 8007BAD8 21206002 */   addu      $a0, $s3, $zero
/* 5DF680C 8007BADC 21280000 */  addu       $a1, $zero, $zero
/* 5DF6810 8007BAE0 AFEE000C */  jal        func_8003BABC
/* 5DF6814 8007BAE4 21300000 */   addu      $a2, $zero, $zero
/* 5DF6818 8007BAE8 0A000224 */  addiu      $v0, $zero, 0xA
/* 5DF681C 8007BAEC 480062A2 */  sb         $v0, 0x48($s3)
/* 5DF6820 8007BAF0 0C007126 */  addiu      $s1, $s3, 0xC
.Llevel_24_8007BAF4:
/* 5DF6824 8007BAF4 21202002 */  addu       $a0, $s1, $zero
/* 5DF6828 8007BAF8 D0070524 */  addiu      $a1, $zero, 0x7D0
/* 5DF682C 8007BAFC 21300000 */  addu       $a2, $zero, $zero
/* 5DF6830 8007BB00 21380000 */  addu       $a3, $zero, $zero
/* 5DF6834 8007BB04 0300023C */  lui        $v0, (0x30000 >> 16)
/* 5DF6838 8007BB08 1000A2AF */  sw         $v0, 0x10($sp)
/* 5DF683C 8007BB0C 8C6E000C */  jal        func_8001BA30
/* 5DF6840 8007BB10 1400A0AF */   sw        $zero, 0x14($sp)
/* 5DF6844 8007BB14 21804000 */  addu       $s0, $v0, $zero
/* 5DF6848 8007BB18 09000012 */  beqz       $s0, .Llevel_24_8007BB40
/* 5DF684C 8007BB1C 21300000 */   addu      $a2, $zero, $zero
/* 5DF6850 8007BB20 0C00038E */  lw         $v1, 0xC($s0)
/* 5DF6854 8007BB24 0C00648E */  lw         $a0, 0xC($s3)
/* 5DF6858 8007BB28 1000028E */  lw         $v0, 0x10($s0)
/* 5DF685C 8007BB2C 1000658E */  lw         $a1, 0x10($s3)
/* 5DF6860 8007BB30 23206400 */  subu       $a0, $v1, $a0
/* 5DF6864 8007BB34 203A010C */  jal        func_8004E880
/* 5DF6868 8007BB38 23284500 */   subu      $a1, $v0, $a1
/* 5DF686C 8007BB3C 510002A2 */  sb         $v0, 0x51($s0)
.Llevel_24_8007BB40:
/* 5DF6870 8007BB40 21202002 */  addu       $a0, $s1, $zero
/* 5DF6874 8007BB44 B0040524 */  addiu      $a1, $zero, 0x4B0
/* 5DF6878 8007BB48 A270000C */  jal        func_8001C288
/* 5DF687C 8007BB4C 07000624 */   addiu     $a2, $zero, 0x7
/* 5DF6880 8007BB50 2A004010 */  beqz       $v0, .Llevel_24_8007BBFC
/* 5DF6884 8007BB54 21300000 */   addu      $a2, $zero, $zero
/* 5DF6888 8007BB58 0780033C */  lui        $v1, %hi(D_80070328)
/* 5DF688C 8007BB5C 2803638C */  lw         $v1, %lo(D_80070328)($v1)
/* 5DF6890 8007BB60 0C00648E */  lw         $a0, 0xC($s3)
/* 5DF6894 8007BB64 0780023C */  lui        $v0, %hi(D_80070328 + 4)
/* 5DF6898 8007BB68 2C03428C */  lw         $v0, %lo(D_80070328 + 4)($v0)
/* 5DF689C 8007BB6C 1000658E */  lw         $a1, 0x10($s3)
/* 5DF68A0 8007BB70 23206400 */  subu       $a0, $v1, $a0
/* 5DF68A4 8007BB74 203A010C */  jal        func_8004E880
/* 5DF68A8 8007BB78 23284500 */   subu      $a1, $v0, $a1
/* 5DF68AC 8007BB7C 0010033C */  lui        $v1, (0x10000400 >> 16)
/* 5DF68B0 8007BB80 00046334 */  ori        $v1, $v1, (0x10000400 & 0xFFFF)
/* 5DF68B4 8007BB84 FF004230 */  andi       $v0, $v0, 0xFF
/* 5DF68B8 8007BB88 0780013C */  lui        $at, %hi(D_80070328 + 0x298)
/* 5DF68BC 8007BB8C C00522AC */  sw         $v0, %lo(D_80070328 + 0x298)($at)
/* 5DF68C0 8007BB90 40100200 */  sll        $v0, $v0, 1
/* 5DF68C4 8007BB94 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 5DF68C8 8007BB98 340523AC */  sw         $v1, %lo(D_80070328 + 0x20C)($at)
/* 5DF68CC 8007BB9C 0680013C */  lui        $at, %hi(D_80065920)
/* 5DF68D0 8007BBA0 21082200 */  addu       $at, $at, $v0
/* 5DF68D4 8007BBA4 20592484 */  lh         $a0, %lo(D_80065920)($at)
/* 5DF68D8 8007BBA8 00000000 */  nop
/* 5DF68DC 8007BBAC C0180400 */  sll        $v1, $a0, 3
/* 5DF68E0 8007BBB0 21186400 */  addu       $v1, $v1, $a0
/* 5DF68E4 8007BBB4 80180300 */  sll        $v1, $v1, 2
/* 5DF68E8 8007BBB8 23186400 */  subu       $v1, $v1, $a0
/* 5DF68EC 8007BBBC 831A0300 */  sra        $v1, $v1, 10
/* 5DF68F0 8007BBC0 0780013C */  lui        $at, %hi(D_80070328 + 0x21C)
/* 5DF68F4 8007BBC4 440523AC */  sw         $v1, %lo(D_80070328 + 0x21C)($at)
/* 5DF68F8 8007BBC8 0680013C */  lui        $at, %hi(D_800658A0)
/* 5DF68FC 8007BBCC 21082200 */  addu       $at, $at, $v0
/* 5DF6900 8007BBD0 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 5DF6904 8007BBD4 28000224 */  addiu      $v0, $zero, 0x28
/* 5DF6908 8007BBD8 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 5DF690C 8007BBDC 4C0522AC */  sw         $v0, %lo(D_80070328 + 0x224)($at)
/* 5DF6910 8007BBE0 C0100300 */  sll        $v0, $v1, 3
/* 5DF6914 8007BBE4 21104300 */  addu       $v0, $v0, $v1
/* 5DF6918 8007BBE8 80100200 */  sll        $v0, $v0, 2
/* 5DF691C 8007BBEC 23104300 */  subu       $v0, $v0, $v1
/* 5DF6920 8007BBF0 83120200 */  sra        $v0, $v0, 10
/* 5DF6924 8007BBF4 0780013C */  lui        $at, %hi(D_80070328 + 0x220)
/* 5DF6928 8007BBF8 480522AC */  sw         $v0, %lo(D_80070328 + 0x220)($at)
.Llevel_24_8007BBFC:
/* 5DF692C 8007BBFC 0780023C */  lui        $v0, %hi(D_8006C770)
/* 5DF6930 8007BC00 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 5DF6934 8007BC04 00000000 */  nop
/* 5DF6938 8007BC08 73004010 */  beqz       $v0, .Llevel_24_8007BDD8
/* 5DF693C 8007BC0C 00000000 */   nop
/* 5DF6940 8007BC10 74EF0108 */  j          .Llevel_24_8007BDD0
/* 5DF6944 8007BC14 00000000 */   nop
.Llevel_24_8007BC18:
/* 5DF6948 8007BC18 1800A427 */  addiu      $a0, $sp, 0x18
/* 5DF694C 8007BC1C 0780023C */  lui        $v0, %hi(D_8006E040)
/* 5DF6950 8007BC20 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 5DF6954 8007BC24 0C007026 */  addiu      $s0, $s3, 0xC
/* 5DF6958 8007BC28 00140200 */  sll        $v0, $v0, 16
/* 5DF695C 8007BC2C 03150200 */  sra        $v0, $v0, 20
/* 5DF6960 8007BC30 80FF4224 */  addiu      $v0, $v0, -0x80
/* 5DF6964 8007BC34 460062A2 */  sb         $v0, 0x46($s3)
/* 5DF6968 8007BC38 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 5DF696C 8007BC3C 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 5DF6970 8007BC40 21280002 */  addu       $a1, $s0, $zero
/* 5DF6974 8007BC44 02110200 */  srl        $v0, $v0, 4
/* 5DF6978 8007BC48 5E3C010C */  jal        func_8004F178
/* 5DF697C 8007BC4C 450062A2 */   sb        $v0, 0x45($s3)
/* 5DF6980 8007BC50 01004292 */  lbu        $v0, 0x1($s2)
/* 5DF6984 8007BC54 00000000 */  nop
/* 5DF6988 8007BC58 40100200 */  sll        $v0, $v0, 1
/* 5DF698C 8007BC5C 0680013C */  lui        $at, %hi(D_80065920)
/* 5DF6990 8007BC60 21082200 */  addu       $at, $at, $v0
/* 5DF6994 8007BC64 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 5DF6998 8007BC68 02004286 */  lh         $v0, 0x2($s2)
/* 5DF699C 8007BC6C 00000000 */  nop
/* 5DF69A0 8007BC70 18006200 */  mult       $v1, $v0
/* 5DF69A4 8007BC74 00004292 */  lbu        $v0, 0x0($s2)
/* 5DF69A8 8007BC78 00000000 */  nop
/* 5DF69AC 8007BC7C 40100200 */  sll        $v0, $v0, 1
/* 5DF69B0 8007BC80 12400000 */  mflo       $t0
/* 5DF69B4 8007BC84 0680013C */  lui        $at, %hi(D_80065920)
/* 5DF69B8 8007BC88 21082200 */  addu       $at, $at, $v0
/* 5DF69BC 8007BC8C 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 5DF69C0 8007BC90 03130800 */  sra        $v0, $t0, 12
/* 5DF69C4 8007BC94 18004300 */  mult       $v0, $v1
/* 5DF69C8 8007BC98 0C00628E */  lw         $v0, 0xC($s3)
/* 5DF69CC 8007BC9C 12400000 */  mflo       $t0
/* 5DF69D0 8007BCA0 031B0800 */  sra        $v1, $t0, 12
/* 5DF69D4 8007BCA4 21104300 */  addu       $v0, $v0, $v1
/* 5DF69D8 8007BCA8 0C0062AE */  sw         $v0, 0xC($s3)
/* 5DF69DC 8007BCAC 01004292 */  lbu        $v0, 0x1($s2)
/* 5DF69E0 8007BCB0 00000000 */  nop
/* 5DF69E4 8007BCB4 40100200 */  sll        $v0, $v0, 1
/* 5DF69E8 8007BCB8 0680013C */  lui        $at, %hi(D_800658A0)
/* 5DF69EC 8007BCBC 21082200 */  addu       $at, $at, $v0
/* 5DF69F0 8007BCC0 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 5DF69F4 8007BCC4 02004286 */  lh         $v0, 0x2($s2)
/* 5DF69F8 8007BCC8 00000000 */  nop
/* 5DF69FC 8007BCCC 18006200 */  mult       $v1, $v0
/* 5DF6A00 8007BCD0 00004292 */  lbu        $v0, 0x0($s2)
/* 5DF6A04 8007BCD4 00000000 */  nop
/* 5DF6A08 8007BCD8 40100200 */  sll        $v0, $v0, 1
/* 5DF6A0C 8007BCDC 12400000 */  mflo       $t0
/* 5DF6A10 8007BCE0 0680013C */  lui        $at, %hi(D_80065920)
/* 5DF6A14 8007BCE4 21082200 */  addu       $at, $at, $v0
/* 5DF6A18 8007BCE8 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 5DF6A1C 8007BCEC 03130800 */  sra        $v0, $t0, 12
/* 5DF6A20 8007BCF0 18004300 */  mult       $v0, $v1
/* 5DF6A24 8007BCF4 1000628E */  lw         $v0, 0x10($s3)
/* 5DF6A28 8007BCF8 12400000 */  mflo       $t0
/* 5DF6A2C 8007BCFC 031B0800 */  sra        $v1, $t0, 12
/* 5DF6A30 8007BD00 21104300 */  addu       $v0, $v0, $v1
/* 5DF6A34 8007BD04 100062AE */  sw         $v0, 0x10($s3)
/* 5DF6A38 8007BD08 00004292 */  lbu        $v0, 0x0($s2)
/* 5DF6A3C 8007BD0C 00000000 */  nop
/* 5DF6A40 8007BD10 40100200 */  sll        $v0, $v0, 1
/* 5DF6A44 8007BD14 0680013C */  lui        $at, %hi(D_800658A0)
/* 5DF6A48 8007BD18 21082200 */  addu       $at, $at, $v0
/* 5DF6A4C 8007BD1C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 5DF6A50 8007BD20 02004286 */  lh         $v0, 0x2($s2)
/* 5DF6A54 8007BD24 00000000 */  nop
/* 5DF6A58 8007BD28 18006200 */  mult       $v1, $v0
/* 5DF6A5C 8007BD2C 1800A427 */  addiu      $a0, $sp, 0x18
/* 5DF6A60 8007BD30 21280002 */  addu       $a1, $s0, $zero
/* 5DF6A64 8007BD34 1400628E */  lw         $v0, 0x14($s3)
/* 5DF6A68 8007BD38 12400000 */  mflo       $t0
/* 5DF6A6C 8007BD3C 031B0800 */  sra        $v1, $t0, 12
/* 5DF6A70 8007BD40 21104300 */  addu       $v0, $v0, $v1
/* 5DF6A74 8007BD44 DA60000C */  jal        func_80018368
/* 5DF6A78 8007BD48 140062AE */   sw        $v0, 0x14($s3)
/* 5DF6A7C 8007BD4C 02004010 */  beqz       $v0, .Llevel_24_8007BD58
/* 5DF6A80 8007BD50 00000000 */   nop
/* 5DF6A84 8007BD54 040040AE */  sw         $zero, 0x4($s2)
.Llevel_24_8007BD58:
/* 5DF6A88 8007BD58 02004296 */  lhu        $v0, 0x2($s2)
/* 5DF6A8C 8007BD5C 00000000 */  nop
/* 5DF6A90 8007BD60 E2FF4224 */  addiu      $v0, $v0, -0x1E
/* 5DF6A94 8007BD64 020042A6 */  sh         $v0, 0x2($s2)
/* 5DF6A98 8007BD68 00140200 */  sll        $v0, $v0, 16
/* 5DF6A9C 8007BD6C 02004104 */  bgez       $v0, .Llevel_24_8007BD78
/* 5DF6AA0 8007BD70 00000000 */   nop
/* 5DF6AA4 8007BD74 020040A6 */  sh         $zero, 0x2($s2)
.Llevel_24_8007BD78:
/* 5DF6AA8 8007BD78 0400438E */  lw         $v1, 0x4($s2)
/* 5DF6AAC 8007BD7C 00000000 */  nop
/* 5DF6AB0 8007BD80 20006228 */  slti       $v0, $v1, 0x20
/* 5DF6AB4 8007BD84 07004010 */  beqz       $v0, .Llevel_24_8007BDA4
/* 5DF6AB8 8007BD88 43180300 */   sra       $v1, $v1, 1
/* 5DF6ABC 8007BD8C 3F000224 */  addiu      $v0, $zero, 0x3F
/* 5DF6AC0 8007BD90 23104300 */  subu       $v0, $v0, $v1
/* 5DF6AC4 8007BD94 570062A2 */  sb         $v0, 0x57($s3)
/* 5DF6AC8 8007BD98 540060A2 */  sb         $zero, 0x54($s3)
/* 5DF6ACC 8007BD9C 550060A2 */  sb         $zero, 0x55($s3)
/* 5DF6AD0 8007BDA0 560060A2 */  sb         $zero, 0x56($s3)
.Llevel_24_8007BDA4:
/* 5DF6AD4 8007BDA4 04004426 */  addiu      $a0, $s2, 0x4
/* 5DF6AD8 8007BDA8 69D6000C */  jal        func_800359A4
/* 5DF6ADC 8007BDAC 04000524 */   addiu     $a1, $zero, 0x4
/* 5DF6AE0 8007BDB0 09004010 */  beqz       $v0, .Llevel_24_8007BDD8
/* 5DF6AE4 8007BDB4 00000000 */   nop
/* 5DF6AE8 8007BDB8 0800448E */  lw         $a0, 0x8($s2)
/* 5DF6AEC 8007BDBC 00000000 */  nop
/* 5DF6AF0 8007BDC0 03008010 */  beqz       $a0, .Llevel_24_8007BDD0
/* 5DF6AF4 8007BDC4 00000000 */   nop
/* 5DF6AF8 8007BDC8 7A42010C */  jal        func_800509E8
/* 5DF6AFC 8007BDCC 00000000 */   nop
.Llevel_24_8007BDD0:
/* 5DF6B00 8007BDD0 C656010C */  jal        func_80055B18
/* 5DF6B04 8007BDD4 21206002 */   addu      $a0, $s3, $zero
.Llevel_24_8007BDD8:
/* 5DF6B08 8007BDD8 5C00BF8F */  lw         $ra, 0x5C($sp)
/* 5DF6B0C 8007BDDC 5800B68F */  lw         $s6, 0x58($sp)
/* 5DF6B10 8007BDE0 5400B58F */  lw         $s5, 0x54($sp)
/* 5DF6B14 8007BDE4 5000B48F */  lw         $s4, 0x50($sp)
/* 5DF6B18 8007BDE8 4C00B38F */  lw         $s3, 0x4C($sp)
/* 5DF6B1C 8007BDEC 4800B28F */  lw         $s2, 0x48($sp)
/* 5DF6B20 8007BDF0 4400B18F */  lw         $s1, 0x44($sp)
/* 5DF6B24 8007BDF4 4000B08F */  lw         $s0, 0x40($sp)
/* 5DF6B28 8007BDF8 6000BD27 */  addiu      $sp, $sp, 0x60
/* 5DF6B2C 8007BDFC 0800E003 */  jr         $ra
/* 5DF6B30 8007BE00 00000000 */   nop
.size func_level_24_8007B948, . - func_level_24_8007B948
