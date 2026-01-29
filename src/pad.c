#include "common.h"
#include "stdutil.h"
#include "pad.h"

// psyq
extern void func_8005956C(int); // VSync

// sdata
extern PsyqPad* currentDemoInput; // 8006C538, note that if PsyqPad is updated any ptr arithmetic will need updating
extern char D_8006C5B4;
extern int* D_8006C55C; // ptr to start of demo inputs block (specifically length)
extern int D_8006C644;
extern int isDemoMode; // 8006C658 - note that isDemoMode should not be volatile in here
extern char D_8006C760;
extern int D_8006C7CC;

// bss
extern StreamingData streamingData; // 8006e470

// TODO - hardware types (e.g. 0x53 is The Contraption)

////////////////////////////////////////////////////////////////////////////////////

/**
 * ???() - func_80039E34()
 * Unfinished and weird
 * https://decomp.me/scratch/lUIyg
 */
INCLUDE_ASM("asm/nonmatchings/pad", func_80039E34);

/**
 * ???() - func_80039E88() - MATCHING? INVESTIGATION NEEDED
 * May want to confirm this takes a Pad* input, also comes with a slight modification to Pad
 * What are these inputs??
 * Also worth noting that changing the StickState from "typedef (unsigned) char StickState[4]" to the new def breaks this?
 * Possibly requires rewriting some functions in here to use the old typedef
 * https://decomp.me/scratch/i6QZs
 */
INCLUDE_ASM("asm/nonmatchings/pad", func_80039E88);

/**
 * ???() - func_8003A010() - MATCHING
 * Probably VSync callback?
 * https://decomp.me/scratch/qY3Qr
 */
void func_8003A010(Pad* arg0) {
    PadState* var_s4; // specifically should be a pointer to an array of four PadStates
    PsyqPad* var_s5;
    int i;
    enum PadInput var_v1;
    unsigned char storedControllerType;

    storedControllerType = arg0->controllerType;
    if (arg0 == &pad) {
        var_s5 = &demoPadState;
        var_s4 = &D_80071500[0];
    } else {
        var_s5 = &D_800718DC;
        var_s4 = &D_80071FD8[0];
    }
    
    if (var_s5->status) {
        arg0->controllerType = CONTROLLER_TYPE_DISCONNECTED;
        arg0->unk1c = 0;
        arg0->unk1d = 0;
        arg0->unk1b = 0;
    }
    else {
    	switch(var_s5->size_type) {
    		case 0x41:
    			arg0->controllerType = CONTROLLER_TYPE_DPAD;
    			break;
    		case 0x53:
    		case 0x73:
    			if (arg0->controllerType != CONTROLLER_TYPE_STICK) func_80039E34(&var_s5->stick, arg0);
    			arg0->controllerType = CONTROLLER_TYPE_STICK;
    			break;
    		default:
    			arg0->controllerType = CONTROLLER_TYPE_INVALID;
    			break;
    	}
        
        if (arg0->controllerType != storedControllerType) {
            arg0->unk2[0] = 1;
            arg0->unk1d = 0;
            arg0->unk1b = 0;
        }
    }
    
    for (i = 3; i > 0; i--) func_8004E7D4((int*)&var_s4[i], (int*)&var_s4[i - 1], 0x10);
    if (arg0->controllerType < 2) return; // invalid or disconnected

    var_s4->held = (~((var_s5->input[0] << 8) | var_s5->input[1]) & 0xFFFF); // convert the psyq inputs to controller inputs
    if (arg0->controllerType == CONTROLLER_TYPE_STICK) {
        *(int*)&var_s4->stick = *(int*)&var_s5->stick;
        func_80039E88(&var_s4->stick, arg0);
        
        if (var_s5->size_type == 0x53) { // SCPH-1110 remapping
            var_v1 = var_s4->held & ~(SQU | TRI | R1 | L1 | R2);
            if (var_s4->held & SQU) var_v1 |= R2;
            if (var_s4->held & TRI) var_v1 |= R1;
            if (var_s4->held &  R1) var_v1 |= TRI;
            if (var_s4->held &  R2) var_v1 |= L1;
            if (var_s4->held &  L1) var_v1 |= SQU;
            var_s4->held = var_v1;
        }
        
        if (!(var_s4->held & (U | R | D | L))) { // set pad inputs based on sticks
            if      (var_s4->stick.lx >= 193) var_s4->held |= R;
            else if (var_s4->stick.lx  <  64) var_s4->held |= L;
            
            if      (var_s4->stick.ly >= 193) var_s4->held |= D;
            else if (var_s4->stick.ly  <  64) var_s4->held |= U;
        }
    } else {
        *(int*)&var_s4->stick = 0x7F7F7F7F;
    }
    var_s4->pressed = (~var_s4[1].held & var_s4->held);
    var_s4->released = (var_s4[1].held & ~var_s4->held);   
}

/**
 * ???() - func_8003A2B0() - MATCHING
 * This one required isDemoMode to be non-volatile and needed -G0 / G4!
 * https://decomp.me/scratch/lUhLW
 */
void func_8003A2B0(void) {
    int i;
    int x;

    pad.unk3[0] = 0;
    pad.unk3[1] = 0;
    pad.unk3[2] = 0;
    if (isDemoMode == 2) {
        *(int*)&currentDemoInput->status = *(int*)&demoPadState.status;
        x = ((int)currentDemoInput - (int)D_8006C55C) >> 2;
        *(int*)&currentDemoInput->stick  = *(int*)&demoPadState.stick;
        *D_8006C55C = (x + 1) / 2;
    }
    for (i = 0; i < 2; i++) {
        D_8006C644++;
        *(int*)&demoPadState.status = *(int*)&currentDemoInput->status;
        *(int*)&demoPadState.stick = *(int*)&currentDemoInput->stick;
        func_8003A010(&pad);
        D_8006C7CC++;
    };
    if (isDemoMode == 2) {
        func_8005956C(2);
    }
    *(int*)&demoPadState.status = 0xFFFF7300;
    *(int*)&demoPadState.stick = 0x7F7F7F7F;
    currentDemoInput++;
}

/**
 * ???() - func_8003A40C() - MATCHING
 * Now matches without isDemoMode volatile!
 * https://decomp.me/scratch/F8T5A
 */
void func_8003A40C() {
    Pad* var_v1;
    char* var_a0;
    int var_a1;
    int x;

    streamingData.dat_8006e484++; // music frames?
    x = isDemoMode; // need this to match, or otherwise to make isDemoMode volatile
    if (x == 0) {
        
        D_8006C644++;
        for (var_a1 = 0; var_a1 < 2; var_a1++) {
            
            if (var_a1 != 0) {
                var_v1 = &pad2; // pad2
                var_a0 = &D_8006C5B4;
            } else {
                var_v1 = &pad; // pad
                var_a0 = &D_8006C760;
            }

            var_a0[0] = 0;
            var_a0[1] = 0;
            if ((var_v1->unk1d != 0) && (var_v1->vibrationMode != 0)) {
                
                if (var_v1->unk3[2] != 0) {
                    var_v1->unk3[2]--;
                    var_a0[0] = 0;
                    var_a0[1] = var_v1->unk3[3];
                }
                
                if (var_v1->unk3[1] != 0) {
                    var_v1->unk3[1]--;
                    var_a0[0] = 1;
                    var_a0[1] = 0;
                }
                
                if (var_v1->unk3[0] != 0) {
                    var_v1->unk3[0]--;
                    var_a0[0] = 1;
                    var_a0[1] = 0x78;
                }
                
            } else {
                var_v1->unk3[0] = 0;
                var_v1->unk3[1] = 0;
                var_v1->unk3[2] = 0;
            }
        }
    }
    
    if (!isDemoMode) {
        func_8003A010(&pad);
        func_8003A010(&pad2);
        D_8006C7CC++;
    }
}

/**
 * ???() - func_8003A584()
 * WIP, complicated, only a few diffs but they're very non-obvious
 * https://decomp.me/scratch/wVIQi
 */
INCLUDE_ASM("asm/nonmatchings/pad", func_8003A584);

/**
 * ???() - func_8003A908() - MATCHING
 * Seems to suggest the extra pad states are separate from the first
 * https://decomp.me/scratch/dDgAz
 */
void func_8003A908(Pad* arg0) {
    int var_v1;

    *(int*)&arg0->state.stick = 0x7F7F7F7F;
    arg0->state.held = 0;
    arg0->state.pressed = 0;
    arg0->state.released = 0;
    arg0->buttonPressed = 1;
    arg0->dpadPressed = 1;
    arg0->unk4 = 0;
    for (var_v1 = 0; var_v1 < 4; var_v1++) {
        arg0->store[var_v1].held = 0;
        arg0->store[var_v1].pressed = 0;
        arg0->store[var_v1].released = 0;
        *(int*)&arg0->store[var_v1].stick = 0x7F7F7F7F;
    }
}

/**
 * ???() - func_8003A964() - MATCHING
 * https://decomp.me/scratch/v1zl4
 */
void func_8003A964(Pad* arg0, Pad* arg1) {
    int temp_s1;
    int temp_s2;
    int temp_s3;
    int temp_s4;

    temp_s1 = arg1->unk3[0];
    temp_s2 = arg1->unk3[1];
    temp_s3 = arg1->unk3[2];
    temp_s4 = arg1->unk3[3];
    func_8004E7D4((int*)arg1, (int*)arg0, 0x80); // copy arg0 into arg1
    arg1->unk3[0] = temp_s1;
    arg1->unk3[1] = temp_s2;
    arg1->unk3[2] = temp_s3;
    arg1->unk3[3] = temp_s4;
    func_8003A908(arg0);
}

/**
 * ???() - func_8003A9EC() - MATCHING
 * https://decomp.me/scratch/pUFWe
 */
void func_8003A9EC() {
    pad.unk2[0] = 1;
    pad.unk1c = 0;
    pad.unk1d = 0;
    pad.unk1b = 0;
    pad2.unk2[0] = 1;
    pad2.unk1c = 0;
    pad2.unk1d = 0;
    pad2.unk1b = 0;
}
