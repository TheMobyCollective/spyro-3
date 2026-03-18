.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_50_800796DC
/* 95CDC0C 800796DC 20FFBD27 */  addiu      $sp, $sp, -0xE0
/* 95CDC10 800796E0 C000B2AF */  sw         $s2, 0xC0($sp)
/* 95CDC14 800796E4 21908000 */  addu       $s2, $a0, $zero
/* 95CDC18 800796E8 DC00BFAF */  sw         $ra, 0xDC($sp)
/* 95CDC1C 800796EC D800BEAF */  sw         $fp, 0xD8($sp)
/* 95CDC20 800796F0 D400B7AF */  sw         $s7, 0xD4($sp)
/* 95CDC24 800796F4 D000B6AF */  sw         $s6, 0xD0($sp)
/* 95CDC28 800796F8 CC00B5AF */  sw         $s5, 0xCC($sp)
/* 95CDC2C 800796FC C800B4AF */  sw         $s4, 0xC8($sp)
/* 95CDC30 80079700 C400B3AF */  sw         $s3, 0xC4($sp)
/* 95CDC34 80079704 BC00B1AF */  sw         $s1, 0xBC($sp)
/* 95CDC38 80079708 B800B0AF */  sw         $s0, 0xB8($sp)
/* 95CDC3C 8007970C 0C00458E */  lw         $a1, 0xC($s2)
/* 95CDC40 80079710 0000578E */  lw         $s7, 0x0($s2)
/* 95CDC44 80079714 0004A228 */  slti       $v0, $a1, 0x400
/* 95CDC48 80079718 11004014 */  bnez       $v0, .Llevel_50_80079760
/* 95CDC4C 8007971C 00000000 */   nop
/* 95CDC50 80079720 1000448E */  lw         $a0, 0x10($s2)
/* 95CDC54 80079724 00000000 */  nop
/* 95CDC58 80079728 00048228 */  slti       $v0, $a0, 0x400
/* 95CDC5C 8007972C 0C004014 */  bnez       $v0, .Llevel_50_80079760
/* 95CDC60 80079730 00000000 */   nop
/* 95CDC64 80079734 1400428E */  lw         $v0, 0x14($s2)
/* 95CDC68 80079738 00000000 */  nop
/* 95CDC6C 8007973C 00044228 */  slti       $v0, $v0, 0x400
/* 95CDC70 80079740 07004014 */  bnez       $v0, .Llevel_50_80079760
/* 95CDC74 80079744 0300033C */   lui       $v1, (0x3C000 >> 16)
/* 95CDC78 80079748 00C06334 */  ori        $v1, $v1, (0x3C000 & 0xFFFF)
/* 95CDC7C 8007974C 2A106500 */  slt        $v0, $v1, $a1
/* 95CDC80 80079750 03004014 */  bnez       $v0, .Llevel_50_80079760
/* 95CDC84 80079754 2A106400 */   slt       $v0, $v1, $a0
/* 95CDC88 80079758 09004010 */  beqz       $v0, .Llevel_50_80079780
/* 95CDC8C 8007975C 00000000 */   nop
.Llevel_50_80079760:
/* 95CDC90 80079760 0C00E48E */  lw         $a0, 0xC($s7)
/* 95CDC94 80079764 00000000 */  nop
/* 95CDC98 80079768 03008010 */  beqz       $a0, .Llevel_50_80079778
/* 95CDC9C 8007976C 00000000 */   nop
/* 95CDCA0 80079770 E242010C */  jal        func_80050B88
/* 95CDCA4 80079774 00000000 */   nop
.Llevel_50_80079778:
/* 95CDCA8 80079778 C656010C */  jal        func_80055B18
/* 95CDCAC 8007977C 21204002 */   addu      $a0, $s2, $zero
.Llevel_50_80079780:
/* 95CDCB0 80079780 48004392 */  lbu        $v1, 0x48($s2)
/* 95CDCB4 80079784 02000224 */  addiu      $v0, $zero, 0x2
/* 95CDCB8 80079788 30006210 */  beq        $v1, $v0, .Llevel_50_8007984C
/* 95CDCBC 8007978C 01000224 */   addiu     $v0, $zero, 0x1
/* 95CDCC0 80079790 49004292 */  lbu        $v0, 0x49($s2)
/* 95CDCC4 80079794 00000000 */  nop
/* 95CDCC8 80079798 2C004014 */  bnez       $v0, .Llevel_50_8007984C
/* 95CDCCC 8007979C 01000224 */   addiu     $v0, $zero, 0x1
/* 95CDCD0 800797A0 0C005126 */  addiu      $s1, $s2, 0xC
/* 95CDCD4 800797A4 21282002 */  addu       $a1, $s1, $zero
/* 95CDCD8 800797A8 0800F08E */  lw         $s0, 0x8($s7)
/* 95CDCDC 800797AC 01001324 */  addiu      $s3, $zero, 0x1
/* 95CDCE0 800797B0 490053A2 */  sb         $s3, 0x49($s2)
/* 95CDCE4 800797B4 5E3C010C */  jal        func_8004F178
/* 95CDCE8 800797B8 04000426 */   addiu     $a0, $s0, 0x4
/* 95CDCEC 800797BC 21202002 */  addu       $a0, $s1, $zero
/* 95CDCF0 800797C0 58020524 */  addiu      $a1, $zero, 0x258
/* 95CDCF4 800797C4 21300000 */  addu       $a2, $zero, $zero
/* 95CDCF8 800797C8 21380000 */  addu       $a3, $zero, $zero
/* 95CDCFC 800797CC 01000224 */  addiu      $v0, $zero, 0x1
/* 95CDD00 800797D0 000002A6 */  sh         $v0, 0x0($s0)
/* 95CDD04 800797D4 020002A6 */  sh         $v0, 0x2($s0)
/* 95CDD08 800797D8 9500023C */  lui        $v0, (0x950000 >> 16)
/* 95CDD0C 800797DC 1000A2AF */  sw         $v0, 0x10($sp)
/* 95CDD10 800797E0 8C6E000C */  jal        func_8001BA30
/* 95CDD14 800797E4 1400B2AF */   sw        $s2, 0x14($sp)
/* 95CDD18 800797E8 21804000 */  addu       $s0, $v0, $zero
/* 95CDD1C 800797EC 0B000012 */  beqz       $s0, .Llevel_50_8007981C
/* 95CDD20 800797F0 00000000 */   nop
/* 95CDD24 800797F4 0000E486 */  lh         $a0, 0x0($s7)
/* 95CDD28 800797F8 0200E586 */  lh         $a1, 0x2($s7)
/* 95CDD2C 800797FC 203A010C */  jal        func_8004E880
/* 95CDD30 80079800 21300000 */   addu      $a2, $zero, $zero
/* 95CDD34 80079804 510002A2 */  sb         $v0, 0x51($s0)
/* 95CDD38 80079808 FF004230 */  andi       $v0, $v0, 0xFF
/* 95CDD3C 8007980C 02004014 */  bnez       $v0, .Llevel_50_80079818
/* 95CDD40 80079810 00000000 */   nop
/* 95CDD44 80079814 510013A2 */  sb         $s3, 0x51($s0)
.Llevel_50_80079818:
/* 95CDD48 80079818 480053A2 */  sb         $s3, 0x48($s2)
.Llevel_50_8007981C:
/* 95CDD4C 8007981C 1000A0AF */  sw         $zero, 0x10($sp)
/* 95CDD50 80079820 0C004426 */  addiu      $a0, $s2, 0xC
/* 95CDD54 80079824 0780053C */  lui        $a1, %hi(D_80070328)
/* 95CDD58 80079828 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 95CDD5C 8007982C 02000624 */  addiu      $a2, $zero, 0x2
/* 95CDD60 80079830 C360000C */  jal        func_8001830C
/* 95CDD64 80079834 21380000 */   addu      $a3, $zero, $zero
/* 95CDD68 80079838 02004010 */  beqz       $v0, .Llevel_50_80079844
/* 95CDD6C 8007983C 01000224 */   addiu     $v0, $zero, 0x1
/* 95CDD70 80079840 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_50_80079844:
/* 95CDD74 80079844 48004392 */  lbu        $v1, 0x48($s2)
/* 95CDD78 80079848 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_50_8007984C:
/* 95CDD7C 8007984C 29016210 */  beq        $v1, $v0, .Llevel_50_80079CF4
/* 95CDD80 80079850 02006228 */   slti      $v0, $v1, 0x2
/* 95CDD84 80079854 05004010 */  beqz       $v0, .Llevel_50_8007986C
/* 95CDD88 80079858 00000000 */   nop
/* 95CDD8C 8007985C 0A006010 */  beqz       $v1, .Llevel_50_80079888
/* 95CDD90 80079860 FF000224 */   addiu     $v0, $zero, 0xFF
/* 95CDD94 80079864 9FE80108 */  j          .Llevel_50_8007A27C
/* 95CDD98 80079868 00000000 */   nop
.Llevel_50_8007986C:
/* 95CDD9C 8007986C 02000224 */  addiu      $v0, $zero, 0x2
/* 95CDDA0 80079870 51026210 */  beq        $v1, $v0, .Llevel_50_8007A1B8
/* 95CDDA4 80079874 03000224 */   addiu     $v0, $zero, 0x3
/* 95CDDA8 80079878 8E016210 */  beq        $v1, $v0, .Llevel_50_80079EB4
/* 95CDDAC 8007987C 00000000 */   nop
/* 95CDDB0 80079880 9FE80108 */  j          .Llevel_50_8007A27C
/* 95CDDB4 80079884 00000000 */   nop
.Llevel_50_80079888:
/* 95CDDB8 80079888 3A004392 */  lbu        $v1, 0x3A($s2)
/* 95CDDBC 8007988C 00000000 */  nop
/* 95CDDC0 80079890 5B006210 */  beq        $v1, $v0, .Llevel_50_80079A00
/* 95CDDC4 80079894 58021324 */   addiu     $s3, $zero, 0x258
/* 95CDDC8 80079898 40100300 */  sll        $v0, $v1, 1
/* 95CDDCC 8007989C 21104300 */  addu       $v0, $v0, $v1
/* 95CDDD0 800798A0 80100200 */  sll        $v0, $v0, 2
/* 95CDDD4 800798A4 23104300 */  subu       $v0, $v0, $v1
/* 95CDDD8 800798A8 0780033C */  lui        $v1, %hi(D_8006C550)
/* 95CDDDC 800798AC 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 95CDDE0 800798B0 C0100200 */  sll        $v0, $v0, 3
/* 95CDDE4 800798B4 21806200 */  addu       $s0, $v1, $v0
/* 95CDDE8 800798B8 48000292 */  lbu        $v0, 0x48($s0)
/* 95CDDEC 800798BC 00000000 */  nop
/* 95CDDF0 800798C0 79004014 */  bnez       $v0, .Llevel_50_80079AA8
/* 95CDDF4 800798C4 21300000 */   addu      $a2, $zero, $zero
/* 95CDDF8 800798C8 0C00038E */  lw         $v1, 0xC($s0)
/* 95CDDFC 800798CC 0C00448E */  lw         $a0, 0xC($s2)
/* 95CDE00 800798D0 1000028E */  lw         $v0, 0x10($s0)
/* 95CDE04 800798D4 1000458E */  lw         $a1, 0x10($s2)
/* 95CDE08 800798D8 23206400 */  subu       $a0, $v1, $a0
/* 95CDE0C 800798DC 203A010C */  jal        func_8004E880
/* 95CDE10 800798E0 23284500 */   subu      $a1, $v0, $a1
/* 95CDE14 800798E4 46004592 */  lbu        $a1, 0x46($s2)
/* 95CDE18 800798E8 993C010C */  jal        func_8004F264
/* 95CDE1C 800798EC 21204000 */   addu      $a0, $v0, $zero
/* 95CDE20 800798F0 40004228 */  slti       $v0, $v0, 0x40
/* 95CDE24 800798F4 6C004010 */  beqz       $v0, .Llevel_50_80079AA8
/* 95CDE28 800798F8 0C004426 */   addiu     $a0, $s2, 0xC
/* 95CDE2C 800798FC CD3C010C */  jal        func_8004F334
/* 95CDE30 80079900 0C000526 */   addiu     $a1, $s0, 0xC
/* 95CDE34 80079904 21204000 */  addu       $a0, $v0, $zero
/* 95CDE38 80079908 1400028E */  lw         $v0, 0x14($s0)
/* 95CDE3C 8007990C 1400458E */  lw         $a1, 0x14($s2)
/* 95CDE40 80079910 21300000 */  addu       $a2, $zero, $zero
/* 95CDE44 80079914 203A010C */  jal        func_8004E880
/* 95CDE48 80079918 23284500 */   subu      $a1, $v0, $a1
/* 95CDE4C 8007991C 45004492 */  lbu        $a0, 0x45($s2)
/* 95CDE50 80079920 4FD8000C */  jal        func_8003613C
/* 95CDE54 80079924 21284000 */   addu      $a1, $v0, $zero
/* 95CDE58 80079928 21184000 */  addu       $v1, $v0, $zero
/* 95CDE5C 8007992C 02006228 */  slti       $v0, $v1, 0x2
/* 95CDE60 80079930 03004014 */  bnez       $v0, .Llevel_50_80079940
/* 95CDE64 80079934 FFFF6228 */   slti      $v0, $v1, -0x1
/* 95CDE68 80079938 01000324 */  addiu      $v1, $zero, 0x1
/* 95CDE6C 8007993C FFFF6228 */  slti       $v0, $v1, -0x1
.Llevel_50_80079940:
/* 95CDE70 80079940 02004010 */  beqz       $v0, .Llevel_50_8007994C
/* 95CDE74 80079944 21300000 */   addu      $a2, $zero, $zero
/* 95CDE78 80079948 FFFF0324 */  addiu      $v1, $zero, -0x1
.Llevel_50_8007994C:
/* 95CDE7C 8007994C 45004292 */  lbu        $v0, 0x45($s2)
/* 95CDE80 80079950 0C00448E */  lw         $a0, 0xC($s2)
/* 95CDE84 80079954 1000458E */  lw         $a1, 0x10($s2)
/* 95CDE88 80079958 21104300 */  addu       $v0, $v0, $v1
/* 95CDE8C 8007995C 450042A2 */  sb         $v0, 0x45($s2)
/* 95CDE90 80079960 0C00038E */  lw         $v1, 0xC($s0)
/* 95CDE94 80079964 1000028E */  lw         $v0, 0x10($s0)
/* 95CDE98 80079968 23206400 */  subu       $a0, $v1, $a0
/* 95CDE9C 8007996C 203A010C */  jal        func_8004E880
/* 95CDEA0 80079970 23284500 */   subu      $a1, $v0, $a1
/* 95CDEA4 80079974 46004492 */  lbu        $a0, 0x46($s2)
/* 95CDEA8 80079978 4FD8000C */  jal        func_8003613C
/* 95CDEAC 8007997C 21284000 */   addu      $a1, $v0, $zero
/* 95CDEB0 80079980 21184000 */  addu       $v1, $v0, $zero
/* 95CDEB4 80079984 02006228 */  slti       $v0, $v1, 0x2
/* 95CDEB8 80079988 03004014 */  bnez       $v0, .Llevel_50_80079998
/* 95CDEBC 8007998C FFFF6228 */   slti      $v0, $v1, -0x1
/* 95CDEC0 80079990 01000324 */  addiu      $v1, $zero, 0x1
/* 95CDEC4 80079994 FFFF6228 */  slti       $v0, $v1, -0x1
.Llevel_50_80079998:
/* 95CDEC8 80079998 02004010 */  beqz       $v0, .Llevel_50_800799A4
/* 95CDECC 8007999C 00000000 */   nop
/* 95CDED0 800799A0 FFFF0324 */  addiu      $v1, $zero, -0x1
.Llevel_50_800799A4:
/* 95CDED4 800799A4 46004292 */  lbu        $v0, 0x46($s2)
/* 95CDED8 800799A8 00000000 */  nop
/* 95CDEDC 800799AC 21104300 */  addu       $v0, $v0, $v1
/* 95CDEE0 800799B0 AAE60108 */  j          .Llevel_50_80079AA8
/* 95CDEE4 800799B4 460042A2 */   sb        $v0, 0x46($s2)
.Llevel_50_800799B8:
/* 95CDEE8 800799B8 0780043C */  lui        $a0, %hi(D_8006C550)
/* 95CDEEC 800799BC 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 95CDEF0 800799C0 00000000 */  nop
/* 95CDEF4 800799C4 23200402 */  subu       $a0, $s0, $a0
/* 95CDEF8 800799C8 40190400 */  sll        $v1, $a0, 5
/* 95CDEFC 800799CC 23186400 */  subu       $v1, $v1, $a0
/* 95CDF00 800799D0 40190300 */  sll        $v1, $v1, 5
/* 95CDF04 800799D4 21186400 */  addu       $v1, $v1, $a0
/* 95CDF08 800799D8 C0100300 */  sll        $v0, $v1, 3
/* 95CDF0C 800799DC 21186200 */  addu       $v1, $v1, $v0
/* 95CDF10 800799E0 C0130300 */  sll        $v0, $v1, 15
/* 95CDF14 800799E4 23104300 */  subu       $v0, $v0, $v1
/* 95CDF18 800799E8 80100200 */  sll        $v0, $v0, 2
/* 95CDF1C 800799EC 21104400 */  addu       $v0, $v0, $a0
/* 95CDF20 800799F0 23100200 */  negu       $v0, $v0
/* 95CDF24 800799F4 C3100200 */  sra        $v0, $v0, 3
/* 95CDF28 800799F8 AAE60108 */  j          .Llevel_50_80079AA8
/* 95CDF2C 800799FC 3A0042A2 */   sb        $v0, 0x3A($s2)
.Llevel_50_80079A00:
/* 95CDF30 80079A00 0780023C */  lui        $v0, %hi(D_8006C730)
/* 95CDF34 80079A04 30C7428C */  lw         $v0, %lo(D_8006C730)($v0)
/* 95CDF38 80079A08 00000000 */  nop
/* 95CDF3C 80079A0C 0800518C */  lw         $s1, 0x8($v0)
.Llevel_50_80079A10:
/* 95CDF40 80079A10 00000000 */  nop
/* 95CDF44 80079A14 00002396 */  lhu        $v1, 0x0($s1)
/* 95CDF48 80079A18 00000000 */  nop
/* 95CDF4C 80079A1C FF7F6330 */  andi       $v1, $v1, 0x7FFF
/* 95CDF50 80079A20 40100300 */  sll        $v0, $v1, 1
/* 95CDF54 80079A24 21104300 */  addu       $v0, $v0, $v1
/* 95CDF58 80079A28 80100200 */  sll        $v0, $v0, 2
/* 95CDF5C 80079A2C 23104300 */  subu       $v0, $v0, $v1
/* 95CDF60 80079A30 0780033C */  lui        $v1, %hi(D_8006C550)
/* 95CDF64 80079A34 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 95CDF68 80079A38 C0100200 */  sll        $v0, $v0, 3
/* 95CDF6C 80079A3C 21806200 */  addu       $s0, $v1, $v0
/* 95CDF70 80079A40 48000292 */  lbu        $v0, 0x48($s0)
/* 95CDF74 80079A44 00000000 */  nop
/* 95CDF78 80079A48 13004014 */  bnez       $v0, .Llevel_50_80079A98
/* 95CDF7C 80079A4C 00000000 */   nop
/* 95CDF80 80079A50 0C004426 */  addiu      $a0, $s2, 0xC
/* 95CDF84 80079A54 CD3C010C */  jal        func_8004F334
/* 95CDF88 80079A58 0C000526 */   addiu     $a1, $s0, 0xC
/* 95CDF8C 80079A5C 00404228 */  slti       $v0, $v0, 0x4000
/* 95CDF90 80079A60 0D004010 */  beqz       $v0, .Llevel_50_80079A98
/* 95CDF94 80079A64 21300000 */   addu      $a2, $zero, $zero
/* 95CDF98 80079A68 0C00038E */  lw         $v1, 0xC($s0)
/* 95CDF9C 80079A6C 0C00448E */  lw         $a0, 0xC($s2)
/* 95CDFA0 80079A70 1000028E */  lw         $v0, 0x10($s0)
/* 95CDFA4 80079A74 1000458E */  lw         $a1, 0x10($s2)
/* 95CDFA8 80079A78 23206400 */  subu       $a0, $v1, $a0
/* 95CDFAC 80079A7C 203A010C */  jal        func_8004E880
/* 95CDFB0 80079A80 23284500 */   subu      $a1, $v0, $a1
/* 95CDFB4 80079A84 46004592 */  lbu        $a1, 0x46($s2)
/* 95CDFB8 80079A88 993C010C */  jal        func_8004F264
/* 95CDFBC 80079A8C 21204000 */   addu      $a0, $v0, $zero
/* 95CDFC0 80079A90 C9FF4014 */  bnez       $v0, .Llevel_50_800799B8
/* 95CDFC4 80079A94 00000000 */   nop
.Llevel_50_80079A98:
/* 95CDFC8 80079A98 00002286 */  lh         $v0, 0x0($s1)
/* 95CDFCC 80079A9C 00000000 */  nop
/* 95CDFD0 80079AA0 DBFF4104 */  bgez       $v0, .Llevel_50_80079A10
/* 95CDFD4 80079AA4 02003126 */   addiu     $s1, $s1, 0x2
.Llevel_50_80079AA8:
/* 95CDFD8 80079AA8 46004292 */  lbu        $v0, 0x46($s2)
/* 95CDFDC 80079AAC 00000000 */  nop
/* 95CDFE0 80079AB0 40100200 */  sll        $v0, $v0, 1
/* 95CDFE4 80079AB4 0680013C */  lui        $at, %hi(D_80065920)
/* 95CDFE8 80079AB8 21082200 */  addu       $at, $at, $v0
/* 95CDFEC 80079ABC 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 95CDFF0 80079AC0 00000000 */  nop
/* 95CDFF4 80079AC4 18005300 */  mult       $v0, $s3
/* 95CDFF8 80079AC8 45004292 */  lbu        $v0, 0x45($s2)
/* 95CDFFC 80079ACC 00000000 */  nop
/* 95CE000 80079AD0 40100200 */  sll        $v0, $v0, 1
/* 95CE004 80079AD4 12400000 */  mflo       $t0
/* 95CE008 80079AD8 0680013C */  lui        $at, %hi(D_80065920)
/* 95CE00C 80079ADC 21082200 */  addu       $at, $at, $v0
/* 95CE010 80079AE0 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 95CE014 80079AE4 03130800 */  sra        $v0, $t0, 12
/* 95CE018 80079AE8 18004300 */  mult       $v0, $v1
/* 95CE01C 80079AEC 12400000 */  mflo       $t0
/* 95CE020 80079AF0 03130800 */  sra        $v0, $t0, 12
/* 95CE024 80079AF4 0000E2A6 */  sh         $v0, 0x0($s7)
/* 95CE028 80079AF8 46004292 */  lbu        $v0, 0x46($s2)
/* 95CE02C 80079AFC 00000000 */  nop
/* 95CE030 80079B00 40100200 */  sll        $v0, $v0, 1
/* 95CE034 80079B04 0680013C */  lui        $at, %hi(D_800658A0)
/* 95CE038 80079B08 21082200 */  addu       $at, $at, $v0
/* 95CE03C 80079B0C A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 95CE040 80079B10 00000000 */  nop
/* 95CE044 80079B14 18005300 */  mult       $v0, $s3
/* 95CE048 80079B18 45004292 */  lbu        $v0, 0x45($s2)
/* 95CE04C 80079B1C 00000000 */  nop
/* 95CE050 80079B20 40100200 */  sll        $v0, $v0, 1
/* 95CE054 80079B24 12400000 */  mflo       $t0
/* 95CE058 80079B28 0680013C */  lui        $at, %hi(D_80065920)
/* 95CE05C 80079B2C 21082200 */  addu       $at, $at, $v0
/* 95CE060 80079B30 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 95CE064 80079B34 03130800 */  sra        $v0, $t0, 12
/* 95CE068 80079B38 18004300 */  mult       $v0, $v1
/* 95CE06C 80079B3C 12400000 */  mflo       $t0
/* 95CE070 80079B40 03130800 */  sra        $v0, $t0, 12
/* 95CE074 80079B44 0200E2A6 */  sh         $v0, 0x2($s7)
/* 95CE078 80079B48 45004292 */  lbu        $v0, 0x45($s2)
/* 95CE07C 80079B4C 00000000 */  nop
/* 95CE080 80079B50 40100200 */  sll        $v0, $v0, 1
/* 95CE084 80079B54 0680013C */  lui        $at, %hi(D_800658A0)
/* 95CE088 80079B58 21082200 */  addu       $at, $at, $v0
/* 95CE08C 80079B5C A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 95CE090 80079B60 00000000 */  nop
/* 95CE094 80079B64 18005300 */  mult       $v0, $s3
/* 95CE098 80079B68 1800A427 */  addiu      $a0, $sp, 0x18
/* 95CE09C 80079B6C 0C005026 */  addiu      $s0, $s2, 0xC
/* 95CE0A0 80079B70 21280002 */  addu       $a1, $s0, $zero
/* 95CE0A4 80079B74 12400000 */  mflo       $t0
/* 95CE0A8 80079B78 03130800 */  sra        $v0, $t0, 12
/* 95CE0AC 80079B7C 5E3C010C */  jal        func_8004F178
/* 95CE0B0 80079B80 0400E2A6 */   sh        $v0, 0x4($s7)
/* 95CE0B4 80079B84 1800A427 */  addiu      $a0, $sp, 0x18
/* 95CE0B8 80079B88 0000E386 */  lh         $v1, 0x0($s7)
/* 95CE0BC 80079B8C 0C00428E */  lw         $v0, 0xC($s2)
/* 95CE0C0 80079B90 21280002 */  addu       $a1, $s0, $zero
/* 95CE0C4 80079B94 21104300 */  addu       $v0, $v0, $v1
/* 95CE0C8 80079B98 0C0042AE */  sw         $v0, 0xC($s2)
/* 95CE0CC 80079B9C 0200E386 */  lh         $v1, 0x2($s7)
/* 95CE0D0 80079BA0 1000428E */  lw         $v0, 0x10($s2)
/* 95CE0D4 80079BA4 02000624 */  addiu      $a2, $zero, 0x2
/* 95CE0D8 80079BA8 21104300 */  addu       $v0, $v0, $v1
/* 95CE0DC 80079BAC 100042AE */  sw         $v0, 0x10($s2)
/* 95CE0E0 80079BB0 0400E386 */  lh         $v1, 0x4($s7)
/* 95CE0E4 80079BB4 1400428E */  lw         $v0, 0x14($s2)
/* 95CE0E8 80079BB8 9500073C */  lui        $a3, (0x950000 >> 16)
/* 95CE0EC 80079BBC 21104300 */  addu       $v0, $v0, $v1
/* 95CE0F0 80079BC0 140042AE */  sw         $v0, 0x14($s2)
/* 95CE0F4 80079BC4 0780013C */  lui        $at, %hi(D_80071934)
/* 95CE0F8 80079BC8 341920AC */  sw         $zero, %lo(D_80071934)($at)
/* 95CE0FC 80079BCC C360000C */  jal        func_8001830C
/* 95CE100 80079BD0 1000A0AF */   sw        $zero, 0x10($sp)
/* 95CE104 80079BD4 05004010 */  beqz       $v0, .Llevel_50_80079BEC
/* 95CE108 80079BD8 21200002 */   addu      $a0, $s0, $zero
/* 95CE10C 80079BDC 5E3C010C */  jal        func_8004F178
/* 95CE110 80079BE0 1800A527 */   addiu     $a1, $sp, 0x18
/* 95CE114 80079BE4 01000224 */  addiu      $v0, $zero, 0x1
/* 95CE118 80079BE8 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_50_80079BEC:
/* 95CE11C 80079BEC 21200002 */  addu       $a0, $s0, $zero
/* 95CE120 80079BF0 90010524 */  addiu      $a1, $zero, 0x190
/* 95CE124 80079BF4 21300000 */  addu       $a2, $zero, $zero
/* 95CE128 80079BF8 21380000 */  addu       $a3, $zero, $zero
/* 95CE12C 80079BFC 9500023C */  lui        $v0, (0x950000 >> 16)
/* 95CE130 80079C00 1000A2AF */  sw         $v0, 0x10($sp)
/* 95CE134 80079C04 8C6E000C */  jal        func_8001BA30
/* 95CE138 80079C08 1400B2AF */   sw        $s2, 0x14($sp)
/* 95CE13C 80079C0C 21804000 */  addu       $s0, $v0, $zero
/* 95CE140 80079C10 1F000012 */  beqz       $s0, .Llevel_50_80079C90
/* 95CE144 80079C14 0C004426 */   addiu     $a0, $s2, 0xC
/* 95CE148 80079C18 0000E486 */  lh         $a0, 0x0($s7)
/* 95CE14C 80079C1C 0200E586 */  lh         $a1, 0x2($s7)
/* 95CE150 80079C20 203A010C */  jal        func_8004E880
/* 95CE154 80079C24 21300000 */   addu      $a2, $zero, $zero
/* 95CE158 80079C28 510002A2 */  sb         $v0, 0x51($s0)
/* 95CE15C 80079C2C FF004230 */  andi       $v0, $v0, 0xFF
/* 95CE160 80079C30 02004014 */  bnez       $v0, .Llevel_50_80079C3C
/* 95CE164 80079C34 01000224 */   addiu     $v0, $zero, 0x1
/* 95CE168 80079C38 510002A2 */  sb         $v0, 0x51($s0)
.Llevel_50_80079C3C:
/* 95CE16C 80079C3C 36000396 */  lhu        $v1, 0x36($s0)
/* 95CE170 80079C40 00000000 */  nop
/* 95CE174 80079C44 38FF6224 */  addiu      $v0, $v1, -0xC8
/* 95CE178 80079C48 0200422C */  sltiu      $v0, $v0, 0x2
/* 95CE17C 80079C4C 10004014 */  bnez       $v0, .Llevel_50_80079C90
/* 95CE180 80079C50 0C004426 */   addiu     $a0, $s2, 0xC
/* 95CE184 80079C54 00140300 */  sll        $v0, $v1, 16
/* 95CE188 80079C58 031C0200 */  sra        $v1, $v0, 16
/* 95CE18C 80079C5C D1000224 */  addiu      $v0, $zero, 0xD1
/* 95CE190 80079C60 0B006210 */  beq        $v1, $v0, .Llevel_50_80079C90
/* 95CE194 80079C64 10010224 */   addiu     $v0, $zero, 0x110
/* 95CE198 80079C68 09006210 */  beq        $v1, $v0, .Llevel_50_80079C90
/* 95CE19C 80079C6C 33020224 */   addiu     $v0, $zero, 0x233
/* 95CE1A0 80079C70 07006210 */  beq        $v1, $v0, .Llevel_50_80079C90
/* 95CE1A4 80079C74 D0000224 */   addiu     $v0, $zero, 0xD0
/* 95CE1A8 80079C78 36004386 */  lh         $v1, 0x36($s2)
/* 95CE1AC 80079C7C 00000000 */  nop
/* 95CE1B0 80079C80 03006210 */  beq        $v1, $v0, .Llevel_50_80079C90
/* 95CE1B4 80079C84 01000224 */   addiu     $v0, $zero, 0x1
/* 95CE1B8 80079C88 480042A2 */  sb         $v0, 0x48($s2)
/* 95CE1BC 80079C8C 0C004426 */  addiu      $a0, $s2, 0xC
.Llevel_50_80079C90:
/* 95CE1C0 80079C90 2C010524 */  addiu      $a1, $zero, 0x12C
/* 95CE1C4 80079C94 02000624 */  addiu      $a2, $zero, 0x2
/* 95CE1C8 80079C98 21380000 */  addu       $a3, $zero, $zero
/* 95CE1CC 80079C9C 9500023C */  lui        $v0, (0x950000 >> 16)
/* 95CE1D0 80079CA0 1000A2AF */  sw         $v0, 0x10($sp)
/* 95CE1D4 80079CA4 4E64000C */  jal        func_80019138
/* 95CE1D8 80079CA8 1400B2AF */   sw        $s2, 0x14($sp)
/* 95CE1DC 80079CAC 48004292 */  lbu        $v0, 0x48($s2)
/* 95CE1E0 80079CB0 00000000 */  nop
/* 95CE1E4 80079CB4 71014014 */  bnez       $v0, .Llevel_50_8007A27C
/* 95CE1E8 80079CB8 0700E426 */   addiu     $a0, $s7, 0x7
/* 95CE1EC 80079CBC 69D6000C */  jal        func_800359A4
/* 95CE1F0 80079CC0 01000524 */   addiu     $a1, $zero, 0x1
/* 95CE1F4 80079CC4 6D014010 */  beqz       $v0, .Llevel_50_8007A27C
/* 95CE1F8 80079CC8 00000000 */   nop
/* 95CE1FC 80079CCC 0C00E48E */  lw         $a0, 0xC($s7)
/* 95CE200 80079CD0 00000000 */  nop
/* 95CE204 80079CD4 04008010 */  beqz       $a0, .Llevel_50_80079CE8
/* 95CE208 80079CD8 01000224 */   addiu     $v0, $zero, 0x1
/* 95CE20C 80079CDC E242010C */  jal        func_80050B88
/* 95CE210 80079CE0 00000000 */   nop
/* 95CE214 80079CE4 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_50_80079CE8:
/* 95CE218 80079CE8 0C00E0AE */  sw         $zero, 0xC($s7)
/* 95CE21C 80079CEC 9FE80108 */  j          .Llevel_50_8007A27C
/* 95CE220 80079CF0 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_50_80079CF4:
/* 95CE224 80079CF4 21204002 */  addu       $a0, $s2, $zero
/* 95CE228 80079CF8 01000524 */  addiu      $a1, $zero, 0x1
/* 95CE22C 80079CFC AFEE000C */  jal        func_8003BABC
/* 95CE230 80079D00 21300000 */   addu      $a2, $zero, $zero
/* 95CE234 80079D04 0780023C */  lui        $v0, %hi(D_8006C578)
/* 95CE238 80079D08 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 95CE23C 80079D0C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 95CE240 80079D10 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 95CE244 80079D14 00000000 */  nop
/* 95CE248 80079D18 23104300 */  subu       $v0, $v0, $v1
/* 95CE24C 80079D1C 15004228 */  slti       $v0, $v0, 0x15
/* 95CE250 80079D20 17004014 */  bnez       $v0, .Llevel_50_80079D80
/* 95CE254 80079D24 00000000 */   nop
/* 95CE258 80079D28 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 95CE25C 80079D2C E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 95CE260 80079D30 00000000 */  nop
/* 95CE264 80079D34 31754228 */  slti       $v0, $v0, 0x7531
/* 95CE268 80079D38 11004014 */  bnez       $v0, .Llevel_50_80079D80
/* 95CE26C 80079D3C 46010424 */   addiu     $a0, $zero, 0x146
/* 95CE270 80079D40 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 95CE274 80079D44 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 95CE278 80079D48 00000000 */  nop
/* 95CE27C 80079D4C 09F84000 */  jalr       $v0
/* 95CE280 80079D50 21284002 */   addu      $a1, $s2, $zero
/* 95CE284 80079D54 21184000 */  addu       $v1, $v0, $zero
/* 95CE288 80079D58 09006010 */  beqz       $v1, .Llevel_50_80079D80
/* 95CE28C 80079D5C 00000000 */   nop
/* 95CE290 80079D60 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 95CE294 80079D64 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 95CE298 80079D68 00000000 */  nop
/* 95CE29C 80079D6C 24FA4224 */  addiu      $v0, $v0, -0x5DC
/* 95CE2A0 80079D70 0780013C */  lui        $at, %hi(D_8006C7E8)
/* 95CE2A4 80079D74 E8C722AC */  sw         $v0, %lo(D_8006C7E8)($at)
/* 95CE2A8 80079D78 07000224 */  addiu      $v0, $zero, 0x7
/* 95CE2AC 80079D7C 470062A0 */  sb         $v0, 0x47($v1)
.Llevel_50_80079D80:
/* 95CE2B0 80079D80 0780023C */  lui        $v0, %hi(D_8006C578)
/* 95CE2B4 80079D84 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 95CE2B8 80079D88 0780033C */  lui        $v1, %hi(D_8006C574)
/* 95CE2BC 80079D8C 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 95CE2C0 80079D90 00000000 */  nop
/* 95CE2C4 80079D94 23104300 */  subu       $v0, $v0, $v1
/* 95CE2C8 80079D98 15004228 */  slti       $v0, $v0, 0x15
/* 95CE2CC 80079D9C 3B004014 */  bnez       $v0, .Llevel_50_80079E8C
/* 95CE2D0 80079DA0 21A00000 */   addu      $s4, $zero, $zero
/* 95CE2D4 80079DA4 0780153C */  lui        $s5, %hi(D_8006E020)
/* 95CE2D8 80079DA8 20E0B526 */  addiu      $s5, $s5, %lo(D_8006E020)
/* 95CE2DC 80079DAC 21980000 */  addu       $s3, $zero, $zero
.Llevel_50_80079DB0:
/* 95CE2E0 80079DB0 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 95CE2E4 80079DB4 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 95CE2E8 80079DB8 00000000 */  nop
/* 95CE2EC 80079DBC 31754228 */  slti       $v0, $v0, 0x7531
/* 95CE2F0 80079DC0 32004014 */  bnez       $v0, .Llevel_50_80079E8C
/* 95CE2F4 80079DC4 1D020424 */   addiu     $a0, $zero, 0x21D
/* 95CE2F8 80079DC8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 95CE2FC 80079DCC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 95CE300 80079DD0 00000000 */  nop
/* 95CE304 80079DD4 09F84000 */  jalr       $v0
/* 95CE308 80079DD8 21284002 */   addu      $a1, $s2, $zero
/* 95CE30C 80079DDC 21884000 */  addu       $s1, $v0, $zero
/* 95CE310 80079DE0 1D002012 */  beqz       $s1, .Llevel_50_80079E58
/* 95CE314 80079DE4 21300000 */   addu      $a2, $zero, $zero
/* 95CE318 80079DE8 0C00428E */  lw         $v0, 0xC($s2)
/* 95CE31C 80079DEC 0000A48E */  lw         $a0, 0x0($s5)
/* 95CE320 80079DF0 1000438E */  lw         $v1, 0x10($s2)
/* 95CE324 80079DF4 0400A58E */  lw         $a1, 0x4($s5)
/* 95CE328 80079DF8 23204400 */  subu       $a0, $v0, $a0
/* 95CE32C 80079DFC 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 95CE330 80079E00 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 95CE334 80079E04 00000000 */  nop
/* 95CE338 80079E08 18FC4224 */  addiu      $v0, $v0, -0x3E8
/* 95CE33C 80079E0C 0780013C */  lui        $at, %hi(D_8006C7E8)
/* 95CE340 80079E10 E8C722AC */  sw         $v0, %lo(D_8006C7E8)($at)
/* 95CE344 80079E14 203A010C */  jal        func_8004E880
/* 95CE348 80079E18 23286500 */   subu      $a1, $v1, $a1
/* 95CE34C 80079E1C 9171010C */  jal        rand
/* 95CE350 80079E20 21804000 */   addu      $s0, $v0, $zero
/* 95CE354 80079E24 40001026 */  addiu      $s0, $s0, 0x40
/* 95CE358 80079E28 1F004230 */  andi       $v0, $v0, 0x1F
/* 95CE35C 80079E2C 21800202 */  addu       $s0, $s0, $v0
/* 95CE360 80079E30 9171010C */  jal        rand
/* 95CE364 80079E34 460030A2 */   sb        $s0, 0x46($s1)
/* 95CE368 80079E38 1E004230 */  andi       $v0, $v0, 0x1E
/* 95CE36C 80079E3C 21106202 */  addu       $v0, $s3, $v0
/* 95CE370 80079E40 F1FF4224 */  addiu      $v0, $v0, -0xF
/* 95CE374 80079E44 450022A2 */  sb         $v0, 0x45($s1)
/* 95CE378 80079E48 08000224 */  addiu      $v0, $zero, 0x8
/* 95CE37C 80079E4C 470022A2 */  sb         $v0, 0x47($s1)
/* 95CE380 80079E50 2A000224 */  addiu      $v0, $zero, 0x2A
/* 95CE384 80079E54 4C0022A2 */  sb         $v0, 0x4C($s1)
.Llevel_50_80079E58:
/* 95CE388 80079E58 01009426 */  addiu      $s4, $s4, 0x1
/* 95CE38C 80079E5C 0500822A */  slti       $v0, $s4, 0x5
/* 95CE390 80079E60 0A004010 */  beqz       $v0, .Llevel_50_80079E8C
/* 95CE394 80079E64 33007326 */   addiu     $s3, $s3, 0x33
/* 95CE398 80079E68 0780023C */  lui        $v0, %hi(D_8006C578)
/* 95CE39C 80079E6C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 95CE3A0 80079E70 0780033C */  lui        $v1, %hi(D_8006C574)
/* 95CE3A4 80079E74 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 95CE3A8 80079E78 00000000 */  nop
/* 95CE3AC 80079E7C 23104300 */  subu       $v0, $v0, $v1
/* 95CE3B0 80079E80 15004228 */  slti       $v0, $v0, 0x15
/* 95CE3B4 80079E84 CAFF4010 */  beqz       $v0, .Llevel_50_80079DB0
/* 95CE3B8 80079E88 00000000 */   nop
.Llevel_50_80079E8C:
/* 95CE3BC 80079E8C 21204002 */  addu       $a0, $s2, $zero
/* 95CE3C0 80079E90 4957010C */  jal        func_80055D24
/* 95CE3C4 80079E94 02000524 */   addiu     $a1, $zero, 0x2
/* 95CE3C8 80079E98 14000224 */  addiu      $v0, $zero, 0x14
/* 95CE3CC 80079E9C 410040A2 */  sb         $zero, 0x41($s2)
/* 95CE3D0 80079EA0 4C0040A2 */  sb         $zero, 0x4C($s2)
/* 95CE3D4 80079EA4 4D0040A2 */  sb         $zero, 0x4D($s2)
/* 95CE3D8 80079EA8 0700E2A2 */  sb         $v0, 0x7($s7)
/* 95CE3DC 80079EAC 03000224 */  addiu      $v0, $zero, 0x3
/* 95CE3E0 80079EB0 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_50_80079EB4:
/* 95CE3E4 80079EB4 0700E292 */  lbu        $v0, 0x7($s7)
/* 95CE3E8 80079EB8 00000000 */  nop
/* 95CE3EC 80079EBC 0600422C */  sltiu      $v0, $v0, 0x6
/* 95CE3F0 80079EC0 35004014 */  bnez       $v0, .Llevel_50_80079F98
/* 95CE3F4 80079EC4 58021524 */   addiu     $s5, $zero, 0x258
/* 95CE3F8 80079EC8 21980000 */  addu       $s3, $zero, $zero
/* 95CE3FC 80079ECC 4800B427 */  addiu      $s4, $sp, 0x48
/* 95CE400 80079ED0 2800B127 */  addiu      $s1, $sp, 0x28
/* 95CE404 80079ED4 3800B027 */  addiu      $s0, $sp, 0x38
.Llevel_50_80079ED8:
/* 95CE408 80079ED8 9171010C */  jal        rand
/* 95CE40C 80079EDC 6000A0A3 */   sb        $zero, 0x60($sp)
/* 95CE410 80079EE0 9171010C */  jal        rand
/* 95CE414 80079EE4 6100A2A3 */   sb        $v0, 0x61($sp)
/* 95CE418 80079EE8 6000A427 */  addiu      $a0, $sp, 0x60
/* 95CE41C 80079EEC 21288002 */  addu       $a1, $s4, $zero
/* 95CE420 80079EF0 21300000 */  addu       $a2, $zero, $zero
/* 95CE424 80079EF4 A43A010C */  jal        func_8004EA90
/* 95CE428 80079EF8 6200A2A3 */   sb        $v0, 0x62($sp)
/* 95CE42C 80079EFC 9171010C */  jal        rand
/* 95CE430 80079F00 01007326 */   addiu     $s3, $s3, 0x1
/* 95CE434 80079F04 21208002 */  addu       $a0, $s4, $zero
/* 95CE438 80079F08 21282002 */  addu       $a1, $s1, $zero
/* 95CE43C 80079F0C 21302002 */  addu       $a2, $s1, $zero
/* 95CE440 80079F10 1F004230 */  andi       $v0, $v0, 0x1F
/* 95CE444 80079F14 30004224 */  addiu      $v0, $v0, 0x30
/* 95CE448 80079F18 2800A2AF */  sw         $v0, 0x28($sp)
/* 95CE44C 80079F1C 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 95CE450 80079F20 5B3B010C */  jal        func_8004ED6C
/* 95CE454 80079F24 3000A0AF */   sw        $zero, 0x30($sp)
/* 95CE458 80079F28 21200002 */  addu       $a0, $s0, $zero
/* 95CE45C 80079F2C 5E3C010C */  jal        func_8004F178
/* 95CE460 80079F30 21282002 */   addu      $a1, $s1, $zero
/* 95CE464 80079F34 21200002 */  addu       $a0, $s0, $zero
/* 95CE468 80079F38 3A3C010C */  jal        func_8004F0E8
/* 95CE46C 80079F3C 02000524 */   addiu     $a1, $zero, 0x2
/* 95CE470 80079F40 21200002 */  addu       $a0, $s0, $zero
/* 95CE474 80079F44 21280002 */  addu       $a1, $s0, $zero
/* 95CE478 80079F48 653C010C */  jal        func_8004F194
/* 95CE47C 80079F4C 0C004626 */   addiu     $a2, $s2, 0xC
/* 95CE480 80079F50 01000424 */  addiu      $a0, $zero, 0x1
/* 95CE484 80079F54 0D000524 */  addiu      $a1, $zero, 0xD
/* 95CE488 80079F58 21300002 */  addu       $a2, $s0, $zero
/* 95CE48C 80079F5C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 95CE490 80079F60 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 95CE494 80079F64 00000000 */  nop
/* 95CE498 80079F68 09F84000 */  jalr       $v0
/* 95CE49C 80079F6C 21382002 */   addu      $a3, $s1, $zero
/* 95CE4A0 80079F70 0400622A */  slti       $v0, $s3, 0x4
/* 95CE4A4 80079F74 D8FF4014 */  bnez       $v0, .Llevel_50_80079ED8
/* 95CE4A8 80079F78 06000424 */   addiu     $a0, $zero, 0x6
/* 95CE4AC 80079F7C 46000524 */  addiu      $a1, $zero, 0x46
/* 95CE4B0 80079F80 0C004626 */  addiu      $a2, $s2, 0xC
/* 95CE4B4 80079F84 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 95CE4B8 80079F88 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 95CE4BC 80079F8C 00000000 */  nop
/* 95CE4C0 80079F90 09F84000 */  jalr       $v0
/* 95CE4C4 80079F94 10000724 */   addiu     $a3, $zero, 0x10
.Llevel_50_80079F98:
/* 95CE4C8 80079F98 0780023C */  lui        $v0, %hi(D_8006C640)
/* 95CE4CC 80079F9C 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 95CE4D0 80079FA0 00000000 */  nop
/* 95CE4D4 80079FA4 01004230 */  andi       $v0, $v0, 0x1
/* 95CE4D8 80079FA8 22004014 */  bnez       $v0, .Llevel_50_8007A034
/* 95CE4DC 80079FAC 00000000 */   nop
/* 95CE4E0 80079FB0 0780023C */  lui        $v0, %hi(D_8006C578)
/* 95CE4E4 80079FB4 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 95CE4E8 80079FB8 0780033C */  lui        $v1, %hi(D_8006C574)
/* 95CE4EC 80079FBC 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 95CE4F0 80079FC0 00000000 */  nop
/* 95CE4F4 80079FC4 23104300 */  subu       $v0, $v0, $v1
/* 95CE4F8 80079FC8 15004228 */  slti       $v0, $v0, 0x15
/* 95CE4FC 80079FCC 19004014 */  bnez       $v0, .Llevel_50_8007A034
/* 95CE500 80079FD0 00000000 */   nop
/* 95CE504 80079FD4 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 95CE508 80079FD8 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 95CE50C 80079FDC 00000000 */  nop
/* 95CE510 80079FE0 31754228 */  slti       $v0, $v0, 0x7531
/* 95CE514 80079FE4 13004014 */  bnez       $v0, .Llevel_50_8007A034
/* 95CE518 80079FE8 E2010424 */   addiu     $a0, $zero, 0x1E2
/* 95CE51C 80079FEC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 95CE520 80079FF0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 95CE524 80079FF4 00000000 */  nop
/* 95CE528 80079FF8 09F84000 */  jalr       $v0
/* 95CE52C 80079FFC 21284002 */   addu      $a1, $s2, $zero
/* 95CE530 8007A000 21184000 */  addu       $v1, $v0, $zero
/* 95CE534 8007A004 0B006010 */  beqz       $v1, .Llevel_50_8007A034
/* 95CE538 8007A008 00000000 */   nop
/* 95CE53C 8007A00C 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 95CE540 8007A010 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 95CE544 8007A014 00000000 */  nop
/* 95CE548 8007A018 24FA4224 */  addiu      $v0, $v0, -0x5DC
/* 95CE54C 8007A01C 0780013C */  lui        $at, %hi(D_8006C7E8)
/* 95CE550 8007A020 E8C722AC */  sw         $v0, %lo(D_8006C7E8)($at)
/* 95CE554 8007A024 2A000224 */  addiu      $v0, $zero, 0x2A
/* 95CE558 8007A028 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 95CE55C 8007A02C 0A000224 */  addiu      $v0, $zero, 0xA
/* 95CE560 8007A030 470062A0 */  sb         $v0, 0x47($v1)
.Llevel_50_8007A034:
/* 95CE564 8007A034 0700E392 */  lbu        $v1, 0x7($s7)
/* 95CE568 8007A038 00000000 */  nop
/* 95CE56C 8007A03C 0B00622C */  sltiu      $v0, $v1, 0xB
/* 95CE570 8007A040 0F004014 */  bnez       $v0, .Llevel_50_8007A080
/* 95CE574 8007A044 1800A302 */   mult      $s5, $v1
/* 95CE578 8007A048 14000224 */  addiu      $v0, $zero, 0x14
/* 95CE57C 8007A04C 23104300 */  subu       $v0, $v0, $v1
/* 95CE580 8007A050 1800A202 */  mult       $s5, $v0
/* 95CE584 8007A054 12100000 */  mflo       $v0
/* 95CE588 8007A058 6666033C */  lui        $v1, (0x66666667 >> 16)
/* 95CE58C 8007A05C 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* 95CE590 8007A060 18004300 */  mult       $v0, $v1
/* 95CE594 8007A064 43201500 */  sra        $a0, $s5, 1
/* 95CE598 8007A068 C3170200 */  sra        $v0, $v0, 31
/* 95CE59C 8007A06C 10400000 */  mfhi       $t0
/* 95CE5A0 8007A070 C3180800 */  sra        $v1, $t0, 3
/* 95CE5A4 8007A074 23186200 */  subu       $v1, $v1, $v0
/* 95CE5A8 8007A078 2AE80108 */  j          .Llevel_50_8007A0A8
/* 95CE5AC 8007A07C 21A88300 */   addu      $s5, $a0, $v1
.Llevel_50_8007A080:
/* 95CE5B0 8007A080 12180000 */  mflo       $v1
/* 95CE5B4 8007A084 6666023C */  lui        $v0, (0x66666667 >> 16)
/* 95CE5B8 8007A088 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
/* 95CE5BC 8007A08C 18006200 */  mult       $v1, $v0
/* 95CE5C0 8007A090 43201500 */  sra        $a0, $s5, 1
/* 95CE5C4 8007A094 C31F0300 */  sra        $v1, $v1, 31
/* 95CE5C8 8007A098 10400000 */  mfhi       $t0
/* 95CE5CC 8007A09C C3100800 */  sra        $v0, $t0, 3
/* 95CE5D0 8007A0A0 23104300 */  subu       $v0, $v0, $v1
/* 95CE5D4 8007A0A4 21A88200 */  addu       $s5, $a0, $v0
.Llevel_50_8007A0A8:
/* 95CE5D8 8007A0A8 0C004426 */  addiu      $a0, $s2, 0xC
/* 95CE5DC 8007A0AC E803A526 */  addiu      $a1, $s5, 0x3E8
/* 95CE5E0 8007A0B0 21300000 */  addu       $a2, $zero, $zero
/* 95CE5E4 8007A0B4 21380000 */  addu       $a3, $zero, $zero
/* 95CE5E8 8007A0B8 9500023C */  lui        $v0, (0x950000 >> 16)
/* 95CE5EC 8007A0BC 1000A2AF */  sw         $v0, 0x10($sp)
/* 95CE5F0 8007A0C0 8C6E000C */  jal        func_8001BA30
/* 95CE5F4 8007A0C4 1400B2AF */   sw        $s2, 0x14($sp)
/* 95CE5F8 8007A0C8 21804000 */  addu       $s0, $v0, $zero
/* 95CE5FC 8007A0CC 0E000012 */  beqz       $s0, .Llevel_50_8007A108
/* 95CE600 8007A0D0 21300000 */   addu      $a2, $zero, $zero
/* 95CE604 8007A0D4 0C00038E */  lw         $v1, 0xC($s0)
/* 95CE608 8007A0D8 0C00448E */  lw         $a0, 0xC($s2)
/* 95CE60C 8007A0DC 1000028E */  lw         $v0, 0x10($s0)
/* 95CE610 8007A0E0 1000458E */  lw         $a1, 0x10($s2)
/* 95CE614 8007A0E4 23206400 */  subu       $a0, $v1, $a0
/* 95CE618 8007A0E8 203A010C */  jal        func_8004E880
/* 95CE61C 8007A0EC 23284500 */   subu      $a1, $v0, $a1
/* 95CE620 8007A0F0 510002A2 */  sb         $v0, 0x51($s0)
/* 95CE624 8007A0F4 FF004230 */  andi       $v0, $v0, 0xFF
/* 95CE628 8007A0F8 04004014 */  bnez       $v0, .Llevel_50_8007A10C
/* 95CE62C 8007A0FC 0C004426 */   addiu     $a0, $s2, 0xC
/* 95CE630 8007A100 01000224 */  addiu      $v0, $zero, 0x1
/* 95CE634 8007A104 510002A2 */  sb         $v0, 0x51($s0)
.Llevel_50_8007A108:
/* 95CE638 8007A108 0C004426 */  addiu      $a0, $s2, 0xC
.Llevel_50_8007A10C:
/* 95CE63C 8007A10C BC02A526 */  addiu      $a1, $s5, 0x2BC
/* 95CE640 8007A110 02000624 */  addiu      $a2, $zero, 0x2
/* 95CE644 8007A114 21380000 */  addu       $a3, $zero, $zero
/* 95CE648 8007A118 9500113C */  lui        $s1, (0x950000 >> 16)
/* 95CE64C 8007A11C 1000B1AF */  sw         $s1, 0x10($sp)
/* 95CE650 8007A120 4E64000C */  jal        func_80019138
/* 95CE654 8007A124 1400B2AF */   sw        $s2, 0x14($sp)
/* 95CE658 8007A128 15004010 */  beqz       $v0, .Llevel_50_8007A180
/* 95CE65C 8007A12C 0700E426 */   addiu     $a0, $s7, 0x7
/* 95CE660 8007A130 0780103C */  lui        $s0, %hi(D_80071924)
/* 95CE664 8007A134 24191026 */  addiu      $s0, $s0, %lo(D_80071924)
/* 95CE668 8007A138 0000048E */  lw         $a0, 0x0($s0)
/* 95CE66C 8007A13C 5502010C */  jal        func_80040954
/* 95CE670 8007A140 00000000 */   nop
/* 95CE674 8007A144 03000324 */  addiu      $v1, $zero, 0x3
/* 95CE678 8007A148 0D004314 */  bne        $v0, $v1, .Llevel_50_8007A180
/* 95CE67C 8007A14C 0700E426 */   addiu     $a0, $s7, 0x7
/* 95CE680 8007A150 0000028E */  lw         $v0, 0x0($s0)
/* 95CE684 8007A154 0780033C */  lui        $v1, %hi(D_8006D05C)
/* 95CE688 8007A158 5CD0638C */  lw         $v1, %lo(D_8006D05C)($v1)
/* 95CE68C 8007A15C 3F004230 */  andi       $v0, $v0, 0x3F
/* 95CE690 8007A160 80100200 */  sll        $v0, $v0, 2
/* 95CE694 8007A164 21104300 */  addu       $v0, $v0, $v1
/* 95CE698 8007A168 0000438C */  lw         $v1, 0x0($v0)
/* 95CE69C 8007A16C 00000000 */  nop
/* 95CE6A0 8007A170 0400628C */  lw         $v0, 0x4($v1)
/* 95CE6A4 8007A174 00000000 */  nop
/* 95CE6A8 8007A178 25105100 */  or         $v0, $v0, $s1
/* 95CE6AC 8007A17C 040062AC */  sw         $v0, 0x4($v1)
.Llevel_50_8007A180:
/* 95CE6B0 8007A180 69D6000C */  jal        func_800359A4
/* 95CE6B4 8007A184 01000524 */   addiu     $a1, $zero, 0x1
/* 95CE6B8 8007A188 3C004010 */  beqz       $v0, .Llevel_50_8007A27C
/* 95CE6BC 8007A18C 00000000 */   nop
/* 95CE6C0 8007A190 0C00E48E */  lw         $a0, 0xC($s7)
/* 95CE6C4 8007A194 00000000 */  nop
/* 95CE6C8 8007A198 03008010 */  beqz       $a0, .Llevel_50_8007A1A8
/* 95CE6CC 8007A19C 00000000 */   nop
/* 95CE6D0 8007A1A0 E242010C */  jal        func_80050B88
/* 95CE6D4 8007A1A4 00000000 */   nop
.Llevel_50_8007A1A8:
/* 95CE6D8 8007A1A8 C656010C */  jal        func_80055B18
/* 95CE6DC 8007A1AC 21204002 */   addu      $a0, $s2, $zero
/* 95CE6E0 8007A1B0 9FE80108 */  j          .Llevel_50_8007A27C
/* 95CE6E4 8007A1B4 00000000 */   nop
.Llevel_50_8007A1B8:
/* 95CE6E8 8007A1B8 0700E426 */  addiu      $a0, $s7, 0x7
/* 95CE6EC 8007A1BC 69D6000C */  jal        func_800359A4
/* 95CE6F0 8007A1C0 01000524 */   addiu     $a1, $zero, 0x1
/* 95CE6F4 8007A1C4 05004010 */  beqz       $v0, .Llevel_50_8007A1DC
/* 95CE6F8 8007A1C8 00000000 */   nop
/* 95CE6FC 8007A1CC C656010C */  jal        func_80055B18
/* 95CE700 8007A1D0 21204002 */   addu      $a0, $s2, $zero
/* 95CE704 8007A1D4 AAE90108 */  j          .Llevel_50_8007A6A8
/* 95CE708 8007A1D8 00000000 */   nop
.Llevel_50_8007A1DC:
/* 95CE70C 8007A1DC 0700E392 */  lbu        $v1, 0x7($s7)
/* 95CE710 8007A1E0 00000000 */  nop
/* 95CE714 8007A1E4 80100300 */  sll        $v0, $v1, 2
/* 95CE718 8007A1E8 21104300 */  addu       $v0, $v0, $v1
/* 95CE71C 8007A1EC 80100200 */  sll        $v0, $v0, 2
/* 95CE720 8007A1F0 00040324 */  addiu      $v1, $zero, 0x400
/* 95CE724 8007A1F4 23186200 */  subu       $v1, $v1, $v0
/* 95CE728 8007A1F8 00400224 */  addiu      $v0, $zero, 0x4000
/* 95CE72C 8007A1FC 1A004300 */  div        $zero, $v0, $v1
/* 95CE730 8007A200 02006014 */  bnez       $v1, .Llevel_50_8007A20C
/* 95CE734 8007A204 00000000 */   nop
/* 95CE738 8007A208 0D000700 */  break      7
.Llevel_50_8007A20C:
/* 95CE73C 8007A20C FFFF0124 */  addiu      $at, $zero, -0x1
/* 95CE740 8007A210 04006114 */  bne        $v1, $at, .Llevel_50_8007A224
/* 95CE744 8007A214 0080013C */   lui       $at, (0x80000000 >> 16)
/* 95CE748 8007A218 02004114 */  bne        $v0, $at, .Llevel_50_8007A224
/* 95CE74C 8007A21C 00000000 */   nop
/* 95CE750 8007A220 0D000600 */  break      6
.Llevel_50_8007A224:
/* 95CE754 8007A224 12100000 */  mflo       $v0
/* 95CE758 8007A228 00000000 */  nop
/* 95CE75C 8007A22C 4F0042A2 */  sb         $v0, 0x4F($s2)
/* 95CE760 8007A230 FF004230 */  andi       $v0, $v0, 0xFF
/* 95CE764 8007A234 8000422C */  sltiu      $v0, $v0, 0x80
/* 95CE768 8007A238 02004014 */  bnez       $v0, .Llevel_50_8007A244
/* 95CE76C 8007A23C 7F000224 */   addiu     $v0, $zero, 0x7F
/* 95CE770 8007A240 4F0042A2 */  sb         $v0, 0x4F($s2)
.Llevel_50_8007A244:
/* 95CE774 8007A244 4F004292 */  lbu        $v0, 0x4F($s2)
/* 95CE778 8007A248 00000000 */  nop
/* 95CE77C 8007A24C 1200422C */  sltiu      $v0, $v0, 0x12
/* 95CE780 8007A250 02004010 */  beqz       $v0, .Llevel_50_8007A25C
/* 95CE784 8007A254 12000224 */   addiu     $v0, $zero, 0x12
/* 95CE788 8007A258 4F0042A2 */  sb         $v0, 0x4F($s2)
.Llevel_50_8007A25C:
/* 95CE78C 8007A25C 0700E292 */  lbu        $v0, 0x7($s7)
/* 95CE790 8007A260 00000000 */  nop
/* 95CE794 8007A264 80100200 */  sll        $v0, $v0, 2
/* 95CE798 8007A268 540042A2 */  sb         $v0, 0x54($s2)
/* 95CE79C 8007A26C 0700E292 */  lbu        $v0, 0x7($s7)
/* 95CE7A0 8007A270 00000000 */  nop
/* 95CE7A4 8007A274 40100200 */  sll        $v0, $v0, 1
/* 95CE7A8 8007A278 550042A2 */  sb         $v0, 0x55($s2)
.Llevel_50_8007A27C:
/* 95CE7AC 8007A27C 48004392 */  lbu        $v1, 0x48($s2)
/* 95CE7B0 8007A280 02000224 */  addiu      $v0, $zero, 0x2
/* 95CE7B4 8007A284 08016210 */  beq        $v1, $v0, .Llevel_50_8007A6A8
/* 95CE7B8 8007A288 AA2A103C */   lui       $s0, (0x2AAAAAAB >> 16)
/* 95CE7BC 8007A28C 0800F38E */  lw         $s3, 0x8($s7)
/* 95CE7C0 8007A290 00000000 */  nop
/* 95CE7C4 8007A294 00006386 */  lh         $v1, 0x0($s3)
/* 95CE7C8 8007A298 ABAA1036 */  ori        $s0, $s0, (0x2AAAAAAB & 0xFFFF)
/* 95CE7CC 8007A29C 01006624 */  addiu      $a2, $v1, 0x1
/* 95CE7D0 8007A2A0 1800D000 */  mult       $a2, $s0
/* 95CE7D4 8007A2A4 0C004526 */  addiu      $a1, $s2, 0xC
/* 95CE7D8 8007A2A8 40100300 */  sll        $v0, $v1, 1
/* 95CE7DC 8007A2AC 21104300 */  addu       $v0, $v0, $v1
/* 95CE7E0 8007A2B0 80100200 */  sll        $v0, $v0, 2
/* 95CE7E4 8007A2B4 04005424 */  addiu      $s4, $v0, 0x4
/* 95CE7E8 8007A2B8 21207402 */  addu       $a0, $s3, $s4
/* 95CE7EC 8007A2BC C3170600 */  sra        $v0, $a2, 31
/* 95CE7F0 8007A2C0 10400000 */  mfhi       $t0
/* 95CE7F4 8007A2C4 43180800 */  sra        $v1, $t0, 1
/* 95CE7F8 8007A2C8 23B06200 */  subu       $s6, $v1, $v0
/* 95CE7FC 8007A2CC 40101600 */  sll        $v0, $s6, 1
/* 95CE800 8007A2D0 21105600 */  addu       $v0, $v0, $s6
/* 95CE804 8007A2D4 80100200 */  sll        $v0, $v0, 2
/* 95CE808 8007A2D8 5E3C010C */  jal        func_8004F178
/* 95CE80C 8007A2DC 23B0C200 */   subu      $s6, $a2, $v0
/* 95CE810 8007A2E0 00006586 */  lh         $a1, 0x0($s3)
/* 95CE814 8007A2E4 00000000 */  nop
/* 95CE818 8007A2E8 0100A524 */  addiu      $a1, $a1, 0x1
/* 95CE81C 8007A2EC 1800B000 */  mult       $a1, $s0
/* 95CE820 8007A2F0 02006496 */  lhu        $a0, 0x2($s3)
/* 95CE824 8007A2F4 10017526 */  addiu      $s5, $s3, 0x110
/* 95CE828 8007A2F8 01008424 */  addiu      $a0, $a0, 0x1
/* 95CE82C 8007A2FC C3170500 */  sra        $v0, $a1, 31
/* 95CE830 8007A300 020064A6 */  sh         $a0, 0x2($s3)
/* 95CE834 8007A304 00240400 */  sll        $a0, $a0, 16
/* 95CE838 8007A308 03240400 */  sra        $a0, $a0, 16
/* 95CE83C 8007A30C 0D008428 */  slti       $a0, $a0, 0xD
/* 95CE840 8007A310 10400000 */  mfhi       $t0
/* 95CE844 8007A314 43180800 */  sra        $v1, $t0, 1
/* 95CE848 8007A318 23186200 */  subu       $v1, $v1, $v0
/* 95CE84C 8007A31C 40100300 */  sll        $v0, $v1, 1
/* 95CE850 8007A320 21104300 */  addu       $v0, $v0, $v1
/* 95CE854 8007A324 80100200 */  sll        $v0, $v0, 2
/* 95CE858 8007A328 2328A200 */  subu       $a1, $a1, $v0
/* 95CE85C 8007A32C 94006826 */  addiu      $t0, $s3, 0x94
/* 95CE860 8007A330 000065A6 */  sh         $a1, 0x0($s3)
/* 95CE864 8007A334 A800A8AF */  sw         $t0, 0xA8($sp)
/* 95CE868 8007A338 18016826 */  addiu      $t0, $s3, 0x118
/* 95CE86C 8007A33C 03008014 */  bnez       $a0, .Llevel_50_8007A34C
/* 95CE870 8007A340 B000A8AF */   sw        $t0, 0xB0($sp)
/* 95CE874 8007A344 0C000224 */  addiu      $v0, $zero, 0xC
/* 95CE878 8007A348 020062A6 */  sh         $v0, 0x2($s3)
.Llevel_50_8007A34C:
/* 95CE87C 8007A34C 02006286 */  lh         $v0, 0x2($s3)
/* 95CE880 8007A350 00000000 */  nop
/* 95CE884 8007A354 0C004228 */  slti       $v0, $v0, 0xC
/* 95CE888 8007A358 02004010 */  beqz       $v0, .Llevel_50_8007A364
/* 95CE88C 8007A35C 6000A427 */   addiu     $a0, $sp, 0x60
/* 95CE890 8007A360 21B00000 */  addu       $s6, $zero, $zero
.Llevel_50_8007A364:
/* 95CE894 8007A364 7800A527 */  addiu      $a1, $sp, 0x78
/* 95CE898 8007A368 21300000 */  addu       $a2, $zero, $zero
/* 95CE89C 8007A36C 21F08002 */  addu       $fp, $s4, $zero
/* 95CE8A0 8007A370 0780033C */  lui        $v1, %hi(D_8006C640)
/* 95CE8A4 8007A374 40C6638C */  lw         $v1, %lo(D_8006C640)($v1)
/* 95CE8A8 8007A378 A800B48F */  lw         $s4, 0xA8($sp)
/* 95CE8AC 8007A37C C0100300 */  sll        $v0, $v1, 3
/* 95CE8B0 8007A380 23104300 */  subu       $v0, $v0, $v1
/* 95CE8B4 8007A384 6000A2A3 */  sb         $v0, 0x60($sp)
/* 95CE8B8 8007A388 45004292 */  lbu        $v0, 0x45($s2)
/* 95CE8BC 8007A38C 21800000 */  addu       $s0, $zero, $zero
/* 95CE8C0 8007A390 6100A2A3 */  sb         $v0, 0x61($sp)
/* 95CE8C4 8007A394 46004292 */  lbu        $v0, 0x46($s2)
/* 95CE8C8 8007A398 6800B127 */  addiu      $s1, $sp, 0x68
/* 95CE8CC 8007A39C A43A010C */  jal        func_8004EA90
/* 95CE8D0 8007A3A0 6200A2A3 */   sb        $v0, 0x62($sp)
/* 95CE8D4 8007A3A4 21204002 */  addu       $a0, $s2, $zero
/* 95CE8D8 8007A3A8 4957010C */  jal        func_80055D24
/* 95CE8DC 8007A3AC 04000524 */   addiu     $a1, $zero, 0x4
.Llevel_50_8007A3B0:
/* 95CE8E0 8007A3B0 6666033C */  lui        $v1, (0x66666667 >> 16)
/* 95CE8E4 8007A3B4 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* 95CE8E8 8007A3B8 00121000 */  sll        $v0, $s0, 8
/* 95CE8EC 8007A3BC 18004300 */  mult       $v0, $v1
/* 95CE8F0 8007A3C0 7800A427 */  addiu      $a0, $sp, 0x78
/* 95CE8F4 8007A3C4 21282002 */  addu       $a1, $s1, $zero
/* 95CE8F8 8007A3C8 C3170200 */  sra        $v0, $v0, 31
/* 95CE8FC 8007A3CC 6800A0AF */  sw         $zero, 0x68($sp)
/* 95CE900 8007A3D0 10400000 */  mfhi       $t0
/* 95CE904 8007A3D4 43380800 */  sra        $a3, $t0, 1
/* 95CE908 8007A3D8 2338E200 */  subu       $a3, $a3, $v0
/* 95CE90C 8007A3DC 40380700 */  sll        $a3, $a3, 1
/* 95CE910 8007A3E0 0680083C */  lui        $t0, %hi(D_80065920)
/* 95CE914 8007A3E4 20590825 */  addiu      $t0, $t0, %lo(D_80065920)
/* 95CE918 8007A3E8 2110E800 */  addu       $v0, $a3, $t0
/* 95CE91C 8007A3EC 00004284 */  lh         $v0, 0x0($v0)
/* 95CE920 8007A3F0 21302002 */  addu       $a2, $s1, $zero
/* 95CE924 8007A3F4 80180200 */  sll        $v1, $v0, 2
/* 95CE928 8007A3F8 21186200 */  addu       $v1, $v1, $v0
/* 95CE92C 8007A3FC 00110300 */  sll        $v0, $v1, 4
/* 95CE930 8007A400 23104300 */  subu       $v0, $v0, $v1
/* 95CE934 8007A404 C3120200 */  sra        $v0, $v0, 11
/* 95CE938 8007A408 6C00A2AF */  sw         $v0, 0x6C($sp)
/* 95CE93C 8007A40C 0680013C */  lui        $at, %hi(D_800658A0)
/* 95CE940 8007A410 21082700 */  addu       $at, $at, $a3
/* 95CE944 8007A414 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 95CE948 8007A418 01001026 */  addiu      $s0, $s0, 0x1
/* 95CE94C 8007A41C 80180200 */  sll        $v1, $v0, 2
/* 95CE950 8007A420 21186200 */  addu       $v1, $v1, $v0
/* 95CE954 8007A424 00110300 */  sll        $v0, $v1, 4
/* 95CE958 8007A428 23104300 */  subu       $v0, $v0, $v1
/* 95CE95C 8007A42C C3120200 */  sra        $v0, $v0, 11
/* 95CE960 8007A430 5B3B010C */  jal        func_8004ED6C
/* 95CE964 8007A434 7000A2AF */   sw        $v0, 0x70($sp)
/* 95CE968 8007A438 21208002 */  addu       $a0, $s4, $zero
/* 95CE96C 8007A43C 21287E02 */  addu       $a1, $s3, $fp
/* 95CE970 8007A440 653C010C */  jal        func_8004F194
/* 95CE974 8007A444 21302002 */   addu      $a2, $s1, $zero
/* 95CE978 8007A448 0500022A */  slti       $v0, $s0, 0x5
/* 95CE97C 8007A44C D8FF4014 */  bnez       $v0, .Llevel_50_8007A3B0
/* 95CE980 8007A450 0C009426 */   addiu     $s4, $s4, 0xC
/* 95CE984 8007A454 21800000 */  addu       $s0, $zero, $zero
/* 95CE988 8007A458 06801E3C */  lui        $fp, %hi(D_80065920)
/* 95CE98C 8007A45C 2059DE27 */  addiu      $fp, $fp, %lo(D_80065920)
/* 95CE990 8007A460 21902002 */  addu       $s2, $s1, $zero
/* 95CE994 8007A464 40101600 */  sll        $v0, $s6, 1
/* 95CE998 8007A468 21105600 */  addu       $v0, $v0, $s6
/* 95CE99C 8007A46C 80100200 */  sll        $v0, $v0, 2
/* 95CE9A0 8007A470 04005424 */  addiu      $s4, $v0, 0x4
/* 95CE9A4 8007A474 3C001124 */  addiu      $s1, $zero, 0x3C
.Llevel_50_8007A478:
/* 95CE9A8 8007A478 6666033C */  lui        $v1, (0x66666667 >> 16)
/* 95CE9AC 8007A47C 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* 95CE9B0 8007A480 00121000 */  sll        $v0, $s0, 8
/* 95CE9B4 8007A484 18004300 */  mult       $v0, $v1
/* 95CE9B8 8007A488 7800A427 */  addiu      $a0, $sp, 0x78
/* 95CE9BC 8007A48C 21284002 */  addu       $a1, $s2, $zero
/* 95CE9C0 8007A490 C3170200 */  sra        $v0, $v0, 31
/* 95CE9C4 8007A494 6800A0AF */  sw         $zero, 0x68($sp)
/* 95CE9C8 8007A498 10400000 */  mfhi       $t0
/* 95CE9CC 8007A49C 43380800 */  sra        $a3, $t0, 1
/* 95CE9D0 8007A4A0 2338E200 */  subu       $a3, $a3, $v0
/* 95CE9D4 8007A4A4 40380700 */  sll        $a3, $a3, 1
/* 95CE9D8 8007A4A8 2110FE00 */  addu       $v0, $a3, $fp
/* 95CE9DC 8007A4AC 00004384 */  lh         $v1, 0x0($v0)
/* 95CE9E0 8007A4B0 21304002 */  addu       $a2, $s2, $zero
/* 95CE9E4 8007A4B4 40100300 */  sll        $v0, $v1, 1
/* 95CE9E8 8007A4B8 21104300 */  addu       $v0, $v0, $v1
/* 95CE9EC 8007A4BC C0100200 */  sll        $v0, $v0, 3
/* 95CE9F0 8007A4C0 21104300 */  addu       $v0, $v0, $v1
/* 95CE9F4 8007A4C4 83120200 */  sra        $v0, $v0, 10
/* 95CE9F8 8007A4C8 6C00A2AF */  sw         $v0, 0x6C($sp)
/* 95CE9FC 8007A4CC 0680013C */  lui        $at, %hi(D_800658A0)
/* 95CEA00 8007A4D0 21082700 */  addu       $at, $at, $a3
/* 95CEA04 8007A4D4 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 95CEA08 8007A4D8 01001026 */  addiu      $s0, $s0, 0x1
/* 95CEA0C 8007A4DC 40100300 */  sll        $v0, $v1, 1
/* 95CEA10 8007A4E0 21104300 */  addu       $v0, $v0, $v1
/* 95CEA14 8007A4E4 C0100200 */  sll        $v0, $v0, 3
/* 95CEA18 8007A4E8 21104300 */  addu       $v0, $v0, $v1
/* 95CEA1C 8007A4EC 83120200 */  sra        $v0, $v0, 10
/* 95CEA20 8007A4F0 5B3B010C */  jal        func_8004ED6C
/* 95CEA24 8007A4F4 7000A2AF */   sw        $v0, 0x70($sp)
/* 95CEA28 8007A4F8 21287402 */  addu       $a1, $s3, $s4
/* 95CEA2C 8007A4FC A800A88F */  lw         $t0, 0xA8($sp)
/* 95CEA30 8007A500 21304002 */  addu       $a2, $s2, $zero
/* 95CEA34 8007A504 653C010C */  jal        func_8004F194
/* 95CEA38 8007A508 21201101 */   addu      $a0, $t0, $s1
/* 95CEA3C 8007A50C 0500022A */  slti       $v0, $s0, 0x5
/* 95CEA40 8007A510 D9FF4014 */  bnez       $v0, .Llevel_50_8007A478
/* 95CEA44 8007A514 0C003126 */   addiu     $s1, $s1, 0xC
/* 95CEA48 8007A518 A800A88F */  lw         $t0, 0xA8($sp)
/* 95CEA4C 8007A51C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 95CEA50 8007A520 780002AD */  sw         $v0, 0x78($t0)
/* 95CEA54 8007A524 8C000224 */  addiu      $v0, $zero, 0x8C
/* 95CEA58 8007A528 0000A2A2 */  sb         $v0, 0x0($s5)
/* 95CEA5C 8007A52C 64000224 */  addiu      $v0, $zero, 0x64
/* 95CEA60 8007A530 0100A2A2 */  sb         $v0, 0x1($s5)
/* 95CEA64 8007A534 28000224 */  addiu      $v0, $zero, 0x28
/* 95CEA68 8007A538 0200A2A2 */  sb         $v0, 0x2($s5)
/* 95CEA6C 8007A53C 02006586 */  lh         $a1, 0x2($s3)
/* 95CEA70 8007A540 00000000 */  nop
/* 95CEA74 8007A544 0C00A228 */  slti       $v0, $a1, 0xC
/* 95CEA78 8007A548 28004010 */  beqz       $v0, .Llevel_50_8007A5EC
/* 95CEA7C 8007A54C 0C000424 */   addiu     $a0, $zero, 0xC
/* 95CEA80 8007A550 0000A392 */  lbu        $v1, 0x0($s5)
/* 95CEA84 8007A554 23108500 */  subu       $v0, $a0, $a1
/* 95CEA88 8007A558 18006200 */  mult       $v1, $v0
/* 95CEA8C 8007A55C 12180000 */  mflo       $v1
/* 95CEA90 8007A560 AA2A053C */  lui        $a1, (0x2AAAAAAB >> 16)
/* 95CEA94 8007A564 ABAAA534 */  ori        $a1, $a1, (0x2AAAAAAB & 0xFFFF)
/* 95CEA98 8007A568 18006500 */  mult       $v1, $a1
/* 95CEA9C 8007A56C C31F0300 */  sra        $v1, $v1, 31
/* 95CEAA0 8007A570 10400000 */  mfhi       $t0
/* 95CEAA4 8007A574 43100800 */  sra        $v0, $t0, 1
/* 95CEAA8 8007A578 23104300 */  subu       $v0, $v0, $v1
/* 95CEAAC 8007A57C 0400A2A2 */  sb         $v0, 0x4($s5)
/* 95CEAB0 8007A580 02006286 */  lh         $v0, 0x2($s3)
/* 95CEAB4 8007A584 0100A392 */  lbu        $v1, 0x1($s5)
/* 95CEAB8 8007A588 23108200 */  subu       $v0, $a0, $v0
/* 95CEABC 8007A58C 18006200 */  mult       $v1, $v0
/* 95CEAC0 8007A590 12180000 */  mflo       $v1
/* 95CEAC4 8007A594 00000000 */  nop
/* 95CEAC8 8007A598 00000000 */  nop
/* 95CEACC 8007A59C 18006500 */  mult       $v1, $a1
/* 95CEAD0 8007A5A0 C31F0300 */  sra        $v1, $v1, 31
/* 95CEAD4 8007A5A4 10400000 */  mfhi       $t0
/* 95CEAD8 8007A5A8 43100800 */  sra        $v0, $t0, 1
/* 95CEADC 8007A5AC 23104300 */  subu       $v0, $v0, $v1
/* 95CEAE0 8007A5B0 0500A2A2 */  sb         $v0, 0x5($s5)
/* 95CEAE4 8007A5B4 02006286 */  lh         $v0, 0x2($s3)
/* 95CEAE8 8007A5B8 0200A392 */  lbu        $v1, 0x2($s5)
/* 95CEAEC 8007A5BC 23208200 */  subu       $a0, $a0, $v0
/* 95CEAF0 8007A5C0 18006400 */  mult       $v1, $a0
/* 95CEAF4 8007A5C4 12180000 */  mflo       $v1
/* 95CEAF8 8007A5C8 00000000 */  nop
/* 95CEAFC 8007A5CC 00000000 */  nop
/* 95CEB00 8007A5D0 18006500 */  mult       $v1, $a1
/* 95CEB04 8007A5D4 C31F0300 */  sra        $v1, $v1, 31
/* 95CEB08 8007A5D8 10400000 */  mfhi       $t0
/* 95CEB0C 8007A5DC 43100800 */  sra        $v0, $t0, 1
/* 95CEB10 8007A5E0 23104300 */  subu       $v0, $v0, $v1
/* 95CEB14 8007A5E4 7EE90108 */  j          .Llevel_50_8007A5F8
/* 95CEB18 8007A5E8 0600A2A2 */   sb        $v0, 0x6($s5)
.Llevel_50_8007A5EC:
/* 95CEB1C 8007A5EC 0400A0A2 */  sb         $zero, 0x4($s5)
/* 95CEB20 8007A5F0 0500A0A2 */  sb         $zero, 0x5($s5)
/* 95CEB24 8007A5F4 0600A0A2 */  sb         $zero, 0x6($s5)
.Llevel_50_8007A5F8:
/* 95CEB28 8007A5F8 21800000 */  addu       $s0, $zero, $zero
/* 95CEB2C 8007A5FC 6666063C */  lui        $a2, (0x66666667 >> 16)
/* 95CEB30 8007A600 6766C634 */  ori        $a2, $a2, (0x66666667 & 0xFFFF)
/* 95CEB34 8007A604 01000524 */  addiu      $a1, $zero, 0x1
.Llevel_50_8007A608:
/* 95CEB38 8007A608 01000326 */  addiu      $v1, $s0, 0x1
/* 95CEB3C 8007A60C C0201000 */  sll        $a0, $s0, 3
/* 95CEB40 8007A610 18006600 */  mult       $v1, $a2
/* 95CEB44 8007A614 B000A88F */  lw         $t0, 0xB0($sp)
/* 95CEB48 8007A618 05000226 */  addiu      $v0, $s0, 0x5
/* 95CEB4C 8007A61C 21208800 */  addu       $a0, $a0, $t0
/* 95CEB50 8007A620 000090A0 */  sb         $s0, 0x0($a0)
/* 95CEB54 8007A624 21806000 */  addu       $s0, $v1, $zero
/* 95CEB58 8007A628 020082A0 */  sb         $v0, 0x2($a0)
/* 95CEB5C 8007A62C C3171000 */  sra        $v0, $s0, 31
/* 95CEB60 8007A630 040080A0 */  sb         $zero, 0x4($a0)
/* 95CEB64 8007A634 050080A0 */  sb         $zero, 0x5($a0)
/* 95CEB68 8007A638 060085A0 */  sb         $a1, 0x6($a0)
/* 95CEB6C 8007A63C 070085A0 */  sb         $a1, 0x7($a0)
/* 95CEB70 8007A640 10400000 */  mfhi       $t0
/* 95CEB74 8007A644 43180800 */  sra        $v1, $t0, 1
/* 95CEB78 8007A648 23186200 */  subu       $v1, $v1, $v0
/* 95CEB7C 8007A64C 80100300 */  sll        $v0, $v1, 2
/* 95CEB80 8007A650 21104300 */  addu       $v0, $v0, $v1
/* 95CEB84 8007A654 23100202 */  subu       $v0, $s0, $v0
/* 95CEB88 8007A658 010082A0 */  sb         $v0, 0x1($a0)
/* 95CEB8C 8007A65C 05004224 */  addiu      $v0, $v0, 0x5
/* 95CEB90 8007A660 030082A0 */  sb         $v0, 0x3($a0)
/* 95CEB94 8007A664 0500022A */  slti       $v0, $s0, 0x5
/* 95CEB98 8007A668 E7FF4014 */  bnez       $v0, .Llevel_50_8007A608
/* 95CEB9C 8007A66C FFFF0224 */   addiu     $v0, $zero, -0x1
/* 95CEBA0 8007A670 B000A88F */  lw         $t0, 0xB0($sp)
/* 95CEBA4 8007A674 00000000 */  nop
/* 95CEBA8 8007A678 280002AD */  sw         $v0, 0x28($t0)
/* 95CEBAC 8007A67C 0C00E28E */  lw         $v0, 0xC($s7)
/* 95CEBB0 8007A680 00000000 */  nop
/* 95CEBB4 8007A684 08004014 */  bnez       $v0, .Llevel_50_8007A6A8
/* 95CEBB8 8007A688 2128A002 */   addu      $a1, $s5, $zero
/* 95CEBBC 8007A68C 1000E726 */  addiu      $a3, $s7, 0x10
/* 95CEBC0 8007A690 A800A48F */  lw         $a0, 0xA8($sp)
/* 95CEBC4 8007A694 B000A68F */  lw         $a2, 0xB0($sp)
/* 95CEBC8 8007A698 01000224 */  addiu      $v0, $zero, 0x1
/* 95CEBCC 8007A69C C042010C */  jal        func_80050B00
/* 95CEBD0 8007A6A0 1000A2AF */   sw        $v0, 0x10($sp)
/* 95CEBD4 8007A6A4 0C00E2AE */  sw         $v0, 0xC($s7)
.Llevel_50_8007A6A8:
/* 95CEBD8 8007A6A8 DC00BF8F */  lw         $ra, 0xDC($sp)
/* 95CEBDC 8007A6AC D800BE8F */  lw         $fp, 0xD8($sp)
/* 95CEBE0 8007A6B0 D400B78F */  lw         $s7, 0xD4($sp)
/* 95CEBE4 8007A6B4 D000B68F */  lw         $s6, 0xD0($sp)
/* 95CEBE8 8007A6B8 CC00B58F */  lw         $s5, 0xCC($sp)
/* 95CEBEC 8007A6BC C800B48F */  lw         $s4, 0xC8($sp)
/* 95CEBF0 8007A6C0 C400B38F */  lw         $s3, 0xC4($sp)
/* 95CEBF4 8007A6C4 C000B28F */  lw         $s2, 0xC0($sp)
/* 95CEBF8 8007A6C8 BC00B18F */  lw         $s1, 0xBC($sp)
/* 95CEBFC 8007A6CC B800B08F */  lw         $s0, 0xB8($sp)
/* 95CEC00 8007A6D0 E000BD27 */  addiu      $sp, $sp, 0xE0
/* 95CEC04 8007A6D4 0800E003 */  jr         $ra
/* 95CEC08 8007A6D8 00000000 */   nop
.size func_level_50_800796DC, . - func_level_50_800796DC
