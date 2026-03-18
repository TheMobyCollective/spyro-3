.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_33_80076978
/* 71AE6A8 80076978 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 71AE6AC 8007697C 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 71AE6B0 80076980 21888000 */  addu       $s1, $a0, $zero
/* 71AE6B4 80076984 0780053C */  lui        $a1, %hi(D_80070328)
/* 71AE6B8 80076988 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 71AE6BC 8007698C 5C00BFAF */  sw         $ra, 0x5C($sp)
/* 71AE6C0 80076990 5800B4AF */  sw         $s4, 0x58($sp)
/* 71AE6C4 80076994 5400B3AF */  sw         $s3, 0x54($sp)
/* 71AE6C8 80076998 5000B2AF */  sw         $s2, 0x50($sp)
/* 71AE6CC 8007699C 4800B0AF */  sw         $s0, 0x48($sp)
/* 71AE6D0 800769A0 0000328E */  lw         $s2, 0x0($s1)
/* 71AE6D4 800769A4 CD3C010C */  jal        func_8004F334
/* 71AE6D8 800769A8 0C002426 */   addiu     $a0, $s1, 0xC
/* 71AE6DC 800769AC 21A04000 */  addu       $s4, $v0, $zero
/* 71AE6E0 800769B0 48002392 */  lbu        $v1, 0x48($s1)
/* 71AE6E4 800769B4 02000224 */  addiu      $v0, $zero, 0x2
/* 71AE6E8 800769B8 06006214 */  bne        $v1, $v0, .Llevel_33_800769D4
/* 71AE6EC 800769BC B80B822A */   slti      $v0, $s4, 0xBB8
/* 71AE6F0 800769C0 46002292 */  lbu        $v0, 0x46($s1)
/* 71AE6F4 800769C4 00000000 */  nop
/* 71AE6F8 800769C8 02004224 */  addiu      $v0, $v0, 0x2
/* 71AE6FC 800769CC F8DB0108 */  j          .Llevel_33_80076FE0
/* 71AE700 800769D0 460022A2 */   sb        $v0, 0x46($s1)
.Llevel_33_800769D4:
/* 71AE704 800769D4 70004010 */  beqz       $v0, .Llevel_33_80076B98
/* 71AE708 800769D8 00000000 */   nop
/* 71AE70C 800769DC 38002386 */  lh         $v1, 0x38($s1)
/* 71AE710 800769E0 1400228E */  lw         $v0, 0x14($s1)
/* 71AE714 800769E4 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 71AE718 800769E8 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 71AE71C 800769EC 23184300 */  subu       $v1, $v0, $v1
/* 71AE720 800769F0 23106400 */  subu       $v0, $v1, $a0
/* 71AE724 800769F4 05004004 */  bltz       $v0, .Llevel_33_80076A0C
/* 71AE728 800769F8 F00A4228 */   slti      $v0, $v0, 0xAF0
/* 71AE72C 800769FC 66004010 */  beqz       $v0, .Llevel_33_80076B98
/* 71AE730 80076A00 00000000 */   nop
/* 71AE734 80076A04 87DA0108 */  j          .Llevel_33_80076A1C
/* 71AE738 80076A08 00000000 */   nop
.Llevel_33_80076A0C:
/* 71AE73C 80076A0C 23108300 */  subu       $v0, $a0, $v1
/* 71AE740 80076A10 F00A4228 */  slti       $v0, $v0, 0xAF0
/* 71AE744 80076A14 60004010 */  beqz       $v0, .Llevel_33_80076B98
/* 71AE748 80076A18 00000000 */   nop
.Llevel_33_80076A1C:
/* 71AE74C 80076A1C 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 71AE750 80076A20 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 71AE754 80076A24 00000000 */  nop
/* 71AE758 80076A28 30004014 */  bnez       $v0, .Llevel_33_80076AEC
/* 71AE75C 80076A2C 00000000 */   nop
/* 71AE760 80076A30 0780133C */  lui        $s3, %hi(D_80070328 + 0x280)
/* 71AE764 80076A34 A8057326 */  addiu      $s3, $s3, %lo(D_80070328 + 0x280)
/* 71AE768 80076A38 0000628E */  lw         $v0, 0x0($s3)
/* 71AE76C 80076A3C 00000000 */  nop
/* 71AE770 80076A40 55004004 */  bltz       $v0, .Llevel_33_80076B98
/* 71AE774 80076A44 78000424 */   addiu     $a0, $zero, 0x78
/* 71AE778 80076A48 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 71AE77C 80076A4C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 71AE780 80076A50 00000000 */  nop
/* 71AE784 80076A54 09F84000 */  jalr       $v0
/* 71AE788 80076A58 21282002 */   addu      $a1, $s1, $zero
/* 71AE78C 80076A5C 0780013C */  lui        $at, %hi(D_8006C65C)
/* 71AE790 80076A60 5CC622AC */  sw         $v0, %lo(D_8006C65C)($at)
/* 71AE794 80076A64 4C004010 */  beqz       $v0, .Llevel_33_80076B98
/* 71AE798 80076A68 00000000 */   nop
/* 71AE79C 80076A6C 0000508C */  lw         $s0, 0x0($v0)
/* 71AE7A0 80076A70 00000000 */  nop
/* 71AE7A4 80076A74 02000592 */  lbu        $a1, 0x2($s0)
/* 71AE7A8 80076A78 F0EF000C */  jal        func_8003BFC0
/* 71AE7AC 80076A7C 21204000 */   addu      $a0, $v0, $zero
/* 71AE7B0 80076A80 06004014 */  bnez       $v0, .Llevel_33_80076A9C
/* 71AE7B4 80076A84 21280000 */   addu      $a1, $zero, $zero
/* 71AE7B8 80076A88 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 71AE7BC 80076A8C 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 71AE7C0 80076A90 AFEE000C */  jal        func_8003BABC
/* 71AE7C4 80076A94 21300000 */   addu      $a2, $zero, $zero
/* 71AE7C8 80076A98 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_33_80076A9C:
/* 71AE7CC 80076A9C 36002386 */  lh         $v1, 0x36($s1)
/* 71AE7D0 80076AA0 10000224 */  addiu      $v0, $zero, 0x10
/* 71AE7D4 80076AA4 04006214 */  bne        $v1, $v0, .Llevel_33_80076AB8
/* 71AE7D8 80076AA8 03000324 */   addiu     $v1, $zero, 0x3
/* 71AE7DC 80076AAC 01000224 */  addiu      $v0, $zero, 0x1
/* 71AE7E0 80076AB0 F7DA0108 */  j          .Llevel_33_80076BDC
/* 71AE7E4 80076AB4 000062AE */   sw        $v0, 0x0($s3)
.Llevel_33_80076AB8:
/* 71AE7E8 80076AB8 0780023C */  lui        $v0, %hi(D_8006C784)
/* 71AE7EC 80076ABC 84C7428C */  lw         $v0, %lo(D_8006C784)($v0)
/* 71AE7F0 80076AC0 000063AE */  sw         $v1, 0x0($s3)
/* 71AE7F4 80076AC4 01004224 */  addiu      $v0, $v0, 0x1
/* 71AE7F8 80076AC8 0780013C */  lui        $at, %hi(D_8006C784)
/* 71AE7FC 80076ACC 84C722AC */  sw         $v0, %lo(D_8006C784)($at)
/* 71AE800 80076AD0 64004228 */  slti       $v0, $v0, 0x64
/* 71AE804 80076AD4 41004014 */  bnez       $v0, .Llevel_33_80076BDC
/* 71AE808 80076AD8 63000224 */   addiu     $v0, $zero, 0x63
/* 71AE80C 80076ADC 0780013C */  lui        $at, %hi(D_8006C784)
/* 71AE810 80076AE0 84C722AC */  sw         $v0, %lo(D_8006C784)($at)
/* 71AE814 80076AE4 F7DA0108 */  j          .Llevel_33_80076BDC
/* 71AE818 80076AE8 00000000 */   nop
.Llevel_33_80076AEC:
/* 71AE81C 80076AEC 0000508C */  lw         $s0, 0x0($v0)
/* 71AE820 80076AF0 00000000 */  nop
/* 71AE824 80076AF4 1400028E */  lw         $v0, 0x14($s0)
/* 71AE828 80076AF8 00000000 */  nop
/* 71AE82C 80076AFC 0A004010 */  beqz       $v0, .Llevel_33_80076B28
/* 71AE830 80076B00 21300000 */   addu      $a2, $zero, $zero
/* 71AE834 80076B04 24005110 */  beq        $v0, $s1, .Llevel_33_80076B98
/* 71AE838 80076B08 00000000 */   nop
/* 71AE83C 80076B0C 00000286 */  lh         $v0, 0x0($s0)
/* 71AE840 80076B10 00000000 */  nop
/* 71AE844 80076B14 1F004228 */  slti       $v0, $v0, 0x1F
/* 71AE848 80076B18 1F004014 */  bnez       $v0, .Llevel_33_80076B98
/* 71AE84C 80076B1C 1E000224 */   addiu     $v0, $zero, 0x1E
/* 71AE850 80076B20 E6DA0108 */  j          .Llevel_33_80076B98
/* 71AE854 80076B24 000002A6 */   sh        $v0, 0x0($s0)
.Llevel_33_80076B28:
/* 71AE858 80076B28 0C00238E */  lw         $v1, 0xC($s1)
/* 71AE85C 80076B2C 0780043C */  lui        $a0, %hi(D_80070328)
/* 71AE860 80076B30 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 71AE864 80076B34 1000228E */  lw         $v0, 0x10($s1)
/* 71AE868 80076B38 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 71AE86C 80076B3C 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 71AE870 80076B40 23206400 */  subu       $a0, $v1, $a0
/* 71AE874 80076B44 203A010C */  jal        func_8004E880
/* 71AE878 80076B48 23284500 */   subu      $a1, $v0, $a1
/* 71AE87C 80076B4C 0780043C */  lui        $a0, %hi(D_80070328 + 0xE)
/* 71AE880 80076B50 36038490 */  lbu        $a0, %lo(D_80070328 + 0xE)($a0)
/* 71AE884 80076B54 4FD8000C */  jal        func_8003613C
/* 71AE888 80076B58 21284000 */   addu      $a1, $v0, $zero
/* 71AE88C 80076B5C 02004104 */  bgez       $v0, .Llevel_33_80076B68
/* 71AE890 80076B60 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 71AE894 80076B64 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_33_80076B68:
/* 71AE898 80076B68 0C0042A6 */  sh         $v0, 0xC($s2)
/* 71AE89C 80076B6C 50000424 */  addiu      $a0, $zero, 0x50
/* 71AE8A0 80076B70 01000224 */  addiu      $v0, $zero, 0x1
/* 71AE8A4 80076B74 120040A2 */  sb         $zero, 0x12($s2)
/* 71AE8A8 80076B78 480022A2 */  sb         $v0, 0x48($s1)
/* 71AE8AC 80076B7C 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 71AE8B0 80076B80 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 71AE8B4 80076B84 82000524 */  addiu      $a1, $zero, 0x82
/* 71AE8B8 80076B88 490040A0 */  sb         $zero, 0x49($v0)
/* 71AE8BC 80076B8C DBD8000C */  jal        func_8003636C
/* 71AE8C0 80076B90 140011AE */   sw        $s1, 0x14($s0)
/* 71AE8C4 80076B94 000002A6 */  sh         $v0, 0x0($s0)
.Llevel_33_80076B98:
/* 71AE8C8 80076B98 48002392 */  lbu        $v1, 0x48($s1)
/* 71AE8CC 80076B9C 00000000 */  nop
/* 71AE8D0 80076BA0 05006010 */  beqz       $v1, .Llevel_33_80076BB8
/* 71AE8D4 80076BA4 01000224 */   addiu     $v0, $zero, 0x1
/* 71AE8D8 80076BA8 92006210 */  beq        $v1, $v0, .Llevel_33_80076DF4
/* 71AE8DC 80076BAC 00000000 */   nop
/* 71AE8E0 80076BB0 B2DB0108 */  j          .Llevel_33_80076EC8
/* 71AE8E4 80076BB4 00000000 */   nop
.Llevel_33_80076BB8:
/* 71AE8E8 80076BB8 0E004426 */  addiu      $a0, $s2, 0xE
/* 71AE8EC 80076BBC 69D6000C */  jal        func_800359A4
/* 71AE8F0 80076BC0 02000524 */   addiu     $a1, $zero, 0x2
/* 71AE8F4 80076BC4 09004010 */  beqz       $v0, .Llevel_33_80076BEC
/* 71AE8F8 80076BC8 00000000 */   nop
/* 71AE8FC 80076BCC 4D002292 */  lbu        $v0, 0x4D($s1)
/* 71AE900 80076BD0 00000000 */  nop
/* 71AE904 80076BD4 09004014 */  bnez       $v0, .Llevel_33_80076BFC
/* 71AE908 80076BD8 0130822A */   slti      $v0, $s4, 0x3001
.Llevel_33_80076BDC:
/* 71AE90C 80076BDC C656010C */  jal        func_80055B18
/* 71AE910 80076BE0 21202002 */   addu      $a0, $s1, $zero
/* 71AE914 80076BE4 F8DB0108 */  j          .Llevel_33_80076FE0
/* 71AE918 80076BE8 00000000 */   nop
.Llevel_33_80076BEC:
/* 71AE91C 80076BEC 4D002292 */  lbu        $v0, 0x4D($s1)
/* 71AE920 80076BF0 00000000 */  nop
/* 71AE924 80076BF4 B8004010 */  beqz       $v0, .Llevel_33_80076ED8
/* 71AE928 80076BF8 0130822A */   slti      $v0, $s4, 0x3001
.Llevel_33_80076BFC:
/* 71AE92C 80076BFC B2004010 */  beqz       $v0, .Llevel_33_80076EC8
/* 71AE930 80076C00 11004426 */   addiu     $a0, $s2, 0x11
/* 71AE934 80076C04 69D6000C */  jal        func_800359A4
/* 71AE938 80076C08 01000524 */   addiu     $a1, $zero, 0x1
/* 71AE93C 80076C0C 13004010 */  beqz       $v0, .Llevel_33_80076C5C
/* 71AE940 80076C10 21202002 */   addu      $a0, $s1, $zero
/* 71AE944 80076C14 1E000424 */  addiu      $a0, $zero, 0x1E
/* 71AE948 80076C18 F7D8000C */  jal        func_800363DC
/* 71AE94C 80076C1C 5A000524 */   addiu     $a1, $zero, 0x5A
/* 71AE950 80076C20 9171010C */  jal        rand
/* 71AE954 80076C24 21804000 */   addu      $s0, $v0, $zero
/* 71AE958 80076C28 01004230 */  andi       $v0, $v0, 0x1
/* 71AE95C 80076C2C 02004010 */  beqz       $v0, .Llevel_33_80076C38
/* 71AE960 80076C30 00000000 */   nop
/* 71AE964 80076C34 23801000 */  negu       $s0, $s0
.Llevel_33_80076C38:
/* 71AE968 80076C38 10004492 */  lbu        $a0, 0x10($s2)
/* 71AE96C 80076C3C 5FD8000C */  jal        func_8003617C
/* 71AE970 80076C40 21280002 */   addu      $a1, $s0, $zero
/* 71AE974 80076C44 3C000424 */  addiu      $a0, $zero, 0x3C
/* 71AE978 80076C48 8C000524 */  addiu      $a1, $zero, 0x8C
/* 71AE97C 80076C4C DBD8000C */  jal        func_8003636C
/* 71AE980 80076C50 100042A2 */   sb        $v0, 0x10($s2)
/* 71AE984 80076C54 110042A2 */  sb         $v0, 0x11($s2)
/* 71AE988 80076C58 21202002 */  addu       $a0, $s1, $zero
.Llevel_33_80076C5C:
/* 71AE98C 80076C5C 04000624 */  addiu      $a2, $zero, 0x4
/* 71AE990 80076C60 0A000724 */  addiu      $a3, $zero, 0xA
/* 71AE994 80076C64 10004592 */  lbu        $a1, 0x10($s2)
/* 71AE998 80076C68 01000224 */  addiu      $v0, $zero, 0x1
/* 71AE99C 80076C6C 1000A2AF */  sw         $v0, 0x10($sp)
/* 71AE9A0 80076C70 17D6000C */  jal        func_8003585C
/* 71AE9A4 80076C74 1400A0AF */   sw        $zero, 0x14($sp)
/* 71AE9A8 80076C78 21A04000 */  addu       $s4, $v0, $zero
/* 71AE9AC 80076C7C 0780033C */  lui        $v1, %hi(D_8006C648)
/* 71AE9B0 80076C80 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 71AE9B4 80076C84 03000224 */  addiu      $v0, $zero, 0x3
/* 71AE9B8 80076C88 03006214 */  bne        $v1, $v0, .Llevel_33_80076C98
/* 71AE9BC 80076C8C 1E000424 */   addiu     $a0, $zero, 0x1E
/* 71AE9C0 80076C90 2ADB0108 */  j          .Llevel_33_80076CA8
/* 71AE9C4 80076C94 2D000424 */   addiu     $a0, $zero, 0x2D
.Llevel_33_80076C98:
/* 71AE9C8 80076C98 04000224 */  addiu      $v0, $zero, 0x4
/* 71AE9CC 80076C9C 02006214 */  bne        $v1, $v0, .Llevel_33_80076CA8
/* 71AE9D0 80076CA0 00000000 */   nop
/* 71AE9D4 80076CA4 3C000424 */  addiu      $a0, $zero, 0x3C
.Llevel_33_80076CA8:
/* 71AE9D8 80076CA8 46002292 */  lbu        $v0, 0x46($s1)
/* 71AE9DC 80076CAC 00000000 */  nop
/* 71AE9E0 80076CB0 40100200 */  sll        $v0, $v0, 1
/* 71AE9E4 80076CB4 0680013C */  lui        $at, %hi(D_80065920)
/* 71AE9E8 80076CB8 21082200 */  addu       $at, $at, $v0
/* 71AE9EC 80076CBC 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 71AE9F0 80076CC0 00000000 */  nop
/* 71AE9F4 80076CC4 18004400 */  mult       $v0, $a0
/* 71AE9F8 80076CC8 12400000 */  mflo       $t0
/* 71AE9FC 80076CCC 03130800 */  sra        $v0, $t0, 12
/* 71AEA00 80076CD0 3800A2AF */  sw         $v0, 0x38($sp)
/* 71AEA04 80076CD4 46002292 */  lbu        $v0, 0x46($s1)
/* 71AEA08 80076CD8 00000000 */  nop
/* 71AEA0C 80076CDC 40100200 */  sll        $v0, $v0, 1
/* 71AEA10 80076CE0 0680013C */  lui        $at, %hi(D_800658A0)
/* 71AEA14 80076CE4 21082200 */  addu       $at, $at, $v0
/* 71AEA18 80076CE8 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 71AEA1C 80076CEC 00000000 */  nop
/* 71AEA20 80076CF0 18004400 */  mult       $v0, $a0
/* 71AEA24 80076CF4 0C003026 */  addiu      $s0, $s1, 0xC
/* 71AEA28 80076CF8 21300002 */  addu       $a2, $s0, $zero
/* 71AEA2C 80076CFC 4000A0AF */  sw         $zero, 0x40($sp)
/* 71AEA30 80076D00 3800A427 */  addiu      $a0, $sp, 0x38
/* 71AEA34 80076D04 21288000 */  addu       $a1, $a0, $zero
/* 71AEA38 80076D08 12400000 */  mflo       $t0
/* 71AEA3C 80076D0C 03130800 */  sra        $v0, $t0, 12
/* 71AEA40 80076D10 653C010C */  jal        func_8004F194
/* 71AEA44 80076D14 3C00A2AF */   sw        $v0, 0x3C($sp)
/* 71AEA48 80076D18 3800A427 */  addiu      $a0, $sp, 0x38
/* 71AEA4C 80076D1C 6564000C */  jal        func_80019194
/* 71AEA50 80076D20 32000524 */   addiu     $a1, $zero, 0x32
/* 71AEA54 80076D24 21984000 */  addu       $s3, $v0, $zero
/* 71AEA58 80076D28 03006016 */  bnez       $s3, .Llevel_33_80076D38
/* 71AEA5C 80076D2C 21200002 */   addu      $a0, $s0, $zero
/* 71AEA60 80076D30 5E3C010C */  jal        func_8004F178
/* 71AEA64 80076D34 3800A527 */   addiu     $a1, $sp, 0x38
.Llevel_33_80076D38:
/* 71AEA68 80076D38 0780023C */  lui        $v0, %hi(D_8006C640)
/* 71AEA6C 80076D3C 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 71AEA70 80076D40 00000000 */  nop
/* 71AEA74 80076D44 04004230 */  andi       $v0, $v0, 0x4
/* 71AEA78 80076D48 06004014 */  bnez       $v0, .Llevel_33_80076D64
/* 71AEA7C 80076D4C 00000000 */   nop
/* 71AEA80 80076D50 21200002 */  addu       $a0, $s0, $zero
/* 71AEA84 80076D54 D668000C */  jal        func_8001A358
/* 71AEA88 80076D58 00080524 */   addiu     $a1, $zero, 0x800
/* 71AEA8C 80076D5C A758010C */  jal        func_8005629C
/* 71AEA90 80076D60 21202002 */   addu      $a0, $s1, $zero
.Llevel_33_80076D64:
/* 71AEA94 80076D64 0D008012 */  beqz       $s4, .Llevel_33_80076D9C
/* 71AEA98 80076D68 00000000 */   nop
/* 71AEA9C 80076D6C 0B006012 */  beqz       $s3, .Llevel_33_80076D9C
/* 71AEAA0 80076D70 62000424 */   addiu     $a0, $zero, 0x62
/* 71AEAA4 80076D74 DBD8000C */  jal        func_8003636C
/* 71AEAA8 80076D78 9E000524 */   addiu     $a1, $zero, 0x9E
/* 71AEAAC 80076D7C 10004492 */  lbu        $a0, 0x10($s2)
/* 71AEAB0 80076D80 5FD8000C */  jal        func_8003617C
/* 71AEAB4 80076D84 21284000 */   addu      $a1, $v0, $zero
/* 71AEAB8 80076D88 1E000424 */  addiu      $a0, $zero, 0x1E
/* 71AEABC 80076D8C 50000524 */  addiu      $a1, $zero, 0x50
/* 71AEAC0 80076D90 DBD8000C */  jal        func_8003636C
/* 71AEAC4 80076D94 100042A2 */   sb        $v0, 0x10($s2)
/* 71AEAC8 80076D98 110042A2 */  sb         $v0, 0x11($s2)
.Llevel_33_80076D9C:
/* 71AEACC 80076D9C 0780023C */  lui        $v0, %hi(D_8006C640)
/* 71AEAD0 80076DA0 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 71AEAD4 80076DA4 00000000 */  nop
/* 71AEAD8 80076DA8 03004230 */  andi       $v0, $v0, 0x3
/* 71AEADC 80076DAC 46004014 */  bnez       $v0, .Llevel_33_80076EC8
/* 71AEAE0 80076DB0 0C002426 */   addiu     $a0, $s1, 0xC
/* 71AEAE4 80076DB4 CD3C010C */  jal        func_8004F334
/* 71AEAE8 80076DB8 21284002 */   addu      $a1, $s2, $zero
/* 71AEAEC 80076DBC D1074228 */  slti       $v0, $v0, 0x7D1
/* 71AEAF0 80076DC0 41004014 */  bnez       $v0, .Llevel_33_80076EC8
/* 71AEAF4 80076DC4 21300000 */   addu      $a2, $zero, $zero
/* 71AEAF8 80076DC8 0000438E */  lw         $v1, 0x0($s2)
/* 71AEAFC 80076DCC 0C00248E */  lw         $a0, 0xC($s1)
/* 71AEB00 80076DD0 0400428E */  lw         $v0, 0x4($s2)
/* 71AEB04 80076DD4 1000258E */  lw         $a1, 0x10($s1)
/* 71AEB08 80076DD8 23206400 */  subu       $a0, $v1, $a0
/* 71AEB0C 80076DDC 203A010C */  jal        func_8004E880
/* 71AEB10 80076DE0 23284500 */   subu      $a1, $v0, $a1
/* 71AEB14 80076DE4 100042A2 */  sb         $v0, 0x10($s2)
/* 71AEB18 80076DE8 28000224 */  addiu      $v0, $zero, 0x28
/* 71AEB1C 80076DEC B2DB0108 */  j          .Llevel_33_80076EC8
/* 71AEB20 80076DF0 110042A2 */   sb        $v0, 0x11($s2)
.Llevel_33_80076DF4:
/* 71AEB24 80076DF4 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 71AEB28 80076DF8 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 71AEB2C 80076DFC 00000000 */  nop
/* 71AEB30 80076E00 30004010 */  beqz       $v0, .Llevel_33_80076EC4
/* 71AEB34 80076E04 21300000 */   addu      $a2, $zero, $zero
/* 71AEB38 80076E08 0780103C */  lui        $s0, %hi(D_80070328)
/* 71AEB3C 80076E0C 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 71AEB40 80076E10 0C00238E */  lw         $v1, 0xC($s1)
/* 71AEB44 80076E14 0000048E */  lw         $a0, 0x0($s0)
/* 71AEB48 80076E18 1000228E */  lw         $v0, 0x10($s1)
/* 71AEB4C 80076E1C 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 71AEB50 80076E20 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 71AEB54 80076E24 23206400 */  subu       $a0, $v1, $a0
/* 71AEB58 80076E28 203A010C */  jal        func_8004E880
/* 71AEB5C 80076E2C 23284500 */   subu      $a1, $v0, $a1
/* 71AEB60 80076E30 0C004386 */  lh         $v1, 0xC($s2)
/* 71AEB64 80076E34 21204000 */  addu       $a0, $v0, $zero
/* 71AEB68 80076E38 80280300 */  sll        $a1, $v1, 2
/* 71AEB6C 80076E3C 2128A300 */  addu       $a1, $a1, $v1
/* 71AEB70 80076E40 5FD8000C */  jal        func_8003617C
/* 71AEB74 80076E44 40280500 */   sll       $a1, $a1, 1
/* 71AEB78 80076E48 21202002 */  addu       $a0, $s1, $zero
/* 71AEB7C 80076E4C 21280002 */  addu       $a1, $s0, $zero
/* 71AEB80 80076E50 20030624 */  addiu      $a2, $zero, 0x320
/* 71AEB84 80076E54 21384000 */  addu       $a3, $v0, $zero
/* 71AEB88 80076E58 0780033C */  lui        $v1, %hi(unk_ovlheader_80074314)
/* 71AEB8C 80076E5C 1443638C */  lw         $v1, %lo(unk_ovlheader_80074314)($v1)
/* 71AEB90 80076E60 08000224 */  addiu      $v0, $zero, 0x8
/* 71AEB94 80076E64 1000A2AF */  sw         $v0, 0x10($sp)
/* 71AEB98 80076E68 78000224 */  addiu      $v0, $zero, 0x78
/* 71AEB9C 80076E6C 1400A2AF */  sw         $v0, 0x14($sp)
/* 71AEBA0 80076E70 0E000224 */  addiu      $v0, $zero, 0xE
/* 71AEBA4 80076E74 1800A2AF */  sw         $v0, 0x18($sp)
/* 71AEBA8 80076E78 80000224 */  addiu      $v0, $zero, 0x80
/* 71AEBAC 80076E7C 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 71AEBB0 80076E80 FF000224 */  addiu      $v0, $zero, 0xFF
/* 71AEBB4 80076E84 2000A2AF */  sw         $v0, 0x20($sp)
/* 71AEBB8 80076E88 2400A2AF */  sw         $v0, 0x24($sp)
/* 71AEBBC 80076E8C 2800A0AF */  sw         $zero, 0x28($sp)
/* 71AEBC0 80076E90 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 71AEBC4 80076E94 09F86000 */  jalr       $v1
/* 71AEBC8 80076E98 3000A0AF */   sw        $zero, 0x30($sp)
/* 71AEBCC 80076E9C 0A004104 */  bgez       $v0, .Llevel_33_80076EC8
/* 71AEBD0 80076EA0 00000000 */   nop
/* 71AEBD4 80076EA4 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 71AEBD8 80076EA8 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 71AEBDC 80076EAC 00000000 */  nop
/* 71AEBE0 80076EB0 05004010 */  beqz       $v0, .Llevel_33_80076EC8
/* 71AEBE4 80076EB4 00000000 */   nop
/* 71AEBE8 80076EB8 0000428C */  lw         $v0, 0x0($v0)
/* 71AEBEC 80076EBC B2DB0108 */  j          .Llevel_33_80076EC8
/* 71AEBF0 80076EC0 000040A4 */   sh        $zero, 0x0($v0)
.Llevel_33_80076EC4:
/* 71AEBF4 80076EC4 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_33_80076EC8:
/* 71AEBF8 80076EC8 4D002292 */  lbu        $v0, 0x4D($s1)
/* 71AEBFC 80076ECC 00000000 */  nop
/* 71AEC00 80076ED0 05004014 */  bnez       $v0, .Llevel_33_80076EE8
/* 71AEC04 80076ED4 00000000 */   nop
.Llevel_33_80076ED8:
/* 71AEC08 80076ED8 48002392 */  lbu        $v1, 0x48($s1)
/* 71AEC0C 80076EDC 01000224 */  addiu      $v0, $zero, 0x1
/* 71AEC10 80076EE0 2E006214 */  bne        $v1, $v0, .Llevel_33_80076F9C
/* 71AEC14 80076EE4 00000000 */   nop
.Llevel_33_80076EE8:
/* 71AEC18 80076EE8 4ED7000C */  jal        func_80035D38
/* 71AEC1C 80076EEC 21202002 */   addu      $a0, $s1, $zero
/* 71AEC20 80076EF0 21202002 */  addu       $a0, $s1, $zero
/* 71AEC24 80076EF4 A758010C */  jal        func_8005629C
/* 71AEC28 80076EF8 21804000 */   addu      $s0, $v0, $zero
/* 71AEC2C 80076EFC 27000012 */  beqz       $s0, .Llevel_33_80076F9C
/* 71AEC30 80076F00 00000000 */   nop
/* 71AEC34 80076F04 12004492 */  lbu        $a0, 0x12($s2)
/* 71AEC38 80076F08 00000000 */  nop
/* 71AEC3C 80076F0C 40100400 */  sll        $v0, $a0, 1
/* 71AEC40 80076F10 0680013C */  lui        $at, %hi(D_800658A0)
/* 71AEC44 80076F14 21082200 */  addu       $at, $at, $v0
/* 71AEC48 80076F18 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 71AEC4C 80076F1C 13004292 */  lbu        $v0, 0x13($s2)
/* 71AEC50 80076F20 00000000 */  nop
/* 71AEC54 80076F24 18006200 */  mult       $v1, $v0
/* 71AEC58 80076F28 12400000 */  mflo       $t0
/* 71AEC5C 80076F2C 03130800 */  sra        $v0, $t0, 12
/* 71AEC60 80076F30 80024224 */  addiu      $v0, $v0, 0x280
/* 71AEC64 80076F34 04008010 */  beqz       $a0, .Llevel_33_80076F48
/* 71AEC68 80076F38 21800202 */   addu      $s0, $s0, $v0
/* 71AEC6C 80076F3C 80000224 */  addiu      $v0, $zero, 0x80
/* 71AEC70 80076F40 05008214 */  bne        $a0, $v0, .Llevel_33_80076F58
/* 71AEC74 80076F44 00000000 */   nop
.Llevel_33_80076F48:
/* 71AEC78 80076F48 00010424 */  addiu      $a0, $zero, 0x100
/* 71AEC7C 80076F4C DBD8000C */  jal        func_8003636C
/* 71AEC80 80076F50 00020524 */   addiu     $a1, $zero, 0x200
/* 71AEC84 80076F54 130042A2 */  sb         $v0, 0x13($s2)
.Llevel_33_80076F58:
/* 71AEC88 80076F58 12004292 */  lbu        $v0, 0x12($s2)
/* 71AEC8C 80076F5C 00000000 */  nop
/* 71AEC90 80076F60 FCFF4224 */  addiu      $v0, $v0, -0x4
/* 71AEC94 80076F64 120042A2 */  sb         $v0, 0x12($s2)
/* 71AEC98 80076F68 1400238E */  lw         $v1, 0x14($s1)
/* 71AEC9C 80076F6C 00000000 */  nop
/* 71AECA0 80076F70 23800302 */  subu       $s0, $s0, $v1
/* 71AECA4 80076F74 2100022A */  slti       $v0, $s0, 0x21
/* 71AECA8 80076F78 03004014 */  bnez       $v0, .Llevel_33_80076F88
/* 71AECAC 80076F7C E0FF022A */   slti      $v0, $s0, -0x20
/* 71AECB0 80076F80 20001024 */  addiu      $s0, $zero, 0x20
/* 71AECB4 80076F84 E0FF022A */  slti       $v0, $s0, -0x20
.Llevel_33_80076F88:
/* 71AECB8 80076F88 03004010 */  beqz       $v0, .Llevel_33_80076F98
/* 71AECBC 80076F8C 21107000 */   addu      $v0, $v1, $s0
/* 71AECC0 80076F90 E0FF1024 */  addiu      $s0, $zero, -0x20
/* 71AECC4 80076F94 21107000 */  addu       $v0, $v1, $s0
.Llevel_33_80076F98:
/* 71AECC8 80076F98 140022AE */  sw         $v0, 0x14($s1)
.Llevel_33_80076F9C:
/* 71AECCC 80076F9C 36002386 */  lh         $v1, 0x36($s1)
/* 71AECD0 80076FA0 D3000224 */  addiu      $v0, $zero, 0xD3
/* 71AECD4 80076FA4 0E006214 */  bne        $v1, $v0, .Llevel_33_80076FE0
/* 71AECD8 80076FA8 00000000 */   nop
/* 71AECDC 80076FAC 0780023C */  lui        $v0, %hi(D_8006C640)
/* 71AECE0 80076FB0 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 71AECE4 80076FB4 00000000 */  nop
/* 71AECE8 80076FB8 01004230 */  andi       $v0, $v0, 0x1
/* 71AECEC 80076FBC 08004014 */  bnez       $v0, .Llevel_33_80076FE0
/* 71AECF0 80076FC0 01000424 */   addiu     $a0, $zero, 0x1
/* 71AECF4 80076FC4 0C000524 */  addiu      $a1, $zero, 0xC
/* 71AECF8 80076FC8 21302002 */  addu       $a2, $s1, $zero
/* 71AECFC 80076FCC 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 71AED00 80076FD0 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 71AED04 80076FD4 00000000 */  nop
/* 71AED08 80076FD8 09F84000 */  jalr       $v0
/* 71AED0C 80076FDC 06000724 */   addiu     $a3, $zero, 0x6
.Llevel_33_80076FE0:
/* 71AED10 80076FE0 5C00BF8F */  lw         $ra, 0x5C($sp)
/* 71AED14 80076FE4 5800B48F */  lw         $s4, 0x58($sp)
/* 71AED18 80076FE8 5400B38F */  lw         $s3, 0x54($sp)
/* 71AED1C 80076FEC 5000B28F */  lw         $s2, 0x50($sp)
/* 71AED20 80076FF0 4C00B18F */  lw         $s1, 0x4C($sp)
/* 71AED24 80076FF4 4800B08F */  lw         $s0, 0x48($sp)
/* 71AED28 80076FF8 6000BD27 */  addiu      $sp, $sp, 0x60
/* 71AED2C 80076FFC 0800E003 */  jr         $ra
/* 71AED30 80077000 00000000 */   nop
.size func_level_33_80076978, . - func_level_33_80076978
