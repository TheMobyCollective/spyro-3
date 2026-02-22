.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_11_8007AE4C
/* 3E1F37C 8007AE4C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 3E1F380 8007AE50 1800B2AF */  sw         $s2, 0x18($sp)
/* 3E1F384 8007AE54 21908000 */  addu       $s2, $a0, $zero
/* 3E1F388 8007AE58 1000B0AF */  sw         $s0, 0x10($sp)
/* 3E1F38C 8007AE5C 01001024 */  addiu      $s0, $zero, 0x1
/* 3E1F390 8007AE60 2000BFAF */  sw         $ra, 0x20($sp)
/* 3E1F394 8007AE64 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 3E1F398 8007AE68 1400B1AF */  sw         $s1, 0x14($sp)
/* 3E1F39C 8007AE6C 48004392 */  lbu        $v1, 0x48($s2)
/* 3E1F3A0 8007AE70 0000518E */  lw         $s1, 0x0($s2)
/* 3E1F3A4 8007AE74 58007010 */  beq        $v1, $s0, .Llevel_11_8007AFD8
/* 3E1F3A8 8007AE78 02006228 */   slti      $v0, $v1, 0x2
/* 3E1F3AC 8007AE7C 05004010 */  beqz       $v0, .Llevel_11_8007AE94
/* 3E1F3B0 8007AE80 00000000 */   nop
/* 3E1F3B4 8007AE84 0A006010 */  beqz       $v1, .Llevel_11_8007AEB0
/* 3E1F3B8 8007AE88 00000000 */   nop
/* 3E1F3BC 8007AE8C 57EC0108 */  j          .Llevel_11_8007B15C
/* 3E1F3C0 8007AE90 00000000 */   nop
.Llevel_11_8007AE94:
/* 3E1F3C4 8007AE94 02000224 */  addiu      $v0, $zero, 0x2
/* 3E1F3C8 8007AE98 70006210 */  beq        $v1, $v0, .Llevel_11_8007B05C
/* 3E1F3CC 8007AE9C 03000224 */   addiu     $v0, $zero, 0x3
/* 3E1F3D0 8007AEA0 75006210 */  beq        $v1, $v0, .Llevel_11_8007B078
/* 3E1F3D4 8007AEA4 00000000 */   nop
/* 3E1F3D8 8007AEA8 57EC0108 */  j          .Llevel_11_8007B15C
/* 3E1F3DC 8007AEAC 00000000 */   nop
.Llevel_11_8007AEB0:
/* 3E1F3E0 8007AEB0 0000238E */  lw         $v1, 0x0($s1)
/* 3E1F3E4 8007AEB4 00000000 */  nop
/* 3E1F3E8 8007AEB8 40100300 */  sll        $v0, $v1, 1
/* 3E1F3EC 8007AEBC 21104300 */  addu       $v0, $v0, $v1
/* 3E1F3F0 8007AEC0 80100200 */  sll        $v0, $v0, 2
/* 3E1F3F4 8007AEC4 23104300 */  subu       $v0, $v0, $v1
/* 3E1F3F8 8007AEC8 0780033C */  lui        $v1, %hi(D_8006C550)
/* 3E1F3FC 8007AECC 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 3E1F400 8007AED0 C0100200 */  sll        $v0, $v0, 3
/* 3E1F404 8007AED4 21284300 */  addu       $a1, $v0, $v1
/* 3E1F408 8007AED8 4800A290 */  lbu        $v0, 0x48($a1)
/* 3E1F40C 8007AEDC 00000000 */  nop
/* 3E1F410 8007AEE0 80004230 */  andi       $v0, $v0, 0x80
/* 3E1F414 8007AEE4 1B004010 */  beqz       $v0, .Llevel_11_8007AF54
/* 3E1F418 8007AEE8 04003026 */   addiu     $s0, $s1, 0x4
/* 3E1F41C 8007AEEC 21200002 */  addu       $a0, $s0, $zero
/* 3E1F420 8007AEF0 5E3C010C */  jal        func_8004F178
/* 3E1F424 8007AEF4 0C00A524 */   addiu     $a1, $a1, 0xC
/* 3E1F428 8007AEF8 21204002 */  addu       $a0, $s2, $zero
/* 3E1F42C 8007AEFC 01000524 */  addiu      $a1, $zero, 0x1
/* 3E1F430 8007AF00 21300002 */  addu       $a2, $s0, $zero
/* 3E1F434 8007AF04 0C005326 */  addiu      $s3, $s2, 0xC
/* 3E1F438 8007AF08 9ADA000C */  jal        func_80036A68
/* 3E1F43C 8007AF0C 21386002 */   addu      $a3, $s3, $zero
/* 3E1F440 8007AF10 21884000 */  addu       $s1, $v0, $zero
/* 3E1F444 8007AF14 91002012 */  beqz       $s1, .Llevel_11_8007B15C
/* 3E1F448 8007AF18 0C003026 */   addiu     $s0, $s1, 0xC
/* 3E1F44C 8007AF1C 21200002 */  addu       $a0, $s0, $zero
/* 3E1F450 8007AF20 5E3C010C */  jal        func_8004F178
/* 3E1F454 8007AF24 21286002 */   addu      $a1, $s3, $zero
/* 3E1F458 8007AF28 21200002 */  addu       $a0, $s0, $zero
/* 3E1F45C 8007AF2C D668000C */  jal        func_8001A358
/* 3E1F460 8007AF30 00040524 */   addiu     $a1, $zero, 0x400
/* 3E1F464 8007AF34 02004010 */  beqz       $v0, .Llevel_11_8007AF40
/* 3E1F468 8007AF38 00000000 */   nop
/* 3E1F46C 8007AF3C 140022AE */  sw         $v0, 0x14($s1)
.Llevel_11_8007AF40:
/* 3E1F470 8007AF40 50004292 */  lbu        $v0, 0x50($s2)
/* 3E1F474 8007AF44 21204002 */  addu       $a0, $s2, $zero
/* 3E1F478 8007AF48 480020A2 */  sb         $zero, 0x48($s1)
/* 3E1F47C 8007AF4C 55EC0108 */  j          .Llevel_11_8007B154
/* 3E1F480 8007AF50 500022A2 */   sb        $v0, 0x50($s1)
.Llevel_11_8007AF54:
/* 3E1F484 8007AF54 04002426 */  addiu      $a0, $s1, 0x4
/* 3E1F488 8007AF58 0C005026 */  addiu      $s0, $s2, 0xC
/* 3E1F48C 8007AF5C 5E3C010C */  jal        func_8004F178
/* 3E1F490 8007AF60 21280002 */   addu      $a1, $s0, $zero
/* 3E1F494 8007AF64 21200002 */  addu       $a0, $s0, $zero
/* 3E1F498 8007AF68 0000238E */  lw         $v1, 0x0($s1)
/* 3E1F49C 8007AF6C 0780053C */  lui        $a1, %hi(D_8006C550)
/* 3E1F4A0 8007AF70 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 3E1F4A4 8007AF74 40100300 */  sll        $v0, $v1, 1
/* 3E1F4A8 8007AF78 21104300 */  addu       $v0, $v0, $v1
/* 3E1F4AC 8007AF7C 80100200 */  sll        $v0, $v0, 2
/* 3E1F4B0 8007AF80 23104300 */  subu       $v0, $v0, $v1
/* 3E1F4B4 8007AF84 C0100200 */  sll        $v0, $v0, 3
/* 3E1F4B8 8007AF88 2128A200 */  addu       $a1, $a1, $v0
/* 3E1F4BC 8007AF8C 5E3C010C */  jal        func_8004F178
/* 3E1F4C0 8007AF90 0C00A524 */   addiu     $a1, $a1, 0xC
/* 3E1F4C4 8007AF94 1400228E */  lw         $v0, 0x14($s1)
/* 3E1F4C8 8007AF98 00000000 */  nop
/* 3E1F4CC 8007AF9C 0000438C */  lw         $v1, 0x0($v0)
/* 3E1F4D0 8007AFA0 00000000 */  nop
/* 3E1F4D4 8007AFA4 490043A2 */  sb         $v1, 0x49($s2)
/* 3E1F4D8 8007AFA8 FF006330 */  andi       $v1, $v1, 0xFF
/* 3E1F4DC 8007AFAC 00110300 */  sll        $v0, $v1, 4
/* 3E1F4E0 8007AFB0 1400248E */  lw         $a0, 0x14($s1)
/* 3E1F4E4 8007AFB4 23104300 */  subu       $v0, $v0, $v1
/* 3E1F4E8 8007AFB8 100022AE */  sw         $v0, 0x10($s1)
/* 3E1F4EC 8007AFBC 0000828C */  lw         $v0, 0x0($a0)
/* 3E1F4F0 8007AFC0 00000000 */  nop
/* 3E1F4F4 8007AFC4 01004224 */  addiu      $v0, $v0, 0x1
/* 3E1F4F8 8007AFC8 000082AC */  sw         $v0, 0x0($a0)
/* 3E1F4FC 8007AFCC 01000224 */  addiu      $v0, $zero, 0x1
/* 3E1F500 8007AFD0 57EC0108 */  j          .Llevel_11_8007B15C
/* 3E1F504 8007AFD4 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_11_8007AFD8:
/* 3E1F508 8007AFD8 0000238E */  lw         $v1, 0x0($s1)
/* 3E1F50C 8007AFDC 00000000 */  nop
/* 3E1F510 8007AFE0 40100300 */  sll        $v0, $v1, 1
/* 3E1F514 8007AFE4 21104300 */  addu       $v0, $v0, $v1
/* 3E1F518 8007AFE8 80100200 */  sll        $v0, $v0, 2
/* 3E1F51C 8007AFEC 23104300 */  subu       $v0, $v0, $v1
/* 3E1F520 8007AFF0 0780033C */  lui        $v1, %hi(D_8006C550)
/* 3E1F524 8007AFF4 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 3E1F528 8007AFF8 C0100200 */  sll        $v0, $v0, 3
/* 3E1F52C 8007AFFC 21284300 */  addu       $a1, $v0, $v1
/* 3E1F530 8007B000 3600A384 */  lh         $v1, 0x36($a1)
/* 3E1F534 8007B004 CE000224 */  addiu      $v0, $zero, 0xCE
/* 3E1F538 8007B008 03006214 */  bne        $v1, $v0, .Llevel_11_8007B018
/* 3E1F53C 8007B00C 0C004426 */   addiu     $a0, $s2, 0xC
/* 3E1F540 8007B010 5E3C010C */  jal        func_8004F178
/* 3E1F544 8007B014 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_11_8007B018:
/* 3E1F548 8007B018 0000238E */  lw         $v1, 0x0($s1)
/* 3E1F54C 8007B01C 00000000 */  nop
/* 3E1F550 8007B020 40100300 */  sll        $v0, $v1, 1
/* 3E1F554 8007B024 21104300 */  addu       $v0, $v0, $v1
/* 3E1F558 8007B028 80100200 */  sll        $v0, $v0, 2
/* 3E1F55C 8007B02C 23104300 */  subu       $v0, $v0, $v1
/* 3E1F560 8007B030 0780033C */  lui        $v1, %hi(D_8006C550)
/* 3E1F564 8007B034 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 3E1F568 8007B038 C0100200 */  sll        $v0, $v0, 3
/* 3E1F56C 8007B03C 21104300 */  addu       $v0, $v0, $v1
/* 3E1F570 8007B040 48004290 */  lbu        $v0, 0x48($v0)
/* 3E1F574 8007B044 00000000 */  nop
/* 3E1F578 8007B048 80004230 */  andi       $v0, $v0, 0x80
/* 3E1F57C 8007B04C 43004010 */  beqz       $v0, .Llevel_11_8007B15C
/* 3E1F580 8007B050 02000224 */   addiu     $v0, $zero, 0x2
/* 3E1F584 8007B054 57EC0108 */  j          .Llevel_11_8007B15C
/* 3E1F588 8007B058 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_11_8007B05C:
/* 3E1F58C 8007B05C 10002426 */  addiu      $a0, $s1, 0x10
/* 3E1F590 8007B060 69D6000C */  jal        func_800359A4
/* 3E1F594 8007B064 04000524 */   addiu     $a1, $zero, 0x4
/* 3E1F598 8007B068 3C004010 */  beqz       $v0, .Llevel_11_8007B15C
/* 3E1F59C 8007B06C 03000224 */   addiu     $v0, $zero, 0x3
/* 3E1F5A0 8007B070 57EC0108 */  j          .Llevel_11_8007B15C
/* 3E1F5A4 8007B074 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_11_8007B078:
/* 3E1F5A8 8007B078 0000238E */  lw         $v1, 0x0($s1)
/* 3E1F5AC 8007B07C 00000000 */  nop
/* 3E1F5B0 8007B080 40100300 */  sll        $v0, $v1, 1
/* 3E1F5B4 8007B084 21104300 */  addu       $v0, $v0, $v1
/* 3E1F5B8 8007B088 80100200 */  sll        $v0, $v0, 2
/* 3E1F5BC 8007B08C 23104300 */  subu       $v0, $v0, $v1
/* 3E1F5C0 8007B090 0780033C */  lui        $v1, %hi(D_8006C550)
/* 3E1F5C4 8007B094 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 3E1F5C8 8007B098 C0100200 */  sll        $v0, $v0, 3
/* 3E1F5CC 8007B09C 21204300 */  addu       $a0, $v0, $v1
/* 3E1F5D0 8007B0A0 50008390 */  lbu        $v1, 0x50($a0)
/* 3E1F5D4 8007B0A4 FF000224 */  addiu      $v0, $zero, 0xFF
/* 3E1F5D8 8007B0A8 15006214 */  bne        $v1, $v0, .Llevel_11_8007B100
/* 3E1F5DC 8007B0AC 00000000 */   nop
/* 3E1F5E0 8007B0B0 80EE000C */  jal        func_8003BA00
/* 3E1F5E4 8007B0B4 00000000 */   nop
/* 3E1F5E8 8007B0B8 0000238E */  lw         $v1, 0x0($s1)
/* 3E1F5EC 8007B0BC 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 3E1F5F0 8007B0C0 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 3E1F5F4 8007B0C4 0780043C */  lui        $a0, %hi(D_80071AB0)
/* 3E1F5F8 8007B0C8 B01A8424 */  addiu      $a0, $a0, %lo(D_80071AB0)
/* 3E1F5FC 8007B0CC 21186200 */  addu       $v1, $v1, $v0
/* 3E1F600 8007B0D0 1F006530 */  andi       $a1, $v1, 0x1F
/* 3E1F604 8007B0D4 43190300 */  sra        $v1, $v1, 5
/* 3E1F608 8007B0D8 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 3E1F60C 8007B0DC 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 3E1F610 8007B0E0 80180300 */  sll        $v1, $v1, 2
/* 3E1F614 8007B0E4 40110200 */  sll        $v0, $v0, 5
/* 3E1F618 8007B0E8 21104400 */  addu       $v0, $v0, $a0
/* 3E1F61C 8007B0EC 21186200 */  addu       $v1, $v1, $v0
/* 3E1F620 8007B0F0 0000628C */  lw         $v0, 0x0($v1)
/* 3E1F624 8007B0F4 0428B000 */  sllv       $a1, $s0, $a1
/* 3E1F628 8007B0F8 25104500 */  or         $v0, $v0, $a1
/* 3E1F62C 8007B0FC 000062AC */  sw         $v0, 0x0($v1)
.Llevel_11_8007B100:
/* 3E1F630 8007B100 21204002 */  addu       $a0, $s2, $zero
/* 3E1F634 8007B104 01000524 */  addiu      $a1, $zero, 0x1
/* 3E1F638 8007B108 0C004626 */  addiu      $a2, $s2, 0xC
/* 3E1F63C 8007B10C 9ADA000C */  jal        func_80036A68
/* 3E1F640 8007B110 04002726 */   addiu     $a3, $s1, 0x4
/* 3E1F644 8007B114 11004010 */  beqz       $v0, .Llevel_11_8007B15C
/* 3E1F648 8007B118 21284002 */   addu      $a1, $s2, $zero
/* 3E1F64C 8007B11C 0780023C */  lui        $v0, %hi(D_8006C654)
/* 3E1F650 8007B120 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 3E1F654 8007B124 00000000 */  nop
/* 3E1F658 8007B128 1A004490 */  lbu        $a0, 0x1A($v0)
/* 3E1F65C 8007B12C D4EE000C */  jal        PlaySound
/* 3E1F660 8007B130 21300000 */   addu      $a2, $zero, $zero
/* 3E1F664 8007B134 06004004 */  bltz       $v0, .Llevel_11_8007B150
/* 3E1F668 8007B138 21204000 */   addu      $a0, $v0, $zero
/* 3E1F66C 8007B13C 49004592 */  lbu        $a1, 0x49($s2)
/* 3E1F670 8007B140 00000000 */  nop
/* 3E1F674 8007B144 002A0500 */  sll        $a1, $a1, 8
/* 3E1F678 8007B148 2CF0000C */  jal        func_8003C0B0
/* 3E1F67C 8007B14C 0010A524 */   addiu     $a1, $a1, 0x1000
.Llevel_11_8007B150:
/* 3E1F680 8007B150 21204002 */  addu       $a0, $s2, $zero
.Llevel_11_8007B154:
/* 3E1F684 8007B154 C656010C */  jal        func_80055B18
/* 3E1F688 8007B158 00000000 */   nop
.Llevel_11_8007B15C:
/* 3E1F68C 8007B15C 2000BF8F */  lw         $ra, 0x20($sp)
/* 3E1F690 8007B160 1C00B38F */  lw         $s3, 0x1C($sp)
/* 3E1F694 8007B164 1800B28F */  lw         $s2, 0x18($sp)
/* 3E1F698 8007B168 1400B18F */  lw         $s1, 0x14($sp)
/* 3E1F69C 8007B16C 1000B08F */  lw         $s0, 0x10($sp)
/* 3E1F6A0 8007B170 2800BD27 */  addiu      $sp, $sp, 0x28
/* 3E1F6A4 8007B174 0800E003 */  jr         $ra
/* 3E1F6A8 8007B178 00000000 */   nop
.size func_level_11_8007AE4C, . - func_level_11_8007AE4C
