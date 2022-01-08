import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Center(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('I am Rich'),
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true,
        ),
        body: const Center(
          child: Image(
            image: AssetImage('images/redical-diamond.png'),
          ),
        ),
      ),
    ),
  ));
}
