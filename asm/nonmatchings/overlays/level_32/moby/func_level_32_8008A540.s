.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_8008A540
/* 6DF1A70 8008A540 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 6DF1A74 8008A544 2000B2AF */  sw         $s2, 0x20($sp)
/* 6DF1A78 8008A548 21908000 */  addu       $s2, $a0, $zero
/* 6DF1A7C 8008A54C 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 6DF1A80 8008A550 2800B4AF */  sw         $s4, 0x28($sp)
/* 6DF1A84 8008A554 2400B3AF */  sw         $s3, 0x24($sp)
/* 6DF1A88 8008A558 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 6DF1A8C 8008A55C 1800B0AF */  sw         $s0, 0x18($sp)
/* 6DF1A90 8008A560 0000508E */  lw         $s0, 0x0($s2)
/* 6DF1A94 8008A564 0780023C */  lui        $v0, %hi(D_8006C5C8)
/* 6DF1A98 8008A568 C8C5428C */  lw         $v0, %lo(D_8006C5C8)($v0)
/* 6DF1A9C 8008A56C 4000038E */  lw         $v1, 0x40($s0)
/* 6DF1AA0 8008A570 00000000 */  nop
/* 6DF1AA4 8008A574 94006214 */  bne        $v1, $v0, .Llevel_32_8008A7C8
/* 6DF1AA8 8008A578 00000000 */   nop
/* 6DF1AAC 8008A57C 0780143C */  lui        $s4, %hi(D_8006E480)
/* 6DF1AB0 8008A580 80E49426 */  addiu      $s4, $s4, %lo(D_8006E480)
/* 6DF1AB4 8008A584 0000828E */  lw         $v0, 0x0($s4)
/* 6DF1AB8 8008A588 00000000 */  nop
/* 6DF1ABC 8008A58C 8E004014 */  bnez       $v0, .Llevel_32_8008A7C8
/* 6DF1AC0 8008A590 01001324 */   addiu     $s3, $zero, 0x1
/* 6DF1AC4 8008A594 0780033C */  lui        $v1, %hi(D_8006E344)
/* 6DF1AC8 8008A598 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 6DF1ACC 8008A59C 00000000 */  nop
/* 6DF1AD0 8008A5A0 89007310 */  beq        $v1, $s3, .Llevel_32_8008A7C8
/* 6DF1AD4 8008A5A4 0F000224 */   addiu     $v0, $zero, 0xF
/* 6DF1AD8 8008A5A8 87006210 */  beq        $v1, $v0, .Llevel_32_8008A7C8
/* 6DF1ADC 8008A5AC 21280002 */   addu      $a1, $s0, $zero
/* 6DF1AE0 8008A5B0 0780113C */  lui        $s1, %hi(D_80070328)
/* 6DF1AE4 8008A5B4 28033126 */  addiu      $s1, $s1, %lo(D_80070328)
/* 6DF1AE8 8008A5B8 21202002 */  addu       $a0, $s1, $zero
/* 6DF1AEC 8008A5BC 3800078E */  lw         $a3, 0x38($s0)
/* 6DF1AF0 8008A5C0 88D8000C */  jal        func_80036220
/* 6DF1AF4 8008A5C4 21300000 */   addu      $a2, $zero, $zero
/* 6DF1AF8 8008A5C8 0E004010 */  beqz       $v0, .Llevel_32_8008A604
/* 6DF1AFC 8008A5CC 00000000 */   nop
/* 6DF1B00 8008A5D0 3000028E */  lw         $v0, 0x30($s0)
/* 6DF1B04 8008A5D4 3400048E */  lw         $a0, 0x34($s0)
/* 6DF1B08 8008A5D8 40280200 */  sll        $a1, $v0, 1
/* 6DF1B0C 8008A5DC 2128A200 */  addu       $a1, $a1, $v0
/* 6DF1B10 8008A5E0 80280500 */  sll        $a1, $a1, 2
/* 6DF1B14 8008A5E4 2328A200 */  subu       $a1, $a1, $v0
/* 6DF1B18 8008A5E8 0780023C */  lui        $v0, %hi(D_8006C550)
/* 6DF1B1C 8008A5EC 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 6DF1B20 8008A5F0 C0280500 */  sll        $a1, $a1, 3
/* 6DF1B24 8008A5F4 464A010C */  jal        func_80052918
/* 6DF1B28 8008A5F8 21284500 */   addu      $a1, $v0, $a1
/* 6DF1B2C 8008A5FC F2290208 */  j          .Llevel_32_8008A7C8
/* 6DF1B30 8008A600 00000000 */   nop
.Llevel_32_8008A604:
/* 6DF1B34 8008A604 48004392 */  lbu        $v1, 0x48($s2)
/* 6DF1B38 8008A608 00000000 */  nop
/* 6DF1B3C 8008A60C 14007310 */  beq        $v1, $s3, .Llevel_32_8008A660
/* 6DF1B40 8008A610 02006228 */   slti      $v0, $v1, 0x2
/* 6DF1B44 8008A614 05004010 */  beqz       $v0, .Llevel_32_8008A62C
/* 6DF1B48 8008A618 00000000 */   nop
/* 6DF1B4C 8008A61C 0A006010 */  beqz       $v1, .Llevel_32_8008A648
/* 6DF1B50 8008A620 21202002 */   addu      $a0, $s1, $zero
/* 6DF1B54 8008A624 F2290208 */  j          .Llevel_32_8008A7C8
/* 6DF1B58 8008A628 00000000 */   nop
.Llevel_32_8008A62C:
/* 6DF1B5C 8008A62C 02001424 */  addiu      $s4, $zero, 0x2
/* 6DF1B60 8008A630 43007410 */  beq        $v1, $s4, .Llevel_32_8008A740
/* 6DF1B64 8008A634 03000224 */   addiu     $v0, $zero, 0x3
/* 6DF1B68 8008A638 56006210 */  beq        $v1, $v0, .Llevel_32_8008A794
/* 6DF1B6C 8008A63C 00000000 */   nop
/* 6DF1B70 8008A640 F2290208 */  j          .Llevel_32_8008A7C8
/* 6DF1B74 8008A644 00000000 */   nop
.Llevel_32_8008A648:
/* 6DF1B78 8008A648 18000526 */  addiu      $a1, $s0, 0x18
/* 6DF1B7C 8008A64C 3C00078E */  lw         $a3, 0x3C($s0)
/* 6DF1B80 8008A650 88D8000C */  jal        func_80036220
/* 6DF1B84 8008A654 21300000 */   addu      $a2, $zero, $zero
/* 6DF1B88 8008A658 DE290208 */  j          .Llevel_32_8008A778
/* 6DF1B8C 8008A65C 00000000 */   nop
.Llevel_32_8008A660:
/* 6DF1B90 8008A660 21202002 */  addu       $a0, $s1, $zero
/* 6DF1B94 8008A664 18000526 */  addiu      $a1, $s0, 0x18
/* 6DF1B98 8008A668 3C00078E */  lw         $a3, 0x3C($s0)
/* 6DF1B9C 8008A66C 00040624 */  addiu      $a2, $zero, 0x400
/* 6DF1BA0 8008A670 88D8000C */  jal        func_80036220
/* 6DF1BA4 8008A674 0004E724 */   addiu     $a3, $a3, 0x400
/* 6DF1BA8 8008A678 39004010 */  beqz       $v0, .Llevel_32_8008A760
/* 6DF1BAC 8008A67C 00000000 */   nop
/* 6DF1BB0 8008A680 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 6DF1BB4 8008A684 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
/* 6DF1BB8 8008A688 00000000 */  nop
/* 6DF1BBC 8008A68C 4E004014 */  bnez       $v0, .Llevel_32_8008A7C8
/* 6DF1BC0 8008A690 02000324 */   addiu     $v1, $zero, 0x2
/* 6DF1BC4 8008A694 0780043C */  lui        $a0, %hi(D_8006C5C8)
/* 6DF1BC8 8008A698 C8C5848C */  lw         $a0, %lo(D_8006C5C8)($a0)
/* 6DF1BCC 8008A69C 80000224 */  addiu      $v0, $zero, 0x80
/* 6DF1BD0 8008A6A0 03008010 */  beqz       $a0, .Llevel_32_8008A6B0
/* 6DF1BD4 8008A6A4 1000A2A3 */   sb        $v0, 0x10($sp)
/* 6DF1BD8 8008A6A8 40100400 */  sll        $v0, $a0, 1
/* 6DF1BDC 8008A6AC 02004324 */  addiu      $v1, $v0, 0x2
.Llevel_32_8008A6B0:
/* 6DF1BE0 8008A6B0 0E000424 */  addiu      $a0, $zero, 0xE
/* 6DF1BE4 8008A6B4 1000A527 */  addiu      $a1, $sp, 0x10
/* 6DF1BE8 8008A6B8 C0180300 */  sll        $v1, $v1, 3
/* 6DF1BEC 8008A6BC 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 6DF1BF0 8008A6C0 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 6DF1BF4 8008A6C4 0780013C */  lui        $at, %hi(D_80072098)
/* 6DF1BF8 8008A6C8 21082300 */  addu       $at, $at, $v1
/* 6DF1BFC 8008A6CC 9820308C */  lw         $s0, %lo(D_80072098)($at)
/* 6DF1C00 8008A6D0 00110200 */  sll        $v0, $v0, 4
/* 6DF1C04 8008A6D4 0780013C */  lui        $at, %hi(D_8006DBE8)
/* 6DF1C08 8008A6D8 21082200 */  addu       $at, $at, $v0
/* 6DF1C0C 8008A6DC E8DB228C */  lw         $v0, %lo(D_8006DBE8)($at)
/* 6DF1C10 8008A6E0 21300000 */  addu       $a2, $zero, $zero
/* 6DF1C14 8008A6E4 2F78010C */  jal        func_8005E0BC
/* 6DF1C18 8008A6E8 21800202 */   addu      $s0, $s0, $v0
/* 6DF1C1C 8008A6EC 21200002 */  addu       $a0, $s0, $zero
/* 6DF1C20 8008A6F0 02008104 */  bgez       $a0, .Llevel_32_8008A6FC
/* 6DF1C24 8008A6F4 F8FF9026 */   addiu     $s0, $s4, -0x8
/* 6DF1C28 8008A6F8 FF078424 */  addiu      $a0, $a0, 0x7FF
.Llevel_32_8008A6FC:
/* 6DF1C2C 8008A6FC 21280002 */  addu       $a1, $s0, $zero
/* 6DF1C30 8008A700 0780023C */  lui        $v0, %hi(D_8006E470)
/* 6DF1C34 8008A704 70E4428C */  lw         $v0, %lo(D_8006E470)($v0)
/* 6DF1C38 8008A708 C3220400 */  sra        $a0, $a0, 11
/* 6DF1C3C 8008A70C 1B7D010C */  jal        CdIntToPos
/* 6DF1C40 8008A710 21204400 */   addu      $a0, $v0, $a0
/* 6DF1C44 8008A714 02000424 */  addiu      $a0, $zero, 0x2
/* 6DF1C48 8008A718 21280002 */  addu       $a1, $s0, $zero
/* 6DF1C4C 8008A71C 2F78010C */  jal        func_8005E0BC
/* 6DF1C50 8008A720 21300000 */   addu      $a2, $zero, $zero
/* 6DF1C54 8008A724 16000424 */  addiu      $a0, $zero, 0x16
/* 6DF1C58 8008A728 21280000 */  addu       $a1, $zero, $zero
/* 6DF1C5C 8008A72C 2F78010C */  jal        func_8005E0BC
/* 6DF1C60 8008A730 21300000 */   addu      $a2, $zero, $zero
/* 6DF1C64 8008A734 02000224 */  addiu      $v0, $zero, 0x2
/* 6DF1C68 8008A738 F2290208 */  j          .Llevel_32_8008A7C8
/* 6DF1C6C 8008A73C 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_32_8008A740:
/* 6DF1C70 8008A740 21202002 */  addu       $a0, $s1, $zero
/* 6DF1C74 8008A744 18000526 */  addiu      $a1, $s0, 0x18
/* 6DF1C78 8008A748 3C00078E */  lw         $a3, 0x3C($s0)
/* 6DF1C7C 8008A74C 00040624 */  addiu      $a2, $zero, 0x400
/* 6DF1C80 8008A750 88D8000C */  jal        func_80036220
/* 6DF1C84 8008A754 0004E724 */   addiu     $a3, $a3, 0x400
/* 6DF1C88 8008A758 05004014 */  bnez       $v0, .Llevel_32_8008A770
/* 6DF1C8C 8008A75C 00000000 */   nop
.Llevel_32_8008A760:
/* 6DF1C90 8008A760 0780013C */  lui        $at, %hi(D_8006E49C)
/* 6DF1C94 8008A764 9CE420AC */  sw         $zero, %lo(D_8006E49C)($at)
/* 6DF1C98 8008A768 F2290208 */  j          .Llevel_32_8008A7C8
/* 6DF1C9C 8008A76C 480040A2 */   sb        $zero, 0x48($s2)
.Llevel_32_8008A770:
/* 6DF1CA0 8008A770 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 6DF1CA4 8008A774 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
.Llevel_32_8008A778:
/* 6DF1CA8 8008A778 00000000 */  nop
/* 6DF1CAC 8008A77C 12004010 */  beqz       $v0, .Llevel_32_8008A7C8
/* 6DF1CB0 8008A780 01000224 */   addiu     $v0, $zero, 0x1
/* 6DF1CB4 8008A784 0780013C */  lui        $at, %hi(D_8006E49C)
/* 6DF1CB8 8008A788 9CE433AC */  sw         $s3, %lo(D_8006E49C)($at)
/* 6DF1CBC 8008A78C F2290208 */  j          .Llevel_32_8008A7C8
/* 6DF1CC0 8008A790 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_32_8008A794:
/* 6DF1CC4 8008A794 3000028E */  lw         $v0, 0x30($s0)
/* 6DF1CC8 8008A798 3400048E */  lw         $a0, 0x34($s0)
/* 6DF1CCC 8008A79C 40280200 */  sll        $a1, $v0, 1
/* 6DF1CD0 8008A7A0 2128A200 */  addu       $a1, $a1, $v0
/* 6DF1CD4 8008A7A4 80280500 */  sll        $a1, $a1, 2
/* 6DF1CD8 8008A7A8 2328A200 */  subu       $a1, $a1, $v0
/* 6DF1CDC 8008A7AC 0780023C */  lui        $v0, %hi(D_8006C550)
/* 6DF1CE0 8008A7B0 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 6DF1CE4 8008A7B4 C0280500 */  sll        $a1, $a1, 3
/* 6DF1CE8 8008A7B8 464A010C */  jal        func_80052918
/* 6DF1CEC 8008A7BC 21284500 */   addu      $a1, $v0, $a1
/* 6DF1CF0 8008A7C0 0780013C */  lui        $at, %hi(D_8006C4F8)
/* 6DF1CF4 8008A7C4 F8C434AC */  sw         $s4, %lo(D_8006C4F8)($at)
.Llevel_32_8008A7C8:
/* 6DF1CF8 8008A7C8 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 6DF1CFC 8008A7CC 2800B48F */  lw         $s4, 0x28($sp)
/* 6DF1D00 8008A7D0 2400B38F */  lw         $s3, 0x24($sp)
/* 6DF1D04 8008A7D4 2000B28F */  lw         $s2, 0x20($sp)
/* 6DF1D08 8008A7D8 1C00B18F */  lw         $s1, 0x1C($sp)
/* 6DF1D0C 8008A7DC 1800B08F */  lw         $s0, 0x18($sp)
/* 6DF1D10 8008A7E0 3000BD27 */  addiu      $sp, $sp, 0x30
/* 6DF1D14 8008A7E4 0800E003 */  jr         $ra
/* 6DF1D18 8008A7E8 00000000 */   nop
.size func_level_32_8008A540, . - func_level_32_8008A540
