.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_atlas_80077D70
/* 96302A0 80077D70 60FFBD27 */  addiu      $sp, $sp, -0xA0
/* 96302A4 80077D74 8400B1AF */  sw         $s1, 0x84($sp)
/* 96302A8 80077D78 2188A000 */  addu       $s1, $a1, $zero
/* 96302AC 80077D7C 9400B5AF */  sw         $s5, 0x94($sp)
/* 96302B0 80077D80 21A8C000 */  addu       $s5, $a2, $zero
/* 96302B4 80077D84 9800B6AF */  sw         $s6, 0x98($sp)
/* 96302B8 80077D88 21B0E000 */  addu       $s6, $a3, $zero
/* 96302BC 80077D8C 8C00B3AF */  sw         $s3, 0x8C($sp)
/* 96302C0 80077D90 12011324 */  addiu      $s3, $zero, 0x112
/* 96302C4 80077D94 9C00BFAF */  sw         $ra, 0x9C($sp)
/* 96302C8 80077D98 9000B4AF */  sw         $s4, 0x90($sp)
/* 96302CC 80077D9C 8800B2AF */  sw         $s2, 0x88($sp)
/* 96302D0 80077DA0 02002012 */  beqz       $s1, .Latlas_80077DAC
/* 96302D4 80077DA4 8000B0AF */   sw        $s0, 0x80($sp)
/* 96302D8 80077DA8 2E001324 */  addiu      $s3, $zero, 0x2E
.Latlas_80077DAC:
/* 96302DC 80077DAC 80101500 */  sll        $v0, $s5, 2
/* 96302E0 80077DB0 0880013C */  lui        $at, %hi(D_atlas_8007AC1C)
/* 96302E4 80077DB4 21082200 */  addu       $at, $at, $v0
/* 96302E8 80077DB8 1CAC258C */  lw         $a1, %lo(D_atlas_8007AC1C)($at)
/* 96302EC 80077DBC DF65010C */  jal        sprintf
/* 96302F0 80077DC0 1800A427 */   addiu     $a0, $sp, 0x18
/* 96302F4 80077DC4 1800A427 */  addiu      $a0, $sp, 0x18
/* 96302F8 80077DC8 37D9010C */  jal        func_atlas_800764DC
/* 96302FC 80077DCC C8000524 */   addiu     $a1, $zero, 0xC8
/* 9630300 80077DD0 21904000 */  addu       $s2, $v0, $zero
/* 9630304 80077DD4 1D004012 */  beqz       $s2, .Latlas_80077E4C
/* 9630308 80077DD8 28001424 */   addiu     $s4, $zero, 0x28
/* 963030C 80077DDC 21204002 */  addu       $a0, $s2, $zero
/* 9630310 80077DE0 37D9010C */  jal        func_atlas_800764DC
/* 9630314 80077DE4 C8000524 */   addiu     $a1, $zero, 0xC8
/* 9630318 80077DE8 21804000 */  addu       $s0, $v0, $zero
/* 963031C 80077DEC 11000012 */  beqz       $s0, .Latlas_80077E34
/* 9630320 80077DF0 21200002 */   addu      $a0, $s0, $zero
/* 9630324 80077DF4 37D9010C */  jal        func_atlas_800764DC
/* 9630328 80077DF8 C8000524 */   addiu     $a1, $zero, 0xC8
/* 963032C 80077DFC 07004010 */  beqz       $v0, .Latlas_80077E1C
/* 9630330 80077E00 00000000 */   nop
/* 9630334 80077E04 17002016 */  bnez       $s1, .Latlas_80077E64
/* 9630338 80077E08 21204000 */   addu      $a0, $v0, $zero
/* 963033C 80077E0C 21286002 */  addu       $a1, $s3, $zero
/* 9630340 80077E10 C3000624 */  addiu      $a2, $zero, 0xC3
/* 9630344 80077E14 8AD8010C */  jal        func_atlas_80076228
/* 9630348 80077E18 01000724 */   addiu     $a3, $zero, 0x1
.Latlas_80077E1C:
/* 963034C 80077E1C 11002016 */  bnez       $s1, .Latlas_80077E64
/* 9630350 80077E20 21200002 */   addu      $a0, $s0, $zero
/* 9630354 80077E24 21286002 */  addu       $a1, $s3, $zero
/* 9630358 80077E28 B8000624 */  addiu      $a2, $zero, 0xB8
/* 963035C 80077E2C 8AD8010C */  jal        func_atlas_80076228
/* 9630360 80077E30 01000724 */   addiu     $a3, $zero, 0x1
.Latlas_80077E34:
/* 9630364 80077E34 0B002016 */  bnez       $s1, .Latlas_80077E64
/* 9630368 80077E38 21204002 */   addu      $a0, $s2, $zero
/* 963036C 80077E3C 21286002 */  addu       $a1, $s3, $zero
/* 9630370 80077E40 85008636 */  ori        $a2, $s4, 0x85
/* 9630374 80077E44 8AD8010C */  jal        func_atlas_80076228
/* 9630378 80077E48 01000724 */   addiu     $a3, $zero, 0x1
.Latlas_80077E4C:
/* 963037C 80077E4C 05002016 */  bnez       $s1, .Latlas_80077E64
/* 9630380 80077E50 1800A427 */   addiu     $a0, $sp, 0x18
/* 9630384 80077E54 21286002 */  addu       $a1, $s3, $zero
/* 9630388 80077E58 7A008626 */  addiu      $a2, $s4, 0x7A
/* 963038C 80077E5C 8AD8010C */  jal        func_atlas_80076228
/* 9630390 80077E60 01000724 */   addiu     $a3, $zero, 0x1
.Latlas_80077E64:
/* 9630394 80077E64 1000B6AF */  sw         $s6, 0x10($sp)
/* 9630398 80077E68 9CFFA426 */  addiu      $a0, $s5, -0x64
/* 963039C 80077E6C 40281100 */  sll        $a1, $s1, 1
/* 96303A0 80077E70 2128B100 */  addu       $a1, $a1, $s1
/* 96303A4 80077E74 80290500 */  sll        $a1, $a1, 6
/* 96303A8 80077E78 00010224 */  addiu      $v0, $zero, 0x100
/* 96303AC 80077E7C 23284500 */  subu       $a1, $v0, $a1
/* 96303B0 80077E80 21308002 */  addu       $a2, $s4, $zero
/* 96303B4 80077E84 5ED7010C */  jal        func_atlas_80075D78
/* 96303B8 80077E88 21382002 */   addu      $a3, $s1, $zero
/* 96303BC 80077E8C 9C00BF8F */  lw         $ra, 0x9C($sp)
/* 96303C0 80077E90 9800B68F */  lw         $s6, 0x98($sp)
/* 96303C4 80077E94 9400B58F */  lw         $s5, 0x94($sp)
/* 96303C8 80077E98 9000B48F */  lw         $s4, 0x90($sp)
/* 96303CC 80077E9C 8C00B38F */  lw         $s3, 0x8C($sp)
/* 96303D0 80077EA0 8800B28F */  lw         $s2, 0x88($sp)
/* 96303D4 80077EA4 8400B18F */  lw         $s1, 0x84($sp)
/* 96303D8 80077EA8 8000B08F */  lw         $s0, 0x80($sp)
/* 96303DC 80077EAC A000BD27 */  addiu      $sp, $sp, 0xA0
/* 96303E0 80077EB0 0800E003 */  jr         $ra
/* 96303E4 80077EB4 00000000 */   nop
.size func_atlas_80077D70, . - func_atlas_80077D70
