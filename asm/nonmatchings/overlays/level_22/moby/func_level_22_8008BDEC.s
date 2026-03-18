.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_22_8008BDEC
/* 577BB1C 8008BDEC 78FFBD27 */  addiu      $sp, $sp, -0x88
/* 577BB20 8008BDF0 7800B6AF */  sw         $s6, 0x78($sp)
/* 577BB24 8008BDF4 21B08000 */  addu       $s6, $a0, $zero
/* 577BB28 8008BDF8 8400BFAF */  sw         $ra, 0x84($sp)
/* 577BB2C 8008BDFC 8000BEAF */  sw         $fp, 0x80($sp)
/* 577BB30 8008BE00 7C00B7AF */  sw         $s7, 0x7C($sp)
/* 577BB34 8008BE04 7400B5AF */  sw         $s5, 0x74($sp)
/* 577BB38 8008BE08 7000B4AF */  sw         $s4, 0x70($sp)
/* 577BB3C 8008BE0C 6C00B3AF */  sw         $s3, 0x6C($sp)
/* 577BB40 8008BE10 6800B2AF */  sw         $s2, 0x68($sp)
/* 577BB44 8008BE14 6400B1AF */  sw         $s1, 0x64($sp)
/* 577BB48 8008BE18 6000B0AF */  sw         $s0, 0x60($sp)
/* 577BB4C 8008BE1C 0000D78E */  lw         $s7, 0x0($s6)
/* 577BB50 8008BE20 00000000 */  nop
/* 577BB54 8008BE24 1000E58E */  lw         $a1, 0x10($s7)
/* 577BB58 8008BE28 F0EF000C */  jal        func_8003BFC0
/* 577BB5C 8008BE2C 00000000 */   nop
/* 577BB60 8008BE30 07004014 */  bnez       $v0, .Llevel_22_8008BE50
/* 577BB64 8008BE34 1800A427 */   addiu     $a0, $sp, 0x18
/* 577BB68 8008BE38 2120C002 */  addu       $a0, $s6, $zero
/* 577BB6C 8008BE3C 21280000 */  addu       $a1, $zero, $zero
/* 577BB70 8008BE40 AFEE000C */  jal        func_8003BABC
/* 577BB74 8008BE44 04000624 */   addiu     $a2, $zero, 0x4
/* 577BB78 8008BE48 9C2F0208 */  j          .Llevel_22_8008BE70
/* 577BB7C 8008BE4C 1000E2AE */   sw        $v0, 0x10($s7)
.Llevel_22_8008BE50:
/* 577BB80 8008BE50 5E3C010C */  jal        func_8004F178
/* 577BB84 8008BE54 2128E002 */   addu      $a1, $s7, $zero
/* 577BB88 8008BE58 1800A427 */  addiu      $a0, $sp, 0x18
/* 577BB8C 8008BE5C 443C010C */  jal        func_8004F110
/* 577BB90 8008BE60 01000524 */   addiu     $a1, $zero, 0x1
/* 577BB94 8008BE64 1000E48E */  lw         $a0, 0x10($s7)
/* 577BB98 8008BE68 05F0000C */  jal        func_8003C014
/* 577BB9C 8008BE6C 1800A527 */   addiu     $a1, $sp, 0x18
.Llevel_22_8008BE70:
/* 577BBA0 8008BE70 4800C392 */  lbu        $v1, 0x48($s6)
/* 577BBA4 8008BE74 00000000 */  nop
/* 577BBA8 8008BE78 05006010 */  beqz       $v1, .Llevel_22_8008BE90
/* 577BBAC 8008BE7C 01000224 */   addiu     $v0, $zero, 0x1
/* 577BBB0 8008BE80 79006210 */  beq        $v1, $v0, .Llevel_22_8008C068
/* 577BBB4 8008BE84 21F00000 */   addu      $fp, $zero, $zero
/* 577BBB8 8008BE88 73300208 */  j          .Llevel_22_8008C1CC
/* 577BBBC 8008BE8C 00000000 */   nop
.Llevel_22_8008BE90:
/* 577BBC0 8008BE90 4F00C392 */  lbu        $v1, 0x4F($s6)
/* 577BBC4 8008BE94 00000000 */  nop
/* 577BBC8 8008BE98 2100622C */  sltiu      $v0, $v1, 0x21
/* 577BBCC 8008BE9C 0C004014 */  bnez       $v0, .Llevel_22_8008BED0
/* 577BBD0 8008BEA0 00000000 */   nop
/* 577BBD4 8008BEA4 0780023C */  lui        $v0, %hi(D_8006C648)
/* 577BBD8 8008BEA8 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 577BBDC 8008BEAC 00000000 */  nop
/* 577BBE0 8008BEB0 80100200 */  sll        $v0, $v0, 2
/* 577BBE4 8008BEB4 23106200 */  subu       $v0, $v1, $v0
/* 577BBE8 8008BEB8 4F00C2A2 */  sb         $v0, 0x4F($s6)
/* 577BBEC 8008BEBC FF004230 */  andi       $v0, $v0, 0xFF
/* 577BBF0 8008BEC0 2000422C */  sltiu      $v0, $v0, 0x20
/* 577BBF4 8008BEC4 02004010 */  beqz       $v0, .Llevel_22_8008BED0
/* 577BBF8 8008BEC8 20000224 */   addiu     $v0, $zero, 0x20
/* 577BBFC 8008BECC 4F00C2A2 */  sb         $v0, 0x4F($s6)
.Llevel_22_8008BED0:
/* 577BC00 8008BED0 0C00C28E */  lw         $v0, 0xC($s6)
/* 577BC04 8008BED4 00000000 */  nop
/* 577BC08 8008BED8 00044228 */  slti       $v0, $v0, 0x400
/* 577BC0C 8008BEDC AF004014 */  bnez       $v0, .Llevel_22_8008C19C
/* 577BC10 8008BEE0 00000000 */   nop
/* 577BC14 8008BEE4 1000C28E */  lw         $v0, 0x10($s6)
/* 577BC18 8008BEE8 00000000 */  nop
/* 577BC1C 8008BEEC 00044228 */  slti       $v0, $v0, 0x400
/* 577BC20 8008BEF0 AA004014 */  bnez       $v0, .Llevel_22_8008C19C
/* 577BC24 8008BEF4 00000000 */   nop
/* 577BC28 8008BEF8 1400C28E */  lw         $v0, 0x14($s6)
/* 577BC2C 8008BEFC 00000000 */  nop
/* 577BC30 8008BF00 00044228 */  slti       $v0, $v0, 0x400
/* 577BC34 8008BF04 A5004014 */  bnez       $v0, .Llevel_22_8008C19C
/* 577BC38 8008BF08 1800A427 */   addiu     $a0, $sp, 0x18
/* 577BC3C 8008BF0C 0C00D126 */  addiu      $s1, $s6, 0xC
/* 577BC40 8008BF10 5E3C010C */  jal        func_8004F178
/* 577BC44 8008BF14 21282002 */   addu      $a1, $s1, $zero
/* 577BC48 8008BF18 21202002 */  addu       $a0, $s1, $zero
/* 577BC4C 8008BF1C 21282002 */  addu       $a1, $s1, $zero
/* 577BC50 8008BF20 653C010C */  jal        func_8004F194
/* 577BC54 8008BF24 2130E002 */   addu      $a2, $s7, $zero
/* 577BC58 8008BF28 21202002 */  addu       $a0, $s1, $zero
/* 577BC5C 8008BF2C 96000524 */  addiu      $a1, $zero, 0x96
/* 577BC60 8008BF30 A270000C */  jal        func_8001C288
/* 577BC64 8008BF34 01000624 */   addiu     $a2, $zero, 0x1
/* 577BC68 8008BF38 43004014 */  bnez       $v0, .Llevel_22_8008C048
/* 577BC6C 8008BF3C 01000224 */   addiu     $v0, $zero, 0x1
/* 577BC70 8008BF40 21202002 */  addu       $a0, $s1, $zero
/* 577BC74 8008BF44 2C010524 */  addiu      $a1, $zero, 0x12C
/* 577BC78 8008BF48 21300000 */  addu       $a2, $zero, $zero
/* 577BC7C 8008BF4C 0100023C */  lui        $v0, (0x10000 >> 16)
/* 577BC80 8008BF50 1000A2AF */  sw         $v0, 0x10($sp)
/* 577BC84 8008BF54 3A00C392 */  lbu        $v1, 0x3A($s6)
/* 577BC88 8008BF58 21380000 */  addu       $a3, $zero, $zero
/* 577BC8C 8008BF5C 40100300 */  sll        $v0, $v1, 1
/* 577BC90 8008BF60 21104300 */  addu       $v0, $v0, $v1
/* 577BC94 8008BF64 80100200 */  sll        $v0, $v0, 2
/* 577BC98 8008BF68 23104300 */  subu       $v0, $v0, $v1
/* 577BC9C 8008BF6C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 577BCA0 8008BF70 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 577BCA4 8008BF74 C0100200 */  sll        $v0, $v0, 3
/* 577BCA8 8008BF78 21186200 */  addu       $v1, $v1, $v0
/* 577BCAC 8008BF7C 8C6E000C */  jal        func_8001BA30
/* 577BCB0 8008BF80 1400A3AF */   sw        $v1, 0x14($sp)
/* 577BCB4 8008BF84 21804000 */  addu       $s0, $v0, $zero
/* 577BCB8 8008BF88 0B000012 */  beqz       $s0, .Llevel_22_8008BFB8
/* 577BCBC 8008BF8C 0C00E426 */   addiu     $a0, $s7, 0xC
/* 577BCC0 8008BF90 0000E48E */  lw         $a0, 0x0($s7)
/* 577BCC4 8008BF94 0400E58E */  lw         $a1, 0x4($s7)
/* 577BCC8 8008BF98 203A010C */  jal        func_8004E880
/* 577BCCC 8008BF9C 21300000 */   addu      $a2, $zero, $zero
/* 577BCD0 8008BFA0 510002A2 */  sb         $v0, 0x51($s0)
/* 577BCD4 8008BFA4 FF004230 */  andi       $v0, $v0, 0xFF
/* 577BCD8 8008BFA8 27004014 */  bnez       $v0, .Llevel_22_8008C048
/* 577BCDC 8008BFAC 01000224 */   addiu     $v0, $zero, 0x1
/* 577BCE0 8008BFB0 12300208 */  j          .Llevel_22_8008C048
/* 577BCE4 8008BFB4 510002A2 */   sb        $v0, 0x51($s0)
.Llevel_22_8008BFB8:
/* 577BCE8 8008BFB8 69D6000C */  jal        func_800359A4
/* 577BCEC 8008BFBC 04000524 */   addiu     $a1, $zero, 0x4
/* 577BCF0 8008BFC0 76004014 */  bnez       $v0, .Llevel_22_8008C19C
/* 577BCF4 8008BFC4 00000000 */   nop
/* 577BCF8 8008BFC8 0780023C */  lui        $v0, %hi(D_8006C640)
/* 577BCFC 8008BFCC 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 577BD00 8008BFD0 00000000 */  nop
/* 577BD04 8008BFD4 01004230 */  andi       $v0, $v0, 0x1
/* 577BD08 8008BFD8 16004010 */  beqz       $v0, .Llevel_22_8008C034
/* 577BD0C 8008BFDC 2800B027 */   addiu     $s0, $sp, 0x28
/* 577BD10 8008BFE0 21200002 */  addu       $a0, $s0, $zero
/* 577BD14 8008BFE4 5E3C010C */  jal        func_8004F178
/* 577BD18 8008BFE8 21282002 */   addu      $a1, $s1, $zero
/* 577BD1C 8008BFEC 9171010C */  jal        rand
/* 577BD20 8008BFF0 00000000 */   nop
/* 577BD24 8008BFF4 07004230 */  andi       $v0, $v0, 0x7
/* 577BD28 8008BFF8 9171010C */  jal        rand
/* 577BD2C 8008BFFC 3800A2AF */   sw        $v0, 0x38($sp)
/* 577BD30 8008C000 07000424 */  addiu      $a0, $zero, 0x7
/* 577BD34 8008C004 0B000524 */  addiu      $a1, $zero, 0xB
/* 577BD38 8008C008 07004230 */  andi       $v0, $v0, 0x7
/* 577BD3C 8008C00C DBD8000C */  jal        func_8003636C
/* 577BD40 8008C010 3C00A2AF */   sw        $v0, 0x3C($sp)
/* 577BD44 8008C014 01000424 */  addiu      $a0, $zero, 0x1
/* 577BD48 8008C018 0D000524 */  addiu      $a1, $zero, 0xD
/* 577BD4C 8008C01C 21300002 */  addu       $a2, $s0, $zero
/* 577BD50 8008C020 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 577BD54 8008C024 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 577BD58 8008C028 3800A727 */  addiu      $a3, $sp, 0x38
/* 577BD5C 8008C02C 09F86000 */  jalr       $v1
/* 577BD60 8008C030 4000A2AF */   sw        $v0, 0x40($sp)
.Llevel_22_8008C034:
/* 577BD64 8008C034 1800A427 */  addiu      $a0, $sp, 0x18
/* 577BD68 8008C038 DA60000C */  jal        func_80018368
/* 577BD6C 8008C03C 21282002 */   addu      $a1, $s1, $zero
/* 577BD70 8008C040 03004010 */  beqz       $v0, .Llevel_22_8008C050
/* 577BD74 8008C044 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_22_8008C048:
/* 577BD78 8008C048 73300208 */  j          .Llevel_22_8008C1CC
/* 577BD7C 8008C04C 4800C2A2 */   sb        $v0, 0x48($s6)
.Llevel_22_8008C050:
/* 577BD80 8008C050 4ED7000C */  jal        func_80035D38
/* 577BD84 8008C054 2120C002 */   addu      $a0, $s6, $zero
/* 577BD88 8008C058 A758010C */  jal        func_8005629C
/* 577BD8C 8008C05C 2120C002 */   addu      $a0, $s6, $zero
/* 577BD90 8008C060 73300208 */  j          .Llevel_22_8008C1CC
/* 577BD94 8008C064 00000000 */   nop
.Llevel_22_8008C068:
/* 577BD98 8008C068 4800B527 */  addiu      $s5, $sp, 0x48
/* 577BD9C 8008C06C 3800A827 */  addiu      $t0, $sp, 0x38
/* 577BDA0 8008C070 5800A8AF */  sw         $t0, 0x58($sp)
.Llevel_22_8008C074:
/* 577BDA4 8008C074 28000424 */  addiu      $a0, $zero, 0x28
/* 577BDA8 8008C078 DBD8000C */  jal        func_8003636C
/* 577BDAC 8008C07C 3C000524 */   addiu     $a1, $zero, 0x3C
/* 577BDB0 8008C080 28000424 */  addiu      $a0, $zero, 0x28
/* 577BDB4 8008C084 3C000524 */  addiu      $a1, $zero, 0x3C
/* 577BDB8 8008C088 DBD8000C */  jal        func_8003636C
/* 577BDBC 8008C08C 21984000 */   addu      $s3, $v0, $zero
/* 577BDC0 8008C090 9171010C */  jal        rand
/* 577BDC4 8008C094 21A04000 */   addu      $s4, $v0, $zero
/* 577BDC8 8008C098 21200000 */  addu       $a0, $zero, $zero
/* 577BDCC 8008C09C 00080524 */  addiu      $a1, $zero, 0x800
/* 577BDD0 8008C0A0 DBD8000C */  jal        func_8003636C
/* 577BDD4 8008C0A4 FF0F5230 */   andi      $s2, $v0, 0xFFF
/* 577BDD8 8008C0A8 21884000 */  addu       $s1, $v0, $zero
/* 577BDDC 8008C0AC 8B3A010C */  jal        func_8004EA2C
/* 577BDE0 8008C0B0 21202002 */   addu      $a0, $s1, $zero
/* 577BDE4 8008C0B4 21204002 */  addu       $a0, $s2, $zero
/* 577BDE8 8008C0B8 8B3A010C */  jal        func_8004EA2C
/* 577BDEC 8008C0BC 21804000 */   addu      $s0, $v0, $zero
/* 577BDF0 8008C0C0 18005300 */  mult       $v0, $s3
/* 577BDF4 8008C0C4 12400000 */  mflo       $t0
/* 577BDF8 8008C0C8 83811000 */  sra        $s0, $s0, 6
/* 577BDFC 8008C0CC 00000000 */  nop
/* 577BE00 8008C0D0 18000802 */  mult       $s0, $t0
/* 577BE04 8008C0D4 21202002 */  addu       $a0, $s1, $zero
/* 577BE08 8008C0D8 12400000 */  mflo       $t0
/* 577BE0C 8008C0DC 83140800 */  sra        $v0, $t0, 18
/* 577BE10 8008C0E0 8B3A010C */  jal        func_8004EA2C
/* 577BE14 8008C0E4 3800A2AF */   sw        $v0, 0x38($sp)
/* 577BE18 8008C0E8 21204002 */  addu       $a0, $s2, $zero
/* 577BE1C 8008C0EC 793A010C */  jal        func_8004E9E4
/* 577BE20 8008C0F0 21804000 */   addu      $s0, $v0, $zero
/* 577BE24 8008C0F4 18005300 */  mult       $v0, $s3
/* 577BE28 8008C0F8 12400000 */  mflo       $t0
/* 577BE2C 8008C0FC 83811000 */  sra        $s0, $s0, 6
/* 577BE30 8008C100 00000000 */  nop
/* 577BE34 8008C104 18000802 */  mult       $s0, $t0
/* 577BE38 8008C108 21202002 */  addu       $a0, $s1, $zero
/* 577BE3C 8008C10C 12400000 */  mflo       $t0
/* 577BE40 8008C110 83140800 */  sra        $v0, $t0, 18
/* 577BE44 8008C114 793A010C */  jal        func_8004E9E4
/* 577BE48 8008C118 3C00A2AF */   sw        $v0, 0x3C($sp)
/* 577BE4C 8008C11C 18005400 */  mult       $v0, $s4
/* 577BE50 8008C120 0100DE27 */  addiu      $fp, $fp, 0x1
/* 577BE54 8008C124 2120A002 */  addu       $a0, $s5, $zero
/* 577BE58 8008C128 5800A58F */  lw         $a1, 0x58($sp)
/* 577BE5C 8008C12C 12400000 */  mflo       $t0
/* 577BE60 8008C130 03130800 */  sra        $v0, $t0, 12
/* 577BE64 8008C134 5E3C010C */  jal        func_8004F178
/* 577BE68 8008C138 4000A2AF */   sw        $v0, 0x40($sp)
/* 577BE6C 8008C13C 2120A002 */  addu       $a0, $s5, $zero
/* 577BE70 8008C140 3A3C010C */  jal        func_8004F0E8
/* 577BE74 8008C144 01000524 */   addiu     $a1, $zero, 0x1
/* 577BE78 8008C148 2120A002 */  addu       $a0, $s5, $zero
/* 577BE7C 8008C14C 2128A002 */  addu       $a1, $s5, $zero
/* 577BE80 8008C150 653C010C */  jal        func_8004F194
/* 577BE84 8008C154 0C00C626 */   addiu     $a2, $s6, 0xC
/* 577BE88 8008C158 01000424 */  addiu      $a0, $zero, 0x1
/* 577BE8C 8008C15C 0D000524 */  addiu      $a1, $zero, 0xD
/* 577BE90 8008C160 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 577BE94 8008C164 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 577BE98 8008C168 5800A78F */  lw         $a3, 0x58($sp)
/* 577BE9C 8008C16C 09F84000 */  jalr       $v0
/* 577BEA0 8008C170 2130A002 */   addu      $a2, $s5, $zero
/* 577BEA4 8008C174 1400C22B */  slti       $v0, $fp, 0x14
/* 577BEA8 8008C178 BEFF4014 */  bnez       $v0, .Llevel_22_8008C074
/* 577BEAC 8008C17C 0C00C626 */   addiu     $a2, $s6, 0xC
/* 577BEB0 8008C180 0A000424 */  addiu      $a0, $zero, 0xA
/* 577BEB4 8008C184 46000524 */  addiu      $a1, $zero, 0x46
/* 577BEB8 8008C188 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 577BEBC 8008C18C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 577BEC0 8008C190 00000000 */  nop
/* 577BEC4 8008C194 09F84000 */  jalr       $v0
/* 577BEC8 8008C198 10000724 */   addiu     $a3, $zero, 0x10
.Llevel_22_8008C19C:
/* 577BECC 8008C19C 1000E58E */  lw         $a1, 0x10($s7)
/* 577BED0 8008C1A0 F0EF000C */  jal        func_8003BFC0
/* 577BED4 8008C1A4 2120C002 */   addu      $a0, $s6, $zero
/* 577BED8 8008C1A8 05004010 */  beqz       $v0, .Llevel_22_8008C1C0
/* 577BEDC 8008C1AC FFFF0224 */   addiu     $v0, $zero, -0x1
/* 577BEE0 8008C1B0 1000E48E */  lw         $a0, 0x10($s7)
/* 577BEE4 8008C1B4 9CEF000C */  jal        func_8003BE70
/* 577BEE8 8008C1B8 00000000 */   nop
/* 577BEEC 8008C1BC FFFF0224 */  addiu      $v0, $zero, -0x1
.Llevel_22_8008C1C0:
/* 577BEF0 8008C1C0 1000E2AE */  sw         $v0, 0x10($s7)
/* 577BEF4 8008C1C4 C656010C */  jal        func_80055B18
/* 577BEF8 8008C1C8 2120C002 */   addu      $a0, $s6, $zero
.Llevel_22_8008C1CC:
/* 577BEFC 8008C1CC 8400BF8F */  lw         $ra, 0x84($sp)
/* 577BF00 8008C1D0 8000BE8F */  lw         $fp, 0x80($sp)
/* 577BF04 8008C1D4 7C00B78F */  lw         $s7, 0x7C($sp)
/* 577BF08 8008C1D8 7800B68F */  lw         $s6, 0x78($sp)
/* 577BF0C 8008C1DC 7400B58F */  lw         $s5, 0x74($sp)
/* 577BF10 8008C1E0 7000B48F */  lw         $s4, 0x70($sp)
/* 577BF14 8008C1E4 6C00B38F */  lw         $s3, 0x6C($sp)
/* 577BF18 8008C1E8 6800B28F */  lw         $s2, 0x68($sp)
/* 577BF1C 8008C1EC 6400B18F */  lw         $s1, 0x64($sp)
/* 577BF20 8008C1F0 6000B08F */  lw         $s0, 0x60($sp)
/* 577BF24 8008C1F4 8800BD27 */  addiu      $sp, $sp, 0x88
/* 577BF28 8008C1F8 0800E003 */  jr         $ra
/* 577BF2C 8008C1FC 00000000 */   nop
.size func_level_22_8008BDEC, . - func_level_22_8008BDEC
