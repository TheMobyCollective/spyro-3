#include "common.h"
#include "spyro.h"
#include "moby_props.h"
#include "ovl_header.h"

extern int func_80036220(Vector3D*, BoxTag*, int, int); // isInBox

/**
 * MobyUpdate_942() - MATCHING
 * Superfly deactivator
 * https://decomp.me/scratch/TSST1
 */

void MOBYUPDATE(942) (Moby* moby) {
    BoxTag* mobyTag = (BoxTag*)moby->mobyTag;
    if (func_80036220(&spyro.position, mobyTag, 0, 0)) {
        spyro.superflyTimer = 0;
    }
}
