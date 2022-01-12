import 'package:flutter/material.dart';

class InfoCard extends StatefulWidget {
  InfoCard({
    @required this.text,
    @required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          widget.icon,
          color: Colors.grey[850],
          size: 25.0,
        ),
        title: Text(
          widget.text,
          style: TextStyle(
            fontFamily: "Asap",
            fontSize: 20.0,
            color: Colors.grey[600],
          ),
        ),
      ),
    );
  }
}
