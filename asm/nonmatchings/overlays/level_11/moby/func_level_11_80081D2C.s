.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_347_level_11
/* 3E2625C 80081D2C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3E26260 80081D30 1000B0AF */  sw         $s0, 0x10($sp)
/* 3E26264 80081D34 21808000 */  addu       $s0, $a0, $zero
/* 3E26268 80081D38 1400BFAF */  sw         $ra, 0x14($sp)
/* 3E2626C 80081D3C 48000392 */  lbu        $v1, 0x48($s0)
/* 3E26270 80081D40 01000224 */  addiu      $v0, $zero, 0x1
/* 3E26274 80081D44 29006210 */  beq        $v1, $v0, .Llevel_11_80081DEC
/* 3E26278 80081D48 02006228 */   slti      $v0, $v1, 0x2
/* 3E2627C 80081D4C 05004010 */  beqz       $v0, .Llevel_11_80081D64
/* 3E26280 80081D50 00000000 */   nop
/* 3E26284 80081D54 1D006010 */  beqz       $v1, .Llevel_11_80081DCC
/* 3E26288 80081D58 00000000 */   nop
/* 3E2628C 80081D5C 8C070208 */  j          .Llevel_11_80081E30
/* 3E26290 80081D60 00000000 */   nop
.Llevel_11_80081D64:
/* 3E26294 80081D64 02000224 */  addiu      $v0, $zero, 0x2
/* 3E26298 80081D68 31006210 */  beq        $v1, $v0, .Llevel_11_80081E30
/* 3E2629C 80081D6C 03000224 */   addiu     $v0, $zero, 0x3
/* 3E262A0 80081D70 2F006214 */  bne        $v1, $v0, .Llevel_11_80081E30
/* 3E262A4 80081D74 02000324 */   addiu     $v1, $zero, 0x2
/* 3E262A8 80081D78 36000286 */  lh         $v0, 0x36($s0)
/* 3E262AC 80081D7C 480003A2 */  sb         $v1, 0x48($s0)
/* 3E262B0 80081D80 80100200 */  sll        $v0, $v0, 2
/* 3E262B4 80081D84 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 3E262B8 80081D88 21082200 */  addu       $at, $at, $v0
/* 3E262BC 80081D8C 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 3E262C0 80081D90 00000000 */  nop
/* 3E262C4 80081D94 4400428C */  lw         $v0, 0x44($v0)
/* 3E262C8 80081D98 00000000 */  nop
/* 3E262CC 80081D9C 00004290 */  lbu        $v0, 0x0($v0)
/* 3E262D0 80081DA0 3C0003A2 */  sb         $v1, 0x3C($s0)
/* 3E262D4 80081DA4 3D0003A2 */  sb         $v1, 0x3D($s0)
/* 3E262D8 80081DA8 01000324 */  addiu      $v1, $zero, 0x1
/* 3E262DC 80081DAC 3E0000A2 */  sb         $zero, 0x3E($s0)
/* 3E262E0 80081DB0 3F0003A2 */  sb         $v1, 0x3F($s0)
/* 3E262E4 80081DB4 0200422C */  sltiu      $v0, $v0, 0x2
/* 3E262E8 80081DB8 01004238 */  xori       $v0, $v0, 0x1
/* 3E262EC 80081DBC 23100200 */  negu       $v0, $v0
/* 3E262F0 80081DC0 30004230 */  andi       $v0, $v0, 0x30
/* 3E262F4 80081DC4 8C070208 */  j          .Llevel_11_80081E30
/* 3E262F8 80081DC8 400002A2 */   sb        $v0, 0x40($s0)
.Llevel_11_80081DCC:
/* 3E262FC 80081DCC 49000292 */  lbu        $v0, 0x49($s0)
/* 3E26300 80081DD0 00000000 */  nop
/* 3E26304 80081DD4 16004010 */  beqz       $v0, .Llevel_11_80081E30
/* 3E26308 80081DD8 01000224 */   addiu     $v0, $zero, 0x1
/* 3E2630C 80081DDC 480002A2 */  sb         $v0, 0x48($s0)
/* 3E26310 80081DE0 21200002 */  addu       $a0, $s0, $zero
/* 3E26314 80081DE4 8A070208 */  j          .Llevel_11_80081E28
/* 3E26318 80081DE8 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_11_80081DEC:
/* 3E2631C 80081DEC 0780023C */  lui        $v0, %hi(D_8006C770)
/* 3E26320 80081DF0 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 3E26324 80081DF4 00000000 */  nop
/* 3E26328 80081DF8 0D004010 */  beqz       $v0, .Llevel_11_80081E30
/* 3E2632C 80081DFC 48000426 */   addiu     $a0, $s0, 0x48
/* 3E26330 80081E00 01000524 */  addiu      $a1, $zero, 0x1
/* 3E26334 80081E04 03000224 */  addiu      $v0, $zero, 0x3
/* 3E26338 80081E08 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 3E2633C 80081E0C F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 3E26340 80081E10 EDED000C */  jal        func_8003B7B4
/* 3E26344 80081E14 480002A2 */   sb        $v0, 0x48($s0)
/* 3E26348 80081E18 21200002 */  addu       $a0, $s0, $zero
/* 3E2634C 80081E1C 02000524 */  addiu      $a1, $zero, 0x2
/* 3E26350 80081E20 02000224 */  addiu      $v0, $zero, 0x2
/* 3E26354 80081E24 480082A0 */  sb         $v0, 0x48($a0)
.Llevel_11_80081E28:
/* 3E26358 80081E28 D0D3000C */  jal        func_80034F40
/* 3E2635C 80081E2C 00000000 */   nop
.Llevel_11_80081E30:
/* 3E26360 80081E30 1400BF8F */  lw         $ra, 0x14($sp)
/* 3E26364 80081E34 1000B08F */  lw         $s0, 0x10($sp)
/* 3E26368 80081E38 1800BD27 */  addiu      $sp, $sp, 0x18
/* 3E2636C 80081E3C 0800E003 */  jr         $ra
/* 3E26370 80081E40 00000000 */   nop
.size MobyUpdate_347_level_11, . - MobyUpdate_347_level_11
