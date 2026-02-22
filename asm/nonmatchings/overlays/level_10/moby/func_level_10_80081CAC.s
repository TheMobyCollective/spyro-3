.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_10_80081CAC
/* 3AE69DC 80081CAC C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 3AE69E0 80081CB0 2400B1AF */  sw         $s1, 0x24($sp)
/* 3AE69E4 80081CB4 21888000 */  addu       $s1, $a0, $zero
/* 3AE69E8 80081CB8 0780053C */  lui        $a1, %hi(D_80070328 + 0x244)
/* 3AE69EC 80081CBC 6C05A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0x244)
/* 3AE69F0 80081CC0 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 3AE69F4 80081CC4 3800B6AF */  sw         $s6, 0x38($sp)
/* 3AE69F8 80081CC8 3400B5AF */  sw         $s5, 0x34($sp)
/* 3AE69FC 80081CCC 3000B4AF */  sw         $s4, 0x30($sp)
/* 3AE6A00 80081CD0 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 3AE6A04 80081CD4 2800B2AF */  sw         $s2, 0x28($sp)
/* 3AE6A08 80081CD8 2000B0AF */  sw         $s0, 0x20($sp)
/* 3AE6A0C 80081CDC 0000A28C */  lw         $v0, 0x0($a1)
/* 3AE6A10 80081CE0 0000328E */  lw         $s2, 0x0($s1)
/* 3AE6A14 80081CE4 07004010 */  beqz       $v0, .Llevel_10_80081D04
/* 3AE6A18 80081CE8 02001424 */   addiu     $s4, $zero, 0x2
/* 3AE6A1C 80081CEC 48002292 */  lbu        $v0, 0x48($s1)
/* 3AE6A20 80081CF0 00000000 */  nop
/* 3AE6A24 80081CF4 35014010 */  beqz       $v0, .Llevel_10_800821CC
/* 3AE6A28 80081CF8 02000224 */   addiu     $v0, $zero, 0x2
/* 3AE6A2C 80081CFC 73080208 */  j          .Llevel_10_800821CC
/* 3AE6A30 80081D00 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_10_80081D04:
/* 3AE6A34 80081D04 48002292 */  lbu        $v0, 0x48($s1)
/* 3AE6A38 80081D08 00000000 */  nop
/* 3AE6A3C 80081D0C 03005414 */  bne        $v0, $s4, .Llevel_10_80081D1C
/* 3AE6A40 80081D10 1000A427 */   addiu     $a0, $sp, 0x10
/* 3AE6A44 80081D14 01000224 */  addiu      $v0, $zero, 0x1
/* 3AE6A48 80081D18 480022A2 */  sb         $v0, 0x48($s1)
.Llevel_10_80081D1C:
/* 3AE6A4C 80081D1C BCFDB624 */  addiu      $s6, $a1, -0x244
/* 3AE6A50 80081D20 2128C002 */  addu       $a1, $s6, $zero
/* 3AE6A54 80081D24 0800428E */  lw         $v0, 0x8($s2)
/* 3AE6A58 80081D28 0C003326 */  addiu      $s3, $s1, 0xC
/* 3AE6A5C 80081D2C 21306002 */  addu       $a2, $s3, $zero
/* 3AE6A60 80081D30 723C010C */  jal        func_8004F1C8
/* 3AE6A64 80081D34 7F005030 */   andi      $s0, $v0, 0x7F
/* 3AE6A68 80081D38 1000A427 */  addiu      $a0, $sp, 0x10
/* 3AE6A6C 80081D3C 7A3B010C */  jal        func_8004EDE8
/* 3AE6A70 80081D40 21280000 */   addu      $a1, $zero, $zero
/* 3AE6A74 80081D44 5F000012 */  beqz       $s0, .Llevel_10_80081EC4
/* 3AE6A78 80081D48 21A84000 */   addu      $s5, $v0, $zero
/* 3AE6A7C 80081D4C 01000424 */  addiu      $a0, $zero, 0x1
/* 3AE6A80 80081D50 31000416 */  bne        $s0, $a0, .Llevel_10_80081E18
/* 3AE6A84 80081D54 00000000 */   nop
/* 3AE6A88 80081D58 49002392 */  lbu        $v1, 0x49($s1)
/* 3AE6A8C 80081D5C 00000000 */  nop
/* 3AE6A90 80081D60 1F007010 */  beq        $v1, $s0, .Llevel_10_80081DE0
/* 3AE6A94 80081D64 02006228 */   slti      $v0, $v1, 0x2
/* 3AE6A98 80081D68 05004010 */  beqz       $v0, .Llevel_10_80081D80
/* 3AE6A9C 80081D6C 00000000 */   nop
/* 3AE6AA0 80081D70 09006010 */  beqz       $v1, .Llevel_10_80081D98
/* 3AE6AA4 80081D74 00000000 */   nop
/* 3AE6AA8 80081D78 0D080208 */  j          .Llevel_10_80082034
/* 3AE6AAC 80081D7C 00000000 */   nop
.Llevel_10_80081D80:
/* 3AE6AB0 80081D80 1E007410 */  beq        $v1, $s4, .Llevel_10_80081DFC
/* 3AE6AB4 80081D84 03000224 */   addiu     $v0, $zero, 0x3
/* 3AE6AB8 80081D88 6A006210 */  beq        $v1, $v0, .Llevel_10_80081F34
/* 3AE6ABC 80081D8C 00000000 */   nop
/* 3AE6AC0 80081D90 0D080208 */  j          .Llevel_10_80082034
/* 3AE6AC4 80081D94 00000000 */   nop
.Llevel_10_80081D98:
/* 3AE6AC8 80081D98 0400428E */  lw         $v0, 0x4($s2)
/* 3AE6ACC 80081D9C 00000000 */  nop
/* 3AE6AD0 80081DA0 00044224 */  addiu      $v0, $v0, 0x400
/* 3AE6AD4 80081DA4 2A10A202 */  slt        $v0, $s5, $v0
/* 3AE6AD8 80081DA8 A2004010 */  beqz       $v0, .Llevel_10_80082034
/* 3AE6ADC 80081DAC 00000000 */   nop
/* 3AE6AE0 80081DB0 1800A28F */  lw         $v0, 0x18($sp)
/* 3AE6AE4 80081DB4 00000000 */  nop
/* 3AE6AE8 80081DB8 02004104 */  bgez       $v0, .Llevel_10_80081DC4
/* 3AE6AEC 80081DBC 00000000 */   nop
/* 3AE6AF0 80081DC0 23100200 */  negu       $v0, $v0
.Llevel_10_80081DC4:
/* 3AE6AF4 80081DC4 00044228 */  slti       $v0, $v0, 0x400
/* 3AE6AF8 80081DC8 9A004010 */  beqz       $v0, .Llevel_10_80082034
/* 3AE6AFC 80081DCC 3C000224 */   addiu     $v0, $zero, 0x3C
/* 3AE6B00 80081DD0 0C0042AE */  sw         $v0, 0xC($s2)
/* 3AE6B04 80081DD4 01000224 */  addiu      $v0, $zero, 0x1
/* 3AE6B08 80081DD8 0D080208 */  j          .Llevel_10_80082034
/* 3AE6B0C 80081DDC 490022A2 */   sb        $v0, 0x49($s1)
.Llevel_10_80081DE0:
/* 3AE6B10 80081DE0 0C004426 */  addiu      $a0, $s2, 0xC
/* 3AE6B14 80081DE4 69D6000C */  jal        func_800359A4
/* 3AE6B18 80081DE8 04000524 */   addiu     $a1, $zero, 0x4
/* 3AE6B1C 80081DEC 91004010 */  beqz       $v0, .Llevel_10_80082034
/* 3AE6B20 80081DF0 02000224 */   addiu     $v0, $zero, 0x2
/* 3AE6B24 80081DF4 B0070208 */  j          .Llevel_10_80081EC0
/* 3AE6B28 80081DF8 00000000 */   nop
.Llevel_10_80081DFC:
/* 3AE6B2C 80081DFC 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 3AE6B30 80081E00 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 3AE6B34 80081E04 13000224 */  addiu      $v0, $zero, 0x13
/* 3AE6B38 80081E08 8A006214 */  bne        $v1, $v0, .Llevel_10_80082034
/* 3AE6B3C 80081E0C 3C000224 */   addiu     $v0, $zero, 0x3C
/* 3AE6B40 80081E10 C9070208 */  j          .Llevel_10_80081F24
/* 3AE6B44 80081E14 00000000 */   nop
.Llevel_10_80081E18:
/* 3AE6B48 80081E18 03000224 */  addiu      $v0, $zero, 0x3
/* 3AE6B4C 80081E1C 51000216 */  bne        $s0, $v0, .Llevel_10_80081F64
/* 3AE6B50 80081E20 00000000 */   nop
/* 3AE6B54 80081E24 49002392 */  lbu        $v1, 0x49($s1)
/* 3AE6B58 80081E28 00000000 */  nop
/* 3AE6B5C 80081E2C 1C006410 */  beq        $v1, $a0, .Llevel_10_80081EA0
/* 3AE6B60 80081E30 02006228 */   slti      $v0, $v1, 0x2
/* 3AE6B64 80081E34 05004010 */  beqz       $v0, .Llevel_10_80081E4C
/* 3AE6B68 80081E38 00000000 */   nop
/* 3AE6B6C 80081E3C 09006010 */  beqz       $v1, .Llevel_10_80081E64
/* 3AE6B70 80081E40 00000000 */   nop
/* 3AE6B74 80081E44 0D080208 */  j          .Llevel_10_80082034
/* 3AE6B78 80081E48 00000000 */   nop
.Llevel_10_80081E4C:
/* 3AE6B7C 80081E4C 20007410 */  beq        $v1, $s4, .Llevel_10_80081ED0
/* 3AE6B80 80081E50 13000224 */   addiu     $v0, $zero, 0x13
/* 3AE6B84 80081E54 37007010 */  beq        $v1, $s0, .Llevel_10_80081F34
/* 3AE6B88 80081E58 00000000 */   nop
/* 3AE6B8C 80081E5C 0D080208 */  j          .Llevel_10_80082034
/* 3AE6B90 80081E60 00000000 */   nop
.Llevel_10_80081E64:
/* 3AE6B94 80081E64 0400428E */  lw         $v0, 0x4($s2)
/* 3AE6B98 80081E68 00000000 */  nop
/* 3AE6B9C 80081E6C 00084224 */  addiu      $v0, $v0, 0x800
/* 3AE6BA0 80081E70 2A105500 */  slt        $v0, $v0, $s5
/* 3AE6BA4 80081E74 6F004010 */  beqz       $v0, .Llevel_10_80082034
/* 3AE6BA8 80081E78 0020A22A */   slti      $v0, $s5, 0x2000
/* 3AE6BAC 80081E7C 6D004010 */  beqz       $v0, .Llevel_10_80082034
/* 3AE6BB0 80081E80 00000000 */   nop
/* 3AE6BB4 80081E84 1800A28F */  lw         $v0, 0x18($sp)
/* 3AE6BB8 80081E88 00000000 */  nop
/* 3AE6BBC 80081E8C 02004104 */  bgez       $v0, .Llevel_10_80081E98
/* 3AE6BC0 80081E90 00000000 */   nop
/* 3AE6BC4 80081E94 23100200 */  negu       $v0, $v0
.Llevel_10_80081E98:
/* 3AE6BC8 80081E98 AC070208 */  j          .Llevel_10_80081EB0
/* 3AE6BCC 80081E9C 00044228 */   slti      $v0, $v0, 0x400
.Llevel_10_80081EA0:
/* 3AE6BD0 80081EA0 0400428E */  lw         $v0, 0x4($s2)
/* 3AE6BD4 80081EA4 00000000 */  nop
/* 3AE6BD8 80081EA8 00084224 */  addiu      $v0, $v0, 0x800
/* 3AE6BDC 80081EAC 2A105500 */  slt        $v0, $v0, $s5
.Llevel_10_80081EB0:
/* 3AE6BE0 80081EB0 60004010 */  beqz       $v0, .Llevel_10_80082034
/* 3AE6BE4 80081EB4 3C000224 */   addiu     $v0, $zero, 0x3C
/* 3AE6BE8 80081EB8 0C0042AE */  sw         $v0, 0xC($s2)
/* 3AE6BEC 80081EBC 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_10_80081EC0:
/* 3AE6BF0 80081EC0 490022A2 */  sb         $v0, 0x49($s1)
.Llevel_10_80081EC4:
/* 3AE6BF4 80081EC4 01000224 */  addiu      $v0, $zero, 0x1
/* 3AE6BF8 80081EC8 0D080208 */  j          .Llevel_10_80082034
/* 3AE6BFC 80081ECC 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_10_80081ED0:
/* 3AE6C00 80081ED0 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 3AE6C04 80081ED4 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 3AE6C08 80081ED8 00000000 */  nop
/* 3AE6C0C 80081EDC 10006210 */  beq        $v1, $v0, .Llevel_10_80081F20
/* 3AE6C10 80081EE0 0128A22A */   slti      $v0, $s5, 0x2801
/* 3AE6C14 80081EE4 0F004010 */  beqz       $v0, .Llevel_10_80081F24
/* 3AE6C18 80081EE8 3C000224 */   addiu     $v0, $zero, 0x3C
/* 3AE6C1C 80081EEC 0780023C */  lui        $v0, %hi(D_80070328 + 0x1BC)
/* 3AE6C20 80081EF0 E404428C */  lw         $v0, %lo(D_80070328 + 0x1BC)($v0)
/* 3AE6C24 80081EF4 00000000 */  nop
/* 3AE6C28 80081EF8 4E004014 */  bnez       $v0, .Llevel_10_80082034
/* 3AE6C2C 80081EFC 00000000 */   nop
/* 3AE6C30 80081F00 0780023C */  lui        $v0, %hi(D_80070328 + 8)
/* 3AE6C34 80081F04 3003428C */  lw         $v0, %lo(D_80070328 + 8)($v0)
/* 3AE6C38 80081F08 1400238E */  lw         $v1, 0x14($s1)
/* 3AE6C3C 80081F0C 00000000 */  nop
/* 3AE6C40 80081F10 23104300 */  subu       $v0, $v0, $v1
/* 3AE6C44 80081F14 010C4228 */  slti       $v0, $v0, 0xC01
/* 3AE6C48 80081F18 46004014 */  bnez       $v0, .Llevel_10_80082034
/* 3AE6C4C 80081F1C 00000000 */   nop
.Llevel_10_80081F20:
/* 3AE6C50 80081F20 3C000224 */  addiu      $v0, $zero, 0x3C
.Llevel_10_80081F24:
/* 3AE6C54 80081F24 0C0042AE */  sw         $v0, 0xC($s2)
/* 3AE6C58 80081F28 03000224 */  addiu      $v0, $zero, 0x3
/* 3AE6C5C 80081F2C 0D080208 */  j          .Llevel_10_80082034
/* 3AE6C60 80081F30 490022A2 */   sb        $v0, 0x49($s1)
.Llevel_10_80081F34:
/* 3AE6C64 80081F34 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 3AE6C68 80081F38 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 3AE6C6C 80081F3C 13000224 */  addiu      $v0, $zero, 0x13
/* 3AE6C70 80081F40 3C006210 */  beq        $v1, $v0, .Llevel_10_80082034
/* 3AE6C74 80081F44 0C004426 */   addiu     $a0, $s2, 0xC
/* 3AE6C78 80081F48 69D6000C */  jal        func_800359A4
/* 3AE6C7C 80081F4C 04000524 */   addiu     $a1, $zero, 0x4
/* 3AE6C80 80081F50 38004010 */  beqz       $v0, .Llevel_10_80082034
/* 3AE6C84 80081F54 00000000 */   nop
/* 3AE6C88 80081F58 490020A2 */  sb         $zero, 0x49($s1)
/* 3AE6C8C 80081F5C 0D080208 */  j          .Llevel_10_80082034
/* 3AE6C90 80081F60 480020A2 */   sb        $zero, 0x48($s1)
.Llevel_10_80081F64:
/* 3AE6C94 80081F64 04000224 */  addiu      $v0, $zero, 0x4
/* 3AE6C98 80081F68 1C000216 */  bne        $s0, $v0, .Llevel_10_80081FDC
/* 3AE6C9C 80081F6C 05000224 */   addiu     $v0, $zero, 0x5
/* 3AE6CA0 80081F70 0780023C */  lui        $v0, %hi(D_8006C7B4)
/* 3AE6CA4 80081F74 B4C74290 */  lbu        $v0, %lo(D_8006C7B4)($v0)
/* 3AE6CA8 80081F78 00000000 */  nop
/* 3AE6CAC 80081F7C 01004230 */  andi       $v0, $v0, 0x1
/* 3AE6CB0 80081F80 0A004014 */  bnez       $v0, .Llevel_10_80081FAC
/* 3AE6CB4 80081F84 21206002 */   addu      $a0, $s3, $zero
/* 3AE6CB8 80081F88 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 3AE6CBC 80081F8C 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 3AE6CC0 80081F90 0780013C */  lui        $at, %hi(D_80070300)
/* 3AE6CC4 80081F94 21082200 */  addu       $at, $at, $v0
/* 3AE6CC8 80081F98 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 3AE6CCC 80081F9C 00000000 */  nop
/* 3AE6CD0 80081FA0 01004230 */  andi       $v0, $v0, 0x1
/* 3AE6CD4 80081FA4 23004010 */  beqz       $v0, .Llevel_10_80082034
/* 3AE6CD8 80081FA8 00000000 */   nop
.Llevel_10_80081FAC:
/* 3AE6CDC 80081FAC CD3C010C */  jal        func_8004F334
/* 3AE6CE0 80081FB0 2128C002 */   addu      $a1, $s6, $zero
/* 3AE6CE4 80081FB4 01084228 */  slti       $v0, $v0, 0x801
/* 3AE6CE8 80081FB8 1E004014 */  bnez       $v0, .Llevel_10_80082034
/* 3AE6CEC 80081FBC 00000000 */   nop
/* 3AE6CF0 80081FC0 0780023C */  lui        $v0, %hi(D_8006C640)
/* 3AE6CF4 80081FC4 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 3AE6CF8 80081FC8 00000000 */  nop
/* 3AE6CFC 80081FCC 19004018 */  blez       $v0, .Llevel_10_80082034
/* 3AE6D00 80081FD0 00000000 */   nop
/* 3AE6D04 80081FD4 09080208 */  j          .Llevel_10_80082024
/* 3AE6D08 80081FD8 00000000 */   nop
.Llevel_10_80081FDC:
/* 3AE6D0C 80081FDC 15000216 */  bne        $s0, $v0, .Llevel_10_80082034
/* 3AE6D10 80081FE0 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 3AE6D14 80081FE4 1400438E */  lw         $v1, 0x14($s2)
/* 3AE6D18 80081FE8 00000000 */  nop
/* 3AE6D1C 80081FEC 11006210 */  beq        $v1, $v0, .Llevel_10_80082034
/* 3AE6D20 80081FF0 40100300 */   sll       $v0, $v1, 1
/* 3AE6D24 80081FF4 21104300 */  addu       $v0, $v0, $v1
/* 3AE6D28 80081FF8 80100200 */  sll        $v0, $v0, 2
/* 3AE6D2C 80081FFC 23104300 */  subu       $v0, $v0, $v1
/* 3AE6D30 80082000 0780033C */  lui        $v1, %hi(D_8006C550)
/* 3AE6D34 80082004 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 3AE6D38 80082008 C0100200 */  sll        $v0, $v0, 3
/* 3AE6D3C 8008200C 21104300 */  addu       $v0, $v0, $v1
/* 3AE6D40 80082010 48004290 */  lbu        $v0, 0x48($v0)
/* 3AE6D44 80082014 00000000 */  nop
/* 3AE6D48 80082018 8000422C */  sltiu      $v0, $v0, 0x80
/* 3AE6D4C 8008201C 05004014 */  bnez       $v0, .Llevel_10_80082034
/* 3AE6D50 80082020 00000000 */   nop
.Llevel_10_80082024:
/* 3AE6D54 80082024 0800428E */  lw         $v0, 0x8($s2)
/* 3AE6D58 80082028 00000000 */  nop
/* 3AE6D5C 8008202C 80004230 */  andi       $v0, $v0, 0x80
/* 3AE6D60 80082030 080042AE */  sw         $v0, 0x8($s2)
.Llevel_10_80082034:
/* 3AE6D64 80082034 48002292 */  lbu        $v0, 0x48($s1)
/* 3AE6D68 80082038 00000000 */  nop
/* 3AE6D6C 8008203C 59004010 */  beqz       $v0, .Llevel_10_800821A4
/* 3AE6D70 80082040 00000000 */   nop
/* 3AE6D74 80082044 1000458E */  lw         $a1, 0x10($s2)
/* 3AE6D78 80082048 F0EF000C */  jal        func_8003BFC0
/* 3AE6D7C 8008204C 21202002 */   addu      $a0, $s1, $zero
/* 3AE6D80 80082050 08004014 */  bnez       $v0, .Llevel_10_80082074
/* 3AE6D84 80082054 21282002 */   addu      $a1, $s1, $zero
/* 3AE6D88 80082058 0780023C */  lui        $v0, %hi(D_8006C654)
/* 3AE6D8C 8008205C 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 3AE6D90 80082060 00000000 */  nop
/* 3AE6D94 80082064 1D004490 */  lbu        $a0, 0x1D($v0)
/* 3AE6D98 80082068 D4EE000C */  jal        PlaySound
/* 3AE6D9C 8008206C 04000624 */   addiu     $a2, $zero, 0x4
/* 3AE6DA0 80082070 100042AE */  sw         $v0, 0x10($s2)
.Llevel_10_80082074:
/* 3AE6DA4 80082074 0780023C */  lui        $v0, %hi(D_8006C640)
/* 3AE6DA8 80082078 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 3AE6DAC 8008207C 00000000 */  nop
/* 3AE6DB0 80082080 01004230 */  andi       $v0, $v0, 0x1
/* 3AE6DB4 80082084 09004014 */  bnez       $v0, .Llevel_10_800820AC
/* 3AE6DB8 80082088 01000424 */   addiu     $a0, $zero, 0x1
/* 3AE6DBC 8008208C 06000524 */  addiu      $a1, $zero, 0x6
/* 3AE6DC0 80082090 21302002 */  addu       $a2, $s1, $zero
/* 3AE6DC4 80082094 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 3AE6DC8 80082098 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 3AE6DCC 8008209C 00000000 */  nop
/* 3AE6DD0 800820A0 09F84000 */  jalr       $v0
/* 3AE6DD4 800820A4 21380000 */   addu      $a3, $zero, $zero
/* 3AE6DD8 800820A8 01000424 */  addiu      $a0, $zero, 0x1
.Llevel_10_800820AC:
/* 3AE6DDC 800820AC 52000524 */  addiu      $a1, $zero, 0x52
/* 3AE6DE0 800820B0 21302002 */  addu       $a2, $s1, $zero
/* 3AE6DE4 800820B4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 3AE6DE8 800820B8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 3AE6DEC 800820BC 00000000 */  nop
/* 3AE6DF0 800820C0 09F84000 */  jalr       $v0
/* 3AE6DF4 800820C4 21380000 */   addu      $a3, $zero, $zero
/* 3AE6DF8 800820C8 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 3AE6DFC 800820CC 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 3AE6E00 800820D0 13000224 */  addiu      $v0, $zero, 0x13
/* 3AE6E04 800820D4 3D006210 */  beq        $v1, $v0, .Llevel_10_800821CC
/* 3AE6E08 800820D8 00000000 */   nop
/* 3AE6E0C 800820DC 0400428E */  lw         $v0, 0x4($s2)
/* 3AE6E10 800820E0 00000000 */  nop
/* 3AE6E14 800820E4 2A10A202 */  slt        $v0, $s5, $v0
/* 3AE6E18 800820E8 38004010 */  beqz       $v0, .Llevel_10_800821CC
/* 3AE6E1C 800820EC 00000000 */   nop
/* 3AE6E20 800820F0 0780023C */  lui        $v0, %hi(D_8006E344)
/* 3AE6E24 800820F4 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 3AE6E28 800820F8 00000000 */  nop
/* 3AE6E2C 800820FC 33004014 */  bnez       $v0, .Llevel_10_800821CC
/* 3AE6E30 80082100 00000000 */   nop
/* 3AE6E34 80082104 1800A38F */  lw         $v1, 0x18($sp)
/* 3AE6E38 80082108 00000000 */  nop
/* 3AE6E3C 8008210C 01FC6228 */  slti       $v0, $v1, -0x3FF
/* 3AE6E40 80082110 2E004014 */  bnez       $v0, .Llevel_10_800821CC
/* 3AE6E44 80082114 00000000 */   nop
/* 3AE6E48 80082118 0000448E */  lw         $a0, 0x0($s2)
/* 3AE6E4C 8008211C 00000000 */  nop
/* 3AE6E50 80082120 2A106400 */  slt        $v0, $v1, $a0
/* 3AE6E54 80082124 29004010 */  beqz       $v0, .Llevel_10_800821CC
/* 3AE6E58 80082128 00000000 */   nop
/* 3AE6E5C 8008212C 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 3AE6E60 80082130 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 3AE6E64 80082134 1400228E */  lw         $v0, 0x14($s1)
/* 3AE6E68 80082138 000C6324 */  addiu      $v1, $v1, 0xC00
/* 3AE6E6C 8008213C 21104400 */  addu       $v0, $v0, $a0
/* 3AE6E70 80082140 2A186200 */  slt        $v1, $v1, $v0
/* 3AE6E74 80082144 08006010 */  beqz       $v1, .Llevel_10_80082168
/* 3AE6E78 80082148 0010023C */   lui       $v0, (0x10000020 >> 16)
/* 3AE6E7C 8008214C 20004234 */  ori        $v0, $v0, (0x10000020 & 0xFFFF)
/* 3AE6E80 80082150 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 3AE6E84 80082154 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 3AE6E88 80082158 0780013C */  lui        $at, %hi(D_80070328 + 0x218)
/* 3AE6E8C 8008215C 400531AC */  sw         $s1, %lo(D_80070328 + 0x218)($at)
/* 3AE6E90 80082160 73080208 */  j          .Llevel_10_800821CC
/* 3AE6E94 80082164 00000000 */   nop
.Llevel_10_80082168:
/* 3AE6E98 80082168 0780023C */  lui        $v0, %hi(D_80070328 + 0x1BC)
/* 3AE6E9C 8008216C E404428C */  lw         $v0, %lo(D_80070328 + 0x1BC)($v0)
/* 3AE6EA0 80082170 00000000 */  nop
/* 3AE6EA4 80082174 15004010 */  beqz       $v0, .Llevel_10_800821CC
/* 3AE6EA8 80082178 0010023C */   lui       $v0, (0x10000080 >> 16)
/* 3AE6EAC 8008217C 80004234 */  ori        $v0, $v0, (0x10000080 & 0xFFFF)
/* 3AE6EB0 80082180 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 3AE6EB4 80082184 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 3AE6EB8 80082188 07000224 */  addiu      $v0, $zero, 0x7
/* 3AE6EBC 8008218C 0780013C */  lui        $at, %hi(D_80070328 + 0x1BC)
/* 3AE6EC0 80082190 E40420AC */  sw         $zero, %lo(D_80070328 + 0x1BC)($at)
/* 3AE6EC4 80082194 0780013C */  lui        $at, %hi(D_80070328 + 0x23C)
/* 3AE6EC8 80082198 640522AC */  sw         $v0, %lo(D_80070328 + 0x23C)($at)
/* 3AE6ECC 8008219C 73080208 */  j          .Llevel_10_800821CC
/* 3AE6ED0 800821A0 00000000 */   nop
.Llevel_10_800821A4:
/* 3AE6ED4 800821A4 1000458E */  lw         $a1, 0x10($s2)
/* 3AE6ED8 800821A8 F0EF000C */  jal        func_8003BFC0
/* 3AE6EDC 800821AC 21202002 */   addu      $a0, $s1, $zero
/* 3AE6EE0 800821B0 06004010 */  beqz       $v0, .Llevel_10_800821CC
/* 3AE6EE4 800821B4 00000000 */   nop
/* 3AE6EE8 800821B8 1000448E */  lw         $a0, 0x10($s2)
/* 3AE6EEC 800821BC 9CEF000C */  jal        func_8003BE70
/* 3AE6EF0 800821C0 00000000 */   nop
/* 3AE6EF4 800821C4 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3AE6EF8 800821C8 100042AE */  sw         $v0, 0x10($s2)
.Llevel_10_800821CC:
/* 3AE6EFC 800821CC 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 3AE6F00 800821D0 3800B68F */  lw         $s6, 0x38($sp)
/* 3AE6F04 800821D4 3400B58F */  lw         $s5, 0x34($sp)
/* 3AE6F08 800821D8 3000B48F */  lw         $s4, 0x30($sp)
/* 3AE6F0C 800821DC 2C00B38F */  lw         $s3, 0x2C($sp)
/* 3AE6F10 800821E0 2800B28F */  lw         $s2, 0x28($sp)
/* 3AE6F14 800821E4 2400B18F */  lw         $s1, 0x24($sp)
/* 3AE6F18 800821E8 2000B08F */  lw         $s0, 0x20($sp)
/* 3AE6F1C 800821EC 4000BD27 */  addiu      $sp, $sp, 0x40
/* 3AE6F20 800821F0 0800E003 */  jr         $ra
/* 3AE6F24 800821F4 00000000 */   nop
.size func_level_10_80081CAC, . - func_level_10_80081CAC
