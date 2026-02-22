.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_23_8007BC5C
/* 5A9818C 8007BC5C B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 5A98190 8007BC60 2400B1AF */  sw         $s1, 0x24($sp)
/* 5A98194 8007BC64 21888000 */  addu       $s1, $a0, $zero
/* 5A98198 8007BC68 3400B5AF */  sw         $s5, 0x34($sp)
/* 5A9819C 8007BC6C 0780153C */  lui        $s5, %hi(D_80070328 + 0x50)
/* 5A981A0 8007BC70 7803B526 */  addiu      $s5, $s5, %lo(D_80070328 + 0x50)
/* 5A981A4 8007BC74 06000324 */  addiu      $v1, $zero, 0x6
/* 5A981A8 8007BC78 4000BFAF */  sw         $ra, 0x40($sp)
/* 5A981AC 8007BC7C 3C00B7AF */  sw         $s7, 0x3C($sp)
/* 5A981B0 8007BC80 3800B6AF */  sw         $s6, 0x38($sp)
/* 5A981B4 8007BC84 3000B4AF */  sw         $s4, 0x30($sp)
/* 5A981B8 8007BC88 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 5A981BC 8007BC8C 2800B2AF */  sw         $s2, 0x28($sp)
/* 5A981C0 8007BC90 2000B0AF */  sw         $s0, 0x20($sp)
/* 5A981C4 8007BC94 0000A28E */  lw         $v0, 0x0($s5)
/* 5A981C8 8007BC98 0000328E */  lw         $s2, 0x0($s1)
/* 5A981CC 8007BC9C 06004310 */  beq        $v0, $v1, .Llevel_23_8007BCB8
/* 5A981D0 8007BCA0 00000000 */   nop
/* 5A981D4 8007BCA4 0780023C */  lui        $v0, %hi(D_80070328 + 0x244)
/* 5A981D8 8007BCA8 6C05428C */  lw         $v0, %lo(D_80070328 + 0x244)($v0)
/* 5A981DC 8007BCAC 00000000 */  nop
/* 5A981E0 8007BCB0 07004010 */  beqz       $v0, .Llevel_23_8007BCD0
/* 5A981E4 8007BCB4 02001424 */   addiu     $s4, $zero, 0x2
.Llevel_23_8007BCB8:
/* 5A981E8 8007BCB8 48002292 */  lbu        $v0, 0x48($s1)
/* 5A981EC 8007BCBC 00000000 */  nop
/* 5A981F0 8007BCC0 24014010 */  beqz       $v0, .Llevel_23_8007C154
/* 5A981F4 8007BCC4 02000224 */   addiu     $v0, $zero, 0x2
/* 5A981F8 8007BCC8 55F00108 */  j          .Llevel_23_8007C154
/* 5A981FC 8007BCCC 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_23_8007BCD0:
/* 5A98200 8007BCD0 48002292 */  lbu        $v0, 0x48($s1)
/* 5A98204 8007BCD4 00000000 */  nop
/* 5A98208 8007BCD8 03005414 */  bne        $v0, $s4, .Llevel_23_8007BCE8
/* 5A9820C 8007BCDC 1000A427 */   addiu     $a0, $sp, 0x10
/* 5A98210 8007BCE0 01000224 */  addiu      $v0, $zero, 0x1
/* 5A98214 8007BCE4 480022A2 */  sb         $v0, 0x48($s1)
.Llevel_23_8007BCE8:
/* 5A98218 8007BCE8 B0FFB726 */  addiu      $s7, $s5, -0x50
/* 5A9821C 8007BCEC 2128E002 */  addu       $a1, $s7, $zero
/* 5A98220 8007BCF0 0800428E */  lw         $v0, 0x8($s2)
/* 5A98224 8007BCF4 0C003326 */  addiu      $s3, $s1, 0xC
/* 5A98228 8007BCF8 21306002 */  addu       $a2, $s3, $zero
/* 5A9822C 8007BCFC 723C010C */  jal        func_8004F1C8
/* 5A98230 8007BD00 7F005030 */   andi      $s0, $v0, 0x7F
/* 5A98234 8007BD04 1000A427 */  addiu      $a0, $sp, 0x10
/* 5A98238 8007BD08 7A3B010C */  jal        func_8004EDE8
/* 5A9823C 8007BD0C 21280000 */   addu      $a1, $zero, $zero
/* 5A98240 8007BD10 63000012 */  beqz       $s0, .Llevel_23_8007BEA0
/* 5A98244 8007BD14 21B04000 */   addu      $s6, $v0, $zero
/* 5A98248 8007BD18 01000424 */  addiu      $a0, $zero, 0x1
/* 5A9824C 8007BD1C 35000416 */  bne        $s0, $a0, .Llevel_23_8007BDF4
/* 5A98250 8007BD20 00000000 */   nop
/* 5A98254 8007BD24 49002392 */  lbu        $v1, 0x49($s1)
/* 5A98258 8007BD28 00000000 */  nop
/* 5A9825C 8007BD2C 1F007010 */  beq        $v1, $s0, .Llevel_23_8007BDAC
/* 5A98260 8007BD30 02006228 */   slti      $v0, $v1, 0x2
/* 5A98264 8007BD34 05004010 */  beqz       $v0, .Llevel_23_8007BD4C
/* 5A98268 8007BD38 00000000 */   nop
/* 5A9826C 8007BD3C 09006010 */  beqz       $v1, .Llevel_23_8007BD64
/* 5A98270 8007BD40 00000000 */   nop
/* 5A98274 8007BD44 FEEF0108 */  j          .Llevel_23_8007BFF8
/* 5A98278 8007BD48 00000000 */   nop
.Llevel_23_8007BD4C:
/* 5A9827C 8007BD4C 1E007410 */  beq        $v1, $s4, .Llevel_23_8007BDC8
/* 5A98280 8007BD50 03000224 */   addiu     $v0, $zero, 0x3
/* 5A98284 8007BD54 23006210 */  beq        $v1, $v0, .Llevel_23_8007BDE4
/* 5A98288 8007BD58 00000000 */   nop
/* 5A9828C 8007BD5C FEEF0108 */  j          .Llevel_23_8007BFF8
/* 5A98290 8007BD60 00000000 */   nop
.Llevel_23_8007BD64:
/* 5A98294 8007BD64 0400428E */  lw         $v0, 0x4($s2)
/* 5A98298 8007BD68 00000000 */  nop
/* 5A9829C 8007BD6C 00044224 */  addiu      $v0, $v0, 0x400
/* 5A982A0 8007BD70 2A10C202 */  slt        $v0, $s6, $v0
/* 5A982A4 8007BD74 A0004010 */  beqz       $v0, .Llevel_23_8007BFF8
/* 5A982A8 8007BD78 00000000 */   nop
/* 5A982AC 8007BD7C 1800A28F */  lw         $v0, 0x18($sp)
/* 5A982B0 8007BD80 00000000 */  nop
/* 5A982B4 8007BD84 02004104 */  bgez       $v0, .Llevel_23_8007BD90
/* 5A982B8 8007BD88 00000000 */   nop
/* 5A982BC 8007BD8C 23100200 */  negu       $v0, $v0
.Llevel_23_8007BD90:
/* 5A982C0 8007BD90 00044228 */  slti       $v0, $v0, 0x400
/* 5A982C4 8007BD94 98004010 */  beqz       $v0, .Llevel_23_8007BFF8
/* 5A982C8 8007BD98 3C000224 */   addiu     $v0, $zero, 0x3C
/* 5A982CC 8007BD9C 0C0042AE */  sw         $v0, 0xC($s2)
/* 5A982D0 8007BDA0 01000224 */  addiu      $v0, $zero, 0x1
/* 5A982D4 8007BDA4 FEEF0108 */  j          .Llevel_23_8007BFF8
/* 5A982D8 8007BDA8 490022A2 */   sb        $v0, 0x49($s1)
.Llevel_23_8007BDAC:
/* 5A982DC 8007BDAC 0C004426 */  addiu      $a0, $s2, 0xC
/* 5A982E0 8007BDB0 69D6000C */  jal        func_800359A4
/* 5A982E4 8007BDB4 04000524 */   addiu     $a1, $zero, 0x4
/* 5A982E8 8007BDB8 8F004010 */  beqz       $v0, .Llevel_23_8007BFF8
/* 5A982EC 8007BDBC 02000224 */   addiu     $v0, $zero, 0x2
/* 5A982F0 8007BDC0 A7EF0108 */  j          .Llevel_23_8007BE9C
/* 5A982F4 8007BDC4 00000000 */   nop
.Llevel_23_8007BDC8:
/* 5A982F8 8007BDC8 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 5A982FC 8007BDCC 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 5A98300 8007BDD0 13000224 */  addiu      $v0, $zero, 0x13
/* 5A98304 8007BDD4 88006214 */  bne        $v1, $v0, .Llevel_23_8007BFF8
/* 5A98308 8007BDD8 3C000224 */   addiu     $v0, $zero, 0x3C
/* 5A9830C 8007BDDC BBEF0108 */  j          .Llevel_23_8007BEEC
/* 5A98310 8007BDE0 00000000 */   nop
.Llevel_23_8007BDE4:
/* 5A98314 8007BDE4 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 5A98318 8007BDE8 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 5A9831C 8007BDEC C0EF0108 */  j          .Llevel_23_8007BF00
/* 5A98320 8007BDF0 13000224 */   addiu     $v0, $zero, 0x13
.Llevel_23_8007BDF4:
/* 5A98324 8007BDF4 03000224 */  addiu      $v0, $zero, 0x3
/* 5A98328 8007BDF8 4B000216 */  bne        $s0, $v0, .Llevel_23_8007BF28
/* 5A9832C 8007BDFC 00000000 */   nop
/* 5A98330 8007BE00 49002392 */  lbu        $v1, 0x49($s1)
/* 5A98334 8007BE04 00000000 */  nop
/* 5A98338 8007BE08 1C006410 */  beq        $v1, $a0, .Llevel_23_8007BE7C
/* 5A9833C 8007BE0C 02006228 */   slti      $v0, $v1, 0x2
/* 5A98340 8007BE10 05004010 */  beqz       $v0, .Llevel_23_8007BE28
/* 5A98344 8007BE14 00000000 */   nop
/* 5A98348 8007BE18 09006010 */  beqz       $v1, .Llevel_23_8007BE40
/* 5A9834C 8007BE1C 00000000 */   nop
/* 5A98350 8007BE20 FEEF0108 */  j          .Llevel_23_8007BFF8
/* 5A98354 8007BE24 00000000 */   nop
.Llevel_23_8007BE28:
/* 5A98358 8007BE28 20007410 */  beq        $v1, $s4, .Llevel_23_8007BEAC
/* 5A9835C 8007BE2C 13000224 */   addiu     $v0, $zero, 0x13
/* 5A98360 8007BE30 32007010 */  beq        $v1, $s0, .Llevel_23_8007BEFC
/* 5A98364 8007BE34 00000000 */   nop
/* 5A98368 8007BE38 FEEF0108 */  j          .Llevel_23_8007BFF8
/* 5A9836C 8007BE3C 00000000 */   nop
.Llevel_23_8007BE40:
/* 5A98370 8007BE40 0400428E */  lw         $v0, 0x4($s2)
/* 5A98374 8007BE44 00000000 */  nop
/* 5A98378 8007BE48 00084224 */  addiu      $v0, $v0, 0x800
/* 5A9837C 8007BE4C 2A105600 */  slt        $v0, $v0, $s6
/* 5A98380 8007BE50 69004010 */  beqz       $v0, .Llevel_23_8007BFF8
/* 5A98384 8007BE54 0020C22A */   slti      $v0, $s6, 0x2000
/* 5A98388 8007BE58 67004010 */  beqz       $v0, .Llevel_23_8007BFF8
/* 5A9838C 8007BE5C 00000000 */   nop
/* 5A98390 8007BE60 1800A28F */  lw         $v0, 0x18($sp)
/* 5A98394 8007BE64 00000000 */  nop
/* 5A98398 8007BE68 02004104 */  bgez       $v0, .Llevel_23_8007BE74
/* 5A9839C 8007BE6C 00000000 */   nop
/* 5A983A0 8007BE70 23100200 */  negu       $v0, $v0
.Llevel_23_8007BE74:
/* 5A983A4 8007BE74 A3EF0108 */  j          .Llevel_23_8007BE8C
/* 5A983A8 8007BE78 00044228 */   slti      $v0, $v0, 0x400
.Llevel_23_8007BE7C:
/* 5A983AC 8007BE7C 0400428E */  lw         $v0, 0x4($s2)
/* 5A983B0 8007BE80 00000000 */  nop
/* 5A983B4 8007BE84 00084224 */  addiu      $v0, $v0, 0x800
/* 5A983B8 8007BE88 2A105600 */  slt        $v0, $v0, $s6
.Llevel_23_8007BE8C:
/* 5A983BC 8007BE8C 5A004010 */  beqz       $v0, .Llevel_23_8007BFF8
/* 5A983C0 8007BE90 3C000224 */   addiu     $v0, $zero, 0x3C
/* 5A983C4 8007BE94 0C0042AE */  sw         $v0, 0xC($s2)
/* 5A983C8 8007BE98 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_23_8007BE9C:
/* 5A983CC 8007BE9C 490022A2 */  sb         $v0, 0x49($s1)
.Llevel_23_8007BEA0:
/* 5A983D0 8007BEA0 01000224 */  addiu      $v0, $zero, 0x1
/* 5A983D4 8007BEA4 FEEF0108 */  j          .Llevel_23_8007BFF8
/* 5A983D8 8007BEA8 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_23_8007BEAC:
/* 5A983DC 8007BEAC 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 5A983E0 8007BEB0 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 5A983E4 8007BEB4 00000000 */  nop
/* 5A983E8 8007BEB8 0B006210 */  beq        $v1, $v0, .Llevel_23_8007BEE8
/* 5A983EC 8007BEBC 0128C22A */   slti      $v0, $s6, 0x2801
/* 5A983F0 8007BEC0 0A004010 */  beqz       $v0, .Llevel_23_8007BEEC
/* 5A983F4 8007BEC4 3C000224 */   addiu     $v0, $zero, 0x3C
/* 5A983F8 8007BEC8 0780023C */  lui        $v0, %hi(D_80070328 + 8)
/* 5A983FC 8007BECC 3003428C */  lw         $v0, %lo(D_80070328 + 8)($v0)
/* 5A98400 8007BED0 1400238E */  lw         $v1, 0x14($s1)
/* 5A98404 8007BED4 00000000 */  nop
/* 5A98408 8007BED8 23104300 */  subu       $v0, $v0, $v1
/* 5A9840C 8007BEDC 010C4228 */  slti       $v0, $v0, 0xC01
/* 5A98410 8007BEE0 45004014 */  bnez       $v0, .Llevel_23_8007BFF8
/* 5A98414 8007BEE4 00000000 */   nop
.Llevel_23_8007BEE8:
/* 5A98418 8007BEE8 3C000224 */  addiu      $v0, $zero, 0x3C
.Llevel_23_8007BEEC:
/* 5A9841C 8007BEEC 0C0042AE */  sw         $v0, 0xC($s2)
/* 5A98420 8007BEF0 03000224 */  addiu      $v0, $zero, 0x3
/* 5A98424 8007BEF4 FEEF0108 */  j          .Llevel_23_8007BFF8
/* 5A98428 8007BEF8 490022A2 */   sb        $v0, 0x49($s1)
.Llevel_23_8007BEFC:
/* 5A9842C 8007BEFC F8FFA38E */  lw         $v1, -0x8($s5)
.Llevel_23_8007BF00:
/* 5A98430 8007BF00 00000000 */  nop
/* 5A98434 8007BF04 3C006210 */  beq        $v1, $v0, .Llevel_23_8007BFF8
/* 5A98438 8007BF08 0C004426 */   addiu     $a0, $s2, 0xC
/* 5A9843C 8007BF0C 69D6000C */  jal        func_800359A4
/* 5A98440 8007BF10 04000524 */   addiu     $a1, $zero, 0x4
/* 5A98444 8007BF14 38004010 */  beqz       $v0, .Llevel_23_8007BFF8
/* 5A98448 8007BF18 00000000 */   nop
/* 5A9844C 8007BF1C 490020A2 */  sb         $zero, 0x49($s1)
/* 5A98450 8007BF20 FEEF0108 */  j          .Llevel_23_8007BFF8
/* 5A98454 8007BF24 480020A2 */   sb        $zero, 0x48($s1)
.Llevel_23_8007BF28:
/* 5A98458 8007BF28 04000224 */  addiu      $v0, $zero, 0x4
/* 5A9845C 8007BF2C 1C000216 */  bne        $s0, $v0, .Llevel_23_8007BFA0
/* 5A98460 8007BF30 05000224 */   addiu     $v0, $zero, 0x5
/* 5A98464 8007BF34 0780023C */  lui        $v0, %hi(D_8006C7B4)
/* 5A98468 8007BF38 B4C74290 */  lbu        $v0, %lo(D_8006C7B4)($v0)
/* 5A9846C 8007BF3C 00000000 */  nop
/* 5A98470 8007BF40 01004230 */  andi       $v0, $v0, 0x1
/* 5A98474 8007BF44 0A004014 */  bnez       $v0, .Llevel_23_8007BF70
/* 5A98478 8007BF48 21206002 */   addu      $a0, $s3, $zero
/* 5A9847C 8007BF4C 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 5A98480 8007BF50 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 5A98484 8007BF54 0780013C */  lui        $at, %hi(D_80070300)
/* 5A98488 8007BF58 21082200 */  addu       $at, $at, $v0
/* 5A9848C 8007BF5C 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 5A98490 8007BF60 00000000 */  nop
/* 5A98494 8007BF64 01004230 */  andi       $v0, $v0, 0x1
/* 5A98498 8007BF68 23004010 */  beqz       $v0, .Llevel_23_8007BFF8
/* 5A9849C 8007BF6C 00000000 */   nop
.Llevel_23_8007BF70:
/* 5A984A0 8007BF70 CD3C010C */  jal        func_8004F334
/* 5A984A4 8007BF74 2128E002 */   addu      $a1, $s7, $zero
/* 5A984A8 8007BF78 01084228 */  slti       $v0, $v0, 0x801
/* 5A984AC 8007BF7C 1E004014 */  bnez       $v0, .Llevel_23_8007BFF8
/* 5A984B0 8007BF80 00000000 */   nop
/* 5A984B4 8007BF84 0780023C */  lui        $v0, %hi(D_8006C640)
/* 5A984B8 8007BF88 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 5A984BC 8007BF8C 00000000 */  nop
/* 5A984C0 8007BF90 19004018 */  blez       $v0, .Llevel_23_8007BFF8
/* 5A984C4 8007BF94 00000000 */   nop
/* 5A984C8 8007BF98 FAEF0108 */  j          .Llevel_23_8007BFE8
/* 5A984CC 8007BF9C 00000000 */   nop
.Llevel_23_8007BFA0:
/* 5A984D0 8007BFA0 15000216 */  bne        $s0, $v0, .Llevel_23_8007BFF8
/* 5A984D4 8007BFA4 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 5A984D8 8007BFA8 1400438E */  lw         $v1, 0x14($s2)
/* 5A984DC 8007BFAC 00000000 */  nop
/* 5A984E0 8007BFB0 11006210 */  beq        $v1, $v0, .Llevel_23_8007BFF8
/* 5A984E4 8007BFB4 40100300 */   sll       $v0, $v1, 1
/* 5A984E8 8007BFB8 21104300 */  addu       $v0, $v0, $v1
/* 5A984EC 8007BFBC 80100200 */  sll        $v0, $v0, 2
/* 5A984F0 8007BFC0 23104300 */  subu       $v0, $v0, $v1
/* 5A984F4 8007BFC4 0780033C */  lui        $v1, %hi(D_8006C550)
/* 5A984F8 8007BFC8 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 5A984FC 8007BFCC C0100200 */  sll        $v0, $v0, 3
/* 5A98500 8007BFD0 21104300 */  addu       $v0, $v0, $v1
/* 5A98504 8007BFD4 48004290 */  lbu        $v0, 0x48($v0)
/* 5A98508 8007BFD8 00000000 */  nop
/* 5A9850C 8007BFDC 8000422C */  sltiu      $v0, $v0, 0x80
/* 5A98510 8007BFE0 05004014 */  bnez       $v0, .Llevel_23_8007BFF8
/* 5A98514 8007BFE4 00000000 */   nop
.Llevel_23_8007BFE8:
/* 5A98518 8007BFE8 0800428E */  lw         $v0, 0x8($s2)
/* 5A9851C 8007BFEC 00000000 */  nop
/* 5A98520 8007BFF0 80004230 */  andi       $v0, $v0, 0x80
/* 5A98524 8007BFF4 080042AE */  sw         $v0, 0x8($s2)
.Llevel_23_8007BFF8:
/* 5A98528 8007BFF8 48002292 */  lbu        $v0, 0x48($s1)
/* 5A9852C 8007BFFC 00000000 */  nop
/* 5A98530 8007C000 4A004010 */  beqz       $v0, .Llevel_23_8007C12C
/* 5A98534 8007C004 00000000 */   nop
/* 5A98538 8007C008 1000458E */  lw         $a1, 0x10($s2)
/* 5A9853C 8007C00C F0EF000C */  jal        func_8003BFC0
/* 5A98540 8007C010 21202002 */   addu      $a0, $s1, $zero
/* 5A98544 8007C014 08004014 */  bnez       $v0, .Llevel_23_8007C038
/* 5A98548 8007C018 21282002 */   addu      $a1, $s1, $zero
/* 5A9854C 8007C01C 0780023C */  lui        $v0, %hi(D_8006C654)
/* 5A98550 8007C020 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 5A98554 8007C024 00000000 */  nop
/* 5A98558 8007C028 1D004490 */  lbu        $a0, 0x1D($v0)
/* 5A9855C 8007C02C D4EE000C */  jal        PlaySound
/* 5A98560 8007C030 04000624 */   addiu     $a2, $zero, 0x4
/* 5A98564 8007C034 100042AE */  sw         $v0, 0x10($s2)
.Llevel_23_8007C038:
/* 5A98568 8007C038 0780023C */  lui        $v0, %hi(D_8006C640)
/* 5A9856C 8007C03C 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 5A98570 8007C040 00000000 */  nop
/* 5A98574 8007C044 01004230 */  andi       $v0, $v0, 0x1
/* 5A98578 8007C048 09004014 */  bnez       $v0, .Llevel_23_8007C070
/* 5A9857C 8007C04C 01000424 */   addiu     $a0, $zero, 0x1
/* 5A98580 8007C050 06000524 */  addiu      $a1, $zero, 0x6
/* 5A98584 8007C054 21302002 */  addu       $a2, $s1, $zero
/* 5A98588 8007C058 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 5A9858C 8007C05C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 5A98590 8007C060 00000000 */  nop
/* 5A98594 8007C064 09F84000 */  jalr       $v0
/* 5A98598 8007C068 21380000 */   addu      $a3, $zero, $zero
/* 5A9859C 8007C06C 01000424 */  addiu      $a0, $zero, 0x1
.Llevel_23_8007C070:
/* 5A985A0 8007C070 52000524 */  addiu      $a1, $zero, 0x52
/* 5A985A4 8007C074 21302002 */  addu       $a2, $s1, $zero
/* 5A985A8 8007C078 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 5A985AC 8007C07C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 5A985B0 8007C080 00000000 */  nop
/* 5A985B4 8007C084 09F84000 */  jalr       $v0
/* 5A985B8 8007C088 21380000 */   addu      $a3, $zero, $zero
/* 5A985BC 8007C08C 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 5A985C0 8007C090 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 5A985C4 8007C094 13000224 */  addiu      $v0, $zero, 0x13
/* 5A985C8 8007C098 2E006210 */  beq        $v1, $v0, .Llevel_23_8007C154
/* 5A985CC 8007C09C 00000000 */   nop
/* 5A985D0 8007C0A0 0400428E */  lw         $v0, 0x4($s2)
/* 5A985D4 8007C0A4 00000000 */  nop
/* 5A985D8 8007C0A8 2A10C202 */  slt        $v0, $s6, $v0
/* 5A985DC 8007C0AC 29004010 */  beqz       $v0, .Llevel_23_8007C154
/* 5A985E0 8007C0B0 00000000 */   nop
/* 5A985E4 8007C0B4 0780023C */  lui        $v0, %hi(D_8006E344)
/* 5A985E8 8007C0B8 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 5A985EC 8007C0BC 00000000 */  nop
/* 5A985F0 8007C0C0 24004014 */  bnez       $v0, .Llevel_23_8007C154
/* 5A985F4 8007C0C4 00000000 */   nop
/* 5A985F8 8007C0C8 1800A38F */  lw         $v1, 0x18($sp)
/* 5A985FC 8007C0CC 00000000 */  nop
/* 5A98600 8007C0D0 01FC6228 */  slti       $v0, $v1, -0x3FF
/* 5A98604 8007C0D4 1F004014 */  bnez       $v0, .Llevel_23_8007C154
/* 5A98608 8007C0D8 00000000 */   nop
/* 5A9860C 8007C0DC 0000448E */  lw         $a0, 0x0($s2)
/* 5A98610 8007C0E0 00000000 */  nop
/* 5A98614 8007C0E4 2A106400 */  slt        $v0, $v1, $a0
/* 5A98618 8007C0E8 1A004010 */  beqz       $v0, .Llevel_23_8007C154
/* 5A9861C 8007C0EC 00000000 */   nop
/* 5A98620 8007C0F0 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 5A98624 8007C0F4 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 5A98628 8007C0F8 1400228E */  lw         $v0, 0x14($s1)
/* 5A9862C 8007C0FC 000C6324 */  addiu      $v1, $v1, 0xC00
/* 5A98630 8007C100 21104400 */  addu       $v0, $v0, $a0
/* 5A98634 8007C104 2A186200 */  slt        $v1, $v1, $v0
/* 5A98638 8007C108 12006010 */  beqz       $v1, .Llevel_23_8007C154
/* 5A9863C 8007C10C 0010023C */   lui       $v0, (0x10000020 >> 16)
/* 5A98640 8007C110 20004234 */  ori        $v0, $v0, (0x10000020 & 0xFFFF)
/* 5A98644 8007C114 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 5A98648 8007C118 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 5A9864C 8007C11C 0780013C */  lui        $at, %hi(D_80070328 + 0x218)
/* 5A98650 8007C120 400531AC */  sw         $s1, %lo(D_80070328 + 0x218)($at)
/* 5A98654 8007C124 55F00108 */  j          .Llevel_23_8007C154
/* 5A98658 8007C128 00000000 */   nop
.Llevel_23_8007C12C:
/* 5A9865C 8007C12C 1000458E */  lw         $a1, 0x10($s2)
/* 5A98660 8007C130 F0EF000C */  jal        func_8003BFC0
/* 5A98664 8007C134 21202002 */   addu      $a0, $s1, $zero
/* 5A98668 8007C138 06004010 */  beqz       $v0, .Llevel_23_8007C154
/* 5A9866C 8007C13C 00000000 */   nop
/* 5A98670 8007C140 1000448E */  lw         $a0, 0x10($s2)
/* 5A98674 8007C144 9CEF000C */  jal        func_8003BE70
/* 5A98678 8007C148 00000000 */   nop
/* 5A9867C 8007C14C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 5A98680 8007C150 100042AE */  sw         $v0, 0x10($s2)
.Llevel_23_8007C154:
/* 5A98684 8007C154 4000BF8F */  lw         $ra, 0x40($sp)
/* 5A98688 8007C158 3C00B78F */  lw         $s7, 0x3C($sp)
/* 5A9868C 8007C15C 3800B68F */  lw         $s6, 0x38($sp)
/* 5A98690 8007C160 3400B58F */  lw         $s5, 0x34($sp)
/* 5A98694 8007C164 3000B48F */  lw         $s4, 0x30($sp)
/* 5A98698 8007C168 2C00B38F */  lw         $s3, 0x2C($sp)
/* 5A9869C 8007C16C 2800B28F */  lw         $s2, 0x28($sp)
/* 5A986A0 8007C170 2400B18F */  lw         $s1, 0x24($sp)
/* 5A986A4 8007C174 2000B08F */  lw         $s0, 0x20($sp)
/* 5A986A8 8007C178 4800BD27 */  addiu      $sp, $sp, 0x48
/* 5A986AC 8007C17C 0800E003 */  jr         $ra
/* 5A986B0 8007C180 00000000 */   nop
.size func_level_23_8007BC5C, . - func_level_23_8007BC5C
