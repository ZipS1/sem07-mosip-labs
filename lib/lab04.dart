/*
Вариант 8
Задания 2, 5, 9, 13, 23

Каждое задание на функции должно
сопровождаться минимум тремя тестами
*/

import 'dart:io';

/// Пользователь вводит с клавиатуры целочисленный список. Напишите
/// функцию, которая возвращает произведение элементов списка.
/// Полученный результат выведите в терминал.
void _task2() {
  print("Input list of int elements, separated with space:");
  List<int> list = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  print("Result: ${multiplyList(list)}");
}

int multiplyList(List<int> list) {
  return list.reduce((acc, el) => acc * el);
}

/// Пользователь вводит с клавиатуры целочисленный список и число val.
/// Напишите функцию, возвращающую номер индекса, по которому хранится
/// значение val. Если элемента с искомым значением нет в списке – верните
/// null. Полученный результат выведите в терминал.
void _task5() {
  print("Input list of int elements, separated with space:");
  List<int> list = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  print("Input value:");
  int val = int.parse(stdin.readLineSync()!);

  print("Result: ${findIndex(list, val)}");
}

int? findIndex(List<int> list, int val) {
  int index = list.indexWhere((el) => el == val);
  return index == -1 ? null : index;
}

/// Пользователь вводит с клавиатуры 3 числа: A, B, C. Напишите
/// функцию, возвращающую целочисленный список в соответствии со
/// следующими правилами: первые два аргумента задают диапазон значений,
/// которые будут добавлены в формируемый список, а третий аргумент
/// отвечает за шаг. Полученный результат выведите в терминал.
void _task9() {
  print("Input A, B, C:");
  var [a, b, c] = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  bool isValid = (a >= b && c <= 0) || (a <= b && c >= 0);
  while (!isValid) {
    print("Incorrect input! Try again...");
    [a, b, c] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    isValid = (a >= b && c <= 0) || (a <= b && c >= 0);
  }

  print("Result: ${createList(a, b, c)}");
}

List<int> createList(int a, int b, int c) {
  if ((a > b && c > 0) || (a < b && c < 0)) {
    throw FormatException();
  }

  c >= 0 ? b += 1 : b -= 1;

  List<int> list = [];
  for (int i = a; i != b; i += c) {
    list.add(i);
  }
  return list;
}

/// Пользователь вводит с клавиатуры 2 числа: A и B. Напишите функцию,
/// которая проверяет установлен ли у A бит под номером B в ноль или нет.
/// Результат проверки необходимо вернуть в виде булевского значения (true
/// – да, нет – false) и вывести его в терминал.
/// (примечание. В условии опечатка: "Пользователь вводит с клавиатуры 3 числа"
/// исправлено на "Пользователь вводит с клавиатуры 2 числа")
void _task13() {
  print("Input A, B:");
  var [a, b] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print("Result: ${isZeroBit(a, b)}");
}

bool isZeroBit(int number, int bitPositionIndex) {
  return (number & (1 << bitPositionIndex)) == 0;
}

/// Пользователь вводит с клавиатуры строку, содержащую произвольное
/// количество открывающихся и закрывающихся скобок. Напишите функцию,
/// возвращающую true или false, в зависимости от того, имеется ли баланс
/// открывающих и закрывающих скобок. Когда в строке отсутствуют скобки
/// должно возвращаться true. Полученный результат выведите в терминал.
void _task23() {
  print("Input string:");
  String str = stdin.readLineSync()!;

  print("Result: ${isBalanced(str)}");
}

bool isBalanced(String str) {
  int bracketsCounter = 0;
  for (int i = 0; i < str.length; i++) {
    if (str[i] == '(') {
      bracketsCounter++;
    } else if (str[i] == ')') {
      bracketsCounter--;
    }
  }
  return bracketsCounter == 0;
}

void demo() {
  print("--- Task 2 ---");
  _task2();

  print("\n--- Task 5 ---");
  _task5();

  print("\n--- Task 9 ---");
  _task9();

  print("\n--- Task 13 ---");
  _task13();

  print("\n--- Task 23 ---");
  _task23();
}
