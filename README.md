 # 🔎 CHALLENGE 1
 ## 프로그래밍 요구사항
 - 84점에 맞는 grade를 반환해 "이 학생의 점수는 84이며, 등급은 B등급입니다!" 출력
 + 사용자에게 "score"를 입력 받아 grade"반환"
 + if 조건문을 통한 null 및 예외 처리

## 구현
<img width="485" height="710" alt="image" src="https://github.com/user-attachments/assets/16fb30c0-b3a5-4ca1-80f9-dc42e1b4ec5d" />

- 점수를 param으로 갖고, 반환하는 함수 -> calculateGrade(int score);
- swtich문을 통해 점수가 포함되는 구간 판별 -> 몫(0 ~ 10)을 구해 점수 구하기
+ 사용자에게 문자열을 입력 받아, 정수 타입으로 변환 -> stdin.readLineSync() + int.tryParse()
+ 문자열 입력 과정과 정수 변환 과정에서 생길 수 있는 null 값 처리
+ 0 ~ 100 범위에서 벗어나는 값 예외 처리

## 실행결과
<img width="316" height="71" alt="image" src="https://github.com/user-attachments/assets/9003f63a-175a-427c-9683-def129f0cf17" />
