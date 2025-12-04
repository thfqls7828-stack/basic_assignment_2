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
