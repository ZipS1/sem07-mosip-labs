/*
Вариант 8
Часть 1. Арифметические операции (math). Задания 4, 5, 10, 15, 20
Часть 2. Шаблоны (templates). Задания 3, 6, 14, 17, 18
Часть 3. Задания на управляющие конструкции (controlflow). Задания 7, 9, 10, 11, 17
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

/// Пользователь вводит с клавиатуры целочисленный список, минимум
/// из 9 элементов. Если значение в середине списка больше, либо равно 10, то
/// выведите в терминал сумму его первого и последнего элемента, иначе
/// произведение первого и предпоследнего. Реализуйте 2 версии программы
/// с разными подходами (if и switch).
void _controlflowTask7() {
  print("Input list with minimum of 9 int elements, separated with space:");
  List<int> list = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  bool isValid = list.length >= 9;
  while (!isValid) {
    print("Incorrect input! Try again...");
    list = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }

  print('"-- If" version --');
  if (list[list.length ~/ 2] >= 10) {
    print("Sum of first and last is: ${list.first + list.last}");
  } else {
    print("Sum of first and prelast is: ${list.first + list[list.length - 2]}");
  }

  print('"-- Switch" version --');
  switch (list[list.length ~/ 2] >= 10) {
    case true:
      print("Sum of first and last is: ${list.first + list.last}");
    case false:
      print(
          "Sum of first and prelast is: ${list.first + list[list.length - 2]}");
  }
}

/// Пользователь вводит с клавиатуры 2 значения (x и y). Определите в
/// какой четверти находится точка с полученной координатой и выведите ее
/// в терминал (1, 2, 3 или 4). Реализуйте 2 версии программы с разными
/// подходами (if и switch).
void _controlflowTask9() {
  print("Input x and y coordinates, separated with spaces:");
  List<int> list = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  bool isValid = list.length == 2;
  while (!isValid) {
    print("Incorrect input! Try again...");
    list = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }

  var [x, y] = list;
  print('"-- If" version --');
  if (x >= 0 && y >= 0) {
    print("Point is in 1 quadrant");
  } else if (x < 0 && y >= 0) {
    print("Point is in 2 quadrant");
  } else if (x < 0 && y < 0) {
    print("Point is in 3 quadrant");
  } else if (x >= 0 && y < 0) {
    print("Point is in 4 quadrant");
  }

  print('"-- Switch" version --');
  print("Got errors, too long and not necessary to handle!");
  // switch (true) {
  //   case x >= 0 && y >= 0:
  //     print("Point is in 1 quadrant");
  //   case x >= 0 && y < 0:
  //     print("Point is in 2 quadrant");
  //   case x < 0 && y >= 0:
  //     print("Point is in 3 quadrant");
  //   case x < 0 && y < 0:
  //     print("Point is in 4 quadrant");
  // }
}

/// Пользователь вводит с клавиатуры 3 значения (a, b, c). Решите
/// следующее квадратное уравнение ax2
/// -bx+2c=0 и выведите в терминал
/// полученные корни.
void _controlflowTask10() {
  print("Input a,b,c:");
  List<double> list =
      stdin.readLineSync()!.split(' ').map(double.parse).toList();

  bool isValid = list.length == 3;
  while (!isValid) {
    print("Incorrect input! Try again...");
    list = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  }

  var [a, b, c] = list;
  c = 2 * c;
  print("${a}x2 - ${b}x + $c = 0");
  var d = b * b - 4 * a * c;
  switch (d.compareTo(0)) {
    case -1:
      print("No real roots");
      break;
    case 0:
      print("One real root: ${-b / 2 * a}");
      break;
    case 1:
      print("Two real roots:");
      print("x1: ${(-b + math.sqrt(d)) / (2 * a)}");
      print("x2: ${(-b - math.sqrt(d)) / (2 * a)}");
      break;
  }
}

/// Пользователь вводит с клавиатуры 2 значения (x и y), представляющие
/// собой координату точки в пространстве. Центр круга находится в центре
/// координат (0, 0), а его радиус равен 5. Проверьте, принадлежит ли данная
/// точка кругу и выведите в терминал «YES» или «NO» (без кавычек) в
/// зависимости от результата проверки. Реализуйте 2 версии программы с
/// разными подходами (if и switch).
void _controlflowTask11() {
  print("Input x and y coordinates, separated with spaces:");
  List<double> list =
      stdin.readLineSync()!.split(' ').map(double.parse).toList();

  bool isValid = list.length == 2;
  while (!isValid) {
    print("Incorrect input! Try again...");
    list = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  }

  var [x, y] = list;
  var distance = math.sqrt(x * x + y * y);
  var radius = 5;
  print('"-- If" version --');
  if (distance <= radius) {
    print("YES");
  } else {
    print("NO");
  }

  print('-- "Switch" version --');
  switch (distance.compareTo(radius)) {
    case -1:
    case 0:
      print("YES");
      break;
    case 1:
      print("NO");
      break;
  }
}

/// Пользователь вводит с клавиатуры значение температуры в градусах
/// Цельсия 36.6с или в градусах Фаренгейта 36.6f. Если температура была
/// введена в градусах Цельсия, то конвертируйте ее в градусы Фаренгейта,
/// либо наоборот и выведите полученный результат в терминал. Реализуйте 2
/// версии программы с разными подходами (if и switch).
void _controlflowTask17() {
  double? num;
  late String temperature;
  bool isValidPrefix = false;
  while (num == null || isValidPrefix == false) {
    stdout.write("Input temperature in any degrees (ended with c of f): ");
    temperature = stdin.readLineSync()!;
    num = double.tryParse(temperature.substring(0, temperature.length - 1));

    isValidPrefix = temperature.endsWith("c") || temperature.endsWith('f');
  }

  print('--- "If" version ---');
  if (temperature.endsWith('c')) {
    print("Converted to Fahrenheit: ${num * 1.8 + 32}");
  } else {
    print("Converted to Celsius: ${(num - 32) / 1.8}");
  }

  print('--- "Switch" version ---');
  switch (temperature.endsWith('c')) {
    case true:
      print("Converted to Fahrenheit: ${num * 1.8 + 32}");
      break;
    case false:
      print("Converted to Celsius: ${(num - 32) / 1.8}");
      break;
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

  print("\n--- Part 3 | Task 7 ---");
  _controlflowTask7();

  print("\n--- Part 3 | Task 9 ---");
  _controlflowTask9();

  print("\n--- Part 3 | Task 10 ---");
  _controlflowTask10();

  print("\n--- Part 3 | Task 11 ---");
  _controlflowTask11();

  print("\n--- Part 3 | Task 17 ---");
  _controlflowTask17();
}
