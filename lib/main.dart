import 'package:bmi_calculator/inputpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMI_Calculator());
}

class BMI_Calculator extends StatelessWidget {
  const BMI_Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(color: Colors.black),
          scaffoldBackgroundColor: Colors.black),
      home: InputPage(),
    );
  }
}

