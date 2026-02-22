.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_21_800828BC
/* 53FEDEC 800828BC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 53FEDF0 800828C0 1400B1AF */  sw         $s1, 0x14($sp)
/* 53FEDF4 800828C4 21888000 */  addu       $s1, $a0, $zero
/* 53FEDF8 800828C8 2000BFAF */  sw         $ra, 0x20($sp)
/* 53FEDFC 800828CC 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 53FEE00 800828D0 1800B2AF */  sw         $s2, 0x18($sp)
/* 53FEE04 800828D4 1000B0AF */  sw         $s0, 0x10($sp)
/* 53FEE08 800828D8 48002292 */  lbu        $v0, 0x48($s1)
/* 53FEE0C 800828DC 0000308E */  lw         $s0, 0x0($s1)
/* 53FEE10 800828E0 4D004014 */  bnez       $v0, .Llevel_21_80082A18
/* 53FEE14 800828E4 00000000 */   nop
/* 53FEE18 800828E8 0780123C */  lui        $s2, %hi(D_80070328 + 0xB8)
/* 53FEE1C 800828EC E0035226 */  addiu      $s2, $s2, %lo(D_80070328 + 0xB8)
/* 53FEE20 800828F0 0000428E */  lw         $v0, 0x0($s2)
/* 53FEE24 800828F4 00000000 */  nop
/* 53FEE28 800828F8 54004014 */  bnez       $v0, .Llevel_21_80082A4C
/* 53FEE2C 800828FC 48FF5326 */   addiu     $s3, $s2, -0xB8
/* 53FEE30 80082900 21206002 */  addu       $a0, $s3, $zero
/* 53FEE34 80082904 21280002 */  addu       $a1, $s0, $zero
/* 53FEE38 80082908 21300000 */  addu       $a2, $zero, $zero
/* 53FEE3C 8008290C 88D8000C */  jal        func_80036220
/* 53FEE40 80082910 58020724 */   addiu     $a3, $zero, 0x258
/* 53FEE44 80082914 4D004010 */  beqz       $v0, .Llevel_21_80082A4C
/* 53FEE48 80082918 00000000 */   nop
/* 53FEE4C 8008291C 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 53FEE50 80082920 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 53FEE54 80082924 0800028E */  lw         $v0, 0x8($s0)
/* 53FEE58 80082928 00000000 */  nop
/* 53FEE5C 8008292C 2A104300 */  slt        $v0, $v0, $v1
/* 53FEE60 80082930 46004010 */  beqz       $v0, .Llevel_21_80082A4C
/* 53FEE64 80082934 21282002 */   addu      $a1, $s1, $zero
/* 53FEE68 80082938 0780033C */  lui        $v1, %hi(D_8006C654)
/* 53FEE6C 8008293C 54C6638C */  lw         $v1, %lo(D_8006C654)($v1)
/* 53FEE70 80082940 03000224 */  addiu      $v0, $zero, 0x3
/* 53FEE74 80082944 0680013C */  lui        $at, %hi(D_80066BC8 + 5)
/* 53FEE78 80082948 CD6B22A0 */  sb         $v0, %lo(D_80066BC8 + 5)($at)
/* 53FEE7C 8008294C 01000224 */  addiu      $v0, $zero, 0x1
/* 53FEE80 80082950 0780013C */  lui        $at, %hi(D_800719DC)
/* 53FEE84 80082954 DC1922A4 */  sh         $v0, %lo(D_800719DC)($at)
/* 53FEE88 80082958 23006490 */  lbu        $a0, 0x23($v1)
/* 53FEE8C 8008295C D4EE000C */  jal        PlaySound
/* 53FEE90 80082960 A1000624 */   addiu     $a2, $zero, 0xA1
/* 53FEE94 80082964 D3000424 */  addiu      $a0, $zero, 0xD3
/* 53FEE98 80082968 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 53FEE9C 8008296C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 53FEEA0 80082970 00000000 */  nop
/* 53FEEA4 80082974 09F84000 */  jalr       $v0
/* 53FEEA8 80082978 21282002 */   addu      $a1, $s1, $zero
/* 53FEEAC 8008297C 21804000 */  addu       $s0, $v0, $zero
/* 53FEEB0 80082980 22000012 */  beqz       $s0, .Llevel_21_80082A0C
/* 53FEEB4 80082984 0C000426 */   addiu     $a0, $s0, 0xC
/* 53FEEB8 80082988 5E3C010C */  jal        func_8004F178
/* 53FEEBC 8008298C 21286002 */   addu      $a1, $s3, $zero
/* 53FEEC0 80082990 56FF4292 */  lbu        $v0, -0xAA($s2)
/* 53FEEC4 80082994 00000000 */  nop
/* 53FEEC8 80082998 40100200 */  sll        $v0, $v0, 1
/* 53FEECC 8008299C 0680013C */  lui        $at, %hi(D_80065920)
/* 53FEED0 800829A0 21082200 */  addu       $at, $at, $v0
/* 53FEED4 800829A4 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 53FEED8 800829A8 00000000 */  nop
/* 53FEEDC 800829AC 40100300 */  sll        $v0, $v1, 1
/* 53FEEE0 800829B0 21104300 */  addu       $v0, $v0, $v1
/* 53FEEE4 800829B4 C0100200 */  sll        $v0, $v0, 3
/* 53FEEE8 800829B8 21104300 */  addu       $v0, $v0, $v1
/* 53FEEEC 800829BC 0C00038E */  lw         $v1, 0xC($s0)
/* 53FEEF0 800829C0 C3110200 */  sra        $v0, $v0, 7
/* 53FEEF4 800829C4 21186200 */  addu       $v1, $v1, $v0
/* 53FEEF8 800829C8 0C0003AE */  sw         $v1, 0xC($s0)
/* 53FEEFC 800829CC 56FF4292 */  lbu        $v0, -0xAA($s2)
/* 53FEF00 800829D0 1400038E */  lw         $v1, 0x14($s0)
/* 53FEF04 800829D4 40100200 */  sll        $v0, $v0, 1
/* 53FEF08 800829D8 0680013C */  lui        $at, %hi(D_800658A0)
/* 53FEF0C 800829DC 21082200 */  addu       $at, $at, $v0
/* 53FEF10 800829E0 A0582484 */  lh         $a0, %lo(D_800658A0)($at)
/* 53FEF14 800829E4 F4016324 */  addiu      $v1, $v1, 0x1F4
/* 53FEF18 800829E8 140003AE */  sw         $v1, 0x14($s0)
/* 53FEF1C 800829EC 1000038E */  lw         $v1, 0x10($s0)
/* 53FEF20 800829F0 40100400 */  sll        $v0, $a0, 1
/* 53FEF24 800829F4 21104400 */  addu       $v0, $v0, $a0
/* 53FEF28 800829F8 C0100200 */  sll        $v0, $v0, 3
/* 53FEF2C 800829FC 21104400 */  addu       $v0, $v0, $a0
/* 53FEF30 80082A00 C3110200 */  sra        $v0, $v0, 7
/* 53FEF34 80082A04 21186200 */  addu       $v1, $v1, $v0
/* 53FEF38 80082A08 100003AE */  sw         $v1, 0x10($s0)
.Llevel_21_80082A0C:
/* 53FEF3C 80082A0C 01000224 */  addiu      $v0, $zero, 0x1
/* 53FEF40 80082A10 930A0208 */  j          .Llevel_21_80082A4C
/* 53FEF44 80082A14 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_21_80082A18:
/* 53FEF48 80082A18 48003026 */  addiu      $s0, $s1, 0x48
/* 53FEF4C 80082A1C 21200002 */  addu       $a0, $s0, $zero
/* 53FEF50 80082A20 0780063C */  lui        $a2, %hi(D_8006D088)
/* 53FEF54 80082A24 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 53FEF58 80082A28 EDED000C */  jal        func_8003B7B4
/* 53FEF5C 80082A2C 01000524 */   addiu     $a1, $zero, 0x1
/* 53FEF60 80082A30 21200002 */  addu       $a0, $s0, $zero
/* 53FEF64 80082A34 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 53FEF68 80082A38 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 53FEF6C 80082A3C EDED000C */  jal        func_8003B7B4
/* 53FEF70 80082A40 01000524 */   addiu     $a1, $zero, 0x1
/* 53FEF74 80082A44 C656010C */  jal        func_80055B18
/* 53FEF78 80082A48 21202002 */   addu      $a0, $s1, $zero
.Llevel_21_80082A4C:
/* 53FEF7C 80082A4C 2000BF8F */  lw         $ra, 0x20($sp)
/* 53FEF80 80082A50 1C00B38F */  lw         $s3, 0x1C($sp)
/* 53FEF84 80082A54 1800B28F */  lw         $s2, 0x18($sp)
/* 53FEF88 80082A58 1400B18F */  lw         $s1, 0x14($sp)
/* 53FEF8C 80082A5C 1000B08F */  lw         $s0, 0x10($sp)
/* 53FEF90 80082A60 2800BD27 */  addiu      $sp, $sp, 0x28
/* 53FEF94 80082A64 0800E003 */  jr         $ra
/* 53FEF98 80082A68 00000000 */   nop
.size func_level_21_800828BC, . - func_level_21_800828BC
