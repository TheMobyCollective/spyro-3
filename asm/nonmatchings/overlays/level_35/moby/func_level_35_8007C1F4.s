.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_35_8007C1F4
/* 76FEF24 8007C1F4 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 76FEF28 8007C1F8 2800B2AF */  sw         $s2, 0x28($sp)
/* 76FEF2C 8007C1FC 21908000 */  addu       $s2, $a0, $zero
/* 76FEF30 8007C200 2000B0AF */  sw         $s0, 0x20($sp)
/* 76FEF34 8007C204 01001024 */  addiu      $s0, $zero, 0x1
/* 76FEF38 8007C208 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 76FEF3C 8007C20C 2400B1AF */  sw         $s1, 0x24($sp)
/* 76FEF40 8007C210 48004392 */  lbu        $v1, 0x48($s2)
/* 76FEF44 8007C214 0000518E */  lw         $s1, 0x0($s2)
/* 76FEF48 8007C218 4E007010 */  beq        $v1, $s0, .Llevel_35_8007C354
/* 76FEF4C 8007C21C 02006228 */   slti      $v0, $v1, 0x2
/* 76FEF50 8007C220 05004010 */  beqz       $v0, .Llevel_35_8007C238
/* 76FEF54 8007C224 00000000 */   nop
/* 76FEF58 8007C228 0A006010 */  beqz       $v1, .Llevel_35_8007C254
/* 76FEF5C 8007C22C 00000000 */   nop
/* 76FEF60 8007C230 25F10108 */  j          .Llevel_35_8007C494
/* 76FEF64 8007C234 00000000 */   nop
.Llevel_35_8007C238:
/* 76FEF68 8007C238 02000224 */  addiu      $v0, $zero, 0x2
/* 76FEF6C 8007C23C 76006210 */  beq        $v1, $v0, .Llevel_35_8007C418
/* 76FEF70 8007C240 03000224 */   addiu     $v0, $zero, 0x3
/* 76FEF74 8007C244 91006210 */  beq        $v1, $v0, .Llevel_35_8007C48C
/* 76FEF78 8007C248 00000000 */   nop
/* 76FEF7C 8007C24C 25F10108 */  j          .Llevel_35_8007C494
/* 76FEF80 8007C250 00000000 */   nop
.Llevel_35_8007C254:
/* 76FEF84 8007C254 0780023C */  lui        $v0, %hi(D_8006FA3C)
/* 76FEF88 8007C258 3CFA428C */  lw         $v0, %lo(D_8006FA3C)($v0)
/* 76FEF8C 8007C25C 00000000 */  nop
/* 76FEF90 8007C260 FEFF4224 */  addiu      $v0, $v0, -0x2
/* 76FEF94 8007C264 0200422C */  sltiu      $v0, $v0, 0x2
/* 76FEF98 8007C268 84004014 */  bnez       $v0, .Llevel_35_8007C47C
/* 76FEF9C 8007C26C FF000224 */   addiu     $v0, $zero, 0xFF
/* 76FEFA0 8007C270 50004392 */  lbu        $v1, 0x50($s2)
/* 76FEFA4 8007C274 00000000 */  nop
/* 76FEFA8 8007C278 33006210 */  beq        $v1, $v0, .Llevel_35_8007C348
/* 76FEFAC 8007C27C 01000424 */   addiu     $a0, $zero, 0x1
/* 76FEFB0 8007C280 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 76FEFB4 8007C284 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 76FEFB8 8007C288 00000000 */  nop
/* 76FEFBC 8007C28C 09F84000 */  jalr       $v0
/* 76FEFC0 8007C290 21284002 */   addu      $a1, $s2, $zero
/* 76FEFC4 8007C294 2C004010 */  beqz       $v0, .Llevel_35_8007C348
/* 76FEFC8 8007C298 040022AE */   sw        $v0, 0x4($s1)
/* 76FEFCC 8007C29C 0C004424 */  addiu      $a0, $v0, 0xC
/* 76FEFD0 8007C2A0 0000508C */  lw         $s0, 0x0($v0)
/* 76FEFD4 8007C2A4 5E3C010C */  jal        func_8004F178
/* 76FEFD8 8007C2A8 0C004526 */   addiu     $a1, $s2, 0xC
/* 76FEFDC 8007C2AC 0400238E */  lw         $v1, 0x4($s1)
/* 76FEFE0 8007C2B0 05000224 */  addiu      $v0, $zero, 0x5
/* 76FEFE4 8007C2B4 480062A0 */  sb         $v0, 0x48($v1)
/* 76FEFE8 8007C2B8 50004292 */  lbu        $v0, 0x50($s2)
/* 76FEFEC 8007C2BC 0400238E */  lw         $v1, 0x4($s1)
/* 76FEFF0 8007C2C0 0680013C */  lui        $at, %hi(D_80066964)
/* 76FEFF4 8007C2C4 21082200 */  addu       $at, $at, $v0
/* 76FEFF8 8007C2C8 64692290 */  lbu        $v0, %lo(D_80066964)($at)
/* 76FEFFC 8007C2CC 00000000 */  nop
/* 76FF000 8007C2D0 490062A0 */  sb         $v0, 0x49($v1)
/* 76FF004 8007C2D4 0400238E */  lw         $v1, 0x4($s1)
/* 76FF008 8007C2D8 00000000 */  nop
/* 76FF00C 8007C2DC 49006290 */  lbu        $v0, 0x49($v1)
/* 76FF010 8007C2E0 0680013C */  lui        $at, %hi(D_80066988)
/* 76FF014 8007C2E4 21082200 */  addu       $at, $at, $v0
/* 76FF018 8007C2E8 88692290 */  lbu        $v0, %lo(D_80066988)($at)
/* 76FF01C 8007C2EC 00000000 */  nop
/* 76FF020 8007C2F0 3C0062A0 */  sb         $v0, 0x3C($v1)
/* 76FF024 8007C2F4 0400238E */  lw         $v1, 0x4($s1)
/* 76FF028 8007C2F8 00000000 */  nop
/* 76FF02C 8007C2FC 49006290 */  lbu        $v0, 0x49($v1)
/* 76FF030 8007C300 0680013C */  lui        $at, %hi(D_80066990)
/* 76FF034 8007C304 21082200 */  addu       $at, $at, $v0
/* 76FF038 8007C308 90692290 */  lbu        $v0, %lo(D_80066990)($at)
/* 76FF03C 8007C30C 00000000 */  nop
/* 76FF040 8007C310 540062A0 */  sb         $v0, 0x54($v1)
/* 76FF044 8007C314 0400238E */  lw         $v1, 0x4($s1)
/* 76FF048 8007C318 4C004292 */  lbu        $v0, 0x4C($s2)
/* 76FF04C 8007C31C 00000000 */  nop
/* 76FF050 8007C320 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 76FF054 8007C324 0400238E */  lw         $v1, 0x4($s1)
/* 76FF058 8007C328 4E004292 */  lbu        $v0, 0x4E($s2)
/* 76FF05C 8007C32C 00000000 */  nop
/* 76FF060 8007C330 4E0062A0 */  sb         $v0, 0x4E($v1)
/* 76FF064 8007C334 FF000224 */  addiu      $v0, $zero, 0xFF
/* 76FF068 8007C338 9171010C */  jal        rand
/* 76FF06C 8007C33C 130002A2 */   sb        $v0, 0x13($s0)
/* 76FF070 8007C340 FF004230 */  andi       $v0, $v0, 0xFF
/* 76FF074 8007C344 080022AE */  sw         $v0, 0x8($s1)
.Llevel_35_8007C348:
/* 76FF078 8007C348 01000224 */  addiu      $v0, $zero, 0x1
/* 76FF07C 8007C34C 25F10108 */  j          .Llevel_35_8007C494
/* 76FF080 8007C350 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_35_8007C354:
/* 76FF084 8007C354 0400228E */  lw         $v0, 0x4($s1)
/* 76FF088 8007C358 00000000 */  nop
/* 76FF08C 8007C35C 22004010 */  beqz       $v0, .Llevel_35_8007C3E8
/* 76FF090 8007C360 21204002 */   addu      $a0, $s2, $zero
/* 76FF094 8007C364 0800228E */  lw         $v0, 0x8($s1)
/* 76FF098 8007C368 0780033C */  lui        $v1, %hi(D_8006C648)
/* 76FF09C 8007C36C 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 76FF0A0 8007C370 00000000 */  nop
/* 76FF0A4 8007C374 21104300 */  addu       $v0, $v0, $v1
/* 76FF0A8 8007C378 080022AE */  sw         $v0, 0x8($s1)
/* 76FF0AC 8007C37C C0100200 */  sll        $v0, $v0, 3
/* 76FF0B0 8007C380 F8014230 */  andi       $v0, $v0, 0x1F8
/* 76FF0B4 8007C384 0680013C */  lui        $at, %hi(D_80065920)
/* 76FF0B8 8007C388 21082200 */  addu       $at, $at, $v0
/* 76FF0BC 8007C38C 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 76FF0C0 8007C390 0400238E */  lw         $v1, 0x4($s1)
/* 76FF0C4 8007C394 02120200 */  srl        $v0, $v0, 8
/* 76FF0C8 8007C398 450062A0 */  sb         $v0, 0x45($v1)
/* 76FF0CC 8007C39C 0400238E */  lw         $v1, 0x4($s1)
/* 76FF0D0 8007C3A0 00000000 */  nop
/* 76FF0D4 8007C3A4 46006290 */  lbu        $v0, 0x46($v1)
/* 76FF0D8 8007C3A8 00000000 */  nop
/* 76FF0DC 8007C3AC 04004224 */  addiu      $v0, $v0, 0x4
/* 76FF0E0 8007C3B0 460062A0 */  sb         $v0, 0x46($v1)
/* 76FF0E4 8007C3B4 0800228E */  lw         $v0, 0x8($s1)
/* 76FF0E8 8007C3B8 0400248E */  lw         $a0, 0x4($s1)
/* 76FF0EC 8007C3BC 80100200 */  sll        $v0, $v0, 2
/* 76FF0F0 8007C3C0 FC014230 */  andi       $v0, $v0, 0x1FC
/* 76FF0F4 8007C3C4 0680013C */  lui        $at, %hi(D_80065920)
/* 76FF0F8 8007C3C8 21082200 */  addu       $at, $at, $v0
/* 76FF0FC 8007C3CC 20592394 */  lhu        $v1, %lo(D_80065920)($at)
/* 76FF100 8007C3D0 1400428E */  lw         $v0, 0x14($s2)
/* 76FF104 8007C3D4 001C0300 */  sll        $v1, $v1, 16
/* 76FF108 8007C3D8 031D0300 */  sra        $v1, $v1, 20
/* 76FF10C 8007C3DC 21104300 */  addu       $v0, $v0, $v1
/* 76FF110 8007C3E0 140082AC */  sw         $v0, 0x14($a0)
/* 76FF114 8007C3E4 21204002 */  addu       $a0, $s2, $zero
.Llevel_35_8007C3E8:
/* 76FF118 8007C3E8 0780053C */  lui        $a1, %hi(D_80070328)
/* 76FF11C 8007C3EC 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 76FF120 8007C3F0 00080624 */  addiu      $a2, $zero, 0x800
/* 76FF124 8007C3F4 0780023C */  lui        $v0, %hi(unk_ovlheader_8007439C)
/* 76FF128 8007C3F8 9C43428C */  lw         $v0, %lo(unk_ovlheader_8007439C)($v0)
/* 76FF12C 8007C3FC 00000000 */  nop
/* 76FF130 8007C400 09F84000 */  jalr       $v0
/* 76FF134 8007C404 21380000 */   addu      $a3, $zero, $zero
/* 76FF138 8007C408 22004010 */  beqz       $v0, .Llevel_35_8007C494
/* 76FF13C 8007C40C 02000224 */   addiu     $v0, $zero, 0x2
/* 76FF140 8007C410 25F10108 */  j          .Llevel_35_8007C494
/* 76FF144 8007C414 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_35_8007C418:
/* 76FF148 8007C418 0780023C */  lui        $v0, %hi(unk_ovlheader_80074384)
/* 76FF14C 8007C41C 8443428C */  lw         $v0, %lo(unk_ovlheader_80074384)($v0)
/* 76FF150 8007C420 00000000 */  nop
/* 76FF154 8007C424 09F84000 */  jalr       $v0
/* 76FF158 8007C428 21204002 */   addu      $a0, $s2, $zero
/* 76FF15C 8007C42C 21204002 */  addu       $a0, $s2, $zero
/* 76FF160 8007C430 21280000 */  addu       $a1, $zero, $zero
/* 76FF164 8007C434 AFEE000C */  jal        func_8003BABC
/* 76FF168 8007C438 21300000 */   addu      $a2, $zero, $zero
/* 76FF16C 8007C43C 06000424 */  addiu      $a0, $zero, 0x6
/* 76FF170 8007C440 36004586 */  lh         $a1, 0x36($s2)
/* 76FF174 8007C444 00020224 */  addiu      $v0, $zero, 0x200
/* 76FF178 8007C448 1000B0AF */  sw         $s0, 0x10($sp)
/* 76FF17C 8007C44C 1400A2AF */  sw         $v0, 0x14($sp)
/* 76FF180 8007C450 0C00278E */  lw         $a3, 0xC($s1)
/* 76FF184 8007C454 0780023C */  lui        $v0, %hi(SpawnFragments)
/* 76FF188 8007C458 5C43428C */  lw         $v0, %lo(SpawnFragments)($v0)
/* 76FF18C 8007C45C 00000000 */  nop
/* 76FF190 8007C460 09F84000 */  jalr       $v0
/* 76FF194 8007C464 21304002 */   addu      $a2, $s2, $zero
/* 76FF198 8007C468 0400238E */  lw         $v1, 0x4($s1)
/* 76FF19C 8007C46C 00000000 */  nop
/* 76FF1A0 8007C470 02006010 */  beqz       $v1, .Llevel_35_8007C47C
/* 76FF1A4 8007C474 04000224 */   addiu     $v0, $zero, 0x4
/* 76FF1A8 8007C478 480062A0 */  sb         $v0, 0x48($v1)
.Llevel_35_8007C47C:
/* 76FF1AC 8007C47C C656010C */  jal        func_80055B18
/* 76FF1B0 8007C480 21204002 */   addu      $a0, $s2, $zero
/* 76FF1B4 8007C484 25F10108 */  j          .Llevel_35_8007C494
/* 76FF1B8 8007C488 00000000 */   nop
.Llevel_35_8007C48C:
/* 76FF1BC 8007C48C C5E5000C */  jal        func_80039714
/* 76FF1C0 8007C490 21204002 */   addu      $a0, $s2, $zero
.Llevel_35_8007C494:
/* 76FF1C4 8007C494 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 76FF1C8 8007C498 2800B28F */  lw         $s2, 0x28($sp)
/* 76FF1CC 8007C49C 2400B18F */  lw         $s1, 0x24($sp)
/* 76FF1D0 8007C4A0 2000B08F */  lw         $s0, 0x20($sp)
/* 76FF1D4 8007C4A4 3000BD27 */  addiu      $sp, $sp, 0x30
/* 76FF1D8 8007C4A8 0800E003 */  jr         $ra
/* 76FF1DC 8007C4AC 00000000 */   nop
.size func_level_35_8007C1F4, . - func_level_35_8007C1F4
