.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_8007A400
/* 6DE1930 8007A400 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 6DE1934 8007A404 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 6DE1938 8007A408 21988000 */  addu       $s3, $a0, $zero
/* 6DE193C 8007A40C 3000BFAF */  sw         $ra, 0x30($sp)
/* 6DE1940 8007A410 2800B2AF */  sw         $s2, 0x28($sp)
/* 6DE1944 8007A414 2400B1AF */  sw         $s1, 0x24($sp)
/* 6DE1948 8007A418 2000B0AF */  sw         $s0, 0x20($sp)
/* 6DE194C 8007A41C 0000728E */  lw         $s2, 0x0($s3)
/* 6DE1950 8007A420 00000000 */  nop
/* 6DE1954 8007A424 0000428E */  lw         $v0, 0x0($s2)
/* 6DE1958 8007A428 00000000 */  nop
/* 6DE195C 8007A42C 13004014 */  bnez       $v0, .Llevel_32_8007A47C
/* 6DE1960 8007A430 D3000424 */   addiu     $a0, $zero, 0xD3
/* 6DE1964 8007A434 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6DE1968 8007A438 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6DE196C 8007A43C 00000000 */  nop
/* 6DE1970 8007A440 09F84000 */  jalr       $v0
/* 6DE1974 8007A444 21286002 */   addu      $a1, $s3, $zero
/* 6DE1978 8007A448 21184000 */  addu       $v1, $v0, $zero
/* 6DE197C 8007A44C 0B006010 */  beqz       $v1, .Llevel_32_8007A47C
/* 6DE1980 8007A450 000043AE */   sw        $v1, 0x0($s2)
/* 6DE1984 8007A454 1400628E */  lw         $v0, 0x14($s3)
/* 6DE1988 8007A458 00000000 */  nop
/* 6DE198C 8007A45C E0004224 */  addiu      $v0, $v0, 0xE0
/* 6DE1990 8007A460 140062AC */  sw         $v0, 0x14($v1)
/* 6DE1994 8007A464 0000438E */  lw         $v1, 0x0($s2)
/* 6DE1998 8007A468 02000224 */  addiu      $v0, $zero, 0x2
/* 6DE199C 8007A46C 480062A0 */  sb         $v0, 0x48($v1)
/* 6DE19A0 8007A470 0000428E */  lw         $v0, 0x0($s2)
/* 6DE19A4 8007A474 00000000 */  nop
/* 6DE19A8 8007A478 1C0040AC */  sw         $zero, 0x1C($v0)
.Llevel_32_8007A47C:
/* 6DE19AC 8007A47C 4D006292 */  lbu        $v0, 0x4D($s3)
/* 6DE19B0 8007A480 00000000 */  nop
/* 6DE19B4 8007A484 33004010 */  beqz       $v0, .Llevel_32_8007A554
/* 6DE19B8 8007A488 00000000 */   nop
/* 6DE19BC 8007A48C 0400438E */  lw         $v1, 0x4($s2)
/* 6DE19C0 8007A490 00000000 */  nop
/* 6DE19C4 8007A494 90016228 */  slti       $v0, $v1, 0x190
/* 6DE19C8 8007A498 07004010 */  beqz       $v0, .Llevel_32_8007A4B8
/* 6DE19CC 8007A49C 00000000 */   nop
/* 6DE19D0 8007A4A0 0780023C */  lui        $v0, %hi(D_8006C648)
/* 6DE19D4 8007A4A4 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 6DE19D8 8007A4A8 00000000 */  nop
/* 6DE19DC 8007A4AC 21106200 */  addu       $v0, $v1, $v0
/* 6DE19E0 8007A4B0 55E90108 */  j          .Llevel_32_8007A554
/* 6DE19E4 8007A4B4 040042AE */   sw        $v0, 0x4($s2)
.Llevel_32_8007A4B8:
/* 6DE19E8 8007A4B8 10BC000C */  jal        func_8002F040
/* 6DE19EC 8007A4BC 05000424 */   addiu     $a0, $zero, 0x5
/* 6DE19F0 8007A4C0 21884000 */  addu       $s1, $v0, $zero
/* 6DE19F4 8007A4C4 1C002012 */  beqz       $s1, .Llevel_32_8007A538
/* 6DE19F8 8007A4C8 00000000 */   nop
/* 6DE19FC 8007A4CC 9171010C */  jal        rand
/* 6DE1A00 8007A4D0 00000000 */   nop
/* 6DE1A04 8007A4D4 21202002 */  addu       $a0, $s1, $zero
/* 6DE1A08 8007A4D8 0C006526 */  addiu      $a1, $s3, 0xC
/* 6DE1A0C 8007A4DC 5E3C010C */  jal        func_8004F178
/* 6DE1A10 8007A4E0 21804000 */   addu      $s0, $v0, $zero
/* 6DE1A14 8007A4E4 FF001032 */  andi       $s0, $s0, 0xFF
/* 6DE1A18 8007A4E8 40801000 */  sll        $s0, $s0, 1
/* 6DE1A1C 8007A4EC 0680013C */  lui        $at, %hi(D_80065920)
/* 6DE1A20 8007A4F0 21083000 */  addu       $at, $at, $s0
/* 6DE1A24 8007A4F4 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 6DE1A28 8007A4F8 0000238E */  lw         $v1, 0x0($s1)
/* 6DE1A2C 8007A4FC 00140200 */  sll        $v0, $v0, 16
/* 6DE1A30 8007A500 03150200 */  sra        $v0, $v0, 20
/* 6DE1A34 8007A504 21186200 */  addu       $v1, $v1, $v0
/* 6DE1A38 8007A508 0800228E */  lw         $v0, 0x8($s1)
/* 6DE1A3C 8007A50C 000023AE */  sw         $v1, 0x0($s1)
/* 6DE1A40 8007A510 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DE1A44 8007A514 21083000 */  addu       $at, $at, $s0
/* 6DE1A48 8007A518 A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 6DE1A4C 8007A51C 80014224 */  addiu      $v0, $v0, 0x180
/* 6DE1A50 8007A520 001C0300 */  sll        $v1, $v1, 16
/* 6DE1A54 8007A524 080022AE */  sw         $v0, 0x8($s1)
/* 6DE1A58 8007A528 0400228E */  lw         $v0, 0x4($s1)
/* 6DE1A5C 8007A52C 031D0300 */  sra        $v1, $v1, 20
/* 6DE1A60 8007A530 21104300 */  addu       $v0, $v0, $v1
/* 6DE1A64 8007A534 040022AE */  sw         $v0, 0x4($s1)
.Llevel_32_8007A538:
/* 6DE1A68 8007A538 9171010C */  jal        rand
/* 6DE1A6C 8007A53C 00000000 */   nop
/* 6DE1A70 8007A540 0400438E */  lw         $v1, 0x4($s2)
/* 6DE1A74 8007A544 FF004230 */  andi       $v0, $v0, 0xFF
/* 6DE1A78 8007A548 80FF6324 */  addiu      $v1, $v1, -0x80
/* 6DE1A7C 8007A54C 23186200 */  subu       $v1, $v1, $v0
/* 6DE1A80 8007A550 040043AE */  sw         $v1, 0x4($s2)
.Llevel_32_8007A554:
/* 6DE1A84 8007A554 1800628E */  lw         $v0, 0x18($s3)
/* 6DE1A88 8007A558 00000000 */  nop
/* 6DE1A8C 8007A55C 7A004010 */  beqz       $v0, .Llevel_32_8007A748
/* 6DE1A90 8007A560 00000000 */   nop
/* 6DE1A94 8007A564 0000428E */  lw         $v0, 0x0($s2)
/* 6DE1A98 8007A568 00000000 */  nop
/* 6DE1A9C 8007A56C 05004010 */  beqz       $v0, .Llevel_32_8007A584
/* 6DE1AA0 8007A570 00000000 */   nop
/* 6DE1AA4 8007A574 480040A0 */  sb         $zero, 0x48($v0)
/* 6DE1AA8 8007A578 0000438E */  lw         $v1, 0x0($s2)
/* 6DE1AAC 8007A57C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 6DE1AB0 8007A580 1C0062AC */  sw         $v0, 0x1C($v1)
.Llevel_32_8007A584:
/* 6DE1AB4 8007A584 70000224 */  addiu      $v0, $zero, 0x70
/* 6DE1AB8 8007A588 490062A2 */  sb         $v0, 0x49($s3)
/* 6DE1ABC 8007A58C 21880000 */  addu       $s1, $zero, $zero
/* 6DE1AC0 8007A590 5555123C */  lui        $s2, (0x55555556 >> 16)
/* 6DE1AC4 8007A594 56555236 */  ori        $s2, $s2, (0x55555556 & 0xFFFF)
.Llevel_32_8007A598:
/* 6DE1AC8 8007A598 0780023C */  lui        $v0, %hi(D_8006C578)
/* 6DE1ACC 8007A59C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 6DE1AD0 8007A5A0 0780033C */  lui        $v1, %hi(D_8006C574)
/* 6DE1AD4 8007A5A4 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 6DE1AD8 8007A5A8 00000000 */  nop
/* 6DE1ADC 8007A5AC 23104300 */  subu       $v0, $v0, $v1
/* 6DE1AE0 8007A5B0 15004228 */  slti       $v0, $v0, 0x15
/* 6DE1AE4 8007A5B4 14004014 */  bnez       $v0, .Llevel_32_8007A608
/* 6DE1AE8 8007A5B8 38020424 */   addiu     $a0, $zero, 0x238
/* 6DE1AEC 8007A5BC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6DE1AF0 8007A5C0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6DE1AF4 8007A5C4 00000000 */  nop
/* 6DE1AF8 8007A5C8 09F84000 */  jalr       $v0
/* 6DE1AFC 8007A5CC 21286002 */   addu      $a1, $s3, $zero
/* 6DE1B00 8007A5D0 9171010C */  jal        rand
/* 6DE1B04 8007A5D4 21804000 */   addu      $s0, $v0, $zero
/* 6DE1B08 8007A5D8 18005200 */  mult       $v0, $s2
/* 6DE1B0C 8007A5DC 01003126 */  addiu      $s1, $s1, 0x1
/* 6DE1B10 8007A5E0 C3270200 */  sra        $a0, $v0, 31
/* 6DE1B14 8007A5E4 10480000 */  mfhi       $t1
/* 6DE1B18 8007A5E8 23202401 */  subu       $a0, $t1, $a0
/* 6DE1B1C 8007A5EC 40180400 */  sll        $v1, $a0, 1
/* 6DE1B20 8007A5F0 21186400 */  addu       $v1, $v1, $a0
/* 6DE1B24 8007A5F4 23104300 */  subu       $v0, $v0, $v1
/* 6DE1B28 8007A5F8 3C0002A2 */  sb         $v0, 0x3C($s0)
/* 6DE1B2C 8007A5FC 1000222A */  slti       $v0, $s1, 0x10
/* 6DE1B30 8007A600 E5FF4014 */  bnez       $v0, .Llevel_32_8007A598
/* 6DE1B34 8007A604 00000000 */   nop
.Llevel_32_8007A608:
/* 6DE1B38 8007A608 21880000 */  addu       $s1, $zero, $zero
.Llevel_32_8007A60C:
/* 6DE1B3C 8007A60C 1000A427 */  addiu      $a0, $sp, 0x10
/* 6DE1B40 8007A610 5E3C010C */  jal        func_8004F178
/* 6DE1B44 8007A614 0C006526 */   addiu     $a1, $s3, 0xC
/* 6DE1B48 8007A618 9171010C */  jal        rand
/* 6DE1B4C 8007A61C 01003126 */   addiu     $s1, $s1, 0x1
/* 6DE1B50 8007A620 1000A38F */  lw         $v1, 0x10($sp)
/* 6DE1B54 8007A624 FF014230 */  andi       $v0, $v0, 0x1FF
/* 6DE1B58 8007A628 00016324 */  addiu      $v1, $v1, 0x100
/* 6DE1B5C 8007A62C 23186200 */  subu       $v1, $v1, $v0
/* 6DE1B60 8007A630 9171010C */  jal        rand
/* 6DE1B64 8007A634 1000A3AF */   sw        $v1, 0x10($sp)
/* 6DE1B68 8007A638 1400A38F */  lw         $v1, 0x14($sp)
/* 6DE1B6C 8007A63C FF014230 */  andi       $v0, $v0, 0x1FF
/* 6DE1B70 8007A640 00016324 */  addiu      $v1, $v1, 0x100
/* 6DE1B74 8007A644 23186200 */  subu       $v1, $v1, $v0
/* 6DE1B78 8007A648 9171010C */  jal        rand
/* 6DE1B7C 8007A64C 1400A3AF */   sw        $v1, 0x14($sp)
/* 6DE1B80 8007A650 01000424 */  addiu      $a0, $zero, 0x1
/* 6DE1B84 8007A654 02000524 */  addiu      $a1, $zero, 0x2
/* 6DE1B88 8007A658 1000A627 */  addiu      $a2, $sp, 0x10
/* 6DE1B8C 8007A65C 21380000 */  addu       $a3, $zero, $zero
/* 6DE1B90 8007A660 FF014230 */  andi       $v0, $v0, 0x1FF
/* 6DE1B94 8007A664 1800A38F */  lw         $v1, 0x18($sp)
/* 6DE1B98 8007A668 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 6DE1B9C 8007A66C E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 6DE1BA0 8007A670 21186200 */  addu       $v1, $v1, $v0
/* 6DE1BA4 8007A674 09F80001 */  jalr       $t0
/* 6DE1BA8 8007A678 1800A3AF */   sw        $v1, 0x18($sp)
/* 6DE1BAC 8007A67C 04000424 */  addiu      $a0, $zero, 0x4
/* 6DE1BB0 8007A680 46000524 */  addiu      $a1, $zero, 0x46
/* 6DE1BB4 8007A684 1000A627 */  addiu      $a2, $sp, 0x10
/* 6DE1BB8 8007A688 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DE1BBC 8007A68C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DE1BC0 8007A690 00000000 */  nop
/* 6DE1BC4 8007A694 09F84000 */  jalr       $v0
/* 6DE1BC8 8007A698 18000724 */   addiu     $a3, $zero, 0x18
/* 6DE1BCC 8007A69C 0400222A */  slti       $v0, $s1, 0x4
/* 6DE1BD0 8007A6A0 DAFF4014 */  bnez       $v0, .Llevel_32_8007A60C
/* 6DE1BD4 8007A6A4 21206002 */   addu      $a0, $s3, $zero
/* 6DE1BD8 8007A6A8 21280000 */  addu       $a1, $zero, $zero
/* 6DE1BDC 8007A6AC AFEE000C */  jal        func_8003BABC
/* 6DE1BE0 8007A6B0 21300000 */   addu      $a2, $zero, $zero
/* 6DE1BE4 8007A6B4 80EE000C */  jal        func_8003BA00
/* 6DE1BE8 8007A6B8 21206002 */   addu      $a0, $s3, $zero
/* 6DE1BEC 8007A6BC 0780023C */  lui        $v0, %hi(D_8006C550)
/* 6DE1BF0 8007A6C0 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 6DE1BF4 8007A6C4 21206002 */  addu       $a0, $s3, $zero
/* 6DE1BF8 8007A6C8 23288200 */  subu       $a1, $a0, $v0
/* 6DE1BFC 8007A6CC 40110500 */  sll        $v0, $a1, 5
/* 6DE1C00 8007A6D0 23104500 */  subu       $v0, $v0, $a1
/* 6DE1C04 8007A6D4 40110200 */  sll        $v0, $v0, 5
/* 6DE1C08 8007A6D8 21104500 */  addu       $v0, $v0, $a1
/* 6DE1C0C 8007A6DC C0180200 */  sll        $v1, $v0, 3
/* 6DE1C10 8007A6E0 21104300 */  addu       $v0, $v0, $v1
/* 6DE1C14 8007A6E4 C01B0200 */  sll        $v1, $v0, 15
/* 6DE1C18 8007A6E8 23186200 */  subu       $v1, $v1, $v0
/* 6DE1C1C 8007A6EC 80180300 */  sll        $v1, $v1, 2
/* 6DE1C20 8007A6F0 21186500 */  addu       $v1, $v1, $a1
/* 6DE1C24 8007A6F4 23180300 */  negu       $v1, $v1
/* 6DE1C28 8007A6F8 C3180300 */  sra        $v1, $v1, 3
/* 6DE1C2C 8007A6FC 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 6DE1C30 8007A700 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 6DE1C34 8007A704 0780053C */  lui        $a1, %hi(D_80071AB0)
/* 6DE1C38 8007A708 B01AA524 */  addiu      $a1, $a1, %lo(D_80071AB0)
/* 6DE1C3C 8007A70C 21186200 */  addu       $v1, $v1, $v0
/* 6DE1C40 8007A710 43310300 */  sra        $a2, $v1, 5
/* 6DE1C44 8007A714 80300600 */  sll        $a2, $a2, 2
/* 6DE1C48 8007A718 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 6DE1C4C 8007A71C 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 6DE1C50 8007A720 1F006330 */  andi       $v1, $v1, 0x1F
/* 6DE1C54 8007A724 40110200 */  sll        $v0, $v0, 5
/* 6DE1C58 8007A728 21104500 */  addu       $v0, $v0, $a1
/* 6DE1C5C 8007A72C 2130C200 */  addu       $a2, $a2, $v0
/* 6DE1C60 8007A730 01000224 */  addiu      $v0, $zero, 0x1
/* 6DE1C64 8007A734 0000C58C */  lw         $a1, 0x0($a2)
/* 6DE1C68 8007A738 04106200 */  sllv       $v0, $v0, $v1
/* 6DE1C6C 8007A73C 2528A200 */  or         $a1, $a1, $v0
/* 6DE1C70 8007A740 C656010C */  jal        func_80055B18
/* 6DE1C74 8007A744 0000C5AC */   sw        $a1, 0x0($a2)
.Llevel_32_8007A748:
/* 6DE1C78 8007A748 3000BF8F */  lw         $ra, 0x30($sp)
/* 6DE1C7C 8007A74C 2C00B38F */  lw         $s3, 0x2C($sp)
/* 6DE1C80 8007A750 2800B28F */  lw         $s2, 0x28($sp)
/* 6DE1C84 8007A754 2400B18F */  lw         $s1, 0x24($sp)
/* 6DE1C88 8007A758 2000B08F */  lw         $s0, 0x20($sp)
/* 6DE1C8C 8007A75C 3800BD27 */  addiu      $sp, $sp, 0x38
/* 6DE1C90 8007A760 0800E003 */  jr         $ra
/* 6DE1C94 8007A764 00000000 */   nop
.size func_level_32_8007A400, . - func_level_32_8007A400
