import 'package:dicee/components/dice.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    DiceeApp(),
  );
}

class DiceeApp extends StatelessWidget {
  const DiceeApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[200],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.pink[200],
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: Dice()),
          Expanded(child: Dice()),
        ],
      ),
    );
  }
}
