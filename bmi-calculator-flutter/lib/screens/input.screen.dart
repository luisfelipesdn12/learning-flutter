import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text('CALCULADORA DE IMC'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  PageContainer(color: Colors.pink),
                  PageContainer(color: Colors.blue),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  PageContainer(color: Colors.purple),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  PageContainer(color: Colors.green),
                  PageContainer(color: Colors.yellow),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageContainer extends StatelessWidget {
  const PageContainer({
    Key key,
    this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color != null ? color : Colors.grey.withOpacity(0.25),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
