import 'package:study/lab07/product.dart';

class Scale {
  int _currentWeight = 0;
  late final int _maxWeight;
  final List<Product> _products = [];

  Scale(this._maxWeight) : assert(_maxWeight > 0);

  bool addProduct(Product product) {
    if (_currentWeight >= _maxWeight) {
      print("Max weight reached! Cannot add product");
      return false;
    }

    _products.add(product);
    _currentWeight += product.weight;
    return true;
  }

  bool removeProduct(Product product) {
    bool isRemoved = _products.remove(product);
    if (isRemoved) {
      _currentWeight -= product.weight;
    }
    return isRemoved;
  }

  void sortByPrice() {
    _products.sort((a, b) => a.price.compareTo(b.price));
  }

  void sortByWeight() {
    _products.sort((a, b) => a.weight.compareTo(b.weight));
  }

  Product findMinPriceProduct() {
    return _products.reduce((a, b) => b.price < a.price ? b : a);
  }

  Product findMaxWeightProduct() {
    return _products.reduce((a, b) => b.weight > a.weight ? b : a);
  }

  int totalWeightByPrice(int price) {
    var selected = _products.where((p) => p.price == price);

    int total = 0;
    for (var product in selected) {
      total += product.weight;
    }

    return total;
  }

  @override
  String toString() {
    String result = "";
    for (Product product in _products) {
      result += "$product\n";
    }
    return result;
  }
}
