.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_34_8007D058
/* 74D8D88 8007D058 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 74D8D8C 8007D05C 3800BFAF */  sw         $ra, 0x38($sp)
/* 74D8D90 8007D060 3400B1AF */  sw         $s1, 0x34($sp)
/* 74D8D94 8007D064 3000B0AF */  sw         $s0, 0x30($sp)
/* 74D8D98 8007D068 0000918C */  lw         $s1, 0x0($a0)
/* 74D8D9C 8007D06C 9171010C */  jal        rand
/* 74D8DA0 8007D070 00000000 */   nop
/* 74D8DA4 8007D074 1800238E */  lw         $v1, 0x18($s1)
/* 74D8DA8 8007D078 FF034230 */  andi       $v0, $v0, 0x3FF
/* 74D8DAC 8007D07C 2A104300 */  slt        $v0, $v0, $v1
/* 74D8DB0 8007D080 1A004010 */  beqz       $v0, .Llevel_34_8007D0EC
/* 74D8DB4 8007D084 14000224 */   addiu     $v0, $zero, 0x14
/* 74D8DB8 8007D088 2000A0AF */  sw         $zero, 0x20($sp)
/* 74D8DBC 8007D08C 2400A0AF */  sw         $zero, 0x24($sp)
/* 74D8DC0 8007D090 9171010C */  jal        rand
/* 74D8DC4 8007D094 2800A2AF */   sw        $v0, 0x28($sp)
/* 74D8DC8 8007D098 FF005030 */  andi       $s0, $v0, 0xFF
/* 74D8DCC 8007D09C 9171010C */  jal        rand
/* 74D8DD0 8007D0A0 81FF1026 */   addiu     $s0, $s0, -0x7F
/* 74D8DD4 8007D0A4 1000A427 */  addiu      $a0, $sp, 0x10
/* 74D8DD8 8007D0A8 21280002 */  addu       $a1, $s0, $zero
/* 74D8DDC 8007D0AC FF004230 */  andi       $v0, $v0, 0xFF
/* 74D8DE0 8007D0B0 81FF4624 */  addiu      $a2, $v0, -0x7F
/* 74D8DE4 8007D0B4 0780023C */  lui        $v0, %hi(unk_ovlheader_800743E4)
/* 74D8DE8 8007D0B8 E443428C */  lw         $v0, %lo(unk_ovlheader_800743E4)($v0)
/* 74D8DEC 8007D0BC 00000000 */  nop
/* 74D8DF0 8007D0C0 09F84000 */  jalr       $v0
/* 74D8DF4 8007D0C4 21382002 */   addu      $a3, $s1, $zero
/* 74D8DF8 8007D0C8 01000424 */  addiu      $a0, $zero, 0x1
/* 74D8DFC 8007D0CC 21280000 */  addu       $a1, $zero, $zero
/* 74D8E00 8007D0D0 1000A627 */  addiu      $a2, $sp, 0x10
/* 74D8E04 8007D0D4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 74D8E08 8007D0D8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 74D8E0C 8007D0DC 00000000 */  nop
/* 74D8E10 8007D0E0 09F84000 */  jalr       $v0
/* 74D8E14 8007D0E4 2000A727 */   addiu     $a3, $sp, 0x20
/* 74D8E18 8007D0E8 110040A0 */  sb         $zero, 0x11($v0)
.Llevel_34_8007D0EC:
/* 74D8E1C 8007D0EC 3800BF8F */  lw         $ra, 0x38($sp)
/* 74D8E20 8007D0F0 3400B18F */  lw         $s1, 0x34($sp)
/* 74D8E24 8007D0F4 3000B08F */  lw         $s0, 0x30($sp)
/* 74D8E28 8007D0F8 4000BD27 */  addiu      $sp, $sp, 0x40
/* 74D8E2C 8007D0FC 0800E003 */  jr         $ra
/* 74D8E30 8007D100 00000000 */   nop
.size func_level_34_8007D058, . - func_level_34_8007D058
