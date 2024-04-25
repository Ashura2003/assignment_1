class ArithematicModel {
  final int first;
  final int second;

  ArithematicModel({
    required this.first,
    required this.second,
  });

  //Add
  int addition() {
    return first + second;
  }

  int subtraction() {
    return first - second;
  }

  int multiply() {
    return first * second;
  }

  int divide() {
    return first ~/ second;
  }
}
