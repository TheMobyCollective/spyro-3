.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_34_80079DA4
/* 74D5AD4 80079DA4 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 74D5AD8 80079DA8 3800B0AF */  sw         $s0, 0x38($sp)
/* 74D5ADC 80079DAC 21808000 */  addu       $s0, $a0, $zero
/* 74D5AE0 80079DB0 4400BFAF */  sw         $ra, 0x44($sp)
/* 74D5AE4 80079DB4 4000B2AF */  sw         $s2, 0x40($sp)
/* 74D5AE8 80079DB8 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 74D5AEC 80079DBC 4D000292 */  lbu        $v0, 0x4D($s0)
/* 74D5AF0 80079DC0 0000118E */  lw         $s1, 0x0($s0)
/* 74D5AF4 80079DC4 03004014 */  bnez       $v0, .Llevel_34_80079DD4
/* 74D5AF8 80079DC8 00000000 */   nop
/* 74D5AFC 80079DCC C656010C */  jal        func_80055B18
/* 74D5B00 80079DD0 00000000 */   nop
.Llevel_34_80079DD4:
/* 74D5B04 80079DD4 49000292 */  lbu        $v0, 0x49($s0)
/* 74D5B08 80079DD8 00000000 */  nop
/* 74D5B0C 80079DDC FFFF4224 */  addiu      $v0, $v0, -0x1
/* 74D5B10 80079DE0 490002A2 */  sb         $v0, 0x49($s0)
/* 74D5B14 80079DE4 FF004230 */  andi       $v0, $v0, 0xFF
/* 74D5B18 80079DE8 07004010 */  beqz       $v0, .Llevel_34_80079E08
/* 74D5B1C 80079DEC 08000424 */   addiu     $a0, $zero, 0x8
/* 74D5B20 80079DF0 1400028E */  lw         $v0, 0x14($s0)
/* 74D5B24 80079DF4 0C00238E */  lw         $v1, 0xC($s1)
/* 74D5B28 80079DF8 00000000 */  nop
/* 74D5B2C 80079DFC 2A104300 */  slt        $v0, $v0, $v1
/* 74D5B30 80079E00 0B004010 */  beqz       $v0, .Llevel_34_80079E30
/* 74D5B34 80079E04 0C001226 */   addiu     $s2, $s0, 0xC
.Llevel_34_80079E08:
/* 74D5B38 80079E08 46000524 */  addiu      $a1, $zero, 0x46
/* 74D5B3C 80079E0C 0C000626 */  addiu      $a2, $s0, 0xC
/* 74D5B40 80079E10 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 74D5B44 80079E14 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 74D5B48 80079E18 00000000 */  nop
/* 74D5B4C 80079E1C 09F84000 */  jalr       $v0
/* 74D5B50 80079E20 10000724 */   addiu     $a3, $zero, 0x10
/* 74D5B54 80079E24 C656010C */  jal        func_80055B18
/* 74D5B58 80079E28 21200002 */   addu      $a0, $s0, $zero
/* 74D5B5C 80079E2C 0C001226 */  addiu      $s2, $s0, 0xC
.Llevel_34_80079E30:
/* 74D5B60 80079E30 21204002 */  addu       $a0, $s2, $zero
/* 74D5B64 80079E34 21284002 */  addu       $a1, $s2, $zero
/* 74D5B68 80079E38 653C010C */  jal        func_8004F194
/* 74D5B6C 80079E3C 21302002 */   addu      $a2, $s1, $zero
/* 74D5B70 80079E40 0800228E */  lw         $v0, 0x8($s1)
/* 74D5B74 80079E44 10002392 */  lbu        $v1, 0x10($s1)
/* 74D5B78 80079E48 F4FF4224 */  addiu      $v0, $v0, -0xC
/* 74D5B7C 80079E4C 080022AE */  sw         $v0, 0x8($s1)
/* 74D5B80 80079E50 44000292 */  lbu        $v0, 0x44($s0)
/* 74D5B84 80079E54 00000000 */  nop
/* 74D5B88 80079E58 21104300 */  addu       $v0, $v0, $v1
/* 74D5B8C 80079E5C 440002A2 */  sb         $v0, 0x44($s0)
/* 74D5B90 80079E60 45000292 */  lbu        $v0, 0x45($s0)
/* 74D5B94 80079E64 11002392 */  lbu        $v1, 0x11($s1)
/* 74D5B98 80079E68 00000000 */  nop
/* 74D5B9C 80079E6C 21104300 */  addu       $v0, $v0, $v1
/* 74D5BA0 80079E70 450002A2 */  sb         $v0, 0x45($s0)
/* 74D5BA4 80079E74 46000292 */  lbu        $v0, 0x46($s0)
/* 74D5BA8 80079E78 12002492 */  lbu        $a0, 0x12($s1)
/* 74D5BAC 80079E7C 49000392 */  lbu        $v1, 0x49($s0)
/* 74D5BB0 80079E80 21104400 */  addu       $v0, $v0, $a0
/* 74D5BB4 80079E84 01006330 */  andi       $v1, $v1, 0x1
/* 74D5BB8 80079E88 1A006014 */  bnez       $v1, .Llevel_34_80079EF4
/* 74D5BBC 80079E8C 460002A2 */   sb        $v0, 0x46($s0)
/* 74D5BC0 80079E90 1000A427 */  addiu      $a0, $sp, 0x10
/* 74D5BC4 80079E94 5E3C010C */  jal        func_8004F178
/* 74D5BC8 80079E98 21284002 */   addu      $a1, $s2, $zero
/* 74D5BCC 80079E9C 9171010C */  jal        rand
/* 74D5BD0 80079EA0 00000000 */   nop
/* 74D5BD4 80079EA4 03004230 */  andi       $v0, $v0, 0x3
/* 74D5BD8 80079EA8 9171010C */  jal        rand
/* 74D5BDC 80079EAC 1C00A2AF */   sw        $v0, 0x1C($sp)
/* 74D5BE0 80079EB0 01000424 */  addiu      $a0, $zero, 0x1
/* 74D5BE4 80079EB4 11000524 */  addiu      $a1, $zero, 0x11
/* 74D5BE8 80079EB8 1000A627 */  addiu      $a2, $sp, 0x10
/* 74D5BEC 80079EBC 2800A727 */  addiu      $a3, $sp, 0x28
/* 74D5BF0 80079EC0 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 74D5BF4 80079EC4 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 74D5BF8 80079EC8 03004230 */  andi       $v0, $v0, 0x3
/* 74D5BFC 80079ECC 2000A2AF */  sw         $v0, 0x20($sp)
/* 74D5C00 80079ED0 14000224 */  addiu      $v0, $zero, 0x14
/* 74D5C04 80079ED4 2400A2AF */  sw         $v0, 0x24($sp)
/* 74D5C08 80079ED8 80000224 */  addiu      $v0, $zero, 0x80
/* 74D5C0C 80079EDC 2800A2AF */  sw         $v0, 0x28($sp)
/* 74D5C10 80079EE0 70000224 */  addiu      $v0, $zero, 0x70
/* 74D5C14 80079EE4 2C00A2AF */  sw         $v0, 0x2C($sp)
/* 74D5C18 80079EE8 40000224 */  addiu      $v0, $zero, 0x40
/* 74D5C1C 80079EEC 09F86000 */  jalr       $v1
/* 74D5C20 80079EF0 3000A2AF */   sw        $v0, 0x30($sp)
.Llevel_34_80079EF4:
/* 74D5C24 80079EF4 4400BF8F */  lw         $ra, 0x44($sp)
/* 74D5C28 80079EF8 4000B28F */  lw         $s2, 0x40($sp)
/* 74D5C2C 80079EFC 3C00B18F */  lw         $s1, 0x3C($sp)
/* 74D5C30 80079F00 3800B08F */  lw         $s0, 0x38($sp)
/* 74D5C34 80079F04 4800BD27 */  addiu      $sp, $sp, 0x48
/* 74D5C38 80079F08 0800E003 */  jr         $ra
/* 74D5C3C 80079F0C 00000000 */   nop
.size func_level_34_80079DA4, . - func_level_34_80079DA4
