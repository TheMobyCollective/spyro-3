.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_46_8008A08C
/* 8F5C5BC 8008A08C B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 8F5C5C0 8008A090 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 8F5C5C4 8008A094 21A88000 */  addu       $s5, $a0, $zero
/* 8F5C5C8 8008A098 2130A000 */  addu       $a2, $a1, $zero
/* 8F5C5CC 8008A09C 3000B2AF */  sw         $s2, 0x30($sp)
/* 8F5C5D0 8008A0A0 21900000 */  addu       $s2, $zero, $zero
/* 8F5C5D4 8008A0A4 3800B4AF */  sw         $s4, 0x38($sp)
/* 8F5C5D8 8008A0A8 21A00000 */  addu       $s4, $zero, $zero
/* 8F5C5DC 8008A0AC 3400B3AF */  sw         $s3, 0x34($sp)
/* 8F5C5E0 8008A0B0 21980000 */  addu       $s3, $zero, $zero
/* 8F5C5E4 8008A0B4 4000BFAF */  sw         $ra, 0x40($sp)
/* 8F5C5E8 8008A0B8 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 8F5C5EC 8008A0BC 2800B0AF */  sw         $s0, 0x28($sp)
/* 8F5C5F0 8008A0C0 0780053C */  lui        $a1, %hi(D_level_46_80074A08)
/* 8F5C5F4 8008A0C4 084AA524 */  addiu      $a1, $a1, %lo(D_level_46_80074A08)
/* 8F5C5F8 8008A0C8 0300A288 */  lwl        $v0, 0x3($a1)
/* 8F5C5FC 8008A0CC 0000A298 */  lwr        $v0, 0x0($a1)
/* 8F5C600 8008A0D0 0400A380 */  lb         $v1, 0x4($a1)
/* 8F5C604 8008A0D4 0500A480 */  lb         $a0, 0x5($a1)
/* 8F5C608 8008A0D8 1B00A2AB */  swl        $v0, 0x1B($sp)
/* 8F5C60C 8008A0DC 1800A2BB */  swr        $v0, 0x18($sp)
/* 8F5C610 8008A0E0 1C00A3A3 */  sb         $v1, 0x1C($sp)
/* 8F5C614 8008A0E4 1D00A4A3 */  sb         $a0, 0x1D($sp)
/* 8F5C618 8008A0E8 0600A280 */  lb         $v0, 0x6($a1)
/* 8F5C61C 8008A0EC 00000000 */  nop
/* 8F5C620 8008A0F0 1E00A2A3 */  sb         $v0, 0x1E($sp)
/* 8F5C624 8008A0F4 3600A386 */  lh         $v1, 0x36($s5)
/* 8F5C628 8008A0F8 5C000224 */  addiu      $v0, $zero, 0x5C
/* 8F5C62C 8008A0FC 18006214 */  bne        $v1, $v0, .Llevel_46_8008A160
/* 8F5C630 8008A100 1800B027 */   addiu     $s0, $sp, 0x18
/* 8F5C634 8008A104 0000A38E */  lw         $v1, 0x0($s5)
/* 8F5C638 8008A108 00000000 */  nop
/* 8F5C63C 8008A10C 0C00628C */  lw         $v0, 0xC($v1)
/* 8F5C640 8008A110 00000000 */  nop
/* 8F5C644 8008A114 1000A2AF */  sw         $v0, 0x10($sp)
/* 8F5C648 8008A118 4800A392 */  lbu        $v1, 0x48($s5)
/* 8F5C64C 8008A11C 02000224 */  addiu      $v0, $zero, 0x2
/* 8F5C650 8008A120 05006214 */  bne        $v1, $v0, .Llevel_46_8008A138
/* 8F5C654 8008A124 04000224 */   addiu     $v0, $zero, 0x4
/* 8F5C658 8008A128 21908002 */  addu       $s2, $s4, $zero
/* 8F5C65C 8008A12C 04001424 */  addiu      $s4, $zero, 0x4
/* 8F5C660 8008A130 94280208 */  j          .Llevel_46_8008A250
/* 8F5C664 8008A134 10001324 */   addiu     $s3, $zero, 0x10
.Llevel_46_8008A138:
/* 8F5C668 8008A138 46006214 */  bne        $v1, $v0, .Llevel_46_8008A254
/* 8F5C66C 8008A13C 3F000224 */   addiu     $v0, $zero, 0x3F
/* 8F5C670 8008A140 05001224 */  addiu      $s2, $zero, 0x5
/* 8F5C674 8008A144 01001424 */  addiu      $s4, $zero, 0x1
/* 8F5C678 8008A148 20001324 */  addiu      $s3, $zero, 0x20
/* 8F5C67C 8008A14C FF000224 */  addiu      $v0, $zero, 0xFF
/* 8F5C680 8008A150 1000A2A3 */  sb         $v0, 0x10($sp)
/* 8F5C684 8008A154 1100A2A3 */  sb         $v0, 0x11($sp)
/* 8F5C688 8008A158 94280208 */  j          .Llevel_46_8008A250
/* 8F5C68C 8008A15C 1200A2A3 */   sb        $v0, 0x12($sp)
.Llevel_46_8008A160:
/* 8F5C690 8008A160 0500C104 */  bgez       $a2, .Llevel_46_8008A178
/* 8F5C694 8008A164 21100602 */   addu      $v0, $s0, $a2
/* 8F5C698 8008A168 21200000 */  addu       $a0, $zero, $zero
/* 8F5C69C 8008A16C DBD8000C */  jal        func_8003636C
/* 8F5C6A0 8008A170 06000524 */   addiu     $a1, $zero, 0x6
/* 8F5C6A4 8008A174 21100202 */  addu       $v0, $s0, $v0
.Llevel_46_8008A178:
/* 8F5C6A8 8008A178 00005290 */  lbu        $s2, 0x0($v0)
/* 8F5C6AC 8008A17C 03001024 */  addiu      $s0, $zero, 0x3
/* 8F5C6B0 8008A180 1A005012 */  beq        $s2, $s0, .Llevel_46_8008A1EC
/* 8F5C6B4 8008A184 04000224 */   addiu     $v0, $zero, 0x4
/* 8F5C6B8 8008A188 05004216 */  bne        $s2, $v0, .Llevel_46_8008A1A0
/* 8F5C6BC 8008A18C FF000224 */   addiu     $v0, $zero, 0xFF
/* 8F5C6C0 8008A190 1000A2A3 */  sb         $v0, 0x10($sp)
/* 8F5C6C4 8008A194 1100A2A3 */  sb         $v0, 0x11($sp)
/* 8F5C6C8 8008A198 8A280208 */  j          .Llevel_46_8008A228
/* 8F5C6CC 8008A19C 40000224 */   addiu     $v0, $zero, 0x40
.Llevel_46_8008A1A0:
/* 8F5C6D0 8008A1A0 9171010C */  jal        rand
/* 8F5C6D4 8008A1A4 00000000 */   nop
/* 8F5C6D8 8008A1A8 03004330 */  andi       $v1, $v0, 0x3
/* 8F5C6DC 8008A1AC 01000224 */  addiu      $v0, $zero, 0x1
/* 8F5C6E0 8008A1B0 13006210 */  beq        $v1, $v0, .Llevel_46_8008A200
/* 8F5C6E4 8008A1B4 02006228 */   slti      $v0, $v1, 0x2
/* 8F5C6E8 8008A1B8 05004010 */  beqz       $v0, .Llevel_46_8008A1D0
/* 8F5C6EC 8008A1BC 00000000 */   nop
/* 8F5C6F0 8008A1C0 0B006010 */  beqz       $v1, .Llevel_46_8008A1F0
/* 8F5C6F4 8008A1C4 FF000224 */   addiu     $v0, $zero, 0xFF
/* 8F5C6F8 8008A1C8 8C280208 */  j          .Llevel_46_8008A230
/* 8F5C6FC 8008A1CC 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_46_8008A1D0:
/* 8F5C700 8008A1D0 02000224 */  addiu      $v0, $zero, 0x2
/* 8F5C704 8008A1D4 0D006210 */  beq        $v1, $v0, .Llevel_46_8008A20C
/* 8F5C708 8008A1D8 00000000 */   nop
/* 8F5C70C 8008A1DC 10007010 */  beq        $v1, $s0, .Llevel_46_8008A220
/* 8F5C710 8008A1E0 FF000224 */   addiu     $v0, $zero, 0xFF
/* 8F5C714 8008A1E4 8C280208 */  j          .Llevel_46_8008A230
/* 8F5C718 8008A1E8 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_46_8008A1EC:
/* 8F5C71C 8008A1EC FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_46_8008A1F0:
/* 8F5C720 8008A1F0 1000A2A3 */  sb         $v0, 0x10($sp)
/* 8F5C724 8008A1F4 1100A0A3 */  sb         $zero, 0x11($sp)
/* 8F5C728 8008A1F8 8B280208 */  j          .Llevel_46_8008A22C
/* 8F5C72C 8008A1FC 1200A0A3 */   sb        $zero, 0x12($sp)
.Llevel_46_8008A200:
/* 8F5C730 8008A200 FF000224 */  addiu      $v0, $zero, 0xFF
/* 8F5C734 8008A204 85280208 */  j          .Llevel_46_8008A214
/* 8F5C738 8008A208 1000A2A3 */   sb        $v0, 0x10($sp)
.Llevel_46_8008A20C:
/* 8F5C73C 8008A20C FF000224 */  addiu      $v0, $zero, 0xFF
/* 8F5C740 8008A210 1000A0A3 */  sb         $zero, 0x10($sp)
.Llevel_46_8008A214:
/* 8F5C744 8008A214 1100A2A3 */  sb         $v0, 0x11($sp)
/* 8F5C748 8008A218 8B280208 */  j          .Llevel_46_8008A22C
/* 8F5C74C 8008A21C 1200A0A3 */   sb        $zero, 0x12($sp)
.Llevel_46_8008A220:
/* 8F5C750 8008A220 1000A2A3 */  sb         $v0, 0x10($sp)
/* 8F5C754 8008A224 1100A0A3 */  sb         $zero, 0x11($sp)
.Llevel_46_8008A228:
/* 8F5C758 8008A228 1200A2A3 */  sb         $v0, 0x12($sp)
.Llevel_46_8008A22C:
/* 8F5C75C 8008A22C 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_46_8008A230:
/* 8F5C760 8008A230 03004216 */  bne        $s2, $v0, .Llevel_46_8008A240
/* 8F5C764 8008A234 10001424 */   addiu     $s4, $zero, 0x10
/* 8F5C768 8008A238 94280208 */  j          .Llevel_46_8008A250
/* 8F5C76C 8008A23C 30001324 */   addiu     $s3, $zero, 0x30
.Llevel_46_8008A240:
/* 8F5C770 8008A240 03000224 */  addiu      $v0, $zero, 0x3
/* 8F5C774 8008A244 02004216 */  bne        $s2, $v0, .Llevel_46_8008A250
/* 8F5C778 8008A248 40001324 */   addiu     $s3, $zero, 0x40
/* 8F5C77C 8008A24C 58001324 */  addiu      $s3, $zero, 0x58
.Llevel_46_8008A250:
/* 8F5C780 8008A250 3F000224 */  addiu      $v0, $zero, 0x3F
.Llevel_46_8008A254:
/* 8F5C784 8008A254 1300A2A3 */  sb         $v0, 0x13($sp)
/* 8F5C788 8008A258 2A008012 */  beqz       $s4, .Llevel_46_8008A304
/* 8F5C78C 8008A25C 21880000 */   addu      $s1, $zero, $zero
.Llevel_46_8008A260:
/* 8F5C790 8008A260 0780023C */  lui        $v0, %hi(D_8006C578)
/* 8F5C794 8008A264 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 8F5C798 8008A268 0780033C */  lui        $v1, %hi(D_8006C574)
/* 8F5C79C 8008A26C 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 8F5C7A0 8008A270 00000000 */  nop
/* 8F5C7A4 8008A274 23104300 */  subu       $v0, $v0, $v1
/* 8F5C7A8 8008A278 15004228 */  slti       $v0, $v0, 0x15
/* 8F5C7AC 8008A27C 21004014 */  bnez       $v0, .Llevel_46_8008A304
/* 8F5C7B0 8008A280 5C000424 */   addiu     $a0, $zero, 0x5C
/* 8F5C7B4 8008A284 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8F5C7B8 8008A288 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8F5C7BC 8008A28C 00000000 */  nop
/* 8F5C7C0 8008A290 09F84000 */  jalr       $v0
/* 8F5C7C4 8008A294 2128A002 */   addu      $a1, $s5, $zero
/* 8F5C7C8 8008A298 21804000 */  addu       $s0, $v0, $zero
/* 8F5C7CC 8008A29C 15000012 */  beqz       $s0, .Llevel_46_8008A2F4
/* 8F5C7D0 8008A2A0 04000224 */   addiu     $v0, $zero, 0x4
/* 8F5C7D4 8008A2A4 06004216 */  bne        $s2, $v0, .Llevel_46_8008A2C0
/* 8F5C7D8 8008A2A8 00000000 */   nop
/* 8F5C7DC 8008A2AC 9171010C */  jal        rand
/* 8F5C7E0 8008A2B0 480012A2 */   sb        $s2, 0x48($s0)
/* 8F5C7E4 8008A2B4 03004230 */  andi       $v0, $v0, 0x3
/* 8F5C7E8 8008A2B8 B1280208 */  j          .Llevel_46_8008A2C4
/* 8F5C7EC 8008A2BC 490002A2 */   sb        $v0, 0x49($s0)
.Llevel_46_8008A2C0:
/* 8F5C7F0 8008A2C0 480012A2 */  sb         $s2, 0x48($s0)
.Llevel_46_8008A2C4:
/* 8F5C7F4 8008A2C4 01000224 */  addiu      $v0, $zero, 0x1
/* 8F5C7F8 8008A2C8 05004216 */  bne        $s2, $v0, .Llevel_46_8008A2E0
/* 8F5C7FC 8008A2CC 00000000 */   nop
/* 8F5C800 8008A2D0 9171010C */  jal        rand
/* 8F5C804 8008A2D4 00000000 */   nop
/* 8F5C808 8008A2D8 0F004230 */  andi       $v0, $v0, 0xF
/* 8F5C80C 8008A2DC 490002A2 */  sb         $v0, 0x49($s0)
.Llevel_46_8008A2E0:
/* 8F5C810 8008A2E0 0000038E */  lw         $v1, 0x0($s0)
/* 8F5C814 8008A2E4 1000A28F */  lw         $v0, 0x10($sp)
/* 8F5C818 8008A2E8 00000000 */  nop
/* 8F5C81C 8008A2EC 0C0062AC */  sw         $v0, 0xC($v1)
/* 8F5C820 8008A2F0 100073AC */  sw         $s3, 0x10($v1)
.Llevel_46_8008A2F4:
/* 8F5C824 8008A2F4 01003126 */  addiu      $s1, $s1, 0x1
/* 8F5C828 8008A2F8 2A103402 */  slt        $v0, $s1, $s4
/* 8F5C82C 8008A2FC D8FF4014 */  bnez       $v0, .Llevel_46_8008A260
/* 8F5C830 8008A300 00000000 */   nop
.Llevel_46_8008A304:
/* 8F5C834 8008A304 4000BF8F */  lw         $ra, 0x40($sp)
/* 8F5C838 8008A308 3C00B58F */  lw         $s5, 0x3C($sp)
/* 8F5C83C 8008A30C 3800B48F */  lw         $s4, 0x38($sp)
/* 8F5C840 8008A310 3400B38F */  lw         $s3, 0x34($sp)
/* 8F5C844 8008A314 3000B28F */  lw         $s2, 0x30($sp)
/* 8F5C848 8008A318 2C00B18F */  lw         $s1, 0x2C($sp)
/* 8F5C84C 8008A31C 2800B08F */  lw         $s0, 0x28($sp)
/* 8F5C850 8008A320 4800BD27 */  addiu      $sp, $sp, 0x48
/* 8F5C854 8008A324 0800E003 */  jr         $ra
/* 8F5C858 8008A328 00000000 */   nop
.size func_level_46_8008A08C, . - func_level_46_8008A08C
