//
// Created by nsubw on 3/24/2023.
//

#include <stdint.h>
#include "exam1.cpp"

extern "C" __attribute__((visibility("default"))) __attribute__((used))
int32_t native_add(int32_t x, int32_t y) {
    Exam1 exam1;
    int number = exam1.getNum(10);

    return x+y;
}