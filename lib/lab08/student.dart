class Student {
  String name;
  int grade;

  Student({required this.name, required this.grade});

  bool operator >(Student other) {
    if (grade != other.grade) {
      return grade > other.grade;
    }

    switch (name.compareTo(other.name)) {
      case > 0:
        return true;
      case 0:
      case < 0:
        return false;
      default:
        return false; // unreachable
    }
  }

  bool operator >=(Student other) {
    if (grade != other.grade) {
      return grade > other.grade;
    }

    switch (name.compareTo(other.name)) {
      case > 0:
      case 0:
        return true;
      case < 0:
        return false;
      default:
        return false; // unreachable
    }
  }

  bool operator <(Student other) {
    if (grade != other.grade) {
      return grade < other.grade;
    }

    switch (name.compareTo(other.name)) {
      case < 0:
        return true;
      case 0:
      case > 0:
        return false;
      default:
        return false; // unreachable
    }
  }

  bool operator <=(Student other) {
    if (grade != other.grade) {
      return grade < other.grade;
    }

    switch (name.compareTo(other.name)) {
      case < 0:
      case 0:
        return true;
      case > 0:
        return false;
      default:
        return false; // unreachable
    }
  }

  @override
  bool operator ==(covariant Student other) =>
      name == other.name && grade == other.grade;

  @override
  int get hashCode => name.hashCode + grade.hashCode;

  @override
  String toString() {
    return '$name ($grade)\n';
  }
}
