import 'dart:math';

class CalculatorBrain {
  late final int height;
  late final int weight;
  double _bmi = 0;

  CalculatorBrain({required this.weight, required this.height});

  String getBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25){
      return "OVERWEIGHT";
    } else if (_bmi > 18.5) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  String getSuggestion() {
    if (_bmi >= 25){
      return "You have a higher than a normal body weight. Try to exercise more.";
    } else if (_bmi > 18.5) {
      return "you have a normal body weight. Good Job!!!.";
    } else {
      return "You have a lower than a normal body weight. You can eat a bit more.";
    }
  }




}