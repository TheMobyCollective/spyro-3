.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_977_level_43
/* 87ADD04 800887D4 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 87ADD08 800887D8 2400B1AF */  sw         $s1, 0x24($sp)
/* 87ADD0C 800887DC 21888000 */  addu       $s1, $a0, $zero
/* 87ADD10 800887E0 01000224 */  addiu      $v0, $zero, 0x1
/* 87ADD14 800887E4 2800BFAF */  sw         $ra, 0x28($sp)
/* 87ADD18 800887E8 2000B0AF */  sw         $s0, 0x20($sp)
/* 87ADD1C 800887EC 48002392 */  lbu        $v1, 0x48($s1)
/* 87ADD20 800887F0 0000308E */  lw         $s0, 0x0($s1)
/* 87ADD24 800887F4 22006210 */  beq        $v1, $v0, .Llevel_43_80088880
/* 87ADD28 800887F8 02006228 */   slti      $v0, $v1, 0x2
/* 87ADD2C 800887FC 05004010 */  beqz       $v0, .Llevel_43_80088814
/* 87ADD30 80088800 00000000 */   nop
/* 87ADD34 80088804 08006010 */  beqz       $v1, .Llevel_43_80088828
/* 87ADD38 80088808 14000526 */   addiu     $a1, $s0, 0x14
/* 87ADD3C 8008880C 5A220208 */  j          .Llevel_43_80088968
/* 87ADD40 80088810 00000000 */   nop
.Llevel_43_80088814:
/* 87ADD44 80088814 02000224 */  addiu      $v0, $zero, 0x2
/* 87ADD48 80088818 3C006210 */  beq        $v1, $v0, .Llevel_43_8008890C
/* 87ADD4C 8008881C 00000000 */   nop
/* 87ADD50 80088820 5A220208 */  j          .Llevel_43_80088968
/* 87ADD54 80088824 00000000 */   nop
.Llevel_43_80088828:
/* 87ADD58 80088828 0780043C */  lui        $a0, %hi(D_80070328)
/* 87ADD5C 8008882C 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 87ADD60 80088830 21300000 */  addu       $a2, $zero, $zero
/* 87ADD64 80088834 88D8000C */  jal        func_80036220
/* 87ADD68 80088838 00280724 */   addiu     $a3, $zero, 0x2800
/* 87ADD6C 8008883C 4A004010 */  beqz       $v0, .Llevel_43_80088968
/* 87ADD70 80088840 00000000 */   nop
/* 87ADD74 80088844 1000038E */  lw         $v1, 0x10($s0)
/* 87ADD78 80088848 00000000 */  nop
/* 87ADD7C 8008884C 40100300 */  sll        $v0, $v1, 1
/* 87ADD80 80088850 21104300 */  addu       $v0, $v0, $v1
/* 87ADD84 80088854 80100200 */  sll        $v0, $v0, 2
/* 87ADD88 80088858 23104300 */  subu       $v0, $v0, $v1
/* 87ADD8C 8008885C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 87ADD90 80088860 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 87ADD94 80088864 C0100200 */  sll        $v0, $v0, 3
/* 87ADD98 80088868 21104300 */  addu       $v0, $v0, $v1
/* 87ADD9C 8008886C 06000324 */  addiu      $v1, $zero, 0x6
/* 87ADDA0 80088870 480043A0 */  sb         $v1, 0x48($v0)
/* 87ADDA4 80088874 01000224 */  addiu      $v0, $zero, 0x1
/* 87ADDA8 80088878 5A220208 */  j          .Llevel_43_80088968
/* 87ADDAC 8008887C 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_43_80088880:
/* 87ADDB0 80088880 0C002426 */  addiu      $a0, $s1, 0xC
/* 87ADDB4 80088884 46002592 */  lbu        $a1, 0x46($s1)
/* 87ADDB8 80088888 0780023C */  lui        $v0, %hi(unk_ovlheader_80074330)
/* 87ADDBC 8008888C 3043428C */  lw         $v0, %lo(unk_ovlheader_80074330)($v0)
/* 87ADDC0 80088890 00000000 */  nop
/* 87ADDC4 80088894 09F84000 */  jalr       $v0
/* 87ADDC8 80088898 21300000 */   addu      $a2, $zero, $zero
/* 87ADDCC 8008889C 32004010 */  beqz       $v0, .Llevel_43_80088968
/* 87ADDD0 800888A0 02000224 */   addiu     $v0, $zero, 0x2
/* 87ADDD4 800888A4 480022A2 */  sb         $v0, 0x48($s1)
/* 87ADDD8 800888A8 01000224 */  addiu      $v0, $zero, 0x1
/* 87ADDDC 800888AC 490022A2 */  sb         $v0, 0x49($s1)
/* 87ADDE0 800888B0 000000AE */  sw         $zero, 0x0($s0)
/* 87ADDE4 800888B4 43002492 */  lbu        $a0, 0x43($s1)
/* 87ADDE8 800888B8 76DA000C */  jal        func_800369D8
/* 87ADDEC 800888BC 00000000 */   nop
/* 87ADDF0 800888C0 17000424 */  addiu      $a0, $zero, 0x17
/* 87ADDF4 800888C4 21280000 */  addu       $a1, $zero, $zero
/* 87ADDF8 800888C8 0280063C */  lui        $a2, %hi(func_80027EE4)
/* 87ADDFC 800888CC E47EC624 */  addiu      $a2, $a2, %lo(func_80027EE4)
/* 87ADE00 800888D0 0780033C */  lui        $v1, %hi(unk_ovlheader_8007448C)
/* 87ADE04 800888D4 8C44638C */  lw         $v1, %lo(unk_ovlheader_8007448C)($v1)
/* 87ADE08 800888D8 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 87ADE0C 800888DC 040002AE */  sw         $v0, 0x4($s0)
/* 87ADE10 800888E0 1400B0AF */  sw         $s0, 0x14($sp)
/* 87ADE14 800888E4 1000A3AF */  sw         $v1, 0x10($sp)
/* 87ADE18 800888E8 0400028E */  lw         $v0, 0x4($s0)
/* 87ADE1C 800888EC 0280073C */  lui        $a3, %hi(func_80027A60)
/* 87ADE20 800888F0 607AE724 */  addiu      $a3, $a3, %lo(func_80027A60)
/* 87ADE24 800888F4 0FA0000C */  jal        func_8002803C
/* 87ADE28 800888F8 1800A2AF */   sw        $v0, 0x18($sp)
/* 87ADE2C 800888FC 00140200 */  sll        $v0, $v0, 16
/* 87ADE30 80088900 03140200 */  sra        $v0, $v0, 16
/* 87ADE34 80088904 5A220208 */  j          .Llevel_43_80088968
/* 87ADE38 80088908 080002AE */   sw        $v0, 0x8($s0)
.Llevel_43_8008890C:
/* 87ADE3C 8008890C 0000028E */  lw         $v0, 0x0($s0)
/* 87ADE40 80088910 0400038E */  lw         $v1, 0x4($s0)
/* 87ADE44 80088914 00000000 */  nop
/* 87ADE48 80088918 2A104300 */  slt        $v0, $v0, $v1
/* 87ADE4C 8008891C 12004014 */  bnez       $v0, .Llevel_43_80088968
/* 87ADE50 80088920 00000000 */   nop
/* 87ADE54 80088924 0C00038E */  lw         $v1, 0xC($s0)
/* 87ADE58 80088928 00000000 */  nop
/* 87ADE5C 8008892C 40100300 */  sll        $v0, $v1, 1
/* 87ADE60 80088930 21104300 */  addu       $v0, $v0, $v1
/* 87ADE64 80088934 80100200 */  sll        $v0, $v0, 2
/* 87ADE68 80088938 23104300 */  subu       $v0, $v0, $v1
/* 87ADE6C 8008893C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 87ADE70 80088940 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 87ADE74 80088944 C0100200 */  sll        $v0, $v0, 3
/* 87ADE78 80088948 21104300 */  addu       $v0, $v0, $v1
/* 87ADE7C 8008894C 04000324 */  addiu      $v1, $zero, 0x4
/* 87ADE80 80088950 480043A0 */  sb         $v1, 0x48($v0)
/* 87ADE84 80088954 0800048E */  lw         $a0, 0x8($s0)
/* 87ADE88 80088958 55A0000C */  jal        func_80028154
/* 87ADE8C 8008895C 00000000 */   nop
/* 87ADE90 80088960 C656010C */  jal        func_80055B18
/* 87ADE94 80088964 21202002 */   addu      $a0, $s1, $zero
.Llevel_43_80088968:
/* 87ADE98 80088968 2800BF8F */  lw         $ra, 0x28($sp)
/* 87ADE9C 8008896C 2400B18F */  lw         $s1, 0x24($sp)
/* 87ADEA0 80088970 2000B08F */  lw         $s0, 0x20($sp)
/* 87ADEA4 80088974 3000BD27 */  addiu      $sp, $sp, 0x30
/* 87ADEA8 80088978 0800E003 */  jr         $ra
/* 87ADEAC 8008897C 00000000 */   nop
.size MobyUpdate_977_level_43, . - MobyUpdate_977_level_43
