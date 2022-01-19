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
);
