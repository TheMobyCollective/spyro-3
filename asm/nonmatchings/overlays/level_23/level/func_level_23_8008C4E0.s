.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_23_8008C4E0
/* 5AA8A10 8008C4E0 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 5AA8A14 8008C4E4 3400B3AF */  sw         $s3, 0x34($sp)
/* 5AA8A18 8008C4E8 21988000 */  addu       $s3, $a0, $zero
/* 5AA8A1C 8008C4EC 3800B4AF */  sw         $s4, 0x38($sp)
/* 5AA8A20 8008C4F0 21A0A000 */  addu       $s4, $a1, $zero
/* 5AA8A24 8008C4F4 4400B7AF */  sw         $s7, 0x44($sp)
/* 5AA8A28 8008C4F8 21B8C000 */  addu       $s7, $a2, $zero
/* 5AA8A2C 8008C4FC 2800B0AF */  sw         $s0, 0x28($sp)
/* 5AA8A30 8008C500 2180E000 */  addu       $s0, $a3, $zero
/* 5AA8A34 8008C504 4000B6AF */  sw         $s6, 0x40($sp)
/* 5AA8A38 8008C508 6400B68F */  lw         $s6, 0x64($sp)
/* 5AA8A3C 8008C50C 21300000 */  addu       $a2, $zero, $zero
/* 5AA8A40 8008C510 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 5AA8A44 8008C514 4800BEAF */  sw         $fp, 0x48($sp)
/* 5AA8A48 8008C518 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 5AA8A4C 8008C51C 3000B2AF */  sw         $s2, 0x30($sp)
/* 5AA8A50 8008C520 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 5AA8A54 8008C524 0C00638E */  lw         $v1, 0xC($s3)
/* 5AA8A58 8008C528 0000848E */  lw         $a0, 0x0($s4)
/* 5AA8A5C 8008C52C 1000628E */  lw         $v0, 0x10($s3)
/* 5AA8A60 8008C530 0400858E */  lw         $a1, 0x4($s4)
/* 5AA8A64 8008C534 6000B18F */  lw         $s1, 0x60($sp)
/* 5AA8A68 8008C538 7000BE8F */  lw         $fp, 0x70($sp)
/* 5AA8A6C 8008C53C 23206400 */  subu       $a0, $v1, $a0
/* 5AA8A70 8008C540 203A010C */  jal        func_8004E880
/* 5AA8A74 8008C544 23284500 */   subu      $a1, $v0, $a1
/* 5AA8A78 8008C548 21904000 */  addu       $s2, $v0, $zero
/* 5AA8A7C 8008C54C 21200002 */  addu       $a0, $s0, $zero
/* 5AA8A80 8008C550 4FD8000C */  jal        SubAngle8
/* 5AA8A84 8008C554 FF004532 */   andi      $a1, $s2, 0xFF
/* 5AA8A88 8008C558 0C006426 */  addiu      $a0, $s3, 0xC
/* 5AA8A8C 8008C55C 21288002 */  addu       $a1, $s4, $zero
/* 5AA8A90 8008C560 CD3C010C */  jal        func_8004F334
/* 5AA8A94 8008C564 21A84000 */   addu      $s5, $v0, $zero
/* 5AA8A98 8008C568 21184000 */  addu       $v1, $v0, $zero
/* 5AA8A9C 8008C56C 0200A106 */  bgez       $s5, .Llevel_23_8008C578
/* 5AA8AA0 8008C570 2110A002 */   addu      $v0, $s5, $zero
/* 5AA8AA4 8008C574 23100200 */  negu       $v0, $v0
.Llevel_23_8008C578:
/* 5AA8AA8 8008C578 2A105100 */  slt        $v0, $v0, $s1
/* 5AA8AAC 8008C57C 07004010 */  beqz       $v0, .Llevel_23_8008C59C
/* 5AA8AB0 8008C580 23107700 */   subu      $v0, $v1, $s7
/* 5AA8AB4 8008C584 03004104 */  bgez       $v0, .Llevel_23_8008C594
/* 5AA8AB8 8008C588 C8004228 */   slti      $v0, $v0, 0xC8
/* 5AA8ABC 8008C58C 2310E302 */  subu       $v0, $s7, $v1
/* 5AA8AC0 8008C590 C8004228 */  slti       $v0, $v0, 0xC8
.Llevel_23_8008C594:
/* 5AA8AC4 8008C594 89004014 */  bnez       $v0, .Llevel_23_8008C7BC
/* 5AA8AC8 8008C598 00000000 */   nop
.Llevel_23_8008C59C:
/* 5AA8ACC 8008C59C FF000224 */  addiu      $v0, $zero, 0xFF
/* 5AA8AD0 8008C5A0 1200C213 */  beq        $fp, $v0, .Llevel_23_8008C5EC
/* 5AA8AD4 8008C5A4 00000000 */   nop
/* 5AA8AD8 8008C5A8 FF005032 */  andi       $s0, $s2, 0xFF
/* 5AA8ADC 8008C5AC 21200002 */  addu       $a0, $s0, $zero
/* 5AA8AE0 8008C5B0 993C010C */  jal        func_8004F264
/* 5AA8AE4 8008C5B4 2128C003 */   addu      $a1, $fp, $zero
/* 5AA8AE8 8008C5B8 05004228 */  slti       $v0, $v0, 0x5
/* 5AA8AEC 8008C5BC 0B004010 */  beqz       $v0, .Llevel_23_8008C5EC
/* 5AA8AF0 8008C5C0 2120C003 */   addu      $a0, $fp, $zero
/* 5AA8AF4 8008C5C4 4FD8000C */  jal        SubAngle8
/* 5AA8AF8 8008C5C8 21280002 */   addu      $a1, $s0, $zero
/* 5AA8AFC 8008C5CC 0300A106 */  bgez       $s5, .Llevel_23_8008C5DC
/* 5AA8B00 8008C5D0 00000000 */   nop
/* 5AA8B04 8008C5D4 1A004004 */  bltz       $v0, .Llevel_23_8008C640
/* 5AA8B08 8008C5D8 00000000 */   nop
.Llevel_23_8008C5DC:
/* 5AA8B0C 8008C5DC 0300A01A */  blez       $s5, .Llevel_23_8008C5EC
/* 5AA8B10 8008C5E0 00000000 */   nop
/* 5AA8B14 8008C5E4 7800401C */  bgtz       $v0, .Llevel_23_8008C7C8
/* 5AA8B18 8008C5E8 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_23_8008C5EC:
/* 5AA8B1C 8008C5EC 7400A88F */  lw         $t0, 0x74($sp)
/* 5AA8B20 8008C5F0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 5AA8B24 8008C5F4 14000211 */  beq        $t0, $v0, .Llevel_23_8008C648
/* 5AA8B28 8008C5F8 FF005032 */   andi      $s0, $s2, 0xFF
/* 5AA8B2C 8008C5FC 7400A58F */  lw         $a1, 0x74($sp)
/* 5AA8B30 8008C600 993C010C */  jal        func_8004F264
/* 5AA8B34 8008C604 21200002 */   addu      $a0, $s0, $zero
/* 5AA8B38 8008C608 05004228 */  slti       $v0, $v0, 0x5
/* 5AA8B3C 8008C60C 0E004010 */  beqz       $v0, .Llevel_23_8008C648
/* 5AA8B40 8008C610 00000000 */   nop
/* 5AA8B44 8008C614 7400A48F */  lw         $a0, 0x74($sp)
/* 5AA8B48 8008C618 4FD8000C */  jal        SubAngle8
/* 5AA8B4C 8008C61C 21280002 */   addu      $a1, $s0, $zero
/* 5AA8B50 8008C620 0300A106 */  bgez       $s5, .Llevel_23_8008C630
/* 5AA8B54 8008C624 00000000 */   nop
/* 5AA8B58 8008C628 05004004 */  bltz       $v0, .Llevel_23_8008C640
/* 5AA8B5C 8008C62C 00000000 */   nop
.Llevel_23_8008C630:
/* 5AA8B60 8008C630 0500A01A */  blez       $s5, .Llevel_23_8008C648
/* 5AA8B64 8008C634 00000000 */   nop
/* 5AA8B68 8008C638 03004018 */  blez       $v0, .Llevel_23_8008C648
/* 5AA8B6C 8008C63C 00000000 */   nop
.Llevel_23_8008C640:
/* 5AA8B70 8008C640 F2310208 */  j          .Llevel_23_8008C7C8
/* 5AA8B74 8008C644 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_23_8008C648:
/* 5AA8B78 8008C648 0300A106 */  bgez       $s5, .Llevel_23_8008C658
/* 5AA8B7C 8008C64C 00000000 */   nop
/* 5AA8B80 8008C650 97310208 */  j          .Llevel_23_8008C65C
/* 5AA8B84 8008C654 03005226 */   addiu     $s2, $s2, 0x3
.Llevel_23_8008C658:
/* 5AA8B88 8008C658 FDFF5226 */  addiu      $s2, $s2, -0x3
.Llevel_23_8008C65C:
/* 5AA8B8C 8008C65C FF004332 */  andi       $v1, $s2, 0xFF
/* 5AA8B90 8008C660 40180300 */  sll        $v1, $v1, 1
/* 5AA8B94 8008C664 0680013C */  lui        $at, %hi(D_80065920)
/* 5AA8B98 8008C668 21082300 */  addu       $at, $at, $v1
/* 5AA8B9C 8008C66C 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 5AA8BA0 8008C670 00000000 */  nop
/* 5AA8BA4 8008C674 18005700 */  mult       $v0, $s7
/* 5AA8BA8 8008C678 0000878E */  lw         $a3, 0x0($s4)
/* 5AA8BAC 8008C67C 12400000 */  mflo       $t0
/* 5AA8BB0 8008C680 03130800 */  sra        $v0, $t0, 12
/* 5AA8BB4 8008C684 2138E200 */  addu       $a3, $a3, $v0
/* 5AA8BB8 8008C688 1800A7AF */  sw         $a3, 0x18($sp)
/* 5AA8BBC 8008C68C 0680013C */  lui        $at, %hi(D_800658A0)
/* 5AA8BC0 8008C690 21082300 */  addu       $at, $at, $v1
/* 5AA8BC4 8008C694 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 5AA8BC8 8008C698 00000000 */  nop
/* 5AA8BCC 8008C69C 18005700 */  mult       $v0, $s7
/* 5AA8BD0 8008C6A0 21300000 */  addu       $a2, $zero, $zero
/* 5AA8BD4 8008C6A4 0400858E */  lw         $a1, 0x4($s4)
/* 5AA8BD8 8008C6A8 12400000 */  mflo       $t0
/* 5AA8BDC 8008C6AC 03130800 */  sra        $v0, $t0, 12
/* 5AA8BE0 8008C6B0 2128A200 */  addu       $a1, $a1, $v0
/* 5AA8BE4 8008C6B4 1C00A5AF */  sw         $a1, 0x1C($sp)
/* 5AA8BE8 8008C6B8 0C00648E */  lw         $a0, 0xC($s3)
/* 5AA8BEC 8008C6BC 1000628E */  lw         $v0, 0x10($s3)
/* 5AA8BF0 8008C6C0 2320E400 */  subu       $a0, $a3, $a0
/* 5AA8BF4 8008C6C4 203A010C */  jal        func_8004E880
/* 5AA8BF8 8008C6C8 2328A200 */   subu      $a1, $a1, $v0
/* 5AA8BFC 8008C6CC 21804000 */  addu       $s0, $v0, $zero
/* 5AA8C00 8008C6D0 0780033C */  lui        $v1, %hi(D_8006C648)
/* 5AA8C04 8008C6D4 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 5AA8C08 8008C6D8 03000224 */  addiu      $v0, $zero, 0x3
/* 5AA8C0C 8008C6DC 04006214 */  bne        $v1, $v0, .Llevel_23_8008C6F0
/* 5AA8C10 8008C6E0 04000224 */   addiu     $v0, $zero, 0x4
/* 5AA8C14 8008C6E4 43101600 */  sra        $v0, $s6, 1
/* 5AA8C18 8008C6E8 BF310208 */  j          .Llevel_23_8008C6FC
/* 5AA8C1C 8008C6EC 21B0C202 */   addu      $s6, $s6, $v0
.Llevel_23_8008C6F0:
/* 5AA8C20 8008C6F0 02006214 */  bne        $v1, $v0, .Llevel_23_8008C6FC
/* 5AA8C24 8008C6F4 00000000 */   nop
/* 5AA8C28 8008C6F8 40B01600 */  sll        $s6, $s6, 1
.Llevel_23_8008C6FC:
/* 5AA8C2C 8008C6FC 8000A88F */  lw         $t0, 0x80($sp)
/* 5AA8C30 8008C700 00000000 */  nop
/* 5AA8C34 8008C704 08000231 */  andi       $v0, $t0, 0x8
/* 5AA8C38 8008C708 1A004010 */  beqz       $v0, .Llevel_23_8008C774
/* 5AA8C3C 8008C70C 21300000 */   addu      $a2, $zero, $zero
/* 5AA8C40 8008C710 0000838E */  lw         $v1, 0x0($s4)
/* 5AA8C44 8008C714 0C00648E */  lw         $a0, 0xC($s3)
/* 5AA8C48 8008C718 0400828E */  lw         $v0, 0x4($s4)
/* 5AA8C4C 8008C71C 1000658E */  lw         $a1, 0x10($s3)
/* 5AA8C50 8008C720 23206400 */  subu       $a0, $v1, $a0
/* 5AA8C54 8008C724 203A010C */  jal        func_8004E880
/* 5AA8C58 8008C728 23284500 */   subu      $a1, $v0, $a1
/* 5AA8C5C 8008C72C 21206002 */  addu       $a0, $s3, $zero
/* 5AA8C60 8008C730 21284000 */  addu       $a1, $v0, $zero
/* 5AA8C64 8008C734 6800A68F */  lw         $a2, 0x68($sp)
/* 5AA8C68 8008C738 21380000 */  addu       $a3, $zero, $zero
/* 5AA8C6C 8008C73C 1000A0AF */  sw         $zero, 0x10($sp)
/* 5AA8C70 8008C740 17D6000C */  jal        func_8003585C
/* 5AA8C74 8008C744 1400A0AF */   sw        $zero, 0x14($sp)
/* 5AA8C78 8008C748 21206002 */  addu       $a0, $s3, $zero
/* 5AA8C7C 8008C74C 7800A78F */  lw         $a3, 0x78($sp)
/* 5AA8C80 8008C750 7C00A88F */  lw         $t0, 0x7C($sp)
/* 5AA8C84 8008C754 21280002 */  addu       $a1, $s0, $zero
/* 5AA8C88 8008C758 1000A8AF */  sw         $t0, 0x10($sp)
/* 5AA8C8C 8008C75C 8000A88F */  lw         $t0, 0x80($sp)
/* 5AA8C90 8008C760 2130C002 */  addu       $a2, $s6, $zero
/* 5AA8C94 8008C764 B8D7000C */  jal        func_80035EE0
/* 5AA8C98 8008C768 1400A8AF */   sw        $t0, 0x14($sp)
/* 5AA8C9C 8008C76C ED310208 */  j          .Llevel_23_8008C7B4
/* 5AA8CA0 8008C770 00000000 */   nop
.Llevel_23_8008C774:
/* 5AA8CA4 8008C774 21206002 */  addu       $a0, $s3, $zero
/* 5AA8CA8 8008C778 21280002 */  addu       $a1, $s0, $zero
/* 5AA8CAC 8008C77C 6800A68F */  lw         $a2, 0x68($sp)
/* 5AA8CB0 8008C780 6C00A78F */  lw         $a3, 0x6C($sp)
/* 5AA8CB4 8008C784 01000224 */  addiu      $v0, $zero, 0x1
/* 5AA8CB8 8008C788 1000A2AF */  sw         $v0, 0x10($sp)
/* 5AA8CBC 8008C78C 17D6000C */  jal        func_8003585C
/* 5AA8CC0 8008C790 1400A0AF */   sw        $zero, 0x14($sp)
/* 5AA8CC4 8008C794 09004010 */  beqz       $v0, .Llevel_23_8008C7BC
/* 5AA8CC8 8008C798 21206002 */   addu      $a0, $s3, $zero
/* 5AA8CCC 8008C79C 8000A88F */  lw         $t0, 0x80($sp)
/* 5AA8CD0 8008C7A0 7800A68F */  lw         $a2, 0x78($sp)
/* 5AA8CD4 8008C7A4 7C00A78F */  lw         $a3, 0x7C($sp)
/* 5AA8CD8 8008C7A8 2128C002 */  addu       $a1, $s6, $zero
/* 5AA8CDC 8008C7AC 77D7000C */  jal        func_80035DDC
/* 5AA8CE0 8008C7B0 1000A8AF */   sw        $t0, 0x10($sp)
.Llevel_23_8008C7B4:
/* 5AA8CE4 8008C7B4 04004014 */  bnez       $v0, .Llevel_23_8008C7C8
/* 5AA8CE8 8008C7B8 23100200 */   negu      $v0, $v0
.Llevel_23_8008C7BC:
/* 5AA8CEC 8008C7BC 0200A106 */  bgez       $s5, .Llevel_23_8008C7C8
/* 5AA8CF0 8008C7C0 2110A002 */   addu      $v0, $s5, $zero
/* 5AA8CF4 8008C7C4 23100200 */  negu       $v0, $v0
.Llevel_23_8008C7C8:
/* 5AA8CF8 8008C7C8 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 5AA8CFC 8008C7CC 4800BE8F */  lw         $fp, 0x48($sp)
/* 5AA8D00 8008C7D0 4400B78F */  lw         $s7, 0x44($sp)
/* 5AA8D04 8008C7D4 4000B68F */  lw         $s6, 0x40($sp)
/* 5AA8D08 8008C7D8 3C00B58F */  lw         $s5, 0x3C($sp)
/* 5AA8D0C 8008C7DC 3800B48F */  lw         $s4, 0x38($sp)
/* 5AA8D10 8008C7E0 3400B38F */  lw         $s3, 0x34($sp)
/* 5AA8D14 8008C7E4 3000B28F */  lw         $s2, 0x30($sp)
/* 5AA8D18 8008C7E8 2C00B18F */  lw         $s1, 0x2C($sp)
/* 5AA8D1C 8008C7EC 2800B08F */  lw         $s0, 0x28($sp)
/* 5AA8D20 8008C7F0 5000BD27 */  addiu      $sp, $sp, 0x50
/* 5AA8D24 8008C7F4 0800E003 */  jr         $ra
/* 5AA8D28 8008C7F8 00000000 */   nop
.size func_level_23_8008C4E0, . - func_level_23_8008C4E0
