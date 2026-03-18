.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002A834
/* 1B034 8002A834 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 1B038 8002A838 21200000 */  addu       $a0, $zero, $zero
/* 1B03C 8002A83C 2400BFAF */  sw         $ra, 0x24($sp)
/* 1B040 8002A840 2000B2AF */  sw         $s2, 0x20($sp)
/* 1B044 8002A844 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 1B048 8002A848 5B65010C */  jal        VSync
/* 1B04C 8002A84C 1800B0AF */   sw        $s0, 0x18($sp)
/* 1B050 8002A850 7368010C */  jal        SetDispMask
/* 1B054 8002A854 21200000 */   addu      $a0, $zero, $zero
/* 1B058 8002A858 FF67010C */  jal        ResetGraph
/* 1B05C 8002A85C 21200000 */   addu      $a0, $zero, $zero
/* 1B060 8002A860 5C68010C */  jal        SetGraphDebug
/* 1B064 8002A864 21200000 */   addu      $a0, $zero, $zero
/* 1B068 8002A868 0780103C */  lui        $s0, %hi(D_8006FBFC)
/* 1B06C 8002A86C FCFB1026 */  addiu      $s0, $s0, %lo(D_8006FBFC)
/* 1B070 8002A870 21200002 */  addu       $a0, $s0, $zero
/* 1B074 8002A874 21280000 */  addu       $a1, $zero, $zero
/* 1B078 8002A878 0C000624 */  addiu      $a2, $zero, 0xC
/* 1B07C 8002A87C 00020724 */  addiu      $a3, $zero, 0x200
/* 1B080 8002A880 D8001124 */  addiu      $s1, $zero, 0xD8
/* 1B084 8002A884 4079010C */  jal        func_8005E500
/* 1B088 8002A888 1000B1AF */   sw        $s1, 0x10($sp)
/* 1B08C 8002A88C 74001226 */  addiu      $s2, $s0, 0x74
/* 1B090 8002A890 21204002 */  addu       $a0, $s2, $zero
/* 1B094 8002A894 21280000 */  addu       $a1, $zero, $zero
/* 1B098 8002A898 F0000624 */  addiu      $a2, $zero, 0xF0
/* 1B09C 8002A89C 00020724 */  addiu      $a3, $zero, 0x200
/* 1B0A0 8002A8A0 4079010C */  jal        func_8005E500
/* 1B0A4 8002A8A4 1000B1AF */   sw        $s1, 0x10($sp)
/* 1B0A8 8002A8A8 5C000426 */  addiu      $a0, $s0, 0x5C
/* 1B0AC 8002A8AC 21280000 */  addu       $a1, $zero, $zero
/* 1B0B0 8002A8B0 E4000624 */  addiu      $a2, $zero, 0xE4
/* 1B0B4 8002A8B4 00020724 */  addiu      $a3, $zero, 0x200
/* 1B0B8 8002A8B8 F0001124 */  addiu      $s1, $zero, 0xF0
/* 1B0BC 8002A8BC 7079010C */  jal        func_8005E5C0
/* 1B0C0 8002A8C0 1000B1AF */   sw        $s1, 0x10($sp)
/* 1B0C4 8002A8C4 D0001026 */  addiu      $s0, $s0, 0xD0
/* 1B0C8 8002A8C8 21200002 */  addu       $a0, $s0, $zero
/* 1B0CC 8002A8CC 21280000 */  addu       $a1, $zero, $zero
/* 1B0D0 8002A8D0 21300000 */  addu       $a2, $zero, $zero
/* 1B0D4 8002A8D4 00020724 */  addiu      $a3, $zero, 0x200
/* 1B0D8 8002A8D8 7079010C */  jal        func_8005E5C0
/* 1B0DC 8002A8DC 1000B1AF */   sw        $s1, 0x10($sp)
/* 1B0E0 8002A8E0 E4000224 */  addiu      $v0, $zero, 0xE4
/* 1B0E4 8002A8E4 0780013C */  lui        $at, %hi(D_8006FC7A)
/* 1B0E8 8002A8E8 7AFC22A4 */  sh         $v0, %lo(D_8006FC7A)($at)
/* 1B0EC 8002A8EC 01000224 */  addiu      $v0, $zero, 0x1
/* 1B0F0 8002A8F0 0780013C */  lui        $at, %hi(D_8006FC04)
/* 1B0F4 8002A8F4 04FC20A4 */  sh         $zero, %lo(D_8006FC04)($at)
/* 1B0F8 8002A8F8 0780013C */  lui        $at, %hi(D_8006FC06)
/* 1B0FC 8002A8FC 06FC20A4 */  sh         $zero, %lo(D_8006FC06)($at)
/* 1B100 8002A900 0780013C */  lui        $at, %hi(D_8006FC78)
/* 1B104 8002A904 78FC20A4 */  sh         $zero, %lo(D_8006FC78)($at)
/* 1B108 8002A908 0780013C */  lui        $at, %hi(D_8006FCD4)
/* 1B10C 8002A90C D4FC20A4 */  sh         $zero, %lo(D_8006FCD4)($at)
/* 1B110 8002A910 0780013C */  lui        $at, %hi(D_8006FC60)
/* 1B114 8002A914 60FC20A4 */  sh         $zero, %lo(D_8006FC60)($at)
/* 1B118 8002A918 0780013C */  lui        $at, %hi(D_8006FCD6)
/* 1B11C 8002A91C D6FC20A4 */  sh         $zero, %lo(D_8006FCD6)($at)
/* 1B120 8002A920 0780013C */  lui        $at, %hi(D_8006FC62)
/* 1B124 8002A924 62FC20A4 */  sh         $zero, %lo(D_8006FC62)($at)
/* 1B128 8002A928 0780013C */  lui        $at, %hi(D_8006FC14)
/* 1B12C 8002A92C 14FC22A0 */  sb         $v0, %lo(D_8006FC14)($at)
/* 1B130 8002A930 0780013C */  lui        $at, %hi(D_8006FC88)
/* 1B134 8002A934 88FC22A0 */  sb         $v0, %lo(D_8006FC88)($at)
/* 1B138 8002A938 0780013C */  lui        $at, %hi(D_8006FC12)
/* 1B13C 8002A93C 12FC22A0 */  sb         $v0, %lo(D_8006FC12)($at)
/* 1B140 8002A940 0780013C */  lui        $at, %hi(D_8006FC86)
/* 1B144 8002A944 86FC22A0 */  sb         $v0, %lo(D_8006FC86)($at)
/* 1B148 8002A948 EB7A000C */  jal        func_8001EBAC
/* 1B14C 8002A94C 00000000 */   nop
/* 1B150 8002A950 5B65010C */  jal        VSync
/* 1B154 8002A954 21200000 */   addu      $a0, $zero, $zero
/* 1B158 8002A958 0780013C */  lui        $at, %hi(D_8006C600)
/* 1B15C 8002A95C 00C632AC */  sw         $s2, %lo(D_8006C600)($at)
/* 1B160 8002A960 C769010C */  jal        PutDispEnv
/* 1B164 8002A964 21200002 */   addu      $a0, $s0, $zero
/* 1B168 8002A968 0780043C */  lui        $a0, %hi(D_8006C600)
/* 1B16C 8002A96C 00C6848C */  lw         $a0, %lo(D_8006C600)($a0)
/* 1B170 8002A970 9769010C */  jal        PutDrawEnv
/* 1B174 8002A974 00000000 */   nop
/* 1B178 8002A978 7368010C */  jal        SetDispMask
/* 1B17C 8002A97C 01000424 */   addiu     $a0, $zero, 0x1
/* 1B180 8002A980 2400BF8F */  lw         $ra, 0x24($sp)
/* 1B184 8002A984 2000B28F */  lw         $s2, 0x20($sp)
/* 1B188 8002A988 1C00B18F */  lw         $s1, 0x1C($sp)
/* 1B18C 8002A98C 1800B08F */  lw         $s0, 0x18($sp)
/* 1B190 8002A990 2800BD27 */  addiu      $sp, $sp, 0x28
/* 1B194 8002A994 0800E003 */  jr         $ra
/* 1B198 8002A998 00000000 */   nop
.size func_8002A834, . - func_8002A834
