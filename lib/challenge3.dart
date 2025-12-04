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

  // myLottoTT의 요소 수가 6이 될 때까지 숫자 입력
  while (myLottoTT.length < 6) {
    myLottoTT.add(Random().nextInt(45) + 1);
  }

  print("발급한 로또 번호 : ${myLottoTT.toList()}");

  // 당첨 번호 숫자와 같은 숫자 확인
  for (int num in myLottoTT) {
    if (winningNum.contains(num)) matchCount++;
  }

  // 당첨 여부 출력
  printWinOrNot(matchCount);
}
