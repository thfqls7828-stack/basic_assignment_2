 # 🔎 CHALLENGE 1 : 점수에 맞는 등급 출력
 ## 프로그래밍 요구사항
 - 84점에 맞는 grade를 반환해 "이 학생의 점수는 84이며, 등급은 B등급입니다!" 출력
 + ➕ 사용자에게 "score"를 입력 받아 grade"반환"
 + ➕ if 조건문을 통한 null 및 예외 처리

## 구현
```dart
import 'dart:io';

// 점수 -> 학점 변환 함수
String calculrateGrade(int score) {
  switch (score ~/ 10) {
    case 10:
    case 9:
      return "A";
    case 8:
      return "B";
    default:
      return "C";
  }
}

void cahllenge1() {
  final String? input;
  final int? score;
  final String grade;
  final int score2 = 84;
  final String grade2;

  grade2 = calculrateGrade(score2);
  print("이 학생의 점수는 $score2이며, 등급은 $grade2입니다!");

  print("Input your score : (0 ~ 100)");

  // 문자열 입력 받기
  input = stdin.readLineSync();

  // 입력값이 없으면 입력을 요청하며 시스템 종료
  if (input == null) {
    print("Did not enter a integer.");
    exit(0);
  }

  // 입력값이 있으면 정수 변환 시도
  // int type or null
  score = int.tryParse(input);

  // score가 null일 때, 정수 입력 요청
  // score가 0 ~ 100 사이 범위를 벗어날 때, 재입력 요청
  // 정상 범위의 값일 때 calculrateGrade() 함수에 score 인자 전달
  if (score == null) {
    print("Enter a integer.");
  } else if (score > 100 || score < 0) {
    print("The Range of integers is form 0 to 100.");
  } else {
    grade = calculrateGrade(score);
    print("이 학생의 점수는 $score이며, 등급은 $grade등급입니다!");
  }
}

```

- 점수를 param으로 갖고, 반환하는 함수 -> calculateGrade(int score);
- swtich문을 통해 점수가 포함되는 구간 판별 -> 몫(0 ~ 10)을 구해 점수 구하기
+ ➕ 사용자에게 문자열을 입력 받아, 정수 타입으로 변환 -> stdin.readLineSync() + int.tryParse()
+ ➕ 문자열 입력 과정과 정수 변환 과정에서 생길 수 있는 null 값 처리
+ ➕ 0 ~ 100 범위에서 벗어나는 값 예외 처리

## 실행결과
<img width="316" height="71" alt="image" src="https://github.com/user-attachments/assets/9003f63a-175a-427c-9683-def129f0cf17" />


 # 🔎 CHALLENGE 2 : 가상의 쇼핑몰
 ## 프로그래밍 요구사항
 - 구매자의 장바구니 품목들의 금액 계산
 - 구매 가격이 20000원 이상일 시, 10% 할인
 -  할인 가격을 제외한 총 금액 출력

 ## 구현
 ```dart
void challenge2() {
  const int tShirtPrice = 10000;
  const int pantsPrice = 8000;
  const int capPrice = 4000;
  const int amount = 20000;
  final int price;
  final int discount;
  final int totalPrice;

  const List<String> cart = ["티셔츠", "바지", "모자", "티셔츠", "바지"];

  // list 내 해당하는 요소들 갯수 확인
  final int tShirt = cart.where((type) => type == "티셔츠").length;
  final int pants = cart.where((type) => type == "바지").length;
  final int cap = cart.where((type) => type == "모자").length;

  // 할인 전 가격, 할인 금액, 최종 결제 금액
  price = tShirt * tShirtPrice + pants * pantsPrice + cap * capPrice;
  discount = (price >= amount) ? (price / 10).toInt() : 0;
  totalPrice = price - discount;

  print("장바구니에 $price원 어치를 담으셨네요!");
  print("할인금액 : $discount원");
  print("최종 결제 금액은 $totalPrice원입니다!");
}

 ```
 
 - 주어진 list 내의 각 품목 별 갯수 파악 -> int tShrit, int pants, int cap 변수에 저장
 - 품목별 갯수 * 해당 품목 가격 계산 -> int price
 - 20000 이상일 시 할인가격을 10%로 설정, 넘지 않았을 땐 0으로 설정 -> int discount = (price >= amount) (price / 10).toInt() ? 0
 - 할인가를 제외한 최종 결제 금액 출력 -> totalPrice

 ## 실행결과
 <img width="266" height="86" alt="image" src="https://github.com/user-attachments/assets/68af4882-79df-4266-83aa-e4e9052de373" />


 # 🔎 CHALLENGE 3 : 가상 복권 프로그램
 ## 프로그래밍 요구사항
 - 중복 없이 추첨하여 복권 발급
 - 발급한 복권 번호와 당첨 번호 비교
 - 발급한 로또 초기화

 ## 구현
```dart
import 'dart:math';

void printWinOrNot(int matchCount) {
  switch (matchCount) {
    case 6:
    case 5:
      print("당첨 여부 : 1등");
      break;
    case 4:
      print("당첨 여부 : 2등");
      break;
    case 3:
      print("당첨 여부 : 3등");
      break;
    default:
      print("당첨 여부 : 당첨 실패");
  }
}

void challenge3() {
  const List<int> winningNum = [9, 19, 29, 35, 37, 38];
  Set<int> myLottoTT = {};
  int matchCount = 0;
  int bonus;

  // myLottoTT의 요소 수가 6이 될 때까지 숫자 입력
  while (myLottoTT.length < 6) {
    myLottoTT.add(Random().nextInt(45) + 1);
  }

  //
  bonus = Random().nextInt(45) + 1;

  // 당첨 번호 숫자와 같은 숫자 확인
  for (int num in myLottoTT) {
    if (winningNum.contains(num)) matchCount++;
  }

  print("발급한 로또 번호 : ${myLottoTT.toList()}");

  // 당첨 여부 출력
  printWinOrNot(matchCount);

  // 발급한 로또 초기화
  myLottoTT.clear();
}

```
 - 중복 없는 정수 6개를 입력받을 컬렉션 Set<Int> 생성 -> myLottoTT
 - dart.math 라이브러리의 Random() 메서드를 이용하여 1 ~ 45 사이의 랜덤 정수 myLottoTT에 저장 -> Random().nextInt(45)+1
 - 발급한 복권 myLottoTT와 당첨 번호 List winningNum 비교 후, 겹치는 정수가 있을 때마다 matchCount 1씩 증가
 - Swtich문을 통해 당첨 여부 및 등수 출력 -> void printWinOrNot()
 - 발급한 로또 초기화 -> myLottoTT.clear()

 ## 실행결과
 <img width="299" height="53" alt="image" src="https://github.com/user-attachments/assets/a66dd1a7-787e-43fb-ade3-550cc8231680" />
