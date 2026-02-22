.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_35_8008A9C4
/* 770D6F4 8008A9C4 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 770D6F8 8008A9C8 2000B0AF */  sw         $s0, 0x20($sp)
/* 770D6FC 8008A9CC 21808000 */  addu       $s0, $a0, $zero
/* 770D700 8008A9D0 2D00022A */  slti       $v0, $s0, 0x2D
/* 770D704 8008A9D4 2800BFAF */  sw         $ra, 0x28($sp)
/* 770D708 8008A9D8 13004010 */  beqz       $v0, .Llevel_35_8008AA28
/* 770D70C 8008A9DC 2400B1AF */   sw        $s1, 0x24($sp)
/* 770D710 8008A9E0 2B00022A */  slti       $v0, $s0, 0x2B
/* 770D714 8008A9E4 A3004010 */  beqz       $v0, .Llevel_35_8008AC74
/* 770D718 8008A9E8 1E000224 */   addiu     $v0, $zero, 0x1E
/* 770D71C 8008A9EC 45000212 */  beq        $s0, $v0, .Llevel_35_8008AB04
/* 770D720 8008A9F0 1F00022A */   slti      $v0, $s0, 0x1F
/* 770D724 8008A9F4 05004010 */  beqz       $v0, .Llevel_35_8008AA0C
/* 770D728 8008A9F8 19000224 */   addiu     $v0, $zero, 0x19
/* 770D72C 8008A9FC 2B000212 */  beq        $s0, $v0, .Llevel_35_8008AAAC
/* 770D730 8008AA00 21280000 */   addu      $a1, $zero, $zero
/* 770D734 8008AA04 DD2B0208 */  j          .Llevel_35_8008AF74
/* 770D738 8008AA08 00000000 */   nop
.Llevel_35_8008AA0C:
/* 770D73C 8008AA0C 2400022A */  slti       $v0, $s0, 0x24
/* 770D740 8008AA10 58014010 */  beqz       $v0, .Llevel_35_8008AF74
/* 770D744 8008AA14 2100022A */   slti      $v0, $s0, 0x21
/* 770D748 8008AA18 56014014 */  bnez       $v0, .Llevel_35_8008AF74
/* 770D74C 8008AA1C 06000324 */   addiu     $v1, $zero, 0x6
/* 770D750 8008AA20 ED2A0208 */  j          .Llevel_35_8008ABB4
/* 770D754 8008AA24 00000000 */   nop
.Llevel_35_8008AA28:
/* 770D758 8008AA28 37000224 */  addiu      $v0, $zero, 0x37
/* 770D75C 8008AA2C DC000212 */  beq        $s0, $v0, .Llevel_35_8008ADA0
/* 770D760 8008AA30 3800022A */   slti      $v0, $s0, 0x38
/* 770D764 8008AA34 07004010 */  beqz       $v0, .Llevel_35_8008AA54
/* 770D768 8008AA38 35000224 */   addiu     $v0, $zero, 0x35
/* 770D76C 8008AA3C 10000212 */  beq        $s0, $v0, .Llevel_35_8008AA80
/* 770D770 8008AA40 36000224 */   addiu     $v0, $zero, 0x36
/* 770D774 8008AA44 0E000212 */  beq        $s0, $v0, .Llevel_35_8008AA80
/* 770D778 8008AA48 00000000 */   nop
/* 770D77C 8008AA4C DD2B0208 */  j          .Llevel_35_8008AF74
/* 770D780 8008AA50 00000000 */   nop
.Llevel_35_8008AA54:
/* 770D784 8008AA54 3D000224 */  addiu      $v0, $zero, 0x3D
/* 770D788 8008AA58 E8000212 */  beq        $s0, $v0, .Llevel_35_8008ADFC
/* 770D78C 8008AA5C 3D00022A */   slti      $v0, $s0, 0x3D
/* 770D790 8008AA60 44014014 */  bnez       $v0, .Llevel_35_8008AF74
/* 770D794 8008AA64 AD00022A */   slti      $v0, $s0, 0xAD
/* 770D798 8008AA68 42014010 */  beqz       $v0, .Llevel_35_8008AF74
/* 770D79C 8008AA6C A500022A */   slti      $v0, $s0, 0xA5
/* 770D7A0 8008AA70 40014014 */  bnez       $v0, .Llevel_35_8008AF74
/* 770D7A4 8008AA74 12000324 */   addiu     $v1, $zero, 0x12
/* 770D7A8 8008AA78 BD2B0208 */  j          .Llevel_35_8008AEF4
/* 770D7AC 8008AA7C 00000000 */   nop
.Llevel_35_8008AA80:
/* 770D7B0 8008AA80 0780013C */  lui        $at, %hi(D_80070328 + 0x50)
/* 770D7B4 8008AA84 780320AC */  sw         $zero, %lo(D_80070328 + 0x50)($at)
/* 770D7B8 8008AA88 0780013C */  lui        $at, %hi(D_80070328 + 0x4C)
/* 770D7BC 8008AA8C 740320AC */  sw         $zero, %lo(D_80070328 + 0x4C)($at)
/* 770D7C0 8008AA90 7C10010C */  jal        func_800441F0
/* 770D7C4 8008AA94 00000000 */   nop
/* 770D7C8 8008AA98 01000224 */  addiu      $v0, $zero, 0x1
/* 770D7CC 8008AA9C 0780013C */  lui        $at, %hi(D_80070328 + 0x1B4)
/* 770D7D0 8008AAA0 DC0422A0 */  sb         $v0, %lo(D_80070328 + 0x1B4)($at)
/* 770D7D4 8008AAA4 B72B0208 */  j          .Llevel_35_8008AEDC
/* 770D7D8 8008AAA8 00000000 */   nop
.Llevel_35_8008AAAC:
/* 770D7DC 8008AAAC 0780033C */  lui        $v1, %hi(D_8006C654)
/* 770D7E0 8008AAB0 54C6638C */  lw         $v1, %lo(D_8006C654)($v1)
/* 770D7E4 8008AAB4 09000224 */  addiu      $v0, $zero, 0x9
/* 770D7E8 8008AAB8 0780013C */  lui        $at, %hi(D_80070328 + 0x50)
/* 770D7EC 8008AABC 780322AC */  sw         $v0, %lo(D_80070328 + 0x50)($at)
/* 770D7F0 8008AAC0 0600023C */  lui        $v0, (0x60000 >> 16)
/* 770D7F4 8008AAC4 0780013C */  lui        $at, %hi(D_80070328 + 0x130)
/* 770D7F8 8008AAC8 580422AC */  sw         $v0, %lo(D_80070328 + 0x130)($at)
/* 770D7FC 8008AACC 01000224 */  addiu      $v0, $zero, 0x1
/* 770D800 8008AAD0 0780013C */  lui        $at, %hi(D_80070328 + 0x4C)
/* 770D804 8008AAD4 740320AC */  sw         $zero, %lo(D_80070328 + 0x4C)($at)
/* 770D808 8008AAD8 0780013C */  lui        $at, %hi(D_80070328 + 0x144)
/* 770D80C 8008AADC 6C0420AC */  sw         $zero, %lo(D_80070328 + 0x144)($at)
/* 770D810 8008AAE0 0780013C */  lui        $at, %hi(D_80070328 + 0x1B4)
/* 770D814 8008AAE4 DC0420A0 */  sb         $zero, %lo(D_80070328 + 0x1B4)($at)
/* 770D818 8008AAE8 0780013C */  lui        $at, %hi(D_80070328 + 0x1B5)
/* 770D81C 8008AAEC DD0422A0 */  sb         $v0, %lo(D_80070328 + 0x1B5)($at)
/* 770D820 8008AAF0 22006490 */  lbu        $a0, 0x22($v1)
.Llevel_35_8008AAF4:
/* 770D824 8008AAF4 D4EE000C */  jal        PlaySound
/* 770D828 8008AAF8 21300000 */   addu      $a2, $zero, $zero
/* 770D82C 8008AAFC B72B0208 */  j          .Llevel_35_8008AEDC
/* 770D830 8008AB00 00000000 */   nop
.Llevel_35_8008AB04:
/* 770D834 8008AB04 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 770D838 8008AB08 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 770D83C 8008AB0C 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 770D840 8008AB10 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 770D844 8008AB14 07000224 */  addiu      $v0, $zero, 0x7
/* 770D848 8008AB18 0780013C */  lui        $at, %hi(D_80070328 + 0x50)
/* 770D84C 8008AB1C 780322AC */  sw         $v0, %lo(D_80070328 + 0x50)($at)
/* 770D850 8008AB20 01000224 */  addiu      $v0, $zero, 0x1
/* 770D854 8008AB24 0780013C */  lui        $at, %hi(D_80070328 + 0x1B4)
/* 770D858 8008AB28 DC0422A0 */  sb         $v0, %lo(D_80070328 + 0x1B4)($at)
/* 770D85C 8008AB2C 0F000224 */  addiu      $v0, $zero, 0xF
/* 770D860 8008AB30 0780013C */  lui        $at, %hi(D_8006E524)
/* 770D864 8008AB34 24E522AC */  sw         $v0, %lo(D_8006E524)($at)
/* 770D868 8008AB38 0780023C */  lui        $v0, %hi(D_80070328 + 0x144)
/* 770D86C 8008AB3C 6C044224 */  addiu      $v0, $v0, %lo(D_80070328 + 0x144)
/* 770D870 8008AB40 0780013C */  lui        $at, %hi(D_80070328 + 0x4C)
/* 770D874 8008AB44 740320AC */  sw         $zero, %lo(D_80070328 + 0x4C)($at)
/* 770D878 8008AB48 000043AC */  sw         $v1, 0x0($v0)
/* 770D87C 8008AB4C 06000011 */  beqz       $t0, .Llevel_35_8008AB68
/* 770D880 8008AB50 000040AC */   sw        $zero, 0x0($v0)
/* 770D884 8008AB54 05000424 */  addiu      $a0, $zero, 0x5
/* 770D888 8008AB58 0A000524 */  addiu      $a1, $zero, 0xA
/* 770D88C 8008AB5C 21300000 */  addu       $a2, $zero, $zero
/* 770D890 8008AB60 09F80001 */  jalr       $t0
/* 770D894 8008AB64 21380000 */   addu      $a3, $zero, $zero
.Llevel_35_8008AB68:
/* 770D898 8008AB68 0780023C */  lui        $v0, %hi(D_8006C654)
/* 770D89C 8008AB6C 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 770D8A0 8008AB70 21280000 */  addu       $a1, $zero, $zero
/* 770D8A4 8008AB74 0E004490 */  lbu        $a0, 0xE($v0)
/* 770D8A8 8008AB78 D4EE000C */  jal        PlaySound
/* 770D8AC 8008AB7C 21300000 */   addu      $a2, $zero, $zero
/* 770D8B0 8008AB80 0780033C */  lui        $v1, %hi(D_8006C654)
/* 770D8B4 8008AB84 54C6638C */  lw         $v1, %lo(D_8006C654)($v1)
/* 770D8B8 8008AB88 0780013C */  lui        $at, %hi(D_80070328 + 0x28C)
/* 770D8BC 8008AB8C B40522AC */  sw         $v0, %lo(D_80070328 + 0x28C)($at)
/* 770D8C0 8008AB90 0E006290 */  lbu        $v0, 0xE($v1)
/* 770D8C4 8008AB94 0780013C */  lui        $at, %hi(D_80070328 + 0x244)
/* 770D8C8 8008AB98 6C0520AC */  sw         $zero, %lo(D_80070328 + 0x244)($at)
/* 770D8CC 8008AB9C 0780013C */  lui        $at, %hi(D_80070328 + 0x250)
/* 770D8D0 8008ABA0 780520AC */  sw         $zero, %lo(D_80070328 + 0x250)($at)
/* 770D8D4 8008ABA4 0780013C */  lui        $at, %hi(D_80070328 + 0x290)
/* 770D8D8 8008ABA8 B80522AC */  sw         $v0, %lo(D_80070328 + 0x290)($at)
/* 770D8DC 8008ABAC DD2B0208 */  j          .Llevel_35_8008AF74
/* 770D8E0 8008ABB0 00000000 */   nop
.Llevel_35_8008ABB4:
/* 770D8E4 8008ABB4 0780113C */  lui        $s1, %hi(D_80070328 + 0x50)
/* 770D8E8 8008ABB8 78033126 */  addiu      $s1, $s1, %lo(D_80070328 + 0x50)
/* 770D8EC 8008ABBC 0000228E */  lw         $v0, 0x0($s1)
/* 770D8F0 8008ABC0 00000000 */  nop
/* 770D8F4 8008ABC4 27004310 */  beq        $v0, $v1, .Llevel_35_8008AC64
/* 770D8F8 8008ABC8 A000022A */   slti      $v0, $s0, 0xA0
/* 770D8FC 8008ABCC 000023AE */  sw         $v1, 0x0($s1)
/* 770D900 8008ABD0 0780013C */  lui        $at, %hi(D_80070328 + 0x4C)
/* 770D904 8008ABD4 740320AC */  sw         $zero, %lo(D_80070328 + 0x4C)($at)
/* 770D908 8008ABD8 5A3C010C */  jal        func_8004F168
/* 770D90C 8008ABDC 04012426 */   addiu     $a0, $s1, 0x104
/* 770D910 8008ABE0 48002426 */  addiu      $a0, $s1, 0x48
/* 770D914 8008ABE4 0780013C */  lui        $at, %hi(D_80070328 + 0x160)
/* 770D918 8008ABE8 880420AC */  sw         $zero, %lo(D_80070328 + 0x160)($at)
/* 770D91C 8008ABEC 7A3B010C */  jal        func_8004EDE8
/* 770D920 8008ABF0 21280000 */   addu      $a1, $zero, $zero
/* 770D924 8008ABF4 0780013C */  lui        $at, %hi(D_80070328 + 0xB0)
/* 770D928 8008ABF8 D80322AC */  sw         $v0, %lo(D_80070328 + 0xB0)($at)
/* 770D92C 8008ABFC 00084228 */  slti       $v0, $v0, 0x800
/* 770D930 8008AC00 03004010 */  beqz       $v0, .Llevel_35_8008AC10
/* 770D934 8008AC04 00080224 */   addiu     $v0, $zero, 0x800
/* 770D938 8008AC08 0780013C */  lui        $at, %hi(D_80070328 + 0xB0)
/* 770D93C 8008AC0C D80322AC */  sw         $v0, %lo(D_80070328 + 0xB0)($at)
.Llevel_35_8008AC10:
/* 770D940 8008AC10 0780023C */  lui        $v0, %hi(D_80070328 + 0xB0)
/* 770D944 8008AC14 D803428C */  lw         $v0, %lo(D_80070328 + 0xB0)($v0)
/* 770D948 8008AC18 00000000 */  nop
/* 770D94C 8008AC1C 014B4228 */  slti       $v0, $v0, 0x4B01
/* 770D950 8008AC20 03004014 */  bnez       $v0, .Llevel_35_8008AC30
/* 770D954 8008AC24 004B0224 */   addiu     $v0, $zero, 0x4B00
/* 770D958 8008AC28 0780013C */  lui        $at, %hi(D_80070328 + 0xB0)
/* 770D95C 8008AC2C D80322AC */  sw         $v0, %lo(D_80070328 + 0xB0)($at)
.Llevel_35_8008AC30:
/* 770D960 8008AC30 0780013C */  lui        $at, %hi(D_80070328 + 0x144)
/* 770D964 8008AC34 6C0420AC */  sw         $zero, %lo(D_80070328 + 0x144)($at)
/* 770D968 8008AC38 0780013C */  lui        $at, %hi(D_80070328 + 0x148)
/* 770D96C 8008AC3C 700420A4 */  sh         $zero, %lo(D_80070328 + 0x148)($at)
/* 770D970 8008AC40 0780013C */  lui        $at, %hi(D_80070328 + 0x14C)
/* 770D974 8008AC44 740420AC */  sw         $zero, %lo(D_80070328 + 0x14C)($at)
/* 770D978 8008AC48 0780013C */  lui        $at, %hi(D_80070328 + 0x150)
/* 770D97C 8008AC4C 780420AC */  sw         $zero, %lo(D_80070328 + 0x150)($at)
/* 770D980 8008AC50 0780013C */  lui        $at, %hi(D_80070328 + 0x1B4)
/* 770D984 8008AC54 DC0420A0 */  sb         $zero, %lo(D_80070328 + 0x1B4)($at)
/* 770D988 8008AC58 0780013C */  lui        $at, %hi(D_80070328 + 0x1B5)
/* 770D98C 8008AC5C DD0420A0 */  sb         $zero, %lo(D_80070328 + 0x1B5)($at)
/* 770D990 8008AC60 A000022A */  slti       $v0, $s0, 0xA0
.Llevel_35_8008AC64:
/* 770D994 8008AC64 C3004010 */  beqz       $v0, .Llevel_35_8008AF74
/* 770D998 8008AC68 00000000 */   nop
/* 770D99C 8008AC6C B72B0208 */  j          .Llevel_35_8008AEDC
/* 770D9A0 8008AC70 00000000 */   nop
.Llevel_35_8008AC74:
/* 770D9A4 8008AC74 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 770D9A8 8008AC78 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 770D9AC 8008AC7C 0A000224 */  addiu      $v0, $zero, 0xA
/* 770D9B0 8008AC80 96006210 */  beq        $v1, $v0, .Llevel_35_8008AEDC
/* 770D9B4 8008AC84 21280000 */   addu      $a1, $zero, $zero
/* 770D9B8 8008AC88 0780023C */  lui        $v0, %hi(D_8006C654)
/* 770D9BC 8008AC8C 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 770D9C0 8008AC90 00000000 */  nop
/* 770D9C4 8008AC94 07004490 */  lbu        $a0, 0x7($v0)
/* 770D9C8 8008AC98 D4EE000C */  jal        PlaySound
/* 770D9CC 8008AC9C 21300000 */   addu      $a2, $zero, $zero
/* 770D9D0 8008ACA0 0780023C */  lui        $v0, %hi(D_80070328 + 0x94)
/* 770D9D4 8008ACA4 BC03428C */  lw         $v0, %lo(D_80070328 + 0x94)($v0)
/* 770D9D8 8008ACA8 0780103C */  lui        $s0, %hi(D_80070328 + 0x144)
/* 770D9DC 8008ACAC 6C041026 */  addiu      $s0, $s0, %lo(D_80070328 + 0x144)
/* 770D9E0 8008ACB0 23100200 */  negu       $v0, $v0
/* 770D9E4 8008ACB4 83100200 */  sra        $v0, $v0, 2
/* 770D9E8 8008ACB8 000002AE */  sw         $v0, 0x0($s0)
/* 770D9EC 8008ACBC 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 770D9F0 8008ACC0 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 770D9F4 8008ACC4 08000224 */  addiu      $v0, $zero, 0x8
/* 770D9F8 8008ACC8 06006210 */  beq        $v1, $v0, .Llevel_35_8008ACE4
/* 770D9FC 8008ACCC 00590224 */   addiu     $v0, $zero, 0x5900
/* 770DA00 8008ACD0 0780013C */  lui        $at, %hi(D_80070328 + 0x148)
/* 770DA04 8008ACD4 700422AC */  sw         $v0, %lo(D_80070328 + 0x148)($at)
/* 770DA08 8008ACD8 0A000224 */  addiu      $v0, $zero, 0xA
/* 770DA0C 8008ACDC 0780013C */  lui        $at, %hi(D_80070328 + 0x50)
/* 770DA10 8008ACE0 780322AC */  sw         $v0, %lo(D_80070328 + 0x50)($at)
.Llevel_35_8008ACE4:
/* 770DA14 8008ACE4 54FF0426 */  addiu      $a0, $s0, -0xAC
/* 770DA18 8008ACE8 0780013C */  lui        $at, %hi(D_80070328 + 0x4C)
/* 770DA1C 8008ACEC 740320AC */  sw         $zero, %lo(D_80070328 + 0x4C)($at)
/* 770DA20 8008ACF0 7A3B010C */  jal        func_8004EDE8
/* 770DA24 8008ACF4 21280000 */   addu      $a1, $zero, $zero
/* 770DA28 8008ACF8 1000A427 */  addiu      $a0, $sp, 0x10
/* 770DA2C 8008ACFC 0780013C */  lui        $at, %hi(D_80070328 + 0xB0)
/* 770DA30 8008AD00 D80322AC */  sw         $v0, %lo(D_80070328 + 0xB0)($at)
/* 770DA34 8008AD04 01000224 */  addiu      $v0, $zero, 0x1
/* 770DA38 8008AD08 0780013C */  lui        $at, %hi(D_80070328 + 0x1B4)
/* 770DA3C 8008AD0C DC0422A0 */  sb         $v0, %lo(D_80070328 + 0x1B4)($at)
/* 770DA40 8008AD10 0780013C */  lui        $at, %hi(D_80070328 + 0x1B5)
/* 770DA44 8008AD14 DD0422A0 */  sb         $v0, %lo(D_80070328 + 0x1B5)($at)
/* 770DA48 8008AD18 5E3C010C */  jal        func_8004F178
/* 770DA4C 8008AD1C BCFE0526 */   addiu     $a1, $s0, -0x144
/* 770DA50 8008AD20 1000A427 */  addiu      $a0, $sp, 0x10
/* 770DA54 8008AD24 1800A28F */  lw         $v0, 0x18($sp)
/* 770DA58 8008AD28 00080524 */  addiu      $a1, $zero, 0x800
/* 770DA5C 8008AD2C 00044224 */  addiu      $v0, $v0, 0x400
/* 770DA60 8008AD30 D668000C */  jal        func_8001A358
/* 770DA64 8008AD34 1800A2AF */   sw        $v0, 0x18($sp)
/* 770DA68 8008AD38 68004010 */  beqz       $v0, .Llevel_35_8008AEDC
/* 770DA6C 8008AD3C 1800A2AF */   sw        $v0, 0x18($sp)
/* 770DA70 8008AD40 0780023C */  lui        $v0, %hi(D_80071934)
/* 770DA74 8008AD44 3419428C */  lw         $v0, %lo(D_80071934)($v0)
/* 770DA78 8008AD48 00000000 */  nop
/* 770DA7C 8008AD4C 63004010 */  beqz       $v0, .Llevel_35_8008AEDC
/* 770DA80 8008AD50 00000000 */   nop
/* 770DA84 8008AD54 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 770DA88 8008AD58 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 770DA8C 8008AD5C 00000000 */  nop
/* 770DA90 8008AD60 5E004010 */  beqz       $v0, .Llevel_35_8008AEDC
/* 770DA94 8008AD64 0A000424 */   addiu     $a0, $zero, 0xA
/* 770DA98 8008AD68 29000524 */  addiu      $a1, $zero, 0x29
/* 770DA9C 8008AD6C 1000A627 */  addiu      $a2, $sp, 0x10
/* 770DAA0 8008AD70 09F84000 */  jalr       $v0
/* 770DAA4 8008AD74 21380000 */   addu      $a3, $zero, $zero
/* 770DAA8 8008AD78 06000424 */  addiu      $a0, $zero, 0x6
/* 770DAAC 8008AD7C 2E000524 */  addiu      $a1, $zero, 0x2E
/* 770DAB0 8008AD80 1000A627 */  addiu      $a2, $sp, 0x10
/* 770DAB4 8008AD84 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 770DAB8 8008AD88 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 770DABC 8008AD8C 00000000 */  nop
/* 770DAC0 8008AD90 09F84000 */  jalr       $v0
/* 770DAC4 8008AD94 21380000 */   addu      $a3, $zero, $zero
/* 770DAC8 8008AD98 B72B0208 */  j          .Llevel_35_8008AEDC
/* 770DACC 8008AD9C 00000000 */   nop
.Llevel_35_8008ADA0:
/* 770DAD0 8008ADA0 08000224 */  addiu      $v0, $zero, 0x8
/* 770DAD4 8008ADA4 0780013C */  lui        $at, %hi(D_80070328 + 0x50)
/* 770DAD8 8008ADA8 780322AC */  sw         $v0, %lo(D_80070328 + 0x50)($at)
/* 770DADC 8008ADAC 0780023C */  lui        $v0, %hi(D_80070328 + 0x94)
/* 770DAE0 8008ADB0 BC03428C */  lw         $v0, %lo(D_80070328 + 0x94)($v0)
/* 770DAE4 8008ADB4 01000324 */  addiu      $v1, $zero, 0x1
/* 770DAE8 8008ADB8 0780013C */  lui        $at, %hi(D_80070328 + 0x1B5)
/* 770DAEC 8008ADBC DD0423A0 */  sb         $v1, %lo(D_80070328 + 0x1B5)($at)
/* 770DAF0 8008ADC0 0780033C */  lui        $v1, %hi(D_8006C654)
/* 770DAF4 8008ADC4 54C6638C */  lw         $v1, %lo(D_8006C654)($v1)
/* 770DAF8 8008ADC8 0780013C */  lui        $at, %hi(D_80070328 + 0x148)
/* 770DAFC 8008ADCC 700420AC */  sw         $zero, %lo(D_80070328 + 0x148)($at)
/* 770DB00 8008ADD0 0780013C */  lui        $at, %hi(D_80070328 + 0x4C)
/* 770DB04 8008ADD4 740320AC */  sw         $zero, %lo(D_80070328 + 0x4C)($at)
/* 770DB08 8008ADD8 0780013C */  lui        $at, %hi(D_80070328 + 0x1B4)
/* 770DB0C 8008ADDC DC0420A0 */  sb         $zero, %lo(D_80070328 + 0x1B4)($at)
/* 770DB10 8008ADE0 23100200 */  negu       $v0, $v0
/* 770DB14 8008ADE4 83100200 */  sra        $v0, $v0, 2
/* 770DB18 8008ADE8 0780013C */  lui        $at, %hi(D_80070328 + 0x144)
/* 770DB1C 8008ADEC 6C0422AC */  sw         $v0, %lo(D_80070328 + 0x144)($at)
/* 770DB20 8008ADF0 07006490 */  lbu        $a0, 0x7($v1)
/* 770DB24 8008ADF4 BD2A0208 */  j          .Llevel_35_8008AAF4
/* 770DB28 8008ADF8 21280000 */   addu      $a1, $zero, $zero
.Llevel_35_8008ADFC:
/* 770DB2C 8008ADFC 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 770DB30 8008AE00 78036324 */  addiu      $v1, $v1, %lo(D_80070328 + 0x50)
/* 770DB34 8008AE04 48006424 */  addiu      $a0, $v1, 0x48
/* 770DB38 8008AE08 09000224 */  addiu      $v0, $zero, 0x9
/* 770DB3C 8008AE0C 000062AC */  sw         $v0, 0x0($v1)
/* 770DB40 8008AE10 0600023C */  lui        $v0, (0x60000 >> 16)
/* 770DB44 8008AE14 0780013C */  lui        $at, %hi(D_80070328 + 0x4C)
/* 770DB48 8008AE18 740320AC */  sw         $zero, %lo(D_80070328 + 0x4C)($at)
/* 770DB4C 8008AE1C 0780013C */  lui        $at, %hi(D_80070328 + 0x130)
/* 770DB50 8008AE20 580422AC */  sw         $v0, %lo(D_80070328 + 0x130)($at)
/* 770DB54 8008AE24 7A3B010C */  jal        func_8004EDE8
/* 770DB58 8008AE28 21280000 */   addu      $a1, $zero, $zero
/* 770DB5C 8008AE2C 0780013C */  lui        $at, %hi(D_80070328 + 0xB0)
/* 770DB60 8008AE30 D80322AC */  sw         $v0, %lo(D_80070328 + 0xB0)($at)
/* 770DB64 8008AE34 801E0224 */  addiu      $v0, $zero, 0x1E80
/* 770DB68 8008AE38 0780013C */  lui        $at, %hi(D_80070328 + 0xAC)
/* 770DB6C 8008AE3C D40322AC */  sw         $v0, %lo(D_80070328 + 0xAC)($at)
/* 770DB70 8008AE40 8E0E010C */  jal        func_80043A38
/* 770DB74 8008AE44 000C0424 */   addiu     $a0, $zero, 0xC00
/* 770DB78 8008AE48 0780033C */  lui        $v1, %hi(D_80070328 + 0x170)
/* 770DB7C 8008AE4C 9804638C */  lw         $v1, %lo(D_80070328 + 0x170)($v1)
/* 770DB80 8008AE50 01000224 */  addiu      $v0, $zero, 0x1
/* 770DB84 8008AE54 0780013C */  lui        $at, %hi(D_80070328 + 0x1B4)
/* 770DB88 8008AE58 DC0422A0 */  sb         $v0, %lo(D_80070328 + 0x1B4)($at)
/* 770DB8C 8008AE5C 0B006014 */  bnez       $v1, .Llevel_35_8008AE8C
/* 770DB90 8008AE60 00000000 */   nop
/* 770DB94 8008AE64 0780023C */  lui        $v0, %hi(D_80070328 + 0x1FC)
/* 770DB98 8008AE68 2405428C */  lw         $v0, %lo(D_80070328 + 0x1FC)($v0)
/* 770DB9C 8008AE6C 00000000 */  nop
/* 770DBA0 8008AE70 06004014 */  bnez       $v0, .Llevel_35_8008AE8C
/* 770DBA4 8008AE74 06000224 */   addiu     $v0, $zero, 0x6
/* 770DBA8 8008AE78 0780033C */  lui        $v1, %hi(D_80070328 + 0x200)
/* 770DBAC 8008AE7C 2805638C */  lw         $v1, %lo(D_80070328 + 0x200)($v1)
/* 770DBB0 8008AE80 00000000 */  nop
/* 770DBB4 8008AE84 15006210 */  beq        $v1, $v0, .Llevel_35_8008AEDC
/* 770DBB8 8008AE88 00000000 */   nop
.Llevel_35_8008AE8C:
/* 770DBBC 8008AE8C 0780043C */  lui        $a0, %hi(D_80070328 + 0x170)
/* 770DBC0 8008AE90 98048424 */  addiu      $a0, $a0, %lo(D_80070328 + 0x170)
/* 770DBC4 8008AE94 0000838C */  lw         $v1, 0x0($a0)
/* 770DBC8 8008AE98 00000000 */  nop
/* 770DBCC 8008AE9C FDFF6224 */  addiu      $v0, $v1, -0x3
/* 770DBD0 8008AEA0 0200422C */  sltiu      $v0, $v0, 0x2
/* 770DBD4 8008AEA4 03004014 */  bnez       $v0, .Llevel_35_8008AEB4
/* 770DBD8 8008AEA8 05000224 */   addiu     $v0, $zero, 0x5
/* 770DBDC 8008AEAC 03006214 */  bne        $v1, $v0, .Llevel_35_8008AEBC
/* 770DBE0 8008AEB0 00000000 */   nop
.Llevel_35_8008AEB4:
/* 770DBE4 8008AEB4 B02B0208 */  j          .Llevel_35_8008AEC0
/* 770DBE8 8008AEB8 000082AC */   sw        $v0, 0x0($a0)
.Llevel_35_8008AEBC:
/* 770DBEC 8008AEBC 000080AC */  sw         $zero, 0x0($a0)
.Llevel_35_8008AEC0:
/* 770DBF0 8008AEC0 06000224 */  addiu      $v0, $zero, 0x6
/* 770DBF4 8008AEC4 0780013C */  lui        $at, %hi(D_80070328 + 0x1FC)
/* 770DBF8 8008AEC8 240520AC */  sw         $zero, %lo(D_80070328 + 0x1FC)($at)
/* 770DBFC 8008AECC 0780013C */  lui        $at, %hi(D_80070328 + 0x200)
/* 770DC00 8008AED0 280522AC */  sw         $v0, %lo(D_80070328 + 0x200)($at)
/* 770DC04 8008AED4 4E1C010C */  jal        func_80047138
/* 770DC08 8008AED8 00000000 */   nop
.Llevel_35_8008AEDC:
/* 770DC0C 8008AEDC 0780013C */  lui        $at, %hi(D_80070328 + 0x244)
/* 770DC10 8008AEE0 6C0520AC */  sw         $zero, %lo(D_80070328 + 0x244)($at)
/* 770DC14 8008AEE4 0780013C */  lui        $at, %hi(D_80070328 + 0x250)
/* 770DC18 8008AEE8 780520AC */  sw         $zero, %lo(D_80070328 + 0x250)($at)
/* 770DC1C 8008AEEC DD2B0208 */  j          .Llevel_35_8008AF74
/* 770DC20 8008AEF0 00000000 */   nop
.Llevel_35_8008AEF4:
/* 770DC24 8008AEF4 0780113C */  lui        $s1, %hi(D_80070328 + 0x50)
/* 770DC28 8008AEF8 78033126 */  addiu      $s1, $s1, %lo(D_80070328 + 0x50)
/* 770DC2C 8008AEFC 0000228E */  lw         $v0, 0x0($s1)
/* 770DC30 8008AF00 00000000 */  nop
/* 770DC34 8008AF04 0E004310 */  beq        $v0, $v1, .Llevel_35_8008AF40
/* 770DC38 8008AF08 A9000224 */   addiu     $v0, $zero, 0xA9
/* 770DC3C 8008AF0C 000023AE */  sw         $v1, 0x0($s1)
/* 770DC40 8008AF10 0780013C */  lui        $at, %hi(D_80070328 + 0x4C)
/* 770DC44 8008AF14 740320AC */  sw         $zero, %lo(D_80070328 + 0x4C)($at)
/* 770DC48 8008AF18 0780013C */  lui        $at, %hi(D_80070328 + 0x1B4)
/* 770DC4C 8008AF1C DC0420A0 */  sb         $zero, %lo(D_80070328 + 0x1B4)($at)
/* 770DC50 8008AF20 0780013C */  lui        $at, %hi(D_80070328 + 0x1B5)
/* 770DC54 8008AF24 DD0420A0 */  sb         $zero, %lo(D_80070328 + 0x1B5)($at)
/* 770DC58 8008AF28 5A3C010C */  jal        func_8004F168
/* 770DC5C 8008AF2C 30002426 */   addiu     $a0, $s1, 0x30
/* 770DC60 8008AF30 5A3C010C */  jal        func_8004F168
/* 770DC64 8008AF34 3C002426 */   addiu     $a0, $s1, 0x3C
/* 770DC68 8008AF38 DD2B0208 */  j          .Llevel_35_8008AF74
/* 770DC6C 8008AF3C 00000000 */   nop
.Llevel_35_8008AF40:
/* 770DC70 8008AF40 0C000216 */  bne        $s0, $v0, .Llevel_35_8008AF74
/* 770DC74 8008AF44 3C002426 */   addiu     $a0, $s1, 0x3C
/* 770DC78 8008AF48 48003026 */  addiu      $s0, $s1, 0x48
/* 770DC7C 8008AF4C 5E3C010C */  jal        func_8004F178
/* 770DC80 8008AF50 21280002 */   addu      $a1, $s0, $zero
/* 770DC84 8008AF54 21200002 */  addu       $a0, $s0, $zero
/* 770DC88 8008AF58 7A3B010C */  jal        func_8004EDE8
/* 770DC8C 8008AF5C 21280000 */   addu      $a1, $zero, $zero
/* 770DC90 8008AF60 0780013C */  lui        $at, %hi(D_80070328 + 0xB0)
/* 770DC94 8008AF64 D80322AC */  sw         $v0, %lo(D_80070328 + 0xB0)($at)
/* 770DC98 8008AF68 180C0224 */  addiu      $v0, $zero, 0xC18
/* 770DC9C 8008AF6C 0780013C */  lui        $at, %hi(D_80070328 + 0x94)
/* 770DCA0 8008AF70 BC0322AC */  sw         $v0, %lo(D_80070328 + 0x94)($at)
.Llevel_35_8008AF74:
/* 770DCA4 8008AF74 2800BF8F */  lw         $ra, 0x28($sp)
/* 770DCA8 8008AF78 2400B18F */  lw         $s1, 0x24($sp)
/* 770DCAC 8008AF7C 2000B08F */  lw         $s0, 0x20($sp)
/* 770DCB0 8008AF80 3000BD27 */  addiu      $sp, $sp, 0x30
/* 770DCB4 8008AF84 0800E003 */  jr         $ra
/* 770DCB8 8008AF88 00000000 */   nop
.size func_level_35_8008A9C4, . - func_level_35_8008A9C4
