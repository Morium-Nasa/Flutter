import 'dart:math';

class Calculation {
  int? height;
  int? weight;
  int? age;

  Calculation({this.age, this.height, this.weight});

  late double _bmi;

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.\n 💪🚵🚴🏊🏇🏃';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!\n 🍇🍉🍍🍒🌽';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.\n 🍲🍱🍳🍗🍒🍎';
    }
  }
}
