class Product {
  String name;
  double price;
  double weiht;
  String image;
  Product(this.name, this.price, this.weiht, this.image);
}

List<Product> products = [
  Product("Fresh Peach", 8.00, 0.00, "assets/image/1.png"),
  Product("Avacoda", 7.00, 2.00, "assets/image/2.png"),
  Product("Pineapple", 9.90, 1.50, "assets/image/3.png"),
  Product("Black Grapes", 7.05, 5.00, "assets/image/4.png"),
  Product("Pomegranate", 2.09, 1.50, "assets/image/5.png"),
  Product("Fresh B roccoli", 3.00, 1.00, "assets/image/6.png"),
];
