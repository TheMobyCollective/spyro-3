.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_84_level_43
/* 87A1C10 8007C6E0 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 87A1C14 8007C6E4 3000B0AF */  sw         $s0, 0x30($sp)
/* 87A1C18 8007C6E8 21808000 */  addu       $s0, $a0, $zero
/* 87A1C1C 8007C6EC 3800BFAF */  sw         $ra, 0x38($sp)
/* 87A1C20 8007C6F0 3400B1AF */  sw         $s1, 0x34($sp)
/* 87A1C24 8007C6F4 48000292 */  lbu        $v0, 0x48($s0)
/* 87A1C28 8007C6F8 0000118E */  lw         $s1, 0x0($s0)
/* 87A1C2C 8007C6FC 36004014 */  bnez       $v0, .Llevel_43_8007C7D8
/* 87A1C30 8007C700 0C000426 */   addiu     $a0, $s0, 0xC
/* 87A1C34 8007C704 96000524 */  addiu      $a1, $zero, 0x96
/* 87A1C38 8007C708 03000624 */  addiu      $a2, $zero, 0x3
/* 87A1C3C 8007C70C C468000C */  jal        func_8001A310
/* 87A1C40 8007C710 21380002 */   addu      $a3, $s0, $zero
/* 87A1C44 8007C714 30004010 */  beqz       $v0, .Llevel_43_8007C7D8
/* 87A1C48 8007C718 00000000 */   nop
/* 87A1C4C 8007C71C 14002486 */  lh         $a0, 0x14($s1)
/* 87A1C50 8007C720 00000000 */  nop
/* 87A1C54 8007C724 03008228 */  slti       $v0, $a0, 0x3
/* 87A1C58 8007C728 23004010 */  beqz       $v0, .Llevel_43_8007C7B8
/* 87A1C5C 8007C72C 03000324 */   addiu     $v1, $zero, 0x3
/* 87A1C60 8007C730 23186400 */  subu       $v1, $v1, $a0
/* 87A1C64 8007C734 40100300 */  sll        $v0, $v1, 1
/* 87A1C68 8007C738 21104300 */  addu       $v0, $v0, $v1
/* 87A1C6C 8007C73C C0100200 */  sll        $v0, $v0, 3
/* 87A1C70 8007C740 21104300 */  addu       $v0, $v0, $v1
/* 87A1C74 8007C744 14002396 */  lhu        $v1, 0x14($s1)
/* 87A1C78 8007C748 40100200 */  sll        $v0, $v0, 1
/* 87A1C7C 8007C74C 040022A6 */  sh         $v0, 0x4($s1)
/* 87A1C80 8007C750 01006324 */  addiu      $v1, $v1, 0x1
/* 87A1C84 8007C754 140023A6 */  sh         $v1, 0x14($s1)
/* 87A1C88 8007C758 0780023C */  lui        $v0, %hi(D_80071908)
/* 87A1C8C 8007C75C 0819428C */  lw         $v0, %lo(D_80071908)($v0)
/* 87A1C90 8007C760 5555043C */  lui        $a0, (0x55555556 >> 16)
/* 87A1C94 8007C764 9B004224 */  addiu      $v0, $v0, 0x9B
/* 87A1C98 8007C768 140002AE */  sw         $v0, 0x14($s0)
/* 87A1C9C 8007C76C 00002386 */  lh         $v1, 0x0($s1)
/* 87A1CA0 8007C770 56558434 */  ori        $a0, $a0, (0x55555556 & 0xFFFF)
/* 87A1CA4 8007C774 40180300 */  sll        $v1, $v1, 1
/* 87A1CA8 8007C778 18006400 */  mult       $v1, $a0
/* 87A1CAC 8007C77C 02002286 */  lh         $v0, 0x2($s1)
/* 87A1CB0 8007C780 10400000 */  mfhi       $t0
/* 87A1CB4 8007C784 40100200 */  sll        $v0, $v0, 1
/* 87A1CB8 8007C788 00000000 */  nop
/* 87A1CBC 8007C78C 18004400 */  mult       $v0, $a0
/* 87A1CC0 8007C790 C31F0300 */  sra        $v1, $v1, 31
/* 87A1CC4 8007C794 96000424 */  addiu      $a0, $zero, 0x96
/* 87A1CC8 8007C798 23180301 */  subu       $v1, $t0, $v1
/* 87A1CCC 8007C79C C3170200 */  sra        $v0, $v0, 31
/* 87A1CD0 8007C7A0 0C0024A6 */  sh         $a0, 0xC($s1)
/* 87A1CD4 8007C7A4 000023A6 */  sh         $v1, 0x0($s1)
/* 87A1CD8 8007C7A8 10280000 */  mfhi       $a1
/* 87A1CDC 8007C7AC 2310A200 */  subu       $v0, $a1, $v0
/* 87A1CE0 8007C7B0 F6F10108 */  j          .Llevel_43_8007C7D8
/* 87A1CE4 8007C7B4 020022A6 */   sh        $v0, 0x2($s1)
.Llevel_43_8007C7B8:
/* 87A1CE8 8007C7B8 01000224 */  addiu      $v0, $zero, 0x1
/* 87A1CEC 8007C7BC 480002A2 */  sb         $v0, 0x48($s0)
/* 87A1CF0 8007C7C0 0780023C */  lui        $v0, %hi(D_80071908)
/* 87A1CF4 8007C7C4 0819428C */  lw         $v0, %lo(D_80071908)($v0)
/* 87A1CF8 8007C7C8 00000000 */  nop
/* 87A1CFC 8007C7CC 140002AE */  sw         $v0, 0x14($s0)
/* 87A1D00 8007C7D0 64000224 */  addiu      $v0, $zero, 0x64
/* 87A1D04 8007C7D4 0C0022A6 */  sh         $v0, 0xC($s1)
.Llevel_43_8007C7D8:
/* 87A1D08 8007C7D8 48000392 */  lbu        $v1, 0x48($s0)
/* 87A1D0C 8007C7DC 01000224 */  addiu      $v0, $zero, 0x1
/* 87A1D10 8007C7E0 71006210 */  beq        $v1, $v0, .Llevel_43_8007C9A8
/* 87A1D14 8007C7E4 02006228 */   slti      $v0, $v1, 0x2
/* 87A1D18 8007C7E8 05004010 */  beqz       $v0, .Llevel_43_8007C800
/* 87A1D1C 8007C7EC 00000000 */   nop
/* 87A1D20 8007C7F0 3A006010 */  beqz       $v1, .Llevel_43_8007C8DC
/* 87A1D24 8007C7F4 01000424 */   addiu     $a0, $zero, 0x1
/* 87A1D28 8007C7F8 99F20108 */  j          .Llevel_43_8007CA64
/* 87A1D2C 8007C7FC 00000000 */   nop
.Llevel_43_8007C800:
/* 87A1D30 8007C800 02000224 */  addiu      $v0, $zero, 0x2
/* 87A1D34 8007C804 31006210 */  beq        $v1, $v0, .Llevel_43_8007C8CC
/* 87A1D38 8007C808 03000224 */   addiu     $v0, $zero, 0x3
/* 87A1D3C 8007C80C 95006214 */  bne        $v1, $v0, .Llevel_43_8007CA64
/* 87A1D40 8007C810 00000000 */   nop
/* 87A1D44 8007C814 C5E5000C */  jal        func_80039714
/* 87A1D48 8007C818 21200002 */   addu      $a0, $s0, $zero
/* 87A1D4C 8007C81C 91004010 */  beqz       $v0, .Llevel_43_8007CA64
/* 87A1D50 8007C820 21880000 */   addu      $s1, $zero, $zero
/* 87A1D54 8007C824 21200000 */  addu       $a0, $zero, $zero
.Llevel_43_8007C828:
/* 87A1D58 8007C828 DBD8000C */  jal        func_8003636C
/* 87A1D5C 8007C82C 00080524 */   addiu     $a1, $zero, 0x800
/* 87A1D60 8007C830 21200000 */  addu       $a0, $zero, $zero
/* 87A1D64 8007C834 0C00038E */  lw         $v1, 0xC($s0)
/* 87A1D68 8007C838 00080524 */  addiu      $a1, $zero, 0x800
/* 87A1D6C 8007C83C 00FC6324 */  addiu      $v1, $v1, -0x400
/* 87A1D70 8007C840 21186200 */  addu       $v1, $v1, $v0
/* 87A1D74 8007C844 DBD8000C */  jal        func_8003636C
/* 87A1D78 8007C848 2000A3AF */   sw        $v1, 0x20($sp)
/* 87A1D7C 8007C84C 21200000 */  addu       $a0, $zero, $zero
/* 87A1D80 8007C850 1000038E */  lw         $v1, 0x10($s0)
/* 87A1D84 8007C854 00080524 */  addiu      $a1, $zero, 0x800
/* 87A1D88 8007C858 00FC6324 */  addiu      $v1, $v1, -0x400
/* 87A1D8C 8007C85C 21186200 */  addu       $v1, $v1, $v0
/* 87A1D90 8007C860 DBD8000C */  jal        func_8003636C
/* 87A1D94 8007C864 2400A3AF */   sw        $v1, 0x24($sp)
/* 87A1D98 8007C868 01000424 */  addiu      $a0, $zero, 0x1
/* 87A1D9C 8007C86C 01000524 */  addiu      $a1, $zero, 0x1
/* 87A1DA0 8007C870 2000A627 */  addiu      $a2, $sp, 0x20
/* 87A1DA4 8007C874 1400088E */  lw         $t0, 0x14($s0)
/* 87A1DA8 8007C878 E2FF0324 */  addiu      $v1, $zero, -0x1E
/* 87A1DAC 8007C87C 1800A3AF */  sw         $v1, 0x18($sp)
/* 87A1DB0 8007C880 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 87A1DB4 8007C884 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 87A1DB8 8007C888 1000A727 */  addiu      $a3, $sp, 0x10
/* 87A1DBC 8007C88C 1000A0AF */  sw         $zero, 0x10($sp)
/* 87A1DC0 8007C890 1400A0AF */  sw         $zero, 0x14($sp)
/* 87A1DC4 8007C894 00FC0825 */  addiu      $t0, $t0, -0x400
/* 87A1DC8 8007C898 21400201 */  addu       $t0, $t0, $v0
/* 87A1DCC 8007C89C 09F86000 */  jalr       $v1
/* 87A1DD0 8007C8A0 2800A8AF */   sw        $t0, 0x28($sp)
/* 87A1DD4 8007C8A4 21184000 */  addu       $v1, $v0, $zero
/* 87A1DD8 8007C8A8 02006010 */  beqz       $v1, .Llevel_43_8007C8B4
/* 87A1DDC 8007C8AC B4000224 */   addiu     $v0, $zero, 0xB4
/* 87A1DE0 8007C8B0 0A0062A0 */  sb         $v0, 0xA($v1)
.Llevel_43_8007C8B4:
/* 87A1DE4 8007C8B4 01003126 */  addiu      $s1, $s1, 0x1
/* 87A1DE8 8007C8B8 0300222A */  slti       $v0, $s1, 0x3
/* 87A1DEC 8007C8BC DAFF4014 */  bnez       $v0, .Llevel_43_8007C828
/* 87A1DF0 8007C8C0 21200000 */   addu      $a0, $zero, $zero
/* 87A1DF4 8007C8C4 99F20108 */  j          .Llevel_43_8007CA64
/* 87A1DF8 8007C8C8 00000000 */   nop
.Llevel_43_8007C8CC:
/* 87A1DFC 8007C8CC C5E5000C */  jal        func_80039714
/* 87A1E00 8007C8D0 21200002 */   addu      $a0, $s0, $zero
/* 87A1E04 8007C8D4 99F20108 */  j          .Llevel_43_8007CA64
/* 87A1E08 8007C8D8 00000000 */   nop
.Llevel_43_8007C8DC:
/* 87A1E0C 8007C8DC 01000524 */  addiu      $a1, $zero, 0x1
/* 87A1E10 8007C8E0 0C000626 */  addiu      $a2, $s0, 0xC
/* 87A1E14 8007C8E4 1000A727 */  addiu      $a3, $sp, 0x10
/* 87A1E18 8007C8E8 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 87A1E1C 8007C8EC E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 87A1E20 8007C8F0 1E000224 */  addiu      $v0, $zero, 0x1E
/* 87A1E24 8007C8F4 1000A0AF */  sw         $zero, 0x10($sp)
/* 87A1E28 8007C8F8 1400A0AF */  sw         $zero, 0x14($sp)
/* 87A1E2C 8007C8FC 09F86000 */  jalr       $v1
/* 87A1E30 8007C900 1800A2AF */   sw        $v0, 0x18($sp)
/* 87A1E34 8007C904 00002386 */  lh         $v1, 0x0($s1)
/* 87A1E38 8007C908 0C00028E */  lw         $v0, 0xC($s0)
/* 87A1E3C 8007C90C 00000000 */  nop
/* 87A1E40 8007C910 21104300 */  addu       $v0, $v0, $v1
/* 87A1E44 8007C914 0C0002AE */  sw         $v0, 0xC($s0)
/* 87A1E48 8007C918 02002386 */  lh         $v1, 0x2($s1)
/* 87A1E4C 8007C91C 1000028E */  lw         $v0, 0x10($s0)
/* 87A1E50 8007C920 00000000 */  nop
/* 87A1E54 8007C924 21104300 */  addu       $v0, $v0, $v1
/* 87A1E58 8007C928 100002AE */  sw         $v0, 0x10($s0)
/* 87A1E5C 8007C92C 04002296 */  lhu        $v0, 0x4($s1)
/* 87A1E60 8007C930 00000000 */  nop
/* 87A1E64 8007C934 F6FF4224 */  addiu      $v0, $v0, -0xA
/* 87A1E68 8007C938 040022A6 */  sh         $v0, 0x4($s1)
/* 87A1E6C 8007C93C 00140200 */  sll        $v0, $v0, 16
/* 87A1E70 8007C940 03140200 */  sra        $v0, $v0, 16
/* 87A1E74 8007C944 38FF4228 */  slti       $v0, $v0, -0xC8
/* 87A1E78 8007C948 02004010 */  beqz       $v0, .Llevel_43_8007C954
/* 87A1E7C 8007C94C 38FF0224 */   addiu     $v0, $zero, -0xC8
/* 87A1E80 8007C950 040022A6 */  sh         $v0, 0x4($s1)
.Llevel_43_8007C954:
/* 87A1E84 8007C954 04002386 */  lh         $v1, 0x4($s1)
/* 87A1E88 8007C958 1400028E */  lw         $v0, 0x14($s0)
/* 87A1E8C 8007C95C 00000000 */  nop
/* 87A1E90 8007C960 21104300 */  addu       $v0, $v0, $v1
/* 87A1E94 8007C964 140002AE */  sw         $v0, 0x14($s0)
/* 87A1E98 8007C968 44000292 */  lbu        $v0, 0x44($s0)
/* 87A1E9C 8007C96C 06002392 */  lbu        $v1, 0x6($s1)
/* 87A1EA0 8007C970 00000000 */  nop
/* 87A1EA4 8007C974 21104300 */  addu       $v0, $v0, $v1
/* 87A1EA8 8007C978 440002A2 */  sb         $v0, 0x44($s0)
/* 87A1EAC 8007C97C 45000292 */  lbu        $v0, 0x45($s0)
/* 87A1EB0 8007C980 08002392 */  lbu        $v1, 0x8($s1)
/* 87A1EB4 8007C984 0C002426 */  addiu      $a0, $s1, 0xC
/* 87A1EB8 8007C988 21104300 */  addu       $v0, $v0, $v1
/* 87A1EBC 8007C98C 450002A2 */  sb         $v0, 0x45($s0)
/* 87A1EC0 8007C990 46000292 */  lbu        $v0, 0x46($s0)
/* 87A1EC4 8007C994 0A002392 */  lbu        $v1, 0xA($s1)
/* 87A1EC8 8007C998 02000524 */  addiu      $a1, $zero, 0x2
/* 87A1ECC 8007C99C 21104300 */  addu       $v0, $v0, $v1
/* 87A1ED0 8007C9A0 93F20108 */  j          .Llevel_43_8007CA4C
/* 87A1ED4 8007C9A4 460002A2 */   sb        $v0, 0x46($s0)
.Llevel_43_8007C9A8:
/* 87A1ED8 8007C9A8 16002286 */  lh         $v0, 0x16($s1)
/* 87A1EDC 8007C9AC 00000000 */  nop
/* 87A1EE0 8007C9B0 22004014 */  bnez       $v0, .Llevel_43_8007CA3C
/* 87A1EE4 8007C9B4 16002426 */   addiu     $a0, $s1, 0x16
/* 87A1EE8 8007C9B8 21200000 */  addu       $a0, $zero, $zero
/* 87A1EEC 8007C9BC DBD8000C */  jal        func_8003636C
/* 87A1EF0 8007C9C0 14000524 */   addiu     $a1, $zero, 0x14
/* 87A1EF4 8007C9C4 21200000 */  addu       $a0, $zero, $zero
/* 87A1EF8 8007C9C8 14000524 */  addiu      $a1, $zero, 0x14
/* 87A1EFC 8007C9CC F6FF4224 */  addiu      $v0, $v0, -0xA
/* 87A1F00 8007C9D0 DBD8000C */  jal        func_8003636C
/* 87A1F04 8007C9D4 1000A2AF */   sw        $v0, 0x10($sp)
/* 87A1F08 8007C9D8 01000424 */  addiu      $a0, $zero, 0x1
/* 87A1F0C 8007C9DC 21280000 */  addu       $a1, $zero, $zero
/* 87A1F10 8007C9E0 0C000626 */  addiu      $a2, $s0, 0xC
/* 87A1F14 8007C9E4 1000A727 */  addiu      $a3, $sp, 0x10
/* 87A1F18 8007C9E8 F6FF4224 */  addiu      $v0, $v0, -0xA
/* 87A1F1C 8007C9EC 1400A2AF */  sw         $v0, 0x14($sp)
/* 87A1F20 8007C9F0 14000224 */  addiu      $v0, $zero, 0x14
/* 87A1F24 8007C9F4 1800A2AF */  sw         $v0, 0x18($sp)
/* 87A1F28 8007C9F8 1400028E */  lw         $v0, 0x14($s0)
/* 87A1F2C 8007C9FC 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 87A1F30 8007CA00 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 87A1F34 8007CA04 32004224 */  addiu      $v0, $v0, 0x32
/* 87A1F38 8007CA08 09F86000 */  jalr       $v1
/* 87A1F3C 8007CA0C 140002AE */   sw        $v0, 0x14($s0)
/* 87A1F40 8007CA10 1400038E */  lw         $v1, 0x14($s0)
/* 87A1F44 8007CA14 00000000 */  nop
/* 87A1F48 8007CA18 CEFF6324 */  addiu      $v1, $v1, -0x32
/* 87A1F4C 8007CA1C 140003AE */  sw         $v1, 0x14($s0)
/* 87A1F50 8007CA20 21184000 */  addu       $v1, $v0, $zero
/* 87A1F54 8007CA24 02006010 */  beqz       $v1, .Llevel_43_8007CA30
/* 87A1F58 8007CA28 32000224 */   addiu     $v0, $zero, 0x32
/* 87A1F5C 8007CA2C 0A0062A0 */  sb         $v0, 0xA($v1)
.Llevel_43_8007CA30:
/* 87A1F60 8007CA30 05000224 */  addiu      $v0, $zero, 0x5
/* 87A1F64 8007CA34 91F20108 */  j          .Llevel_43_8007CA44
/* 87A1F68 8007CA38 160022A6 */   sh        $v0, 0x16($s1)
.Llevel_43_8007CA3C:
/* 87A1F6C 8007CA3C 69D6000C */  jal        func_800359A4
/* 87A1F70 8007CA40 02000524 */   addiu     $a1, $zero, 0x2
.Llevel_43_8007CA44:
/* 87A1F74 8007CA44 0C002426 */  addiu      $a0, $s1, 0xC
/* 87A1F78 8007CA48 02000524 */  addiu      $a1, $zero, 0x2
.Llevel_43_8007CA4C:
/* 87A1F7C 8007CA4C 69D6000C */  jal        func_800359A4
/* 87A1F80 8007CA50 00000000 */   nop
/* 87A1F84 8007CA54 03004010 */  beqz       $v0, .Llevel_43_8007CA64
/* 87A1F88 8007CA58 00000000 */   nop
/* 87A1F8C 8007CA5C C656010C */  jal        func_80055B18
/* 87A1F90 8007CA60 21200002 */   addu      $a0, $s0, $zero
.Llevel_43_8007CA64:
/* 87A1F94 8007CA64 3800BF8F */  lw         $ra, 0x38($sp)
/* 87A1F98 8007CA68 3400B18F */  lw         $s1, 0x34($sp)
/* 87A1F9C 8007CA6C 3000B08F */  lw         $s0, 0x30($sp)
/* 87A1FA0 8007CA70 4000BD27 */  addiu      $sp, $sp, 0x40
/* 87A1FA4 8007CA74 0800E003 */  jr         $ra
/* 87A1FA8 8007CA78 00000000 */   nop
.size MobyUpdate_84_level_43, . - MobyUpdate_84_level_43
