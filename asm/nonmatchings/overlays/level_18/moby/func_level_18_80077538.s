.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_260_level_18
/* 4EAA268 80077538 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 4EAA26C 8007753C 2800B0AF */  sw         $s0, 0x28($sp)
/* 4EAA270 80077540 21808000 */  addu       $s0, $a0, $zero
/* 4EAA274 80077544 3400BFAF */  sw         $ra, 0x34($sp)
/* 4EAA278 80077548 3000B2AF */  sw         $s2, 0x30($sp)
/* 4EAA27C 8007754C 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 4EAA280 80077550 49000292 */  lbu        $v0, 0x49($s0)
/* 4EAA284 80077554 0000128E */  lw         $s2, 0x0($s0)
/* 4EAA288 80077558 60004014 */  bnez       $v0, .Llevel_18_800776DC
/* 4EAA28C 8007755C 00000000 */   nop
/* 4EAA290 80077560 0400428E */  lw         $v0, 0x4($s2)
/* 4EAA294 80077564 00000000 */  nop
/* 4EAA298 80077568 53004018 */  blez       $v0, .Llevel_18_800776B8
/* 4EAA29C 8007756C 47000524 */   addiu     $a1, $zero, 0x47
/* 4EAA2A0 80077570 46000292 */  lbu        $v0, 0x46($s0)
/* 4EAA2A4 80077574 00000000 */  nop
/* 4EAA2A8 80077578 01004224 */  addiu      $v0, $v0, 0x1
/* 4EAA2AC 8007757C 460002A2 */  sb         $v0, 0x46($s0)
/* 4EAA2B0 80077580 1400428E */  lw         $v0, 0x14($s2)
/* 4EAA2B4 80077584 00000000 */  nop
/* 4EAA2B8 80077588 FAFF4224 */  addiu      $v0, $v0, -0x6
/* 4EAA2BC 8007758C 140042AE */  sw         $v0, 0x14($s2)
/* 4EAA2C0 80077590 80FF4228 */  slti       $v0, $v0, -0x80
/* 4EAA2C4 80077594 02004010 */  beqz       $v0, .Llevel_18_800775A0
/* 4EAA2C8 80077598 80FF0224 */   addiu     $v0, $zero, -0x80
/* 4EAA2CC 8007759C 140042AE */  sw         $v0, 0x14($s2)
.Llevel_18_800775A0:
/* 4EAA2D0 800775A0 0C00028E */  lw         $v0, 0xC($s0)
/* 4EAA2D4 800775A4 0C00438E */  lw         $v1, 0xC($s2)
/* 4EAA2D8 800775A8 00000000 */  nop
/* 4EAA2DC 800775AC 21104300 */  addu       $v0, $v0, $v1
/* 4EAA2E0 800775B0 0C0002AE */  sw         $v0, 0xC($s0)
/* 4EAA2E4 800775B4 1000028E */  lw         $v0, 0x10($s0)
/* 4EAA2E8 800775B8 1000438E */  lw         $v1, 0x10($s2)
/* 4EAA2EC 800775BC 00000000 */  nop
/* 4EAA2F0 800775C0 21104300 */  addu       $v0, $v0, $v1
/* 4EAA2F4 800775C4 100002AE */  sw         $v0, 0x10($s0)
/* 4EAA2F8 800775C8 1400028E */  lw         $v0, 0x14($s0)
/* 4EAA2FC 800775CC 1400438E */  lw         $v1, 0x14($s2)
/* 4EAA300 800775D0 00000000 */  nop
/* 4EAA304 800775D4 21104300 */  addu       $v0, $v0, $v1
/* 4EAA308 800775D8 140002AE */  sw         $v0, 0x14($s0)
/* 4EAA30C 800775DC 00044228 */  slti       $v0, $v0, 0x400
/* 4EAA310 800775E0 44004014 */  bnez       $v0, .Llevel_18_800776F4
/* 4EAA314 800775E4 0C001126 */   addiu     $s1, $s0, 0xC
/* 4EAA318 800775E8 21202002 */  addu       $a0, $s1, $zero
/* 4EAA31C 800775EC D668000C */  jal        func_8001A358
/* 4EAA320 800775F0 00200524 */   addiu     $a1, $zero, 0x2000
/* 4EAA324 800775F4 A758010C */  jal        func_8005629C
/* 4EAA328 800775F8 21200002 */   addu      $a0, $s0, $zero
/* 4EAA32C 800775FC 21202002 */  addu       $a0, $s1, $zero
/* 4EAA330 80077600 6564000C */  jal        func_80019194
/* 4EAA334 80077604 00010524 */   addiu     $a1, $zero, 0x100
/* 4EAA338 80077608 26004010 */  beqz       $v0, .Llevel_18_800776A4
/* 4EAA33C 8007760C 21202002 */   addu      $a0, $s1, $zero
/* 4EAA340 80077610 0780103C */  lui        $s0, %hi(D_8007190C)
/* 4EAA344 80077614 0C191026 */  addiu      $s0, $s0, %lo(D_8007190C)
/* 4EAA348 80077618 5E3C010C */  jal        func_8004F178
/* 4EAA34C 8007761C 21280002 */   addu      $a1, $s0, $zero
/* 4EAA350 80077620 0C001126 */  addiu      $s1, $s0, 0xC
/* 4EAA354 80077624 21202002 */  addu       $a0, $s1, $zero
/* 4EAA358 80077628 C13B010C */  jal        func_8004EF04
/* 4EAA35C 8007762C 00100524 */   addiu     $a1, $zero, 0x1000
/* 4EAA360 80077630 0C00438E */  lw         $v1, 0xC($s2)
/* 4EAA364 80077634 0C00028E */  lw         $v0, 0xC($s0)
/* 4EAA368 80077638 00000000 */  nop
/* 4EAA36C 8007763C 18006200 */  mult       $v1, $v0
/* 4EAA370 80077640 1000438E */  lw         $v1, 0x10($s2)
/* 4EAA374 80077644 12280000 */  mflo       $a1
/* 4EAA378 80077648 0780023C */  lui        $v0, %hi(D_8007191C)
/* 4EAA37C 8007764C 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 4EAA380 80077650 00000000 */  nop
/* 4EAA384 80077654 18006200 */  mult       $v1, $v0
/* 4EAA388 80077658 1400438E */  lw         $v1, 0x14($s2)
/* 4EAA38C 8007765C 12200000 */  mflo       $a0
/* 4EAA390 80077660 0780023C */  lui        $v0, %hi(D_80071920)
/* 4EAA394 80077664 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 4EAA398 80077668 00000000 */  nop
/* 4EAA39C 8007766C 18006200 */  mult       $v1, $v0
/* 4EAA3A0 80077670 2110A400 */  addu       $v0, $a1, $a0
/* 4EAA3A4 80077674 12180000 */  mflo       $v1
/* 4EAA3A8 80077678 21104300 */  addu       $v0, $v0, $v1
/* 4EAA3AC 8007767C C3120200 */  sra        $v0, $v0, 11
/* 4EAA3B0 80077680 08004104 */  bgez       $v0, .Llevel_18_800776A4
/* 4EAA3B4 80077684 21202002 */   addu      $a0, $s1, $zero
/* 4EAA3B8 80077688 00100524 */  addiu      $a1, $zero, 0x1000
/* 4EAA3BC 8007768C 233C010C */  jal        func_8004F08C
/* 4EAA3C0 80077690 23300200 */   negu      $a2, $v0
/* 4EAA3C4 80077694 0C004426 */  addiu      $a0, $s2, 0xC
/* 4EAA3C8 80077698 21288000 */  addu       $a1, $a0, $zero
/* 4EAA3CC 8007769C 653C010C */  jal        func_8004F194
/* 4EAA3D0 800776A0 21302002 */   addu      $a2, $s1, $zero
.Llevel_18_800776A4:
/* 4EAA3D4 800776A4 0400428E */  lw         $v0, 0x4($s2)
/* 4EAA3D8 800776A8 00000000 */  nop
/* 4EAA3DC 800776AC FFFF4224 */  addiu      $v0, $v0, -0x1
/* 4EAA3E0 800776B0 08DE0108 */  j          .Llevel_18_80077820
/* 4EAA3E4 800776B4 040042AE */   sw        $v0, 0x4($s2)
.Llevel_18_800776B8:
/* 4EAA3E8 800776B8 0A000424 */  addiu      $a0, $zero, 0xA
/* 4EAA3EC 800776BC 0C000626 */  addiu      $a2, $s0, 0xC
/* 4EAA3F0 800776C0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 4EAA3F4 800776C4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 4EAA3F8 800776C8 00000000 */  nop
/* 4EAA3FC 800776CC 09F84000 */  jalr       $v0
/* 4EAA400 800776D0 21380000 */   addu      $a3, $zero, $zero
/* 4EAA404 800776D4 BDDD0108 */  j          .Llevel_18_800776F4
/* 4EAA408 800776D8 00000000 */   nop
.Llevel_18_800776DC:
/* 4EAA40C 800776DC 0000428E */  lw         $v0, 0x0($s2)
/* 4EAA410 800776E0 00000000 */  nop
/* 4EAA414 800776E4 48004290 */  lbu        $v0, 0x48($v0)
/* 4EAA418 800776E8 00000000 */  nop
/* 4EAA41C 800776EC 05004010 */  beqz       $v0, .Llevel_18_80077704
/* 4EAA420 800776F0 21300000 */   addu      $a2, $zero, $zero
.Llevel_18_800776F4:
/* 4EAA424 800776F4 C656010C */  jal        func_80055B18
/* 4EAA428 800776F8 21200002 */   addu      $a0, $s0, $zero
/* 4EAA42C 800776FC 08DE0108 */  j          .Llevel_18_80077820
/* 4EAA430 80077700 00000000 */   nop
.Llevel_18_80077704:
/* 4EAA434 80077704 0780033C */  lui        $v1, %hi(D_8006E020)
/* 4EAA438 80077708 20E0638C */  lw         $v1, %lo(D_8006E020)($v1)
/* 4EAA43C 8007770C 0C00048E */  lw         $a0, 0xC($s0)
/* 4EAA440 80077710 0780023C */  lui        $v0, %hi(D_8006E024)
/* 4EAA444 80077714 24E0428C */  lw         $v0, %lo(D_8006E024)($v0)
/* 4EAA448 80077718 1000058E */  lw         $a1, 0x10($s0)
/* 4EAA44C 8007771C 23206400 */  subu       $a0, $v1, $a0
/* 4EAA450 80077720 203A010C */  jal        func_8004E880
/* 4EAA454 80077724 23284500 */   subu      $a1, $v0, $a1
/* 4EAA458 80077728 21204000 */  addu       $a0, $v0, $zero
/* 4EAA45C 8007772C 80004224 */  addiu      $v0, $v0, 0x80
/* 4EAA460 80077730 0780033C */  lui        $v1, %hi(D_8006C644)
/* 4EAA464 80077734 44C6638C */  lw         $v1, %lo(D_8006C644)($v1)
/* 4EAA468 80077738 0680063C */  lui        $a2, %hi(D_800658A0)
/* 4EAA46C 8007773C A058C624 */  addiu      $a2, $a2, %lo(D_800658A0)
/* 4EAA470 80077740 C0180300 */  sll        $v1, $v1, 3
/* 4EAA474 80077744 F8016330 */  andi       $v1, $v1, 0x1F8
/* 4EAA478 80077748 0680013C */  lui        $at, %hi(D_800658A0)
/* 4EAA47C 8007774C 21082300 */  addu       $at, $at, $v1
/* 4EAA480 80077750 A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 4EAA484 80077754 21284000 */  addu       $a1, $v0, $zero
/* 4EAA488 80077758 001C0300 */  sll        $v1, $v1, 16
/* 4EAA48C 8007775C C31D0300 */  sra        $v1, $v1, 23
/* 4EAA490 80077760 21186200 */  addu       $v1, $v1, $v0
/* 4EAA494 80077764 460003A2 */  sb         $v1, 0x46($s0)
/* 4EAA498 80077768 49000392 */  lbu        $v1, 0x49($s0)
/* 4EAA49C 8007776C 02000224 */  addiu      $v0, $zero, 0x2
/* 4EAA4A0 80077770 02006214 */  bne        $v1, $v0, .Llevel_18_8007777C
/* 4EAA4A4 80077774 00000000 */   nop
/* 4EAA4A8 80077778 2120A000 */  addu       $a0, $a1, $zero
.Llevel_18_8007777C:
/* 4EAA4AC 8007777C 1000A0AF */  sw         $zero, 0x10($sp)
/* 4EAA4B0 80077780 1400A0AF */  sw         $zero, 0x14($sp)
/* 4EAA4B4 80077784 49000392 */  lbu        $v1, 0x49($s0)
/* 4EAA4B8 80077788 03000224 */  addiu      $v0, $zero, 0x3
/* 4EAA4BC 8007778C 1D006210 */  beq        $v1, $v0, .Llevel_18_80077804
/* 4EAA4C0 80077790 FF008430 */   andi      $a0, $a0, 0xFF
/* 4EAA4C4 80077794 4992053C */  lui        $a1, (0x92492493 >> 16)
/* 4EAA4C8 80077798 40200400 */  sll        $a0, $a0, 1
/* 4EAA4CC 8007779C 21108600 */  addu       $v0, $a0, $a2
/* 4EAA4D0 800777A0 00004394 */  lhu        $v1, 0x0($v0)
/* 4EAA4D4 800777A4 9324A534 */  ori        $a1, $a1, (0x92492493 & 0xFFFF)
/* 4EAA4D8 800777A8 001C0300 */  sll        $v1, $v1, 16
/* 4EAA4DC 800777AC 03140300 */  sra        $v0, $v1, 16
/* 4EAA4E0 800777B0 18004500 */  mult       $v0, $a1
/* 4EAA4E4 800777B4 C31F0300 */  sra        $v1, $v1, 31
/* 4EAA4E8 800777B8 10400000 */  mfhi       $t0
/* 4EAA4EC 800777BC 21100201 */  addu       $v0, $t0, $v0
/* 4EAA4F0 800777C0 03110200 */  sra        $v0, $v0, 4
/* 4EAA4F4 800777C4 23104300 */  subu       $v0, $v0, $v1
/* 4EAA4F8 800777C8 00140200 */  sll        $v0, $v0, 16
/* 4EAA4FC 800777CC 03140200 */  sra        $v0, $v0, 16
/* 4EAA500 800777D0 1000A2AF */  sw         $v0, 0x10($sp)
/* 4EAA504 800777D4 0680013C */  lui        $at, %hi(D_80065920)
/* 4EAA508 800777D8 21082400 */  addu       $at, $at, $a0
/* 4EAA50C 800777DC 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 4EAA510 800777E0 00000000 */  nop
/* 4EAA514 800777E4 23100200 */  negu       $v0, $v0
/* 4EAA518 800777E8 18004500 */  mult       $v0, $a1
/* 4EAA51C 800777EC 10400000 */  mfhi       $t0
/* 4EAA520 800777F0 21180201 */  addu       $v1, $t0, $v0
/* 4EAA524 800777F4 03190300 */  sra        $v1, $v1, 4
/* 4EAA528 800777F8 C3170200 */  sra        $v0, $v0, 31
/* 4EAA52C 800777FC 23186200 */  subu       $v1, $v1, $v0
/* 4EAA530 80077800 1400A3AF */  sw         $v1, 0x14($sp)
.Llevel_18_80077804:
/* 4EAA534 80077804 0C000426 */  addiu      $a0, $s0, 0xC
/* 4EAA538 80077808 20050224 */  addiu      $v0, $zero, 0x520
/* 4EAA53C 8007780C 1800A2AF */  sw         $v0, 0x18($sp)
/* 4EAA540 80077810 0000458E */  lw         $a1, 0x0($s2)
/* 4EAA544 80077814 1000A627 */  addiu      $a2, $sp, 0x10
/* 4EAA548 80077818 653C010C */  jal        func_8004F194
/* 4EAA54C 8007781C 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_18_80077820:
/* 4EAA550 80077820 3400BF8F */  lw         $ra, 0x34($sp)
/* 4EAA554 80077824 3000B28F */  lw         $s2, 0x30($sp)
/* 4EAA558 80077828 2C00B18F */  lw         $s1, 0x2C($sp)
/* 4EAA55C 8007782C 2800B08F */  lw         $s0, 0x28($sp)
/* 4EAA560 80077830 3800BD27 */  addiu      $sp, $sp, 0x38
/* 4EAA564 80077834 0800E003 */  jr         $ra
/* 4EAA568 80077838 00000000 */   nop
.size MobyUpdate_260_level_18, . - MobyUpdate_260_level_18
