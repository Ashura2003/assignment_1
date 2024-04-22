class SwapNumberModel {
  final int first;
  final int second;

  SwapNumberModel({
    required this.first,
    required this.second,
  });

  swapNumbers({required int first, required int second}) {
    first = first + second;
    second = first - second;
    first = first - second;
    return 'Now the fisrt number is $first and the second number is $second';
  }
}
