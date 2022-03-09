#include <iostream>

using namespace std;

// 1) Requires Clause
template <typename T>
requires std::integral<T>
void TestConcept(T number) { cout << number << endl; }

// 2) Trailling Requires Clause
template <typename T> void TestConcept2(T number) requires std::integral<T> {
  cout << number << endl;
}

// 3) Contrained Template Parameter
template <std::integral T> void TestConcept3(T number) {
  cout << number << endl;
}

// 4) Abbreviated Function Template
void TestConcept4(std::integral auto number) { cout << number << endl; }

class GameObject {};

class Knight : public GameObject {};

template <typename T>
requires std::derived_from<T, GameObject>
void TestObj(T *obj) {}

template <typename T>
concept MyConcept = !std::is_integral_v<T> && std::derived_from<T, GameObject>;

template <typename T>
concept Addable = requires(T a, T b) {
  a + b;
};

template <typename T>
concept Equality = requires(T a, T b) {
  { a == b } -> std::convertible_to<bool>;
  { a != b } -> std::convertible_to<bool>;
};

template <typename T>
concept Integral = std::is_integral_v<T>;

template <typename T>
concept SignedInt = Integral<T> && std::is_signed_v<T>;

int main() {
  TestConcept4(10);
  //   TestConcept(10.3f);

  TestObj(new Knight);
  //   TestObj(new int);

  return 0;
}