#include <iostream>

import Math;

using namespace std;

// 오늘의 주제 : module (모듈)

int main() {

  // Module
  // - 모듈은 딱 한번만 Import 됨
  // - import 순서에 상관 없음
  // - 심볼 중복 정의 가능
  // - 모듈의 이름도 지정 가능
  // - 인터페이스/구현부 분리 관리할 필요 없음.

  cout << Add(1, 2) << endl;

  return 0;
}