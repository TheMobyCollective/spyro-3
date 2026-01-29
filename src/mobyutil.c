#include "common.h"
#include "mobyutil.h"
#include "stdutil.h"
#include "ovl_header.h"

// collision
extern int func_8001A310(Vector3D*, int, int, Moby*);
extern int func_8001A358(Vector3D*, int);

// mobyfunc
extern void func_8002E2D0();

// spyro
extern int func_80040954(int);

// str
extern int func_80050680(int, int*, int, int); // fLoadFromWad?(int sector,int *dest,undefined *len,undefined *sectorOffset)

// updatemobys
extern void func_80055B18(Moby*); // delete moby
extern void func_80056270(Moby*);
extern void func_8005629C(Moby*);

// lib
extern int func_8005C644(); // rand

// data
extern short D_800658A0[0x100]; // sin
extern short D_80065920[0x100]; // cos
extern unsigned char D_80066964[28]; // GemValueToSubstate
extern unsigned char D_80066988[8]; // GemAnimationIds
extern unsigned char D_80066990[8]; // GemColourIndices
extern unsigned char D_80066F54[40]; // gems per level / 100
extern unsigned char D_80066F7C[40]; // eggs per level

// sdata
extern int levelIndex; // 8006C58C
extern int* dragonModelPtr; // 8006C5B0
extern int D_8006C648; // deltaTime
extern Moby* D_8006C704; // FirstAllocatedMobyPointer
extern int D_8006C770;

// bss
extern WadHeader wadHeader; // 8006d8d8
extern StreamingData streamingData; // 8006e470
extern CollisionData D_80071900;
extern Spyro spyro; // 80070328
extern LevelWadHeader levelWadHeader; // 80072098

////////////////////////////////////////////////////////////////////////////////////

/**
 * ???() - func_80034DAC()
 * WIP, lots of externs but a fairly short function
 * https://decomp.me/scratch/cbDKn
 */
INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80034DAC);

/** 
 * DoMobyAnimation - func_80034F40() - MATCHING
 * https://decomp.me/scratch/QgLnA
 */
void func_80034F40(Moby* moby, int newId) {
    if (moby->animationState.nextId != newId) {
        D_8006C770 = 0;
        moby->animationProgress = 0x72;
        moby->animationState.nextId = newId;
        moby->animationState.nextFrame = 0;
        func_80035734(moby); // moby lerp error thing ??
    }
}

/** 
 * SetMobyAnimation() - func_80034F80()
 * Weird, has that weird array I've labelled as "moby sound pointers"??
 * https://decomp.me/scratch/wbxvf
 */
INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80034F80);

/**
 * SetDefaultMobyProperties() - func_80034FEC() - MATCHING
 * https://decomp.me/scratch/Ya4ab
 */
void func_80034FEC(Moby* arg0) {
    arg0->lowDrawDistance = 0x10;
    arg0->updateDistance = 0xFF;
    arg0->unknown4 = 4;
    arg0->animationState.nextFrame = 1;    
    arg0->animationProgress = 0x30;
    arg0->unknown3[0] = 1;
    arg0->animationRun = 0xFF;
    arg0->highDrawDistance = 0x40;
    arg0->subtype = 0xFF;
    arg0->gemValue = 0xFF;
}

/**
 * ???() - func_80035030() - MATCHING
 * Ready to implement, might want to spend a small amount of time cleaning it too
 * Maybe consider making a txt file with my common functions and externed variables when this is in too
 * https://decomp.me/scratch/KUovp
 */
INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80035030);

INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80035194);

/** 
 * ???() - func_80035734() - MATCHING
 * Content is possibly not included in retail versions (moby lerp error from Spyro 1?)
 * https://decomp.me/scratch/Dz93r
 */
void func_80035734(Moby* moby) { // Based on other functions, seems to take in a moby, which makes sense
    return;
}

/**
 * ???() - func_8003573C() - MATCHING
 * Possibly responsible for turning a moby towards the player?
 * https://decomp.me/scratch/rAQLx
 */
int func_8003573C(Moby* arg0, int arg1, int arg2, int arg3) {
    int temp_a0;
    int temp_v0;

    temp_v0 = func_8004E880(spyro.position.x - arg0->position.x, spyro.position.y - arg0->position.y, 0);
    temp_a0 = func_8004F264(temp_v0, arg0->angle.yaw);
    
    if      (D_8006C648 == 3) arg1 += (arg1 >> 1);
    else if (D_8006C648 == 4) arg1 *= 2;
    
    if (temp_a0 < arg1) arg1 = temp_a0; // temp_a0 acts as an upper bound
    
    if (arg2 < func_8004F264(temp_v0, arg0->angle.yaw)) {
        arg0->angle.yaw = func_8004F2EC(temp_v0, arg0->angle.yaw, arg1, (arg1 >> 1) + 1);
        return 0;
    }
    if (arg3 != 0) {
        arg0->angle.yaw = func_8004F2EC(temp_v0, arg0->angle.yaw, arg1, (arg1 >> 1) + 1);
    }
    return 1;
}

/**
 * ???() - func_8003585C() - MATCHING
 * Ready to add
 * https://decomp.me/scratch/LaxWp
 */
INCLUDE_ASM("asm/nonmatchings/mobyutil", func_8003585C);

/**
 * CountTimerDown() - func_800359A4() - MATCHING
 * Ready to add
 * https://decomp.me/scratch/FjxxT
 */
INCLUDE_ASM("asm/nonmatchings/mobyutil", func_800359A4);

/**
 * ???() - func_80035A80()
 * WIP
 * https://decomp.me/scratch/h37BL
 */
INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80035A80);

/**
 * SnapMobyToGround() - func_80035D38() - MATCHING
 * Snaps moby to ground
 * https://decomp.me/scratch/pnSZL
 */
int func_80035D38(Moby* moby) {
    int x;
    
    moby->position.z += 0x5DC;
    x = func_8001A358(&moby->position, 0x1000);
    moby->position.z -= 0x5DC;
    return x;
}

/**
 * SnapMobyToGroundRange() - func_80035D84()
 * Annoying register bullshit
 * https://decomp.me/scratch/AzgPl
 */
INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80035D84);

/**
 * ???() - func_80035DDC() - MATCHING
 * Does something involving moving a moby and some sin / cos stuff
 * https://decomp.me/scratch/dRDSG
 */
int func_80035DDC(Moby* arg0, int arg1, int arg2, int arg3, int arg4) {
    Vector3D sp18;

    if (!(arg4 & 0x10000)) {
        if      (D_8006C648 == 3) arg1 += arg1 >> 1;
        else if (D_8006C648 == 4) arg1 *= 2;
    }
    sp18.x = (D_80065920[arg0->angle.yaw] * arg1) >> 0xC;
    sp18.y = (D_800658A0[arg0->angle.yaw] * arg1) >> 0xC;
    sp18.z = 0;
    func_8004F194(&sp18, &sp18, &arg0->position);
    return func_80038000(arg0, &sp18, arg3, arg2, arg4);
}

/**
 * ???() - func_80035EE0() - MATCHING
 * Ready to add
 * Does something involving moving a moby and some sin / cos stuff
 * https://decomp.me/scratch/jDsId
 */
INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80035EE0);

/** 
 * ???() - func_80036018() - MATCHING
 * Does some arithmetic
 * https://decomp.me/scratch/u3loU
 */
int func_80036018(int arg0, int arg1, int arg2) {
    int diff;
    int absDiff;

    diff = func_8003613C(arg0, arg1); // arg1 - arg0
    absDiff = ABS(diff); // |arg1 - arg0|
    if (arg2 < absDiff) {
        if (diff < 0) return func_8003617C(arg1, arg2);  // if arg1 < arg0,  return arg1 + arg2
        else          return func_8003617C(arg1, -arg2); // if arg1 >= arg0, return arg1 - arg2
    }
    return arg0;
}

/**
 * ???() - func_800360A0() - MATCHING
 * Does some simple but very specific arithmetic, types took a while to get exactly right
 * https://decomp.me/scratch/J8wdV
 */
int func_800360A0(int arg0, int arg1, unsigned char arg2) {
    return func_8003617C(arg1, (func_8003613C(arg1, arg0) * arg2) >> 8); // y + ((x - y) * z) / 256
}

/**
 * ???() - func_800360F8 - MATCHING
 * Mixes some functions
 * https://decomp.me/scratch/aUHyS
 */
int func_800360F8(int arg0, int arg1, int arg2, unsigned char arg3) {
    return func_800360A0(func_80036018(arg0, arg1, arg2), arg1, arg3);
}

/**
 * ???() - func_8003613C - MATCHING
 * Signed difference mod 0x80
 * https://decomp.me/scratch/bt3wL
 */
int func_8003613C(int arg0, int arg1) {
    int var_a0;

    var_a0 = (arg1 - arg0) & 0xFF;
    if (var_a0 >= 0x81) {
        var_a0 -= 0x100;
    }
    return var_a0;
}

/**
 * ???() - func_8003615C - MATCHING
 * Signed difference mod 0x800
 * https://decomp.me/scratch/jXP9Z
 */
int func_8003615C(int arg0, int arg1) {
    int var_a0;

    var_a0 = (arg1 - arg0) & 0xFFF;
    if (var_a0 >= 0x801) {
        var_a0 -= 0x1000;
    }
    return var_a0;
}

/**
 * ???() - func_8003617C() - MATCHING
 * Add two ints and make them char
 * https://decomp.me/scratch/Ijb5H
 */
int func_8003617C(int arg0, int arg1) {
    return (arg0 + arg1) & 0xFF;
}

/**
 * ???() - func_80036188() - MATCHING
 * Ready to implement
 * https://decomp.me/scratch/a5QDz
 */
INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80036188);

INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80036220);

/**
 * RandBetween() - func_8003636C() - MATCHING
 * https://decomp.me/scratch/GldaF
 */
int func_8003636C(int low, int high) {
    return (func_8005C644() % ((high - low) + 1)) + low;
}

/**
 * RandSignedBetween() - func_800363DC() - MATCHING
 * https://decomp.me/scratch/8cKXa
 */
int func_800363DC(int low, int high) {
    int r;
    int out;

    r = func_8005C644();
    out = (r % ((high - low) + 1)) + low;
    if (r & 1) {
        return out;
    }
    return -out;
}

INCLUDE_ASM("asm/nonmatchings/mobyutil", func_8003645C);

INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80036518);

INCLUDE_ASM("asm/nonmatchings/mobyutil", func_800365E4);

INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80036708);

INCLUDE_ASM("asm/nonmatchings/mobyutil", func_800368A4);

/**
 * ???() - func_800369B8() - MATCHING
 * https://decomp.me/scratch/fWFU8
 */
void func_800369B8() {
    func_8002E2D0();
}

/**
 * ???() - func_800369D8() - MATCHING
 * Probably ready to add
 * https://decomp.me/scratch/Fc1Ui
 */
INCLUDE_ASM("asm/nonmatchings/mobyutil", func_800369D8);

INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80036A68);

INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80036E60);

/**
 * ???() - func_80037014() - MATCHING
 * https://decomp.me/scratch/tufAO
 */
void func_80037014(Moby* moby) {
    moby->position.z = func_80035D38(moby) + moby->distanceToGround;
    func_80056270(moby);
    func_8005629C(moby);
}

INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80037058);

INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80037168);

//////////////////////////////////////////////////////////////// jtbl section below
/*
80037324
Dialogue header
There's a few groups of data in the header, usually 2 bytes for each one
First byte is always the total length of the header, but the rest of the blocks are all iterated over (no early return unless otherwise stated), some other stuff happens after this if it doesn't return early
Block contents e.g. h[], e.g. h[0] for the first value

h[0]:
1 - 9 (2 bytes):
	eggNo = max(0, h[0] - 2)
	eggBm = 1 << (eggNo & 0x1f);
	If egg bitmask eggBm has been collected since entering + some other condition involving 8006c62c (?):
		nextMsg = this message;
		Spawn moby class h[1];
		Some other stuff
	h[0] = 1 and 2 therefore seem to do the same thing? and this supports up to 8 eggs

0x23 (3 bytes):
	Just jump over this // both other bytes unused?

0x24 (2 bytes):
	if (h[1] == 1)
		var = EggsCollectedSinceEnteredBitmask & 1;
		if (var != 0)
			nextMsg = this message;
			h[1] = 0xff; DAT_8006c624 = 0xffffffff; DAT_8006c798 = 0; DAT_8006c608 = 0;
			FUN_8003b7b4(&h[1],1,&CurrentCheckpointData);
	else if (h[1] - 1 < 10) // I think 0 is excluded here // seems to be indicating an egg number
		if (EggsCollectedSinceEnteredBitmask & (1 << (h[1] - 2 & 0x1f)))
			nextMsg = this message;
			h[1] = 0xff; DAT_8006c624 = 0xffffffff; DAT_8006c798 = 0; DAT_8006c608 = 0;
			FUN_8003b7b4(&h[1],1,&CurrentCheckpointData);	  
	else if (h[1] - 1 < 0x14) // I think 0 is excluded here
		var = *(byte *)((int)&CameraPosition_800719f0.Pos.ρ + h[1] + 1); // no idea
		if (var != 0)
			nextMsg = this message;
			h[1] = 0xff; DAT_8006c624 = 0xffffffff; DAT_8006c798 = 0; DAT_8006c608 = 0;
			FUN_8003b7b4(&h[1],1,&CurrentCheckpointData);

0x25 (8 bytes):
	if (nextMsg == this message)
		var = h[6] - 1; // Moneybags level ID		
		if (var != 0xfe)
			DAT_8006c59c = MoneybagsValues[var].Value;
			DAT_8006c750 = 1;
			if (!MoneybagsValues[var].Paid && TotalGems < MoneybagsValues[var].Value)
				nextMsg = h[7] - 1;
				return; // EARLY RETURN

		DAT_8006c6e4 = 0;
		for (var = 0; var < 5; var++)
			if (h[1 + var] != 0xff) DAT_8006c6e4++;

0x26 (1 byte):
	if (this message == nextMsg) DAT_8006c5fc = 1;

0x27 (2 bytes):
	if (this message == nextMsg)
		DialogueBitmaskArray[LevelNumber] = // not sure this is ever actually used!
			DialogueBitmaskArray[LevelNumber] | (1 << ((h[1] - 1) & 0x1f));

0x29 (2 bytes):
	if (nextMsg == this message) DAT_8006c624 = 1; // second byte unused?

0x2a - 0x2b (1 byte):
	Just jump over this

0x2c (2 bytes):
	if (this message == nextMsg) DAT_8006c590 = h[1] - 1; // dialogue camera, many different possible angles

0x2d (2 bytes):
	if (nextMsg == this message) DAT_8006c608 = h[1] - 1;

0x3b (1 byte):
	DAT_8006c798 = 1; // used for instance when Zoe demonstrates saving to the player

Default:
	Repeat?

TODO: investigate what the headers are for each line of dialogue
*/
INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80037324);

INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80037768);

INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80037A60);

INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80037BBC);

/**
 * SpawnTalkText() - func_80037F50() - MATCHING
 * Ready to add
 * https://decomp.me/scratch/IWP83
 */
INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80037F50);

INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80038000);

INCLUDE_ASM("asm/nonmatchings/mobyutil", func_800382F4);

INCLUDE_ASM("asm/nonmatchings/mobyutil", func_800387AC);

/**
 * CalculateAtlasPercentage() - func_80038B44() - MATCHING
 * https://decomp.me/scratch/BzAVm
 */
int func_80038B44(int lvlIndex, int gems, int eggs) {
    int num;
    int den;
    int percentage;

    int gemTotal;
    int eggTotal;

    gemTotal = D_80066F54[lvlIndex] * 25;
    num = gems + eggs * 100;
    eggTotal = D_80066F7C[lvlIndex] * 25;
    
    den = (eggTotal + gemTotal) * 4;
    percentage = (num * 100/*%*/) / den;
    
    if ((num != 0) && (percentage == 0)) {
        percentage = 1;
    }
    return percentage;
}

INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80038BF8);

INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80038F14);
//////////////////////////////////////////////////////////////// jtbl section above

/**
 * TODO
 */
INCLUDE_ASM("asm/nonmatchings/mobyutil", func_800391E8);

/**
 * TODO
 */
INCLUDE_ASM("asm/nonmatchings/mobyutil", func_80039714);

/**
 * LoadDragonModel() - func_80039974() - MATCHING
 * https://decomp.me/scratch/MIiGP
 */
void func_80039974(int dragonNo, int localOffset, int sizeLeft) {
    int var_a2;
    DataHeader* temp_a0;

    var_a2 = sizeLeft;
    temp_a0 = &levelWadHeader.dragonModels[dragonNo];
    if (var_a2 == 0) {
        var_a2 = temp_a0->size - localOffset;
    }
    func_80050680(streamingData.wadSector, dragonModelPtr, var_a2, localOffset + (wadHeader.lvl[levelIndex].lvl.offset + temp_a0->offset));
}

/**
 * SpawnReflectionMoby() - func_800399E8() - MATCHING
 * https://decomp.me/scratch/Nr1VQ
 */
void func_800399E8(Moby* moby, Moby** reflectionMoby) {
    Vector3D sp10;
    int temp_s0;
    int* reflectionTag;

    func_8004F178(&sp10, &moby->position);
    D_80071900.D_80071924 = 0xFF;
    sp10.z += 0x12C;
    temp_s0 = func_8001A310(&sp10, 0x7D0, 0, moby);
    if (func_80040954(D_80071900.D_80071924) == 4) {
        *reflectionMoby = ovlHeader.SpawnMoby(moby->mobyClass, moby);
        if (moby->mobyClass == 1) {
            if ((unsigned int)moby < (unsigned int)D_8006C704) {
                (*reflectionMoby)->substate = D_80066964[moby->gemValue];
            } else {
                (*reflectionMoby)->substate = moby->substate;
            }
            (*reflectionMoby)->animationState.id = D_80066988[(*reflectionMoby)->substate];
            (*reflectionMoby)->colour.r = D_80066990[(*reflectionMoby)->substate];
        }
        if (*reflectionMoby != 0) {
            reflectionTag = (*reflectionMoby)->mobyTag;
            (*reflectionMoby)->unknown4 = 0xFD;
            (*reflectionMoby)->unknownCollision = 0;
            (*reflectionMoby)->state = 0x7D;
            if (*(int*)&(*reflectionMoby)->colour == 0) {
                (*reflectionMoby)->colour.a = 0x50;
            }
            *reflectionTag = temp_s0;
        }
    }
}

/**
 * UpdateMobyReflection() - func_80039B6C() - MATCHING
 * https://decomp.me/scratch/qDlNV
 */
void func_80039B6C(Moby* moby, Moby** reflectionMoby) {
    Vector3D sp10;
    int* reflectionTag;
    
    if (moby->state >= 0x80) {
        if ((*reflectionMoby != 0) && ((unsigned char)(*reflectionMoby)->state < 0x80U)) {
            func_80055B18(*reflectionMoby);
        }
    } else {
        if ((*reflectionMoby != 0) && (moby->mobyClass == 0x78)) {
            func_8004F178(&sp10, &(moby->position));
            D_80071900.D_80071924 = 0xFF;
            sp10.z += 300;
            func_8001A310(&sp10, 0x7D0, 0, moby);
            if (func_80040954(D_80071900.D_80071924) != 4) {
                func_80055B18(*reflectionMoby);
                *reflectionMoby = 0;
                return;
            }
        }
        if ((spyro.position.z < moby->position.z) && (spyro.movementState - 11 < 2)) {
            if (*reflectionMoby != 0) {
                func_80055B18(*reflectionMoby);
            }
            *reflectionMoby = 0;
            return;
        }
        if ((*reflectionMoby) != 0) {
            reflectionTag = (*reflectionMoby)->mobyTag;
            if (moby->position.z < *reflectionTag) {
                (*reflectionMoby)->drawn = 0;
                (*reflectionMoby)->lowDrawDistance = 0U;
                return;
            }
            (*reflectionMoby)->lowDrawDistance = moby->lowDrawDistance;
            (*reflectionMoby)->updateDistance = moby->updateDistance;
            (*reflectionMoby)->unknown3[0] = 0;
            (*reflectionMoby)->animationState.id = moby->animationState.id;
            (*reflectionMoby)->animationState.nextId = moby->animationState.nextId;
            (*reflectionMoby)->animationState.frame = moby->animationState.frame;
            (*reflectionMoby)->animationState.nextFrame = moby->animationState.nextFrame;
            (*reflectionMoby)->animationProgress = moby->animationProgress;
            (*reflectionMoby)->position.x = moby->position.x;
            (*reflectionMoby)->position.y = moby->position.y;
            (*reflectionMoby)->position.z = ((*reflectionTag * 2) - moby->position.z);
            (*reflectionMoby)->angle.roll = moby->angle.roll;
            (*reflectionMoby)->angle.pitch = -moby->angle.pitch;
            (*reflectionMoby)->angle.yaw = moby->angle.yaw;
            if ((*reflectionMoby)->colour.a != 0x50) {
                if (moby->mobyClass == 120) {
                    (*reflectionMoby)->angle.roll = moby->angle.roll + 0x80;
                } else {
                    (*reflectionMoby)->angle.pitch = 0x80 - moby->angle.pitch;
                }
            }
            (*reflectionMoby)->subtype = moby->subtype;
        }
    }
}
