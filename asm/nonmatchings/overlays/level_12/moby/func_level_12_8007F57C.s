.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_12_8007F57C
/* 416C2AC 8007F57C 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 416C2B0 8007F580 7000B4AF */  sw         $s4, 0x70($sp)
/* 416C2B4 8007F584 21A08000 */  addu       $s4, $a0, $zero
/* 416C2B8 8007F588 1000A427 */  addiu      $a0, $sp, 0x10
/* 416C2BC 8007F58C 0C008526 */  addiu      $a1, $s4, 0xC
/* 416C2C0 8007F590 7400BFAF */  sw         $ra, 0x74($sp)
/* 416C2C4 8007F594 6C00B3AF */  sw         $s3, 0x6C($sp)
/* 416C2C8 8007F598 6800B2AF */  sw         $s2, 0x68($sp)
/* 416C2CC 8007F59C 6400B1AF */  sw         $s1, 0x64($sp)
/* 416C2D0 8007F5A0 5E3C010C */  jal        func_8004F178
/* 416C2D4 8007F5A4 6000B0AF */   sw        $s0, 0x60($sp)
/* 416C2D8 8007F5A8 21980000 */  addu       $s3, $zero, $zero
/* 416C2DC 8007F5AC 4000B227 */  addiu      $s2, $sp, 0x40
/* 416C2E0 8007F5B0 2000B127 */  addiu      $s1, $sp, 0x20
/* 416C2E4 8007F5B4 1800A28F */  lw         $v0, 0x18($sp)
/* 416C2E8 8007F5B8 3000B027 */  addiu      $s0, $sp, 0x30
/* 416C2EC 8007F5BC E8034224 */  addiu      $v0, $v0, 0x3E8
/* 416C2F0 8007F5C0 1800A2AF */  sw         $v0, 0x18($sp)
/* 416C2F4 8007F5C4 21200000 */  addu       $a0, $zero, $zero
.Llevel_12_8007F5C8:
/* 416C2F8 8007F5C8 1C000524 */  addiu      $a1, $zero, 0x1C
/* 416C2FC 8007F5CC F7D8000C */  jal        func_800363DC
/* 416C300 8007F5D0 5800A0A3 */   sb        $zero, 0x58($sp)
/* 416C304 8007F5D4 40004224 */  addiu      $v0, $v0, 0x40
/* 416C308 8007F5D8 9171010C */  jal        rand
/* 416C30C 8007F5DC 5900A2A3 */   sb        $v0, 0x59($sp)
/* 416C310 8007F5E0 5800A427 */  addiu      $a0, $sp, 0x58
/* 416C314 8007F5E4 21284002 */  addu       $a1, $s2, $zero
/* 416C318 8007F5E8 21300000 */  addu       $a2, $zero, $zero
/* 416C31C 8007F5EC A43A010C */  jal        func_8004EA90
/* 416C320 8007F5F0 5A00A2A3 */   sb        $v0, 0x5A($sp)
/* 416C324 8007F5F4 28000424 */  addiu      $a0, $zero, 0x28
/* 416C328 8007F5F8 DBD8000C */  jal        func_8003636C
/* 416C32C 8007F5FC 46000524 */   addiu     $a1, $zero, 0x46
/* 416C330 8007F600 21204002 */  addu       $a0, $s2, $zero
/* 416C334 8007F604 21282002 */  addu       $a1, $s1, $zero
/* 416C338 8007F608 21302002 */  addu       $a2, $s1, $zero
/* 416C33C 8007F60C 2000A2AF */  sw         $v0, 0x20($sp)
/* 416C340 8007F610 2400A0AF */  sw         $zero, 0x24($sp)
/* 416C344 8007F614 5B3B010C */  jal        func_8004ED6C
/* 416C348 8007F618 2800A0AF */   sw        $zero, 0x28($sp)
/* 416C34C 8007F61C 21204002 */  addu       $a0, $s2, $zero
/* 416C350 8007F620 21280002 */  addu       $a1, $s0, $zero
/* 416C354 8007F624 21300002 */  addu       $a2, $s0, $zero
/* 416C358 8007F628 84030224 */  addiu      $v0, $zero, 0x384
/* 416C35C 8007F62C 3000A2AF */  sw         $v0, 0x30($sp)
/* 416C360 8007F630 3400A0AF */  sw         $zero, 0x34($sp)
/* 416C364 8007F634 5B3B010C */  jal        func_8004ED6C
/* 416C368 8007F638 3800A0AF */   sw        $zero, 0x38($sp)
/* 416C36C 8007F63C 21200002 */  addu       $a0, $s0, $zero
/* 416C370 8007F640 21280002 */  addu       $a1, $s0, $zero
/* 416C374 8007F644 653C010C */  jal        func_8004F194
/* 416C378 8007F648 1000A627 */   addiu     $a2, $sp, 0x10
/* 416C37C 8007F64C 01000424 */  addiu      $a0, $zero, 0x1
/* 416C380 8007F650 0D000524 */  addiu      $a1, $zero, 0xD
/* 416C384 8007F654 21300002 */  addu       $a2, $s0, $zero
/* 416C388 8007F658 01007326 */  addiu      $s3, $s3, 0x1
/* 416C38C 8007F65C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 416C390 8007F660 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 416C394 8007F664 00000000 */  nop
/* 416C398 8007F668 09F84000 */  jalr       $v0
/* 416C39C 8007F66C 21382002 */   addu      $a3, $s1, $zero
/* 416C3A0 8007F670 0400622A */  slti       $v0, $s3, 0x4
/* 416C3A4 8007F674 D4FF4014 */  bnez       $v0, .Llevel_12_8007F5C8
/* 416C3A8 8007F678 21200000 */   addu      $a0, $zero, $zero
/* 416C3AC 8007F67C C0020424 */  addiu      $a0, $zero, 0x2C0
/* 416C3B0 8007F680 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 416C3B4 8007F684 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 416C3B8 8007F688 00000000 */  nop
/* 416C3BC 8007F68C 09F84000 */  jalr       $v0
/* 416C3C0 8007F690 21288002 */   addu      $a1, $s4, $zero
/* 416C3C4 8007F694 10004010 */  beqz       $v0, .Llevel_12_8007F6D8
/* 416C3C8 8007F698 0C005124 */   addiu     $s1, $v0, 0xC
/* 416C3CC 8007F69C 21202002 */  addu       $a0, $s1, $zero
/* 416C3D0 8007F6A0 0000508C */  lw         $s0, 0x0($v0)
/* 416C3D4 8007F6A4 5E3C010C */  jal        func_8004F178
/* 416C3D8 8007F6A8 1000A527 */   addiu     $a1, $sp, 0x10
/* 416C3DC 8007F6AC 21282002 */  addu       $a1, $s1, $zero
/* 416C3E0 8007F6B0 5E3C010C */  jal        func_8004F178
/* 416C3E4 8007F6B4 21200002 */   addu      $a0, $s0, $zero
/* 416C3E8 8007F6B8 84030224 */  addiu      $v0, $zero, 0x384
/* 416C3EC 8007F6BC 0E0002A6 */  sh         $v0, 0xE($s0)
/* 416C3F0 8007F6C0 0C000224 */  addiu      $v0, $zero, 0xC
/* 416C3F4 8007F6C4 170002A2 */  sb         $v0, 0x17($s0)
/* 416C3F8 8007F6C8 1E000224 */  addiu      $v0, $zero, 0x1E
/* 416C3FC 8007F6CC 160002A2 */  sb         $v0, 0x16($s0)
/* 416C400 8007F6D0 F9FF0224 */  addiu      $v0, $zero, -0x7
/* 416C404 8007F6D4 140002A6 */  sh         $v0, 0x14($s0)
.Llevel_12_8007F6D8:
/* 416C408 8007F6D8 7400BF8F */  lw         $ra, 0x74($sp)
/* 416C40C 8007F6DC 7000B48F */  lw         $s4, 0x70($sp)
/* 416C410 8007F6E0 6C00B38F */  lw         $s3, 0x6C($sp)
/* 416C414 8007F6E4 6800B28F */  lw         $s2, 0x68($sp)
/* 416C418 8007F6E8 6400B18F */  lw         $s1, 0x64($sp)
/* 416C41C 8007F6EC 6000B08F */  lw         $s0, 0x60($sp)
/* 416C420 8007F6F0 7800BD27 */  addiu      $sp, $sp, 0x78
/* 416C424 8007F6F4 0800E003 */  jr         $ra
/* 416C428 8007F6F8 00000000 */   nop
.size func_level_12_8007F57C, . - func_level_12_8007F57C
