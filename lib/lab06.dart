/*
Вариант 8
Задания 3, 4, 5
*/

import 'dart:io';

// Напишите функцию, на вход которой подается строка. Она должна
// возвращать другую функцию, принимающую номер индекса и
// возвращающую символ, располагаемый в строке по этому индексу. Если
// задаваемый индекс выходит за пределы строки, то верните пустой символ.
// Полученный результат выведите в терминал
void _task3() {
  print("Input string:");
  String str = stdin.readLineSync()!;
  print("Input index");
  int index = int.parse(stdin.readLineSync()!);

  var func = getFuncCharByIndex(str);
  print("Result: ${func(index)}");
}

Function getFuncCharByIndex(String str) {
  String charByIndex(int index) {
    if (index < 0 || index >= str.length) {
      return "";
    }
    return str[index];
  }

  return charByIndex;
}

// Напишите функцию, использующую механизм замыканий для
// сложения двух чисел и возвращающую полученное значение. Например,
// my_sum(1)(2) -> 3. Полученный результат выведите в терминал.
void _task4() {
  print("Input A, B:");
  var [a, b] = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  print("Result: ${mySum(a)(b)}");
}

Function mySum(a) => (b) => a + b;

// На вход функции поступает один из символов «>», «<», «=». Используя
// механизм замыканий, сравните два значения, подаваемые на вход
// возвращаемой функции. В результате должно возвращаться true, или
// false. В том случае, когда на вход объемлющей функции подается
// неизвестный символ – результат всегда false. Полученный результат
// выведите в терминал
void _task5() {
  print("Input symbol ('>','<','='): ");
  String symbol = stdin.readLineSync()!;

  print("Input A, B:");
  var [a, b] = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  print("Result: ${cmpBySymbol(symbol)(a, b)}");
}

Function cmpBySymbol(String symbol) {
  switch (symbol) {
    case '>':
      return (a, b) => a > b;
    case '<':
      return (a, b) => a < b;
    case '=':
      return (a, b) => a == b;
  }

  return (a, b) => false;
}

void demo() {
  print("--- Task 3 ---");
  _task3();

  print("\n--- Task 4 ---");
  _task4();

  print("\n--- Task 5 ---");
  _task5();
}
