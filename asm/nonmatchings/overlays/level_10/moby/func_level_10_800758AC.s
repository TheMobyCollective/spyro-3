.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_10_800758AC
/* 3ADA5DC 800758AC A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 3ADA5E0 800758B0 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 3ADA5E4 800758B4 21888000 */  addu       $s1, $a0, $zero
/* 3ADA5E8 800758B8 0780053C */  lui        $a1, %hi(D_80070328)
/* 3ADA5EC 800758BC 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 3ADA5F0 800758C0 5C00BFAF */  sw         $ra, 0x5C($sp)
/* 3ADA5F4 800758C4 5800B4AF */  sw         $s4, 0x58($sp)
/* 3ADA5F8 800758C8 5400B3AF */  sw         $s3, 0x54($sp)
/* 3ADA5FC 800758CC 5000B2AF */  sw         $s2, 0x50($sp)
/* 3ADA600 800758D0 4800B0AF */  sw         $s0, 0x48($sp)
/* 3ADA604 800758D4 0000328E */  lw         $s2, 0x0($s1)
/* 3ADA608 800758D8 CD3C010C */  jal        func_8004F334
/* 3ADA60C 800758DC 0C002426 */   addiu     $a0, $s1, 0xC
/* 3ADA610 800758E0 21A04000 */  addu       $s4, $v0, $zero
/* 3ADA614 800758E4 48002392 */  lbu        $v1, 0x48($s1)
/* 3ADA618 800758E8 02000224 */  addiu      $v0, $zero, 0x2
/* 3ADA61C 800758EC 06006214 */  bne        $v1, $v0, .Llevel_10_80075908
/* 3ADA620 800758F0 B80B822A */   slti      $v0, $s4, 0xBB8
/* 3ADA624 800758F4 46002292 */  lbu        $v0, 0x46($s1)
/* 3ADA628 800758F8 00000000 */  nop
/* 3ADA62C 800758FC 02004224 */  addiu      $v0, $v0, 0x2
/* 3ADA630 80075900 C5D70108 */  j          .Llevel_10_80075F14
/* 3ADA634 80075904 460022A2 */   sb        $v0, 0x46($s1)
.Llevel_10_80075908:
/* 3ADA638 80075908 70004010 */  beqz       $v0, .Llevel_10_80075ACC
/* 3ADA63C 8007590C 00000000 */   nop
/* 3ADA640 80075910 38002386 */  lh         $v1, 0x38($s1)
/* 3ADA644 80075914 1400228E */  lw         $v0, 0x14($s1)
/* 3ADA648 80075918 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 3ADA64C 8007591C 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 3ADA650 80075920 23184300 */  subu       $v1, $v0, $v1
/* 3ADA654 80075924 23106400 */  subu       $v0, $v1, $a0
/* 3ADA658 80075928 05004004 */  bltz       $v0, .Llevel_10_80075940
/* 3ADA65C 8007592C F00A4228 */   slti      $v0, $v0, 0xAF0
/* 3ADA660 80075930 66004010 */  beqz       $v0, .Llevel_10_80075ACC
/* 3ADA664 80075934 00000000 */   nop
/* 3ADA668 80075938 54D60108 */  j          .Llevel_10_80075950
/* 3ADA66C 8007593C 00000000 */   nop
.Llevel_10_80075940:
/* 3ADA670 80075940 23108300 */  subu       $v0, $a0, $v1
/* 3ADA674 80075944 F00A4228 */  slti       $v0, $v0, 0xAF0
/* 3ADA678 80075948 60004010 */  beqz       $v0, .Llevel_10_80075ACC
/* 3ADA67C 8007594C 00000000 */   nop
.Llevel_10_80075950:
/* 3ADA680 80075950 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 3ADA684 80075954 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 3ADA688 80075958 00000000 */  nop
/* 3ADA68C 8007595C 30004014 */  bnez       $v0, .Llevel_10_80075A20
/* 3ADA690 80075960 00000000 */   nop
/* 3ADA694 80075964 0780133C */  lui        $s3, %hi(D_80070328 + 0x280)
/* 3ADA698 80075968 A8057326 */  addiu      $s3, $s3, %lo(D_80070328 + 0x280)
/* 3ADA69C 8007596C 0000628E */  lw         $v0, 0x0($s3)
/* 3ADA6A0 80075970 00000000 */  nop
/* 3ADA6A4 80075974 55004004 */  bltz       $v0, .Llevel_10_80075ACC
/* 3ADA6A8 80075978 78000424 */   addiu     $a0, $zero, 0x78
/* 3ADA6AC 8007597C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 3ADA6B0 80075980 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 3ADA6B4 80075984 00000000 */  nop
/* 3ADA6B8 80075988 09F84000 */  jalr       $v0
/* 3ADA6BC 8007598C 21282002 */   addu      $a1, $s1, $zero
/* 3ADA6C0 80075990 0780013C */  lui        $at, %hi(D_8006C65C)
/* 3ADA6C4 80075994 5CC622AC */  sw         $v0, %lo(D_8006C65C)($at)
/* 3ADA6C8 80075998 4C004010 */  beqz       $v0, .Llevel_10_80075ACC
/* 3ADA6CC 8007599C 00000000 */   nop
/* 3ADA6D0 800759A0 0000508C */  lw         $s0, 0x0($v0)
/* 3ADA6D4 800759A4 00000000 */  nop
/* 3ADA6D8 800759A8 02000592 */  lbu        $a1, 0x2($s0)
/* 3ADA6DC 800759AC F0EF000C */  jal        func_8003BFC0
/* 3ADA6E0 800759B0 21204000 */   addu      $a0, $v0, $zero
/* 3ADA6E4 800759B4 06004014 */  bnez       $v0, .Llevel_10_800759D0
/* 3ADA6E8 800759B8 21280000 */   addu      $a1, $zero, $zero
/* 3ADA6EC 800759BC 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 3ADA6F0 800759C0 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 3ADA6F4 800759C4 AFEE000C */  jal        func_8003BABC
/* 3ADA6F8 800759C8 21300000 */   addu      $a2, $zero, $zero
/* 3ADA6FC 800759CC 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_10_800759D0:
/* 3ADA700 800759D0 36002386 */  lh         $v1, 0x36($s1)
/* 3ADA704 800759D4 10000224 */  addiu      $v0, $zero, 0x10
/* 3ADA708 800759D8 04006214 */  bne        $v1, $v0, .Llevel_10_800759EC
/* 3ADA70C 800759DC 03000324 */   addiu     $v1, $zero, 0x3
/* 3ADA710 800759E0 01000224 */  addiu      $v0, $zero, 0x1
/* 3ADA714 800759E4 C4D60108 */  j          .Llevel_10_80075B10
/* 3ADA718 800759E8 000062AE */   sw        $v0, 0x0($s3)
.Llevel_10_800759EC:
/* 3ADA71C 800759EC 0780023C */  lui        $v0, %hi(D_8006C784)
/* 3ADA720 800759F0 84C7428C */  lw         $v0, %lo(D_8006C784)($v0)
/* 3ADA724 800759F4 000063AE */  sw         $v1, 0x0($s3)
/* 3ADA728 800759F8 01004224 */  addiu      $v0, $v0, 0x1
/* 3ADA72C 800759FC 0780013C */  lui        $at, %hi(D_8006C784)
/* 3ADA730 80075A00 84C722AC */  sw         $v0, %lo(D_8006C784)($at)
/* 3ADA734 80075A04 64004228 */  slti       $v0, $v0, 0x64
/* 3ADA738 80075A08 41004014 */  bnez       $v0, .Llevel_10_80075B10
/* 3ADA73C 80075A0C 63000224 */   addiu     $v0, $zero, 0x63
/* 3ADA740 80075A10 0780013C */  lui        $at, %hi(D_8006C784)
/* 3ADA744 80075A14 84C722AC */  sw         $v0, %lo(D_8006C784)($at)
/* 3ADA748 80075A18 C4D60108 */  j          .Llevel_10_80075B10
/* 3ADA74C 80075A1C 00000000 */   nop
.Llevel_10_80075A20:
/* 3ADA750 80075A20 0000508C */  lw         $s0, 0x0($v0)
/* 3ADA754 80075A24 00000000 */  nop
/* 3ADA758 80075A28 1400028E */  lw         $v0, 0x14($s0)
/* 3ADA75C 80075A2C 00000000 */  nop
/* 3ADA760 80075A30 0A004010 */  beqz       $v0, .Llevel_10_80075A5C
/* 3ADA764 80075A34 21300000 */   addu      $a2, $zero, $zero
/* 3ADA768 80075A38 24005110 */  beq        $v0, $s1, .Llevel_10_80075ACC
/* 3ADA76C 80075A3C 00000000 */   nop
/* 3ADA770 80075A40 00000286 */  lh         $v0, 0x0($s0)
/* 3ADA774 80075A44 00000000 */  nop
/* 3ADA778 80075A48 1F004228 */  slti       $v0, $v0, 0x1F
/* 3ADA77C 80075A4C 1F004014 */  bnez       $v0, .Llevel_10_80075ACC
/* 3ADA780 80075A50 1E000224 */   addiu     $v0, $zero, 0x1E
/* 3ADA784 80075A54 B3D60108 */  j          .Llevel_10_80075ACC
/* 3ADA788 80075A58 000002A6 */   sh        $v0, 0x0($s0)
.Llevel_10_80075A5C:
/* 3ADA78C 80075A5C 0C00238E */  lw         $v1, 0xC($s1)
/* 3ADA790 80075A60 0780043C */  lui        $a0, %hi(D_80070328)
/* 3ADA794 80075A64 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 3ADA798 80075A68 1000228E */  lw         $v0, 0x10($s1)
/* 3ADA79C 80075A6C 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 3ADA7A0 80075A70 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 3ADA7A4 80075A74 23206400 */  subu       $a0, $v1, $a0
/* 3ADA7A8 80075A78 203A010C */  jal        func_8004E880
/* 3ADA7AC 80075A7C 23284500 */   subu      $a1, $v0, $a1
/* 3ADA7B0 80075A80 0780043C */  lui        $a0, %hi(D_80070328 + 0xE)
/* 3ADA7B4 80075A84 36038490 */  lbu        $a0, %lo(D_80070328 + 0xE)($a0)
/* 3ADA7B8 80075A88 4FD8000C */  jal        func_8003613C
/* 3ADA7BC 80075A8C 21284000 */   addu      $a1, $v0, $zero
/* 3ADA7C0 80075A90 02004104 */  bgez       $v0, .Llevel_10_80075A9C
/* 3ADA7C4 80075A94 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 3ADA7C8 80075A98 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_10_80075A9C:
/* 3ADA7CC 80075A9C 0C0042A6 */  sh         $v0, 0xC($s2)
/* 3ADA7D0 80075AA0 50000424 */  addiu      $a0, $zero, 0x50
/* 3ADA7D4 80075AA4 01000224 */  addiu      $v0, $zero, 0x1
/* 3ADA7D8 80075AA8 120040A2 */  sb         $zero, 0x12($s2)
/* 3ADA7DC 80075AAC 480022A2 */  sb         $v0, 0x48($s1)
/* 3ADA7E0 80075AB0 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 3ADA7E4 80075AB4 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 3ADA7E8 80075AB8 82000524 */  addiu      $a1, $zero, 0x82
/* 3ADA7EC 80075ABC 490040A0 */  sb         $zero, 0x49($v0)
/* 3ADA7F0 80075AC0 DBD8000C */  jal        func_8003636C
/* 3ADA7F4 80075AC4 140011AE */   sw        $s1, 0x14($s0)
/* 3ADA7F8 80075AC8 000002A6 */  sh         $v0, 0x0($s0)
.Llevel_10_80075ACC:
/* 3ADA7FC 80075ACC 48002392 */  lbu        $v1, 0x48($s1)
/* 3ADA800 80075AD0 00000000 */  nop
/* 3ADA804 80075AD4 05006010 */  beqz       $v1, .Llevel_10_80075AEC
/* 3ADA808 80075AD8 01000224 */   addiu     $v0, $zero, 0x1
/* 3ADA80C 80075ADC 92006210 */  beq        $v1, $v0, .Llevel_10_80075D28
/* 3ADA810 80075AE0 00000000 */   nop
/* 3ADA814 80075AE4 7FD70108 */  j          .Llevel_10_80075DFC
/* 3ADA818 80075AE8 00000000 */   nop
.Llevel_10_80075AEC:
/* 3ADA81C 80075AEC 0E004426 */  addiu      $a0, $s2, 0xE
/* 3ADA820 80075AF0 69D6000C */  jal        func_800359A4
/* 3ADA824 80075AF4 02000524 */   addiu     $a1, $zero, 0x2
/* 3ADA828 80075AF8 09004010 */  beqz       $v0, .Llevel_10_80075B20
/* 3ADA82C 80075AFC 00000000 */   nop
/* 3ADA830 80075B00 4D002292 */  lbu        $v0, 0x4D($s1)
/* 3ADA834 80075B04 00000000 */  nop
/* 3ADA838 80075B08 09004014 */  bnez       $v0, .Llevel_10_80075B30
/* 3ADA83C 80075B0C 0130822A */   slti      $v0, $s4, 0x3001
.Llevel_10_80075B10:
/* 3ADA840 80075B10 C656010C */  jal        func_80055B18
/* 3ADA844 80075B14 21202002 */   addu      $a0, $s1, $zero
/* 3ADA848 80075B18 C5D70108 */  j          .Llevel_10_80075F14
/* 3ADA84C 80075B1C 00000000 */   nop
.Llevel_10_80075B20:
/* 3ADA850 80075B20 4D002292 */  lbu        $v0, 0x4D($s1)
/* 3ADA854 80075B24 00000000 */  nop
/* 3ADA858 80075B28 B8004010 */  beqz       $v0, .Llevel_10_80075E0C
/* 3ADA85C 80075B2C 0130822A */   slti      $v0, $s4, 0x3001
.Llevel_10_80075B30:
/* 3ADA860 80075B30 B2004010 */  beqz       $v0, .Llevel_10_80075DFC
/* 3ADA864 80075B34 11004426 */   addiu     $a0, $s2, 0x11
/* 3ADA868 80075B38 69D6000C */  jal        func_800359A4
/* 3ADA86C 80075B3C 01000524 */   addiu     $a1, $zero, 0x1
/* 3ADA870 80075B40 13004010 */  beqz       $v0, .Llevel_10_80075B90
/* 3ADA874 80075B44 21202002 */   addu      $a0, $s1, $zero
/* 3ADA878 80075B48 1E000424 */  addiu      $a0, $zero, 0x1E
/* 3ADA87C 80075B4C F7D8000C */  jal        func_800363DC
/* 3ADA880 80075B50 5A000524 */   addiu     $a1, $zero, 0x5A
/* 3ADA884 80075B54 9171010C */  jal        rand
/* 3ADA888 80075B58 21804000 */   addu      $s0, $v0, $zero
/* 3ADA88C 80075B5C 01004230 */  andi       $v0, $v0, 0x1
/* 3ADA890 80075B60 02004010 */  beqz       $v0, .Llevel_10_80075B6C
/* 3ADA894 80075B64 00000000 */   nop
/* 3ADA898 80075B68 23801000 */  negu       $s0, $s0
.Llevel_10_80075B6C:
/* 3ADA89C 80075B6C 10004492 */  lbu        $a0, 0x10($s2)
/* 3ADA8A0 80075B70 5FD8000C */  jal        func_8003617C
/* 3ADA8A4 80075B74 21280002 */   addu      $a1, $s0, $zero
/* 3ADA8A8 80075B78 3C000424 */  addiu      $a0, $zero, 0x3C
/* 3ADA8AC 80075B7C 8C000524 */  addiu      $a1, $zero, 0x8C
/* 3ADA8B0 80075B80 DBD8000C */  jal        func_8003636C
/* 3ADA8B4 80075B84 100042A2 */   sb        $v0, 0x10($s2)
/* 3ADA8B8 80075B88 110042A2 */  sb         $v0, 0x11($s2)
/* 3ADA8BC 80075B8C 21202002 */  addu       $a0, $s1, $zero
.Llevel_10_80075B90:
/* 3ADA8C0 80075B90 04000624 */  addiu      $a2, $zero, 0x4
/* 3ADA8C4 80075B94 0A000724 */  addiu      $a3, $zero, 0xA
/* 3ADA8C8 80075B98 10004592 */  lbu        $a1, 0x10($s2)
/* 3ADA8CC 80075B9C 01000224 */  addiu      $v0, $zero, 0x1
/* 3ADA8D0 80075BA0 1000A2AF */  sw         $v0, 0x10($sp)
/* 3ADA8D4 80075BA4 17D6000C */  jal        func_8003585C
/* 3ADA8D8 80075BA8 1400A0AF */   sw        $zero, 0x14($sp)
/* 3ADA8DC 80075BAC 21A04000 */  addu       $s4, $v0, $zero
/* 3ADA8E0 80075BB0 0780033C */  lui        $v1, %hi(D_8006C648)
/* 3ADA8E4 80075BB4 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 3ADA8E8 80075BB8 03000224 */  addiu      $v0, $zero, 0x3
/* 3ADA8EC 80075BBC 03006214 */  bne        $v1, $v0, .Llevel_10_80075BCC
/* 3ADA8F0 80075BC0 1E000424 */   addiu     $a0, $zero, 0x1E
/* 3ADA8F4 80075BC4 F7D60108 */  j          .Llevel_10_80075BDC
/* 3ADA8F8 80075BC8 2D000424 */   addiu     $a0, $zero, 0x2D
.Llevel_10_80075BCC:
/* 3ADA8FC 80075BCC 04000224 */  addiu      $v0, $zero, 0x4
/* 3ADA900 80075BD0 02006214 */  bne        $v1, $v0, .Llevel_10_80075BDC
/* 3ADA904 80075BD4 00000000 */   nop
/* 3ADA908 80075BD8 3C000424 */  addiu      $a0, $zero, 0x3C
.Llevel_10_80075BDC:
/* 3ADA90C 80075BDC 46002292 */  lbu        $v0, 0x46($s1)
/* 3ADA910 80075BE0 00000000 */  nop
/* 3ADA914 80075BE4 40100200 */  sll        $v0, $v0, 1
/* 3ADA918 80075BE8 0680013C */  lui        $at, %hi(D_80065920)
/* 3ADA91C 80075BEC 21082200 */  addu       $at, $at, $v0
/* 3ADA920 80075BF0 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 3ADA924 80075BF4 00000000 */  nop
/* 3ADA928 80075BF8 18004400 */  mult       $v0, $a0
/* 3ADA92C 80075BFC 12400000 */  mflo       $t0
/* 3ADA930 80075C00 03130800 */  sra        $v0, $t0, 12
/* 3ADA934 80075C04 3800A2AF */  sw         $v0, 0x38($sp)
/* 3ADA938 80075C08 46002292 */  lbu        $v0, 0x46($s1)
/* 3ADA93C 80075C0C 00000000 */  nop
/* 3ADA940 80075C10 40100200 */  sll        $v0, $v0, 1
/* 3ADA944 80075C14 0680013C */  lui        $at, %hi(D_800658A0)
/* 3ADA948 80075C18 21082200 */  addu       $at, $at, $v0
/* 3ADA94C 80075C1C A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 3ADA950 80075C20 00000000 */  nop
/* 3ADA954 80075C24 18004400 */  mult       $v0, $a0
/* 3ADA958 80075C28 0C003026 */  addiu      $s0, $s1, 0xC
/* 3ADA95C 80075C2C 21300002 */  addu       $a2, $s0, $zero
/* 3ADA960 80075C30 4000A0AF */  sw         $zero, 0x40($sp)
/* 3ADA964 80075C34 3800A427 */  addiu      $a0, $sp, 0x38
/* 3ADA968 80075C38 21288000 */  addu       $a1, $a0, $zero
/* 3ADA96C 80075C3C 12400000 */  mflo       $t0
/* 3ADA970 80075C40 03130800 */  sra        $v0, $t0, 12
/* 3ADA974 80075C44 653C010C */  jal        func_8004F194
/* 3ADA978 80075C48 3C00A2AF */   sw        $v0, 0x3C($sp)
/* 3ADA97C 80075C4C 3800A427 */  addiu      $a0, $sp, 0x38
/* 3ADA980 80075C50 6564000C */  jal        func_80019194
/* 3ADA984 80075C54 32000524 */   addiu     $a1, $zero, 0x32
/* 3ADA988 80075C58 21984000 */  addu       $s3, $v0, $zero
/* 3ADA98C 80075C5C 03006016 */  bnez       $s3, .Llevel_10_80075C6C
/* 3ADA990 80075C60 21200002 */   addu      $a0, $s0, $zero
/* 3ADA994 80075C64 5E3C010C */  jal        func_8004F178
/* 3ADA998 80075C68 3800A527 */   addiu     $a1, $sp, 0x38
.Llevel_10_80075C6C:
/* 3ADA99C 80075C6C 0780023C */  lui        $v0, %hi(D_8006C640)
/* 3ADA9A0 80075C70 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 3ADA9A4 80075C74 00000000 */  nop
/* 3ADA9A8 80075C78 04004230 */  andi       $v0, $v0, 0x4
/* 3ADA9AC 80075C7C 06004014 */  bnez       $v0, .Llevel_10_80075C98
/* 3ADA9B0 80075C80 00000000 */   nop
/* 3ADA9B4 80075C84 21200002 */  addu       $a0, $s0, $zero
/* 3ADA9B8 80075C88 D668000C */  jal        func_8001A358
/* 3ADA9BC 80075C8C 00080524 */   addiu     $a1, $zero, 0x800
/* 3ADA9C0 80075C90 A758010C */  jal        func_8005629C
/* 3ADA9C4 80075C94 21202002 */   addu      $a0, $s1, $zero
.Llevel_10_80075C98:
/* 3ADA9C8 80075C98 0D008012 */  beqz       $s4, .Llevel_10_80075CD0
/* 3ADA9CC 80075C9C 00000000 */   nop
/* 3ADA9D0 80075CA0 0B006012 */  beqz       $s3, .Llevel_10_80075CD0
/* 3ADA9D4 80075CA4 62000424 */   addiu     $a0, $zero, 0x62
/* 3ADA9D8 80075CA8 DBD8000C */  jal        func_8003636C
/* 3ADA9DC 80075CAC 9E000524 */   addiu     $a1, $zero, 0x9E
/* 3ADA9E0 80075CB0 10004492 */  lbu        $a0, 0x10($s2)
/* 3ADA9E4 80075CB4 5FD8000C */  jal        func_8003617C
/* 3ADA9E8 80075CB8 21284000 */   addu      $a1, $v0, $zero
/* 3ADA9EC 80075CBC 1E000424 */  addiu      $a0, $zero, 0x1E
/* 3ADA9F0 80075CC0 50000524 */  addiu      $a1, $zero, 0x50
/* 3ADA9F4 80075CC4 DBD8000C */  jal        func_8003636C
/* 3ADA9F8 80075CC8 100042A2 */   sb        $v0, 0x10($s2)
/* 3ADA9FC 80075CCC 110042A2 */  sb         $v0, 0x11($s2)
.Llevel_10_80075CD0:
/* 3ADAA00 80075CD0 0780023C */  lui        $v0, %hi(D_8006C640)
/* 3ADAA04 80075CD4 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 3ADAA08 80075CD8 00000000 */  nop
/* 3ADAA0C 80075CDC 03004230 */  andi       $v0, $v0, 0x3
/* 3ADAA10 80075CE0 46004014 */  bnez       $v0, .Llevel_10_80075DFC
/* 3ADAA14 80075CE4 0C002426 */   addiu     $a0, $s1, 0xC
/* 3ADAA18 80075CE8 CD3C010C */  jal        func_8004F334
/* 3ADAA1C 80075CEC 21284002 */   addu      $a1, $s2, $zero
/* 3ADAA20 80075CF0 D1074228 */  slti       $v0, $v0, 0x7D1
/* 3ADAA24 80075CF4 41004014 */  bnez       $v0, .Llevel_10_80075DFC
/* 3ADAA28 80075CF8 21300000 */   addu      $a2, $zero, $zero
/* 3ADAA2C 80075CFC 0000438E */  lw         $v1, 0x0($s2)
/* 3ADAA30 80075D00 0C00248E */  lw         $a0, 0xC($s1)
/* 3ADAA34 80075D04 0400428E */  lw         $v0, 0x4($s2)
/* 3ADAA38 80075D08 1000258E */  lw         $a1, 0x10($s1)
/* 3ADAA3C 80075D0C 23206400 */  subu       $a0, $v1, $a0
/* 3ADAA40 80075D10 203A010C */  jal        func_8004E880
/* 3ADAA44 80075D14 23284500 */   subu      $a1, $v0, $a1
/* 3ADAA48 80075D18 100042A2 */  sb         $v0, 0x10($s2)
/* 3ADAA4C 80075D1C 28000224 */  addiu      $v0, $zero, 0x28
/* 3ADAA50 80075D20 7FD70108 */  j          .Llevel_10_80075DFC
/* 3ADAA54 80075D24 110042A2 */   sb        $v0, 0x11($s2)
.Llevel_10_80075D28:
/* 3ADAA58 80075D28 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 3ADAA5C 80075D2C 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 3ADAA60 80075D30 00000000 */  nop
/* 3ADAA64 80075D34 30004010 */  beqz       $v0, .Llevel_10_80075DF8
/* 3ADAA68 80075D38 21300000 */   addu      $a2, $zero, $zero
/* 3ADAA6C 80075D3C 0780103C */  lui        $s0, %hi(D_80070328)
/* 3ADAA70 80075D40 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 3ADAA74 80075D44 0C00238E */  lw         $v1, 0xC($s1)
/* 3ADAA78 80075D48 0000048E */  lw         $a0, 0x0($s0)
/* 3ADAA7C 80075D4C 1000228E */  lw         $v0, 0x10($s1)
/* 3ADAA80 80075D50 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 3ADAA84 80075D54 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 3ADAA88 80075D58 23206400 */  subu       $a0, $v1, $a0
/* 3ADAA8C 80075D5C 203A010C */  jal        func_8004E880
/* 3ADAA90 80075D60 23284500 */   subu      $a1, $v0, $a1
/* 3ADAA94 80075D64 0C004386 */  lh         $v1, 0xC($s2)
/* 3ADAA98 80075D68 21204000 */  addu       $a0, $v0, $zero
/* 3ADAA9C 80075D6C 80280300 */  sll        $a1, $v1, 2
/* 3ADAAA0 80075D70 2128A300 */  addu       $a1, $a1, $v1
/* 3ADAAA4 80075D74 5FD8000C */  jal        func_8003617C
/* 3ADAAA8 80075D78 40280500 */   sll       $a1, $a1, 1
/* 3ADAAAC 80075D7C 21202002 */  addu       $a0, $s1, $zero
/* 3ADAAB0 80075D80 21280002 */  addu       $a1, $s0, $zero
/* 3ADAAB4 80075D84 20030624 */  addiu      $a2, $zero, 0x320
/* 3ADAAB8 80075D88 21384000 */  addu       $a3, $v0, $zero
/* 3ADAABC 80075D8C 0780033C */  lui        $v1, %hi(unk_ovlheader_80074314)
/* 3ADAAC0 80075D90 1443638C */  lw         $v1, %lo(unk_ovlheader_80074314)($v1)
/* 3ADAAC4 80075D94 08000224 */  addiu      $v0, $zero, 0x8
/* 3ADAAC8 80075D98 1000A2AF */  sw         $v0, 0x10($sp)
/* 3ADAACC 80075D9C 78000224 */  addiu      $v0, $zero, 0x78
/* 3ADAAD0 80075DA0 1400A2AF */  sw         $v0, 0x14($sp)
/* 3ADAAD4 80075DA4 0E000224 */  addiu      $v0, $zero, 0xE
/* 3ADAAD8 80075DA8 1800A2AF */  sw         $v0, 0x18($sp)
/* 3ADAADC 80075DAC 80000224 */  addiu      $v0, $zero, 0x80
/* 3ADAAE0 80075DB0 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 3ADAAE4 80075DB4 FF000224 */  addiu      $v0, $zero, 0xFF
/* 3ADAAE8 80075DB8 2000A2AF */  sw         $v0, 0x20($sp)
/* 3ADAAEC 80075DBC 2400A2AF */  sw         $v0, 0x24($sp)
/* 3ADAAF0 80075DC0 2800A0AF */  sw         $zero, 0x28($sp)
/* 3ADAAF4 80075DC4 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 3ADAAF8 80075DC8 09F86000 */  jalr       $v1
/* 3ADAAFC 80075DCC 3000A0AF */   sw        $zero, 0x30($sp)
/* 3ADAB00 80075DD0 0A004104 */  bgez       $v0, .Llevel_10_80075DFC
/* 3ADAB04 80075DD4 00000000 */   nop
/* 3ADAB08 80075DD8 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 3ADAB0C 80075DDC 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 3ADAB10 80075DE0 00000000 */  nop
/* 3ADAB14 80075DE4 05004010 */  beqz       $v0, .Llevel_10_80075DFC
/* 3ADAB18 80075DE8 00000000 */   nop
/* 3ADAB1C 80075DEC 0000428C */  lw         $v0, 0x0($v0)
/* 3ADAB20 80075DF0 7FD70108 */  j          .Llevel_10_80075DFC
/* 3ADAB24 80075DF4 000040A4 */   sh        $zero, 0x0($v0)
.Llevel_10_80075DF8:
/* 3ADAB28 80075DF8 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_10_80075DFC:
/* 3ADAB2C 80075DFC 4D002292 */  lbu        $v0, 0x4D($s1)
/* 3ADAB30 80075E00 00000000 */  nop
/* 3ADAB34 80075E04 05004014 */  bnez       $v0, .Llevel_10_80075E1C
/* 3ADAB38 80075E08 00000000 */   nop
.Llevel_10_80075E0C:
/* 3ADAB3C 80075E0C 48002392 */  lbu        $v1, 0x48($s1)
/* 3ADAB40 80075E10 01000224 */  addiu      $v0, $zero, 0x1
/* 3ADAB44 80075E14 2E006214 */  bne        $v1, $v0, .Llevel_10_80075ED0
/* 3ADAB48 80075E18 00000000 */   nop
.Llevel_10_80075E1C:
/* 3ADAB4C 80075E1C 4ED7000C */  jal        func_80035D38
/* 3ADAB50 80075E20 21202002 */   addu      $a0, $s1, $zero
/* 3ADAB54 80075E24 21202002 */  addu       $a0, $s1, $zero
/* 3ADAB58 80075E28 A758010C */  jal        func_8005629C
/* 3ADAB5C 80075E2C 21804000 */   addu      $s0, $v0, $zero
/* 3ADAB60 80075E30 27000012 */  beqz       $s0, .Llevel_10_80075ED0
/* 3ADAB64 80075E34 00000000 */   nop
/* 3ADAB68 80075E38 12004492 */  lbu        $a0, 0x12($s2)
/* 3ADAB6C 80075E3C 00000000 */  nop
/* 3ADAB70 80075E40 40100400 */  sll        $v0, $a0, 1
/* 3ADAB74 80075E44 0680013C */  lui        $at, %hi(D_800658A0)
/* 3ADAB78 80075E48 21082200 */  addu       $at, $at, $v0
/* 3ADAB7C 80075E4C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 3ADAB80 80075E50 13004292 */  lbu        $v0, 0x13($s2)
/* 3ADAB84 80075E54 00000000 */  nop
/* 3ADAB88 80075E58 18006200 */  mult       $v1, $v0
/* 3ADAB8C 80075E5C 12400000 */  mflo       $t0
/* 3ADAB90 80075E60 03130800 */  sra        $v0, $t0, 12
/* 3ADAB94 80075E64 80024224 */  addiu      $v0, $v0, 0x280
/* 3ADAB98 80075E68 04008010 */  beqz       $a0, .Llevel_10_80075E7C
/* 3ADAB9C 80075E6C 21800202 */   addu      $s0, $s0, $v0
/* 3ADABA0 80075E70 80000224 */  addiu      $v0, $zero, 0x80
/* 3ADABA4 80075E74 05008214 */  bne        $a0, $v0, .Llevel_10_80075E8C
/* 3ADABA8 80075E78 00000000 */   nop
.Llevel_10_80075E7C:
/* 3ADABAC 80075E7C 00010424 */  addiu      $a0, $zero, 0x100
/* 3ADABB0 80075E80 DBD8000C */  jal        func_8003636C
/* 3ADABB4 80075E84 00020524 */   addiu     $a1, $zero, 0x200
/* 3ADABB8 80075E88 130042A2 */  sb         $v0, 0x13($s2)
.Llevel_10_80075E8C:
/* 3ADABBC 80075E8C 12004292 */  lbu        $v0, 0x12($s2)
/* 3ADABC0 80075E90 00000000 */  nop
/* 3ADABC4 80075E94 FCFF4224 */  addiu      $v0, $v0, -0x4
/* 3ADABC8 80075E98 120042A2 */  sb         $v0, 0x12($s2)
/* 3ADABCC 80075E9C 1400238E */  lw         $v1, 0x14($s1)
/* 3ADABD0 80075EA0 00000000 */  nop
/* 3ADABD4 80075EA4 23800302 */  subu       $s0, $s0, $v1
/* 3ADABD8 80075EA8 2100022A */  slti       $v0, $s0, 0x21
/* 3ADABDC 80075EAC 03004014 */  bnez       $v0, .Llevel_10_80075EBC
/* 3ADABE0 80075EB0 E0FF022A */   slti      $v0, $s0, -0x20
/* 3ADABE4 80075EB4 20001024 */  addiu      $s0, $zero, 0x20
/* 3ADABE8 80075EB8 E0FF022A */  slti       $v0, $s0, -0x20
.Llevel_10_80075EBC:
/* 3ADABEC 80075EBC 03004010 */  beqz       $v0, .Llevel_10_80075ECC
/* 3ADABF0 80075EC0 21107000 */   addu      $v0, $v1, $s0
/* 3ADABF4 80075EC4 E0FF1024 */  addiu      $s0, $zero, -0x20
/* 3ADABF8 80075EC8 21107000 */  addu       $v0, $v1, $s0
.Llevel_10_80075ECC:
/* 3ADABFC 80075ECC 140022AE */  sw         $v0, 0x14($s1)
.Llevel_10_80075ED0:
/* 3ADAC00 80075ED0 36002386 */  lh         $v1, 0x36($s1)
/* 3ADAC04 80075ED4 D3000224 */  addiu      $v0, $zero, 0xD3
/* 3ADAC08 80075ED8 0E006214 */  bne        $v1, $v0, .Llevel_10_80075F14
/* 3ADAC0C 80075EDC 00000000 */   nop
/* 3ADAC10 80075EE0 0780023C */  lui        $v0, %hi(D_8006C640)
/* 3ADAC14 80075EE4 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 3ADAC18 80075EE8 00000000 */  nop
/* 3ADAC1C 80075EEC 01004230 */  andi       $v0, $v0, 0x1
/* 3ADAC20 80075EF0 08004014 */  bnez       $v0, .Llevel_10_80075F14
/* 3ADAC24 80075EF4 01000424 */   addiu     $a0, $zero, 0x1
/* 3ADAC28 80075EF8 0C000524 */  addiu      $a1, $zero, 0xC
/* 3ADAC2C 80075EFC 21302002 */  addu       $a2, $s1, $zero
/* 3ADAC30 80075F00 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 3ADAC34 80075F04 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 3ADAC38 80075F08 00000000 */  nop
/* 3ADAC3C 80075F0C 09F84000 */  jalr       $v0
/* 3ADAC40 80075F10 06000724 */   addiu     $a3, $zero, 0x6
.Llevel_10_80075F14:
/* 3ADAC44 80075F14 5C00BF8F */  lw         $ra, 0x5C($sp)
/* 3ADAC48 80075F18 5800B48F */  lw         $s4, 0x58($sp)
/* 3ADAC4C 80075F1C 5400B38F */  lw         $s3, 0x54($sp)
/* 3ADAC50 80075F20 5000B28F */  lw         $s2, 0x50($sp)
/* 3ADAC54 80075F24 4C00B18F */  lw         $s1, 0x4C($sp)
/* 3ADAC58 80075F28 4800B08F */  lw         $s0, 0x48($sp)
/* 3ADAC5C 80075F2C 6000BD27 */  addiu      $sp, $sp, 0x60
/* 3ADAC60 80075F30 0800E003 */  jr         $ra
/* 3ADAC64 80075F34 00000000 */   nop
.size func_level_10_800758AC, . - func_level_10_800758AC
