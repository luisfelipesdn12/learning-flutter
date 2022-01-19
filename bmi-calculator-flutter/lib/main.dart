import 'package:bmi_calculator/screens/input.screen.dart';
import 'package:bmi_calculator/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData(
        colorScheme: ColorScheme.dark(
          surface: Colors.indigo[800].withOpacity(0.5),
          background: Colors.indigo[900].withOpacity(0.5),
          secondary: Colors.pinkAccent,
        ),
        textTheme: TextTheme(
          caption: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
        ),
        sliderTheme: SliderThemeData(
          thumbColor: Colors.pinkAccent,
          overlayColor: Colors.pinkAccent.withOpacity(0.2),
          activeTrackColor: Colors.pink,
          inactiveTrackColor: Colors.pink[200].withOpacity(0.5),
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 15,
          ),
        ),
      ),
    );
  }
}
