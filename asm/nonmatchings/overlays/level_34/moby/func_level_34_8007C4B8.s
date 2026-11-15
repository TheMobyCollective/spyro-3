.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_408_level_34
/* 74D81E8 8007C4B8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 74D81EC 8007C4BC 1400B1AF */  sw         $s1, 0x14($sp)
/* 74D81F0 8007C4C0 21888000 */  addu       $s1, $a0, $zero
/* 74D81F4 8007C4C4 1800BFAF */  sw         $ra, 0x18($sp)
/* 74D81F8 8007C4C8 1000B0AF */  sw         $s0, 0x10($sp)
/* 74D81FC 8007C4CC 48002392 */  lbu        $v1, 0x48($s1)
/* 74D8200 8007C4D0 0000308E */  lw         $s0, 0x0($s1)
/* 74D8204 8007C4D4 05006010 */  beqz       $v1, .Llevel_34_8007C4EC
/* 74D8208 8007C4D8 01000224 */   addiu     $v0, $zero, 0x1
/* 74D820C 8007C4DC 3D006210 */  beq        $v1, $v0, .Llevel_34_8007C5D4
/* 74D8210 8007C4E0 00000000 */   nop
/* 74D8214 8007C4E4 7CF10108 */  j          .Llevel_34_8007C5F0
/* 74D8218 8007C4E8 00000000 */   nop
.Llevel_34_8007C4EC:
/* 74D821C 8007C4EC 36002386 */  lh         $v1, 0x36($s1)
/* 74D8220 8007C4F0 AC020224 */  addiu      $v0, $zero, 0x2AC
/* 74D8224 8007C4F4 13006214 */  bne        $v1, $v0, .Llevel_34_8007C544
/* 74D8228 8007C4F8 00000000 */   nop
/* 74D822C 8007C4FC 0780023C */  lui        $v0, %hi(D_80071581)
/* 74D8230 8007C500 81154290 */  lbu        $v0, %lo(D_80071581)($v0)
/* 74D8234 8007C504 00000000 */  nop
/* 74D8238 8007C508 03004014 */  bnez       $v0, .Llevel_34_8007C518
/* 74D823C 8007C50C 00000000 */   nop
/* 74D8240 8007C510 51F10108 */  j          .Llevel_34_8007C544
/* 74D8244 8007C514 020000A2 */   sb        $zero, 0x2($s0)
.Llevel_34_8007C518:
/* 74D8248 8007C518 0680023C */  lui        $v0, %hi(D_80066FCC + 0x1A)
/* 74D824C 8007C51C E66F4290 */  lbu        $v0, %lo(D_80066FCC + 0x1A)($v0)
/* 74D8250 8007C520 0780013C */  lui        $at, %hi(D_80070300)
/* 74D8254 8007C524 21082200 */  addu       $at, $at, $v0
/* 74D8258 8007C528 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 74D825C 8007C52C 00000000 */  nop
/* 74D8260 8007C530 01004230 */  andi       $v0, $v0, 0x1
/* 74D8264 8007C534 02004014 */  bnez       $v0, .Llevel_34_8007C540
/* 74D8268 8007C538 02000224 */   addiu     $v0, $zero, 0x2
/* 74D826C 8007C53C 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_34_8007C540:
/* 74D8270 8007C540 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_34_8007C544:
/* 74D8274 8007C544 02000392 */  lbu        $v1, 0x2($s0)
/* 74D8278 8007C548 02000224 */  addiu      $v0, $zero, 0x2
/* 74D827C 8007C54C 02006214 */  bne        $v1, $v0, .Llevel_34_8007C558
/* 74D8280 8007C550 00000000 */   nop
/* 74D8284 8007C554 050000A2 */  sb         $zero, 0x5($s0)
.Llevel_34_8007C558:
/* 74D8288 8007C558 05000292 */  lbu        $v0, 0x5($s0)
/* 74D828C 8007C55C 00000000 */  nop
/* 74D8290 8007C560 10004014 */  bnez       $v0, .Llevel_34_8007C5A4
/* 74D8294 8007C564 21202002 */   addu      $a0, $s1, $zero
/* 74D8298 8007C568 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 74D829C 8007C56C 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 74D82A0 8007C570 00000000 */  nop
/* 74D82A4 8007C574 10004230 */  andi       $v0, $v0, 0x10
/* 74D82A8 8007C578 06004010 */  beqz       $v0, .Llevel_34_8007C594
/* 74D82AC 8007C57C 00000000 */   nop
/* 74D82B0 8007C580 EFDE000C */  jal        func_80037BBC
/* 74D82B4 8007C584 21280000 */   addu      $a1, $zero, $zero
/* 74D82B8 8007C588 0A004014 */  bnez       $v0, .Llevel_34_8007C5B4
/* 74D82BC 8007C58C 21202002 */   addu      $a0, $s1, $zero
/* 74D82C0 8007C590 070000A2 */  sb         $zero, 0x7($s0)
.Llevel_34_8007C594:
/* 74D82C4 8007C594 05000292 */  lbu        $v0, 0x5($s0)
/* 74D82C8 8007C598 00000000 */  nop
/* 74D82CC 8007C59C 14004010 */  beqz       $v0, .Llevel_34_8007C5F0
/* 74D82D0 8007C5A0 21202002 */   addu      $a0, $s1, $zero
.Llevel_34_8007C5A4:
/* 74D82D4 8007C5A4 EFDE000C */  jal        func_80037BBC
/* 74D82D8 8007C5A8 21280000 */   addu      $a1, $zero, $zero
/* 74D82DC 8007C5AC 07004010 */  beqz       $v0, .Llevel_34_8007C5CC
/* 74D82E0 8007C5B0 21202002 */   addu      $a0, $s1, $zero
.Llevel_34_8007C5B4:
/* 74D82E4 8007C5B4 21280000 */  addu       $a1, $zero, $zero
/* 74D82E8 8007C5B8 B944010C */  jal        func_800512E4
/* 74D82EC 8007C5BC 21300000 */   addu      $a2, $zero, $zero
/* 74D82F0 8007C5C0 01000224 */  addiu      $v0, $zero, 0x1
/* 74D82F4 8007C5C4 7CF10108 */  j          .Llevel_34_8007C5F0
/* 74D82F8 8007C5C8 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_34_8007C5CC:
/* 74D82FC 8007C5CC 7CF10108 */  j          .Llevel_34_8007C5F0
/* 74D8300 8007C5D0 070000A2 */   sb        $zero, 0x7($s0)
.Llevel_34_8007C5D4:
/* 74D8304 8007C5D4 0780023C */  lui        $v0, %hi(D_8006E344)
/* 74D8308 8007C5D8 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 74D830C 8007C5DC 00000000 */  nop
/* 74D8310 8007C5E0 03004310 */  beq        $v0, $v1, .Llevel_34_8007C5F0
/* 74D8314 8007C5E4 00000000 */   nop
/* 74D8318 8007C5E8 200003AE */  sw         $v1, 0x20($s0)
/* 74D831C 8007C5EC 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_34_8007C5F0:
/* 74D8320 8007C5F0 1800BF8F */  lw         $ra, 0x18($sp)
/* 74D8324 8007C5F4 1400B18F */  lw         $s1, 0x14($sp)
/* 74D8328 8007C5F8 1000B08F */  lw         $s0, 0x10($sp)
/* 74D832C 8007C5FC 2000BD27 */  addiu      $sp, $sp, 0x20
/* 74D8330 8007C600 0800E003 */  jr         $ra
/* 74D8334 8007C604 00000000 */   nop
.size MobyUpdate_408_level_34, . - MobyUpdate_408_level_34
