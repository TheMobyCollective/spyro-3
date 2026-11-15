.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_116_level_36
/* 78DAABC 8007A58C B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 78DAAC0 8007A590 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 78DAAC4 8007A594 21888000 */  addu       $s1, $a0, $zero
/* 78DAAC8 8007A598 01000224 */  addiu      $v0, $zero, 0x1
/* 78DAACC 8007A59C 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 78DAAD0 8007A5A0 4800B4AF */  sw         $s4, 0x48($sp)
/* 78DAAD4 8007A5A4 4400B3AF */  sw         $s3, 0x44($sp)
/* 78DAAD8 8007A5A8 4000B2AF */  sw         $s2, 0x40($sp)
/* 78DAADC 8007A5AC 3800B0AF */  sw         $s0, 0x38($sp)
/* 78DAAE0 8007A5B0 48002392 */  lbu        $v1, 0x48($s1)
/* 78DAAE4 8007A5B4 0000338E */  lw         $s3, 0x0($s1)
/* 78DAAE8 8007A5B8 0C006210 */  beq        $v1, $v0, .Llevel_36_8007A5EC
/* 78DAAEC 8007A5BC 02006228 */   slti      $v0, $v1, 0x2
/* 78DAAF0 8007A5C0 05004010 */  beqz       $v0, .Llevel_36_8007A5D8
/* 78DAAF4 8007A5C4 00000000 */   nop
/* 78DAAF8 8007A5C8 63006010 */  beqz       $v1, .Llevel_36_8007A758
/* 78DAAFC 8007A5CC 00000000 */   nop
/* 78DAB00 8007A5D0 52EA0108 */  j          .Llevel_36_8007A948
/* 78DAB04 8007A5D4 00000000 */   nop
.Llevel_36_8007A5D8:
/* 78DAB08 8007A5D8 02000224 */  addiu      $v0, $zero, 0x2
/* 78DAB0C 8007A5DC D1006210 */  beq        $v1, $v0, .Llevel_36_8007A924
/* 78DAB10 8007A5E0 18000424 */   addiu     $a0, $zero, 0x18
/* 78DAB14 8007A5E4 52EA0108 */  j          .Llevel_36_8007A948
/* 78DAB18 8007A5E8 00000000 */   nop
.Llevel_36_8007A5EC:
/* 78DAB1C 8007A5EC 3A002392 */  lbu        $v1, 0x3A($s1)
/* 78DAB20 8007A5F0 00000000 */  nop
/* 78DAB24 8007A5F4 40100300 */  sll        $v0, $v1, 1
/* 78DAB28 8007A5F8 21104300 */  addu       $v0, $v0, $v1
/* 78DAB2C 8007A5FC 80100200 */  sll        $v0, $v0, 2
/* 78DAB30 8007A600 23104300 */  subu       $v0, $v0, $v1
/* 78DAB34 8007A604 0780033C */  lui        $v1, %hi(D_8006C550)
/* 78DAB38 8007A608 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 78DAB3C 8007A60C C0100200 */  sll        $v0, $v0, 3
/* 78DAB40 8007A610 21906200 */  addu       $s2, $v1, $v0
/* 78DAB44 8007A614 48004292 */  lbu        $v0, 0x48($s2)
/* 78DAB48 8007A618 00000000 */  nop
/* 78DAB4C 8007A61C 80004230 */  andi       $v0, $v0, 0x80
/* 78DAB50 8007A620 33004014 */  bnez       $v0, .Llevel_36_8007A6F0
/* 78DAB54 8007A624 1800A427 */   addiu     $a0, $sp, 0x18
/* 78DAB58 8007A628 5E3C010C */  jal        func_8004F178
/* 78DAB5C 8007A62C 0C004526 */   addiu     $a1, $s2, 0xC
/* 78DAB60 8007A630 21300000 */  addu       $a2, $zero, $zero
/* 78DAB64 8007A634 2000A28F */  lw         $v0, 0x20($sp)
/* 78DAB68 8007A638 1800A38F */  lw         $v1, 0x18($sp)
/* 78DAB6C 8007A63C 00024224 */  addiu      $v0, $v0, 0x200
/* 78DAB70 8007A640 2000A2AF */  sw         $v0, 0x20($sp)
/* 78DAB74 8007A644 0C00248E */  lw         $a0, 0xC($s1)
/* 78DAB78 8007A648 1C00A28F */  lw         $v0, 0x1C($sp)
/* 78DAB7C 8007A64C 1000258E */  lw         $a1, 0x10($s1)
/* 78DAB80 8007A650 23206400 */  subu       $a0, $v1, $a0
/* 78DAB84 8007A654 203A010C */  jal        func_8004E880
/* 78DAB88 8007A658 23284500 */   subu      $a1, $v0, $a1
/* 78DAB8C 8007A65C 0780033C */  lui        $v1, %hi(D_80070328 + 0xE)
/* 78DAB90 8007A660 36036390 */  lbu        $v1, %lo(D_80070328 + 0xE)($v1)
/* 78DAB94 8007A664 00000000 */  nop
/* 78DAB98 8007A668 23104300 */  subu       $v0, $v0, $v1
/* 78DAB9C 8007A66C FF005030 */  andi       $s0, $v0, 0xFF
/* 78DABA0 8007A670 8100022A */  slti       $v0, $s0, 0x81
/* 78DABA4 8007A674 02004014 */  bnez       $v0, .Llevel_36_8007A680
/* 78DABA8 8007A678 0C002426 */   addiu     $a0, $s1, 0xC
/* 78DABAC 8007A67C 00FF1026 */  addiu      $s0, $s0, -0x100
.Llevel_36_8007A680:
/* 78DABB0 8007A680 CD3C010C */  jal        func_8004F334
/* 78DABB4 8007A684 1800A527 */   addiu     $a1, $sp, 0x18
/* 78DABB8 8007A688 21204000 */  addu       $a0, $v0, $zero
/* 78DABBC 8007A68C 2000A28F */  lw         $v0, 0x20($sp)
/* 78DABC0 8007A690 1400258E */  lw         $a1, 0x14($s1)
/* 78DABC4 8007A694 21300000 */  addu       $a2, $zero, $zero
/* 78DABC8 8007A698 203A010C */  jal        func_8004E880
/* 78DABCC 8007A69C 23284500 */   subu      $a1, $v0, $a1
/* 78DABD0 8007A6A0 0780033C */  lui        $v1, %hi(D_80070328 + 0xD)
/* 78DABD4 8007A6A4 35036390 */  lbu        $v1, %lo(D_80070328 + 0xD)($v1)
/* 78DABD8 8007A6A8 00000000 */  nop
/* 78DABDC 8007A6AC 23104300 */  subu       $v0, $v0, $v1
/* 78DABE0 8007A6B0 FF004330 */  andi       $v1, $v0, 0xFF
/* 78DABE4 8007A6B4 81006228 */  slti       $v0, $v1, 0x81
/* 78DABE8 8007A6B8 02004014 */  bnez       $v0, .Llevel_36_8007A6C4
/* 78DABEC 8007A6BC 00000000 */   nop
/* 78DABF0 8007A6C0 00FF6324 */  addiu      $v1, $v1, -0x100
.Llevel_36_8007A6C4:
/* 78DABF4 8007A6C4 02000106 */  bgez       $s0, .Llevel_36_8007A6D0
/* 78DABF8 8007A6C8 00000000 */   nop
/* 78DABFC 8007A6CC 23801000 */  negu       $s0, $s0
.Llevel_36_8007A6D0:
/* 78DAC00 8007A6D0 02006104 */  bgez       $v1, .Llevel_36_8007A6DC
/* 78DAC04 8007A6D4 00000000 */   nop
/* 78DAC08 8007A6D8 23180300 */  negu       $v1, $v1
.Llevel_36_8007A6DC:
/* 78DAC0C 8007A6DC 0C00022A */  slti       $v0, $s0, 0xC
/* 78DAC10 8007A6E0 03004010 */  beqz       $v0, .Llevel_36_8007A6F0
/* 78DAC14 8007A6E4 0C006228 */   slti      $v0, $v1, 0xC
/* 78DAC18 8007A6E8 02004014 */  bnez       $v0, .Llevel_36_8007A6F4
/* 78DAC1C 8007A6EC 00000000 */   nop
.Llevel_36_8007A6F0:
/* 78DAC20 8007A6F0 21900000 */  addu       $s2, $zero, $zero
.Llevel_36_8007A6F4:
/* 78DAC24 8007A6F4 09004012 */  beqz       $s2, .Llevel_36_8007A71C
/* 78DAC28 8007A6F8 21206002 */   addu      $a0, $s3, $zero
/* 78DAC2C 8007A6FC 1800A527 */  addiu      $a1, $sp, 0x18
/* 78DAC30 8007A700 723C010C */  jal        func_8004F1C8
/* 78DAC34 8007A704 0C002626 */   addiu     $a2, $s1, 0xC
/* 78DAC38 8007A708 21206002 */  addu       $a0, $s3, $zero
/* 78DAC3C 8007A70C C13B010C */  jal        func_8004EF04
/* 78DAC40 8007A710 00020524 */   addiu     $a1, $zero, 0x200
/* 78DAC44 8007A714 D2E90108 */  j          .Llevel_36_8007A748
/* 78DAC48 8007A718 78000224 */   addiu     $v0, $zero, 0x78
.Llevel_36_8007A71C:
/* 78DAC4C 8007A71C 0780043C */  lui        $a0, %hi(D_80070328 + 0x30)
/* 78DAC50 8007A720 58038424 */  addiu      $a0, $a0, %lo(D_80070328 + 0x30)
/* 78DAC54 8007A724 21286002 */  addu       $a1, $s3, $zero
/* 78DAC58 8007A728 21306002 */  addu       $a2, $s3, $zero
/* 78DAC5C 8007A72C 00020224 */  addiu      $v0, $zero, 0x200
/* 78DAC60 8007A730 000062AE */  sw         $v0, 0x0($s3)
/* 78DAC64 8007A734 10000224 */  addiu      $v0, $zero, 0x10
/* 78DAC68 8007A738 040060AE */  sw         $zero, 0x4($s3)
/* 78DAC6C 8007A73C 5B3B010C */  jal        func_8004ED6C
/* 78DAC70 8007A740 080062AE */   sw        $v0, 0x8($s3)
/* 78DAC74 8007A744 78000224 */  addiu      $v0, $zero, 0x78
.Llevel_36_8007A748:
/* 78DAC78 8007A748 0C0062AE */  sw         $v0, 0xC($s3)
/* 78DAC7C 8007A74C 01000224 */  addiu      $v0, $zero, 0x1
/* 78DAC80 8007A750 490022A2 */  sb         $v0, 0x49($s1)
/* 78DAC84 8007A754 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_36_8007A758:
/* 78DAC88 8007A758 0C00228E */  lw         $v0, 0xC($s1)
/* 78DAC8C 8007A75C 00000000 */  nop
/* 78DAC90 8007A760 00044228 */  slti       $v0, $v0, 0x400
/* 78DAC94 8007A764 76004014 */  bnez       $v0, .Llevel_36_8007A940
/* 78DAC98 8007A768 00000000 */   nop
/* 78DAC9C 8007A76C 1000228E */  lw         $v0, 0x10($s1)
/* 78DACA0 8007A770 00000000 */  nop
/* 78DACA4 8007A774 00044228 */  slti       $v0, $v0, 0x400
/* 78DACA8 8007A778 71004014 */  bnez       $v0, .Llevel_36_8007A940
/* 78DACAC 8007A77C 00000000 */   nop
/* 78DACB0 8007A780 1400228E */  lw         $v0, 0x14($s1)
/* 78DACB4 8007A784 00000000 */  nop
/* 78DACB8 8007A788 00044228 */  slti       $v0, $v0, 0x400
/* 78DACBC 8007A78C 6C004014 */  bnez       $v0, .Llevel_36_8007A940
/* 78DACC0 8007A790 0C006426 */   addiu     $a0, $s3, 0xC
/* 78DACC4 8007A794 69D6000C */  jal        func_800359A4
/* 78DACC8 8007A798 04000524 */   addiu     $a1, $zero, 0x4
/* 78DACCC 8007A79C 68004014 */  bnez       $v0, .Llevel_36_8007A940
/* 78DACD0 8007A7A0 2800B227 */   addiu     $s2, $sp, 0x28
/* 78DACD4 8007A7A4 21204002 */  addu       $a0, $s2, $zero
/* 78DACD8 8007A7A8 0C003026 */  addiu      $s0, $s1, 0xC
/* 78DACDC 8007A7AC 5E3C010C */  jal        func_8004F178
/* 78DACE0 8007A7B0 21280002 */   addu      $a1, $s0, $zero
/* 78DACE4 8007A7B4 21200002 */  addu       $a0, $s0, $zero
/* 78DACE8 8007A7B8 21280002 */  addu       $a1, $s0, $zero
/* 78DACEC 8007A7BC 653C010C */  jal        func_8004F194
/* 78DACF0 8007A7C0 21306002 */   addu      $a2, $s3, $zero
/* 78DACF4 8007A7C4 49002292 */  lbu        $v0, 0x49($s1)
/* 78DACF8 8007A7C8 00000000 */  nop
/* 78DACFC 8007A7CC 14004014 */  bnez       $v0, .Llevel_36_8007A820
/* 78DAD00 8007A7D0 0008033C */   lui       $v1, (0x8000000 >> 16)
/* 78DAD04 8007A7D4 1800228E */  lw         $v0, 0x18($s1)
/* 78DAD08 8007A7D8 00000000 */  nop
/* 78DAD0C 8007A7DC 24104300 */  and        $v0, $v0, $v1
/* 78DAD10 8007A7E0 06004010 */  beqz       $v0, .Llevel_36_8007A7FC
/* 78DAD14 8007A7E4 21200002 */   addu      $a0, $s0, $zero
/* 78DAD18 8007A7E8 5E3C010C */  jal        func_8004F178
/* 78DAD1C 8007A7EC 21284002 */   addu      $a1, $s2, $zero
/* 78DAD20 8007A7F0 01000224 */  addiu      $v0, $zero, 0x1
/* 78DAD24 8007A7F4 52EA0108 */  j          .Llevel_36_8007A948
/* 78DAD28 8007A7F8 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_36_8007A7FC:
/* 78DAD2C 8007A7FC 80010524 */  addiu      $a1, $zero, 0x180
/* 78DAD30 8007A800 A270000C */  jal        func_8001C288
/* 78DAD34 8007A804 01000624 */   addiu     $a2, $zero, 0x1
/* 78DAD38 8007A808 05004010 */  beqz       $v0, .Llevel_36_8007A820
/* 78DAD3C 8007A80C 21200002 */   addu      $a0, $s0, $zero
/* 78DAD40 8007A810 5E3C010C */  jal        func_8004F178
/* 78DAD44 8007A814 21284002 */   addu      $a1, $s2, $zero
/* 78DAD48 8007A818 34EA0108 */  j          .Llevel_36_8007A8D0
/* 78DAD4C 8007A81C 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_36_8007A820:
/* 78DAD50 8007A820 0C003226 */  addiu      $s2, $s1, 0xC
/* 78DAD54 8007A824 21204002 */  addu       $a0, $s2, $zero
/* 78DAD58 8007A828 6564000C */  jal        func_80019194
/* 78DAD5C 8007A82C 80010524 */   addiu     $a1, $zero, 0x180
/* 78DAD60 8007A830 07004014 */  bnez       $v0, .Llevel_36_8007A850
/* 78DAD64 8007A834 21204002 */   addu      $a0, $s2, $zero
/* 78DAD68 8007A838 2800B427 */  addiu      $s4, $sp, 0x28
/* 78DAD6C 8007A83C 21208002 */  addu       $a0, $s4, $zero
/* 78DAD70 8007A840 DA60000C */  jal        func_80018368
/* 78DAD74 8007A844 21284002 */   addu      $a1, $s2, $zero
/* 78DAD78 8007A848 05004010 */  beqz       $v0, .Llevel_36_8007A860
/* 78DAD7C 8007A84C 21204002 */   addu      $a0, $s2, $zero
.Llevel_36_8007A850:
/* 78DAD80 8007A850 5E3C010C */  jal        func_8004F178
/* 78DAD84 8007A854 2800A527 */   addiu     $a1, $sp, 0x28
/* 78DAD88 8007A858 34EA0108 */  j          .Llevel_36_8007A8D0
/* 78DAD8C 8007A85C 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_36_8007A860:
/* 78DAD90 8007A860 49002392 */  lbu        $v1, 0x49($s1)
/* 78DAD94 8007A864 01000224 */  addiu      $v0, $zero, 0x1
/* 78DAD98 8007A868 1C006214 */  bne        $v1, $v0, .Llevel_36_8007A8DC
/* 78DAD9C 8007A86C 21202002 */   addu      $a0, $s1, $zero
/* 78DADA0 8007A870 21204002 */  addu       $a0, $s2, $zero
/* 78DADA4 8007A874 80010524 */  addiu      $a1, $zero, 0x180
/* 78DADA8 8007A878 21300000 */  addu       $a2, $zero, $zero
/* 78DADAC 8007A87C 21380000 */  addu       $a3, $zero, $zero
/* 78DADB0 8007A880 0100023C */  lui        $v0, (0x10000 >> 16)
/* 78DADB4 8007A884 1000A2AF */  sw         $v0, 0x10($sp)
/* 78DADB8 8007A888 8C6E000C */  jal        func_8001BA30
/* 78DADBC 8007A88C 1400B1AF */   sw        $s1, 0x14($sp)
/* 78DADC0 8007A890 21804000 */  addu       $s0, $v0, $zero
/* 78DADC4 8007A894 10000012 */  beqz       $s0, .Llevel_36_8007A8D8
/* 78DADC8 8007A898 21204002 */   addu      $a0, $s2, $zero
/* 78DADCC 8007A89C 5E3C010C */  jal        func_8004F178
/* 78DADD0 8007A8A0 21288002 */   addu      $a1, $s4, $zero
/* 78DADD4 8007A8A4 0000648E */  lw         $a0, 0x0($s3)
/* 78DADD8 8007A8A8 0400658E */  lw         $a1, 0x4($s3)
/* 78DADDC 8007A8AC 203A010C */  jal        func_8004E880
/* 78DADE0 8007A8B0 21300000 */   addu      $a2, $zero, $zero
/* 78DADE4 8007A8B4 510002A2 */  sb         $v0, 0x51($s0)
/* 78DADE8 8007A8B8 FF004230 */  andi       $v0, $v0, 0xFF
/* 78DADEC 8007A8BC 04004014 */  bnez       $v0, .Llevel_36_8007A8D0
/* 78DADF0 8007A8C0 02000224 */   addiu     $v0, $zero, 0x2
/* 78DADF4 8007A8C4 01000224 */  addiu      $v0, $zero, 0x1
/* 78DADF8 8007A8C8 510002A2 */  sb         $v0, 0x51($s0)
/* 78DADFC 8007A8CC 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_36_8007A8D0:
/* 78DAE00 8007A8D0 52EA0108 */  j          .Llevel_36_8007A948
/* 78DAE04 8007A8D4 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_36_8007A8D8:
/* 78DAE08 8007A8D8 21202002 */  addu       $a0, $s1, $zero
.Llevel_36_8007A8DC:
/* 78DAE0C 8007A8DC 4957010C */  jal        func_80055D24
/* 78DAE10 8007A8E0 02000524 */   addiu     $a1, $zero, 0x2
/* 78DAE14 8007A8E4 0C003026 */  addiu      $s0, $s1, 0xC
/* 78DAE18 8007A8E8 21200002 */  addu       $a0, $s0, $zero
/* 78DAE1C 8007A8EC D668000C */  jal        func_8001A358
/* 78DAE20 8007A8F0 00200524 */   addiu     $a1, $zero, 0x2000
/* 78DAE24 8007A8F4 A758010C */  jal        func_8005629C
/* 78DAE28 8007A8F8 21202002 */   addu      $a0, $s1, $zero
/* 78DAE2C 8007A8FC 01000424 */  addiu      $a0, $zero, 0x1
/* 78DAE30 8007A900 05000524 */  addiu      $a1, $zero, 0x5
/* 78DAE34 8007A904 21300002 */  addu       $a2, $s0, $zero
/* 78DAE38 8007A908 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 78DAE3C 8007A90C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 78DAE40 8007A910 00000000 */  nop
/* 78DAE44 8007A914 09F84000 */  jalr       $v0
/* 78DAE48 8007A918 21380000 */   addu      $a3, $zero, $zero
/* 78DAE4C 8007A91C 52EA0108 */  j          .Llevel_36_8007A948
/* 78DAE50 8007A920 00000000 */   nop
.Llevel_36_8007A924:
/* 78DAE54 8007A924 0F000524 */  addiu      $a1, $zero, 0xF
/* 78DAE58 8007A928 0C002626 */  addiu      $a2, $s1, 0xC
/* 78DAE5C 8007A92C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 78DAE60 8007A930 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 78DAE64 8007A934 00000000 */  nop
/* 78DAE68 8007A938 09F84000 */  jalr       $v0
/* 78DAE6C 8007A93C 21380000 */   addu      $a3, $zero, $zero
.Llevel_36_8007A940:
/* 78DAE70 8007A940 C656010C */  jal        func_80055B18
/* 78DAE74 8007A944 21202002 */   addu      $a0, $s1, $zero
.Llevel_36_8007A948:
/* 78DAE78 8007A948 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 78DAE7C 8007A94C 4800B48F */  lw         $s4, 0x48($sp)
/* 78DAE80 8007A950 4400B38F */  lw         $s3, 0x44($sp)
/* 78DAE84 8007A954 4000B28F */  lw         $s2, 0x40($sp)
/* 78DAE88 8007A958 3C00B18F */  lw         $s1, 0x3C($sp)
/* 78DAE8C 8007A95C 3800B08F */  lw         $s0, 0x38($sp)
/* 78DAE90 8007A960 5000BD27 */  addiu      $sp, $sp, 0x50
/* 78DAE94 8007A964 0800E003 */  jr         $ra
/* 78DAE98 8007A968 00000000 */   nop
.size MobyUpdate_116_level_36, . - MobyUpdate_116_level_36
