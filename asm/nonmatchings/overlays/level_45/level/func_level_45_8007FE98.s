.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_45_8007FE98
/* 8D3C3C8 8007FE98 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 8D3C3CC 8007FE9C 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 8D3C3D0 8007FEA0 21A88000 */  addu       $s5, $a0, $zero
/* 8D3C3D4 8007FEA4 2130A000 */  addu       $a2, $a1, $zero
/* 8D3C3D8 8007FEA8 3000B2AF */  sw         $s2, 0x30($sp)
/* 8D3C3DC 8007FEAC 21900000 */  addu       $s2, $zero, $zero
/* 8D3C3E0 8007FEB0 3800B4AF */  sw         $s4, 0x38($sp)
/* 8D3C3E4 8007FEB4 21A00000 */  addu       $s4, $zero, $zero
/* 8D3C3E8 8007FEB8 3400B3AF */  sw         $s3, 0x34($sp)
/* 8D3C3EC 8007FEBC 21980000 */  addu       $s3, $zero, $zero
/* 8D3C3F0 8007FEC0 4000BFAF */  sw         $ra, 0x40($sp)
/* 8D3C3F4 8007FEC4 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 8D3C3F8 8007FEC8 2800B0AF */  sw         $s0, 0x28($sp)
/* 8D3C3FC 8007FECC 0780053C */  lui        $a1, %hi(D_level_45_80074670)
/* 8D3C400 8007FED0 7046A524 */  addiu      $a1, $a1, %lo(D_level_45_80074670)
/* 8D3C404 8007FED4 0300A288 */  lwl        $v0, 0x3($a1)
/* 8D3C408 8007FED8 0000A298 */  lwr        $v0, 0x0($a1)
/* 8D3C40C 8007FEDC 0400A380 */  lb         $v1, 0x4($a1)
/* 8D3C410 8007FEE0 0500A480 */  lb         $a0, 0x5($a1)
/* 8D3C414 8007FEE4 1B00A2AB */  swl        $v0, 0x1B($sp)
/* 8D3C418 8007FEE8 1800A2BB */  swr        $v0, 0x18($sp)
/* 8D3C41C 8007FEEC 1C00A3A3 */  sb         $v1, 0x1C($sp)
/* 8D3C420 8007FEF0 1D00A4A3 */  sb         $a0, 0x1D($sp)
/* 8D3C424 8007FEF4 0600A280 */  lb         $v0, 0x6($a1)
/* 8D3C428 8007FEF8 00000000 */  nop
/* 8D3C42C 8007FEFC 1E00A2A3 */  sb         $v0, 0x1E($sp)
/* 8D3C430 8007FF00 3600A386 */  lh         $v1, 0x36($s5)
/* 8D3C434 8007FF04 5C000224 */  addiu      $v0, $zero, 0x5C
/* 8D3C438 8007FF08 18006214 */  bne        $v1, $v0, .Llevel_45_8007FF6C
/* 8D3C43C 8007FF0C 1800B027 */   addiu     $s0, $sp, 0x18
/* 8D3C440 8007FF10 0000A38E */  lw         $v1, 0x0($s5)
/* 8D3C444 8007FF14 00000000 */  nop
/* 8D3C448 8007FF18 0C00628C */  lw         $v0, 0xC($v1)
/* 8D3C44C 8007FF1C 00000000 */  nop
/* 8D3C450 8007FF20 1000A2AF */  sw         $v0, 0x10($sp)
/* 8D3C454 8007FF24 4800A392 */  lbu        $v1, 0x48($s5)
/* 8D3C458 8007FF28 02000224 */  addiu      $v0, $zero, 0x2
/* 8D3C45C 8007FF2C 05006214 */  bne        $v1, $v0, .Llevel_45_8007FF44
/* 8D3C460 8007FF30 04000224 */   addiu     $v0, $zero, 0x4
/* 8D3C464 8007FF34 21908002 */  addu       $s2, $s4, $zero
/* 8D3C468 8007FF38 04001424 */  addiu      $s4, $zero, 0x4
/* 8D3C46C 8007FF3C 17000208 */  j          .Llevel_45_8008005C
/* 8D3C470 8007FF40 10001324 */   addiu     $s3, $zero, 0x10
.Llevel_45_8007FF44:
/* 8D3C474 8007FF44 46006214 */  bne        $v1, $v0, .Llevel_45_80080060
/* 8D3C478 8007FF48 3F000224 */   addiu     $v0, $zero, 0x3F
/* 8D3C47C 8007FF4C 05001224 */  addiu      $s2, $zero, 0x5
/* 8D3C480 8007FF50 01001424 */  addiu      $s4, $zero, 0x1
/* 8D3C484 8007FF54 20001324 */  addiu      $s3, $zero, 0x20
/* 8D3C488 8007FF58 FF000224 */  addiu      $v0, $zero, 0xFF
/* 8D3C48C 8007FF5C 1000A2A3 */  sb         $v0, 0x10($sp)
/* 8D3C490 8007FF60 1100A2A3 */  sb         $v0, 0x11($sp)
/* 8D3C494 8007FF64 17000208 */  j          .Llevel_45_8008005C
/* 8D3C498 8007FF68 1200A2A3 */   sb        $v0, 0x12($sp)
.Llevel_45_8007FF6C:
/* 8D3C49C 8007FF6C 0500C104 */  bgez       $a2, .Llevel_45_8007FF84
/* 8D3C4A0 8007FF70 21100602 */   addu      $v0, $s0, $a2
/* 8D3C4A4 8007FF74 21200000 */  addu       $a0, $zero, $zero
/* 8D3C4A8 8007FF78 DBD8000C */  jal        func_8003636C
/* 8D3C4AC 8007FF7C 06000524 */   addiu     $a1, $zero, 0x6
/* 8D3C4B0 8007FF80 21100202 */  addu       $v0, $s0, $v0
.Llevel_45_8007FF84:
/* 8D3C4B4 8007FF84 00005290 */  lbu        $s2, 0x0($v0)
/* 8D3C4B8 8007FF88 03001024 */  addiu      $s0, $zero, 0x3
/* 8D3C4BC 8007FF8C 1A005012 */  beq        $s2, $s0, .Llevel_45_8007FFF8
/* 8D3C4C0 8007FF90 04000224 */   addiu     $v0, $zero, 0x4
/* 8D3C4C4 8007FF94 05004216 */  bne        $s2, $v0, .Llevel_45_8007FFAC
/* 8D3C4C8 8007FF98 FF000224 */   addiu     $v0, $zero, 0xFF
/* 8D3C4CC 8007FF9C 1000A2A3 */  sb         $v0, 0x10($sp)
/* 8D3C4D0 8007FFA0 1100A2A3 */  sb         $v0, 0x11($sp)
/* 8D3C4D4 8007FFA4 0D000208 */  j          .Llevel_45_80080034
/* 8D3C4D8 8007FFA8 40000224 */   addiu     $v0, $zero, 0x40
.Llevel_45_8007FFAC:
/* 8D3C4DC 8007FFAC 9171010C */  jal        rand
/* 8D3C4E0 8007FFB0 00000000 */   nop
/* 8D3C4E4 8007FFB4 03004330 */  andi       $v1, $v0, 0x3
/* 8D3C4E8 8007FFB8 01000224 */  addiu      $v0, $zero, 0x1
/* 8D3C4EC 8007FFBC 13006210 */  beq        $v1, $v0, .Llevel_45_8008000C
/* 8D3C4F0 8007FFC0 02006228 */   slti      $v0, $v1, 0x2
/* 8D3C4F4 8007FFC4 05004010 */  beqz       $v0, .Llevel_45_8007FFDC
/* 8D3C4F8 8007FFC8 00000000 */   nop
/* 8D3C4FC 8007FFCC 0B006010 */  beqz       $v1, .Llevel_45_8007FFFC
/* 8D3C500 8007FFD0 FF000224 */   addiu     $v0, $zero, 0xFF
/* 8D3C504 8007FFD4 0F000208 */  j          .Llevel_45_8008003C
/* 8D3C508 8007FFD8 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_45_8007FFDC:
/* 8D3C50C 8007FFDC 02000224 */  addiu      $v0, $zero, 0x2
/* 8D3C510 8007FFE0 0D006210 */  beq        $v1, $v0, .Llevel_45_80080018
/* 8D3C514 8007FFE4 00000000 */   nop
/* 8D3C518 8007FFE8 10007010 */  beq        $v1, $s0, .Llevel_45_8008002C
/* 8D3C51C 8007FFEC FF000224 */   addiu     $v0, $zero, 0xFF
/* 8D3C520 8007FFF0 0F000208 */  j          .Llevel_45_8008003C
/* 8D3C524 8007FFF4 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_45_8007FFF8:
/* 8D3C528 8007FFF8 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_45_8007FFFC:
/* 8D3C52C 8007FFFC 1000A2A3 */  sb         $v0, 0x10($sp)
/* 8D3C530 80080000 1100A0A3 */  sb         $zero, 0x11($sp)
/* 8D3C534 80080004 0E000208 */  j          .Llevel_45_80080038
/* 8D3C538 80080008 1200A0A3 */   sb        $zero, 0x12($sp)
.Llevel_45_8008000C:
/* 8D3C53C 8008000C FF000224 */  addiu      $v0, $zero, 0xFF
/* 8D3C540 80080010 08000208 */  j          .Llevel_45_80080020
/* 8D3C544 80080014 1000A2A3 */   sb        $v0, 0x10($sp)
.Llevel_45_80080018:
/* 8D3C548 80080018 FF000224 */  addiu      $v0, $zero, 0xFF
/* 8D3C54C 8008001C 1000A0A3 */  sb         $zero, 0x10($sp)
.Llevel_45_80080020:
/* 8D3C550 80080020 1100A2A3 */  sb         $v0, 0x11($sp)
/* 8D3C554 80080024 0E000208 */  j          .Llevel_45_80080038
/* 8D3C558 80080028 1200A0A3 */   sb        $zero, 0x12($sp)
.Llevel_45_8008002C:
/* 8D3C55C 8008002C 1000A2A3 */  sb         $v0, 0x10($sp)
/* 8D3C560 80080030 1100A0A3 */  sb         $zero, 0x11($sp)
.Llevel_45_80080034:
/* 8D3C564 80080034 1200A2A3 */  sb         $v0, 0x12($sp)
.Llevel_45_80080038:
/* 8D3C568 80080038 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_45_8008003C:
/* 8D3C56C 8008003C 03004216 */  bne        $s2, $v0, .Llevel_45_8008004C
/* 8D3C570 80080040 10001424 */   addiu     $s4, $zero, 0x10
/* 8D3C574 80080044 17000208 */  j          .Llevel_45_8008005C
/* 8D3C578 80080048 30001324 */   addiu     $s3, $zero, 0x30
.Llevel_45_8008004C:
/* 8D3C57C 8008004C 03000224 */  addiu      $v0, $zero, 0x3
/* 8D3C580 80080050 02004216 */  bne        $s2, $v0, .Llevel_45_8008005C
/* 8D3C584 80080054 40001324 */   addiu     $s3, $zero, 0x40
/* 8D3C588 80080058 58001324 */  addiu      $s3, $zero, 0x58
.Llevel_45_8008005C:
/* 8D3C58C 8008005C 3F000224 */  addiu      $v0, $zero, 0x3F
.Llevel_45_80080060:
/* 8D3C590 80080060 1300A2A3 */  sb         $v0, 0x13($sp)
/* 8D3C594 80080064 2A008012 */  beqz       $s4, .Llevel_45_80080110
/* 8D3C598 80080068 21880000 */   addu      $s1, $zero, $zero
.Llevel_45_8008006C:
/* 8D3C59C 8008006C 0780023C */  lui        $v0, %hi(D_8006C578)
/* 8D3C5A0 80080070 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 8D3C5A4 80080074 0780033C */  lui        $v1, %hi(D_8006C574)
/* 8D3C5A8 80080078 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 8D3C5AC 8008007C 00000000 */  nop
/* 8D3C5B0 80080080 23104300 */  subu       $v0, $v0, $v1
/* 8D3C5B4 80080084 15004228 */  slti       $v0, $v0, 0x15
/* 8D3C5B8 80080088 21004014 */  bnez       $v0, .Llevel_45_80080110
/* 8D3C5BC 8008008C 5C000424 */   addiu     $a0, $zero, 0x5C
/* 8D3C5C0 80080090 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8D3C5C4 80080094 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8D3C5C8 80080098 00000000 */  nop
/* 8D3C5CC 8008009C 09F84000 */  jalr       $v0
/* 8D3C5D0 800800A0 2128A002 */   addu      $a1, $s5, $zero
/* 8D3C5D4 800800A4 21804000 */  addu       $s0, $v0, $zero
/* 8D3C5D8 800800A8 15000012 */  beqz       $s0, .Llevel_45_80080100
/* 8D3C5DC 800800AC 04000224 */   addiu     $v0, $zero, 0x4
/* 8D3C5E0 800800B0 06004216 */  bne        $s2, $v0, .Llevel_45_800800CC
/* 8D3C5E4 800800B4 00000000 */   nop
/* 8D3C5E8 800800B8 9171010C */  jal        rand
/* 8D3C5EC 800800BC 480012A2 */   sb        $s2, 0x48($s0)
/* 8D3C5F0 800800C0 03004230 */  andi       $v0, $v0, 0x3
/* 8D3C5F4 800800C4 34000208 */  j          .Llevel_45_800800D0
/* 8D3C5F8 800800C8 490002A2 */   sb        $v0, 0x49($s0)
.Llevel_45_800800CC:
/* 8D3C5FC 800800CC 480012A2 */  sb         $s2, 0x48($s0)
.Llevel_45_800800D0:
/* 8D3C600 800800D0 01000224 */  addiu      $v0, $zero, 0x1
/* 8D3C604 800800D4 05004216 */  bne        $s2, $v0, .Llevel_45_800800EC
/* 8D3C608 800800D8 00000000 */   nop
/* 8D3C60C 800800DC 9171010C */  jal        rand
/* 8D3C610 800800E0 00000000 */   nop
/* 8D3C614 800800E4 0F004230 */  andi       $v0, $v0, 0xF
/* 8D3C618 800800E8 490002A2 */  sb         $v0, 0x49($s0)
.Llevel_45_800800EC:
/* 8D3C61C 800800EC 0000038E */  lw         $v1, 0x0($s0)
/* 8D3C620 800800F0 1000A28F */  lw         $v0, 0x10($sp)
/* 8D3C624 800800F4 00000000 */  nop
/* 8D3C628 800800F8 0C0062AC */  sw         $v0, 0xC($v1)
/* 8D3C62C 800800FC 100073AC */  sw         $s3, 0x10($v1)
.Llevel_45_80080100:
/* 8D3C630 80080100 01003126 */  addiu      $s1, $s1, 0x1
/* 8D3C634 80080104 2A103402 */  slt        $v0, $s1, $s4
/* 8D3C638 80080108 D8FF4014 */  bnez       $v0, .Llevel_45_8008006C
/* 8D3C63C 8008010C 00000000 */   nop
.Llevel_45_80080110:
/* 8D3C640 80080110 4000BF8F */  lw         $ra, 0x40($sp)
/* 8D3C644 80080114 3C00B58F */  lw         $s5, 0x3C($sp)
/* 8D3C648 80080118 3800B48F */  lw         $s4, 0x38($sp)
/* 8D3C64C 8008011C 3400B38F */  lw         $s3, 0x34($sp)
/* 8D3C650 80080120 3000B28F */  lw         $s2, 0x30($sp)
/* 8D3C654 80080124 2C00B18F */  lw         $s1, 0x2C($sp)
/* 8D3C658 80080128 2800B08F */  lw         $s0, 0x28($sp)
/* 8D3C65C 8008012C 4800BD27 */  addiu      $sp, $sp, 0x48
/* 8D3C660 80080130 0800E003 */  jr         $ra
/* 8D3C664 80080134 00000000 */   nop
.size func_level_45_8007FE98, . - func_level_45_8007FE98
