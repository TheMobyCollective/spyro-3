.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1000_level_43
/* 87AEB70 80089640 30FFBD27 */  addiu      $sp, $sp, -0xD0
/* 87AEB74 80089644 CC00BFAF */  sw         $ra, 0xCC($sp)
/* 87AEB78 80089648 C800BEAF */  sw         $fp, 0xC8($sp)
/* 87AEB7C 8008964C C400B7AF */  sw         $s7, 0xC4($sp)
/* 87AEB80 80089650 C000B6AF */  sw         $s6, 0xC0($sp)
/* 87AEB84 80089654 BC00B5AF */  sw         $s5, 0xBC($sp)
/* 87AEB88 80089658 B800B4AF */  sw         $s4, 0xB8($sp)
/* 87AEB8C 8008965C B400B3AF */  sw         $s3, 0xB4($sp)
/* 87AEB90 80089660 B000B2AF */  sw         $s2, 0xB0($sp)
/* 87AEB94 80089664 AC00B1AF */  sw         $s1, 0xAC($sp)
/* 87AEB98 80089668 A800B0AF */  sw         $s0, 0xA8($sp)
/* 87AEB9C 8008966C 3800A4AF */  sw         $a0, 0x38($sp)
/* 87AEBA0 80089670 0000988C */  lw         $t8, 0x0($a0)
/* 87AEBA4 80089674 00000000 */  nop
/* 87AEBA8 80089678 4000B8AF */  sw         $t8, 0x40($sp)
/* 87AEBAC 8008967C 1000028F */  lw         $v0, 0x10($t8)
/* 87AEBB0 80089680 00000000 */  nop
/* 87AEBB4 80089684 0000428C */  lw         $v0, 0x0($v0)
/* 87AEBB8 80089688 00000000 */  nop
/* 87AEBBC 8008968C 4800A2AF */  sw         $v0, 0x48($sp)
/* 87AEBC0 80089690 410080A0 */  sb         $zero, 0x41($a0)
/* 87AEBC4 80089694 3800B88F */  lw         $t8, 0x38($sp)
/* 87AEBC8 80089698 00000000 */  nop
/* 87AEBCC 8008969C 48000393 */  lbu        $v1, 0x48($t8)
/* 87AEBD0 800896A0 01000224 */  addiu      $v0, $zero, 0x1
/* 87AEBD4 800896A4 4C0000A3 */  sb         $zero, 0x4C($t8)
/* 87AEBD8 800896A8 10006214 */  bne        $v1, $v0, .Llevel_43_800896EC
/* 87AEBDC 800896AC 4D0000A3 */   sb        $zero, 0x4D($t8)
/* 87AEBE0 800896B0 4000B88F */  lw         $t8, 0x40($sp)
/* 87AEBE4 800896B4 00000000 */  nop
/* 87AEBE8 800896B8 00000297 */  lhu        $v0, 0x0($t8)
/* 87AEBEC 800896BC 00000000 */  nop
/* 87AEBF0 800896C0 2C014224 */  addiu      $v0, $v0, 0x12C
/* 87AEBF4 800896C4 000002A7 */  sh         $v0, 0x0($t8)
/* 87AEBF8 800896C8 00140200 */  sll        $v0, $v0, 16
/* 87AEBFC 800896CC 03140200 */  sra        $v0, $v0, 16
/* 87AEC00 800896D0 01084228 */  slti       $v0, $v0, 0x801
/* 87AEC04 800896D4 05004014 */  bnez       $v0, .Llevel_43_800896EC
/* 87AEC08 800896D8 00080224 */   addiu     $v0, $zero, 0x800
/* 87AEC0C 800896DC 000002A7 */  sh         $v0, 0x0($t8)
/* 87AEC10 800896E0 3800B88F */  lw         $t8, 0x38($sp)
/* 87AEC14 800896E4 02000224 */  addiu      $v0, $zero, 0x2
/* 87AEC18 800896E8 480002A3 */  sb         $v0, 0x48($t8)
.Llevel_43_800896EC:
/* 87AEC1C 800896EC 4000B88F */  lw         $t8, 0x40($sp)
/* 87AEC20 800896F0 7800A0AF */  sw         $zero, 0x78($sp)
/* 87AEC24 800896F4 0400188F */  lw         $t8, 0x4($t8)
/* 87AEC28 800896F8 00000000 */  nop
/* 87AEC2C 800896FC 5800B8AF */  sw         $t8, 0x58($sp)
/* 87AEC30 80089700 4000B88F */  lw         $t8, 0x40($sp)
/* 87AEC34 80089704 00000000 */  nop
/* 87AEC38 80089708 00001887 */  lh         $t8, 0x0($t8)
/* 87AEC3C 8008970C 00000000 */  nop
/* 87AEC40 80089710 5000B8AF */  sw         $t8, 0x50($sp)
/* 87AEC44 80089714 5800B88F */  lw         $t8, 0x58($sp)
/* 87AEC48 80089718 21A80000 */  addu       $s5, $zero, $zero
/* 87AEC4C 8008971C 3C041827 */  addiu      $t8, $t8, 0x43C
/* 87AEC50 80089720 6000B8AF */  sw         $t8, 0x60($sp)
/* 87AEC54 80089724 5800B88F */  lw         $t8, 0x58($sp)
/* 87AEC58 80089728 21A00000 */  addu       $s4, $zero, $zero
/* 87AEC5C 8008972C 7C041827 */  addiu      $t8, $t8, 0x47C
/* 87AEC60 80089730 6800B8AF */  sw         $t8, 0x68($sp)
.Llevel_43_80089734:
/* 87AEC64 80089734 3800B88F */  lw         $t8, 0x38($sp)
/* 87AEC68 80089738 00000000 */  nop
/* 87AEC6C 8008973C 46000493 */  lbu        $a0, 0x46($t8)
/* 87AEC70 80089740 7800B88F */  lw         $t8, 0x78($sp)
/* 87AEC74 80089744 00000000 */  nop
/* 87AEC78 80089748 21209800 */  addu       $a0, $a0, $t8
/* 87AEC7C 8008974C FF008330 */  andi       $v1, $a0, 0xFF
/* 87AEC80 80089750 40180300 */  sll        $v1, $v1, 1
/* 87AEC84 80089754 0680183C */  lui        $t8, %hi(D_80065920)
/* 87AEC88 80089758 20591827 */  addiu      $t8, $t8, %lo(D_80065920)
/* 87AEC8C 8008975C 21107800 */  addu       $v0, $v1, $t8
/* 87AEC90 80089760 00004284 */  lh         $v0, 0x0($v0)
/* 87AEC94 80089764 5000B88F */  lw         $t8, 0x50($sp)
/* 87AEC98 80089768 00000000 */  nop
/* 87AEC9C 8008976C 18005800 */  mult       $v0, $t8
/* 87AECA0 80089770 21880000 */  addu       $s1, $zero, $zero
/* 87AECA4 80089774 0680183C */  lui        $t8, %hi(D_800658A0)
/* 87AECA8 80089778 A0581827 */  addiu      $t8, $t8, %lo(D_800658A0)
/* 87AECAC 8008977C 21187800 */  addu       $v1, $v1, $t8
/* 87AECB0 80089780 00006284 */  lh         $v0, 0x0($v1)
/* 87AECB4 80089784 12280000 */  mflo       $a1
/* 87AECB8 80089788 5000B88F */  lw         $t8, 0x50($sp)
/* 87AECBC 8008978C 21900000 */  addu       $s2, $zero, $zero
/* 87AECC0 80089790 18005800 */  mult       $v0, $t8
/* 87AECC4 80089794 40008424 */  addiu      $a0, $a0, 0x40
/* 87AECC8 80089798 FF008430 */  andi       $a0, $a0, 0xFF
/* 87AECCC 8008979C 40200400 */  sll        $a0, $a0, 1
/* 87AECD0 800897A0 4000B88F */  lw         $t8, 0x40($sp)
/* 87AECD4 800897A4 03BB0500 */  sra        $s7, $a1, 12
/* 87AECD8 800897A8 02001387 */  lh         $s3, 0x2($t8)
/* 87AECDC 800897AC 0680183C */  lui        $t8, %hi(D_800658A0)
/* 87AECE0 800897B0 A0581827 */  addiu      $t8, $t8, %lo(D_800658A0)
/* 87AECE4 800897B4 21C09800 */  addu       $t8, $a0, $t8
/* 87AECE8 800897B8 7000B8AF */  sw         $t8, 0x70($sp)
/* 87AECEC 800897BC 0680183C */  lui        $t8, %hi(D_80065920)
/* 87AECF0 800897C0 20591827 */  addiu      $t8, $t8, %lo(D_80065920)
/* 87AECF4 800897C4 21F09800 */  addu       $fp, $a0, $t8
/* 87AECF8 800897C8 12180000 */  mflo       $v1
/* 87AECFC 800897CC 03B30300 */  sra        $s6, $v1, 12
.Llevel_43_800897D0:
/* 87AED00 800897D0 FF004332 */  andi       $v1, $s2, 0xFF
/* 87AED04 800897D4 40180300 */  sll        $v1, $v1, 1
/* 87AED08 800897D8 0680183C */  lui        $t8, %hi(D_80065920)
/* 87AED0C 800897DC 20591827 */  addiu      $t8, $t8, %lo(D_80065920)
/* 87AED10 800897E0 21107800 */  addu       $v0, $v1, $t8
/* 87AED14 800897E4 1800A0AF */  sw         $zero, 0x18($sp)
/* 87AED18 800897E8 00004284 */  lh         $v0, 0x0($v0)
/* 87AED1C 800897EC 00000000 */  nop
/* 87AED20 800897F0 18005300 */  mult       $v0, $s3
/* 87AED24 800897F4 12C00000 */  mflo       $t8
/* 87AED28 800897F8 03231800 */  sra        $a0, $t8, 12
/* 87AED2C 800897FC 0680183C */  lui        $t8, %hi(D_800658A0)
/* 87AED30 80089800 A0581827 */  addiu      $t8, $t8, %lo(D_800658A0)
/* 87AED34 80089804 21187800 */  addu       $v1, $v1, $t8
/* 87AED38 80089808 1C00A4AF */  sw         $a0, 0x1C($sp)
/* 87AED3C 8008980C 00006284 */  lh         $v0, 0x0($v1)
/* 87AED40 80089810 00000000 */  nop
/* 87AED44 80089814 18005300 */  mult       $v0, $s3
/* 87AED48 80089818 12C00000 */  mflo       $t8
/* 87AED4C 8008981C 03131800 */  sra        $v0, $t8, 12
/* 87AED50 80089820 7000B88F */  lw         $t8, 0x70($sp)
/* 87AED54 80089824 2000A2AF */  sw         $v0, 0x20($sp)
/* 87AED58 80089828 00000287 */  lh         $v0, 0x0($t8)
/* 87AED5C 8008982C 00000000 */  nop
/* 87AED60 80089830 18008200 */  mult       $a0, $v0
/* 87AED64 80089834 21189102 */  addu       $v1, $s4, $s1
/* 87AED68 80089838 5800B88F */  lw         $t8, 0x58($sp)
/* 87AED6C 8008983C 40100300 */  sll        $v0, $v1, 1
/* 87AED70 80089840 21104300 */  addu       $v0, $v0, $v1
/* 87AED74 80089844 80100200 */  sll        $v0, $v0, 2
/* 87AED78 80089848 21800203 */  addu       $s0, $t8, $v0
/* 87AED7C 8008984C 12C00000 */  mflo       $t8
/* 87AED80 80089850 23101800 */  negu       $v0, $t8
/* 87AED84 80089854 03130200 */  sra        $v0, $v0, 12
/* 87AED88 80089858 000002AE */  sw         $v0, 0x0($s0)
/* 87AED8C 8008985C 0000C387 */  lh         $v1, 0x0($fp)
/* 87AED90 80089860 1C00A28F */  lw         $v0, 0x1C($sp)
/* 87AED94 80089864 00000000 */  nop
/* 87AED98 80089868 18004300 */  mult       $v0, $v1
/* 87AED9C 8008986C 3800B88F */  lw         $t8, 0x38($sp)
/* 87AEDA0 80089870 21200002 */  addu       $a0, $s0, $zero
/* 87AEDA4 80089874 0C000527 */  addiu      $a1, $t8, 0xC
/* 87AEDA8 80089878 12C00000 */  mflo       $t8
/* 87AEDAC 8008987C 03131800 */  sra        $v0, $t8, 12
/* 87AEDB0 80089880 040002AE */  sw         $v0, 0x4($s0)
/* 87AEDB4 80089884 2000A28F */  lw         $v0, 0x20($sp)
/* 87AEDB8 80089888 21300002 */  addu       $a2, $s0, $zero
/* 87AEDBC 8008988C 653C010C */  jal        func_8004F194
/* 87AEDC0 80089890 080002AE */   sw        $v0, 0x8($s0)
/* 87AEDC4 80089894 0000028E */  lw         $v0, 0x0($s0)
/* 87AEDC8 80089898 0400038E */  lw         $v1, 0x4($s0)
/* 87AEDCC 8008989C 21105700 */  addu       $v0, $v0, $s7
/* 87AEDD0 800898A0 21187600 */  addu       $v1, $v1, $s6
/* 87AEDD4 800898A4 000002AE */  sw         $v0, 0x0($s0)
/* 87AEDD8 800898A8 040003AE */  sw         $v1, 0x4($s0)
/* 87AEDDC 800898AC 3800B88F */  lw         $t8, 0x38($sp)
/* 87AEDE0 800898B0 00000000 */  nop
/* 87AEDE4 800898B4 48000393 */  lbu        $v1, 0x48($t8)
/* 87AEDE8 800898B8 01000224 */  addiu      $v0, $zero, 0x1
/* 87AEDEC 800898BC 11006214 */  bne        $v1, $v0, .Llevel_43_80089904
/* 87AEDF0 800898C0 00000000 */   nop
/* 87AEDF4 800898C4 0F002016 */  bnez       $s1, .Llevel_43_80089904
/* 87AEDF8 800898C8 01000424 */   addiu     $a0, $zero, 0x1
/* 87AEDFC 800898CC 3C000524 */  addiu      $a1, $zero, 0x3C
/* 87AEE00 800898D0 21300002 */  addu       $a2, $s0, $zero
/* 87AEE04 800898D4 2800A727 */  addiu      $a3, $sp, 0x28
/* 87AEE08 800898D8 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 87AEE0C 800898DC E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 87AEE10 800898E0 02000224 */  addiu      $v0, $zero, 0x2
/* 87AEE14 800898E4 2800A0AF */  sw         $zero, 0x28($sp)
/* 87AEE18 800898E8 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 87AEE1C 800898EC 09F86000 */  jalr       $v1
/* 87AEE20 800898F0 3000A2AF */   sw        $v0, 0x30($sp)
/* 87AEE24 800898F4 21184000 */  addu       $v1, $v0, $zero
/* 87AEE28 800898F8 02006010 */  beqz       $v1, .Llevel_43_80089904
/* 87AEE2C 800898FC 28000224 */   addiu     $v0, $zero, 0x28
/* 87AEE30 80089900 0A0062A0 */  sb         $v0, 0xA($v1)
.Llevel_43_80089904:
/* 87AEE34 80089904 01003126 */  addiu      $s1, $s1, 0x1
/* 87AEE38 80089908 0600222A */  slti       $v0, $s1, 0x6
/* 87AEE3C 8008990C B0FF4014 */  bnez       $v0, .Llevel_43_800897D0
/* 87AEE40 80089910 2A005226 */   addiu     $s2, $s2, 0x2A
/* 87AEE44 80089914 06009426 */  addiu      $s4, $s4, 0x6
/* 87AEE48 80089918 0100B526 */  addiu      $s5, $s5, 0x1
/* 87AEE4C 8008991C 7800B88F */  lw         $t8, 0x78($sp)
/* 87AEE50 80089920 1000A22A */  slti       $v0, $s5, 0x10
/* 87AEE54 80089924 11001827 */  addiu      $t8, $t8, 0x11
/* 87AEE58 80089928 82FF4014 */  bnez       $v0, .Llevel_43_80089734
/* 87AEE5C 8008992C 7800B8AF */   sw        $t8, 0x78($sp)
/* 87AEE60 80089930 21A80000 */  addu       $s5, $zero, $zero
/* 87AEE64 80089934 AA2A093C */  lui        $t1, (0x2AAAAAAB >> 16)
/* 87AEE68 80089938 ABAA2935 */  ori        $t1, $t1, (0x2AAAAAAB & 0xFFFF)
/* 87AEE6C 8008993C 0BB6083C */  lui        $t0, (0xB60B60B7 >> 16)
/* 87AEE70 80089940 B7600835 */  ori        $t0, $t0, (0xB60B60B7 & 0xFFFF)
/* 87AEE74 80089944 21380000 */  addu       $a3, $zero, $zero
/* 87AEE78 80089948 5800B88F */  lw         $t8, 0x58($sp)
/* 87AEE7C 8008994C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 87AEE80 80089950 380402AF */  sw         $v0, 0x438($t8)
/* 87AEE84 80089954 6000B88F */  lw         $t8, 0x60($sp)
/* 87AEE88 80089958 19000224 */  addiu      $v0, $zero, 0x19
/* 87AEE8C 8008995C 000002A3 */  sb         $v0, 0x0($t8)
/* 87AEE90 80089960 010002A3 */  sb         $v0, 0x1($t8)
/* 87AEE94 80089964 32000224 */  addiu      $v0, $zero, 0x32
/* 87AEE98 80089968 020002A3 */  sb         $v0, 0x2($t8)
.Llevel_43_8008996C:
/* 87AEE9C 8008996C 21880000 */  addu       $s1, $zero, $zero
.Llevel_43_80089970:
/* 87AEEA0 80089970 01002226 */  addiu      $v0, $s1, 0x1
/* 87AEEA4 80089974 18004900 */  mult       $v0, $t1
/* 87AEEA8 80089978 2118F100 */  addu       $v1, $a3, $s1
/* 87AEEAC 8008997C 06002626 */  addiu      $a2, $s1, 0x6
/* 87AEEB0 80089980 21884000 */  addu       $s1, $v0, $zero
/* 87AEEB4 80089984 C0280300 */  sll        $a1, $v1, 3
/* 87AEEB8 80089988 2130E600 */  addu       $a2, $a3, $a2
/* 87AEEBC 8008998C 6800B88F */  lw         $t8, 0x68($sp)
/* 87AEEC0 80089990 C3171100 */  sra        $v0, $s1, 31
/* 87AEEC4 80089994 21280503 */  addu       $a1, $t8, $a1
/* 87AEEC8 80089998 10500000 */  mfhi       $t2
/* 87AEECC 8008999C 0000A3A0 */  sb         $v1, 0x0($a1)
/* 87AEED0 800899A0 0400A0A0 */  sb         $zero, 0x4($a1)
/* 87AEED4 800899A4 1800C800 */  mult       $a2, $t0
/* 87AEED8 800899A8 0500A0A0 */  sb         $zero, 0x5($a1)
/* 87AEEDC 800899AC 0600A0A0 */  sb         $zero, 0x6($a1)
/* 87AEEE0 800899B0 0700A0A0 */  sb         $zero, 0x7($a1)
/* 87AEEE4 800899B4 23104201 */  subu       $v0, $t2, $v0
/* 87AEEE8 800899B8 40200200 */  sll        $a0, $v0, 1
/* 87AEEEC 800899BC 21208200 */  addu       $a0, $a0, $v0
/* 87AEEF0 800899C0 40200400 */  sll        $a0, $a0, 1
/* 87AEEF4 800899C4 23202402 */  subu       $a0, $s1, $a0
/* 87AEEF8 800899C8 2110E400 */  addu       $v0, $a3, $a0
/* 87AEEFC 800899CC 06008424 */  addiu      $a0, $a0, 0x6
/* 87AEF00 800899D0 2120E400 */  addu       $a0, $a3, $a0
/* 87AEF04 800899D4 10180000 */  mfhi       $v1
/* 87AEF08 800899D8 0100A2A0 */  sb         $v0, 0x1($a1)
/* 87AEF0C 800899DC 21106600 */  addu       $v0, $v1, $a2
/* 87AEF10 800899E0 18008800 */  mult       $a0, $t0
/* 87AEF14 800899E4 83110200 */  sra        $v0, $v0, 6
/* 87AEF18 800899E8 C31F0600 */  sra        $v1, $a2, 31
/* 87AEF1C 800899EC 23104300 */  subu       $v0, $v0, $v1
/* 87AEF20 800899F0 40180200 */  sll        $v1, $v0, 1
/* 87AEF24 800899F4 21186200 */  addu       $v1, $v1, $v0
/* 87AEF28 800899F8 00110300 */  sll        $v0, $v1, 4
/* 87AEF2C 800899FC 23104300 */  subu       $v0, $v0, $v1
/* 87AEF30 80089A00 40100200 */  sll        $v0, $v0, 1
/* 87AEF34 80089A04 2330C200 */  subu       $a2, $a2, $v0
/* 87AEF38 80089A08 C31F0400 */  sra        $v1, $a0, 31
/* 87AEF3C 80089A0C 0200A6A0 */  sb         $a2, 0x2($a1)
/* 87AEF40 80089A10 10500000 */  mfhi       $t2
/* 87AEF44 80089A14 21104401 */  addu       $v0, $t2, $a0
/* 87AEF48 80089A18 83110200 */  sra        $v0, $v0, 6
/* 87AEF4C 80089A1C 23104300 */  subu       $v0, $v0, $v1
/* 87AEF50 80089A20 40180200 */  sll        $v1, $v0, 1
/* 87AEF54 80089A24 21186200 */  addu       $v1, $v1, $v0
/* 87AEF58 80089A28 00110300 */  sll        $v0, $v1, 4
/* 87AEF5C 80089A2C 23104300 */  subu       $v0, $v0, $v1
/* 87AEF60 80089A30 40100200 */  sll        $v0, $v0, 1
/* 87AEF64 80089A34 23208200 */  subu       $a0, $a0, $v0
/* 87AEF68 80089A38 0600222A */  slti       $v0, $s1, 0x6
/* 87AEF6C 80089A3C CCFF4014 */  bnez       $v0, .Llevel_43_80089970
/* 87AEF70 80089A40 0300A4A0 */   sb        $a0, 0x3($a1)
/* 87AEF74 80089A44 0100B526 */  addiu      $s5, $s5, 0x1
/* 87AEF78 80089A48 0F00A22A */  slti       $v0, $s5, 0xF
/* 87AEF7C 80089A4C C7FF4014 */  bnez       $v0, .Llevel_43_8008996C
/* 87AEF80 80089A50 0600E724 */   addiu     $a3, $a3, 0x6
/* 87AEF84 80089A54 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 87AEF88 80089A58 D00202AF */  sw         $v0, 0x2D0($t8)
/* 87AEF8C 80089A5C 4000B88F */  lw         $t8, 0x40($sp)
/* 87AEF90 80089A60 00000000 */  nop
/* 87AEF94 80089A64 0800028F */  lw         $v0, 0x8($t8)
/* 87AEF98 80089A68 00000000 */  nop
/* 87AEF9C 80089A6C 0D004014 */  bnez       $v0, .Llevel_43_80089AA4
/* 87AEFA0 80089A70 21A80000 */   addu      $s5, $zero, $zero
/* 87AEFA4 80089A74 5800A48F */  lw         $a0, 0x58($sp)
/* 87AEFA8 80089A78 6000A58F */  lw         $a1, 0x60($sp)
/* 87AEFAC 80089A7C 6800A68F */  lw         $a2, 0x68($sp)
/* 87AEFB0 80089A80 4800B88F */  lw         $t8, 0x48($sp)
/* 87AEFB4 80089A84 01000224 */  addiu      $v0, $zero, 0x1
/* 87AEFB8 80089A88 1000A2AF */  sw         $v0, 0x10($sp)
/* 87AEFBC 80089A8C C042010C */  jal        func_80050B00
/* 87AEFC0 80089A90 0C000727 */   addiu     $a3, $t8, 0xC
/* 87AEFC4 80089A94 4000B88F */  lw         $t8, 0x40($sp)
/* 87AEFC8 80089A98 00000000 */  nop
/* 87AEFCC 80089A9C 080002AF */  sw         $v0, 0x8($t8)
/* 87AEFD0 80089AA0 21A80000 */  addu       $s5, $zero, $zero
.Llevel_43_80089AA4:
/* 87AEFD4 80089AA4 06800B3C */  lui        $t3, %hi(D_800658A0)
/* 87AEFD8 80089AA8 A0586B25 */  addiu      $t3, $t3, %lo(D_800658A0)
/* 87AEFDC 80089AAC 06800D3C */  lui        $t5, %hi(D_80065920)
/* 87AEFE0 80089AB0 2059AD25 */  addiu      $t5, $t5, %lo(D_80065920)
/* 87AEFE4 80089AB4 4000B88F */  lw         $t8, 0x40($sp)
/* 87AEFE8 80089AB8 21B00000 */  addu       $s6, $zero, $zero
/* 87AEFEC 80089ABC 0400028F */  lw         $v0, 0x4($t8)
/* 87AEFF0 80089AC0 21500000 */  addu       $t2, $zero, $zero
/* 87AEFF4 80089AC4 58074E24 */  addiu      $t6, $v0, 0x758
/* 87AEFF8 80089AC8 940B4C24 */  addiu      $t4, $v0, 0xB94
/* 87AEFFC 80089ACC D40B4F24 */  addiu      $t7, $v0, 0xBD4
.Llevel_43_80089AD0:
/* 87AF000 80089AD0 0780033C */  lui        $v1, %hi(D_8006C640)
/* 87AF004 80089AD4 40C6638C */  lw         $v1, %lo(D_8006C640)($v1)
/* 87AF008 80089AD8 4000B88F */  lw         $t8, 0x40($sp)
/* 87AF00C 80089ADC 80100300 */  sll        $v0, $v1, 2
/* 87AF010 80089AE0 21104300 */  addu       $v0, $v0, $v1
/* 87AF014 80089AE4 80100200 */  sll        $v0, $v0, 2
/* 87AF018 80089AE8 21104201 */  addu       $v0, $t2, $v0
/* 87AF01C 80089AEC FF004230 */  andi       $v0, $v0, 0xFF
/* 87AF020 80089AF0 40100200 */  sll        $v0, $v0, 1
/* 87AF024 80089AF4 21104B00 */  addu       $v0, $v0, $t3
/* 87AF028 80089AF8 00004384 */  lh         $v1, 0x0($v0)
/* 87AF02C 80089AFC 16000287 */  lh         $v0, 0x16($t8)
/* 87AF030 80089B00 00000000 */  nop
/* 87AF034 80089B04 18006200 */  mult       $v1, $v0
/* 87AF038 80089B08 3800B88F */  lw         $t8, 0x38($sp)
/* 87AF03C 80089B0C 00111500 */  sll        $v0, $s5, 4
/* 87AF040 80089B10 21105500 */  addu       $v0, $v0, $s5
/* 87AF044 80089B14 46000493 */  lbu        $a0, 0x46($t8)
/* 87AF048 80089B18 5000B88F */  lw         $t8, 0x50($sp)
/* 87AF04C 80089B1C 21208200 */  addu       $a0, $a0, $v0
/* 87AF050 80089B20 FF008330 */  andi       $v1, $a0, 0xFF
/* 87AF054 80089B24 40180300 */  sll        $v1, $v1, 1
/* 87AF058 80089B28 21106B00 */  addu       $v0, $v1, $t3
/* 87AF05C 80089B2C 12300000 */  mflo       $a2
/* 87AF060 80089B30 00004284 */  lh         $v0, 0x0($v0)
/* 87AF064 80089B34 00000000 */  nop
/* 87AF068 80089B38 18005800 */  mult       $v0, $t8
/* 87AF06C 80089B3C 21186D00 */  addu       $v1, $v1, $t5
/* 87AF070 80089B40 12280000 */  mflo       $a1
/* 87AF074 80089B44 00006284 */  lh         $v0, 0x0($v1)
/* 87AF078 80089B48 21880000 */  addu       $s1, $zero, $zero
/* 87AF07C 80089B4C 18005800 */  mult       $v0, $t8
/* 87AF080 80089B50 21986001 */  addu       $s3, $t3, $zero
/* 87AF084 80089B54 2190A001 */  addu       $s2, $t5, $zero
/* 87AF088 80089B58 40008424 */  addiu      $a0, $a0, 0x40
/* 87AF08C 80089B5C FF008430 */  andi       $a0, $a0, 0xFF
/* 87AF090 80089B60 40200400 */  sll        $a0, $a0, 1
/* 87AF094 80089B64 21488B00 */  addu       $t1, $a0, $t3
/* 87AF098 80089B68 21408D00 */  addu       $t0, $a0, $t5
/* 87AF09C 80089B6C 033B0600 */  sra        $a3, $a2, 12
/* 87AF0A0 80089B70 4000B88F */  lw         $t8, 0x40($sp)
/* 87AF0A4 80089B74 03F30500 */  sra        $fp, $a1, 12
/* 87AF0A8 80089B78 14001487 */  lh         $s4, 0x14($t8)
/* 87AF0AC 80089B7C 12180000 */  mflo       $v1
/* 87AF0B0 80089B80 03BB0300 */  sra        $s7, $v1, 12
.Llevel_43_80089B84:
/* 87AF0B4 80089B84 1800A0AF */  sw         $zero, 0x18($sp)
/* 87AF0B8 80089B88 00004286 */  lh         $v0, 0x0($s2)
/* 87AF0BC 80089B8C 00000000 */  nop
/* 87AF0C0 80089B90 18005400 */  mult       $v0, $s4
/* 87AF0C4 80089B94 12C00000 */  mflo       $t8
/* 87AF0C8 80089B98 031B1800 */  sra        $v1, $t8, 12
/* 87AF0CC 80089B9C 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 87AF0D0 80089BA0 00006286 */  lh         $v0, 0x0($s3)
/* 87AF0D4 80089BA4 00000000 */  nop
/* 87AF0D8 80089BA8 18005400 */  mult       $v0, $s4
/* 87AF0DC 80089BAC 12C00000 */  mflo       $t8
/* 87AF0E0 80089BB0 03131800 */  sra        $v0, $t8, 12
/* 87AF0E4 80089BB4 2000A2AF */  sw         $v0, 0x20($sp)
/* 87AF0E8 80089BB8 00002285 */  lh         $v0, 0x0($t1)
/* 87AF0EC 80089BBC 00000000 */  nop
/* 87AF0F0 80089BC0 18006200 */  mult       $v1, $v0
/* 87AF0F4 80089BC4 2110D102 */  addu       $v0, $s6, $s1
/* 87AF0F8 80089BC8 40800200 */  sll        $s0, $v0, 1
/* 87AF0FC 80089BCC 21800202 */  addu       $s0, $s0, $v0
/* 87AF100 80089BD0 80801000 */  sll        $s0, $s0, 2
/* 87AF104 80089BD4 2180D001 */  addu       $s0, $t6, $s0
/* 87AF108 80089BD8 12C00000 */  mflo       $t8
/* 87AF10C 80089BDC 23101800 */  negu       $v0, $t8
/* 87AF110 80089BE0 03130200 */  sra        $v0, $v0, 12
/* 87AF114 80089BE4 000002AE */  sw         $v0, 0x0($s0)
/* 87AF118 80089BE8 00000385 */  lh         $v1, 0x0($t0)
/* 87AF11C 80089BEC 1C00A28F */  lw         $v0, 0x1C($sp)
/* 87AF120 80089BF0 00000000 */  nop
/* 87AF124 80089BF4 18004300 */  mult       $v0, $v1
/* 87AF128 80089BF8 54005226 */  addiu      $s2, $s2, 0x54
/* 87AF12C 80089BFC 21200002 */  addu       $a0, $s0, $zero
/* 87AF130 80089C00 3800B88F */  lw         $t8, 0x38($sp)
/* 87AF134 80089C04 21300002 */  addu       $a2, $s0, $zero
/* 87AF138 80089C08 0C000527 */  addiu      $a1, $t8, 0xC
/* 87AF13C 80089C0C 12C00000 */  mflo       $t8
/* 87AF140 80089C10 03131800 */  sra        $v0, $t8, 12
/* 87AF144 80089C14 040002AE */  sw         $v0, 0x4($s0)
/* 87AF148 80089C18 2000A28F */  lw         $v0, 0x20($sp)
/* 87AF14C 80089C1C 01003126 */  addiu      $s1, $s1, 0x1
/* 87AF150 80089C20 080002AE */  sw         $v0, 0x8($s0)
/* 87AF154 80089C24 8000A7AF */  sw         $a3, 0x80($sp)
/* 87AF158 80089C28 8400A8AF */  sw         $t0, 0x84($sp)
/* 87AF15C 80089C2C 8800A9AF */  sw         $t1, 0x88($sp)
/* 87AF160 80089C30 8C00AAAF */  sw         $t2, 0x8C($sp)
/* 87AF164 80089C34 9000ABAF */  sw         $t3, 0x90($sp)
/* 87AF168 80089C38 9400ACAF */  sw         $t4, 0x94($sp)
/* 87AF16C 80089C3C 9800ADAF */  sw         $t5, 0x98($sp)
/* 87AF170 80089C40 9C00AEAF */  sw         $t6, 0x9C($sp)
/* 87AF174 80089C44 653C010C */  jal        func_8004F194
/* 87AF178 80089C48 A000AFAF */   sw        $t7, 0xA0($sp)
/* 87AF17C 80089C4C 0000028E */  lw         $v0, 0x0($s0)
/* 87AF180 80089C50 00000000 */  nop
/* 87AF184 80089C54 21105700 */  addu       $v0, $v0, $s7
/* 87AF188 80089C58 000002AE */  sw         $v0, 0x0($s0)
/* 87AF18C 80089C5C 0400028E */  lw         $v0, 0x4($s0)
/* 87AF190 80089C60 0800038E */  lw         $v1, 0x8($s0)
/* 87AF194 80089C64 21105E00 */  addu       $v0, $v0, $fp
/* 87AF198 80089C68 040002AE */  sw         $v0, 0x4($s0)
/* 87AF19C 80089C6C 8000A78F */  lw         $a3, 0x80($sp)
/* 87AF1A0 80089C70 0600222A */  slti       $v0, $s1, 0x6
/* 87AF1A4 80089C74 21186700 */  addu       $v1, $v1, $a3
/* 87AF1A8 80089C78 080003AE */  sw         $v1, 0x8($s0)
/* 87AF1AC 80089C7C 8400A88F */  lw         $t0, 0x84($sp)
/* 87AF1B0 80089C80 8800A98F */  lw         $t1, 0x88($sp)
/* 87AF1B4 80089C84 8C00AA8F */  lw         $t2, 0x8C($sp)
/* 87AF1B8 80089C88 9000AB8F */  lw         $t3, 0x90($sp)
/* 87AF1BC 80089C8C 9400AC8F */  lw         $t4, 0x94($sp)
/* 87AF1C0 80089C90 9800AD8F */  lw         $t5, 0x98($sp)
/* 87AF1C4 80089C94 9C00AE8F */  lw         $t6, 0x9C($sp)
/* 87AF1C8 80089C98 A000AF8F */  lw         $t7, 0xA0($sp)
/* 87AF1CC 80089C9C B9FF4014 */  bnez       $v0, .Llevel_43_80089B84
/* 87AF1D0 80089CA0 54007326 */   addiu     $s3, $s3, 0x54
/* 87AF1D4 80089CA4 0600D626 */  addiu      $s6, $s6, 0x6
/* 87AF1D8 80089CA8 0100B526 */  addiu      $s5, $s5, 0x1
/* 87AF1DC 80089CAC 1000A22A */  slti       $v0, $s5, 0x10
/* 87AF1E0 80089CB0 87FF4014 */  bnez       $v0, .Llevel_43_80089AD0
/* 87AF1E4 80089CB4 50004A25 */   addiu     $t2, $t2, 0x50
/* 87AF1E8 80089CB8 21A80000 */  addu       $s5, $zero, $zero
/* 87AF1EC 80089CBC 0BB60D3C */  lui        $t5, (0xB60B60B7 >> 16)
/* 87AF1F0 80089CC0 B760AD35 */  ori        $t5, $t5, (0xB60B60B7 & 0xFFFF)
/* 87AF1F4 80089CC4 02000B24 */  addiu      $t3, $zero, 0x2
/* 87AF1F8 80089CC8 21500000 */  addu       $t2, $zero, $zero
/* 87AF1FC 80089CCC FFFF0224 */  addiu      $v0, $zero, -0x1
/* 87AF200 80089CD0 3804C2AD */  sw         $v0, 0x438($t6)
/* 87AF204 80089CD4 96000224 */  addiu      $v0, $zero, 0x96
/* 87AF208 80089CD8 000082A1 */  sb         $v0, 0x0($t4)
/* 87AF20C 80089CDC 010082A1 */  sb         $v0, 0x1($t4)
/* 87AF210 80089CE0 020082A1 */  sb         $v0, 0x2($t4)
/* 87AF214 80089CE4 46000224 */  addiu      $v0, $zero, 0x46
/* 87AF218 80089CE8 040082A1 */  sb         $v0, 0x4($t4)
/* 87AF21C 80089CEC 050082A1 */  sb         $v0, 0x5($t4)
/* 87AF220 80089CF0 060082A1 */  sb         $v0, 0x6($t4)
/* 87AF224 80089CF4 14000224 */  addiu      $v0, $zero, 0x14
/* 87AF228 80089CF8 080082A1 */  sb         $v0, 0x8($t4)
/* 87AF22C 80089CFC 090082A1 */  sb         $v0, 0x9($t4)
/* 87AF230 80089D00 0A0082A1 */  sb         $v0, 0xA($t4)
.Llevel_43_80089D04:
/* 87AF234 80089D04 21880000 */  addu       $s1, $zero, $zero
/* 87AF238 80089D08 5555023C */  lui        $v0, (0x55555556 >> 16)
.Llevel_43_80089D0C:
/* 87AF23C 80089D0C 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
/* 87AF240 80089D10 18002202 */  mult       $s1, $v0
/* 87AF244 80089D14 AA2A023C */  lui        $v0, (0x2AAAAAAB >> 16)
/* 87AF248 80089D18 10400000 */  mfhi       $t0
/* 87AF24C 80089D1C ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
/* 87AF250 80089D20 01002426 */  addiu      $a0, $s1, 0x1
/* 87AF254 80089D24 18008200 */  mult       $a0, $v0
/* 87AF258 80089D28 21185101 */  addu       $v1, $t2, $s1
/* 87AF25C 80089D2C 06002526 */  addiu      $a1, $s1, 0x6
/* 87AF260 80089D30 21284501 */  addu       $a1, $t2, $a1
/* 87AF264 80089D34 C0100300 */  sll        $v0, $v1, 3
/* 87AF268 80089D38 2130E201 */  addu       $a2, $t7, $v0
/* 87AF26C 80089D3C C3171100 */  sra        $v0, $s1, 31
/* 87AF270 80089D40 23380201 */  subu       $a3, $t0, $v0
/* 87AF274 80089D44 10480000 */  mfhi       $t1
/* 87AF278 80089D48 40100700 */  sll        $v0, $a3, 1
/* 87AF27C 80089D4C 21104700 */  addu       $v0, $v0, $a3
/* 87AF280 80089D50 1800AD00 */  mult       $a1, $t5
/* 87AF284 80089D54 23382202 */  subu       $a3, $s1, $v0
/* 87AF288 80089D58 0000C3A0 */  sb         $v1, 0x0($a2)
/* 87AF28C 80089D5C C31F0400 */  sra        $v1, $a0, 31
/* 87AF290 80089D60 23182301 */  subu       $v1, $t1, $v1
/* 87AF294 80089D64 40100300 */  sll        $v0, $v1, 1
/* 87AF298 80089D68 21104300 */  addu       $v0, $v0, $v1
/* 87AF29C 80089D6C 40100200 */  sll        $v0, $v0, 1
/* 87AF2A0 80089D70 23208200 */  subu       $a0, $a0, $v0
/* 87AF2A4 80089D74 21104401 */  addu       $v0, $t2, $a0
/* 87AF2A8 80089D78 06008424 */  addiu      $a0, $a0, 0x6
/* 87AF2AC 80089D7C 21204401 */  addu       $a0, $t2, $a0
/* 87AF2B0 80089D80 10400000 */  mfhi       $t0
/* 87AF2B4 80089D84 C31F0500 */  sra        $v1, $a1, 31
/* 87AF2B8 80089D88 0100C2A0 */  sb         $v0, 0x1($a2)
/* 87AF2BC 80089D8C 18008D00 */  mult       $a0, $t5
/* 87AF2C0 80089D90 21100501 */  addu       $v0, $t0, $a1
/* 87AF2C4 80089D94 83110200 */  sra        $v0, $v0, 6
/* 87AF2C8 80089D98 23104300 */  subu       $v0, $v0, $v1
/* 87AF2CC 80089D9C 40180200 */  sll        $v1, $v0, 1
/* 87AF2D0 80089DA0 21186200 */  addu       $v1, $v1, $v0
/* 87AF2D4 80089DA4 00110300 */  sll        $v0, $v1, 4
/* 87AF2D8 80089DA8 23104300 */  subu       $v0, $v0, $v1
/* 87AF2DC 80089DAC 40100200 */  sll        $v0, $v0, 1
/* 87AF2E0 80089DB0 2328A200 */  subu       $a1, $a1, $v0
/* 87AF2E4 80089DB4 C31F0400 */  sra        $v1, $a0, 31
/* 87AF2E8 80089DB8 0200C5A0 */  sb         $a1, 0x2($a2)
/* 87AF2EC 80089DBC 10480000 */  mfhi       $t1
/* 87AF2F0 80089DC0 21102401 */  addu       $v0, $t1, $a0
/* 87AF2F4 80089DC4 83110200 */  sra        $v0, $v0, 6
/* 87AF2F8 80089DC8 23104300 */  subu       $v0, $v0, $v1
/* 87AF2FC 80089DCC 40180200 */  sll        $v1, $v0, 1
/* 87AF300 80089DD0 21186200 */  addu       $v1, $v1, $v0
/* 87AF304 80089DD4 00110300 */  sll        $v0, $v1, 4
/* 87AF308 80089DD8 23104300 */  subu       $v0, $v0, $v1
/* 87AF30C 80089DDC 40100200 */  sll        $v0, $v0, 1
/* 87AF310 80089DE0 23208200 */  subu       $a0, $a0, $v0
/* 87AF314 80089DE4 0600E014 */  bnez       $a3, .Llevel_43_80089E00
/* 87AF318 80089DE8 0300C4A0 */   sb        $a0, 0x3($a2)
/* 87AF31C 80089DEC 0400C0A0 */  sb         $zero, 0x4($a2)
/* 87AF320 80089DF0 0500CBA0 */  sb         $t3, 0x5($a2)
/* 87AF324 80089DF4 0600C0A0 */  sb         $zero, 0x6($a2)
/* 87AF328 80089DF8 8E270208 */  j          .Llevel_43_80089E38
/* 87AF32C 80089DFC 0700CBA0 */   sb        $t3, 0x7($a2)
.Llevel_43_80089E00:
/* 87AF330 80089E00 01000224 */  addiu      $v0, $zero, 0x1
/* 87AF334 80089E04 0600E214 */  bne        $a3, $v0, .Llevel_43_80089E20
/* 87AF338 80089E08 00000000 */   nop
/* 87AF33C 80089E0C 0400CBA0 */  sb         $t3, 0x4($a2)
/* 87AF340 80089E10 0500CBA0 */  sb         $t3, 0x5($a2)
/* 87AF344 80089E14 0600CBA0 */  sb         $t3, 0x6($a2)
/* 87AF348 80089E18 8E270208 */  j          .Llevel_43_80089E38
/* 87AF34C 80089E1C 0700CBA0 */   sb        $t3, 0x7($a2)
.Llevel_43_80089E20:
/* 87AF350 80089E20 0500EB14 */  bne        $a3, $t3, .Llevel_43_80089E38
/* 87AF354 80089E24 00000000 */   nop
/* 87AF358 80089E28 0400CBA0 */  sb         $t3, 0x4($a2)
/* 87AF35C 80089E2C 0500C0A0 */  sb         $zero, 0x5($a2)
/* 87AF360 80089E30 0600CBA0 */  sb         $t3, 0x6($a2)
/* 87AF364 80089E34 0700C0A0 */  sb         $zero, 0x7($a2)
.Llevel_43_80089E38:
/* 87AF368 80089E38 01003126 */  addiu      $s1, $s1, 0x1
/* 87AF36C 80089E3C 0600222A */  slti       $v0, $s1, 0x6
/* 87AF370 80089E40 B2FF4014 */  bnez       $v0, .Llevel_43_80089D0C
/* 87AF374 80089E44 5555023C */   lui       $v0, (0x55555556 >> 16)
/* 87AF378 80089E48 0100B526 */  addiu      $s5, $s5, 0x1
/* 87AF37C 80089E4C 0F00A22A */  slti       $v0, $s5, 0xF
/* 87AF380 80089E50 ACFF4014 */  bnez       $v0, .Llevel_43_80089D04
/* 87AF384 80089E54 06004A25 */   addiu     $t2, $t2, 0x6
/* 87AF388 80089E58 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 87AF38C 80089E5C D002E2AD */  sw         $v0, 0x2D0($t7)
/* 87AF390 80089E60 4000B88F */  lw         $t8, 0x40($sp)
/* 87AF394 80089E64 00000000 */  nop
/* 87AF398 80089E68 0C00028F */  lw         $v0, 0xC($t8)
/* 87AF39C 80089E6C 00000000 */  nop
/* 87AF3A0 80089E70 0B004014 */  bnez       $v0, .Llevel_43_80089EA0
/* 87AF3A4 80089E74 2120C001 */   addu      $a0, $t6, $zero
/* 87AF3A8 80089E78 21288001 */  addu       $a1, $t4, $zero
/* 87AF3AC 80089E7C 2130E001 */  addu       $a2, $t7, $zero
/* 87AF3B0 80089E80 4800B88F */  lw         $t8, 0x48($sp)
/* 87AF3B4 80089E84 01000224 */  addiu      $v0, $zero, 0x1
/* 87AF3B8 80089E88 1000A2AF */  sw         $v0, 0x10($sp)
/* 87AF3BC 80089E8C C042010C */  jal        func_80050B00
/* 87AF3C0 80089E90 0C000727 */   addiu     $a3, $t8, 0xC
/* 87AF3C4 80089E94 4000B88F */  lw         $t8, 0x40($sp)
/* 87AF3C8 80089E98 00000000 */  nop
/* 87AF3CC 80089E9C 0C0002AF */  sw         $v0, 0xC($t8)
.Llevel_43_80089EA0:
/* 87AF3D0 80089EA0 3800B88F */  lw         $t8, 0x38($sp)
/* 87AF3D4 80089EA4 00000000 */  nop
/* 87AF3D8 80089EA8 48000393 */  lbu        $v1, 0x48($t8)
/* 87AF3DC 80089EAC 02000224 */  addiu      $v0, $zero, 0x2
/* 87AF3E0 80089EB0 14006214 */  bne        $v1, $v0, .Llevel_43_80089F04
/* 87AF3E4 80089EB4 00000000 */   nop
/* 87AF3E8 80089EB8 4000B88F */  lw         $t8, 0x40($sp)
/* 87AF3EC 80089EBC 00000000 */  nop
/* 87AF3F0 80089EC0 0800048F */  lw         $a0, 0x8($t8)
/* 87AF3F4 80089EC4 00000000 */  nop
/* 87AF3F8 80089EC8 04008010 */  beqz       $a0, .Llevel_43_80089EDC
/* 87AF3FC 80089ECC 00000000 */   nop
/* 87AF400 80089ED0 E242010C */  jal        func_80050B88
/* 87AF404 80089ED4 00000000 */   nop
/* 87AF408 80089ED8 4000B88F */  lw         $t8, 0x40($sp)
.Llevel_43_80089EDC:
/* 87AF40C 80089EDC 00000000 */  nop
/* 87AF410 80089EE0 0C00048F */  lw         $a0, 0xC($t8)
/* 87AF414 80089EE4 00000000 */  nop
/* 87AF418 80089EE8 03008010 */  beqz       $a0, .Llevel_43_80089EF8
/* 87AF41C 80089EEC 00000000 */   nop
/* 87AF420 80089EF0 E242010C */  jal        func_80050B88
/* 87AF424 80089EF4 00000000 */   nop
.Llevel_43_80089EF8:
/* 87AF428 80089EF8 3800A48F */  lw         $a0, 0x38($sp)
/* 87AF42C 80089EFC C656010C */  jal        func_80055B18
/* 87AF430 80089F00 00000000 */   nop
.Llevel_43_80089F04:
/* 87AF434 80089F04 CC00BF8F */  lw         $ra, 0xCC($sp)
/* 87AF438 80089F08 C800BE8F */  lw         $fp, 0xC8($sp)
/* 87AF43C 80089F0C C400B78F */  lw         $s7, 0xC4($sp)
/* 87AF440 80089F10 C000B68F */  lw         $s6, 0xC0($sp)
/* 87AF444 80089F14 BC00B58F */  lw         $s5, 0xBC($sp)
/* 87AF448 80089F18 B800B48F */  lw         $s4, 0xB8($sp)
/* 87AF44C 80089F1C B400B38F */  lw         $s3, 0xB4($sp)
/* 87AF450 80089F20 B000B28F */  lw         $s2, 0xB0($sp)
/* 87AF454 80089F24 AC00B18F */  lw         $s1, 0xAC($sp)
/* 87AF458 80089F28 A800B08F */  lw         $s0, 0xA8($sp)
/* 87AF45C 80089F2C D000BD27 */  addiu      $sp, $sp, 0xD0
/* 87AF460 80089F30 0800E003 */  jr         $ra
/* 87AF464 80089F34 00000000 */   nop
.size MobyUpdate_1000_level_43, . - MobyUpdate_1000_level_43
