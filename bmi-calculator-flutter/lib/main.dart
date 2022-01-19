import 'package:bmi_calculator/screens/input.screen.dart';
import 'package:bmi_calculator/screens/results.screen.dart';
import 'package:bmi_calculator/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      initialRoute: '/input',
      routes: {
        '/input': (context) => InputPage(),
        '/results': (context) => ResultsPage(),
      },
    );
  }
}
