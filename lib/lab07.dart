/*
Вариант 8
Задания 8, 13
*/

import 'package:study/lab07/product.dart';
import 'package:study/lab07/scale.dart';
import 'package:study/lab07/jewelry.dart';
import 'package:study/lab07/jewelry_store.dart';

// 8. Реализуйте класс Scale (весы) и Product. В конструктор класса Scale
// передайте максимальный вес, который они могут выдержать. Также
// данный класс должен предоставлять пользователю следующие методы:
// - добавление и удаление товаров
// - сортировка товаров по стоимости и весу
// - нахождение товара с минимальной стоимостью
// - нахождение товара с максимальным весом
// - определение текущего веса всех товаров на весах. Если общий вес товаров
//   равен или превышает максимальный,
//   новые товары не должны добавляться на весы (вывод оповещения).
// - определение общего веса товаров определенного типа (цены).
// - Также обеспечьте вывод текущего состояния объектов в терминал.
void _task8() {
  int maxWeight = 45;
  Scale scale = Scale(maxWeight);

  Product product1 = Product(100, 10);
  Product product2 = Product(200, 5);
  Product product3 = Product(500, 3);
  Product product4 = Product(1000, 20);
  Product product5 = Product(200, 10);

  scale.addProduct(product1);
  scale.addProduct(product2);
  scale.addProduct(product3);
  scale.addProduct(product4);
  scale.addProduct(product5);

  print("Initial State:");
  print(scale);

  scale.removeProduct(product3);
  print("\nAfter remove:");
  print(scale);

  scale.sortByPrice();
  print("\nSort by price:");
  print(scale);

  scale.sortByWeight();
  print("\nSort by weight:");
  print(scale);

  print("Minimal price product: ${scale.findMinPriceProduct()}");
  print("Maximum weight product: ${scale.findMaxWeightProduct()}");

  Product product6 = Product(100, 100);
  print("Trying to add overweight product: ");
  scale.addProduct(product6);
}

// 13. Реализуйте класс JewelryStore (Ювелирный магазин), который
// представляет собой систему управления продажей ювелирных изделий.
// Класс должен иметь методы для добавления нового изделия, удаления
// изделия, поиска изделия по названию,списка изделий где цена >= заданной
// и расчета общей стоимости всех изделий в магазине. В системе должны
// быть предусмотрены различные типы ювелирных изделий (например,
// кольца, ожерелья, серьги) с разными ценами и свойствами. Класс
// JewelryStore должен также предоставлять методы для вывода текущего
// состояния изделий и информации о продажах в терминал.
void _task13() {
  JewelryStore.addJewelry(
      Jewelry(name: "Diamond", price: 50000, type: "Diadem"));
  JewelryStore.addJewelry(
      Jewelry(name: "Sapphire", price: 30000, type: "Earrings"));
  JewelryStore.addJewelry(Jewelry(name: "Ruby", price: 40000, type: "Ring"));

  JewelryStore.printJewelries();
  JewelryStore.printSalesInfo();

  Jewelry removed = JewelryStore.findJewelryByName("Sapphire")!;
  JewelryStore.removeJewelry(removed.name);

  JewelryStore.printJewelries();
}

void demo() {
  print("--- Task 8 ---");
  _task8();

  print("\n--- Task 13 ---");
  _task13();
}
