.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_426_level_40
/* 7E67224 8007BCF4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 7E67228 8007BCF8 21308000 */  addu       $a2, $a0, $zero
/* 7E6722C 8007BCFC 2000BFAF */  sw         $ra, 0x20($sp)
/* 7E67230 8007BD00 0000C78C */  lw         $a3, 0x0($a2)
/* 7E67234 8007BD04 0780033C */  lui        $v1, %hi(D_8006C648)
/* 7E67238 8007BD08 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 7E6723C 8007BD0C 0000E28C */  lw         $v0, 0x0($a3)
/* 7E67240 8007BD10 00000000 */  nop
/* 7E67244 8007BD14 21204300 */  addu       $a0, $v0, $v1
/* 7E67248 8007BD18 1E008228 */  slti       $v0, $a0, 0x1E
/* 7E6724C 8007BD1C 05004014 */  bnez       $v0, .Llevel_40_8007BD34
/* 7E67250 8007BD20 0000E4AC */   sw        $a0, 0x0($a3)
/* 7E67254 8007BD24 C656010C */  jal        func_80055B18
/* 7E67258 8007BD28 2120C000 */   addu      $a0, $a2, $zero
/* 7E6725C 8007BD2C 88EF0108 */  j          .Llevel_40_8007BE20
/* 7E67260 8007BD30 00000000 */   nop
.Llevel_40_8007BD34:
/* 7E67264 8007BD34 8888023C */  lui        $v0, (0x88888889 >> 16)
/* 7E67268 8007BD38 89884234 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
/* 7E6726C 8007BD3C 1E000324 */  addiu      $v1, $zero, 0x1E
/* 7E67270 8007BD40 23186400 */  subu       $v1, $v1, $a0
/* 7E67274 8007BD44 001A0300 */  sll        $v1, $v1, 8
/* 7E67278 8007BD48 18006200 */  mult       $v1, $v0
/* 7E6727C 8007BD4C 4900C290 */  lbu        $v0, 0x49($a2)
/* 7E67280 8007BD50 0400E48C */  lw         $a0, 0x4($a3)
/* 7E67284 8007BD54 80100200 */  sll        $v0, $v0, 2
/* 7E67288 8007BD58 21104400 */  addu       $v0, $v0, $a0
/* 7E6728C 8007BD5C 00004290 */  lbu        $v0, 0x0($v0)
/* 7E67290 8007BD60 10400000 */  mfhi       $t0
/* 7E67294 8007BD64 21280301 */  addu       $a1, $t0, $v1
/* 7E67298 8007BD68 03290500 */  sra        $a1, $a1, 4
/* 7E6729C 8007BD6C C31F0300 */  sra        $v1, $v1, 31
/* 7E672A0 8007BD70 2328A300 */  subu       $a1, $a1, $v1
/* 7E672A4 8007BD74 1800A200 */  mult       $a1, $v0
/* 7E672A8 8007BD78 12400000 */  mflo       $t0
/* 7E672AC 8007BD7C 03120800 */  sra        $v0, $t0, 8
/* 7E672B0 8007BD80 1000A2A3 */  sb         $v0, 0x10($sp)
/* 7E672B4 8007BD84 4900C290 */  lbu        $v0, 0x49($a2)
/* 7E672B8 8007BD88 0400E38C */  lw         $v1, 0x4($a3)
/* 7E672BC 8007BD8C 80100200 */  sll        $v0, $v0, 2
/* 7E672C0 8007BD90 21104300 */  addu       $v0, $v0, $v1
/* 7E672C4 8007BD94 01004290 */  lbu        $v0, 0x1($v0)
/* 7E672C8 8007BD98 00000000 */  nop
/* 7E672CC 8007BD9C 1800A200 */  mult       $a1, $v0
/* 7E672D0 8007BDA0 12400000 */  mflo       $t0
/* 7E672D4 8007BDA4 03120800 */  sra        $v0, $t0, 8
/* 7E672D8 8007BDA8 1100A2A3 */  sb         $v0, 0x11($sp)
/* 7E672DC 8007BDAC 4900C290 */  lbu        $v0, 0x49($a2)
/* 7E672E0 8007BDB0 0400E38C */  lw         $v1, 0x4($a3)
/* 7E672E4 8007BDB4 80100200 */  sll        $v0, $v0, 2
/* 7E672E8 8007BDB8 21104300 */  addu       $v0, $v0, $v1
/* 7E672EC 8007BDBC 02004290 */  lbu        $v0, 0x2($v0)
/* 7E672F0 8007BDC0 00000000 */  nop
/* 7E672F4 8007BDC4 1800A200 */  mult       $a1, $v0
/* 7E672F8 8007BDC8 AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
/* 7E672FC 8007BDCC 12400000 */  mflo       $t0
/* 7E67300 8007BDD0 03120800 */  sra        $v0, $t0, 8
/* 7E67304 8007BDD4 1200A2A3 */  sb         $v0, 0x12($sp)
/* 7E67308 8007BDD8 4900C290 */  lbu        $v0, 0x49($a2)
/* 7E6730C 8007BDDC ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
/* 7E67310 8007BDE0 00120200 */  sll        $v0, $v0, 8
/* 7E67314 8007BDE4 18004300 */  mult       $v0, $v1
/* 7E67318 8007BDE8 4F00C5A0 */  sb         $a1, 0x4F($a2)
/* 7E6731C 8007BDEC 10400000 */  mfhi       $t0
/* 7E67320 8007BDF0 4600C8A0 */  sb         $t0, 0x46($a2)
/* 7E67324 8007BDF4 1000A293 */  lbu        $v0, 0x10($sp)
/* 7E67328 8007BDF8 00000000 */  nop
/* 7E6732C 8007BDFC 5400C2A0 */  sb         $v0, 0x54($a2)
/* 7E67330 8007BE00 1100A293 */  lbu        $v0, 0x11($sp)
/* 7E67334 8007BE04 00000000 */  nop
/* 7E67338 8007BE08 5500C2A0 */  sb         $v0, 0x55($a2)
/* 7E6733C 8007BE0C 1200A393 */  lbu        $v1, 0x12($sp)
/* 7E67340 8007BE10 10000224 */  addiu      $v0, $zero, 0x10
/* 7E67344 8007BE14 5700C0A0 */  sb         $zero, 0x57($a2)
/* 7E67348 8007BE18 4C00C2A0 */  sb         $v0, 0x4C($a2)
/* 7E6734C 8007BE1C 5600C3A0 */  sb         $v1, 0x56($a2)
.Llevel_40_8007BE20:
/* 7E67350 8007BE20 2000BF8F */  lw         $ra, 0x20($sp)
/* 7E67354 8007BE24 2800BD27 */  addiu      $sp, $sp, 0x28
/* 7E67358 8007BE28 0800E003 */  jr         $ra
/* 7E6735C 8007BE2C 00000000 */   nop
.size MobyUpdate_426_level_40, . - MobyUpdate_426_level_40
