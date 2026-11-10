.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_72_level_16
/* 4B9AAF4 800795C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4B9AAF8 800795C8 1000B0AF */  sw         $s0, 0x10($sp)
/* 4B9AAFC 800795CC 21808000 */  addu       $s0, $a0, $zero
/* 4B9AB00 800795D0 1400BFAF */  sw         $ra, 0x14($sp)
/* 4B9AB04 800795D4 1800028E */  lw         $v0, 0x18($s0)
/* 4B9AB08 800795D8 0202033C */  lui        $v1, (0x2020000 >> 16)
/* 4B9AB0C 800795DC 24104300 */  and        $v0, $v0, $v1
/* 4B9AB10 800795E0 08004010 */  beqz       $v0, .Llevel_16_80079604
/* 4B9AB14 800795E4 01000224 */   addiu     $v0, $zero, 0x1
/* 4B9AB18 800795E8 48000392 */  lbu        $v1, 0x48($s0)
/* 4B9AB1C 800795EC 00000000 */  nop
/* 4B9AB20 800795F0 05006210 */  beq        $v1, $v0, .Llevel_16_80079608
/* 4B9AB24 800795F4 01000224 */   addiu     $v0, $zero, 0x1
/* 4B9AB28 800795F8 480002A2 */  sb         $v0, 0x48($s0)
/* 4B9AB2C 800795FC D0D3000C */  jal        func_80034F40
/* 4B9AB30 80079600 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_16_80079604:
/* 4B9AB34 80079604 48000392 */  lbu        $v1, 0x48($s0)
.Llevel_16_80079608:
/* 4B9AB38 80079608 00000000 */  nop
/* 4B9AB3C 8007960C 0C006010 */  beqz       $v1, .Llevel_16_80079640
/* 4B9AB40 80079610 180000AE */   sw        $zero, 0x18($s0)
/* 4B9AB44 80079614 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9AB48 80079618 09006214 */  bne        $v1, $v0, .Llevel_16_80079640
/* 4B9AB4C 8007961C 00000000 */   nop
/* 4B9AB50 80079620 0780023C */  lui        $v0, %hi(D_8006C770)
/* 4B9AB54 80079624 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 4B9AB58 80079628 00000000 */  nop
/* 4B9AB5C 8007962C 04004010 */  beqz       $v0, .Llevel_16_80079640
/* 4B9AB60 80079630 21200002 */   addu      $a0, $s0, $zero
/* 4B9AB64 80079634 480000A2 */  sb         $zero, 0x48($s0)
/* 4B9AB68 80079638 D0D3000C */  jal        func_80034F40
/* 4B9AB6C 8007963C 21280000 */   addu      $a1, $zero, $zero
.Llevel_16_80079640:
/* 4B9AB70 80079640 1400BF8F */  lw         $ra, 0x14($sp)
/* 4B9AB74 80079644 1000B08F */  lw         $s0, 0x10($sp)
/* 4B9AB78 80079648 1800BD27 */  addiu      $sp, $sp, 0x18
/* 4B9AB7C 8007964C 0800E003 */  jr         $ra
/* 4B9AB80 80079650 00000000 */   nop
.size MobyUpdate_72_level_16, . - MobyUpdate_72_level_16
