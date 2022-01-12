import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int number = Random().nextInt(6) + 1;

  void updateDiceNumber() {
    setState(() {
      int newNumber = Random().nextInt(6) + 1;

      while (newNumber == number) {
        newNumber = Random().nextInt(6) + 1;
      }

      number = newNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: updateDiceNumber,
      child: Image.asset('images/dice$number.png'),
      style: ButtonStyle(
        animationDuration: Duration(milliseconds: 100),
      ),
    );
  }
}
