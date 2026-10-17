.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_265_level_20
/* 50CBE88 8007C158 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 50CBE8C 8007C15C 1000BFAF */  sw         $ra, 0x10($sp)
/* 50CBE90 8007C160 0000858C */  lw         $a1, 0x0($a0)
/* 50CBE94 8007C164 00000000 */  nop
/* 50CBE98 8007C168 0000A28C */  lw         $v0, 0x0($a1)
/* 50CBE9C 8007C16C 48008390 */  lbu        $v1, 0x48($a0)
/* 50CBEA0 8007C170 48004290 */  lbu        $v0, 0x48($v0)
/* 50CBEA4 8007C174 00000000 */  nop
/* 50CBEA8 8007C178 05006210 */  beq        $v1, $v0, .Llevel_20_8007C190
/* 50CBEAC 8007C17C 00000000 */   nop
/* 50CBEB0 8007C180 C656010C */  jal        func_80055B18
/* 50CBEB4 8007C184 00000000 */   nop
/* 50CBEB8 8007C188 7EF00108 */  j          .Llevel_20_8007C1F8
/* 50CBEBC 8007C18C 00000000 */   nop
.Llevel_20_8007C190:
/* 50CBEC0 8007C190 3C008290 */  lbu        $v0, 0x3C($a0)
/* 50CBEC4 8007C194 00000000 */  nop
/* 50CBEC8 8007C198 06004014 */  bnez       $v0, .Llevel_20_8007C1B4
/* 50CBECC 8007C19C 00000000 */   nop
/* 50CBED0 8007C1A0 46008290 */  lbu        $v0, 0x46($a0)
/* 50CBED4 8007C1A4 00000000 */  nop
/* 50CBED8 8007C1A8 06004224 */  addiu      $v0, $v0, 0x6
/* 50CBEDC 8007C1AC 7EF00108 */  j          .Llevel_20_8007C1F8
/* 50CBEE0 8007C1B0 460082A0 */   sb        $v0, 0x46($a0)
.Llevel_20_8007C1B4:
/* 50CBEE4 8007C1B4 0500A290 */  lbu        $v0, 0x5($a1)
/* 50CBEE8 8007C1B8 0780033C */  lui        $v1, %hi(D_8006C644)
/* 50CBEEC 8007C1BC 44C6638C */  lw         $v1, %lo(D_8006C644)($v1)
/* 50CBEF0 8007C1C0 00000000 */  nop
/* 50CBEF4 8007C1C4 21104300 */  addu       $v0, $v0, $v1
/* 50CBEF8 8007C1C8 C0100200 */  sll        $v0, $v0, 3
/* 50CBEFC 8007C1CC F8014230 */  andi       $v0, $v0, 0x1F8
/* 50CBF00 8007C1D0 0680013C */  lui        $at, %hi(D_80065920)
/* 50CBF04 8007C1D4 21082200 */  addu       $at, $at, $v0
/* 50CBF08 8007C1D8 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 50CBF0C 8007C1DC 00000000 */  nop
/* 50CBF10 8007C1E0 40100300 */  sll        $v0, $v1, 1
/* 50CBF14 8007C1E4 21104300 */  addu       $v0, $v0, $v1
/* 50CBF18 8007C1E8 0400A390 */  lbu        $v1, 0x4($a1)
/* 50CBF1C 8007C1EC 43120200 */  sra        $v0, $v0, 9
/* 50CBF20 8007C1F0 21186200 */  addu       $v1, $v1, $v0
/* 50CBF24 8007C1F4 460083A0 */  sb         $v1, 0x46($a0)
.Llevel_20_8007C1F8:
/* 50CBF28 8007C1F8 1000BF8F */  lw         $ra, 0x10($sp)
/* 50CBF2C 8007C1FC 1800BD27 */  addiu      $sp, $sp, 0x18
/* 50CBF30 8007C200 0800E003 */  jr         $ra
/* 50CBF34 8007C204 00000000 */   nop
.size MobyUpdate_265_level_20, . - MobyUpdate_265_level_20
