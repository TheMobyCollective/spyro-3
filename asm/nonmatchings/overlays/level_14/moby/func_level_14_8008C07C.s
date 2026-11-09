.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_986_level_14
/* 47CB5AC 8008C07C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 47CB5B0 8008C080 1800B2AF */  sw         $s2, 0x18($sp)
/* 47CB5B4 8008C084 21908000 */  addu       $s2, $a0, $zero
/* 47CB5B8 8008C088 0780043C */  lui        $a0, %hi(D_80070328)
/* 47CB5BC 8008C08C 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 47CB5C0 8008C090 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 47CB5C4 8008C094 1400B1AF */  sw         $s1, 0x14($sp)
/* 47CB5C8 8008C098 1000B0AF */  sw         $s0, 0x10($sp)
/* 47CB5CC 8008C09C 0000518E */  lw         $s1, 0x0($s2)
/* 47CB5D0 8008C0A0 21300000 */  addu       $a2, $zero, $zero
/* 47CB5D4 8008C0A4 21282002 */  addu       $a1, $s1, $zero
/* 47CB5D8 8008C0A8 1800228E */  lw         $v0, 0x18($s1)
/* 47CB5DC 8008C0AC 1C002786 */  lh         $a3, 0x1C($s1)
/* 47CB5E0 8008C0B0 40180200 */  sll        $v1, $v0, 1
/* 47CB5E4 8008C0B4 21186200 */  addu       $v1, $v1, $v0
/* 47CB5E8 8008C0B8 80180300 */  sll        $v1, $v1, 2
/* 47CB5EC 8008C0BC 23186200 */  subu       $v1, $v1, $v0
/* 47CB5F0 8008C0C0 0780023C */  lui        $v0, %hi(D_8006C550)
/* 47CB5F4 8008C0C4 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 47CB5F8 8008C0C8 C0180300 */  sll        $v1, $v1, 3
/* 47CB5FC 8008C0CC 88D8000C */  jal        func_80036220
/* 47CB600 8008C0D0 21804300 */   addu      $s0, $v0, $v1
/* 47CB604 8008C0D4 19004010 */  beqz       $v0, .Llevel_14_8008C13C
/* 47CB608 8008C0D8 01000224 */   addiu     $v0, $zero, 0x1
/* 47CB60C 8008C0DC 48004292 */  lbu        $v0, 0x48($s2)
/* 47CB610 8008C0E0 00000000 */  nop
/* 47CB614 8008C0E4 0F004014 */  bnez       $v0, .Llevel_14_8008C124
/* 47CB618 8008C0E8 00000000 */   nop
/* 47CB61C 8008C0EC 1E002386 */  lh         $v1, 0x1E($s1)
/* 47CB620 8008C0F0 00000000 */  nop
/* 47CB624 8008C0F4 05006010 */  beqz       $v1, .Llevel_14_8008C10C
/* 47CB628 8008C0F8 01000224 */   addiu     $v0, $zero, 0x1
/* 47CB62C 8008C0FC 48000292 */  lbu        $v0, 0x48($s0)
/* 47CB630 8008C100 00000000 */  nop
/* 47CB634 8008C104 08004314 */  bne        $v0, $v1, .Llevel_14_8008C128
/* 47CB638 8008C108 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_14_8008C10C:
/* 47CB63C 8008C10C 480042A2 */  sb         $v0, 0x48($s2)
/* 47CB640 8008C110 21200002 */  addu       $a0, $s0, $zero
/* 47CB644 8008C114 B34E000C */  jal        func_80013ACC
/* 47CB648 8008C118 0D000524 */   addiu     $a1, $zero, 0xD
/* 47CB64C 8008C11C 65300208 */  j          .Llevel_14_8008C194
/* 47CB650 8008C120 00000000 */   nop
.Llevel_14_8008C124:
/* 47CB654 8008C124 1E002386 */  lh         $v1, 0x1E($s1)
.Llevel_14_8008C128:
/* 47CB658 8008C128 00000000 */  nop
/* 47CB65C 8008C12C 19006010 */  beqz       $v1, .Llevel_14_8008C194
/* 47CB660 8008C130 00000000 */   nop
/* 47CB664 8008C134 57300208 */  j          .Llevel_14_8008C15C
/* 47CB668 8008C138 00000000 */   nop
.Llevel_14_8008C13C:
/* 47CB66C 8008C13C 48004392 */  lbu        $v1, 0x48($s2)
/* 47CB670 8008C140 00000000 */  nop
/* 47CB674 8008C144 13006214 */  bne        $v1, $v0, .Llevel_14_8008C194
/* 47CB678 8008C148 00000000 */   nop
/* 47CB67C 8008C14C 1E002386 */  lh         $v1, 0x1E($s1)
/* 47CB680 8008C150 00000000 */  nop
/* 47CB684 8008C154 05006010 */  beqz       $v1, .Llevel_14_8008C16C
/* 47CB688 8008C158 00000000 */   nop
.Llevel_14_8008C15C:
/* 47CB68C 8008C15C 48000292 */  lbu        $v0, 0x48($s0)
/* 47CB690 8008C160 00000000 */  nop
/* 47CB694 8008C164 0B004310 */  beq        $v0, $v1, .Llevel_14_8008C194
/* 47CB698 8008C168 00000000 */   nop
.Llevel_14_8008C16C:
/* 47CB69C 8008C16C 0780033C */  lui        $v1, %hi(D_8006E164)
/* 47CB6A0 8008C170 64E16324 */  addiu      $v1, $v1, %lo(D_8006E164)
/* 47CB6A4 8008C174 480040A2 */  sb         $zero, 0x48($s2)
/* 47CB6A8 8008C178 0000628C */  lw         $v0, 0x0($v1)
/* 47CB6AC 8008C17C 00000000 */  nop
/* 47CB6B0 8008C180 04005014 */  bne        $v0, $s0, .Llevel_14_8008C194
/* 47CB6B4 8008C184 00000000 */   nop
/* 47CB6B8 8008C188 0780013C */  lui        $at, %hi(D_8006E160)
/* 47CB6BC 8008C18C 60E120AC */  sw         $zero, %lo(D_8006E160)($at)
/* 47CB6C0 8008C190 000060AC */  sw         $zero, 0x0($v1)
.Llevel_14_8008C194:
/* 47CB6C4 8008C194 48000392 */  lbu        $v1, 0x48($s0)
/* 47CB6C8 8008C198 00000000 */  nop
/* 47CB6CC 8008C19C 80006230 */  andi       $v0, $v1, 0x80
/* 47CB6D0 8008C1A0 05004014 */  bnez       $v0, .Llevel_14_8008C1B8
/* 47CB6D4 8008C1A4 00000000 */   nop
/* 47CB6D8 8008C1A8 2000228E */  lw         $v0, 0x20($s1)
/* 47CB6DC 8008C1AC 00000000 */  nop
/* 47CB6E0 8008C1B0 10006214 */  bne        $v1, $v0, .Llevel_14_8008C1F4
/* 47CB6E4 8008C1B4 00000000 */   nop
.Llevel_14_8008C1B8:
/* 47CB6E8 8008C1B8 48004392 */  lbu        $v1, 0x48($s2)
/* 47CB6EC 8008C1BC 01000224 */  addiu      $v0, $zero, 0x1
/* 47CB6F0 8008C1C0 0A006214 */  bne        $v1, $v0, .Llevel_14_8008C1EC
/* 47CB6F4 8008C1C4 00000000 */   nop
/* 47CB6F8 8008C1C8 0780033C */  lui        $v1, %hi(D_8006E164)
/* 47CB6FC 8008C1CC 64E16324 */  addiu      $v1, $v1, %lo(D_8006E164)
/* 47CB700 8008C1D0 0000628C */  lw         $v0, 0x0($v1)
/* 47CB704 8008C1D4 00000000 */  nop
/* 47CB708 8008C1D8 04005014 */  bne        $v0, $s0, .Llevel_14_8008C1EC
/* 47CB70C 8008C1DC 00000000 */   nop
/* 47CB710 8008C1E0 0780013C */  lui        $at, %hi(D_8006E160)
/* 47CB714 8008C1E4 60E120AC */  sw         $zero, %lo(D_8006E160)($at)
/* 47CB718 8008C1E8 000060AC */  sw         $zero, 0x0($v1)
.Llevel_14_8008C1EC:
/* 47CB71C 8008C1EC C656010C */  jal        func_80055B18
/* 47CB720 8008C1F0 21204002 */   addu      $a0, $s2, $zero
.Llevel_14_8008C1F4:
/* 47CB724 8008C1F4 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 47CB728 8008C1F8 1800B28F */  lw         $s2, 0x18($sp)
/* 47CB72C 8008C1FC 1400B18F */  lw         $s1, 0x14($sp)
/* 47CB730 8008C200 1000B08F */  lw         $s0, 0x10($sp)
/* 47CB734 8008C204 2000BD27 */  addiu      $sp, $sp, 0x20
/* 47CB738 8008C208 0800E003 */  jr         $ra
/* 47CB73C 8008C20C 00000000 */   nop
.size MobyUpdate_986_level_14, . - MobyUpdate_986_level_14
