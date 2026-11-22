.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_260_level_46
/* 8F4AA0C 800784DC C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 8F4AA10 800784E0 2800B0AF */  sw         $s0, 0x28($sp)
/* 8F4AA14 800784E4 21808000 */  addu       $s0, $a0, $zero
/* 8F4AA18 800784E8 3400BFAF */  sw         $ra, 0x34($sp)
/* 8F4AA1C 800784EC 3000B2AF */  sw         $s2, 0x30($sp)
/* 8F4AA20 800784F0 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 8F4AA24 800784F4 49000292 */  lbu        $v0, 0x49($s0)
/* 8F4AA28 800784F8 0000128E */  lw         $s2, 0x0($s0)
/* 8F4AA2C 800784FC 60004014 */  bnez       $v0, .Llevel_46_80078680
/* 8F4AA30 80078500 00000000 */   nop
/* 8F4AA34 80078504 0400428E */  lw         $v0, 0x4($s2)
/* 8F4AA38 80078508 00000000 */  nop
/* 8F4AA3C 8007850C 53004018 */  blez       $v0, .Llevel_46_8007865C
/* 8F4AA40 80078510 47000524 */   addiu     $a1, $zero, 0x47
/* 8F4AA44 80078514 46000292 */  lbu        $v0, 0x46($s0)
/* 8F4AA48 80078518 00000000 */  nop
/* 8F4AA4C 8007851C 01004224 */  addiu      $v0, $v0, 0x1
/* 8F4AA50 80078520 460002A2 */  sb         $v0, 0x46($s0)
/* 8F4AA54 80078524 1400428E */  lw         $v0, 0x14($s2)
/* 8F4AA58 80078528 00000000 */  nop
/* 8F4AA5C 8007852C FAFF4224 */  addiu      $v0, $v0, -0x6
/* 8F4AA60 80078530 140042AE */  sw         $v0, 0x14($s2)
/* 8F4AA64 80078534 80FF4228 */  slti       $v0, $v0, -0x80
/* 8F4AA68 80078538 02004010 */  beqz       $v0, .Llevel_46_80078544
/* 8F4AA6C 8007853C 80FF0224 */   addiu     $v0, $zero, -0x80
/* 8F4AA70 80078540 140042AE */  sw         $v0, 0x14($s2)
.Llevel_46_80078544:
/* 8F4AA74 80078544 0C00028E */  lw         $v0, 0xC($s0)
/* 8F4AA78 80078548 0C00438E */  lw         $v1, 0xC($s2)
/* 8F4AA7C 8007854C 00000000 */  nop
/* 8F4AA80 80078550 21104300 */  addu       $v0, $v0, $v1
/* 8F4AA84 80078554 0C0002AE */  sw         $v0, 0xC($s0)
/* 8F4AA88 80078558 1000028E */  lw         $v0, 0x10($s0)
/* 8F4AA8C 8007855C 1000438E */  lw         $v1, 0x10($s2)
/* 8F4AA90 80078560 00000000 */  nop
/* 8F4AA94 80078564 21104300 */  addu       $v0, $v0, $v1
/* 8F4AA98 80078568 100002AE */  sw         $v0, 0x10($s0)
/* 8F4AA9C 8007856C 1400028E */  lw         $v0, 0x14($s0)
/* 8F4AAA0 80078570 1400438E */  lw         $v1, 0x14($s2)
/* 8F4AAA4 80078574 00000000 */  nop
/* 8F4AAA8 80078578 21104300 */  addu       $v0, $v0, $v1
/* 8F4AAAC 8007857C 140002AE */  sw         $v0, 0x14($s0)
/* 8F4AAB0 80078580 00044228 */  slti       $v0, $v0, 0x400
/* 8F4AAB4 80078584 44004014 */  bnez       $v0, .Llevel_46_80078698
/* 8F4AAB8 80078588 0C001126 */   addiu     $s1, $s0, 0xC
/* 8F4AABC 8007858C 21202002 */  addu       $a0, $s1, $zero
/* 8F4AAC0 80078590 D668000C */  jal        func_8001A358
/* 8F4AAC4 80078594 00200524 */   addiu     $a1, $zero, 0x2000
/* 8F4AAC8 80078598 A758010C */  jal        func_8005629C
/* 8F4AACC 8007859C 21200002 */   addu      $a0, $s0, $zero
/* 8F4AAD0 800785A0 21202002 */  addu       $a0, $s1, $zero
/* 8F4AAD4 800785A4 6564000C */  jal        func_80019194
/* 8F4AAD8 800785A8 00010524 */   addiu     $a1, $zero, 0x100
/* 8F4AADC 800785AC 26004010 */  beqz       $v0, .Llevel_46_80078648
/* 8F4AAE0 800785B0 21202002 */   addu      $a0, $s1, $zero
/* 8F4AAE4 800785B4 0780103C */  lui        $s0, %hi(D_8007190C)
/* 8F4AAE8 800785B8 0C191026 */  addiu      $s0, $s0, %lo(D_8007190C)
/* 8F4AAEC 800785BC 5E3C010C */  jal        func_8004F178
/* 8F4AAF0 800785C0 21280002 */   addu      $a1, $s0, $zero
/* 8F4AAF4 800785C4 0C001126 */  addiu      $s1, $s0, 0xC
/* 8F4AAF8 800785C8 21202002 */  addu       $a0, $s1, $zero
/* 8F4AAFC 800785CC C13B010C */  jal        func_8004EF04
/* 8F4AB00 800785D0 00100524 */   addiu     $a1, $zero, 0x1000
/* 8F4AB04 800785D4 0C00438E */  lw         $v1, 0xC($s2)
/* 8F4AB08 800785D8 0C00028E */  lw         $v0, 0xC($s0)
/* 8F4AB0C 800785DC 00000000 */  nop
/* 8F4AB10 800785E0 18006200 */  mult       $v1, $v0
/* 8F4AB14 800785E4 1000438E */  lw         $v1, 0x10($s2)
/* 8F4AB18 800785E8 12280000 */  mflo       $a1
/* 8F4AB1C 800785EC 0780023C */  lui        $v0, %hi(D_8007191C)
/* 8F4AB20 800785F0 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 8F4AB24 800785F4 00000000 */  nop
/* 8F4AB28 800785F8 18006200 */  mult       $v1, $v0
/* 8F4AB2C 800785FC 1400438E */  lw         $v1, 0x14($s2)
/* 8F4AB30 80078600 12200000 */  mflo       $a0
/* 8F4AB34 80078604 0780023C */  lui        $v0, %hi(D_80071920)
/* 8F4AB38 80078608 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 8F4AB3C 8007860C 00000000 */  nop
/* 8F4AB40 80078610 18006200 */  mult       $v1, $v0
/* 8F4AB44 80078614 2110A400 */  addu       $v0, $a1, $a0
/* 8F4AB48 80078618 12180000 */  mflo       $v1
/* 8F4AB4C 8007861C 21104300 */  addu       $v0, $v0, $v1
/* 8F4AB50 80078620 C3120200 */  sra        $v0, $v0, 11
/* 8F4AB54 80078624 08004104 */  bgez       $v0, .Llevel_46_80078648
/* 8F4AB58 80078628 21202002 */   addu      $a0, $s1, $zero
/* 8F4AB5C 8007862C 00100524 */  addiu      $a1, $zero, 0x1000
/* 8F4AB60 80078630 233C010C */  jal        func_8004F08C
/* 8F4AB64 80078634 23300200 */   negu      $a2, $v0
/* 8F4AB68 80078638 0C004426 */  addiu      $a0, $s2, 0xC
/* 8F4AB6C 8007863C 21288000 */  addu       $a1, $a0, $zero
/* 8F4AB70 80078640 653C010C */  jal        func_8004F194
/* 8F4AB74 80078644 21302002 */   addu      $a2, $s1, $zero
.Llevel_46_80078648:
/* 8F4AB78 80078648 0400428E */  lw         $v0, 0x4($s2)
/* 8F4AB7C 8007864C 00000000 */  nop
/* 8F4AB80 80078650 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 8F4AB84 80078654 F1E10108 */  j          .Llevel_46_800787C4
/* 8F4AB88 80078658 040042AE */   sw        $v0, 0x4($s2)
.Llevel_46_8007865C:
/* 8F4AB8C 8007865C 0A000424 */  addiu      $a0, $zero, 0xA
/* 8F4AB90 80078660 0C000626 */  addiu      $a2, $s0, 0xC
/* 8F4AB94 80078664 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8F4AB98 80078668 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8F4AB9C 8007866C 00000000 */  nop
/* 8F4ABA0 80078670 09F84000 */  jalr       $v0
/* 8F4ABA4 80078674 21380000 */   addu      $a3, $zero, $zero
/* 8F4ABA8 80078678 A6E10108 */  j          .Llevel_46_80078698
/* 8F4ABAC 8007867C 00000000 */   nop
.Llevel_46_80078680:
/* 8F4ABB0 80078680 0000428E */  lw         $v0, 0x0($s2)
/* 8F4ABB4 80078684 00000000 */  nop
/* 8F4ABB8 80078688 48004290 */  lbu        $v0, 0x48($v0)
/* 8F4ABBC 8007868C 00000000 */  nop
/* 8F4ABC0 80078690 05004010 */  beqz       $v0, .Llevel_46_800786A8
/* 8F4ABC4 80078694 21300000 */   addu      $a2, $zero, $zero
.Llevel_46_80078698:
/* 8F4ABC8 80078698 C656010C */  jal        func_80055B18
/* 8F4ABCC 8007869C 21200002 */   addu      $a0, $s0, $zero
/* 8F4ABD0 800786A0 F1E10108 */  j          .Llevel_46_800787C4
/* 8F4ABD4 800786A4 00000000 */   nop
.Llevel_46_800786A8:
/* 8F4ABD8 800786A8 0780033C */  lui        $v1, %hi(D_8006E020)
/* 8F4ABDC 800786AC 20E0638C */  lw         $v1, %lo(D_8006E020)($v1)
/* 8F4ABE0 800786B0 0C00048E */  lw         $a0, 0xC($s0)
/* 8F4ABE4 800786B4 0780023C */  lui        $v0, %hi(D_8006E024)
/* 8F4ABE8 800786B8 24E0428C */  lw         $v0, %lo(D_8006E024)($v0)
/* 8F4ABEC 800786BC 1000058E */  lw         $a1, 0x10($s0)
/* 8F4ABF0 800786C0 23206400 */  subu       $a0, $v1, $a0
/* 8F4ABF4 800786C4 203A010C */  jal        func_8004E880
/* 8F4ABF8 800786C8 23284500 */   subu      $a1, $v0, $a1
/* 8F4ABFC 800786CC 21204000 */  addu       $a0, $v0, $zero
/* 8F4AC00 800786D0 80004224 */  addiu      $v0, $v0, 0x80
/* 8F4AC04 800786D4 0780033C */  lui        $v1, %hi(D_8006C644)
/* 8F4AC08 800786D8 44C6638C */  lw         $v1, %lo(D_8006C644)($v1)
/* 8F4AC0C 800786DC 0680063C */  lui        $a2, %hi(D_800658A0)
/* 8F4AC10 800786E0 A058C624 */  addiu      $a2, $a2, %lo(D_800658A0)
/* 8F4AC14 800786E4 C0180300 */  sll        $v1, $v1, 3
/* 8F4AC18 800786E8 F8016330 */  andi       $v1, $v1, 0x1F8
/* 8F4AC1C 800786EC 0680013C */  lui        $at, %hi(D_800658A0)
/* 8F4AC20 800786F0 21082300 */  addu       $at, $at, $v1
/* 8F4AC24 800786F4 A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 8F4AC28 800786F8 21284000 */  addu       $a1, $v0, $zero
/* 8F4AC2C 800786FC 001C0300 */  sll        $v1, $v1, 16
/* 8F4AC30 80078700 C31D0300 */  sra        $v1, $v1, 23
/* 8F4AC34 80078704 21186200 */  addu       $v1, $v1, $v0
/* 8F4AC38 80078708 460003A2 */  sb         $v1, 0x46($s0)
/* 8F4AC3C 8007870C 49000392 */  lbu        $v1, 0x49($s0)
/* 8F4AC40 80078710 02000224 */  addiu      $v0, $zero, 0x2
/* 8F4AC44 80078714 02006214 */  bne        $v1, $v0, .Llevel_46_80078720
/* 8F4AC48 80078718 00000000 */   nop
/* 8F4AC4C 8007871C 2120A000 */  addu       $a0, $a1, $zero
.Llevel_46_80078720:
/* 8F4AC50 80078720 1000A0AF */  sw         $zero, 0x10($sp)
/* 8F4AC54 80078724 1400A0AF */  sw         $zero, 0x14($sp)
/* 8F4AC58 80078728 49000392 */  lbu        $v1, 0x49($s0)
/* 8F4AC5C 8007872C 03000224 */  addiu      $v0, $zero, 0x3
/* 8F4AC60 80078730 1D006210 */  beq        $v1, $v0, .Llevel_46_800787A8
/* 8F4AC64 80078734 FF008430 */   andi      $a0, $a0, 0xFF
/* 8F4AC68 80078738 4992053C */  lui        $a1, (0x92492493 >> 16)
/* 8F4AC6C 8007873C 40200400 */  sll        $a0, $a0, 1
/* 8F4AC70 80078740 21108600 */  addu       $v0, $a0, $a2
/* 8F4AC74 80078744 00004394 */  lhu        $v1, 0x0($v0)
/* 8F4AC78 80078748 9324A534 */  ori        $a1, $a1, (0x92492493 & 0xFFFF)
/* 8F4AC7C 8007874C 001C0300 */  sll        $v1, $v1, 16
/* 8F4AC80 80078750 03140300 */  sra        $v0, $v1, 16
/* 8F4AC84 80078754 18004500 */  mult       $v0, $a1
/* 8F4AC88 80078758 C31F0300 */  sra        $v1, $v1, 31
/* 8F4AC8C 8007875C 10400000 */  mfhi       $t0
/* 8F4AC90 80078760 21100201 */  addu       $v0, $t0, $v0
/* 8F4AC94 80078764 03110200 */  sra        $v0, $v0, 4
/* 8F4AC98 80078768 23104300 */  subu       $v0, $v0, $v1
/* 8F4AC9C 8007876C 00140200 */  sll        $v0, $v0, 16
/* 8F4ACA0 80078770 03140200 */  sra        $v0, $v0, 16
/* 8F4ACA4 80078774 1000A2AF */  sw         $v0, 0x10($sp)
/* 8F4ACA8 80078778 0680013C */  lui        $at, %hi(D_80065920)
/* 8F4ACAC 8007877C 21082400 */  addu       $at, $at, $a0
/* 8F4ACB0 80078780 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 8F4ACB4 80078784 00000000 */  nop
/* 8F4ACB8 80078788 23100200 */  negu       $v0, $v0
/* 8F4ACBC 8007878C 18004500 */  mult       $v0, $a1
/* 8F4ACC0 80078790 10400000 */  mfhi       $t0
/* 8F4ACC4 80078794 21180201 */  addu       $v1, $t0, $v0
/* 8F4ACC8 80078798 03190300 */  sra        $v1, $v1, 4
/* 8F4ACCC 8007879C C3170200 */  sra        $v0, $v0, 31
/* 8F4ACD0 800787A0 23186200 */  subu       $v1, $v1, $v0
/* 8F4ACD4 800787A4 1400A3AF */  sw         $v1, 0x14($sp)
.Llevel_46_800787A8:
/* 8F4ACD8 800787A8 0C000426 */  addiu      $a0, $s0, 0xC
/* 8F4ACDC 800787AC 20050224 */  addiu      $v0, $zero, 0x520
/* 8F4ACE0 800787B0 1800A2AF */  sw         $v0, 0x18($sp)
/* 8F4ACE4 800787B4 0000458E */  lw         $a1, 0x0($s2)
/* 8F4ACE8 800787B8 1000A627 */  addiu      $a2, $sp, 0x10
/* 8F4ACEC 800787BC 653C010C */  jal        func_8004F194
/* 8F4ACF0 800787C0 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_46_800787C4:
/* 8F4ACF4 800787C4 3400BF8F */  lw         $ra, 0x34($sp)
/* 8F4ACF8 800787C8 3000B28F */  lw         $s2, 0x30($sp)
/* 8F4ACFC 800787CC 2C00B18F */  lw         $s1, 0x2C($sp)
/* 8F4AD00 800787D0 2800B08F */  lw         $s0, 0x28($sp)
/* 8F4AD04 800787D4 3800BD27 */  addiu      $sp, $sp, 0x38
/* 8F4AD08 800787D8 0800E003 */  jr         $ra
/* 8F4AD0C 800787DC 00000000 */   nop
.size MobyUpdate_260_level_46, . - MobyUpdate_260_level_46
