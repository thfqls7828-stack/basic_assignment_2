void challenge2() {
  const List<String> cart = ["티셔츠", "바지", "모자", "티셔츠", "바지"];
  const int tShirtPrice = 10000;
  const int pantsPrice = 8000;
  const int capPrice = 4000;
  final int totalPrice;
  final num discount;

  int tShirt = cart.where((type) => type == "티셔츠").length;
  int pants = cart.where((type) => type == "바지").length;
  int cap = cart.where((type) => type == "모자").length;

  totalPrice = tShirt * tShirtPrice + pants * pantsPrice + cap * capPrice;
  discount = (totalPrice >= 20000) ? totalPrice / 10 : 0;
}
