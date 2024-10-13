/*
Вариант 8
Задания 2, 4, 10, 14
*/

import 'dart:io';
import 'package:path/path.dart';

String pathToFiles = join(Directory.current.path, 'lib', 'lab09');

// Напишите приложение, которое считывает содержимое нескольких
// текстовых файлов, объединяет их и записывает результат в новый файл
void _task2() {
  var file1 = File(join(pathToFiles, '2-1.txt'));
  var file2 = File(join(pathToFiles, '2-2.txt'));
  var file3 = File(join(pathToFiles, '2-3.txt'));

  var result = file1.readAsStringSync() +
      file2.readAsStringSync() +
      file3.readAsStringSync();

  var resultFile = File(join(pathToFiles, 'task2_result.txt'));
  resultFile.writeAsStringSync(result);
}

// Напишите приложение, которое считывает содержимое текстового
// файла и подсчитывает количество вхождений каждого слова. Выведите в
// терминал и запишите в новый файл слова, отсортированные по количеству
// вхождений.
void _task4() {
  var file = File(join(pathToFiles, '4-1.txt'));
  var content = file.readAsStringSync();
  var contentWords = content.split(' ').map((word) => word.trim()).toList();
  var wordsUnique = contentWords.toSet();

  Map<String, int> dict = {};
  for (var word in wordsUnique) {
    int amount = contentWords.fold(0, (acc, el) => el == word ? acc + 1 : acc);
    dict[word] = amount;
  }

  final wordsCounted = dict.entries.toList()
    ..sort((a, b) => a.value.compareTo(b.value));

  File resultFile = File(join(pathToFiles, 'task4_result.txt'));
  String output = '';
  for (var word in wordsCounted) {
    output += '${word.key} ${word.value}\n';
  }
  print(output);
  resultFile.writeAsStringSync(output);
}

// Напишите приложение, которое считывает содержимое
// многострочного файла с целочисленными значениями (разделенные
// пробелом) и выводит в терминал среднее арифметическое, а также
// записывает это значение в новый файл.
void _task10() {
  File file = File(join(pathToFiles, '10-1.txt'));

  var content = file.readAsStringSync();
  List<int> numbers = content.split(' ').map((el) => int.parse(el)).toList();

  var average = numbers.reduce((a, b) => a + b) / numbers.length;
  File resultFile = File(join(pathToFiles, 'task10_result.txt'));
  print("Average: $average");
  resultFile.writeAsStringSync(average.toString());
}

// Напишите приложение, которое считывает содержимое текстового
// файла и записывает в новый файл все уникальные слова в алфавитном
// порядке
void _task14() {
  var file = File(join(pathToFiles, '14-1.txt'));
  var content = file.readAsStringSync();
  var contentWords = content.split(' ').map((word) => word.trim()).toList();
  var wordsUnique = contentWords.toSet().toList()..sort();

  File resultFile = File(join(pathToFiles, 'task14_result.txt'));
  String output = '';
  for (var word in wordsUnique) {
    output += '$word\n';
  }
  print(output);
  resultFile.writeAsStringSync(output);
}

void demo() {
  print("\n--- Task 2 ---");
  _task2();

  print("\n--- Task 4 ---");
  _task4();

  print("\n--- Task 10 ---");
  _task10();

  print("\n--- Task 14 ---");
  _task14();
}
