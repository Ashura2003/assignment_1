class SwapNumberModel {
  int first;
  int second;

  SwapNumberModel({
    required this.first,
    required this.second,
  });

  swapNumbers() {
    first = first + second;
    second = first - second;
    first = first - second;
    return 'Now the fisrt number is $first and the second number is $second';
  }
}
