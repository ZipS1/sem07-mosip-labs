/*
Вариант 8
Задания 2, 4, 10, 14
*/

import 'dart:io';

// Пользователь вводит с клавиатуры целочисленный список. Напишите
// рекурсивную функцию, возвращающую минимальное значение из списка.
// Полученный результат выведите в терминал.
void _task2() {
  print("Input list of int elements, separated with space:");
  List<int> list = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  print("Min from list: ${_minRecursive(list)}");
}

int _minRecursive(List<int> list) {
  if (list.length == 1) {
    return list[0];
  }

  int minFromSublist = _minRecursive(list.sublist(1));
  return list[0] < minFromSublist ? list[0] : minFromSublist;
}

// Пользователь вводит с клавиатуры строку. Напишите рекурсивную
// функцию, которая проверяет является ли подаваемая на ее вход строка
// палиндромом и возвращает значение булевского типа данных (true – да,
// нет – false). Полученный результат выведите в терминал.
void _task4() {
  print("Input string:");
  String str = stdin.readLineSync()!;

  print("Is string palindrome: ${_palindromeRecursive(str)}");
}

bool _palindromeRecursive(String str) {
  if (str.length == 1) {
    return true;
  } else if (str.length == 2) {
    return str[0] == str[1];
  } else {
    return str[0] == str[str.length - 1] &&
        _palindromeRecursive(str.substring(1, str.length - 1));
  }
}

// Пользователь вводит с клавиатуры два числа. Напишите рекурсивную
// функцию, возвращающую их наибольший общий делитель. Полученный
// результат выведите в терминал.
void _task10() {
  print("Input A, B:");
  var [a, b] = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  print("GCD: ${_gcdRecursive(a, b)}");
}

int _gcdRecursive(int a, int b) {
  if (b == 0) {
    return a;
  } else {
    return _gcdRecursive(b, a % b);
  }
}

// Пользователь вводит с клавиатуры целочисленный список и число n.
// Напишите рекурсивную функцию возвращающую сумму элементов списка,
// кратных n. Полученный результат выведите в терминал.
void _task14() {
  print("Input list of int elements, separated with space:");
  List<int> list = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  print("Input N:");
  int n = int.parse(stdin.readLineSync() ?? "");

  print("Sum from list: ${_sumRecursive(list, n)}");
}

int _sumRecursive(List<int> list, int n) {
  if (list.isEmpty) {
    return 0;
  } else if (list[0] % n == 0) {
    return list[0] + _sumRecursive(list.sublist(1), n);
  } else {
    return _sumRecursive(list.sublist(1), n);
  }
}

void demo() {
  print("--- Task 2 ---");
  _task2();

  print("\n--- Task 4 ---");
  _task4();

  print("\n--- Task 10 ---");
  _task10();

  print("\n--- Task 14 ---");
  _task14();
}
