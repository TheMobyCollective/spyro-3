.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_50_8009559C
/* 95E9ACC 8009559C 80FFBD27 */  addiu      $sp, $sp, -0x80
/* 95E9AD0 800955A0 7400B7AF */  sw         $s7, 0x74($sp)
/* 95E9AD4 800955A4 9000B78F */  lw         $s7, 0x90($sp)
/* 95E9AD8 800955A8 6800B4AF */  sw         $s4, 0x68($sp)
/* 95E9ADC 800955AC 21A08000 */  addu       $s4, $a0, $zero
/* 95E9AE0 800955B0 6C00B5AF */  sw         $s5, 0x6C($sp)
/* 95E9AE4 800955B4 21A8A000 */  addu       $s5, $a1, $zero
/* 95E9AE8 800955B8 6400B3AF */  sw         $s3, 0x64($sp)
/* 95E9AEC 800955BC 2198C000 */  addu       $s3, $a2, $zero
/* 95E9AF0 800955C0 7000B6AF */  sw         $s6, 0x70($sp)
/* 95E9AF4 800955C4 21B0E000 */  addu       $s6, $a3, $zero
/* 95E9AF8 800955C8 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 95E9AFC 800955CC 21880000 */  addu       $s1, $zero, $zero
/* 95E9B00 800955D0 7800BFAF */  sw         $ra, 0x78($sp)
/* 95E9B04 800955D4 6000B2AF */  sw         $s2, 0x60($sp)
/* 95E9B08 800955D8 2C00601A */  blez       $s3, .Llevel_50_8009568C
/* 95E9B0C 800955DC 5800B0AF */   sw        $s0, 0x58($sp)
/* 95E9B10 800955E0 3000B227 */  addiu      $s2, $sp, 0x30
/* 95E9B14 800955E4 2000B027 */  addiu      $s0, $sp, 0x20
.Llevel_50_800955E8:
/* 95E9B18 800955E8 9171010C */  jal        rand
/* 95E9B1C 800955EC 4800A0A3 */   sb        $zero, 0x48($sp)
/* 95E9B20 800955F0 9171010C */  jal        rand
/* 95E9B24 800955F4 4900A2A3 */   sb        $v0, 0x49($sp)
/* 95E9B28 800955F8 4800A427 */  addiu      $a0, $sp, 0x48
/* 95E9B2C 800955FC 21284002 */  addu       $a1, $s2, $zero
/* 95E9B30 80095600 21300000 */  addu       $a2, $zero, $zero
/* 95E9B34 80095604 A43A010C */  jal        func_8004EA90
/* 95E9B38 80095608 4A00A2A3 */   sb        $v0, 0x4A($sp)
/* 95E9B3C 8009560C 2120C002 */  addu       $a0, $s6, $zero
/* 95E9B40 80095610 DBD8000C */  jal        func_8003636C
/* 95E9B44 80095614 2128E002 */   addu      $a1, $s7, $zero
/* 95E9B48 80095618 21204002 */  addu       $a0, $s2, $zero
/* 95E9B4C 8009561C 1000A527 */  addiu      $a1, $sp, 0x10
/* 95E9B50 80095620 2130A000 */  addu       $a2, $a1, $zero
/* 95E9B54 80095624 1000A2AF */  sw         $v0, 0x10($sp)
/* 95E9B58 80095628 1400A0AF */  sw         $zero, 0x14($sp)
/* 95E9B5C 8009562C 5B3B010C */  jal        func_8004ED6C
/* 95E9B60 80095630 1800A0AF */   sw        $zero, 0x18($sp)
/* 95E9B64 80095634 21200002 */  addu       $a0, $s0, $zero
/* 95E9B68 80095638 5E3C010C */  jal        func_8004F178
/* 95E9B6C 8009563C 1000A527 */   addiu     $a1, $sp, 0x10
/* 95E9B70 80095640 21200002 */  addu       $a0, $s0, $zero
/* 95E9B74 80095644 3A3C010C */  jal        func_8004F0E8
/* 95E9B78 80095648 02000524 */   addiu     $a1, $zero, 0x2
/* 95E9B7C 8009564C 21200002 */  addu       $a0, $s0, $zero
/* 95E9B80 80095650 21280002 */  addu       $a1, $s0, $zero
/* 95E9B84 80095654 653C010C */  jal        func_8004F194
/* 95E9B88 80095658 21308002 */   addu      $a2, $s4, $zero
/* 95E9B8C 8009565C 01000424 */  addiu      $a0, $zero, 0x1
/* 95E9B90 80095660 2128A002 */  addu       $a1, $s5, $zero
/* 95E9B94 80095664 21300002 */  addu       $a2, $s0, $zero
/* 95E9B98 80095668 01003126 */  addiu      $s1, $s1, 0x1
/* 95E9B9C 8009566C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 95E9BA0 80095670 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 95E9BA4 80095674 00000000 */  nop
/* 95E9BA8 80095678 09F84000 */  jalr       $v0
/* 95E9BAC 8009567C 1000A727 */   addiu     $a3, $sp, 0x10
/* 95E9BB0 80095680 2A103302 */  slt        $v0, $s1, $s3
/* 95E9BB4 80095684 D8FF4014 */  bnez       $v0, .Llevel_50_800955E8
/* 95E9BB8 80095688 00000000 */   nop
.Llevel_50_8009568C:
/* 95E9BBC 8009568C 7800BF8F */  lw         $ra, 0x78($sp)
/* 95E9BC0 80095690 7400B78F */  lw         $s7, 0x74($sp)
/* 95E9BC4 80095694 7000B68F */  lw         $s6, 0x70($sp)
/* 95E9BC8 80095698 6C00B58F */  lw         $s5, 0x6C($sp)
/* 95E9BCC 8009569C 6800B48F */  lw         $s4, 0x68($sp)
/* 95E9BD0 800956A0 6400B38F */  lw         $s3, 0x64($sp)
/* 95E9BD4 800956A4 6000B28F */  lw         $s2, 0x60($sp)
/* 95E9BD8 800956A8 5C00B18F */  lw         $s1, 0x5C($sp)
/* 95E9BDC 800956AC 5800B08F */  lw         $s0, 0x58($sp)
/* 95E9BE0 800956B0 8000BD27 */  addiu      $sp, $sp, 0x80
/* 95E9BE4 800956B4 0800E003 */  jr         $ra
/* 95E9BE8 800956B8 00000000 */   nop
.size func_level_50_8009559C, . - func_level_50_8009559C
