import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  colorScheme: ColorScheme.dark(
    surface: Colors.indigo[800].withOpacity(0.5),
    background: Colors.indigo[900].withOpacity(0.5),
    secondary: Colors.pinkAccent,
  ),
  appBarTheme: AppBarTheme(
    centerTitle: true,
  ),
);
