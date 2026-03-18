.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_77_80074788
/* 2935CB8 80074788 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 2935CBC 8007478C 3800B2AF */  sw         $s2, 0x38($sp)
/* 2935CC0 80074790 21908000 */  addu       $s2, $a0, $zero
/* 2935CC4 80074794 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 2935CC8 80074798 3400B1AF */  sw         $s1, 0x34($sp)
/* 2935CCC 8007479C 3000B0AF */  sw         $s0, 0x30($sp)
/* 2935CD0 800747A0 49004292 */  lbu        $v0, 0x49($s2)
/* 2935CD4 800747A4 00000000 */  nop
/* 2935CD8 800747A8 2A004014 */  bnez       $v0, .Lcutscene_77_80074854
/* 2935CDC 800747AC 00000000 */   nop
/* 2935CE0 800747B0 0780023C */  lui        $v0, %hi(D_8006EDDC)
/* 2935CE4 800747B4 DCED428C */  lw         $v0, %lo(D_8006EDDC)($v0)
/* 2935CE8 800747B8 00000000 */  nop
/* 2935CEC 800747BC BC024228 */  slti       $v0, $v0, 0x2BC
/* 2935CF0 800747C0 24004014 */  bnez       $v0, .Lcutscene_77_80074854
/* 2935CF4 800747C4 21800000 */   addu      $s0, $zero, $zero
/* 2935CF8 800747C8 2000B127 */  addiu      $s1, $sp, 0x20
.Lcutscene_77_800747CC:
/* 2935CFC 800747CC 9171010C */  jal        rand
/* 2935D00 800747D0 01001026 */   addiu     $s0, $s0, 0x1
/* 2935D04 800747D4 FF034230 */  andi       $v0, $v0, 0x3FF
/* 2935D08 800747D8 00FE4224 */  addiu      $v0, $v0, -0x200
/* 2935D0C 800747DC 9171010C */  jal        rand
/* 2935D10 800747E0 1000A2AF */   sw        $v0, 0x10($sp)
/* 2935D14 800747E4 FF034230 */  andi       $v0, $v0, 0x3FF
/* 2935D18 800747E8 00FE4224 */  addiu      $v0, $v0, -0x200
/* 2935D1C 800747EC 9171010C */  jal        rand
/* 2935D20 800747F0 1400A2AF */   sw        $v0, 0x14($sp)
/* 2935D24 800747F4 1000A427 */  addiu      $a0, $sp, 0x10
/* 2935D28 800747F8 14000524 */  addiu      $a1, $zero, 0x14
/* 2935D2C 800747FC FF034230 */  andi       $v0, $v0, 0x3FF
/* 2935D30 80074800 00FE4224 */  addiu      $v0, $v0, -0x200
/* 2935D34 80074804 C13B010C */  jal        func_8004EF04
/* 2935D38 80074808 1800A2AF */   sw        $v0, 0x18($sp)
/* 2935D3C 8007480C 21202002 */  addu       $a0, $s1, $zero
/* 2935D40 80074810 5E3C010C */  jal        func_8004F178
/* 2935D44 80074814 0C004526 */   addiu     $a1, $s2, 0xC
/* 2935D48 80074818 01000424 */  addiu      $a0, $zero, 0x1
/* 2935D4C 8007481C 21280000 */  addu       $a1, $zero, $zero
/* 2935D50 80074820 2800A28F */  lw         $v0, 0x28($sp)
/* 2935D54 80074824 21302002 */  addu       $a2, $s1, $zero
/* 2935D58 80074828 80FF4224 */  addiu      $v0, $v0, -0x80
/* 2935D5C 8007482C 2800A2AF */  sw         $v0, 0x28($sp)
/* 2935D60 80074830 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 2935D64 80074834 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 2935D68 80074838 00000000 */  nop
/* 2935D6C 8007483C 09F84000 */  jalr       $v0
/* 2935D70 80074840 1000A727 */   addiu     $a3, $sp, 0x10
/* 2935D74 80074844 0800022A */  slti       $v0, $s0, 0x8
/* 2935D78 80074848 E0FF4014 */  bnez       $v0, .Lcutscene_77_800747CC
/* 2935D7C 8007484C 01000224 */   addiu     $v0, $zero, 0x1
/* 2935D80 80074850 490042A2 */  sb         $v0, 0x49($s2)
.Lcutscene_77_80074854:
/* 2935D84 80074854 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 2935D88 80074858 3800B28F */  lw         $s2, 0x38($sp)
/* 2935D8C 8007485C 3400B18F */  lw         $s1, 0x34($sp)
/* 2935D90 80074860 3000B08F */  lw         $s0, 0x30($sp)
/* 2935D94 80074864 4000BD27 */  addiu      $sp, $sp, 0x40
/* 2935D98 80074868 0800E003 */  jr         $ra
/* 2935D9C 8007486C 00000000 */   nop
.size func_cutscene_77_80074788, . - func_cutscene_77_80074788
