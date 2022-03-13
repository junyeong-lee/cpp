#include <iostream>

using namespace std;

/*
1. 명시적 인스턴스화(explicit instantiation)
- 템플릿을 사용해서 특정 타입의 함수(또는 클래스)를 생성해달라고 명시적으로
지시하는 것

2. 암시적 인스턴스화(implicit instantiation)
- 명시적 인스턴스화를 하지 않고 템플릿을 사용하는 경우 암시적 인스턴스화가
발생한다.
- 두가지 형태로 사용 가능
  1) 사용자가 타입을 직접 전달하는 경우
  2) template argument type deduction (>= C++17)
  3) 클래스 템플릿의 경우 사용하지 않는 멤버함수는 인스턴스화가 되지 않음(lazy
instantiation)
*/

template <typename T> class Test {
public:
  void foo() {}
  void goo() {}
};

// template class Test<int>; // foo, goo 모두 인스턴스화
// template void Test<int>::foo(); // foo만 인스턴스화

template <typename T> T square(T a) { return a * a; }
// template int square<int>(int);
// template int square<>(int);
// template int square(int);

int main() {
  int n1 = square(3);
  int n2 = square<int>(3);

  Test<int> t1;
  t1.foo();

  return 0;
}