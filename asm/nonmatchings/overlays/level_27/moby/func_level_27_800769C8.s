.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_326_level_27
/* 63EAEF8 800769C8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 63EAEFC 800769CC 2000B0AF */  sw         $s0, 0x20($sp)
/* 63EAF00 800769D0 21808000 */  addu       $s0, $a0, $zero
/* 63EAF04 800769D4 2800BFAF */  sw         $ra, 0x28($sp)
/* 63EAF08 800769D8 2400B1AF */  sw         $s1, 0x24($sp)
/* 63EAF0C 800769DC 0000118E */  lw         $s1, 0x0($s0)
/* 63EAF10 800769E0 02000524 */  addiu      $a1, $zero, 0x2
/* 63EAF14 800769E4 69D6000C */  jal        func_800359A4
/* 63EAF18 800769E8 21202002 */   addu      $a0, $s1, $zero
/* 63EAF1C 800769EC 03004010 */  beqz       $v0, .Llevel_27_800769FC
/* 63EAF20 800769F0 00000000 */   nop
/* 63EAF24 800769F4 C656010C */  jal        func_80055B18
/* 63EAF28 800769F8 21200002 */   addu      $a0, $s0, $zero
.Llevel_27_800769FC:
/* 63EAF2C 800769FC 02002392 */  lbu        $v1, 0x2($s1)
/* 63EAF30 80076A00 00000000 */  nop
/* 63EAF34 80076A04 0E006014 */  bnez       $v1, .Llevel_27_80076A40
/* 63EAF38 80076A08 01000224 */   addiu     $v0, $zero, 0x1
/* 63EAF3C 80076A0C 00002286 */  lh         $v0, 0x0($s1)
/* 63EAF40 80076A10 00000000 */  nop
/* 63EAF44 80076A14 21184000 */  addu       $v1, $v0, $zero
/* 63EAF48 80076A18 08004228 */  slti       $v0, $v0, 0x8
/* 63EAF4C 80076A1C 04004010 */  beqz       $v0, .Llevel_27_80076A30
/* 63EAF50 80076A20 00110300 */   sll       $v0, $v1, 4
/* 63EAF54 80076A24 540002A2 */  sb         $v0, 0x54($s0)
/* 63EAF58 80076A28 ADDA0108 */  j          .Llevel_27_80076AB4
/* 63EAF5C 80076A2C 550000A2 */   sb        $zero, 0x55($s0)
.Llevel_27_80076A30:
/* 63EAF60 80076A30 F8FF6224 */  addiu      $v0, $v1, -0x8
/* 63EAF64 80076A34 00110200 */  sll        $v0, $v0, 4
/* 63EAF68 80076A38 ADDA0108 */  j          .Llevel_27_80076AB4
/* 63EAF6C 80076A3C 550002A2 */   sb        $v0, 0x55($s0)
.Llevel_27_80076A40:
/* 63EAF70 80076A40 0E006214 */  bne        $v1, $v0, .Llevel_27_80076A7C
/* 63EAF74 80076A44 02000224 */   addiu     $v0, $zero, 0x2
/* 63EAF78 80076A48 00002286 */  lh         $v0, 0x0($s1)
/* 63EAF7C 80076A4C 00000000 */  nop
/* 63EAF80 80076A50 21184000 */  addu       $v1, $v0, $zero
/* 63EAF84 80076A54 08004228 */  slti       $v0, $v0, 0x8
/* 63EAF88 80076A58 04004010 */  beqz       $v0, .Llevel_27_80076A6C
/* 63EAF8C 80076A5C 00110300 */   sll       $v0, $v1, 4
/* 63EAF90 80076A60 550002A2 */  sb         $v0, 0x55($s0)
/* 63EAF94 80076A64 ADDA0108 */  j          .Llevel_27_80076AB4
/* 63EAF98 80076A68 540000A2 */   sb        $zero, 0x54($s0)
.Llevel_27_80076A6C:
/* 63EAF9C 80076A6C F8FF6224 */  addiu      $v0, $v1, -0x8
/* 63EAFA0 80076A70 00110200 */  sll        $v0, $v0, 4
/* 63EAFA4 80076A74 ADDA0108 */  j          .Llevel_27_80076AB4
/* 63EAFA8 80076A78 540002A2 */   sb        $v0, 0x54($s0)
.Llevel_27_80076A7C:
/* 63EAFAC 80076A7C 0D006214 */  bne        $v1, $v0, .Llevel_27_80076AB4
/* 63EAFB0 80076A80 00000000 */   nop
/* 63EAFB4 80076A84 54000292 */  lbu        $v0, 0x54($s0)
/* 63EAFB8 80076A88 56000392 */  lbu        $v1, 0x56($s0)
/* 63EAFBC 80076A8C F8FF4224 */  addiu      $v0, $v0, -0x8
/* 63EAFC0 80076A90 540002A2 */  sb         $v0, 0x54($s0)
/* 63EAFC4 80076A94 55000292 */  lbu        $v0, 0x55($s0)
/* 63EAFC8 80076A98 F8FF6324 */  addiu      $v1, $v1, -0x8
/* 63EAFCC 80076A9C 560003A2 */  sb         $v1, 0x56($s0)
/* 63EAFD0 80076AA0 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 63EAFD4 80076AA4 550002A2 */  sb         $v0, 0x55($s0)
/* 63EAFD8 80076AA8 00002296 */  lhu        $v0, 0x0($s1)
/* 63EAFDC 80076AAC 00000000 */  nop
/* 63EAFE0 80076AB0 570002A2 */  sb         $v0, 0x57($s0)
.Llevel_27_80076AB4:
/* 63EAFE4 80076AB4 03002292 */  lbu        $v0, 0x3($s1)
/* 63EAFE8 80076AB8 00000000 */  nop
/* 63EAFEC 80076ABC 06004014 */  bnez       $v0, .Llevel_27_80076AD8
/* 63EAFF0 80076AC0 00000000 */   nop
/* 63EAFF4 80076AC4 00002292 */  lbu        $v0, 0x0($s1)
/* 63EAFF8 80076AC8 00000000 */  nop
/* 63EAFFC 80076ACC 40100200 */  sll        $v0, $v0, 1
/* 63EB000 80076AD0 BADA0108 */  j          .Llevel_27_80076AE8
/* 63EB004 80076AD4 30004224 */   addiu     $v0, $v0, 0x30
.Llevel_27_80076AD8:
/* 63EB008 80076AD8 00002292 */  lbu        $v0, 0x0($s1)
/* 63EB00C 80076ADC 00000000 */  nop
/* 63EB010 80076AE0 80100200 */  sll        $v0, $v0, 2
/* 63EB014 80076AE4 34004224 */  addiu      $v0, $v0, 0x34
.Llevel_27_80076AE8:
/* 63EB018 80076AE8 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 63EB01C 80076AEC 2800BF8F */  lw         $ra, 0x28($sp)
/* 63EB020 80076AF0 2400B18F */  lw         $s1, 0x24($sp)
/* 63EB024 80076AF4 2000B08F */  lw         $s0, 0x20($sp)
/* 63EB028 80076AF8 3000BD27 */  addiu      $sp, $sp, 0x30
/* 63EB02C 80076AFC 0800E003 */  jr         $ra
/* 63EB030 80076B00 00000000 */   nop
.size MobyUpdate_326_level_27, . - MobyUpdate_326_level_27
