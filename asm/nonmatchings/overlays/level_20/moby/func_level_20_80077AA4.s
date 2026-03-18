.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_20_80077AA4
/* 50C77D4 80077AA4 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 50C77D8 80077AA8 2400B1AF */  sw         $s1, 0x24($sp)
/* 50C77DC 80077AAC 21888000 */  addu       $s1, $a0, $zero
/* 50C77E0 80077AB0 3000BFAF */  sw         $ra, 0x30($sp)
/* 50C77E4 80077AB4 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 50C77E8 80077AB8 2800B2AF */  sw         $s2, 0x28($sp)
/* 50C77EC 80077ABC 2000B0AF */  sw         $s0, 0x20($sp)
/* 50C77F0 80077AC0 0000228E */  lw         $v0, 0x0($s1)
/* 50C77F4 80077AC4 00000000 */  nop
/* 50C77F8 80077AC8 0000428C */  lw         $v0, 0x0($v0)
/* 50C77FC 80077ACC 00000000 */  nop
/* 50C7800 80077AD0 03004010 */  beqz       $v0, .Llevel_20_80077AE0
/* 50C7804 80077AD4 00000000 */   nop
/* 50C7808 80077AD8 05DC000C */  jal        func_80037014
/* 50C780C 80077ADC 00000000 */   nop
.Llevel_20_80077AE0:
/* 50C7810 80077AE0 0680023C */  lui        $v0, %hi(D_8006581C)
/* 50C7814 80077AE4 1C58428C */  lw         $v0, %lo(D_8006581C)($v0)
/* 50C7818 80077AE8 00000000 */  nop
/* 50C781C 80077AEC 42004018 */  blez       $v0, .Llevel_20_80077BF8
/* 50C7820 80077AF0 0C003026 */   addiu     $s0, $s1, 0xC
/* 50C7824 80077AF4 0780053C */  lui        $a1, %hi(D_80070328)
/* 50C7828 80077AF8 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 50C782C 80077AFC CD3C010C */  jal        func_8004F334
/* 50C7830 80077B00 21200002 */   addu      $a0, $s0, $zero
/* 50C7834 80077B04 0680033C */  lui        $v1, %hi(D_80065810)
/* 50C7838 80077B08 1058638C */  lw         $v1, %lo(D_80065810)($v1)
/* 50C783C 80077B0C 00000000 */  nop
/* 50C7840 80077B10 2A104300 */  slt        $v0, $v0, $v1
/* 50C7844 80077B14 38004010 */  beqz       $v0, .Llevel_20_80077BF8
/* 50C7848 80077B18 00000000 */   nop
/* 50C784C 80077B1C 1400228E */  lw         $v0, 0x14($s1)
/* 50C7850 80077B20 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 50C7854 80077B24 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 50C7858 80077B28 64014224 */  addiu      $v0, $v0, 0x164
/* 50C785C 80077B2C 23186200 */  subu       $v1, $v1, $v0
/* 50C7860 80077B30 0680023C */  lui        $v0, %hi(D_80065818)
/* 50C7864 80077B34 1858428C */  lw         $v0, %lo(D_80065818)($v0)
/* 50C7868 80077B38 02006104 */  bgez       $v1, .Llevel_20_80077B44
/* 50C786C 80077B3C 00000000 */   nop
/* 50C7870 80077B40 23180300 */  negu       $v1, $v1
.Llevel_20_80077B44:
/* 50C7874 80077B44 2A186200 */  slt        $v1, $v1, $v0
/* 50C7878 80077B48 2B006010 */  beqz       $v1, .Llevel_20_80077BF8
/* 50C787C 80077B4C 00000000 */   nop
/* 50C7880 80077B50 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 50C7884 80077B54 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 50C7888 80077B58 00000000 */  nop
/* 50C788C 80077B5C 26008010 */  beqz       $a0, .Llevel_20_80077BF8
/* 50C7890 80077B60 0C008424 */   addiu     $a0, $a0, 0xC
/* 50C7894 80077B64 21280002 */  addu       $a1, $s0, $zero
/* 50C7898 80077B68 8E4F000C */  jal        func_80013E38
/* 50C789C 80077B6C 04000624 */   addiu     $a2, $zero, 0x4
/* 50C78A0 80077B70 21004010 */  beqz       $v0, .Llevel_20_80077BF8
/* 50C78A4 80077B74 00000000 */   nop
/* 50C78A8 80077B78 0780033C */  lui        $v1, %hi(D_8006C65C)
/* 50C78AC 80077B7C 5CC6638C */  lw         $v1, %lo(D_8006C65C)($v1)
/* 50C78B0 80077B80 00000000 */  nop
/* 50C78B4 80077B84 0000708C */  lw         $s0, 0x0($v1)
/* 50C78B8 80077B88 00000000 */  nop
/* 50C78BC 80077B8C 1400028E */  lw         $v0, 0x14($s0)
/* 50C78C0 80077B90 00000000 */  nop
/* 50C78C4 80077B94 09004010 */  beqz       $v0, .Llevel_20_80077BBC
/* 50C78C8 80077B98 00000000 */   nop
/* 50C78CC 80077B9C 16005110 */  beq        $v0, $s1, .Llevel_20_80077BF8
/* 50C78D0 80077BA0 00000000 */   nop
/* 50C78D4 80077BA4 00000286 */  lh         $v0, 0x0($s0)
/* 50C78D8 80077BA8 00000000 */  nop
/* 50C78DC 80077BAC 12004018 */  blez       $v0, .Llevel_20_80077BF8
/* 50C78E0 80077BB0 00000000 */   nop
/* 50C78E4 80077BB4 FEDE0108 */  j          .Llevel_20_80077BF8
/* 50C78E8 80077BB8 000000A6 */   sh        $zero, 0x0($s0)
.Llevel_20_80077BBC:
/* 50C78EC 80077BBC 09000224 */  addiu      $v0, $zero, 0x9
/* 50C78F0 80077BC0 490062A0 */  sb         $v0, 0x49($v1)
/* 50C78F4 80077BC4 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 50C78F8 80077BC8 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 50C78FC 80077BCC 02000592 */  lbu        $a1, 0x2($s0)
/* 50C7900 80077BD0 140011AE */  sw         $s1, 0x14($s0)
/* 50C7904 80077BD4 F0EF000C */  jal        func_8003BFC0
/* 50C7908 80077BD8 000000A6 */   sh        $zero, 0x0($s0)
/* 50C790C 80077BDC 06004014 */  bnez       $v0, .Llevel_20_80077BF8
/* 50C7910 80077BE0 21280000 */   addu      $a1, $zero, $zero
/* 50C7914 80077BE4 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 50C7918 80077BE8 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 50C791C 80077BEC AFEE000C */  jal        func_8003BABC
/* 50C7920 80077BF0 21300000 */   addu      $a2, $zero, $zero
/* 50C7924 80077BF4 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_20_80077BF8:
/* 50C7928 80077BF8 1800228E */  lw         $v0, 0x18($s1)
/* 50C792C 80077BFC 00000000 */  nop
/* 50C7930 80077C00 50004010 */  beqz       $v0, .Llevel_20_80077D44
/* 50C7934 80077C04 21202002 */   addu      $a0, $s1, $zero
/* 50C7938 80077C08 21280000 */  addu       $a1, $zero, $zero
/* 50C793C 80077C0C AFEE000C */  jal        func_8003BABC
/* 50C7940 80077C10 21300000 */   addu      $a2, $zero, $zero
/* 50C7944 80077C14 70000224 */  addiu      $v0, $zero, 0x70
/* 50C7948 80077C18 490022A2 */  sb         $v0, 0x49($s1)
/* 50C794C 80077C1C 21800000 */  addu       $s0, $zero, $zero
/* 50C7950 80077C20 03001324 */  addiu      $s3, $zero, 0x3
/* 50C7954 80077C24 01001224 */  addiu      $s2, $zero, 0x1
.Llevel_20_80077C28:
/* 50C7958 80077C28 0780023C */  lui        $v0, %hi(D_8006C578)
/* 50C795C 80077C2C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 50C7960 80077C30 0780033C */  lui        $v1, %hi(D_8006C574)
/* 50C7964 80077C34 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 50C7968 80077C38 00000000 */  nop
/* 50C796C 80077C3C 23104300 */  subu       $v0, $v0, $v1
/* 50C7970 80077C40 15004228 */  slti       $v0, $v0, 0x15
/* 50C7974 80077C44 11004014 */  bnez       $v0, .Llevel_20_80077C8C
/* 50C7978 80077C48 32010424 */   addiu     $a0, $zero, 0x132
/* 50C797C 80077C4C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 50C7980 80077C50 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 50C7984 80077C54 00000000 */  nop
/* 50C7988 80077C58 09F84000 */  jalr       $v0
/* 50C798C 80077C5C 21282002 */   addu      $a1, $s1, $zero
/* 50C7990 80077C60 21184000 */  addu       $v1, $v0, $zero
/* 50C7994 80077C64 0500022A */  slti       $v0, $s0, 0x5
/* 50C7998 80077C68 03004010 */  beqz       $v0, .Llevel_20_80077C78
/* 50C799C 80077C6C 00000000 */   nop
/* 50C79A0 80077C70 1FDF0108 */  j          .Llevel_20_80077C7C
/* 50C79A4 80077C74 490073A0 */   sb        $s3, 0x49($v1)
.Llevel_20_80077C78:
/* 50C79A8 80077C78 3C0072A0 */  sb         $s2, 0x3C($v1)
.Llevel_20_80077C7C:
/* 50C79AC 80077C7C 01001026 */  addiu      $s0, $s0, 0x1
/* 50C79B0 80077C80 0C00022A */  slti       $v0, $s0, 0xC
/* 50C79B4 80077C84 E8FF4014 */  bnez       $v0, .Llevel_20_80077C28
/* 50C79B8 80077C88 00000000 */   nop
.Llevel_20_80077C8C:
/* 50C79BC 80077C8C 21800000 */  addu       $s0, $zero, $zero
.Llevel_20_80077C90:
/* 50C79C0 80077C90 1000A427 */  addiu      $a0, $sp, 0x10
/* 50C79C4 80077C94 5E3C010C */  jal        func_8004F178
/* 50C79C8 80077C98 0C002526 */   addiu     $a1, $s1, 0xC
/* 50C79CC 80077C9C 9171010C */  jal        rand
/* 50C79D0 80077CA0 01001026 */   addiu     $s0, $s0, 0x1
/* 50C79D4 80077CA4 1000A38F */  lw         $v1, 0x10($sp)
/* 50C79D8 80077CA8 FF014230 */  andi       $v0, $v0, 0x1FF
/* 50C79DC 80077CAC 00016324 */  addiu      $v1, $v1, 0x100
/* 50C79E0 80077CB0 23186200 */  subu       $v1, $v1, $v0
/* 50C79E4 80077CB4 9171010C */  jal        rand
/* 50C79E8 80077CB8 1000A3AF */   sw        $v1, 0x10($sp)
/* 50C79EC 80077CBC 1400A38F */  lw         $v1, 0x14($sp)
/* 50C79F0 80077CC0 FF014230 */  andi       $v0, $v0, 0x1FF
/* 50C79F4 80077CC4 00016324 */  addiu      $v1, $v1, 0x100
/* 50C79F8 80077CC8 23186200 */  subu       $v1, $v1, $v0
/* 50C79FC 80077CCC 9171010C */  jal        rand
/* 50C7A00 80077CD0 1400A3AF */   sw        $v1, 0x14($sp)
/* 50C7A04 80077CD4 01000424 */  addiu      $a0, $zero, 0x1
/* 50C7A08 80077CD8 02000524 */  addiu      $a1, $zero, 0x2
/* 50C7A0C 80077CDC 1000A627 */  addiu      $a2, $sp, 0x10
/* 50C7A10 80077CE0 21380000 */  addu       $a3, $zero, $zero
/* 50C7A14 80077CE4 FF014230 */  andi       $v0, $v0, 0x1FF
/* 50C7A18 80077CE8 1800A38F */  lw         $v1, 0x18($sp)
/* 50C7A1C 80077CEC 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 50C7A20 80077CF0 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 50C7A24 80077CF4 21186200 */  addu       $v1, $v1, $v0
/* 50C7A28 80077CF8 09F80001 */  jalr       $t0
/* 50C7A2C 80077CFC 1800A3AF */   sw        $v1, 0x18($sp)
/* 50C7A30 80077D00 04000424 */  addiu      $a0, $zero, 0x4
/* 50C7A34 80077D04 46000524 */  addiu      $a1, $zero, 0x46
/* 50C7A38 80077D08 1000A627 */  addiu      $a2, $sp, 0x10
/* 50C7A3C 80077D0C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 50C7A40 80077D10 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 50C7A44 80077D14 00000000 */  nop
/* 50C7A48 80077D18 09F84000 */  jalr       $v0
/* 50C7A4C 80077D1C 18000724 */   addiu     $a3, $zero, 0x18
/* 50C7A50 80077D20 0400022A */  slti       $v0, $s0, 0x4
/* 50C7A54 80077D24 DAFF4014 */  bnez       $v0, .Llevel_20_80077C90
/* 50C7A58 80077D28 21202002 */   addu      $a0, $s1, $zero
/* 50C7A5C 80077D2C 21280000 */  addu       $a1, $zero, $zero
/* 50C7A60 80077D30 21300000 */  addu       $a2, $zero, $zero
/* 50C7A64 80077D34 9ADA000C */  jal        func_80036A68
/* 50C7A68 80077D38 21380000 */   addu      $a3, $zero, $zero
/* 50C7A6C 80077D3C C656010C */  jal        func_80055B18
/* 50C7A70 80077D40 21202002 */   addu      $a0, $s1, $zero
.Llevel_20_80077D44:
/* 50C7A74 80077D44 3000BF8F */  lw         $ra, 0x30($sp)
/* 50C7A78 80077D48 2C00B38F */  lw         $s3, 0x2C($sp)
/* 50C7A7C 80077D4C 2800B28F */  lw         $s2, 0x28($sp)
/* 50C7A80 80077D50 2400B18F */  lw         $s1, 0x24($sp)
/* 50C7A84 80077D54 2000B08F */  lw         $s0, 0x20($sp)
/* 50C7A88 80077D58 3800BD27 */  addiu      $sp, $sp, 0x38
/* 50C7A8C 80077D5C 0800E003 */  jr         $ra
/* 50C7A90 80077D60 00000000 */   nop
.size func_level_20_80077AA4, . - func_level_20_80077AA4
