/*
Вариант 8
Часть 1. Задания по строкам (strings): 3, 4, 5
Часть 2. Задания по спискам (lists):  3, 4, 9, 16
Часть 3. Задания по множествам (sets): 1, 2, 7, 10
Часть 4. Задания по мэпам (maps): 4, 5, 10
 */

import 'dart:io';

/// Напишите приложение, где пользователь вводит строку и букву.
/// Посчитайте сколько раз заданная буква входит в строку и выведите полученный результат,
/// а также индекс первого вхождения буквы в строку, в терминал.
void stringsTask3() {
  stdout.write("Input string: ");
  String? string = stdin.readLineSync();
  stdout.write("Input letter: ");
  String? letter = stdin.readLineSync();

  int count = letter!.allMatches(string!).length;
  int firstMatchIndex = string.indexOf(letter);
  print("Letter matches count in string: $count");
  print("First match index: $firstMatchIndex");
}

/// Напишите приложение, где пользователь вводит строку и два символа (например а и в).
/// Замените в строке все символы «а» на «в» и выведите полученный результат в терминал.
void stringsTask4() {
  stdout.write("Input string: ");
  String? string = stdin.readLineSync();
  stdout.write("Input first letter: ");
  String? firstLetter = stdin.readLineSync();
  stdout.write("Input second letter: ");
  String? secondLetter = stdin.readLineSync();

  String newString = string!.replaceAll(firstLetter!, secondLetter!);
  print("Result: $newString");
}

/// Напишите приложение, где пользователь вводит слово и на его основе создается новая переменная,
/// сформированная из первого, среднего и последнего символов введенного слова.
/// Полученный результат выведите в терминал. Например: «Привет!» -> «Пв!»
void stringsTask5() {
  stdout.write("Input word: ");
  String? word = stdin.readLineSync();

  String newWord = word![0] + word[word.length ~/ 2] + word[word.length - 1];
  print("Result: $newWord");
}

/// Напишите приложение, позволяющее пользователю вводить список целочисленных значений и число А,
/// на которое необходимо уменьшить значения элементов списка, после чего добавить А добавить в начало списка.
/// Выведите в терминал полученный результат.
void listsTask3() {
  print("Input list, separated with space:");
  List<int> list = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  stdout.write("Print number A: ");
  int a = int.parse(stdin.readLineSync()!);

  list = list.map((el) => el - a).toList();
  list.insert(0, a);
  print("Modified list:");
  print(list);
}

/// Напишите приложение, позволяющее пользователю вводить
/// список вещественных значений и два числа (например а и в).
/// Программа должна вставить число «а» на позицию «в».
/// Выведите в терминал полученный результат.
void listsTask4() {
  print("Input list of doubles, separated with space:");
  List<double> list =
      stdin.readLineSync()!.split(' ').map(double.parse).toList();
  stdout.write("Input number A: ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Input number B: ");
  double b = double.parse(stdin.readLineSync()!);

  list[list.indexOf(b)] = a;
  print("Modified list:");
  print(list);
}

/// Напишите приложение, позволяющее пользователю вводить
/// список целочисленных значений и число А. Сформируйте новый список,
/// значения элементов которого > А. Выведите в терминал полученный результат.
void listsTask9() {
  print("Input list, separated with space:");
  List<int> list = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  stdout.write("Print number A: ");
  int a = int.parse(stdin.readLineSync()!);

  list = list.where((el) => el > a).toList();

  print("Modified list:");
  print(list);
}

/// Напишите приложение, позволяющее пользователю вводить
/// список строковых значений и два числа (например а и в).
/// Программа должна создать новый список из элементов,
/// которые лежат в диапазоне от индекса «а» по «в».
/// Выведите в терминал полученный результат.
void listsTask16() {
  print("Input list of strings, separated with space:");
  List<String> list = stdin.readLineSync()!.split(' ').toList();
  stdout.write("Input index A: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Input index B: ");
  int b = int.parse(stdin.readLineSync()!);

  list = list.sublist(a, b + 1);
  print("Modified list:");
  print(list);
}

/// Напишите приложение, позволяющее пользователю вводить список целочисленных значений.
/// Удалите все дублирующиеся значения и вычислите сумму оставшихся.
/// Выведите в терминал полученный результат.
void setsTask1() {
  print("Input list, separated with space:");
  List<int> list = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  int uniqueSum = list.toSet().reduce((acc, el) => acc + el);

  print("Sum of unique elements: $uniqueSum");
}

/// Напишите приложение, позволяющее пользователю вводить список целочисленных значений.
/// Удалите все дублирующиеся значения и вычислите произведение оставшихся.
/// Выведите в терминал полученный результат.
void setsTask2() {
  print("Input list, separated with space:");
  List<int> list = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  int uniqueProduct = list.toSet().reduce((acc, el) => acc * el);

  print("Product of unique elements: $uniqueProduct");
}

/// Напишите приложение, позволяющее пользователю вводить список целочисленных значений и число А.
/// Сформируйте множество, значения элементов которого кратны А.
/// Выведите в терминал полученный результат.
void setsTask7() {
  print("Input list, separated with space:");
  List<int> list = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  stdout.write("Print number A: ");
  int a = int.parse(stdin.readLineSync()!);

  Set<int> set = list.where((el) => el % a == 0).toSet();

  print("Set of elements divisible by $a:");
  print(set);
}

/// Напишите приложение, позволяющее пользователю вводить два целочисленных множества А и В.
/// Найдите их пересечение, рассчитайте сумму элементов, которые в него попадают
/// и выведите в терминал полученный результат.
void setsTask10() {
  print("Input set A, separated with space:");
  Set<int> setA = stdin.readLineSync()!.split(' ').map(int.parse).toSet();
  print("Input set B, separated with space:");
  Set<int> setB = stdin.readLineSync()!.split(' ').map(int.parse).toSet();

  Set<int> intersection = setA.intersection(setB);
  int sum = intersection.reduce((acc, el) => acc + el);

  print("Sum of intersection: $sum");
}

/// Напишите приложение, позволяющее пользователю вводить Map<int, int> и два числа: А и В.
/// Если в структуре нет элемента с ключом А, добавьте в Мар по ключу А значение В.
/// Выведите Мар и значение, хранящееся по ключу А в терминал.
void mapsTask4() {
  print("Input map of pairs formatted 'key,value' separated with space:");
  Map map = Map.fromEntries(stdin
      .readLineSync()!
      .split(' ')
      .map((el) => el.split(','))
      .map((el) => MapEntry(int.parse(el[0]), int.parse(el[1]))));
  stdout.write("Print key A: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Print value B: ");
  int b = int.parse(stdin.readLineSync()!);

  map.putIfAbsent(a, () => b);

  print("Modified map:");
  print(map);
  print("Value from key $a: ${map[a]}");
}

/// Напишите приложение, позволяющее пользователю вводить Map<int, String> и строку А.
/// Удалите все элементы значения которых равны А И выведите в терминал полученный результат.
void mapsTask5() {
  print("Input map of pairs formatted 'key,value' separated with space:");
  Map map = Map.fromEntries(stdin
      .readLineSync()!
      .split(' ')
      .map((el) => el.split(','))
      .map((el) => MapEntry(int.parse(el[0]), el[1])));
  stdout.write("Print string A: ");
  String a = stdin.readLineSync()!;

  map.removeWhere((key, value) => value == a);

  print("Modified map:");
  print(map);
}

/// Напишите приложение, позволяющее пользователю вводить Map<int, double> и число А.
/// Удалите все элементы значения ключей которых <= A.
/// Выведите в терминал полученный результат и сумму всех значений Мар.
void mapsTask10() {
  print("Input map of pairs formatted 'key,value' separated with space:");
  Map map = Map.fromEntries(stdin
      .readLineSync()!
      .split(' ')
      .map((el) => el.split(','))
      .map((el) => MapEntry(int.parse(el[0]), double.parse(el[1]))));
  stdout.write("Print number A: ");
  double a = double.parse(stdin.readLineSync()!);

  map.removeWhere((key, value) => value <= a);
  double sum = map.values.reduce((acc, el) => acc + el);

  print("Modified map:");
  print(map);
  print("Sum of values: $sum");
}

void demo() {
  print("--- Part 1 | Task 3 ---");
  stringsTask3();

  print("\n--- Part 1 | Task 4 ---");
  stringsTask4();

  print("\n--- Part 1 | Task 5 ---");
  stringsTask5();

  print("\n--- Part 2 | Task 3 ---");
  listsTask3();

  print("\n--- Part 2 | Task 4 ---");
  listsTask4();

  print("\n--- Part 2 | Task 9 ---");
  listsTask9();

  print("\n--- Part 2 | Task 16 ---");
  listsTask16();

  print("\n--- Part 3 | Task 1 ---");
  setsTask1();

  print("\n--- Part 3 | Task 2 ---");
  setsTask2();

  print("\n--- Part 3 | Task 7 ---");
  setsTask7();

  print("\n--- Part 3 | Task 10 ---");
  setsTask10();

  print("\n--- Part 4 | Task 4 ---");
  mapsTask4();

  print("\n--- Part 4 | Task 5 ---");
  mapsTask5();

  print("\n--- Part 4 | Task 10 ---");
  mapsTask10();
}
