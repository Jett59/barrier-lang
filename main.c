#include <stdio.h>
#include "include/gc.h"

int main(int argc, char* argv[])
{
    gcInit();
    gc();
}