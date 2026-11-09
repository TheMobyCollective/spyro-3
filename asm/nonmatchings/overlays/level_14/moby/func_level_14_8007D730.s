.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_84_level_14
/* 47BCC60 8007D730 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 47BCC64 8007D734 3000B0AF */  sw         $s0, 0x30($sp)
/* 47BCC68 8007D738 21808000 */  addu       $s0, $a0, $zero
/* 47BCC6C 8007D73C 3800BFAF */  sw         $ra, 0x38($sp)
/* 47BCC70 8007D740 3400B1AF */  sw         $s1, 0x34($sp)
/* 47BCC74 8007D744 48000292 */  lbu        $v0, 0x48($s0)
/* 47BCC78 8007D748 0000118E */  lw         $s1, 0x0($s0)
/* 47BCC7C 8007D74C 36004014 */  bnez       $v0, .Llevel_14_8007D828
/* 47BCC80 8007D750 0C000426 */   addiu     $a0, $s0, 0xC
/* 47BCC84 8007D754 96000524 */  addiu      $a1, $zero, 0x96
/* 47BCC88 8007D758 03000624 */  addiu      $a2, $zero, 0x3
/* 47BCC8C 8007D75C C468000C */  jal        func_8001A310
/* 47BCC90 8007D760 21380002 */   addu      $a3, $s0, $zero
/* 47BCC94 8007D764 30004010 */  beqz       $v0, .Llevel_14_8007D828
/* 47BCC98 8007D768 00000000 */   nop
/* 47BCC9C 8007D76C 14002486 */  lh         $a0, 0x14($s1)
/* 47BCCA0 8007D770 00000000 */  nop
/* 47BCCA4 8007D774 03008228 */  slti       $v0, $a0, 0x3
/* 47BCCA8 8007D778 23004010 */  beqz       $v0, .Llevel_14_8007D808
/* 47BCCAC 8007D77C 03000324 */   addiu     $v1, $zero, 0x3
/* 47BCCB0 8007D780 23186400 */  subu       $v1, $v1, $a0
/* 47BCCB4 8007D784 40100300 */  sll        $v0, $v1, 1
/* 47BCCB8 8007D788 21104300 */  addu       $v0, $v0, $v1
/* 47BCCBC 8007D78C C0100200 */  sll        $v0, $v0, 3
/* 47BCCC0 8007D790 21104300 */  addu       $v0, $v0, $v1
/* 47BCCC4 8007D794 14002396 */  lhu        $v1, 0x14($s1)
/* 47BCCC8 8007D798 40100200 */  sll        $v0, $v0, 1
/* 47BCCCC 8007D79C 040022A6 */  sh         $v0, 0x4($s1)
/* 47BCCD0 8007D7A0 01006324 */  addiu      $v1, $v1, 0x1
/* 47BCCD4 8007D7A4 140023A6 */  sh         $v1, 0x14($s1)
/* 47BCCD8 8007D7A8 0780023C */  lui        $v0, %hi(D_80071908)
/* 47BCCDC 8007D7AC 0819428C */  lw         $v0, %lo(D_80071908)($v0)
/* 47BCCE0 8007D7B0 5555043C */  lui        $a0, (0x55555556 >> 16)
/* 47BCCE4 8007D7B4 9B004224 */  addiu      $v0, $v0, 0x9B
/* 47BCCE8 8007D7B8 140002AE */  sw         $v0, 0x14($s0)
/* 47BCCEC 8007D7BC 00002386 */  lh         $v1, 0x0($s1)
/* 47BCCF0 8007D7C0 56558434 */  ori        $a0, $a0, (0x55555556 & 0xFFFF)
/* 47BCCF4 8007D7C4 40180300 */  sll        $v1, $v1, 1
/* 47BCCF8 8007D7C8 18006400 */  mult       $v1, $a0
/* 47BCCFC 8007D7CC 02002286 */  lh         $v0, 0x2($s1)
/* 47BCD00 8007D7D0 10400000 */  mfhi       $t0
/* 47BCD04 8007D7D4 40100200 */  sll        $v0, $v0, 1
/* 47BCD08 8007D7D8 00000000 */  nop
/* 47BCD0C 8007D7DC 18004400 */  mult       $v0, $a0
/* 47BCD10 8007D7E0 C31F0300 */  sra        $v1, $v1, 31
/* 47BCD14 8007D7E4 96000424 */  addiu      $a0, $zero, 0x96
/* 47BCD18 8007D7E8 23180301 */  subu       $v1, $t0, $v1
/* 47BCD1C 8007D7EC C3170200 */  sra        $v0, $v0, 31
/* 47BCD20 8007D7F0 0C0024A6 */  sh         $a0, 0xC($s1)
/* 47BCD24 8007D7F4 000023A6 */  sh         $v1, 0x0($s1)
/* 47BCD28 8007D7F8 10280000 */  mfhi       $a1
/* 47BCD2C 8007D7FC 2310A200 */  subu       $v0, $a1, $v0
/* 47BCD30 8007D800 0AF60108 */  j          .Llevel_14_8007D828
/* 47BCD34 8007D804 020022A6 */   sh        $v0, 0x2($s1)
.Llevel_14_8007D808:
/* 47BCD38 8007D808 01000224 */  addiu      $v0, $zero, 0x1
/* 47BCD3C 8007D80C 480002A2 */  sb         $v0, 0x48($s0)
/* 47BCD40 8007D810 0780023C */  lui        $v0, %hi(D_80071908)
/* 47BCD44 8007D814 0819428C */  lw         $v0, %lo(D_80071908)($v0)
/* 47BCD48 8007D818 00000000 */  nop
/* 47BCD4C 8007D81C 140002AE */  sw         $v0, 0x14($s0)
/* 47BCD50 8007D820 64000224 */  addiu      $v0, $zero, 0x64
/* 47BCD54 8007D824 0C0022A6 */  sh         $v0, 0xC($s1)
.Llevel_14_8007D828:
/* 47BCD58 8007D828 48000392 */  lbu        $v1, 0x48($s0)
/* 47BCD5C 8007D82C 01000224 */  addiu      $v0, $zero, 0x1
/* 47BCD60 8007D830 71006210 */  beq        $v1, $v0, .Llevel_14_8007D9F8
/* 47BCD64 8007D834 02006228 */   slti      $v0, $v1, 0x2
/* 47BCD68 8007D838 05004010 */  beqz       $v0, .Llevel_14_8007D850
/* 47BCD6C 8007D83C 00000000 */   nop
/* 47BCD70 8007D840 3A006010 */  beqz       $v1, .Llevel_14_8007D92C
/* 47BCD74 8007D844 01000424 */   addiu     $a0, $zero, 0x1
/* 47BCD78 8007D848 ADF60108 */  j          .Llevel_14_8007DAB4
/* 47BCD7C 8007D84C 00000000 */   nop
.Llevel_14_8007D850:
/* 47BCD80 8007D850 02000224 */  addiu      $v0, $zero, 0x2
/* 47BCD84 8007D854 31006210 */  beq        $v1, $v0, .Llevel_14_8007D91C
/* 47BCD88 8007D858 03000224 */   addiu     $v0, $zero, 0x3
/* 47BCD8C 8007D85C 95006214 */  bne        $v1, $v0, .Llevel_14_8007DAB4
/* 47BCD90 8007D860 00000000 */   nop
/* 47BCD94 8007D864 C5E5000C */  jal        func_80039714
/* 47BCD98 8007D868 21200002 */   addu      $a0, $s0, $zero
/* 47BCD9C 8007D86C 91004010 */  beqz       $v0, .Llevel_14_8007DAB4
/* 47BCDA0 8007D870 21880000 */   addu      $s1, $zero, $zero
/* 47BCDA4 8007D874 21200000 */  addu       $a0, $zero, $zero
.Llevel_14_8007D878:
/* 47BCDA8 8007D878 DBD8000C */  jal        func_8003636C
/* 47BCDAC 8007D87C 00080524 */   addiu     $a1, $zero, 0x800
/* 47BCDB0 8007D880 21200000 */  addu       $a0, $zero, $zero
/* 47BCDB4 8007D884 0C00038E */  lw         $v1, 0xC($s0)
/* 47BCDB8 8007D888 00080524 */  addiu      $a1, $zero, 0x800
/* 47BCDBC 8007D88C 00FC6324 */  addiu      $v1, $v1, -0x400
/* 47BCDC0 8007D890 21186200 */  addu       $v1, $v1, $v0
/* 47BCDC4 8007D894 DBD8000C */  jal        func_8003636C
/* 47BCDC8 8007D898 2000A3AF */   sw        $v1, 0x20($sp)
/* 47BCDCC 8007D89C 21200000 */  addu       $a0, $zero, $zero
/* 47BCDD0 8007D8A0 1000038E */  lw         $v1, 0x10($s0)
/* 47BCDD4 8007D8A4 00080524 */  addiu      $a1, $zero, 0x800
/* 47BCDD8 8007D8A8 00FC6324 */  addiu      $v1, $v1, -0x400
/* 47BCDDC 8007D8AC 21186200 */  addu       $v1, $v1, $v0
/* 47BCDE0 8007D8B0 DBD8000C */  jal        func_8003636C
/* 47BCDE4 8007D8B4 2400A3AF */   sw        $v1, 0x24($sp)
/* 47BCDE8 8007D8B8 01000424 */  addiu      $a0, $zero, 0x1
/* 47BCDEC 8007D8BC 01000524 */  addiu      $a1, $zero, 0x1
/* 47BCDF0 8007D8C0 2000A627 */  addiu      $a2, $sp, 0x20
/* 47BCDF4 8007D8C4 1400088E */  lw         $t0, 0x14($s0)
/* 47BCDF8 8007D8C8 E2FF0324 */  addiu      $v1, $zero, -0x1E
/* 47BCDFC 8007D8CC 1800A3AF */  sw         $v1, 0x18($sp)
/* 47BCE00 8007D8D0 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 47BCE04 8007D8D4 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 47BCE08 8007D8D8 1000A727 */  addiu      $a3, $sp, 0x10
/* 47BCE0C 8007D8DC 1000A0AF */  sw         $zero, 0x10($sp)
/* 47BCE10 8007D8E0 1400A0AF */  sw         $zero, 0x14($sp)
/* 47BCE14 8007D8E4 00FC0825 */  addiu      $t0, $t0, -0x400
/* 47BCE18 8007D8E8 21400201 */  addu       $t0, $t0, $v0
/* 47BCE1C 8007D8EC 09F86000 */  jalr       $v1
/* 47BCE20 8007D8F0 2800A8AF */   sw        $t0, 0x28($sp)
/* 47BCE24 8007D8F4 21184000 */  addu       $v1, $v0, $zero
/* 47BCE28 8007D8F8 02006010 */  beqz       $v1, .Llevel_14_8007D904
/* 47BCE2C 8007D8FC B4000224 */   addiu     $v0, $zero, 0xB4
/* 47BCE30 8007D900 0A0062A0 */  sb         $v0, 0xA($v1)
.Llevel_14_8007D904:
/* 47BCE34 8007D904 01003126 */  addiu      $s1, $s1, 0x1
/* 47BCE38 8007D908 0300222A */  slti       $v0, $s1, 0x3
/* 47BCE3C 8007D90C DAFF4014 */  bnez       $v0, .Llevel_14_8007D878
/* 47BCE40 8007D910 21200000 */   addu      $a0, $zero, $zero
/* 47BCE44 8007D914 ADF60108 */  j          .Llevel_14_8007DAB4
/* 47BCE48 8007D918 00000000 */   nop
.Llevel_14_8007D91C:
/* 47BCE4C 8007D91C C5E5000C */  jal        func_80039714
/* 47BCE50 8007D920 21200002 */   addu      $a0, $s0, $zero
/* 47BCE54 8007D924 ADF60108 */  j          .Llevel_14_8007DAB4
/* 47BCE58 8007D928 00000000 */   nop
.Llevel_14_8007D92C:
/* 47BCE5C 8007D92C 01000524 */  addiu      $a1, $zero, 0x1
/* 47BCE60 8007D930 0C000626 */  addiu      $a2, $s0, 0xC
/* 47BCE64 8007D934 1000A727 */  addiu      $a3, $sp, 0x10
/* 47BCE68 8007D938 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 47BCE6C 8007D93C E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 47BCE70 8007D940 1E000224 */  addiu      $v0, $zero, 0x1E
/* 47BCE74 8007D944 1000A0AF */  sw         $zero, 0x10($sp)
/* 47BCE78 8007D948 1400A0AF */  sw         $zero, 0x14($sp)
/* 47BCE7C 8007D94C 09F86000 */  jalr       $v1
/* 47BCE80 8007D950 1800A2AF */   sw        $v0, 0x18($sp)
/* 47BCE84 8007D954 00002386 */  lh         $v1, 0x0($s1)
/* 47BCE88 8007D958 0C00028E */  lw         $v0, 0xC($s0)
/* 47BCE8C 8007D95C 00000000 */  nop
/* 47BCE90 8007D960 21104300 */  addu       $v0, $v0, $v1
/* 47BCE94 8007D964 0C0002AE */  sw         $v0, 0xC($s0)
/* 47BCE98 8007D968 02002386 */  lh         $v1, 0x2($s1)
/* 47BCE9C 8007D96C 1000028E */  lw         $v0, 0x10($s0)
/* 47BCEA0 8007D970 00000000 */  nop
/* 47BCEA4 8007D974 21104300 */  addu       $v0, $v0, $v1
/* 47BCEA8 8007D978 100002AE */  sw         $v0, 0x10($s0)
/* 47BCEAC 8007D97C 04002296 */  lhu        $v0, 0x4($s1)
/* 47BCEB0 8007D980 00000000 */  nop
/* 47BCEB4 8007D984 F6FF4224 */  addiu      $v0, $v0, -0xA
/* 47BCEB8 8007D988 040022A6 */  sh         $v0, 0x4($s1)
/* 47BCEBC 8007D98C 00140200 */  sll        $v0, $v0, 16
/* 47BCEC0 8007D990 03140200 */  sra        $v0, $v0, 16
/* 47BCEC4 8007D994 38FF4228 */  slti       $v0, $v0, -0xC8
/* 47BCEC8 8007D998 02004010 */  beqz       $v0, .Llevel_14_8007D9A4
/* 47BCECC 8007D99C 38FF0224 */   addiu     $v0, $zero, -0xC8
/* 47BCED0 8007D9A0 040022A6 */  sh         $v0, 0x4($s1)
.Llevel_14_8007D9A4:
/* 47BCED4 8007D9A4 04002386 */  lh         $v1, 0x4($s1)
/* 47BCED8 8007D9A8 1400028E */  lw         $v0, 0x14($s0)
/* 47BCEDC 8007D9AC 00000000 */  nop
/* 47BCEE0 8007D9B0 21104300 */  addu       $v0, $v0, $v1
/* 47BCEE4 8007D9B4 140002AE */  sw         $v0, 0x14($s0)
/* 47BCEE8 8007D9B8 44000292 */  lbu        $v0, 0x44($s0)
/* 47BCEEC 8007D9BC 06002392 */  lbu        $v1, 0x6($s1)
/* 47BCEF0 8007D9C0 00000000 */  nop
/* 47BCEF4 8007D9C4 21104300 */  addu       $v0, $v0, $v1
/* 47BCEF8 8007D9C8 440002A2 */  sb         $v0, 0x44($s0)
/* 47BCEFC 8007D9CC 45000292 */  lbu        $v0, 0x45($s0)
/* 47BCF00 8007D9D0 08002392 */  lbu        $v1, 0x8($s1)
/* 47BCF04 8007D9D4 0C002426 */  addiu      $a0, $s1, 0xC
/* 47BCF08 8007D9D8 21104300 */  addu       $v0, $v0, $v1
/* 47BCF0C 8007D9DC 450002A2 */  sb         $v0, 0x45($s0)
/* 47BCF10 8007D9E0 46000292 */  lbu        $v0, 0x46($s0)
/* 47BCF14 8007D9E4 0A002392 */  lbu        $v1, 0xA($s1)
/* 47BCF18 8007D9E8 02000524 */  addiu      $a1, $zero, 0x2
/* 47BCF1C 8007D9EC 21104300 */  addu       $v0, $v0, $v1
/* 47BCF20 8007D9F0 A7F60108 */  j          .Llevel_14_8007DA9C
/* 47BCF24 8007D9F4 460002A2 */   sb        $v0, 0x46($s0)
.Llevel_14_8007D9F8:
/* 47BCF28 8007D9F8 16002286 */  lh         $v0, 0x16($s1)
/* 47BCF2C 8007D9FC 00000000 */  nop
/* 47BCF30 8007DA00 22004014 */  bnez       $v0, .Llevel_14_8007DA8C
/* 47BCF34 8007DA04 16002426 */   addiu     $a0, $s1, 0x16
/* 47BCF38 8007DA08 21200000 */  addu       $a0, $zero, $zero
/* 47BCF3C 8007DA0C DBD8000C */  jal        func_8003636C
/* 47BCF40 8007DA10 14000524 */   addiu     $a1, $zero, 0x14
/* 47BCF44 8007DA14 21200000 */  addu       $a0, $zero, $zero
/* 47BCF48 8007DA18 14000524 */  addiu      $a1, $zero, 0x14
/* 47BCF4C 8007DA1C F6FF4224 */  addiu      $v0, $v0, -0xA
/* 47BCF50 8007DA20 DBD8000C */  jal        func_8003636C
/* 47BCF54 8007DA24 1000A2AF */   sw        $v0, 0x10($sp)
/* 47BCF58 8007DA28 01000424 */  addiu      $a0, $zero, 0x1
/* 47BCF5C 8007DA2C 21280000 */  addu       $a1, $zero, $zero
/* 47BCF60 8007DA30 0C000626 */  addiu      $a2, $s0, 0xC
/* 47BCF64 8007DA34 1000A727 */  addiu      $a3, $sp, 0x10
/* 47BCF68 8007DA38 F6FF4224 */  addiu      $v0, $v0, -0xA
/* 47BCF6C 8007DA3C 1400A2AF */  sw         $v0, 0x14($sp)
/* 47BCF70 8007DA40 14000224 */  addiu      $v0, $zero, 0x14
/* 47BCF74 8007DA44 1800A2AF */  sw         $v0, 0x18($sp)
/* 47BCF78 8007DA48 1400028E */  lw         $v0, 0x14($s0)
/* 47BCF7C 8007DA4C 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 47BCF80 8007DA50 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 47BCF84 8007DA54 32004224 */  addiu      $v0, $v0, 0x32
/* 47BCF88 8007DA58 09F86000 */  jalr       $v1
/* 47BCF8C 8007DA5C 140002AE */   sw        $v0, 0x14($s0)
/* 47BCF90 8007DA60 1400038E */  lw         $v1, 0x14($s0)
/* 47BCF94 8007DA64 00000000 */  nop
/* 47BCF98 8007DA68 CEFF6324 */  addiu      $v1, $v1, -0x32
/* 47BCF9C 8007DA6C 140003AE */  sw         $v1, 0x14($s0)
/* 47BCFA0 8007DA70 21184000 */  addu       $v1, $v0, $zero
/* 47BCFA4 8007DA74 02006010 */  beqz       $v1, .Llevel_14_8007DA80
/* 47BCFA8 8007DA78 32000224 */   addiu     $v0, $zero, 0x32
/* 47BCFAC 8007DA7C 0A0062A0 */  sb         $v0, 0xA($v1)
.Llevel_14_8007DA80:
/* 47BCFB0 8007DA80 05000224 */  addiu      $v0, $zero, 0x5
/* 47BCFB4 8007DA84 A5F60108 */  j          .Llevel_14_8007DA94
/* 47BCFB8 8007DA88 160022A6 */   sh        $v0, 0x16($s1)
.Llevel_14_8007DA8C:
/* 47BCFBC 8007DA8C 69D6000C */  jal        func_800359A4
/* 47BCFC0 8007DA90 02000524 */   addiu     $a1, $zero, 0x2
.Llevel_14_8007DA94:
/* 47BCFC4 8007DA94 0C002426 */  addiu      $a0, $s1, 0xC
/* 47BCFC8 8007DA98 02000524 */  addiu      $a1, $zero, 0x2
.Llevel_14_8007DA9C:
/* 47BCFCC 8007DA9C 69D6000C */  jal        func_800359A4
/* 47BCFD0 8007DAA0 00000000 */   nop
/* 47BCFD4 8007DAA4 03004010 */  beqz       $v0, .Llevel_14_8007DAB4
/* 47BCFD8 8007DAA8 00000000 */   nop
/* 47BCFDC 8007DAAC C656010C */  jal        func_80055B18
/* 47BCFE0 8007DAB0 21200002 */   addu      $a0, $s0, $zero
.Llevel_14_8007DAB4:
/* 47BCFE4 8007DAB4 3800BF8F */  lw         $ra, 0x38($sp)
/* 47BCFE8 8007DAB8 3400B18F */  lw         $s1, 0x34($sp)
/* 47BCFEC 8007DABC 3000B08F */  lw         $s0, 0x30($sp)
/* 47BCFF0 8007DAC0 4000BD27 */  addiu      $sp, $sp, 0x40
/* 47BCFF4 8007DAC4 0800E003 */  jr         $ra
/* 47BCFF8 8007DAC8 00000000 */   nop
.size MobyUpdate_84_level_14, . - MobyUpdate_84_level_14
