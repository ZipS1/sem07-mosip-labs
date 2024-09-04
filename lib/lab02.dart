/*
Вариант 8
Часть 1. Арифметические операции (math). Задания 4, 5, 10, 15, 20
Часть 2. Шаблоны (templates). Задания 3, 6, 14, 17, 18
*/

import 'dart:io';
import 'dart:math' as math;

/// Пользователь вводит с клавиатуры 2 значения: val1, val2. Рассчитайте
/// результат следующего выражения (val1 * 3 + val1) / 4 – val2 и выведите его в
/// терминал.
void _mathTask4() {
  stdout.write("Input val1: ");
  int? val1 = int.tryParse(stdin.readLineSync()!);
  while (val1 == null) {
    print("Incorrect value!");
    val1 = int.tryParse(stdin.readLineSync()!);
  }

  stdout.write("Input val2: ");
  int? val2 = int.tryParse(stdin.readLineSync()!);
  while (val2 == null) {
    print("Incorrect value!");
    val2 = int.tryParse(stdin.readLineSync()!);
  }

  print("Result: ${(val1 * 3 + val1) / 4 - val2}");
}

/// Пользователь вводит с клавиатуры 2 значения: val1, val2. Осуществите
/// целочисленное деление на val1 на val2 и выведите полученный результат в
/// терминал.
void _mathTask5() {
  stdout.write("Input val1: ");
  int? val1 = int.tryParse(stdin.readLineSync()!);
  while (val1 == null) {
    stdout.write("Incorrect value! Try again: ");
    val1 = int.tryParse(stdin.readLineSync()!);
  }

  stdout.write("Input val2: ");
  int? val2 = int.tryParse(stdin.readLineSync()!);
  while (val2 == null) {
    stdout.write("Incorrect value! Try again: ");
    val2 = int.tryParse(stdin.readLineSync()!);
  }

  print("Result: ${val1 ~/ val2}");
}

/// sqrt(n + sqrt(n**n))/7
void _mathTask10() {
  stdout.write("Input N: ");
  int? n = int.tryParse(stdin.readLineSync()!);
  while (n == null) {
    stdout.write("Incorrect value! Try again: ");
    n = int.tryParse(stdin.readLineSync()!);
  }

  print("Result: ${math.sqrt(n + math.sqrt(math.pow(n, n))) / 7}");
}

/// (tan(n) - 2*n)/sqrt(10 + 0.6*n)
void _mathTask15() {
  stdout.write("Input N: ");
  int? n = int.tryParse(stdin.readLineSync()!);
  while (n == null) {
    stdout.write("Incorrect value! Try again: ");
    n = int.tryParse(stdin.readLineSync()!);
  }

  print("Result: ${(math.tan(n) - 2 * n) / (10 + 0.6 * n)}");
}

/// sqrt(n**3 - n)/n
void _mathTask20() {
  stdout.write("Input N: ");
  int? n = int.tryParse(stdin.readLineSync()!);
  while (n == null) {
    stdout.write("Incorrect value! Try again: ");
    n = int.tryParse(stdin.readLineSync()!);
  }

  print("Result: ${math.sqrt(math.pow(n, 3) - n) / n}");
}

/// Пользователь вводит Map<int, String>. Используя шаблон выведите
/// его в терминал, если удовлетворяет следующим условиям: длина < 5,
/// имеется ключ со значением 999 или 666. Иначе выведите текст «Pattern no
/// matched».
void _patternsTask3() {
  print(
      "Input Map<int, String> of pairs formatted 'key,value' separated with space:");
  Map<int, String> map = Map.fromEntries(stdin
      .readLineSync()!
      .split(' ')
      .map((el) => el.split(','))
      .map((el) => MapEntry(int.parse(el[0]), el[1])));

  if (map case {999: _} || {666: _} when map.length < 5) {
    print("$map satisfies conditions");
  } else {
    print("Pattern no matched");
  }
}

/// Пользователь вводит Map<String, int>. Используя шаблон выведите
/// его в терминал, если удовлетворяет следующим условиям: имеется ключ со
/// значением «Key» и произведение всех хранимых значений больше 38.
/// Иначе выведите текст «Pattern no matched».
void _patternsTask6() {
  print(
      "Input Map<String, int> of pairs formatted 'key,value' separated with space:");
  Map<String, int> map = Map.fromEntries(stdin
      .readLineSync()!
      .split(' ')
      .map((el) => el.split(','))
      .map((el) => MapEntry(el[0], int.parse(el[1]))));

  if (map case {"Key": _} when map.values.reduce((a, b) => a * b) > 38) {
    print("$map satisfies conditions");
  } else {
    print("Pattern no matched");
  }
}

/// (23, 89, pef:'Oo', pruf: 3.976)
/// Извлеките из записи значение второго позиционного
/// поля, именнованного pruf и выведите в терминал их
/// произведение.
/// ??? -> Считаю произведение всех чисел в кортеже
void _patternsTask14() {
  var a = (23, 89, pef: 'Oo', pruf: 3.976);
  var (num1, num2, pef: _, pruf: num3) = a;

  print("Pruf value: $num3");
  print("Multiplication of nums: ${num1 * num2 * num3}");
}

/// {
///   "id": 25,
///   "box": {
///     "width": 15,
///     "height": 25,
///   "coords": {
///     "x": -7,
///     "y": 11
///     }
///   }
/// }
///
/// Извлеките координаты (х, у), рассчитайте сумму их
/// значений и выведите в терминал полученный
/// результат.
void _patternsTask17() {
  var a = {
    "id": 25,
    "box": {
      "width": 15,
      "height": 25,
      "coords": {"x": -7, "y": 11}
    }
  };

  // var {"id": _, "box": {"width": _, "height": _, "coords": {"x": x, "y": y}}} =
  //     a;
  // This do not work for some reason FIXME

  if (a
      case {
        "id": _,
        "box": {"width": _, "height": _, "coords": {"x": int x, "y": int y}}
      }) {
    print("Sum is: ${x + y}");
  } else {
    print("Pattern no matched");
  }
}

/// {
///   "id": 25,
///   "box": {
///     "width": 15,
///     "height": 25,
///     "length": 5
///   }
/// }
///
/// Извлеките данные по габаритам коробки, рассчитайте
/// ее объем и выведите в терминал полученный
/// результат.
void _patternsTask18() {
  var a = {
    "id": 25,
    "box": {"width": 15, "height": 25, "length": 5}
  };

  if (a
      case {
        "id": _,
        "box": {"width": int w, "height": int h, "length": int l}
      }) {
    print("Volume is: ${w * h * l}");
  } else {
    print("Pattern no matched");
  }
}

void demo() {
  print("--- Part 1 | Task 4 ---");
  _mathTask4();

  print("\n--- Part 1 | Task 5 ---");
  _mathTask5();

  print("\n--- Part 1 | Task 10 ---");
  _mathTask10();

  print("\n--- Part 1 | Task 15 ---");
  _mathTask15();

  print("\n--- Part 1 | Task 20 ---");
  _mathTask20();

  print("\n--- Part 2 | Task 3 ---");
  _patternsTask3();

  print("\n--- Part 2 | Task 6 ---");
  _patternsTask6();

  print("\n--- Part 2 | Task 14 ---");
  _patternsTask14();

  print("\n--- Part 2 | Task 17 ---");
  _patternsTask17();

  print("\n--- Part 2 | Task 18 ---");
  _patternsTask18();
}
