.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_10_80077488
/* 3ADC1B8 80077488 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 3ADC1BC 8007748C 2400B1AF */  sw         $s1, 0x24($sp)
/* 3ADC1C0 80077490 21888000 */  addu       $s1, $a0, $zero
/* 3ADC1C4 80077494 3000BFAF */  sw         $ra, 0x30($sp)
/* 3ADC1C8 80077498 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 3ADC1CC 8007749C 2800B2AF */  sw         $s2, 0x28($sp)
/* 3ADC1D0 800774A0 2000B0AF */  sw         $s0, 0x20($sp)
/* 3ADC1D4 800774A4 0000228E */  lw         $v0, 0x0($s1)
/* 3ADC1D8 800774A8 00000000 */  nop
/* 3ADC1DC 800774AC 0000428C */  lw         $v0, 0x0($v0)
/* 3ADC1E0 800774B0 00000000 */  nop
/* 3ADC1E4 800774B4 03004010 */  beqz       $v0, .Llevel_10_800774C4
/* 3ADC1E8 800774B8 00000000 */   nop
/* 3ADC1EC 800774BC 05DC000C */  jal        func_80037014
/* 3ADC1F0 800774C0 00000000 */   nop
.Llevel_10_800774C4:
/* 3ADC1F4 800774C4 0680023C */  lui        $v0, %hi(D_8006581C)
/* 3ADC1F8 800774C8 1C58428C */  lw         $v0, %lo(D_8006581C)($v0)
/* 3ADC1FC 800774CC 00000000 */  nop
/* 3ADC200 800774D0 42004018 */  blez       $v0, .Llevel_10_800775DC
/* 3ADC204 800774D4 0C003026 */   addiu     $s0, $s1, 0xC
/* 3ADC208 800774D8 0780053C */  lui        $a1, %hi(D_80070328)
/* 3ADC20C 800774DC 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 3ADC210 800774E0 CD3C010C */  jal        func_8004F334
/* 3ADC214 800774E4 21200002 */   addu      $a0, $s0, $zero
/* 3ADC218 800774E8 0680033C */  lui        $v1, %hi(D_80065810)
/* 3ADC21C 800774EC 1058638C */  lw         $v1, %lo(D_80065810)($v1)
/* 3ADC220 800774F0 00000000 */  nop
/* 3ADC224 800774F4 2A104300 */  slt        $v0, $v0, $v1
/* 3ADC228 800774F8 38004010 */  beqz       $v0, .Llevel_10_800775DC
/* 3ADC22C 800774FC 00000000 */   nop
/* 3ADC230 80077500 1400228E */  lw         $v0, 0x14($s1)
/* 3ADC234 80077504 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 3ADC238 80077508 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 3ADC23C 8007750C 64014224 */  addiu      $v0, $v0, 0x164
/* 3ADC240 80077510 23186200 */  subu       $v1, $v1, $v0
/* 3ADC244 80077514 0680023C */  lui        $v0, %hi(D_80065818)
/* 3ADC248 80077518 1858428C */  lw         $v0, %lo(D_80065818)($v0)
/* 3ADC24C 8007751C 02006104 */  bgez       $v1, .Llevel_10_80077528
/* 3ADC250 80077520 00000000 */   nop
/* 3ADC254 80077524 23180300 */  negu       $v1, $v1
.Llevel_10_80077528:
/* 3ADC258 80077528 2A186200 */  slt        $v1, $v1, $v0
/* 3ADC25C 8007752C 2B006010 */  beqz       $v1, .Llevel_10_800775DC
/* 3ADC260 80077530 00000000 */   nop
/* 3ADC264 80077534 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 3ADC268 80077538 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 3ADC26C 8007753C 00000000 */  nop
/* 3ADC270 80077540 26008010 */  beqz       $a0, .Llevel_10_800775DC
/* 3ADC274 80077544 0C008424 */   addiu     $a0, $a0, 0xC
/* 3ADC278 80077548 21280002 */  addu       $a1, $s0, $zero
/* 3ADC27C 8007754C 8E4F000C */  jal        func_80013E38
/* 3ADC280 80077550 04000624 */   addiu     $a2, $zero, 0x4
/* 3ADC284 80077554 21004010 */  beqz       $v0, .Llevel_10_800775DC
/* 3ADC288 80077558 00000000 */   nop
/* 3ADC28C 8007755C 0780033C */  lui        $v1, %hi(D_8006C65C)
/* 3ADC290 80077560 5CC6638C */  lw         $v1, %lo(D_8006C65C)($v1)
/* 3ADC294 80077564 00000000 */  nop
/* 3ADC298 80077568 0000708C */  lw         $s0, 0x0($v1)
/* 3ADC29C 8007756C 00000000 */  nop
/* 3ADC2A0 80077570 1400028E */  lw         $v0, 0x14($s0)
/* 3ADC2A4 80077574 00000000 */  nop
/* 3ADC2A8 80077578 09004010 */  beqz       $v0, .Llevel_10_800775A0
/* 3ADC2AC 8007757C 00000000 */   nop
/* 3ADC2B0 80077580 16005110 */  beq        $v0, $s1, .Llevel_10_800775DC
/* 3ADC2B4 80077584 00000000 */   nop
/* 3ADC2B8 80077588 00000286 */  lh         $v0, 0x0($s0)
/* 3ADC2BC 8007758C 00000000 */  nop
/* 3ADC2C0 80077590 12004018 */  blez       $v0, .Llevel_10_800775DC
/* 3ADC2C4 80077594 00000000 */   nop
/* 3ADC2C8 80077598 77DD0108 */  j          .Llevel_10_800775DC
/* 3ADC2CC 8007759C 000000A6 */   sh        $zero, 0x0($s0)
.Llevel_10_800775A0:
/* 3ADC2D0 800775A0 09000224 */  addiu      $v0, $zero, 0x9
/* 3ADC2D4 800775A4 490062A0 */  sb         $v0, 0x49($v1)
/* 3ADC2D8 800775A8 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 3ADC2DC 800775AC 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 3ADC2E0 800775B0 02000592 */  lbu        $a1, 0x2($s0)
/* 3ADC2E4 800775B4 140011AE */  sw         $s1, 0x14($s0)
/* 3ADC2E8 800775B8 F0EF000C */  jal        func_8003BFC0
/* 3ADC2EC 800775BC 000000A6 */   sh        $zero, 0x0($s0)
/* 3ADC2F0 800775C0 06004014 */  bnez       $v0, .Llevel_10_800775DC
/* 3ADC2F4 800775C4 21280000 */   addu      $a1, $zero, $zero
/* 3ADC2F8 800775C8 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 3ADC2FC 800775CC 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 3ADC300 800775D0 AFEE000C */  jal        func_8003BABC
/* 3ADC304 800775D4 21300000 */   addu      $a2, $zero, $zero
/* 3ADC308 800775D8 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_10_800775DC:
/* 3ADC30C 800775DC 1800228E */  lw         $v0, 0x18($s1)
/* 3ADC310 800775E0 00000000 */  nop
/* 3ADC314 800775E4 50004010 */  beqz       $v0, .Llevel_10_80077728
/* 3ADC318 800775E8 21202002 */   addu      $a0, $s1, $zero
/* 3ADC31C 800775EC 21280000 */  addu       $a1, $zero, $zero
/* 3ADC320 800775F0 AFEE000C */  jal        func_8003BABC
/* 3ADC324 800775F4 21300000 */   addu      $a2, $zero, $zero
/* 3ADC328 800775F8 70000224 */  addiu      $v0, $zero, 0x70
/* 3ADC32C 800775FC 490022A2 */  sb         $v0, 0x49($s1)
/* 3ADC330 80077600 21800000 */  addu       $s0, $zero, $zero
/* 3ADC334 80077604 03001324 */  addiu      $s3, $zero, 0x3
/* 3ADC338 80077608 01001224 */  addiu      $s2, $zero, 0x1
.Llevel_10_8007760C:
/* 3ADC33C 8007760C 0780023C */  lui        $v0, %hi(D_8006C578)
/* 3ADC340 80077610 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 3ADC344 80077614 0780033C */  lui        $v1, %hi(D_8006C574)
/* 3ADC348 80077618 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 3ADC34C 8007761C 00000000 */  nop
/* 3ADC350 80077620 23104300 */  subu       $v0, $v0, $v1
/* 3ADC354 80077624 15004228 */  slti       $v0, $v0, 0x15
/* 3ADC358 80077628 11004014 */  bnez       $v0, .Llevel_10_80077670
/* 3ADC35C 8007762C 32010424 */   addiu     $a0, $zero, 0x132
/* 3ADC360 80077630 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 3ADC364 80077634 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 3ADC368 80077638 00000000 */  nop
/* 3ADC36C 8007763C 09F84000 */  jalr       $v0
/* 3ADC370 80077640 21282002 */   addu      $a1, $s1, $zero
/* 3ADC374 80077644 21184000 */  addu       $v1, $v0, $zero
/* 3ADC378 80077648 0500022A */  slti       $v0, $s0, 0x5
/* 3ADC37C 8007764C 03004010 */  beqz       $v0, .Llevel_10_8007765C
/* 3ADC380 80077650 00000000 */   nop
/* 3ADC384 80077654 98DD0108 */  j          .Llevel_10_80077660
/* 3ADC388 80077658 490073A0 */   sb        $s3, 0x49($v1)
.Llevel_10_8007765C:
/* 3ADC38C 8007765C 3C0072A0 */  sb         $s2, 0x3C($v1)
.Llevel_10_80077660:
/* 3ADC390 80077660 01001026 */  addiu      $s0, $s0, 0x1
/* 3ADC394 80077664 0C00022A */  slti       $v0, $s0, 0xC
/* 3ADC398 80077668 E8FF4014 */  bnez       $v0, .Llevel_10_8007760C
/* 3ADC39C 8007766C 00000000 */   nop
.Llevel_10_80077670:
/* 3ADC3A0 80077670 21800000 */  addu       $s0, $zero, $zero
.Llevel_10_80077674:
/* 3ADC3A4 80077674 1000A427 */  addiu      $a0, $sp, 0x10
/* 3ADC3A8 80077678 5E3C010C */  jal        func_8004F178
/* 3ADC3AC 8007767C 0C002526 */   addiu     $a1, $s1, 0xC
/* 3ADC3B0 80077680 9171010C */  jal        rand
/* 3ADC3B4 80077684 01001026 */   addiu     $s0, $s0, 0x1
/* 3ADC3B8 80077688 1000A38F */  lw         $v1, 0x10($sp)
/* 3ADC3BC 8007768C FF014230 */  andi       $v0, $v0, 0x1FF
/* 3ADC3C0 80077690 00016324 */  addiu      $v1, $v1, 0x100
/* 3ADC3C4 80077694 23186200 */  subu       $v1, $v1, $v0
/* 3ADC3C8 80077698 9171010C */  jal        rand
/* 3ADC3CC 8007769C 1000A3AF */   sw        $v1, 0x10($sp)
/* 3ADC3D0 800776A0 1400A38F */  lw         $v1, 0x14($sp)
/* 3ADC3D4 800776A4 FF014230 */  andi       $v0, $v0, 0x1FF
/* 3ADC3D8 800776A8 00016324 */  addiu      $v1, $v1, 0x100
/* 3ADC3DC 800776AC 23186200 */  subu       $v1, $v1, $v0
/* 3ADC3E0 800776B0 9171010C */  jal        rand
/* 3ADC3E4 800776B4 1400A3AF */   sw        $v1, 0x14($sp)
/* 3ADC3E8 800776B8 01000424 */  addiu      $a0, $zero, 0x1
/* 3ADC3EC 800776BC 02000524 */  addiu      $a1, $zero, 0x2
/* 3ADC3F0 800776C0 1000A627 */  addiu      $a2, $sp, 0x10
/* 3ADC3F4 800776C4 21380000 */  addu       $a3, $zero, $zero
/* 3ADC3F8 800776C8 FF014230 */  andi       $v0, $v0, 0x1FF
/* 3ADC3FC 800776CC 1800A38F */  lw         $v1, 0x18($sp)
/* 3ADC400 800776D0 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 3ADC404 800776D4 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 3ADC408 800776D8 21186200 */  addu       $v1, $v1, $v0
/* 3ADC40C 800776DC 09F80001 */  jalr       $t0
/* 3ADC410 800776E0 1800A3AF */   sw        $v1, 0x18($sp)
/* 3ADC414 800776E4 04000424 */  addiu      $a0, $zero, 0x4
/* 3ADC418 800776E8 46000524 */  addiu      $a1, $zero, 0x46
/* 3ADC41C 800776EC 1000A627 */  addiu      $a2, $sp, 0x10
/* 3ADC420 800776F0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 3ADC424 800776F4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 3ADC428 800776F8 00000000 */  nop
/* 3ADC42C 800776FC 09F84000 */  jalr       $v0
/* 3ADC430 80077700 18000724 */   addiu     $a3, $zero, 0x18
/* 3ADC434 80077704 0400022A */  slti       $v0, $s0, 0x4
/* 3ADC438 80077708 DAFF4014 */  bnez       $v0, .Llevel_10_80077674
/* 3ADC43C 8007770C 21202002 */   addu      $a0, $s1, $zero
/* 3ADC440 80077710 21280000 */  addu       $a1, $zero, $zero
/* 3ADC444 80077714 21300000 */  addu       $a2, $zero, $zero
/* 3ADC448 80077718 9ADA000C */  jal        func_80036A68
/* 3ADC44C 8007771C 21380000 */   addu      $a3, $zero, $zero
/* 3ADC450 80077720 C656010C */  jal        func_80055B18
/* 3ADC454 80077724 21202002 */   addu      $a0, $s1, $zero
.Llevel_10_80077728:
/* 3ADC458 80077728 3000BF8F */  lw         $ra, 0x30($sp)
/* 3ADC45C 8007772C 2C00B38F */  lw         $s3, 0x2C($sp)
/* 3ADC460 80077730 2800B28F */  lw         $s2, 0x28($sp)
/* 3ADC464 80077734 2400B18F */  lw         $s1, 0x24($sp)
/* 3ADC468 80077738 2000B08F */  lw         $s0, 0x20($sp)
/* 3ADC46C 8007773C 3800BD27 */  addiu      $sp, $sp, 0x38
/* 3ADC470 80077740 0800E003 */  jr         $ra
/* 3ADC474 80077744 00000000 */   nop
.size func_level_10_80077488, . - func_level_10_80077488
