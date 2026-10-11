#ifndef _LIBSPU_H_
#define _LIBSPU_H_

// temporary libspu include, will be replaced with the real thing as more functions get labelled

/* Minimal PSY-Q libspu subset required by func_8004FA24.
 * The Spyro 3 project does not currently include libspu.h.
 */
typedef struct {
    short left;
    short right;
} SpuVolume;

typedef struct {
    SpuVolume volume;
    int reverb;
    int mix;
} SpuExtAttr;

typedef struct {
    unsigned long mask;
    SpuVolume mvol;
    SpuVolume mvolmode;
    SpuVolume mvolx;
    SpuExtAttr cd;
    SpuExtAttr ext;
} SpuCommonAttr;

#define SPU_COMMON_CDVOLL (1 << 6)
#define SPU_COMMON_CDVOLR (1 << 7)
/* End of minimal libspu subset. */

// libspu
extern void SpuSetCommonAttr(SpuCommonAttr *attr); // SpuSetCommonAttr

#endif