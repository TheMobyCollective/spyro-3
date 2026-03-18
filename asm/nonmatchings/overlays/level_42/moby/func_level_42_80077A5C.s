.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_42_80077A5C
/* 847C78C 80077A5C C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 847C790 80077A60 2400B1AF */  sw         $s1, 0x24($sp)
/* 847C794 80077A64 21888000 */  addu       $s1, $a0, $zero
/* 847C798 80077A68 3000BFAF */  sw         $ra, 0x30($sp)
/* 847C79C 80077A6C 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 847C7A0 80077A70 2800B2AF */  sw         $s2, 0x28($sp)
/* 847C7A4 80077A74 2000B0AF */  sw         $s0, 0x20($sp)
/* 847C7A8 80077A78 0000228E */  lw         $v0, 0x0($s1)
/* 847C7AC 80077A7C 00000000 */  nop
/* 847C7B0 80077A80 0000428C */  lw         $v0, 0x0($v0)
/* 847C7B4 80077A84 00000000 */  nop
/* 847C7B8 80077A88 03004010 */  beqz       $v0, .Llevel_42_80077A98
/* 847C7BC 80077A8C 00000000 */   nop
/* 847C7C0 80077A90 05DC000C */  jal        func_80037014
/* 847C7C4 80077A94 00000000 */   nop
.Llevel_42_80077A98:
/* 847C7C8 80077A98 0680023C */  lui        $v0, %hi(D_8006581C)
/* 847C7CC 80077A9C 1C58428C */  lw         $v0, %lo(D_8006581C)($v0)
/* 847C7D0 80077AA0 00000000 */  nop
/* 847C7D4 80077AA4 42004018 */  blez       $v0, .Llevel_42_80077BB0
/* 847C7D8 80077AA8 0C003026 */   addiu     $s0, $s1, 0xC
/* 847C7DC 80077AAC 0780053C */  lui        $a1, %hi(D_80070328)
/* 847C7E0 80077AB0 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 847C7E4 80077AB4 CD3C010C */  jal        func_8004F334
/* 847C7E8 80077AB8 21200002 */   addu      $a0, $s0, $zero
/* 847C7EC 80077ABC 0680033C */  lui        $v1, %hi(D_80065810)
/* 847C7F0 80077AC0 1058638C */  lw         $v1, %lo(D_80065810)($v1)
/* 847C7F4 80077AC4 00000000 */  nop
/* 847C7F8 80077AC8 2A104300 */  slt        $v0, $v0, $v1
/* 847C7FC 80077ACC 38004010 */  beqz       $v0, .Llevel_42_80077BB0
/* 847C800 80077AD0 00000000 */   nop
/* 847C804 80077AD4 1400228E */  lw         $v0, 0x14($s1)
/* 847C808 80077AD8 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 847C80C 80077ADC 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 847C810 80077AE0 64014224 */  addiu      $v0, $v0, 0x164
/* 847C814 80077AE4 23186200 */  subu       $v1, $v1, $v0
/* 847C818 80077AE8 0680023C */  lui        $v0, %hi(D_80065818)
/* 847C81C 80077AEC 1858428C */  lw         $v0, %lo(D_80065818)($v0)
/* 847C820 80077AF0 02006104 */  bgez       $v1, .Llevel_42_80077AFC
/* 847C824 80077AF4 00000000 */   nop
/* 847C828 80077AF8 23180300 */  negu       $v1, $v1
.Llevel_42_80077AFC:
/* 847C82C 80077AFC 2A186200 */  slt        $v1, $v1, $v0
/* 847C830 80077B00 2B006010 */  beqz       $v1, .Llevel_42_80077BB0
/* 847C834 80077B04 00000000 */   nop
/* 847C838 80077B08 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 847C83C 80077B0C 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 847C840 80077B10 00000000 */  nop
/* 847C844 80077B14 26008010 */  beqz       $a0, .Llevel_42_80077BB0
/* 847C848 80077B18 0C008424 */   addiu     $a0, $a0, 0xC
/* 847C84C 80077B1C 21280002 */  addu       $a1, $s0, $zero
/* 847C850 80077B20 8E4F000C */  jal        func_80013E38
/* 847C854 80077B24 04000624 */   addiu     $a2, $zero, 0x4
/* 847C858 80077B28 21004010 */  beqz       $v0, .Llevel_42_80077BB0
/* 847C85C 80077B2C 00000000 */   nop
/* 847C860 80077B30 0780033C */  lui        $v1, %hi(D_8006C65C)
/* 847C864 80077B34 5CC6638C */  lw         $v1, %lo(D_8006C65C)($v1)
/* 847C868 80077B38 00000000 */  nop
/* 847C86C 80077B3C 0000708C */  lw         $s0, 0x0($v1)
/* 847C870 80077B40 00000000 */  nop
/* 847C874 80077B44 1400028E */  lw         $v0, 0x14($s0)
/* 847C878 80077B48 00000000 */  nop
/* 847C87C 80077B4C 09004010 */  beqz       $v0, .Llevel_42_80077B74
/* 847C880 80077B50 00000000 */   nop
/* 847C884 80077B54 16005110 */  beq        $v0, $s1, .Llevel_42_80077BB0
/* 847C888 80077B58 00000000 */   nop
/* 847C88C 80077B5C 00000286 */  lh         $v0, 0x0($s0)
/* 847C890 80077B60 00000000 */  nop
/* 847C894 80077B64 12004018 */  blez       $v0, .Llevel_42_80077BB0
/* 847C898 80077B68 00000000 */   nop
/* 847C89C 80077B6C ECDE0108 */  j          .Llevel_42_80077BB0
/* 847C8A0 80077B70 000000A6 */   sh        $zero, 0x0($s0)
.Llevel_42_80077B74:
/* 847C8A4 80077B74 09000224 */  addiu      $v0, $zero, 0x9
/* 847C8A8 80077B78 490062A0 */  sb         $v0, 0x49($v1)
/* 847C8AC 80077B7C 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 847C8B0 80077B80 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 847C8B4 80077B84 02000592 */  lbu        $a1, 0x2($s0)
/* 847C8B8 80077B88 140011AE */  sw         $s1, 0x14($s0)
/* 847C8BC 80077B8C F0EF000C */  jal        func_8003BFC0
/* 847C8C0 80077B90 000000A6 */   sh        $zero, 0x0($s0)
/* 847C8C4 80077B94 06004014 */  bnez       $v0, .Llevel_42_80077BB0
/* 847C8C8 80077B98 21280000 */   addu      $a1, $zero, $zero
/* 847C8CC 80077B9C 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 847C8D0 80077BA0 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 847C8D4 80077BA4 AFEE000C */  jal        func_8003BABC
/* 847C8D8 80077BA8 21300000 */   addu      $a2, $zero, $zero
/* 847C8DC 80077BAC 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_42_80077BB0:
/* 847C8E0 80077BB0 1800228E */  lw         $v0, 0x18($s1)
/* 847C8E4 80077BB4 00000000 */  nop
/* 847C8E8 80077BB8 50004010 */  beqz       $v0, .Llevel_42_80077CFC
/* 847C8EC 80077BBC 21202002 */   addu      $a0, $s1, $zero
/* 847C8F0 80077BC0 21280000 */  addu       $a1, $zero, $zero
/* 847C8F4 80077BC4 AFEE000C */  jal        func_8003BABC
/* 847C8F8 80077BC8 21300000 */   addu      $a2, $zero, $zero
/* 847C8FC 80077BCC 70000224 */  addiu      $v0, $zero, 0x70
/* 847C900 80077BD0 490022A2 */  sb         $v0, 0x49($s1)
/* 847C904 80077BD4 21800000 */  addu       $s0, $zero, $zero
/* 847C908 80077BD8 03001324 */  addiu      $s3, $zero, 0x3
/* 847C90C 80077BDC 01001224 */  addiu      $s2, $zero, 0x1
.Llevel_42_80077BE0:
/* 847C910 80077BE0 0780023C */  lui        $v0, %hi(D_8006C578)
/* 847C914 80077BE4 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 847C918 80077BE8 0780033C */  lui        $v1, %hi(D_8006C574)
/* 847C91C 80077BEC 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 847C920 80077BF0 00000000 */  nop
/* 847C924 80077BF4 23104300 */  subu       $v0, $v0, $v1
/* 847C928 80077BF8 15004228 */  slti       $v0, $v0, 0x15
/* 847C92C 80077BFC 11004014 */  bnez       $v0, .Llevel_42_80077C44
/* 847C930 80077C00 32010424 */   addiu     $a0, $zero, 0x132
/* 847C934 80077C04 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 847C938 80077C08 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 847C93C 80077C0C 00000000 */  nop
/* 847C940 80077C10 09F84000 */  jalr       $v0
/* 847C944 80077C14 21282002 */   addu      $a1, $s1, $zero
/* 847C948 80077C18 21184000 */  addu       $v1, $v0, $zero
/* 847C94C 80077C1C 0500022A */  slti       $v0, $s0, 0x5
/* 847C950 80077C20 03004010 */  beqz       $v0, .Llevel_42_80077C30
/* 847C954 80077C24 00000000 */   nop
/* 847C958 80077C28 0DDF0108 */  j          .Llevel_42_80077C34
/* 847C95C 80077C2C 490073A0 */   sb        $s3, 0x49($v1)
.Llevel_42_80077C30:
/* 847C960 80077C30 3C0072A0 */  sb         $s2, 0x3C($v1)
.Llevel_42_80077C34:
/* 847C964 80077C34 01001026 */  addiu      $s0, $s0, 0x1
/* 847C968 80077C38 0C00022A */  slti       $v0, $s0, 0xC
/* 847C96C 80077C3C E8FF4014 */  bnez       $v0, .Llevel_42_80077BE0
/* 847C970 80077C40 00000000 */   nop
.Llevel_42_80077C44:
/* 847C974 80077C44 21800000 */  addu       $s0, $zero, $zero
.Llevel_42_80077C48:
/* 847C978 80077C48 1000A427 */  addiu      $a0, $sp, 0x10
/* 847C97C 80077C4C 5E3C010C */  jal        func_8004F178
/* 847C980 80077C50 0C002526 */   addiu     $a1, $s1, 0xC
/* 847C984 80077C54 9171010C */  jal        rand
/* 847C988 80077C58 01001026 */   addiu     $s0, $s0, 0x1
/* 847C98C 80077C5C 1000A38F */  lw         $v1, 0x10($sp)
/* 847C990 80077C60 FF014230 */  andi       $v0, $v0, 0x1FF
/* 847C994 80077C64 00016324 */  addiu      $v1, $v1, 0x100
/* 847C998 80077C68 23186200 */  subu       $v1, $v1, $v0
/* 847C99C 80077C6C 9171010C */  jal        rand
/* 847C9A0 80077C70 1000A3AF */   sw        $v1, 0x10($sp)
/* 847C9A4 80077C74 1400A38F */  lw         $v1, 0x14($sp)
/* 847C9A8 80077C78 FF014230 */  andi       $v0, $v0, 0x1FF
/* 847C9AC 80077C7C 00016324 */  addiu      $v1, $v1, 0x100
/* 847C9B0 80077C80 23186200 */  subu       $v1, $v1, $v0
/* 847C9B4 80077C84 9171010C */  jal        rand
/* 847C9B8 80077C88 1400A3AF */   sw        $v1, 0x14($sp)
/* 847C9BC 80077C8C 01000424 */  addiu      $a0, $zero, 0x1
/* 847C9C0 80077C90 02000524 */  addiu      $a1, $zero, 0x2
/* 847C9C4 80077C94 1000A627 */  addiu      $a2, $sp, 0x10
/* 847C9C8 80077C98 21380000 */  addu       $a3, $zero, $zero
/* 847C9CC 80077C9C FF014230 */  andi       $v0, $v0, 0x1FF
/* 847C9D0 80077CA0 1800A38F */  lw         $v1, 0x18($sp)
/* 847C9D4 80077CA4 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 847C9D8 80077CA8 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 847C9DC 80077CAC 21186200 */  addu       $v1, $v1, $v0
/* 847C9E0 80077CB0 09F80001 */  jalr       $t0
/* 847C9E4 80077CB4 1800A3AF */   sw        $v1, 0x18($sp)
/* 847C9E8 80077CB8 04000424 */  addiu      $a0, $zero, 0x4
/* 847C9EC 80077CBC 46000524 */  addiu      $a1, $zero, 0x46
/* 847C9F0 80077CC0 1000A627 */  addiu      $a2, $sp, 0x10
/* 847C9F4 80077CC4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 847C9F8 80077CC8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 847C9FC 80077CCC 00000000 */  nop
/* 847CA00 80077CD0 09F84000 */  jalr       $v0
/* 847CA04 80077CD4 18000724 */   addiu     $a3, $zero, 0x18
/* 847CA08 80077CD8 0400022A */  slti       $v0, $s0, 0x4
/* 847CA0C 80077CDC DAFF4014 */  bnez       $v0, .Llevel_42_80077C48
/* 847CA10 80077CE0 21202002 */   addu      $a0, $s1, $zero
/* 847CA14 80077CE4 21280000 */  addu       $a1, $zero, $zero
/* 847CA18 80077CE8 21300000 */  addu       $a2, $zero, $zero
/* 847CA1C 80077CEC 9ADA000C */  jal        func_80036A68
/* 847CA20 80077CF0 21380000 */   addu      $a3, $zero, $zero
/* 847CA24 80077CF4 C656010C */  jal        func_80055B18
/* 847CA28 80077CF8 21202002 */   addu      $a0, $s1, $zero
.Llevel_42_80077CFC:
/* 847CA2C 80077CFC 3000BF8F */  lw         $ra, 0x30($sp)
/* 847CA30 80077D00 2C00B38F */  lw         $s3, 0x2C($sp)
/* 847CA34 80077D04 2800B28F */  lw         $s2, 0x28($sp)
/* 847CA38 80077D08 2400B18F */  lw         $s1, 0x24($sp)
/* 847CA3C 80077D0C 2000B08F */  lw         $s0, 0x20($sp)
/* 847CA40 80077D10 3800BD27 */  addiu      $sp, $sp, 0x38
/* 847CA44 80077D14 0800E003 */  jr         $ra
/* 847CA48 80077D18 00000000 */   nop
.size func_level_42_80077A5C, . - func_level_42_80077A5C
