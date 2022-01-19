import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
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
    overlayColor: Colors.pinkAccent.withOpacity(0.5),
    activeTrackColor: Colors.pink,
    inactiveTrackColor: Colors.pink[200].withOpacity(0.5),
    thumbShape: RoundSliderThumbShape(
      enabledThumbRadius: 10,
    ),
  ),
);
