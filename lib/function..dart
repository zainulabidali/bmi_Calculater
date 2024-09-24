import 'dart:math';

class Calculator {
  Calculator({required this.height, required this.weight});

  final int height; // Fixed the spelling from 'hight' to 'height'
  final int weight;

  late double _bmi; // No need for nullable, just late initialization

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1); // No null check needed for _bmi
  }

  String getResult() {
    // Changed from 'grtResult' to 'getResult'
    if (_bmi >= 25) {
      return "Overweight"; // Fixed spelling
    } else if (_bmi > 18.5) {
      return "Normal"; // Fixed spelling
    } else {
      return "Underweight"; // Fixed spelling
    }
  }

  String getInterpretation() {
    // Integrated into the Calculator class
    if (_bmi >= 25) {
      return "You have a higher body weight than average; consider more exercise.";
    } else if (_bmi > 18.5) {
      return "You have a normal body weight. Great job!";
    } else {
      return "You have a lower body weight than average; consider eating more.";
    }
  }
}
