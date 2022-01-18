import 'package:flutter/material.dart';

class StotyDisplayer extends StatelessWidget {
  const StotyDisplayer({
    Key key,
    @required this.story,
  }) : super(key: key);

  final String story;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.25),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      padding: EdgeInsets.all(25.0),
      child: Text(
        story,
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w400,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
