/*
Вариант 8
Часть 1. Задания на циклы (loops). Задания 3, 5, 8, 20, 22
Часть 2. Задания на побитовые операции (bits). Задания 2, 4, 10, 14
*/

import 'dart:io';
import 'dart:math';

/// Пользователь вводит с клавиатуры список целочисленных значений.
/// Используя цикл for, for-in и while найдите произведение его элементов
/// и выведите полученный результат в терминал
void _loopsTask3() {
  print("Input list of int elements, separated with space:");
  List<int> list = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  print('--- "for" result ---');
  var result = 1;
  for (var i = 0; i < list.length; i++) {
    result *= list[i];
  }
  print(result);

  print('--- "for-in" result ---');
  result = 1;
  for (var element in list) {
    result *= element;
  }
  print(result);

  print('--- "while" result ---');
  result = 1;
  var i = 0;
  while (i < list.length) {
    result *= list[i];
    i++;
  }
  print(result);
}

/// Пользователь вводит с клавиатуры список вещественных значений.
/// Используя цикл for и while найдите сумму элементов с четным индексом
/// и выведите полученный результат в терминал.
void _loopsTask5() {
  print("Input list of double elements, separated with space:");
  List<double> list =
      stdin.readLineSync()!.split(' ').map(double.parse).toList();

  print('--- "for" result ---');
  double result = 0;
  for (var i = 0; i < list.length; i++) {
    if (i % 2 == 0) {
      result += list[i];
    }
  }
  print(result);

  print('--- "while" result ---');
  result = 0;
  var i = 0;
  while (i < list.length) {
    if (i % 2 == 0) {
      result += list[i];
    }
    i++;
  }
  print(result);
}

/// Пользователь вводит с клавиатуры список целочисленных значений.
/// Используя цикл for, for-in и while посчитайте количество вхождения в
/// него элементов кратных 5 и выведите в терминал полученный результат.
void _loopsTask8() {
  print("Input list of int elements, separated with space:");
  List<int> list = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  print('--- "for" result ---');
  int count = 0;
  for (var i = 0; i < list.length; i++) {
    if (list[i] % 5 == 0) {
      count++;
    }
  }
  print(count);

  print('--- "for-in" result ---');
  count = 0;
  for (var element in list) {
    if (element % 5 == 0) {
      count++;
    }
  }
  print(count);

  print('--- "while" result ---');
  count = 0;
  var i = 0;
  while (i < list.length) {
    if (list[i] % 5 == 0) {
      count++;
    }
    i++;
  }
  print(count);
}

/// sum n = 1 to z: sqrt(21 + sqrt(3^n))/(3/sin(n))
void _loopsTask20() {
  print("Input Z:");
  int number = int.parse(stdin.readLineSync()!);

  bool isValid = number > 0;
  while (!isValid) {
    print("Incorrect input! Try again...");
    number = int.parse(stdin.readLineSync()!);
  }

  print('--- result ---');
  double result = 0;
  for (var i = 1; i <= number; i++) {
    result += sqrt(21 + sqrt(pow(3, i))) / (3 / sin(i));
  }
  print(result);
}

/// sum n = 1 to z: sqrt(n^3 - n)/n
void _loopsTask22() {
  print("Input Z:");
  int number = int.parse(stdin.readLineSync()!);

  bool isValid = number > 0;
  while (!isValid) {
    print("Incorrect input! Try again...");
    number = int.parse(stdin.readLineSync()!);
  }

  print('--- result ---');
  double result = 0;
  for (var i = 1; i <= number; i++) {
    result += sqrt(pow(i, 3) - i) / i;
  }
  print(result);
}

/// Пользователь вводит с клавиатуры положительное число. Используйте
/// маску и операцию побитового исключающего ИЛИ для того, чтобы
/// инвертировать значения битов и выведите полученный результат в
/// двоичном формате в терминал.
void _bitsTask2() {
  print("Input positive number:");
  int number = int.parse(stdin.readLineSync()!);

  bool isValid = number > 0;
  while (!isValid) {
    print("Incorrect input! Try again...");
    number = int.parse(stdin.readLineSync()!);
  }

  var result = number ^ ((1 << number.bitLength) - 1);
  print("Number is ${number.toRadixString(2)}");
  print("Result is ${result.toRadixString(2)}");
}

/// Пользователь вводит с клавиатуры положительное число. Проверьте
/// установлен ли ее 4-й бит справа в единицу или нет и выведите полученный
/// результат в терминал.
void _bitsTask4() {
  print("Input positive number:");
  int number = int.parse(stdin.readLineSync()!);

  bool isValid = number > 0;
  while (!isValid) {
    print("Incorrect input! Try again...");
    number = int.parse(stdin.readLineSync()!);
  }

  print("Number is ${number.toRadixString(2)}");
  print((number & (1 << 3)));
  if ((number & (1 << 3)) != 0) {
    print("Bit is set");
  } else {
    print("Bit is NOT set");
  }
}

/// Пользователь вводит с клавиатуры большое число. Используя
/// побитовую операцию, разделите его на 4 и выведите полученный результат
/// в двоичном и десятичном формате в терминал
void _bitsTask10() {
  print("Input large positive number:");
  int number = int.parse(stdin.readLineSync()!);

  bool isValid = number > 0;
  while (!isValid) {
    print("Incorrect input! Try again...");
    number = int.parse(stdin.readLineSync()!);
  }

  print("Number is ${number.toRadixString(2)}");
  print("Result is ${(number >> 2).toRadixString(2)}");
  print("Result is ${(number >> 2)}");
}

/// Пользователь вводит с клавиатуры положительное число. Используя
/// операции сдвига установить 4 правых бита в ноль и выведите полученный
/// результат в терминал
void _bitsTask14() {
  print("Input positive number:");
  int number = int.parse(stdin.readLineSync()!);

  bool isValid = number > 0;
  while (!isValid) {
    print("Incorrect input! Try again...");
    number = int.parse(stdin.readLineSync()!);
  }

  print("Number is ${number.toRadixString(2)}");
  print((number >> 4 << 4).toRadixString(2));
  print((number >> 4 << 4));
}

void demo() {
  print("--- Part 1 | Task 3 ---");
  _loopsTask3();

  print("\n--- Part 1 | Task 5 ---");
  _loopsTask5();

  print("\n--- Part 1 | Task 8 ---");
  _loopsTask8();

  print("\n--- Part 1 | Task 20 ---");
  _loopsTask20();

  print("\n--- Part 1 | Task 22 ---");
  _loopsTask22();

  print("\n--- Part 2 | Task 2 ---");
  _bitsTask2();

  print("\n--- Part 2 | Task 4 ---");
  _bitsTask4();

  print("\n--- Part 2 | Task 10 ---");
  _bitsTask10();

  print("\n--- Part 2 | Task 14 ---");
  _bitsTask14();
}
