// to_upper.c
#include "to_upper.ispc.h"

void to_upper(char *str, int length) { ispc__to_upper((uint8_t *)str, length); }
