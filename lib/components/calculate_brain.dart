import 'dart:math';

class CalculateBrain {
  CalculateBrain({required this.height, required this.weight});
  final int height;
  final int weight;

  double _bmi = 1;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obesity';
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return 'Overweight';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getAdvice() {
    if (_bmi >= 30) {
      return 'Your health is on Risk!\nAppointment doctor ASAP! Get Treatment.';
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return 'You should start exercise Now!\nStart dieting and make a exercise routine.';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'Perfect! Keep it.';
    } else {
      return 'Get some Food!\nBe aware of your health.You are loosing it.';
    }
  }
}
