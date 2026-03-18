.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_atlas_80075CA8
/* 962E1D8 80075CA8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 962E1DC 80075CAC 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 962E1E0 80075CB0 01009130 */  andi       $s1, $a0, 0x1
/* 962E1E4 80075CB4 21200000 */  addu       $a0, $zero, $zero
/* 962E1E8 80075CB8 00030224 */  addiu      $v0, $zero, 0x300
/* 962E1EC 80075CBC 1000A2A7 */  sh         $v0, 0x10($sp)
/* 962E1F0 80075CC0 FE002226 */  addiu      $v0, $s1, 0xFE
/* 962E1F4 80075CC4 1200A2A7 */  sh         $v0, 0x12($sp)
/* 962E1F8 80075CC8 00010224 */  addiu      $v0, $zero, 0x100
/* 962E1FC 80075CCC 1400A2A7 */  sh         $v0, 0x14($sp)
/* 962E200 80075CD0 01000224 */  addiu      $v0, $zero, 0x1
/* 962E204 80075CD4 1600A2A7 */  sh         $v0, 0x16($sp)
/* 962E208 80075CD8 40101100 */  sll        $v0, $s1, 1
/* 962E20C 80075CDC 21105100 */  addu       $v0, $v0, $s1
/* 962E210 80075CE0 C0100200 */  sll        $v0, $v0, 3
/* 962E214 80075CE4 23105100 */  subu       $v0, $v0, $s1
/* 962E218 80075CE8 1800B0AF */  sw         $s0, 0x18($sp)
/* 962E21C 80075CEC 0780103C */  lui        $s0, %hi(D_80070140)
/* 962E220 80075CF0 4001108E */  lw         $s0, %lo(D_80070140)($s0)
/* 962E224 80075CF4 C0120200 */  sll        $v0, $v0, 11
/* 962E228 80075CF8 2000BFAF */  sw         $ra, 0x20($sp)
/* 962E22C 80075CFC 21800202 */  addu       $s0, $s0, $v0
/* 962E230 80075D00 9968010C */  jal        DrawSync
/* 962E234 80075D04 1C001026 */   addiu     $s0, $s0, 0x1C
/* 962E238 80075D08 1000A427 */  addiu      $a0, $sp, 0x10
/* 962E23C 80075D0C 1E69010C */  jal        LoadImage
/* 962E240 80075D10 21280002 */   addu      $a1, $s0, $zero
/* 962E244 80075D14 00021026 */  addiu      $s0, $s0, 0x200
/* 962E248 80075D18 21200000 */  addu       $a0, $zero, $zero
/* 962E24C 80075D1C C0000324 */  addiu      $v1, $zero, 0xC0
/* 962E250 80075D20 04182302 */  sllv       $v1, $v1, $s1
/* 962E254 80075D24 00040224 */  addiu      $v0, $zero, 0x400
/* 962E258 80075D28 23104300 */  subu       $v0, $v0, $v1
/* 962E25C 80075D2C 1000A2A7 */  sh         $v0, 0x10($sp)
/* 962E260 80075D30 80000224 */  addiu      $v0, $zero, 0x80
/* 962E264 80075D34 1200A2A7 */  sh         $v0, 0x12($sp)
/* 962E268 80075D38 C0000224 */  addiu      $v0, $zero, 0xC0
/* 962E26C 80075D3C 1400A2A7 */  sh         $v0, 0x14($sp)
/* 962E270 80075D40 78000224 */  addiu      $v0, $zero, 0x78
/* 962E274 80075D44 9968010C */  jal        DrawSync
/* 962E278 80075D48 1600A2A7 */   sh        $v0, 0x16($sp)
/* 962E27C 80075D4C 1000A427 */  addiu      $a0, $sp, 0x10
/* 962E280 80075D50 1E69010C */  jal        LoadImage
/* 962E284 80075D54 21280002 */   addu      $a1, $s0, $zero
/* 962E288 80075D58 9968010C */  jal        DrawSync
/* 962E28C 80075D5C 21200000 */   addu      $a0, $zero, $zero
/* 962E290 80075D60 2000BF8F */  lw         $ra, 0x20($sp)
/* 962E294 80075D64 1C00B18F */  lw         $s1, 0x1C($sp)
/* 962E298 80075D68 1800B08F */  lw         $s0, 0x18($sp)
/* 962E29C 80075D6C 2800BD27 */  addiu      $sp, $sp, 0x28
/* 962E2A0 80075D70 0800E003 */  jr         $ra
/* 962E2A4 80075D74 00000000 */   nop
.size func_atlas_80075CA8, . - func_atlas_80075CA8
