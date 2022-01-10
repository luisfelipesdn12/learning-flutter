import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[100],
        body: SafeArea(
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.purple[200],
                  width: 100,
                ),
                Container(
                  width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.purple[200],
                        height: 100,
                      ),
                      Container(
                        color: Colors.purple[300],
                        height: 100,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.purple[300],
                  width: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
