.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_43_8007A408
/* 879F938 8007A408 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 879F93C 8007A40C 2000B2AF */  sw         $s2, 0x20($sp)
/* 879F940 8007A410 21908000 */  addu       $s2, $a0, $zero
/* 879F944 8007A414 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 879F948 8007A418 2800B4AF */  sw         $s4, 0x28($sp)
/* 879F94C 8007A41C 2400B3AF */  sw         $s3, 0x24($sp)
/* 879F950 8007A420 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 879F954 8007A424 1800B0AF */  sw         $s0, 0x18($sp)
/* 879F958 8007A428 0000508E */  lw         $s0, 0x0($s2)
/* 879F95C 8007A42C 0780023C */  lui        $v0, %hi(D_8006C5C8)
/* 879F960 8007A430 C8C5428C */  lw         $v0, %lo(D_8006C5C8)($v0)
/* 879F964 8007A434 4000038E */  lw         $v1, 0x40($s0)
/* 879F968 8007A438 00000000 */  nop
/* 879F96C 8007A43C 94006214 */  bne        $v1, $v0, .Llevel_43_8007A690
/* 879F970 8007A440 00000000 */   nop
/* 879F974 8007A444 0780143C */  lui        $s4, %hi(D_8006E480)
/* 879F978 8007A448 80E49426 */  addiu      $s4, $s4, %lo(D_8006E480)
/* 879F97C 8007A44C 0000828E */  lw         $v0, 0x0($s4)
/* 879F980 8007A450 00000000 */  nop
/* 879F984 8007A454 8E004014 */  bnez       $v0, .Llevel_43_8007A690
/* 879F988 8007A458 01001324 */   addiu     $s3, $zero, 0x1
/* 879F98C 8007A45C 0780033C */  lui        $v1, %hi(D_8006E344)
/* 879F990 8007A460 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 879F994 8007A464 00000000 */  nop
/* 879F998 8007A468 89007310 */  beq        $v1, $s3, .Llevel_43_8007A690
/* 879F99C 8007A46C 0F000224 */   addiu     $v0, $zero, 0xF
/* 879F9A0 8007A470 87006210 */  beq        $v1, $v0, .Llevel_43_8007A690
/* 879F9A4 8007A474 21280002 */   addu      $a1, $s0, $zero
/* 879F9A8 8007A478 0780113C */  lui        $s1, %hi(D_80070328)
/* 879F9AC 8007A47C 28033126 */  addiu      $s1, $s1, %lo(D_80070328)
/* 879F9B0 8007A480 21202002 */  addu       $a0, $s1, $zero
/* 879F9B4 8007A484 3800078E */  lw         $a3, 0x38($s0)
/* 879F9B8 8007A488 88D8000C */  jal        func_80036220
/* 879F9BC 8007A48C 21300000 */   addu      $a2, $zero, $zero
/* 879F9C0 8007A490 0E004010 */  beqz       $v0, .Llevel_43_8007A4CC
/* 879F9C4 8007A494 00000000 */   nop
/* 879F9C8 8007A498 3000028E */  lw         $v0, 0x30($s0)
/* 879F9CC 8007A49C 3400048E */  lw         $a0, 0x34($s0)
/* 879F9D0 8007A4A0 40280200 */  sll        $a1, $v0, 1
/* 879F9D4 8007A4A4 2128A200 */  addu       $a1, $a1, $v0
/* 879F9D8 8007A4A8 80280500 */  sll        $a1, $a1, 2
/* 879F9DC 8007A4AC 2328A200 */  subu       $a1, $a1, $v0
/* 879F9E0 8007A4B0 0780023C */  lui        $v0, %hi(D_8006C550)
/* 879F9E4 8007A4B4 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 879F9E8 8007A4B8 C0280500 */  sll        $a1, $a1, 3
/* 879F9EC 8007A4BC 464A010C */  jal        func_80052918
/* 879F9F0 8007A4C0 21284500 */   addu      $a1, $v0, $a1
/* 879F9F4 8007A4C4 A4E90108 */  j          .Llevel_43_8007A690
/* 879F9F8 8007A4C8 00000000 */   nop
.Llevel_43_8007A4CC:
/* 879F9FC 8007A4CC 48004392 */  lbu        $v1, 0x48($s2)
/* 879FA00 8007A4D0 00000000 */  nop
/* 879FA04 8007A4D4 14007310 */  beq        $v1, $s3, .Llevel_43_8007A528
/* 879FA08 8007A4D8 02006228 */   slti      $v0, $v1, 0x2
/* 879FA0C 8007A4DC 05004010 */  beqz       $v0, .Llevel_43_8007A4F4
/* 879FA10 8007A4E0 00000000 */   nop
/* 879FA14 8007A4E4 0A006010 */  beqz       $v1, .Llevel_43_8007A510
/* 879FA18 8007A4E8 21202002 */   addu      $a0, $s1, $zero
/* 879FA1C 8007A4EC A4E90108 */  j          .Llevel_43_8007A690
/* 879FA20 8007A4F0 00000000 */   nop
.Llevel_43_8007A4F4:
/* 879FA24 8007A4F4 02001424 */  addiu      $s4, $zero, 0x2
/* 879FA28 8007A4F8 43007410 */  beq        $v1, $s4, .Llevel_43_8007A608
/* 879FA2C 8007A4FC 03000224 */   addiu     $v0, $zero, 0x3
/* 879FA30 8007A500 56006210 */  beq        $v1, $v0, .Llevel_43_8007A65C
/* 879FA34 8007A504 00000000 */   nop
/* 879FA38 8007A508 A4E90108 */  j          .Llevel_43_8007A690
/* 879FA3C 8007A50C 00000000 */   nop
.Llevel_43_8007A510:
/* 879FA40 8007A510 18000526 */  addiu      $a1, $s0, 0x18
/* 879FA44 8007A514 3C00078E */  lw         $a3, 0x3C($s0)
/* 879FA48 8007A518 88D8000C */  jal        func_80036220
/* 879FA4C 8007A51C 21300000 */   addu      $a2, $zero, $zero
/* 879FA50 8007A520 90E90108 */  j          .Llevel_43_8007A640
/* 879FA54 8007A524 00000000 */   nop
.Llevel_43_8007A528:
/* 879FA58 8007A528 21202002 */  addu       $a0, $s1, $zero
/* 879FA5C 8007A52C 18000526 */  addiu      $a1, $s0, 0x18
/* 879FA60 8007A530 3C00078E */  lw         $a3, 0x3C($s0)
/* 879FA64 8007A534 00040624 */  addiu      $a2, $zero, 0x400
/* 879FA68 8007A538 88D8000C */  jal        func_80036220
/* 879FA6C 8007A53C 0004E724 */   addiu     $a3, $a3, 0x400
/* 879FA70 8007A540 39004010 */  beqz       $v0, .Llevel_43_8007A628
/* 879FA74 8007A544 00000000 */   nop
/* 879FA78 8007A548 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 879FA7C 8007A54C 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
/* 879FA80 8007A550 00000000 */  nop
/* 879FA84 8007A554 4E004014 */  bnez       $v0, .Llevel_43_8007A690
/* 879FA88 8007A558 02000324 */   addiu     $v1, $zero, 0x2
/* 879FA8C 8007A55C 0780043C */  lui        $a0, %hi(D_8006C5C8)
/* 879FA90 8007A560 C8C5848C */  lw         $a0, %lo(D_8006C5C8)($a0)
/* 879FA94 8007A564 80000224 */  addiu      $v0, $zero, 0x80
/* 879FA98 8007A568 03008010 */  beqz       $a0, .Llevel_43_8007A578
/* 879FA9C 8007A56C 1000A2A3 */   sb        $v0, 0x10($sp)
/* 879FAA0 8007A570 40100400 */  sll        $v0, $a0, 1
/* 879FAA4 8007A574 02004324 */  addiu      $v1, $v0, 0x2
.Llevel_43_8007A578:
/* 879FAA8 8007A578 0E000424 */  addiu      $a0, $zero, 0xE
/* 879FAAC 8007A57C 1000A527 */  addiu      $a1, $sp, 0x10
/* 879FAB0 8007A580 C0180300 */  sll        $v1, $v1, 3
/* 879FAB4 8007A584 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 879FAB8 8007A588 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 879FABC 8007A58C 0780013C */  lui        $at, %hi(D_80072098)
/* 879FAC0 8007A590 21082300 */  addu       $at, $at, $v1
/* 879FAC4 8007A594 9820308C */  lw         $s0, %lo(D_80072098)($at)
/* 879FAC8 8007A598 00110200 */  sll        $v0, $v0, 4
/* 879FACC 8007A59C 0780013C */  lui        $at, %hi(D_8006DBE8)
/* 879FAD0 8007A5A0 21082200 */  addu       $at, $at, $v0
/* 879FAD4 8007A5A4 E8DB228C */  lw         $v0, %lo(D_8006DBE8)($at)
/* 879FAD8 8007A5A8 21300000 */  addu       $a2, $zero, $zero
/* 879FADC 8007A5AC 2F78010C */  jal        func_8005E0BC
/* 879FAE0 8007A5B0 21800202 */   addu      $s0, $s0, $v0
/* 879FAE4 8007A5B4 21200002 */  addu       $a0, $s0, $zero
/* 879FAE8 8007A5B8 02008104 */  bgez       $a0, .Llevel_43_8007A5C4
/* 879FAEC 8007A5BC F8FF9026 */   addiu     $s0, $s4, -0x8
/* 879FAF0 8007A5C0 FF078424 */  addiu      $a0, $a0, 0x7FF
.Llevel_43_8007A5C4:
/* 879FAF4 8007A5C4 21280002 */  addu       $a1, $s0, $zero
/* 879FAF8 8007A5C8 0780023C */  lui        $v0, %hi(D_8006E470)
/* 879FAFC 8007A5CC 70E4428C */  lw         $v0, %lo(D_8006E470)($v0)
/* 879FB00 8007A5D0 C3220400 */  sra        $a0, $a0, 11
/* 879FB04 8007A5D4 1B7D010C */  jal        CdIntToPos
/* 879FB08 8007A5D8 21204400 */   addu      $a0, $v0, $a0
/* 879FB0C 8007A5DC 02000424 */  addiu      $a0, $zero, 0x2
/* 879FB10 8007A5E0 21280002 */  addu       $a1, $s0, $zero
/* 879FB14 8007A5E4 2F78010C */  jal        func_8005E0BC
/* 879FB18 8007A5E8 21300000 */   addu      $a2, $zero, $zero
/* 879FB1C 8007A5EC 16000424 */  addiu      $a0, $zero, 0x16
/* 879FB20 8007A5F0 21280000 */  addu       $a1, $zero, $zero
/* 879FB24 8007A5F4 2F78010C */  jal        func_8005E0BC
/* 879FB28 8007A5F8 21300000 */   addu      $a2, $zero, $zero
/* 879FB2C 8007A5FC 02000224 */  addiu      $v0, $zero, 0x2
/* 879FB30 8007A600 A4E90108 */  j          .Llevel_43_8007A690
/* 879FB34 8007A604 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_43_8007A608:
/* 879FB38 8007A608 21202002 */  addu       $a0, $s1, $zero
/* 879FB3C 8007A60C 18000526 */  addiu      $a1, $s0, 0x18
/* 879FB40 8007A610 3C00078E */  lw         $a3, 0x3C($s0)
/* 879FB44 8007A614 00040624 */  addiu      $a2, $zero, 0x400
/* 879FB48 8007A618 88D8000C */  jal        func_80036220
/* 879FB4C 8007A61C 0004E724 */   addiu     $a3, $a3, 0x400
/* 879FB50 8007A620 05004014 */  bnez       $v0, .Llevel_43_8007A638
/* 879FB54 8007A624 00000000 */   nop
.Llevel_43_8007A628:
/* 879FB58 8007A628 0780013C */  lui        $at, %hi(D_8006E49C)
/* 879FB5C 8007A62C 9CE420AC */  sw         $zero, %lo(D_8006E49C)($at)
/* 879FB60 8007A630 A4E90108 */  j          .Llevel_43_8007A690
/* 879FB64 8007A634 480040A2 */   sb        $zero, 0x48($s2)
.Llevel_43_8007A638:
/* 879FB68 8007A638 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 879FB6C 8007A63C 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
.Llevel_43_8007A640:
/* 879FB70 8007A640 00000000 */  nop
/* 879FB74 8007A644 12004010 */  beqz       $v0, .Llevel_43_8007A690
/* 879FB78 8007A648 01000224 */   addiu     $v0, $zero, 0x1
/* 879FB7C 8007A64C 0780013C */  lui        $at, %hi(D_8006E49C)
/* 879FB80 8007A650 9CE433AC */  sw         $s3, %lo(D_8006E49C)($at)
/* 879FB84 8007A654 A4E90108 */  j          .Llevel_43_8007A690
/* 879FB88 8007A658 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_43_8007A65C:
/* 879FB8C 8007A65C 3000028E */  lw         $v0, 0x30($s0)
/* 879FB90 8007A660 3400048E */  lw         $a0, 0x34($s0)
/* 879FB94 8007A664 40280200 */  sll        $a1, $v0, 1
/* 879FB98 8007A668 2128A200 */  addu       $a1, $a1, $v0
/* 879FB9C 8007A66C 80280500 */  sll        $a1, $a1, 2
/* 879FBA0 8007A670 2328A200 */  subu       $a1, $a1, $v0
/* 879FBA4 8007A674 0780023C */  lui        $v0, %hi(D_8006C550)
/* 879FBA8 8007A678 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 879FBAC 8007A67C C0280500 */  sll        $a1, $a1, 3
/* 879FBB0 8007A680 464A010C */  jal        func_80052918
/* 879FBB4 8007A684 21284500 */   addu      $a1, $v0, $a1
/* 879FBB8 8007A688 0780013C */  lui        $at, %hi(D_8006C4F8)
/* 879FBBC 8007A68C F8C434AC */  sw         $s4, %lo(D_8006C4F8)($at)
.Llevel_43_8007A690:
/* 879FBC0 8007A690 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 879FBC4 8007A694 2800B48F */  lw         $s4, 0x28($sp)
/* 879FBC8 8007A698 2400B38F */  lw         $s3, 0x24($sp)
/* 879FBCC 8007A69C 2000B28F */  lw         $s2, 0x20($sp)
/* 879FBD0 8007A6A0 1C00B18F */  lw         $s1, 0x1C($sp)
/* 879FBD4 8007A6A4 1800B08F */  lw         $s0, 0x18($sp)
/* 879FBD8 8007A6A8 3000BD27 */  addiu      $sp, $sp, 0x30
/* 879FBDC 8007A6AC 0800E003 */  jr         $ra
/* 879FBE0 8007A6B0 00000000 */   nop
.size func_level_43_8007A408, . - func_level_43_8007A408
