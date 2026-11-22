.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1005_level_46
/* 8F5A018 80087AE8 70FFBD27 */  addiu      $sp, $sp, -0x90
/* 8F5A01C 80087AEC 8400B7AF */  sw         $s7, 0x84($sp)
/* 8F5A020 80087AF0 21B88000 */  addu       $s7, $a0, $zero
/* 8F5A024 80087AF4 8C00BFAF */  sw         $ra, 0x8C($sp)
/* 8F5A028 80087AF8 8800BEAF */  sw         $fp, 0x88($sp)
/* 8F5A02C 80087AFC 8000B6AF */  sw         $s6, 0x80($sp)
/* 8F5A030 80087B00 7C00B5AF */  sw         $s5, 0x7C($sp)
/* 8F5A034 80087B04 7800B4AF */  sw         $s4, 0x78($sp)
/* 8F5A038 80087B08 7400B3AF */  sw         $s3, 0x74($sp)
/* 8F5A03C 80087B0C 7000B2AF */  sw         $s2, 0x70($sp)
/* 8F5A040 80087B10 6C00B1AF */  sw         $s1, 0x6C($sp)
/* 8F5A044 80087B14 6800B0AF */  sw         $s0, 0x68($sp)
/* 8F5A048 80087B18 0000F48E */  lw         $s4, 0x0($s7)
/* 8F5A04C 80087B1C 00000000 */  nop
/* 8F5A050 80087B20 1000828E */  lw         $v0, 0x10($s4)
/* 8F5A054 80087B24 00000000 */  nop
/* 8F5A058 80087B28 0000428C */  lw         $v0, 0x0($v0)
/* 8F5A05C 80087B2C 00000000 */  nop
/* 8F5A060 80087B30 3800A2AF */  sw         $v0, 0x38($sp)
/* 8F5A064 80087B34 4100E0A2 */  sb         $zero, 0x41($s7)
/* 8F5A068 80087B38 4C00E0A2 */  sb         $zero, 0x4C($s7)
/* 8F5A06C 80087B3C 4D00E0A2 */  sb         $zero, 0x4D($s7)
/* 8F5A070 80087B40 02008286 */  lh         $v0, 0x2($s4)
/* 8F5A074 80087B44 00000000 */  nop
/* 8F5A078 80087B48 19004014 */  bnez       $v0, .Llevel_46_80087BB0
/* 8F5A07C 80087B4C 0A004228 */   slti      $v0, $v0, 0xA
/* 8F5A080 80087B50 0C00F026 */  addiu      $s0, $s7, 0xC
/* 8F5A084 80087B54 21200002 */  addu       $a0, $s0, $zero
/* 8F5A088 80087B58 E8030524 */  addiu      $a1, $zero, 0x3E8
/* 8F5A08C 80087B5C 01000624 */  addiu      $a2, $zero, 0x1
/* 8F5A090 80087B60 21380000 */  addu       $a3, $zero, $zero
/* 8F5A094 80087B64 0400023C */  lui        $v0, (0x40000 >> 16)
/* 8F5A098 80087B68 1000A2AF */  sw         $v0, 0x10($sp)
/* 8F5A09C 80087B6C 8C6E000C */  jal        func_8001BA30
/* 8F5A0A0 80087B70 1400B7AF */   sw        $s7, 0x14($sp)
/* 8F5A0A4 80087B74 02008286 */  lh         $v0, 0x2($s4)
/* 8F5A0A8 80087B78 00000000 */  nop
/* 8F5A0AC 80087B7C 0C004014 */  bnez       $v0, .Llevel_46_80087BB0
/* 8F5A0B0 80087B80 0A004228 */   slti      $v0, $v0, 0xA
/* 8F5A0B4 80087B84 0A000424 */  addiu      $a0, $zero, 0xA
/* 8F5A0B8 80087B88 46000524 */  addiu      $a1, $zero, 0x46
/* 8F5A0BC 80087B8C 21300002 */  addu       $a2, $s0, $zero
/* 8F5A0C0 80087B90 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8F5A0C4 80087B94 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8F5A0C8 80087B98 00000000 */  nop
/* 8F5A0CC 80087B9C 09F84000 */  jalr       $v0
/* 8F5A0D0 80087BA0 1E000724 */   addiu     $a3, $zero, 0x1E
/* 8F5A0D4 80087BA4 02008286 */  lh         $v0, 0x2($s4)
/* 8F5A0D8 80087BA8 00000000 */  nop
/* 8F5A0DC 80087BAC 0A004228 */  slti       $v0, $v0, 0xA
.Llevel_46_80087BB0:
/* 8F5A0E0 80087BB0 1B004010 */  beqz       $v0, .Llevel_46_80087C20
/* 8F5A0E4 80087BB4 21200000 */   addu      $a0, $zero, $zero
/* 8F5A0E8 80087BB8 DBD8000C */  jal        func_8003636C
/* 8F5A0EC 80087BBC 00040524 */   addiu     $a1, $zero, 0x400
/* 8F5A0F0 80087BC0 21200000 */  addu       $a0, $zero, $zero
/* 8F5A0F4 80087BC4 0C00E38E */  lw         $v1, 0xC($s7)
/* 8F5A0F8 80087BC8 00040524 */  addiu      $a1, $zero, 0x400
/* 8F5A0FC 80087BCC 00FE6324 */  addiu      $v1, $v1, -0x200
/* 8F5A100 80087BD0 21186200 */  addu       $v1, $v1, $v0
/* 8F5A104 80087BD4 DBD8000C */  jal        func_8003636C
/* 8F5A108 80087BD8 1800A3AF */   sw        $v1, 0x18($sp)
/* 8F5A10C 80087BDC 21200000 */  addu       $a0, $zero, $zero
/* 8F5A110 80087BE0 1000E38E */  lw         $v1, 0x10($s7)
/* 8F5A114 80087BE4 00010524 */  addiu      $a1, $zero, 0x100
/* 8F5A118 80087BE8 00FE6324 */  addiu      $v1, $v1, -0x200
/* 8F5A11C 80087BEC 21186200 */  addu       $v1, $v1, $v0
/* 8F5A120 80087BF0 DBD8000C */  jal        func_8003636C
/* 8F5A124 80087BF4 1C00A3AF */   sw        $v1, 0x1C($sp)
/* 8F5A128 80087BF8 02000424 */  addiu      $a0, $zero, 0x2
/* 8F5A12C 80087BFC 42000524 */  addiu      $a1, $zero, 0x42
/* 8F5A130 80087C00 1800A627 */  addiu      $a2, $sp, 0x18
/* 8F5A134 80087C04 01000724 */  addiu      $a3, $zero, 0x1
/* 8F5A138 80087C08 1400E38E */  lw         $v1, 0x14($s7)
/* 8F5A13C 80087C0C 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 8F5A140 80087C10 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 8F5A144 80087C14 21186200 */  addu       $v1, $v1, $v0
/* 8F5A148 80087C18 09F80001 */  jalr       $t0
/* 8F5A14C 80087C1C 2000A3AF */   sw        $v1, 0x20($sp)
.Llevel_46_80087C20:
/* 8F5A150 80087C20 21900000 */  addu       $s2, $zero, $zero
/* 8F5A154 80087C24 21980000 */  addu       $s3, $zero, $zero
/* 8F5A158 80087C28 0680073C */  lui        $a3, %hi(D_80065920)
/* 8F5A15C 80087C2C 2059E724 */  addiu      $a3, $a3, %lo(D_80065920)
/* 8F5A160 80087C30 06801E3C */  lui        $fp, %hi(D_800658A0)
/* 8F5A164 80087C34 A058DE27 */  addiu      $fp, $fp, %lo(D_800658A0)
/* 8F5A168 80087C38 04008B8E */  lw         $t3, 0x4($s4)
/* 8F5A16C 80087C3C 00008C86 */  lh         $t4, 0x0($s4)
/* 8F5A170 80087C40 04066825 */  addiu      $t0, $t3, 0x604
/* 8F5A174 80087C44 4800ACAF */  sw         $t4, 0x48($sp)
/* 8F5A178 80087C48 44066C25 */  addiu      $t4, $t3, 0x644
/* 8F5A17C 80087C4C 4000ACAF */  sw         $t4, 0x40($sp)
.Llevel_46_80087C50:
/* 8F5A180 80087C50 21880000 */  addu       $s1, $zero, $zero
/* 8F5A184 80087C54 40111300 */  sll        $v0, $s3, 5
/* 8F5A188 80087C58 E0014930 */  andi       $t1, $v0, 0x1E0
/* 8F5A18C 80087C5C 21502701 */  addu       $t2, $t1, $a3
/* 8F5A190 80087C60 21B0C003 */  addu       $s6, $fp, $zero
/* 8F5A194 80087C64 21A8E000 */  addu       $s5, $a3, $zero
/* 8F5A198 80087C68 40101200 */  sll        $v0, $s2, 1
/* 8F5A19C 80087C6C 21105200 */  addu       $v0, $v0, $s2
/* 8F5A1A0 80087C70 80100200 */  sll        $v0, $v0, 2
/* 8F5A1A4 80087C74 21804B00 */  addu       $s0, $v0, $t3
.Llevel_46_80087C78:
/* 8F5A1A8 80087C78 02008386 */  lh         $v1, 0x2($s4)
/* 8F5A1AC 80087C7C 00000000 */  nop
/* 8F5A1B0 80087C80 0C006010 */  beqz       $v1, .Llevel_46_80087CB4
/* 8F5A1B4 80087C84 01000224 */   addiu     $v0, $zero, 0x1
/* 8F5A1B8 80087C88 03006214 */  bne        $v1, $v0, .Llevel_46_80087C98
/* 8F5A1BC 80087C8C 01002232 */   andi      $v0, $s1, 0x1
/* 8F5A1C0 80087C90 2E1F0208 */  j          .Llevel_46_80087CB8
/* 8F5A1C4 80087C94 90010424 */   addiu     $a0, $zero, 0x190
.Llevel_46_80087C98:
/* 8F5A1C8 80087C98 03004010 */  beqz       $v0, .Llevel_46_80087CA8
/* 8F5A1CC 80087C9C 04006228 */   slti      $v0, $v1, 0x4
/* 8F5A1D0 80087CA0 05004010 */  beqz       $v0, .Llevel_46_80087CB8
/* 8F5A1D4 80087CA4 F4010424 */   addiu     $a0, $zero, 0x1F4
.Llevel_46_80087CA8:
/* 8F5A1D8 80087CA8 4800A48F */  lw         $a0, 0x48($sp)
/* 8F5A1DC 80087CAC 2F1F0208 */  j          .Llevel_46_80087CBC
/* 8F5A1E0 80087CB0 2800A0AF */   sw        $zero, 0x28($sp)
.Llevel_46_80087CB4:
/* 8F5A1E4 80087CB4 F4010424 */  addiu      $a0, $zero, 0x1F4
.Llevel_46_80087CB8:
/* 8F5A1E8 80087CB8 2800A0AF */  sw         $zero, 0x28($sp)
.Llevel_46_80087CBC:
/* 8F5A1EC 80087CBC 0000A286 */  lh         $v0, 0x0($s5)
/* 8F5A1F0 80087CC0 00000000 */  nop
/* 8F5A1F4 80087CC4 18004400 */  mult       $v0, $a0
/* 8F5A1F8 80087CC8 12600000 */  mflo       $t4
/* 8F5A1FC 80087CCC 031B0C00 */  sra        $v1, $t4, 12
/* 8F5A200 80087CD0 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 8F5A204 80087CD4 0000C286 */  lh         $v0, 0x0($s6)
/* 8F5A208 80087CD8 00000000 */  nop
/* 8F5A20C 80087CDC 18004400 */  mult       $v0, $a0
/* 8F5A210 80087CE0 12600000 */  mflo       $t4
/* 8F5A214 80087CE4 03130C00 */  sra        $v0, $t4, 12
/* 8F5A218 80087CE8 3000A2AF */  sw         $v0, 0x30($sp)
/* 8F5A21C 80087CEC 21103E01 */  addu       $v0, $t1, $fp
/* 8F5A220 80087CF0 00004284 */  lh         $v0, 0x0($v0)
/* 8F5A224 80087CF4 00000000 */  nop
/* 8F5A228 80087CF8 18006200 */  mult       $v1, $v0
/* 8F5A22C 80087CFC 12600000 */  mflo       $t4
/* 8F5A230 80087D00 23100C00 */  negu       $v0, $t4
/* 8F5A234 80087D04 03130200 */  sra        $v0, $v0, 12
/* 8F5A238 80087D08 000002AE */  sw         $v0, 0x0($s0)
/* 8F5A23C 80087D0C 00004385 */  lh         $v1, 0x0($t2)
/* 8F5A240 80087D10 2C00A28F */  lw         $v0, 0x2C($sp)
/* 8F5A244 80087D14 00000000 */  nop
/* 8F5A248 80087D18 18004300 */  mult       $v0, $v1
/* 8F5A24C 80087D1C 12600000 */  mflo       $t4
/* 8F5A250 80087D20 03130C00 */  sra        $v0, $t4, 12
/* 8F5A254 80087D24 040002AE */  sw         $v0, 0x4($s0)
/* 8F5A258 80087D28 3000A48F */  lw         $a0, 0x30($sp)
/* 8F5A25C 80087D2C FF00033C */  lui        $v1, (0xFF00FF >> 16)
/* 8F5A260 80087D30 080004AE */  sw         $a0, 0x8($s0)
/* 8F5A264 80087D34 4400E28E */  lw         $v0, 0x44($s7)
/* 8F5A268 80087D38 FF006334 */  ori        $v1, $v1, (0xFF00FF & 0xFFFF)
/* 8F5A26C 80087D3C 24104300 */  and        $v0, $v0, $v1
/* 8F5A270 80087D40 40004010 */  beqz       $v0, .Llevel_46_80087E44
/* 8F5A274 80087D44 00000000 */   nop
/* 8F5A278 80087D48 4400E292 */  lbu        $v0, 0x44($s7)
/* 8F5A27C 80087D4C 00000000 */  nop
/* 8F5A280 80087D50 40180200 */  sll        $v1, $v0, 1
/* 8F5A284 80087D54 21106700 */  addu       $v0, $v1, $a3
/* 8F5A288 80087D58 00004684 */  lh         $a2, 0x0($v0)
/* 8F5A28C 80087D5C 0000028E */  lw         $v0, 0x0($s0)
/* 8F5A290 80087D60 00000000 */  nop
/* 8F5A294 80087D64 18004600 */  mult       $v0, $a2
/* 8F5A298 80087D68 21187E00 */  addu       $v1, $v1, $fp
/* 8F5A29C 80087D6C 12100000 */  mflo       $v0
/* 8F5A2A0 80087D70 00006384 */  lh         $v1, 0x0($v1)
/* 8F5A2A4 80087D74 00000000 */  nop
/* 8F5A2A8 80087D78 18008300 */  mult       $a0, $v1
/* 8F5A2AC 80087D7C 12680000 */  mflo       $t5
/* 8F5A2B0 80087D80 23204D00 */  subu       $a0, $v0, $t5
/* 8F5A2B4 80087D84 03230400 */  sra        $a0, $a0, 12
/* 8F5A2B8 80087D88 2800A4AF */  sw         $a0, 0x28($sp)
/* 8F5A2BC 80087D8C 0400058E */  lw         $a1, 0x4($s0)
/* 8F5A2C0 80087D90 00000000 */  nop
/* 8F5A2C4 80087D94 2C00A5AF */  sw         $a1, 0x2C($sp)
/* 8F5A2C8 80087D98 0000028E */  lw         $v0, 0x0($s0)
/* 8F5A2CC 80087D9C 00000000 */  nop
/* 8F5A2D0 80087DA0 18004300 */  mult       $v0, $v1
/* 8F5A2D4 80087DA4 12180000 */  mflo       $v1
/* 8F5A2D8 80087DA8 0800028E */  lw         $v0, 0x8($s0)
/* 8F5A2DC 80087DAC 00000000 */  nop
/* 8F5A2E0 80087DB0 18004600 */  mult       $v0, $a2
/* 8F5A2E4 80087DB4 12680000 */  mflo       $t5
/* 8F5A2E8 80087DB8 21106D00 */  addu       $v0, $v1, $t5
/* 8F5A2EC 80087DBC 03130200 */  sra        $v0, $v0, 12
/* 8F5A2F0 80087DC0 3000A2AF */  sw         $v0, 0x30($sp)
/* 8F5A2F4 80087DC4 4600E292 */  lbu        $v0, 0x46($s7)
/* 8F5A2F8 80087DC8 00000000 */  nop
/* 8F5A2FC 80087DCC 80004224 */  addiu      $v0, $v0, 0x80
/* 8F5A300 80087DD0 FF004230 */  andi       $v0, $v0, 0xFF
/* 8F5A304 80087DD4 40180200 */  sll        $v1, $v0, 1
/* 8F5A308 80087DD8 21106700 */  addu       $v0, $v1, $a3
/* 8F5A30C 80087DDC 00004684 */  lh         $a2, 0x0($v0)
/* 8F5A310 80087DE0 00000000 */  nop
/* 8F5A314 80087DE4 18008600 */  mult       $a0, $a2
/* 8F5A318 80087DE8 21187E00 */  addu       $v1, $v1, $fp
/* 8F5A31C 80087DEC 12100000 */  mflo       $v0
/* 8F5A320 80087DF0 00006384 */  lh         $v1, 0x0($v1)
/* 8F5A324 80087DF4 00000000 */  nop
/* 8F5A328 80087DF8 1800A300 */  mult       $a1, $v1
/* 8F5A32C 80087DFC 12680000 */  mflo       $t5
/* 8F5A330 80087E00 23104D00 */  subu       $v0, $v0, $t5
/* 8F5A334 80087E04 03130200 */  sra        $v0, $v0, 12
/* 8F5A338 80087E08 000002AE */  sw         $v0, 0x0($s0)
/* 8F5A33C 80087E0C 2800A28F */  lw         $v0, 0x28($sp)
/* 8F5A340 80087E10 00000000 */  nop
/* 8F5A344 80087E14 18004300 */  mult       $v0, $v1
/* 8F5A348 80087E18 12180000 */  mflo       $v1
/* 8F5A34C 80087E1C 2C00A28F */  lw         $v0, 0x2C($sp)
/* 8F5A350 80087E20 00000000 */  nop
/* 8F5A354 80087E24 18004600 */  mult       $v0, $a2
/* 8F5A358 80087E28 12680000 */  mflo       $t5
/* 8F5A35C 80087E2C 21106D00 */  addu       $v0, $v1, $t5
/* 8F5A360 80087E30 03130200 */  sra        $v0, $v0, 12
/* 8F5A364 80087E34 040002AE */  sw         $v0, 0x4($s0)
/* 8F5A368 80087E38 3000A28F */  lw         $v0, 0x30($sp)
/* 8F5A36C 80087E3C 00000000 */  nop
/* 8F5A370 80087E40 080002AE */  sw         $v0, 0x8($s0)
.Llevel_46_80087E44:
/* 8F5A374 80087E44 21200002 */  addu       $a0, $s0, $zero
/* 8F5A378 80087E48 0C00E526 */  addiu      $a1, $s7, 0xC
/* 8F5A37C 80087E4C 21300002 */  addu       $a2, $s0, $zero
/* 8F5A380 80087E50 5000A7AF */  sw         $a3, 0x50($sp)
/* 8F5A384 80087E54 5400A8AF */  sw         $t0, 0x54($sp)
/* 8F5A388 80087E58 5800A9AF */  sw         $t1, 0x58($sp)
/* 8F5A38C 80087E5C 5C00AAAF */  sw         $t2, 0x5C($sp)
/* 8F5A390 80087E60 653C010C */  jal        func_8004F194
/* 8F5A394 80087E64 6000ABAF */   sw        $t3, 0x60($sp)
/* 8F5A398 80087E68 0C001026 */  addiu      $s0, $s0, 0xC
/* 8F5A39C 80087E6C 01005226 */  addiu      $s2, $s2, 0x1
/* 8F5A3A0 80087E70 2000D626 */  addiu      $s6, $s6, 0x20
/* 8F5A3A4 80087E74 01003126 */  addiu      $s1, $s1, 0x1
/* 8F5A3A8 80087E78 0800222A */  slti       $v0, $s1, 0x8
/* 8F5A3AC 80087E7C 5000A78F */  lw         $a3, 0x50($sp)
/* 8F5A3B0 80087E80 5400A88F */  lw         $t0, 0x54($sp)
/* 8F5A3B4 80087E84 5800A98F */  lw         $t1, 0x58($sp)
/* 8F5A3B8 80087E88 5C00AA8F */  lw         $t2, 0x5C($sp)
/* 8F5A3BC 80087E8C 6000AB8F */  lw         $t3, 0x60($sp)
/* 8F5A3C0 80087E90 79FF4014 */  bnez       $v0, .Llevel_46_80087C78
/* 8F5A3C4 80087E94 2000B526 */   addiu     $s5, $s5, 0x20
/* 8F5A3C8 80087E98 01007326 */  addiu      $s3, $s3, 0x1
/* 8F5A3CC 80087E9C 1000622A */  slti       $v0, $s3, 0x10
/* 8F5A3D0 80087EA0 6BFF4014 */  bnez       $v0, .Llevel_46_80087C50
/* 8F5A3D4 80087EA4 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 8F5A3D8 80087EA8 000662AD */  sw         $v0, 0x600($t3)
/* 8F5A3DC 80087EAC 02008386 */  lh         $v1, 0x2($s4)
/* 8F5A3E0 80087EB0 00000000 */  nop
/* 8F5A3E4 80087EB4 40100300 */  sll        $v0, $v1, 1
/* 8F5A3E8 80087EB8 21104300 */  addu       $v0, $v0, $v1
/* 8F5A3EC 80087EBC 80100200 */  sll        $v0, $v0, 2
/* 8F5A3F0 80087EC0 21104300 */  addu       $v0, $v0, $v1
/* 8F5A3F4 80087EC4 FF000324 */  addiu      $v1, $zero, 0xFF
/* 8F5A3F8 80087EC8 23186200 */  subu       $v1, $v1, $v0
/* 8F5A3FC 80087ECC 08000224 */  addiu      $v0, $zero, 0x8
/* 8F5A400 80087ED0 03006214 */  bne        $v1, $v0, .Llevel_46_80087EE0
/* 8F5A404 80087ED4 05006228 */   slti      $v0, $v1, 0x5
/* 8F5A408 80087ED8 0F000324 */  addiu      $v1, $zero, 0xF
/* 8F5A40C 80087EDC 05006228 */  slti       $v0, $v1, 0x5
.Llevel_46_80087EE0:
/* 8F5A410 80087EE0 02004010 */  beqz       $v0, .Llevel_46_80087EEC
/* 8F5A414 80087EE4 21880000 */   addu      $s1, $zero, $zero
/* 8F5A418 80087EE8 05000324 */  addiu      $v1, $zero, 0x5
.Llevel_46_80087EEC:
/* 8F5A41C 80087EEC 21900000 */  addu       $s2, $zero, $zero
/* 8F5A420 80087EF0 21980000 */  addu       $s3, $zero, $zero
/* 8F5A424 80087EF4 4000A48F */  lw         $a0, 0x40($sp)
/* 8F5A428 80087EF8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 8F5A42C 80087EFC 000003A1 */  sb         $v1, 0x0($t0)
/* 8F5A430 80087F00 010003A1 */  sb         $v1, 0x1($t0)
/* 8F5A434 80087F04 020000A1 */  sb         $zero, 0x2($t0)
/* 8F5A438 80087F08 040002A1 */  sb         $v0, 0x4($t0)
/* 8F5A43C 80087F0C 050002A1 */  sb         $v0, 0x5($t0)
/* 8F5A440 80087F10 060002A1 */  sb         $v0, 0x6($t0)
.Llevel_46_80087F14:
/* 8F5A444 80087F14 08002326 */  addiu      $v1, $s1, 0x8
/* 8F5A448 80087F18 21106000 */  addu       $v0, $v1, $zero
/* 8F5A44C 80087F1C 01002526 */  addiu      $a1, $s1, 0x1
/* 8F5A450 80087F20 000091A0 */  sb         $s1, 0x0($a0)
/* 8F5A454 80087F24 02006104 */  bgez       $v1, .Llevel_46_80087F30
/* 8F5A458 80087F28 010085A0 */   sb        $a1, 0x1($a0)
/* 8F5A45C 80087F2C 87002226 */  addiu      $v0, $s1, 0x87
.Llevel_46_80087F30:
/* 8F5A460 80087F30 C3110200 */  sra        $v0, $v0, 7
/* 8F5A464 80087F34 C0110200 */  sll        $v0, $v0, 7
/* 8F5A468 80087F38 23106200 */  subu       $v0, $v1, $v0
/* 8F5A46C 80087F3C 020082A0 */  sb         $v0, 0x2($a0)
/* 8F5A470 80087F40 09002326 */  addiu      $v1, $s1, 0x9
/* 8F5A474 80087F44 02006104 */  bgez       $v1, .Llevel_46_80087F50
/* 8F5A478 80087F48 21106000 */   addu      $v0, $v1, $zero
/* 8F5A47C 80087F4C 88002226 */  addiu      $v0, $s1, 0x88
.Llevel_46_80087F50:
/* 8F5A480 80087F50 2188A000 */  addu       $s1, $a1, $zero
/* 8F5A484 80087F54 C3110200 */  sra        $v0, $v0, 7
/* 8F5A488 80087F58 C0110200 */  sll        $v0, $v0, 7
/* 8F5A48C 80087F5C 23106200 */  subu       $v0, $v1, $v0
/* 8F5A490 80087F60 030082A0 */  sb         $v0, 0x3($a0)
/* 8F5A494 80087F64 02008286 */  lh         $v0, 0x2($s4)
/* 8F5A498 80087F68 01005226 */  addiu      $s2, $s2, 0x1
/* 8F5A49C 80087F6C 04004328 */  slti       $v1, $v0, 0x4
/* 8F5A4A0 80087F70 0700422A */  slti       $v0, $s2, 0x7
/* 8F5A4A4 80087F74 040083A0 */  sb         $v1, 0x4($a0)
/* 8F5A4A8 80087F78 050083A0 */  sb         $v1, 0x5($a0)
/* 8F5A4AC 80087F7C 060083A0 */  sb         $v1, 0x6($a0)
/* 8F5A4B0 80087F80 03004014 */  bnez       $v0, .Llevel_46_80087F90
/* 8F5A4B4 80087F84 070083A0 */   sb        $v1, 0x7($a0)
/* 8F5A4B8 80087F88 01003126 */  addiu      $s1, $s1, 0x1
/* 8F5A4BC 80087F8C 21900000 */  addu       $s2, $zero, $zero
.Llevel_46_80087F90:
/* 8F5A4C0 80087F90 01007326 */  addiu      $s3, $s3, 0x1
/* 8F5A4C4 80087F94 7000622A */  slti       $v0, $s3, 0x70
/* 8F5A4C8 80087F98 DEFF4014 */  bnez       $v0, .Llevel_46_80087F14
/* 8F5A4CC 80087F9C 08008424 */   addiu     $a0, $a0, 0x8
/* 8F5A4D0 80087FA0 4000AC8F */  lw         $t4, 0x40($sp)
/* 8F5A4D4 80087FA4 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 8F5A4D8 80087FA8 800382AD */  sw         $v0, 0x380($t4)
/* 8F5A4DC 80087FAC 0800828E */  lw         $v0, 0x8($s4)
/* 8F5A4E0 80087FB0 00000000 */  nop
/* 8F5A4E4 80087FB4 09004014 */  bnez       $v0, .Llevel_46_80087FDC
/* 8F5A4E8 80087FB8 21206001 */   addu      $a0, $t3, $zero
/* 8F5A4EC 80087FBC 21280001 */  addu       $a1, $t0, $zero
/* 8F5A4F0 80087FC0 4000A68F */  lw         $a2, 0x40($sp)
/* 8F5A4F4 80087FC4 3800AC8F */  lw         $t4, 0x38($sp)
/* 8F5A4F8 80087FC8 01000224 */  addiu      $v0, $zero, 0x1
/* 8F5A4FC 80087FCC 1000A2AF */  sw         $v0, 0x10($sp)
/* 8F5A500 80087FD0 C042010C */  jal        func_80050B00
/* 8F5A504 80087FD4 0C008725 */   addiu     $a3, $t4, 0xC
/* 8F5A508 80087FD8 080082AE */  sw         $v0, 0x8($s4)
.Llevel_46_80087FDC:
/* 8F5A50C 80087FDC 02008286 */  lh         $v0, 0x2($s4)
/* 8F5A510 80087FE0 00000000 */  nop
/* 8F5A514 80087FE4 07004228 */  slti       $v0, $v0, 0x7
/* 8F5A518 80087FE8 03004014 */  bnez       $v0, .Llevel_46_80087FF8
/* 8F5A51C 80087FEC 21200000 */   addu      $a0, $zero, $zero
/* 8F5A520 80087FF0 29200208 */  j          .Llevel_46_800880A4
/* 8F5A524 80087FF4 0C0080AE */   sw        $zero, 0xC($s4)
.Llevel_46_80087FF8:
/* 8F5A528 80087FF8 14000524 */  addiu      $a1, $zero, 0x14
/* 8F5A52C 80087FFC 28000224 */  addiu      $v0, $zero, 0x28
/* 8F5A530 80088000 2800A0AF */  sw         $zero, 0x28($sp)
/* 8F5A534 80088004 2C00A2AF */  sw         $v0, 0x2C($sp)
/* 8F5A538 80088008 DBD8000C */  jal        func_8003636C
/* 8F5A53C 8008800C 3000A0AF */   sw        $zero, 0x30($sp)
/* 8F5A540 80088010 01000424 */  addiu      $a0, $zero, 0x1
/* 8F5A544 80088014 0D000524 */  addiu      $a1, $zero, 0xD
/* 8F5A548 80088018 36004224 */  addiu      $v0, $v0, 0x36
/* 8F5A54C 8008801C 40100200 */  sll        $v0, $v0, 1
/* 8F5A550 80088020 0680013C */  lui        $at, %hi(D_80065920)
/* 8F5A554 80088024 21082200 */  addu       $at, $at, $v0
/* 8F5A558 80088028 20592784 */  lh         $a3, %lo(D_80065920)($at)
/* 8F5A55C 8008802C 0C00E626 */  addiu      $a2, $s7, 0xC
/* 8F5A560 80088030 80180700 */  sll        $v1, $a3, 2
/* 8F5A564 80088034 21186700 */  addu       $v1, $v1, $a3
/* 8F5A568 80088038 431A0300 */  sra        $v1, $v1, 9
/* 8F5A56C 8008803C 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 8F5A570 80088040 0680013C */  lui        $at, %hi(D_800658A0)
/* 8F5A574 80088044 21082200 */  addu       $at, $at, $v0
/* 8F5A578 80088048 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 8F5A57C 8008804C 2800A727 */  addiu      $a3, $sp, 0x28
/* 8F5A580 80088050 80100300 */  sll        $v0, $v1, 2
/* 8F5A584 80088054 21104300 */  addu       $v0, $v0, $v1
/* 8F5A588 80088058 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 8F5A58C 8008805C E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 8F5A590 80088060 43120200 */  sra        $v0, $v0, 9
/* 8F5A594 80088064 09F86000 */  jalr       $v1
/* 8F5A598 80088068 3000A2AF */   sw        $v0, 0x30($sp)
/* 8F5A59C 8008806C 0C00838E */  lw         $v1, 0xC($s4)
/* 8F5A5A0 80088070 00000000 */  nop
/* 8F5A5A4 80088074 05006010 */  beqz       $v1, .Llevel_46_8008808C
/* 8F5A5A8 80088078 21204000 */   addu      $a0, $v0, $zero
/* 8F5A5AC 8008807C FF000224 */  addiu      $v0, $zero, 0xFF
/* 8F5A5B0 80088080 0C0062A0 */  sb         $v0, 0xC($v1)
/* 8F5A5B4 80088084 0D0062A0 */  sb         $v0, 0xD($v1)
/* 8F5A5B8 80088088 0E0062A0 */  sb         $v0, 0xE($v1)
.Llevel_46_8008808C:
/* 8F5A5BC 8008808C 05008010 */  beqz       $a0, .Llevel_46_800880A4
/* 8F5A5C0 80088090 BE000224 */   addiu     $v0, $zero, 0xBE
/* 8F5A5C4 80088094 0C0084AE */  sw         $a0, 0xC($s4)
/* 8F5A5C8 80088098 0A0082A0 */  sb         $v0, 0xA($a0)
/* 8F5A5CC 8008809C FF000224 */  addiu      $v0, $zero, 0xFF
/* 8F5A5D0 800880A0 0E0082A0 */  sb         $v0, 0xE($a0)
.Llevel_46_800880A4:
/* 8F5A5D4 800880A4 02008296 */  lhu        $v0, 0x2($s4)
/* 8F5A5D8 800880A8 00000000 */  nop
/* 8F5A5DC 800880AC 01004224 */  addiu      $v0, $v0, 0x1
/* 8F5A5E0 800880B0 020082A6 */  sh         $v0, 0x2($s4)
/* 8F5A5E4 800880B4 00008296 */  lhu        $v0, 0x0($s4)
/* 8F5A5E8 800880B8 02008386 */  lh         $v1, 0x2($s4)
/* 8F5A5EC 800880BC 50004224 */  addiu      $v0, $v0, 0x50
/* 8F5A5F0 800880C0 15006328 */  slti       $v1, $v1, 0x15
/* 8F5A5F4 800880C4 04006010 */  beqz       $v1, .Llevel_46_800880D8
/* 8F5A5F8 800880C8 000082A6 */   sh        $v0, 0x0($s4)
/* 8F5A5FC 800880CC 21600000 */  addu       $t4, $zero, $zero
/* 8F5A600 800880D0 09008011 */  beqz       $t4, .Llevel_46_800880F8
/* 8F5A604 800880D4 00000000 */   nop
.Llevel_46_800880D8:
/* 8F5A608 800880D8 0800848E */  lw         $a0, 0x8($s4)
/* 8F5A60C 800880DC 00000000 */  nop
/* 8F5A610 800880E0 03008010 */  beqz       $a0, .Llevel_46_800880F0
/* 8F5A614 800880E4 00000000 */   nop
/* 8F5A618 800880E8 E242010C */  jal        func_80050B88
/* 8F5A61C 800880EC 00000000 */   nop
.Llevel_46_800880F0:
/* 8F5A620 800880F0 C656010C */  jal        func_80055B18
/* 8F5A624 800880F4 2120E002 */   addu      $a0, $s7, $zero
.Llevel_46_800880F8:
/* 8F5A628 800880F8 8C00BF8F */  lw         $ra, 0x8C($sp)
/* 8F5A62C 800880FC 8800BE8F */  lw         $fp, 0x88($sp)
/* 8F5A630 80088100 8400B78F */  lw         $s7, 0x84($sp)
/* 8F5A634 80088104 8000B68F */  lw         $s6, 0x80($sp)
/* 8F5A638 80088108 7C00B58F */  lw         $s5, 0x7C($sp)
/* 8F5A63C 8008810C 7800B48F */  lw         $s4, 0x78($sp)
/* 8F5A640 80088110 7400B38F */  lw         $s3, 0x74($sp)
/* 8F5A644 80088114 7000B28F */  lw         $s2, 0x70($sp)
/* 8F5A648 80088118 6C00B18F */  lw         $s1, 0x6C($sp)
/* 8F5A64C 8008811C 6800B08F */  lw         $s0, 0x68($sp)
/* 8F5A650 80088120 9000BD27 */  addiu      $sp, $sp, 0x90
/* 8F5A654 80088124 0800E003 */  jr         $ra
/* 8F5A658 80088128 00000000 */   nop
.size MobyUpdate_1005_level_46, . - MobyUpdate_1005_level_46
