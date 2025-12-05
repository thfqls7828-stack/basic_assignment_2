import 'dart:math';

void printWinOrNot(double matchCount) {
  switch (matchCount) {
    case 6:
      print("당첨 여부 : 1등");
      break;
    case 5.5:
      print("당첨 여부 : 2등");
      break;
    case 5:
      print("당첨 여부 : 3등");
      break;
    case 4:
      print("당첨 여부 : 4등");
      break;
    case 3:
      print("당첨 여부 : 5등");
      break;
    default:
      print("당첨 여부 : 당첨 실패");
  }
}

void myFeature() {
  const List<int> winningNum = [9, 19, 29, 35, 37, 38];
  Set<int> myLottoTT = {};
  double matchCount = 0;
  int bonus = winningNum[0];

  // myLottoTT의 요소 수가 6이 될 때까지 숫자 입력
  while (myLottoTT.length < 6) {
    myLottoTT.add(Random().nextInt(45) + 1);
  }

  // bonus 번호 출력
  while (winningNum.contains(bonus)) {
    bonus = Random().nextInt(45) + 1;
  }

  // 당첨 번호 숫자와 같은 숫자 확인
  for (int num in myLottoTT) {
    if (bonus == num) matchCount += 0.5;
    if (winningNum.contains(num)) matchCount++;
  }

  print("발급한 로또 번호 : ${myLottoTT.toList()}");
  print("당첨 번호 : $winningNum");
  print("보너스 번호 : [$bonus]");

  // 당첨 여부 출력
  printWinOrNot(matchCount);

  // 발급한 로또 초기화
  myLottoTT.clear();
  print("현재 발급한 로또 번호 : ${myLottoTT.toList()}");
}
