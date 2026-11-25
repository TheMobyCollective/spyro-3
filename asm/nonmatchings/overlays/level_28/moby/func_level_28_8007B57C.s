.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_373_level_28
/* 655BAAC 8007B57C 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 655BAB0 8007B580 6000B2AF */  sw         $s2, 0x60($sp)
/* 655BAB4 8007B584 21908000 */  addu       $s2, $a0, $zero
/* 655BAB8 8007B588 6C00BFAF */  sw         $ra, 0x6C($sp)
/* 655BABC 8007B58C 6800B4AF */  sw         $s4, 0x68($sp)
/* 655BAC0 8007B590 6400B3AF */  sw         $s3, 0x64($sp)
/* 655BAC4 8007B594 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 655BAC8 8007B598 5800B0AF */  sw         $s0, 0x58($sp)
/* 655BACC 8007B59C 0C00468E */  lw         $a2, 0xC($s2)
/* 655BAD0 8007B5A0 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 655BAD4 8007B5A4 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 655BAD8 8007B5A8 0000538E */  lw         $s3, 0x0($s2)
/* 655BADC 8007B5AC 0004C328 */  slti       $v1, $a2, 0x400
/* 655BAE0 8007B5B0 0000478C */  lw         $a3, 0x0($v0)
/* 655BAE4 8007B5B4 A4006014 */  bnez       $v1, .Llevel_28_8007B848
/* 655BAE8 8007B5B8 00000000 */   nop
/* 655BAEC 8007B5BC 1000458E */  lw         $a1, 0x10($s2)
/* 655BAF0 8007B5C0 00000000 */  nop
/* 655BAF4 8007B5C4 0004A228 */  slti       $v0, $a1, 0x400
/* 655BAF8 8007B5C8 9F004014 */  bnez       $v0, .Llevel_28_8007B848
/* 655BAFC 8007B5CC 00000000 */   nop
/* 655BB00 8007B5D0 1400448E */  lw         $a0, 0x14($s2)
/* 655BB04 8007B5D4 00000000 */  nop
/* 655BB08 8007B5D8 00048228 */  slti       $v0, $a0, 0x400
/* 655BB0C 8007B5DC 9A004014 */  bnez       $v0, .Llevel_28_8007B848
/* 655BB10 8007B5E0 0300033C */   lui       $v1, (0x3E800 >> 16)
/* 655BB14 8007B5E4 00E86334 */  ori        $v1, $v1, (0x3E800 & 0xFFFF)
/* 655BB18 8007B5E8 2A106600 */  slt        $v0, $v1, $a2
/* 655BB1C 8007B5EC 96004014 */  bnez       $v0, .Llevel_28_8007B848
/* 655BB20 8007B5F0 2A106500 */   slt       $v0, $v1, $a1
/* 655BB24 8007B5F4 94004014 */  bnez       $v0, .Llevel_28_8007B848
/* 655BB28 8007B5F8 2A106400 */   slt       $v0, $v1, $a0
/* 655BB2C 8007B5FC 92004014 */  bnez       $v0, .Llevel_28_8007B848
/* 655BB30 8007B600 00000000 */   nop
/* 655BB34 8007B604 4D004292 */  lbu        $v0, 0x4D($s2)
/* 655BB38 8007B608 00000000 */  nop
/* 655BB3C 8007B60C 8E004010 */  beqz       $v0, .Llevel_28_8007B848
/* 655BB40 8007B610 1800A427 */   addiu     $a0, $sp, 0x18
/* 655BB44 8007B614 0C005426 */  addiu      $s4, $s2, 0xC
/* 655BB48 8007B618 3200E294 */  lhu        $v0, 0x32($a3)
/* 655BB4C 8007B61C 21288002 */  addu       $a1, $s4, $zero
/* 655BB50 8007B620 01004224 */  addiu      $v0, $v0, 0x1
/* 655BB54 8007B624 5E3C010C */  jal        func_8004F178
/* 655BB58 8007B628 3200E2A4 */   sh        $v0, 0x32($a3)
/* 655BB5C 8007B62C 0C00428E */  lw         $v0, 0xC($s2)
/* 655BB60 8007B630 0000638E */  lw         $v1, 0x0($s3)
/* 655BB64 8007B634 00000000 */  nop
/* 655BB68 8007B638 21104300 */  addu       $v0, $v0, $v1
/* 655BB6C 8007B63C 0C0042AE */  sw         $v0, 0xC($s2)
/* 655BB70 8007B640 1000428E */  lw         $v0, 0x10($s2)
/* 655BB74 8007B644 0400638E */  lw         $v1, 0x4($s3)
/* 655BB78 8007B648 00000000 */  nop
/* 655BB7C 8007B64C 21104300 */  addu       $v0, $v0, $v1
/* 655BB80 8007B650 100042AE */  sw         $v0, 0x10($s2)
/* 655BB84 8007B654 1400428E */  lw         $v0, 0x14($s2)
/* 655BB88 8007B658 0800638E */  lw         $v1, 0x8($s3)
/* 655BB8C 8007B65C 48004492 */  lbu        $a0, 0x48($s2)
/* 655BB90 8007B660 21104300 */  addu       $v0, $v0, $v1
/* 655BB94 8007B664 74008014 */  bnez       $a0, .Llevel_28_8007B838
/* 655BB98 8007B668 140042AE */   sw        $v0, 0x14($s2)
/* 655BB9C 8007B66C 21208002 */  addu       $a0, $s4, $zero
/* 655BBA0 8007B670 32000524 */  addiu      $a1, $zero, 0x32
/* 655BBA4 8007B674 01000624 */  addiu      $a2, $zero, 0x1
/* 655BBA8 8007B678 21380000 */  addu       $a3, $zero, $zero
/* 655BBAC 8007B67C 0100023C */  lui        $v0, (0x10000 >> 16)
/* 655BBB0 8007B680 1000A2AF */  sw         $v0, 0x10($sp)
/* 655BBB4 8007B684 8C6E000C */  jal        func_8001BA30
/* 655BBB8 8007B688 1400B2AF */   sw        $s2, 0x14($sp)
/* 655BBBC 8007B68C 21884000 */  addu       $s1, $v0, $zero
/* 655BBC0 8007B690 13002012 */  beqz       $s1, .Llevel_28_8007B6E0
/* 655BBC4 8007B694 21300000 */   addu      $a2, $zero, $zero
/* 655BBC8 8007B698 0C00238E */  lw         $v1, 0xC($s1)
/* 655BBCC 8007B69C 0C00448E */  lw         $a0, 0xC($s2)
/* 655BBD0 8007B6A0 1000228E */  lw         $v0, 0x10($s1)
/* 655BBD4 8007B6A4 1000458E */  lw         $a1, 0x10($s2)
/* 655BBD8 8007B6A8 23206400 */  subu       $a0, $v1, $a0
/* 655BBDC 8007B6AC 203A010C */  jal        func_8004E880
/* 655BBE0 8007B6B0 23284500 */   subu      $a1, $v0, $a1
/* 655BBE4 8007B6B4 21300000 */  addu       $a2, $zero, $zero
/* 655BBE8 8007B6B8 0000648E */  lw         $a0, 0x0($s3)
/* 655BBEC 8007B6BC 0400658E */  lw         $a1, 0x4($s3)
/* 655BBF0 8007B6C0 203A010C */  jal        func_8004E880
/* 655BBF4 8007B6C4 21804000 */   addu      $s0, $v0, $zero
/* 655BBF8 8007B6C8 21200002 */  addu       $a0, $s0, $zero
/* 655BBFC 8007B6CC 21284000 */  addu       $a1, $v0, $zero
/* 655BC00 8007B6D0 20000624 */  addiu      $a2, $zero, 0x20
/* 655BC04 8007B6D4 3ED8000C */  jal        func_800360F8
/* 655BC08 8007B6D8 40000724 */   addiu     $a3, $zero, 0x40
/* 655BC0C 8007B6DC 510022A2 */  sb         $v0, 0x51($s1)
.Llevel_28_8007B6E0:
/* 655BC10 8007B6E0 0C006426 */  addiu      $a0, $s3, 0xC
/* 655BC14 8007B6E4 69D6000C */  jal        func_800359A4
/* 655BC18 8007B6E8 04000524 */   addiu     $a1, $zero, 0x4
/* 655BC1C 8007B6EC 0B004014 */  bnez       $v0, .Llevel_28_8007B71C
/* 655BC20 8007B6F0 0C004426 */   addiu     $a0, $s2, 0xC
/* 655BC24 8007B6F4 0A002016 */  bnez       $s1, .Llevel_28_8007B720
/* 655BC28 8007B6F8 1800A527 */   addiu     $a1, $sp, 0x18
/* 655BC2C 8007B6FC 1000B2AF */  sw         $s2, 0x10($sp)
/* 655BC30 8007B700 1800A427 */  addiu      $a0, $sp, 0x18
/* 655BC34 8007B704 21288002 */  addu       $a1, $s4, $zero
/* 655BC38 8007B708 21300000 */  addu       $a2, $zero, $zero
/* 655BC3C 8007B70C C360000C */  jal        func_8001830C
/* 655BC40 8007B710 0100073C */   lui       $a3, (0x10000 >> 16)
/* 655BC44 8007B714 08004010 */  beqz       $v0, .Llevel_28_8007B738
/* 655BC48 8007B718 0C004426 */   addiu     $a0, $s2, 0xC
.Llevel_28_8007B71C:
/* 655BC4C 8007B71C 1800A527 */  addiu      $a1, $sp, 0x18
.Llevel_28_8007B720:
/* 655BC50 8007B720 000060AE */  sw         $zero, 0x0($s3)
/* 655BC54 8007B724 040060AE */  sw         $zero, 0x4($s3)
/* 655BC58 8007B728 5E3C010C */  jal        func_8004F178
/* 655BC5C 8007B72C 080060AE */   sw        $zero, 0x8($s3)
/* 655BC60 8007B730 62000224 */  addiu      $v0, $zero, 0x62
/* 655BC64 8007B734 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_28_8007B738:
/* 655BC68 8007B738 0000648E */  lw         $a0, 0x0($s3)
/* 655BC6C 8007B73C 0400658E */  lw         $a1, 0x4($s3)
/* 655BC70 8007B740 203A010C */  jal        func_8004E880
/* 655BC74 8007B744 21300000 */   addu      $a2, $zero, $zero
/* 655BC78 8007B748 21200000 */  addu       $a0, $zero, $zero
/* 655BC7C 8007B74C 0E000524 */  addiu      $a1, $zero, 0xE
/* 655BC80 8007B750 F7D8000C */  jal        func_800363DC
/* 655BC84 8007B754 21804000 */   addu      $s0, $v0, $zero
/* 655BC88 8007B758 21800202 */  addu       $s0, $s0, $v0
/* 655BC8C 8007B75C 21980002 */  addu       $s3, $s0, $zero
/* 655BC90 8007B760 2800B127 */  addiu      $s1, $sp, 0x28
/* 655BC94 8007B764 21202002 */  addu       $a0, $s1, $zero
/* 655BC98 8007B768 5E3C010C */  jal        func_8004F178
/* 655BC9C 8007B76C 0C004526 */   addiu     $a1, $s2, 0xC
/* 655BCA0 8007B770 FF006332 */  andi       $v1, $s3, 0xFF
/* 655BCA4 8007B774 80FF1326 */  addiu      $s3, $s0, -0x80
/* 655BCA8 8007B778 40180300 */  sll        $v1, $v1, 1
/* 655BCAC 8007B77C 01000424 */  addiu      $a0, $zero, 0x1
/* 655BCB0 8007B780 FF006732 */  andi       $a3, $s3, 0xFF
/* 655BCB4 8007B784 40380700 */  sll        $a3, $a3, 1
/* 655BCB8 8007B788 0680013C */  lui        $at, %hi(D_80065920)
/* 655BCBC 8007B78C 21082300 */  addu       $at, $at, $v1
/* 655BCC0 8007B790 20592584 */  lh         $a1, %lo(D_80065920)($at)
/* 655BCC4 8007B794 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 655BCC8 8007B798 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 655BCCC 8007B79C 00110500 */  sll        $v0, $a1, 4
/* 655BCD0 8007B7A0 23104500 */  subu       $v0, $v0, $a1
/* 655BCD4 8007B7A4 C3120200 */  sra        $v0, $v0, 11
/* 655BCD8 8007B7A8 3800A2AF */  sw         $v0, 0x38($sp)
/* 655BCDC 8007B7AC 0680013C */  lui        $at, %hi(D_800658A0)
/* 655BCE0 8007B7B0 21082300 */  addu       $at, $at, $v1
/* 655BCE4 8007B7B4 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 655BCE8 8007B7B8 21302002 */  addu       $a2, $s1, $zero
/* 655BCEC 8007B7BC 4000A0AF */  sw         $zero, 0x40($sp)
/* 655BCF0 8007B7C0 00110300 */  sll        $v0, $v1, 4
/* 655BCF4 8007B7C4 23104300 */  subu       $v0, $v0, $v1
/* 655BCF8 8007B7C8 C3120200 */  sra        $v0, $v0, 11
/* 655BCFC 8007B7CC 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 655BD00 8007B7D0 0680013C */  lui        $at, %hi(D_80065920)
/* 655BD04 8007B7D4 21082700 */  addu       $at, $at, $a3
/* 655BD08 8007B7D8 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 655BD0C 8007B7DC 0D000524 */  addiu      $a1, $zero, 0xD
/* 655BD10 8007B7E0 80100300 */  sll        $v0, $v1, 2
/* 655BD14 8007B7E4 21104300 */  addu       $v0, $v0, $v1
/* 655BD18 8007B7E8 2800A38F */  lw         $v1, 0x28($sp)
/* 655BD1C 8007B7EC 43120200 */  sra        $v0, $v0, 9
/* 655BD20 8007B7F0 21186200 */  addu       $v1, $v1, $v0
/* 655BD24 8007B7F4 2800A3AF */  sw         $v1, 0x28($sp)
/* 655BD28 8007B7F8 0680013C */  lui        $at, %hi(D_800658A0)
/* 655BD2C 8007B7FC 21082700 */  addu       $at, $at, $a3
/* 655BD30 8007B800 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 655BD34 8007B804 3800A727 */  addiu      $a3, $sp, 0x38
/* 655BD38 8007B808 80180200 */  sll        $v1, $v0, 2
/* 655BD3C 8007B80C 21186200 */  addu       $v1, $v1, $v0
/* 655BD40 8007B810 2C00A28F */  lw         $v0, 0x2C($sp)
/* 655BD44 8007B814 431A0300 */  sra        $v1, $v1, 9
/* 655BD48 8007B818 21104300 */  addu       $v0, $v0, $v1
/* 655BD4C 8007B81C 09F80001 */  jalr       $t0
/* 655BD50 8007B820 2C00A2AF */   sw        $v0, 0x2C($sp)
/* 655BD54 8007B824 0A004390 */  lbu        $v1, 0xA($v0)
/* 655BD58 8007B828 0E000424 */  addiu      $a0, $zero, 0xE
/* 655BD5C 8007B82C 020044A0 */  sb         $a0, 0x2($v0)
/* 655BD60 8007B830 38006324 */  addiu      $v1, $v1, 0x38
/* 655BD64 8007B834 0A0043A0 */  sb         $v1, 0xA($v0)
.Llevel_28_8007B838:
/* 655BD68 8007B838 48004392 */  lbu        $v1, 0x48($s2)
/* 655BD6C 8007B83C 62000224 */  addiu      $v0, $zero, 0x62
/* 655BD70 8007B840 03006214 */  bne        $v1, $v0, .Llevel_28_8007B850
/* 655BD74 8007B844 00000000 */   nop
.Llevel_28_8007B848:
/* 655BD78 8007B848 C656010C */  jal        func_80055B18
/* 655BD7C 8007B84C 21204002 */   addu      $a0, $s2, $zero
.Llevel_28_8007B850:
/* 655BD80 8007B850 6C00BF8F */  lw         $ra, 0x6C($sp)
/* 655BD84 8007B854 6800B48F */  lw         $s4, 0x68($sp)
/* 655BD88 8007B858 6400B38F */  lw         $s3, 0x64($sp)
/* 655BD8C 8007B85C 6000B28F */  lw         $s2, 0x60($sp)
/* 655BD90 8007B860 5C00B18F */  lw         $s1, 0x5C($sp)
/* 655BD94 8007B864 5800B08F */  lw         $s0, 0x58($sp)
/* 655BD98 8007B868 7000BD27 */  addiu      $sp, $sp, 0x70
/* 655BD9C 8007B86C 0800E003 */  jr         $ra
/* 655BDA0 8007B870 00000000 */   nop
.size MobyUpdate_373_level_28, . - MobyUpdate_373_level_28
