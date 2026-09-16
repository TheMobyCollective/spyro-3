.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_62_800777E0
/* 66DD10 800777E0 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 66DD14 800777E4 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 66DD18 800777E8 21A88000 */  addu       $s5, $a0, $zero
/* 66DD1C 800777EC 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 66DD20 800777F0 2188A002 */  addu       $s1, $s5, $zero
/* 66DD24 800777F4 3000BFAF */  sw         $ra, 0x30($sp)
/* 66DD28 800777F8 2800B4AF */  sw         $s4, 0x28($sp)
/* 66DD2C 800777FC 2400B3AF */  sw         $s3, 0x24($sp)
/* 66DD30 80077800 2000B2AF */  sw         $s2, 0x20($sp)
/* 66DD34 80077804 1800B0AF */  sw         $s0, 0x18($sp)
/* 66DD38 80077808 0000228E */  lw         $v0, 0x0($s1)
/* 66DD3C 8007780C 04003126 */  addiu      $s1, $s1, 0x4
/* 66DD40 80077810 40100200 */  sll        $v0, $v0, 1
/* 66DD44 80077814 0780013C */  lui        $at, %hi(D_8006EDEC)
/* 66DD48 80077818 ECED22AC */  sw         $v0, %lo(D_8006EDEC)($at)
/* 66DD4C 8007781C 0000238E */  lw         $v1, 0x0($s1)
/* 66DD50 80077820 04003126 */  addiu      $s1, $s1, 0x4
/* 66DD54 80077824 0780013C */  lui        $at, %hi(D_8006EDF0)
/* 66DD58 80077828 F0ED23AC */  sw         $v1, %lo(D_8006EDF0)($at)
/* 66DD5C 8007782C 0000228E */  lw         $v0, 0x0($s1)
/* 66DD60 80077830 04003126 */  addiu      $s1, $s1, 0x4
/* 66DD64 80077834 80180300 */  sll        $v1, $v1, 2
/* 66DD68 80077838 0780013C */  lui        $at, %hi(D_8006EDFC)
/* 66DD6C 8007783C FCED22AC */  sw         $v0, %lo(D_8006EDFC)($at)
/* 66DD70 80077840 0000278E */  lw         $a3, 0x0($s1)
/* 66DD74 80077844 04003126 */  addiu      $s1, $s1, 0x4
/* 66DD78 80077848 0780013C */  lui        $at, %hi(D_8006EE00)
/* 66DD7C 8007784C 00EE27AC */  sw         $a3, %lo(D_8006EE00)($at)
/* 66DD80 80077850 0000248E */  lw         $a0, 0x0($s1)
/* 66DD84 80077854 04003126 */  addiu      $s1, $s1, 0x4
/* 66DD88 80077858 0780013C */  lui        $at, %hi(D_8006EDF4)
/* 66DD8C 8007785C F4ED31AC */  sw         $s1, %lo(D_8006EDF4)($at)
/* 66DD90 80077860 21882302 */  addu       $s1, $s1, $v1
/* 66DD94 80077864 0780013C */  lui        $at, %hi(D_8006EDF8)
/* 66DD98 80077868 F8ED31AC */  sw         $s1, %lo(D_8006EDF8)($at)
/* 66DD9C 8007786C 2110A702 */  addu       $v0, $s5, $a3
/* 66DDA0 80077870 0780013C */  lui        $at, %hi(D_8006EE08)
/* 66DDA4 80077874 08EE22AC */  sw         $v0, %lo(D_8006EE08)($at)
/* 66DDA8 80077878 21104400 */  addu       $v0, $v0, $a0
/* 66DDAC 8007787C 0780013C */  lui        $at, %hi(D_8006EE04)
/* 66DDB0 80077880 04EE24AC */  sw         $a0, %lo(D_8006EE04)($at)
/* 66DDB4 80077884 0780013C */  lui        $at, %hi(D_8006EE0C)
/* 66DDB8 80077888 0CEE22AC */  sw         $v0, %lo(D_8006EE0C)($at)
/* 66DDBC 8007788C 1300A010 */  beqz       $a1, .Lcutscene_62_800778DC
/* 66DDC0 80077890 21882302 */   addu      $s1, $s1, $v1
/* 66DDC4 80077894 0008A526 */  addiu      $a1, $s5, 0x800
/* 66DDC8 80077898 0780023C */  lui        $v0, %hi(D_8006EDF8)
/* 66DDCC 8007789C F8ED428C */  lw         $v0, %lo(D_8006EDF8)($v0)
/* 66DDD0 800778A0 0780043C */  lui        $a0, %hi(D_8006E470)
/* 66DDD4 800778A4 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 66DDD8 800778A8 0780033C */  lui        $v1, %hi(D_8006C58C)
/* 66DDDC 800778AC 8CC5638C */  lw         $v1, %lo(D_8006C58C)($v1)
/* 66DDE0 800778B0 0000468C */  lw         $a2, 0x0($v0)
/* 66DDE4 800778B4 40100300 */  sll        $v0, $v1, 1
/* 66DDE8 800778B8 21104300 */  addu       $v0, $v0, $v1
/* 66DDEC 800778BC C0100200 */  sll        $v0, $v0, 3
/* 66DDF0 800778C0 2130E600 */  addu       $a2, $a3, $a2
/* 66DDF4 800778C4 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 66DDF8 800778C8 21082200 */  addu       $at, $at, $v0
/* 66DDFC 800778CC 18D9278C */  lw         $a3, %lo(D_8006D8D8 + 0x40)($at)
/* 66DE00 800778D0 00F8C624 */  addiu      $a2, $a2, -0x800
/* 66DE04 800778D4 5E41010C */  jal        CDLoadSync
/* 66DE08 800778D8 0008E724 */   addiu     $a3, $a3, 0x800
.Lcutscene_62_800778DC:
/* 66DE0C 800778DC 0000228E */  lw         $v0, 0x0($s1)
/* 66DE10 800778E0 04003126 */  addiu      $s1, $s1, 0x4
/* 66DE14 800778E4 0780103C */  lui        $s0, %hi(D_8006EE2C)
/* 66DE18 800778E8 2CEE1026 */  addiu      $s0, $s0, %lo(D_8006EE2C)
/* 66DE1C 800778EC 0780043C */  lui        $a0, %hi(D_8006EE00)
/* 66DE20 800778F0 00EE848C */  lw         $a0, %lo(D_8006EE00)($a0)
/* 66DE24 800778F4 0780063C */  lui        $a2, %hi(D_8006EDFC)
/* 66DE28 800778F8 FCEDC68C */  lw         $a2, %lo(D_8006EDFC)($a2)
/* 66DE2C 800778FC 2120A402 */  addu       $a0, $s5, $a0
/* 66DE30 80077900 80300600 */  sll        $a2, $a2, 2
/* 66DE34 80077904 23208600 */  subu       $a0, $a0, $a2
/* 66DE38 80077908 2110A202 */  addu       $v0, $s5, $v0
/* 66DE3C 8007790C 0780013C */  lui        $at, %hi(D_8006C550)
/* 66DE40 80077910 50C522AC */  sw         $v0, %lo(D_8006C550)($at)
/* 66DE44 80077914 0780013C */  lui        $at, %hi(D_8006EE10)
/* 66DE48 80077918 10EE24AC */  sw         $a0, %lo(D_8006EE10)($at)
/* 66DE4C 8007791C F539010C */  jal        func_8004E7D4
/* 66DE50 80077920 21280002 */   addu      $a1, $s0, $zero
/* 66DE54 80077924 0780023C */  lui        $v0, %hi(D_8006EDFC)
/* 66DE58 80077928 FCED428C */  lw         $v0, %lo(D_8006EDFC)($v0)
/* 66DE5C 8007792C 00000000 */  nop
/* 66DE60 80077930 40004018 */  blez       $v0, .Lcutscene_62_80077A34
/* 66DE64 80077934 21980000 */   addu      $s3, $zero, $zero
/* 66DE68 80077938 21900000 */  addu       $s2, $zero, $zero
/* 66DE6C 8007793C 21A00002 */  addu       $s4, $s0, $zero
.Lcutscene_62_80077940:
/* 66DE70 80077940 0000228E */  lw         $v0, 0x0($s1)
/* 66DE74 80077944 00000000 */  nop
/* 66DE78 80077948 2120A202 */  addu       $a0, $s5, $v0
/* 66DE7C 8007794C 000084AE */  sw         $a0, 0x0($s4)
/* 66DE80 80077950 0000828C */  lw         $v0, 0x0($a0)
/* 66DE84 80077954 00000000 */  nop
/* 66DE88 80077958 06004104 */  bgez       $v0, .Lcutscene_62_80077974
/* 66DE8C 8007795C 04003126 */   addiu     $s1, $s1, 0x4
/* 66DE90 80077960 21286002 */  addu       $a1, $s3, $zero
/* 66DE94 80077964 E7AB000C */  jal        func_8002AF9C
/* 66DE98 80077968 8080063C */   lui       $a2, (0x80800000 >> 16)
/* 66DE9C 8007796C 6ADE0108 */  j          .Lcutscene_62_800779A8
/* 66DEA0 80077970 21280000 */   addu      $a1, $zero, $zero
.Lcutscene_62_80077974:
/* 66DEA4 80077974 3400828C */  lw         $v0, 0x34($a0)
/* 66DEA8 80077978 00000000 */  nop
/* 66DEAC 8007797C 02004010 */  beqz       $v0, .Lcutscene_62_80077988
/* 66DEB0 80077980 21108200 */   addu      $v0, $a0, $v0
/* 66DEB4 80077984 340082AC */  sw         $v0, 0x34($a0)
.Lcutscene_62_80077988:
/* 66DEB8 80077988 0000838E */  lw         $v1, 0x0($s4)
/* 66DEBC 8007798C 00000000 */  nop
/* 66DEC0 80077990 3800628C */  lw         $v0, 0x38($v1)
/* 66DEC4 80077994 00000000 */  nop
/* 66DEC8 80077998 02004010 */  beqz       $v0, .Lcutscene_62_800779A4
/* 66DECC 8007799C 21106200 */   addu      $v0, $v1, $v0
/* 66DED0 800779A0 380062AC */  sw         $v0, 0x38($v1)
.Lcutscene_62_800779A4:
/* 66DED4 800779A4 21280000 */  addu       $a1, $zero, $zero
.Lcutscene_62_800779A8:
/* 66DED8 800779A8 0780043C */  lui        $a0, %hi(D_8006C550)
/* 66DEDC 800779AC 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 66DEE0 800779B0 00000000 */  nop
/* 66DEE4 800779B4 21204402 */  addu       $a0, $s2, $a0
/* 66DEE8 800779B8 38009084 */  lh         $s0, 0x38($a0)
/* 66DEEC 800779BC E439010C */  jal        func_8004E790
/* 66DEF0 800779C0 58000624 */   addiu     $a2, $zero, 0x58
/* 66DEF4 800779C4 20000224 */  addiu      $v0, $zero, 0x20
/* 66DEF8 800779C8 0780033C */  lui        $v1, %hi(D_8006C550)
/* 66DEFC 800779CC 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 66DF00 800779D0 04009426 */  addiu      $s4, $s4, 0x4
/* 66DF04 800779D4 21184302 */  addu       $v1, $s2, $v1
/* 66DF08 800779D8 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 66DF0C 800779DC 0780043C */  lui        $a0, %hi(D_8006C550)
/* 66DF10 800779E0 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 66DF14 800779E4 40000224 */  addiu      $v0, $zero, 0x40
/* 66DF18 800779E8 360073A4 */  sh         $s3, 0x36($v1)
/* 66DF1C 800779EC 21204402 */  addu       $a0, $s2, $a0
/* 66DF20 800779F0 4E0082A0 */  sb         $v0, 0x4E($a0)
/* 66DF24 800779F4 0780033C */  lui        $v1, %hi(D_8006C550)
/* 66DF28 800779F8 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 66DF2C 800779FC FF000224 */  addiu      $v0, $zero, 0xFF
/* 66DF30 80077A00 21184302 */  addu       $v1, $s2, $v1
/* 66DF34 80077A04 520062A0 */  sb         $v0, 0x52($v1)
/* 66DF38 80077A08 0780023C */  lui        $v0, %hi(D_8006C550)
/* 66DF3C 80077A0C 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 66DF40 80077A10 01007326 */  addiu      $s3, $s3, 0x1
/* 66DF44 80077A14 21104202 */  addu       $v0, $s2, $v0
/* 66DF48 80077A18 380050A4 */  sh         $s0, 0x38($v0)
/* 66DF4C 80077A1C 0780023C */  lui        $v0, %hi(D_8006EDFC)
/* 66DF50 80077A20 FCED428C */  lw         $v0, %lo(D_8006EDFC)($v0)
/* 66DF54 80077A24 00000000 */  nop
/* 66DF58 80077A28 2A106202 */  slt        $v0, $s3, $v0
/* 66DF5C 80077A2C C4FF4014 */  bnez       $v0, .Lcutscene_62_80077940
/* 66DF60 80077A30 58005226 */   addiu     $s2, $s2, 0x58
.Lcutscene_62_80077A34:
/* 66DF64 80077A34 0780033C */  lui        $v1, %hi(D_8006EDFC)
/* 66DF68 80077A38 FCED638C */  lw         $v1, %lo(D_8006EDFC)($v1)
/* 66DF6C 80077A3C 00000000 */  nop
/* 66DF70 80077A40 40100300 */  sll        $v0, $v1, 1
/* 66DF74 80077A44 21104300 */  addu       $v0, $v0, $v1
/* 66DF78 80077A48 80100200 */  sll        $v0, $v0, 2
/* 66DF7C 80077A4C 23104300 */  subu       $v0, $v0, $v1
/* 66DF80 80077A50 0780033C */  lui        $v1, %hi(D_8006C550)
/* 66DF84 80077A54 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 66DF88 80077A58 C0100200 */  sll        $v0, $v0, 3
/* 66DF8C 80077A5C 21104300 */  addu       $v0, $v0, $v1
/* 66DF90 80077A60 FF000324 */  addiu      $v1, $zero, 0xFF
/* 66DF94 80077A64 480043A0 */  sb         $v1, 0x48($v0)
/* 66DF98 80077A68 3000BF8F */  lw         $ra, 0x30($sp)
/* 66DF9C 80077A6C 2C00B58F */  lw         $s5, 0x2C($sp)
/* 66DFA0 80077A70 2800B48F */  lw         $s4, 0x28($sp)
/* 66DFA4 80077A74 2400B38F */  lw         $s3, 0x24($sp)
/* 66DFA8 80077A78 2000B28F */  lw         $s2, 0x20($sp)
/* 66DFAC 80077A7C 1C00B18F */  lw         $s1, 0x1C($sp)
/* 66DFB0 80077A80 1800B08F */  lw         $s0, 0x18($sp)
/* 66DFB4 80077A84 3800BD27 */  addiu      $sp, $sp, 0x38
/* 66DFB8 80077A88 0800E003 */  jr         $ra
/* 66DFBC 80077A8C 00000000 */   nop
.size func_cutscene_62_800777E0, . - func_cutscene_62_800777E0
