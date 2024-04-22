class SimpleInterestModel {
  final double? principle;
  final double? time;
  final double? rate;

  SimpleInterestModel({
    required this.principle,
    required this.time,
    required this.rate,
  });

  double calculateSimpleInterest() {
    return (principle! * time! * rate!) / 100;
  }
}
