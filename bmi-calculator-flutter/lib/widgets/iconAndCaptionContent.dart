import 'package:flutter/material.dart';

class IconAndCaptionContent extends StatelessWidget {
  const IconAndCaptionContent({
    Key key,
    @required this.icon,
    @required this.caption,
  }) : super(key: key);

  final IconData icon;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80),
        SizedBox(height: 15),
        Text(
          caption.toUpperCase(),
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
