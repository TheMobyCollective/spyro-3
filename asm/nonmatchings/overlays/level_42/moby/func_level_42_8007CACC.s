.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_42_8007CACC
/* 84817FC 8007CACC B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 8481800 8007CAD0 3800B2AF */  sw         $s2, 0x38($sp)
/* 8481804 8007CAD4 21908000 */  addu       $s2, $a0, $zero
/* 8481808 8007CAD8 4000BFAF */  sw         $ra, 0x40($sp)
/* 848180C 8007CADC 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 8481810 8007CAE0 3400B1AF */  sw         $s1, 0x34($sp)
/* 8481814 8007CAE4 3000B0AF */  sw         $s0, 0x30($sp)
/* 8481818 8007CAE8 49004392 */  lbu        $v1, 0x49($s2)
/* 848181C 8007CAEC 63000224 */  addiu      $v0, $zero, 0x63
/* 8481820 8007CAF0 08006214 */  bne        $v1, $v0, .Llevel_42_8007CB14
/* 8481824 8007CAF4 00000000 */   nop
/* 8481828 8007CAF8 0000428E */  lw         $v0, 0x0($s2)
/* 848182C 8007CAFC 00000000 */  nop
/* 8481830 8007CB00 0000428C */  lw         $v0, 0x0($v0)
/* 8481834 8007CB04 00000000 */  nop
/* 8481838 8007CB08 1800428C */  lw         $v0, 0x18($v0)
/* 848183C 8007CB0C 00000000 */  nop
/* 8481840 8007CB10 180042AE */  sw         $v0, 0x18($s2)
.Llevel_42_8007CB14:
/* 8481844 8007CB14 49004292 */  lbu        $v0, 0x49($s2)
/* 8481848 8007CB18 00000000 */  nop
/* 848184C 8007CB1C 53004014 */  bnez       $v0, .Llevel_42_8007CC6C
/* 8481850 8007CB20 00000000 */   nop
/* 8481854 8007CB24 36004386 */  lh         $v1, 0x36($s2)
/* 8481858 8007CB28 3C004292 */  lbu        $v0, 0x3C($s2)
/* 848185C 8007CB2C 80180300 */  sll        $v1, $v1, 2
/* 8481860 8007CB30 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 8481864 8007CB34 21082300 */  addu       $at, $at, $v1
/* 8481868 8007CB38 2CEE238C */  lw         $v1, %lo(D_8006EE2C)($at)
/* 848186C 8007CB3C 80100200 */  sll        $v0, $v0, 2
/* 8481870 8007CB40 21104300 */  addu       $v0, $v0, $v1
/* 8481874 8007CB44 3C00428C */  lw         $v0, 0x3C($v0)
/* 8481878 8007CB48 00000000 */  nop
/* 848187C 8007CB4C 00004290 */  lbu        $v0, 0x0($v0)
/* 8481880 8007CB50 9171010C */  jal        func_8005C644
/* 8481884 8007CB54 FFFF5324 */   addiu     $s3, $v0, -0x1
/* 8481888 8007CB58 9171010C */  jal        func_8005C644
/* 848188C 8007CB5C 460042A2 */   sb        $v0, 0x46($s2)
/* 8481890 8007CB60 07004230 */  andi       $v0, $v0, 0x7
/* 8481894 8007CB64 1C004224 */  addiu      $v0, $v0, 0x1C
/* 8481898 8007CB68 9171010C */  jal        func_8005C644
/* 848189C 8007CB6C 4F0042A2 */   sb        $v0, 0x4F($s2)
/* 84818A0 8007CB70 1A005300 */  div        $zero, $v0, $s3
/* 84818A4 8007CB74 02006016 */  bnez       $s3, .Llevel_42_8007CB80
/* 84818A8 8007CB78 00000000 */   nop
/* 84818AC 8007CB7C 0D000700 */  break      7
.Llevel_42_8007CB80:
/* 84818B0 8007CB80 FFFF0124 */  addiu      $at, $zero, -0x1
/* 84818B4 8007CB84 04006116 */  bne        $s3, $at, .Llevel_42_8007CB98
/* 84818B8 8007CB88 0080013C */   lui       $at, (0x80000000 >> 16)
/* 84818BC 8007CB8C 02004114 */  bne        $v0, $at, .Llevel_42_8007CB98
/* 84818C0 8007CB90 00000000 */   nop
/* 84818C4 8007CB94 0D000600 */  break      6
.Llevel_42_8007CB98:
/* 84818C8 8007CB98 10180000 */  mfhi       $v1
/* 84818CC 8007CB9C 30000224 */  addiu      $v0, $zero, 0x30
/* 84818D0 8007CBA0 400042A2 */  sb         $v0, 0x40($s2)
/* 84818D4 8007CBA4 01006224 */  addiu      $v0, $v1, 0x1
/* 84818D8 8007CBA8 3E0043A2 */  sb         $v1, 0x3E($s2)
/* 84818DC 8007CBAC 9171010C */  jal        func_8005C644
/* 84818E0 8007CBB0 3F0042A2 */   sb        $v0, 0x3F($s2)
/* 84818E4 8007CBB4 01004230 */  andi       $v0, $v0, 0x1
/* 84818E8 8007CBB8 01005124 */  addiu      $s1, $v0, 0x1
/* 84818EC 8007CBBC 2A00201A */  blez       $s1, .Llevel_42_8007CC68
/* 84818F0 8007CBC0 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_42_8007CBC4:
/* 84818F4 8007CBC4 36004486 */  lh         $a0, 0x36($s2)
/* 84818F8 8007CBC8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 84818FC 8007CBCC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8481900 8007CBD0 00000000 */  nop
/* 8481904 8007CBD4 09F84000 */  jalr       $v0
/* 8481908 8007CBD8 21284002 */   addu      $a1, $s2, $zero
/* 848190C 8007CBDC 21804000 */  addu       $s0, $v0, $zero
/* 8481910 8007CBE0 1E000012 */  beqz       $s0, .Llevel_42_8007CC5C
/* 8481914 8007CBE4 63000224 */   addiu     $v0, $zero, 0x63
/* 8481918 8007CBE8 0000038E */  lw         $v1, 0x0($s0)
/* 848191C 8007CBEC 490002A2 */  sb         $v0, 0x49($s0)
/* 8481920 8007CBF0 9171010C */  jal        func_8005C644
/* 8481924 8007CBF4 000072AC */   sw        $s2, 0x0($v1)
/* 8481928 8007CBF8 9171010C */  jal        func_8005C644
/* 848192C 8007CBFC 460002A2 */   sb        $v0, 0x46($s0)
/* 8481930 8007CC00 07004230 */  andi       $v0, $v0, 0x7
/* 8481934 8007CC04 1C004224 */  addiu      $v0, $v0, 0x1C
/* 8481938 8007CC08 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 848193C 8007CC0C 20000224 */  addiu      $v0, $zero, 0x20
/* 8481940 8007CC10 080000AE */  sw         $zero, 0x8($s0)
/* 8481944 8007CC14 9171010C */  jal        func_8005C644
/* 8481948 8007CC18 4C0002A2 */   sb        $v0, 0x4C($s0)
/* 848194C 8007CC1C 1A005300 */  div        $zero, $v0, $s3
/* 8481950 8007CC20 02006016 */  bnez       $s3, .Llevel_42_8007CC2C
/* 8481954 8007CC24 00000000 */   nop
/* 8481958 8007CC28 0D000700 */  break      7
.Llevel_42_8007CC2C:
/* 848195C 8007CC2C FFFF0124 */  addiu      $at, $zero, -0x1
/* 8481960 8007CC30 04006116 */  bne        $s3, $at, .Llevel_42_8007CC44
/* 8481964 8007CC34 0080013C */   lui       $at, (0x80000000 >> 16)
/* 8481968 8007CC38 02004114 */  bne        $v0, $at, .Llevel_42_8007CC44
/* 848196C 8007CC3C 00000000 */   nop
/* 8481970 8007CC40 0D000600 */  break      6
.Llevel_42_8007CC44:
/* 8481974 8007CC44 10180000 */  mfhi       $v1
/* 8481978 8007CC48 30000224 */  addiu      $v0, $zero, 0x30
/* 848197C 8007CC4C 400002A2 */  sb         $v0, 0x40($s0)
/* 8481980 8007CC50 01006224 */  addiu      $v0, $v1, 0x1
/* 8481984 8007CC54 3E0003A2 */  sb         $v1, 0x3E($s0)
/* 8481988 8007CC58 3F0002A2 */  sb         $v0, 0x3F($s0)
.Llevel_42_8007CC5C:
/* 848198C 8007CC5C FFFF3126 */  addiu      $s1, $s1, -0x1
/* 8481990 8007CC60 D8FF201E */  bgtz       $s1, .Llevel_42_8007CBC4
/* 8481994 8007CC64 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_42_8007CC68:
/* 8481998 8007CC68 490042A2 */  sb         $v0, 0x49($s2)
.Llevel_42_8007CC6C:
/* 848199C 8007CC6C 1800428E */  lw         $v0, 0x18($s2)
/* 84819A0 8007CC70 1000033C */  lui        $v1, (0x100000 >> 16)
/* 84819A4 8007CC74 24104300 */  and        $v0, $v0, $v1
/* 84819A8 8007CC78 CB004010 */  beqz       $v0, .Llevel_42_8007CFA8
/* 84819AC 8007CC7C 00000000 */   nop
/* 84819B0 8007CC80 9171010C */  jal        func_8005C644
/* 84819B4 8007CC84 00000000 */   nop
/* 84819B8 8007CC88 4F004392 */  lbu        $v1, 0x4F($s2)
/* 84819BC 8007CC8C 00000000 */  nop
/* 84819C0 8007CC90 02190300 */  srl        $v1, $v1, 4
/* 84819C4 8007CC94 24104300 */  and        $v0, $v0, $v1
/* 84819C8 8007CC98 2A004014 */  bnez       $v0, .Llevel_42_8007CD44
/* 84819CC 8007CC9C 21980000 */   addu      $s3, $zero, $zero
/* 84819D0 8007CCA0 1000A427 */  addiu      $a0, $sp, 0x10
/* 84819D4 8007CCA4 5E3C010C */  jal        func_8004F178
/* 84819D8 8007CCA8 0C004526 */   addiu     $a1, $s2, 0xC
/* 84819DC 8007CCAC 21200000 */  addu       $a0, $zero, $zero
/* 84819E0 8007CCB0 DBD8000C */  jal        func_8003636C
/* 84819E4 8007CCB4 B80B0524 */   addiu     $a1, $zero, 0xBB8
/* 84819E8 8007CCB8 21200000 */  addu       $a0, $zero, $zero
/* 84819EC 8007CCBC 1000A38F */  lw         $v1, 0x10($sp)
/* 84819F0 8007CCC0 B80B0524 */  addiu      $a1, $zero, 0xBB8
/* 84819F4 8007CCC4 21186200 */  addu       $v1, $v1, $v0
/* 84819F8 8007CCC8 DBD8000C */  jal        func_8003636C
/* 84819FC 8007CCCC 1000A3AF */   sw        $v1, 0x10($sp)
/* 8481A00 8007CCD0 21200000 */  addu       $a0, $zero, $zero
/* 8481A04 8007CCD4 1400A38F */  lw         $v1, 0x14($sp)
/* 8481A08 8007CCD8 B80B0524 */  addiu      $a1, $zero, 0xBB8
/* 8481A0C 8007CCDC 21186200 */  addu       $v1, $v1, $v0
/* 8481A10 8007CCE0 DBD8000C */  jal        func_8003636C
/* 8481A14 8007CCE4 1400A3AF */   sw        $v1, 0x14($sp)
/* 8481A18 8007CCE8 1800A38F */  lw         $v1, 0x18($sp)
/* 8481A1C 8007CCEC 00000000 */  nop
/* 8481A20 8007CCF0 21186200 */  addu       $v1, $v1, $v0
/* 8481A24 8007CCF4 9171010C */  jal        func_8005C644
/* 8481A28 8007CCF8 1800A3AF */   sw        $v1, 0x18($sp)
/* 8481A2C 8007CCFC 03004230 */  andi       $v0, $v0, 0x3
/* 8481A30 8007CD00 9171010C */  jal        func_8005C644
/* 8481A34 8007CD04 2000A2AF */   sw        $v0, 0x20($sp)
/* 8481A38 8007CD08 0A000424 */  addiu      $a0, $zero, 0xA
/* 8481A3C 8007CD0C 0F000524 */  addiu      $a1, $zero, 0xF
/* 8481A40 8007CD10 03004230 */  andi       $v0, $v0, 0x3
/* 8481A44 8007CD14 DBD8000C */  jal        func_8003636C
/* 8481A48 8007CD18 2400A2AF */   sw        $v0, 0x24($sp)
/* 8481A4C 8007CD1C 01000424 */  addiu      $a0, $zero, 0x1
/* 8481A50 8007CD20 27000524 */  addiu      $a1, $zero, 0x27
/* 8481A54 8007CD24 1000A627 */  addiu      $a2, $sp, 0x10
/* 8481A58 8007CD28 2800A2AF */  sw         $v0, 0x28($sp)
/* 8481A5C 8007CD2C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8481A60 8007CD30 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8481A64 8007CD34 00000000 */  nop
/* 8481A68 8007CD38 09F84000 */  jalr       $v0
/* 8481A6C 8007CD3C 2000A727 */   addiu     $a3, $sp, 0x20
/* 8481A70 8007CD40 21980000 */  addu       $s3, $zero, $zero
.Llevel_42_8007CD44:
/* 8481A74 8007CD44 0780023C */  lui        $v0, %hi(D_8006C578)
/* 8481A78 8007CD48 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 8481A7C 8007CD4C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 8481A80 8007CD50 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 8481A84 8007CD54 00000000 */  nop
/* 8481A88 8007CD58 23104300 */  subu       $v0, $v0, $v1
/* 8481A8C 8007CD5C 15004228 */  slti       $v0, $v0, 0x15
/* 8481A90 8007CD60 51004014 */  bnez       $v0, .Llevel_42_8007CEA8
/* 8481A94 8007CD64 3A020424 */   addiu     $a0, $zero, 0x23A
/* 8481A98 8007CD68 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8481A9C 8007CD6C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8481AA0 8007CD70 00000000 */  nop
/* 8481AA4 8007CD74 09F84000 */  jalr       $v0
/* 8481AA8 8007CD78 21284002 */   addu      $a1, $s2, $zero
/* 8481AAC 8007CD7C 21804000 */  addu       $s0, $v0, $zero
/* 8481AB0 8007CD80 45000012 */  beqz       $s0, .Llevel_42_8007CE98
/* 8481AB4 8007CD84 21200000 */   addu      $a0, $zero, $zero
/* 8481AB8 8007CD88 0000118E */  lw         $s1, 0x0($s0)
/* 8481ABC 8007CD8C DBD8000C */  jal        func_8003636C
/* 8481AC0 8007CD90 02000524 */   addiu     $a1, $zero, 0x2
/* 8481AC4 8007CD94 3C000392 */  lbu        $v1, 0x3C($s0)
/* 8481AC8 8007CD98 21204000 */  addu       $a0, $v0, $zero
/* 8481ACC 8007CD9C 16006410 */  beq        $v1, $a0, .Llevel_42_8007CDF8
/* 8481AD0 8007CDA0 00000000 */   nop
/* 8481AD4 8007CDA4 36000286 */  lh         $v0, 0x36($s0)
/* 8481AD8 8007CDA8 420000A2 */  sb         $zero, 0x42($s0)
/* 8481ADC 8007CDAC 80100200 */  sll        $v0, $v0, 2
/* 8481AE0 8007CDB0 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 8481AE4 8007CDB4 21082200 */  addu       $at, $at, $v0
/* 8481AE8 8007CDB8 2CEE238C */  lw         $v1, %lo(D_8006EE2C)($at)
/* 8481AEC 8007CDBC 80100400 */  sll        $v0, $a0, 2
/* 8481AF0 8007CDC0 21104300 */  addu       $v0, $v0, $v1
/* 8481AF4 8007CDC4 3C00428C */  lw         $v0, 0x3C($v0)
/* 8481AF8 8007CDC8 00000000 */  nop
/* 8481AFC 8007CDCC 00004290 */  lbu        $v0, 0x0($v0)
/* 8481B00 8007CDD0 01000324 */  addiu      $v1, $zero, 0x1
/* 8481B04 8007CDD4 3C0004A2 */  sb         $a0, 0x3C($s0)
/* 8481B08 8007CDD8 3D0004A2 */  sb         $a0, 0x3D($s0)
/* 8481B0C 8007CDDC 3E0000A2 */  sb         $zero, 0x3E($s0)
/* 8481B10 8007CDE0 3F0003A2 */  sb         $v1, 0x3F($s0)
/* 8481B14 8007CDE4 0200422C */  sltiu      $v0, $v0, 0x2
/* 8481B18 8007CDE8 01004238 */  xori       $v0, $v0, 0x1
/* 8481B1C 8007CDEC 23100200 */  negu       $v0, $v0
/* 8481B20 8007CDF0 30004230 */  andi       $v0, $v0, 0x30
/* 8481B24 8007CDF4 400002A2 */  sb         $v0, 0x40($s0)
.Llevel_42_8007CDF8:
/* 8481B28 8007CDF8 21204002 */  addu       $a0, $s2, $zero
/* 8481B2C 8007CDFC 4957010C */  jal        func_80055D24
/* 8481B30 8007CE00 04000524 */   addiu     $a1, $zero, 0x4
/* 8481B34 8007CE04 21204002 */  addu       $a0, $s2, $zero
/* 8481B38 8007CE08 21286002 */  addu       $a1, $s3, $zero
/* 8481B3C 8007CE0C C557010C */  jal        func_80055F14
/* 8481B40 8007CE10 0C000626 */   addiu     $a2, $s0, 0xC
/* 8481B44 8007CE14 21200000 */  addu       $a0, $zero, $zero
/* 8481B48 8007CE18 F7D8000C */  jal        func_800363DC
/* 8481B4C 8007CE1C 50000524 */   addiu     $a1, $zero, 0x50
/* 8481B50 8007CE20 21200000 */  addu       $a0, $zero, $zero
/* 8481B54 8007CE24 50000524 */  addiu      $a1, $zero, 0x50
/* 8481B58 8007CE28 F7D8000C */  jal        func_800363DC
/* 8481B5C 8007CE2C 000022A6 */   sh        $v0, 0x0($s1)
/* 8481B60 8007CE30 21200000 */  addu       $a0, $zero, $zero
/* 8481B64 8007CE34 1E000524 */  addiu      $a1, $zero, 0x1E
/* 8481B68 8007CE38 DBD8000C */  jal        func_8003636C
/* 8481B6C 8007CE3C 020022A6 */   sh        $v0, 0x2($s1)
/* 8481B70 8007CE40 21200000 */  addu       $a0, $zero, $zero
/* 8481B74 8007CE44 3C000524 */  addiu      $a1, $zero, 0x3C
/* 8481B78 8007CE48 040022A6 */  sh         $v0, 0x4($s1)
/* 8481B7C 8007CE4C 03000224 */  addiu      $v0, $zero, 0x3
/* 8481B80 8007CE50 120022A6 */  sh         $v0, 0x12($s1)
/* 8481B84 8007CE54 1E000224 */  addiu      $v0, $zero, 0x1E
/* 8481B88 8007CE58 DBD8000C */  jal        func_8003636C
/* 8481B8C 8007CE5C 0E0022A6 */   sh        $v0, 0xE($s1)
/* 8481B90 8007CE60 21200000 */  addu       $a0, $zero, $zero
/* 8481B94 8007CE64 0A000524 */  addiu      $a1, $zero, 0xA
/* 8481B98 8007CE68 5A004224 */  addiu      $v0, $v0, 0x5A
/* 8481B9C 8007CE6C F7D8000C */  jal        func_800363DC
/* 8481BA0 8007CE70 0C0022A6 */   sh        $v0, 0xC($s1)
/* 8481BA4 8007CE74 21200000 */  addu       $a0, $zero, $zero
/* 8481BA8 8007CE78 0A000524 */  addiu      $a1, $zero, 0xA
/* 8481BAC 8007CE7C F7D8000C */  jal        func_800363DC
/* 8481BB0 8007CE80 060022A6 */   sh        $v0, 0x6($s1)
/* 8481BB4 8007CE84 21200000 */  addu       $a0, $zero, $zero
/* 8481BB8 8007CE88 0A000524 */  addiu      $a1, $zero, 0xA
/* 8481BBC 8007CE8C F7D8000C */  jal        func_800363DC
/* 8481BC0 8007CE90 080022A6 */   sh        $v0, 0x8($s1)
/* 8481BC4 8007CE94 0A0022A6 */  sh         $v0, 0xA($s1)
.Llevel_42_8007CE98:
/* 8481BC8 8007CE98 01007326 */  addiu      $s3, $s3, 0x1
/* 8481BCC 8007CE9C 0500622A */  slti       $v0, $s3, 0x5
/* 8481BD0 8007CEA0 A8FF4014 */  bnez       $v0, .Llevel_42_8007CD44
/* 8481BD4 8007CEA4 00000000 */   nop
.Llevel_42_8007CEA8:
/* 8481BD8 8007CEA8 49005092 */  lbu        $s0, 0x49($s2)
/* 8481BDC 8007CEAC 01000224 */  addiu      $v0, $zero, 0x1
/* 8481BE0 8007CEB0 35000216 */  bne        $s0, $v0, .Llevel_42_8007CF88
/* 8481BE4 8007CEB4 FF000224 */   addiu     $v0, $zero, 0xFF
/* 8481BE8 8007CEB8 43004492 */  lbu        $a0, 0x43($s2)
/* 8481BEC 8007CEBC 00000000 */  nop
/* 8481BF0 8007CEC0 31008210 */  beq        $a0, $v0, .Llevel_42_8007CF88
/* 8481BF4 8007CEC4 00000000 */   nop
/* 8481BF8 8007CEC8 0680113C */  lui        $s1, %hi(D_80066BC8 + 15)
/* 8481BFC 8007CECC D76B3126 */  addiu      $s1, $s1, %lo(D_80066BC8 + 15)
/* 8481C00 8007CED0 00002292 */  lbu        $v0, 0x0($s1)
/* 8481C04 8007CED4 00000000 */  nop
/* 8481C08 8007CED8 01004230 */  andi       $v0, $v0, 0x1
/* 8481C0C 8007CEDC 2A004014 */  bnez       $v0, .Llevel_42_8007CF88
/* 8481C10 8007CEE0 00000000 */   nop
/* 8481C14 8007CEE4 76DA000C */  jal        func_800369D8
/* 8481C18 8007CEE8 00000000 */   nop
/* 8481C1C 8007CEEC 26005014 */  bne        $v0, $s0, .Llevel_42_8007CF88
/* 8481C20 8007CEF0 03000224 */   addiu     $v0, $zero, 0x3
/* 8481C24 8007CEF4 21284002 */  addu       $a1, $s2, $zero
/* 8481C28 8007CEF8 000022A2 */  sb         $v0, 0x0($s1)
/* 8481C2C 8007CEFC 0780033C */  lui        $v1, %hi(D_8006C654)
/* 8481C30 8007CF00 54C6638C */  lw         $v1, %lo(D_8006C654)($v1)
/* 8481C34 8007CF04 01000224 */  addiu      $v0, $zero, 0x1
/* 8481C38 8007CF08 0780013C */  lui        $at, %hi(D_800719DC)
/* 8481C3C 8007CF0C DC1922A4 */  sh         $v0, %lo(D_800719DC)($at)
/* 8481C40 8007CF10 23006490 */  lbu        $a0, 0x23($v1)
/* 8481C44 8007CF14 D4EE000C */  jal        PlaySound
/* 8481C48 8007CF18 A1000624 */   addiu     $a2, $zero, 0xA1
/* 8481C4C 8007CF1C D3000424 */  addiu      $a0, $zero, 0xD3
/* 8481C50 8007CF20 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8481C54 8007CF24 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8481C58 8007CF28 00000000 */  nop
/* 8481C5C 8007CF2C 09F84000 */  jalr       $v0
/* 8481C60 8007CF30 21284002 */   addu      $a1, $s2, $zero
/* 8481C64 8007CF34 21804000 */  addu       $s0, $v0, $zero
/* 8481C68 8007CF38 13000012 */  beqz       $s0, .Llevel_42_8007CF88
/* 8481C6C 8007CF3C AA000424 */   addiu     $a0, $zero, 0xAA
/* 8481C70 8007CF40 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8481C74 8007CF44 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8481C78 8007CF48 00000000 */  nop
/* 8481C7C 8007CF4C 09F84000 */  jalr       $v0
/* 8481C80 8007CF50 21280002 */   addu      $a1, $s0, $zero
/* 8481C84 8007CF54 21204000 */  addu       $a0, $v0, $zero
/* 8481C88 8007CF58 0B008010 */  beqz       $a0, .Llevel_42_8007CF88
/* 8481C8C 8007CF5C 01000224 */   addiu     $v0, $zero, 0x1
/* 8481C90 8007CF60 0000838C */  lw         $v1, 0x0($a0)
/* 8481C94 8007CF64 00000000 */  nop
/* 8481C98 8007CF68 000062A0 */  sb         $v0, 0x0($v1)
/* 8481C9C 8007CF6C D3000224 */  addiu      $v0, $zero, 0xD3
/* 8481CA0 8007CF70 010062A0 */  sb         $v0, 0x1($v1)
/* 8481CA4 8007CF74 46000224 */  addiu      $v0, $zero, 0x46
/* 8481CA8 8007CF78 020062A4 */  sh         $v0, 0x2($v1)
/* 8481CAC 8007CF7C 0F000224 */  addiu      $v0, $zero, 0xF
/* 8481CB0 8007CF80 040070AC */  sw         $s0, 0x4($v1)
/* 8481CB4 8007CF84 4F0082A0 */  sb         $v0, 0x4F($a0)
.Llevel_42_8007CF88:
/* 8481CB8 8007CF88 49004392 */  lbu        $v1, 0x49($s2)
/* 8481CBC 8007CF8C 63000224 */  addiu      $v0, $zero, 0x63
/* 8481CC0 8007CF90 03006210 */  beq        $v1, $v0, .Llevel_42_8007CFA0
/* 8481CC4 8007CF94 00000000 */   nop
/* 8481CC8 8007CF98 80EE000C */  jal        func_8003BA00
/* 8481CCC 8007CF9C 21204002 */   addu      $a0, $s2, $zero
.Llevel_42_8007CFA0:
/* 8481CD0 8007CFA0 C656010C */  jal        func_80055B18
/* 8481CD4 8007CFA4 21204002 */   addu      $a0, $s2, $zero
.Llevel_42_8007CFA8:
/* 8481CD8 8007CFA8 4000BF8F */  lw         $ra, 0x40($sp)
/* 8481CDC 8007CFAC 3C00B38F */  lw         $s3, 0x3C($sp)
/* 8481CE0 8007CFB0 3800B28F */  lw         $s2, 0x38($sp)
/* 8481CE4 8007CFB4 3400B18F */  lw         $s1, 0x34($sp)
/* 8481CE8 8007CFB8 3000B08F */  lw         $s0, 0x30($sp)
/* 8481CEC 8007CFBC 4800BD27 */  addiu      $sp, $sp, 0x48
/* 8481CF0 8007CFC0 0800E003 */  jr         $ra
/* 8481CF4 8007CFC4 00000000 */   nop
.size func_level_42_8007CACC, . - func_level_42_8007CACC
