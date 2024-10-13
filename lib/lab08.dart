/*
Вариант 8
Задания 4, 7
*/

import 'package:study/lab08/student.dart';
import 'package:study/lab08/color.dart';

// Создайте класс Student с атрибутами name и grade. Перегрузите
// операции сравнения, для их использования при сортировке списка
// студентов по их оценкам, а если у двух студентов оценки совпадают, то
// сортировка должна производиться по алфавиту (по имени студента).
void _task4() {
  List<Student> students = [
    Student(name: "Anya", grade: 3),
    Student(name: "Boris", grade: 2),
    Student(name: "Ksenia", grade: 4),
    Student(name: "Dmitry", grade: 5),
    Student(name: "Elena", grade: 3),
    Student(name: "Vladimir", grade: 2),
    Student(name: "Anna", grade: 4),
    Student(name: "Pavel", grade: 5),
    Student(name: "Maria", grade: 3),
    Student(name: "Alexey", grade: 2)
  ];

  print("Before sorting:");
  print(students);
  students.sort((a, b) => a > b
      ? 1
      : a == b
          ? 0
          : -1);

  print("After sorting:");
  print(students);
}

// Создайте класс Color, имеющий три атрибута: red, green и blue, каждый
// из которых должен быть целым числом в диапазоне от 0 до 255. Перегрузите
// у класса методы сложения и умножения. Результатом сложения должен
// быть новый объект класса Color, у которого каждый из атрибутов будет
// равен сумме соответствующих атрибутов исходных цветов (если сумма
// больше 255, то атрибут равен 255). Аргументом метода умножения является
// число в диапазоне от 0 до 1, а его результатом должен быть новый объект
// класса Color, у которого каждый из атрибутов будет умножен на данный
// аргумент и округлен до целого числа.
void _task7() {
  Color color1 = Color(red: 100, green: 100, blue: 100);
  Color color2 = Color(red: 50, green: 50, blue: 50);
  double value = 0.25;

  print("Addition: ${color1 + color2}");
  print("Multiplication: ${color1 * value}");
}

void demo() {
  print("\n--- Task 4 ---");
  _task4();

  print("\n--- Task 7 ---");
  _task7();
}
