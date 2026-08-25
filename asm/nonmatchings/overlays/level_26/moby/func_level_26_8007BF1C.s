.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_26_8007BF1C
/* 622BC4C 8007BF1C 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 622BC50 8007BF20 5800B4AF */  sw         $s4, 0x58($sp)
/* 622BC54 8007BF24 21A08000 */  addu       $s4, $a0, $zero
/* 622BC58 8007BF28 6000BFAF */  sw         $ra, 0x60($sp)
/* 622BC5C 8007BF2C 5C00B5AF */  sw         $s5, 0x5C($sp)
/* 622BC60 8007BF30 5400B3AF */  sw         $s3, 0x54($sp)
/* 622BC64 8007BF34 5000B2AF */  sw         $s2, 0x50($sp)
/* 622BC68 8007BF38 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 622BC6C 8007BF3C 4800B0AF */  sw         $s0, 0x48($sp)
/* 622BC70 8007BF40 48009092 */  lbu        $s0, 0x48($s4)
/* 622BC74 8007BF44 0000928E */  lw         $s2, 0x0($s4)
/* 622BC78 8007BF48 05000012 */  beqz       $s0, .Llevel_26_8007BF60
/* 622BC7C 8007BF4C 01000224 */   addiu     $v0, $zero, 0x1
/* 622BC80 8007BF50 6E000212 */  beq        $s0, $v0, .Llevel_26_8007C10C
/* 622BC84 8007BF54 00000000 */   nop
/* 622BC88 8007BF58 E8F00108 */  j          .Llevel_26_8007C3A0
/* 622BC8C 8007BF5C 00000000 */   nop
.Llevel_26_8007BF60:
/* 622BC90 8007BF60 0780023C */  lui        $v0, %hi(D_8006C640)
/* 622BC94 8007BF64 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 622BC98 8007BF68 00000000 */  nop
/* 622BC9C 8007BF6C 19004014 */  bnez       $v0, .Llevel_26_8007BFD4
/* 622BCA0 8007BF70 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 622BCA4 8007BF74 2800438E */  lw         $v1, 0x28($s2)
/* 622BCA8 8007BF78 00000000 */  nop
/* 622BCAC 8007BF7C 15006210 */  beq        $v1, $v0, .Llevel_26_8007BFD4
/* 622BCB0 8007BF80 40100300 */   sll       $v0, $v1, 1
/* 622BCB4 8007BF84 21104300 */  addu       $v0, $v0, $v1
/* 622BCB8 8007BF88 80100200 */  sll        $v0, $v0, 2
/* 622BCBC 8007BF8C 23104300 */  subu       $v0, $v0, $v1
/* 622BCC0 8007BF90 0780033C */  lui        $v1, %hi(D_8006C550)
/* 622BCC4 8007BF94 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 622BCC8 8007BF98 C0100200 */  sll        $v0, $v0, 3
/* 622BCCC 8007BF9C 21104300 */  addu       $v0, $v0, $v1
/* 622BCD0 8007BFA0 48004290 */  lbu        $v0, 0x48($v0)
/* 622BCD4 8007BFA4 00000000 */  nop
/* 622BCD8 8007BFA8 8000422C */  sltiu      $v0, $v0, 0x80
/* 622BCDC 8007BFAC 09004014 */  bnez       $v0, .Llevel_26_8007BFD4
/* 622BCE0 8007BFB0 48008426 */   addiu     $a0, $s4, 0x48
/* 622BCE4 8007BFB4 01000524 */  addiu      $a1, $zero, 0x1
/* 622BCE8 8007BFB8 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 622BCEC 8007BFBC F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 622BCF0 8007BFC0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 622BCF4 8007BFC4 4A0082A2 */  sb         $v0, 0x4A($s4)
/* 622BCF8 8007BFC8 01000224 */  addiu      $v0, $zero, 0x1
/* 622BCFC 8007BFCC EDED000C */  jal        func_8003B7B4
/* 622BD00 8007BFD0 480082A2 */   sb        $v0, 0x48($s4)
.Llevel_26_8007BFD4:
/* 622BD04 8007BFD4 2400428E */  lw         $v0, 0x24($s2)
/* 622BD08 8007BFD8 00000000 */  nop
/* 622BD0C 8007BFDC 1D004010 */  beqz       $v0, .Llevel_26_8007C054
/* 622BD10 8007BFE0 00000000 */   nop
/* 622BD14 8007BFE4 0780023C */  lui        $v0, %hi(D_8006C640)
/* 622BD18 8007BFE8 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 622BD1C 8007BFEC 00000000 */  nop
/* 622BD20 8007BFF0 18004014 */  bnez       $v0, .Llevel_26_8007C054
/* 622BD24 8007BFF4 00000000 */   nop
/* 622BD28 8007BFF8 0780023C */  lui        $v0, %hi(D_8006C7B4)
/* 622BD2C 8007BFFC B4C74290 */  lbu        $v0, %lo(D_8006C7B4)($v0)
/* 622BD30 8007C000 00000000 */  nop
/* 622BD34 8007C004 01004230 */  andi       $v0, $v0, 0x1
/* 622BD38 8007C008 0A004014 */  bnez       $v0, .Llevel_26_8007C034
/* 622BD3C 8007C00C 48008426 */   addiu     $a0, $s4, 0x48
/* 622BD40 8007C010 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 622BD44 8007C014 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 622BD48 8007C018 0780013C */  lui        $at, %hi(D_80070300)
/* 622BD4C 8007C01C 21082200 */  addu       $at, $at, $v0
/* 622BD50 8007C020 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 622BD54 8007C024 00000000 */  nop
/* 622BD58 8007C028 01004230 */  andi       $v0, $v0, 0x1
/* 622BD5C 8007C02C 09004010 */  beqz       $v0, .Llevel_26_8007C054
/* 622BD60 8007C030 00000000 */   nop
.Llevel_26_8007C034:
/* 622BD64 8007C034 01000524 */  addiu      $a1, $zero, 0x1
/* 622BD68 8007C038 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 622BD6C 8007C03C F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 622BD70 8007C040 FF000224 */  addiu      $v0, $zero, 0xFF
/* 622BD74 8007C044 4A0082A2 */  sb         $v0, 0x4A($s4)
/* 622BD78 8007C048 01000224 */  addiu      $v0, $zero, 0x1
/* 622BD7C 8007C04C EDED000C */  jal        func_8003B7B4
/* 622BD80 8007C050 480082A2 */   sb        $v0, 0x48($s4)
.Llevel_26_8007C054:
/* 622BD84 8007C054 0000428E */  lw         $v0, 0x0($s2)
/* 622BD88 8007C058 0780033C */  lui        $v1, %hi(D_8006D048 + 0x14)
/* 622BD8C 8007C05C 5CD0638C */  lw         $v1, %lo(D_8006D048 + 0x14)($v1)
/* 622BD90 8007C060 80100200 */  sll        $v0, $v0, 2
/* 622BD94 8007C064 21104300 */  addu       $v0, $v0, $v1
/* 622BD98 8007C068 0780033C */  lui        $v1, %hi(D_8006C640)
/* 622BD9C 8007C06C 40C6638C */  lw         $v1, %lo(D_8006C640)($v1)
/* 622BDA0 8007C070 0000448C */  lw         $a0, 0x0($v0)
/* 622BDA4 8007C074 02006014 */  bnez       $v1, .Llevel_26_8007C080
/* 622BDA8 8007C078 00000000 */   nop
/* 622BDAC 8007C07C 040080AC */  sw         $zero, 0x4($a0)
.Llevel_26_8007C080:
/* 622BDB0 8007C080 0400828C */  lw         $v0, 0x4($a0)
/* 622BDB4 8007C084 0800438E */  lw         $v1, 0x8($s2)
/* 622BDB8 8007C088 00000000 */  nop
/* 622BDBC 8007C08C 24104300 */  and        $v0, $v0, $v1
/* 622BDC0 8007C090 C3004010 */  beqz       $v0, .Llevel_26_8007C3A0
/* 622BDC4 8007C094 01000224 */   addiu     $v0, $zero, 0x1
/* 622BDC8 8007C098 040080AC */  sw         $zero, 0x4($a0)
/* 622BDCC 8007C09C 480082A2 */  sb         $v0, 0x48($s4)
/* 622BDD0 8007C0A0 0780043C */  lui        $a0, %hi(D_8006C5BC)
/* 622BDD4 8007C0A4 BCC5848C */  lw         $a0, %lo(D_8006C5BC)($a0)
/* 622BDD8 8007C0A8 15000224 */  addiu      $v0, $zero, 0x15
/* 622BDDC 8007C0AC 06008214 */  bne        $a0, $v0, .Llevel_26_8007C0C8
/* 622BDE0 8007C0B0 1A000224 */   addiu     $v0, $zero, 0x1A
/* 622BDE4 8007C0B4 0780033C */  lui        $v1, %hi(D_8006C5C8)
/* 622BDE8 8007C0B8 C8C5638C */  lw         $v1, %lo(D_8006C5C8)($v1)
/* 622BDEC 8007C0BC 01000224 */  addiu      $v0, $zero, 0x1
/* 622BDF0 8007C0C0 03006210 */  beq        $v1, $v0, .Llevel_26_8007C0D0
/* 622BDF4 8007C0C4 1A000224 */   addiu     $v0, $zero, 0x1A
.Llevel_26_8007C0C8:
/* 622BDF8 8007C0C8 09008214 */  bne        $a0, $v0, .Llevel_26_8007C0F0
/* 622BDFC 8007C0CC 00000000 */   nop
.Llevel_26_8007C0D0:
/* 622BE00 8007C0D0 48009026 */  addiu      $s0, $s4, 0x48
/* 622BE04 8007C0D4 21200002 */  addu       $a0, $s0, $zero
/* 622BE08 8007C0D8 0780063C */  lui        $a2, %hi(D_8006D088)
/* 622BE0C 8007C0DC 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 622BE10 8007C0E0 EDED000C */  jal        func_8003B7B4
/* 622BE14 8007C0E4 01000524 */   addiu     $a1, $zero, 0x1
/* 622BE18 8007C0E8 3DF00108 */  j          .Llevel_26_8007C0F4
/* 622BE1C 8007C0EC 21200002 */   addu      $a0, $s0, $zero
.Llevel_26_8007C0F0:
/* 622BE20 8007C0F0 48008426 */  addiu      $a0, $s4, 0x48
.Llevel_26_8007C0F4:
/* 622BE24 8007C0F4 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 622BE28 8007C0F8 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 622BE2C 8007C0FC EDED000C */  jal        func_8003B7B4
/* 622BE30 8007C100 01000524 */   addiu     $a1, $zero, 0x1
/* 622BE34 8007C104 E8F00108 */  j          .Llevel_26_8007C3A0
/* 622BE38 8007C108 00000000 */   nop
.Llevel_26_8007C10C:
/* 622BE3C 8007C10C 0780023C */  lui        $v0, %hi(D_8006C640)
/* 622BE40 8007C110 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 622BE44 8007C114 00000000 */  nop
/* 622BE48 8007C118 05004228 */  slti       $v0, $v0, 0x5
/* 622BE4C 8007C11C 9A004014 */  bnez       $v0, .Llevel_26_8007C388
/* 622BE50 8007C120 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 622BE54 8007C124 2000458E */  lw         $a1, 0x20($s2)
/* 622BE58 8007C128 00000000 */  nop
/* 622BE5C 8007C12C 0300A210 */  beq        $a1, $v0, .Llevel_26_8007C13C
/* 622BE60 8007C130 21208002 */   addu      $a0, $s4, $zero
/* 622BE64 8007C134 C4EE000C */  jal        func_8003BB10
/* 622BE68 8007C138 21300000 */   addu      $a2, $zero, $zero
.Llevel_26_8007C13C:
/* 622BE6C 8007C13C 1000438E */  lw         $v1, 0x10($s2)
/* 622BE70 8007C140 00000000 */  nop
/* 622BE74 8007C144 0F006014 */  bnez       $v1, .Llevel_26_8007C184
/* 622BE78 8007C148 00000000 */   nop
/* 622BE7C 8007C14C 0C004586 */  lh         $a1, 0xC($s2)
/* 622BE80 8007C150 00000000 */  nop
/* 622BE84 8007C154 8C00A004 */  bltz       $a1, .Llevel_26_8007C388
/* 622BE88 8007C158 00020224 */   addiu     $v0, $zero, 0x200
/* 622BE8C 8007C15C 0E004486 */  lh         $a0, 0xE($s2)
/* 622BE90 8007C160 1400A2AF */  sw         $v0, 0x14($sp)
/* 622BE94 8007C164 0780023C */  lui        $v0, %hi(SpawnFragments)
/* 622BE98 8007C168 5C43428C */  lw         $v0, %lo(SpawnFragments)($v0)
/* 622BE9C 8007C16C 1000A0AF */  sw         $zero, 0x10($sp)
/* 622BEA0 8007C170 1400478E */  lw         $a3, 0x14($s2)
/* 622BEA4 8007C174 09F84000 */  jalr       $v0
/* 622BEA8 8007C178 21308002 */   addu      $a2, $s4, $zero
/* 622BEAC 8007C17C E2F00108 */  j          .Llevel_26_8007C388
/* 622BEB0 8007C180 00000000 */   nop
.Llevel_26_8007C184:
/* 622BEB4 8007C184 2C007014 */  bne        $v1, $s0, .Llevel_26_8007C238
/* 622BEB8 8007C188 02000224 */   addiu     $v0, $zero, 0x2
/* 622BEBC 8007C18C 0C004286 */  lh         $v0, 0xC($s2)
/* 622BEC0 8007C190 00000000 */  nop
/* 622BEC4 8007C194 7C004004 */  bltz       $v0, .Llevel_26_8007C388
/* 622BEC8 8007C198 00000000 */   nop
/* 622BECC 8007C19C 0E004286 */  lh         $v0, 0xE($s2)
/* 622BED0 8007C1A0 00000000 */  nop
/* 622BED4 8007C1A4 78004018 */  blez       $v0, .Llevel_26_8007C388
/* 622BED8 8007C1A8 00000000 */   nop
/* 622BEDC 8007C1AC 21208002 */  addu       $a0, $s4, $zero
/* 622BEE0 8007C1B0 4957010C */  jal        func_80055D24
/* 622BEE4 8007C1B4 04000524 */   addiu     $a1, $zero, 0x4
/* 622BEE8 8007C1B8 0E004286 */  lh         $v0, 0xE($s2)
/* 622BEEC 8007C1BC 00000000 */  nop
/* 622BEF0 8007C1C0 71004018 */  blez       $v0, .Llevel_26_8007C388
/* 622BEF4 8007C1C4 21880000 */   addu      $s1, $zero, $zero
/* 622BEF8 8007C1C8 21980000 */  addu       $s3, $zero, $zero
.Llevel_26_8007C1CC:
/* 622BEFC 8007C1CC 0C004486 */  lh         $a0, 0xC($s2)
/* 622BF00 8007C1D0 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 622BF04 8007C1D4 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 622BF08 8007C1D8 00000000 */  nop
/* 622BF0C 8007C1DC 09F84000 */  jalr       $v0
/* 622BF10 8007C1E0 21288002 */   addu      $a1, $s4, $zero
/* 622BF14 8007C1E4 21804000 */  addu       $s0, $v0, $zero
/* 622BF18 8007C1E8 0C000012 */  beqz       $s0, .Llevel_26_8007C21C
/* 622BF1C 8007C1EC 1800A427 */   addiu     $a0, $sp, 0x18
/* 622BF20 8007C1F0 1400458E */  lw         $a1, 0x14($s2)
/* 622BF24 8007C1F4 5E3C010C */  jal        func_8004F178
/* 622BF28 8007C1F8 2128B300 */   addu      $a1, $a1, $s3
/* 622BF2C 8007C1FC 20008426 */  addiu      $a0, $s4, 0x20
/* 622BF30 8007C200 1800A527 */  addiu      $a1, $sp, 0x18
/* 622BF34 8007C204 5B3B010C */  jal        func_8004ED6C
/* 622BF38 8007C208 2130A000 */   addu      $a2, $a1, $zero
/* 622BF3C 8007C20C 0C000426 */  addiu      $a0, $s0, 0xC
/* 622BF40 8007C210 21288000 */  addu       $a1, $a0, $zero
/* 622BF44 8007C214 653C010C */  jal        func_8004F194
/* 622BF48 8007C218 1800A627 */   addiu     $a2, $sp, 0x18
.Llevel_26_8007C21C:
/* 622BF4C 8007C21C 0E004286 */  lh         $v0, 0xE($s2)
/* 622BF50 8007C220 01003126 */  addiu      $s1, $s1, 0x1
/* 622BF54 8007C224 2A102202 */  slt        $v0, $s1, $v0
/* 622BF58 8007C228 E8FF4014 */  bnez       $v0, .Llevel_26_8007C1CC
/* 622BF5C 8007C22C 0C007326 */   addiu     $s3, $s3, 0xC
/* 622BF60 8007C230 E2F00108 */  j          .Llevel_26_8007C388
/* 622BF64 8007C234 00000000 */   nop
.Llevel_26_8007C238:
/* 622BF68 8007C238 53006214 */  bne        $v1, $v0, .Llevel_26_8007C388
/* 622BF6C 8007C23C 00000000 */   nop
/* 622BF70 8007C240 0C004286 */  lh         $v0, 0xC($s2)
/* 622BF74 8007C244 00000000 */  nop
/* 622BF78 8007C248 4F004004 */  bltz       $v0, .Llevel_26_8007C388
/* 622BF7C 8007C24C 00000000 */   nop
/* 622BF80 8007C250 1C00428E */  lw         $v0, 0x1C($s2)
/* 622BF84 8007C254 00000000 */  nop
/* 622BF88 8007C258 4B004010 */  beqz       $v0, .Llevel_26_8007C388
/* 622BF8C 8007C25C 00000000 */   nop
/* 622BF90 8007C260 00004284 */  lh         $v0, 0x0($v0)
/* 622BF94 8007C264 00000000 */  nop
/* 622BF98 8007C268 47004018 */  blez       $v0, .Llevel_26_8007C388
/* 622BF9C 8007C26C 21980000 */   addu      $s3, $zero, $zero
/* 622BFA0 8007C270 2800B527 */  addiu      $s5, $sp, 0x28
.Llevel_26_8007C274:
/* 622BFA4 8007C274 0C004486 */  lh         $a0, 0xC($s2)
/* 622BFA8 8007C278 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 622BFAC 8007C27C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 622BFB0 8007C280 00000000 */  nop
/* 622BFB4 8007C284 09F84000 */  jalr       $v0
/* 622BFB8 8007C288 21288002 */   addu      $a1, $s4, $zero
/* 622BFBC 8007C28C 21804000 */  addu       $s0, $v0, $zero
/* 622BFC0 8007C290 36000012 */  beqz       $s0, .Llevel_26_8007C36C
/* 622BFC4 8007C294 0C001126 */   addiu     $s1, $s0, 0xC
/* 622BFC8 8007C298 21202002 */  addu       $a0, $s1, $zero
/* 622BFCC 8007C29C 1C00428E */  lw         $v0, 0x1C($s2)
/* 622BFD0 8007C2A0 00291300 */  sll        $a1, $s3, 4
/* 622BFD4 8007C2A4 0C00428C */  lw         $v0, 0xC($v0)
/* 622BFD8 8007C2A8 0000108E */  lw         $s0, 0x0($s0)
/* 622BFDC 8007C2AC 5E3C010C */  jal        func_8004F178
/* 622BFE0 8007C2B0 21284500 */   addu      $a1, $v0, $a1
/* 622BFE4 8007C2B4 2120A002 */  addu       $a0, $s5, $zero
/* 622BFE8 8007C2B8 21282002 */  addu       $a1, $s1, $zero
/* 622BFEC 8007C2BC 723C010C */  jal        func_8004F1C8
/* 622BFF0 8007C2C0 0C008626 */   addiu     $a2, $s4, 0xC
/* 622BFF4 8007C2C4 2120A002 */  addu       $a0, $s5, $zero
/* 622BFF8 8007C2C8 7A3B010C */  jal        func_8004EDE8
/* 622BFFC 8007C2CC 01000524 */   addiu     $a1, $zero, 0x1
/* 622C000 8007C2D0 2120A002 */  addu       $a0, $s5, $zero
/* 622C004 8007C2D4 21284000 */  addu       $a1, $v0, $zero
/* 622C008 8007C2D8 233C010C */  jal        func_8004F08C
/* 622C00C 8007C2DC 5A000624 */   addiu     $a2, $zero, 0x5A
/* 622C010 8007C2E0 46008292 */  lbu        $v0, 0x46($s4)
/* 622C014 8007C2E4 00000000 */  nop
/* 622C018 8007C2E8 40100200 */  sll        $v0, $v0, 1
/* 622C01C 8007C2EC 0680013C */  lui        $at, %hi(D_80065920)
/* 622C020 8007C2F0 21082200 */  addu       $at, $at, $v0
/* 622C024 8007C2F4 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 622C028 8007C2F8 00000000 */  nop
/* 622C02C 8007C2FC 00110300 */  sll        $v0, $v1, 4
/* 622C030 8007C300 23104300 */  subu       $v0, $v0, $v1
/* 622C034 8007C304 00000396 */  lhu        $v1, 0x0($s0)
/* 622C038 8007C308 43120200 */  sra        $v0, $v0, 9
/* 622C03C 8007C30C 21186200 */  addu       $v1, $v1, $v0
/* 622C040 8007C310 000003A6 */  sh         $v1, 0x0($s0)
/* 622C044 8007C314 46008292 */  lbu        $v0, 0x46($s4)
/* 622C048 8007C318 00000000 */  nop
/* 622C04C 8007C31C 40100200 */  sll        $v0, $v0, 1
/* 622C050 8007C320 0680013C */  lui        $at, %hi(D_800658A0)
/* 622C054 8007C324 21082200 */  addu       $at, $at, $v0
/* 622C058 8007C328 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 622C05C 8007C32C 00000000 */  nop
/* 622C060 8007C330 00110300 */  sll        $v0, $v1, 4
/* 622C064 8007C334 23104300 */  subu       $v0, $v0, $v1
/* 622C068 8007C338 02000396 */  lhu        $v1, 0x2($s0)
/* 622C06C 8007C33C 43120200 */  sra        $v0, $v0, 9
/* 622C070 8007C340 21186200 */  addu       $v1, $v1, $v0
/* 622C074 8007C344 020003A6 */  sh         $v1, 0x2($s0)
/* 622C078 8007C348 2800A28F */  lw         $v0, 0x28($sp)
/* 622C07C 8007C34C 00000000 */  nop
/* 622C080 8007C350 000002A6 */  sh         $v0, 0x0($s0)
/* 622C084 8007C354 2C00A28F */  lw         $v0, 0x2C($sp)
/* 622C088 8007C358 00000000 */  nop
/* 622C08C 8007C35C 020002A6 */  sh         $v0, 0x2($s0)
/* 622C090 8007C360 3000A28F */  lw         $v0, 0x30($sp)
/* 622C094 8007C364 00000000 */  nop
/* 622C098 8007C368 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_26_8007C36C:
/* 622C09C 8007C36C 1C00428E */  lw         $v0, 0x1C($s2)
/* 622C0A0 8007C370 00000000 */  nop
/* 622C0A4 8007C374 00004284 */  lh         $v0, 0x0($v0)
/* 622C0A8 8007C378 01007326 */  addiu      $s3, $s3, 0x1
/* 622C0AC 8007C37C 2A106202 */  slt        $v0, $s3, $v0
/* 622C0B0 8007C380 BCFF4014 */  bnez       $v0, .Llevel_26_8007C274
/* 622C0B4 8007C384 00000000 */   nop
.Llevel_26_8007C388:
/* 622C0B8 8007C388 0400448E */  lw         $a0, 0x4($s2)
/* 622C0BC 8007C38C FC000524 */  addiu      $a1, $zero, 0xFC
/* 622C0C0 8007C390 B687000C */  jal        func_80021ED8
/* 622C0C4 8007C394 21300000 */   addu      $a2, $zero, $zero
/* 622C0C8 8007C398 C656010C */  jal        func_80055B18
/* 622C0CC 8007C39C 21208002 */   addu      $a0, $s4, $zero
.Llevel_26_8007C3A0:
/* 622C0D0 8007C3A0 6000BF8F */  lw         $ra, 0x60($sp)
/* 622C0D4 8007C3A4 5C00B58F */  lw         $s5, 0x5C($sp)
/* 622C0D8 8007C3A8 5800B48F */  lw         $s4, 0x58($sp)
/* 622C0DC 8007C3AC 5400B38F */  lw         $s3, 0x54($sp)
/* 622C0E0 8007C3B0 5000B28F */  lw         $s2, 0x50($sp)
/* 622C0E4 8007C3B4 4C00B18F */  lw         $s1, 0x4C($sp)
/* 622C0E8 8007C3B8 4800B08F */  lw         $s0, 0x48($sp)
/* 622C0EC 8007C3BC 6800BD27 */  addiu      $sp, $sp, 0x68
/* 622C0F0 8007C3C0 0800E003 */  jr         $ra
/* 622C0F4 8007C3C4 00000000 */   nop
.size func_level_26_8007BF1C, . - func_level_26_8007BF1C
