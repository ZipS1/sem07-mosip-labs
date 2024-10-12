import 'package:study/lab07/jewelry.dart';

class JewelryStore {
  static final List<Jewelry> _jewelries = [];

  static void addJewelry(Jewelry jewelry) {
    _jewelries.add(jewelry);
  }

  static void removeJewelry(String name) {
    _jewelries.removeWhere((jewelry) => jewelry.name == name);
  }

  static Jewelry? findJewelryByName(String name) {
    return _jewelries.where((el) => el.name == name).firstOrNull;
  }

  static List<Jewelry> getJewelriesByPrice(double minPrice) {
    return _jewelries.where((jewelry) => jewelry.price >= minPrice).toList();
  }

  static double getTotalCost() {
    return _jewelries.fold(0, (sum, jewelry) => sum + jewelry.price);
  }

  static void printJewelries() {
    print("Current jewelries state:");
    for (var jewelry in _jewelries) {
      print("${jewelry.name}: ${jewelry.price} (${jewelry.type})");
    }
  }

  static void printSalesInfo() {
    print("\nSells info:");
    print("Total price of jewelries: ${getTotalCost()}");
    print("Total amount of jewelries: ${_jewelries.length}");
  }
}
