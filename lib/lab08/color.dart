class Color {
  int red;
  int green;
  int blue;

  Color({required this.red, required this.green, required this.blue})
      : assert(red <= 255 && green <= 255 && blue <= 255);

  Color operator +(Color other) {
    return Color(
        red: red + other.red,
        green: green + other.green,
        blue: blue + other.blue);
  }

  Color operator *(double value) {
    if (!(0 <= value && value <= 1)) {
      throw ArgumentError('Value must be between 0 and 1');
    }

    return Color(
        red: (red * value).toInt(),
        green: (green * value).toInt(),
        blue: (blue * value).toInt());
  }

  @override
  String toString() {
    return 'RGB($red,$green,$blue)';
  }
}
