.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_atlas_80077830
/* 962FD60 80077830 80FFBD27 */  addiu      $sp, $sp, -0x80
/* 962FD64 80077834 6C00B5AF */  sw         $s5, 0x6C($sp)
/* 962FD68 80077838 12011524 */  addiu      $s5, $zero, 0x112
/* 962FD6C 8007783C 7C00BFAF */  sw         $ra, 0x7C($sp)
/* 962FD70 80077840 7800BEAF */  sw         $fp, 0x78($sp)
/* 962FD74 80077844 7400B7AF */  sw         $s7, 0x74($sp)
/* 962FD78 80077848 7000B6AF */  sw         $s6, 0x70($sp)
/* 962FD7C 8007784C 6800B4AF */  sw         $s4, 0x68($sp)
/* 962FD80 80077850 6400B3AF */  sw         $s3, 0x64($sp)
/* 962FD84 80077854 6000B2AF */  sw         $s2, 0x60($sp)
/* 962FD88 80077858 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 962FD8C 8007785C 5800B0AF */  sw         $s0, 0x58($sp)
/* 962FD90 80077860 0200A010 */  beqz       $a1, .Latlas_8007786C
/* 962FD94 80077864 4800A7AF */   sw        $a3, 0x48($sp)
/* 962FD98 80077868 2E001524 */  addiu      $s5, $zero, 0x2E
.Latlas_8007786C:
/* 962FD9C 8007786C 28001224 */  addiu      $s2, $zero, 0x28
/* 962FDA0 80077870 01001724 */  addiu      $s7, $zero, 0x1
/* 962FDA4 80077874 0680013C */  lui        $at, %hi(D_80066FCC)
/* 962FDA8 80077878 21082600 */  addu       $at, $at, $a2
/* 962FDAC 8007787C CC6F3E90 */  lbu        $fp, %lo(D_80066FCC)($at)
/* 962FDB0 80077880 0880033C */  lui        $v1, %hi(D_atlas_8007B0C0)
/* 962FDB4 80077884 C0B06324 */  addiu      $v1, $v1, %lo(D_atlas_8007B0C0)
/* 962FDB8 80077888 40101E00 */  sll        $v0, $fp, 1
/* 962FDBC 8007788C 21105E00 */  addu       $v0, $v0, $fp
/* 962FDC0 80077890 40B00200 */  sll        $s6, $v0, 1
/* 962FDC4 80077894 2118C302 */  addu       $v1, $s6, $v1
/* 962FDC8 80077898 5000A3AF */  sw         $v1, 0x50($sp)
/* 962FDCC 8007789C 5000B38F */  lw         $s3, 0x50($sp)
.Latlas_800778A0:
/* 962FDD0 800778A0 00000000 */  nop
/* 962FDD4 800778A4 00006592 */  lbu        $a1, 0x0($s3)
/* 962FDD8 800778A8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 962FDDC 800778AC 5900A210 */  beq        $a1, $v0, .Latlas_80077A14
/* 962FDE0 800778B0 00000000 */   nop
/* 962FDE4 800778B4 0780013C */  lui        $at, %hi(D_80070300)
/* 962FDE8 800778B8 21083E00 */  addu       $at, $at, $fp
/* 962FDEC 800778BC 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 962FDF0 800778C0 00000000 */  nop
/* 962FDF4 800778C4 0710A200 */  srav       $v0, $v0, $a1
/* 962FDF8 800778C8 01004230 */  andi       $v0, $v0, 0x1
/* 962FDFC 800778CC 1D004010 */  beqz       $v0, .Latlas_80077944
/* 962FE00 800778D0 4992023C */   lui       $v0, (0x92492493 >> 16)
/* 962FE04 800778D4 0880043C */  lui        $a0, %hi(D_atlas_8007AE00)
/* 962FE08 800778D8 00AE848C */  lw         $a0, %lo(D_atlas_8007AE00)($a0)
/* 962FE0C 800778DC 93244234 */  ori        $v0, $v0, (0x92492493 & 0xFFFF)
/* 962FE10 800778E0 18008200 */  mult       $a0, $v0
/* 962FE14 800778E4 C31F0400 */  sra        $v1, $a0, 31
/* 962FE18 800778E8 10400000 */  mfhi       $t0
/* 962FE1C 800778EC 21100401 */  addu       $v0, $t0, $a0
/* 962FE20 800778F0 C3100200 */  sra        $v0, $v0, 3
/* 962FE24 800778F4 23804300 */  subu       $s0, $v0, $v1
/* 962FE28 800778F8 C0101000 */  sll        $v0, $s0, 3
/* 962FE2C 800778FC 23105000 */  subu       $v0, $v0, $s0
/* 962FE30 80077900 40100200 */  sll        $v0, $v0, 1
/* 962FE34 80077904 23808200 */  subu       $s0, $a0, $v0
/* 962FE38 80077908 0800022A */  slti       $v0, $s0, 0x8
/* 962FE3C 8007790C 03004014 */  bnez       $v0, .Latlas_8007791C
/* 962FE40 80077910 8000143C */   lui       $s4, (0x808080 >> 16)
/* 962FE44 80077914 0E000224 */  addiu      $v0, $zero, 0xE
/* 962FE48 80077918 23805000 */  subu       $s0, $v0, $s0
.Latlas_8007791C:
/* 962FE4C 8007791C 80809436 */  ori        $s4, $s4, (0x808080 & 0xFFFF)
/* 962FE50 80077920 0D00113C */  lui        $s1, (0xD8CCC >> 16)
/* 962FE54 80077924 2110C502 */  addu       $v0, $s6, $a1
/* 962FE58 80077928 80100200 */  sll        $v0, $v0, 2
/* 962FE5C 8007792C 0880083C */  lui        $t0, %hi(D_atlas_8007AA34)
/* 962FE60 80077930 34AA0825 */  addiu      $t0, $t0, %lo(D_atlas_8007AA34)
/* 962FE64 80077934 21104800 */  addu       $v0, $v0, $t0
/* 962FE68 80077938 0000458C */  lw         $a1, 0x0($v0)
/* 962FE6C 8007793C 62DE0108 */  j          .Latlas_80077988
/* 962FE70 80077940 CC8C3136 */   ori       $s1, $s1, (0xD8CCC & 0xFFFF)
.Latlas_80077944:
/* 962FE74 80077944 21800000 */  addu       $s0, $zero, $zero
/* 962FE78 80077948 6000143C */  lui        $s4, (0x606060 >> 16)
/* 962FE7C 8007794C 60609436 */  ori        $s4, $s4, (0x606060 & 0xFFFF)
/* 962FE80 80077950 7800113C */  lui        $s1, (0x78898C >> 16)
/* 962FE84 80077954 0A00E012 */  beqz       $s7, .Latlas_80077980
/* 962FE88 80077958 8C893136 */   ori       $s1, $s1, (0x78898C & 0xFFFF)
/* 962FE8C 8007795C 1000A427 */  addiu      $a0, $sp, 0x10
/* 962FE90 80077960 2110C502 */  addu       $v0, $s6, $a1
/* 962FE94 80077964 80100200 */  sll        $v0, $v0, 2
/* 962FE98 80077968 0880083C */  lui        $t0, %hi(D_atlas_8007AA34)
/* 962FE9C 8007796C 34AA0825 */  addiu      $t0, $t0, %lo(D_atlas_8007AA34)
/* 962FEA0 80077970 21104800 */  addu       $v0, $v0, $t0
/* 962FEA4 80077974 0000458C */  lw         $a1, 0x0($v0)
/* 962FEA8 80077978 63DE0108 */  j          .Latlas_8007798C
/* 962FEAC 8007797C 21B80000 */   addu      $s7, $zero, $zero
.Latlas_80077980:
/* 962FEB0 80077980 0880053C */  lui        $a1, %hi(D_atlas_8007AA30)
/* 962FEB4 80077984 30AAA58C */  lw         $a1, %lo(D_atlas_8007AA30)($a1)
.Latlas_80077988:
/* 962FEB8 80077988 1000A427 */  addiu      $a0, $sp, 0x10
.Latlas_8007798C:
/* 962FEBC 8007798C 7793010C */  jal        strcpy
/* 962FEC0 80077990 00000000 */   nop
/* 962FEC4 80077994 2128A002 */  addu       $a1, $s5, $zero
/* 962FEC8 80077998 21304002 */  addu       $a2, $s2, $zero
/* 962FECC 8007799C C0201000 */  sll        $a0, $s0, 3
/* 962FED0 800779A0 30018424 */  addiu      $a0, $a0, 0x130
/* 962FED4 800779A4 0780023C */  lui        $v0, %hi(D_80070108)
/* 962FED8 800779A8 0801428C */  lw         $v0, %lo(D_80070108)($v0)
/* 962FEDC 800779AC 4800A78F */  lw         $a3, 0x48($sp)
/* 962FEE0 800779B0 4CA3000C */  jal        func_80028D30
/* 962FEE4 800779B4 21204400 */   addu      $a0, $v0, $a0
/* 962FEE8 800779B8 1000A427 */  addiu      $a0, $sp, 0x10
/* 962FEEC 800779BC AA000524 */  addiu      $a1, $zero, 0xAA
/* 962FEF0 800779C0 0400438C */  lw         $v1, 0x4($v0)
/* 962FEF4 800779C4 00FF063C */  lui        $a2, (0xFF000000 >> 16)
/* 962FEF8 800779C8 24186600 */  and        $v1, $v1, $a2
/* 962FEFC 800779CC 25187400 */  or         $v1, $v1, $s4
/* 962FF00 800779D0 37D9010C */  jal        func_atlas_800764DC
/* 962FF04 800779D4 040043AC */   sw        $v1, 0x4($v0)
/* 962FF08 800779D8 07004104 */  bgez       $v0, .Latlas_800779F8
/* 962FF0C 800779DC 21204000 */   addu      $a0, $v0, $zero
/* 962FF10 800779E0 2000A526 */  addiu      $a1, $s5, 0x20
/* 962FF14 800779E4 0C004626 */  addiu      $a2, $s2, 0xC
/* 962FF18 800779E8 8AD8010C */  jal        func_atlas_80076228
/* 962FF1C 800779EC 21382002 */   addu      $a3, $s1, $zero
/* 962FF20 800779F0 7FDE0108 */  j          .Latlas_800779FC
/* 962FF24 800779F4 21100000 */   addu      $v0, $zero, $zero
.Latlas_800779F8:
/* 962FF28 800779F8 06000224 */  addiu      $v0, $zero, 0x6
.Latlas_800779FC:
/* 962FF2C 800779FC 1000A427 */  addiu      $a0, $sp, 0x10
/* 962FF30 80077A00 2000A526 */  addiu      $a1, $s5, 0x20
/* 962FF34 80077A04 21304202 */  addu       $a2, $s2, $v0
/* 962FF38 80077A08 8AD8010C */  jal        func_atlas_80076228
/* 962FF3C 80077A0C 21382002 */   addu      $a3, $s1, $zero
/* 962FF40 80077A10 1C005226 */  addiu      $s2, $s2, 0x1C
.Latlas_80077A14:
/* 962FF44 80077A14 5000A88F */  lw         $t0, 0x50($sp)
/* 962FF48 80077A18 01007326 */  addiu      $s3, $s3, 0x1
/* 962FF4C 80077A1C 06000225 */  addiu      $v0, $t0, 0x6
/* 962FF50 80077A20 2A106202 */  slt        $v0, $s3, $v0
/* 962FF54 80077A24 9EFF4014 */  bnez       $v0, .Latlas_800778A0
/* 962FF58 80077A28 00000000 */   nop
/* 962FF5C 80077A2C 7C00BF8F */  lw         $ra, 0x7C($sp)
/* 962FF60 80077A30 7800BE8F */  lw         $fp, 0x78($sp)
/* 962FF64 80077A34 7400B78F */  lw         $s7, 0x74($sp)
/* 962FF68 80077A38 7000B68F */  lw         $s6, 0x70($sp)
/* 962FF6C 80077A3C 6C00B58F */  lw         $s5, 0x6C($sp)
/* 962FF70 80077A40 6800B48F */  lw         $s4, 0x68($sp)
/* 962FF74 80077A44 6400B38F */  lw         $s3, 0x64($sp)
/* 962FF78 80077A48 6000B28F */  lw         $s2, 0x60($sp)
/* 962FF7C 80077A4C 5C00B18F */  lw         $s1, 0x5C($sp)
/* 962FF80 80077A50 5800B08F */  lw         $s0, 0x58($sp)
/* 962FF84 80077A54 8000BD27 */  addiu      $sp, $sp, 0x80
/* 962FF88 80077A58 0800E003 */  jr         $ra
/* 962FF8C 80077A5C 00000000 */   nop
.size func_atlas_80077830, . - func_atlas_80077830
