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
