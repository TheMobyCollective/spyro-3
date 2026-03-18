.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_11_800779F8
/* 3E1BF28 800779F8 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 3E1BF2C 800779FC 2400B1AF */  sw         $s1, 0x24($sp)
/* 3E1BF30 80077A00 21888000 */  addu       $s1, $a0, $zero
/* 3E1BF34 80077A04 3000BFAF */  sw         $ra, 0x30($sp)
/* 3E1BF38 80077A08 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 3E1BF3C 80077A0C 2800B2AF */  sw         $s2, 0x28($sp)
/* 3E1BF40 80077A10 2000B0AF */  sw         $s0, 0x20($sp)
/* 3E1BF44 80077A14 0000228E */  lw         $v0, 0x0($s1)
/* 3E1BF48 80077A18 00000000 */  nop
/* 3E1BF4C 80077A1C 0000428C */  lw         $v0, 0x0($v0)
/* 3E1BF50 80077A20 00000000 */  nop
/* 3E1BF54 80077A24 03004010 */  beqz       $v0, .Llevel_11_80077A34
/* 3E1BF58 80077A28 00000000 */   nop
/* 3E1BF5C 80077A2C 05DC000C */  jal        func_80037014
/* 3E1BF60 80077A30 00000000 */   nop
.Llevel_11_80077A34:
/* 3E1BF64 80077A34 0680023C */  lui        $v0, %hi(D_8006581C)
/* 3E1BF68 80077A38 1C58428C */  lw         $v0, %lo(D_8006581C)($v0)
/* 3E1BF6C 80077A3C 00000000 */  nop
/* 3E1BF70 80077A40 42004018 */  blez       $v0, .Llevel_11_80077B4C
/* 3E1BF74 80077A44 0C003026 */   addiu     $s0, $s1, 0xC
/* 3E1BF78 80077A48 0780053C */  lui        $a1, %hi(D_80070328)
/* 3E1BF7C 80077A4C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 3E1BF80 80077A50 CD3C010C */  jal        func_8004F334
/* 3E1BF84 80077A54 21200002 */   addu      $a0, $s0, $zero
/* 3E1BF88 80077A58 0680033C */  lui        $v1, %hi(D_80065810)
/* 3E1BF8C 80077A5C 1058638C */  lw         $v1, %lo(D_80065810)($v1)
/* 3E1BF90 80077A60 00000000 */  nop
/* 3E1BF94 80077A64 2A104300 */  slt        $v0, $v0, $v1
/* 3E1BF98 80077A68 38004010 */  beqz       $v0, .Llevel_11_80077B4C
/* 3E1BF9C 80077A6C 00000000 */   nop
/* 3E1BFA0 80077A70 1400228E */  lw         $v0, 0x14($s1)
/* 3E1BFA4 80077A74 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 3E1BFA8 80077A78 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 3E1BFAC 80077A7C 64014224 */  addiu      $v0, $v0, 0x164
/* 3E1BFB0 80077A80 23186200 */  subu       $v1, $v1, $v0
/* 3E1BFB4 80077A84 0680023C */  lui        $v0, %hi(D_80065818)
/* 3E1BFB8 80077A88 1858428C */  lw         $v0, %lo(D_80065818)($v0)
/* 3E1BFBC 80077A8C 02006104 */  bgez       $v1, .Llevel_11_80077A98
/* 3E1BFC0 80077A90 00000000 */   nop
/* 3E1BFC4 80077A94 23180300 */  negu       $v1, $v1
.Llevel_11_80077A98:
/* 3E1BFC8 80077A98 2A186200 */  slt        $v1, $v1, $v0
/* 3E1BFCC 80077A9C 2B006010 */  beqz       $v1, .Llevel_11_80077B4C
/* 3E1BFD0 80077AA0 00000000 */   nop
/* 3E1BFD4 80077AA4 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 3E1BFD8 80077AA8 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 3E1BFDC 80077AAC 00000000 */  nop
/* 3E1BFE0 80077AB0 26008010 */  beqz       $a0, .Llevel_11_80077B4C
/* 3E1BFE4 80077AB4 0C008424 */   addiu     $a0, $a0, 0xC
/* 3E1BFE8 80077AB8 21280002 */  addu       $a1, $s0, $zero
/* 3E1BFEC 80077ABC 8E4F000C */  jal        func_80013E38
/* 3E1BFF0 80077AC0 04000624 */   addiu     $a2, $zero, 0x4
/* 3E1BFF4 80077AC4 21004010 */  beqz       $v0, .Llevel_11_80077B4C
/* 3E1BFF8 80077AC8 00000000 */   nop
/* 3E1BFFC 80077ACC 0780033C */  lui        $v1, %hi(D_8006C65C)
/* 3E1C000 80077AD0 5CC6638C */  lw         $v1, %lo(D_8006C65C)($v1)
/* 3E1C004 80077AD4 00000000 */  nop
/* 3E1C008 80077AD8 0000708C */  lw         $s0, 0x0($v1)
/* 3E1C00C 80077ADC 00000000 */  nop
/* 3E1C010 80077AE0 1400028E */  lw         $v0, 0x14($s0)
/* 3E1C014 80077AE4 00000000 */  nop
/* 3E1C018 80077AE8 09004010 */  beqz       $v0, .Llevel_11_80077B10
/* 3E1C01C 80077AEC 00000000 */   nop
/* 3E1C020 80077AF0 16005110 */  beq        $v0, $s1, .Llevel_11_80077B4C
/* 3E1C024 80077AF4 00000000 */   nop
/* 3E1C028 80077AF8 00000286 */  lh         $v0, 0x0($s0)
/* 3E1C02C 80077AFC 00000000 */  nop
/* 3E1C030 80077B00 12004018 */  blez       $v0, .Llevel_11_80077B4C
/* 3E1C034 80077B04 00000000 */   nop
/* 3E1C038 80077B08 D3DE0108 */  j          .Llevel_11_80077B4C
/* 3E1C03C 80077B0C 000000A6 */   sh        $zero, 0x0($s0)
.Llevel_11_80077B10:
/* 3E1C040 80077B10 09000224 */  addiu      $v0, $zero, 0x9
/* 3E1C044 80077B14 490062A0 */  sb         $v0, 0x49($v1)
/* 3E1C048 80077B18 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 3E1C04C 80077B1C 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 3E1C050 80077B20 02000592 */  lbu        $a1, 0x2($s0)
/* 3E1C054 80077B24 140011AE */  sw         $s1, 0x14($s0)
/* 3E1C058 80077B28 F0EF000C */  jal        func_8003BFC0
/* 3E1C05C 80077B2C 000000A6 */   sh        $zero, 0x0($s0)
/* 3E1C060 80077B30 06004014 */  bnez       $v0, .Llevel_11_80077B4C
/* 3E1C064 80077B34 21280000 */   addu      $a1, $zero, $zero
/* 3E1C068 80077B38 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 3E1C06C 80077B3C 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 3E1C070 80077B40 AFEE000C */  jal        func_8003BABC
/* 3E1C074 80077B44 21300000 */   addu      $a2, $zero, $zero
/* 3E1C078 80077B48 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_11_80077B4C:
/* 3E1C07C 80077B4C 1800228E */  lw         $v0, 0x18($s1)
/* 3E1C080 80077B50 00000000 */  nop
/* 3E1C084 80077B54 50004010 */  beqz       $v0, .Llevel_11_80077C98
/* 3E1C088 80077B58 21202002 */   addu      $a0, $s1, $zero
/* 3E1C08C 80077B5C 21280000 */  addu       $a1, $zero, $zero
/* 3E1C090 80077B60 AFEE000C */  jal        func_8003BABC
/* 3E1C094 80077B64 21300000 */   addu      $a2, $zero, $zero
/* 3E1C098 80077B68 70000224 */  addiu      $v0, $zero, 0x70
/* 3E1C09C 80077B6C 490022A2 */  sb         $v0, 0x49($s1)
/* 3E1C0A0 80077B70 21800000 */  addu       $s0, $zero, $zero
/* 3E1C0A4 80077B74 03001324 */  addiu      $s3, $zero, 0x3
/* 3E1C0A8 80077B78 01001224 */  addiu      $s2, $zero, 0x1
.Llevel_11_80077B7C:
/* 3E1C0AC 80077B7C 0780023C */  lui        $v0, %hi(D_8006C578)
/* 3E1C0B0 80077B80 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 3E1C0B4 80077B84 0780033C */  lui        $v1, %hi(D_8006C574)
/* 3E1C0B8 80077B88 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 3E1C0BC 80077B8C 00000000 */  nop
/* 3E1C0C0 80077B90 23104300 */  subu       $v0, $v0, $v1
/* 3E1C0C4 80077B94 15004228 */  slti       $v0, $v0, 0x15
/* 3E1C0C8 80077B98 11004014 */  bnez       $v0, .Llevel_11_80077BE0
/* 3E1C0CC 80077B9C 32010424 */   addiu     $a0, $zero, 0x132
/* 3E1C0D0 80077BA0 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 3E1C0D4 80077BA4 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 3E1C0D8 80077BA8 00000000 */  nop
/* 3E1C0DC 80077BAC 09F84000 */  jalr       $v0
/* 3E1C0E0 80077BB0 21282002 */   addu      $a1, $s1, $zero
/* 3E1C0E4 80077BB4 21184000 */  addu       $v1, $v0, $zero
/* 3E1C0E8 80077BB8 0500022A */  slti       $v0, $s0, 0x5
/* 3E1C0EC 80077BBC 03004010 */  beqz       $v0, .Llevel_11_80077BCC
/* 3E1C0F0 80077BC0 00000000 */   nop
/* 3E1C0F4 80077BC4 F4DE0108 */  j          .Llevel_11_80077BD0
/* 3E1C0F8 80077BC8 490073A0 */   sb        $s3, 0x49($v1)
.Llevel_11_80077BCC:
/* 3E1C0FC 80077BCC 3C0072A0 */  sb         $s2, 0x3C($v1)
.Llevel_11_80077BD0:
/* 3E1C100 80077BD0 01001026 */  addiu      $s0, $s0, 0x1
/* 3E1C104 80077BD4 0C00022A */  slti       $v0, $s0, 0xC
/* 3E1C108 80077BD8 E8FF4014 */  bnez       $v0, .Llevel_11_80077B7C
/* 3E1C10C 80077BDC 00000000 */   nop
.Llevel_11_80077BE0:
/* 3E1C110 80077BE0 21800000 */  addu       $s0, $zero, $zero
.Llevel_11_80077BE4:
/* 3E1C114 80077BE4 1000A427 */  addiu      $a0, $sp, 0x10
/* 3E1C118 80077BE8 5E3C010C */  jal        func_8004F178
/* 3E1C11C 80077BEC 0C002526 */   addiu     $a1, $s1, 0xC
/* 3E1C120 80077BF0 9171010C */  jal        rand
/* 3E1C124 80077BF4 01001026 */   addiu     $s0, $s0, 0x1
/* 3E1C128 80077BF8 1000A38F */  lw         $v1, 0x10($sp)
/* 3E1C12C 80077BFC FF014230 */  andi       $v0, $v0, 0x1FF
/* 3E1C130 80077C00 00016324 */  addiu      $v1, $v1, 0x100
/* 3E1C134 80077C04 23186200 */  subu       $v1, $v1, $v0
/* 3E1C138 80077C08 9171010C */  jal        rand
/* 3E1C13C 80077C0C 1000A3AF */   sw        $v1, 0x10($sp)
/* 3E1C140 80077C10 1400A38F */  lw         $v1, 0x14($sp)
/* 3E1C144 80077C14 FF014230 */  andi       $v0, $v0, 0x1FF
/* 3E1C148 80077C18 00016324 */  addiu      $v1, $v1, 0x100
/* 3E1C14C 80077C1C 23186200 */  subu       $v1, $v1, $v0
/* 3E1C150 80077C20 9171010C */  jal        rand
/* 3E1C154 80077C24 1400A3AF */   sw        $v1, 0x14($sp)
/* 3E1C158 80077C28 01000424 */  addiu      $a0, $zero, 0x1
/* 3E1C15C 80077C2C 02000524 */  addiu      $a1, $zero, 0x2
/* 3E1C160 80077C30 1000A627 */  addiu      $a2, $sp, 0x10
/* 3E1C164 80077C34 21380000 */  addu       $a3, $zero, $zero
/* 3E1C168 80077C38 FF014230 */  andi       $v0, $v0, 0x1FF
/* 3E1C16C 80077C3C 1800A38F */  lw         $v1, 0x18($sp)
/* 3E1C170 80077C40 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 3E1C174 80077C44 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 3E1C178 80077C48 21186200 */  addu       $v1, $v1, $v0
/* 3E1C17C 80077C4C 09F80001 */  jalr       $t0
/* 3E1C180 80077C50 1800A3AF */   sw        $v1, 0x18($sp)
/* 3E1C184 80077C54 04000424 */  addiu      $a0, $zero, 0x4
/* 3E1C188 80077C58 46000524 */  addiu      $a1, $zero, 0x46
/* 3E1C18C 80077C5C 1000A627 */  addiu      $a2, $sp, 0x10
/* 3E1C190 80077C60 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 3E1C194 80077C64 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 3E1C198 80077C68 00000000 */  nop
/* 3E1C19C 80077C6C 09F84000 */  jalr       $v0
/* 3E1C1A0 80077C70 18000724 */   addiu     $a3, $zero, 0x18
/* 3E1C1A4 80077C74 0400022A */  slti       $v0, $s0, 0x4
/* 3E1C1A8 80077C78 DAFF4014 */  bnez       $v0, .Llevel_11_80077BE4
/* 3E1C1AC 80077C7C 21202002 */   addu      $a0, $s1, $zero
/* 3E1C1B0 80077C80 21280000 */  addu       $a1, $zero, $zero
/* 3E1C1B4 80077C84 21300000 */  addu       $a2, $zero, $zero
/* 3E1C1B8 80077C88 9ADA000C */  jal        func_80036A68
/* 3E1C1BC 80077C8C 21380000 */   addu      $a3, $zero, $zero
/* 3E1C1C0 80077C90 C656010C */  jal        func_80055B18
/* 3E1C1C4 80077C94 21202002 */   addu      $a0, $s1, $zero
.Llevel_11_80077C98:
/* 3E1C1C8 80077C98 3000BF8F */  lw         $ra, 0x30($sp)
/* 3E1C1CC 80077C9C 2C00B38F */  lw         $s3, 0x2C($sp)
/* 3E1C1D0 80077CA0 2800B28F */  lw         $s2, 0x28($sp)
/* 3E1C1D4 80077CA4 2400B18F */  lw         $s1, 0x24($sp)
/* 3E1C1D8 80077CA8 2000B08F */  lw         $s0, 0x20($sp)
/* 3E1C1DC 80077CAC 3800BD27 */  addiu      $sp, $sp, 0x38
/* 3E1C1E0 80077CB0 0800E003 */  jr         $ra
/* 3E1C1E4 80077CB4 00000000 */   nop
.size func_level_11_800779F8, . - func_level_11_800779F8
