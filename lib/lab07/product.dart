class Product {
  late final int price;
  late final int weight;

  Product(this.price, this.weight);

  @override
  String toString() {
    return "Price: $price | Weight: $weight";
  }
}
