import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calcBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  Map getResult() {
    if (_bmi >= 25) {
      return {
        'type': 'Overweight',
        'desc':
            'You have a higher than normal body weight. Try to exercise more!'
      };
    } else if (_bmi >= 18.5) {
      return {
        'type': 'Normal',
        'desc': 'You have a normal body weight. Good job!'
      };
    } else {
      return {
        'type': 'Underweight',
        'desc': 'Your BMI Result is quite low, you should eat more!'
      };
    }
  }
}
