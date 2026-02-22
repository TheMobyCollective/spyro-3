.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_33_80095884
/* 71CD5B4 80095884 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 71CD5B8 80095888 1400B1AF */  sw         $s1, 0x14($sp)
/* 71CD5BC 8009588C 21888000 */  addu       $s1, $a0, $zero
/* 71CD5C0 80095890 1800BFAF */  sw         $ra, 0x18($sp)
/* 71CD5C4 80095894 989E000C */  jal        func_80027A60
/* 71CD5C8 80095898 1000B0AF */   sw        $s0, 0x10($sp)
/* 71CD5CC 8009589C 2800228E */  lw         $v0, 0x28($s1)
/* 71CD5D0 800958A0 8888033C */  lui        $v1, (0x88888889 >> 16)
/* 71CD5D4 800958A4 0000458C */  lw         $a1, 0x0($v0)
/* 71CD5D8 800958A8 89886334 */  ori        $v1, $v1, (0x88888889 & 0xFFFF)
/* 71CD5DC 800958AC 1800A300 */  mult       $a1, $v1
/* 71CD5E0 800958B0 5000228E */  lw         $v0, 0x50($s1)
/* 71CD5E4 800958B4 C3270500 */  sra        $a0, $a1, 31
/* 71CD5E8 800958B8 10380000 */  mfhi       $a3
/* 71CD5EC 800958BC 2118E500 */  addu       $v1, $a3, $a1
/* 71CD5F0 800958C0 03190300 */  sra        $v1, $v1, 4
/* 71CD5F4 800958C4 23806400 */  subu       $s0, $v1, $a0
/* 71CD5F8 800958C8 2A100202 */  slt        $v0, $s0, $v0
/* 71CD5FC 800958CC 0F004010 */  beqz       $v0, .Llevel_33_8009590C
/* 71CD600 800958D0 00000000 */   nop
/* 71CD604 800958D4 0D00A010 */  beqz       $a1, .Llevel_33_8009590C
/* 71CD608 800958D8 0800022A */   slti      $v0, $s0, 0x8
/* 71CD60C 800958DC 05004014 */  bnez       $v0, .Llevel_33_800958F4
/* 71CD610 800958E0 1000022A */   slti      $v0, $s0, 0x10
/* 71CD614 800958E4 09004010 */  beqz       $v0, .Llevel_33_8009590C
/* 71CD618 800958E8 01000232 */   andi      $v0, $s0, 0x1
/* 71CD61C 800958EC 07004010 */  beqz       $v0, .Llevel_33_8009590C
/* 71CD620 800958F0 00000000 */   nop
.Llevel_33_800958F4:
/* 71CD624 800958F4 0780023C */  lui        $v0, %hi(D_8006C654)
/* 71CD628 800958F8 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 71CD62C 800958FC 21280000 */  addu       $a1, $zero, $zero
/* 71CD630 80095900 1E004490 */  lbu        $a0, 0x1E($v0)
/* 71CD634 80095904 D4EE000C */  jal        PlaySound
/* 71CD638 80095908 21300000 */   addu      $a2, $zero, $zero
.Llevel_33_8009590C:
/* 71CD63C 8009590C 2800228E */  lw         $v0, 0x28($s1)
/* 71CD640 80095910 500030AE */  sw         $s0, 0x50($s1)
/* 71CD644 80095914 0000428C */  lw         $v0, 0x0($v0)
/* 71CD648 80095918 00000000 */  nop
/* 71CD64C 8009591C 04004014 */  bnez       $v0, .Llevel_33_80095930
/* 71CD650 80095920 00000000 */   nop
/* 71CD654 80095924 1A002486 */  lh         $a0, 0x1A($s1)
/* 71CD658 80095928 55A0000C */  jal        func_80028154
/* 71CD65C 8009592C 00000000 */   nop
.Llevel_33_80095930:
/* 71CD660 80095930 1800BF8F */  lw         $ra, 0x18($sp)
/* 71CD664 80095934 1400B18F */  lw         $s1, 0x14($sp)
/* 71CD668 80095938 1000B08F */  lw         $s0, 0x10($sp)
/* 71CD66C 8009593C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 71CD670 80095940 0800E003 */  jr         $ra
/* 71CD674 80095944 00000000 */   nop
.size func_level_33_80095884, . - func_level_33_80095884
