module; // global module fragment

#include <vector>

// import module ...

export module Math;

// submodule
// math.time을 import해서 다시 math모듈에 포함해서 export
export import math.time;

export import : MathPartition_1;
export import : MathPartition_2;

// 1) 함수 앞에다가 export
export int Add(int a, int b) { return a + b; }

// 2) export하고 싶은 애들을 따로 묶어주는
export {
  void TestExport() {}
}

// 내부적으로 사용하는 함수
void Internal() {}

// 3) namespace 지정
export namespace math {
void TestExport2() {}
} // namespace math