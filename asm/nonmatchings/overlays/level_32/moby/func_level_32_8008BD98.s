.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_8008BD98
/* 6DF32C8 8008BD98 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 6DF32CC 8008BD9C 1800B2AF */  sw         $s2, 0x18($sp)
/* 6DF32D0 8008BDA0 21908000 */  addu       $s2, $a0, $zero
/* 6DF32D4 8008BDA4 1000B0AF */  sw         $s0, 0x10($sp)
/* 6DF32D8 8008BDA8 01001024 */  addiu      $s0, $zero, 0x1
/* 6DF32DC 8008BDAC 2000BFAF */  sw         $ra, 0x20($sp)
/* 6DF32E0 8008BDB0 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 6DF32E4 8008BDB4 1400B1AF */  sw         $s1, 0x14($sp)
/* 6DF32E8 8008BDB8 48004392 */  lbu        $v1, 0x48($s2)
/* 6DF32EC 8008BDBC 0000518E */  lw         $s1, 0x0($s2)
/* 6DF32F0 8008BDC0 58007010 */  beq        $v1, $s0, .Llevel_32_8008BF24
/* 6DF32F4 8008BDC4 02006228 */   slti      $v0, $v1, 0x2
/* 6DF32F8 8008BDC8 05004010 */  beqz       $v0, .Llevel_32_8008BDE0
/* 6DF32FC 8008BDCC 00000000 */   nop
/* 6DF3300 8008BDD0 0A006010 */  beqz       $v1, .Llevel_32_8008BDFC
/* 6DF3304 8008BDD4 00000000 */   nop
/* 6DF3308 8008BDD8 2A300208 */  j          .Llevel_32_8008C0A8
/* 6DF330C 8008BDDC 00000000 */   nop
.Llevel_32_8008BDE0:
/* 6DF3310 8008BDE0 02000224 */  addiu      $v0, $zero, 0x2
/* 6DF3314 8008BDE4 70006210 */  beq        $v1, $v0, .Llevel_32_8008BFA8
/* 6DF3318 8008BDE8 03000224 */   addiu     $v0, $zero, 0x3
/* 6DF331C 8008BDEC 75006210 */  beq        $v1, $v0, .Llevel_32_8008BFC4
/* 6DF3320 8008BDF0 00000000 */   nop
/* 6DF3324 8008BDF4 2A300208 */  j          .Llevel_32_8008C0A8
/* 6DF3328 8008BDF8 00000000 */   nop
.Llevel_32_8008BDFC:
/* 6DF332C 8008BDFC 0000238E */  lw         $v1, 0x0($s1)
/* 6DF3330 8008BE00 00000000 */  nop
/* 6DF3334 8008BE04 40100300 */  sll        $v0, $v1, 1
/* 6DF3338 8008BE08 21104300 */  addu       $v0, $v0, $v1
/* 6DF333C 8008BE0C 80100200 */  sll        $v0, $v0, 2
/* 6DF3340 8008BE10 23104300 */  subu       $v0, $v0, $v1
/* 6DF3344 8008BE14 0780033C */  lui        $v1, %hi(D_8006C550)
/* 6DF3348 8008BE18 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 6DF334C 8008BE1C C0100200 */  sll        $v0, $v0, 3
/* 6DF3350 8008BE20 21284300 */  addu       $a1, $v0, $v1
/* 6DF3354 8008BE24 4800A290 */  lbu        $v0, 0x48($a1)
/* 6DF3358 8008BE28 00000000 */  nop
/* 6DF335C 8008BE2C 80004230 */  andi       $v0, $v0, 0x80
/* 6DF3360 8008BE30 1B004010 */  beqz       $v0, .Llevel_32_8008BEA0
/* 6DF3364 8008BE34 04003026 */   addiu     $s0, $s1, 0x4
/* 6DF3368 8008BE38 21200002 */  addu       $a0, $s0, $zero
/* 6DF336C 8008BE3C 5E3C010C */  jal        func_8004F178
/* 6DF3370 8008BE40 0C00A524 */   addiu     $a1, $a1, 0xC
/* 6DF3374 8008BE44 21204002 */  addu       $a0, $s2, $zero
/* 6DF3378 8008BE48 01000524 */  addiu      $a1, $zero, 0x1
/* 6DF337C 8008BE4C 21300002 */  addu       $a2, $s0, $zero
/* 6DF3380 8008BE50 0C005326 */  addiu      $s3, $s2, 0xC
/* 6DF3384 8008BE54 9ADA000C */  jal        func_80036A68
/* 6DF3388 8008BE58 21386002 */   addu      $a3, $s3, $zero
/* 6DF338C 8008BE5C 21884000 */  addu       $s1, $v0, $zero
/* 6DF3390 8008BE60 91002012 */  beqz       $s1, .Llevel_32_8008C0A8
/* 6DF3394 8008BE64 0C003026 */   addiu     $s0, $s1, 0xC
/* 6DF3398 8008BE68 21200002 */  addu       $a0, $s0, $zero
/* 6DF339C 8008BE6C 5E3C010C */  jal        func_8004F178
/* 6DF33A0 8008BE70 21286002 */   addu      $a1, $s3, $zero
/* 6DF33A4 8008BE74 21200002 */  addu       $a0, $s0, $zero
/* 6DF33A8 8008BE78 D668000C */  jal        func_8001A358
/* 6DF33AC 8008BE7C 00040524 */   addiu     $a1, $zero, 0x400
/* 6DF33B0 8008BE80 02004010 */  beqz       $v0, .Llevel_32_8008BE8C
/* 6DF33B4 8008BE84 00000000 */   nop
/* 6DF33B8 8008BE88 140022AE */  sw         $v0, 0x14($s1)
.Llevel_32_8008BE8C:
/* 6DF33BC 8008BE8C 50004292 */  lbu        $v0, 0x50($s2)
/* 6DF33C0 8008BE90 21204002 */  addu       $a0, $s2, $zero
/* 6DF33C4 8008BE94 480020A2 */  sb         $zero, 0x48($s1)
/* 6DF33C8 8008BE98 28300208 */  j          .Llevel_32_8008C0A0
/* 6DF33CC 8008BE9C 500022A2 */   sb        $v0, 0x50($s1)
.Llevel_32_8008BEA0:
/* 6DF33D0 8008BEA0 04002426 */  addiu      $a0, $s1, 0x4
/* 6DF33D4 8008BEA4 0C005026 */  addiu      $s0, $s2, 0xC
/* 6DF33D8 8008BEA8 5E3C010C */  jal        func_8004F178
/* 6DF33DC 8008BEAC 21280002 */   addu      $a1, $s0, $zero
/* 6DF33E0 8008BEB0 21200002 */  addu       $a0, $s0, $zero
/* 6DF33E4 8008BEB4 0000238E */  lw         $v1, 0x0($s1)
/* 6DF33E8 8008BEB8 0780053C */  lui        $a1, %hi(D_8006C550)
/* 6DF33EC 8008BEBC 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 6DF33F0 8008BEC0 40100300 */  sll        $v0, $v1, 1
/* 6DF33F4 8008BEC4 21104300 */  addu       $v0, $v0, $v1
/* 6DF33F8 8008BEC8 80100200 */  sll        $v0, $v0, 2
/* 6DF33FC 8008BECC 23104300 */  subu       $v0, $v0, $v1
/* 6DF3400 8008BED0 C0100200 */  sll        $v0, $v0, 3
/* 6DF3404 8008BED4 2128A200 */  addu       $a1, $a1, $v0
/* 6DF3408 8008BED8 5E3C010C */  jal        func_8004F178
/* 6DF340C 8008BEDC 0C00A524 */   addiu     $a1, $a1, 0xC
/* 6DF3410 8008BEE0 1400228E */  lw         $v0, 0x14($s1)
/* 6DF3414 8008BEE4 00000000 */  nop
/* 6DF3418 8008BEE8 0000438C */  lw         $v1, 0x0($v0)
/* 6DF341C 8008BEEC 00000000 */  nop
/* 6DF3420 8008BEF0 490043A2 */  sb         $v1, 0x49($s2)
/* 6DF3424 8008BEF4 FF006330 */  andi       $v1, $v1, 0xFF
/* 6DF3428 8008BEF8 00110300 */  sll        $v0, $v1, 4
/* 6DF342C 8008BEFC 1400248E */  lw         $a0, 0x14($s1)
/* 6DF3430 8008BF00 23104300 */  subu       $v0, $v0, $v1
/* 6DF3434 8008BF04 100022AE */  sw         $v0, 0x10($s1)
/* 6DF3438 8008BF08 0000828C */  lw         $v0, 0x0($a0)
/* 6DF343C 8008BF0C 00000000 */  nop
/* 6DF3440 8008BF10 01004224 */  addiu      $v0, $v0, 0x1
/* 6DF3444 8008BF14 000082AC */  sw         $v0, 0x0($a0)
/* 6DF3448 8008BF18 01000224 */  addiu      $v0, $zero, 0x1
/* 6DF344C 8008BF1C 2A300208 */  j          .Llevel_32_8008C0A8
/* 6DF3450 8008BF20 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_32_8008BF24:
/* 6DF3454 8008BF24 0000238E */  lw         $v1, 0x0($s1)
/* 6DF3458 8008BF28 00000000 */  nop
/* 6DF345C 8008BF2C 40100300 */  sll        $v0, $v1, 1
/* 6DF3460 8008BF30 21104300 */  addu       $v0, $v0, $v1
/* 6DF3464 8008BF34 80100200 */  sll        $v0, $v0, 2
/* 6DF3468 8008BF38 23104300 */  subu       $v0, $v0, $v1
/* 6DF346C 8008BF3C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 6DF3470 8008BF40 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 6DF3474 8008BF44 C0100200 */  sll        $v0, $v0, 3
/* 6DF3478 8008BF48 21284300 */  addu       $a1, $v0, $v1
/* 6DF347C 8008BF4C 3600A384 */  lh         $v1, 0x36($a1)
/* 6DF3480 8008BF50 CE000224 */  addiu      $v0, $zero, 0xCE
/* 6DF3484 8008BF54 03006214 */  bne        $v1, $v0, .Llevel_32_8008BF64
/* 6DF3488 8008BF58 0C004426 */   addiu     $a0, $s2, 0xC
/* 6DF348C 8008BF5C 5E3C010C */  jal        func_8004F178
/* 6DF3490 8008BF60 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_32_8008BF64:
/* 6DF3494 8008BF64 0000238E */  lw         $v1, 0x0($s1)
/* 6DF3498 8008BF68 00000000 */  nop
/* 6DF349C 8008BF6C 40100300 */  sll        $v0, $v1, 1
/* 6DF34A0 8008BF70 21104300 */  addu       $v0, $v0, $v1
/* 6DF34A4 8008BF74 80100200 */  sll        $v0, $v0, 2
/* 6DF34A8 8008BF78 23104300 */  subu       $v0, $v0, $v1
/* 6DF34AC 8008BF7C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 6DF34B0 8008BF80 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 6DF34B4 8008BF84 C0100200 */  sll        $v0, $v0, 3
/* 6DF34B8 8008BF88 21104300 */  addu       $v0, $v0, $v1
/* 6DF34BC 8008BF8C 48004290 */  lbu        $v0, 0x48($v0)
/* 6DF34C0 8008BF90 00000000 */  nop
/* 6DF34C4 8008BF94 80004230 */  andi       $v0, $v0, 0x80
/* 6DF34C8 8008BF98 43004010 */  beqz       $v0, .Llevel_32_8008C0A8
/* 6DF34CC 8008BF9C 02000224 */   addiu     $v0, $zero, 0x2
/* 6DF34D0 8008BFA0 2A300208 */  j          .Llevel_32_8008C0A8
/* 6DF34D4 8008BFA4 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_32_8008BFA8:
/* 6DF34D8 8008BFA8 10002426 */  addiu      $a0, $s1, 0x10
/* 6DF34DC 8008BFAC 69D6000C */  jal        func_800359A4
/* 6DF34E0 8008BFB0 04000524 */   addiu     $a1, $zero, 0x4
/* 6DF34E4 8008BFB4 3C004010 */  beqz       $v0, .Llevel_32_8008C0A8
/* 6DF34E8 8008BFB8 03000224 */   addiu     $v0, $zero, 0x3
/* 6DF34EC 8008BFBC 2A300208 */  j          .Llevel_32_8008C0A8
/* 6DF34F0 8008BFC0 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_32_8008BFC4:
/* 6DF34F4 8008BFC4 0000238E */  lw         $v1, 0x0($s1)
/* 6DF34F8 8008BFC8 00000000 */  nop
/* 6DF34FC 8008BFCC 40100300 */  sll        $v0, $v1, 1
/* 6DF3500 8008BFD0 21104300 */  addu       $v0, $v0, $v1
/* 6DF3504 8008BFD4 80100200 */  sll        $v0, $v0, 2
/* 6DF3508 8008BFD8 23104300 */  subu       $v0, $v0, $v1
/* 6DF350C 8008BFDC 0780033C */  lui        $v1, %hi(D_8006C550)
/* 6DF3510 8008BFE0 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 6DF3514 8008BFE4 C0100200 */  sll        $v0, $v0, 3
/* 6DF3518 8008BFE8 21204300 */  addu       $a0, $v0, $v1
/* 6DF351C 8008BFEC 50008390 */  lbu        $v1, 0x50($a0)
/* 6DF3520 8008BFF0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 6DF3524 8008BFF4 15006214 */  bne        $v1, $v0, .Llevel_32_8008C04C
/* 6DF3528 8008BFF8 00000000 */   nop
/* 6DF352C 8008BFFC 80EE000C */  jal        func_8003BA00
/* 6DF3530 8008C000 00000000 */   nop
/* 6DF3534 8008C004 0000238E */  lw         $v1, 0x0($s1)
/* 6DF3538 8008C008 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 6DF353C 8008C00C 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 6DF3540 8008C010 0780043C */  lui        $a0, %hi(D_80071AB0)
/* 6DF3544 8008C014 B01A8424 */  addiu      $a0, $a0, %lo(D_80071AB0)
/* 6DF3548 8008C018 21186200 */  addu       $v1, $v1, $v0
/* 6DF354C 8008C01C 1F006530 */  andi       $a1, $v1, 0x1F
/* 6DF3550 8008C020 43190300 */  sra        $v1, $v1, 5
/* 6DF3554 8008C024 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 6DF3558 8008C028 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 6DF355C 8008C02C 80180300 */  sll        $v1, $v1, 2
/* 6DF3560 8008C030 40110200 */  sll        $v0, $v0, 5
/* 6DF3564 8008C034 21104400 */  addu       $v0, $v0, $a0
/* 6DF3568 8008C038 21186200 */  addu       $v1, $v1, $v0
/* 6DF356C 8008C03C 0000628C */  lw         $v0, 0x0($v1)
/* 6DF3570 8008C040 0428B000 */  sllv       $a1, $s0, $a1
/* 6DF3574 8008C044 25104500 */  or         $v0, $v0, $a1
/* 6DF3578 8008C048 000062AC */  sw         $v0, 0x0($v1)
.Llevel_32_8008C04C:
/* 6DF357C 8008C04C 21204002 */  addu       $a0, $s2, $zero
/* 6DF3580 8008C050 01000524 */  addiu      $a1, $zero, 0x1
/* 6DF3584 8008C054 0C004626 */  addiu      $a2, $s2, 0xC
/* 6DF3588 8008C058 9ADA000C */  jal        func_80036A68
/* 6DF358C 8008C05C 04002726 */   addiu     $a3, $s1, 0x4
/* 6DF3590 8008C060 11004010 */  beqz       $v0, .Llevel_32_8008C0A8
/* 6DF3594 8008C064 21284002 */   addu      $a1, $s2, $zero
/* 6DF3598 8008C068 0780023C */  lui        $v0, %hi(D_8006C654)
/* 6DF359C 8008C06C 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 6DF35A0 8008C070 00000000 */  nop
/* 6DF35A4 8008C074 1A004490 */  lbu        $a0, 0x1A($v0)
/* 6DF35A8 8008C078 D4EE000C */  jal        PlaySound
/* 6DF35AC 8008C07C 21300000 */   addu      $a2, $zero, $zero
/* 6DF35B0 8008C080 06004004 */  bltz       $v0, .Llevel_32_8008C09C
/* 6DF35B4 8008C084 21204000 */   addu      $a0, $v0, $zero
/* 6DF35B8 8008C088 49004592 */  lbu        $a1, 0x49($s2)
/* 6DF35BC 8008C08C 00000000 */  nop
/* 6DF35C0 8008C090 002A0500 */  sll        $a1, $a1, 8
/* 6DF35C4 8008C094 2CF0000C */  jal        func_8003C0B0
/* 6DF35C8 8008C098 0010A524 */   addiu     $a1, $a1, 0x1000
.Llevel_32_8008C09C:
/* 6DF35CC 8008C09C 21204002 */  addu       $a0, $s2, $zero
.Llevel_32_8008C0A0:
/* 6DF35D0 8008C0A0 C656010C */  jal        func_80055B18
/* 6DF35D4 8008C0A4 00000000 */   nop
.Llevel_32_8008C0A8:
/* 6DF35D8 8008C0A8 2000BF8F */  lw         $ra, 0x20($sp)
/* 6DF35DC 8008C0AC 1C00B38F */  lw         $s3, 0x1C($sp)
/* 6DF35E0 8008C0B0 1800B28F */  lw         $s2, 0x18($sp)
/* 6DF35E4 8008C0B4 1400B18F */  lw         $s1, 0x14($sp)
/* 6DF35E8 8008C0B8 1000B08F */  lw         $s0, 0x10($sp)
/* 6DF35EC 8008C0BC 2800BD27 */  addiu      $sp, $sp, 0x28
/* 6DF35F0 8008C0C0 0800E003 */  jr         $ra
/* 6DF35F4 8008C0C4 00000000 */   nop
.size func_level_32_8008BD98, . - func_level_32_8008BD98
