import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          caption: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[500],
          ),
          headline1: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[900],
          ),
        ),
      ),
      home: const Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Surprise Pack',
          style: Theme.of(context).textTheme.headline1,
        ),
        backgroundColor: Colors.grey[50],
        centerTitle: true,
        shadowColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(image: AssetImage('assets/present.png')),
            Text('Tap to open', style: Theme.of(context).textTheme.caption),
          ],
        ),
      ),
    );
  }
}
