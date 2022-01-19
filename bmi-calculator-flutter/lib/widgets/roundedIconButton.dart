import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    Key key,
    @required this.icon,
    @required this.onPressed,
  }) : super(key: key);

  final Function onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: EdgeInsets.all(4),
      decoration: ShapeDecoration(
        color: Colors.grey.withOpacity(0.25),
        shape: CircleBorder(),
      ),
      child: IconButton(
        icon: Icon(icon),
        onPressed: onPressed,
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
