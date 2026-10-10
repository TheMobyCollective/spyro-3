.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_44_8007A414
/* 8B4D944 8007A414 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 8B4D948 8007A418 2000B2AF */  sw         $s2, 0x20($sp)
/* 8B4D94C 8007A41C 21908000 */  addu       $s2, $a0, $zero
/* 8B4D950 8007A420 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 8B4D954 8007A424 2800B4AF */  sw         $s4, 0x28($sp)
/* 8B4D958 8007A428 2400B3AF */  sw         $s3, 0x24($sp)
/* 8B4D95C 8007A42C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 8B4D960 8007A430 1800B0AF */  sw         $s0, 0x18($sp)
/* 8B4D964 8007A434 0000508E */  lw         $s0, 0x0($s2)
/* 8B4D968 8007A438 0780023C */  lui        $v0, %hi(D_8006C5C8)
/* 8B4D96C 8007A43C C8C5428C */  lw         $v0, %lo(D_8006C5C8)($v0)
/* 8B4D970 8007A440 4000038E */  lw         $v1, 0x40($s0)
/* 8B4D974 8007A444 00000000 */  nop
/* 8B4D978 8007A448 94006214 */  bne        $v1, $v0, .Llevel_44_8007A69C
/* 8B4D97C 8007A44C 00000000 */   nop
/* 8B4D980 8007A450 0780143C */  lui        $s4, %hi(D_8006E480)
/* 8B4D984 8007A454 80E49426 */  addiu      $s4, $s4, %lo(D_8006E480)
/* 8B4D988 8007A458 0000828E */  lw         $v0, 0x0($s4)
/* 8B4D98C 8007A45C 00000000 */  nop
/* 8B4D990 8007A460 8E004014 */  bnez       $v0, .Llevel_44_8007A69C
/* 8B4D994 8007A464 01001324 */   addiu     $s3, $zero, 0x1
/* 8B4D998 8007A468 0780033C */  lui        $v1, %hi(D_8006E344)
/* 8B4D99C 8007A46C 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 8B4D9A0 8007A470 00000000 */  nop
/* 8B4D9A4 8007A474 89007310 */  beq        $v1, $s3, .Llevel_44_8007A69C
/* 8B4D9A8 8007A478 0F000224 */   addiu     $v0, $zero, 0xF
/* 8B4D9AC 8007A47C 87006210 */  beq        $v1, $v0, .Llevel_44_8007A69C
/* 8B4D9B0 8007A480 21280002 */   addu      $a1, $s0, $zero
/* 8B4D9B4 8007A484 0780113C */  lui        $s1, %hi(D_80070328)
/* 8B4D9B8 8007A488 28033126 */  addiu      $s1, $s1, %lo(D_80070328)
/* 8B4D9BC 8007A48C 21202002 */  addu       $a0, $s1, $zero
/* 8B4D9C0 8007A490 3800078E */  lw         $a3, 0x38($s0)
/* 8B4D9C4 8007A494 88D8000C */  jal        func_80036220
/* 8B4D9C8 8007A498 21300000 */   addu      $a2, $zero, $zero
/* 8B4D9CC 8007A49C 0E004010 */  beqz       $v0, .Llevel_44_8007A4D8
/* 8B4D9D0 8007A4A0 00000000 */   nop
/* 8B4D9D4 8007A4A4 3000028E */  lw         $v0, 0x30($s0)
/* 8B4D9D8 8007A4A8 3400048E */  lw         $a0, 0x34($s0)
/* 8B4D9DC 8007A4AC 40280200 */  sll        $a1, $v0, 1
/* 8B4D9E0 8007A4B0 2128A200 */  addu       $a1, $a1, $v0
/* 8B4D9E4 8007A4B4 80280500 */  sll        $a1, $a1, 2
/* 8B4D9E8 8007A4B8 2328A200 */  subu       $a1, $a1, $v0
/* 8B4D9EC 8007A4BC 0780023C */  lui        $v0, %hi(D_8006C550)
/* 8B4D9F0 8007A4C0 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 8B4D9F4 8007A4C4 C0280500 */  sll        $a1, $a1, 3
/* 8B4D9F8 8007A4C8 464A010C */  jal        func_80052918
/* 8B4D9FC 8007A4CC 21284500 */   addu      $a1, $v0, $a1
/* 8B4DA00 8007A4D0 A7E90108 */  j          .Llevel_44_8007A69C
/* 8B4DA04 8007A4D4 00000000 */   nop
.Llevel_44_8007A4D8:
/* 8B4DA08 8007A4D8 48004392 */  lbu        $v1, 0x48($s2)
/* 8B4DA0C 8007A4DC 00000000 */  nop
/* 8B4DA10 8007A4E0 14007310 */  beq        $v1, $s3, .Llevel_44_8007A534
/* 8B4DA14 8007A4E4 02006228 */   slti      $v0, $v1, 0x2
/* 8B4DA18 8007A4E8 05004010 */  beqz       $v0, .Llevel_44_8007A500
/* 8B4DA1C 8007A4EC 00000000 */   nop
/* 8B4DA20 8007A4F0 0A006010 */  beqz       $v1, .Llevel_44_8007A51C
/* 8B4DA24 8007A4F4 21202002 */   addu      $a0, $s1, $zero
/* 8B4DA28 8007A4F8 A7E90108 */  j          .Llevel_44_8007A69C
/* 8B4DA2C 8007A4FC 00000000 */   nop
.Llevel_44_8007A500:
/* 8B4DA30 8007A500 02001424 */  addiu      $s4, $zero, 0x2
/* 8B4DA34 8007A504 43007410 */  beq        $v1, $s4, .Llevel_44_8007A614
/* 8B4DA38 8007A508 03000224 */   addiu     $v0, $zero, 0x3
/* 8B4DA3C 8007A50C 56006210 */  beq        $v1, $v0, .Llevel_44_8007A668
/* 8B4DA40 8007A510 00000000 */   nop
/* 8B4DA44 8007A514 A7E90108 */  j          .Llevel_44_8007A69C
/* 8B4DA48 8007A518 00000000 */   nop
.Llevel_44_8007A51C:
/* 8B4DA4C 8007A51C 18000526 */  addiu      $a1, $s0, 0x18
/* 8B4DA50 8007A520 3C00078E */  lw         $a3, 0x3C($s0)
/* 8B4DA54 8007A524 88D8000C */  jal        func_80036220
/* 8B4DA58 8007A528 21300000 */   addu      $a2, $zero, $zero
/* 8B4DA5C 8007A52C 93E90108 */  j          .Llevel_44_8007A64C
/* 8B4DA60 8007A530 00000000 */   nop
.Llevel_44_8007A534:
/* 8B4DA64 8007A534 21202002 */  addu       $a0, $s1, $zero
/* 8B4DA68 8007A538 18000526 */  addiu      $a1, $s0, 0x18
/* 8B4DA6C 8007A53C 3C00078E */  lw         $a3, 0x3C($s0)
/* 8B4DA70 8007A540 00040624 */  addiu      $a2, $zero, 0x400
/* 8B4DA74 8007A544 88D8000C */  jal        func_80036220
/* 8B4DA78 8007A548 0004E724 */   addiu     $a3, $a3, 0x400
/* 8B4DA7C 8007A54C 39004010 */  beqz       $v0, .Llevel_44_8007A634
/* 8B4DA80 8007A550 00000000 */   nop
/* 8B4DA84 8007A554 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 8B4DA88 8007A558 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
/* 8B4DA8C 8007A55C 00000000 */  nop
/* 8B4DA90 8007A560 4E004014 */  bnez       $v0, .Llevel_44_8007A69C
/* 8B4DA94 8007A564 02000324 */   addiu     $v1, $zero, 0x2
/* 8B4DA98 8007A568 0780043C */  lui        $a0, %hi(D_8006C5C8)
/* 8B4DA9C 8007A56C C8C5848C */  lw         $a0, %lo(D_8006C5C8)($a0)
/* 8B4DAA0 8007A570 80000224 */  addiu      $v0, $zero, 0x80
/* 8B4DAA4 8007A574 03008010 */  beqz       $a0, .Llevel_44_8007A584
/* 8B4DAA8 8007A578 1000A2A3 */   sb        $v0, 0x10($sp)
/* 8B4DAAC 8007A57C 40100400 */  sll        $v0, $a0, 1
/* 8B4DAB0 8007A580 02004324 */  addiu      $v1, $v0, 0x2
.Llevel_44_8007A584:
/* 8B4DAB4 8007A584 0E000424 */  addiu      $a0, $zero, 0xE
/* 8B4DAB8 8007A588 1000A527 */  addiu      $a1, $sp, 0x10
/* 8B4DABC 8007A58C C0180300 */  sll        $v1, $v1, 3
/* 8B4DAC0 8007A590 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 8B4DAC4 8007A594 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 8B4DAC8 8007A598 0780013C */  lui        $at, %hi(D_80072098)
/* 8B4DACC 8007A59C 21082300 */  addu       $at, $at, $v1
/* 8B4DAD0 8007A5A0 9820308C */  lw         $s0, %lo(D_80072098)($at)
/* 8B4DAD4 8007A5A4 00110200 */  sll        $v0, $v0, 4
/* 8B4DAD8 8007A5A8 0780013C */  lui        $at, %hi(D_8006DBE8)
/* 8B4DADC 8007A5AC 21082200 */  addu       $at, $at, $v0
/* 8B4DAE0 8007A5B0 E8DB228C */  lw         $v0, %lo(D_8006DBE8)($at)
/* 8B4DAE4 8007A5B4 21300000 */  addu       $a2, $zero, $zero
/* 8B4DAE8 8007A5B8 2F78010C */  jal        func_8005E0BC
/* 8B4DAEC 8007A5BC 21800202 */   addu      $s0, $s0, $v0
/* 8B4DAF0 8007A5C0 21200002 */  addu       $a0, $s0, $zero
/* 8B4DAF4 8007A5C4 02008104 */  bgez       $a0, .Llevel_44_8007A5D0
/* 8B4DAF8 8007A5C8 F8FF9026 */   addiu     $s0, $s4, -0x8
/* 8B4DAFC 8007A5CC FF078424 */  addiu      $a0, $a0, 0x7FF
.Llevel_44_8007A5D0:
/* 8B4DB00 8007A5D0 21280002 */  addu       $a1, $s0, $zero
/* 8B4DB04 8007A5D4 0780023C */  lui        $v0, %hi(D_8006E470)
/* 8B4DB08 8007A5D8 70E4428C */  lw         $v0, %lo(D_8006E470)($v0)
/* 8B4DB0C 8007A5DC C3220400 */  sra        $a0, $a0, 11
/* 8B4DB10 8007A5E0 1B7D010C */  jal        CdIntToPos
/* 8B4DB14 8007A5E4 21204400 */   addu      $a0, $v0, $a0
/* 8B4DB18 8007A5E8 02000424 */  addiu      $a0, $zero, 0x2
/* 8B4DB1C 8007A5EC 21280002 */  addu       $a1, $s0, $zero
/* 8B4DB20 8007A5F0 2F78010C */  jal        func_8005E0BC
/* 8B4DB24 8007A5F4 21300000 */   addu      $a2, $zero, $zero
/* 8B4DB28 8007A5F8 16000424 */  addiu      $a0, $zero, 0x16
/* 8B4DB2C 8007A5FC 21280000 */  addu       $a1, $zero, $zero
/* 8B4DB30 8007A600 2F78010C */  jal        func_8005E0BC
/* 8B4DB34 8007A604 21300000 */   addu      $a2, $zero, $zero
/* 8B4DB38 8007A608 02000224 */  addiu      $v0, $zero, 0x2
/* 8B4DB3C 8007A60C A7E90108 */  j          .Llevel_44_8007A69C
/* 8B4DB40 8007A610 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_44_8007A614:
/* 8B4DB44 8007A614 21202002 */  addu       $a0, $s1, $zero
/* 8B4DB48 8007A618 18000526 */  addiu      $a1, $s0, 0x18
/* 8B4DB4C 8007A61C 3C00078E */  lw         $a3, 0x3C($s0)
/* 8B4DB50 8007A620 00040624 */  addiu      $a2, $zero, 0x400
/* 8B4DB54 8007A624 88D8000C */  jal        func_80036220
/* 8B4DB58 8007A628 0004E724 */   addiu     $a3, $a3, 0x400
/* 8B4DB5C 8007A62C 05004014 */  bnez       $v0, .Llevel_44_8007A644
/* 8B4DB60 8007A630 00000000 */   nop
.Llevel_44_8007A634:
/* 8B4DB64 8007A634 0780013C */  lui        $at, %hi(D_8006E49C)
/* 8B4DB68 8007A638 9CE420AC */  sw         $zero, %lo(D_8006E49C)($at)
/* 8B4DB6C 8007A63C A7E90108 */  j          .Llevel_44_8007A69C
/* 8B4DB70 8007A640 480040A2 */   sb        $zero, 0x48($s2)
.Llevel_44_8007A644:
/* 8B4DB74 8007A644 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 8B4DB78 8007A648 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
.Llevel_44_8007A64C:
/* 8B4DB7C 8007A64C 00000000 */  nop
/* 8B4DB80 8007A650 12004010 */  beqz       $v0, .Llevel_44_8007A69C
/* 8B4DB84 8007A654 01000224 */   addiu     $v0, $zero, 0x1
/* 8B4DB88 8007A658 0780013C */  lui        $at, %hi(D_8006E49C)
/* 8B4DB8C 8007A65C 9CE433AC */  sw         $s3, %lo(D_8006E49C)($at)
/* 8B4DB90 8007A660 A7E90108 */  j          .Llevel_44_8007A69C
/* 8B4DB94 8007A664 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_44_8007A668:
/* 8B4DB98 8007A668 3000028E */  lw         $v0, 0x30($s0)
/* 8B4DB9C 8007A66C 3400048E */  lw         $a0, 0x34($s0)
/* 8B4DBA0 8007A670 40280200 */  sll        $a1, $v0, 1
/* 8B4DBA4 8007A674 2128A200 */  addu       $a1, $a1, $v0
/* 8B4DBA8 8007A678 80280500 */  sll        $a1, $a1, 2
/* 8B4DBAC 8007A67C 2328A200 */  subu       $a1, $a1, $v0
/* 8B4DBB0 8007A680 0780023C */  lui        $v0, %hi(D_8006C550)
/* 8B4DBB4 8007A684 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 8B4DBB8 8007A688 C0280500 */  sll        $a1, $a1, 3
/* 8B4DBBC 8007A68C 464A010C */  jal        func_80052918
/* 8B4DBC0 8007A690 21284500 */   addu      $a1, $v0, $a1
/* 8B4DBC4 8007A694 0780013C */  lui        $at, %hi(D_8006C4F8)
/* 8B4DBC8 8007A698 F8C434AC */  sw         $s4, %lo(D_8006C4F8)($at)
.Llevel_44_8007A69C:
/* 8B4DBCC 8007A69C 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 8B4DBD0 8007A6A0 2800B48F */  lw         $s4, 0x28($sp)
/* 8B4DBD4 8007A6A4 2400B38F */  lw         $s3, 0x24($sp)
/* 8B4DBD8 8007A6A8 2000B28F */  lw         $s2, 0x20($sp)
/* 8B4DBDC 8007A6AC 1C00B18F */  lw         $s1, 0x1C($sp)
/* 8B4DBE0 8007A6B0 1800B08F */  lw         $s0, 0x18($sp)
/* 8B4DBE4 8007A6B4 3000BD27 */  addiu      $sp, $sp, 0x30
/* 8B4DBE8 8007A6B8 0800E003 */  jr         $ra
/* 8B4DBEC 8007A6BC 00000000 */   nop
.size func_level_44_8007A414, . - func_level_44_8007A414
