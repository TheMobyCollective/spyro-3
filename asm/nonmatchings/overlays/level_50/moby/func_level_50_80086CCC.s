.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_426_level_50
/* 95DB1FC 80086CCC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 95DB200 80086CD0 21308000 */  addu       $a2, $a0, $zero
/* 95DB204 80086CD4 2000BFAF */  sw         $ra, 0x20($sp)
/* 95DB208 80086CD8 0000C78C */  lw         $a3, 0x0($a2)
/* 95DB20C 80086CDC 0780033C */  lui        $v1, %hi(D_8006C648)
/* 95DB210 80086CE0 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 95DB214 80086CE4 0000E28C */  lw         $v0, 0x0($a3)
/* 95DB218 80086CE8 00000000 */  nop
/* 95DB21C 80086CEC 21204300 */  addu       $a0, $v0, $v1
/* 95DB220 80086CF0 1E008228 */  slti       $v0, $a0, 0x1E
/* 95DB224 80086CF4 05004014 */  bnez       $v0, .Llevel_50_80086D0C
/* 95DB228 80086CF8 0000E4AC */   sw        $a0, 0x0($a3)
/* 95DB22C 80086CFC C656010C */  jal        func_80055B18
/* 95DB230 80086D00 2120C000 */   addu      $a0, $a2, $zero
/* 95DB234 80086D04 7E1B0208 */  j          .Llevel_50_80086DF8
/* 95DB238 80086D08 00000000 */   nop
.Llevel_50_80086D0C:
/* 95DB23C 80086D0C 8888023C */  lui        $v0, (0x88888889 >> 16)
/* 95DB240 80086D10 89884234 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
/* 95DB244 80086D14 1E000324 */  addiu      $v1, $zero, 0x1E
/* 95DB248 80086D18 23186400 */  subu       $v1, $v1, $a0
/* 95DB24C 80086D1C 001A0300 */  sll        $v1, $v1, 8
/* 95DB250 80086D20 18006200 */  mult       $v1, $v0
/* 95DB254 80086D24 4900C290 */  lbu        $v0, 0x49($a2)
/* 95DB258 80086D28 0400E48C */  lw         $a0, 0x4($a3)
/* 95DB25C 80086D2C 80100200 */  sll        $v0, $v0, 2
/* 95DB260 80086D30 21104400 */  addu       $v0, $v0, $a0
/* 95DB264 80086D34 00004290 */  lbu        $v0, 0x0($v0)
/* 95DB268 80086D38 10400000 */  mfhi       $t0
/* 95DB26C 80086D3C 21280301 */  addu       $a1, $t0, $v1
/* 95DB270 80086D40 03290500 */  sra        $a1, $a1, 4
/* 95DB274 80086D44 C31F0300 */  sra        $v1, $v1, 31
/* 95DB278 80086D48 2328A300 */  subu       $a1, $a1, $v1
/* 95DB27C 80086D4C 1800A200 */  mult       $a1, $v0
/* 95DB280 80086D50 12400000 */  mflo       $t0
/* 95DB284 80086D54 03120800 */  sra        $v0, $t0, 8
/* 95DB288 80086D58 1000A2A3 */  sb         $v0, 0x10($sp)
/* 95DB28C 80086D5C 4900C290 */  lbu        $v0, 0x49($a2)
/* 95DB290 80086D60 0400E38C */  lw         $v1, 0x4($a3)
/* 95DB294 80086D64 80100200 */  sll        $v0, $v0, 2
/* 95DB298 80086D68 21104300 */  addu       $v0, $v0, $v1
/* 95DB29C 80086D6C 01004290 */  lbu        $v0, 0x1($v0)
/* 95DB2A0 80086D70 00000000 */  nop
/* 95DB2A4 80086D74 1800A200 */  mult       $a1, $v0
/* 95DB2A8 80086D78 12400000 */  mflo       $t0
/* 95DB2AC 80086D7C 03120800 */  sra        $v0, $t0, 8
/* 95DB2B0 80086D80 1100A2A3 */  sb         $v0, 0x11($sp)
/* 95DB2B4 80086D84 4900C290 */  lbu        $v0, 0x49($a2)
/* 95DB2B8 80086D88 0400E38C */  lw         $v1, 0x4($a3)
/* 95DB2BC 80086D8C 80100200 */  sll        $v0, $v0, 2
/* 95DB2C0 80086D90 21104300 */  addu       $v0, $v0, $v1
/* 95DB2C4 80086D94 02004290 */  lbu        $v0, 0x2($v0)
/* 95DB2C8 80086D98 00000000 */  nop
/* 95DB2CC 80086D9C 1800A200 */  mult       $a1, $v0
/* 95DB2D0 80086DA0 AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
/* 95DB2D4 80086DA4 12400000 */  mflo       $t0
/* 95DB2D8 80086DA8 03120800 */  sra        $v0, $t0, 8
/* 95DB2DC 80086DAC 1200A2A3 */  sb         $v0, 0x12($sp)
/* 95DB2E0 80086DB0 4900C290 */  lbu        $v0, 0x49($a2)
/* 95DB2E4 80086DB4 ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
/* 95DB2E8 80086DB8 00120200 */  sll        $v0, $v0, 8
/* 95DB2EC 80086DBC 18004300 */  mult       $v0, $v1
/* 95DB2F0 80086DC0 4F00C5A0 */  sb         $a1, 0x4F($a2)
/* 95DB2F4 80086DC4 10400000 */  mfhi       $t0
/* 95DB2F8 80086DC8 4600C8A0 */  sb         $t0, 0x46($a2)
/* 95DB2FC 80086DCC 1000A293 */  lbu        $v0, 0x10($sp)
/* 95DB300 80086DD0 00000000 */  nop
/* 95DB304 80086DD4 5400C2A0 */  sb         $v0, 0x54($a2)
/* 95DB308 80086DD8 1100A293 */  lbu        $v0, 0x11($sp)
/* 95DB30C 80086DDC 00000000 */  nop
/* 95DB310 80086DE0 5500C2A0 */  sb         $v0, 0x55($a2)
/* 95DB314 80086DE4 1200A393 */  lbu        $v1, 0x12($sp)
/* 95DB318 80086DE8 10000224 */  addiu      $v0, $zero, 0x10
/* 95DB31C 80086DEC 5700C0A0 */  sb         $zero, 0x57($a2)
/* 95DB320 80086DF0 4C00C2A0 */  sb         $v0, 0x4C($a2)
/* 95DB324 80086DF4 5600C3A0 */  sb         $v1, 0x56($a2)
.Llevel_50_80086DF8:
/* 95DB328 80086DF8 2000BF8F */  lw         $ra, 0x20($sp)
/* 95DB32C 80086DFC 2800BD27 */  addiu      $sp, $sp, 0x28
/* 95DB330 80086E00 0800E003 */  jr         $ra
/* 95DB334 80086E04 00000000 */   nop
.size MobyUpdate_426_level_50, . - MobyUpdate_426_level_50
