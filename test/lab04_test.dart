import 'package:test/test.dart';
import 'package:study/lab04.dart';

void main() {
  group("Task 2", () {
    test("Task 2. Basic test", () {
      expect(multiplyList([1, 2, 3]), 6);
      expect(multiplyList([1, 2, 3, 4]), 24);
      expect(multiplyList([1, 2, 3, 4, 5]), 120);
    });
    test("Task 2. Test with zero", () {
      expect(multiplyList([0, 1, 2]), 0);
      expect(multiplyList([0, 0, 2, 6]), 0);
      expect(multiplyList([0, 0, 0, 0, 0]), 0);
    });
    test("Task 2. Test with negative numbers", () {
      expect(multiplyList([-1, -2, -3]), -6);
      expect(multiplyList([-1, -2, -3, -4]), 24);
      expect(multiplyList([-1, -2, -3, -4, -5]), -120);
    });
  });
  group("Task 5", () {
    test("Task 5. Basic test", () {
      expect(findIndex([1, 2, 3], 2), 1);
    });
    test("Task 5. Test with null", () {
      expect(findIndex([1, 2, 3], 4), null);
    });
    test("Task 5. Test with empty list", () {
      expect(findIndex([], 2), null);
    });
  });
  group("Task 9", () {
    test("Task 9. Positive step", () {
      expect(createList(1, 5, 1), [1, 2, 3, 4, 5]);
    });
    test("Task 9. Negative step", () {
      expect(createList(5, 1, -1), [5, 4, 3, 2, 1]);
    });
    test("Task 9. Negative step with wrong A and B", () {
      expect(() => createList(1, 5, -1), throwsFormatException);
    });
    test("Task 9. Positive step with wrong A and B", () {
      expect(() => createList(5, 1, 1), throwsFormatException);
    });
  });
  group("Task 13", () {
    test("Task 13. False test", () {
      expect(isZeroBit(10, 1), isFalse);
    });
    test("Task 13. True test", () {
      expect(isZeroBit(10, 0), isTrue);
    });
    test("Task 13. Test with bit index overflow", () {
      expect(isZeroBit(10, 4), isTrue);
    });
  });
  group("Task 23", () {
    test("Task 23. Balanced string", () {
      expect(isBalanced("(())"), isTrue);
    });
    test("Task 23. Disbalanced string", () {
      expect(isBalanced("(()("), isFalse);
    });
    test("Task 23. Empty string", () {
      expect(isBalanced(""), isTrue);
    });
  });
}
