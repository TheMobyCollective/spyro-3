.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_426_level_20
/* 50CCC88 8007CF58 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 50CCC8C 8007CF5C 21308000 */  addu       $a2, $a0, $zero
/* 50CCC90 8007CF60 2000BFAF */  sw         $ra, 0x20($sp)
/* 50CCC94 8007CF64 0000C78C */  lw         $a3, 0x0($a2)
/* 50CCC98 8007CF68 0780033C */  lui        $v1, %hi(D_8006C648)
/* 50CCC9C 8007CF6C 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 50CCCA0 8007CF70 0000E28C */  lw         $v0, 0x0($a3)
/* 50CCCA4 8007CF74 00000000 */  nop
/* 50CCCA8 8007CF78 21204300 */  addu       $a0, $v0, $v1
/* 50CCCAC 8007CF7C 1E008228 */  slti       $v0, $a0, 0x1E
/* 50CCCB0 8007CF80 05004014 */  bnez       $v0, .Llevel_20_8007CF98
/* 50CCCB4 8007CF84 0000E4AC */   sw        $a0, 0x0($a3)
/* 50CCCB8 8007CF88 C656010C */  jal        func_80055B18
/* 50CCCBC 8007CF8C 2120C000 */   addu      $a0, $a2, $zero
/* 50CCCC0 8007CF90 21F40108 */  j          .Llevel_20_8007D084
/* 50CCCC4 8007CF94 00000000 */   nop
.Llevel_20_8007CF98:
/* 50CCCC8 8007CF98 8888023C */  lui        $v0, (0x88888889 >> 16)
/* 50CCCCC 8007CF9C 89884234 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
/* 50CCCD0 8007CFA0 1E000324 */  addiu      $v1, $zero, 0x1E
/* 50CCCD4 8007CFA4 23186400 */  subu       $v1, $v1, $a0
/* 50CCCD8 8007CFA8 001A0300 */  sll        $v1, $v1, 8
/* 50CCCDC 8007CFAC 18006200 */  mult       $v1, $v0
/* 50CCCE0 8007CFB0 4900C290 */  lbu        $v0, 0x49($a2)
/* 50CCCE4 8007CFB4 0400E48C */  lw         $a0, 0x4($a3)
/* 50CCCE8 8007CFB8 80100200 */  sll        $v0, $v0, 2
/* 50CCCEC 8007CFBC 21104400 */  addu       $v0, $v0, $a0
/* 50CCCF0 8007CFC0 00004290 */  lbu        $v0, 0x0($v0)
/* 50CCCF4 8007CFC4 10400000 */  mfhi       $t0
/* 50CCCF8 8007CFC8 21280301 */  addu       $a1, $t0, $v1
/* 50CCCFC 8007CFCC 03290500 */  sra        $a1, $a1, 4
/* 50CCD00 8007CFD0 C31F0300 */  sra        $v1, $v1, 31
/* 50CCD04 8007CFD4 2328A300 */  subu       $a1, $a1, $v1
/* 50CCD08 8007CFD8 1800A200 */  mult       $a1, $v0
/* 50CCD0C 8007CFDC 12400000 */  mflo       $t0
/* 50CCD10 8007CFE0 03120800 */  sra        $v0, $t0, 8
/* 50CCD14 8007CFE4 1000A2A3 */  sb         $v0, 0x10($sp)
/* 50CCD18 8007CFE8 4900C290 */  lbu        $v0, 0x49($a2)
/* 50CCD1C 8007CFEC 0400E38C */  lw         $v1, 0x4($a3)
/* 50CCD20 8007CFF0 80100200 */  sll        $v0, $v0, 2
/* 50CCD24 8007CFF4 21104300 */  addu       $v0, $v0, $v1
/* 50CCD28 8007CFF8 01004290 */  lbu        $v0, 0x1($v0)
/* 50CCD2C 8007CFFC 00000000 */  nop
/* 50CCD30 8007D000 1800A200 */  mult       $a1, $v0
/* 50CCD34 8007D004 12400000 */  mflo       $t0
/* 50CCD38 8007D008 03120800 */  sra        $v0, $t0, 8
/* 50CCD3C 8007D00C 1100A2A3 */  sb         $v0, 0x11($sp)
/* 50CCD40 8007D010 4900C290 */  lbu        $v0, 0x49($a2)
/* 50CCD44 8007D014 0400E38C */  lw         $v1, 0x4($a3)
/* 50CCD48 8007D018 80100200 */  sll        $v0, $v0, 2
/* 50CCD4C 8007D01C 21104300 */  addu       $v0, $v0, $v1
/* 50CCD50 8007D020 02004290 */  lbu        $v0, 0x2($v0)
/* 50CCD54 8007D024 00000000 */  nop
/* 50CCD58 8007D028 1800A200 */  mult       $a1, $v0
/* 50CCD5C 8007D02C AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
/* 50CCD60 8007D030 12400000 */  mflo       $t0
/* 50CCD64 8007D034 03120800 */  sra        $v0, $t0, 8
/* 50CCD68 8007D038 1200A2A3 */  sb         $v0, 0x12($sp)
/* 50CCD6C 8007D03C 4900C290 */  lbu        $v0, 0x49($a2)
/* 50CCD70 8007D040 ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
/* 50CCD74 8007D044 00120200 */  sll        $v0, $v0, 8
/* 50CCD78 8007D048 18004300 */  mult       $v0, $v1
/* 50CCD7C 8007D04C 4F00C5A0 */  sb         $a1, 0x4F($a2)
/* 50CCD80 8007D050 10400000 */  mfhi       $t0
/* 50CCD84 8007D054 4600C8A0 */  sb         $t0, 0x46($a2)
/* 50CCD88 8007D058 1000A293 */  lbu        $v0, 0x10($sp)
/* 50CCD8C 8007D05C 00000000 */  nop
/* 50CCD90 8007D060 5400C2A0 */  sb         $v0, 0x54($a2)
/* 50CCD94 8007D064 1100A293 */  lbu        $v0, 0x11($sp)
/* 50CCD98 8007D068 00000000 */  nop
/* 50CCD9C 8007D06C 5500C2A0 */  sb         $v0, 0x55($a2)
/* 50CCDA0 8007D070 1200A393 */  lbu        $v1, 0x12($sp)
/* 50CCDA4 8007D074 10000224 */  addiu      $v0, $zero, 0x10
/* 50CCDA8 8007D078 5700C0A0 */  sb         $zero, 0x57($a2)
/* 50CCDAC 8007D07C 4C00C2A0 */  sb         $v0, 0x4C($a2)
/* 50CCDB0 8007D080 5600C3A0 */  sb         $v1, 0x56($a2)
.Llevel_20_8007D084:
/* 50CCDB4 8007D084 2000BF8F */  lw         $ra, 0x20($sp)
/* 50CCDB8 8007D088 2800BD27 */  addiu      $sp, $sp, 0x28
/* 50CCDBC 8007D08C 0800E003 */  jr         $ra
/* 50CCDC0 8007D090 00000000 */   nop
.size MobyUpdate_426_level_20, . - MobyUpdate_426_level_20
