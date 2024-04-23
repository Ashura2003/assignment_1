class AreaOfCircleModel {
  final double radius;

  AreaOfCircleModel({required this.radius});

  double areaOfCircle() {
    const double pi = 3.14;
    return pi * radius * radius;
  }
}
