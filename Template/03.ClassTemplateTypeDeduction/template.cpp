#include <iostream>
#include <list>

using namespace std;

/*
Template Argument Type Deduction
1. 사용자가 템플릿 인자를 명시적으로 지정하지 않은 경우 컴파일러가 인자를 보고
추론(deduction, 연역)하는 것
2. 타입을 결정하는 방식 중요(type deduction rule 동영상 참고)
3. 클래스 템플릿의 경우, C++17부터 타입 추론을 지원한다.
  - 생성자의 인자를 통해서 타입을 결정
  - 사용자가 작성한 "class template type deduction guide"를 통해서 타입을 결정

Class Template Argument Type Deduction
1. C++17부터 지원
2. 생성자를 통한 타입 결정
3. 사용자가 "user define deduction guide" 제공
*/

template <typename T> T square(T a) { return a * a; }

template <typename T> class Vector {
  T *buff;

public:
  Vector() {}
  Vector(int sz, T initValue) {}

  template <typename C> Vector(C &c) {}
};
// User define deduction guide
Vector()->Vector<int>;

template <typename C>
//  Vector(C &c)->Vector<C>; // C : list<int>
Vector(C &c)->Vector<typename C::value_type>; // int

int main() {
  //   square<int>(3);
  //   square(3);

  Vector<int> v1(10, 3); // 10개를 3으로 초기화.
  Vector v2(10, 3);      // C++17

  Vector v3; // note: template argument deduction/substitution failed:

  //   list<int> s = {1, 2, 3};
  list s = {1, 2, 3}; // C++17 style..

  Vector v4(s);

  return 0;
}