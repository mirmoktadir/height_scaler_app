class CalculatorBrain {
  final int feet;
  final int inch;
  CalculatorBrain({this.feet, this.inch});
  double _unit;
  String calculateUnit() {
    _unit = (feet * 30.48) + (inch * 2.54);
    return _unit.toStringAsFixed(2);
  }
}
