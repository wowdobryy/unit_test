class Calculator {
  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    if (b == 0) throw ArgumentError('Cannot be divided by 0');
    return a / b;
  }

  Future<double> powerOfTwo(double a) => Future.delayed(
        Duration(seconds: 1),
        () => a * a,
      );

  Stream<int> fibonacciSequence() => Stream.periodic(
        Duration(seconds: 1),
        (count) => _fibonacciValues[count],
      );

  final List<int> _fibonacciValues = [0, 1, 1, 2, 3, 5, 8, 13, 21];
}
