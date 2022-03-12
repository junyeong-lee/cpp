#include <iostream>

using namespace std;

/*
- Template Instantiation
컴파일러가 함수(클래스) 템플릿으로부터 실제 함수(클래스)를 만들어 내는 과정.
  1) 명시적 인스턴스화 (explicit instantiation)
  2) 암시적 인스턴스화 (implicit instantiation)

- Template instantiation 결과를 확인하는 방법
1. 어셈블리 코드 확인
  1) cl file.cpp /FAs ==> file.asm 파일 생성
  2) g++ file.cpp -S ==> file.s 파일 생성

2. 컴파일러 옵션 사용 - g++, clang++
  1) g++ fdump-tree-optional file.cpp
  2) clang++ -Xclang -ast-print -fsyntax-only file.cpp
*/

int add(int a, int b) { return a + b; }

template <typename T> T sqare(T a) { return a * a; }

int main() {
  sqare(3);
  sqare(3.3);

  return 0;
}