#include <stdint.h>

extern "C" __attribute__((visibility("default"))) __attribute__((used))
int32_t native_add(int32_t x, int32_t y) {
    return x + y;
}

class CppExample {
    private:
        int number;

    public:
        CppExample();
        ~CppExample();
        int returnInt();
}

CppExample::CppExample()
: number(0) {

}

CppExample::~CppExample() {

}

int CppExample::returnInt() {
    number++;

    return number;
}