.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_609_level_15
/* 49B5A00 8007B4D0 0780023C */  lui        $v0, %hi(D_8006FA3C)
/* 49B5A04 8007B4D4 3CFA428C */  lw         $v0, %lo(D_8006FA3C)($v0)
/* 49B5A08 8007B4D8 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 49B5A0C 8007B4DC 6000B2AF */  sw         $s2, 0x60($sp)
/* 49B5A10 8007B4E0 21908000 */  addu       $s2, $a0, $zero
/* 49B5A14 8007B4E4 6800BFAF */  sw         $ra, 0x68($sp)
/* 49B5A18 8007B4E8 6400B3AF */  sw         $s3, 0x64($sp)
/* 49B5A1C 8007B4EC 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 49B5A20 8007B4F0 5800B0AF */  sw         $s0, 0x58($sp)
/* 49B5A24 8007B4F4 0000538E */  lw         $s3, 0x0($s2)
/* 49B5A28 8007B4F8 FEFF4224 */  addiu      $v0, $v0, -0x2
/* 49B5A2C 8007B4FC 0200422C */  sltiu      $v0, $v0, 0x2
/* 49B5A30 8007B500 AC004014 */  bnez       $v0, .Llevel_15_8007B7B4
/* 49B5A34 8007B504 00000000 */   nop
/* 49B5A38 8007B508 48004392 */  lbu        $v1, 0x48($s2)
/* 49B5A3C 8007B50C 02000424 */  addiu      $a0, $zero, 0x2
/* 49B5A40 8007B510 19006410 */  beq        $v1, $a0, .Llevel_15_8007B578
/* 49B5A44 8007B514 03006228 */   slti      $v0, $v1, 0x3
/* 49B5A48 8007B518 05004014 */  bnez       $v0, .Llevel_15_8007B530
/* 49B5A4C 8007B51C 03000224 */   addiu     $v0, $zero, 0x3
/* 49B5A50 8007B520 97006210 */  beq        $v1, $v0, .Llevel_15_8007B780
/* 49B5A54 8007B524 21204002 */   addu      $a0, $s2, $zero
/* 49B5A58 8007B528 EFED0108 */  j          .Llevel_15_8007B7BC
/* 49B5A5C 8007B52C 00000000 */   nop
.Llevel_15_8007B530:
/* 49B5A60 8007B530 A2006004 */  bltz       $v1, .Llevel_15_8007B7BC
/* 49B5A64 8007B534 00000000 */   nop
/* 49B5A68 8007B538 1800638E */  lw         $v1, 0x18($s3)
/* 49B5A6C 8007B53C 00000000 */  nop
/* 49B5A70 8007B540 40100300 */  sll        $v0, $v1, 1
/* 49B5A74 8007B544 21104300 */  addu       $v0, $v0, $v1
/* 49B5A78 8007B548 80100200 */  sll        $v0, $v0, 2
/* 49B5A7C 8007B54C 23104300 */  subu       $v0, $v0, $v1
/* 49B5A80 8007B550 0780033C */  lui        $v1, %hi(D_8006C550)
/* 49B5A84 8007B554 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 49B5A88 8007B558 C0100200 */  sll        $v0, $v0, 3
/* 49B5A8C 8007B55C 21104300 */  addu       $v0, $v0, $v1
/* 49B5A90 8007B560 48004290 */  lbu        $v0, 0x48($v0)
/* 49B5A94 8007B564 00000000 */  nop
/* 49B5A98 8007B568 94004410 */  beq        $v0, $a0, .Llevel_15_8007B7BC
/* 49B5A9C 8007B56C 21204002 */   addu      $a0, $s2, $zero
/* 49B5AA0 8007B570 EDED0108 */  j          .Llevel_15_8007B7B4
/* 49B5AA4 8007B574 00000000 */   nop
.Llevel_15_8007B578:
/* 49B5AA8 8007B578 1800428E */  lw         $v0, 0x18($s2)
/* 49B5AAC 8007B57C 00000000 */  nop
/* 49B5AB0 8007B580 1F004010 */  beqz       $v0, .Llevel_15_8007B600
/* 49B5AB4 8007B584 21204002 */   addu      $a0, $s2, $zero
/* 49B5AB8 8007B588 21280000 */  addu       $a1, $zero, $zero
/* 49B5ABC 8007B58C AFEE000C */  jal        func_8003BABC
/* 49B5AC0 8007B590 21300000 */   addu      $a2, $zero, $zero
/* 49B5AC4 8007B594 21204002 */  addu       $a0, $s2, $zero
/* 49B5AC8 8007B598 10000524 */  addiu      $a1, $zero, 0x10
/* 49B5ACC 8007B59C 21300000 */  addu       $a2, $zero, $zero
/* 49B5AD0 8007B5A0 9ADA000C */  jal        func_80036A68
/* 49B5AD4 8007B5A4 21380000 */   addu      $a3, $zero, $zero
/* 49B5AD8 8007B5A8 0780023C */  lui        $v0, %hi(unk_ovlheader_80074384)
/* 49B5ADC 8007B5AC 8443428C */  lw         $v0, %lo(unk_ovlheader_80074384)($v0)
/* 49B5AE0 8007B5B0 00000000 */  nop
/* 49B5AE4 8007B5B4 09F84000 */  jalr       $v0
/* 49B5AE8 8007B5B8 21204002 */   addu      $a0, $s2, $zero
/* 49B5AEC 8007B5BC 21204002 */  addu       $a0, $s2, $zero
/* 49B5AF0 8007B5C0 21286002 */  addu       $a1, $s3, $zero
/* 49B5AF4 8007B5C4 06000624 */  addiu      $a2, $zero, 0x6
/* 49B5AF8 8007B5C8 C5E3000C */  jal        func_80038F14
/* 49B5AFC 8007B5CC 03000724 */   addiu     $a3, $zero, 0x3
/* 49B5B00 8007B5D0 0780033C */  lui        $v1, %hi(D_80070328 + 0xB4)
/* 49B5B04 8007B5D4 DC03638C */  lw         $v1, %lo(D_80070328 + 0xB4)($v1)
/* 49B5B08 8007B5D8 06000224 */  addiu      $v0, $zero, 0x6
/* 49B5B0C 8007B5DC 0E0062A2 */  sb         $v0, 0xE($s3)
/* 49B5B10 8007B5E0 78000224 */  addiu      $v0, $zero, 0x78
/* 49B5B14 8007B5E4 160062A2 */  sb         $v0, 0x16($s3)
/* 49B5B18 8007B5E8 04006296 */  lhu        $v0, 0x4($s3)
/* 49B5B1C 8007B5EC 43190300 */  sra        $v1, $v1, 5
/* 49B5B20 8007B5F0 21104300 */  addu       $v0, $v0, $v1
/* 49B5B24 8007B5F4 040062A6 */  sh         $v0, 0x4($s3)
/* 49B5B28 8007B5F8 EFED0108 */  j          .Llevel_15_8007B7BC
/* 49B5B2C 8007B5FC 080040AE */   sw        $zero, 0x8($s2)
.Llevel_15_8007B600:
/* 49B5B30 8007B600 1800638E */  lw         $v1, 0x18($s3)
/* 49B5B34 8007B604 00000000 */  nop
/* 49B5B38 8007B608 40100300 */  sll        $v0, $v1, 1
/* 49B5B3C 8007B60C 21104300 */  addu       $v0, $v0, $v1
/* 49B5B40 8007B610 80100200 */  sll        $v0, $v0, 2
/* 49B5B44 8007B614 23104300 */  subu       $v0, $v0, $v1
/* 49B5B48 8007B618 0780033C */  lui        $v1, %hi(D_8006C550)
/* 49B5B4C 8007B61C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 49B5B50 8007B620 C0100200 */  sll        $v0, $v0, 3
/* 49B5B54 8007B624 21104300 */  addu       $v0, $v0, $v1
/* 49B5B58 8007B628 46004290 */  lbu        $v0, 0x46($v0)
/* 49B5B5C 8007B62C 21280000 */  addu       $a1, $zero, $zero
/* 49B5B60 8007B630 460042A2 */  sb         $v0, 0x46($s2)
/* 49B5B64 8007B634 1800628E */  lw         $v0, 0x18($s3)
/* 49B5B68 8007B638 1000A627 */  addiu      $a2, $sp, 0x10
/* 49B5B6C 8007B63C 40200200 */  sll        $a0, $v0, 1
/* 49B5B70 8007B640 21208200 */  addu       $a0, $a0, $v0
/* 49B5B74 8007B644 80200400 */  sll        $a0, $a0, 2
/* 49B5B78 8007B648 23208200 */  subu       $a0, $a0, $v0
/* 49B5B7C 8007B64C 0780023C */  lui        $v0, %hi(D_8006C550)
/* 49B5B80 8007B650 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 49B5B84 8007B654 C0200400 */  sll        $a0, $a0, 3
/* 49B5B88 8007B658 C557010C */  jal        func_80055F14
/* 49B5B8C 8007B65C 21204400 */   addu      $a0, $v0, $a0
/* 49B5B90 8007B660 01000524 */  addiu      $a1, $zero, 0x1
/* 49B5B94 8007B664 2000B027 */  addiu      $s0, $sp, 0x20
/* 49B5B98 8007B668 1800628E */  lw         $v0, 0x18($s3)
/* 49B5B9C 8007B66C 21300002 */  addu       $a2, $s0, $zero
/* 49B5BA0 8007B670 40200200 */  sll        $a0, $v0, 1
/* 49B5BA4 8007B674 21208200 */  addu       $a0, $a0, $v0
/* 49B5BA8 8007B678 80200400 */  sll        $a0, $a0, 2
/* 49B5BAC 8007B67C 23208200 */  subu       $a0, $a0, $v0
/* 49B5BB0 8007B680 0780023C */  lui        $v0, %hi(D_8006C550)
/* 49B5BB4 8007B684 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 49B5BB8 8007B688 C0200400 */  sll        $a0, $a0, 3
/* 49B5BBC 8007B68C C557010C */  jal        func_80055F14
/* 49B5BC0 8007B690 21204400 */   addu      $a0, $v0, $a0
/* 49B5BC4 8007B694 21200002 */  addu       $a0, $s0, $zero
/* 49B5BC8 8007B698 1000A527 */  addiu      $a1, $sp, 0x10
/* 49B5BCC 8007B69C 723C010C */  jal        func_8004F1C8
/* 49B5BD0 8007B6A0 21300002 */   addu      $a2, $s0, $zero
/* 49B5BD4 8007B6A4 4000B127 */  addiu      $s1, $sp, 0x40
/* 49B5BD8 8007B6A8 21202002 */  addu       $a0, $s1, $zero
/* 49B5BDC 8007B6AC 1800638E */  lw         $v1, 0x18($s3)
/* 49B5BE0 8007B6B0 0780053C */  lui        $a1, %hi(D_8006C550)
/* 49B5BE4 8007B6B4 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 49B5BE8 8007B6B8 40100300 */  sll        $v0, $v1, 1
/* 49B5BEC 8007B6BC 21104300 */  addu       $v0, $v0, $v1
/* 49B5BF0 8007B6C0 80100200 */  sll        $v0, $v0, 2
/* 49B5BF4 8007B6C4 23104300 */  subu       $v0, $v0, $v1
/* 49B5BF8 8007B6C8 C0100200 */  sll        $v0, $v0, 3
/* 49B5BFC 8007B6CC 2128A200 */  addu       $a1, $a1, $v0
/* 49B5C00 8007B6D0 3D3B010C */  jal        func_8004ECF4
/* 49B5C04 8007B6D4 2000A524 */   addiu     $a1, $a1, 0x20
/* 49B5C08 8007B6D8 21202002 */  addu       $a0, $s1, $zero
/* 49B5C0C 8007B6DC 21280002 */  addu       $a1, $s0, $zero
/* 49B5C10 8007B6E0 5B3B010C */  jal        func_8004ED6C
/* 49B5C14 8007B6E4 21300002 */   addu      $a2, $s0, $zero
/* 49B5C18 8007B6E8 21300000 */  addu       $a2, $zero, $zero
/* 49B5C1C 8007B6EC 2800A48F */  lw         $a0, 0x28($sp)
/* 49B5C20 8007B6F0 2400A58F */  lw         $a1, 0x24($sp)
/* 49B5C24 8007B6F4 203A010C */  jal        func_8004E880
/* 49B5C28 8007B6F8 23200400 */   negu      $a0, $a0
/* 49B5C2C 8007B6FC 21204002 */  addu       $a0, $s2, $zero
/* 49B5C30 8007B700 04000524 */  addiu      $a1, $zero, 0x4
/* 49B5C34 8007B704 4957010C */  jal        func_80055D24
/* 49B5C38 8007B708 440042A2 */   sb        $v0, 0x44($s2)
/* 49B5C3C 8007B70C 21204002 */  addu       $a0, $s2, $zero
/* 49B5C40 8007B710 02000524 */  addiu      $a1, $zero, 0x2
/* 49B5C44 8007B714 C557010C */  jal        func_80055F14
/* 49B5C48 8007B718 21300002 */   addu      $a2, $s0, $zero
/* 49B5C4C 8007B71C 21204002 */  addu       $a0, $s2, $zero
/* 49B5C50 8007B720 03000524 */  addiu      $a1, $zero, 0x3
/* 49B5C54 8007B724 3000B127 */  addiu      $s1, $sp, 0x30
/* 49B5C58 8007B728 C557010C */  jal        func_80055F14
/* 49B5C5C 8007B72C 21302002 */   addu      $a2, $s1, $zero
/* 49B5C60 8007B730 21200002 */  addu       $a0, $s0, $zero
/* 49B5C64 8007B734 21280002 */  addu       $a1, $s0, $zero
/* 49B5C68 8007B738 653C010C */  jal        func_8004F194
/* 49B5C6C 8007B73C 21302002 */   addu      $a2, $s1, $zero
/* 49B5C70 8007B740 21200002 */  addu       $a0, $s0, $zero
/* 49B5C74 8007B744 443C010C */  jal        func_8004F110
/* 49B5C78 8007B748 01000524 */   addiu     $a1, $zero, 0x1
/* 49B5C7C 8007B74C 21200002 */  addu       $a0, $s0, $zero
/* 49B5C80 8007B750 1000A527 */  addiu      $a1, $sp, 0x10
/* 49B5C84 8007B754 723C010C */  jal        func_8004F1C8
/* 49B5C88 8007B758 21300002 */   addu      $a2, $s0, $zero
/* 49B5C8C 8007B75C 0C004426 */  addiu      $a0, $s2, 0xC
/* 49B5C90 8007B760 21288000 */  addu       $a1, $a0, $zero
/* 49B5C94 8007B764 653C010C */  jal        func_8004F194
/* 49B5C98 8007B768 21300002 */   addu      $a2, $s0, $zero
/* 49B5C9C 8007B76C 21204002 */  addu       $a0, $s2, $zero
/* 49B5CA0 8007B770 4957010C */  jal        func_80055D24
/* 49B5CA4 8007B774 02000524 */   addiu     $a1, $zero, 0x2
/* 49B5CA8 8007B778 EFED0108 */  j          .Llevel_15_8007B7BC
/* 49B5CAC 8007B77C 00000000 */   nop
.Llevel_15_8007B780:
/* 49B5CB0 8007B780 65D4000C */  jal        func_80035194
/* 49B5CB4 8007B784 21286002 */   addu      $a1, $s3, $zero
/* 49B5CB8 8007B788 00010324 */  addiu      $v1, $zero, 0x100
/* 49B5CBC 8007B78C 0B004314 */  bne        $v0, $v1, .Llevel_15_8007B7BC
/* 49B5CC0 8007B790 21204002 */   addu      $a0, $s2, $zero
/* 49B5CC4 8007B794 4957010C */  jal        func_80055D24
/* 49B5CC8 8007B798 04000524 */   addiu     $a1, $zero, 0x4
/* 49B5CCC 8007B79C 80EE000C */  jal        func_8003BA00
/* 49B5CD0 8007B7A0 21204002 */   addu      $a0, $s2, $zero
/* 49B5CD4 8007B7A4 21204002 */  addu       $a0, $s2, $zero
/* 49B5CD8 8007B7A8 6EDA000C */  jal        func_800369B8
/* 49B5CDC 8007B7AC 30000524 */   addiu     $a1, $zero, 0x30
/* 49B5CE0 8007B7B0 21204002 */  addu       $a0, $s2, $zero
.Llevel_15_8007B7B4:
/* 49B5CE4 8007B7B4 C656010C */  jal        func_80055B18
/* 49B5CE8 8007B7B8 00000000 */   nop
.Llevel_15_8007B7BC:
/* 49B5CEC 8007B7BC 6800BF8F */  lw         $ra, 0x68($sp)
/* 49B5CF0 8007B7C0 6400B38F */  lw         $s3, 0x64($sp)
/* 49B5CF4 8007B7C4 6000B28F */  lw         $s2, 0x60($sp)
/* 49B5CF8 8007B7C8 5C00B18F */  lw         $s1, 0x5C($sp)
/* 49B5CFC 8007B7CC 5800B08F */  lw         $s0, 0x58($sp)
/* 49B5D00 8007B7D0 7000BD27 */  addiu      $sp, $sp, 0x70
/* 49B5D04 8007B7D4 0800E003 */  jr         $ra
/* 49B5D08 8007B7D8 00000000 */   nop
.size MobyUpdate_609_level_15, . - MobyUpdate_609_level_15
