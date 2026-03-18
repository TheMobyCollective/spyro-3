.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_10_80079088
/* 3ADDDB8 80079088 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 3ADDDBC 8007908C 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 3ADDDC0 80079090 21888000 */  addu       $s1, $a0, $zero
/* 3ADDDC4 80079094 4800BFAF */  sw         $ra, 0x48($sp)
/* 3ADDDC8 80079098 4400B3AF */  sw         $s3, 0x44($sp)
/* 3ADDDCC 8007909C 4000B2AF */  sw         $s2, 0x40($sp)
/* 3ADDDD0 800790A0 3800B0AF */  sw         $s0, 0x38($sp)
/* 3ADDDD4 800790A4 0000328E */  lw         $s2, 0x0($s1)
/* 3ADDDD8 800790A8 00000000 */  nop
/* 3ADDDDC 800790AC 0C00428E */  lw         $v0, 0xC($s2)
/* 3ADDDE0 800790B0 00000000 */  nop
/* 3ADDDE4 800790B4 E1004018 */  blez       $v0, .Llevel_10_8007943C
/* 3ADDDE8 800790B8 00000000 */   nop
/* 3ADDDEC 800790BC 4D002292 */  lbu        $v0, 0x4D($s1)
/* 3ADDDF0 800790C0 00000000 */  nop
/* 3ADDDF4 800790C4 DD004010 */  beqz       $v0, .Llevel_10_8007943C
/* 3ADDDF8 800790C8 00000000 */   nop
/* 3ADDDFC 800790CC 49002292 */  lbu        $v0, 0x49($s1)
/* 3ADDE00 800790D0 00000000 */  nop
/* 3ADDE04 800790D4 01004230 */  andi       $v0, $v0, 0x1
/* 3ADDE08 800790D8 09004014 */  bnez       $v0, .Llevel_10_80079100
/* 3ADDE0C 800790DC 00000000 */   nop
/* 3ADDE10 800790E0 1400238E */  lw         $v1, 0x14($s1)
/* 3ADDE14 800790E4 1000428E */  lw         $v0, 0x10($s2)
/* 3ADDE18 800790E8 00000000 */  nop
/* 3ADDE1C 800790EC 2A104300 */  slt        $v0, $v0, $v1
/* 3ADDE20 800790F0 D2004010 */  beqz       $v0, .Llevel_10_8007943C
/* 3ADDE24 800790F4 00000000 */   nop
/* 3ADDE28 800790F8 75E40108 */  j          .Llevel_10_800791D4
/* 3ADDE2C 800790FC 00000000 */   nop
.Llevel_10_80079100:
/* 3ADDE30 80079100 0C002426 */  addiu      $a0, $s1, 0xC
/* 3ADDE34 80079104 6564000C */  jal        func_80019194
/* 3ADDE38 80079108 00010524 */   addiu     $a1, $zero, 0x100
/* 3ADDE3C 8007910C 31004010 */  beqz       $v0, .Llevel_10_800791D4
/* 3ADDE40 80079110 00000000 */   nop
/* 3ADDE44 80079114 0780133C */  lui        $s3, %hi(D_80071918)
/* 3ADDE48 80079118 18197326 */  addiu      $s3, $s3, %lo(D_80071918)
/* 3ADDE4C 8007911C 21206002 */  addu       $a0, $s3, $zero
/* 3ADDE50 80079120 C13B010C */  jal        func_8004EF04
/* 3ADDE54 80079124 00100524 */   addiu     $a1, $zero, 0x1000
/* 3ADDE58 80079128 00004386 */  lh         $v1, 0x0($s2)
/* 3ADDE5C 8007912C 0000628E */  lw         $v0, 0x0($s3)
/* 3ADDE60 80079130 00000000 */  nop
/* 3ADDE64 80079134 18006200 */  mult       $v1, $v0
/* 3ADDE68 80079138 02004386 */  lh         $v1, 0x2($s2)
/* 3ADDE6C 8007913C 12280000 */  mflo       $a1
/* 3ADDE70 80079140 0780023C */  lui        $v0, %hi(D_8007191C)
/* 3ADDE74 80079144 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 3ADDE78 80079148 00000000 */  nop
/* 3ADDE7C 8007914C 18006200 */  mult       $v1, $v0
/* 3ADDE80 80079150 04004386 */  lh         $v1, 0x4($s2)
/* 3ADDE84 80079154 12200000 */  mflo       $a0
/* 3ADDE88 80079158 0780023C */  lui        $v0, %hi(D_80071920)
/* 3ADDE8C 8007915C 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 3ADDE90 80079160 00000000 */  nop
/* 3ADDE94 80079164 18006200 */  mult       $v1, $v0
/* 3ADDE98 80079168 2110A400 */  addu       $v0, $a1, $a0
/* 3ADDE9C 8007916C 12180000 */  mflo       $v1
/* 3ADDEA0 80079170 21104300 */  addu       $v0, $v0, $v1
/* 3ADDEA4 80079174 C3820200 */  sra        $s0, $v0, 11
/* 3ADDEA8 80079178 16000106 */  bgez       $s0, .Llevel_10_800791D4
/* 3ADDEAC 8007917C 21206002 */   addu      $a0, $s3, $zero
/* 3ADDEB0 80079180 00100524 */  addiu      $a1, $zero, 0x1000
/* 3ADDEB4 80079184 43330200 */  sra        $a2, $v0, 13
/* 3ADDEB8 80079188 233C010C */  jal        func_8004F08C
/* 3ADDEBC 8007918C 2330D000 */   subu      $a2, $a2, $s0
/* 3ADDEC0 80079190 0000638E */  lw         $v1, 0x0($s3)
/* 3ADDEC4 80079194 00004296 */  lhu        $v0, 0x0($s2)
/* 3ADDEC8 80079198 00000000 */  nop
/* 3ADDECC 8007919C 21104300 */  addu       $v0, $v0, $v1
/* 3ADDED0 800791A0 000042A6 */  sh         $v0, 0x0($s2)
/* 3ADDED4 800791A4 0780033C */  lui        $v1, %hi(D_8007191C)
/* 3ADDED8 800791A8 1C19638C */  lw         $v1, %lo(D_8007191C)($v1)
/* 3ADDEDC 800791AC 02004296 */  lhu        $v0, 0x2($s2)
/* 3ADDEE0 800791B0 00000000 */  nop
/* 3ADDEE4 800791B4 21104300 */  addu       $v0, $v0, $v1
/* 3ADDEE8 800791B8 020042A6 */  sh         $v0, 0x2($s2)
/* 3ADDEEC 800791BC 0780033C */  lui        $v1, %hi(D_80071920)
/* 3ADDEF0 800791C0 2019638C */  lw         $v1, %lo(D_80071920)($v1)
/* 3ADDEF4 800791C4 04004296 */  lhu        $v0, 0x4($s2)
/* 3ADDEF8 800791C8 00000000 */  nop
/* 3ADDEFC 800791CC 21104300 */  addu       $v0, $v0, $v1
/* 3ADDF00 800791D0 040042A6 */  sh         $v0, 0x4($s2)
.Llevel_10_800791D4:
/* 3ADDF04 800791D4 00004386 */  lh         $v1, 0x0($s2)
/* 3ADDF08 800791D8 0C00228E */  lw         $v0, 0xC($s1)
/* 3ADDF0C 800791DC 00000000 */  nop
/* 3ADDF10 800791E0 21104300 */  addu       $v0, $v0, $v1
/* 3ADDF14 800791E4 0C0022AE */  sw         $v0, 0xC($s1)
/* 3ADDF18 800791E8 02004486 */  lh         $a0, 0x2($s2)
/* 3ADDF1C 800791EC 1000228E */  lw         $v0, 0x10($s1)
/* 3ADDF20 800791F0 49002392 */  lbu        $v1, 0x49($s1)
/* 3ADDF24 800791F4 21104400 */  addu       $v0, $v0, $a0
/* 3ADDF28 800791F8 08006330 */  andi       $v1, $v1, 0x8
/* 3ADDF2C 800791FC 04006010 */  beqz       $v1, .Llevel_10_80079210
/* 3ADDF30 80079200 100022AE */   sw        $v0, 0x10($s1)
/* 3ADDF34 80079204 04004296 */  lhu        $v0, 0x4($s2)
/* 3ADDF38 80079208 8EE40108 */  j          .Llevel_10_80079238
/* 3ADDF3C 8007920C FDFF4224 */   addiu     $v0, $v0, -0x3
.Llevel_10_80079210:
/* 3ADDF40 80079210 36002386 */  lh         $v1, 0x36($s1)
/* 3ADDF44 80079214 2F010224 */  addiu      $v0, $zero, 0x12F
/* 3ADDF48 80079218 04006214 */  bne        $v1, $v0, .Llevel_10_8007922C
/* 3ADDF4C 8007921C 00000000 */   nop
/* 3ADDF50 80079220 04004296 */  lhu        $v0, 0x4($s2)
/* 3ADDF54 80079224 8EE40108 */  j          .Llevel_10_80079238
/* 3ADDF58 80079228 F0FF4224 */   addiu     $v0, $v0, -0x10
.Llevel_10_8007922C:
/* 3ADDF5C 8007922C 04004296 */  lhu        $v0, 0x4($s2)
/* 3ADDF60 80079230 00000000 */  nop
/* 3ADDF64 80079234 FAFF4224 */  addiu      $v0, $v0, -0x6
.Llevel_10_80079238:
/* 3ADDF68 80079238 040042A6 */  sh         $v0, 0x4($s2)
/* 3ADDF6C 8007923C 04004286 */  lh         $v0, 0x4($s2)
/* 3ADDF70 80079240 00000000 */  nop
/* 3ADDF74 80079244 80FF4228 */  slti       $v0, $v0, -0x80
/* 3ADDF78 80079248 02004010 */  beqz       $v0, .Llevel_10_80079254
/* 3ADDF7C 8007924C 80FF0224 */   addiu     $v0, $zero, -0x80
/* 3ADDF80 80079250 040042A6 */  sh         $v0, 0x4($s2)
.Llevel_10_80079254:
/* 3ADDF84 80079254 04004386 */  lh         $v1, 0x4($s2)
/* 3ADDF88 80079258 1400228E */  lw         $v0, 0x14($s1)
/* 3ADDF8C 8007925C 00000000 */  nop
/* 3ADDF90 80079260 21104300 */  addu       $v0, $v0, $v1
/* 3ADDF94 80079264 140022AE */  sw         $v0, 0x14($s1)
/* 3ADDF98 80079268 44002292 */  lbu        $v0, 0x44($s1)
/* 3ADDF9C 8007926C 06004392 */  lbu        $v1, 0x6($s2)
/* 3ADDFA0 80079270 00000000 */  nop
/* 3ADDFA4 80079274 21104300 */  addu       $v0, $v0, $v1
/* 3ADDFA8 80079278 440022A2 */  sb         $v0, 0x44($s1)
/* 3ADDFAC 8007927C 45002292 */  lbu        $v0, 0x45($s1)
/* 3ADDFB0 80079280 08004392 */  lbu        $v1, 0x8($s2)
/* 3ADDFB4 80079284 00000000 */  nop
/* 3ADDFB8 80079288 21104300 */  addu       $v0, $v0, $v1
/* 3ADDFBC 8007928C 450022A2 */  sb         $v0, 0x45($s1)
/* 3ADDFC0 80079290 46002292 */  lbu        $v0, 0x46($s1)
/* 3ADDFC4 80079294 0A004492 */  lbu        $a0, 0xA($s2)
/* 3ADDFC8 80079298 49002392 */  lbu        $v1, 0x49($s1)
/* 3ADDFCC 8007929C 21104400 */  addu       $v0, $v0, $a0
/* 3ADDFD0 800792A0 02006330 */  andi       $v1, $v1, 0x2
/* 3ADDFD4 800792A4 18006010 */  beqz       $v1, .Llevel_10_80079308
/* 3ADDFD8 800792A8 460022A2 */   sb        $v0, 0x46($s1)
/* 3ADDFDC 800792AC 0C00428E */  lw         $v0, 0xC($s2)
/* 3ADDFE0 800792B0 00000000 */  nop
/* 3ADDFE4 800792B4 03004230 */  andi       $v0, $v0, 0x3
/* 3ADDFE8 800792B8 13004014 */  bnez       $v0, .Llevel_10_80079308
/* 3ADDFEC 800792BC 00000000 */   nop
/* 3ADDFF0 800792C0 9171010C */  jal        rand
/* 3ADDFF4 800792C4 00000000 */   nop
/* 3ADDFF8 800792C8 03004230 */  andi       $v0, $v0, 0x3
/* 3ADDFFC 800792CC 9171010C */  jal        rand
/* 3ADE000 800792D0 1000A2AF */   sw        $v0, 0x10($sp)
/* 3ADE004 800792D4 01000424 */  addiu      $a0, $zero, 0x1
/* 3ADE008 800792D8 01000524 */  addiu      $a1, $zero, 0x1
/* 3ADE00C 800792DC 0C002626 */  addiu      $a2, $s1, 0xC
/* 3ADE010 800792E0 1000A727 */  addiu      $a3, $sp, 0x10
/* 3ADE014 800792E4 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 3ADE018 800792E8 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 3ADE01C 800792EC 03004230 */  andi       $v0, $v0, 0x3
/* 3ADE020 800792F0 1400A2AF */  sw         $v0, 0x14($sp)
/* 3ADE024 800792F4 14000224 */  addiu      $v0, $zero, 0x14
/* 3ADE028 800792F8 09F86000 */  jalr       $v1
/* 3ADE02C 800792FC 1800A2AF */   sw        $v0, 0x18($sp)
/* 3ADE030 80079300 0AE50108 */  j          .Llevel_10_80079428
/* 3ADE034 80079304 00000000 */   nop
.Llevel_10_80079308:
/* 3ADE038 80079308 49002392 */  lbu        $v1, 0x49($s1)
/* 3ADE03C 8007930C 00000000 */  nop
/* 3ADE040 80079310 04006230 */  andi       $v0, $v1, 0x4
/* 3ADE044 80079314 27004010 */  beqz       $v0, .Llevel_10_800793B4
/* 3ADE048 80079318 01000224 */   addiu     $v0, $zero, 0x1
/* 3ADE04C 8007931C 42004010 */  beqz       $v0, .Llevel_10_80079428
/* 3ADE050 80079320 21800000 */   addu      $s0, $zero, $zero
/* 3ADE054 80079324 40001324 */  addiu      $s3, $zero, 0x40
.Llevel_10_80079328:
/* 3ADE058 80079328 9171010C */  jal        rand
/* 3ADE05C 8007932C 01001026 */   addiu     $s0, $s0, 0x1
/* 3ADE060 80079330 7F004230 */  andi       $v0, $v0, 0x7F
/* 3ADE064 80079334 23106202 */  subu       $v0, $s3, $v0
/* 3ADE068 80079338 9171010C */  jal        rand
/* 3ADE06C 8007933C 1000A2AF */   sw        $v0, 0x10($sp)
/* 3ADE070 80079340 7F004230 */  andi       $v0, $v0, 0x7F
/* 3ADE074 80079344 23106202 */  subu       $v0, $s3, $v0
/* 3ADE078 80079348 9171010C */  jal        rand
/* 3ADE07C 8007934C 1400A2AF */   sw        $v0, 0x14($sp)
/* 3ADE080 80079350 1000A427 */  addiu      $a0, $sp, 0x10
/* 3ADE084 80079354 21288000 */  addu       $a1, $a0, $zero
/* 3ADE088 80079358 0C002626 */  addiu      $a2, $s1, 0xC
/* 3ADE08C 8007935C 7F004230 */  andi       $v0, $v0, 0x7F
/* 3ADE090 80079360 23106202 */  subu       $v0, $s3, $v0
/* 3ADE094 80079364 653C010C */  jal        func_8004F194
/* 3ADE098 80079368 1800A2AF */   sw        $v0, 0x18($sp)
/* 3ADE09C 8007936C 01000424 */  addiu      $a0, $zero, 0x1
/* 3ADE0A0 80079370 42000524 */  addiu      $a1, $zero, 0x42
/* 3ADE0A4 80079374 1000A627 */  addiu      $a2, $sp, 0x10
/* 3ADE0A8 80079378 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 3ADE0AC 8007937C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 3ADE0B0 80079380 00000000 */  nop
/* 3ADE0B4 80079384 09F84000 */  jalr       $v0
/* 3ADE0B8 80079388 01000724 */   addiu     $a3, $zero, 0x1
/* 3ADE0BC 8007938C 49002292 */  lbu        $v0, 0x49($s1)
/* 3ADE0C0 80079390 00000000 */  nop
/* 3ADE0C4 80079394 01004230 */  andi       $v0, $v0, 0x1
/* 3ADE0C8 80079398 40100200 */  sll        $v0, $v0, 1
/* 3ADE0CC 8007939C 01004224 */  addiu      $v0, $v0, 0x1
/* 3ADE0D0 800793A0 2A100202 */  slt        $v0, $s0, $v0
/* 3ADE0D4 800793A4 20004010 */  beqz       $v0, .Llevel_10_80079428
/* 3ADE0D8 800793A8 00000000 */   nop
/* 3ADE0DC 800793AC CAE40108 */  j          .Llevel_10_80079328
/* 3ADE0E0 800793B0 00000000 */   nop
.Llevel_10_800793B4:
/* 3ADE0E4 800793B4 08006230 */  andi       $v0, $v1, 0x8
/* 3ADE0E8 800793B8 1B004010 */  beqz       $v0, .Llevel_10_80079428
/* 3ADE0EC 800793BC 00000000 */   nop
/* 3ADE0F0 800793C0 0C00428E */  lw         $v0, 0xC($s2)
/* 3ADE0F4 800793C4 00000000 */  nop
/* 3ADE0F8 800793C8 07004230 */  andi       $v0, $v0, 0x7
/* 3ADE0FC 800793CC 16004014 */  bnez       $v0, .Llevel_10_80079428
/* 3ADE100 800793D0 00000000 */   nop
/* 3ADE104 800793D4 9171010C */  jal        rand
/* 3ADE108 800793D8 08001024 */   addiu     $s0, $zero, 0x8
/* 3ADE10C 800793DC 0F004230 */  andi       $v0, $v0, 0xF
/* 3ADE110 800793E0 23100202 */  subu       $v0, $s0, $v0
/* 3ADE114 800793E4 9171010C */  jal        rand
/* 3ADE118 800793E8 1000A2AF */   sw        $v0, 0x10($sp)
/* 3ADE11C 800793EC 0F004230 */  andi       $v0, $v0, 0xF
/* 3ADE120 800793F0 23800202 */  subu       $s0, $s0, $v0
/* 3ADE124 800793F4 9171010C */  jal        rand
/* 3ADE128 800793F8 1400B0AF */   sw        $s0, 0x14($sp)
/* 3ADE12C 800793FC 01000424 */  addiu      $a0, $zero, 0x1
/* 3ADE130 80079400 27000524 */  addiu      $a1, $zero, 0x27
/* 3ADE134 80079404 0C002626 */  addiu      $a2, $s1, 0xC
/* 3ADE138 80079408 1000A727 */  addiu      $a3, $sp, 0x10
/* 3ADE13C 8007940C 07004230 */  andi       $v0, $v0, 0x7
/* 3ADE140 80079410 04000324 */  addiu      $v1, $zero, 0x4
/* 3ADE144 80079414 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 3ADE148 80079418 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 3ADE14C 8007941C 23186200 */  subu       $v1, $v1, $v0
/* 3ADE150 80079420 09F80001 */  jalr       $t0
/* 3ADE154 80079424 1800A3AF */   sw        $v1, 0x18($sp)
.Llevel_10_80079428:
/* 3ADE158 80079428 0C00428E */  lw         $v0, 0xC($s2)
/* 3ADE15C 8007942C 00000000 */  nop
/* 3ADE160 80079430 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 3ADE164 80079434 26E50108 */  j          .Llevel_10_80079498
/* 3ADE168 80079438 0C0042AE */   sw        $v0, 0xC($s2)
.Llevel_10_8007943C:
/* 3ADE16C 8007943C 49002392 */  lbu        $v1, 0x49($s1)
/* 3ADE170 80079440 00000000 */  nop
/* 3ADE174 80079444 01006230 */  andi       $v0, $v1, 0x1
/* 3ADE178 80079448 11004010 */  beqz       $v0, .Llevel_10_80079490
/* 3ADE17C 8007944C 10006230 */   andi      $v0, $v1, 0x10
/* 3ADE180 80079450 07004010 */  beqz       $v0, .Llevel_10_80079470
/* 3ADE184 80079454 0F000524 */   addiu     $a1, $zero, 0xF
/* 3ADE188 80079458 08000424 */  addiu      $a0, $zero, 0x8
/* 3ADE18C 8007945C 0C002626 */  addiu      $a2, $s1, 0xC
/* 3ADE190 80079460 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 3ADE194 80079464 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 3ADE198 80079468 22E50108 */  j          .Llevel_10_80079488
/* 3ADE19C 8007946C 21380000 */   addu      $a3, $zero, $zero
.Llevel_10_80079470:
/* 3ADE1A0 80079470 08000424 */  addiu      $a0, $zero, 0x8
/* 3ADE1A4 80079474 46000524 */  addiu      $a1, $zero, 0x46
/* 3ADE1A8 80079478 0C002626 */  addiu      $a2, $s1, 0xC
/* 3ADE1AC 8007947C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 3ADE1B0 80079480 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 3ADE1B4 80079484 10000724 */  addiu      $a3, $zero, 0x10
.Llevel_10_80079488:
/* 3ADE1B8 80079488 09F84000 */  jalr       $v0
/* 3ADE1BC 8007948C 00000000 */   nop
.Llevel_10_80079490:
/* 3ADE1C0 80079490 C656010C */  jal        func_80055B18
/* 3ADE1C4 80079494 21202002 */   addu      $a0, $s1, $zero
.Llevel_10_80079498:
/* 3ADE1C8 80079498 4800BF8F */  lw         $ra, 0x48($sp)
/* 3ADE1CC 8007949C 4400B38F */  lw         $s3, 0x44($sp)
/* 3ADE1D0 800794A0 4000B28F */  lw         $s2, 0x40($sp)
/* 3ADE1D4 800794A4 3C00B18F */  lw         $s1, 0x3C($sp)
/* 3ADE1D8 800794A8 3800B08F */  lw         $s0, 0x38($sp)
/* 3ADE1DC 800794AC 5000BD27 */  addiu      $sp, $sp, 0x50
/* 3ADE1E0 800794B0 0800E003 */  jr         $ra
/* 3ADE1E4 800794B4 00000000 */   nop
.size func_level_10_80079088, . - func_level_10_80079088
