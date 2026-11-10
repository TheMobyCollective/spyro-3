.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_541_level_15
/* 49B11C4 80076C94 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 49B11C8 80076C98 1000B0AF */  sw         $s0, 0x10($sp)
/* 49B11CC 80076C9C 21808000 */  addu       $s0, $a0, $zero
/* 49B11D0 80076CA0 1800BFAF */  sw         $ra, 0x18($sp)
/* 49B11D4 80076CA4 1400B1AF */  sw         $s1, 0x14($sp)
/* 49B11D8 80076CA8 0000118E */  lw         $s1, 0x0($s0)
/* 49B11DC 80076CAC 04000524 */  addiu      $a1, $zero, 0x4
/* 49B11E0 80076CB0 69D6000C */  jal        func_800359A4
/* 49B11E4 80076CB4 21202002 */   addu      $a0, $s1, $zero
/* 49B11E8 80076CB8 03004010 */  beqz       $v0, .Llevel_15_80076CC8
/* 49B11EC 80076CBC 00000000 */   nop
/* 49B11F0 80076CC0 C656010C */  jal        func_80055B18
/* 49B11F4 80076CC4 21200002 */   addu      $a0, $s0, $zero
.Llevel_15_80076CC8:
/* 49B11F8 80076CC8 0000238E */  lw         $v1, 0x0($s1)
/* 49B11FC 80076CCC 10000224 */  addiu      $v0, $zero, 0x10
/* 49B1200 80076CD0 23104300 */  subu       $v0, $v0, $v1
/* 49B1204 80076CD4 03004104 */  bgez       $v0, .Llevel_15_80076CE4
/* 49B1208 80076CD8 30004224 */   addiu     $v0, $v0, 0x30
/* 49B120C 80076CDC 21100000 */  addu       $v0, $zero, $zero
/* 49B1210 80076CE0 30004224 */  addiu      $v0, $v0, 0x30
.Llevel_15_80076CE4:
/* 49B1214 80076CE4 570002A2 */  sb         $v0, 0x57($s0)
/* 49B1218 80076CE8 0780023C */  lui        $v0, %hi(D_8006C648)
/* 49B121C 80076CEC 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 49B1220 80076CF0 00000000 */  nop
/* 49B1224 80076CF4 40180200 */  sll        $v1, $v0, 1
/* 49B1228 80076CF8 21186200 */  addu       $v1, $v1, $v0
/* 49B122C 80076CFC 4F000292 */  lbu        $v0, 0x4F($s0)
/* 49B1230 80076D00 40180300 */  sll        $v1, $v1, 1
/* 49B1234 80076D04 23104300 */  subu       $v0, $v0, $v1
/* 49B1238 80076D08 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 49B123C 80076D0C FF004230 */  andi       $v0, $v0, 0xFF
/* 49B1240 80076D10 8000422C */  sltiu      $v0, $v0, 0x80
/* 49B1244 80076D14 02004014 */  bnez       $v0, .Llevel_15_80076D20
/* 49B1248 80076D18 00000000 */   nop
/* 49B124C 80076D1C 4F0000A2 */  sb         $zero, 0x4F($s0)
.Llevel_15_80076D20:
/* 49B1250 80076D20 4F000292 */  lbu        $v0, 0x4F($s0)
/* 49B1254 80076D24 00000000 */  nop
/* 49B1258 80076D28 1800422C */  sltiu      $v0, $v0, 0x18
/* 49B125C 80076D2C 02004010 */  beqz       $v0, .Llevel_15_80076D38
/* 49B1260 80076D30 18000224 */   addiu     $v0, $zero, 0x18
/* 49B1264 80076D34 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_15_80076D38:
/* 49B1268 80076D38 1800BF8F */  lw         $ra, 0x18($sp)
/* 49B126C 80076D3C 1400B18F */  lw         $s1, 0x14($sp)
/* 49B1270 80076D40 1000B08F */  lw         $s0, 0x10($sp)
/* 49B1274 80076D44 2000BD27 */  addiu      $sp, $sp, 0x20
/* 49B1278 80076D48 0800E003 */  jr         $ra
/* 49B127C 80076D4C 00000000 */   nop
.size MobyUpdate_541_level_15, . - MobyUpdate_541_level_15
