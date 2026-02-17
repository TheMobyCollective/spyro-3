#include "common.h"
#include "savepoint.h" // vehicles
#include "camera.h" // anything with the camera
#include "mobyutil.h"
#include "spyro.h"
#include "ovl_header.h"

#include "moby/mobytag.h"
#include "moby/moby260.h"

// change arg0 to pMoby
// #define LEVEL_ID 17

////////////////////////////////////////////////////////////////////////////////////
// Includes etc.

// Collision - unclear types
extern int func_8001A358(Vector3D*, int);

// Sound
extern int func_8003BABC(Moby*, int, char); // fPlayMobySound
extern void func_8003BE70(int); // fKillSound
extern int func_8003BFC0(Moby*, int);

// Stdutil
extern void func_8004E790(void*, int, int); // memset
extern void func_8004F178(Vector3D*, Vector3D*); // fSetVector
extern void func_8004F194(Vector3D*, Vector3D*, Vector3D*); // fAddVector

// Update
extern void func_80054F94(int, Moby*); // unclear types

// UpdateMobys
extern Moby* func_80055A7C(); // get first empty allocated moby
extern void func_80055B18(Moby*); // fDeleteMoby
extern void func_80055C24(Moby*);
extern void func_80055D24(Moby*, int); // fUpdateMobyCollision

// Warp
extern void func_800584BC(int, int); // fWarpToLevel

// Psyq
extern int func_8005C644(); // rand

// .data 80064f9c
extern Sparx sparx;
extern short D_800658A0[0x100]; // sin
extern short D_80065920[0x100]; // cos
extern unsigned char lvlIdToIndex[0x48]; // 80066fcc

// .sdata 8006c3b0
extern int D_8006C528;
extern Moby* mobyArrayPtr; // moby array ptr
extern int D_8006C598;
extern int currentLevel; // 8006C5BC
extern int D_8006C73C;
extern int D_8006C784; // lifeCount
extern unsigned char D_8006C7B4; // EggsCollectedSinceEnteredBitmask

// .bss 8006c7f8
extern Game game; // 8006E344

extern MobyTag_120 D_8006E394; // bss, some sort of shared moby tag?? used by Sparx

extern struct {
	int DAT_80070104; // 80070104
	int DAT_80070108; // 80070108
	int DAT_8007010c; // 8007010c
	int DAT_80070110; // 80070110
	char DAT_80070114; // 80070114
	char DAT_80070115; // 80070115
	short DAT_80070116; // 80070116, maybe char?
	int DAT_80070118; // 80070118
	int DAT_8007011c; // 8007011c
	int DAT_80070120; // 80070120
	Vector3D DAT_80070124; // 80070124, type is a guess
	char DAT_80070130; // 80070130
	char DAT_80070131; // 80070131
	char DAT_80070132; // 80070132
	char DAT_80070133; // 80070133
	short DAT_80070134; // 80070134
	short DAT_80070136; // 80070136
	int DAT_80070138; // 80070138
	int DAT_8007013c; // 8007013c
	int DAT_80070140; // 80070140
	int DAT_80070144; // 80070144
	int DAT_80070148; // 80070148
	short DAT_8007014c; // 8007014c
	char DAT_8007014e; // 8007014e
	char DAT_8007014f; // 8007014f
	int DAT_80070150; // 80070150
	int DAT_80070154; // 80070154
	short DAT_80070158; // 80070158
	short loadLevel; // 8007015a; i.e. to load via vehicle
	int DAT_8007015c; // 8007015c
} D_80070104; // not sure what this does yet, haven't currently typed it
// there's also possibly more afterwards from 80070160 to 80070260, but this might be separate

extern unsigned char eggsCollectedArray[40]; // 80070300 EggsCollectedBitmaskArray
extern ProgressFlags progressFlags; // 80071570

////////////////////////////////////////////////////////////////////////////////////
// Common mobys

/**
 * MobyUpdate_16() - func_level_17_80074CF8()
 * Butterfly (16), Extra Life Butterfly (211)
 * This one looks fucking awful, very WIP
 * https://decomp.me/scratch/L5FpK
 */
INCLUDE_ASM("asm/nonmatchings/overlays/level_17/moby", func_level_17_80074CF8);

/**
 * MobyUpdate_120() - func_level_17_80075384()
 * Sparx
 * TODO
 */
INCLUDE_ASM("asm/nonmatchings/overlays/level_17/moby", func_level_17_80075384);

/**
 * MobyUpdate_260() - func_level_17_800768D4() - MATCHING
 * Thought about implementing with a static inline, but it doesn't compile the same!!
 * This is a common one that can be added to other levels too (keeping the asm for now)
 * https://decomp.me/scratch/IJ8Wz
 */
void func_level_17_800768D4(Moby* arg0) {
// MOBY_UPDATE_FUNC(260)
// MOBY_UPDATE_FUNC(260, LEVEL_ID) {
    //MobyUpdate_260(moby);
    Vector3D sp10;
    int temp_v0_3;
    unsigned char temp_v0_5;
    unsigned char var_a0;
    Vector3D* temp_a0;
    Vector3D* temp_s1;
    MobyTag_260* mobyTag;

    mobyTag = (MobyTag_260*)arg0->mobyTag;
    if (arg0->substate == 0) {
        if (mobyTag->unk4 > 0) {
            arg0->angle.yaw++;
            mobyTag->unkC.z = mobyTag->unkC.z - 6;
            if (mobyTag->unkC.z < -0x80) {
                mobyTag->unkC.z = -0x80;
            }
            arg0->position.x += mobyTag->unkC.x;
            arg0->position.y += mobyTag->unkC.y;
            arg0->position.z += mobyTag->unkC.z;
            temp_s1 = &arg0->position;
            if (arg0->position.z >= 0x400) {
                func_8001A358(temp_s1, 0x2000);
                func_8005629C(arg0);
                if (func_80019194(temp_s1, 0x100) != 0) {
                    func_8004F178(temp_s1, &D_80071900.targetedPosition);
                    func_8004EF04(&D_80071900.D_80071918, 0x1000);
                    temp_v0_3 = DOTPRODUCT(mobyTag->unkC, D_80071900.D_80071918) >> 0xB;
                    if (temp_v0_3 < 0) {
                        func_8004F08C(&D_80071900.D_80071918, 0x1000, -temp_v0_3);
                        func_8004F194(&mobyTag->unkC, &mobyTag->unkC, &D_80071900.D_80071918);
                    }
                }
                mobyTag->unk4--;
                return;
            }
            func_80055B18(arg0);
            return;
        }
        ovlHeader.SpawnParticle(0xA, 0x47, &arg0->position, 0);
        func_80055B18(arg0);
        return;
    }
    if (mobyTag->unk0->state != 0) {
        func_80055B18(arg0);
        return;
    }
    
    var_a0 = func_8004E880(camera.nextCameraPosCartesian.x - arg0->position.x, camera.nextCameraPosCartesian.y - arg0->position.y, 0);
    arg0->angle.yaw = (D_800658A0[(unsigned char)(D_8006C644 * 4)] >> 0x7) + (unsigned char)(var_a0 + 0x80);
    if (arg0->substate == 2) {
        var_a0 += 0x80;
    }
    
    sp10.x = 0;
    sp10.y = 0;
    if (arg0->substate != 3) {
        sp10.x =  D_800658A0[var_a0] / 28;
        sp10.y = -D_80065920[var_a0] / 28;
    }
    sp10.z = 0x520;
    func_8004F194(&arg0->position, &mobyTag->unk0->position, &sp10);
}

/**
 * MobyUpdate_272() - func_level_17_80076BD8()
 * 
 * Zoe
 */
INCLUDE_ASM("asm/nonmatchings/overlays/level_17/moby", func_level_17_80076BD8);

////////////////////////////////////////////////////////////////////////////////////
// Level 17 mobys

/**
 * MobyUpdate_401() - func_level_17_8007774C()
 * Buzz
 * Still very WIP but decent progress has been made
 * Contains A LOT of stuff for putting into contexts
 * https://decomp.me/scratch/w7teg
 * https://decomp.me/scratch/Bftil (newer)
 * https://decomp.me/scratch/ytT0h (newest)
 */
INCLUDE_ASM("asm/nonmatchings/overlays/level_17/moby", func_level_17_8007774C);

/**
 * MobyUpdate_488() - func_level_17_8007A770()
 * Sheila
 * TODO
 */
INCLUDE_ASM("asm/nonmatchings/overlays/level_17/moby", func_level_17_8007A770);

/**
 * MobyUpdate_543() - func_level_17_8007B304()
 * Sheep fodder
 * WIP
 * https://decomp.me/scratch/Zzeuz
 */
INCLUDE_ASM("asm/nonmatchings/overlays/level_17/moby", func_level_17_8007B304);

////////////////////////////////////////////////////////////////////////////////////
// Vehicles (level 10 mobys)
// Probable include split here - these are amongst level-specific mobys in Sunrise Spring Home though
// Possible that these are just taken straight from the level 10 mobys, assuming they're the same
// Sheep are probably different though

/**
 * MobyUpdate_514() - func_level_17_8007BA60()
 * 
 * TODO
 */
INCLUDE_ASM("asm/nonmatchings/overlays/level_17/moby", func_level_17_8007BA60);

/**
 * MobyUpdate_516() - func_level_17_8007C3D0()
 * 
 * TODO
 */
INCLUDE_ASM("asm/nonmatchings/overlays/level_17/moby", func_level_17_8007C3D0);

/**
 * MobyUpdate_651() - func_level_17_8007D19C() - MATCHING
 * Tonnes of includes which should be in the decomp.me context really
 * ASM not deleted yet for cross-level reasons, todo
 * https://decomp.me/scratch/YdBst
 */
typedef struct {
    int unk0;
    int unk4;
    PathTag* unk8;
    int unkC; // countdown timer of some sort
    int unk10;
} MobyTag_651;

void func_level_17_8007D19C(Moby* arg0) {
    Vector3D sp10;
    Vector3D sp20;
    Vector3D sp30;
    Vector3D sp40;
    Vector3D sp50;
    Vector3D sp60;
    int temp_v1_3;
    MobyTag_651* mobyTag;

    mobyTag = (MobyTag_651*)arg0->mobyTag;
    switch (arg0->state) {
        
    case 0:
        switch (arg0->substate) {
        case 0:
            if (progressFlags.lvl30_RocketUsable || ((currentLevel != 0x14) && !progressFlags.lvl20_WhirligigUsable)) {
                func_80055B18(arg0);
                return;
            }
            else {
                arg0->position.z += 0x1000;
                spyro.unk17a = 0x10018000;
                spyro.unk20[1] = 0;
                func_8004F178(&spyro.unk19, &arg0->position);
                spyro.unk19.z += spyro.unk4a + 0x133;
                spyro.unk18.roll = arg0->angle.roll;
                spyro.unk18.pitch = arg0->angle.pitch;
                spyro.unk18.yaw = arg0->angle.yaw;
                arg0->substate = 1;
                func_8003B7B4(&arg0->substate, 1, &savedData);
                func_8003B7B4(&arg0->substate, 1, &unsavedData);
                arg0->state = 7;
                if ((D_8006C73C != 0) && (currentLevel != D_8006C73C) && ((temp_v1_3 = D_8006C73C % 10, (temp_v1_3 == 0)) || ((temp_v1_3 == 7) && (D_8006C73C < 0x3C))) && (arg0->mobyClass == D_8006C528)) {
                    arg0->position.z += 0xC00;
                    func_800136F0(&camera.unk170, (Vector3D*)mobyTag->unk8->nodes, &arg0->position);
                    camera.unk170.yaw = 0;
                    camera.unk170.pitch = 0;
                    spyro.unk17a = 0x10018000;
                    spyro.unk20[1] = 0;
                    camera.unk170.pos.azimuth -= spyro.rotation.yaw;
                    func_8004F178(&spyro.unk19, &arg0->position);
                    spyro.unk19.z += spyro.unk4a + 0x133;
                    spyro.unk18.roll = arg0->angle.roll;
                    spyro.unk18.pitch = arg0->angle.pitch;
                    spyro.unk18.yaw = arg0->angle.yaw;
                    func_80012BA8(&camera.unk170);
                    func_8004F178(&camera.unk184, &camera.unk60);
                    arg0->state = 7;
                } else if (arg0->state == 0) {
                    arg0->state = 1;
                }
            }
            break;
            
        default:
            break;
            
        case 1:
            arg0->position.z += 0xF00;
            func_80055D24(arg0, 2);
            mobyTag->unkC = 0;
            arg0->state = 8;
            break;
        }
        break;
        
    case 1:
        switch (arg0->substate) {
        case 0:
            sp10.x = (D_80065920[arg0->angle.yaw] * 3) >> 3;
            sp10.y = (D_800658A0[arg0->angle.yaw] * 3) >> 3;
            sp10.z = 0;
            func_8004F194(&sp10, &sp10, &arg0->position);
            if (ovlHeader.unk2b(&sp10, arg0->angle.yaw + 0x80, 0) != 0) {
                spyro.unk17c = 0;
                func_8004F178(&sp10, &arg0->position);
                sp10.z += 0x280;
                ovlHeader.unk2c(&sp10);
                arg0->substate = 1;
            }
            break;
        case 1:
            func_8004F178(&sp10, &arg0->position);
            sp10.z += 0x280;
            ovlHeader.unk2c(&sp10);
            break;
        }
        if (spyro.unk13b == arg0) {
            arg0->state = 2;
        case 2:
            if (spyro.unk13b != arg0) {
                camera.unk168 = 0;
                arg0->state = 1;
            } else {
                if (ovlHeader.unk2b(&arg0->position, arg0->angle.yaw, 0) != 0) {
                    D_80070104.loadLevel = ((currentLevel / 10) + 1) * 0xA;
                    arg0->state = 4U;
                }
                func_8004F178(&camera.unk184, &arg0->position);
                func_800136F0(&camera.unk170, (Vector3D*)mobyTag->unk8->nodes, &arg0->position);
                camera.unk170.yaw = 0;
                camera.unk170.pitch = 0;
                camera.unk168 = 0x11;
            }
        }
        break;
        
    case 3:
        camera.unk168 = 0;
        if (D_80070104.loadLevel != 0) {
            mobyTag->unkC = 0x78;
            arg0->state = 4;
        } else {
            arg0->state = 5;
        }
        break;
        
    case 4:
        func_80034F40(arg0, 1);
        arg0->position.z = (int) (arg0->position.z + 0x40);
        spyro.unk17a = 0x10008000;
        spyro.unk20[1] = 0;
        func_8004F178(&spyro.unk19, &arg0->position);
        spyro.unk19.z += spyro.unk4a + 0x133;
        spyro.unk18.roll = spyro.bodyRotation.roll;
        spyro.unk18.pitch = spyro.bodyRotation.pitch;
        spyro.unk18.yaw = spyro.bodyRotation.yaw;
        func_8004F178(&camera.unk184, &arg0->position);
        func_800136F0(&camera.unk170, (Vector3D*)mobyTag->unk8->nodes, &arg0->position);
        camera.unk170.yaw = 0;
        camera.unk170.pitch = 0;
        camera.unk168 = 0x11;
        if (func_800359A4(&mobyTag->unkC, 4) != 0) {
            D_8006C598 += 0x10;
            if (D_8006C598 >= 0xFF) {
                D_8006C598 = 0xFF;
                if ((D_80070104.loadLevel == 0x1E) && (eggsCollectedArray[lvlIdToIndex[27]] == 0)) {
                    D_80070104.loadLevel = 0x1B;
                }
                // BUG // Spike Bug
                // In NTSC-U Rev 0, the game checks if "Bianca Strikes Back" has been seen instead of "Spike Is Born"
                // As this cutscene is always seen by this point in normal play, "Spike Is Born" is never shown to the player
                // This was fixed in all later revisions
                if ((D_80070104.loadLevel != 0x1B) || (progressFlags.lvl63_BiancaStrikesBack != 0)) {
                    func_80054F94(D_80070104.loadLevel, arg0);
                } else {
                    progressFlags.lvl65_SpikeIsBorn = 1;
                    func_800584BC(6, 0x41);
                }
            }
        }
        func_80055D24(arg0, 2);
        break;
        
    case 5:
        sp20.x = D_80065920[arg0->angle.yaw];
        sp20.y = D_800658A0[arg0->angle.yaw];
        sp20.z = 0;
        func_8004F194(&sp20, &sp20, &arg0->position);
        if (ovlHeader.unk2c(&sp20) != 0) {
            spyro.unk17c = 0;
            ovlHeader.unk2b(&sp20, arg0->angle.yaw, 0);
            arg0->state = 6U;
        }
        break;
        
    case 6:
        sp30.x = D_80065920[arg0->angle.yaw];
        sp30.y = D_800658A0[arg0->angle.yaw];
        sp30.z = 0;
        func_8004F194(&sp30, &sp30, &arg0->position);
        if (ovlHeader.unk2b(&sp30, arg0->angle.yaw, 0) != 0) {
            func_8004F178(&sp40, &spyro.position);
            sp40.z -= spyro.unk4a;
            func_8003B634(&savedData, &sp40, spyro.bodyRotation.yaw);
            mobyTag->unkC = 0x78;
            arg0->substate = 0;
            arg0->state = 8;
        }
        break;
        
    case 7:
        func_80034F40(arg0, 1);
        arg0->position.z -= 0x40;
        spyro.unk17a = 0x10018000;
        spyro.unk20[1] = 0;
        func_8004F178(&spyro.unk19, &arg0->position);
        spyro.unk19.z += spyro.unk4a + 0x133;
        spyro.unk18.roll = arg0->angle.roll;
        spyro.unk18.pitch = arg0->angle.pitch;
        spyro.unk18.yaw = arg0->angle.yaw;
        func_80013AE4((Vector3D*)mobyTag->unk8->nodes, &spyro.position);
        func_8004F178(&sp50, &arg0->position);
        arg0->position.z += 0x400;
        sp50.z += 0x200;
        sp50.z = func_8001A358(&sp50, 0x200);
        if (sp50.z != 0) {
            arg0->position.z = sp50.z;
            func_80013B7C(0);
            arg0->state = 5U;
        } else {
            arg0->position.z -= 0x400;
        }
        func_80055D24(arg0, 2);
        break;
        
    case 8:
        func_80034F40(arg0, 1);
        if (mobyTag->unkC != 0) {
            arg0->position.z += 0x40;
            func_800359A4(&mobyTag->unkC, 4);
            if (arg0->substate == 0) {
                spyro.unk17a = 0x10000002;
                if (spyro.movementState == 0) {
                    arg0->substate = 1;
                }
            }
        }
        if (D_8006C7B4 & 1) {
            arg0->state = 9;
        }
        break;
        
    case 9:
        spyro.unk17a = 0x10000002;
        func_80034F40(arg0, 1);
        arg0->position.z -= 0x40;
        func_8004F178(&sp60, &arg0->position);
        arg0->position.z += 0x400;
        sp60.z += 0x200;
        sp60.z = func_8001A358(&sp60, 0x200);
        if (sp60.z != 0) {
            arg0->position.z = sp60.z;
            arg0->substate = 0;
            arg0->state = 1;
        } else {
            arg0->position.z -= 0x400;
        }
        func_80055D24(arg0, 2);
        break;
    }

    if ((game.state == 0) && (arg0->animationState.nextId == 1)) {
        if (func_8003BFC0(arg0, mobyTag->unk10) == 0) {
            mobyTag->unk10 = func_8003BABC(arg0, 0, 4);
            return;
        }
    } else {
        if (func_8003BFC0(arg0, mobyTag->unk10) != 0) {
            func_8003BE70(mobyTag->unk10);
        }
        mobyTag->unk10 = -1;
        return;
    }
    
}

////////////////////////////////////////////////////////////////////////////////////
// Eggs

extern void func_80039714(Moby*);

/**
 * MobyUpdate_132() - func_level_17_8007DC38()
 * Eggs
 * WIP
 * https://decomp.me/scratch/U56AS
 */
INCLUDE_ASM("asm/nonmatchings/overlays/level_17/moby", func_level_17_8007DC38);

/**
 * MobyUpdate_501() - func_level_17_8007ED8C()
 * Egg Fragments
 * Just reuse code from Sunrise Spring Home
 */
void func_level_17_8007ED8C(Moby* moby) {
    func_80039714(moby);
}

////////////////////////////////////////////////////////////////////////////////////
// Utils

/**
 * MobyUpdate_311() - func_level_17_8007EDAC()
 * Triangle to talk text
 * Difficult to match? Possibly lots of local variables which need specifying in the right places
 * https://decomp.me/scratch/RnpBS
 */
INCLUDE_ASM("asm/nonmatchings/overlays/level_17/moby", func_level_17_8007EDAC);
