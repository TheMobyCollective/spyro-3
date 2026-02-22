.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_40_800806A8
/* 7E6BBD8 800806A8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 7E6BBDC 800806AC 1800B2AF */  sw         $s2, 0x18($sp)
/* 7E6BBE0 800806B0 21908000 */  addu       $s2, $a0, $zero
/* 7E6BBE4 800806B4 1000B0AF */  sw         $s0, 0x10($sp)
/* 7E6BBE8 800806B8 01001024 */  addiu      $s0, $zero, 0x1
/* 7E6BBEC 800806BC 2000BFAF */  sw         $ra, 0x20($sp)
/* 7E6BBF0 800806C0 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 7E6BBF4 800806C4 1400B1AF */  sw         $s1, 0x14($sp)
/* 7E6BBF8 800806C8 48004392 */  lbu        $v1, 0x48($s2)
/* 7E6BBFC 800806CC 0000518E */  lw         $s1, 0x0($s2)
/* 7E6BC00 800806D0 58007010 */  beq        $v1, $s0, .Llevel_40_80080834
/* 7E6BC04 800806D4 02006228 */   slti      $v0, $v1, 0x2
/* 7E6BC08 800806D8 05004010 */  beqz       $v0, .Llevel_40_800806F0
/* 7E6BC0C 800806DC 00000000 */   nop
/* 7E6BC10 800806E0 0A006010 */  beqz       $v1, .Llevel_40_8008070C
/* 7E6BC14 800806E4 00000000 */   nop
/* 7E6BC18 800806E8 6E020208 */  j          .Llevel_40_800809B8
/* 7E6BC1C 800806EC 00000000 */   nop
.Llevel_40_800806F0:
/* 7E6BC20 800806F0 02000224 */  addiu      $v0, $zero, 0x2
/* 7E6BC24 800806F4 70006210 */  beq        $v1, $v0, .Llevel_40_800808B8
/* 7E6BC28 800806F8 03000224 */   addiu     $v0, $zero, 0x3
/* 7E6BC2C 800806FC 75006210 */  beq        $v1, $v0, .Llevel_40_800808D4
/* 7E6BC30 80080700 00000000 */   nop
/* 7E6BC34 80080704 6E020208 */  j          .Llevel_40_800809B8
/* 7E6BC38 80080708 00000000 */   nop
.Llevel_40_8008070C:
/* 7E6BC3C 8008070C 0000238E */  lw         $v1, 0x0($s1)
/* 7E6BC40 80080710 00000000 */  nop
/* 7E6BC44 80080714 40100300 */  sll        $v0, $v1, 1
/* 7E6BC48 80080718 21104300 */  addu       $v0, $v0, $v1
/* 7E6BC4C 8008071C 80100200 */  sll        $v0, $v0, 2
/* 7E6BC50 80080720 23104300 */  subu       $v0, $v0, $v1
/* 7E6BC54 80080724 0780033C */  lui        $v1, %hi(D_8006C550)
/* 7E6BC58 80080728 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 7E6BC5C 8008072C C0100200 */  sll        $v0, $v0, 3
/* 7E6BC60 80080730 21284300 */  addu       $a1, $v0, $v1
/* 7E6BC64 80080734 4800A290 */  lbu        $v0, 0x48($a1)
/* 7E6BC68 80080738 00000000 */  nop
/* 7E6BC6C 8008073C 80004230 */  andi       $v0, $v0, 0x80
/* 7E6BC70 80080740 1B004010 */  beqz       $v0, .Llevel_40_800807B0
/* 7E6BC74 80080744 04003026 */   addiu     $s0, $s1, 0x4
/* 7E6BC78 80080748 21200002 */  addu       $a0, $s0, $zero
/* 7E6BC7C 8008074C 5E3C010C */  jal        func_8004F178
/* 7E6BC80 80080750 0C00A524 */   addiu     $a1, $a1, 0xC
/* 7E6BC84 80080754 21204002 */  addu       $a0, $s2, $zero
/* 7E6BC88 80080758 01000524 */  addiu      $a1, $zero, 0x1
/* 7E6BC8C 8008075C 21300002 */  addu       $a2, $s0, $zero
/* 7E6BC90 80080760 0C005326 */  addiu      $s3, $s2, 0xC
/* 7E6BC94 80080764 9ADA000C */  jal        func_80036A68
/* 7E6BC98 80080768 21386002 */   addu      $a3, $s3, $zero
/* 7E6BC9C 8008076C 21884000 */  addu       $s1, $v0, $zero
/* 7E6BCA0 80080770 91002012 */  beqz       $s1, .Llevel_40_800809B8
/* 7E6BCA4 80080774 0C003026 */   addiu     $s0, $s1, 0xC
/* 7E6BCA8 80080778 21200002 */  addu       $a0, $s0, $zero
/* 7E6BCAC 8008077C 5E3C010C */  jal        func_8004F178
/* 7E6BCB0 80080780 21286002 */   addu      $a1, $s3, $zero
/* 7E6BCB4 80080784 21200002 */  addu       $a0, $s0, $zero
/* 7E6BCB8 80080788 D668000C */  jal        func_8001A358
/* 7E6BCBC 8008078C 00040524 */   addiu     $a1, $zero, 0x400
/* 7E6BCC0 80080790 02004010 */  beqz       $v0, .Llevel_40_8008079C
/* 7E6BCC4 80080794 00000000 */   nop
/* 7E6BCC8 80080798 140022AE */  sw         $v0, 0x14($s1)
.Llevel_40_8008079C:
/* 7E6BCCC 8008079C 50004292 */  lbu        $v0, 0x50($s2)
/* 7E6BCD0 800807A0 21204002 */  addu       $a0, $s2, $zero
/* 7E6BCD4 800807A4 480020A2 */  sb         $zero, 0x48($s1)
/* 7E6BCD8 800807A8 6C020208 */  j          .Llevel_40_800809B0
/* 7E6BCDC 800807AC 500022A2 */   sb        $v0, 0x50($s1)
.Llevel_40_800807B0:
/* 7E6BCE0 800807B0 04002426 */  addiu      $a0, $s1, 0x4
/* 7E6BCE4 800807B4 0C005026 */  addiu      $s0, $s2, 0xC
/* 7E6BCE8 800807B8 5E3C010C */  jal        func_8004F178
/* 7E6BCEC 800807BC 21280002 */   addu      $a1, $s0, $zero
/* 7E6BCF0 800807C0 21200002 */  addu       $a0, $s0, $zero
/* 7E6BCF4 800807C4 0000238E */  lw         $v1, 0x0($s1)
/* 7E6BCF8 800807C8 0780053C */  lui        $a1, %hi(D_8006C550)
/* 7E6BCFC 800807CC 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 7E6BD00 800807D0 40100300 */  sll        $v0, $v1, 1
/* 7E6BD04 800807D4 21104300 */  addu       $v0, $v0, $v1
/* 7E6BD08 800807D8 80100200 */  sll        $v0, $v0, 2
/* 7E6BD0C 800807DC 23104300 */  subu       $v0, $v0, $v1
/* 7E6BD10 800807E0 C0100200 */  sll        $v0, $v0, 3
/* 7E6BD14 800807E4 2128A200 */  addu       $a1, $a1, $v0
/* 7E6BD18 800807E8 5E3C010C */  jal        func_8004F178
/* 7E6BD1C 800807EC 0C00A524 */   addiu     $a1, $a1, 0xC
/* 7E6BD20 800807F0 1400228E */  lw         $v0, 0x14($s1)
/* 7E6BD24 800807F4 00000000 */  nop
/* 7E6BD28 800807F8 0000438C */  lw         $v1, 0x0($v0)
/* 7E6BD2C 800807FC 00000000 */  nop
/* 7E6BD30 80080800 490043A2 */  sb         $v1, 0x49($s2)
/* 7E6BD34 80080804 FF006330 */  andi       $v1, $v1, 0xFF
/* 7E6BD38 80080808 00110300 */  sll        $v0, $v1, 4
/* 7E6BD3C 8008080C 1400248E */  lw         $a0, 0x14($s1)
/* 7E6BD40 80080810 23104300 */  subu       $v0, $v0, $v1
/* 7E6BD44 80080814 100022AE */  sw         $v0, 0x10($s1)
/* 7E6BD48 80080818 0000828C */  lw         $v0, 0x0($a0)
/* 7E6BD4C 8008081C 00000000 */  nop
/* 7E6BD50 80080820 01004224 */  addiu      $v0, $v0, 0x1
/* 7E6BD54 80080824 000082AC */  sw         $v0, 0x0($a0)
/* 7E6BD58 80080828 01000224 */  addiu      $v0, $zero, 0x1
/* 7E6BD5C 8008082C 6E020208 */  j          .Llevel_40_800809B8
/* 7E6BD60 80080830 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_40_80080834:
/* 7E6BD64 80080834 0000238E */  lw         $v1, 0x0($s1)
/* 7E6BD68 80080838 00000000 */  nop
/* 7E6BD6C 8008083C 40100300 */  sll        $v0, $v1, 1
/* 7E6BD70 80080840 21104300 */  addu       $v0, $v0, $v1
/* 7E6BD74 80080844 80100200 */  sll        $v0, $v0, 2
/* 7E6BD78 80080848 23104300 */  subu       $v0, $v0, $v1
/* 7E6BD7C 8008084C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 7E6BD80 80080850 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 7E6BD84 80080854 C0100200 */  sll        $v0, $v0, 3
/* 7E6BD88 80080858 21284300 */  addu       $a1, $v0, $v1
/* 7E6BD8C 8008085C 3600A384 */  lh         $v1, 0x36($a1)
/* 7E6BD90 80080860 CE000224 */  addiu      $v0, $zero, 0xCE
/* 7E6BD94 80080864 03006214 */  bne        $v1, $v0, .Llevel_40_80080874
/* 7E6BD98 80080868 0C004426 */   addiu     $a0, $s2, 0xC
/* 7E6BD9C 8008086C 5E3C010C */  jal        func_8004F178
/* 7E6BDA0 80080870 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_40_80080874:
/* 7E6BDA4 80080874 0000238E */  lw         $v1, 0x0($s1)
/* 7E6BDA8 80080878 00000000 */  nop
/* 7E6BDAC 8008087C 40100300 */  sll        $v0, $v1, 1
/* 7E6BDB0 80080880 21104300 */  addu       $v0, $v0, $v1
/* 7E6BDB4 80080884 80100200 */  sll        $v0, $v0, 2
/* 7E6BDB8 80080888 23104300 */  subu       $v0, $v0, $v1
/* 7E6BDBC 8008088C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 7E6BDC0 80080890 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 7E6BDC4 80080894 C0100200 */  sll        $v0, $v0, 3
/* 7E6BDC8 80080898 21104300 */  addu       $v0, $v0, $v1
/* 7E6BDCC 8008089C 48004290 */  lbu        $v0, 0x48($v0)
/* 7E6BDD0 800808A0 00000000 */  nop
/* 7E6BDD4 800808A4 80004230 */  andi       $v0, $v0, 0x80
/* 7E6BDD8 800808A8 43004010 */  beqz       $v0, .Llevel_40_800809B8
/* 7E6BDDC 800808AC 02000224 */   addiu     $v0, $zero, 0x2
/* 7E6BDE0 800808B0 6E020208 */  j          .Llevel_40_800809B8
/* 7E6BDE4 800808B4 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_40_800808B8:
/* 7E6BDE8 800808B8 10002426 */  addiu      $a0, $s1, 0x10
/* 7E6BDEC 800808BC 69D6000C */  jal        func_800359A4
/* 7E6BDF0 800808C0 04000524 */   addiu     $a1, $zero, 0x4
/* 7E6BDF4 800808C4 3C004010 */  beqz       $v0, .Llevel_40_800809B8
/* 7E6BDF8 800808C8 03000224 */   addiu     $v0, $zero, 0x3
/* 7E6BDFC 800808CC 6E020208 */  j          .Llevel_40_800809B8
/* 7E6BE00 800808D0 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_40_800808D4:
/* 7E6BE04 800808D4 0000238E */  lw         $v1, 0x0($s1)
/* 7E6BE08 800808D8 00000000 */  nop
/* 7E6BE0C 800808DC 40100300 */  sll        $v0, $v1, 1
/* 7E6BE10 800808E0 21104300 */  addu       $v0, $v0, $v1
/* 7E6BE14 800808E4 80100200 */  sll        $v0, $v0, 2
/* 7E6BE18 800808E8 23104300 */  subu       $v0, $v0, $v1
/* 7E6BE1C 800808EC 0780033C */  lui        $v1, %hi(D_8006C550)
/* 7E6BE20 800808F0 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 7E6BE24 800808F4 C0100200 */  sll        $v0, $v0, 3
/* 7E6BE28 800808F8 21204300 */  addu       $a0, $v0, $v1
/* 7E6BE2C 800808FC 50008390 */  lbu        $v1, 0x50($a0)
/* 7E6BE30 80080900 FF000224 */  addiu      $v0, $zero, 0xFF
/* 7E6BE34 80080904 15006214 */  bne        $v1, $v0, .Llevel_40_8008095C
/* 7E6BE38 80080908 00000000 */   nop
/* 7E6BE3C 8008090C 80EE000C */  jal        func_8003BA00
/* 7E6BE40 80080910 00000000 */   nop
/* 7E6BE44 80080914 0000238E */  lw         $v1, 0x0($s1)
/* 7E6BE48 80080918 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 7E6BE4C 8008091C 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 7E6BE50 80080920 0780043C */  lui        $a0, %hi(D_80071AB0)
/* 7E6BE54 80080924 B01A8424 */  addiu      $a0, $a0, %lo(D_80071AB0)
/* 7E6BE58 80080928 21186200 */  addu       $v1, $v1, $v0
/* 7E6BE5C 8008092C 1F006530 */  andi       $a1, $v1, 0x1F
/* 7E6BE60 80080930 43190300 */  sra        $v1, $v1, 5
/* 7E6BE64 80080934 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 7E6BE68 80080938 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 7E6BE6C 8008093C 80180300 */  sll        $v1, $v1, 2
/* 7E6BE70 80080940 40110200 */  sll        $v0, $v0, 5
/* 7E6BE74 80080944 21104400 */  addu       $v0, $v0, $a0
/* 7E6BE78 80080948 21186200 */  addu       $v1, $v1, $v0
/* 7E6BE7C 8008094C 0000628C */  lw         $v0, 0x0($v1)
/* 7E6BE80 80080950 0428B000 */  sllv       $a1, $s0, $a1
/* 7E6BE84 80080954 25104500 */  or         $v0, $v0, $a1
/* 7E6BE88 80080958 000062AC */  sw         $v0, 0x0($v1)
.Llevel_40_8008095C:
/* 7E6BE8C 8008095C 21204002 */  addu       $a0, $s2, $zero
/* 7E6BE90 80080960 01000524 */  addiu      $a1, $zero, 0x1
/* 7E6BE94 80080964 0C004626 */  addiu      $a2, $s2, 0xC
/* 7E6BE98 80080968 9ADA000C */  jal        func_80036A68
/* 7E6BE9C 8008096C 04002726 */   addiu     $a3, $s1, 0x4
/* 7E6BEA0 80080970 11004010 */  beqz       $v0, .Llevel_40_800809B8
/* 7E6BEA4 80080974 21284002 */   addu      $a1, $s2, $zero
/* 7E6BEA8 80080978 0780023C */  lui        $v0, %hi(D_8006C654)
/* 7E6BEAC 8008097C 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 7E6BEB0 80080980 00000000 */  nop
/* 7E6BEB4 80080984 1A004490 */  lbu        $a0, 0x1A($v0)
/* 7E6BEB8 80080988 D4EE000C */  jal        PlaySound
/* 7E6BEBC 8008098C 21300000 */   addu      $a2, $zero, $zero
/* 7E6BEC0 80080990 06004004 */  bltz       $v0, .Llevel_40_800809AC
/* 7E6BEC4 80080994 21204000 */   addu      $a0, $v0, $zero
/* 7E6BEC8 80080998 49004592 */  lbu        $a1, 0x49($s2)
/* 7E6BECC 8008099C 00000000 */  nop
/* 7E6BED0 800809A0 002A0500 */  sll        $a1, $a1, 8
/* 7E6BED4 800809A4 2CF0000C */  jal        func_8003C0B0
/* 7E6BED8 800809A8 0010A524 */   addiu     $a1, $a1, 0x1000
.Llevel_40_800809AC:
/* 7E6BEDC 800809AC 21204002 */  addu       $a0, $s2, $zero
.Llevel_40_800809B0:
/* 7E6BEE0 800809B0 C656010C */  jal        func_80055B18
/* 7E6BEE4 800809B4 00000000 */   nop
.Llevel_40_800809B8:
/* 7E6BEE8 800809B8 2000BF8F */  lw         $ra, 0x20($sp)
/* 7E6BEEC 800809BC 1C00B38F */  lw         $s3, 0x1C($sp)
/* 7E6BEF0 800809C0 1800B28F */  lw         $s2, 0x18($sp)
/* 7E6BEF4 800809C4 1400B18F */  lw         $s1, 0x14($sp)
/* 7E6BEF8 800809C8 1000B08F */  lw         $s0, 0x10($sp)
/* 7E6BEFC 800809CC 2800BD27 */  addiu      $sp, $sp, 0x28
/* 7E6BF00 800809D0 0800E003 */  jr         $ra
/* 7E6BF04 800809D4 00000000 */   nop
.size func_level_40_800806A8, . - func_level_40_800806A8
