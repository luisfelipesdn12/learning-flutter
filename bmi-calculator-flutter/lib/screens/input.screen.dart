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
        title: Text('BMI CALCULATOR'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  PageContainer(),
                  PageContainer(),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  PageContainer(),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  PageContainer(),
                  PageContainer(),
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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
