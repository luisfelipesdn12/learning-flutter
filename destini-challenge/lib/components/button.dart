import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  secondary,
}

class Button extends StatelessWidget {
  Button({
    Key key,
    this.type = ButtonType.primary,
    this.visible = true,
    @required this.onPressed,
    @required this.text,
  }) : super(key: key);

  final ButtonType type;
  final bool visible;
  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            type == ButtonType.primary ? Colors.pink : Colors.blue[700],
          ),
        ),
      ),
    );
  }
}
