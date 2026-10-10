.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_21_80082A6C
/* 53FEF9C 80082A6C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 53FEFA0 80082A70 2000B2AF */  sw         $s2, 0x20($sp)
/* 53FEFA4 80082A74 21908000 */  addu       $s2, $a0, $zero
/* 53FEFA8 80082A78 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 53FEFAC 80082A7C 2800B4AF */  sw         $s4, 0x28($sp)
/* 53FEFB0 80082A80 2400B3AF */  sw         $s3, 0x24($sp)
/* 53FEFB4 80082A84 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 53FEFB8 80082A88 1800B0AF */  sw         $s0, 0x18($sp)
/* 53FEFBC 80082A8C 0000508E */  lw         $s0, 0x0($s2)
/* 53FEFC0 80082A90 0780023C */  lui        $v0, %hi(D_8006C5C8)
/* 53FEFC4 80082A94 C8C5428C */  lw         $v0, %lo(D_8006C5C8)($v0)
/* 53FEFC8 80082A98 4000038E */  lw         $v1, 0x40($s0)
/* 53FEFCC 80082A9C 00000000 */  nop
/* 53FEFD0 80082AA0 94006214 */  bne        $v1, $v0, .Llevel_21_80082CF4
/* 53FEFD4 80082AA4 00000000 */   nop
/* 53FEFD8 80082AA8 0780143C */  lui        $s4, %hi(D_8006E480)
/* 53FEFDC 80082AAC 80E49426 */  addiu      $s4, $s4, %lo(D_8006E480)
/* 53FEFE0 80082AB0 0000828E */  lw         $v0, 0x0($s4)
/* 53FEFE4 80082AB4 00000000 */  nop
/* 53FEFE8 80082AB8 8E004014 */  bnez       $v0, .Llevel_21_80082CF4
/* 53FEFEC 80082ABC 01001324 */   addiu     $s3, $zero, 0x1
/* 53FEFF0 80082AC0 0780033C */  lui        $v1, %hi(D_8006E344)
/* 53FEFF4 80082AC4 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 53FEFF8 80082AC8 00000000 */  nop
/* 53FEFFC 80082ACC 89007310 */  beq        $v1, $s3, .Llevel_21_80082CF4
/* 53FF000 80082AD0 0F000224 */   addiu     $v0, $zero, 0xF
/* 53FF004 80082AD4 87006210 */  beq        $v1, $v0, .Llevel_21_80082CF4
/* 53FF008 80082AD8 21280002 */   addu      $a1, $s0, $zero
/* 53FF00C 80082ADC 0780113C */  lui        $s1, %hi(D_80070328)
/* 53FF010 80082AE0 28033126 */  addiu      $s1, $s1, %lo(D_80070328)
/* 53FF014 80082AE4 21202002 */  addu       $a0, $s1, $zero
/* 53FF018 80082AE8 3800078E */  lw         $a3, 0x38($s0)
/* 53FF01C 80082AEC 88D8000C */  jal        func_80036220
/* 53FF020 80082AF0 21300000 */   addu      $a2, $zero, $zero
/* 53FF024 80082AF4 0E004010 */  beqz       $v0, .Llevel_21_80082B30
/* 53FF028 80082AF8 00000000 */   nop
/* 53FF02C 80082AFC 3000028E */  lw         $v0, 0x30($s0)
/* 53FF030 80082B00 3400048E */  lw         $a0, 0x34($s0)
/* 53FF034 80082B04 40280200 */  sll        $a1, $v0, 1
/* 53FF038 80082B08 2128A200 */  addu       $a1, $a1, $v0
/* 53FF03C 80082B0C 80280500 */  sll        $a1, $a1, 2
/* 53FF040 80082B10 2328A200 */  subu       $a1, $a1, $v0
/* 53FF044 80082B14 0780023C */  lui        $v0, %hi(D_8006C550)
/* 53FF048 80082B18 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 53FF04C 80082B1C C0280500 */  sll        $a1, $a1, 3
/* 53FF050 80082B20 464A010C */  jal        func_80052918
/* 53FF054 80082B24 21284500 */   addu      $a1, $v0, $a1
/* 53FF058 80082B28 3D0B0208 */  j          .Llevel_21_80082CF4
/* 53FF05C 80082B2C 00000000 */   nop
.Llevel_21_80082B30:
/* 53FF060 80082B30 48004392 */  lbu        $v1, 0x48($s2)
/* 53FF064 80082B34 00000000 */  nop
/* 53FF068 80082B38 14007310 */  beq        $v1, $s3, .Llevel_21_80082B8C
/* 53FF06C 80082B3C 02006228 */   slti      $v0, $v1, 0x2
/* 53FF070 80082B40 05004010 */  beqz       $v0, .Llevel_21_80082B58
/* 53FF074 80082B44 00000000 */   nop
/* 53FF078 80082B48 0A006010 */  beqz       $v1, .Llevel_21_80082B74
/* 53FF07C 80082B4C 21202002 */   addu      $a0, $s1, $zero
/* 53FF080 80082B50 3D0B0208 */  j          .Llevel_21_80082CF4
/* 53FF084 80082B54 00000000 */   nop
.Llevel_21_80082B58:
/* 53FF088 80082B58 02001424 */  addiu      $s4, $zero, 0x2
/* 53FF08C 80082B5C 43007410 */  beq        $v1, $s4, .Llevel_21_80082C6C
/* 53FF090 80082B60 03000224 */   addiu     $v0, $zero, 0x3
/* 53FF094 80082B64 56006210 */  beq        $v1, $v0, .Llevel_21_80082CC0
/* 53FF098 80082B68 00000000 */   nop
/* 53FF09C 80082B6C 3D0B0208 */  j          .Llevel_21_80082CF4
/* 53FF0A0 80082B70 00000000 */   nop
.Llevel_21_80082B74:
/* 53FF0A4 80082B74 18000526 */  addiu      $a1, $s0, 0x18
/* 53FF0A8 80082B78 3C00078E */  lw         $a3, 0x3C($s0)
/* 53FF0AC 80082B7C 88D8000C */  jal        func_80036220
/* 53FF0B0 80082B80 21300000 */   addu      $a2, $zero, $zero
/* 53FF0B4 80082B84 290B0208 */  j          .Llevel_21_80082CA4
/* 53FF0B8 80082B88 00000000 */   nop
.Llevel_21_80082B8C:
/* 53FF0BC 80082B8C 21202002 */  addu       $a0, $s1, $zero
/* 53FF0C0 80082B90 18000526 */  addiu      $a1, $s0, 0x18
/* 53FF0C4 80082B94 3C00078E */  lw         $a3, 0x3C($s0)
/* 53FF0C8 80082B98 00040624 */  addiu      $a2, $zero, 0x400
/* 53FF0CC 80082B9C 88D8000C */  jal        func_80036220
/* 53FF0D0 80082BA0 0004E724 */   addiu     $a3, $a3, 0x400
/* 53FF0D4 80082BA4 39004010 */  beqz       $v0, .Llevel_21_80082C8C
/* 53FF0D8 80082BA8 00000000 */   nop
/* 53FF0DC 80082BAC 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 53FF0E0 80082BB0 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
/* 53FF0E4 80082BB4 00000000 */  nop
/* 53FF0E8 80082BB8 4E004014 */  bnez       $v0, .Llevel_21_80082CF4
/* 53FF0EC 80082BBC 02000324 */   addiu     $v1, $zero, 0x2
/* 53FF0F0 80082BC0 0780043C */  lui        $a0, %hi(D_8006C5C8)
/* 53FF0F4 80082BC4 C8C5848C */  lw         $a0, %lo(D_8006C5C8)($a0)
/* 53FF0F8 80082BC8 80000224 */  addiu      $v0, $zero, 0x80
/* 53FF0FC 80082BCC 03008010 */  beqz       $a0, .Llevel_21_80082BDC
/* 53FF100 80082BD0 1000A2A3 */   sb        $v0, 0x10($sp)
/* 53FF104 80082BD4 40100400 */  sll        $v0, $a0, 1
/* 53FF108 80082BD8 02004324 */  addiu      $v1, $v0, 0x2
.Llevel_21_80082BDC:
/* 53FF10C 80082BDC 0E000424 */  addiu      $a0, $zero, 0xE
/* 53FF110 80082BE0 1000A527 */  addiu      $a1, $sp, 0x10
/* 53FF114 80082BE4 C0180300 */  sll        $v1, $v1, 3
/* 53FF118 80082BE8 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 53FF11C 80082BEC 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 53FF120 80082BF0 0780013C */  lui        $at, %hi(D_80072098)
/* 53FF124 80082BF4 21082300 */  addu       $at, $at, $v1
/* 53FF128 80082BF8 9820308C */  lw         $s0, %lo(D_80072098)($at)
/* 53FF12C 80082BFC 00110200 */  sll        $v0, $v0, 4
/* 53FF130 80082C00 0780013C */  lui        $at, %hi(D_8006DBE8)
/* 53FF134 80082C04 21082200 */  addu       $at, $at, $v0
/* 53FF138 80082C08 E8DB228C */  lw         $v0, %lo(D_8006DBE8)($at)
/* 53FF13C 80082C0C 21300000 */  addu       $a2, $zero, $zero
/* 53FF140 80082C10 2F78010C */  jal        func_8005E0BC
/* 53FF144 80082C14 21800202 */   addu      $s0, $s0, $v0
/* 53FF148 80082C18 21200002 */  addu       $a0, $s0, $zero
/* 53FF14C 80082C1C 02008104 */  bgez       $a0, .Llevel_21_80082C28
/* 53FF150 80082C20 F8FF9026 */   addiu     $s0, $s4, -0x8
/* 53FF154 80082C24 FF078424 */  addiu      $a0, $a0, 0x7FF
.Llevel_21_80082C28:
/* 53FF158 80082C28 21280002 */  addu       $a1, $s0, $zero
/* 53FF15C 80082C2C 0780023C */  lui        $v0, %hi(D_8006E470)
/* 53FF160 80082C30 70E4428C */  lw         $v0, %lo(D_8006E470)($v0)
/* 53FF164 80082C34 C3220400 */  sra        $a0, $a0, 11
/* 53FF168 80082C38 1B7D010C */  jal        CdIntToPos
/* 53FF16C 80082C3C 21204400 */   addu      $a0, $v0, $a0
/* 53FF170 80082C40 02000424 */  addiu      $a0, $zero, 0x2
/* 53FF174 80082C44 21280002 */  addu       $a1, $s0, $zero
/* 53FF178 80082C48 2F78010C */  jal        func_8005E0BC
/* 53FF17C 80082C4C 21300000 */   addu      $a2, $zero, $zero
/* 53FF180 80082C50 16000424 */  addiu      $a0, $zero, 0x16
/* 53FF184 80082C54 21280000 */  addu       $a1, $zero, $zero
/* 53FF188 80082C58 2F78010C */  jal        func_8005E0BC
/* 53FF18C 80082C5C 21300000 */   addu      $a2, $zero, $zero
/* 53FF190 80082C60 02000224 */  addiu      $v0, $zero, 0x2
/* 53FF194 80082C64 3D0B0208 */  j          .Llevel_21_80082CF4
/* 53FF198 80082C68 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_21_80082C6C:
/* 53FF19C 80082C6C 21202002 */  addu       $a0, $s1, $zero
/* 53FF1A0 80082C70 18000526 */  addiu      $a1, $s0, 0x18
/* 53FF1A4 80082C74 3C00078E */  lw         $a3, 0x3C($s0)
/* 53FF1A8 80082C78 00040624 */  addiu      $a2, $zero, 0x400
/* 53FF1AC 80082C7C 88D8000C */  jal        func_80036220
/* 53FF1B0 80082C80 0004E724 */   addiu     $a3, $a3, 0x400
/* 53FF1B4 80082C84 05004014 */  bnez       $v0, .Llevel_21_80082C9C
/* 53FF1B8 80082C88 00000000 */   nop
.Llevel_21_80082C8C:
/* 53FF1BC 80082C8C 0780013C */  lui        $at, %hi(D_8006E49C)
/* 53FF1C0 80082C90 9CE420AC */  sw         $zero, %lo(D_8006E49C)($at)
/* 53FF1C4 80082C94 3D0B0208 */  j          .Llevel_21_80082CF4
/* 53FF1C8 80082C98 480040A2 */   sb        $zero, 0x48($s2)
.Llevel_21_80082C9C:
/* 53FF1CC 80082C9C 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 53FF1D0 80082CA0 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
.Llevel_21_80082CA4:
/* 53FF1D4 80082CA4 00000000 */  nop
/* 53FF1D8 80082CA8 12004010 */  beqz       $v0, .Llevel_21_80082CF4
/* 53FF1DC 80082CAC 01000224 */   addiu     $v0, $zero, 0x1
/* 53FF1E0 80082CB0 0780013C */  lui        $at, %hi(D_8006E49C)
/* 53FF1E4 80082CB4 9CE433AC */  sw         $s3, %lo(D_8006E49C)($at)
/* 53FF1E8 80082CB8 3D0B0208 */  j          .Llevel_21_80082CF4
/* 53FF1EC 80082CBC 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_21_80082CC0:
/* 53FF1F0 80082CC0 3000028E */  lw         $v0, 0x30($s0)
/* 53FF1F4 80082CC4 3400048E */  lw         $a0, 0x34($s0)
/* 53FF1F8 80082CC8 40280200 */  sll        $a1, $v0, 1
/* 53FF1FC 80082CCC 2128A200 */  addu       $a1, $a1, $v0
/* 53FF200 80082CD0 80280500 */  sll        $a1, $a1, 2
/* 53FF204 80082CD4 2328A200 */  subu       $a1, $a1, $v0
/* 53FF208 80082CD8 0780023C */  lui        $v0, %hi(D_8006C550)
/* 53FF20C 80082CDC 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 53FF210 80082CE0 C0280500 */  sll        $a1, $a1, 3
/* 53FF214 80082CE4 464A010C */  jal        func_80052918
/* 53FF218 80082CE8 21284500 */   addu      $a1, $v0, $a1
/* 53FF21C 80082CEC 0780013C */  lui        $at, %hi(D_8006C4F8)
/* 53FF220 80082CF0 F8C434AC */  sw         $s4, %lo(D_8006C4F8)($at)
.Llevel_21_80082CF4:
/* 53FF224 80082CF4 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 53FF228 80082CF8 2800B48F */  lw         $s4, 0x28($sp)
/* 53FF22C 80082CFC 2400B38F */  lw         $s3, 0x24($sp)
/* 53FF230 80082D00 2000B28F */  lw         $s2, 0x20($sp)
/* 53FF234 80082D04 1C00B18F */  lw         $s1, 0x1C($sp)
/* 53FF238 80082D08 1800B08F */  lw         $s0, 0x18($sp)
/* 53FF23C 80082D0C 3000BD27 */  addiu      $sp, $sp, 0x30
/* 53FF240 80082D10 0800E003 */  jr         $ra
/* 53FF244 80082D14 00000000 */   nop
.size func_level_21_80082A6C, . - func_level_21_80082A6C
