.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1016_level_32
/* 6DF35F8 8008C0C8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 6DF35FC 8008C0CC 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 6DF3600 8008C0D0 21888000 */  addu       $s1, $a0, $zero
/* 6DF3604 8008C0D4 2400BFAF */  sw         $ra, 0x24($sp)
/* 6DF3608 8008C0D8 2000B2AF */  sw         $s2, 0x20($sp)
/* 6DF360C 8008C0DC 1800B0AF */  sw         $s0, 0x18($sp)
/* 6DF3610 8008C0E0 0000308E */  lw         $s0, 0x0($s1)
/* 6DF3614 8008C0E4 0780023C */  lui        $v0, %hi(D_8006C708)
/* 6DF3618 8008C0E8 08C7428C */  lw         $v0, %lo(D_8006C708)($v0)
/* 6DF361C 8008C0EC 0000038E */  lw         $v1, 0x0($s0)
/* 6DF3620 8008C0F0 00000000 */  nop
/* 6DF3624 8008C0F4 21104300 */  addu       $v0, $v0, $v1
/* 6DF3628 8008C0F8 00004390 */  lbu        $v1, 0x0($v0)
/* 6DF362C 8008C0FC 00000000 */  nop
/* 6DF3630 8008C100 80100300 */  sll        $v0, $v1, 2
/* 6DF3634 8008C104 21104300 */  addu       $v0, $v0, $v1
/* 6DF3638 8008C108 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 6DF363C 8008C10C A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 6DF3640 8008C110 80100200 */  sll        $v0, $v0, 2
/* 6DF3644 8008C114 21104300 */  addu       $v0, $v0, $v1
/* 6DF3648 8008C118 10004290 */  lbu        $v0, 0x10($v0)
/* 6DF364C 8008C11C 00000000 */  nop
/* 6DF3650 8008C120 39004010 */  beqz       $v0, .Llevel_32_8008C208
/* 6DF3654 8008C124 00000000 */   nop
/* 6DF3658 8008C128 0780053C */  lui        $a1, %hi(D_8006E044)
/* 6DF365C 8008C12C 44E0A524 */  addiu      $a1, $a1, %lo(D_8006E044)
/* 6DF3660 8008C130 0000A28C */  lw         $v0, 0x0($a1)
/* 6DF3664 8008C134 00000000 */  nop
/* 6DF3668 8008C138 F7FF4224 */  addiu      $v0, $v0, -0x9
/* 6DF366C 8008C13C 0200422C */  sltiu      $v0, $v0, 0x2
/* 6DF3670 8008C140 08004010 */  beqz       $v0, .Llevel_32_8008C164
/* 6DF3674 8008C144 0C002426 */   addiu     $a0, $s1, 0xC
/* 6DF3678 8008C148 CD3C010C */  jal        func_8004F334
/* 6DF367C 8008C14C DCFFA524 */   addiu     $a1, $a1, -0x24
/* 6DF3680 8008C150 1400238E */  lw         $v1, 0x14($s1)
/* 6DF3684 8008C154 0780043C */  lui        $a0, %hi(D_8006E028)
/* 6DF3688 8008C158 28E0848C */  lw         $a0, %lo(D_8006E028)($a0)
/* 6DF368C 8008C15C 62300208 */  j          .Llevel_32_8008C188
/* 6DF3690 8008C160 23186400 */   subu      $v1, $v1, $a0
.Llevel_32_8008C164:
/* 6DF3694 8008C164 0780053C */  lui        $a1, %hi(D_80070328)
/* 6DF3698 8008C168 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 6DF369C 8008C16C CD3C010C */  jal        func_8004F334
/* 6DF36A0 8008C170 0C002426 */   addiu     $a0, $s1, 0xC
/* 6DF36A4 8008C174 1400238E */  lw         $v1, 0x14($s1)
/* 6DF36A8 8008C178 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 6DF36AC 8008C17C 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 6DF36B0 8008C180 00000000 */  nop
/* 6DF36B4 8008C184 23186400 */  subu       $v1, $v1, $a0
.Llevel_32_8008C188:
/* 6DF36B8 8008C188 02006104 */  bgez       $v1, .Llevel_32_8008C194
/* 6DF36BC 8008C18C 00000000 */   nop
/* 6DF36C0 8008C190 23180300 */  negu       $v1, $v1
.Llevel_32_8008C194:
/* 6DF36C4 8008C194 21286200 */  addu       $a1, $v1, $v0
/* 6DF36C8 8008C198 0780023C */  lui        $v0, %hi(D_8006C708)
/* 6DF36CC 8008C19C 08C7428C */  lw         $v0, %lo(D_8006C708)($v0)
/* 6DF36D0 8008C1A0 0000038E */  lw         $v1, 0x0($s0)
/* 6DF36D4 8008C1A4 80200500 */  sll        $a0, $a1, 2
/* 6DF36D8 8008C1A8 21104300 */  addu       $v0, $v0, $v1
/* 6DF36DC 8008C1AC 00004390 */  lbu        $v1, 0x0($v0)
/* 6DF36E0 8008C1B0 23208500 */  subu       $a0, $a0, $a1
/* 6DF36E4 8008C1B4 80100300 */  sll        $v0, $v1, 2
/* 6DF36E8 8008C1B8 21104300 */  addu       $v0, $v0, $v1
/* 6DF36EC 8008C1BC 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 6DF36F0 8008C1C0 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 6DF36F4 8008C1C4 80100200 */  sll        $v0, $v0, 2
/* 6DF36F8 8008C1C8 21104300 */  addu       $v0, $v0, $v1
/* 6DF36FC 8008C1CC 0A004294 */  lhu        $v0, 0xA($v0)
/* 6DF3700 8008C1D0 03290400 */  sra        $a1, $a0, 4
/* 6DF3704 8008C1D4 2A10A200 */  slt        $v0, $a1, $v0
/* 6DF3708 8008C1D8 28004010 */  beqz       $v0, .Llevel_32_8008C27C
/* 6DF370C 8008C1DC 00000000 */   nop
/* 6DF3710 8008C1E0 1800058E */  lw         $a1, 0x18($s0)
/* 6DF3714 8008C1E4 F0EF000C */  jal        func_8003BFC0
/* 6DF3718 8008C1E8 21202002 */   addu      $a0, $s1, $zero
/* 6DF371C 8008C1EC 23004014 */  bnez       $v0, .Llevel_32_8008C27C
/* 6DF3720 8008C1F0 21202002 */   addu      $a0, $s1, $zero
/* 6DF3724 8008C1F4 0000058E */  lw         $a1, 0x0($s0)
/* 6DF3728 8008C1F8 C4EE000C */  jal        func_8003BB10
/* 6DF372C 8008C1FC 04000624 */   addiu     $a2, $zero, 0x4
/* 6DF3730 8008C200 9F300208 */  j          .Llevel_32_8008C27C
/* 6DF3734 8008C204 180002AE */   sw        $v0, 0x18($s0)
.Llevel_32_8008C208:
/* 6DF3738 8008C208 14000426 */  addiu      $a0, $s0, 0x14
/* 6DF373C 8008C20C 69D6000C */  jal        func_800359A4
/* 6DF3740 8008C210 04000524 */   addiu     $a1, $zero, 0x4
/* 6DF3744 8008C214 19004010 */  beqz       $v0, .Llevel_32_8008C27C
/* 6DF3748 8008C218 00000000 */   nop
/* 6DF374C 8008C21C 0000048E */  lw         $a0, 0x0($s0)
/* 6DF3750 8008C220 0400058E */  lw         $a1, 0x4($s0)
/* 6DF3754 8008C224 00000000 */  nop
/* 6DF3758 8008C228 2A108500 */  slt        $v0, $a0, $a1
/* 6DF375C 8008C22C 04004010 */  beqz       $v0, .Llevel_32_8008C240
/* 6DF3760 8008C230 21908000 */   addu      $s2, $a0, $zero
/* 6DF3764 8008C234 DBD8000C */  jal        func_8003636C
/* 6DF3768 8008C238 00000000 */   nop
/* 6DF376C 8008C23C 21904000 */  addu       $s2, $v0, $zero
.Llevel_32_8008C240:
/* 6DF3770 8008C240 0800048E */  lw         $a0, 0x8($s0)
/* 6DF3774 8008C244 0C00058E */  lw         $a1, 0xC($s0)
/* 6DF3778 8008C248 00000000 */  nop
/* 6DF377C 8008C24C 2A108500 */  slt        $v0, $a0, $a1
/* 6DF3780 8008C250 05004010 */  beqz       $v0, .Llevel_32_8008C268
/* 6DF3784 8008C254 00000000 */   nop
/* 6DF3788 8008C258 DBD8000C */  jal        func_8003636C
/* 6DF378C 8008C25C 00000000 */   nop
/* 6DF3790 8008C260 9B300208 */  j          .Llevel_32_8008C26C
/* 6DF3794 8008C264 140002AE */   sw        $v0, 0x14($s0)
.Llevel_32_8008C268:
/* 6DF3798 8008C268 140004AE */  sw         $a0, 0x14($s0)
.Llevel_32_8008C26C:
/* 6DF379C 8008C26C 21202002 */  addu       $a0, $s1, $zero
/* 6DF37A0 8008C270 21284002 */  addu       $a1, $s2, $zero
/* 6DF37A4 8008C274 C4EE000C */  jal        func_8003BB10
/* 6DF37A8 8008C278 21300000 */   addu      $a2, $zero, $zero
.Llevel_32_8008C27C:
/* 6DF37AC 8008C27C 1000058E */  lw         $a1, 0x10($s0)
/* 6DF37B0 8008C280 00000000 */  nop
/* 6DF37B4 8008C284 0C00A010 */  beqz       $a1, .Llevel_32_8008C2B8
/* 6DF37B8 8008C288 00000000 */   nop
/* 6DF37BC 8008C28C 0780043C */  lui        $a0, %hi(D_80070328)
/* 6DF37C0 8008C290 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 6DF37C4 8008C294 46D9000C */  jal        func_80036518
/* 6DF37C8 8008C298 1000A627 */   addiu     $a2, $sp, 0x10
/* 6DF37CC 8008C29C 0C002426 */  addiu      $a0, $s1, 0xC
/* 6DF37D0 8008C2A0 1000028E */  lw         $v0, 0x10($s0)
/* 6DF37D4 8008C2A4 1000A58F */  lw         $a1, 0x10($sp)
/* 6DF37D8 8008C2A8 0C00428C */  lw         $v0, 0xC($v0)
/* 6DF37DC 8008C2AC 00290500 */  sll        $a1, $a1, 4
/* 6DF37E0 8008C2B0 5E3C010C */  jal        func_8004F178
/* 6DF37E4 8008C2B4 21284500 */   addu      $a1, $v0, $a1
.Llevel_32_8008C2B8:
/* 6DF37E8 8008C2B8 2400BF8F */  lw         $ra, 0x24($sp)
/* 6DF37EC 8008C2BC 2000B28F */  lw         $s2, 0x20($sp)
/* 6DF37F0 8008C2C0 1C00B18F */  lw         $s1, 0x1C($sp)
/* 6DF37F4 8008C2C4 1800B08F */  lw         $s0, 0x18($sp)
/* 6DF37F8 8008C2C8 2800BD27 */  addiu      $sp, $sp, 0x28
/* 6DF37FC 8008C2CC 0800E003 */  jr         $ra
/* 6DF3800 8008C2D0 00000000 */   nop
.size MobyUpdate_1016_level_32, . - MobyUpdate_1016_level_32
