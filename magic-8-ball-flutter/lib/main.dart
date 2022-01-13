import 'package:flutter/material.dart';
import 'package:magic_8_ball/utils.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  const App({
    Key key,
  }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int number = generateRandomNatural(5);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: Text('Me Pergunte Algo'),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  child: Image.asset("images/ball$number.png"),
                  onPressed: () => setState(() {
                    number = generateRandomNatural(5, previous: number);
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
