.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_455_level_33
/* 71BD800 80085AD0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 71BD804 80085AD4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 71BD808 80085AD8 21888000 */  addu       $s1, $a0, $zero
/* 71BD80C 80085ADC 01000224 */  addiu      $v0, $zero, 0x1
/* 71BD810 80085AE0 2400BFAF */  sw         $ra, 0x24($sp)
/* 71BD814 80085AE4 2000B2AF */  sw         $s2, 0x20($sp)
/* 71BD818 80085AE8 1800B0AF */  sw         $s0, 0x18($sp)
/* 71BD81C 80085AEC 48002392 */  lbu        $v1, 0x48($s1)
/* 71BD820 80085AF0 0000308E */  lw         $s0, 0x0($s1)
/* 71BD824 80085AF4 07006210 */  beq        $v1, $v0, .Llevel_33_80085B14
/* 71BD828 80085AF8 02006228 */   slti      $v0, $v1, 0x2
/* 71BD82C 80085AFC 63004014 */  bnez       $v0, .Llevel_33_80085C8C
/* 71BD830 80085B00 02000224 */   addiu     $v0, $zero, 0x2
/* 71BD834 80085B04 53006210 */  beq        $v1, $v0, .Llevel_33_80085C54
/* 71BD838 80085B08 0C003026 */   addiu     $s0, $s1, 0xC
/* 71BD83C 80085B0C 23170208 */  j          .Llevel_33_80085C8C
/* 71BD840 80085B10 00000000 */   nop
.Llevel_33_80085B14:
/* 71BD844 80085B14 0C003226 */  addiu      $s2, $s1, 0xC
/* 71BD848 80085B18 21204002 */  addu       $a0, $s2, $zero
/* 71BD84C 80085B1C 21284002 */  addu       $a1, $s2, $zero
/* 71BD850 80085B20 653C010C */  jal        func_8004F194
/* 71BD854 80085B24 21300002 */   addu      $a2, $s0, $zero
/* 71BD858 80085B28 0800028E */  lw         $v0, 0x8($s0)
/* 71BD85C 80085B2C 0C000426 */  addiu      $a0, $s0, 0xC
/* 71BD860 80085B30 F6FF4224 */  addiu      $v0, $v0, -0xA
/* 71BD864 80085B34 080002AE */  sw         $v0, 0x8($s0)
/* 71BD868 80085B38 45002292 */  lbu        $v0, 0x45($s1)
/* 71BD86C 80085B3C 04000524 */  addiu      $a1, $zero, 0x4
/* 71BD870 80085B40 06004224 */  addiu      $v0, $v0, 0x6
/* 71BD874 80085B44 69D6000C */  jal        func_800359A4
/* 71BD878 80085B48 450022A2 */   sb        $v0, 0x45($s1)
/* 71BD87C 80085B4C 21204002 */  addu       $a0, $s2, $zero
/* 71BD880 80085B50 00010524 */  addiu      $a1, $zero, 0x100
/* 71BD884 80085B54 A270000C */  jal        func_8001C288
/* 71BD888 80085B58 07000624 */   addiu     $a2, $zero, 0x7
/* 71BD88C 80085B5C 15004014 */  bnez       $v0, .Llevel_33_80085BB4
/* 71BD890 80085B60 69010424 */   addiu     $a0, $zero, 0x169
/* 71BD894 80085B64 21204002 */  addu       $a0, $s2, $zero
/* 71BD898 80085B68 00010524 */  addiu      $a1, $zero, 0x100
/* 71BD89C 80085B6C 03000624 */  addiu      $a2, $zero, 0x3
/* 71BD8A0 80085B70 21380000 */  addu       $a3, $zero, $zero
/* 71BD8A4 80085B74 0300023C */  lui        $v0, (0x30000 >> 16)
/* 71BD8A8 80085B78 1000A2AF */  sw         $v0, 0x10($sp)
/* 71BD8AC 80085B7C 8C6E000C */  jal        func_8001BA30
/* 71BD8B0 80085B80 1400B1AF */   sw        $s1, 0x14($sp)
/* 71BD8B4 80085B84 0B004014 */  bnez       $v0, .Llevel_33_80085BB4
/* 71BD8B8 80085B88 69010424 */   addiu     $a0, $zero, 0x169
/* 71BD8BC 80085B8C 21204002 */  addu       $a0, $s2, $zero
/* 71BD8C0 80085B90 6564000C */  jal        func_80019194
/* 71BD8C4 80085B94 00010524 */   addiu     $a1, $zero, 0x100
/* 71BD8C8 80085B98 3C004010 */  beqz       $v0, .Llevel_33_80085C8C
/* 71BD8CC 80085B9C 00000000 */   nop
/* 71BD8D0 80085BA0 0C00028E */  lw         $v0, 0xC($s0)
/* 71BD8D4 80085BA4 00000000 */  nop
/* 71BD8D8 80085BA8 0F004014 */  bnez       $v0, .Llevel_33_80085BE8
/* 71BD8DC 80085BAC 21200002 */   addu      $a0, $s0, $zero
/* 71BD8E0 80085BB0 69010424 */  addiu      $a0, $zero, 0x169
.Llevel_33_80085BB4:
/* 71BD8E4 80085BB4 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 71BD8E8 80085BB8 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 71BD8EC 80085BBC 00000000 */  nop
/* 71BD8F0 80085BC0 09F84000 */  jalr       $v0
/* 71BD8F4 80085BC4 21282002 */   addu      $a1, $s1, $zero
/* 71BD8F8 80085BC8 21184000 */  addu       $v1, $v0, $zero
/* 71BD8FC 80085BCC 03006010 */  beqz       $v1, .Llevel_33_80085BDC
/* 71BD900 80085BD0 40000224 */   addiu     $v0, $zero, 0x40
/* 71BD904 80085BD4 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 71BD908 80085BD8 4E0062A0 */  sb         $v0, 0x4E($v1)
.Llevel_33_80085BDC:
/* 71BD90C 80085BDC 02000224 */  addiu      $v0, $zero, 0x2
/* 71BD910 80085BE0 23170208 */  j          .Llevel_33_80085C8C
/* 71BD914 80085BE4 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_33_80085BE8:
/* 71BD918 80085BE8 0780053C */  lui        $a1, %hi(D_80071918)
/* 71BD91C 80085BEC 1819A524 */  addiu      $a1, $a1, %lo(D_80071918)
/* 71BD920 80085BF0 DD3B010C */  jal        func_8004EF74
/* 71BD924 80085BF4 21300002 */   addu      $a2, $s0, $zero
/* 71BD928 80085BF8 24004010 */  beqz       $v0, .Llevel_33_80085C8C
/* 71BD92C 80085BFC 00000000 */   nop
/* 71BD930 80085C00 0000038E */  lw         $v1, 0x0($s0)
/* 71BD934 80085C04 00000000 */  nop
/* 71BD938 80085C08 40100300 */  sll        $v0, $v1, 1
/* 71BD93C 80085C0C 21104300 */  addu       $v0, $v0, $v1
/* 71BD940 80085C10 40100200 */  sll        $v0, $v0, 1
/* 71BD944 80085C14 0400038E */  lw         $v1, 0x4($s0)
/* 71BD948 80085C18 C3100200 */  sra        $v0, $v0, 3
/* 71BD94C 80085C1C 000002AE */  sw         $v0, 0x0($s0)
/* 71BD950 80085C20 40100300 */  sll        $v0, $v1, 1
/* 71BD954 80085C24 21104300 */  addu       $v0, $v0, $v1
/* 71BD958 80085C28 40100200 */  sll        $v0, $v0, 1
/* 71BD95C 80085C2C 0800038E */  lw         $v1, 0x8($s0)
/* 71BD960 80085C30 C3100200 */  sra        $v0, $v0, 3
/* 71BD964 80085C34 040002AE */  sw         $v0, 0x4($s0)
/* 71BD968 80085C38 40100300 */  sll        $v0, $v1, 1
/* 71BD96C 80085C3C 21104300 */  addu       $v0, $v0, $v1
/* 71BD970 80085C40 40100200 */  sll        $v0, $v0, 1
/* 71BD974 80085C44 C3100200 */  sra        $v0, $v0, 3
/* 71BD978 80085C48 14004224 */  addiu      $v0, $v0, 0x14
/* 71BD97C 80085C4C 23170208 */  j          .Llevel_33_80085C8C
/* 71BD980 80085C50 080002AE */   sw        $v0, 0x8($s0)
.Llevel_33_80085C54:
/* 71BD984 80085C54 21200002 */  addu       $a0, $s0, $zero
/* 71BD988 80085C58 00030524 */  addiu      $a1, $zero, 0x300
/* 71BD98C 80085C5C A270000C */  jal        func_8001C288
/* 71BD990 80085C60 07000624 */   addiu     $a2, $zero, 0x7
/* 71BD994 80085C64 21200002 */  addu       $a0, $s0, $zero
/* 71BD998 80085C68 00030524 */  addiu      $a1, $zero, 0x300
/* 71BD99C 80085C6C 03000624 */  addiu      $a2, $zero, 0x3
/* 71BD9A0 80085C70 21380000 */  addu       $a3, $zero, $zero
/* 71BD9A4 80085C74 0300023C */  lui        $v0, (0x30000 >> 16)
/* 71BD9A8 80085C78 1000A2AF */  sw         $v0, 0x10($sp)
/* 71BD9AC 80085C7C 8C6E000C */  jal        func_8001BA30
/* 71BD9B0 80085C80 1400B1AF */   sw        $s1, 0x14($sp)
/* 71BD9B4 80085C84 32170208 */  j          .Llevel_33_80085CC8
/* 71BD9B8 80085C88 00000000 */   nop
.Llevel_33_80085C8C:
/* 71BD9BC 80085C8C 0C00228E */  lw         $v0, 0xC($s1)
/* 71BD9C0 80085C90 00000000 */  nop
/* 71BD9C4 80085C94 00044228 */  slti       $v0, $v0, 0x400
/* 71BD9C8 80085C98 0B004014 */  bnez       $v0, .Llevel_33_80085CC8
/* 71BD9CC 80085C9C 00000000 */   nop
/* 71BD9D0 80085CA0 1000228E */  lw         $v0, 0x10($s1)
/* 71BD9D4 80085CA4 00000000 */  nop
/* 71BD9D8 80085CA8 00044228 */  slti       $v0, $v0, 0x400
/* 71BD9DC 80085CAC 06004014 */  bnez       $v0, .Llevel_33_80085CC8
/* 71BD9E0 80085CB0 00000000 */   nop
/* 71BD9E4 80085CB4 1400228E */  lw         $v0, 0x14($s1)
/* 71BD9E8 80085CB8 00000000 */  nop
/* 71BD9EC 80085CBC 00044228 */  slti       $v0, $v0, 0x400
/* 71BD9F0 80085CC0 03004010 */  beqz       $v0, .Llevel_33_80085CD0
/* 71BD9F4 80085CC4 00000000 */   nop
.Llevel_33_80085CC8:
/* 71BD9F8 80085CC8 C656010C */  jal        func_80055B18
/* 71BD9FC 80085CCC 21202002 */   addu      $a0, $s1, $zero
.Llevel_33_80085CD0:
/* 71BDA00 80085CD0 2400BF8F */  lw         $ra, 0x24($sp)
/* 71BDA04 80085CD4 2000B28F */  lw         $s2, 0x20($sp)
/* 71BDA08 80085CD8 1C00B18F */  lw         $s1, 0x1C($sp)
/* 71BDA0C 80085CDC 1800B08F */  lw         $s0, 0x18($sp)
/* 71BDA10 80085CE0 2800BD27 */  addiu      $sp, $sp, 0x28
/* 71BDA14 80085CE4 0800E003 */  jr         $ra
/* 71BDA18 80085CE8 00000000 */   nop
.size MobyUpdate_455_level_33, . - MobyUpdate_455_level_33
