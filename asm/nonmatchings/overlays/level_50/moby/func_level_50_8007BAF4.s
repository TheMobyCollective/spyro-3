.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_39_level_50
/* 95D0024 8007BAF4 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 95D0028 8007BAF8 2000B0AF */  sw         $s0, 0x20($sp)
/* 95D002C 8007BAFC 21808000 */  addu       $s0, $a0, $zero
/* 95D0030 8007BB00 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 95D0034 8007BB04 2800B2AF */  sw         $s2, 0x28($sp)
/* 95D0038 8007BB08 2400B1AF */  sw         $s1, 0x24($sp)
/* 95D003C 8007BB0C 48000392 */  lbu        $v1, 0x48($s0)
/* 95D0040 8007BB10 0000118E */  lw         $s1, 0x0($s0)
/* 95D0044 8007BB14 05006010 */  beqz       $v1, .Llevel_50_8007BB2C
/* 95D0048 8007BB18 01000224 */   addiu     $v0, $zero, 0x1
/* 95D004C 8007BB1C 3E006210 */  beq        $v1, $v0, .Llevel_50_8007BC18
/* 95D0050 8007BB20 00000000 */   nop
/* 95D0054 8007BB24 55EF0108 */  j          .Llevel_50_8007BD54
/* 95D0058 8007BB28 00000000 */   nop
.Llevel_50_8007BB2C:
/* 95D005C 8007BB2C 5400238E */  lw         $v1, 0x54($s1)
/* 95D0060 8007BB30 3D000492 */  lbu        $a0, 0x3D($s0)
/* 95D0064 8007BB34 40100300 */  sll        $v0, $v1, 1
/* 95D0068 8007BB38 21104300 */  addu       $v0, $v0, $v1
/* 95D006C 8007BB3C 80100200 */  sll        $v0, $v0, 2
/* 95D0070 8007BB40 23104300 */  subu       $v0, $v0, $v1
/* 95D0074 8007BB44 0780033C */  lui        $v1, %hi(D_8006C550)
/* 95D0078 8007BB48 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 95D007C 8007BB4C C0100200 */  sll        $v0, $v0, 3
/* 95D0080 8007BB50 09008010 */  beqz       $a0, .Llevel_50_8007BB78
/* 95D0084 8007BB54 21906200 */   addu      $s2, $v1, $v0
/* 95D0088 8007BB58 21200002 */  addu       $a0, $s0, $zero
/* 95D008C 8007BB5C 72000224 */  addiu      $v0, $zero, 0x72
/* 95D0090 8007BB60 0780013C */  lui        $at, %hi(D_8006C770)
/* 95D0094 8007BB64 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 95D0098 8007BB68 400002A2 */  sb         $v0, 0x40($s0)
/* 95D009C 8007BB6C 3D0000A2 */  sb         $zero, 0x3D($s0)
/* 95D00A0 8007BB70 CDD5000C */  jal        func_80035734
/* 95D00A4 8007BB74 3F0000A2 */   sb        $zero, 0x3F($s0)
.Llevel_50_8007BB78:
/* 95D00A8 8007BB78 0780043C */  lui        $a0, %hi(D_80070328 + 0x244)
/* 95D00AC 8007BB7C 6C058424 */  addiu      $a0, $a0, %lo(D_80070328 + 0x244)
/* 95D00B0 8007BB80 0000828C */  lw         $v0, 0x0($a0)
/* 95D00B4 8007BB84 00000000 */  nop
/* 95D00B8 8007BB88 14004010 */  beqz       $v0, .Llevel_50_8007BBDC
/* 95D00BC 8007BB8C 00000000 */   nop
/* 95D00C0 8007BB90 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 95D00C4 8007BB94 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 95D00C8 8007BB98 00000000 */  nop
/* 95D00CC 8007BB9C 36004384 */  lh         $v1, 0x36($v0)
/* 95D00D0 8007BBA0 72000224 */  addiu      $v0, $zero, 0x72
/* 95D00D4 8007BBA4 0D006214 */  bne        $v1, $v0, .Llevel_50_8007BBDC
/* 95D00D8 8007BBA8 BCFD8424 */   addiu     $a0, $a0, -0x244
/* 95D00DC 8007BBAC 38002526 */  addiu      $a1, $s1, 0x38
/* 95D00E0 8007BBB0 21300000 */  addu       $a2, $zero, $zero
/* 95D00E4 8007BBB4 88D8000C */  jal        func_80036220
/* 95D00E8 8007BBB8 88130724 */   addiu     $a3, $zero, 0x1388
/* 95D00EC 8007BBBC 07004010 */  beqz       $v0, .Llevel_50_8007BBDC
/* 95D00F0 8007BBC0 00000000 */   nop
/* 95D00F4 8007BBC4 0780043C */  lui        $a0, %hi(D_8006D088)
/* 95D00F8 8007BBC8 88D08424 */  addiu      $a0, $a0, %lo(D_8006D088)
/* 95D00FC 8007BBCC D3ED000C */  jal        func_8003B74C
/* 95D0100 8007BBD0 00000000 */   nop
/* 95D0104 8007BBD4 55EF0108 */  j          .Llevel_50_8007BD54
/* 95D0108 8007BBD8 00000000 */   nop
.Llevel_50_8007BBDC:
/* 95D010C 8007BBDC 48004392 */  lbu        $v1, 0x48($s2)
/* 95D0110 8007BBE0 01000224 */  addiu      $v0, $zero, 0x1
/* 95D0114 8007BBE4 5B006210 */  beq        $v1, $v0, .Llevel_50_8007BD54
/* 95D0118 8007BBE8 21200002 */   addu      $a0, $s0, $zero
/* 95D011C 8007BBEC EFDE000C */  jal        func_80037BBC
/* 95D0120 8007BBF0 21280000 */   addu      $a1, $zero, $zero
/* 95D0124 8007BBF4 57004010 */  beqz       $v0, .Llevel_50_8007BD54
/* 95D0128 8007BBF8 21200002 */   addu      $a0, $s0, $zero
/* 95D012C 8007BBFC 21280000 */  addu       $a1, $zero, $zero
/* 95D0130 8007BC00 01000624 */  addiu      $a2, $zero, 0x1
/* 95D0134 8007BC04 B944010C */  jal        func_800512E4
/* 95D0138 8007BC08 500020AE */   sw        $zero, 0x50($s1)
/* 95D013C 8007BC0C 01000224 */  addiu      $v0, $zero, 0x1
/* 95D0140 8007BC10 55EF0108 */  j          .Llevel_50_8007BD54
/* 95D0144 8007BC14 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_50_8007BC18:
/* 95D0148 8007BC18 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 95D014C 8007BC1C 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 95D0150 8007BC20 00000000 */  nop
/* 95D0154 8007BC24 0D004014 */  bnez       $v0, .Llevel_50_8007BC5C
/* 95D0158 8007BC28 00000000 */   nop
/* 95D015C 8007BC2C 0780023C */  lui        $v0, %hi(D_80070328 + 0x280)
/* 95D0160 8007BC30 A805428C */  lw         $v0, %lo(D_80070328 + 0x280)($v0)
/* 95D0164 8007BC34 00000000 */  nop
/* 95D0168 8007BC38 08004018 */  blez       $v0, .Llevel_50_8007BC5C
/* 95D016C 8007BC3C 78000424 */   addiu     $a0, $zero, 0x78
/* 95D0170 8007BC40 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 95D0174 8007BC44 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 95D0178 8007BC48 00000000 */  nop
/* 95D017C 8007BC4C 09F84000 */  jalr       $v0
/* 95D0180 8007BC50 21280002 */   addu      $a1, $s0, $zero
/* 95D0184 8007BC54 0780013C */  lui        $at, %hi(D_8006C65C)
/* 95D0188 8007BC58 5CC622AC */  sw         $v0, %lo(D_8006C65C)($at)
.Llevel_50_8007BC5C:
/* 95D018C 8007BC5C 0780033C */  lui        $v1, %hi(D_8006E344)
/* 95D0190 8007BC60 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 95D0194 8007BC64 01000224 */  addiu      $v0, $zero, 0x1
/* 95D0198 8007BC68 3A006210 */  beq        $v1, $v0, .Llevel_50_8007BD54
/* 95D019C 8007BC6C 00000000 */   nop
/* 95D01A0 8007BC70 5400238E */  lw         $v1, 0x54($s1)
/* 95D01A4 8007BC74 500020AE */  sw         $zero, 0x50($s1)
/* 95D01A8 8007BC78 40100300 */  sll        $v0, $v1, 1
/* 95D01AC 8007BC7C 21104300 */  addu       $v0, $v0, $v1
/* 95D01B0 8007BC80 80100200 */  sll        $v0, $v0, 2
/* 95D01B4 8007BC84 23104300 */  subu       $v0, $v0, $v1
/* 95D01B8 8007BC88 0780033C */  lui        $v1, %hi(D_8006C550)
/* 95D01BC 8007BC8C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 95D01C0 8007BC90 C0100200 */  sll        $v0, $v0, 3
/* 95D01C4 8007BC94 21906200 */  addu       $s2, $v1, $v0
/* 95D01C8 8007BC98 04002392 */  lbu        $v1, 0x4($s1)
/* 95D01CC 8007BC9C 02000224 */  addiu      $v0, $zero, 0x2
/* 95D01D0 8007BCA0 2B006214 */  bne        $v1, $v0, .Llevel_50_8007BD50
/* 95D01D4 8007BCA4 1000A427 */   addiu     $a0, $sp, 0x10
/* 95D01D8 8007BCA8 5E3C010C */  jal        func_8004F178
/* 95D01DC 8007BCAC 0C000526 */   addiu     $a1, $s0, 0xC
/* 95D01E0 8007BCB0 46000292 */  lbu        $v0, 0x46($s0)
/* 95D01E4 8007BCB4 00000000 */  nop
/* 95D01E8 8007BCB8 40100200 */  sll        $v0, $v0, 1
/* 95D01EC 8007BCBC 0680013C */  lui        $at, %hi(D_80065920)
/* 95D01F0 8007BCC0 21082200 */  addu       $at, $at, $v0
/* 95D01F4 8007BCC4 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 95D01F8 8007BCC8 1000A78F */  lw         $a3, 0x10($sp)
/* 95D01FC 8007BCCC 40100300 */  sll        $v0, $v1, 1
/* 95D0200 8007BCD0 21104300 */  addu       $v0, $v0, $v1
/* 95D0204 8007BCD4 80100200 */  sll        $v0, $v0, 2
/* 95D0208 8007BCD8 21104300 */  addu       $v0, $v0, $v1
/* 95D020C 8007BCDC 43110200 */  sra        $v0, $v0, 5
/* 95D0210 8007BCE0 2138E200 */  addu       $a3, $a3, $v0
/* 95D0214 8007BCE4 1000A7AF */  sw         $a3, 0x10($sp)
/* 95D0218 8007BCE8 46000292 */  lbu        $v0, 0x46($s0)
/* 95D021C 8007BCEC 21300000 */  addu       $a2, $zero, $zero
/* 95D0220 8007BCF0 40100200 */  sll        $v0, $v0, 1
/* 95D0224 8007BCF4 0680013C */  lui        $at, %hi(D_800658A0)
/* 95D0228 8007BCF8 21082200 */  addu       $at, $at, $v0
/* 95D022C 8007BCFC A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 95D0230 8007BD00 1400A58F */  lw         $a1, 0x14($sp)
/* 95D0234 8007BD04 40100300 */  sll        $v0, $v1, 1
/* 95D0238 8007BD08 21104300 */  addu       $v0, $v0, $v1
/* 95D023C 8007BD0C 80100200 */  sll        $v0, $v0, 2
/* 95D0240 8007BD10 21104300 */  addu       $v0, $v0, $v1
/* 95D0244 8007BD14 43110200 */  sra        $v0, $v0, 5
/* 95D0248 8007BD18 2128A200 */  addu       $a1, $a1, $v0
/* 95D024C 8007BD1C 1400A5AF */  sw         $a1, 0x14($sp)
/* 95D0250 8007BD20 0C00048E */  lw         $a0, 0xC($s0)
/* 95D0254 8007BD24 1000028E */  lw         $v0, 0x10($s0)
/* 95D0258 8007BD28 23208700 */  subu       $a0, $a0, $a3
/* 95D025C 8007BD2C 203A010C */  jal        func_8004E880
/* 95D0260 8007BD30 23284500 */   subu      $a1, $v0, $a1
/* 95D0264 8007BD34 0780043C */  lui        $a0, %hi(D_8006D088)
/* 95D0268 8007BD38 88D08424 */  addiu      $a0, $a0, %lo(D_8006D088)
/* 95D026C 8007BD3C 1000A527 */  addiu      $a1, $sp, 0x10
/* 95D0270 8007BD40 8DED000C */  jal        func_8003B634
/* 95D0274 8007BD44 FF004630 */   andi      $a2, $v0, 0xFF
/* 95D0278 8007BD48 01000224 */  addiu      $v0, $zero, 0x1
/* 95D027C 8007BD4C 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_50_8007BD50:
/* 95D0280 8007BD50 480000A2 */  sb         $zero, 0x48($s0)
.Llevel_50_8007BD54:
/* 95D0284 8007BD54 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 95D0288 8007BD58 2800B28F */  lw         $s2, 0x28($sp)
/* 95D028C 8007BD5C 2400B18F */  lw         $s1, 0x24($sp)
/* 95D0290 8007BD60 2000B08F */  lw         $s0, 0x20($sp)
/* 95D0294 8007BD64 3000BD27 */  addiu      $sp, $sp, 0x30
/* 95D0298 8007BD68 0800E003 */  jr         $ra
/* 95D029C 8007BD6C 00000000 */   nop
.size MobyUpdate_39_level_50, . - MobyUpdate_39_level_50
