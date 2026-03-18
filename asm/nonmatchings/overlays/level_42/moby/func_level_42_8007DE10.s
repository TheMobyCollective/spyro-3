.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_42_8007DE10
/* 8482B40 8007DE10 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 8482B44 8007DE14 3400B1AF */  sw         $s1, 0x34($sp)
/* 8482B48 8007DE18 21888000 */  addu       $s1, $a0, $zero
/* 8482B4C 8007DE1C 01000224 */  addiu      $v0, $zero, 0x1
/* 8482B50 8007DE20 3800BFAF */  sw         $ra, 0x38($sp)
/* 8482B54 8007DE24 3000B0AF */  sw         $s0, 0x30($sp)
/* 8482B58 8007DE28 48002392 */  lbu        $v1, 0x48($s1)
/* 8482B5C 8007DE2C 0000308E */  lw         $s0, 0x0($s1)
/* 8482B60 8007DE30 10006210 */  beq        $v1, $v0, .Llevel_42_8007DE74
/* 8482B64 8007DE34 02006228 */   slti      $v0, $v1, 0x2
/* 8482B68 8007DE38 05004010 */  beqz       $v0, .Llevel_42_8007DE50
/* 8482B6C 8007DE3C 00000000 */   nop
/* 8482B70 8007DE40 08006010 */  beqz       $v1, .Llevel_42_8007DE64
/* 8482B74 8007DE44 01000224 */   addiu     $v0, $zero, 0x1
/* 8482B78 8007DE48 EDF70108 */  j          .Llevel_42_8007DFB4
/* 8482B7C 8007DE4C 00000000 */   nop
.Llevel_42_8007DE50:
/* 8482B80 8007DE50 02000224 */  addiu      $v0, $zero, 0x2
/* 8482B84 8007DE54 1F006210 */  beq        $v1, $v0, .Llevel_42_8007DED4
/* 8482B88 8007DE58 00000000 */   nop
/* 8482B8C 8007DE5C EDF70108 */  j          .Llevel_42_8007DFB4
/* 8482B90 8007DE60 00000000 */   nop
.Llevel_42_8007DE64:
/* 8482B94 8007DE64 4C0020A2 */  sb         $zero, 0x4C($s1)
/* 8482B98 8007DE68 4D0020A2 */  sb         $zero, 0x4D($s1)
/* 8482B9C 8007DE6C EDF70108 */  j          .Llevel_42_8007DFB4
/* 8482BA0 8007DE70 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_42_8007DE74:
/* 8482BA4 8007DE74 0780023C */  lui        $v0, %hi(D_8006C578)
/* 8482BA8 8007DE78 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 8482BAC 8007DE7C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 8482BB0 8007DE80 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 8482BB4 8007DE84 00000000 */  nop
/* 8482BB8 8007DE88 23104300 */  subu       $v0, $v0, $v1
/* 8482BBC 8007DE8C 15004228 */  slti       $v0, $v0, 0x15
/* 8482BC0 8007DE90 48004014 */  bnez       $v0, .Llevel_42_8007DFB4
/* 8482BC4 8007DE94 00000000 */   nop
/* 8482BC8 8007DE98 9171010C */  jal        rand
/* 8482BCC 8007DE9C 00000000 */   nop
/* 8482BD0 8007DEA0 1800038E */  lw         $v1, 0x18($s0)
/* 8482BD4 8007DEA4 FF034230 */  andi       $v0, $v0, 0x3FF
/* 8482BD8 8007DEA8 2A104300 */  slt        $v0, $v0, $v1
/* 8482BDC 8007DEAC 41004010 */  beqz       $v0, .Llevel_42_8007DFB4
/* 8482BE0 8007DEB0 00000000 */   nop
/* 8482BE4 8007DEB4 36002486 */  lh         $a0, 0x36($s1)
/* 8482BE8 8007DEB8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8482BEC 8007DEBC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8482BF0 8007DEC0 00000000 */  nop
/* 8482BF4 8007DEC4 09F84000 */  jalr       $v0
/* 8482BF8 8007DEC8 21282002 */   addu      $a1, $s1, $zero
/* 8482BFC 8007DECC EDF70108 */  j          .Llevel_42_8007DFB4
/* 8482C00 8007DED0 00000000 */   nop
.Llevel_42_8007DED4:
/* 8482C04 8007DED4 0780023C */  lui        $v0, %hi(D_8006C770)
/* 8482C08 8007DED8 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 8482C0C 8007DEDC 00000000 */  nop
/* 8482C10 8007DEE0 05004010 */  beqz       $v0, .Llevel_42_8007DEF8
/* 8482C14 8007DEE4 00000000 */   nop
/* 8482C18 8007DEE8 C656010C */  jal        func_80055B18
/* 8482C1C 8007DEEC 21202002 */   addu      $a0, $s1, $zero
/* 8482C20 8007DEF0 EDF70108 */  j          .Llevel_42_8007DFB4
/* 8482C24 8007DEF4 00000000 */   nop
.Llevel_42_8007DEF8:
/* 8482C28 8007DEF8 A157010C */  jal        func_80055E84
/* 8482C2C 8007DEFC 21202002 */   addu      $a0, $s1, $zero
/* 8482C30 8007DF00 49002392 */  lbu        $v1, 0x49($s1)
/* 8482C34 8007DF04 00000000 */  nop
/* 8482C38 8007DF08 09006014 */  bnez       $v1, .Llevel_42_8007DF30
/* 8482C3C 8007DF0C 21804000 */   addu      $s0, $v0, $zero
/* 8482C40 8007DF10 0A00022A */  slti       $v0, $s0, 0xA
/* 8482C44 8007DF14 06004014 */  bnez       $v0, .Llevel_42_8007DF30
/* 8482C48 8007DF18 21202002 */   addu      $a0, $s1, $zero
/* 8482C4C 8007DF1C 21280000 */  addu       $a1, $zero, $zero
/* 8482C50 8007DF20 AFEE000C */  jal        func_8003BABC
/* 8482C54 8007DF24 21300000 */   addu      $a2, $zero, $zero
/* 8482C58 8007DF28 01000224 */  addiu      $v0, $zero, 0x1
/* 8482C5C 8007DF2C 490022A2 */  sb         $v0, 0x49($s1)
.Llevel_42_8007DF30:
/* 8482C60 8007DF30 0780023C */  lui        $v0, %hi(D_8006C640)
/* 8482C64 8007DF34 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 8482C68 8007DF38 00000000 */  nop
/* 8482C6C 8007DF3C 03004230 */  andi       $v0, $v0, 0x3
/* 8482C70 8007DF40 1C004014 */  bnez       $v0, .Llevel_42_8007DFB4
/* 8482C74 8007DF44 1600022A */   slti      $v0, $s0, 0x16
/* 8482C78 8007DF48 1A004014 */  bnez       $v0, .Llevel_42_8007DFB4
/* 8482C7C 8007DF4C 2000B027 */   addiu     $s0, $sp, 0x20
/* 8482C80 8007DF50 21200002 */  addu       $a0, $s0, $zero
/* 8482C84 8007DF54 5E3C010C */  jal        func_8004F178
/* 8482C88 8007DF58 0C002526 */   addiu     $a1, $s1, 0xC
/* 8482C8C 8007DF5C 2800A28F */  lw         $v0, 0x28($sp)
/* 8482C90 8007DF60 00000000 */  nop
/* 8482C94 8007DF64 80004224 */  addiu      $v0, $v0, 0x80
/* 8482C98 8007DF68 9171010C */  jal        rand
/* 8482C9C 8007DF6C 2800A2AF */   sw        $v0, 0x28($sp)
/* 8482CA0 8007DF70 06004230 */  andi       $v0, $v0, 0x6
/* 8482CA4 8007DF74 FDFF4224 */  addiu      $v0, $v0, -0x3
/* 8482CA8 8007DF78 9171010C */  jal        rand
/* 8482CAC 8007DF7C 1000A2AF */   sw        $v0, 0x10($sp)
/* 8482CB0 8007DF80 01000424 */  addiu      $a0, $zero, 0x1
/* 8482CB4 8007DF84 21280000 */  addu       $a1, $zero, $zero
/* 8482CB8 8007DF88 21300002 */  addu       $a2, $s0, $zero
/* 8482CBC 8007DF8C 06004230 */  andi       $v0, $v0, 0x6
/* 8482CC0 8007DF90 FDFF4224 */  addiu      $v0, $v0, -0x3
/* 8482CC4 8007DF94 1400A2AF */  sw         $v0, 0x14($sp)
/* 8482CC8 8007DF98 20000224 */  addiu      $v0, $zero, 0x20
/* 8482CCC 8007DF9C 1800A2AF */  sw         $v0, 0x18($sp)
/* 8482CD0 8007DFA0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8482CD4 8007DFA4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8482CD8 8007DFA8 00000000 */  nop
/* 8482CDC 8007DFAC 09F84000 */  jalr       $v0
/* 8482CE0 8007DFB0 1000A727 */   addiu     $a3, $sp, 0x10
.Llevel_42_8007DFB4:
/* 8482CE4 8007DFB4 3800BF8F */  lw         $ra, 0x38($sp)
/* 8482CE8 8007DFB8 3400B18F */  lw         $s1, 0x34($sp)
/* 8482CEC 8007DFBC 3000B08F */  lw         $s0, 0x30($sp)
/* 8482CF0 8007DFC0 4000BD27 */  addiu      $sp, $sp, 0x40
/* 8482CF4 8007DFC4 0800E003 */  jr         $ra
/* 8482CF8 8007DFC8 00000000 */   nop
.size func_level_42_8007DE10, . - func_level_42_8007DE10
