#include "common.h"
#include "draw.h"

extern void func_8002AB38(); // func_8002AB38 init
extern void Update(); // func_80055400 update

/** 
 * main() - func_8001200c() - MATCHING
 * https://decomp.me/scratch/v0iC8
 */
void main() {
  //__main(); // put in by the compiler
  func_8002AB38();
  do {
    Update();
    Draw();
  } while (1);
}
