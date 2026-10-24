.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_373_level_18
/* 4EAE5DC 8007B8AC 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 4EAE5E0 8007B8B0 6000B2AF */  sw         $s2, 0x60($sp)
/* 4EAE5E4 8007B8B4 21908000 */  addu       $s2, $a0, $zero
/* 4EAE5E8 8007B8B8 6C00BFAF */  sw         $ra, 0x6C($sp)
/* 4EAE5EC 8007B8BC 6800B4AF */  sw         $s4, 0x68($sp)
/* 4EAE5F0 8007B8C0 6400B3AF */  sw         $s3, 0x64($sp)
/* 4EAE5F4 8007B8C4 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 4EAE5F8 8007B8C8 5800B0AF */  sw         $s0, 0x58($sp)
/* 4EAE5FC 8007B8CC 0C00468E */  lw         $a2, 0xC($s2)
/* 4EAE600 8007B8D0 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 4EAE604 8007B8D4 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 4EAE608 8007B8D8 0000538E */  lw         $s3, 0x0($s2)
/* 4EAE60C 8007B8DC 0004C328 */  slti       $v1, $a2, 0x400
/* 4EAE610 8007B8E0 0000478C */  lw         $a3, 0x0($v0)
/* 4EAE614 8007B8E4 A4006014 */  bnez       $v1, .Llevel_18_8007BB78
/* 4EAE618 8007B8E8 00000000 */   nop
/* 4EAE61C 8007B8EC 1000458E */  lw         $a1, 0x10($s2)
/* 4EAE620 8007B8F0 00000000 */  nop
/* 4EAE624 8007B8F4 0004A228 */  slti       $v0, $a1, 0x400
/* 4EAE628 8007B8F8 9F004014 */  bnez       $v0, .Llevel_18_8007BB78
/* 4EAE62C 8007B8FC 00000000 */   nop
/* 4EAE630 8007B900 1400448E */  lw         $a0, 0x14($s2)
/* 4EAE634 8007B904 00000000 */  nop
/* 4EAE638 8007B908 00048228 */  slti       $v0, $a0, 0x400
/* 4EAE63C 8007B90C 9A004014 */  bnez       $v0, .Llevel_18_8007BB78
/* 4EAE640 8007B910 0300033C */   lui       $v1, (0x3E800 >> 16)
/* 4EAE644 8007B914 00E86334 */  ori        $v1, $v1, (0x3E800 & 0xFFFF)
/* 4EAE648 8007B918 2A106600 */  slt        $v0, $v1, $a2
/* 4EAE64C 8007B91C 96004014 */  bnez       $v0, .Llevel_18_8007BB78
/* 4EAE650 8007B920 2A106500 */   slt       $v0, $v1, $a1
/* 4EAE654 8007B924 94004014 */  bnez       $v0, .Llevel_18_8007BB78
/* 4EAE658 8007B928 2A106400 */   slt       $v0, $v1, $a0
/* 4EAE65C 8007B92C 92004014 */  bnez       $v0, .Llevel_18_8007BB78
/* 4EAE660 8007B930 00000000 */   nop
/* 4EAE664 8007B934 4D004292 */  lbu        $v0, 0x4D($s2)
/* 4EAE668 8007B938 00000000 */  nop
/* 4EAE66C 8007B93C 8E004010 */  beqz       $v0, .Llevel_18_8007BB78
/* 4EAE670 8007B940 1800A427 */   addiu     $a0, $sp, 0x18
/* 4EAE674 8007B944 0C005426 */  addiu      $s4, $s2, 0xC
/* 4EAE678 8007B948 3200E294 */  lhu        $v0, 0x32($a3)
/* 4EAE67C 8007B94C 21288002 */  addu       $a1, $s4, $zero
/* 4EAE680 8007B950 01004224 */  addiu      $v0, $v0, 0x1
/* 4EAE684 8007B954 5E3C010C */  jal        func_8004F178
/* 4EAE688 8007B958 3200E2A4 */   sh        $v0, 0x32($a3)
/* 4EAE68C 8007B95C 0C00428E */  lw         $v0, 0xC($s2)
/* 4EAE690 8007B960 0000638E */  lw         $v1, 0x0($s3)
/* 4EAE694 8007B964 00000000 */  nop
/* 4EAE698 8007B968 21104300 */  addu       $v0, $v0, $v1
/* 4EAE69C 8007B96C 0C0042AE */  sw         $v0, 0xC($s2)
/* 4EAE6A0 8007B970 1000428E */  lw         $v0, 0x10($s2)
/* 4EAE6A4 8007B974 0400638E */  lw         $v1, 0x4($s3)
/* 4EAE6A8 8007B978 00000000 */  nop
/* 4EAE6AC 8007B97C 21104300 */  addu       $v0, $v0, $v1
/* 4EAE6B0 8007B980 100042AE */  sw         $v0, 0x10($s2)
/* 4EAE6B4 8007B984 1400428E */  lw         $v0, 0x14($s2)
/* 4EAE6B8 8007B988 0800638E */  lw         $v1, 0x8($s3)
/* 4EAE6BC 8007B98C 48004492 */  lbu        $a0, 0x48($s2)
/* 4EAE6C0 8007B990 21104300 */  addu       $v0, $v0, $v1
/* 4EAE6C4 8007B994 74008014 */  bnez       $a0, .Llevel_18_8007BB68
/* 4EAE6C8 8007B998 140042AE */   sw        $v0, 0x14($s2)
/* 4EAE6CC 8007B99C 21208002 */  addu       $a0, $s4, $zero
/* 4EAE6D0 8007B9A0 32000524 */  addiu      $a1, $zero, 0x32
/* 4EAE6D4 8007B9A4 01000624 */  addiu      $a2, $zero, 0x1
/* 4EAE6D8 8007B9A8 21380000 */  addu       $a3, $zero, $zero
/* 4EAE6DC 8007B9AC 0100023C */  lui        $v0, (0x10000 >> 16)
/* 4EAE6E0 8007B9B0 1000A2AF */  sw         $v0, 0x10($sp)
/* 4EAE6E4 8007B9B4 8C6E000C */  jal        func_8001BA30
/* 4EAE6E8 8007B9B8 1400B2AF */   sw        $s2, 0x14($sp)
/* 4EAE6EC 8007B9BC 21884000 */  addu       $s1, $v0, $zero
/* 4EAE6F0 8007B9C0 13002012 */  beqz       $s1, .Llevel_18_8007BA10
/* 4EAE6F4 8007B9C4 21300000 */   addu      $a2, $zero, $zero
/* 4EAE6F8 8007B9C8 0C00238E */  lw         $v1, 0xC($s1)
/* 4EAE6FC 8007B9CC 0C00448E */  lw         $a0, 0xC($s2)
/* 4EAE700 8007B9D0 1000228E */  lw         $v0, 0x10($s1)
/* 4EAE704 8007B9D4 1000458E */  lw         $a1, 0x10($s2)
/* 4EAE708 8007B9D8 23206400 */  subu       $a0, $v1, $a0
/* 4EAE70C 8007B9DC 203A010C */  jal        func_8004E880
/* 4EAE710 8007B9E0 23284500 */   subu      $a1, $v0, $a1
/* 4EAE714 8007B9E4 21300000 */  addu       $a2, $zero, $zero
/* 4EAE718 8007B9E8 0000648E */  lw         $a0, 0x0($s3)
/* 4EAE71C 8007B9EC 0400658E */  lw         $a1, 0x4($s3)
/* 4EAE720 8007B9F0 203A010C */  jal        func_8004E880
/* 4EAE724 8007B9F4 21804000 */   addu      $s0, $v0, $zero
/* 4EAE728 8007B9F8 21200002 */  addu       $a0, $s0, $zero
/* 4EAE72C 8007B9FC 21284000 */  addu       $a1, $v0, $zero
/* 4EAE730 8007BA00 20000624 */  addiu      $a2, $zero, 0x20
/* 4EAE734 8007BA04 3ED8000C */  jal        func_800360F8
/* 4EAE738 8007BA08 40000724 */   addiu     $a3, $zero, 0x40
/* 4EAE73C 8007BA0C 510022A2 */  sb         $v0, 0x51($s1)
.Llevel_18_8007BA10:
/* 4EAE740 8007BA10 0C006426 */  addiu      $a0, $s3, 0xC
/* 4EAE744 8007BA14 69D6000C */  jal        func_800359A4
/* 4EAE748 8007BA18 04000524 */   addiu     $a1, $zero, 0x4
/* 4EAE74C 8007BA1C 0B004014 */  bnez       $v0, .Llevel_18_8007BA4C
/* 4EAE750 8007BA20 0C004426 */   addiu     $a0, $s2, 0xC
/* 4EAE754 8007BA24 0A002016 */  bnez       $s1, .Llevel_18_8007BA50
/* 4EAE758 8007BA28 1800A527 */   addiu     $a1, $sp, 0x18
/* 4EAE75C 8007BA2C 1000B2AF */  sw         $s2, 0x10($sp)
/* 4EAE760 8007BA30 1800A427 */  addiu      $a0, $sp, 0x18
/* 4EAE764 8007BA34 21288002 */  addu       $a1, $s4, $zero
/* 4EAE768 8007BA38 21300000 */  addu       $a2, $zero, $zero
/* 4EAE76C 8007BA3C C360000C */  jal        func_8001830C
/* 4EAE770 8007BA40 0100073C */   lui       $a3, (0x10000 >> 16)
/* 4EAE774 8007BA44 08004010 */  beqz       $v0, .Llevel_18_8007BA68
/* 4EAE778 8007BA48 0C004426 */   addiu     $a0, $s2, 0xC
.Llevel_18_8007BA4C:
/* 4EAE77C 8007BA4C 1800A527 */  addiu      $a1, $sp, 0x18
.Llevel_18_8007BA50:
/* 4EAE780 8007BA50 000060AE */  sw         $zero, 0x0($s3)
/* 4EAE784 8007BA54 040060AE */  sw         $zero, 0x4($s3)
/* 4EAE788 8007BA58 5E3C010C */  jal        func_8004F178
/* 4EAE78C 8007BA5C 080060AE */   sw        $zero, 0x8($s3)
/* 4EAE790 8007BA60 62000224 */  addiu      $v0, $zero, 0x62
/* 4EAE794 8007BA64 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_18_8007BA68:
/* 4EAE798 8007BA68 0000648E */  lw         $a0, 0x0($s3)
/* 4EAE79C 8007BA6C 0400658E */  lw         $a1, 0x4($s3)
/* 4EAE7A0 8007BA70 203A010C */  jal        func_8004E880
/* 4EAE7A4 8007BA74 21300000 */   addu      $a2, $zero, $zero
/* 4EAE7A8 8007BA78 21200000 */  addu       $a0, $zero, $zero
/* 4EAE7AC 8007BA7C 0E000524 */  addiu      $a1, $zero, 0xE
/* 4EAE7B0 8007BA80 F7D8000C */  jal        func_800363DC
/* 4EAE7B4 8007BA84 21804000 */   addu      $s0, $v0, $zero
/* 4EAE7B8 8007BA88 21800202 */  addu       $s0, $s0, $v0
/* 4EAE7BC 8007BA8C 21980002 */  addu       $s3, $s0, $zero
/* 4EAE7C0 8007BA90 2800B127 */  addiu      $s1, $sp, 0x28
/* 4EAE7C4 8007BA94 21202002 */  addu       $a0, $s1, $zero
/* 4EAE7C8 8007BA98 5E3C010C */  jal        func_8004F178
/* 4EAE7CC 8007BA9C 0C004526 */   addiu     $a1, $s2, 0xC
/* 4EAE7D0 8007BAA0 FF006332 */  andi       $v1, $s3, 0xFF
/* 4EAE7D4 8007BAA4 80FF1326 */  addiu      $s3, $s0, -0x80
/* 4EAE7D8 8007BAA8 40180300 */  sll        $v1, $v1, 1
/* 4EAE7DC 8007BAAC 01000424 */  addiu      $a0, $zero, 0x1
/* 4EAE7E0 8007BAB0 FF006732 */  andi       $a3, $s3, 0xFF
/* 4EAE7E4 8007BAB4 40380700 */  sll        $a3, $a3, 1
/* 4EAE7E8 8007BAB8 0680013C */  lui        $at, %hi(D_80065920)
/* 4EAE7EC 8007BABC 21082300 */  addu       $at, $at, $v1
/* 4EAE7F0 8007BAC0 20592584 */  lh         $a1, %lo(D_80065920)($at)
/* 4EAE7F4 8007BAC4 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 4EAE7F8 8007BAC8 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 4EAE7FC 8007BACC 00110500 */  sll        $v0, $a1, 4
/* 4EAE800 8007BAD0 23104500 */  subu       $v0, $v0, $a1
/* 4EAE804 8007BAD4 C3120200 */  sra        $v0, $v0, 11
/* 4EAE808 8007BAD8 3800A2AF */  sw         $v0, 0x38($sp)
/* 4EAE80C 8007BADC 0680013C */  lui        $at, %hi(D_800658A0)
/* 4EAE810 8007BAE0 21082300 */  addu       $at, $at, $v1
/* 4EAE814 8007BAE4 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 4EAE818 8007BAE8 21302002 */  addu       $a2, $s1, $zero
/* 4EAE81C 8007BAEC 4000A0AF */  sw         $zero, 0x40($sp)
/* 4EAE820 8007BAF0 00110300 */  sll        $v0, $v1, 4
/* 4EAE824 8007BAF4 23104300 */  subu       $v0, $v0, $v1
/* 4EAE828 8007BAF8 C3120200 */  sra        $v0, $v0, 11
/* 4EAE82C 8007BAFC 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 4EAE830 8007BB00 0680013C */  lui        $at, %hi(D_80065920)
/* 4EAE834 8007BB04 21082700 */  addu       $at, $at, $a3
/* 4EAE838 8007BB08 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 4EAE83C 8007BB0C 0D000524 */  addiu      $a1, $zero, 0xD
/* 4EAE840 8007BB10 80100300 */  sll        $v0, $v1, 2
/* 4EAE844 8007BB14 21104300 */  addu       $v0, $v0, $v1
/* 4EAE848 8007BB18 2800A38F */  lw         $v1, 0x28($sp)
/* 4EAE84C 8007BB1C 43120200 */  sra        $v0, $v0, 9
/* 4EAE850 8007BB20 21186200 */  addu       $v1, $v1, $v0
/* 4EAE854 8007BB24 2800A3AF */  sw         $v1, 0x28($sp)
/* 4EAE858 8007BB28 0680013C */  lui        $at, %hi(D_800658A0)
/* 4EAE85C 8007BB2C 21082700 */  addu       $at, $at, $a3
/* 4EAE860 8007BB30 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 4EAE864 8007BB34 3800A727 */  addiu      $a3, $sp, 0x38
/* 4EAE868 8007BB38 80180200 */  sll        $v1, $v0, 2
/* 4EAE86C 8007BB3C 21186200 */  addu       $v1, $v1, $v0
/* 4EAE870 8007BB40 2C00A28F */  lw         $v0, 0x2C($sp)
/* 4EAE874 8007BB44 431A0300 */  sra        $v1, $v1, 9
/* 4EAE878 8007BB48 21104300 */  addu       $v0, $v0, $v1
/* 4EAE87C 8007BB4C 09F80001 */  jalr       $t0
/* 4EAE880 8007BB50 2C00A2AF */   sw        $v0, 0x2C($sp)
/* 4EAE884 8007BB54 0A004390 */  lbu        $v1, 0xA($v0)
/* 4EAE888 8007BB58 0E000424 */  addiu      $a0, $zero, 0xE
/* 4EAE88C 8007BB5C 020044A0 */  sb         $a0, 0x2($v0)
/* 4EAE890 8007BB60 38006324 */  addiu      $v1, $v1, 0x38
/* 4EAE894 8007BB64 0A0043A0 */  sb         $v1, 0xA($v0)
.Llevel_18_8007BB68:
/* 4EAE898 8007BB68 48004392 */  lbu        $v1, 0x48($s2)
/* 4EAE89C 8007BB6C 62000224 */  addiu      $v0, $zero, 0x62
/* 4EAE8A0 8007BB70 03006214 */  bne        $v1, $v0, .Llevel_18_8007BB80
/* 4EAE8A4 8007BB74 00000000 */   nop
.Llevel_18_8007BB78:
/* 4EAE8A8 8007BB78 C656010C */  jal        func_80055B18
/* 4EAE8AC 8007BB7C 21204002 */   addu      $a0, $s2, $zero
.Llevel_18_8007BB80:
/* 4EAE8B0 8007BB80 6C00BF8F */  lw         $ra, 0x6C($sp)
/* 4EAE8B4 8007BB84 6800B48F */  lw         $s4, 0x68($sp)
/* 4EAE8B8 8007BB88 6400B38F */  lw         $s3, 0x64($sp)
/* 4EAE8BC 8007BB8C 6000B28F */  lw         $s2, 0x60($sp)
/* 4EAE8C0 8007BB90 5C00B18F */  lw         $s1, 0x5C($sp)
/* 4EAE8C4 8007BB94 5800B08F */  lw         $s0, 0x58($sp)
/* 4EAE8C8 8007BB98 7000BD27 */  addiu      $sp, $sp, 0x70
/* 4EAE8CC 8007BB9C 0800E003 */  jr         $ra
/* 4EAE8D0 8007BBA0 00000000 */   nop
.size MobyUpdate_373_level_18, . - MobyUpdate_373_level_18
